_TtC18FileProviderDaemon8FSTester *sub_1CF2204A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v25 = a1;
  v26 = a2 & 1;
  v27 = 100;
  v11 = (*(a5 + 24))(sub_1CF24F1FC, v24, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v13 = v10[78];
    v14 = v10[76];
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata3();
    v7 = sub_1CF9E6DA8();
    v29 = v7;
    v28 = 0;
    if ([v12 next])
    {
      do
      {
        v15 = objc_autoreleasePoolPush();
        sub_1CF2209C8(&v28, v12, &v29, v10[75], v14, a4, v10[77], v13);
        objc_autoreleasePoolPop(v15);
      }

      while (([v12 next] & 1) != 0);
      v7 = v29;
    }

    sub_1CF9E6DF8();
    v7, v16, v17, v18, v19, v20, v21, v22;
  }

  return v7;
}

uint64_t sub_1CF22069C(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000008FLL, 0x80000001CFA3A390);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA3A420);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA3A440);
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3A480);
  v36 = sub_1CF9E7F98();
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3A4B0);
  v46 = sub_1CF9E7F98();
  v48 = v47;
  MEMORY[0x1D3868CC0](v46);
  v48, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39C80);
  v56 = sub_1CF9E7F98();
  v58 = v57;
  MEMORY[0x1D3868CC0](v56);
  v58, v59, v60, v61, v62, v63, v64, v65;
  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a3)
  {
    v66 = 0xE100000000000000;
    v67 = 49;
  }

  else
  {
    v68 = [a1 bindLongParameter_];
    v69 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v71 = v70;

    MEMORY[0x1D3868CC0](v69, v71);
    v71, v72, v73, v74, v75, v76, v77, v78;
    v67 = 0x203E204449776F72;
    v66 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v67, v66);
  v66, v79, v80, v81, v82, v83, v84, v85;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v86 = sub_1CF9E7F98();
  v88 = v87;
  MEMORY[0x1D3868CC0](v86);
  v88, v89, v90, v91, v92, v93, v94, v95;
  return 0;
}

uint64_t sub_1CF2209C8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v13 = &v25 - v12;
  v28 = *(AssociatedTypeWitness - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v25 - v16;
  *a1 = [a2 longAtIndex_];
  v18 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v19 = a2;
  v20 = v29;
  result = v18();
  if (!v20)
  {
    v22 = v28;
    v23 = sub_1CEFEBAE8(2);
    v29 = [v19 longAtIndex_];
    v26 = *(TupleTypeMetadata3 + 48);
    v24 = *(TupleTypeMetadata3 + 64);
    (*(v22 + 16))(v13, v17, AssociatedTypeWitness);
    v13[v26] = v23;
    *&v13[v24] = v29;
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v22 + 8))(v17, AssociatedTypeWitness);
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF220C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v24 = a1;
  v25 = 100;
  v10 = (*(a4 + 24))(sub_1CF24F1F4, v23);
  if (!v5)
  {
    v11 = v10;
    v12 = v9[78];
    v13 = v9[76];
    swift_getAssociatedTypeWitness();
    v6 = sub_1CF9E6DA8();
    v27 = v6;
    v26 = 0;
    if ([v11 next])
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        sub_1CF220F00(&v26, v11, &v27, v9[75], v13, a3, v9[77], v12);
        objc_autoreleasePoolPop(v14);
      }

      while (([v11 next] & 1) != 0);
      v6 = v27;
    }

    sub_1CF9E6DF8();
    v6, v15, v16, v17, v18, v19, v20, v21;
  }

  return v6;
}

uint64_t sub_1CF220DEC(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000081, 0x80000001CFA3A2D0);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v15 = sub_1CF9E7F98();
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  return 0;
}

uint64_t sub_1CF220F00(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = [a2 longAtIndex_];
  v12 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v12 + 16))(a2, 1, AssociatedTypeWitness, v12);
  if (!v8)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

uint64_t sub_1CF221088(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000088, 0x80000001CFA3A1B0);
  v6 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA3A240);
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a3)
  {
    v34 = 49;
  }

  else
  {
    v35 = [a1 bindLongParameter_];
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    v34 = 0x203E204449776F72;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v34, v6);
  v6, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v53 = sub_1CF9E7F98();
  v55 = v54;
  MEMORY[0x1D3868CC0](v53);
  v55, v56, v57, v58, v59, v60, v61, v62;
  return 0;
}

void sub_1CF221378(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a1;
  v26 = a2 & 1;
  v27 = 100;
  v11 = (*(*(a5 + 8) + 24))(a6, v24, a4);
  if (!v8)
  {
    v12 = v11;
    v13 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    v28 = 0;
    v14 = [v11 next];
    if (v14)
    {
      do
      {
        v15 = objc_autoreleasePoolPush();
        sub_1CF2217D4(&v28, v12, &v29, v7);
        objc_autoreleasePoolPop(v15);
        v14 = [v12 next];
      }

      while ((v14 & 1) != 0);
      v13 = v29;
    }

    if (*v13->tree)
    {
      v16 = MEMORY[0x1EEE9AC00](v14);
      (*(a5 + 32))(a7, v16);

      v13 = v29;
    }

    else
    {
    }

    v13, v17, v18, v19, v20, v21, v22, v23;
  }
}

uint64_t sub_1CF221528(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A1, 0x80000001CFA3A080);
  v6 = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD000000000000072, 0x80000001CFA3A130);
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a3)
  {
    v34 = 49;
  }

  else
  {
    v35 = [a1 bindLongParameter_];
    v36 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v38 = v37;

    MEMORY[0x1D3868CC0](v36, v38);
    v38, v39, v40, v41, v42, v43, v44, v45;
    v34 = 0x203E204449776F72;
    v6 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v34, v6);
  v6, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v53 = sub_1CF9E7F98();
  v55 = v54;
  MEMORY[0x1D3868CC0](v53);
  v55, v56, v57, v58, v59, v60, v61, v62;
  return 0;
}

uint64_t sub_1CF2217D4(void *a1, void *a2, _TtC18FileProviderDaemon8FSTester **a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v35 - v11;
  v37 = a2;
  v13 = [a2 longAtIndex_];
  *a1 = v13;
  v14 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v14;
  if ((result & 1) == 0)
  {
    result = sub_1CF1F6A58(0, *v14->tree + 1, 1, v14, v16, v17, v18, v19);
    v14 = result;
    *a3 = result;
  }

  v21 = *v14->tree;
  v20 = *v14->tester;
  if (v21 >= v20 >> 1)
  {
    result = sub_1CF1F6A58((v20 > 1), v21 + 1, 1, v14, v16, v17, v18, v19);
    v14 = result;
    *a3 = result;
  }

  v22 = v12;
  *v14->tree = v21 + 1;
  *(&v14[1].super.isa + v21) = v13;
  v23 = AssociatedTypeWitness;
  if ((*(a4 + *(*a4 + 680)) & 1) == 0)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = *(*(AssociatedConformanceWitness + 8) + 16);
    v26 = v37;
    v27 = v39;
    result = v25();
    if (!v27)
    {
      v39 = 0;
      v28 = [v26 longAtIndex_];
      v30 = [v26 isNullAtIndex_];
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = [v26 integerAtIndex_];
      }

      type metadata accessor for PendingSetItem(0, v23, AssociatedConformanceWitness, v29);
      v33 = v35;
      v32 = v36;
      (*(v36 + 16))(v35, v22, v23);
      v34 = sub_1CF206528(v33, v28, v31, v30);
      sub_1CF212638(v34);

      return (*(v32 + 8))(v22, v23);
    }
  }

  return result;
}

uint64_t sub_1CF221B08(void *a1, _TtC18FileProviderDaemon8FSTester **a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA3A040);
  v5 = *a2;
  *(swift_allocObject() + 16) = a1;

  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v7 = sub_1CF9E6C18();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v5, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v24, v25, v26, v27, v28, v29, v30;
  return 0;
}

uint64_t sub_1CF221CCC(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D2, 0x80000001CFA39F60);
  if (a3)
  {
    v6 = 0xE100000000000000;
    v7 = 49;
  }

  else
  {
    v8 = [a1 bindLongParameter_];
    v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v11 = v10;

    MEMORY[0x1D3868CC0](v9, v11);
    v11, v12, v13, v14, v15, v16, v17, v18;
    v7 = 0x4449776F722E7472;
    v6 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v7, v6);
  v6, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  return 0;
}

uint64_t sub_1CF221E34(void *a1, _TtC18FileProviderDaemon8FSTester **a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA39F00);
  v4 = *a2;
  *(swift_allocObject() + 16) = a1;

  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v6 = sub_1CF9E6C18();
  v8 = v7;

  MEMORY[0x1D3868CC0](v6, v8);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v4, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v23, v24, v25, v26, v27, v28, v29;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF221FC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  v32 = a1;
  v33 = a2 & 1;
  v34 = 100;
  v11 = (*(a5 + 24))(sub_1CF24F13C, v31, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v29 = a4;
    v13 = v10[77];
    v14 = v10[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v16 = v10[78];
    v17 = v10[76];
    v18 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = swift_getAssociatedConformanceWitness();
    v35[0] = AssociatedTypeWitness;
    v35[1] = v18;
    v35[2] = AssociatedConformanceWitness;
    v35[3] = v19;
    type metadata accessor for ReconciliationID(0, v35);
    v7 = sub_1CF9E6DA8();
    v36 = v7;
    v35[0] = 0;
    if ([v12 next])
    {
      do
      {
        v20 = objc_autoreleasePoolPush();
        sub_1CF222488(v35, v12, &v36, v14, v17, v29, v13, v16);
        objc_autoreleasePoolPop(v20);
      }

      while (([v12 next] & 1) != 0);
      v7 = v36;
    }

    sub_1CF9E6DF8();
    v7, v21, v22, v23, v24, v25, v26, v27;
  }

  return v7;
}

uint64_t sub_1CF222228(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA39E90);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA39360);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39380);
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a3)
  {
    v36 = 0xE100000000000000;
    v37 = 49;
  }

  else
  {
    v38 = [a1 bindLongParameter_];
    v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v41 = v40;

    MEMORY[0x1D3868CC0](v39, v41);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v37 = 0x203E204449776F72;
    v36 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v37, v36);
  v36, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v56 = sub_1CF9E7F98();
  v58 = v57;
  MEMORY[0x1D3868CC0](v56);
  v58, v59, v60, v61, v62, v63, v64, v65;
  return 0;
}

uint64_t sub_1CF222488(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedConformanceWitness();
  v21[0] = AssociatedTypeWitness;
  v21[1] = v10;
  v21[2] = AssociatedConformanceWitness;
  v21[3] = v12;
  v13 = type metadata accessor for ReconciliationID(0, v21);
  *a1 = [a2 longAtIndex_];
  v14 = *(v12 + 8);
  v15 = *(v14 + 16);
  v16 = a2;
  v17 = v21[5];
  result = v15(v16, 1, v10, v14);
  if (!v17)
  {
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF22264C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  v27[16] = a1 & 1;
  v28 = a2;
  v29 = a3 & 1;
  v30 = 100;
  v12 = (*(a6 + 24))(sub_1CF24F128, v27, a5, a6);
  if (!v7)
  {
    v13 = v12;
    v14 = v11[77];
    v15 = v11[75];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v16 = v11[78];
    v17 = v11[76];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    swift_getTupleTypeMetadata2();
    v8 = sub_1CF9E6DA8();
    v32 = v8;
    v31 = 0;
    if ([v13 next])
    {
      do
      {
        v18 = objc_autoreleasePoolPush();
        sub_1CF226FD8(&v31, v13, &v32, v15, v17, a5, v14, v16);
        objc_autoreleasePoolPop(v18);
      }

      while (([v13 next] & 1) != 0);
      v8 = v32;
    }

    sub_1CF9E6DF8();
    v8, v19, v20, v21, v22, v23, v24, v25;
  }

  return v8;
}

uint64_t sub_1CF222880(void *a1, char a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA39E30);
  if (a2)
  {
    v8 = 21318;
  }

  else
  {
    v8 = 20550;
  }

  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v33 = sub_1CF9E7F98();
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  MEMORY[0x1D3868CC0](v8, 0xE200000000000000);
  0xE200000000000000, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA39E70);
  if (a4)
  {
    v50 = 0xE100000000000000;
    v51 = 49;
  }

  else
  {
    v52 = [a1 bindLongParameter_];
    v53 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v55 = v54;

    MEMORY[0x1D3868CC0](v53, v55);
    v55, v56, v57, v58, v59, v60, v61, v62;
    v51 = 0x203E204449776F72;
    v50 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v51, v50);
  v50, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v70 = sub_1CF9E7F98();
  v72 = v71;
  MEMORY[0x1D3868CC0](v70);
  v72, v73, v74, v75, v76, v77, v78, v79;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF222B50(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *v8;
  v14 = *a3;
  v15 = *(a3 + 8);
  v32[16] = a2 & 1;
  v33 = a1;
  v34 = v14;
  v35 = v15;
  v36 = a4;
  v37 = a5 & 1;
  v38 = 100;
  v16 = v13;
  v17 = (*(a8 + 24))(sub_1CF24F10C, v32, a7, a8);
  if (!v9)
  {
    v18 = v17;
    v19 = v16[77];
    v20 = v16[75];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v21 = v16[78];
    v22 = v16[76];
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    swift_getTupleTypeMetadata2();
    v10 = sub_1CF9E6DA8();
    v40 = v10;
    v39 = 0;
    if ([v18 next])
    {
      do
      {
        v23 = objc_autoreleasePoolPush();
        sub_1CF226FD8(&v39, v18, &v40, v20, v22, a7, v19, v21);
        objc_autoreleasePoolPop(v23);
      }

      while (([v18 next] & 1) != 0);
      v10 = v40;
    }

    sub_1CF9E6DF8();
    v10, v24, v25, v26, v27, v28, v29, v30;
  }

  return v10;
}

uint64_t sub_1CF222D94(void *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v11 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA39D90);
  if (a2)
  {
    v12 = 20550;
  }

  else
  {
    v12 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA39DD0);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x20444E4120200ALL, 0xE700000000000000);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA39DF0);
  v37 = [a1 bindLongParameter_];
  v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v40 = v39;

  MEMORY[0x1D3868CC0](v38, v40);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](2314861410284020000, 0xE800000000000000);
  if (a5)
  {
    v48 = 0;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v49, v50, v51, v52, v53, v54, v55;
    MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
    0xE200000000000000, v56, v57, v58, v59, v60, v61, v62;
    MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA39E10);
    v63 = [a1 bindLongParameter_];
    v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v66 = v65;

    MEMORY[0x1D3868CC0](v64, v66);
    v66, v67, v68, v69, v70, v71, v72, v73;
    MEMORY[0x1D3868CC0](0x30203D2120, 0xE500000000000000);
    v48 = 541347393;
    v11 = 0xE400000000000000;
  }

  MEMORY[0x1D3868CC0](v48, v11);
  v11, v74, v75, v76, v77, v78, v79, v80;
  MEMORY[0x1D3868CC0](0x20444E4120200ALL, 0xE700000000000000);
  if (a7)
  {
    v81 = 0xE100000000000000;
    v82 = 49;
  }

  else
  {
    v83 = [a1 bindLongParameter_];
    v84 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v86 = v85;

    MEMORY[0x1D3868CC0](v84, v86);
    v86, v87, v88, v89, v90, v91, v92, v93;
    v82 = 0x203E204449776F72;
    v81 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v82, v81);
  v81, v94, v95, v96, v97, v98, v99, v100;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v101 = sub_1CF9E7F98();
  v103 = v102;
  MEMORY[0x1D3868CC0](v101);
  v103, v104, v105, v106, v107, v108, v109, v110;
  return 0;
}

uint64_t sub_1CF22316C(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA39CB0);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39D60);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39D00);
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](2314861410284020000, 0xED000020444E4120);
  if (a3)
  {
    v36 = 0xE100000000000000;
    v37 = 49;
  }

  else
  {
    v38 = [a1 bindLongParameter_];
    v39 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v41 = v40;

    MEMORY[0x1D3868CC0](v39, v41);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v37 = 0x203E204449776F72;
    v36 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v37, v36);
  v36, v49, v50, v51, v52, v53, v54, v55;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v56 = sub_1CF9E7F98();
  v58 = v57;
  MEMORY[0x1D3868CC0](v56);
  v58, v59, v60, v61, v62, v63, v64, v65;
  return 0;
}

uint64_t sub_1CF2233F4(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA39CB0);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39D00);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA39D30);
  if (a3)
  {
    v26 = 0xE100000000000000;
    v27 = 49;
  }

  else
  {
    v28 = [a1 bindLongParameter_];
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = v30;

    MEMORY[0x1D3868CC0](v29, v31);
    v31, v32, v33, v34, v35, v36, v37, v38;
    v27 = 0x203E204449776F72;
    v26 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v27, v26);
  v26, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v46 = sub_1CF9E7F98();
  v48 = v47;
  MEMORY[0x1D3868CC0](v46);
  v48, v49, v50, v51, v52, v53, v54, v55;
  return 0;
}

uint64_t sub_1CF223600(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20[0] = AssociatedTypeWitness;
  v20[1] = v10;
  v20[2] = AssociatedConformanceWitness;
  v20[3] = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID(0, v20);
  *a1 = [a2 longAtIndex_];
  v13 = *(AssociatedConformanceWitness + 8);
  v14 = *(v13 + 16);
  v15 = a2;
  v16 = v20[5];
  result = v14(v15, 1, AssociatedTypeWitness, v13);
  if (!v16)
  {
    swift_storeEnumTagMultiPayload();
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF2237C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v27 = a4;
  v28 = a5;
  v29 = v5;
  v30 = a1;
  v31 = a2 & 1;
  v32 = 100;
  v10 = v9;
  v11 = (*(a5 + 24))(sub_1CF24F0D4, v26, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v13 = *v10[18].tester;
    isa = v10[19].super.isa;
    v15 = *v10[19]._anon_8;
    v16 = *v10[19].tree;
    v33[0] = v13;
    v33[1] = isa;
    v33[2] = v15;
    v33[3] = v16;
    type metadata accessor for ItemReconciliation(0, v33);
    v10 = sub_1CF9E6DA8();
    v34 = v10;
    v33[0] = 0;
    if ([v12 next])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        sub_1CF2241CC(v33, v12, &v34, v13, isa, a4, v15, v16);
        objc_autoreleasePoolPop(v17);
      }

      while (([v12 next] & 1) != 0);
      v10 = v34;
    }

    sub_1CF9E6DF8();
    v10, v18, v19, v20, v21, v22, v23, v24;
  }

  return v10;
}

uint64_t sub_1CF223990(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003BLL, 0x80000001CFA39BE0);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39C20);
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA39C50);
  v28 = sub_1CF9E7F98();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA39C80);
  v38 = sub_1CF9E7F98();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0x444E412020200A29, 0xE900000000000020);
  if (a4)
  {
    v48 = 0xE100000000000000;
    v49 = 49;
  }

  else
  {
    v50 = [a1 bindLongParameter_];
    v51 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v53 = v52;

    MEMORY[0x1D3868CC0](v51, v53);
    v53, v54, v55, v56, v57, v58, v59, v60;
    v49 = 0x203E204449776F72;
    v48 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v49, v48);
  v48, v61, v62, v63, v64, v65, v66, v67;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v68 = sub_1CF9E7F98();
  v70 = v69;
  MEMORY[0x1D3868CC0](v68);
  v70, v71, v72, v73, v74, v75, v76, v77;
  return 0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF223C88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v27 = a4;
  v28 = a5;
  v29 = v5;
  v30 = 262400;
  v31 = a1;
  v32 = a2 & 1;
  v33 = 100;
  v10 = v9;
  v11 = (*(a5 + 24))(sub_1CF24F0BC, v26, a4, a5);
  if (!v6)
  {
    v12 = v11;
    v13 = *v10[18].tester;
    isa = v10[19].super.isa;
    v15 = *v10[19]._anon_8;
    v16 = *v10[19].tree;
    v34[0] = v13;
    v34[1] = isa;
    v34[2] = v15;
    v34[3] = v16;
    type metadata accessor for ItemReconciliation(0, v34);
    v10 = sub_1CF9E6DA8();
    v35 = v10;
    v34[0] = 0;
    if ([v12 next])
    {
      do
      {
        v17 = objc_autoreleasePoolPush();
        sub_1CF2241CC(v34, v12, &v35, v13, isa, a4, v15, v16);
        objc_autoreleasePoolPop(v17);
      }

      while (([v12 next] & 1) != 0);
      v10 = v35;
    }

    sub_1CF9E6DF8();
    v10, v18, v19, v20, v21, v22, v23, v24;
  }

  return v10;
}

uint64_t sub_1CF223E64(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x72205443454C4553, 0xEE00202C4449776FLL);
  MEMORY[0x1D3868CC0](*(a2 + *(*a2 + 648)), *(a2 + *(*a2 + 648) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003CLL, 0x80000001CFA39B10);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA39B50);
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v28 = sub_1CF9E7F98();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000024, 0x80000001CFA39B80);
  v38 = sub_1CF9E7F98();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0xD00000000000002FLL, 0x80000001CFA39BB0);
  v48 = sub_1CF9E7F98();
  v50 = v49;
  MEMORY[0x1D3868CC0](v48);
  v50, v51, v52, v53, v54, v55, v56, v57;
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v58 = sub_1CF9E7F98();
  v60 = v59;
  MEMORY[0x1D3868CC0](v58);
  v60, v61, v62, v63, v64, v65, v66, v67;
  MEMORY[0x1D3868CC0](0x4E412020200A2929, 0xEA00000000002044);
  if (a5)
  {
    v68 = 0xE100000000000000;
    v69 = 49;
  }

  else
  {
    v70 = [a1 bindLongParameter_];
    v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v73 = v72;

    MEMORY[0x1D3868CC0](v71, v73);
    v73, v74, v75, v76, v77, v78, v79, v80;
    v69 = 0x203E204449776F72;
    v68 = 0xE800000000000000;
  }

  MEMORY[0x1D3868CC0](v69, v68);
  v68, v81, v82, v83, v84, v85, v86, v87;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v88 = sub_1CF9E7F98();
  v90 = v89;
  MEMORY[0x1D3868CC0](v88);
  v90, v91, v92, v93, v94, v95, v96, v97;
  return 0;
}

void sub_1CF2241CC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a7;
  v16[3] = a8;
  v11 = type metadata accessor for ItemReconciliation(0, v16);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = v16 - v13;
  *a1 = [a2 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  sub_1CF01E03C(a2, 1, v11, WitnessTable, v14);
  if (!v8)
  {
    sub_1CF9E6E58();
    sub_1CF9E6E18();
  }
}

uint64_t sub_1CF22430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a3 + 24))(a4, 0, a2, a3);
  if (!v5)
  {
    v7 = v6;
    v4 = [v6 next];
  }

  return v4 & 1;
}

uint64_t sub_1CF224384()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA39AA0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x2054494D494C200ALL, 0xE900000000000031);
  return 0;
}

void sub_1CF224478(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = a1;
  v32 = a2 & 1;
  v33 = 100;
  v10 = (*(*(a5 + 8) + 24))(a6, v30, a4);
  if (!v7)
  {
    v11 = v10;
    v12 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v13 = [v10 next];
    if (v13)
    {
      do
      {
        v14 = objc_autoreleasePoolPush();
        v15 = [v11 longAtIndex_];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1CF1F6A58(0, *v12->tree + 1, 1, v12, v16, v17, v18, v19);
        }

        v21 = *v12->tree;
        v20 = *v12->tester;
        if (v21 >= v20 >> 1)
        {
          v12 = sub_1CF1F6A58((v20 > 1), v21 + 1, 1, v12, v16, v17, v18, v19);
        }

        *v12->tree = v21 + 1;
        *(&v12[1].super.isa + v21) = v15;
        objc_autoreleasePoolPop(v14);
        v13 = [v11 next];
      }

      while ((v13 & 1) != 0);
    }

    v34 = v12;
    if (*v12->tree)
    {
      v22 = MEMORY[0x1EEE9AC00](v13);
      (*(a5 + 32))(a7, v22);

      v12 = v34;
    }

    else
    {
    }

    v12, v23, v24, v25, v26, v27, v28, v29;
  }
}

uint64_t sub_1CF224678(void *a1, uint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000C1, 0x80000001CFA39980);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA39A50);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0x2020200A30203D20, 0xEC00000020444E41);
  if (a3)
  {
    v26 = 0xE100000000000000;
    v27 = 49;
  }

  else
  {
    v28 = [a1 bindLongParameter_];
    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = v30;

    MEMORY[0x1D3868CC0](v29, v31);
    v31, v32, v33, v34, v35, v36, v37, v38;
    v27 = 0x4449776F722E7472;
    v26 = 0xEB00000000203E20;
  }

  MEMORY[0x1D3868CC0](v27, v26);
  v26, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v46 = sub_1CF9E7F98();
  v48 = v47;
  MEMORY[0x1D3868CC0](v46);
  v48, v49, v50, v51, v52, v53, v54, v55;
  return 0;
}

uint64_t sub_1CF224898(void *a1, _TtC18FileProviderDaemon8FSTester **a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA39900);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39960);
  v14 = *a2;
  *(swift_allocObject() + 16) = a1;

  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v16 = sub_1CF9E6C18();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v14, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v33, v34, v35, v36, v37, v38, v39;
  return 0;
}

uint64_t sub_1CF224B10(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000013ELL, 0x80000001CFA39780);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA398C0);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA398E0);
  v25 = sub_1CF9E7F98();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  return 0;
}

void sub_1CF224C84(void *a1, id a2, _TtC18FileProviderDaemon8FSTester **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35[3] = a7;
  v14 = [a2 longAtIndex_];
  *a1 = v14;
  v15 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1CF1F6A58(0, *v15->tree + 1, 1, v15, v17, v18, v19, v20);
    *a3 = v15;
  }

  v22 = *v15->tree;
  v21 = *v15->tester;
  if (v22 >= v21 >> 1)
  {
    v15 = sub_1CF1F6A58((v21 > 1), v22 + 1, 1, v15, v17, v18, v19, v20);
    *a3 = v15;
  }

  *v15->tree = v22 + 1;
  *(&v15[1].super.isa + v22) = v14;
  sub_1CEFE9AC4([a2 longAtIndex_], v35);
  if (!v10)
  {
    v23 = [a2 isNullAtIndex_];
    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v25 = [a2 stringAtIndex_];
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v26;
    }

    v27 = MEMORY[0x1EEE9AC00](v23);
    (*(a10 + 32))(sub_1CF24F090, v27);
    v24, v28, v29, v30, v31, v32, v33, v34;
  }
}

uint64_t sub_1CF224E78(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000003DLL, 0x80000001CFA396F0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v12 = [a1 bindLongParameter_];
  v13 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;

  MEMORY[0x1D3868CC0](v13, v15);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA39730);
  v29 = sub_1CF074DF4(a4, a5, v23, v24, v25, v26, v27, v28);
  v31 = v30;
  MEMORY[0x1D3868CC0](v29);
  v31, v32, v33, v34, v35, v36, v37, v38;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39760);
  v39 = [a1 bindLongParameter_];
  v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v42 = v41;

  MEMORY[0x1D3868CC0](v40, v42);
  v42, v43, v44, v45, v46, v47, v48, v49;
  return v51;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF225038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v41 = a1;
  AssociatedTypeWitness = a2;
  v47 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(v6 + 48);
  if (v18(v11, 1, v5) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    if (v18(v11, 1, v5) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v20 = v46;
  (*(v6 + 16))(v46, v8, v5);
  *(v20 + *(v15 + 20)) = v17;
  v21 = "SQLDB: list dataless items with conflicts";
  v22 = v20 + *(v15 + 24);
  *v22 = "SQLDB: list dataless items with conflicts";
  *(v22 + 8) = 41;
  *(v22 + 16) = 2;
  v23 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v8, v5);
  v24 = sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v44;
  v27 = v43;
  v28 = (*(v45 + 24))(sub_1CF24F080, v25);
  if (!v27)
  {
    v29 = v28;
    v43 = v23;
    v30 = v47[77];
    v31 = v47[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = sub_1CF9E6DA8();
    v49 = v21;
    v48 = 0;
    if ([v29 next])
    {
      do
      {
        v32 = objc_autoreleasePoolPush();
        sub_1CF225728(&v48, v29, &v49, v31, v47[76], v26, v30);
        objc_autoreleasePoolPop(v32);
      }

      while (([v29 next] & 1) != 0);
      v21 = v49;
    }

    sub_1CF9E6DF8();
    v21, v33, v34, v35, v36, v37, v38, v39;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v20, type metadata accessor for Signpost);
  return v21;
}

uint64_t sub_1CF2255B8(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005BLL, 0x80000001CFA39640);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA396A0);
  v14 = [a1 bindLongParameter_];
  v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v17 = v16;

  MEMORY[0x1D3868CC0](v15, v17);
  v17, v18, v19, v20, v21, v22, v23, v24;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v25 = sub_1CF9E7F98();
  v27 = v26;
  MEMORY[0x1D3868CC0](v25);
  v27, v28, v29, v30, v31, v32, v33, v34;
  return 0;
}

uint64_t sub_1CF225728(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = [a2 longAtIndex_];
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  result = (*(v11 + 16))(a2, 1, AssociatedTypeWitness, v11);
  if (!v7)
  {
    sub_1CF9E6E58();
    return sub_1CF9E6E18();
  }

  return result;
}

const char *sub_1CF225870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v47 = a3;
  v42 = a1;
  v43 = a2;
  v41 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(v6 + 48);
  if (v18(v11, 1, v5) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    if (v18(v11, 1, v5) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v20 = v46;
  (*(v6 + 16))(v46, v8, v5);
  *(v20 + *(v15 + 20)) = v17;
  v21 = "SQLDB: list items blocked by bouncing";
  v22 = v20 + *(v15 + 24);
  *v22 = "SQLDB: list items blocked by bouncing";
  *(v22 + 8) = 37;
  *(v22 + 16) = 2;
  v23 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v8, v5);
  v24 = sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v44;
  v27 = (*(v45 + 24))(sub_1CF24F078, v25);
  if (v26)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v20, type metadata accessor for Signpost);
  }

  else
  {
    v28 = v27;
    v44 = v23;
    v29 = v41;
    v30 = *(v41 + 616);
    v31 = *(v41 + 600);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v43 = sub_1CF9E75D8();
    v33 = *(v29 + 624);
    v34 = *(v29 + 608);
    v35 = swift_getAssociatedTypeWitness();
    v42 = sub_1CF9E75D8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = swift_getAssociatedConformanceWitness();
    v49[0] = AssociatedTypeWitness;
    v49[1] = v35;
    v49[2] = AssociatedConformanceWitness;
    v49[3] = v37;
    type metadata accessor for ReconciliationID(255, v49);
    sub_1CF9E6E58();
    swift_getTupleTypeMetadata3();
    v21 = sub_1CF9E6DA8();
    v50 = v21;
    v48 = 0;
    v49[0] = 0;
    if ([v28 next])
    {
      do
      {
        v38 = objc_autoreleasePoolPush();
        sub_1CF225FC4(v49, &v48, v28, &v50, v31, v34, v47, v30, v33);
        objc_autoreleasePoolPop(v38);
      }

      while (([v28 next] & 1) != 0);
      v21 = v50;

      v39 = v46;
    }

    else
    {

      v39 = v46;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v39, type metadata accessor for Signpost);
  }

  return v21;
}

uint64_t sub_1CF225EB0(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000008CLL, 0x80000001CFA39560);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA395F0);
  v15 = sub_1CF9E7F98();
  v17 = v16;
  MEMORY[0x1D3868CC0](v15);
  v17, v18, v19, v20, v21, v22, v23, v24;
  return 0;
}

void sub_1CF225FC4(char *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v83 = a2;
  v74 = a4;
  v85 = a1;
  v86 = a3;
  v77 = sub_1CF9E79E8();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v87 = sub_1CF9E75D8();
  v11 = swift_getAssociatedTypeWitness();
  v12 = sub_1CF9E75D8();
  v13 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v88[0] = v13;
  v88[1] = v11;
  v88[2] = AssociatedConformanceWitness;
  v88[3] = v15;
  v16 = type metadata accessor for ReconciliationID(255, v88);
  v17 = sub_1CF9E6E58();
  v18 = v87;
  v79 = v17;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v81 = v12;
  MEMORY[0x1EEE9AC00](v19);
  v82 = &v71 - v20;
  v21 = *(v18 - 8);
  *&v26 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v28 = &v71 - v27;
  v29 = *v25 + 1;
  if (__OFADD__(*v25, 1))
  {
    __break(1u);
    return;
  }

  v80 = v24;
  v30 = v11;
  v78 = v16;
  v72 = v23;
  *v25 = v29;
  v31 = v86;
  v32 = [v86 longAtIndex_];
  *v83 = v32;
  v33 = 1;
  if ([v31 isNullAtIndex_])
  {
    v85 = v28;
    v34 = v84;
  }

  else
  {
    v35 = AssociatedConformanceWitness[1];
    v36 = *(v35 + 16);
    v37 = v31;
    v38 = v84;
    v36(v37, 1, v13, v35);
    v34 = v38;
    if (v38)
    {
      return;
    }

    v85 = v28;
    v31 = v86;
    v33 = 0;
  }

  v39 = 1;
  (*(*(v13 - 1) + 56))(v85, v33, 1, v13);
  if (([v31 isNullAtIndex_] & 1) == 0)
  {
    (*(v15[1] + 16))(v31, 2, v30, v15[1]);
    if (v34)
    {
      (*(v21 + 8))(v85, v87);
      return;
    }

    v39 = 0;
  }

  v40 = v82;
  (*(*(v30 - 1) + 56))(v82, v39, 1, v30);
  v41 = v21;
  if ([v31 isNullAtIndex_])
  {
    (*(v80 + 8))(v40, v81);
  }

  else
  {
    v42 = v78;
    v88[6] = swift_getWitnessTable();
    v43 = v79;
    swift_getWitnessTable();
    sub_1CF4C1368(v43, 3);
    if (v34)
    {
      v88[0] = v34;
      v44 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v46 = v76;
      v45 = v77;
      if ((swift_dynamicCast() & 1) == 0)
      {
        (*(v80 + 8))(v82, v81);
        (*(v41 + 8))(v85, v87);

        return;
      }

      sub_1CF9E7FA8();
      swift_allocObject();
      v47 = sub_1CF9E6D68();
      sub_1CF4C1368(v42, 3);
      v48 = sub_1CF045898(v47, v42);
      v49 = *(v75 + 8);

      v49(v46, v45);

      v40 = v82;
    }

    else
    {
      v48 = v88[0];
    }

    v88[0] = v48;
    swift_getWitnessTable();
    v50 = sub_1CF9E7128();
    v48, v51, v52, v53, v54, v55, v56, v57;
    if ((v50 & 1) == 0)
    {
      v65 = v72;
      v66 = *(TupleTypeMetadata3 + 48);
      v86 = *(TupleTypeMetadata3 + 64);
      v67 = v87;
      (*(v41 + 16))(v72, v85, v87);
      v68 = v80;
      v69 = v65 + v66;
      v70 = v81;
      (*(v80 + 16))(v69, v40, v81);
      *(v86 + v65) = v48;
      sub_1CF9E6E58();
      sub_1CF9E6E18();
      (*(v68 + 8))(v40, v70);
      (*(v41 + 8))(v85, v67);
      return;
    }

    v48, v58, v59, v60, v61, v62, v63, v64;
    (*(v80 + 8))(v40, v81);
  }

  (*(v41 + 8))(v85, v87);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF226800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = a2;
  v47 = a3;
  v48 = a4;
  v43[0] = *v4;
  v43[1] = a1;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v43 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(v6 + 48);
  if (v18(v11, 1, v5) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    if (v18(v11, 1, v5) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v20 = v46;
  (*(v6 + 16))(v46, v8, v5);
  *(v20 + *(v15 + 20)) = v17;
  v21 = "SQLDB: list items marked evicting with not interested content";
  v22 = v20 + *(v15 + 24);
  *v22 = "SQLDB: list items marked evicting with not interested content";
  *(v22 + 8) = 61;
  *(v22 + 16) = 2;
  v23 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v8, v5);
  v24 = sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v45;
  v27 = (*(v48 + 24))(sub_1CF24F070, v25);
  if (!v26)
  {
    v28 = v27;
    v45 = v23;
    v29 = v43[0];
    v30 = *(v43[0] + 616);
    v31 = *(v43[0] + 600);
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    v32 = *(v29 + 624);
    v33 = *(v29 + 608);
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v21 = sub_1CF9E6DA8();
    v50 = v21;
    v49 = 0;
    if ([v28 next])
    {
      do
      {
        v34 = objc_autoreleasePoolPush();
        sub_1CF226FD8(&v49, v28, &v50, v31, v33, v47, v30, v32);
        objc_autoreleasePoolPop(v34);
      }

      while (([v28 next] & 1) != 0);
      v21 = v50;
    }

    sub_1CF9E6DF8();
    v21, v35, v36, v37, v38, v39, v40, v41;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v20, type metadata accessor for Signpost);
  return v21;
}

uint64_t sub_1CF226DD0(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA39460);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA394C0);
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA394F0);
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA39510);
  v34 = [a1 bindLongParameter_];
  v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v37 = v36;

  MEMORY[0x1D3868CC0](v35, v37);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v45 = sub_1CF9E7F98();
  v47 = v46;
  MEMORY[0x1D3868CC0](v45);
  v47, v48, v49, v50, v51, v52, v53, v54;
  return 0;
}

uint64_t sub_1CF226FD8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v45 = a3;
  v50 = a1;
  v46 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1CF9E75D8();
  v47 = a5;
  v14 = swift_getAssociatedTypeWitness();
  v15 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v42 = &v38 - v16;
  v44 = v15;
  v40 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v39 = &v38 - v18;
  v41 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v38 - v20;
  v49 = v13;
  v21 = *(v13 - 8);
  *&v23 = MEMORY[0x1EEE9AC00](v22).n128_u64[0];
  v25 = &v38 - v24;
  v26 = [a2 longAtIndex_];
  *v50 = v26;
  if ([a2 isNullAtIndex_])
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v25, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v50 = a8;
    v27 = *(swift_getAssociatedConformanceWitness() + 8);
    result = (*(v27 + 16))(a2, 1, AssociatedTypeWitness, v27);
    if (v8)
    {
      return result;
    }

    (*(*(AssociatedTypeWitness - 8) + 56))(v25, 0, 1, AssociatedTypeWitness);
  }

  v29 = *(swift_getAssociatedConformanceWitness() + 8);
  v30 = *(v29 + 16);
  v31 = a2;
  v32 = v48;
  v30(v31, 2, v14, v29);
  if (!v8)
  {
    v33 = v32;
    v34 = v41;
    v35 = v39;
    (*(v41 + 16))(v39, v33, v14);
    (*(v34 + 56))(v35, 0, 1, v14);
    v36 = v42;
    v37 = *(TupleTypeMetadata2 + 48);
    (*(v21 + 16))(v42, v25, v49);
    (*(v40 + 32))(&v36[v37], v35, v44);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    (*(v34 + 8))(v48, v14);
  }

  return (*(v21 + 8))(v25, v49);
}

_TtC18FileProviderDaemon8FSTester *sub_1CF227490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v41 = a1;
  AssociatedTypeWitness = a2;
  v47 = *v4;
  v5 = sub_1CF9E6068();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDEBBE40;
  (*(v6 + 56))(v14, 1, 1, v5);
  sub_1CEFCCBDC(v14, v11, &unk_1EC4BED20, &unk_1CFA00700);
  v18 = *(v6 + 48);
  if (v18(v11, 1, v5) == 1)
  {
    v19 = v17;
    sub_1CF9E6048();
    if (v18(v11, 1, v5) != 1)
    {
      sub_1CEFCCC44(v11, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
  }

  v20 = v46;
  (*(v6 + 16))(v46, v8, v5);
  *(v20 + *(v15 + 20)) = v17;
  v21 = "SQLDB: list items pending old content injection but stuck on ignored";
  v22 = v20 + *(v15 + 24);
  *v22 = "SQLDB: list items pending old content injection but stuck on ignored";
  *(v22 + 8) = 68;
  *(v22 + 16) = 2;
  v23 = v17;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v6 + 8))(v8, v5);
  v24 = sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v26 = v44;
  v27 = v43;
  v28 = (*(v45 + 24))(sub_1CF24F068, v25);
  if (!v27)
  {
    v29 = v28;
    v43 = v23;
    v30 = v47[77];
    v31 = v47[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = sub_1CF9E6DA8();
    v49 = v21;
    v48 = 0;
    if ([v29 next])
    {
      do
      {
        v32 = objc_autoreleasePoolPush();
        sub_1CF227C10(&v48, v29, &v49, v31, v47[76], v26, v30);
        objc_autoreleasePoolPop(v32);
      }

      while (([v29 next] & 1) != 0);
      v21 = v49;
    }

    sub_1CF9E6DF8();
    v21, v33, v34, v35, v36, v37, v38, v39;
  }

  sub_1CF9E7458();
  sub_1CF9E6038();
  sub_1CEFD5218(v20, type metadata accessor for Signpost);
  return v21;
}

uint64_t sub_1CF227A10(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000053, 0x80000001CFA39300);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA39360);
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA39380);
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0xD000000000000044, 0x80000001CFA393B0);
  v34 = [a1 bindLongParameter_];
  v35 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v37 = v36;

  MEMORY[0x1D3868CC0](v35, v37);
  v37, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA39400);
  v45 = sub_1CF9E7F98();
  v47 = v46;
  MEMORY[0x1D3868CC0](v45);
  v47, v48, v49, v50, v51, v52, v53, v54;
  return 0;
}

uint64_t sub_1CF227C10(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v13).n128_u64[0];
  v16 = v22 - v15;
  *a1 = [a2 longAtIndex_];
  v17 = *(swift_getAssociatedConformanceWitness() + 8);
  v18 = *(v17 + 16);
  v19 = a2;
  v20 = v22[3];
  result = v18(v19, 1, AssociatedTypeWitness, v17);
  if (!v20)
  {
    (*(v10 + 16))(v12, v16, AssociatedTypeWitness);
    sub_1CF9E6E58();
    sub_1CF9E6E18();
    return (*(v10 + 8))(v16, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_1CF227DE8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004CLL, 0x80000001CFA3BFC0);
  v22 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v0 = *(v22 + 16);
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BED230 + v1);
    v3 = *(v22 + 24);
    if (v0 >= v3 >> 1)
    {
      sub_1CF680C9C((v3 > 1), v0 + 1, 1);
    }

    *(v22 + 16) = v0 + 1;
    *(v22 + 8 * v0 + 32) = v2;
    v1 += 8;
    ++v0;
  }

  while (v1 != 128);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;

  MEMORY[0x1D3868CC0](v4, v6);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v14, v15, v16, v17, v18, v19, v20;
  return 0;
}

uint64_t sub_1CF227FE0(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), void (**a4)(char *, uint64_t), uint64_t a5)
{
  AssociatedConformanceWitness = a5;
  v51 = a3;
  v52 = a4;
  v56 = a2;
  v57 = a1;
  v6 = *(*v5 + 616);
  v45 = *(*v5 + 600);
  v46 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v42 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v42 - v12;
  v13 = sub_1CF9E6068();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  v23 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v23);
  v55 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDEBBE40;
  (*(v14 + 56))(v22, 1, 1, v13);
  v49 = v22;
  sub_1CEFCCBDC(v22, v19, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = *(v14 + 48);
  if (v26(v19, 1, v13) == 1)
  {
    v27 = v25;
    sub_1CF9E6048();
    if (v26(v19, 1, v13) != 1)
    {
      sub_1CEFCCC44(v19, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v19, v13);
  }

  v28 = v55;
  (*(v14 + 16))(v55, v16, v13);
  *(v28 + *(v23 + 20)) = v25;
  v29 = v28 + *(v23 + 24);
  *v29 = "SQLDB: list items pending recursive deletion";
  *(v29 + 8) = 44;
  *(v29 + 16) = 2;
  v30 = v25;
  sub_1CF9E7468();
  v50 = v30;
  sub_1CF9E6038();
  (*(v14 + 8))(v16, v13);
  sub_1CEFCCC44(v49, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = v53;
  v32 = (*(AssociatedConformanceWitness + 24))(sub_1CF2286B4, 0, v52);
  if (v31)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v28, type metadata accessor for Signpost);
  }

  else
  {
    v33 = v32;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v58 = sub_1CF9E65F8();
    if ([v33 next])
    {
      v34 = v44;
      v51 = (v43 + 16);
      v52 = (v43 + 8);
      v53 = v33;
      do
      {
        if (sub_1CF9E6FD8() >= v57)
        {
          break;
        }

        v38 = *(*(AssociatedConformanceWitness + 8) + 16);
        v39 = v33;
        v38();
        if (sub_1CF9E7048())
        {
          (*v52)(v34, AssociatedTypeWitness);
        }

        else
        {
          (*v51)(v48, v34, AssociatedTypeWitness);
          sub_1CF9E7068();
          v35 = v47;
          sub_1CF9E6FF8();
          v36 = *v52;
          (*v52)(v35, AssociatedTypeWitness);
          v36(v34, AssociatedTypeWitness);
        }

        v37 = [v39 next];
        v33 = v53;
      }

      while ((v37 & 1) != 0);
    }

    v28 = v58;
    sub_1CF9E7458();
    v40 = v55;
    sub_1CF9E6038();
    sub_1CEFD5218(v40, type metadata accessor for Signpost);
  }

  return v28;
}

uint64_t sub_1CF2286B4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000128, 0x80000001CFA38FF0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA39120);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000031, 0x80000001CFA39160);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD00000000000007DLL, 0x80000001CFA391A0);
  v30 = sub_1CF9E7F98();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA39220);
  v40 = sub_1CF9E7F98();
  v42 = v41;
  MEMORY[0x1D3868CC0](v40);
  v42, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0xD000000000000023, 0x80000001CFA39260);
  v50 = sub_1CF9E7F98();
  v52 = v51;
  MEMORY[0x1D3868CC0](v50);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA39290);
  return 0;
}

void sub_1CF2288E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  v18 = v3;
  v5 = *(a3 + 24);
  v6 = (v5)(sub_1CF24F050, v15, a2, a3);
  if (!v4)
  {
    v7 = v6;
    if ([v6 next])
    {
      v19 = [v7 longAtIndex_];
      v14 = [v7 longLongAtIndex_];
      v8 = MEMORY[0x1EEE9AC00](v14);
      v9 = v5(sub_1CF24F05C, v8);
      v10 = v9;
      v11 = v19;
      if (![v9 next])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2324);
      }

      v12 = [v10 longAtIndex_];
      v13 = [v10 longLongAtIndex_];

      if (__OFADD__(v11, v12))
      {
        __break(1u);
      }

      else if (!__OFADD__(v14, v13))
      {
        return;
      }

      __break(1u);
    }

    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2304);
  }
}

uint64_t sub_1CF228AE0(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000A6, 0x80000001CFA38E10);
  v3 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v4 = sub_1CF9E6C18();
  v6 = v5;
  v3, v5, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](v4, v6);
  v6, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA38EC0);
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0xD000000000000049, 0x80000001CFA38EE0);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA38F30);
  v47 = sub_1CF9E7F98();
  v49 = v48;
  MEMORY[0x1D3868CC0](v47);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA38F60);
  v57 = sub_1CF9E7F98();
  v59 = v58;
  MEMORY[0x1D3868CC0](v57);
  v59, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA38FA0);
  v67 = sub_1CF9E7F98();
  v69 = v68;
  MEMORY[0x1D3868CC0](v67);
  v69, v70, v71, v72, v73, v74, v75, v76;
  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF228DE8(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000DCLL, 0x80000001CFA38C30);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA38D30);
  v23 = sub_1CF9E7F98();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA38D50);
  v33 = sub_1CF9E7F98();
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA38D70);
  v43 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v44 = sub_1CF9E6C18();
  v46 = v45;
  v43, v45, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](v44, v46);
  v46, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38D90);
  v67 = sub_1CF9E7F98();
  v69 = v68;
  MEMORY[0x1D3868CC0](v67);
  v69, v70, v71, v72, v73, v74, v75, v76;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA38DC0);
  v77 = sub_1CF9E6C18();
  v79 = v78;
  MEMORY[0x1D3868CC0](v77);
  v79, v80, v81, v82, v83, v84, v85, v86;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v87, v88, v89, v90, v91, v92, v93;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA38DF0);
  v94 = sub_1CF9E7F98();
  v96 = v95;
  MEMORY[0x1D3868CC0](v94);
  v96, v97, v98, v99, v100, v101, v102, v103;
  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF229218(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000B2, 0x80000001CFA3B9E0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA3BAA0);
  v13 = *(a2 + *(*a2 + 696));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v14 = sub_1CF9E6C18();
  v16 = v15;
  v13, v15, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](v14, v16);
  v16, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3BAD0);
  v89 = MEMORY[0x1E69E7CC0];
  sub_1CF680C9C(0, 12, 0);
  v47 = *(v89 + 16);
  v48 = 0x20u;
  do
  {
    v49 = *(&unk_1F4BED230 + v48);
    v50 = *(v89 + 24);
    if (v47 >= v50 >> 1)
    {
      sub_1CF680C9C((v50 > 1), v47 + 1, 1);
    }

    *(v89 + 16) = v47 + 1;
    *(v89 + 8 * v47 + 32) = v49;
    v48 += 8;
    ++v47;
  }

  while (v48 != 128);

  v51 = sub_1CF9E6C18();
  v53 = v52;

  MEMORY[0x1D3868CC0](v51, v53);
  v53, v54, v55, v56, v57, v58, v59, v60;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);

  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v61, v62, v63, v64, v65, v66, v67;
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA3ABD0);
  v68 = sub_1CF9E7F98();
  v70 = v69;
  MEMORY[0x1D3868CC0](v68);
  v70, v71, v72, v73, v74, v75, v76, v77;
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA3BB00);
  v78 = sub_1CF9E7F98();
  v80 = v79;
  MEMORY[0x1D3868CC0](v78);
  v80, v81, v82, v83, v84, v85, v86, v87;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22964C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000BBLL, 0x80000001CFA384C0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38470);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38490);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF22982C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000E7, 0x80000001CFA3B7F0);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA3B8E0);
  v13 = sub_1CF9E7F98();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA38D10);
  v23 = sub_1CF9E7F98();
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B900);
  v33 = *(a2 + *(*a2 + 688));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v34 = sub_1CF9E6C18();
  v36 = v35;
  v33, v35, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](v34, v36);
  v36, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA3B930);
  v57 = sub_1CF9E7F98();
  v59 = v58;
  MEMORY[0x1D3868CC0](v57);
  v59, v60, v61, v62, v63, v64, v65, v66;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA3B950);
  v67 = sub_1CF9E7F98();
  v69 = v68;
  MEMORY[0x1D3868CC0](v67);
  v69, v70, v71, v72, v73, v74, v75, v76;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v77 = sub_1CF9E7F98();
  v79 = v78;
  MEMORY[0x1D3868CC0](v77);
  v79, v80, v81, v82, v83, v84, v85, v86;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA3B980);
  v87 = sub_1CF9E7F98();
  v89 = v88;
  MEMORY[0x1D3868CC0](v87);
  v89, v90, v91, v92, v93, v94, v95, v96;
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA3B9B0);
  v97 = sub_1CF9E6C18();
  v99 = v98;
  MEMORY[0x1D3868CC0](v97);
  v99, v100, v101, v102, v103, v104, v105, v106;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v107, v108, v109, v110, v111, v112, v113;
  return 0;
}

void sub_1CF229C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v25 = v3;
  v7 = *(a3 + 24);
  v8 = v7(sub_1CF24F6D8, v22, a2, a3);
  if (!v4)
  {
    v9 = v8;
    if (![v8 next])
    {
      goto LABEL_17;
    }

    v21 = [v9 longAtIndex_];
    v10 = [v9 longLongAtIndex_];
    v11 = v7(sub_1CF22964C, 0, a2, a3);
    v26 = 0;
    v12 = v11;
    v20 = v10;
    if (([v11 next] & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2390);
    }

    v19 = [v12 longAtIndex_];
    v13 = [v12 longLongAtIndex_];
    v23 = a2;
    v24 = a3;
    v25 = v3;
    v14 = v26;
    v15 = v7(sub_1CF24F6CC, v22, a2, a3);
    v26 = v14;
    if (v14)
    {

      return;
    }

    v16 = v15;
    if (![v15 next])
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2394);
    }

    v17 = [v16 longAtIndex_];
    v18 = [v16 longLongAtIndex_];

    if (!__OFADD__(v21, v19))
    {
      if (__OFADD__(v20, v13))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (__OFADD__(&v19[v21], v17))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 2386);
      }

      if (!__OFADD__(&v13[v20], v18))
      {
        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

_TtC18FileProviderDaemon8FSTester *sub_1CF229F00(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v57 = a5;
  v58 = a4;
  v54 = a1;
  v55 = a3;
  v53[3] = a2;
  v60 = *v5;
  v6 = sub_1CF9E6068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v53 - v14;
  v16 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v16);
  v59 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDEBBE40;
  (*(v7 + 56))(v15, 1, 1, v6);
  sub_1CEFCCBDC(v15, v12, &unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(v7 + 48);
  if (v19(v12, 1, v6) == 1)
  {
    v20 = v18;
    sub_1CF9E6048();
    if (v19(v12, 1, v6) != 1)
    {
      sub_1CEFCCC44(v12, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
  }

  v21 = v59;
  (*(v7 + 16))(v59, v9, v6);
  *(v21 + *(v16 + 20)) = v18;
  v22 = "SQLDB: list folders with non-indexed materialized items";
  v23 = v21 + *(v16 + 24);
  *v23 = "SQLDB: list folders with non-indexed materialized items";
  *(v23 + 8) = 55;
  *(v23 + 16) = 2;
  v24 = v18;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v7 + 8))(v9, v6);
  v25 = sub_1CEFCCC44(v15, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v27 = v56;
  v28 = (*(v57 + 24))(sub_1CF24F048, v26);
  if (v27)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v21, type metadata accessor for Signpost);
  }

  else
  {
    v29 = v28;
    v56 = v24;
    v30 = v60[77];
    v31 = v60[75];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v33 = MEMORY[0x1E69E6530];
    swift_getTupleTypeMetadata2();
    v34 = sub_1CF9E6DA8();
    v54 = *(swift_getAssociatedConformanceWitness() + 40);
    v55 = AssociatedTypeWitness;
    v22 = sub_1CF04F294(v34, AssociatedTypeWitness, v33, v54);
    v34, v35, v36, v37, v38, v39, v40, v41;
    v62 = v22;
    v61 = 0;
    if ([v29 next])
    {
      v42 = v58;
      do
      {
        v43 = objc_autoreleasePoolPush();
        sub_1CF22A720(&v61, v29, &v62, v31, v60[76], v42, v30);
        objc_autoreleasePoolPop(v43);
      }

      while (([v29 next] & 1) != 0);
      v22 = v62;
    }

    sub_1CF9E6698();
    v22, v44, v45, v46, v47, v48, v49, v50;

    sub_1CF9E7458();
    v51 = v59;
    sub_1CF9E6038();
    sub_1CEFD5218(v51, type metadata accessor for Signpost);
  }

  return v22;
}

uint64_t sub_1CF22A504(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000059, 0x80000001CFA38B20);
  v6 = sub_1CF9E7F98();
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA38B80);
  v16 = sub_1CF9E7F98();
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD000000000000020, 0x80000001CFA38BC0);
  v26 = sub_1CF9E7F98();
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA38BF0);
  v36 = [a1 bindLongParameter_];
  v37 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v39 = v38;

  MEMORY[0x1D3868CC0](v37, v39);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA38C10);
  v47 = [a1 bindLongParameter_];
  v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v49;

  MEMORY[0x1D3868CC0](v48, v50);
  v50, v51, v52, v53, v54, v55, v56, v57;
  return 0;
}

uint64_t sub_1CF22A720(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22[0] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = v22 - v14;
  *a1 = [a2 longAtIndex_];
  v16 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  v17 = a2;
  v18 = v24;
  result = v16();
  if (!v18)
  {
    v20 = [v17 longAtIndex_];
    v21 = v22[0];
    (*(v22[0] + 16))(v11, v15, AssociatedTypeWitness);
    v22[2] = v20;
    v23 = 0;
    sub_1CF9E6708();
    sub_1CF9E6738();
    return (*(v21 + 8))(v15, AssociatedTypeWitness);
  }

  return result;
}

void sub_1CF22A934()
{
  v1 = *(*v0 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 640);
  v4 = swift_getAssociatedTypeWitness();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  *(v0 + *(*v0 + 648) + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + *(*v0 + 656) + 8), v12, v13, v14, v15, v16, v17, v18;

  *(v0 + *(*v0 + 672)), v19, v20, v21, v22, v23, v24, v25;
  *(v0 + *(*v0 + 688)), v26, v27, v28, v29, v30, v31, v32;
  v40 = *(v0 + *(*v0 + 696));

  v40, v33, v34, v35, v36, v37, v38, v39;
}

uint64_t sub_1CF22AB28()
{
  v0 = sub_1CF341938();
  v1 = *(*v0 + 632);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 640);
  v4 = swift_getAssociatedTypeWitness();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  *(v0 + *(*v0 + 648) + 8), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + *(*v0 + 656) + 8), v12, v13, v14, v15, v16, v17, v18;

  *(v0 + *(*v0 + 672)), v19, v20, v21, v22, v23, v24, v25;
  *(v0 + *(*v0 + 688)), v26, v27, v28, v29, v30, v31, v32;
  *(v0 + *(*v0 + 696)), v33, v34, v35, v36, v37, v38, v39;
  return v0;
}

uint64_t sub_1CF22AD34(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1CF22AD8C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1CF24F8BC(319, &qword_1EDEA3740, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF22AE24(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v7 = (a2 - v5 + 255) >> 8;
  if (v6 <= 3)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 2;
  }

  if (v8 >= 0x10000)
  {
    v9 = 4;
  }

  else
  {
    v9 = 2;
  }

  if (v8 < 0x100)
  {
    v9 = 1;
  }

  if (v8 >= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = *&a1[v6];
      if (!*&a1[v6])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = *&a1[v6];
      if (!v11)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v10 || (v11 = a1[v6]) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v12 = (v11 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v13 = *a1;
  }

  else
  {
    v12 = 0;
    v13 = *a1;
  }

  return v5 + (v13 | v12) + 1;
}

void sub_1CF22AF40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = ((*(v6 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v7 >= a3)
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = (a3 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v7 >= a2)
    {
LABEL_14:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v8] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_29;
        }

        *&a1[v8] = 0;
      }

      else if (v12)
      {
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      }

      if (!a2)
      {
        return;
      }

LABEL_29:
      v15 = *(v6 + 56);

      v15();
      return;
    }
  }

  v13 = ~v7 + a2;
  bzero(a1, v8);
  if (v8 <= 3)
  {
    v14 = (v13 >> 8) + 1;
  }

  else
  {
    v14 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v13;
    if (v12 > 1)
    {
LABEL_24:
      if (v12 == 2)
      {
        *&a1[v8] = v14;
      }

      else
      {
        *&a1[v8] = v14;
      }

      return;
    }
  }

  else
  {
    *a1 = v13;
    if (v12 > 1)
    {
      goto LABEL_24;
    }
  }

  if (v12)
  {
    a1[v8] = v14;
  }
}

unint64_t sub_1CF22B0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  0xE000000000000000, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](95, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a4, a5);
  return 0xD00000000000002DLL;
}

uint64_t sub_1CF22B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA356F0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000088, 0x80000001CFA35720);
  MEMORY[0x1D3868CC0](a2, a3);
  MEMORY[0x1D3868CC0](538970668, 0xE400000000000000);
  MEMORY[0x1D3868CC0](a4, a5);
  MEMORY[0x1D3868CC0](0xD000000000000146, 0x80000001CFA357B0);
  v30 = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = (*(*(v31 + 8) + 8))(v30);
  v34 = v33;
  MEMORY[0x1D3868CC0](v32);
  v34, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0xD000000000000088, 0x80000001CFA35900);
  MEMORY[0x1D3868CC0](a6, a7);
  MEMORY[0x1D3868CC0](538970668, 0xE400000000000000);
  MEMORY[0x1D3868CC0](a8, a9);
  MEMORY[0x1D3868CC0](0xD0000000000004B3, 0x80000001CFA35990);
  return 0;
}

uint64_t sub_1CF22B810()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000019DLL, 0x80000001CFA30D50);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA30B40);
  return 0;
}

uint64_t sub_1CF22B8CC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001DCLL, 0x80000001CFA30B70);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA30B40);
  return 0;
}

uint64_t sub_1CF22B988()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001A3, 0x80000001CFA30990);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA30B40);
  return 0;
}

uint64_t sub_1CF22BA44()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000002D6, 0x80000001CFA30670);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA30950);
  return 0;
}

uint64_t sub_1CF22BC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA34EB0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA34EE0);
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = (*(*(v19 + 8) + 8))(v18);
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0xD000000000000045, 0x80000001CFA34F00);
  return 0;
}

uint64_t sub_1CF22BE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = a2;
  v14 = a3;
  v15 = v3;
  v7 = *(a3 + 32);
  result = (v7)(sub_1CF24CC6C, v12, a2, a3);
  if (!v4)
  {
    v9 = MEMORY[0x1EEE9AC00](result);
    v10 = v7(sub_1CF24CC78, v9);
    v11 = MEMORY[0x1EEE9AC00](v10);
    v7(sub_1CF24CC84, v11);
    (v7)(sub_1CF22CD44, 0, a2, a3);
    return (v7)(sub_1CF22CDD8, 0, a2, a3);
  }

  return result;
}

uint64_t sub_1CF22BFF8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v115 = 0xE000000000000000;
  sub_1CF9E7948();
  v119 = 0;
  v120 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000011CLL, 0x80000001CFA32700);
  v114 = 8;
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA32820);
  v14 = *(a2 + *(*a2 + 688));
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v114 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v15, 0);
    v16 = v114;
    v17 = (v14 + 32);
    sub_1CF056E98();
    do
    {
      v18 = *v17++;
      v118 = v18;
      v19 = sub_1CF9E7718();
      v114 = v16;
      v22 = *v16->tree;
      v21 = *v16->tester;
      if (v22 >= v21 >> 1)
      {
        v113 = v19;
        v24 = v20;
        sub_1CEFE95CC((v21 > 1), v22 + 1, 1);
        v20 = v24;
        v19 = v113;
        v16 = v114;
      }

      *v16->tree = v22 + 1;
      v23 = v16 + 16 * v22;
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      --v15;
    }

    while (v15);
  }

  v114 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v25 = sub_1CF9E67D8();
  v27 = v26;
  v16, v26, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](v25, v27);
  v27, v34, v35, v36, v37, v38, v39, v40;
  MEMORY[0x1D3868CC0](0xD000000000000111, 0x80000001CFA32840);
  v42 = v3[76];
  v43 = v3[77];
  v44 = v3[78];
  v114 = v3[75];
  v41 = v114;
  v115 = v42;
  v116 = v43;
  v117 = v44;
  type metadata accessor for Propagation.UpdateItem(0, &v114);
  v114 = qword_1CF9FF5D0[sub_1CF057C00()];
  v45 = sub_1CF9E7F98();
  v47 = v46;
  MEMORY[0x1D3868CC0](v45);
  v47, v48, v49, v50, v51, v52, v53, v54;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA32660);
  v114 = 8;
  v55 = sub_1CF9E7F98();
  v57 = v56;
  MEMORY[0x1D3868CC0](v55);
  v57, v58, v59, v60, v61, v62, v63, v64;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA32960);
  v114 = v41;
  v115 = v42;
  v116 = v43;
  v117 = v44;
  type metadata accessor for Propagation.CreateItem(0, &v114);
  v114 = qword_1CF9FF5D0[sub_1CF057C00()];
  v65 = sub_1CF9E7F98();
  v67 = v66;
  MEMORY[0x1D3868CC0](v65);
  v67, v68, v69, v70, v71, v72, v73, v74;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA32980);
  v114 = 1;
  v75 = sub_1CF9E7F98();
  v77 = v76;
  MEMORY[0x1D3868CC0](v75);
  v77, v78, v79, v80, v81, v82, v83, v84;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA329A0);
  v85 = *(v14 + 16);
  v86 = MEMORY[0x1E69E7CC0];
  if (v85)
  {
    v114 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v85, 0);
    v86 = v114;
    v87 = (v14 + 32);
    sub_1CF056E98();
    do
    {
      v88 = *v87++;
      v118 = v88;
      v89 = sub_1CF9E7718();
      v114 = v86;
      v92 = *v86->tree;
      v91 = *v86->tester;
      if (v92 >= v91 >> 1)
      {
        v94 = v89;
        v95 = v90;
        sub_1CEFE95CC((v91 > 1), v92 + 1, 1);
        v90 = v95;
        v89 = v94;
        v86 = v114;
      }

      *v86->tree = v92 + 1;
      v93 = v86 + 16 * v92;
      *(v93 + 4) = v89;
      *(v93 + 5) = v90;
      --v85;
    }

    while (v85);
  }

  v114 = v86;
  v96 = sub_1CF9E67D8();
  v98 = v97;
  v86, v97, v99, v100, v101, v102, v103, v104;
  MEMORY[0x1D3868CC0](v96, v98);
  v98, v105, v106, v107, v108, v109, v110, v111;
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA329D0);
  return v119;
}

uint64_t sub_1CF22C538(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v159 = 0xE000000000000000;
  sub_1CF9E7948();
  v162 = 0;
  v163 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0xD00000000000011ELL, 0x80000001CFA32310);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0xD00000000000002CLL, 0x80000001CFA32430);
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA32460);
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA32490);
  v34 = sub_1CF9E7F98();
  v36 = v35;
  MEMORY[0x1D3868CC0](v34);
  v36, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA324B0);
  v44 = sub_1CF9E7F98();
  v46 = v45;
  MEMORY[0x1D3868CC0](v44);
  v46, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0xD000000000000130, 0x80000001CFA32500);
  v158 = 0;
  v54 = sub_1CF9E7F98();
  v56 = v55;
  MEMORY[0x1D3868CC0](v54);
  v56, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0xD00000000000001CLL, 0x80000001CFA32640);
  v64 = v3[75];
  v65 = v3[76];
  v66 = v3[77];
  v67 = v3[78];
  v158 = v64;
  v159 = v65;
  v160 = v66;
  v161 = v67;
  v157 = v67;
  type metadata accessor for Propagation.UpdateItem(0, &v158);
  v158 = qword_1CF9FF5D0[sub_1CF057C00()];
  v68 = sub_1CF9E7F98();
  v70 = v69;
  MEMORY[0x1D3868CC0](v68);
  v70, v71, v72, v73, v74, v75, v76, v77;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA32660);
  v158 = 8;
  v78 = sub_1CF9E7F98();
  v80 = v79;
  MEMORY[0x1D3868CC0](v78);
  v80, v81, v82, v83, v84, v85, v86, v87;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA32680);
  v88 = *(a2 + *(*a2 + 688));
  v89 = *(v88 + 16);
  v90 = MEMORY[0x1E69E7CC0];
  if (v89)
  {
    v156 = v66;
    v158 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v89, 0);
    v90 = v158;
    v91 = v88 + 32;
    sub_1CF056E98();
    do
    {
      v91 += 8;
      v92 = sub_1CF9E7718();
      v158 = v90;
      v95 = *v90->tree;
      v94 = *v90->tester;
      if (v95 >= v94 >> 1)
      {
        v155 = v92;
        v97 = v93;
        sub_1CEFE95CC((v94 > 1), v95 + 1, 1);
        v93 = v97;
        v92 = v155;
        v90 = v158;
      }

      *v90->tree = v95 + 1;
      v96 = v90 + 16 * v95;
      *(v96 + 4) = v92;
      *(v96 + 5) = v93;
      --v89;
    }

    while (v89);
    v66 = v156;
  }

  v158 = v90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v98 = sub_1CF9E67D8();
  v100 = v99;
  v90, v99, v101, v102, v103, v104, v105, v106;
  MEMORY[0x1D3868CC0](v98, v100);
  v100, v107, v108, v109, v110, v111, v112, v113;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA326B0);
  v158 = v64;
  v159 = v65;
  v160 = v66;
  v161 = v157;
  type metadata accessor for Propagation.CreateItem(0, &v158);
  v158 = qword_1CF9FF5D0[sub_1CF057C00()];
  v114 = sub_1CF9E7F98();
  v116 = v115;
  MEMORY[0x1D3868CC0](v114);
  v116, v117, v118, v119, v120, v121, v122, v123;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA32680);
  v158 = 4;
  v124 = sub_1CF9E7F98();
  v126 = v125;
  MEMORY[0x1D3868CC0](v124);
  v126, v127, v128, v129, v130, v131, v132, v133;
  MEMORY[0x1D3868CC0](8236, 0xE200000000000000);
  v158 = 2;
  v134 = sub_1CF9E7F98();
  v136 = v135;
  MEMORY[0x1D3868CC0](v134);
  v136, v137, v138, v139, v140, v141, v142, v143;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA326D0);
  v158 = 2;
  v144 = sub_1CF9E7F98();
  v146 = v145;
  MEMORY[0x1D3868CC0](v144);
  v146, v147, v148, v149, v150, v151, v152, v153;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return v162;
}

uint64_t sub_1CF22CB50(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007DLL, 0x80000001CFA32290);
  v3 = *(a2 + *(*a2 + 688));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v4, 0);
    v5 = v31;
    v6 = v3 + 32;
    sub_1CF056E98();
    do
    {
      v6 += 8;
      v7 = sub_1CF9E7718();
      v32 = v5;
      v10 = *v5->tree;
      v9 = *v5->tester;
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_1CEFE95CC((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
        v5 = v32;
      }

      *v5->tree = v10 + 1;
      v11 = v5 + 16 * v10;
      *(v11 + 4) = v7;
      *(v11 + 5) = v8;
      --v4;
    }

    while (v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v14 = sub_1CF9E67D8();
  v16 = v15;
  v5, v15, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](v14, v16);
  v16, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22CD44()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000FDLL, 0x80000001CFA32190);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 0;
}

uint64_t sub_1CF22CDD8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000065, 0x80000001CFA32120);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 0;
}

uint64_t sub_1CF22CE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  result = (v6)(sub_1CF22D034, 0, a2, a3);
  if (!v3)
  {
    (v6)(sub_1CF22D050, 0, a2, a3);
    (v6)(sub_1CF22D06C, 0, a2, a3);
    (v6)(sub_1CF22D088, 0, a2, a3);
    v8 = (v6)(sub_1CF22D0A4, 0, a2, a3);
    v9 = MEMORY[0x1EEE9AC00](v8);
    v6(sub_1CF24CC60, v9);
    return (v6)(sub_1CF22D304, 0, a2, a3);
  }

  return result;
}

uint64_t sub_1CF22D0A4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000075, 0x80000001CFA32000);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 0;
}

uint64_t sub_1CF22D13C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000075, 0x80000001CFA31F60);
  v3 = sub_1CF9E7F98();
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA31FE0);
  v37 = *(a2 + *(*a2 + 696));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v13 = sub_1CF9E6C18();
  v15 = v14;
  v37, v14, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](v13, v15);
  v15, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v29, v30, v31, v32, v33, v34, v35;
  return 0;
}

uint64_t sub_1CF22D320()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000D3, 0x80000001CFA31DB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v0 = sub_1CF9E6C18();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000040, 0x80000001CFA31E90);
  return 0;
}

uint64_t sub_1CF22D488()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000000F5, 0x80000001CFA31C40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF7F0, &unk_1CFA03230);
  sub_1CEFCCCEC(&qword_1EDEAB500, &unk_1EC4BF7F0, &unk_1CFA03230, MEMORY[0x1E69E6CC8]);
  sub_1CEFE4E68();
  v0 = sub_1CF9E6C18();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  MEMORY[0x1D3868CC0](40, 0xE100000000000000);
  0xE100000000000000, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000069, 0x80000001CFA31D40);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22D62C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000007BLL, 0x80000001CFA319F0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](2112800, 0xE300000000000000);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF22D89C()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000009FLL, 0x80000001CFA315C0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA31660);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return 0;
}

uint64_t sub_1CF22D9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v4 = v3;
  v41 = *v4;
  v7 = sub_1CF9E5CF8();
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v41 + 616);
  v11 = *(v41 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v34 - v15;
  v17 = *(a3 + 32);
  v18 = v42;
  v42 = a3;
  result = v17(sub_1CF22DDCC, 0, v43, a3, v14);
  if (!v18)
  {
    v37 = v9;
    v38 = v10;
    v20 = v41;
    v35 = v13;
    v36 = AssociatedTypeWitness;
    v34[2] = 0;
    result = swift_weakLoadStrong();
    v34[1] = result;
    if (!result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    result = swift_weakLoadStrong();
    if (!result)
    {
LABEL_19:
      __break(1u);
      return result;
    }

    v21 = v16;
    v22 = *(v20 + 608);
    v23 = *(v20 + 624);
    v44[0] = v11;
    v44[1] = v22;
    v44[2] = v38;
    v44[3] = v23;
    type metadata accessor for Maintenance.UpdateContentRankForMaterializedItems(0, v44);

    sub_1CF046AB4();

    v24 = v37;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v26 = v25;
    v27 = v40;
    v28 = *(v39 + 8);
    result = v28(v24, v40);
    v29 = v26 * 1000000000.0;
    if (COERCE__INT64(fabs(v26 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v29 > -9.22337204e18)
    {
      if (v29 < 9.22337204e18)
      {
        v30 = sub_1CF559420();
        (*(v35 + 8))(v21, v36);
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v32 = v31;
        result = v28(v24, v27);
        v33 = v32 * 1000000000.0;
        if (COERCE__INT64(fabs(v32 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v33 > -9.22337204e18)
          {
            if (v33 < 9.22337204e18)
            {
              sub_1CF5215C0(v30, v33, a1, v43, v42);
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1CF22DDCC()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000057, 0x80000001CFA30400);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](59, 0xE100000000000000);
  return 0;
}

uint64_t sub_1CF22DEC8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA301E0);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0xD00000000000001DLL, 0x80000001CFA30270);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000021, 0x80000001CFA30290);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](807419168, 0xE400000000000000);
  return 0;
}

uint64_t sub_1CF22E638(char a1)
{
  result = swift_weakLoadStrong();
  if (a1)
  {
    if (result)
    {
      v3 = 40;
      goto LABEL_6;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  v3 = 32;
LABEL_6:
  v4 = *(result + v3);

  v5 = *(v4 + 16);

  LOBYTE(v4) = (*(*v5 + 112))(v6);

  if (v4)
  {
    return 0;
  }

  else
  {
    return 0x204554414C4C4F43;
  }
}

uint64_t sub_1CF22E70C(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  if (a1)
  {
    v14 = 20550;
  }

  else
  {
    v14 = 21318;
  }

  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);
  0xE200000000000000, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);
  0xE200000000000000, v22, v23, v24, v25, v26, v27, v28;
  v29 = MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36AD0);
  v30 = a2(v29);
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](538976266, 0xE400000000000000);
  if (a6)
  {
    v70 = a5;
    v71 = a6;

    sub_1CF22EC1C(&v70, a1 & 1, v72);
    v71, v40, v41, v42, v43, v44, v45, v46;
    v48 = v72[0];
    v47 = v72[1];
  }

  else
  {
    v47 = 0;
    v48 = 0;
  }

  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v47)
  {
    v50 = v47;
  }

  else
  {
    v50 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v49, v50);
  v50, v51, v52, v53, v54, v55, v56, v57;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
  v58 = a8(a7);
  v60 = v59;
  MEMORY[0x1D3868CC0](v58);
  v60, v61, v62, v63, v64, v65, v66, v67;
  return v73;
}

uint64_t sub_1CF22E958(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, uint64_t (*a8)(uint64_t))
{
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000036, 0x80000001CFA36B50);
  if (a1)
  {
    v13 = 21318;
  }

  else
  {
    v13 = 20550;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA36B90);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x202020200A64695FLL, 0xEC00000020202020);
  if (a6)
  {
    v85 = a5;
    v86 = a6;

    sub_1CF22EC1C(&v85, a1 & 1, v87);
    v86, v28, v29, v30, v31, v32, v33, v34;
    v36 = v87[0];
    v35 = v87[1];
  }

  else
  {
    v35 = 0;
    v36 = 0;
  }

  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v35)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v37, v38);
  v38, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD000000000000037, 0x80000001CFA36BD0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA36C10);
  if (a1)
  {
    v53 = 20550;
  }

  else
  {
    v53 = 21318;
  }

  MEMORY[0x1D3868CC0](v53, 0xE200000000000000);
  0xE200000000000000, v54, v55, v56, v57, v58, v59, v60;
  v61 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v62 = a2(v61);
  v64 = v63;
  MEMORY[0x1D3868CC0](v62);
  v64, v65, v66, v67, v68, v69, v70, v71;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA36B00);
  v72 = a8(a7);
  v74 = v73;
  MEMORY[0x1D3868CC0](v72);
  v74, v75, v76, v77, v78, v79, v80, v81;
  return v88;
}

void sub_1CF22EC1C(uint64_t *a1@<X0>, char a2@<W3>, unint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v43[0] = 0;
  sub_1CF9E7948();
  0xE000000000000000, v7, v8, v9, v10, v11, v12, v13;
  v44 = 0xD000000000000014;
  v45 = 0x80000001CFA36B30;
  if (v5)
  {

    v21 = MEMORY[0x1E69E6158];
  }

  else
  {
    0, v14, v15, v16, v17, v18, v19, v20;
    v6 = 0;
    v21 = 0;
    v43[2] = 0;
  }

  v43[0] = v6;
  v43[1] = v5;
  v43[3] = v21;
  v22 = sub_1CEFF8EA0(v43);
  v24 = v23;
  sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v24)
  {
    MEMORY[0x1D3868CC0](v22, v24);
    v24, v25, v26, v27, v28, v29, v30, v31;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v32 = sub_1CF22E638(a2 & 1);
    v34 = v33;
    MEMORY[0x1D3868CC0](v32);
    v34, v35, v36, v37, v38, v39, v40, v41;
    v42 = v45;
    *a3 = v44;
    a3[1] = v42;
  }

  else
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

uint64_t sub_1CF22EDB8(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0x204D4F524620200ALL, 0xE800000000000000);
  if (a1)
  {
    v12 = 20550;
  }

  else
  {
    v12 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD00000000000003FLL, 0x80000001CFA36A90);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v20, v21, v22, v23, v24, v25, v26;
  v27 = MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36C30);
  v28 = a2(v27);
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000027, 0x80000001CFA36C60);
  v38 = a5(a7);
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  return 0;
}

uint64_t sub_1CF22EF7C(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA369D0);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000035, 0x80000001CFA36C90);
  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = 21318;
  }

  else
  {
    v13 = 20550;
  }

  if (v12)
  {
    v14 = 21318;
  }

  else
  {
    v14 = 20550;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA36CD0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD000000000000052, 0x80000001CFA36D00);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0xD000000000000026, 0x80000001CFA36D60);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);
  0xE200000000000000, v36, v37, v38, v39, v40, v41, v42;
  v43 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v44 = a2(v43);
  v46 = v45;
  MEMORY[0x1D3868CC0](v44);
  v46, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v54 = a5(a7);
  v56 = v55;
  MEMORY[0x1D3868CC0](v54);
  v56, v57, v58, v59, v60, v61, v62, v63;
  return 0;
}

uint64_t sub_1CF22F1A8(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000059, 0x80000001CFA36D90);
  if (a1)
  {
    v12 = 20550;
  }

  else
  {
    v12 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v13, v14, v15, v16, v17, v18, v19;
  v20 = MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA36DF0);
  v21 = a2(v20);
  v23 = v22;
  MEMORY[0x1D3868CC0](v21);
  v23, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA36E20);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA36E60);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000050, 0x80000001CFA36EF0);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v38, v39, v40, v41, v42, v43, v44;
  MEMORY[0x1D3868CC0](0x454857200A64695FLL, 0xEB00000000204552);
  v45 = a5(a7);
  v47 = v46;
  MEMORY[0x1D3868CC0](v45);
  v47, v48, v49, v50, v51, v52, v53, v54;
  return 0;
}

uint64_t sub_1CF22F3A4(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000005CLL, 0x80000001CFA36F50);
  v12 = (a1 & 1) == 0;
  if (a1)
  {
    v13 = 21318;
  }

  else
  {
    v13 = 20550;
  }

  if (v12)
  {
    v14 = 21318;
  }

  else
  {
    v14 = 20550;
  }

  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v15, v16, v17, v18, v19, v20, v21;
  MEMORY[0x1D3868CC0](0xD000000000000042, 0x80000001CFA36FB0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v22, v23, v24, v25, v26, v27, v28;
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA37000);
  MEMORY[0x1D3868CC0](v14, 0xE200000000000000);
  0xE200000000000000, v29, v30, v31, v32, v33, v34, v35;
  v36 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v37 = a2(v36);
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0xD00000000000003CLL, 0x80000001CFA37020);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0xD00000000000008CLL, 0x80000001CFA37060);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD000000000000049, 0x80000001CFA370F0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v54, v55, v56, v57, v58, v59, v60;
  MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA37140);
  v61 = a5(a7);
  v63 = v62;
  MEMORY[0x1D3868CC0](v61);
  v63, v64, v65, v66, v67, v68, v69, v70;
  return 0;
}

uint64_t sub_1CF22F608(char a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA37160);
  MEMORY[0x1D3868CC0](*(a4 + *(*a4 + 656)), *(a4 + *(*a4 + 656) + 8));
  MEMORY[0x1D3868CC0](0xD00000000000003ALL, 0x80000001CFA37180);
  v11 = a1 & 1;
  if (a1)
  {
    v12 = 21318;
  }

  else
  {
    v12 = 20550;
  }

  if (a1)
  {
    v13 = 20550;
  }

  else
  {
    v13 = 21318;
  }

  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v14, v15, v16, v17, v18, v19, v20;
  MEMORY[0x1D3868CC0](0xD00000000000003ELL, 0x80000001CFA371C0);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0xD000000000000041, 0x80000001CFA37200);
  MEMORY[0x1D3868CC0](v12, 0xE200000000000000);
  0xE200000000000000, v28, v29, v30, v31, v32, v33, v34;
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA37250);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v35, v36, v37, v38, v39, v40, v41;
  MEMORY[0x1D3868CC0](0xD000000000000051, 0x80000001CFA37280);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v42, v43, v44, v45, v46, v47, v48;
  MEMORY[0x1D3868CC0](0xD000000000000046, 0x80000001CFA372E0);
  v49 = sub_1CF22E638(v11);
  v51 = v50;
  MEMORY[0x1D3868CC0](v49);
  v51, v52, v53, v54, v55, v56, v57, v58;
  v59 = MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA37330);
  v60 = a2(v59);
  v62 = v61;
  MEMORY[0x1D3868CC0](v60);
  v62, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](0xD000000000000030, 0x80000001CFA37360);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v70, v71, v72, v73, v74, v75, v76;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA373A0);
  MEMORY[0x1D3868CC0](v13, 0xE200000000000000);
  0xE200000000000000, v77, v78, v79, v80, v81, v82, v83;
  v84 = MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  v85 = a2(v84);
  v87 = v86;
  MEMORY[0x1D3868CC0](v85);
  v87, v88, v89, v90, v91, v92, v93, v94;
  MEMORY[0x1D3868CC0](0x444E41202020200ALL, 0xE900000000000020);
  v95 = a5(a7);
  v97 = v96;
  MEMORY[0x1D3868CC0](v95);
  v97, v98, v99, v100, v101, v102, v103, v104;
  return 0;
}

uint64_t sub_1CF22F954(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t *a8)
{
  v10 = v8;
  v17 = (*(a8[1] + 24))(a5, a6, a7);
  if (!v9)
  {
    v18 = v17;
    v22 = a1;
    v19 = a3;
    v23 = 0;
    if ([v17 next])
    {
      do
      {
        v20 = objc_autoreleasePoolPush();
        sub_1CF22FA84(v18, v19 & 1, a2, v22, v10, a4, &v23, a7, a8);
        objc_autoreleasePoolPop(v20);
      }

      while (([v18 next] & 1) != 0);
      a3 = v23;
    }

    else
    {
      a3 = 0;
    }
  }

  return a3 & 1;
}

void sub_1CF22FA84(void *a1, int a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6, _BYTE *a7, char *a8, uint64_t *a9)
{
  v156 = a8;
  v140 = a7;
  v155 = a6;
  v162 = a4;
  v159 = a3;
  LODWORD(v161) = a2;
  v168 = a1;
  v9 = *(*a5 + 600);
  v10 = *(*a5 + 608);
  v11 = *(*a5 + 616);
  v12 = *a5;
  v157 = a5;
  v13 = *(v12 + 624);
  v170 = v9;
  v171 = v10;
  v172 = v11;
  v173 = v13;
  v14 = type metadata accessor for ItemReconciliation(255, &v170);
  v15 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v141 = &v127 - v16;
  v170 = v9;
  v171 = v10;
  v172 = v11;
  v173 = v13;
  v144 = type metadata accessor for ReconciliationTable.CachedEntry(0, &v170);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v127 - v17;
  v170 = v10;
  v171 = v9;
  v172 = v13;
  v173 = v11;
  v148 = type metadata accessor for PersistenceTrigger(255, &v170);
  v145 = sub_1CF9E75D8();
  v153 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v151 = &v127 - v18;
  v170 = v10;
  v171 = v9;
  v172 = v13;
  v173 = v11;
  v152 = type metadata accessor for ItemReconciliation(0, &v170);
  v150 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v149 = &v127 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v136 = sub_1CF9E75D8();
  v135 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v137 = &v127 - v20;
  v164 = v11;
  v165 = v9;
  v170 = v9;
  v171 = v10;
  v163 = v10;
  v172 = v11;
  v173 = v13;
  v158 = v13;
  v21 = type metadata accessor for PersistenceTrigger(0, &v170);
  v154 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v138 = &v127 - v22;
  v147 = sub_1CF9E75D8();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v160 = &v127 - v23;
  v166 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v127 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v127 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v127 - v34;
  *&v37 = MEMORY[0x1EEE9AC00](v36).n128_u64[0];
  v39 = &v127 - v38;
  v40 = v168;
  v41 = [v168 longAtIndex_];
  WitnessTable = swift_getWitnessTable();
  v167 = v14;
  v43 = v169;
  sub_1CF01E03C(v40, 1, v14, WitnessTable, v39);
  if (!v43)
  {
    v44 = v160;
    v133 = v21;
    v129 = v41;
    v128 = v29;
    v130 = v26;
    v169 = 0;
    v45 = v165;
    v134 = a9;
    v46 = v166;
    v47 = v167;
    v48 = *(v166 + 16);
    v168 = v35;
    v132 = v166 + 16;
    v131 = v48;
    v48(v35, v39, v167);
    if (v161)
    {
      v50 = &v39[*(v47 + 52)];
      v51 = v163;
      v52 = v158;
      v54 = &v50[*(type metadata accessor for ItemReconciliationHalf(0, v163, v158, v49) + 64)];
      if (!v54[16] && (*v54 & v159) != 0)
      {
        v160 = *v54;
        v154 = *(v54 + 1);
        v55 = v47;
        v56 = v149;
        v161 = v39;
        sub_1CF07EE34(v55, v53, v149);
        v57 = v151;
        sub_1CF060FD0(v133, v151);
        (*(*(v148 - 8) + 56))(v57, 0, 1);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v59 = Strong;
          v170 = v51;
          v171 = v45;
          v172 = v52;
          v173 = v164;
          type metadata accessor for ReconciliationTable(0, &v170);
          v60 = (*(*v59 + 176))();

          v61 = v169;
          v62 = sub_1CF6939AC(v56, v57, v159, v60, v155, v156, v134[1]);
          v169 = v61;
          v65 = v145;
          if (v61)
          {

            (*(v153 + 8))(v57, v65);
            (v150[1])(v56, v152);
            v66 = v167;
            v67 = *(v166 + 8);
            v67(v168, v167);
LABEL_13:
            v67(v161, v66);
            return;
          }

          v85 = v62;
          v86 = v64;
          v87 = v63;

          (*(v153 + 8))(v57, v65);
          (v150[1])(v56, v152);
          v88 = v87;
          v89 = v87;
          v90 = v160;
          v91 = v154;
          if (sub_1CF95F010(v85, v89, v86, v160, v154, 0))
          {
            sub_1CF03D7A8(v85, v88, v86);
            v46 = v166;
LABEL_18:
            v39 = v161;
            v47 = v167;
            v84 = v168;
            goto LABEL_19;
          }

          *v54 = v85;
          *(v54 + 1) = v88;
          v54[16] = v86;
          sub_1CF03C530(v85, v88, v86);
          sub_1CF03D7A8(v90, v91, 0);
          v47 = v167;
          if (v86 == 1)
          {
            sub_1CF03D7A8(v85, v88, 1u);
            *v140 = 1;
          }

          else
          {
            sub_1CF03D7A8(v85, v88, v86);
          }

          v101 = v141;
          v99 = v161;
          v83 = v130;
          v100 = v128;
          v102 = v163;
LABEL_33:
          v103 = v131;
          v131(v100, v168, v47);
          v103(v83, v99, v47);
          v170 = 0;
          v174 = 0;
          v104 = v83;
          v105 = v166;
          (*(v166 + 56))(v101, 1, 1, v47);
          v106 = v142;
          sub_1CF079694(v129, 0, v100, v104, &v170, &v174, 0, 2, v142, v101, v165, v102, v164, v158);
          v108 = v155;
          v107 = v156;
          v109 = v169;
          v110 = sub_1CF693B0C(v106, v155, v156, v134);
          if (v109)
          {
            (*(v143 + 8))(v106, v144);
            v111 = *(v105 + 8);
            v111(v168, v47);
            v111(v99, v47);
            return;
          }

          v46 = v105;
          if (v110)
          {
            v169 = 0;
            v112 = v144;
            v113 = v143;
            v84 = v168;
          }

          else
          {
            v84 = v168;
            sub_1CF2132A0(v99, v168, v129, v108, v107, v134);
            v169 = 0;
            v112 = v144;
            v113 = v143;
          }

          (*(v113 + 8))(v106, v112);
          v39 = v99;
          goto LABEL_19;
        }

        __break(1u);
        goto LABEL_44;
      }

      v46 = v166;
LABEL_15:
      v84 = v168;
LABEL_19:
      v92 = *(v46 + 8);
      v92(v84, v47);
      v92(v39, v47);
      return;
    }

    v68 = type metadata accessor for ItemReconciliationHalf(0, v45, v164, v49);
    v69 = *(v68 + 64);
    v161 = v39;
    v70 = &v39[v69];
    v72 = v162;
    v71 = v163;
    if (v39[v69 + 16])
    {
      goto LABEL_18;
    }

    v73 = v159;
    v153 = *v70;
    if ((v153 & v159) == 0)
    {
      goto LABEL_18;
    }

    v151 = v68;
    v150 = v70;
    v152 = v70[1];
    v131(v32, v161, v167);
    v74 = v154;
    v75 = v72;
    v76 = v133;
    (*(v154 + 16))(v44, v75, v133);
    (*(v74 + 56))(v44, 0, 1, v76);
    v77 = swift_weakLoadStrong();
    if (!v77)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v78 = v77;
    v170 = v45;
    v171 = v71;
    v172 = v164;
    v173 = v158;
    type metadata accessor for ReconciliationTable(0, &v170);
    v79 = v169;
    v80 = sub_1CF6939AC(v32, v44, v73, v78, v155, v156, v134[1]);
    v169 = v79;
    v83 = v130;
    if (v79)
    {

      (*(v146 + 8))(v44, v147);
      v67 = *(v166 + 8);
      v66 = v167;
      v67(v32, v167);
      v67(v168, v66);
      goto LABEL_13;
    }

    v93 = v80;
    v94 = v81;
    v95 = v82;

    (*(v146 + 8))(v44, v147);
    v47 = v167;
    (*(v166 + 8))(v32, v167);
    v96 = v153;
    v97 = v152;
    if (sub_1CF95F010(v93, v94, v95, v153, v152, 0))
    {
      sub_1CF03D7A8(v93, v94, v95);
      v46 = v166;
      v39 = v161;
      goto LABEL_15;
    }

    v98 = v150;
    *v150 = v93;
    v98[1] = v94;
    *(v98 + 16) = v95;
    v162 = v93;
    sub_1CF03C530(v93, v94, v95);
    sub_1CF03D7A8(v96, v97, 0);
    v99 = v161;
    if (v95 == 1)
    {
      *v140 = 1;
      v100 = v128;
    }

    else
    {
      v100 = v128;
      if ((*(v161 + *(v151 + 9)) & 2) != 0 && !v95)
      {
        v114 = v162;
        sub_1CF03D7A8(v162, v94, 0);
        if (v114 == 512)
        {
          v115 = swift_weakLoadStrong();
          v116 = v163;
          if (v115)
          {
            v117 = v115;
            v118 = v137;
            (*(v135 + 16))(v137, v99, v136);
            v119 = AssociatedTypeWitness;
            v120 = *(AssociatedTypeWitness - 8);
            v121 = (*(v120 + 48))(v118, 1, AssociatedTypeWitness);
            v122 = v138;
            if (v121 != 1)
            {
              (*(v120 + 32))(v138, v118, v119);
              v123 = swift_getAssociatedTypeWitness();
              AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
              v125 = swift_getAssociatedConformanceWitness();
              v170 = v119;
              v171 = v123;
              v172 = AssociatedConformanceWitness;
              v173 = v125;
              type metadata accessor for ReconciliationID(0, &v170);
              swift_storeEnumTagMultiPayload();
              v126 = v133;
              swift_storeEnumTagMultiPayload();
              (*(*v117 + 312))(v122);

              (*(v154 + 8))(v122, v126);
              v102 = v116;
              v101 = v141;
              v99 = v161;
              v83 = v130;
              v100 = v128;
              goto LABEL_33;
            }

LABEL_46:
            __break(1u);
            return;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_32:
        v102 = v163;
        v101 = v141;
        goto LABEL_33;
      }
    }

    sub_1CF03D7A8(v162, v94, v95);
    goto LABEL_32;
  }
}

void sub_1CF230B6C(void *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v293 = a4;
  v294 = a3;
  v295 = a2;
  v297 = a1;
  v6 = *(*v4 + 600);
  v7 = *(*v4 + 624);
  v8 = *(*v4 + 616);
  v299 = *(*v4 + 608);
  v5 = v299;
  v300 = v6;
  v301 = v7;
  v302 = v8;
  v285 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(255, &v299);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v286 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v275 = &v244 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v291 = &v244 - v11;
  v299 = v5;
  v300 = v6;
  v301 = v7;
  v302 = v8;
  v274 = type metadata accessor for PersistenceTrigger(0, &v299);
  v273 = *(v274 - 1);
  MEMORY[0x1EEE9AC00](v274);
  v277 = &v244 - v12;
  v299 = v6;
  v300 = v5;
  v301 = v8;
  v302 = v7;
  v289 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(255, &v299);
  v283 = swift_getTupleTypeMetadata2();
  v290 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283);
  v272 = &v244 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v298 = &v244 - v15;
  v299 = v6;
  v300 = v5;
  v301 = v8;
  v302 = v7;
  v247 = type metadata accessor for ReconciliationMutation(0, &v299);
  v246 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v245 = &v244 - v16;
  v18 = type metadata accessor for SnapshotItem(255, v6, v8, v17);
  v269 = sub_1CF9E75D8();
  v267 = *(v269 - 8);
  MEMORY[0x1EEE9AC00](v269);
  v261 = &v244 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v264 = &v244 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v265 = &v244 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v270 = &v244 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v251 = &v244 - v27;
  v268 = v18;
  v266 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v258 = &v244 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v248 = &v244 - v31;
  v299 = v6;
  v300 = v5;
  v301 = v8;
  v302 = v7;
  v32 = type metadata accessor for ItemReconciliation(255, &v299);
  v253 = sub_1CF9E75D8();
  v252 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v257 = &v244 - v33;
  v255 = v32;
  v256 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v254 = &v244 - v35;
  v299 = v6;
  v300 = v5;
  v279 = v5;
  v301 = v8;
  v302 = v7;
  v278 = v7;
  v36 = type metadata accessor for PersistenceTrigger(0, &v299);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v244 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v244 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v244 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v263 = &v244 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v244 - v49;
  v281 = v8;
  v282 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v271 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v244 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = (&v244 - v54);
  MEMORY[0x1EEE9AC00](v56);
  v260 = &v244 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v262 = &v244 - v59;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v259 = &v244 - v62;
  v287 = v37;
  v63 = *(v37 + 16);
  v63(v50, v297, v36, v61);
  v288 = v50;
  v284 = v36;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v101 = v52;
      (v63)(v39, v288, v284);
      v89 = v39;
      v55 = &unk_1CFAA0618;
      v102 = swift_getAssociatedTypeWitness();
      v103 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v105 = swift_getAssociatedConformanceWitness();
      v299 = v103;
      v300 = v102;
      v301 = AssociatedConformanceWitness;
      v302 = v105;
      v50 = type metadata accessor for ReconciliationID(0, &v299);
      v106 = swift_getEnumCaseMultiPayload();
      v65 = v292;
      if (v106 != 1)
      {
        v122 = v271;
        (*(v271 + 32))(v101, v39, v103);
        v107 = v296;
        v50 = v296;
        sub_1CF233198(v101, 0, 0, v295, v294, v293);
        v108 = v283;
        v123 = v103;
        v124 = v287;
        if (v65)
        {
          (*(v122 + 8))(v101, v123);
          (*(v124 + 8))(v288, v284);
          return;
        }

        (*(v122 + 8))(v101, v123);
        v97 = v284;
        (*(v124 + 8))(v288, v284);
        goto LABEL_39;
      }

LABEL_18:
      (*(*(v50 - 8) + 8))(v89, v50);
      goto LABEL_19;
    }

    v50 = v42;
    v65 = v292;
    if (EnumCaseMultiPayload != 5)
    {
      goto LABEL_19;
    }

    (v63)(v50, v288, v284);
    v70 = swift_getAssociatedTypeWitness();
    v71 = AssociatedTypeWitness;
    v72 = swift_getAssociatedConformanceWitness();
    v73 = swift_getAssociatedConformanceWitness();
    v299 = v71;
    v300 = v70;
    v301 = v72;
    v302 = v73;
    v74 = type metadata accessor for ReconciliationID(255, &v299);
    v75 = *(swift_getTupleTypeMetadata2() + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v76 = *(v74 - 8);
      v77 = *(v76 + 8);
      v78 = v50;
      v50 = v76 + 8;
      v77(v75 + v78, v74);
      v77(v78, v74);
      v65 = v292;
      goto LABEL_19;
    }

    v282 = v75;
    v125 = v271;
    v126 = v55;
    (*(v271 + 32))(v55, v50, v71);
    v127 = v55;
    v128 = v292;
    v107 = v296;
    v55 = v50;
    v50 = v296;
    sub_1CF233198(v127, 1, 1, v295, v294, v293);
    v65 = v128;
    v108 = v283;
    if (!v128)
    {
      (*(v125 + 8))(v126, v71);
      (*(*(v74 - 8) + 8))(v282 + v55, v74);
LABEL_38:
      v97 = v284;
      (*(v287 + 8))(v288, v284);
      goto LABEL_39;
    }

    (*(v125 + 8))(v126, v71);
    (*(*(v74 - 8) + 8))(v282 + v55, v74);
LABEL_28:
    (*(v287 + 8))(v288, v284);
    return;
  }

  if (EnumCaseMultiPayload == 6)
  {
    (v63)(v45, v288, v284);
    v79 = v269;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v81 = *(TupleTypeMetadata3 + 48);
    v281 = *&v45[*(TupleTypeMetadata3 + 64)];
    v82 = v267;
    v83 = *(v267 + 32);
    v83(v270, v45, v79);
    v84 = v265;
    v83(v265, &v45[v81], v79);
    v50 = v264;
    v282 = *(v82 + 16);
    v282(v264, v84, v79);
    v85 = v266;
    v55 = (v266 + 48);
    v86 = *(v266 + 48);
    if (v86(v50, 1, v268) == 1)
    {
      v87 = *(v82 + 8);
      v87(v84, v79);
      v87(v50, v79);
      v87(v270, v79);
LABEL_23:
      v65 = v292;
      v107 = v296;
LABEL_37:
      v108 = v283;
      goto LABEL_38;
    }

    v109 = v271;
    v110 = v260;
    v111 = AssociatedTypeWitness;
    (*(v271 + 16))(v260, v50, AssociatedTypeWitness);
    v112 = v85 + 8;
    v113 = *(v85 + 8);
    v114 = v268;
    v279 = v112;
    v278 = v113;
    v113(v50, v268);
    v115 = *(v109 + 32);
    v116 = v262;
    v117 = v110;
    v118 = v114;
    v119 = v269;
    v115(v262, v117, v111);
    v120 = v261;
    v282(v261, v84, v119);
    if (v86(v120, 1, v118) == 1)
    {
      (*(v271 + 8))(v116, v111);
      v50 = v267 + 8;
      v121 = *(v267 + 8);
      v121(v84, v119);
      v121(v270, v119);
      v121(v120, v119);
      goto LABEL_23;
    }

    v129 = v86;
    v130 = v258;
    (*(v266 + 32))(v258, v120, v118);
    WitnessTable = swift_getWitnessTable();
    sub_1CF06D940(v118, WitnessTable, &v299);
    v107 = v296;
    if (v299)
    {
      v278(v130, v118);
      (*(v271 + 8))(v262, AssociatedTypeWitness);
      v50 = v267 + 8;
      v132 = *(v267 + 8);
      v133 = v269;
      v132(v265, v269);
      v134 = v270;
LABEL_36:
      v132(v134, v133);
      v65 = v292;
      goto LABEL_37;
    }

    v135 = v270;
    v136 = v129(v270, 1, v118);
    v137 = AssociatedTypeWitness;
    v138 = v271;
    if (v136 == 1)
    {
      v278(v130, v118);
      (*(v138 + 8))(v262, v137);
      v50 = v267 + 8;
      v132 = *(v267 + 8);
      v133 = v269;
      v132(v265, v269);
      v134 = v135;
      goto LABEL_36;
    }

    v65 = v292;
    if ((v281 & 8) == 0)
    {
      v278(v258, v118);
      (*(v138 + 8))(v262, v137);
      v50 = v267 + 8;
      v198 = *(v267 + 8);
      v199 = v269;
      v198(v265, v269);
      v198(v270, v199);
      goto LABEL_37;
    }

    v108 = v283;
    v204 = v262;
    if ((v281 & 0x10) != 0)
    {
      v278(v258, v268);
      (*(v138 + 8))(v204, v137);
    }

    else
    {
      v205 = v268;
      v206 = v258;
      v207 = &v258[*(v268 + 48)];
      v208 = v207[*(type metadata accessor for ItemMetadata(0) + 80)];
      sub_1CF233198(v204, v208, 0, v295, v294, v293);
      if (v65)
      {
        v278(v206, v205);
        (*(v138 + 8))(v204, AssociatedTypeWitness);
        v209 = *(v267 + 8);
        v210 = v269;
        v209(v265, v269);
        v209(v270, v210);
        goto LABEL_28;
      }

      v278(v206, v205);
      (*(v138 + 8))(v204, AssociatedTypeWitness);
    }

    v50 = v267 + 8;
    v215 = *(v267 + 8);
    v216 = v269;
    v215(v265, v269);
    v215(v270, v216);
    goto LABEL_38;
  }

  v65 = v292;
  if (EnumCaseMultiPayload != 14)
  {
    if (EnumCaseMultiPayload == 48)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      v66 = v293;
      v67 = v294;
      *(&v244 - 4) = v294;
      *(&v244 - 3) = v66;
      v68 = v295;
      v242 = v296;
      v243 = v295;
      v69 = v66[1];
      sub_1CF247174(sub_1CF24CDA8, (&v244 - 6), v295, v282, v279, v67, v281, v278, v69);
      if (!v65)
      {
        sub_1CF23309C(v68, v67, v69);
      }

      goto LABEL_28;
    }

    goto LABEL_19;
  }

  v88 = v263;
  (v63)(v263, v288, v284);
  v89 = v88;
  v90 = swift_getAssociatedTypeWitness();
  v55 = &unk_1CFAA0630;
  v91 = AssociatedTypeWitness;
  v92 = swift_getAssociatedConformanceWitness();
  v93 = swift_getAssociatedConformanceWitness();
  v299 = v91;
  v300 = v90;
  v301 = v92;
  v302 = v93;
  v50 = type metadata accessor for ReconciliationID(255, &v299);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    goto LABEL_18;
  }

  if (v89[*(swift_getTupleTypeMetadata2() + 48)] <= 1u)
  {
    v279 = v50;
    v94 = v271;
    v95 = (v271 + 32);
    v96 = v259;
    v278 = *(v271 + 32);
    (v278)(v259, v89, v91);
    v97 = v284;
    (*(v287 + 8))(v288, v284);
    v98 = v294;
    v99 = v293[1];
    v100 = v257;
    sub_1CF68DDB0(v96, v295, v294, v99, v257);
    if (v65)
    {
      (*(v94 + 8))(v96, AssociatedTypeWitness);
      return;
    }

    v197 = v99;
    v292 = v95;
    v50 = v256;
    v55 = v255;
    if ((*(v256 + 48))(v100, 1, v255) == 1)
    {
      (*(v271 + 8))(v259, AssociatedTypeWitness);
      (*(v252 + 8))(v100, v253);
      goto LABEL_20;
    }

    v200 = v254;
    (*(v50 + 32))(v254, v100, v55);
    v202 = type metadata accessor for ItemReconciliationHalf(0, v282, v281, v201);
    v108 = v283;
    if ((v200[*(v202 + 36)] & 0x10) != 0)
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        __break(1u);
        return;
      }

      v212 = *(Strong + 32);

      v213 = v251;
      (*(*v212 + 240))(v259, 1, v295, v98, v197);

      v214 = v266;
      v50 = v268;
      if ((*(v266 + 48))(v213, 1, v268) == 1)
      {
        (*(v256 + 8))(v254, v55);
        (*(v271 + 8))(v259, AssociatedTypeWitness);
        (*(v267 + 8))(v213, v269);
        goto LABEL_77;
      }

      v217 = v248;
      (*(v214 + 32))(v248, v213, v50);
      v218 = &v217[*(v50 + 48)];
      if ((v218[*(type metadata accessor for ItemMetadata(0) + 64)] & 1) == 0)
      {
        v219 = v247;
        sub_1CF9E7FA8();
        swift_allocObject();
        v298 = sub_1CF9E6D68();
        v221 = v220;
        v223 = type metadata accessor for ReconciliationSideMutation(255, v282, v281, v222);
        v291 = swift_getTupleTypeMetadata2();
        v224 = *(v291 + 12);
        v225 = v271;
        v226 = v259;
        v227 = AssociatedTypeWitness;
        (*(v271 + 16))(v221, v259, AssociatedTypeWitness);
        swift_storeEnumTagMultiPayload();
        *(v221 + v224) = 0;
        v297 = v223;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v228 = v219;
        v107 = v255;
        v299 = sub_1CF045898(v298, v228);
        v50 = v254;
        if (!sub_1CF07CD80(v107))
        {
          v108 = &v245[*(v291 + 12)];
          (v278)(v245, v226, v227);
          swift_storeEnumTagMultiPayload();
          v55 = v268;
          if (qword_1EDEABDE0 != -1)
          {
            goto LABEL_100;
          }

          goto LABEL_93;
        }

        (*(v225 + 8))(v226, v227);
        v229 = v294;
        v55 = v268;
LABEL_94:
        v231 = v248;
        v232 = v299;
        v303 = v299;
        v233 = sub_1CF9E6E58();
        v234 = swift_getWitnessTable();
        sub_1CF693824(&v303, v295, v233, v229, v234, v293);
        v232, v235, v236, v237, v238, v239, v240, v241;
        (*(v266 + 8))(v231, v55);
        (*(v256 + 8))(v254, v107);
        return;
      }

      (*(v214 + 8))(v217, v50);
      (*(v256 + 8))(v254, v55);
    }

    else
    {
      v203 = *(v50 + 8);
      v50 += 8;
      v203(v200, v55);
    }

    (*(v271 + 8))(v259, AssociatedTypeWitness);
LABEL_77:
    v107 = v296;
    goto LABEL_39;
  }

  (*(v271 + 8))(v89, v91);
LABEL_19:
  v97 = v284;
  (*(v287 + 8))(v288, v284);
LABEL_20:
  v107 = v296;
  v108 = v283;
LABEL_39:
  v139 = swift_weakLoadStrong();
  if (!v139)
  {
    goto LABEL_97;
  }

  v140 = (*(*v139 + 152))(v139);

  v141 = sub_1CF05A838(0, v140, v97);
  if (sub_1CF9E6DF8())
  {
    v55 = v65;
    v107 = 0;
    v292 = (v290 + 16);
    v287 = v289 - 8;
    v288 = (v290 + 8);
    v97 = v272;
    while (1)
    {
      v50 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v50)
      {
        (*(v290 + 16))(v298, v141 + ((*(v290 + 80) + 32) & ~*(v290 + 80)) + *(v290 + 72) * v107, v108);
        v149 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v165 = sub_1CF9E7998();
        if (v250 != 8)
        {
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
          swift_once();
LABEL_93:
          v230 = *(v107 + 64);
          *v108 = qword_1EDEABDE8;
          *(v108 + 8) = *(v50 + v230);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          v229 = v294;
          goto LABEL_94;
        }

        v299 = v165;
        (*v292)(v298, &v299, v108);
        swift_unknownObjectRelease();
        v149 = v107 + 1;
        if (__OFADD__(v107, 1))
        {
LABEL_50:
          __break(1u);
          break;
        }
      }

      v150 = v298;
      v151 = *v298;
      v152 = *(v108 + 12);
      *v97 = *v298;
      v153 = (*(*(v289 - 8) + 32))(&v97[v152], &v150[v152]);
      v65 = &v244;
      MEMORY[0x1EEE9AC00](v153);
      v155 = v293;
      v154 = v294;
      *(&v244 - 4) = v294;
      *(&v244 - 3) = v155;
      v242 = v296;
      v243 = v97;
      v156 = sub_1CF22F954(v297, v151, 0, v295, sub_1CF24CD90, (&v244 - 6), v154, v155);
      if (v55)
      {
        v141, v157, v158, v159, v160, v161, v162, v163;
        (*v288)(v97, v108);
        return;
      }

      v164 = v156;
      (*v288)(v97, v108);
      ++v107;
      if (v149 == sub_1CF9E6DF8())
      {
        v65 = 0;
        v107 = v296;
        v108 = v277;
        v97 = v284;
        goto LABEL_53;
      }
    }
  }

  v164 = 0;
  v108 = v277;
LABEL_53:
  v141, v142, v143, v144, v145, v146, v147, v148;
  v50 = v297;
  sub_1CF060FD0(v97, v108);
  v166 = swift_weakLoadStrong();
  if (!v166)
  {
    goto LABEL_98;
  }

  v292 = v65;
  v167 = (*(*v166 + 152))(v166);

  v168 = v274;
  v50 = v108;
  v169 = sub_1CF05A838(1, v167, v274);
  (*(v273 + 8))(v108, v168);
  v170 = TupleTypeMetadata2;
  v171 = sub_1CF9E6DF8();
  v55 = v275;
  if (v171)
  {
    v179 = 0;
    v298 = (v286 + 16);
    v289 = v285 - 8;
    v290 = v286 + 8;
    while (1)
    {
      v50 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v50)
      {
        (*(v286 + 16))(v291, v169 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v179, v170);
        v180 = v179 + 1;
        if (__OFADD__(v179, 1))
        {
          goto LABEL_64;
        }
      }

      else
      {
        v195 = sub_1CF9E7998();
        if (v249 != 8)
        {
          goto LABEL_96;
        }

        v299 = v195;
        v50 = v195;
        (*v298)(v291, &v299, v170);
        swift_unknownObjectRelease();
        v180 = v179 + 1;
        if (__OFADD__(v179, 1))
        {
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }
      }

      v181 = v291;
      v107 = *v291;
      v182 = *(v170 + 48);
      *v55 = *v291;
      v183 = (*(*(v285 - 8) + 32))(v55 + v182, &v181[v182]);
      v108 = &v244;
      MEMORY[0x1EEE9AC00](v183);
      v185 = v293;
      v184 = v294;
      *(&v244 - 4) = v294;
      *(&v244 - 3) = v185;
      v50 = v296;
      v242 = v296;
      v243 = v55;
      v186 = v292;
      v187 = sub_1CF22F954(v297, v107, 1, v295, sub_1CF24CD9C, (&v244 - 6), v184, v185);
      v292 = v186;
      if (v186)
      {
        break;
      }

      v164 |= v187;
      (*v290)(v55, v170);
      ++v179;
      if (v180 == sub_1CF9E6DF8())
      {
        goto LABEL_65;
      }
    }

    v169, v188, v189, v190, v191, v192, v193, v194;
    (*v290)(v55, v170);
  }

  else
  {
LABEL_65:
    v169, v172, v173, v174, v175, v176, v177, v178;
    if (v164)
    {
      v196 = swift_weakLoadStrong();
      if (!v196)
      {
        goto LABEL_99;
      }

      (*(*v196 + 304))(v196);
    }
  }
}

void sub_1CF232DB4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  v5 = *(*a2 + 608);
  v6 = *(*a2 + 616);
  v7 = *(*a2 + 624);
  v32 = *(*a2 + 600);
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v26 = type metadata accessor for ReconciliationMutation(255, &v32);
  sub_1CF9E7FA8();
  swift_allocObject();
  v27 = sub_1CF9E6D68();
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v32 = AssociatedTypeWitness;
  v33 = v11;
  v34 = AssociatedConformanceWitness;
  v35 = v13;
  type metadata accessor for ReconciliationID(255, &v32);
  v14 = v9 + *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 16))(v9, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v14 = 3;
  *(v14 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  v15 = sub_1CF045898(v27, v26);
  v32 = v15;
  v16 = sub_1CF9E6E58();
  WitnessTable = swift_getWitnessTable();
  v18 = v36;
  sub_1CF693824(&v32, a3, v16, a4, WitnessTable, a5);
  v15, v19, v20, v21, v22, v23, v24, v25;
  if (v18)
  {
  }
}

void sub_1CF23309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + *(*v3 + 680)) = 0;
  v5 = (*(a3 + 24))(sub_1CF233FE8, 0, a2, a3);
  if (!v4)
  {
    v6 = v5;
    if ([v5 next])
    {
      do
      {
        v7 = objc_autoreleasePoolPush();
        sub_1CF234004(v3, v6);
        objc_autoreleasePoolPop(v7);
      }

      while (([v6 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF233198(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v18 = a2;
  v19 = a3;
  v17 = *v7;
  v9 = v17[77];
  v10 = v17[75];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 64);
  v13 = swift_checkMetadataState();
  result = v12(v13, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
    result = (*(AssociatedConformanceWitness + 72))(v13, AssociatedConformanceWitness);
    if ((result & 1) == 0)
    {
      MEMORY[0x1EEE9AC00](result);
      v15 = v17[76];
      v16[2] = v10;
      v16[3] = v15;
      v16[4] = v21;
      v16[5] = v9;
      v16[6] = v17[78];
      v16[7] = v22;
      v16[8] = a1;
      return sub_1CF23A2B4(v18 & 1, v19 & 1, v20, sub_1CF24CDC8, v16, v21, v22);
    }
  }

  return result;
}

uint64_t sub_1CF23335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*a2 + 608);
  v11 = *(*a2 + 616);
  v12 = *(*a2 + 624);
  v16[0] = *(*a2 + 600);
  v9 = v16[0];
  v16[1] = v10;
  v16[2] = v11;
  v16[3] = v12;
  type metadata accessor for PersistenceTrigger.AffectedReconciliation(255, v16);
  v13 = *(swift_getTupleTypeMetadata2() + 48);
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = a4;
  v15[5] = v11;
  v15[6] = v12;
  v15[7] = a5;
  v15[8] = a3;
  return sub_1CF086D88(a3 + v13, a1, sub_1CF24D040, v15);
}

uint64_t sub_1CF233470(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a3;
  v38 = a4;
  v39 = a6;
  v40 = a7;
  v8 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(255, &v37);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = (v36 - v11);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1CF9E7948();
  v36[0] = v37;
  v36[1] = v38;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA37420);
  v37 = 0;
  v13 = MEMORY[0x1E69E6530];
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA37440);
  (*(v10 + 16))(v12, a2, TupleTypeMetadata2);
  v24 = *v12;
  v40 = v13;
  v37 = v24;
  v25 = sub_1CEFF8EA0(&v37);
  v27 = v26;
  sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v27)
  {
    (*(*(v8 - 8) + 8))(v12 + *(TupleTypeMetadata2 + 48), v8);
    MEMORY[0x1D3868CC0](v25, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    return v36[0];
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF2336E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v26 = a1;
  v23 = a4;
  v6 = *(*a2 + 608);
  v7 = *(*a2 + 616);
  v8 = *(*a2 + 624);
  v35 = *(*a2 + 600);
  v36 = v6;
  v9 = v35;
  v21 = v35;
  v37 = v7;
  v38 = v8;
  v24 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(0, &v35);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v11 = &v21 - v10;
  v35 = v6;
  v36 = v9;
  v37 = v8;
  v38 = v7;
  v12 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(255, &v35);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v21 - v15;
  (*(v17 + 16))(&v21 - v15, a3, TupleTypeMetadata2, v14);
  v18 = *(TupleTypeMetadata2 + 48);
  sub_1CF684634(v12, v11);
  (*(*(v12 - 1) + 8))(&v16[v18], v12);
  v28 = v21;
  v29 = v6;
  v30 = v23;
  v31 = v7;
  v32 = v8;
  v33 = v25;
  v34 = a3;
  v19 = sub_1CF086D88(v11, v26, sub_1CF24CF2C, v27);
  (*(v22 + 8))(v11, v24);
  return v19;
}

uint64_t sub_1CF233980(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37 = a4;
  v38 = a3;
  v39 = a7;
  v40 = a6;
  v8 = type metadata accessor for PersistenceTrigger.AffectedReconciliation(255, &v37);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = (v36 - v11);
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1CF9E7948();
  v36[0] = v37;
  v36[1] = v38;
  MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA373D0);
  v37 = 0;
  v13 = MEMORY[0x1E69E6530];
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0xD00000000000002ALL, 0x80000001CFA373F0);
  (*(v10 + 16))(v12, a2, TupleTypeMetadata2);
  v24 = *v12;
  v40 = v13;
  v37 = v24;
  v25 = sub_1CEFF8EA0(&v37);
  v27 = v26;
  sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v27)
  {
    (*(*(v8 - 8) + 8))(v12 + *(TupleTypeMetadata2 + 48), v8);
    MEMORY[0x1D3868CC0](v25, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    return v36[0];
  }

  else
  {
    result = sub_1CF9E7B68();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF233BF4()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000054, 0x80000001CFA3C400);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  return 0;
}

uint64_t sub_1CF233CA0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000035FLL, 0x80000001CFA3C070);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA3C3D0);
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  return 0;
}

uint64_t sub_1CF233DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1CF9E6868() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for ItemIDAndLastChange(0, a3, a4, v8) + 36);
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 8);
  if (v11)
  {
    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CF233E7C(uint64_t a1, uint64_t a2)
{
  sub_1CF9E6758();
  v4 = (v2 + *(a2 + 36));
  if (*(v4 + 8) == 1)
  {
    return sub_1CF9E81F8();
  }

  v6 = *v4;
  sub_1CF9E81F8();
  return MEMORY[0x1D386A470](v6);
}

uint64_t sub_1CF233EF4(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF233E7C(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF233F44(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF233E7C(v4, a2);
  return sub_1CF9E8228();
}

void sub_1CF234004(uint64_t *a1, void *a2)
{
  v5 = *a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  if ((*(a1 + *(v5 + 680)) & 1) == 0)
  {
    v26 = v9;
    v27 = v8;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = *(*(AssociatedConformanceWitness + 8) + 16);
    v14 = a2;
    v25 = v11;
    v13();
    if (!v2)
    {
      v24 = [v14 longAtIndex_];
      v16 = [v14 isNullAtIndex_];
      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = [v14 integerAtIndex_];
      }

      v18 = AssociatedTypeWitness;
      type metadata accessor for PendingSetItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
      v19 = v27;
      v21 = v25;
      v20 = v26;
      (*(v27 + 16))(v26, v25, v18);
      v22 = sub_1CF206528(v20, v24, v17, v16);
      sub_1CF212638(v22);

      (*(v19 + 8))(v21, v18);
    }
  }
}

uint64_t sub_1CF234294(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  v6 = sub_1CF208628(0x2E7366uLL, 0xE300000000000000);
  v8 = v7;
  MEMORY[0x1D3868CC0](v6);
  v8, v9, v10, v11, v12, v13, v14, v15;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v16 = sub_1CF2080AC(3043430, 0xE300000000000000);
  v18 = v17;
  MEMORY[0x1D3868CC0](v16);
  v18, v19, v20, v21, v22, v23, v24, v25;
  MEMORY[0x1D3868CC0](0xD00000000000018CLL, 0x80000001CFA38770);
  v26 = sub_1CEFE8C10(3044466, 0xE300000000000000);
  v28 = v27;
  MEMORY[0x1D3868CC0](v26);
  v28, v29, v30, v31, v32, v33, v34, v35;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v36 = sub_1CEFE91F8(0x726F6365642E7066uLL, 0xEE005F6E6F697461);
  v38 = v37;
  MEMORY[0x1D3868CC0](v36);
  v38, v39, v40, v41, v42, v43, v44, v45;
  MEMORY[0x1D3868CC0](0xD0000000000000A3, 0x80000001CFA38900);
  v46 = [a1 bindLongParameter_];
  v47 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v49 = v48;

  MEMORY[0x1D3868CC0](v47, v49);
  v49, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](0xD000000000000025, 0x80000001CFA389B0);
  v57 = [a1 bindLongParameter_];
  v58 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v60 = v59;

  MEMORY[0x1D3868CC0](v58, v60);
  v60, v61, v62, v63, v64, v65, v66, v67;
  return 0;
}

void sub_1CF2344D8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v197 = v2;
  v4 = v3;
  v200 = v5;
  LODWORD(v202) = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v196 = type metadata accessor for PendingIndexingItemRow(0);
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v199);
  v188 = &v166 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBB0, &qword_1CF9FCB90);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v254 = &v166 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v195 = &v166 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v194 = &v166 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v193 = &v166 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v192 = &v166 - v26;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v189 = &v166 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v166 - v31;
  *&v35 = MEMORY[0x1EEE9AC00](v33).n128_u64[0];
  v37 = &v166 - v36;
  v38 = *v14 + 1;
  if (__OFADD__(*v14, 1))
  {
    __break(1u);
    goto LABEL_124;
  }

  v190 = v34;
  v191 = v4;
  *v14 = v38;
  if ([v12 isNullAtIndex_])
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  }

  else
  {
    v40 = sub_1CF1CBB20();
    sub_1CF2408F8(v40, v12, 0, v37);
    if (v1)
    {
      v40, v41, v42, v43, v44, v45, v46, v47;
      return;
    }

    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v48 - 8) + 56))(v37, 0, 1, v48);
  }

  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  v52 = 1;
  v186 = v49;
  v187 = v51;
  v201 = v50 + 48;
  if (v51)(v37, 1) != 1 || ([v12 isNullAtIndex_])
  {
LABEL_11:
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
    (*(*(v61 - 8) + 56))(v254, v52, 1, v61);
    v185 = [v12 isNullAtIndex_];
    if (v185)
    {
      v62 = 0;
    }

    else
    {
      v62 = [v12 longAtIndex_];
    }

    if (!__OFADD__(v8, 1))
    {
      v184 = v62;
      v183 = [v12 isNullAtIndex_];
      if (v183)
      {
        v63 = 0;
      }

      else
      {
        v63 = [v12 longAtIndex_];
      }

      if (!__OFADD__(v8, 2))
      {
        v182 = v63;
        if ([v12 isNullAtIndex_])
        {
          v64 = 2;
        }

        else
        {
          v64 = [v12 BOOLAtIndex_];
        }

        if (!__OFADD__(v8, 3))
        {
          v181 = v64;
          if ([v12 isNullAtIndex_])
          {
            v65 = 2;
          }

          else
          {
            v65 = [v12 BOOLAtIndex_];
          }

          if (!__OFADD__(v8, 4))
          {
            v180 = v65;
            v179 = [v12 isNullAtIndex_];
            if (v179)
            {
              v66 = 0;
            }

            else
            {
              v66 = [v12 longAtIndex_];
            }

            if (!__OFADD__(v8, 5))
            {
              v178 = v66;
              if ([v12 isNullAtIndex_])
              {
                v205 = 0;
                v206 = 0xF000000000000000;
              }

              else
              {
                if ([v12 isNullAtIndex_])
                {
                  goto LABEL_136;
                }

                if (swift_dynamicCastMetatype())
                {
                  goto LABEL_137;
                }

                v67 = [v12 dataAtIndex_];
                v205 = sub_1CF9E5B88();
                v206 = v68;
              }

              if (!__OFADD__(v8, 6))
              {
                if ([v12 isNullAtIndex_])
                {
                  v203 = 0;
                  v204 = 0xF000000000000000;
                  goto LABEL_42;
                }

                if ([v12 isNullAtIndex_])
                {
                  goto LABEL_136;
                }

                if (!swift_dynamicCastMetatype())
                {
                  v69 = [v12 dataAtIndex_];
                  v203 = sub_1CF9E5B88();
                  v204 = v70;

LABEL_42:
                  if (!__OFADD__(v8, 7))
                  {
                    v177 = [v12 isNullAtIndex_];
                    if (v177)
                    {
                      v71 = 0;
                    }

                    else
                    {
                      v71 = [v12 longAtIndex_];
                    }

                    if (!__OFADD__(v8, 8))
                    {
                      v176 = v71;
                      v72 = [v12 isNullAtIndex_];
                      if (v72)
                      {
                        v73 = 0;
                      }

                      else
                      {
                        v73 = [v12 longAtIndex_];
                      }

                      if (!__OFADD__(v8, 9))
                      {
                        v74 = [v12 longAtIndex_];
                        if (!__OFADD__(v8, 10))
                        {
                          v174 = v74;
                          v175 = v72;
                          v75 = [v12 integerAtIndex_];
                          if (!__OFADD__(v8, 11))
                          {
                            v76 = v75;
                            v173 = v73;
                            v77 = [v12 longAtIndex_];
                            v78 = v8 + 12;
                            if (!__OFADD__(v8, 12))
                            {
                              v79 = v77;
                              v80 = sub_1CEFE9C6C();
                              sub_1CEFE9EC8(v80, v12, v78, v253);
                              if (v1)
                              {
                                sub_1CEFCCC44(v254, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                                v80, v88, v89, v90, v91, v92, v93, v94;
                                sub_1CEFE48D8(v203, v204);
                                sub_1CEFE48D8(v205, v206);
                                goto LABEL_56;
                              }

                              v80, v81, v82, v83, v84, v85, v86, v87;
                              v98 = sub_1CEFF12E8();
                              sub_1CEFF14E0(v98, v12, v202, v251);
                              v172 = v79;
                              v202 = v76;
                              v98, v99, v100, v101, v102, v103, v104, v105;
                              v247 = v251[12];
                              v248 = v251[13];
                              v249 = v251[14];
                              v250 = v252;
                              v243 = v251[8];
                              v244 = v251[9];
                              v245 = v251[10];
                              v246 = v251[11];
                              v239 = v251[4];
                              v240 = v251[5];
                              v241 = v251[6];
                              v242 = v251[7];
                              v235 = v251[0];
                              v236 = v251[1];
                              v237 = v251[2];
                              v238 = v251[3];
                              v106 = v253[13];
                              v107 = v186;
                              if (!v253[13])
                              {
LABEL_81:
                                v137 = v253[37];
                                v138 = v206;
                                if (v253[37] == 1)
                                {
                                  v139 = v205;
                                  if (v206 >> 60 != 15)
                                  {
                                    v140 = 0;
                                    v141 = 0xF000000000000000;
LABEL_88:
                                    sub_1CEFF05F4(v139, v138);
                                    sub_1CEFF05F4(v139, v138);
                                    sub_1CEFE4714(v139, v138);
LABEL_90:
                                    sub_1CEFE48D8(v139, v138);
                                    sub_1CEFE48D8(v140, v141);
                                    v142 = v200;
                                    v143 = v204;
LABEL_91:
                                    if ((v253[33] & 8) == 0)
                                    {
                                      v253[33] |= 8uLL;
                                    }

LABEL_93:
                                    if (v137 == 1)
                                    {
                                      v144 = v193;
                                      v145 = v186;
                                      if (v143 >> 60 != 15)
                                      {
                                        v146 = 0;
                                        v147 = 0xF000000000000000;
LABEL_101:
                                        v150 = v203;
                                        sub_1CEFF05F4(v203, v143);
                                        sub_1CEFF05F4(v150, v143);
                                        sub_1CEFE4714(v150, v143);
LABEL_103:
                                        sub_1CEFE48D8(v150, v143);
                                        sub_1CEFE48D8(v146, v147);
                                        v142 = v200;
                                        goto LABEL_104;
                                      }

                                      goto LABEL_99;
                                    }

LABEL_97:
                                    v146 = v253[38];
                                    v147 = v253[39];
                                    sub_1CEFE42D4(v253[38], v253[39]);
                                    if (v143 >> 60 != 15)
                                    {
                                      v144 = v193;
                                      v145 = v186;
                                      if (v147 >> 60 == 15)
                                      {
                                        goto LABEL_101;
                                      }

                                      v164 = v203;
                                      sub_1CEFF05F4(v203, v143);
                                      sub_1CEFF05F4(v146, v147);
                                      sub_1CEFF05F4(v164, v143);
                                      LODWORD(v190) = sub_1CF328660(v164, v143, v146, v147);
                                      sub_1CEFE48D8(v146, v147);
                                      sub_1CEFE48D8(v146, v147);
                                      sub_1CEFE4714(v164, v143);
                                      v165 = v164;
                                      v142 = v200;
                                      sub_1CEFE48D8(v165, v143);
                                      if ((v190 & 1) == 0)
                                      {
LABEL_104:
                                        if ((~LOBYTE(v253[33]) & 3) != 0)
                                        {
                                          v253[33] |= 3uLL;
                                        }
                                      }

LABEL_106:
                                      v151 = v192;
                                      if (v174 < *v142)
                                      {
                                        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 4171);
                                      }

                                      *v142 = v174;
                                      memcpy(v234, v253, sizeof(v234));
                                      sub_1CEFCCBDC(v37, v151, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      v152 = v187;
                                      v153 = v187(v151, 1, v145);
                                      v155 = v194;
                                      v154 = v195;
                                      if (v153 == 1)
                                      {
                                        sub_1CEFCCBDC(v234, v226, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                                        sub_1CEFCCC44(v151, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        LODWORD(v200) = 2;
                                      }

                                      else
                                      {
                                        LODWORD(v200) = *(v151 + *(v145 + 48) + *(v199 + 80));
                                        sub_1CEFCCBDC(v234, v226, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                                        sub_1CEFCCC44(v151, &unk_1EC4BE360, &qword_1CF9FE650);
                                      }

                                      sub_1CEFCCBDC(v37, v144, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      if (v152(v144, 1, v145) == 1)
                                      {
                                        sub_1CEFCCC44(v144, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        LODWORD(v199) = 2;
                                      }

                                      else
                                      {
                                        v156 = v188;
                                        sub_1CEFF4408(v144 + *(v145 + 48), v188);
                                        sub_1CEFCCC44(v144, &unk_1EC4BE360, &qword_1CF9FE650);
                                        LODWORD(v199) = *(v156 + *(v199 + 72));
                                        sub_1CEFD5218(v156, type metadata accessor for ItemMetadata);
                                      }

                                      sub_1CEFCCBDC(v37, v155, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      v157 = v152(v155, 1, v145);
                                      if (v157 == 1)
                                      {
                                        sub_1CEFCCC44(v155, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        v193 = 0;
                                      }

                                      else
                                      {
                                        v193 = *(v155 + 32);
                                        sub_1CEFCCC44(v155, &unk_1EC4BE360, &qword_1CF9FE650);
                                      }

                                      sub_1CEFCCBDC(v37, v154, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      if (v152(v154, 1, v145) == 1)
                                      {
                                        sub_1CEFCCC44(v154, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                        v201 = 0;
                                        LODWORD(v194) = 255;
                                      }

                                      else
                                      {
                                        v201 = *(v154 + 16);
                                        LODWORD(v194) = *(v154 + 24);
                                        sub_1CEFCCC44(v154, &unk_1EC4BE360, &qword_1CF9FE650);
                                      }

                                      v158 = v157 == 1;
                                      memcpy(v208, v234, sizeof(v208));
                                      nullsub_1();
                                      v221 = v247;
                                      v222 = v248;
                                      v223 = v249;
                                      v224 = v250;
                                      v217 = v243;
                                      v218 = v244;
                                      v219 = v245;
                                      v220 = v246;
                                      v213 = v239;
                                      v214 = v240;
                                      v215 = v241;
                                      v216 = v242;
                                      v209 = v235;
                                      v210 = v236;
                                      v211 = v237;
                                      v212 = v238;
                                      nullsub_1();
                                      memcpy(v225, v208, sizeof(v225));
                                      *(&v227[12] + 5) = v221;
                                      *(&v227[13] + 5) = v222;
                                      *(&v227[14] + 5) = v223;
                                      *(&v227[8] + 5) = v217;
                                      *(&v227[9] + 5) = v218;
                                      *(&v227[10] + 5) = v219;
                                      *(&v227[11] + 5) = v220;
                                      *(&v227[4] + 5) = v213;
                                      *(&v227[5] + 5) = v214;
                                      *(&v227[6] + 5) = v215;
                                      *(&v227[7] + 5) = v216;
                                      *(v227 + 5) = v209;
                                      *(&v227[1] + 5) = v210;
                                      *(&v227[2] + 5) = v211;
                                      v233 = v158;
                                      v232 = v185;
                                      v231 = v183;
                                      v230 = v177;
                                      v229 = v175;
                                      v228 = v179;
                                      *(&v227[15] + 5) = v224;
                                      *(&v227[3] + 5) = v212;
                                      v159 = v185;
                                      v160 = v183;
                                      LODWORD(v190) = v177;
                                      LODWORD(v192) = v175;
                                      LODWORD(v195) = v179;
                                      v161 = v198;
                                      sub_1CEFCCBDC(v37, v198, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      v162 = v196;
                                      sub_1CEFCCBDC(v254, v161 + *(v196 + 20), &unk_1EC4BFBB0, &qword_1CF9FCB90);
                                      memcpy(v226, v225, 0x208uLL);
                                      LOBYTE(v226[65]) = v200;
                                      BYTE1(v226[65]) = v199;
                                      v226[66] = v193;
                                      LOBYTE(v226[67]) = v158;
                                      v226[68] = v201;
                                      LOBYTE(v226[69]) = v194;
                                      v226[70] = v184;
                                      LOBYTE(v226[71]) = v159;
                                      v226[72] = v182;
                                      LOBYTE(v226[73]) = v160;
                                      v226[74] = v176;
                                      LOBYTE(v226[75]) = v190;
                                      v226[76] = v173;
                                      LOBYTE(v226[77]) = v192;
                                      v226[78] = v178;
                                      LOBYTE(v226[79]) = v195;
                                      BYTE1(v226[79]) = v181;
                                      BYTE2(v226[79]) = v180;
                                      *(&v226[103] + 3) = v227[12];
                                      *(&v226[105] + 3) = v227[13];
                                      *(&v226[107] + 3) = v227[14];
                                      *&v226[109] = *(&v227[14] + 13);
                                      *(&v226[95] + 3) = v227[8];
                                      *(&v226[97] + 3) = v227[9];
                                      *(&v226[99] + 3) = v227[10];
                                      *(&v226[101] + 3) = v227[11];
                                      *(&v226[87] + 3) = v227[4];
                                      *(&v226[89] + 3) = v227[5];
                                      *(&v226[91] + 3) = v227[6];
                                      *(&v226[93] + 3) = v227[7];
                                      *(&v226[79] + 3) = v227[0];
                                      *(&v226[81] + 3) = v227[1];
                                      *(&v226[83] + 3) = v227[2];
                                      *(&v226[85] + 3) = v227[3];
                                      nullsub_1();
                                      memcpy((v161 + v162[6]), v226, 0x378uLL);
                                      *(v161 + v162[7]) = v202;
                                      v163 = v161 + v162[8];
                                      *v163 = v172;
                                      *(v163 + 8) = 0;
                                      sub_1CEFF7474(&v235, v207);
                                      v191(v161);
                                      sub_1CF07574C(&v235);
                                      sub_1CEFE48D8(v203, v204);
                                      sub_1CEFE48D8(v205, v206);
                                      sub_1CEFD5218(v161, type metadata accessor for PendingIndexingItemRow);
                                      sub_1CEFCCC44(v254, &unk_1EC4BFBB0, &qword_1CF9FCB90);
                                      sub_1CEFCCC44(v37, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      memcpy(v207, v253, sizeof(v207));
                                      v95 = &qword_1EC4BFBC0;
                                      v96 = &unk_1CF9FCAC0;
                                      v97 = v207;
                                      goto LABEL_120;
                                    }

                                    v144 = v193;
                                    v145 = v186;
                                    if (v147 >> 60 != 15)
                                    {
                                      v150 = v203;
                                      sub_1CEFF05F4(v203, v143);
                                      goto LABEL_103;
                                    }

LABEL_99:
                                    v149 = v203;
                                    sub_1CEFF05F4(v203, v143);
                                    sub_1CEFE48D8(v149, v143);
                                    goto LABEL_106;
                                  }
                                }

                                else
                                {
                                  v140 = v253[35];
                                  v141 = v253[36];
                                  sub_1CEFE42D4(v253[35], v253[36]);
                                  if (v138 >> 60 != 15)
                                  {
                                    v139 = v205;
                                    if (v141 >> 60 != 15)
                                    {
                                      sub_1CEFF05F4(v205, v138);
                                      sub_1CEFF05F4(v140, v141);
                                      sub_1CEFF05F4(v139, v138);
                                      v148 = sub_1CF328660(v139, v138, v140, v141);
                                      sub_1CEFE48D8(v140, v141);
                                      sub_1CEFE48D8(v140, v141);
                                      sub_1CEFE4714(v139, v138);
                                      sub_1CEFE48D8(v139, v138);
                                      v142 = v200;
                                      v143 = v204;
                                      if (v148)
                                      {
                                        goto LABEL_97;
                                      }

                                      goto LABEL_91;
                                    }

                                    goto LABEL_88;
                                  }

                                  v139 = v205;
                                  if (v141 >> 60 != 15)
                                  {
                                    sub_1CEFF05F4(v205, v138);
                                    goto LABEL_90;
                                  }
                                }

                                sub_1CEFF05F4(v139, v138);
                                sub_1CEFE48D8(v139, v138);
                                v142 = v200;
                                v143 = v204;
                                goto LABEL_93;
                              }

                              v108 = v253[5];
                              v171 = v253[6];
                              v109 = v253[7];
                              v110 = LOBYTE(v253[8]);
                              sub_1CEFCCBDC(v37, v32, &qword_1EC4C1B40, &unk_1CF9FCB70);
                              if (v187(v32, 1, v107) == 1)
                              {
                                sub_1CEFCCC44(v32, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                v111 = v187;
                              }

                              else
                              {
                                LODWORD(v170) = v110;
                                v168 = v109;
                                v113 = *(v32 + 4);
                                v114 = *(v32 + 10);
                                v167 = *(v32 + 6);
                                v169 = v32[56];
                                sub_1CEFCCC44(v32, &unk_1EC4BE360, &qword_1CF9FE650);
                                v111 = v187;
                                if (v108 == v113 && v171 == v114)
                                {
                                  if (v170)
                                  {
                                    if (v169)
                                    {
                                      goto LABEL_73;
                                    }
                                  }

                                  else
                                  {
                                    v116 = v169;
                                    if (v168 != v167)
                                    {
                                      v116 = 1;
                                    }

                                    if ((v116 & 1) == 0)
                                    {
LABEL_73:
                                      LODWORD(v189) = LOBYTE(v253[11]);
                                      v117 = v253[10];
                                      v118 = v253[12];
                                      v119 = v190;
                                      sub_1CEFCCBDC(v37, v190, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      if (v111(v119, 1, v107) == 1)
                                      {

                                        sub_1CEFCCC44(v119, &qword_1EC4C1B40, &unk_1CF9FCB70);
                                      }

                                      else
                                      {
                                        v127 = *(v119 + 72);
                                        v171 = *(v119 + 80);
                                        v128 = *(v119 + 96);
                                        v170 = *(v119 + 88);

                                        sub_1CEFCCC44(v119, &unk_1EC4BE360, &qword_1CF9FE650);
                                        if (v128)
                                        {

                                          v129 = sub_1CF443664(v117, v189, v118, v106, v127, v171, v170, v128);
                                          swift_bridgeObjectRelease_n();
                                          swift_bridgeObjectRelease_n();
                                          if (v129)
                                          {
                                            goto LABEL_81;
                                          }

                                          goto LABEL_79;
                                        }
                                      }

                                      0, v120, v121, v122, v123, v124, v125, v126;
                                      v106, v130, v131, v132, v133, v134, v135, v136;
LABEL_79:
                                      if ((~LOBYTE(v253[3]) & 3) != 0)
                                      {
                                        v253[3] |= 3uLL;
                                      }

                                      goto LABEL_81;
                                    }
                                  }
                                }
                              }

                              v112 = v189;
                              sub_1CEFCCBDC(v37, v189, &qword_1EC4C1B40, &unk_1CF9FCB70);
                              if (v111(v112, 1, v107) == 1)
                              {
                                sub_1CEFCCC44(v112, &qword_1EC4C1B40, &unk_1CF9FCB70);
                              }

                              else
                              {
                                v115 = *(v112 + *(v107 + 48) + *(v199 + 80));
                                sub_1CEFCCC44(v112, &unk_1EC4BE360, &qword_1CF9FE650);
                                if ((v115 & 1) == 0 && (v253[3] & 8) == 0)
                                {
                                  v253[3] |= 8uLL;
                                }
                              }

                              goto LABEL_73;
                            }

                            goto LABEL_135;
                          }

LABEL_134:
                          __break(1u);
LABEL_135:
                          __break(1u);
LABEL_136:
                          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
                        }

LABEL_133:
                        __break(1u);
                        goto LABEL_134;
                      }

LABEL_132:
                      __break(1u);
                      goto LABEL_133;
                    }

LABEL_131:
                    __break(1u);
                    goto LABEL_132;
                  }

LABEL_130:
                  __break(1u);
                  goto LABEL_131;
                }

LABEL_137:
                sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
              }

LABEL_129:
              __break(1u);
              goto LABEL_130;
            }

LABEL_128:
            __break(1u);
            goto LABEL_129;
          }

LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v53 = sub_1CF1CC7A8();
  sub_1CF241018(v12, v53, v10, v254);
  v53, v54, v55, v56, v57, v58, v59, v60;
  if (!v1)
  {
    v52 = 0;
    goto LABEL_11;
  }

LABEL_56:
  v95 = &qword_1EC4C1B40;
  v96 = &unk_1CF9FCB70;
  v97 = v37;
LABEL_120:
  sub_1CEFCCC44(v97, v95, v96);
}

uint64_t sub_1CF235AC4(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000047, 0x80000001CFA38A90);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  return 0;
}

uint64_t sub_1CF235B80(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000004DLL, 0x80000001CFA38A10);
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000022, 0x80000001CFA38A60);
  v17 = [a1 bindLongParameter_];
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;

  MEMORY[0x1D3868CC0](v18, v20);
  v20, v21, v22, v23, v24, v25, v26, v27;
  return 0;
}

void sub_1CF235CB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  LODWORD(v129) = a5;
  v9 = a3;
  v101 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - v12;
  v14 = sub_1CF1CBB20();
  sub_1CF2408F8(v14, a6, v9, v13);
  if (v6)
  {
    v14, v15, v16, v17, v18, v19, v20, v21;
    return;
  }

  v100 = v13;
  v96 = a1;
  v14, v15, v16, v17, v18, v19, v20, v21;
  LODWORD(v95) = [a6 isNullAtIndex_];
  if (v95)
  {
    v22 = 0;
  }

  else
  {
    v22 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 1))
  {
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v94 = [a6 isNullAtIndex_];
  if (v94)
  {
    v23 = 0;
  }

  else
  {
    v23 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 2))
  {
    goto LABEL_89;
  }

  v93 = v23;
  if ([a6 isNullAtIndex_])
  {
    v24 = 2;
  }

  else
  {
    v24 = [a6 BOOLAtIndex_];
  }

  if (__OFADD__(a4, 3))
  {
    goto LABEL_90;
  }

  v92 = v24;
  if ([a6 isNullAtIndex_])
  {
    v25 = 2;
  }

  else
  {
    v25 = [a6 BOOLAtIndex_];
  }

  if (__OFADD__(a4, 4))
  {
    goto LABEL_91;
  }

  v91 = v25;
  v90 = [a6 isNullAtIndex_];
  if (v90)
  {
    v26 = 0;
  }

  else
  {
    v26 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 5))
  {
    goto LABEL_92;
  }

  v27 = [a6 isNullAtIndex_];
  v89 = v22;
  if (v27)
  {
    v98 = 0;
    v99 = 0xF000000000000000;
  }

  else
  {
    if ([a6 isNullAtIndex_])
    {
      goto LABEL_97;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_98;
    }

    v28 = [a6 dataAtIndex_];
    v98 = sub_1CF9E5B88();
    v99 = v29;
  }

  if (__OFADD__(a4, 6))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if ([a6 isNullAtIndex_])
  {
    v97 = 0;
    v30 = 0xF000000000000000;
    goto LABEL_34;
  }

  if ([a6 isNullAtIndex_])
  {
    goto LABEL_97;
  }

  if (swift_dynamicCastMetatype())
  {
LABEL_98:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  v31 = [a6 dataAtIndex_];
  v97 = sub_1CF9E5B88();
  v30 = v32;

LABEL_34:
  if (__OFADD__(a4, 7))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  v88 = [a6 isNullAtIndex_];
  if (v88)
  {
    v33 = 0;
  }

  else
  {
    v33 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 8))
  {
    goto LABEL_95;
  }

  v87 = v33;
  v86 = [a6 isNullAtIndex_];
  if (v86)
  {
    v34 = 0;
  }

  else
  {
    v34 = [a6 longAtIndex_];
  }

  if (__OFADD__(a4, 9))
  {
    goto LABEL_96;
  }

  v85 = v26;
  v35 = sub_1CEFE9C6C();
  sub_1CEFE9EC8(v35, a6, a4 + 9, v128);
  v35, v36, v37, v38, v39, v40, v41, v42;
  if (v128[31])
  {
    v43 = sub_1CEFF12E8();
    sub_1CEFF14E0(v43, a6, v129, v110);
    v129 = v11;
    v43, v44, v45, v46, v47, v48, v49, v50;
    v111[12] = *&v110[192];
    v111[13] = *&v110[208];
    v111[14] = *&v110[224];
    *&v111[15] = *&v110[240];
    v111[8] = *&v110[128];
    v111[9] = *&v110[144];
    v111[10] = *&v110[160];
    v111[11] = *&v110[176];
    v111[4] = *&v110[64];
    v111[5] = *&v110[80];
    v111[6] = *&v110[96];
    v111[7] = *&v110[112];
    v111[0] = *v110;
    v111[1] = *&v110[16];
    v111[2] = *&v110[32];
    v111[3] = *&v110[48];
    nullsub_1();
    v124 = v111[12];
    v125 = v111[13];
    v126 = v111[14];
    v127 = *&v111[15];
    v120 = v111[8];
    v121 = v111[9];
    v122 = v111[10];
    v123 = v111[11];
    v116 = v111[4];
    v117 = v111[5];
    v118 = v111[6];
    v119 = v111[7];
    v112 = v111[0];
    v113 = v111[1];
    v114 = v111[2];
    v115 = v111[3];
  }

  else
  {
    sub_1CEFE528C(&v112);
    v129 = v11;
  }

  v51 = v128[13];
  v52 = v99;
  if (!v128[13])
  {
    goto LABEL_61;
  }

  v53 = v100;
  if (v128[5] != *(v100 + 4) || LODWORD(v128[6]) != *(v100 + 10))
  {
    goto LABEL_55;
  }

  v54 = v100[56];
  if ((v128[8] & 1) == 0)
  {
    if (v128[7] != *(v100 + 6))
    {
      v54 = 1;
    }

    if ((v54 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_55;
  }

  if ((v100[56] & 1) == 0)
  {
LABEL_55:
    v55 = &v100[*(v129 + 48)];
    v56 = type metadata accessor for ItemMetadata(0);
    v53 = v100;
    if ((v55[*(v56 + 80)] & 1) == 0 && (v128[3] & 8) == 0)
    {
      v128[3] |= 8uLL;
    }
  }

LABEL_58:
  if ((sub_1CF443664(v128[10], v128[11], v128[12], v51, *(v53 + 9), v53[80], *(v53 + 11), *(v53 + 12)) & 1) == 0 && (~LOBYTE(v128[3]) & 3) != 0)
  {
    v128[3] |= 3uLL;
  }

LABEL_61:
  v84 = v34;
  v57 = v128[37];
  if (v128[37] != 1)
  {
    v59 = v128[35];
    v60 = v128[36];
    sub_1CEFE42D4(v128[35], v128[36]);
    if (v52 >> 60 != 15)
    {
      v58 = v98;
      if (v60 >> 60 != 15)
      {
        sub_1CEFF05F4(v98, v52);
        sub_1CEFF05F4(v59, v60);
        sub_1CEFF05F4(v58, v52);
        v64 = sub_1CF328660(v58, v52, v59, v60);
        sub_1CEFE48D8(v59, v60);
        sub_1CEFE48D8(v59, v60);
        sub_1CEFE4714(v58, v52);
        sub_1CEFE48D8(v58, v52);
        if (v64)
        {
LABEL_77:
          v62 = v128[38];
          v63 = v128[39];
          sub_1CEFE42D4(v128[38], v128[39]);
          if (v30 >> 60 == 15)
          {
            v61 = v97;
            if (v63 >> 60 != 15)
            {
              sub_1CEFF05F4(v97, v30);
LABEL_82:
              sub_1CEFE48D8(v61, v30);
              sub_1CEFE48D8(v62, v63);
              goto LABEL_83;
            }
          }

          else
          {
            v61 = v97;
            if (v63 >> 60 == 15)
            {
              goto LABEL_81;
            }

            sub_1CEFF05F4(v97, v30);
            sub_1CEFF05F4(v62, v63);
            sub_1CEFF05F4(v61, v30);
            v68 = sub_1CF328660(v61, v30, v62, v63);
            sub_1CEFE48D8(v62, v63);
            sub_1CEFE48D8(v62, v63);
            sub_1CEFE4714(v61, v30);
            sub_1CEFE48D8(v61, v30);
            if (!v68)
            {
LABEL_83:
              sub_1CEFE48D8(v61, v30);
              sub_1CEFE48D8(v98, v99);
              v66 = v94;
              v65 = v95;
              v67 = v129;
              if ((~LOBYTE(v128[33]) & 3) != 0)
              {
                v128[33] |= 3uLL;
              }

              goto LABEL_87;
            }
          }

          goto LABEL_86;
        }

        goto LABEL_71;
      }

      goto LABEL_68;
    }

    v58 = v98;
    if (v60 >> 60 != 15)
    {
      sub_1CEFF05F4(v98, v52);
      goto LABEL_70;
    }

LABEL_66:
    sub_1CEFF05F4(v58, v52);
    sub_1CEFE48D8(v58, v52);
    goto LABEL_73;
  }

  v58 = v98;
  if (v52 >> 60 == 15)
  {
    goto LABEL_66;
  }

  v59 = 0;
  v60 = 0xF000000000000000;
LABEL_68:
  sub_1CEFF05F4(v58, v52);
  sub_1CEFF05F4(v58, v52);
  sub_1CEFE4714(v58, v52);
LABEL_70:
  sub_1CEFE48D8(v58, v52);
  sub_1CEFE48D8(v59, v60);
LABEL_71:
  if ((v128[33] & 8) == 0)
  {
    v128[33] |= 8uLL;
  }

LABEL_73:
  if (v57 != 1)
  {
    goto LABEL_77;
  }

  v61 = v97;
  if (v30 >> 60 != 15)
  {
    v62 = 0;
    v63 = 0xF000000000000000;
LABEL_81:
    sub_1CEFF05F4(v61, v30);
    sub_1CEFF05F4(v61, v30);
    sub_1CEFE4714(v61, v30);
    goto LABEL_82;
  }

LABEL_86:
  sub_1CEFE48D8(v98, v99);
  sub_1CEFE48D8(v61, v30);
  v66 = v94;
  v65 = v95;
  v67 = v129;
LABEL_87:
  memcpy(v108, v128, sizeof(v108));
  memcpy(v109, v128, sizeof(v109));
  nullsub_1();
  v69 = v100;
  v70 = &v100[*(v67 + 48)];
  v71 = type metadata accessor for ItemMetadata(0);
  LODWORD(v129) = v70[*(v71 + 80)];
  LODWORD(v97) = v70[*(v71 + 72)];
  v95 = *(v69 + 32);
  v99 = *(v69 + 16);
  LODWORD(v98) = *(v69 + 24);
  memcpy(v110, v109, sizeof(v110));
  *(&v103[12] + 5) = v124;
  *(&v103[13] + 5) = v125;
  *(&v103[14] + 5) = v126;
  *(&v103[8] + 5) = v120;
  *(&v103[9] + 5) = v121;
  *(&v103[10] + 5) = v122;
  *(&v103[11] + 5) = v123;
  *(&v103[4] + 5) = v116;
  *(&v103[5] + 5) = v117;
  *(&v103[6] + 5) = v118;
  *(&v103[7] + 5) = v119;
  *(v103 + 5) = v112;
  *(&v103[1] + 5) = v113;
  *(&v103[2] + 5) = v114;
  LOBYTE(v111[0]) = 0;
  v102[0] = v65;
  v107 = v66;
  v106 = v88;
  v105 = v86;
  v104 = v90;
  *(&v103[15] + 5) = v127;
  *(&v103[3] + 5) = v115;
  v72 = v88;
  v73 = v86;
  v94 = v90;
  sub_1CEFE55D0(v69, v96, &unk_1EC4BE360, &qword_1CF9FE650);
  v74 = v101;
  memcpy(v101, v110, 0x208uLL);
  v74[520] = v129;
  v74[521] = v97;
  *(v74 + 66) = v95;
  v74[536] = 0;
  *(v74 + 68) = v99;
  v74[552] = v98;
  *(v74 + 70) = v89;
  v74[568] = v65;
  *(v74 + 72) = v93;
  v74[584] = v66;
  *(v74 + 74) = v87;
  v74[600] = v72;
  v75 = v85;
  *(v74 + 76) = v84;
  v74[616] = v73;
  *(v74 + 78) = v75;
  v74[632] = v94;
  LOBYTE(v75) = v91;
  v74[633] = v92;
  v74[634] = v75;
  v76 = v103[13];
  *(v74 + 827) = v103[12];
  *(v74 + 843) = v76;
  *(v74 + 859) = v103[14];
  *(v74 + 872) = *(&v103[14] + 13);
  v77 = v103[9];
  *(v74 + 763) = v103[8];
  *(v74 + 779) = v77;
  v78 = v103[11];
  *(v74 + 795) = v103[10];
  *(v74 + 811) = v78;
  v79 = v103[5];
  *(v74 + 699) = v103[4];
  *(v74 + 715) = v79;
  v80 = v103[7];
  *(v74 + 731) = v103[6];
  *(v74 + 747) = v80;
  v81 = v103[1];
  *(v74 + 635) = v103[0];
  *(v74 + 651) = v81;
  v82 = v103[3];
  *(v74 + 667) = v103[2];
  *(v74 + 683) = v82;
  memcpy(v111, v128, 0x208uLL);
  sub_1CEFCCBDC(v108, v102, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
  sub_1CEFCCC44(v111, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
}

void sub_1CF2368F4(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, _BYTE *), uint64_t a5, char *a6, uint64_t a7)
{
  v67 = a7;
  v68 = a4;
  v64 = a3;
  v65 = a6;
  v69 = a5;
  v63 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v59 - v9;
  v10 = sub_1CF9E6068();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v59 - v18;
  v20 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *a1;
  v61 = *(a1 + 8);
  if (qword_1EDEAE980 != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = qword_1EDEBBE40;
  (*(v11 + 56))(v19, 1, 1, v10);
  v60 = v19;
  sub_1CEFCCBDC(v19, v16, &unk_1EC4BED20, &unk_1CFA00700);
  v23 = *(v11 + 48);
  if (v23(v16, 1, v10) == 1)
  {
    v24 = v22;
    sub_1CF9E6048();
    if (v23(v16, 1, v10) != 1)
    {
      sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
  }

  v25 = v70;
  (*(v11 + 16))(v70, v13, v10);
  *&v25[v20[5]] = v22;
  v26 = &v25[v20[6]];
  *v26 = "SQLDB: Scan decorated";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v27 = v22;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v11 + 8))(v13, v10);
  v28 = sub_1CEFCCC44(v60, &unk_1EC4BED20, &unk_1CFA00700);
  if (v63)
  {
    v29 = *(v63 + 16);
  }

  else
  {
    v29 = 0;
  }

  v30 = v66;
  v31 = MEMORY[0x1EEE9AC00](v28);
  *(&v59 - 4) = v32;
  *(&v59 - 24) = v33;
  *(&v59 - 2) = 200;
  *(&v59 - 1) = v29;
  v35 = (*(v34 + 24))(sub_1CF24EF80, v31);
  v16 = v30;
  if (v30)
  {
    sub_1CF9E7458();
    v36 = v70;
    sub_1CF9E6038();
    sub_1CEFD5218(v36, type metadata accessor for Signpost);
    return;
  }

  v37 = v35;
  v38 = sub_1CF1CBB20();
  v13 = *v38->tree;
  v38, v39, v40, v41, v42, v43, v44, v45;
  if (v13 >> 31)
  {
    __break(1u);
    goto LABEL_28;
  }

  v19 = (v13 + 9);
  if (__OFADD__(v13, 9))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = sub_1CEFE9C6C();
  v47 = *v46->tree;
  v46, v48, v49, v50, v51, v52, v53, v54;
  if (v47 >> 31)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  LODWORD(v67) = v19 + v47;
  if (__OFADD__(v19, v47))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if ([v37 next])
  {
    v65 = v29;
    v66 = v27;
    v11 = 0;
    v10 = v59;
    do
    {
      v55 = objc_autoreleasePoolPush();
      v56 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      v20 = v55;
      sub_1CF235CB0(v10, v73, 0, v13, v67, v37);
      memcpy(v72, v73, sizeof(v72));
      memcpy(v71, v73, sizeof(v71));
      v19 = v69;
      v68(v10, v71);
      sub_1CEFCCC44(v10, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CEFF5410(v72);
      objc_autoreleasePoolPop(v20);
      ++v11;
    }

    while (([v37 next] & 1) != 0);

    if (v56 != 200)
    {
      goto LABEL_23;
    }

    v57 = v65 + 200;
    if (!__OFADD__(v65, 200))
    {
      type metadata accessor for PaginatedContinuation();
      *(swift_allocObject() + 16) = v57;
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_23:
  sub_1CF9E7458();
  v58 = v70;
  sub_1CF9E6038();
  sub_1CEFD5218(v58, type metadata accessor for Signpost);
}

uint64_t sub_1CF236F88(void *a1, unint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  v10 = sub_1CF208628(0x2E7366uLL, 0xE300000000000000);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0xD000000000000138, 0x80000001CFA381A0);
  v20 = sub_1CEFE8C10(3044466, 0xE300000000000000);
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v30 = sub_1CEFE91F8(0x726F6365642E7066uLL, 0xEE005F6E6F697461);
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](0xD0000000000000A1, 0x80000001CFA382E0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v40 = [a1 bindLongParameter_];
  v41 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v43 = v42;

  MEMORY[0x1D3868CC0](v41, v43);
  v43, v44, v45, v46, v47, v48, v49, v50;
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA38390);
  v51 = [a1 bindLongParameter_];
  v52 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v54 = v53;

  MEMORY[0x1D3868CC0](v52, v54);
  v54, v55, v56, v57, v58, v59, v60, v61;
  MEMORY[0x1D3868CC0](0x2054455346464F20, 0xE800000000000000);
  v62 = [a1 bindLongParameter_];
  v63 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v65 = v64;

  MEMORY[0x1D3868CC0](v63, v65);
  v65, v66, v67, v68, v69, v70, v71, v72;
  return v74;
}

uint64_t sub_1CF237234(void *a1, unint64_t a2, char a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000100, 0x80000001CFA37FE0);
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    a2 = (a2 != 0) << 63;
    goto LABEL_7;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    a2 = -a2;
  }

LABEL_7:
  v6 = [a1 bindLongParameter_];
  v7 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v8;

  MEMORY[0x1D3868CC0](v7, v9);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0xD000000000000087, 0x80000001CFA380F0);
  return v18;
}

void sub_1CF237350(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v109 = v2;
  v121 = v1;
  v110 = v4;
  v111 = v3;
  v106 = v5;
  v107 = v6;
  v112 = v7;
  v105 = v8;
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v113 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v100 - v16;
  v17 = sub_1CF9E6068();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v100 - v25;
  v27 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v27);
  v108 = &v100 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = *v12;
  LODWORD(v103) = *(v12 + 8);
  v29 = *v10;
  v101 = v10[1];
  v102 = v29;
  if (qword_1EDEAE980 != -1)
  {
LABEL_32:
    swift_once();
  }

  v30 = qword_1EDEBBE40;
  (*(v18 + 56))(v26, 1, 1, v17);
  v100 = v26;
  sub_1CEFCCBDC(v26, v23, &unk_1EC4BED20, &unk_1CFA00700);
  v31 = *(v18 + 48);
  if (v31(v23, 1, v17) == 1)
  {
    v32 = v30;
    sub_1CF9E6048();
    if (v31(v23, 1, v17) != 1)
    {
      sub_1CEFCCC44(v23, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v18 + 32))(v20, v23, v17);
  }

  v33 = v108;
  (*(v18 + 16))(v108, v20, v17);
  *(v33 + v27[5]) = v30;
  v34 = v33 + v27[6];
  *v34 = "SQLDB: Scan decorated app libraries";
  *(v34 + 8) = 35;
  *(v34 + 16) = 2;
  v35 = v30;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v18 + 8))(v20, v17);
  sub_1CEFCCC44(v100, &unk_1EC4BED20, &unk_1CFA00700);
  if (v105)
  {
    v36 = *(v105 + 2);
  }

  else
  {
    v36 = 0;
  }

  v37 = v109;
  v38 = MEMORY[0x1EEE9AC00](v101);
  *(&v100 - 10) = v39;
  *(&v100 - 9) = v40;
  *(&v100 - 8) = v42;
  *(&v100 - 7) = v41;
  *(&v100 - 6) = v43;
  *(&v100 - 5) = v44;
  *(&v100 - 32) = v45;
  *(&v100 - 3) = 200;
  *(&v100 - 2) = v36;
  v46 = (*(v40 + 24))(sub_1CF24D128, v38);
  if (v37)
  {
    goto LABEL_29;
  }

  v27 = v46;
  v47 = sub_1CF1CBB20();
  v20 = *v47->tree;
  v47, v48, v49, v50, v51, v52, v53, v54;
  if (v20 >> 31)
  {
    __break(1u);
    goto LABEL_34;
  }

  v55 = v20 + 9;
  if (__OFADD__(v20, 9))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v56 = sub_1CEFE9C6C();
  v57 = *v56->tree;
  v56, v58, v59, v60, v61, v62, v63, v64;
  if (v57 >> 31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  LODWORD(v110) = v55 + v57;
  if (__OFADD__(v55, v57))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v65 = sub_1CEFF12E8();
  v66 = *v65->tree;
  v65, v67, v68, v69, v70, v71, v72, v73;
  if (v66 >> 31)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  LODWORD(v109) = v110 + v66;
  if (__OFADD__(v110, v66))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v74 = sub_1CF1CBB20();
  v75 = *v74->tree;
  v74, v76, v77, v78, v79, v80, v81, v82;
  if (v75 >> 31)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v83 = v109 + v75;
  if (__OFADD__(v109, v75))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = (v83 + 9);
  if (__OFADD__(v83, 9))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  LODWORD(v107) = v83;
  v84 = sub_1CEFE9C6C();
  v85 = *v84->tree;
  v84, v86, v87, v88, v89, v90, v91, v92;
  if (v85 >> 31)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  LODWORD(v106) = v26 + v85;
  if (!__OFADD__(v26, v85))
  {
    if ([v27 next])
    {
      v103 = v36;
      v104 = v35;
      v23 = 0;
      v18 = v114;
      do
      {
        v93 = objc_autoreleasePoolPush();
        v17 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        v94 = v93;
        sub_1CF235CB0(v18, v120, 0, v20, v110, v27);
        memcpy(v119, v120, sizeof(v119));
        v95 = v113;
        sub_1CF235CB0(v113, v118, v109, v107, v106, v27);
        v105 = v23 + 1;
        v96 = v27;
        v97 = v20;
        memcpy(v117, v118, sizeof(v117));
        memcpy(v116, v119, sizeof(v116));
        memcpy(v115, v118, sizeof(v115));
        v98 = v114;
        v111(v114, v116, v95, v115);
        v26 = &unk_1EC4BE360;
        sub_1CEFCCC44(v95, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFCCC44(v98, &unk_1EC4BE360, &qword_1CF9FE650);
        sub_1CEFF5410(v117);
        sub_1CEFF5410(v119);
        objc_autoreleasePoolPop(v94);
        ++v23;
        v18 = v98;
        v20 = v97;
        v27 = v96;
      }

      while (([v96 next] & 1) != 0);

      if (v105 == 200)
      {
        v99 = v103 + 200;
        v33 = v108;
        if (__OFADD__(v103, 200))
        {
          goto LABEL_44;
        }

        type metadata accessor for PaginatedContinuation();
        *(swift_allocObject() + 16) = v99;
      }

      else
      {
        v33 = v108;
      }
    }

    else
    {
    }

LABEL_29:
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v33, type metadata accessor for Signpost);
    return;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_1CF237BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  sub_1CF9E7948();
  v142 = 0;
  v143 = 0xE000000000000000;
  MEMORY[0x1D3868CC0](0x205443454C4553, 0xE700000000000000);
  v13 = sub_1CF208628(0x656E6961746E6F63uLL, 0xED00002E73665F72);
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](0xD000000000000199, 0x80000001CFA37940);
  v23 = sub_1CEFE8C10(0x656E6961746E6F63, 0xED00002E74725F72);
  v25 = v24;
  MEMORY[0x1D3868CC0](v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v33 = sub_1CEFE91F8(0xD000000000000018, 0x80000001CFA37AE0);
  v35 = v34;
  MEMORY[0x1D3868CC0](v33);
  v35, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v43 = sub_1CF208628(0x746E656D75636F64uLL, 0xEC0000002E73665FLL);
  v45 = v44;
  MEMORY[0x1D3868CC0](v43);
  v45, v46, v47, v48, v49, v50, v51, v52;
  MEMORY[0x1D3868CC0](0xD000000000000190, 0x80000001CFA37B00);
  v53 = sub_1CEFE8C10(0x746E656D75636F64, 0xEC0000002E74725FLL);
  v55 = v54;
  MEMORY[0x1D3868CC0](v53);
  v55, v56, v57, v58, v59, v60, v61, v62;
  MEMORY[0x1D3868CC0](0x2020202020200A2CLL, 0xE900000000000020);
  v63 = sub_1CEFE91F8(0xD000000000000017, 0x80000001CFA37CA0);
  v65 = v64;
  MEMORY[0x1D3868CC0](v63);
  v65, v66, v67, v68, v69, v70, v71, v72;
  MEMORY[0x1D3868CC0](0xD0000000000000B5, 0x80000001CFA37CC0);
  if (a3)
  {

    v80 = MEMORY[0x1E69E6158];
  }

  else
  {
    0, v73, v74, v75, v76, v77, v78, v79;
    a2 = 0;
    v80 = 0;
    v141[2] = 0;
  }

  v141[0] = a2;
  v141[1] = a3;
  v141[3] = v80;
  v81 = sub_1CEFF8EA0(v141);
  v83 = v82;
  sub_1CEFCCC44(v141, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v83)
  {
    MEMORY[0x1D3868CC0](v81, v83);
    v83, v84, v85, v86, v87, v88, v89, v90;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v92 = *(Strong + 32);

      v93 = *(v92 + 16);

      v95 = (*(*v93 + 112))(v94);

      if (v95 == 2 || (v95 & 1) == 0)
      {
        v97 = 0xEE00455341434F4ELL;
        v96 = 0x204554414C4C4F43;
      }

      else
      {
        v96 = 0;
        v97 = 0xE000000000000000;
      }

      MEMORY[0x1D3868CC0](v96, v97);
      v97, v98, v99, v100, v101, v102, v103, v104;
      MEMORY[0x1D3868CC0](0xD00000000000016DLL, 0x80000001CFA37D80);
      if (a6)
      {
        if (a6 != 1)
        {
          a5 = (a5 != 0) << 63;
          goto LABEL_16;
        }

        if ((a5 & 0x8000000000000000) == 0)
        {
LABEL_16:
          v105 = [a1 bindLongParameter_];
          v106 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v108 = v107;

          MEMORY[0x1D3868CC0](v106, v108);
          v108, v109, v110, v111, v112, v113, v114, v115;
          MEMORY[0x1D3868CC0](0xD0000000000000BALL, 0x80000001CFA37EF0);
          v116 = [a1 bindLongParameter_];
          v117 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v119 = v118;

          MEMORY[0x1D3868CC0](v117, v119);
          v119, v120, v121, v122, v123, v124, v125, v126;
          MEMORY[0x1D3868CC0](0x2054455346464F20, 0xE800000000000000);
          v127 = [a1 bindLongParameter_];
          v128 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v130 = v129;

          MEMORY[0x1D3868CC0](v128, v130);
          v130, v131, v132, v133, v134, v135, v136, v137;
          return v142;
        }

        __break(1u);
      }

      a5 = -a5;
      goto LABEL_16;
    }

    __break(1u);
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF238104(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0xE000000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD0000000000001F7, 0x80000001CFA365C0);
  v10 = sub_1CEFE8C10(3044466, 0xE300000000000000);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x202020202020200ALL, 0xE800000000000000);
  if (a2)
  {
    v20 = sub_1CEFE91F8(0x726F6365642E7066uLL, 0xEE005F6E6F697461);
    v22 = v21;
    v68 = 44;
    v69 = 0xE100000000000000;
    MEMORY[0x1D3868CC0](v20);
    v22, v23, v24, v25, v26, v27, v28, v29;
    v30 = 44;
    v9 = 0xE100000000000000;
  }

  else
  {
    v30 = 0;
  }

  MEMORY[0x1D3868CC0](v30, v9);
  v9, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000092, 0x80000001CFA367C0);
  v38 = *(a3 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v70 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v38, 0);
    v39 = v70;
    v40 = (a3 + 41);
    do
    {
      v41 = *v40;
      v42 = *(v40 - 1);
      v65 = *(v40 - 9);
      v66 = v42;
      v67 = v41;
      sub_1CEFD0988(v65, v42, v41);
      sub_1CF2383D8(&v65, a1, &v68);
      sub_1CEFD0994(v65, v66, v67);
      v43 = v68;
      v44 = v69;
      v70 = v39;
      v46 = *v39->tree;
      v45 = *v39->tester;
      if (v46 >= v45 >> 1)
      {
        sub_1CEFE95CC((v45 > 1), v46 + 1, 1);
        v39 = v70;
      }

      *v39->tree = v46 + 1;
      v47 = v39 + 16 * v46;
      *(v47 + 4) = v43;
      *(v47 + 5) = v44;
      v40 += 16;
      --v38;
    }

    while (v38);
  }

  v68 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v48 = sub_1CF9E67D8();
  v50 = v49;
  v39, v49, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](v48, v50);
  v50, v57, v58, v59, v60, v61, v62, v63;
  return v71;
}

void sub_1CF2383D8(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v4 = sub_1CEFE96F8(*a1, *(a1 + 8) | (*(a1 + 9) << 8), 0, 0xE000000000000000, a2);
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  *a3 = 3044466;
  a3[1] = 0xE300000000000000;
}

uint64_t sub_1CF238460(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v355 = v1;
  v351 = v2;
  LODWORD(v353) = v3;
  v417 = v4;
  v341 = sub_1CF9E5CF8();
  v345 = *(v341 - 8);
  MEMORY[0x1EEE9AC00](v341);
  v329 = &v304[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v332 = &v304[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v338 = &v304[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v331 = &v304[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v340 = &v304[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v339 = &v304[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v335 = &v304[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v342 = &v304[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v336 = &v304[-v21];
  MEMORY[0x1EEE9AC00](v22);
  v337 = &v304[-v23];
  v343 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v343);
  v333 = &v304[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v344 = &v304[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v334 = &v304[-v28];
  v29 = sub_1CF9E6068();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v304[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v304[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v304[-v37];
  v39 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v39);
  v358 = &v304[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDEBBE40;
  (*(v30 + 56))(v38, 1, 1, v29);
  v357 = v38;
  sub_1CEFCCBDC(v38, v35, &unk_1EC4BED20, &unk_1CFA00700);
  v42 = *(v30 + 48);
  if (v42(v35, 1, v29) == 1)
  {
    v43 = v41;
    sub_1CF9E6048();
    if (v42(v35, 1, v29) != 1)
    {
      sub_1CEFCCC44(v35, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v30 + 32))(v32, v35, v29);
  }

  v44 = v358;
  (*(v30 + 16))(v358, v32, v29);
  *&v44[*(v39 + 20)] = v41;
  v45 = &v44[*(v39 + 24)];
  *v45 = "SQLDB: Decoration Decoding";
  *(v45 + 1) = 26;
  v46 = 2;
  v45[16] = 2;
  v47 = v41;
  sub_1CF9E7468();
  v356 = v47;
  sub_1CF9E6038();
  (*(v30 + 8))(v32, v29);
  sub_1CEFCCC44(v357, &unk_1EC4BED20, &unk_1CFA00700);
  v48 = v417;
  if (([v417 isNullAtIndex_] & 1) == 0)
  {
    v46 = [v48 BOOLAtIndex_];
  }

  v49 = [v48 isNullAtIndex_];
  v354 = v46;
  if (v49)
  {
    v50 = 2;
  }

  else
  {
    v50 = [v48 BOOLAtIndex_];
  }

  v349 = [v48 isNullAtIndex_];
  if (v349)
  {
    v51 = 0;
  }

  else
  {
    v51 = [v48 longAtIndex_];
  }

  v348 = [v48 isNullAtIndex_];
  if (v348)
  {
    v52 = 0;
  }

  else
  {
    v52 = [v48 longAtIndex_];
  }

  LODWORD(v357) = [v48 isNullAtIndex_];
  v350 = v52;
  if (v357)
  {
    v352 = 0;
  }

  else
  {
    if ([v48 isNullAtIndex_])
    {
      goto LABEL_211;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_212;
    }

    v352 = [v48 unsignedLongLongAtIndex_];
  }

  v53 = [v48 isNullAtIndex_];
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    if ([v48 isNullAtIndex_])
    {
      goto LABEL_211;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_212;
    }

    v54 = [v48 unsignedIntAtIndex_];
  }

  if ([v48 isNullAtIndex_])
  {
    v330 = 0;
  }

  else
  {
    if ([v48 isNullAtIndex_])
    {
      goto LABEL_211;
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_212;
    }

    v48 = v417;
    v330 = [v417 longLongAtIndex_];
  }

  v55 = [v48 isNullAtIndex_];
  v328 = v54;
  if (v55)
  {
    LODWORD(v347) = 2;
  }

  else
  {
    LODWORD(v347) = [v48 BOOLAtIndex_];
  }

  v56 = [v48 isNullAtIndex_];
  if (v56)
  {
    v322 = 0;
    v57 = 4;
  }

  else
  {
    v60 = [v48 longAtIndex_];
    if (v60 >= 5 || ((0x17u >> v60) & 1) == 0)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v61 = 0;
      swift_willThrow();
      goto LABEL_188;
    }

    v322 = 2u >> v60;
    v57 = 0x300020100uLL >> (8 * v60);
  }

  v323 = v57;
  v58 = v417;
  if ([v417 isNullAtIndex_])
  {
    v321 = 0;
    v59 = 255;
    goto LABEL_46;
  }

  v62 = [v58 longAtIndex_];
  v63 = v355;
  sub_1CEFE9AC4(v62, v359);
  if (!v63)
  {
    v355 = 0;
    v321 = *&v359[0];
    v59 = BYTE8(v359[0]);
LABEL_46:
    v324 = v59;
    v64 = v417;
    v65 = [v417 isNullAtIndex_];
    v319 = v51;
    if (v65)
    {
      v312 = 0;
      v326 = 0;
    }

    else
    {
      v66 = [v64 stringAtIndex_];
      v312 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v326 = v67;
    }

    v320 = v50;
    if ([v64 isNullAtIndex_])
    {
      v68 = 2;
    }

    else
    {
      v68 = [v64 BOOLAtIndex_];
    }

    if ([v64 isNullAtIndex_])
    {
      v69 = 2;
    }

    else
    {
      v69 = [v64 BOOLAtIndex_];
    }

    v315 = [v64 isNullAtIndex_];
    if (v315)
    {
      v70 = 0;
    }

    else
    {
      v70 = [v64 longAtIndex_];
    }

    v71 = [v64 isNullAtIndex_];
    v317 = v69;
    v316 = v70;
    if (v71)
    {
      v72 = 0;
      v325 = 0xF000000000000000;
    }

    else
    {
      if ([v64 isNullAtIndex_])
      {
        goto LABEL_211;
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_212;
      }

      v64 = v417;
      v73 = [v417 dataAtIndex_];
      v72 = sub_1CF9E5B88();
      v325 = v74;
    }

    v75 = [v64 isNullAtIndex_];
    v327 = v72;
    v318 = v68;
    if (v75)
    {
      v76 = 0;
      v346 = 0xF000000000000000;
      goto LABEL_68;
    }

    if ([v64 isNullAtIndex_])
    {
      goto LABEL_211;
    }

    if (!swift_dynamicCastMetatype())
    {
      v64 = v417;
      v77 = [v417 dataAtIndex_];
      v76 = sub_1CF9E5B88();
      v346 = v78;

LABEL_68:
      v79 = [v64 isNullAtIndex_];
      if (v79)
      {
        v314 = 0;
      }

      else
      {
        v314 = [v64 longAtIndex_];
      }

      v313 = [v64 isNullAtIndex_];
      if (v313)
      {
        v80 = 0;
      }

      else
      {
        v80 = [v64 longAtIndex_];
      }

      v81 = sub_1CEFE9C6C();
      v82 = v355;
      sub_1CEFE9EC8(v81, v64, 18, v384);
      v90 = v82;
      if (v82)
      {
        v326, v83, v84, v85, v86, v87, v88, v89;
        sub_1CEFE48D8(v76, v346);
        sub_1CEFE48D8(v327, v325);
        v81, v91, v92, v93, v94, v95, v96, v97;
        goto LABEL_188;
      }

      v310 = v79;
      v311 = v80;
      v81, v83, v84, v85, v86, v87, v88, v89;
      if ((v353 & 1) == 0)
      {
        sub_1CEFE528C(v359);
        v380 = v359[12];
        v381 = v359[13];
        v382 = v359[14];
        v383 = *&v359[15];
        v376 = v359[8];
        v377 = v359[9];
        v118 = v359[10];
        v119 = v359[11];
        goto LABEL_83;
      }

      v98 = sub_1CEFE9C6C();
      v99 = *v98->tree;
      v98, v100, v101, v102, v103, v104, v105, v106;
      v107 = __OFADD__(v99, 18);
      v108 = v99 + 18;
      if (v107)
      {
        __break(1u);
      }

      else if (v108 >= 0xFFFFFFFF80000000)
      {
        if (!(v108 >> 31))
        {
          v109 = v417;
          if ([v417 isNullAtIndex_])
          {
            v117.n128_f64[0] = sub_1CEFE528C(&v368);
            v90 = 0;
            goto LABEL_84;
          }

          v138 = sub_1CEFF12E8();
          sub_1CEFF14E0(v138, v109, v108, v367);
          v90 = v82;
          v138, v139, v140, v141, v142, v143, v144, v145;
          v359[12] = *&v367[192];
          v359[13] = *&v367[208];
          v359[14] = *&v367[224];
          *&v359[15] = *&v367[240];
          v359[8] = *&v367[128];
          v359[9] = *&v367[144];
          v359[10] = *&v367[160];
          v359[11] = *&v367[176];
          v359[4] = *&v367[64];
          v359[5] = *&v367[80];
          v359[6] = *&v367[96];
          v359[7] = *&v367[112];
          v359[0] = *v367;
          v359[1] = *&v367[16];
          v359[2] = *&v367[32];
          v359[3] = *&v367[48];
          nullsub_1();
          v380 = v359[12];
          v381 = v359[13];
          v382 = v359[14];
          v383 = *&v359[15];
          v376 = v359[8];
          v377 = v359[9];
          v118 = v359[10];
          v119 = v359[11];
LABEL_83:
          v378 = v118;
          v379 = v119;
          v372 = v359[4];
          v373 = v359[5];
          v374 = v359[6];
          v375 = v359[7];
          v368 = v359[0];
          v369 = v359[1];
          v117 = v359[2];
          v370 = v359[2];
          v371 = v359[3];
LABEL_84:
          v120 = v76;
          v417 = v76;
          if (((v357 | v53) & 1) != 0 || v347 == 2)
          {
            goto LABEL_125;
          }

          v121 = v354 == 2 ? 1 : v56;
          if (v121 & 1) != 0 || (v354)
          {
            goto LABEL_125;
          }

          v355 = v90;
          v122 = *(v345 + 56);
          v123 = v337;
          v124 = v341;
          v122(v337, 1, 1, v341, v117);
          v125 = v336;
          (v122)(v336, 1, 1, v124);
          (v122)(v342, 1, 1, v124);
          v126 = sub_1CF9E6218();
          v127 = sub_1CF9E61F8() | v126;
          v128 = sub_1CF9E6208();
          v305 = v127 | v128 | sub_1CF9E6248();
          v129 = v123;
          v130 = v335;
          sub_1CEFCCBDC(v129, v335, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          sub_1CEFCCBDC(v125, v339, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          sub_1CEFCCBDC(v342, v340, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v132 = v343;
          v131 = v344;
          v133 = &v344[v343[14]];
          *v133 = 0;
          v133[1] = 0;
          v309 = v133;
          v131[v132[17]] = 2;
          v353 = v132[23];
          v131[v353] = 6;
          v306 = v132[30];
          (v122)(&v131[v306], 1, 1, v124);
          v134 = v305;
          v308 = &v131[v132[34]];
          v307 = xmmword_1CF9F4E20;
          *v308 = xmmword_1CF9F4E20;
          v135 = &v131[v132[38]];
          v136 = v322 | v347;
          *v135 = 0;
          v135[1] = 0;
          if (fpfs_supports_vfs_ignore_permissions_iopolicy())
          {
            v137 = v134 & 0x1BF | 0x40;
            if ((v136 & 1) == 0)
            {
              v137 = v134 & 0x1FF;
            }
          }

          else
          {
            v146 = v134 & 0x1FF | (v134 >> 2) & 0x40 | 0x80;
            if ((v136 & 1) == 0)
            {
              LOWORD(v146) = v134 & 0x1FF;
            }

            v137 = (4 * v146) & 0x100 | v146;
          }

          v147 = v344;
          v148 = &v344[v132[37]];
          *v344 = v323;
          v147[v132[20]] = 0;
          v149 = v347;
          v147[v132[28]] = v347;
          v147[v132[29]] = v149;
          v150 = v330;
          *&v147[v132[26]] = v330;
          *&v147[v132[27]] = v150;
          *(v147 + 1) = 0;
          v147[8] = 1;
          *v148 = 0;
          v148[4] = 1;
          *(v147 + 5) = v137;
          v151 = v331;
          sub_1CEFCCBDC(v130, v331, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v152 = v345;
          v153 = *(v345 + 48);
          v154 = v341;
          v155 = v153(v151, 1, v341);
          v156 = v338;
          v157 = v332;
          v330 = v153;
          if (v155 == 1)
          {
            sub_1CF9E5C88();
            if (v153(v151, 1, v154) != 1)
            {
              sub_1CEFCCC44(v151, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }
          }

          else
          {
            (*(v152 + 32))(v332, v151, v154);
          }

          v158 = *(v152 + 32);
          v158(&v344[v343[7]], v157, v154);
          v159 = v339;
          sub_1CEFCCBDC(v339, v156, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          v160 = v330;
          v161 = (v330)(v156, 1, v154);
          v345 = v152 + 32;
          v347 = v158;
          if (v161 == 1)
          {
            v162 = v329;
            sub_1CF9E5C88();
            sub_1CEFCCC44(v159, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v335, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v342, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v336, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v337, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v163 = v338;
            if (v160(v338, 1, v154) != 1)
            {
              sub_1CEFCCC44(v163, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            }
          }

          else
          {
            sub_1CEFCCC44(v159, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v335, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v342, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v336, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            sub_1CEFCCC44(v337, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
            v162 = v329;
            v158(v329, v338, v154);
          }

          v165 = v343;
          v164 = v344;
          v166 = v343[31];
          v167 = &v344[v343[32]];
          v342 = v343[33];
          v168 = &v344[v343[35]];
          v347(&v344[v343[8]], v162, v154);
          *(v164 + v165[9]) = 0;
          *(v164 + v165[10]) = 0;
          *(v164 + v165[13]) = 0;
          *(v164 + v165[19]) = 0;
          *(v164 + v165[21]) = 0;
          *(v164 + v165[15]) = 0;
          *(v164 + v165[16]) = 0;
          *(v164 + v165[11]) = 0;
          *(v164 + v165[12]) = 0;
          *(v164 + v165[18]) = 0;
          sub_1CEFDA9E0(v340, v164 + v306, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
          *(v164 + v166) = 0;
          *v167 = 0;
          v169 = 1;
          v167[8] = 1;
          *(v164 + v342) = 0;
          v170 = v309;
          v309[1], v171, v172, v173, v174, v175, v176, v177;
          *v170 = 0;
          v170[1] = 0;
          v178 = v308;
          sub_1CEFE48D8(*v308, *(v308 + 1));
          *v178 = v307;
          *v168 = 0;
          v168[8] = 1;
          *(v164 + v165[36]) = 0;
          *(v164 + v165[24]) = 0;
          *(v164 + v165[25]) = 0;
          *(v164 + v165[22]) = 0;
          *(v164 + v353) = 6;
          v179 = v334;
          sub_1CEFE4874(v164, v334);
          v180 = v333;
          sub_1CEFF4408(v179, v333);
          v181 = *v180;
          if (v181 == 1)
          {
            v182 = 0;
            v183 = 0;
            v120 = v417;
          }

          else
          {
            v183 = 0;
            v182 = 0;
            v120 = v417;
            if (v181 != 2 && !v180[v165[20]])
            {
              if (v180[v165[28]])
              {
                v182 = 0;
              }

              else
              {
                v169 = 0;
                v182 = *&v180[v165[26]];
              }

              v183 = v328;
            }
          }

          sub_1CEFD5218(v180, type metadata accessor for ItemMetadata);
          if (v384[13] && v384[5] == v352 && LODWORD(v384[6]) == v183)
          {
            if (v384[8])
            {
              if ((v169 & 1) == 0)
              {
                goto LABEL_113;
              }

LABEL_124:
              sub_1CEFD5218(v179, type metadata accessor for ItemMetadata);
              goto LABEL_125;
            }

            if (v384[7] == v182)
            {
              v184 = v169;
            }

            else
            {
              v184 = 1;
            }

            if ((v184 & 1) == 0)
            {
              goto LABEL_124;
            }
          }

LABEL_113:
          sub_1CEFD5218(v179, type metadata accessor for ItemMetadata);
          if ((v384[3] & 8) == 0)
          {
            v384[3] |= 8uLL;
          }

LABEL_125:
          v185 = v384[13];
          v186 = v384[10];
          v187 = v384[11];
          if (!v384[13])
          {
            v186 = 0;
            v187 = -1;
          }

          v188 = v346;
          if (v324 == 255)
          {
            v190 = v325;
            v189 = v326;
            if (v187 != -1)
            {
              goto LABEL_154;
            }
          }

          else
          {
            v190 = v325;
            v189 = v326;
            if (v187 == -1)
            {
              goto LABEL_154;
            }

            if (v324)
            {
              if (v324 == 1)
              {
                if (v187 != 1 || v321 != v186)
                {
                  goto LABEL_154;
                }
              }

              else if (v321)
              {
                if (v187 != 2 || v186 != 1)
                {
                  goto LABEL_154;
                }
              }

              else if (v187 != 2 || v186)
              {
                goto LABEL_154;
              }
            }

            else if (v187 || v321 != v186)
            {
              goto LABEL_154;
            }
          }

          if (v384[13])
          {
            v191 = v384[12];

            if (v189)
            {

              v192 = sub_1CEFE7394(v312, v189);
              if (v193)
              {
                if (v192 == 12565487 && v193 == 0xA300000000000000)
                {
                  0xA300000000000000, 0xA300000000000000, v194, v195, v196, v197, v198, v199;
LABEL_193:
                  v232 = v312;
                  v233 = v326;
                  v234 = sub_1CF9E69E8();
                  v235 = sub_1CF025150(v234, v232, v233);
                  v237 = v236;
                  v312 = MEMORY[0x1D3868C10](v235);
                  v239 = v238;
                  v237, v238, v240, v241, v242, v243, v244, v245;
                  goto LABEL_195;
                }

                v223 = v193;
                v224 = sub_1CF9E8048();
                v223, v225, v226, v227, v228, v229, v230, v231;
                if (v224)
                {
                  goto LABEL_193;
                }
              }

              v239 = v326;

LABEL_195:
              v246 = sub_1CEFE7394(v191, v185);
              if (v247)
              {
                if (v246 == 12565487 && v247 == 0xA300000000000000)
                {
                  0xA300000000000000, 0xA300000000000000, v248, v249, v250, v251, v252, v253;
LABEL_200:
                  v263 = sub_1CF9E69E8();
                  v264 = sub_1CF025150(v263, v191, v185);
                  v266 = v265;
                  v191 = MEMORY[0x1D3868C10](v264);
                  v268 = v267;
                  v266, v267, v269, v270, v271, v272, v273, v274;
LABEL_202:
                  v190 = v325;
                  if (v312 == v191 && v239 == v268)
                  {
                    v268, v275, v276, v277, v278, v279, v280, v281;
                    v239, v282, v283, v284, v285, v286, v287, v288;
                    swift_bridgeObjectRelease_n();
                    swift_bridgeObjectRelease_n();
                    v188 = v346;
                    v120 = v417;
                    goto LABEL_157;
                  }

                  v289 = sub_1CF9E8048();
                  v268, v290, v291, v292, v293, v294, v295, v296;
                  v239, v297, v298, v299, v300, v301, v302, v303;
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  v188 = v346;
                  v120 = v417;
                  if (v289)
                  {
LABEL_157:
                    v200 = v384[37];
                    if (v384[37] == 1)
                    {
                      if (v190 >> 60 != 15)
                      {
                        v201 = 0;
                        v202 = 0xF000000000000000;
LABEL_164:
                        v204 = v327;
                        sub_1CEFF05F4(v327, v190);
                        sub_1CEFF05F4(v204, v190);
                        sub_1CEFE4714(v204, v190);
LABEL_166:
                        sub_1CEFE48D8(v204, v190);
                        sub_1CEFE48D8(v201, v202);
                        v188 = v346;
LABEL_167:
                        if ((v384[33] & 8) == 0)
                        {
                          v384[33] |= 8uLL;
                        }

LABEL_169:
                        if (v200 == 1)
                        {
                          v205 = v351;
                          if (v188 >> 60 != 15)
                          {
                            v206 = 0;
                            v207 = 0xF000000000000000;
LABEL_177:
                            sub_1CEFF05F4(v120, v188);
                            sub_1CEFF05F4(v120, v188);
                            sub_1CEFE4714(v120, v188);
LABEL_179:
                            sub_1CEFE48D8(v120, v188);
                            sub_1CEFE48D8(v206, v207);
                            v210 = v310;
LABEL_180:
                            if ((~LOBYTE(v384[33]) & 3) != 0)
                            {
                              v384[33] |= 3uLL;
                            }

LABEL_182:
                            memcpy(v366, v384, sizeof(v366));
                            v211 = v366[31];
                            memcpy(v367, v384, sizeof(v367));
                            nullsub_1();
                            memcpy(v385, v367, 0x208uLL);
                            v365 = v357;
                            v364 = v349;
                            v363 = v348;
                            v362 = v210;
                            v361 = v313;
                            v360 = v315;
                            *(&v359[12] + 5) = v380;
                            *(&v359[13] + 5) = v381;
                            *(&v359[14] + 5) = v382;
                            *(&v359[15] + 5) = v383;
                            *(&v359[8] + 5) = v376;
                            *(&v359[9] + 5) = v377;
                            *(&v359[10] + 5) = v378;
                            *(&v359[11] + 5) = v379;
                            *(&v359[4] + 5) = v372;
                            *(&v359[5] + 5) = v373;
                            *(&v359[6] + 5) = v374;
                            *(&v359[7] + 5) = v375;
                            *(v359 + 5) = v368;
                            *(&v359[1] + 5) = v369;
                            *(&v359[2] + 5) = v370;
                            *(&v359[3] + 5) = v371;
                            v385[520] = v354;
                            v385[521] = v320;
                            v386 = v352;
                            v387 = v357;
                            v388 = v321;
                            v389 = v324;
                            v390 = v319;
                            v391 = v349;
                            v392 = v350;
                            v393 = v348;
                            v394 = v314;
                            v395 = v210;
                            v396 = v311;
                            v397 = v313;
                            v398 = v316;
                            v399 = v315;
                            v400 = v318;
                            v401 = v317;
                            v414 = v359[12];
                            v415 = v359[13];
                            v416[0] = v359[14];
                            *(v416 + 13) = *(&v359[14] + 13);
                            v410 = v359[8];
                            v411 = v359[9];
                            v412 = v359[10];
                            v413 = v359[11];
                            v406 = v359[4];
                            v407 = v359[5];
                            v408 = v359[6];
                            v409 = v359[7];
                            v402 = v359[0];
                            v403 = v359[1];
                            v404 = v359[2];
                            v405 = v359[3];
                            v212 = LOBYTE(v384[1]);
                            if (LOBYTE(v384[1]) == 255)
                            {
                              sub_1CEFCCBDC(v366, v359, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                              v219 = v211;
                              sub_1CEFCCBDC(&v368, v359, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                              v216 = v417;
                              if (v211)
                              {
                                goto LABEL_184;
                              }
                            }

                            else
                            {
                              v213 = v384[0];
                              sub_1CEFCCBDC(v366, v359, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                              v214 = v211;
                              sub_1CEFCCBDC(&v368, v359, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                              sub_1CEFF4514(v385, v359);
                              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                              *&v359[0] = *v205;
                              *v205 = 0x8000000000000000;
                              sub_1CEFF45EC(v385, v213, v212, isUniquelyReferenced_nonNull_native);
                              *v205 = *&v359[0];
                              v216 = v417;
                              if (v211)
                              {
LABEL_184:
                                v217 = v211;
                                sub_1CEFF4514(v385, v359);
                                v218 = swift_isUniquelyReferenced_nonNull_native();
                                *&v359[0] = *v205;
                                *v205 = 0x8000000000000000;
                                sub_1CEFF45EC(v385, v211, 256, v218);

                                *v205 = *&v359[0];
                                sub_1CEFCCC44(&v368, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                                sub_1CEFF5410(v385);

LABEL_187:
                                sub_1CEFE48D8(v216, v346);
                                sub_1CEFE48D8(v327, v190);
                                memcpy(v359, v384, 0x208uLL);
                                sub_1CEFCCC44(v359, &qword_1EC4BFBC0, &unk_1CF9FCAC0);
                                goto LABEL_188;
                              }
                            }

                            sub_1CEFCCC44(&v368, &qword_1EC4BECF0, &unk_1CF9FEEB0);
                            sub_1CEFF5410(v385);
                            goto LABEL_187;
                          }

                          goto LABEL_175;
                        }

LABEL_173:
                        v206 = v384[38];
                        v207 = v384[39];
                        sub_1CEFE42D4(v384[38], v384[39]);
                        if (v188 >> 60 != 15)
                        {
                          v205 = v351;
                          if (v207 >> 60 != 15)
                          {
                            sub_1CEFF05F4(v120, v188);
                            sub_1CEFF05F4(v206, v207);
                            sub_1CEFF05F4(v120, v188);
                            LODWORD(v355) = sub_1CF328660(v120, v188, v206, v207);
                            sub_1CEFE48D8(v206, v207);
                            sub_1CEFE48D8(v206, v207);
                            sub_1CEFE4714(v120, v188);
                            v222 = v120;
                            v210 = v310;
                            sub_1CEFE48D8(v222, v188);
                            if (v355)
                            {
                              goto LABEL_182;
                            }

                            goto LABEL_180;
                          }

                          goto LABEL_177;
                        }

                        v205 = v351;
                        if (v207 >> 60 != 15)
                        {
                          sub_1CEFF05F4(v120, v188);
                          goto LABEL_179;
                        }

LABEL_175:
                        sub_1CEFF05F4(v120, v188);
                        sub_1CEFE48D8(v120, v188);
                        v210 = v310;
                        goto LABEL_182;
                      }
                    }

                    else
                    {
                      v201 = v384[35];
                      v202 = v384[36];
                      sub_1CEFE42D4(v384[35], v384[36]);
                      if (v190 >> 60 != 15)
                      {
                        if (v202 >> 60 != 15)
                        {
                          v208 = v327;
                          sub_1CEFF05F4(v327, v190);
                          sub_1CEFF05F4(v201, v202);
                          sub_1CEFF05F4(v208, v190);
                          LODWORD(v355) = sub_1CF328660(v208, v190, v201, v202);
                          sub_1CEFE48D8(v201, v202);
                          sub_1CEFE48D8(v201, v202);
                          sub_1CEFE4714(v208, v190);
                          v209 = v208;
                          v188 = v346;
                          sub_1CEFE48D8(v209, v190);
                          if (v355)
                          {
                            goto LABEL_173;
                          }

                          goto LABEL_167;
                        }

                        goto LABEL_164;
                      }

                      if (v202 >> 60 != 15)
                      {
                        v204 = v327;
                        sub_1CEFF05F4(v327, v190);
                        goto LABEL_166;
                      }
                    }

                    v203 = v327;
                    sub_1CEFF05F4(v327, v190);
                    sub_1CEFE48D8(v203, v190);
                    goto LABEL_169;
                  }

LABEL_155:
                  if ((~LOBYTE(v384[3]) & 3) != 0)
                  {
                    v384[3] |= 3uLL;
                  }

                  goto LABEL_157;
                }

                v254 = v247;
                v255 = sub_1CF9E8048();
                v254, v256, v257, v258, v259, v260, v261, v262;
                if (v255)
                {
                  goto LABEL_200;
                }
              }

              v268 = v185;
              goto LABEL_202;
            }
          }

          else
          {
            if (!v189)
            {
              0, v110, v111, v112, v113, v114, v115, v116;
              goto LABEL_157;
            }

            v185 = 0;
          }

          v185, v110, v111, v112, v113, v114, v115, v116;
LABEL_154:
          v189, v110, v111, v112, v113, v114, v115, v116;
          goto LABEL_155;
        }

        goto LABEL_210;
      }

      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

LABEL_212:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

LABEL_188:
  sub_1CF9E7458();
  v220 = v358;
  sub_1CF9E6038();
  return sub_1CEFD5218(v220, type metadata accessor for Signpost);
}

uint64_t sub_1CF23A2B4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v7;
  Strong = sub_1CF24CDE0(a1);
  v19 = sub_1CF23A47C;
  v20 = 0;
  if (a2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = *(v10 + 616);
      v18[0] = *(v10 + 600);
      v18[1] = v12;
      type metadata accessor for SQLDatabase(0, v18);
      if (swift_dynamicCastClass())
      {
        v13 = sub_1CF3B0DB4();
        v15 = v14;

        if ((v15 & 0x100) == 0)
        {
          if (v15)
          {
            v13 = qword_1CF9FF898[v13];
          }

          Strong = swift_allocObject();
          *(Strong + 16) = v13;
          v19 = sub_1CF24CF24;
          v20 = Strong;
        }
      }

      else
      {
      }
    }
  }

  v16 = MEMORY[0x1EEE9AC00](Strong);
  (*(a7 + 32))(sub_1CF24CF18, v16);
}

uint64_t sub_1CF23A488(void *a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA37470);
  v4 = [a1 bindLongParameter_];
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v7 = v6;

  MEMORY[0x1D3868CC0](v5, v7);
  v7, v8, v9, v10, v11, v12, v13, v14;
  MEMORY[0x1D3868CC0](0xD00000000000002ELL, 0x80000001CFA37490);
  return 0;
}

uint64_t sub_1CF23A570(void *a1, uint64_t a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t (**a5)(void *))
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000039, 0x80000001CFA374C0);
  v9 = [a1 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;

  MEMORY[0x1D3868CC0](v10, v12);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x204552454857200ALL, 0xEF203D20646E696BLL);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x20444E412020200ALL, 0xE800000000000000);
  v30 = a3(a1);
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  MEMORY[0x1D3868CC0](538976266, 0xE400000000000000);
  v40 = *a5;

  v41 = v40(a1);
  v43 = v42;

  MEMORY[0x1D3868CC0](v41, v43);
  v43, v44, v45, v46, v47, v48, v49, v50;
  return 0;
}

uint64_t sub_1CF23A734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  strcpy(v21, "    fs_id = ");
  BYTE5(v21[1]) = 0;
  HIWORD(v21[1]) = -5120;
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  v10 = v8(a1, v9, v7);
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  return v21[0];
}

void sub_1CF23A828(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CF2401BC(0, a1, sub_1CF7D52B8, &qword_1EC4BEA50, &qword_1CF9FF068);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1CF23FAA0(1, a1);
    v8 = sub_1CF23FCF8(2, a1, sub_1CF7D52B8);
    if ((v6 & 1) == 0)
    {
      if (!v7)
      {
LABEL_6:
        sub_1CF1DA5D8();
        swift_allocError();
        *v9 = 0;
        swift_willThrow();
        return;
      }

      if (v8 != 89)
      {
        *a2 = v7;
        *(a2 + 8) = 0;
        *(a2 + 10) = v8;
        return;
      }
    }

    goto LABEL_6;
  }
}

uint64_t sub_1CF23A928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1CF2401BC(0, a1, sub_1CF7D52B8, &qword_1EC4BEA38, &qword_1CF9FF050);
  if (!v2)
  {
    v6 = result;
    sub_1CF23FF54(1, a1, &v9);
    result = sub_1CF23FCF8(2, a1, sub_1CF7D52B8);
    if ((v6 & 1) != 0 || (v7 = v10, v10 == 255) || result == 89)
    {
      sub_1CF1DA5D8();
      swift_allocError();
      *v8 = 0;
      return swift_willThrow();
    }

    else
    {
      *a2 = v9;
      *(a2 + 8) = v7;
      *(a2 + 9) = 0;
      *(a2 + 10) = result;
    }
  }

  return result;
}

uint64_t sub_1CF23AA30(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2 > 3u)
    {
      if (v2 > 5u)
      {
        if (v2 == 6)
        {
          v26 = 0xD000000000000011;
        }

        else
        {
          v26 = 0xD00000000000001ALL;
        }

        if (v2 == 6)
        {
          v27 = 0x80000001CFA2C070;
        }

        else
        {
          v27 = 0x80000001CFA2C090;
        }
      }

      else if (v2 == 4)
      {
        v27 = 0xEA0000000000726FLL;
        v26 = 0x7272655F7473616CLL;
      }

      else
      {
        v27 = 0xE800000000000000;
        v26 = 0x797469726F697270;
      }
    }

    else if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v27 = 0xEF657461645F7972;
        v26 = 0x7465725F7478656ELL;
      }

      else
      {
        v26 = 0x7272655F7473616CLL;
        v27 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (v2)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v26 = 0x6574617473;
      }

      if (v2)
      {
        v27 = 0xEB00000000746E75;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v26, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA35FC0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23AD58(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2 > 3u)
    {
      if (v2 > 5u)
      {
        if (v2 == 6)
        {
          v26 = 0xD000000000000011;
        }

        else
        {
          v26 = 0xD00000000000001ALL;
        }

        if (v2 == 6)
        {
          v27 = 0x80000001CFA2C070;
        }

        else
        {
          v27 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (v2 == 4)
        {
          v26 = 0x7272655F7473616CLL;
        }

        else
        {
          v26 = 0x797469726F697270;
        }

        if (v2 == 4)
        {
          v27 = 0xEA0000000000726FLL;
        }

        else
        {
          v27 = 0xE800000000000000;
        }
      }
    }

    else if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v27 = 0xEF657461645F7972;
        v26 = 0x7465725F7478656ELL;
      }

      else
      {
        v26 = 0x7272655F7473616CLL;
        v27 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (v2)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v26 = 0x6574617473;
      }

      if (v2)
      {
        v27 = 0xEB00000000746E75;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v26, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD000000000000033;
    *(v8 + 40) = 0x80000001CFA385B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}