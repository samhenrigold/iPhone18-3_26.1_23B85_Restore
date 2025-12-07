unint64_t sub_1B9F4BA58()
{
  result = qword_1EDC6CF18;
  if (!qword_1EDC6CF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF18);
  }

  return result;
}

unint64_t sub_1B9F4BAAC()
{
  result = qword_1EDC6CF20;
  if (!qword_1EDC6CF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF20);
  }

  return result;
}

unint64_t sub_1B9F4BB00()
{
  result = qword_1EDC6CEF8;
  if (!qword_1EDC6CEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CEF8);
  }

  return result;
}

unint64_t sub_1B9F4BB58()
{
  result = qword_1EDC6CEE8;
  if (!qword_1EDC6CEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CEE8);
  }

  return result;
}

unint64_t sub_1B9F4BBB4()
{
  result = qword_1EDC6CF00;
  if (!qword_1EDC6CF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF00);
  }

  return result;
}

unint64_t sub_1B9F4BC0C()
{
  result = qword_1EDC6CF08;
  if (!qword_1EDC6CF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF08);
  }

  return result;
}

uint64_t sub_1B9F4BC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

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

uint64_t sub_1B9F4BD4C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F4BD80()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1B9F4BDA4()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_1B9F4BDC0(uint64_t a1)
{
  if (!qword_1EDC6B748)
  {
    sub_1BA4A7488();
    sub_1B9F38BF4();
    sub_1B9F42A64(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
    sub_1B9F42A64(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B748);
    }
  }
}

uint64_t sub_1B9F4BEAC()
{
  v1 = v0;
  v2 = sub_1BA4A1728();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v21 - v9);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  swift_beginAccess();
  sub_1B9F42C80(v1 + v11, v10, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  v12 = type metadata accessor for CellHeaderDetailText(0);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = 0;
    v23 = 0;
LABEL_5:

    return sub_1BA4A4F38();
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v10;
    v13 = v10[1];
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = v14;
    v23 = v13;
    goto LABEL_5;
  }

  sub_1B9F416DC(0);
  (*(v3 + 32))(v6, v10, v2);
  v16 = sub_1BA4A16B8();
  if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v17 = HKMostRecentSampleEndDateText();

  if (v17)
  {
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v18;
  v23 = v20;

  sub_1BA4A4F38();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1B9F4C1D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F39780(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F4C230(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F4C290(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_1BA4A7AA8();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_1BA4A7AA8();
    if (v3 <= 0x3F)
    {
      result = sub_1BA4A19E8();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1B9F4C3DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = SnidgetContentView.ViewModel.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1B9F4C45C(char a1)
{
  result = 0xD000000000000016;
  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return result;
}

uint64_t sub_1B9F4C574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B9F4354C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PDFFileNameGenerator(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

uint64_t StandardSnidgetCurrentValueDataView.ViewModel.init(from:)(void *a1)
{
  v3 = sub_1BA4A12C8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v91 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v88 = &v80 - v9;
  v92 = sub_1BA4A1278();
  v96 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v10);
  v90 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v89 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v87 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v80 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v80 - v23;
  sub_1B9F436C8(0, &qword_1EDC5DE70, MEMORY[0x1E69E6F48]);
  v26 = v25;
  v95 = *(v25 - 8);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = &v80 - v29;
  v93 = v4;
  v33 = *(v4 + 56);
  v31 = v4 + 56;
  v32 = v33;
  *&v102 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  (v33)(v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString, 1, 1, v3, v28);
  v99 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v94 = v3;
  v33(v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString, 1, 1, v3);
  v101 = v1;
  v34 = v1 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration;
  *(v34 + 8) = 0;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v98 = v34;
  *v34 = 0;
  v35 = a1[3];
  v107 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1B9F4372C();
  v36 = v100;
  sub_1BA4A8528();
  if (v36)
  {
    v42 = v101;
    v43 = MEMORY[0x1E6968848];
    v44 = MEMORY[0x1E69E6720];
    sub_1BA103284(v101 + v102, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    sub_1BA103284(v42 + v99, &unk_1EDC6E290, v43, v44, sub_1B9F47BAC);

    type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v37 = v24;
    v86 = v32;
    v100 = v31;
    v38 = v96;
    LOBYTE(v104) = 0;
    v39 = sub_1B9F4D13C(&qword_1EDC6AEA8, MEMORY[0x1E6968848], MEMORY[0x1E6968868]);
    v40 = v94;
    sub_1BA4A8178();
    v41 = v30;
    v85 = v39;
    v84 = v26;
    v46 = v93;
    v47 = *(v93 + 48);
    v83 = v93 + 48;
    v82 = v47;
    v48 = v47(v97, 1, v40);
    v42 = v101;
    if (v48 == 1)
    {
      sub_1BA103284(v97, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
      v49 = 1;
      v50 = v37;
      v51 = v92;
    }

    else
    {
      v50 = v37;
      v52 = v97;
      (*(v46 + 16))(v37, v97, v40);
      v53 = v90;
      sub_1BA4A1288();
      sub_1B9F4D364(v53, v50);
      v54 = v53;
      v51 = v92;
      (*(v38 + 8))(v54, v92);
      (*(v46 + 8))(v52, v40);
      v49 = 0;
    }

    v86(v50, v49, 1, v40);
    v55 = v102;
    swift_beginAccess();
    sub_1B9F426D0(v50, v42 + v55);
    swift_endAccess();
    LOBYTE(v104) = 1;
    v56 = v91;
    v57 = v84;
    sub_1BA4A81C8();
    v58 = v56;
    v59 = v93;
    v60 = *(v93 + 16);
    *&v102 = v41;
    v61 = v88;
    v92 = v93 + 16;
    v80 = v60;
    v60();
    v62 = v51;
    v63 = v90;
    sub_1BA4A1288();
    sub_1B9F4D364(v63, v61);
    v64 = *(v96 + 8);
    v96 += 8;
    v97 = 0;
    v81 = v64;
    v64(v63, v62);
    v65 = v59 + 8;
    v91 = *(v59 + 8);
    (v91)(v58, v40);
    v66 = v102;
    (*(v59 + 32))(v42 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString, v61, v40);
    LOBYTE(v104) = 2;
    v67 = v62;
    v68 = v89;
    v69 = v97;
    sub_1BA4A8178();
    if (v69)
    {

      (*(v95 + 8))(v66, v57);
    }

    else
    {
      v97 = v65;
      v70 = v68;
      if (v82(v68, 1, v40) == 1)
      {
        sub_1BA103284(v68, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
        v71 = 1;
        v72 = v84;
        v73 = v95;
        v74 = v87;
      }

      else
      {
        v74 = v87;
        (v80)(v87, v68, v40);
        v75 = v90;
        sub_1BA4A1288();
        sub_1B9F4D364(v75, v74);
        v66 = v102;
        v81(v75, v67);
        (v91)(v70, v40);
        v71 = 0;
        v72 = v84;
        v73 = v95;
      }

      v86(v74, v71, 1, v40);
      v76 = v99;
      swift_beginAccess();
      sub_1B9F426D0(v74, v42 + v76);
      swift_endAccess();
      v103 = 3;
      sub_1B9F73860();
      sub_1BA4A8178();
      (*(v73 + 8))(v66, v72);
      v102 = v104;
      v77 = v105;
      v78 = v106;
      v79 = v98;
      swift_beginAccess();
      *v79 = v102;
      *(v79 + 16) = v77;
      *(v79 + 24) = v78;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v107);
  return v42;
}

unint64_t sub_1B9F4D090()
{
  result = qword_1EDC6BAB8;
  if (!qword_1EDC6BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BAB8);
  }

  return result;
}

unint64_t sub_1B9F4D0E8()
{
  result = qword_1EDC6BAC0;
  if (!qword_1EDC6BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BAC0);
  }

  return result;
}

uint64_t sub_1B9F4D13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B9F4D184()
{
  v1 = 0x537972616D697270;
  v2 = 0x656C746974627573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t storeEnumTagSinglePayload for SummarySharingSelectionSuggestedLabsCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SummarySharingSelectionSuggestedLabsCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B9F4D364(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  sub_1B9F4DA34(0);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F42764(0);
  v55 = v6;
  v51 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1BA4A1268();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v9);
  v57 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BA4A1248();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BA4A1278();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F427F8(0);
  v22 = v21 - 8;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v16, v24);
  v27 = MEMORY[0x1E69687C8];
  sub_1B9F4D13C(&qword_1EDC6AED0, MEMORY[0x1E69687C8], MEMORY[0x1E69687D8]);
  sub_1BA4A69F8();
  v28 = *(v22 + 44);
  v29 = sub_1B9F4D13C(&qword_1EDC6AEC8, v27, MEMORY[0x1E69687E0]);
  ++v56;
  ++v51;
  v52 = (v12 + 16);
  v50 = (v12 + 8);
  v46 = v26;
  v53 = v29;
  while (1)
  {
    v30 = v57;
    sub_1BA4A6E38();
    sub_1B9F4D13C(&qword_1EDC6AED8, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v31 = v58;
    v32 = sub_1BA4A6728();
    (*v56)(v30, v31);
    if (v32)
    {
      break;
    }

    v33 = sub_1BA4A6E88();
    (*v52)(v15);
    v33(v59, 0);
    sub_1BA4A6E48();
    swift_getKeyPath();
    sub_1BA4A1168();
    sub_1B9F4D13C(&qword_1EDC6AEE8, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
    v34 = v54;
    sub_1BA4A1228();

    swift_getKeyPath();
    sub_1B9F4DAC8();
    v35 = v55;
    sub_1BA4A14C8();

    (*v51)(v34, v35);
    v36 = v59[0];
    if (v59[0])
    {
      v37 = UIFont.mappedSwiftUIFont.getter();
      v38 = v47;
      sub_1BA4A1238();

      sub_1B9F4D13C(&qword_1EDC5E5B8, sub_1B9F4DA34, MEMORY[0x1E69E66D8]);
      v39 = v28;
      v40 = v16;
      v41 = v15;
      v42 = v11;
      v43 = sub_1BA4A12F8();
      v59[5] = v37;
      sub_1B9F73298();
      sub_1BA4A1368();
      v43(v59, 0);
      v11 = v42;
      v15 = v41;
      v16 = v40;
      v28 = v39;
      v26 = v46;

      sub_1BA10334C(v38, sub_1B9F4DA34);
    }

    (*v50)(v15, v11);
  }

  return sub_1BA10334C(v26, sub_1B9F427F8);
}

uint64_t sub_1B9F4D9E8@<X0>(uint64_t *a1@<X8>)
{
  sub_1BA4A1178();
  result = sub_1BA4A1168();
  *a1 = result;
  return result;
}

void sub_1B9F4DA34(uint64_t a1)
{
  if (!qword_1EDC5E5C0)
  {
    sub_1BA4A1298();
    sub_1B9F4D13C(&qword_1EDC6AEC0, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = sub_1BA4A6E98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E5C0);
    }
  }
}

unint64_t sub_1B9F4DAC8()
{
  result = qword_1EDC6AEF0;
  if (!qword_1EDC6AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AEF0);
  }

  return result;
}

uint64_t UIFont.mappedSwiftUIFont.getter()
{
  v1 = sub_1BA4A5D18();
  v82 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v81 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F47C10(0, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v74 - v10;
  sub_1B9F47C10(0, &qword_1EDC5EBE0, MEMORY[0x1E6980F40]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v74 - v14;
  v16 = sub_1BA4A5D68();
  v84 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v83 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v0;
  v20 = sub_1BA4A5D78();
  v21 = [v19 fontDescriptor];
  v22 = [v21 fontDescriptorWithSymbolicTraits_];

  if (v22)
  {
    v79 = v1;
    v80 = v11;
    v23 = [v22 fontAttributes];
    type metadata accessor for AttributeName(0);
    sub_1B9F4E47C(&qword_1EDC6E3A8, type metadata accessor for AttributeName, &unk_1BA4B4490);
    v24 = sub_1BA4A6628();

    if (*(v24 + 16) && (v25 = sub_1B9F4E588(*MEMORY[0x1E69DB8E8]), (v26 & 1) != 0))
    {
      sub_1B9F0AD9C(*(v24 + 56) + 32 * v25, v86);

      type metadata accessor for TextStyle(0);
      if (swift_dynamicCast())
      {
        v27 = v85;
        sub_1B9F70028(v27, v15);
        v28 = v84;
        if ((*(v84 + 48))(v15, 1, v16) == 1)
        {

          sub_1B9F724F0(v15, &qword_1EDC5EBE0, MEMORY[0x1E6980F40]);
          return v20;
        }

        (*(v28 + 32))(v83, v15, v16);
        v30 = [v19 fontDescriptor];
        v31 = [v30 fontAttributes];

        v32 = sub_1BA4A6628();
        v33 = *(v32 + 16);
        v76 = v27;
        if (v33 && (v34 = sub_1B9F4E588(*MEMORY[0x1E69DB8F0]), (v35 & 1) != 0))
        {
          sub_1B9F0AD9C(*(v32 + 56) + 32 * v34, v86);

          sub_1B9F708DC(0);
          if (swift_dynamicCast())
          {
            v36 = v85;
            v37 = &selRef_createListViewController_;
            if (v85)
            {
              v38 = *(v85 + 2);
              v75 = v85;
              if (v38)
              {
                v39 = *MEMORY[0x1E69DB990];

                v40 = sub_1B9F4E588(v39);
                if ((v41 & 1) == 0)
                {

                  v43 = 0;
                  v37 = &selRef_createListViewController_;
                  goto LABEL_21;
                }

                sub_1B9F0AD9C(v36[7] + 32 * v40, v86);

                type metadata accessor for Weight(0);
                v37 = &selRef_createListViewController_;
                if (swift_dynamicCast())
                {
                  v78 = sub_1B9F710A8(*&v85);
                  v77 = v42;
                  v43 = 0;
LABEL_22:
                  v44 = [v19 v37[170]];
                  v45 = [v44 fontAttributes];

                  v46 = sub_1BA4A6628();
                  if (*(v46 + 16) && (v47 = sub_1B9F4E588(*MEMORY[0x1E69DB8A0]), (v48 & 1) != 0))
                  {
                    sub_1B9F0AD9C(*(v46 + 56) + 32 * v47, v86);

                    type metadata accessor for Weight(0);
                    v49 = swift_dynamicCast();
                    v50 = v80;
                    if (v49)
                    {
                      v78 = sub_1B9F710A8(*&v85);
                      v77 = v51;
                    }
                  }

                  else
                  {

                    v50 = v80;
                  }

                  v52 = &selRef_createListViewController_;
                  v53 = sub_1BA4A5C28();
                  (*(*(v53 - 8) + 56))(v50, 1, 1, v53);
                  if ((v43 & 1) == 0)
                  {
                    v54 = sub_1BA4A6758();
                    v55 = v54;
                    v56 = v75;
                    if (v75[2] && (v57 = sub_1B9F4E588(v54), v52 = &selRef_createListViewController_, (v58 & 1) != 0))
                    {
                      sub_1B9F0AD9C(v56[7] + 32 * v57, v86);

                      type metadata accessor for SystemDesign(0);
                      if (swift_dynamicCast())
                      {
                        sub_1B9F71E7C(v85, v7);
                        sub_1B9F724F0(v50, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
                        sub_1B9F7254C(v7, v50);
                      }
                    }

                    else
                    {
                    }
                  }

                  v59 = v79;
                  v60 = sub_1BA4A5CD8();

                  v61 = [v19 v52[170]];
                  v62 = [v61 symbolicTraits];

                  if ((v62 & 0x8000) != 0)
                  {
                    v66 = v81;
                    v65 = v82;
                    (*(v82 + 104))(v81, *MEMORY[0x1E6980EA8], v59);
                    v67 = sub_1BA4A5D38();

                    (*(v65 + 8))(v66, v59);
                    v60 = v67;
                    if ((v62 & 0x10000) == 0)
                    {
LABEL_35:
                      v63 = v76;
                      if ((v62 & 1) == 0)
                      {
                        goto LABEL_36;
                      }

                      goto LABEL_40;
                    }
                  }

                  else if ((v62 & 0x10000) == 0)
                  {
                    goto LABEL_35;
                  }

                  v69 = v81;
                  v68 = v82;
                  (*(v82 + 104))(v81, *MEMORY[0x1E6980E98], v59);
                  v70 = sub_1BA4A5D38();

                  (*(v68 + 8))(v69, v59);
                  v60 = v70;
                  v63 = v76;
                  if ((v62 & 1) == 0)
                  {
LABEL_36:
                    v64 = v80;
                    if ((v62 & 0x400) == 0)
                    {
LABEL_37:

LABEL_42:
                      v73 = v84;
                      sub_1B9F724F0(v64, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
                      (*(v73 + 8))(v83, v16);
                      return v60;
                    }

LABEL_41:
                    v72 = sub_1BA4A5BF8();

                    v60 = v72;
                    goto LABEL_42;
                  }

LABEL_40:
                  v71 = sub_1BA4A5CC8();

                  v60 = v71;
                  v64 = v80;
                  if ((v62 & 0x400) == 0)
                  {
                    goto LABEL_37;
                  }

                  goto LABEL_41;
                }
              }

              v43 = 0;
LABEL_21:
              v78 = 0;
              v77 = 1;
              goto LABEL_22;
            }

LABEL_20:
            v75 = 0;
            v43 = 1;
            goto LABEL_21;
          }
        }

        else
        {
        }

        v37 = &selRef_createListViewController_;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  return v20;
}

uint64_t sub_1B9F4E47C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F4E514(uint64_t a1)
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v1 = sub_1BA4A84D8();

  return v1;
}

unint64_t sub_1B9F4E590(uint64_t a1)
{
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA4A8488();
  sub_1BA4A68C8();
  v2 = sub_1BA4A84D8();

  return sub_1B9F4E620(a1, v2);
}

unint64_t sub_1B9F4E620(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v8 = v7;
      if (v6 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v8 == v9)
      {
        break;
      }

      v11 = sub_1BA4A8338();

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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t SnidgetContentView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = *(a1 + 16);
  sub_1BA4A7AA8();
  v23 = *(a1 + 24);
  sub_1BA4A7AA8();
  v4 = sub_1BA4A5418();
  v22 = *(a1 + 40);
  v39 = *(v22 + 8);
  WitnessTable = swift_getWitnessTable();
  v38 = MEMORY[0x1E697EBF8];
  v5 = swift_getWitnessTable();
  v33 = v4;
  v34 = MEMORY[0x1E69E6158];
  v35 = v5;
  v36 = MEMORY[0x1E69E6168];
  sub_1BA4A6228();
  swift_getTupleTypeMetadata3();
  sub_1BA4A6428();
  swift_getWitnessTable();
  v6 = sub_1BA4A6218();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - v13;
  v15 = *v2;
  v16 = v2[3];
  sub_1BA4A5768();
  *&v17 = *(a1 + 32);
  *(&v17 + 1) = v22;
  *&v18 = v24;
  *(&v18 + 1) = v23;
  v26 = v18;
  v27 = v17;
  v19 = *(a1 + 64);
  v28 = *(a1 + 48);
  v29 = v19;
  v30 = v15;
  v31 = *(v2 + 1);
  v32 = v16;
  sub_1BA4A6208();
  swift_getWitnessTable();
  sub_1B9F51AA8(v10, v6, v14);
  v20 = *(v7 + 8);
  v20(v10, v6);
  sub_1B9F51AA8(v14, v6, v25);
  return (v20)(v14, v6);
}

uint64_t sub_1B9F4EA88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v103 = a3;
  v104 = a4;
  v107 = a2;
  v82 = a1;
  v96 = a9;
  v105 = a13;
  v102 = a12;
  v106 = a11;
  v101 = a10;
  v100 = a6;
  swift_getAssociatedTypeWitness();
  v16 = sub_1BA4A7AA8();
  v17 = *(v16 - 8);
  v92 = v16;
  v93 = v17;
  MEMORY[0x1EEE9AC00](v16, v18);
  v86 = &v74 - v19;
  v20 = sub_1BA4A7AA8();
  v95 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = &v74 - v22;
  v83 = v20;
  v23 = sub_1BA4A5418();
  v88 = v23;
  v94 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v91 = &v74 - v25;
  v26 = *(a8 + 8);
  v27 = a8;
  v75 = a8;
  v120 = v26;
  v79 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable();
  v118 = WitnessTable;
  v119 = MEMORY[0x1E697EBF8];
  v85 = swift_getWitnessTable();
  v114 = v23;
  v115 = MEMORY[0x1E69E6158];
  v116 = v85;
  v117 = MEMORY[0x1E69E6168];
  v28 = sub_1BA4A6228();
  v29 = *(v28 - 8);
  v89 = v28;
  v90 = v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v80 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v84 = &v74 - v34;
  v35 = a7;
  swift_getAssociatedTypeWitness();
  v36 = sub_1BA4A7AA8();
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v38);
  v40 = &v74 - v39;
  v97 = sub_1BA4A7AA8();
  v99 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97, v41);
  v43 = &v74 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v74 - v46;
  v98 = &v74 - v46;
  v48 = v103;
  sub_1B9F4F2B4();
  v49 = a5;
  v74 = a5;
  v109[2] = a5;
  v109[3] = v100;
  v109[4] = v35;
  v109[5] = v27;
  v109[6] = v101;
  v109[7] = v106;
  v109[8] = v102;
  v109[9] = v105;
  v50 = v82;
  v109[10] = v82;
  v109[11] = v107;
  v109[12] = v48;
  v109[13] = v104;
  sub_1B9F4F700(sub_1B9F4F9F8, v109, MEMORY[0x1E69E73E0], v49, v51, v43);
  (*(v37 + 8))(v40, v36);
  v113 = *(v35 + 8);
  v52 = v97;
  v53 = swift_getWitnessTable();
  v76 = v43;
  v77 = v53;
  sub_1B9F51AA8(v43, v52, v47);
  v54 = *(v99 + 8);
  v78 = v99 + 8;
  v79 = v54;
  v54(v43, v52);
  v55 = v86;
  v56 = v103;
  sub_1B9F50134();
  v108[2] = v74;
  v108[3] = v100;
  v108[4] = v35;
  v108[5] = v75;
  v57 = v107;
  v108[6] = v101;
  v108[7] = v106;
  v108[8] = v102;
  v108[9] = v105;
  v108[10] = v50;
  v108[11] = v107;
  v108[12] = v56;
  v108[13] = v104;
  v58 = v87;
  v59 = v92;
  sub_1B9F4F700(sub_1B9F501A8, v108, MEMORY[0x1E69E73E0], v100, v60, v87);
  (*(v93 + 8))(v55, v59);
  sub_1BA4A63C8();
  v61 = v83;
  v62 = v91;
  sub_1BA4A5FE8();
  (*(v95 + 8))(v58, v61);
  v114 = v50;
  v115 = v57;
  v63 = v80;
  v64 = v88;
  sub_1BA4A5FA8();
  (*(v94 + 8))(v62, v64);
  v65 = v89;
  v66 = swift_getWitnessTable();
  v67 = v84;
  sub_1B9F51AA8(v63, v65, v84);
  v68 = v90;
  v69 = *(v90 + 8);
  v69(v63, v65);
  v70 = v76;
  v71 = v97;
  (*(v99 + 16))(v76, v98, v97);
  v111 = 0;
  v112 = 1;
  v114 = v70;
  v115 = &v111;
  (*(v68 + 16))(v63, v67, v65);
  v116 = v63;
  v110[0] = v71;
  v110[1] = MEMORY[0x1E6981840];
  v110[2] = v65;
  v109[14] = v77;
  v109[15] = MEMORY[0x1E6981838];
  v109[16] = v66;
  sub_1B9F50770(&v114, 3uLL, v110);
  v69(v67, v65);
  v72 = v79;
  v79(v98, v71);
  v69(v63, v65);
  return v72(v70, v71);
}

__n128 sub_1B9F4F2D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B9F4F340(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  KeyPath = swift_getKeyPath();
  sub_1B9F4F3D8(KeyPath);

  return a2(v4);
}

uint64_t sub_1B9F4F484@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 144);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F4F560(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v9;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v8)
  {
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((a2 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v8 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v7 < 2)
  {
    return 0;
  }

  v15 = (*(v6 + 48))(a1);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9F4F700@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v28 = a5;
  v29 = a2;
  v31 = a4;
  v30 = a1;
  v27 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v23, v6, v21);
  v25 = 1;
  if ((*(v14 + 48))(v23, 1, v13) != 1)
  {
    (*(v14 + 32))(v18, v23, v13);
    v30(v18, v11);
    (*(v14 + 8))(v18, v13);
    if (v7)
    {
      return (*(v27 + 32))(v28, v11, a3);
    }

    v25 = 0;
  }

  return (*(*(v31 - 8) + 56))(a6, v25, 1);
}

uint64_t sub_1B9F4FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v30 = a1;
  v31 = a2;
  v32 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v29 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v29 - v19;
  v23 = type metadata accessor for ViewModelState(0, AssociatedTypeWitness, v21, v22);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v27 = &v29 - v26;
  (*(v16 + 16))(v20, v30, AssociatedTypeWitness, v25);
  if (a4)
  {

    sub_1B9F4F2B4();
  }

  else
  {
    (*(v16 + 56))(v15, 1, 1, AssociatedTypeWitness);
  }

  ViewModelState.init(id:viewModel:previousViewModel:)(v31, a3, v20, v15, AssociatedTypeWitness, v27);
  return (*(a6 + 24))(v27, a5, a6);
}

uint64_t ViewModelState.init(id:viewModel:previousViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for ViewModelState(0, a5, a3, a4);
  v13 = *(v12 + 32);
  v14 = *(a5 - 8);
  (*(v14 + 56))(&a6[v13], 1, 1, a5);
  *a6 = a1;
  *(a6 + 1) = a2;
  (*(v14 + 32))(&a6[*(v12 + 28)], a3, a5);
  v15 = sub_1BA4A7AA8();
  v16 = *(*(v15 - 8) + 40);

  return v16(&a6[v13], a4, v15);
}

uint64_t SnidgetCurrentValueView.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = type metadata accessor for SnidgetCurrentValueView(0, a2, a3, a4);
  v10 = *(v9 + 40);
  v12 = type metadata accessor for SnidgetCurrentValueView.ViewModel(0, a2, a3, v11);
  v13 = *(v12 - 8);
  (*(v13 + 56))(&a5[v10], 1, 1, v12);
  v14 = *(a1 + 1);
  *a5 = *a1;
  *(a5 + 1) = v14;
  v17 = type metadata accessor for ViewModelState(0, v12, v15, v16);
  (*(v13 + 32))(&a5[*(v9 + 36)], &a1[*(v17 + 28)], v12);
  v18 = *(v17 + 32);
  v19 = sub_1BA4A7AA8();
  v20 = *(*(v19 - 8) + 40);

  return v20(&a5[v10], &a1[v18], v19);
}

uint64_t sub_1B9F4FEF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 - 1;
  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v10;
  }

  if (v7 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = v10 + 1;
  }

  if (v8 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 80);
  v15 = v10 + v14;
  if (a2 <= v13)
  {
    goto LABEL_38;
  }

  v16 = v11 + ((v15 + ((v14 + 16) & ~v14)) & ~v14);
  v17 = 8 * v16;
  if (v16 > 3)
  {
    goto LABEL_18;
  }

  v19 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
  if (HIWORD(v19))
  {
    v18 = *(a1 + v16);
    if (v18)
    {
      goto LABEL_25;
    }

LABEL_38:
    if ((v12 & 0x80000000) == 0)
    {
      v23 = *(a1 + 1);
      if (v23 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }

    v25 = (a1 + v14 + 16) & ~v14;
    if (v8 == v13)
    {
      if (v7 >= 2)
      {
        v26 = (*(v6 + 48))(v25);
        if (v26 >= 2)
        {
          return v26 - 1;
        }

        else
        {
          return 0;
        }
      }
    }

    else if (v7 >= 2)
    {
      v27 = (*(v6 + 48))((v15 + v25) & ~v14);
      v28 = v27 >= 2;
      result = v27 - 2;
      if (result != 0 && v28)
      {
        return result;
      }
    }

    return 0;
  }

  if (v19 > 0xFF)
  {
    v18 = *(a1 + v16);
    if (*(a1 + v16))
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v19 < 2)
  {
    goto LABEL_38;
  }

LABEL_18:
  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_38;
  }

LABEL_25:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

uint64_t sub_1B9F501D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v29 = a1;
  v30 = a2;
  v31 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v28 - v18;
  v22 = type metadata accessor for ViewModelState(0, AssociatedTypeWitness, v20, v21);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v26 = &v28 - v25;
  (*(v15 + 16))(v19, v29, AssociatedTypeWitness, v24);
  if (a4)
  {

    sub_1B9F50134();
  }

  else
  {
    (*(v15 + 56))(v14, 1, 1, AssociatedTypeWitness);
  }

  ViewModelState.init(id:viewModel:previousViewModel:)(v30, a3, v19, v14, AssociatedTypeWitness, v26);
  return (*(a7 + 24))(v26, a5, a7);
}

uint64_t sub_1B9F503F0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  *(a3 + 24) = swift_getKeyPath();
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v6 = *(a2 + 32);
  *(a3 + v6) = swift_getKeyPath();
  sub_1B9F51630(0, &qword_1EDC6B6E8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel, &protocol conformance descriptor for SnidgetSwiftChartViewModel);

  *a3 = sub_1BA4A5348();
  *(a3 + 8) = v7;

  *(a3 + 16) = v5;
  return result;
}

uint64_t sub_1B9F505A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1B9F51630(0, &qword_1EDC6B6D8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 32);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B9F50690(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1B9F51630(0, &qword_1EDC6B6D8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B9F50770(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata, a2);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1BA4A6438();
}

unint64_t sub_1B9F50950()
{
  result = qword_1EDC60D08;
  if (!qword_1EDC60D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC60D08);
  }

  return result;
}

uint64_t SnidgetCurrentValueView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  v93 = a2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = type metadata accessor for SnidgetCurrentValueView.ViewModel(255, v5, v4, a3);
  v86 = sub_1BA4A7AA8();
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v7);
  v85 = &v73 - v8;
  v92 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1BA4A7AA8();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v82 = &v73 - v12;
  v15 = type metadata accessor for ViewModelState(0, AssociatedTypeWitness, v13, v14);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v81 = &v73 - v17;
  v88 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v87 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v73 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v84 = &v73 - v26;
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v73 - v34;
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v73 - v39;
  v41 = sub_1BA4A58F8();
  v90 = *(v41 - 8);
  v91 = v41;
  v43 = MEMORY[0x1EEE9AC00](v41, v42);
  v45 = &v73 - v44;
  v78 = a1;
  v46 = *(a1 + 36);
  v47 = *(v36 + 16);
  v48 = v89;
  v80 = v6;
  v47(v40, v89 + v46, v6, v43);
  v94 = v27;
  if ((*(v27 + 48))(v40, 1, AssociatedTypeWitness) == 1)
  {
    KeyPath = swift_getKeyPath();
    v96 = 0;
    v97 = 0;
    v49 = sub_1B9F50950();
    v50 = *(v92 + 8);
    sub_1BA100874(&KeyPath, &type metadata for StandardSnidgetCurrentValueNoDataView, v5, v49, v50);
    sub_1B9F84D1C(KeyPath, v96, v97);
    v51 = v45;
  }

  else
  {
    v75 = v45;
    v52 = v94;
    (*(v94 + 32))(v35, v40, AssociatedTypeWitness);
    v53 = v48[1];
    v74 = *v48;
    v54 = *(v52 + 16);
    v76 = v31;
    v77 = v35;
    v54(v31, v35, AssociatedTypeWitness);
    v55 = v83;
    v57 = v85;
    v56 = v86;
    (*(v83 + 16))(v85, v48 + *(v78 + 40), v86);
    v58 = v80;
    if ((*(v36 + 48))(v57, 1, v80) == 1)
    {
      v59 = *(v55 + 8);

      v59(v57, v56);
      v60 = v82;
      (*(v94 + 56))(v82, 1, 1, AssociatedTypeWitness);
    }

    else
    {

      v60 = v82;
      SnidgetCurrentValueView.ViewModel.value.getter(v58, v82);
      (*(v36 + 8))(v57, v58);
    }

    v61 = v92;
    v62 = v81;
    ViewModelState.init(id:viewModel:previousViewModel:)(v74, v53, v76, v60, AssociatedTypeWitness, v81);
    v63 = v79;
    (*(v61 + 24))(v62, v5, v61);
    v50 = *(v61 + 8);
    v64 = v88;
    v65 = *(v88 + 16);
    v66 = v84;
    v65(v84, v63, v5);
    v67 = *(v64 + 8);
    v67(v63, v5);
    v68 = v87;
    v65(v87, v66, v5);
    v69 = sub_1B9F50950();
    v51 = v75;
    sub_1B9F511C0(v68, &type metadata for StandardSnidgetCurrentValueNoDataView, v5, v69, v50);
    v67(v68, v5);
    v67(v66, v5);
    (*(v94 + 8))(v77, AssociatedTypeWitness);
  }

  v98 = sub_1B9F50950();
  v99 = v50;
  v70 = v91;
  swift_getWitnessTable();
  v71 = v90;
  (*(v90 + 16))(v93, v51, v70);
  return (*(v71 + 8))(v51, v70);
}

uint64_t sub_1B9F51104@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
  sub_1B9F4D13C(&qword_1EDC61320, type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel, &protocol conformance descriptor for StandardSnidgetCurrentValueDataView.ViewModel);

  *a2 = sub_1BA4A5348();
  *(a2 + 8) = v4;

  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B9F511C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BA4A58D8();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  (*(*(a3 - 8) + 16))(&v12 - v10, a1, a3, v9);
  swift_storeEnumTagMultiPayload();
  return sub_1BA4A58E8();
}

void sub_1B9F512B8(uint64_t a1)
{
  sub_1BA4A12C8();
  if (v1 <= 0x3F)
  {
    sub_1B9F51C6C(319, &qword_1EDC63458, &type metadata for AnimatedSnidgetCurrentValueText.Configuration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B9F51360()
{
  result = qword_1EDC6B978[0];
  if (!qword_1EDC6B978[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6B978);
  }

  return result;
}

uint64_t sub_1B9F513D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SnidgetCurrentValueView.ViewModel(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = sub_1BA4A7AA8();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9F514CC(uint64_t a1)
{
  result = sub_1BA4A0FA8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(319);
    if (v3 <= 0x3F)
    {
      result = sub_1BA4A1898();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_1B9F51630(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F51694(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F516E4(uint64_t a1)
{
  if (!qword_1EDC6B6C0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B620, 0x1E696C1C0);
    v1 = sub_1BA4A51D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B6C0);
    }
  }
}

void sub_1B9F51758(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (v9 >= 2)
  {
    v12 = v10 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v9 >= 2)
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v10 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  v15 = *(v8 + 80);
  v16 = v13 + ((v11 + v15 + ((v15 + 16) & ~v15)) & ~v15);
  if (v14 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v14;
  }

  if (a3 > v17)
  {
    v7 = 1;
    if (v16 <= 3)
    {
      v18 = ((a3 - v17 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      v19 = HIWORD(v18);
      if (v18 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v18 >= 2)
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      if (v19)
      {
        v7 = 4;
      }

      else
      {
        v7 = v21;
      }
    }
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v16 < 4)
    {
      v23 = (v22 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v22 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v7 > 1)
            {
LABEL_68:
              if (v7 == 2)
              {
                *(a1 + v16) = v23;
              }

              else
              {
                *(a1 + v16) = v23;
              }

              return;
            }
          }

          else
          {
            *a1 = v22;
            if (v7 > 1)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_65;
        }

        *a1 = v24;
        *(a1 + 2) = BYTE2(v24);
      }

      if (v7 > 1)
      {
        goto LABEL_68;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v22;
      v23 = 1;
      if (v7 > 1)
      {
        goto LABEL_68;
      }
    }

LABEL_65:
    if (v7)
    {
      *(a1 + v16) = v23;
    }

    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      *(a1 + v16) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *(a1 + v16) = 0;
  }

  else if (v7)
  {
    *(a1 + v16) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if ((v14 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }

    return;
  }

  v25 = (a1 + v15 + 16) & ~v15;
  if (v10 == v17)
  {
    if (v9 < 2)
    {
      return;
    }

    v26 = *(v8 + 56);
    v27 = a2 + 1;
LABEL_75:

    v26(v25, v27);
    return;
  }

  v28 = ((v11 + v15 + v25) & ~v15);
  if (a2 + 1 <= v10)
  {
    if (a2 == -1 || v9 < 2)
    {
      return;
    }

    v26 = *(v8 + 56);
    v27 = a2 + 2;
    v25 = v28;
    goto LABEL_75;
  }

  if (v11 <= 3)
  {
    v29 = ~(-1 << (8 * v11));
  }

  else
  {
    v29 = -1;
  }

  if (v11)
  {
    v30 = v29 & (a2 - v10);
    if (v11 <= 3)
    {
      v31 = v11;
    }

    else
    {
      v31 = 4;
    }

    bzero(v28, v11);
    if (v31 > 2)
    {
      if (v31 == 3)
      {
        *v28 = v30;
        v28[2] = BYTE2(v30);
      }

      else
      {
        *v28 = v30;
      }
    }

    else if (v31 == 1)
    {
      *v28 = v30;
    }

    else
    {
      *v28 = v30;
    }
  }
}

uint64_t sub_1B9F51AB0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = sub_1BA4A7AA8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1B9F51BD8(void *a1)
{
  sub_1BA4A58F8();
  sub_1B9F50950();
  return swift_getWitnessTable();
}

void sub_1B9F51C6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B9F51CBC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BA4A7CC8())
  {
    v4 = sub_1BA4A27B8();
    v5 = sub_1B9F51E1C(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
    result = MEMORY[0x1BFAF17D0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1BFAF2860](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1BA0E2A88(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1BA4A7CC8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B9F51E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F51E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v100 = a2;
  v5 = sub_1BA4A1728();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3EA8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_1B9F52788(v15);
  v17 = v16;

  v18 = sub_1B9F52A58(v17, a1);
  v85 = sub_1B9F52A58(a1, v17);
  v20 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    sub_1BA4A7C88();
    sub_1BA4A27B8();
    sub_1B9F85D08(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
    sub_1BA4A6DA8();
    v20 = v103;
    v21 = v104;
    v22 = v105;
    v23 = v106;
    v24 = v107;
  }

  else
  {
    v23 = 0;
    v25 = -1 << *(v18 + 32);
    v21 = v18 + 56;
    v22 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v18 + 56);
  }

  v84 = v22;
  v28 = (v22 + 64) >> 6;
  v95 = (v11 + 8);
  v94 = (v6 + 16);
  v87 = v6 + 32;
  v86 = v6 + 40;
  *&v19 = 136315394;
  v88 = v19;
  v97 = v20;
  v98 = v14;
  v96 = v21;
  v93 = v28;
  v90 = v5;
  v89 = v6;
  while (v20 < 0)
  {
    v33 = sub_1BA4A7CF8();
    if (!v33 || (v102 = v33, sub_1BA4A27B8(), swift_dynamicCast(), v32 = v108[0], v31 = v23, v99 = v24, !v108[0]))
    {
LABEL_31:
      sub_1B9F52E48(v97);
      v67 = v85;
      if ((v85 & 0xC000000000000001) != 0)
      {
        sub_1BA4A7C88();
        sub_1BA4A27B8();
        sub_1B9F85D08(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
        sub_1BA4A6DA8();
        v67 = v108[0];
        v68 = v108[1];
        v69 = v108[2];
        v70 = v108[3];
        v71 = v108[4];
      }

      else
      {
        v70 = 0;
        v72 = -1 << *(v85 + 32);
        v68 = v85 + 56;
        v69 = ~v72;
        v73 = -v72;
        if (v73 < 64)
        {
          v74 = ~(-1 << v73);
        }

        else
        {
          v74 = -1;
        }

        v71 = v74 & *(v85 + 56);
      }

      v99 = v69;
      v75 = (v69 + 64) >> 6;
      v76 = v67;
      if (v67 < 0)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v77 = v70;
        v78 = v71;
        v79 = v70;
        if (!v71)
        {
          break;
        }

LABEL_42:
        v80 = (v78 - 1) & v78;
        v81 = *(*(v67 + 48) + ((v79 << 9) | (8 * __clz(__rbit64(v78)))));
        if (!v81)
        {
          return sub_1B9F52E48(v76);
        }

        while (1)
        {
          sub_1BA3C2BB0(v81);

          v70 = v79;
          v71 = v80;
          v67 = v76;
          if ((v76 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_44:
          v82 = sub_1BA4A7CF8();
          if (v82)
          {
            v101 = v82;
            sub_1BA4A27B8();
            swift_dynamicCast();
            v81 = v102;
            v79 = v70;
            v80 = v71;
            if (v102)
            {
              continue;
            }
          }

          return sub_1B9F52E48(v76);
        }
      }

      while (1)
      {
        v79 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          goto LABEL_50;
        }

        if (v79 >= v75)
        {
          return sub_1B9F52E48(v76);
        }

        v78 = *(v68 + 8 * v79);
        ++v77;
        if (v78)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_19:
    sub_1BA4A3DB8();
    v34 = v32;

    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6F88();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v108[0] = v91;
      *v37 = v88;
      v38 = [v34 uniqueIdentifier];
      v92 = v34;
      v39 = v38;
      v40 = v10;
      v41 = v9;
      v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v44 = v43;

      v45 = v42;
      v9 = v41;
      v10 = v40;
      v46 = sub_1B9F0B82C(v45, v44, v108);

      *(v37 + 4) = v46;
      *(v37 + 12) = 2082;
      v102 = v3;
      type metadata accessor for PersonalizedFeedTrainer();

      v47 = sub_1BA4A6808();
      v49 = sub_1B9F0B82C(v47, v48, v108);
      v34 = v92;

      *(v37 + 14) = v49;
      v6 = v89;
      _os_log_impl(&dword_1B9F07000, v35, v36, "FeedItem %s appeared onscreen; %{public}s", v37, 0x16u);
      v50 = v91;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v50, -1, -1);
      v51 = v37;
      v5 = v90;
      MEMORY[0x1BFAF43A0](v51, -1, -1);

      (*v95)(v98, v40);
    }

    else
    {

      (*v95)(v14, v10);
    }

    swift_beginAccess();
    (*v94)(v9, v100, v5);
    v52 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v102 = v3[2];
    v54 = v102;
    v55 = sub_1B9FDAB44(v52);
    v57 = v54[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_51;
    }

    v61 = v56;
    if (v54[3] >= v60)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = v55;
        sub_1BA0F2C7C();
        v55 = v66;
      }
    }

    else
    {
      sub_1BA0F5584(v60, isUniquelyReferenced_nonNull_native);
      v55 = sub_1B9FDAB44(v52);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_53;
      }
    }

    v14 = v98;
    v63 = v102;
    if (v61)
    {
      (*(v6 + 40))(v102[7] + *(v6 + 72) * v55, v9, v5);
    }

    else
    {
      v102[(v55 >> 6) + 8] |= 1 << v55;
      *(v63[6] + 8 * v55) = v52;
      (*(v6 + 32))(v63[7] + *(v6 + 72) * v55, v9, v5);
      v64 = v63[2];
      v59 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v59)
      {
        goto LABEL_52;
      }

      v63[2] = v65;
    }

    v3[2] = v63;
    swift_endAccess();

    v23 = v31;
    v24 = v99;
    v21 = v96;
    v20 = v97;
    v28 = v93;
  }

  v29 = v23;
  v30 = v24;
  v31 = v23;
  if (v24)
  {
LABEL_15:
    v99 = (v30 - 1) & v30;
    v32 = *(*(v20 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v32)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v31 >= v28)
    {
      goto LABEL_31;
    }

    v30 = *(v21 + 8 * v31);
    ++v29;
    if (v30)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  sub_1BA4A27B8();
  result = sub_1BA4A83B8();
  __break(1u);
  return result;
}

void sub_1B9F52788(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1BA4A27B8();
  v4 = sub_1B9F51E1C(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
  v5 = 0;
  v12[1] = MEMORY[0x1BFAF17D0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1BA0E2A88(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1B9F528CC(uint64_t a1)
{
  if (!qword_1EDC5F1C0)
  {
    sub_1B9F47BAC(255, &qword_1EDC5F1C8, sub_1B9F5305C, MEMORY[0x1E69E6720]);
    sub_1B9F530BC(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EDC5F1C0);
    }
  }
}

unint64_t sub_1B9F52970()
{
  result = qword_1EDC5F0D8;
  if (!qword_1EDC5F0D8)
  {
    sub_1BA1D3954(255);
    sub_1BA1D37F8(&qword_1EDC5EAC0, 255, sub_1B9F52DB4, MEMORY[0x1E6981870]);
    sub_1BA1D37F8(&qword_1EDC5ECD8, 255, sub_1B9F53864, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F0D8);
  }

  return result;
}

uint64_t sub_1B9F52A58(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1BA4A7CC8();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_1B9F52B84(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_1BA4A7CC8() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_1BA4A7CC8();
  v2 = sub_1BA0E33D0(v5, v6);
LABEL_10:

  return sub_1BA08DAFC(a1, v2);
}

void sub_1B9F52B84(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1BA4A7CC8())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BA4A7C88();
    sub_1BA4A27B8();
    sub_1BA091AF8(&qword_1EDC6AD90, MEMORY[0x1E69A3DD0], MEMORY[0x1E69E81B8]);
    sub_1BA4A6DA8();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_1B9F52E48(a1);
      return;
    }

    while (1)
    {
      v16 = sub_1BA0227B0(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1BA4A7CF8())
      {
        sub_1BA4A27B8();
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1B9F52DB4(uint64_t a1)
{
  if (!qword_1EDC5EAB8)
  {
    sub_1B9F47BAC(255, &qword_1EDC5E970, sub_1B9F528CC, MEMORY[0x1E6981F40]);
    sub_1BA102F70();
    v1 = sub_1BA4A6268();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EAB8);
    }
  }
}

void sub_1B9F52E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

id sub_1B9F52F10()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v1 = [v0 aa_primaryAppleAccount];

  if (!v1)
  {
    v11 = 0;
    return (v11 & 1);
  }

  result = [v1 accountType];
  if (result)
  {
    v3 = result;
    v4 = [result identifier];

    if (v4)
    {
      v5 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v7 = v6;

      v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      if (v7)
      {
        if (v5 == v8 && v7 == v9)
        {

          v11 = 1;
        }

        else
        {
          v11 = sub_1BA4A8338();
        }

        goto LABEL_14;
      }
    }

    else
    {
      _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    }

    v11 = 0;
LABEL_14:

    return (v11 & 1);
  }

  __break(1u);
  return result;
}

void sub_1B9F5305C(uint64_t a1)
{
  if (!qword_1EDC5F1D0)
  {
    sub_1BA4A5B18();
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F1D0);
    }
  }
}

void *sub_1B9F530F0()
{
  v2 = v0;
  sub_1B9F53270();
  v3 = sub_1BA4A7068();
  sub_1BA4A6FD8();
  v4 = sub_1BA4A7078();

  if (!v1)
  {
    v5 = [v4 thumbnailImageData];
    if (v5)
    {
      v6 = v5;
      v7 = sub_1BA4A1608();
      v9 = v8;

      type metadata accessor for CGImage(0);
      v10 = sub_1BA4A6EC8();
      v2 = sub_1BA4A6EB8();
      sub_1B9F2BB4C(v7, v9);
    }

    else
    {

      return 0;
    }
  }

  return v2;
}

unint64_t sub_1B9F53270()
{
  result = qword_1EDC5E540;
  if (!qword_1EDC5E540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E540);
  }

  return result;
}

void sub_1B9F532BC(uint64_t a1)
{
  if (!qword_1EDC5F248)
  {
    type metadata accessor for AnimatedSnidgetCurrentValueText(255);
    sub_1B9F5366C(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F248);
    }
  }
}

id sub_1B9F53348(char a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CompoundDataSourceCollectionViewController();
  objc_msgSendSuper2(&v22, sel_viewIsAppearing_, a1 & 1);
  result = [v2 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_collectionViewBackgroundColor;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (v7)
  {
    v8 = *(v2 + v6);
  }

  else
  {
    v9 = [v2 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    if ((v21 | 8) == 0xC)
    {
      v10 = [objc_opt_self() secondarySystemBackgroundColor];
    }

    else
    {
      v10 = [objc_opt_self() systemGroupedBackgroundColor];
    }

    v8 = v10;
  }

  v11 = v7;
  [v5 setBackgroundColor_];

  v12 = [v2 traitCollection];
  v13 = sub_1BA4A7368();

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x128))(v13);
  v14 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_dataSourceAdaptor;
  result = swift_beginAccess();
  v15 = *(v2 + v14);
  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  if ((*(v15 + v16) & 1) == 0)
  {
    v17 = sub_1B9F23FB0();
    (*(*v17 + 256))(v2, 0);
  }

  v18 = *(v2 + v14);
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  if ((*(v18 + v19) & 1) == 0)
  {
    v20 = *(*v18 + 272);

    v20(0);
  }

  return result;
}

void sub_1B9F5366C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(TraitCollectionChangeHandling.changedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, a2, a3, a4) + 16);

  if (v8)
  {
    v10 = *(a4 + 16);

    return v10(a1, a2, a3, a4);
  }

  return result;
}

void sub_1B9F5374C(uint64_t a1)
{
  if (!qword_1EDC5EC08)
  {
    sub_1B9F5366C(255, &qword_1EDC6B640, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A5B08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EC08);
    }
  }
}

uint64_t TraitCollectionChangeHandling.changedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [a1 traitCollection];
  v9 = sub_1BA4A7348();

  v11[2] = a3;
  v11[3] = a4;
  v11[4] = v5;
  return sub_1B9F53908(sub_1B9F538BC, v11, v9);
}

void sub_1B9F53864()
{
  if (!qword_1EDC5ECD0)
  {
    v0 = sub_1BA4A59E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5ECD0);
    }
  }
}

uint64_t sub_1B9F53908(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 16 * v7 + 32);
      v12 = v11;
      result = v6(&v12);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v13 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1BA066D34(0, *(v8 + 16) + 1, 1);
          v8 = v13;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1BA066D34((v9 > 1), v10 + 1, 1);
          v8 = v13;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 16 * v10 + 32) = v11;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

BOOL sub_1B9F53A90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*(a4 + 8))(a3, a4);
  v6 = *(v5 + 16) + 1;
  v7 = 32;
  do
  {
    if (!--v6)
    {
      break;
    }

    v8 = *(v5 + v7);
    v7 += 16;
  }

  while (v4 != v8);
  v9 = v6 != 0;

  return v9;
}

uint64_t sub_1B9F53B14(uint64_t a1)
{
  v2 = v1;
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v2 + v10) = 1;
  v11 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v13 = *(v11 + 16);
  swift_unknownObjectRetain();
  v13(ObjectType, v11);
  swift_unknownObjectRelease();
  (*(*v2 + 296))(v9, a1, 1, 0, 0);
  return (*(v6 + 8))(v9, v5);
}

void sub_1B9F53CD0(uint64_t a1)
{
  sub_1B9F53A5C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(319);
    if (v2 <= 0x3F)
    {
      sub_1BA4A1898();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B9F53D84(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v58 = a4;
  v59 = a5;
  v55 = a2;
  v56 = a3;
  v61 = a1;
  v50 = *v5;
  v60 = type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  MEMORY[0x1EEE9AC00](v60, v7);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F11824(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v51 = &v48 - v13;
  v14 = sub_1BA4A3EA8();
  v53 = *(v14 - 8);
  v54 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v52 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F115CC(0, &qword_1EDC6ADE0, sub_1B9F1174C, MEMORY[0x1E69A3C40]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v48 - v21;
  v23 = sub_1BA4A64F8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = (&v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  *v27 = sub_1BA4A7308();
  (*(v24 + 104))(v27, *MEMORY[0x1E69E8020], v23);
  v28 = sub_1BA4A6528();
  result = (*(v24 + 8))(v27, v23);
  if (v28)
  {
    v30 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
    swift_beginAccess();
    (*(v19 + 16))(v22, v6 + v30, v18);
    sub_1BA4A1CA8();
    (*(v19 + 8))(v22, v18);
    v31 = v61;
    v32 = v10;
    if (v64 != 2 && (v64 & 1) != 0)
    {
      v33 = v52;
      sub_1BA4A3E28();
      v34 = v51;
      (*(v11 + 16))(v51, v31, v32);

      v35 = sub_1BA4A3E88();
      v36 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v63 = v49;
        *v37 = 136315650;
        v38 = sub_1BA4A85D8();
        LODWORD(v50) = v36;
        v40 = sub_1B9F0B82C(v38, v39, &v63);

        *(v37 + 4) = v40;
        *(v37 + 12) = 2080;
        v64 = 0;
        v65 = 0xE000000000000000;
        v62 = v6;
        sub_1BA4A7FB8();
        v41 = sub_1B9F0B82C(v64, v65, &v63);

        *(v37 + 14) = v41;
        *(v37 + 22) = 2048;
        v42 = sub_1BA4A4548();
        (*(v11 + 8))(v34, v32);
        *(v37 + 24) = v42;
        _os_log_impl(&dword_1B9F07000, v35, v50, "[%s <%s>]: [HealthAppInternal flag enabled]: applySnapshot(snapshot Applying snapshot with %ld sections", v37, 0x20u);
        v43 = v49;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v43, -1, -1);
        MEMORY[0x1BFAF43A0](v37, -1, -1);
      }

      else
      {
        (*(v11 + 8))(v34, v32);
      }

      (*(v53 + 8))(v33, v54);
    }

    v44 = [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
    if (v44 && (v44, (v55 & 1) != 0))
    {
      v45 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);
    }

    else
    {
      v45 = *(v6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource);
      if (v56)
      {
        sub_1BA4A46D8();
LABEL_14:

        v46 = v57;
        (*(v11 + 16))(v57, v31, v32);
        swift_storeEnumTagMultiPayload();
        v47 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState;
        swift_beginAccess();
        sub_1B9F8083C(v46, v6 + v47);
        return swift_endAccess();
      }
    }

    sub_1BA4A4718();
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F5455C(uint64_t a1)
{
  result = sub_1BA4A0FA8();
  if (v2 <= 0x3F)
  {
    result = sub_1BA4A1898();
    if (v3 <= 0x3F)
    {
      result = sub_1BA4A51B8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SwiftChartPoint(uint64_t a1)
{
  result = qword_1EDC6D998;
  if (!qword_1EDC6D998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B9F54664()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  result = swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    return (*(*v0 + 272))(0);
  }

  return result;
}

void GradientBackgroundPresenting.layoutGradient(yOffset:)(uint64_t a1, uint64_t a2, double a3)
{
  v12 = (*(a2 + 8))();
  v7 = [v3 view];
  if (v7)
  {
    v8 = v7;
    if (a3 > 0.0)
    {
      v9 = -a3;
    }

    else
    {
      v9 = -0.0;
    }

    [v7 bounds];
    v11 = v10;

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F547E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void GradientBackgroundPresenting.gradientHeight.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id sub_1B9F54940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1B9F549F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = sub_1B9F54D58(a1);
  v4 = *(*a3 + 232);
  swift_unknownObjectRetain();
  v5 = v4(v7);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1B9F54B1C(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v25[0] = a1;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - v13;
  v15 = *a2;
  swift_beginAccess();
  v16 = *(v7 + 16);
  v16(v14, v2 + v15, v6);
  v17 = sub_1BA4A4548();
  v18 = *(v7 + 8);
  v18(v14, v6);
  result = 0;
  if (v17 > v25[0])
  {
    v16(v14, v4 + v15, v6);
    v16(v10, v4 + v15, v6);
    v20 = sub_1BA4A4578();
    result = (v18)(v10, v6);
    if ((v25[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v20 + 16) > v25[0])
    {
      v21 = v20 + 16 * v25[0];
      v23 = *(v21 + 32);
      v22 = *(v21 + 40);

      v25[1] = v23;
      v25[2] = v22;
      v24 = sub_1BA4A44A8();

      v18(v14, v6);
      return v24;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F54D64(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

void sub_1B9F54DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

id sub_1B9F54E78(uint64_t *a1)
{
  v3 = v1;
  v56 = *v3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v76 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v50 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v57 = v3;
  type metadata accessor for CompoundSectionedDataSource(0);
  sub_1B9F0D9AC(0, qword_1EDC628A8, &protocol descriptor for LayoutConfigurationTypeProviding, 1);

  if (!swift_dynamicCast())
  {
    v55 = v10;
    *&v60 = 0;
    v58 = 0u;
    v59 = 0u;
    sub_1B9F3B8FC(&v58, &qword_1EDC628A0, qword_1EDC628A8, &protocol descriptor for LayoutConfigurationTypeProviding);
    v16 = v11;
    if (sub_1B9F54B1C(v11, &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot) || ((*(*v3 + 240))(v11) & 1) == 0)
    {
      v17 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v18 = v76;
      (*(v6 + 16))(v9, v3 + v17, v76);
      v19 = sub_1BA4A4578();
      v21 = v6 + 8;
      v20 = *(v6 + 8);
      v20(v9, v18);
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *(v19 + 16))
      {
        v52 = v20;
        v53 = v21;
        v50[1] = v2;
        v22 = v19 + 16 * v16;
        v23 = *(v22 + 32);
        v24 = *(v22 + 40);

        v25 = sub_1B9F3A92C(v23, v24);
        v27 = v26;
        v51 = v28;
        v30 = v29;

        v31 = sub_1B9F3A69C(v25, v27);
        v33 = v32;

        if (v31)
        {
          v50[0] = v16;
          ObjectType = swift_getObjectType();
          v35 = v33;
          v36 = *(v33 + 16);
          swift_unknownObjectRetain();
          v54 = v35;
          v36(ObjectType, v35);
          swift_unknownObjectRelease();
          *&v66 = v51;
          *(&v66 + 1) = v30;
          v37 = v76;
          v38 = sub_1BA4A44E8();
          v40 = v39;
          v52(v9, v37);

          if (v40)
          {
            v38 = 0;
          }

          v41 = v55;
          v74 = v31;
          v75 = v54;
          sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
          sub_1B9F0D9AC(0, &unk_1EDC60EE0, &protocol descriptor for CollectionViewLayoutSectionProviding, 1);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            if (*(&v59 + 1))
            {
              sub_1B9F1134C(&v58, &v66);
              v42 = *(&v67 + 1);
              v43 = v68;
              __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
              swift_unknownObjectRetain();
              v44 = sub_1B9F54B1C(v50[0], &OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot);
              *&v58 = v38;
              *(&v58 + 1) = v41;
              *&v59 = v44;
              v15 = (*(v43 + 8))(&v58, v42, v43);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              goto LABEL_3;
            }
          }

          else
          {
            *&v60 = 0;
            v58 = 0u;
            v59 = 0u;
          }

          v33 = v54;
        }

        else
        {

          *&v60 = 0;
          v58 = 0u;
          v59 = 0u;
        }

        sub_1B9F3B8FC(&v58, &qword_1EBBECC80, &unk_1EDC60EE0, &protocol descriptor for CollectionViewLayoutSectionProviding);
        *&v66 = 0;
        *(&v66 + 1) = 0xE000000000000000;
        sub_1BA4A7DF8();

        strcpy(&v66, "Data source ");
        BYTE13(v66) = 0;
        HIWORD(v66) = -5120;
        *&v58 = v31;
        *(&v58 + 1) = v33;
        sub_1B9F40D78(0, &qword_1EBBED838, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
        swift_unknownObjectRetain();
        v45 = sub_1BA4A6808();
        MEMORY[0x1BFAF1350](v45);

        MEMORY[0x1BFAF1350](0x20726F6620, 0xE500000000000000);
        *&v58 = v56;
        swift_getMetatypeMetadata();
        v46 = sub_1BA4A6808();
        MEMORY[0x1BFAF1350](v46);

        MEMORY[0x1BFAF1350](0xD000000000000019, 0x80000001BA4F21C0);
        v47 = *(&v66 + 1);
        v15 = v66;
        sub_1B9FF806C();
        swift_allocError();
        *v48 = v15;
        *(v48 + 8) = v47;
        *(v48 + 16) = 1;
        swift_willThrow();
        swift_unknownObjectRelease();
        return v15;
      }

      __break(1u);
    }

    else if (qword_1EDC6D2F0 == -1)
    {
LABEL_7:
      v70 = xmmword_1EDC6D338;
      v71 = unk_1EDC6D348;
      v72 = xmmword_1EDC6D358;
      v73 = unk_1EDC6D368;
      v66 = xmmword_1EDC6D2F8;
      v67 = *&qword_1EDC6D308;
      v68 = xmmword_1EDC6D318;
      v69 = unk_1EDC6D328;
      sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
      v62 = xmmword_1EDC6D338;
      v63 = unk_1EDC6D348;
      v64 = xmmword_1EDC6D358;
      v65 = unk_1EDC6D368;
      v58 = xmmword_1EDC6D2F8;
      v59 = *&qword_1EDC6D308;
      v60 = xmmword_1EDC6D318;
      v61 = unk_1EDC6D328;
      sub_1B9F1D9A4(&v66, &v57);
      return sub_1B9F293A8(&v58);
    }

    swift_once();
    goto LABEL_7;
  }

  sub_1B9F1134C(&v58, &v66);
  v13 = *(&v67 + 1);
  v14 = v68;
  __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
  *&v58 = v11;
  *(&v58 + 1) = v10;
  *&v59 = v12;
  v15 = LayoutConfigurationTypeProviding.layoutConfigurationDefaultLayout(for:)(&v58, v13, v14);
LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(&v66);
  return v15;
}

void sub_1B9F55570(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1B9F54DF4(255, a3, a4, a5, MEMORY[0x1E697E830]);
    v6 = sub_1BA4A5418();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B9F55630(uint64_t a1)
{
  v2 = v1;
  v31[1] = *v2;
  v4 = sub_1BA4A3EA8();
  v31[2] = *(v4 - 8);
  v31[3] = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v31 - v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v31 - v18;
  MEMORY[0x1BFAEC380](0, a1, v17);
  v20 = sub_1B9F55C08(v10, v19);
  v22 = v21;
  (*(v7 + 32))(v14, v10, v6);
  v34 = v20;
  v35 = v22;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, &unk_1EDC60EE0, &protocol descriptor for CollectionViewLayoutSectionProviding, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v32, v36);
    v23 = v37;
    v24 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v25 = sub_1BA4A1968();
    v26 = (*(v24 + 16))(v25, v23, v24);
    swift_unknownObjectRelease();
    v27 = *(v7 + 8);
    v27(v14, v6);
    v27(v19, v6);
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    swift_unknownObjectRelease();
    v28 = *(v7 + 8);
    v28(v14, v6);
    v28(v19, v6);
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    sub_1B9F3B8FC(v32, &qword_1EBBECC80, &unk_1EDC60EE0, &protocol descriptor for CollectionViewLayoutSectionProviding);
    v29 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_collapseEmptySections;
    swift_beginAccess();
    v26 = *(v2 + v29);
  }

  return v26 & 1;
}

unint64_t sub_1B9F55C08(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = v2;
  v66 = *v3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v56 - v9;
  v72 = a2;
  v11 = sub_1BA4A1968();
  v12 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v67 = *(v7 + 16);
  v67(v10, v3 + v12, v6);
  v13 = sub_1BA4A4548();
  v14 = *(v7 + 8);
  v14(v10, v6);
  if (v11 >= v13)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](0xD000000000000035, 0x80000001BA4F21E0);
    v68 = sub_1BA4A1968();
    v45 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v45);

    MEMORY[0x1BFAF1350](0xD00000000000001DLL, 0x80000001BA4F2220);
    v67(v10, v3 + v12, v6);
    v46 = sub_1BA4A4548();
    v14(v10, v6);
    v68 = v46;
    v47 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v47);

    MEMORY[0x1BFAF1350](0x206E692029, 0xE500000000000000);
    v68 = v3;
    type metadata accessor for CompoundSectionedDataSource(0);
    sub_1B9F46F90(&qword_1EBBF09F0, type metadata accessor for CompoundSectionedDataSource, &protocol conformance descriptor for CompoundSectionedDataSource);
    v48 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v48);

    v49 = " and the number of sections (";
    v50 = 0xD0000000000000B1;
LABEL_9:
    MEMORY[0x1BFAF1350](v50, v49 | 0x8000000000000000);
    v52 = v70;
    v53 = v71;
    sub_1BA1BA020();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    return swift_willThrow();
  }

  v63 = v3;
  v60 = v7 + 16;
  v67(v10, v3 + v12, v6);
  v15 = sub_1BA4A4578();
  v14(v10, v6);
  result = sub_1BA4A1968();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *(v15 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v59 = v12;
  v62 = v14;
  v17 = v15 + 16 * result;
  v18 = *(v17 + 32);
  v19 = *(v17 + 40);

  v58 = v18;
  v20 = sub_1B9F3A92C(v18, v19);
  v22 = v21;
  v61 = v23;
  v65 = v24;
  v25 = sub_1B9F3A69C(v20, v21);
  if (!v25)
  {

    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](91, 0xE100000000000000);
    v68 = v66;
    swift_getMetatypeMetadata();
    v51 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v51);

    MEMORY[0x1BFAF1350](0xD00000000000002DLL, 0x80000001BA4F2300);
    MEMORY[0x1BFAF1350](v20, v22);

    v49 = "child data source identifier ";
    v50 = 0xD00000000000006FLL;
    goto LABEL_9;
  }

  v27 = v25;
  v28 = v26;

  ObjectType = swift_getObjectType();
  v30 = *(v28 + 16);
  v31 = v27;
  v57 = ObjectType;
  v30(ObjectType, v28);
  v70 = v61;
  v71 = v65;
  v32 = v6;
  v33 = sub_1BA4A44E8();
  LOBYTE(v27) = v34;
  v62(v10, v6);
  if (v27)
  {
    v70 = 0;
    v71 = 0xE000000000000000;
    sub_1BA4A7DF8();
    MEMORY[0x1BFAF1350](91, 0xE100000000000000);
    v68 = v66;
    swift_getMetatypeMetadata();
    v35 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v35);

    MEMORY[0x1BFAF1350](0x6F6974636573205DLL, 0xED0000203A44496ELL);
    MEMORY[0x1BFAF1350](v58, v19);

    MEMORY[0x1BFAF1350](0xD000000000000015, 0x80000001BA4F23A0);
    MEMORY[0x1BFAF1350](v61, v65);

    MEMORY[0x1BFAF1350](544106784, 0xE400000000000000);
    v36 = v31;
    v37 = (*(v28 + 8))(v57, v28);
    MEMORY[0x1BFAF1350](v37);

    MEMORY[0x1BFAF1350](0xD00000000000003BLL, 0x80000001BA4F23C0);
    sub_1BA4A1998();
    sub_1B9F46F90(&unk_1EBBED850, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    v38 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v38);

    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4F2400);
    v67(v10, v63 + v59, v32);
    v39 = sub_1BA4A4548();
    v62(v10, v32);
    v68 = v39;
    v40 = sub_1BA4A82D8();
    MEMORY[0x1BFAF1350](v40);

    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4F2420);
    v68 = v36;
    v69 = v28;
    sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    swift_unknownObjectRetain();
    v41 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v41);

    v42 = v70;
    v43 = v71;
    sub_1BA1BA020();
    swift_allocError();
    *v44 = v42;
    v44[1] = v43;
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  else
  {

    v55 = sub_1BA4A1958();
    MEMORY[0x1BFAEC380](v55, v33);
    return v31;
  }
}

void sub_1B9F56438(uint64_t a1)
{
  if (!qword_1EDC5F720)
  {
    sub_1B9F56D28(255, &qword_1EDC5F838, sub_1B9F56E14, sub_1B9F56ECC);
    sub_1B9F5708C();
    v1 = sub_1BA4A49D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F720);
    }
  }
}

void sub_1B9F564F8(uint64_t a1)
{
  if (!qword_1EDC5EBD0)
  {
    sub_1B9F56438(255);
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438, MEMORY[0x1E695B218]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBD0);
    }
  }
}

uint64_t sub_1B9F565AC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *v3;
  a3();
  return (*(a2 + 16))(a1, *(v6 + 80), a2) & 1;
}

void sub_1B9F56640(uint64_t a1)
{
  if (!qword_1EDC5EBC0)
  {
    sub_1B9F56B68(255);
    sub_1B9F57C6C(255);
    sub_1B9F564F8(255);
    sub_1B9F56438(255);
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438, MEMORY[0x1E695B218]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57DAC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBC0);
    }
  }
}

void sub_1B9F5677C(uint64_t a1)
{
  if (!qword_1EDC5EBB8)
  {
    sub_1B9F56640(255);
    sub_1B9F51694(255, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1B9F56B68(255);
    sub_1B9F57C6C(255);
    sub_1B9F564F8(255);
    sub_1B9F56438(255);
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438, MEMORY[0x1E695B218]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57DAC();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57E6C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBB8);
    }
  }
}

void sub_1B9F5692C()
{
  sub_1B9F292B4(&xmmword_1EDC6D2F8);
  v0 = *(MEMORY[0x1E69DC5C0] + 16);
  xmmword_1EDC6D358 = *MEMORY[0x1E69DC5C0];
  unk_1EDC6D368 = v0;
  v1 = objc_opt_self();
  v2 = [v1 absoluteDimension_];
  v3 = *(&xmmword_1EDC6D2F8 + 1);
  *(&xmmword_1EDC6D2F8 + 1) = v2;

  v4 = [v1 absoluteDimension_];
  v5 = qword_1EDC6D308;
  qword_1EDC6D308 = v4;

  v6 = qword_1EDC6D310;
  v8 = xmmword_1EDC6D318;
  v7 = unk_1EDC6D328;
  *&qword_1EDC6D310 = 0u;
  *(&xmmword_1EDC6D318 + 8) = 0u;

  sub_1B9F1DA18(v6, v8, *(&v8 + 1), v7);
}

void sub_1B9F569EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1B9F56B68(uint64_t a1)
{
  if (!qword_1EDC5EBC8)
  {
    sub_1B9F564F8(255);
    sub_1B9F56438(255);
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438, MEMORY[0x1E695B218]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5EBC8);
    }
  }
}

uint64_t sub_1B9F56C9C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_collapseEmptySections;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_1B9F56D28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1BA4A48A8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t Supplementary<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = *(a1 + 2);
  v9 = v2[4];
  v7 = v4;
  v8 = v5;
  return (*(a2 + 8))(&v7, *(v3 + 80), a2);
}

uint64_t sub_1B9F56F00(__int128 *a1)
{
  v7 = *a1;
  v2 = *(a1 + 2);
  v3 = (*v1 + OBJC_IVAR____TtC18HealthExperienceUI32MutableArrayDataSourceWithLayout_layoutSectionProvider);
  swift_beginAccess();
  v4 = *v3;
  v8 = v7;
  v9 = v2;

  v5 = v4(&v8);

  return v5;
}

void sub_1B9F56FA0(uint64_t a1)
{
  if (!qword_1EDC5F7B0)
  {
    type metadata accessor for SnidgetSwiftChartView.AverageLine(255);
    sub_1B9F48334(qword_1EDC673F8, type metadata accessor for SnidgetSwiftChartView.AverageLine, &unk_1BA4D4744);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F7B0);
    }
  }
}

unint64_t sub_1B9F5708C()
{
  result = qword_1EDC5F840;
  if (!qword_1EDC5F840)
  {
    sub_1B9F56D28(255, &qword_1EDC5F838, sub_1B9F56E14, sub_1B9F56ECC);
    sub_1B9F57238();
    sub_1B9F579CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F840);
  }

  return result;
}

uint64_t sub_1B9F57144(void *a1, uint64_t (*a2)(void, void), uint64_t a3, uint64_t a4)
{
  result = a2(*a1, a1[1]);
  if (!result)
  {
    sub_1BA4A7DF8();

    v5 = sub_1BA4A85D8();
    MEMORY[0x1BFAF1350](v5);

    MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4EAFF0);
    sub_1B9FF806C();
    swift_allocError();
    *v6 = 91;
    *(v6 + 8) = 0xE100000000000000;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B9F57238()
{
  result = qword_1EDC5F740;
  if (!qword_1EDC5F740)
  {
    sub_1B9F56E14(255);
    sub_1B9F578EC();
    sub_1B9F48334(qword_1EDC675F0, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks, &unk_1BA4D4624);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F740);
  }

  return result;
}

void *ListLayoutConfiguration.layout(for:)(void *a1)
{
  v2 = v1;
  v34 = a1;
  v33 = sub_1BA4A47C8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A47D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A47B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A4848();
  v35 = *(v17 - 8);
  v36 = v17;
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x1E69DC238], v12, v19);
  sub_1BA4A47E8();
  (*(v8 + 104))(v11, *MEMORY[0x1E69DC280], v7);
  sub_1BA4A4808();
  v22 = [objc_opt_self() clearColor];
  sub_1BA4A4818();
  if (*(v2 + 192) == 1)
  {
    sub_1B9F0F1B8(*(v2 + 160), *(v2 + 168));
  }

  sub_1BA4A4788();
  if (*(v2 + 193) == 1)
  {
    sub_1B9F0F1B8(*(v2 + 176), *(v2 + 184));
  }

  sub_1BA4A4798();
  sub_1BA4A4828();
  v23 = type metadata accessor for ListLayoutConfiguration(0);
  (*(v8 + 16))(v11, v2 + *(v23 + 88), v7);
  sub_1BA4A4808();
  (*(v3 + 16))(v6, v2 + *(v23 + 92), v33);
  sub_1BA4A47F8();
  v24 = *(v2 + 40);
  sub_1BA4A4818();
  sub_1B9F0F1B8(*(v2 + 128), *(v2 + 136));
  sub_1BA4A4838();
  if ((*(v2 + 120) & 1) == 0)
  {
    v25 = sub_1BA4A47A8();
    sub_1BA4A4618();
    v25(v37, 0);
  }

  v26 = [v34 traitCollection];
  sub_1BA4A7368();

  sub_1B9F0ADF8(0, &qword_1EDC6B530, 0x1E6995580);
  v27 = sub_1BA4A7638();
  [v27 setContentInsetsReference_];
  sub_1BA4A65A8();
  [v27 setInterGroupSpacing_];
  [v27 setContentInsetsReference_];
  [v27 setContentInsets_];
  v37[8] = ListLayoutConfiguration.headerItem.getter();
  v28 = 0;
  v37[9] = ListLayoutConfiguration.footerItem.getter();
  v37[0] = MEMORY[0x1E69E7CC0];
  while (v28 != 2)
  {
    v29 = v37[v28++ + 8];
    if (v29)
    {
      v30 = v29;
      MEMORY[0x1BFAF1510]();
      if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
    }
  }

  sub_1B9F6A804(0, &qword_1EDC6B4E0, &qword_1EDC6B4E8, 0x1E6995548);
  swift_arrayDestroy();
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8, 0x1E6995548);
  v31 = sub_1BA4A6AE8();

  [v27 setBoundarySupplementaryItems_];

  [v27 setInterGroupSpacing_];
  (*(v35 + 8))(v21, v36);
  return v27;
}

unint64_t sub_1B9F578EC()
{
  result = qword_1EDC5F750;
  if (!qword_1EDC5F750)
  {
    sub_1B9F56E84(255);
    sub_1B9F48334(qword_1EDC67548, type metadata accessor for SnidgetSwiftChartView.BarChartMarks, &unk_1BA4D46E4);
    sub_1B9F48334(qword_1EDC674A0, type metadata accessor for SnidgetSwiftChartView.LineChartMarks, &unk_1BA4D4684);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F750);
  }

  return result;
}

unint64_t sub_1B9F579CC()
{
  result = qword_1EDC5F7A0;
  if (!qword_1EDC5F7A0)
  {
    sub_1B9F56ECC(255);
    type metadata accessor for SnidgetSwiftChartView.AverageLine(255);
    sub_1B9F48334(qword_1EDC673F8, type metadata accessor for SnidgetSwiftChartView.AverageLine, &unk_1BA4D4744);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F7A0);
  }

  return result;
}

id ListLayoutConfiguration.headerItem.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0;
  }

  v2 = *(v0 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:*MEMORY[0x1E69DDC08] alignment:1];
  [v7 setPinToVisibleBounds_];

  return v7;
}

id ListLayoutConfiguration.footerItem.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  if (!v2)
  {
    return 0;
  }

  v3 = objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = [v3 sizeWithWidthDimension:v4 heightDimension:v5];
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:*MEMORY[0x1E69DDC00] alignment:4];
  [v7 setPinToVisibleBounds_];

  return v7;
}

void sub_1B9F57C6C(uint64_t a1)
{
  if (!qword_1EDC5E868)
  {
    sub_1BA4A1728();
    sub_1B9F48334(&qword_1EDC6E260, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1BA4A6718();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E868);
    }
  }
}

uint64_t sub_1B9F57D00(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v9 = *a1;
  v4 = *(a1 + 2);
  sub_1B9F57F34(a1, a2, a4);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = v9;
  v11 = v4;
  v7 = (*(v6 + 8))(&v10, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v7;
}

unint64_t sub_1B9F57DAC()
{
  result = qword_1EDC5E860;
  if (!qword_1EDC5E860)
  {
    sub_1B9F57C6C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E860);
  }

  return result;
}

unint64_t sub_1B9F57E6C()
{
  result = qword_1EDC5E678;
  if (!qword_1EDC5E678)
  {
    sub_1B9F51694(255, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E678);
  }

  return result;
}

uint64_t sub_1B9F57F34(void x0_0, void x1_0, uint64_t (*a1)(void))
{
  a1();
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, &unk_1EDC60EE0, &protocol descriptor for CollectionViewLayoutSectionProviding, 1);
  swift_unknownObjectRetain();
  return swift_dynamicCast();
}

void sub_1B9F57FD4(uint64_t a1)
{
  if (!qword_1EDC5EC68)
  {
    sub_1BA4A54D8();
    v1 = sub_1BA4A5B08();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EC68);
    }
  }
}

void sub_1B9F5802C(uint64_t a1)
{
  if (!qword_1EDC68450)
  {
    sub_1B9F53A5C(255);
    v3 = v2;
    v4 = sub_1B9F58348(&qword_1EDC5E6E8, sub_1B9F53A5C, sub_1B9F58314, MEMORY[0x1E69E6320]);
    v6 = type metadata accessor for SnidgetAnimation(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDC68450);
    }
  }
}

id sub_1B9F580EC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v14 = a1[2];
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v31[0] = xmmword_1EDC6D388;
  v31[1] = xmmword_1EDC6D398;
  v31[2] = xmmword_1EDC6D3A8;
  v31[3] = xmmword_1EDC6D3B8;
  v31[4] = xmmword_1EDC6D3C8;
  v31[5] = unk_1EDC6D3D8;
  v31[6] = xmmword_1EDC6D3E8;
  v31[7] = unk_1EDC6D3F8;
  v3 = *(&xmmword_1EDC6D388 + 1);
  v4 = xmmword_1EDC6D388;
  v5 = *(&xmmword_1EDC6D398 + 1);
  v32 = xmmword_1EDC6D398;
  v7 = xmmword_1EDC6D3A8;
  v6 = xmmword_1EDC6D3B8;
  v30 = *(&xmmword_1EDC6D3E8 + 1);
  v28 = *(&xmmword_1EDC6D3C8 + 8);
  v29 = *&qword_1EDC6D3E0;
  v27 = *(&xmmword_1EDC6D3B8 + 8);
  v8 = qword_1EDC6D400;
  sub_1B9F1D9A4(v31, v18);
  v9 = [v1 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  LOBYTE(v9) = sub_1BA4A7528();
  if (v9)
  {
    v11 = *(&v31[0] + 1);
    v3 = [objc_opt_self() estimatedDimension_];
  }

  sub_1B9F1DA18(v5, v7, *(&v7 + 1), v6);
  static GridLayoutEngine.standard.getter(v17);
  v16[0] = v2;
  v16[1] = v1;
  v16[2] = v14;
  v12 = GridLayoutEngine.layout(for:)(v16);
  v15[2] = v17[2];
  v15[3] = v17[3];
  v15[4] = v17[4];
  v15[0] = v17[0];
  v15[1] = v17[1];
  sub_1B9F5A690(v15);
  v19 = 0u;
  v20 = 0u;
  v21 = v27;
  v18[0] = v4;
  v18[1] = v3;
  v18[2] = v32;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v4;
  v26 = v8;
  sub_1B9F1DA58(v18);
  return v12;
}

uint64_t sub_1B9F58348(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

uint64_t sub_1B9F583C4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  swift_beginAccess();
  v4 = qword_1EDC68DF0[0];
  sub_1B9F5869C();
  v5 = sub_1BA4A7648();
  result = sub_1B9F58798(MEMORY[0x1E69E7CC0]);
  if (v4 <= 0.0)
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  else
  {
    *a1 = v4;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = result;
    *(a1 + 32) = a2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = v5;
    *(a1 + 64) = sub_1B9F58BC4;
    *(a1 + 72) = 0;
  }

  return result;
}

void sub_1B9F584B8(uint64_t a1)
{
  if (!qword_1EDC5F320)
  {
    sub_1B9F58524();
    v1 = sub_1BA4A5218();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F320);
    }
  }
}

unint64_t sub_1B9F58524()
{
  result = qword_1EDC5EA10;
  if (!qword_1EDC5EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EA10);
  }

  return result;
}

unint64_t sub_1B9F58578()
{
  result = qword_1EDC5EDF0;
  if (!qword_1EDC5EDF0)
  {
    sub_1B9F54DF4(255, &qword_1EDC5EDE8, sub_1B9F54AE0, sub_1B9F584B8, MEMORY[0x1E697E830]);
    sub_1B9F54D64(&qword_1EDC5EE00, sub_1B9F54AE0, sub_1B9F58C1C);
    sub_1B9F48334(&qword_1EDC5F328, sub_1B9F584B8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EDF0);
  }

  return result;
}

unint64_t sub_1B9F5869C()
{
  result = qword_1EDC5E2F0;
  if (!qword_1EDC5E2F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC5E2F0);
  }

  return result;
}

unint64_t sub_1B9F586E8()
{
  result = qword_1EDC5F030;
  if (!qword_1EDC5F030)
  {
    sub_1B9F56C54(255);
    sub_1B9F58D10();
    sub_1B9F48334(&qword_1EDC5EBF0, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F030);
  }

  return result;
}

unint64_t sub_1B9F587A0()
{
  result = qword_1EDC5EE78;
  if (!qword_1EDC5EE78)
  {
    sub_1B9F555E8(255);
    sub_1B9F58924();
    sub_1B9F48334(&qword_1EDC5EC70, sub_1B9F57FD4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE78);
  }

  return result;
}

unint64_t sub_1B9F58850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F82938(0);
    v3 = sub_1BA4A8098();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1B9F1D2E0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1B9F58924()
{
  result = qword_1EDC5EEE8;
  if (!qword_1EDC5EEE8)
  {
    sub_1B9F55BC0(255);
    sub_1B9F586E8();
    sub_1B9F48334(&qword_1EDC5EC88, sub_1B9F57F00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EEE8);
  }

  return result;
}

id GridLayoutEngine.layout(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v1[1];
  v25 = *v1;
  v26 = v5;
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v12 = v10(&v33);
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = v11;
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v23 = v8;
  v24 = v9;

  v13 = GridLayoutEngine.numberOfItemSlotsInRow(context:interItemSpacing:accessibilityRowItems:)(&v33, &v23, v12);

  v14 = objc_opt_self();
  v15 = &selRef_estimatedDimension_;
  if (v13 != 1)
  {
    v15 = &selRef_uniformAcrossSiblingsWithEstimate_;
  }

  v16 = [v14 *v15];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 fixedSpacing_];
  v20 = sub_1B9F5A448(v13, v18, v19);

  v21 = [objc_opt_self() sectionWithGroup_];
  [v21 setContentInsetsReference_];
  [v21 setInterGroupSpacing_];
  [v7 spacing];
  [v21 contentInsets];
  [v21 setContentInsets_];

  return v21;
}

double sub_1B9F58BC4(uint64_t a1)
{
  v1 = [*(a1 + 8) traitCollection];
  sub_1BA4A7368();

  sub_1BA4A6598();
  return result;
}

unint64_t sub_1B9F58C1C()
{
  result = qword_1EDC5EE30;
  if (!qword_1EDC5EE30)
  {
    sub_1B9F54DF4(255, &qword_1EDC5EE28, sub_1B9F555E8, sub_1B9F5802C, MEMORY[0x1E697E830]);
    sub_1B9F587A0();
    sub_1B9F48334(&qword_1EDC68458, sub_1B9F5802C, &protocol conformance descriptor for SnidgetAnimation<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EE30);
  }

  return result;
}

unint64_t sub_1B9F58D10()
{
  result = qword_1EDC5F1B8;
  if (!qword_1EDC5F1B8)
  {
    sub_1B9F56AA0(255);
    sub_1B9F56640(255);
    sub_1B9F51694(255, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1B9F56B68(255);
    sub_1B9F57C6C(255);
    sub_1B9F564F8(255);
    sub_1B9F56438(255);
    sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438, MEMORY[0x1E695B218]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57DAC();
    swift_getOpaqueTypeConformance2();
    sub_1B9F57E6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F1B8);
  }

  return result;
}

uint64_t GridLayoutEngine.numberOfItemSlotsInRow(context:interItemSpacing:accessibilityRowItems:)(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = v3;
  v138 = sub_1BA4A3EA8();
  v8 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v9);
  v129 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v128 = &v125 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v126 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v125 = &v125 - v19;
  MEMORY[0x1EEE9AC00](v20, v21);
  v127 = &v125 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v130 = &v125 - v25;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v125 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v125 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v125 - v36;
  v38 = *(a1 + 8);
  v133 = *(a1 + 16);
  v39 = a2[1];
  v132 = *a2;
  v131 = v39;
  v40 = *v4;
  v41 = *(v4 + 8);
  v42 = *(v4 + 16);
  v43 = *(v4 + 24);
  v44 = *(v4 + 48);
  v147 = *(v4 + 32);
  v148 = v44;
  v149 = *(v4 + 64);
  [objc_msgSend(v38 container)];
  v46 = v45;
  swift_unknownObjectRelease();
  v140 = v40;
  v141 = v41;

  v136 = v38;
  v47 = [v38 traitCollection];
  v48 = sub_1BA4A7368();

  v49 = GridLayoutEngine.WidthConfiguration.width(for:)(v48);

  v140 = v40;
  v141 = v41;
  v142 = v42;
  v134 = v42;
  v137 = v43;
  v143 = v43;
  v50 = *(v4 + 48);
  v144 = *(v4 + 32);
  v145 = v50;
  v146 = *(v4 + 64);
  sub_1B9F59FBC(v49, a3, v46);
  v52 = v51;
  sub_1BA4A3DD8();
  v53 = sub_1BA4A3E88();
  v54 = sub_1BA4A6F98();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v140 = v56;
    *v55 = 136315906;
    *(v55 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
    *(v55 + 12) = 2048;
    *(v55 + 14) = v52;
    *(v55 + 22) = 2048;
    *(v55 + 24) = v49;
    *(v55 + 32) = 2048;
    *(v55 + 34) = v46;
    _os_log_impl(&dword_1B9F07000, v53, v54, "[%s]: Computed item slots=%ld for minimum width=%f with totalWidth=%f", v55, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v56);
    MEMORY[0x1BFAF43A0](v56, -1, -1);
    v57 = v52;
    v58 = v138;
    MEMORY[0x1BFAF43A0](v55, -1, -1);

    v59 = *(v8 + 8);
    v60 = v37;
    v61 = v58;
    v52 = v57;
  }

  else
  {

    v59 = *(v8 + 8);
    v60 = v37;
    v61 = v138;
  }

  v135 = v59;
  v59(v60, v61);
  v62 = v137;
  if (v137)
  {
    v63 = v52;
    v64 = v134;
    v140 = v134;
    v141 = v137;

    v65 = [v136 traitCollection];
    v66 = sub_1BA4A7368();

    v67 = GridLayoutEngine.WidthConfiguration.width(for:)(v66);

    v140 = v40;
    v141 = v41;
    v142 = v64;
    v143 = v62;
    v144 = v147;
    v145 = v148;
    v146 = v149;
    sub_1B9F59FBC(v67, a3, v46);
    v69 = v68;
    sub_1BA4A3DD8();
    v70 = sub_1BA4A3E88();
    v71 = sub_1BA4A6F98();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v140 = v73;
      *v72 = 136315906;
      *(v72 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
      *(v72 + 12) = 2048;
      *(v72 + 14) = v69;
      *(v72 + 22) = 2048;
      *(v72 + 24) = v67;
      *(v72 + 32) = 2048;
      *(v72 + 34) = v46;
      _os_log_impl(&dword_1B9F07000, v70, v71, "[%s]: Computed item slots=%ld for maximum width=%f with totalWidth=%f", v72, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v73);
      v74 = v138;
      MEMORY[0x1BFAF43A0](v73, -1, -1);
      MEMORY[0x1BFAF43A0](v72, -1, -1);

      v75 = v33;
      v76 = v74;
    }

    else
    {

      v75 = v33;
      v76 = v138;
    }

    v84 = v135;
    result = (v135)(v75, v76);
    v86 = v133;
    v52 = v63;
    if (v63 < v69)
    {
      v87 = v129;
      sub_1BA4A3DD8();
      v88 = sub_1BA4A3E88();
      v89 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v140 = v91;
        *v90 = 136315650;
        *(v90 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
        *(v90 + 12) = 2048;
        *(v90 + 14) = v63;
        *(v90 + 22) = 2048;
        *(v90 + 24) = v69;
        _os_log_impl(&dword_1B9F07000, v88, v89, "[%s]: Unexpected configuration: itemSlotsForMinWidth=%ld >= itemSlotsForMaxWidth=%ld", v90, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x1BFAF43A0](v91, -1, -1);
        MEMORY[0x1BFAF43A0](v90, -1, -1);
      }

      v92 = v87;
LABEL_40:
      v84(v92, v138);
      return 1;
    }
  }

  else
  {
    sub_1BA4A3DD8();
    v77 = sub_1BA4A3E88();
    v78 = sub_1BA4A6F98();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v140 = v80;
      *v79 = 136315394;
      *(v79 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
      *(v79 + 12) = 2048;
      *(v79 + 14) = v52;
      _os_log_impl(&dword_1B9F07000, v77, v78, "[%s]: No maximum width provided, using minWidthOfItem=%ld", v79, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v81 = v138;
      MEMORY[0x1BFAF43A0](v80, -1, -1);
      MEMORY[0x1BFAF43A0](v79, -1, -1);

      v82 = v29;
      v83 = v81;
    }

    else
    {

      v82 = v29;
      v83 = v138;
    }

    v84 = v135;
    result = (v135)(v82, v83);
    v69 = v52;
    v86 = v133;
  }

  if ((v69 & 0x8000000000000000) == 0)
  {
    if (v86 <= v69)
    {
      v99 = v130;
      sub_1BA4A3DD8();
      v100 = sub_1BA4A3E88();
      v101 = sub_1BA4A6F98();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v140 = v103;
        *v102 = 136315906;
        *(v102 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
        *(v102 + 12) = 2048;
        *(v102 + 14) = v86;
        *(v102 + 22) = 2048;
        *(v102 + 24) = v69;
        *(v102 + 32) = 2048;
        *(v102 + 34) = v69;
        _os_log_impl(&dword_1B9F07000, v100, v101, "[%s]: numberOfItems=%ld <= itemSlotsForMaxWidth=%ld, returning %ld", v102, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x1BFAF43A0](v103, -1, -1);
        MEMORY[0x1BFAF43A0](v102, -1, -1);
      }

      v84(v99, v138);
    }

    else if (v86 < v69 || v52 < v86)
    {
      if (v86 < v52)
      {
        v114 = v126;
        sub_1BA4A3DD8();
        swift_unknownObjectRetain();
        v115 = sub_1BA4A3E88();
        v116 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v140 = v118;
          *v117 = 136315394;
          *(v117 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
          *(v117 + 12) = 2048;
          *(v117 + 14) = v86;
          swift_unknownObjectRelease();
          _os_log_impl(&dword_1B9F07000, v115, v116, "[%s]: Unexpected number of items in section: %ld", v117, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v118);
          MEMORY[0x1BFAF43A0](v118, -1, -1);
          MEMORY[0x1BFAF43A0](v117, -1, -1);
        }

        else
        {

          swift_unknownObjectRelease();
        }

        v92 = v114;
        goto LABEL_40;
      }

      v119 = v52;
      v120 = v125;
      sub_1BA4A3DD8();
      v121 = sub_1BA4A3E88();
      v122 = sub_1BA4A6F98();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v140 = v124;
        *v123 = 136315906;
        *(v123 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
        *(v123 + 12) = 2048;
        *(v123 + 14) = v86;
        *(v123 + 22) = 2048;
        *(v123 + 24) = v119;
        *(v123 + 32) = 2048;
        *(v123 + 34) = v119;
        _os_log_impl(&dword_1B9F07000, v121, v122, "[%s]: numberOfItems=%ld > itemSlotsForMinWidth=%ld, returning %ld", v123, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v124);
        MEMORY[0x1BFAF43A0](v124, -1, -1);
        MEMORY[0x1BFAF43A0](v123, -1, -1);
      }

      v84(v120, v138);
      v69 = v119;
    }

    else
    {
      v93 = v52;
      v94 = v127;
      sub_1BA4A3DD8();
      v95 = sub_1BA4A3E88();
      v96 = sub_1BA4A6F98();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v140 = v98;
        *v97 = 136315906;
        *(v97 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
        *(v97 + 12) = 2048;
        *(v97 + 14) = v86;
        *(v97 + 22) = 2048;
        *(v97 + 24) = v93;
        *(v97 + 32) = 2048;
        *(v97 + 34) = v86;
        _os_log_impl(&dword_1B9F07000, v95, v96, "[%s]: numberOfItems=%ld <= itemSlotsForMinWidth=%ld, returning %ld", v97, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v98);
        MEMORY[0x1BFAF43A0](v98, -1, -1);
        MEMORY[0x1BFAF43A0](v97, -1, -1);
      }

      v84(v94, v138);
      v69 = v86;
    }

    v104 = v132;
    v105 = v131;
    v140 = v40;
    v141 = v41;
    v142 = v134;
    v143 = v137;
    v144 = v147;
    v145 = v148;
    v146 = v149;
    v106 = [v136 traitCollection];
    v139[0] = v104;
    v139[1] = v105;
    v107 = sub_1B9F5A328(v106, v139);
    LOBYTE(v105) = v108;

    if ((v105 & 1) != 0 || v107 >= v69)
    {
      return v69;
    }

    v109 = v128;
    sub_1BA4A3DD8();
    v110 = sub_1BA4A3E88();
    v111 = sub_1BA4A6F98();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v140 = v113;
      *v112 = 136315906;
      *(v112 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v140);
      *(v112 + 12) = 2048;
      *(v112 + 14) = v107;
      *(v112 + 22) = 2048;
      *(v112 + 24) = v69;
      *(v112 + 32) = 2048;
      *(v112 + 34) = v107;
      _os_log_impl(&dword_1B9F07000, v110, v111, "[%s]: itemSlotsForAccessibility=%ld < itemSlotsForGridLayout=%ld, returning %ld", v112, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x1BFAF43A0](v113, -1, -1);
      MEMORY[0x1BFAF43A0](v112, -1, -1);
    }

    v135(v109, v138);
    return v107;
  }

  __break(1u);
  return result;
}

double GridLayoutEngine.WidthConfiguration.width(for:)(uint64_t a1)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *(v1 + 1);
  if (*(v9 + 16))
  {
    v10 = sub_1B9F82C68(a1);
    if (v11)
    {
      v8 = *(*(v9 + 56) + 8 * v10);
    }
  }

  sub_1BA4A3DD8();
  v12 = sub_1BA4A3E88();
  v13 = sub_1BA4A6F98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_1B9F0B82C(0xD000000000000012, 0x80000001BA4BB700, &v21);
    *(v14 + 12) = 2048;
    *(v14 + 14) = v8;
    *(v14 + 22) = 2080;
    v20 = a1;
    type metadata accessor for HKWidthDesignation(0);
    v16 = sub_1BA4A6808();
    v18 = sub_1B9F0B82C(v16, v17, &v21);

    *(v14 + 24) = v18;
    _os_log_impl(&dword_1B9F07000, v12, v13, "[%s]:Returning width=%f for widthDesignation=%s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  return v8;
}

void sub_1B9F59FBC(double a1, double a2, double a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + a3) / (a1 + a2);
  if (COERCE__INT64(fabs(v12)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v12 <= 0)
  {
    v13 = v9;
    sub_1BA4A3DD8();
    v14 = sub_1BA4A3E88();
    v15 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315650;
      *(v16 + 4) = sub_1B9F0B82C(0xD000000000000010, 0x80000001BA4BB720, &v19);
      *(v16 + 12) = 2048;
      *(v16 + 14) = a2 + a3;
      *(v16 + 22) = 2048;
      *(v16 + 24) = a1 + a2;
      _os_log_impl(&dword_1B9F07000, v14, v15, "[%s]: numberOfItemsFittingInRow is 0 for totalWidth=%f and widthPerItem=%f, returning 1", v16, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1BFAF43A0](v17, -1, -1);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
    }

    (*(v7 + 8))(v11, v13);
  }
}

uint64_t sub_1B9F5A22C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SnidgetAnimation(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1BA4A5978();
  sub_1BA4A5828();
  sub_1BA4A5418();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B9F5A328(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = [a1 preferredContentSizeCategory];
  v5 = sub_1BA4A7548();
  v6 = sub_1BA4A7528();

  if (v6)
  {
    v7 = sub_1BA4A7368();
    if (v2)
    {
      v8 = v2;
      if (!*(v2 + 16))
      {
LABEL_11:

        return v3;
      }
    }

    else
    {
      v9 = v7;
      if (qword_1EBBE82C8 != -1)
      {
        swift_once();
      }

      v3 = qword_1EBBEB2E0;
      v8 = *algn_1EBBEB2E8;

      v7 = v9;
      if (!*(v8 + 16))
      {
        goto LABEL_11;
      }
    }

    v10 = sub_1B9F82C68(v7);
    if (v11)
    {
      v3 = *(*(v8 + 56) + 8 * v10);
    }

    goto LABEL_11;
  }

  return 0;
}

id sub_1B9F5A448(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 1.0 / a1;
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension_];
  v9 = objc_opt_self();
  v10 = [v9 sizeWithWidthDimension:v8 heightDimension:a2];

  v11 = [objc_opt_self() itemWithLayoutSize_];
  v12 = [v7 fractionalWidthDimension_];
  [a2 dimension];
  v13 = [v7 estimatedDimension_];
  v14 = [v9 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() horizontalGroupWithLayoutSize:v14 repeatingSubitem:v11 count:a1];
  [v15 setInterItemSpacing_];

  return v15;
}

uint64_t sub_1B9F5A60C(uint64_t a1)
{
  result = sub_1BA4A12C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t CellRegistering<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *a1;
  v5 = *(a1 + 2);
  v9 = v2[4];
  v7 = v4;
  v8 = v5;
  return (*(a2 + 8))(&v7, *(v3 + 80), a2);
}

uint64_t sub_1B9F5A770(uint64_t a1)
{
  result = sub_1BA4A12C8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B9F5A834()
{
  result = qword_1EDC5ED00;
  if (!qword_1EDC5ED00)
  {
    sub_1B9F5A968(255, &qword_1EDC5ECF8, MEMORY[0x1E697F960]);
    sub_1B9F5ADA4();
    sub_1B9F5AF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ED00);
  }

  return result;
}

uint64_t HideableDataSource<>.layout(for:)(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  v7 = *a1;
  v5 = *(a1 + 2);
  v10 = sub_1B9F437D0();
  v8 = v7;
  v9 = v5;
  return (*(a2 + 8))(&v8, *(v4 + 80), a2);
}

void sub_1B9F5A968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B9F5AA38(255, &qword_1EDC5ED70, MEMORY[0x1E697F960]);
    v7 = v6;
    sub_1B9F5AB80(255, &qword_1EDC5F1F8, sub_1B9F57FD4);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F5AA38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnimatedNumericText(255);
    v7 = type metadata accessor for AnimatedCharacterText(255);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *sub_1B9F5AAA8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_projectBox();
  swift_beginAccess();
  sub_1B9F37E38(v8, v7);
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5ACE4(v7, type metadata accessor for ListLayoutConfiguration);
  return v9;
}

void sub_1B9F5AB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A5418();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F5ABDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F5AC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5AC84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5ACE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5AD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B9F5ADA4()
{
  result = qword_1EDC5ED78;
  if (!qword_1EDC5ED78)
  {
    sub_1B9F5AA38(255, &qword_1EDC5ED70, MEMORY[0x1E697F960]);
    sub_1B9F5ABDC(qword_1EDC67E80, type metadata accessor for AnimatedNumericText, &unk_1BA4CCA7C);
    sub_1B9F5ABDC(&qword_1EDC67BD8, type metadata accessor for AnimatedCharacterText, &unk_1BA4CCA2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5ED78);
  }

  return result;
}

void *sub_1B9F5AEA0(uint64_t a1, void *a2)
{
  if (qword_1EDC6CB88 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for ListLayoutConfiguration(0);
  __swift_project_value_buffer(v3, qword_1EDC6CB90);
  return ListLayoutConfiguration.layout(for:)(a2);
}

unint64_t sub_1B9F5AF10()
{
  result = qword_1EDC5F200;
  if (!qword_1EDC5F200)
  {
    sub_1B9F5AB80(255, &qword_1EDC5F1F8, sub_1B9F57FD4);
    sub_1B9F5ABDC(&qword_1EDC5EC70, sub_1B9F57FD4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F200);
  }

  return result;
}

uint64_t sub_1B9F5AFFC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

void *sub_1B9F5B03C@<X0>(void *a1@<X8>)
{
  sub_1B9F5B440();
  result = sub_1BA4A5728();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t SnapshotDataSource.item(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v10 = v9;
  v11 = *(v9 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v32 - v14;
  v16 = *(a3 + 16);
  v37 = a3;
  v38 = v4;
  v35 = v16;
  (v16)(a2, a3, v13);
  v17 = sub_1BA4A4578();
  v18 = *(v11 + 8);
  v18(v15, v10);
  v36 = a1;
  v19 = sub_1BA4A1968();
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v19 >= *(v17 + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = a4;
  v20 = v17 + 16 * v19;
  v21 = *(v20 + 32);
  v22 = *(v20 + 40);

  v34 = a2;
  v35(a2, v37);
  v39 = v21;
  v40 = v22;
  v23 = sub_1BA4A4528();
  v18(v15, v10);
  v24 = sub_1BA4A1958();
  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v24 >= *(v23 + 16))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v23 + 16 * v24;
  v26 = *(v25 + 32);
  v27 = *(v25 + 40);

  v18 = v38;
  (*(v37 + 24))(&v41, v26, v27, v34);

  if (v42)
  {

    return sub_1B9F25598(&v41, v33);
  }

LABEL_11:
  sub_1B9FCD638(&v41);
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_1BA4A7DF8();
  MEMORY[0x1BFAF1350](0xD000000000000014, 0x80000001BA4E6870);
  v39 = sub_1BA4A1968();
  v29 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v29);

  MEMORY[0x1BFAF1350](0x65746920646E6120, 0xEA0000000000206DLL);
  v39 = sub_1BA4A1958();
  v30 = sub_1BA4A82D8();
  MEMORY[0x1BFAF1350](v30);

  MEMORY[0x1BFAF1350](0xD000000000000023, 0x80000001BA4E6890);
  v39 = v18;
  swift_unknownObjectRetain();
  v31 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v31);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

unint64_t sub_1B9F5B440()
{
  result = qword_1EDC61AD0;
  if (!qword_1EDC61AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC61AD0);
  }

  return result;
}

uint64_t static LayoutConfiguration.card.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EDC6D410 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EDC6D458;
  v2 = *&qword_1EDC6D468;
  v11[4] = xmmword_1EDC6D458;
  v11[5] = *&qword_1EDC6D468;
  v3 = xmmword_1EDC6D478;
  v4 = xmmword_1EDC6D488;
  v11[6] = xmmword_1EDC6D478;
  v11[7] = xmmword_1EDC6D488;
  v5 = *&qword_1EDC6D428;
  v11[0] = xmmword_1EDC6D418;
  v11[1] = *&qword_1EDC6D428;
  v6 = xmmword_1EDC6D438;
  v7 = xmmword_1EDC6D448;
  v11[2] = xmmword_1EDC6D438;
  v11[3] = xmmword_1EDC6D448;
  *a1 = xmmword_1EDC6D418;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v1;
  a1[5] = v2;
  a1[6] = v3;
  a1[7] = v4;
  return sub_1B9F1D9A4(v11, &v10);
}

void *sub_1B9F5B534@<X0>(void *a1@<X8>)
{
  sub_1B9F5B584();
  result = sub_1BA4A7358();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B9F5B584()
{
  result = qword_1EDC631A0;
  if (!qword_1EDC631A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC631A0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_1B9F5B604(double a1, uint64_t a2, uint64_t a3, void **a4)
{
  sub_1B9F292B4(a3);
  v6 = [objc_opt_self() estimatedDimension_];
  v7 = *a4;
  *a4 = v6;
}

uint64_t sub_1B9F5B674@<X0>(uint64_t a7@<X8>)
{
  v9 = v7[1];
  v12 = *v7;
  v13[0] = v9;
  *(v13 + 9) = *(v7 + 25);
  *a7 = sub_1BA4A5878();
  *(a7 + 8) = 0x4000000000000000;
  *(a7 + 16) = 0;
  sub_1B9F5B6F4(0);
  return sub_1B9F5B79C(&v12, a7 + *(v10 + 44));
}

void sub_1B9F5B6F4(uint64_t a1)
{
  if (!qword_1EDC5F2F8)
  {
    sub_1B9F47BAC(255, &qword_1EDC5E970, sub_1B9F528CC, MEMORY[0x1E6981F40]);
    v1 = sub_1BA4A52C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F2F8);
    }
  }
}

uint64_t sub_1B9F5B79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v169 = a2;
  v153 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  MEMORY[0x1EEE9AC00](v153, v3);
  v156 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F532BC(0);
  v154 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v155 = &v144 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5323C(0);
  v159 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v160 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F530BC(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v168 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v144 - v16;
  v164 = sub_1BA4A5718();
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164, v18);
  v162 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5305C(0);
  v174 = v20;
  v177 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v147 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v176 = &v144 - v25;
  v26 = MEMORY[0x1E6968848];
  v27 = MEMORY[0x1E69E6720];
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v158 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v144 - v33;
  v35 = sub_1BA4A12C8();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v161 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39, v40);
  v171 = &v144 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v144 - v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  v49 = &v144 - v48;
  v50 = v27;
  v52 = v51;
  sub_1B9F47BAC(0, &qword_1EDC5F1C8, sub_1B9F5305C, v50);
  MEMORY[0x1EEE9AC00](v53 - 8, v54);
  v166 = &v144 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56, v57);
  v167 = &v144 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v165 = &v144 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v178 = &v144 - v64;
  v65 = *(a1 + 8);
  v66 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_supratitleString;
  swift_beginAccess();
  v172 = v65;
  v67 = v65 + v66;
  v68 = v36;
  sub_1B9F5CC44(v67, v34, &unk_1EDC6E290, v26);
  v69 = *(v36 + 48);
  v152 = v36 + 48;
  v151 = v69;
  v70 = v69(v34, 1, v52);
  v170 = v36;
  v173 = a1;
  v175 = v17;
  v157 = v45;
  if (v70 == 1)
  {
    sub_1BA103284(v34, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v71 = 1;
    v72 = v178;
  }

  else
  {
    (*(v36 + 32))(v49, v34, v52);
    (*(v36 + 16))(v45, v49, v52);
    v73 = sub_1BA4A5E08();
    v181 = v73;
    v150 = v74;
    v182 = v74;
    v76 = v75;
    v183 = v75 & 1;
    v184 = v77;
    v185 = 0;
    v186 = 0xE000000000000000;
    sub_1BA4A7DF8();
    v189 = *(a1 + 24);
    v190 = *(a1 + 40);
    v78 = v189;
    if (v190 == 1)
    {
      v79 = *(&v189 + 1);
    }

    else
    {

      sub_1BA4A6FB8();
      v80 = v52;
      v81 = sub_1BA4A5B28();
      sub_1BA4A3CA8();

      v52 = v80;
      v68 = v170;
      v82 = v162;
      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA103284(&v189, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1B9F5366C);
      (*(v163 + 8))(v82, v164);

      v78 = v185;
      v79 = v186;
    }

    v185 = v78;
    v186 = v79;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v83 = v176;
    sub_1BA4A5F18();

    sub_1BA102AF4(v73, v150, v76 & 1);

    (*(v68 + 8))(v49, v52);
    v72 = v178;
    sub_1BA1032E4(v83, v178, sub_1B9F5305C);
    v71 = 0;
  }

  v84 = *(v177 + 56);
  v177 += 56;
  v150 = v84;
  v84(v72, v71, 1, v174);
  v85 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_primaryString;
  v86 = v172;
  swift_beginAccess();
  v87 = *(v68 + 16);
  v176 = v52;
  v146 = v68 + 16;
  v145 = v87;
  v87(v171, (v86 + v85), v52);
  v88 = (v86 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
  swift_beginAccess();
  v89 = v88[1];
  v149 = *v88;
  v90 = v88[2];
  v148 = *(v88 + 24);
  v91 = *(v173 + 16);
  if (v91)
  {
    v92 = (v91 + OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_animationConfiguration);
    swift_beginAccess();
    v94 = *v92;
    v93 = v92[1];
    v95 = v92[2];
    v96 = *(v92 + 24);
  }

  else
  {
    v94 = 0;
    v93 = 0;
    v95 = 0;
    v96 = 0;
  }

  v97 = v153;
  v98 = v156;
  v99 = &v156[*(v153 + 20)];
  *v99 = 0;
  *(v99 + 1) = 0;
  v99[24] = 0;
  *(v99 + 2) = 0;
  v100 = v98 + *(v97 + 24);
  v101 = (v170 + 32);
  v102 = *(v170 + 32);
  *v100 = 0;
  *(v100 + 8) = 0;
  *(v100 + 24) = 0;
  *(v100 + 16) = 0;
  v103 = v171;
  v171 = v101;
  v153 = v102;
  v102(v98, v103, v176);

  *v99 = v149;
  *(v99 + 1) = v89;
  *(v99 + 2) = v90;
  v99[24] = v148;

  *v100 = v94;
  *(v100 + 8) = v93;
  *(v100 + 16) = v95;
  *(v100 + 24) = v96;
  KeyPath = swift_getKeyPath();
  v105 = v155;
  sub_1BA10321C(v98, v155, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v106 = v105 + *(v154 + 36);
  *v106 = KeyPath;
  *(v106 + 8) = 0;
  sub_1BA10334C(v98, type metadata accessor for AnimatedSnidgetCurrentValueText);
  v107 = swift_getKeyPath();
  v108 = v160;
  sub_1BA1032E4(v105, v160, sub_1B9F532BC);
  v109 = v108 + *(v159 + 36);
  *v109 = v107;
  *(v109 + 8) = 0;
  *(v109 + 16) = 1;
  v187 = *(v173 + 24);
  v188 = *(v173 + 40);
  v111 = *(&v187 + 1);
  v110 = v187;
  v112 = v188;
  if (v188 == 1)
  {

    v113 = v111;
    v114 = v110;
  }

  else
  {

    sub_1BA4A6FB8();
    v115 = sub_1BA4A5B28();
    sub_1BA4A3CA8();

    v116 = v162;
    sub_1BA4A5708();
    swift_getAtKeyPath();
    sub_1BA103284(&v187, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1B9F5366C);
    (*(v163 + 8))(v116, v164);
    v114 = v181;
    v113 = v182;
  }

  v117 = v178;
  v118 = v157;
  v181 = v114;
  v182 = v113;
  MEMORY[0x1BFAF1350](0x65756C61562ELL, 0xE600000000000000);
  sub_1B9F5D988();
  sub_1BA4A5F18();

  sub_1BA10334C(v108, sub_1B9F5323C);
  v119 = OBJC_IVAR____TtCV18HealthExperienceUI35StandardSnidgetCurrentValueDataView9ViewModel_subtitleString;
  v120 = v172;
  swift_beginAccess();
  v121 = v158;
  sub_1B9F5CC44(v120 + v119, v158, &unk_1EDC6E290, MEMORY[0x1E6968848]);
  v122 = v176;
  if (v151(v121, 1, v176) == 1)
  {
    sub_1BA103284(v121, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720], sub_1B9F47BAC);
    v123 = 1;
    v124 = v165;
  }

  else
  {
    v125 = v161;
    (v153)(v161, v121, v122);
    v145(v118, v125, v122);
    v126 = sub_1BA4A5E08();
    v128 = v127;
    v130 = v129;
    v181 = v126;
    v182 = v127;
    v183 = v129 & 1;
    v184 = v131;
    v179 = 0;
    v180 = 0xE000000000000000;
    sub_1BA4A7DF8();
    if (v112)
    {
    }

    else
    {

      sub_1BA4A6FB8();
      v132 = sub_1BA4A5B28();
      sub_1BA4A3CA8();

      v133 = v162;
      sub_1BA4A5708();
      swift_getAtKeyPath();
      sub_1BA103284(&v187, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0], sub_1B9F5366C);
      (*(v163 + 8))(v133, v164);

      v110 = v179;
      v111 = v180;
    }

    v179 = v110;
    v180 = v111;
    MEMORY[0x1BFAF1350](0xD000000000000013, 0x80000001BA4EAF10);
    v134 = v147;
    sub_1BA4A5F18();

    sub_1BA102AF4(v126, v128, v130 & 1);

    (*(v170 + 8))(v161, v176);
    v124 = v165;
    sub_1BA1032E4(v134, v165, sub_1B9F5305C);
    v123 = 0;
    v117 = v178;
  }

  v150(v124, v123, 1, v174);
  v135 = v167;
  sub_1B9F5CC44(v117, v167, &qword_1EDC5F1C8, sub_1B9F5305C);
  v136 = v175;
  v137 = v168;
  sub_1BA10321C(v175, v168, sub_1B9F530BC);
  v138 = v166;
  sub_1B9F5CC44(v124, v166, &qword_1EDC5F1C8, sub_1B9F5305C);
  v139 = v169;
  sub_1B9F5CC44(v135, v169, &qword_1EDC5F1C8, sub_1B9F5305C);
  sub_1B9F528CC(0);
  v141 = v140;
  sub_1BA10321C(v137, v139 + *(v140 + 48), sub_1B9F530BC);
  sub_1B9F5CC44(v138, v139 + *(v141 + 64), &qword_1EDC5F1C8, sub_1B9F5305C);
  v142 = MEMORY[0x1E69E6720];
  sub_1BA103284(v124, &qword_1EDC5F1C8, sub_1B9F5305C, MEMORY[0x1E69E6720], sub_1B9F47BAC);
  sub_1BA10334C(v136, sub_1B9F530BC);
  sub_1BA103284(v178, &qword_1EDC5F1C8, sub_1B9F5305C, v142, sub_1B9F47BAC);
  sub_1BA103284(v138, &qword_1EDC5F1C8, sub_1B9F5305C, v142, sub_1B9F47BAC);
  sub_1BA10334C(v137, sub_1B9F530BC);
  return sub_1BA103284(v135, &qword_1EDC5F1C8, sub_1B9F5305C, v142, sub_1B9F47BAC);
}

id NSCollectionLayoutSection.withHeader(height:alignment:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9F5CA58(a1, a2);

  return v2;
}

uint64_t sub_1B9F5CA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_opt_self() fractionalWidthDimension_];
  v7 = [objc_opt_self() sizeWithWidthDimension:v6 heightDimension:a1];

  v8 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v7 elementKind:*MEMORY[0x1E69DDC08] alignment:a2];
  v9 = v8;
  [v9 contentInsets];
  [v9 setContentInsets_];
  [v9 contentInsets];
  [v9 setContentInsets_];

  v10 = v9;
  v11 = [v3 boundarySupplementaryItems];
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8, 0x1E6995548);
  v12 = sub_1BA4A6B08();

  if (v12 >> 62 && (result = sub_1BA4A7CC8(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_1B9F5CD74(0, 0, v10);

    v13 = sub_1BA4A6AE8();

    [v3 setBoundarySupplementaryItems_];

    return v3;
  }

  return result;
}

uint64_t sub_1B9F5CC44(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F47BAC(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F5CCC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F5CD2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

char *sub_1B9F5CD74(uint64_t a1, char *a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BA4A7CC8();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1BA4A7CC8();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1B9F2A5D4();

  return sub_1B9F5CE60(v7, v6, 1, v4);
}

char *sub_1B9F5CE60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1B9F0ADF8(0, &qword_1EDC6B4E8, 0x1E6995548);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1BA4A7CC8();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1BA4A7CC8();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1B9F5CF8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1B9F5D000(void *a1, uint64_t a2, uint64_t *a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v63 = a1;
  v62 = sub_1BA4A3488();
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BA4A3EA8();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v17);
  v57 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A3428();
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a3;
  v24 = a3[1];
  ObjectType = swift_getObjectType();
  v55 = a6;
  v56 = a7;
  a4(&v68, v23, v24, a6, a7, a2);
  if (v69)
  {
    v60 = a2;
    v25 = v63;
    sub_1B9F1134C(&v68, v70);
    __swift_project_boxed_opaque_existential_1(v70, v70[3]);
    sub_1BA4A2D48();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v61;
      v27 = v22;
      v28 = v62;
      (*(v61 + 32))(v16, v27, v62);
      v29 = sub_1BA4A3458();
      (*(v26 + 8))(v16, v28);
    }

    else
    {
      sub_1B9F5DBCC(v22, MEMORY[0x1E69A3458]);
      sub_1B9F0A534(v70, v67);
      sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      v32 = v25;
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v65, &v68);
        v29 = sub_1B9F5DC8C(&v68, v60, v25, v55, a9, ObjectType, v56);
        __swift_destroy_boxed_opaque_existential_1(&v68);
      }

      else
      {
        v66 = 0;
        memset(v65, 0, sizeof(v65));
        sub_1B9F5F198(v65, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
        v33 = v57;
        sub_1BA4A3D88();
        sub_1B9F0A534(v70, &v68);
        sub_1B9F0A534(v70, v67);
        v34 = sub_1BA4A3E88();
        v35 = sub_1BA4A6FA8();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v64 = v62;
          *v36 = 136315650;
          v37 = sub_1BA4A85D8();
          v38 = v33;
          v40 = sub_1B9F0B82C(v37, v39, &v64);

          *(v36 + 4) = v40;
          *(v36 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(&v68, v69);
          v41 = sub_1BA4A2D58();
          v43 = v42;
          __swift_destroy_boxed_opaque_existential_1(&v68);
          v44 = sub_1B9F0B82C(v41, v43, &v64);

          *(v36 + 14) = v44;
          *(v36 + 22) = 2080;
          sub_1B9F0A534(v67, v65);
          v45 = sub_1BA4A6808();
          v47 = v46;
          __swift_destroy_boxed_opaque_existential_1(v67);
          v48 = sub_1B9F0B82C(v45, v47, &v64);

          *(v36 + 24) = v48;
          v49 = v62;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v49, -1, -1);
          MEMORY[0x1BFAF43A0](v36, -1, -1);

          (*(v58 + 8))(v38, v59);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v67);
          (*(v58 + 8))(v33, v59);
          __swift_destroy_boxed_opaque_existential_1(&v68);
        }

        *&v68 = type metadata accessor for FallbackCollectionViewCell();
        sub_1B9F37450(0, &qword_1EDC654A8, type metadata accessor for FallbackCollectionViewCell);
        sub_1BA4A6808();
        v50 = sub_1BA4A6758();

        v51 = sub_1BA4A18F8();
        v29 = [v32 dequeueReusableCellWithReuseIdentifier:v50 forIndexPath:v51];
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v70);
  }

  else
  {
    sub_1B9F5F198(&v68, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], sub_1B9F0CDE8);
    v70[0] = type metadata accessor for FallbackCollectionViewCell();
    sub_1B9F37450(0, &qword_1EDC654A8, type metadata accessor for FallbackCollectionViewCell);
    sub_1BA4A6808();
    v30 = sub_1BA4A6758();

    v31 = sub_1BA4A18F8();
    v29 = [v63 dequeueReusableCellWithReuseIdentifier:v30 forIndexPath:v31];
  }

  return v29;
}

double sub_1B9F5D740@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a4 + 24))(&v21, a1, a2, ObjectType, a4);
  if (v22)
  {
    sub_1B9F1134C(&v21, a5);
  }

  else
  {
    sub_1B9F5F198(&v21, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310], sub_1B9F0CDE8);
    sub_1BA4A3D88();

    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v21 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1B9F0B82C(a1, a2, &v21);
      _os_log_impl(&dword_1B9F07000, v16, v17, "The CellProvider block called us back with an item that no longer exists. Item Identifier: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1B9F5D988()
{
  result = qword_1EDC5F080;
  if (!qword_1EDC5F080)
  {
    sub_1B9F5323C(255);
    sub_1B9F5DA38();
    sub_1B9F4D13C(&qword_1EDC5EC10, sub_1B9F5374C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F080);
  }

  return result;
}

unint64_t sub_1B9F5DA38()
{
  result = qword_1EDC5F250;
  if (!qword_1EDC5F250)
  {
    sub_1B9F532BC(255);
    sub_1B9F4D13C(&qword_1EDC63450, type metadata accessor for AnimatedSnidgetCurrentValueText, &protocol conformance descriptor for AnimatedSnidgetCurrentValueText);
    sub_1B9F5DB4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F250);
  }

  return result;
}

uint64_t sub_1B9F5DAE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1B9F5DB4C()
{
  result = qword_1EDC5EC98;
  if (!qword_1EDC5EC98)
  {
    sub_1B9F864BC(255, &qword_1EDC5EC90, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EC98);
  }

  return result;
}

uint64_t sub_1B9F5DBCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F5DC2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1B9F5DC8C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v101 = a7;
  v99 = a6;
  v100 = a4;
  v107 = a3;
  v106 = a2;
  v8 = MEMORY[0x1E69E6720];
  sub_1B9F115CC(0, qword_1EDC6E9C8, type metadata accessor for SectionContext, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v102 = (v95 - v11);
  v12 = MEMORY[0x1E6969770];
  sub_1B9F115CC(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], v8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v95 - v15;
  v17 = a1[3];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v18 = sub_1BA4A2E58();
  v20 = v19;
  v114 = v18;
  v115 = v19;
  *&v111 = 0x5F65737565725FLL;
  *(&v111 + 1) = 0xE700000000000000;
  v21 = sub_1BA4A17C8();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  sub_1B9F252FC();
  sub_1BA4A7BA8();
  v23 = v22;
  v25 = v24;
  sub_1B9F5F198(v16, &qword_1EDC6AE40, v12, v8, sub_1B9F115CC);
  if ((v25 & 1) != 0 || (v26 = sub_1BA4A69E8(), MEMORY[0x1BFAF12A0](v26), , v27 = sub_1BA4A6758(), , v28 = NSClassFromString(v27), v27, !v28))
  {

    v103 = 1;
    sub_1B9F248CC(v18, v20, 0, 1);
    v33 = 0;
    v39 = v20;
    v41 = v107;
  }

  else
  {
    ObjCClassMetadata = swift_getObjCClassMetadata();
    v30 = sub_1B9F5F260(v23, v18, v20);
    v31 = MEMORY[0x1BFAF12A0](v30);
    v33 = v32;

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1B9F248CC(ObjCClassMetadata, v31, v33, 0);
    v35 = NSStringFromClass(ObjCClassFromMetadata);
    v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v38 = v37;

    v114 = v36;
    v115 = v38;

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);
    v39 = v31;

    MEMORY[0x1BFAF1350](v31, v33);

    sub_1B9F248D8(ObjCClassMetadata, v31, v33, 0);
    v40 = sub_1BA4A6758();

    v41 = v107;
    [v107 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

    sub_1B9F248CC(ObjCClassMetadata, v39, v33, 0);
    v42 = NSStringFromClass(ObjCClassFromMetadata);
    v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v45 = v44;

    v114 = v43;
    v115 = v45;

    MEMORY[0x1BFAF1350](0x5F65737565725FLL, 0xE700000000000000);

    MEMORY[0x1BFAF1350](v39, v33);

    sub_1B9F248D8(ObjCClassMetadata, v39, v33, 0);
    v103 = 0;
    v18 = ObjCClassMetadata;
  }

  v46 = sub_1BA4A6758();

  v47 = v106;
  v48 = sub_1BA4A18F8();
  v49 = [v41 dequeueReusableCellWithReuseIdentifier:v46 forIndexPath:v48];

  swift_getObjectType();
  v50 = swift_conformsToProtocol2();
  if (v50 && v49)
  {
    v51 = v50;
    ObjectType = swift_getObjectType();
    v53 = v49;
    (*(v51 + 16))([v41 viewController], ObjectType, v51);
  }

  v110[0] = v49;
  v54 = sub_1B9F0ADF8(0, &qword_1EDC6B550, 0x1E69DC7F8);
  sub_1B9F0D950(0, &qword_1EDC64E18, &protocol descriptor for ProvidedViewContextConsumer);
  v55 = v49;
  v104 = v54;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(&v111, &v114);
    v56 = [v41 viewController];
    if (v56)
    {
      v57 = v56;
      v58 = UIViewController.resolvedHealthStore.getter();
      if (v58)
      {
        v59 = v58;
        sub_1BA4A2488();
        swift_allocObject();
        v97 = v39;
        v60 = v59;
        v61 = sub_1BA4A2468();
        v62 = v60;
        v63 = v61;

        UIViewController.resolvedPinnedContentManager.getter(&v111);
        UIViewController.resolvedHealthExperienceStore.getter(v110);
        type metadata accessor for ProvidedViewContext(0);
        v64 = swift_allocObject();
        v98 = v33;
        swift_beginAccess();
        v108[0] = v62;
        sub_1B9F0ADF8(0, &qword_1EDC6B620, 0x1E696C1C0);
        v96 = v62;
        sub_1BA4A4EE8();
        swift_endAccess();
        *(v64 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManagerProvider) = v63;
        sub_1B9F0A534(&v111, v64 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager);
        sub_1B9F0A534(v110, v109);
        swift_beginAccess();
        sub_1B9F0A534(v109, v108);
        sub_1B9F0D950(0, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
        v95[1] = v63;

        v33 = v98;
        sub_1BA4A4EE8();
        __swift_destroy_boxed_opaque_existential_1(v109);
        swift_endAccess();
        v65 = v96;

        __swift_destroy_boxed_opaque_existential_1(v110);
        __swift_destroy_boxed_opaque_existential_1(&v111);
        v66 = v116;
        v67 = v117;
        __swift_mutable_project_boxed_opaque_existential_1(&v114, v116);
        v68 = *(v67 + 16);
        v69 = v66;
        v39 = v97;
        v70 = v67;
        v47 = v106;
        v68(v64, v69, v70);

        v41 = v107;
      }

      else
      {
      }
    }

    __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  else
  {
    v113 = 0;
    v111 = 0u;
    v112 = 0u;
    sub_1B9F5F198(&v111, &unk_1EDC64E10, &qword_1EDC64E18, &protocol descriptor for ProvidedViewContextConsumer, sub_1B9F0CDE8);
  }

  swift_getObjectType();
  v71 = swift_conformsToProtocol2();
  if (v71 && v49)
  {
    v72 = v71;
    v73 = v55;

    type metadata accessor for HostViewCell(0);
    v74 = swift_dynamicCastClass();
    if (v74)
    {
      v75 = v74;
      v76 = v73;
      v77 = v18;
      v78 = v103;
      sub_1B9F248D8(v77, v39, v33, v103);
      v79 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange;
      swift_beginAccess();
      *(v75 + v79) = v78;
    }

    else
    {
      sub_1B9F248D8(v18, v39, v33, v103);
    }

    v80 = swift_getObjectType();
    sub_1B9F0A534(v105, &v114);
    (*(v72 + 16))(&v114, v80, v72);
    v81 = swift_getObjectType();
    v82 = swift_conformsToProtocol2();
    if (v82)
    {
      v83 = v82;
      v84 = v73;
      v85 = sub_1BA4A1968();
      v86 = SnapshotDataSource.numberOfItems(in:)(v85);
      v87 = type metadata accessor for SectionContext(0);
      v88 = *(v87 + 20);
      v89 = sub_1BA4A1998();
      v90 = v102;
      (*(*(v89 - 8) + 16))(v102 + v88, v47, v89);
      *v90 = v86;
      (*(*(v87 - 8) + 56))(v90, 0, 1, v87);
      (*(v83 + 16))(v90, v81, v83);
    }

    v109[0] = v73;
    sub_1B9F0D950(0, &qword_1EDC67CE0, &protocol descriptor for CellEditModeHandling);
    v91 = v73;
    if (swift_dynamicCast())
    {
      sub_1B9F1134C(&v111, &v114);
      v92 = v116;
      v93 = v117;
      __swift_project_boxed_opaque_existential_1(&v114, v116);
      (*(v93 + 8))([v41 isEditing], 0, v92, v93);

      __swift_destroy_boxed_opaque_existential_1(&v114);
    }

    else
    {

      v113 = 0;
      v111 = 0u;
      v112 = 0u;
      sub_1B9F5F198(&v111, &qword_1EDC67CD8, &qword_1EDC67CE0, &protocol descriptor for CellEditModeHandling, sub_1B9F0CDE8);
    }

    return v91;
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

uint64_t AnimatedSnidgetCurrentValueText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v94 = a1;
  sub_1B9F5AB80(0, &qword_1EDC5F1F8, sub_1B9F57FD4);
  v96 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v83 - v5;
  v7 = MEMORY[0x1E697F948];
  sub_1B9F5A968(0, &qword_1EDC5ED80, MEMORY[0x1E697F948]);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v93 = &v83 - v10;
  v91 = type metadata accessor for AnimatedCharacterText(0);
  MEMORY[0x1EEE9AC00](v91, v11);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v86 = &v83 - v15;
  sub_1B9F5AA38(0, &qword_1EDC5EDA8, v7);
  v87 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v90 = &v83 - v18;
  v19 = sub_1BA4A12C8();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v83 - v26;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v83 - v30;
  v88 = type metadata accessor for AnimatedNumericText(0);
  MEMORY[0x1EEE9AC00](v88, v32);
  v34 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v84 = &v83 - v37;
  sub_1B9F5AA38(0, &qword_1EDC5ED70, MEMORY[0x1E697F960]);
  v39 = v38;
  MEMORY[0x1EEE9AC00](v38, v40);
  v89 = &v83 - v41;
  v42 = type metadata accessor for AnimatedSnidgetCurrentValueText(0);
  v43 = v2;
  v44 = (v2 + *(v42 + 20));
  v45 = v44[1];
  if (v45)
  {
    v46 = v42;
    v92 = v19;
    v83 = v39;
    v47 = v93;
    v48 = *v44;
    v49 = *(v20 + 16);
    if (v44[3])
    {
      v50 = v27;
      v51 = v27;
      v52 = v43;
      v49(v51);
      v53 = v52 + *(v46 + 24);
      v54 = *(v53 + 8);
      if (v54)
      {
        v55 = *(v53 + 24);
        v56 = v89;
        if ((v48 != *v53 || v45 != v54) && (sub_1BA4A8338() & 1) == 0)
        {
          v55 = 0;
        }
      }

      else
      {
        v55 = 0;
        v56 = v89;
      }

      v76 = v85;
      (*(v20 + 32))(v85, v50, v92);
      *(v76 + *(v91 + 20)) = v55 & 1;
      v77 = v86;
      sub_1B9F5F130(v76, v86, type metadata accessor for AnimatedCharacterText);
      v78 = type metadata accessor for AnimatedCharacterText;
      sub_1B9F5F1F8(v77, v90, type metadata accessor for AnimatedCharacterText);
      swift_storeEnumTagMultiPayload();
      sub_1B9F5ABDC(qword_1EDC67E80, type metadata accessor for AnimatedNumericText, &unk_1BA4CCA7C);
      sub_1B9F5ABDC(&qword_1EDC67BD8, type metadata accessor for AnimatedCharacterText, &unk_1BA4CCA2C);
      sub_1BA4A58E8();
      v79 = v77;
    }

    else
    {
      v69 = v44[2];
      v70 = v43;
      v71 = v92;
      v49(v31);
      v72 = v70 + *(v46 + 24);
      v73 = *(v72 + 8);
      if (v73)
      {
        v74 = *(v72 + 24);
        if (v48 == *v72 && v45 == v73 || (sub_1BA4A8338() & 1) != 0)
        {
          v75 = v74 ^ 1;
        }

        else
        {
          v75 = 0;
        }

        v71 = v92;
      }

      else
      {
        v75 = 0;
      }

      (*(v20 + 32))(v34, v31, v71);
      v80 = v88;
      *&v34[*(v88 + 20)] = v69;
      v34[*(v80 + 24)] = v75 & 1;
      v81 = v84;
      sub_1B9F5F130(v34, v84, type metadata accessor for AnimatedNumericText);
      v78 = type metadata accessor for AnimatedNumericText;
      sub_1B9F5F1F8(v81, v90, type metadata accessor for AnimatedNumericText);
      swift_storeEnumTagMultiPayload();
      sub_1B9F5ABDC(qword_1EDC67E80, type metadata accessor for AnimatedNumericText, &unk_1BA4CCA7C);
      sub_1B9F5ABDC(&qword_1EDC67BD8, type metadata accessor for AnimatedCharacterText, &unk_1BA4CCA2C);
      v56 = v89;
      sub_1BA4A58E8();
      v79 = v81;
    }

    sub_1B9F5F2AC(v79, v78);
    v65 = &qword_1EDC5ED70;
    v66 = MEMORY[0x1E697F960];
    v67 = sub_1B9F5AA38;
    sub_1B9F5F77C(v56, v47, &qword_1EDC5ED70, MEMORY[0x1E697F960], sub_1B9F5AA38);
    swift_storeEnumTagMultiPayload();
    sub_1B9F5ADA4();
    sub_1B9F5AF10();
    sub_1BA4A58E8();
    v68 = v56;
  }

  else
  {
    (*(v20 + 16))(v23, v2, v19);
    v57 = sub_1BA4A5E08();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v64 = &v6[*(v96 + 36)];
    sub_1B9F57FD4(0);
    sub_1BA4A54C8();
    *v64 = swift_getKeyPath();
    *v6 = v57;
    *(v6 + 1) = v59;
    v6[16] = v61 & 1;
    *(v6 + 3) = v63;
    v65 = &qword_1EDC5F1F8;
    v66 = sub_1B9F57FD4;
    v67 = sub_1B9F5AB80;
    sub_1B9F5F77C(v6, v93, &qword_1EDC5F1F8, sub_1B9F57FD4, sub_1B9F5AB80);
    swift_storeEnumTagMultiPayload();
    sub_1B9F5ADA4();
    sub_1B9F5AF10();
    sub_1BA4A58E8();
    v68 = v6;
  }

  return sub_1B9F5F80C(v68, v65, v66, v67);
}

uint64_t sub_1B9F5F130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F5F198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F5F1F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B9F5F260(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1BA4A69E8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F5F2AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *ContentConfigurationHostCell.init(frame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_1BA4A40C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v36 - v20;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *(v22 + 4) = 0;
  v23 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel];
  *v23 = 0u;
  *(v23 + 1) = 0u;
  *(v23 + 4) = 0;
  v24 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_configurationProvider];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  v25 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item];
  *v26 = 0u;
  *(v26 + 1) = 0u;
  *(v26 + 4) = 0;
  [objc_allocWithZone(MEMORY[0x1E69DD1B8]) init];
  sub_1BA4A4088();
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  Width = CGRectGetWidth(v40);
  type metadata accessor for ObservableCellState(0);
  v28 = swift_allocObject();
  v29 = *(v10 + 16);
  v29(v17, v21, v9);
  v37 = v29;
  swift_beginAccess();
  v29(v13, v17, v9);
  sub_1BA4A4EE8();
  v30 = *(v10 + 8);
  v30(v17, v9);
  swift_endAccess();
  swift_beginAccess();
  v39 = Width;
  sub_1BA4A4EE8();
  swift_endAccess();
  v30(v21, v9);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_cellState] = v28;
  v31 = type metadata accessor for ContentConfigurationHostCell();
  v38.receiver = v4;
  v38.super_class = v31;
  v32 = objc_msgSendSuper2(&v38, sel_initWithFrame_, a1, a2, a3, a4);

  v33 = [v32 _bridgedConfigurationState];
  sub_1BA4A40B8();

  swift_getKeyPath();
  swift_getKeyPath();
  v37(v17, v21, v9);
  sub_1BA4A4F38();
  v30(v21, v9);
  [v32 setAutomaticallyUpdatesContentConfiguration_];

  v34 = v32;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v32 action:sel_didLongPress_];
    [v34 setNumberOfTouchesRequired_];
    [v32 addGestureRecognizer_];
  }

  return v32;
}

uint64_t sub_1B9F5F77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B9F5F80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1B9F5F86C(uint64_t a1)
{
  sub_1B9F2AC84(319, &qword_1EDC6B700, MEMORY[0x1E69DC0B8], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1B9F5FA28(319, &qword_1EDC6B718, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B9F5F9A8()
{
  result = qword_1EDC5EF28;
  if (!qword_1EDC5EF28)
  {
    sub_1B9F5FB40(255);
    sub_1B9F5FD84();
    sub_1B9F6048C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EF28);
  }

  return result;
}

void sub_1B9F5FA28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F5FA78(uint64_t a1)
{
  if (!qword_1EDC5F068)
  {
    sub_1B9F5AB80(255, &qword_1EDC5F218, sub_1B9F5FCF0);
    sub_1B9F57FD4(255);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F068);
    }
  }
}

id sub_1B9F5FAFC(void *a1)
{
  v1 = a1;
  UIView.viewController()(v2);
  v4 = v3;

  return v4;
}

void sub_1B9F5FB40(uint64_t a1)
{
  if (!qword_1EDC5EF20)
  {
    sub_1B9F5FA78(255);
    sub_1B9F51C6C(255, &qword_1EDC5EC18, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = sub_1BA4A5418();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5EF20);
    }
  }
}

void __swiftcall UIView.viewController()(UIViewController_optional *__return_ptr retstr)
{
  v2 = [v1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      return;
    }
  }

  v4 = [v1 nextResponder];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 viewController];
    }
  }
}

void sub_1B9F5FC94(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void sub_1B9F5FCF0(uint64_t a1)
{
  if (!qword_1EDC68460)
  {
    v2 = sub_1BA4A12C8();
    v3 = sub_1B9F5ABDC(&qword_1EDC6AEB0, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
    v5 = type metadata accessor for SnidgetAnimation(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDC68460);
    }
  }
}

unint64_t sub_1B9F5FD84()
{
  result = qword_1EDC5F070;
  if (!qword_1EDC5F070)
  {
    sub_1B9F5FA78(255);
    sub_1B9F603C0();
    sub_1B9F5ABDC(&qword_1EDC5EC70, sub_1B9F57FD4, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F070);
  }

  return result;
}

uint64_t UIViewController.resolvedHealthStore.getter()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1B9F600B4();
  if (!result)
  {
    v7 = sub_1BA319C74();
    if (v7 && (v19[1] = v7, sub_1B9F21ADC(), sub_1B9F0D950(0, qword_1EDC6DE88, &protocol descriptor for HealthStoreProviding), (swift_dynamicCast() & 1) != 0))
    {
      v8 = *(&v21 + 1);
      if (*(&v21 + 1))
      {
        v9 = v22;
        __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
        v10 = (*(v9 + 8))(v8, v9);
        __swift_destroy_boxed_opaque_existential_1(&v20);
        return v10;
      }
    }

    else
    {
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
    }

    sub_1B9F43A50(&v20, &qword_1EDC6DE80, qword_1EDC6DE88, &protocol descriptor for HealthStoreProviding);
    sub_1BA4A3DD8();
    v11 = v0;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v20 = v15;
      *v14 = 136446210;
      v16 = UIViewController.resolutionDebugDescription.getter();
      v18 = sub_1B9F0B82C(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1B9F07000, v12, v13, "resolvedHealthStore requested, but none found in hierarchy: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return result;
}

uint64_t sub_1B9F600B4()
{
  v1 = sub_1B9F21ADC();
  v25 = v1;
  v24[0] = v0;
  sub_1B9F0AD9C(v24, v20);
  sub_1B9F0D950(0, qword_1EDC6DE88, &protocol descriptor for HealthStoreProviding);
  v2 = v0;
  if (swift_dynamicCast())
  {
    v3 = *(&v22 + 1);
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v21);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v5;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  sub_1B9F43A50(&v21, &qword_1EDC6DE80, qword_1EDC6DE88, &protocol descriptor for HealthStoreProviding);
  __swift_destroy_boxed_opaque_existential_1(v24);
  v19 = v2;
  v6 = sub_1BA096838();
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_5:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v10 = *(v7 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v8 = sub_1BA4A7CC8();
          if (!v8)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      v25 = v1;
      v24[0] = v10;
      sub_1B9F0AD9C(v24, v20);
      if (swift_dynamicCast())
      {
        v16 = *(&v22 + 1);
        v17 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
        v5 = (*(v17 + 8))(v16, v17);
        __swift_destroy_boxed_opaque_existential_1(&v21);
        __swift_destroy_boxed_opaque_existential_1(v24);

        return v5;
      }

      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      sub_1B9F43A50(&v21, &qword_1EDC6DE80, qword_1EDC6DE88, &protocol descriptor for HealthStoreProviding);
      __swift_destroy_boxed_opaque_existential_1(v24);
      ++v9;
    }

    while (v11 != v8);
  }

  v12 = [v19 parentViewController];
  if (!v12 || (v13 = v12, v5 = sub_1BA319F7C(), v13, !v5))
  {
    v14 = [v19 presentingViewController];
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v5 = sub_1BA319F7C();

    if (!v5)
    {
      return 0;
    }
  }

  return v5;
}

unint64_t sub_1B9F603C0()
{
  result = qword_1EDC5F220;
  if (!qword_1EDC5F220)
  {
    sub_1B9F5AB80(255, &qword_1EDC5F218, sub_1B9F5FCF0);
    sub_1B9F5ABDC(qword_1EDC68468, sub_1B9F5FCF0, &protocol conformance descriptor for SnidgetAnimation<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F220);
  }

  return result;
}

unint64_t sub_1B9F6048C()
{
  result = qword_1EDC5EC20;
  if (!qword_1EDC5EC20)
  {
    sub_1B9F51C6C(255, &qword_1EDC5EC18, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5EC20);
  }

  return result;
}

uint64_t UIViewController.resolvedPinnedContentManager.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F60C24(&v24);
  if (v25)
  {
    sub_1B9F25598(&v24, &v26);
    goto LABEL_11;
  }

  v8 = sub_1BA319C74();
  if (!v8 || (v20[1] = v8, sub_1B9F21ADC(), sub_1B9F0D950(0, qword_1EDC63CB8, &protocol descriptor for PinnedContentManagerProviding), (swift_dynamicCast() & 1) == 0))
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
LABEL_9:
    sub_1B9F43A50(&v21, &qword_1EDC63CB0, qword_1EDC63CB8, &protocol descriptor for PinnedContentManagerProviding);
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    if (!v25)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = *(&v22 + 1);
  if (!*(&v22 + 1))
  {
    goto LABEL_9;
  }

  v10 = v23;
  __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
  (*(v10 + 8))(&v26, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (v25)
  {
LABEL_10:
    sub_1B9F43A50(&v24, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  }

LABEL_11:
  if (*(&v27 + 1))
  {
    return sub_1B9F25598(&v26, a1);
  }

  v20[0] = v4;
  sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
  sub_1BA4A3DD8();
  v12 = v1;
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v26 = v16;
    *v15 = 136446210;
    v17 = UIViewController.resolutionDebugDescription.getter();
    v19 = sub_1B9F0B82C(v17, v18, &v26);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1B9F07000, v13, v14, "resolvedPinnedContentManager requested, but none found in hierarchy: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
  }

  (*(v20[0] + 8))(v7, v3);
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

void sub_1B9F60858(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1BA4A54D8();
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BA4A12C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5AB80(0, &qword_1EDC5F218, sub_1B9F5FCF0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v39 - v14;
  sub_1B9F5FA78(0);
  v44 = v16;
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v7 + 16);
  v21(v10, v1, v6, v18);
  v22 = sub_1BA4A5E08();
  v41 = v23;
  v42 = v22;
  v40 = v24;
  v43 = v25;
  v26 = *(v1 + *(type metadata accessor for AnimatedNumericText(0) + 24));
  v27 = MEMORY[0x1BFAF0E30](0.5, 0.7, 0.0);
  v28 = &v15[*(v12 + 44)];
  v39 = v2;
  (v21)(v28, v2, v6);
  sub_1B9F5FCF0(0);
  *&v28[*(v29 + 36)] = v27;
  v28[*(v29 + 40)] = v26;
  v30 = v41;
  *v15 = v42;
  *(v15 + 1) = v30;
  v15[16] = v40 & 1;
  *(v15 + 3) = v43;
  v31 = v45;
  if (v26 == 1)
  {
    sub_1BA4A54A8();
  }

  else
  {
    sub_1BA4A54C8();
  }

  KeyPath = swift_getKeyPath();
  v33 = &v20[*(v44 + 36)];
  sub_1B9F57FD4(0);
  (*(v46 + 32))(v33 + *(v34 + 28), v31, v47);
  *v33 = KeyPath;
  sub_1B9F613F4(v15, v20);
  v35 = swift_getKeyPath();
  v36 = v48;
  sub_1B9F5F130(v20, v48, sub_1B9F5FA78);
  sub_1B9F5FB40(0);
  v38 = v36 + *(v37 + 36);
  *v38 = v35;
  *(v38 + 8) = 1;
}

uint64_t sub_1B9F60BCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA4A5688();
  *a1 = result & 1;
  return result;
}

double sub_1B9F60C24@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  *(&v23 + 1) = v3;
  *&v22 = v1;
  v4 = v1;
  sub_1B9F60FA4(&v22, &v26);
  __swift_destroy_boxed_opaque_existential_1(&v22);
  if (!*(&v27 + 1))
  {
    sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
    v7 = sub_1BA096838();
    v8 = v7;
    v19 = v4;
    v20 = a1;
    if (v7 >> 62)
    {
      goto LABEL_28;
    }

    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
LABEL_18:

      v15 = [v4 parentViewController];
      a1 = v20;
      if (v15)
      {
        v16 = v15;
        sub_1BA31A13C(&v26);

        if (*(&v27 + 1))
        {
          goto LABEL_2;
        }

        sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
      }

      v17 = [v19 presentingViewController];
      if (v17)
      {
        v18 = v17;
        sub_1BA31A13C(&v26);

        if (*(&v27 + 1))
        {
          goto LABEL_2;
        }

        sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
      }

      *(v20 + 32) = 0;
      result = 0.0;
      *v20 = 0u;
      *(v20 + 16) = 0u;
      return result;
    }

LABEL_6:
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFAF2860](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v11 = *(v8 + 8 * v10 + 32);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v9 = sub_1BA4A7CC8();
          if (!v9)
          {
            goto LABEL_18;
          }

          goto LABEL_6;
        }
      }

      v25[3] = v3;
      v25[0] = v11;
      sub_1B9F0AD9C(v25, v21);
      sub_1B9F0D950(0, qword_1EDC63CB8, &protocol descriptor for PinnedContentManagerProviding);
      if (swift_dynamicCast())
      {
        v14 = *(&v23 + 1);
        v13 = v24;
        __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
        (*(v13 + 8))(&v26, v14, v13);
        __swift_destroy_boxed_opaque_existential_1(&v22);
      }

      else
      {
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        sub_1B9F43A50(&v22, &qword_1EDC63CB0, qword_1EDC63CB8, &protocol descriptor for PinnedContentManagerProviding);
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v25);
      if (*(&v27 + 1))
      {

        sub_1B9F25598(&v26, v29);
        v5 = v20;
        goto LABEL_3;
      }

      sub_1B9F43A50(&v26, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48]);
      ++v10;
      if (v12 == v9)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_2:
  sub_1B9F25598(&v26, v29);
  v5 = a1;
LABEL_3:
  sub_1B9F25598(v29, v5);
  return result;
}

double sub_1B9F60FA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0AD9C(a1, &v6);
  sub_1B9F0D950(0, qword_1EDC63CB8, &protocol descriptor for PinnedContentManagerProviding);
  if (swift_dynamicCast())
  {
    v3 = *(&v8 + 1);
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_1B9F43A50(&v7, &qword_1EDC63CB0, qword_1EDC63CB8, &protocol descriptor for PinnedContentManagerProviding);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_1B9F61090@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B9F0AD9C(a1, &v6);
  sub_1B9F0D950(0, &qword_1EDC6DE30, &protocol descriptor for HealthExperienceStoreProviding);
  if (swift_dynamicCast())
  {
    v3 = *(&v8 + 1);
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_1B9F43A50(&v7, &qword_1EDC6DE28, &qword_1EDC6DE30, &protocol descriptor for HealthExperienceStoreProviding);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t UIViewController.resolvedHealthExperienceStore.getter@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UIViewController.availableHealthExperienceStore.getter(&v25);
  if (v26)
  {
    sub_1B9F25598(&v25, v27);
    return sub_1B9F25598(v27, a1);
  }

  else
  {
    sub_1B9F43A50(&v25, &qword_1EDC6AE08, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
    sub_1BA4A3DD8();
    v10 = v1;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v25 = v24;
      *v13 = 136446466;
      *&v27[0] = ObjectType;
      swift_getMetatypeMetadata();
      v14 = sub_1BA4A6808();
      v16 = sub_1B9F0B82C(v14, v15, &v25);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      v17 = UIViewController.resolutionDebugDescription.getter();
      v19 = sub_1B9F0B82C(v17, v18, &v25);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s]: No HealthExperienceStore could be resolved in hierarchy: %s", v13, 0x16u);
      v20 = v24;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v21 = sub_1BA4A1B08();
    result = sub_1BA4A1AF8();
    v22 = MEMORY[0x1E69A3B38];
    a1[3] = v21;
    a1[4] = v22;
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B9F613F4(uint64_t a1, uint64_t a2)
{
  sub_1B9F5AB80(0, &qword_1EDC5F218, sub_1B9F5FCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double UIViewController.availableHealthExperienceStore.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  *(&v22 + 1) = v3;
  *&v21 = v1;
  v4 = v1;
  sub_1B9F61090(&v21, &v25);
  __swift_destroy_boxed_opaque_existential_1(&v21);
  if (*(&v26 + 1))
  {
    sub_1B9F25598(&v25, v28);
LABEL_3:
    v5 = a1;
LABEL_22:
    sub_1B9F25598(v28, v5);
    return result;
  }

  sub_1B9F43A50(&v25, &qword_1EDC6AE08, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
  v6 = sub_1BA096838();
  v7 = v6;
  v19 = a1;
  if (v6 >> 62)
  {
    goto LABEL_28;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
LABEL_6:
    v9 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1BFAF2860](v9, v7);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v7 + 8 * v9 + 32);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          v8 = sub_1BA4A7CC8();
          if (!v8)
          {
            break;
          }

          goto LABEL_6;
        }
      }

      v24[3] = v3;
      v24[0] = v10;
      sub_1B9F0AD9C(v24, v20);
      sub_1B9F0D950(0, &qword_1EDC6DE30, &protocol descriptor for HealthExperienceStoreProviding);
      if (swift_dynamicCast())
      {
        v13 = *(&v22 + 1);
        v12 = v23;
        __swift_project_boxed_opaque_existential_1(&v21, *(&v22 + 1));
        (*(v12 + 8))(&v25, v13, v12);
        __swift_destroy_boxed_opaque_existential_1(&v21);
      }

      else
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        sub_1B9F43A50(&v21, &qword_1EDC6DE28, &qword_1EDC6DE30, &protocol descriptor for HealthExperienceStoreProviding);
        v25 = 0u;
        v26 = 0u;
        v27 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1(v24);
      if (*(&v26 + 1))
      {

        sub_1B9F25598(&v25, v28);
        goto LABEL_21;
      }

      sub_1B9F43A50(&v25, &qword_1EDC6AE08, &qword_1EDC6E248, MEMORY[0x1E69A3B40]);
      ++v9;
    }

    while (v11 != v8);
  }

  v14 = [v4 parentViewController];
  if (v14)
  {
    v15 = v14;
    UIViewController.resolvedHealthExperienceStore.getter(v28);

LABEL_21:
    v5 = v19;
    goto LABEL_22;
  }

  v17 = [v4 presentingViewController];
  a1 = v19;
  if (v17)
  {
    v18 = v17;
    UIViewController.resolvedHealthExperienceStore.getter(v28);

    goto LABEL_3;
  }

  *(v19 + 32) = 0;
  result = 0.0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  return result;
}

uint64_t sub_1B9F617A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void SnidgetSwiftChartView.body.getter(uint64_t a1@<X8>)
{
  v209 = a1;
  v208 = sub_1BA4A54D8();
  v207 = *(v208 - 8);
  MEMORY[0x1EEE9AC00](v208, v2);
  v206 = &v181 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F64544(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v223 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F64EDC(0);
  v187 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v186 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v183 = &v181 - v12;
  v220 = sub_1BA4A1728();
  v184 = *(v220 - 1);
  MEMORY[0x1EEE9AC00](v220, v13);
  v219 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v218 = &v181 - v17;
  v216 = sub_1BA4A0FA8();
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216, v18);
  v217 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v214 = &v181 - v22;
  sub_1B9F57C6C(0);
  v224 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v185 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56438(0);
  v211 = v26;
  v212 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F564F8(0);
  v227 = v30;
  v213 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v31);
  v210 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56B68(0);
  v221 = v33;
  v182 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v228 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56640(0);
  v190 = v36;
  v189 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v37);
  v222 = &v181 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F5677C(0);
  v192 = v39;
  v191 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v40);
  v188 = &v181 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56AA0(0);
  v194 = v42;
  MEMORY[0x1EEE9AC00](v42, v43);
  v195 = &v181 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56C54(0);
  MEMORY[0x1EEE9AC00](v45 - 8, v46);
  v196 = &v181 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F55BC0(0);
  v193 = v48;
  MEMORY[0x1EEE9AC00](v48, v49);
  v225 = &v181 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F555E8(0);
  v197 = v51;
  MEMORY[0x1EEE9AC00](v51, v52);
  v226 = &v181 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1E697E830];
  sub_1B9F54DF4(0, &qword_1EDC5EE28, sub_1B9F555E8, sub_1B9F5802C, MEMORY[0x1E697E830]);
  v200 = v55;
  MEMORY[0x1EEE9AC00](v55, v56);
  v202 = &v181 - v57;
  sub_1B9F54AE0(0);
  v203 = v58;
  MEMORY[0x1EEE9AC00](v58, v59);
  v204 = &v181 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F54DF4(0, &qword_1EDC5EDE8, sub_1B9F54AE0, sub_1B9F584B8, v54);
  v201 = v61;
  MEMORY[0x1EEE9AC00](v61, v62);
  v205 = &v181 - v63;
  v64 = sub_1BA4A2C58();
  v65 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64, v66);
  v68 = &v181 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  MEMORY[0x1EEE9AC00](v69 - 8, v70);
  v72 = &v181 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(v1 + 8);
  v74 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  sub_1B9F63EF0(v73 + v74, v72, type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
  v75 = sub_1BA3697C4();
  sub_1BA4A2C48();
  v76 = sub_1BA4A2B78();

  (*(v65 + 8))(v68, v64);
  sub_1B9F617A8(v72, type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
  v199 = v1;
  v229 = v1;
  v198 = v76;
  v230 = v76;
  sub_1B9F56D28(0, &qword_1EDC5F838, sub_1B9F56E14, sub_1B9F56ECC);
  sub_1B9F5708C();
  sub_1BA4A49C8();
  v77 = sub_1B9F48334(&qword_1EDC5F728, sub_1B9F56438, MEMORY[0x1E695B218]);
  v78 = v210;
  v79 = v211;
  sub_1BA4A5E28();
  (*(v212 + 8))(v29, v79);
  v233 = v79;
  v234 = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = v227;
  v212 = OpaqueTypeConformance2;
  sub_1BA4A5E38();
  (*(v213 + 8))(v78, v81);
  v82 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
  swift_beginAccess();
  v83 = v215;
  v84 = *(v215 + 16);
  v85 = v214;
  v86 = v216;
  v84(v214, v73 + v82, v216);
  v87 = v218;
  sub_1BA4A0F88();
  v88 = *(v83 + 8);
  v89 = v86;
  v88(v85, v86);
  v215 = v73;
  v90 = v217;
  v84(v217, v73 + v82, v89);
  v91 = v87;
  v92 = v219;
  sub_1BA4A0F58();
  v88(v90, v89);
  sub_1B9F48334(&qword_1EDC6E260, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v93 = v220;
  if (sub_1BA4A6708())
  {
    v94 = v184;
    v95 = *(v184 + 32);
    v96 = v183;
    v95(v183, v91, v93);
    v97 = v187;
    v95((v96 + *(v187 + 48)), v92, v93);
    v98 = v186;
    sub_1B9F63EF0(v96, v186, sub_1B9F64EDC);
    v99 = *(v97 + 48);
    v100 = v185;
    v95(v185, v98, v93);
    v101 = *(v94 + 8);
    v101(v98 + v99, v93);
    sub_1B9F6307C(v96, v98, sub_1B9F64EDC);
    v95((v100 + *(v224 + 36)), (v98 + *(v97 + 48)), v93);
    v101(v98, v93);
    v102 = sub_1BA4A4A78();
    v103 = v223;
    v220 = *(*(v102 - 8) + 56);
    (v220)(v223, 1, 1, v102);
    v233 = v227;
    v234 = v212;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = sub_1B9F57DAC();
    v106 = v221;
    v107 = v228;
    sub_1BA4A5E48();
    sub_1B9F617A8(v103, sub_1B9F64544);
    sub_1B9F617A8(v100, sub_1B9F57C6C);
    (*(v182 + 8))(v107, v106);
    v108 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis;
    v109 = v215;
    swift_beginAccess();
    LODWORD(v98) = *(v109 + v108);
    sub_1B9F51694(0, &qword_1EDC5DBE8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v110 = swift_allocObject();
    *(v110 + 16) = xmmword_1BA4B5460;
    v111 = (v109 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange);
    swift_beginAccess();
    *(v110 + 32) = *v111;
    *(v110 + 40) = v111[1];
    if (v98 == 1)
    {
      v110 = sub_1BA3269FC(v110);
    }

    v237 = v110;
    v112 = v223;
    (v220)(v223, 1, 1, v102);
    sub_1B9F51694(0, &qword_1EDC5E680, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    v233 = v221;
    v234 = v224;
    v235 = v104;
    v236 = v105;
    swift_getOpaqueTypeConformance2();
    sub_1B9F57E6C();
    v113 = v188;
    v114 = v190;
    v115 = v222;
    sub_1BA4A5E58();
    sub_1B9F617A8(v112, sub_1B9F64544);

    (*(v189 + 8))(v115, v114);
    v116 = sub_1BA4A5BD8();
    swift_beginAccess();
    sub_1BA4A5188();
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    v125 = v195;
    (*(v191 + 32))(v195, v113, v192);
    v126 = v125 + *(v194 + 36);
    *v126 = v116;
    *(v126 + 8) = v118;
    *(v126 + 16) = v120;
    *(v126 + 24) = v122;
    *(v126 + 32) = v124;
    *(v126 + 40) = 0;
    v127 = v199;
    v231 = sub_1BA369660();
    v232 = v128;
    MEMORY[0x1BFAF1350](0x74726168432ELL, 0xE600000000000000);
    sub_1B9F58D10();
    v129 = v196;
    sub_1BA4A5F18();

    sub_1B9F6442C(v125, sub_1B9F56AA0);
    KeyPath = swift_getKeyPath();
    v131 = v225;
    v132 = (v225 + *(v193 + 36));
    sub_1B9F57F00(0);
    v134 = *(v133 + 28);
    v135 = *MEMORY[0x1E697E7D0];
    v136 = sub_1BA4A53F8();
    (*(*(v136 - 8) + 104))(v132 + v134, v135, v136);
    *v132 = KeyPath;
    sub_1B9F643C4(v129, v131, sub_1B9F56C54);
    v137 = *(v127 + 16);
    v138 = (v109 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration);
    v139 = *(v109 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8);
    if (v139 && v137 && (v140 = *(v137 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8)) != 0 && (*v138 == *(v137 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration) && v139 == v140 || (sub_1BA4A8338() & 1) != 0))
    {
      v141 = v206;
      sub_1BA4A5498();
    }

    else
    {
      v141 = v206;
      sub_1BA4A54C8();
    }

    v142 = v208;
    v143 = v205;
    v144 = v197;
    v145 = swift_getKeyPath();
    v146 = *(v144 + 36);
    v147 = v226;
    v148 = (v226 + v146);
    sub_1B9F57FD4(0);
    (*(v207 + 32))(v148 + *(v149 + 28), v141, v142);
    *v148 = v145;
    sub_1B9F643C4(v225, v147, sub_1B9F55BC0);
    swift_beginAccess();
    v150 = *(v109 + 24);
    v151 = v138[1];
    if (v151 && v137 && (v152 = *(v137 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration + 8)) != 0)
    {
      v153 = v202;
      if (*v138 == *(v137 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration) && v151 == v152)
      {
        v154 = 1;
      }

      else
      {
        v154 = sub_1BA4A8338();
      }
    }

    else
    {
      v154 = 0;
      v153 = v202;
    }

    v156 = MEMORY[0x1BFAF0E30](v155, 0.5, 0.7, 0.0);
    sub_1B9F643C4(v226, v153, sub_1B9F555E8);
    v157 = v153 + *(v200 + 36);
    *v157 = v150;
    *(v157 + 8) = v156;
    *(v157 + 16) = v154 & 1;
    if (*(v109 + 16) == 1)
    {
      swift_beginAccess();
    }

    v158 = sub_1BA4A5B78();
    sub_1BA4A5188();
    v160 = v159;
    v162 = v161;
    v164 = v163;
    v166 = v165;
    v167 = v204;
    sub_1B9F642EC(v153, v204, &qword_1EDC5EE28, sub_1B9F555E8, sub_1B9F5802C);
    v168 = v167 + *(v203 + 36);
    *v168 = v158;
    *(v168 + 8) = v160;
    *(v168 + 16) = v162;
    *(v168 + 24) = v164;
    *(v168 + 32) = v166;
    *(v168 + 40) = 0;
    sub_1B9F643C4(v167, v143, sub_1B9F54AE0);
    *(v143 + *(v201 + 36)) = 0;
    if (*(v109 + 16) == 1)
    {
      swift_beginAccess();
    }

    v169 = sub_1BA4A5B78();
    sub_1BA4A5188();
    v171 = v170;
    v173 = v172;
    v175 = v174;
    v177 = v176;

    v178 = v209;
    sub_1B9F642EC(v143, v209, &qword_1EDC5EDE8, sub_1B9F54AE0, sub_1B9F584B8);
    sub_1B9F549BC(0);
    v180 = v178 + *(v179 + 36);
    *v180 = v169;
    *(v180 + 8) = v171;
    *(v180 + 16) = v173;
    *(v180 + 24) = v175;
    *(v180 + 32) = v177;
    *(v180 + 40) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F62F24(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_1B9F62F84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  v4 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(v1 + v3, v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1B9F49124(v6);
  sub_1B9F4A1F4(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v4, sub_1B9F0CDE8);
  return sub_1B9F4A1F4(v6, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v4, sub_1B9F0CDE8);
}

uint64_t sub_1B9F6307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F630E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  *&v120 = a3;
  sub_1B9F64E60(0, &qword_1EDC5F730, sub_1B9F56E14, sub_1B9F56ECC);
  *&v119 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v118 = &v109 - v6;
  v109 = type metadata accessor for SnidgetSwiftChartView.AverageLine(0);
  MEMORY[0x1EEE9AC00](v109, v7);
  v112 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56FA0(0);
  v115 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v110 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56ECC(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v117 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v116 = &v109 - v18;
  v19 = type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SnidgetSwiftChartView.LineChartMarks(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56E84(0);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v30 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SnidgetSwiftChartView.BarChartMarks(0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F56E14(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v113 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38, v39);
  v121 = &v109 - v40;
  v111 = a1;
  v41 = *(a1 + 8);
  swift_beginAccess();
  v42 = *(v41 + 16);
  v114 = v10;
  if (v42)
  {
    if (v42 != 1)
    {
      swift_beginAccess();
      v65 = *(v41 + 24);
      v66 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
      swift_beginAccess();
      sub_1B9F63EF0(v41 + v66, &v22[v19[5]], type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
      v67 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
      swift_beginAccess();
      v68 = v19[6];
      v69 = sub_1BA4A1898();
      (*(*(v69 - 8) + 16))(&v22[v68], v41 + v67, v69);
      v70 = (v41 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
      swift_beginAccess();
      v71 = *(v70 + 4);
      v72 = v19[7];
      v73 = *v70;
      v74 = v70[1];
      *v22 = v65;
      *&v22[v72] = v122;
      v75 = &v22[v19[8]];
      *v75 = v73;
      *(v75 + 1) = v74;
      *(v75 + 4) = v71;
      sub_1B9F6307C(v22, v121, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks);
      goto LABEL_7;
    }

    swift_beginAccess();
    v43 = *(v41 + 24);
    v44 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
    swift_beginAccess();
    sub_1B9F63EF0(v41 + v44, &v26[v23[5]], type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
    v45 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
    swift_beginAccess();
    v46 = v23[6];
    v47 = sub_1BA4A1898();
    (*(*(v47 - 8) + 16))(&v26[v46], v41 + v45, v47);
    v48 = (v41 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
    swift_beginAccess();
    v49 = *(v48 + 4);
    v50 = v23[7];
    v51 = *v48;
    v52 = v48[1];
    *v26 = v43;
    *&v26[v50] = v122;
    v53 = &v26[v23[8]];
    *v53 = v51;
    *(v53 + 1) = v52;
    *(v53 + 4) = v49;
    sub_1B9F6307C(v26, v30, type metadata accessor for SnidgetSwiftChartView.LineChartMarks);
    sub_1B9F54DF4(0, &qword_1EDC5F760, type metadata accessor for SnidgetSwiftChartView.BarChartMarks, type metadata accessor for SnidgetSwiftChartView.LineChartMarks, MEMORY[0x1E695B1A0]);
  }

  else
  {
    swift_beginAccess();
    v54 = *(v41 + 24);
    v55 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
    swift_beginAccess();
    sub_1B9F63EF0(v41 + v55, &v34[v31[5]], type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight);
    v56 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
    swift_beginAccess();
    v57 = v31[6];
    v58 = sub_1BA4A1898();
    (*(*(v58 - 8) + 16))(&v34[v57], v41 + v56, v58);
    v59 = (v41 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
    swift_beginAccess();
    v60 = *(v59 + 4);
    v61 = v31[7];
    v62 = *v59;
    v63 = v59[1];
    *v34 = v54;
    *&v34[v61] = v122;
    v64 = &v34[v31[8]];
    *v64 = v62;
    *(v64 + 1) = v63;
    *(v64 + 4) = v60;
    sub_1B9F6307C(v34, v30, type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
    sub_1B9F54DF4(0, &qword_1EDC5F760, type metadata accessor for SnidgetSwiftChartView.BarChartMarks, type metadata accessor for SnidgetSwiftChartView.LineChartMarks, MEMORY[0x1E695B1A0]);
  }

  swift_storeEnumTagMultiPayload();
  sub_1B9F6307C(v30, v121, sub_1B9F56E84);
LABEL_7:
  v76 = v120;
  v77 = v119;
  v78 = v118;
  v79 = v117;
  sub_1B9F54DF4(0, &qword_1EDC5F758, sub_1B9F56E84, type metadata accessor for SnidgetSwiftChartView.DistributionChartMarks, MEMORY[0x1E695B1A0]);
  swift_storeEnumTagMultiPayload();

  v80 = v41 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight;
  swift_beginAccess();
  v81 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  if (*(v80 + *(v81 + 20)) <= 1u && *(v80 + *(v81 + 20)))
  {
  }

  else
  {
    v82 = sub_1BA4A8338();

    if ((v82 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v83 = (v80 + *(v81 + 28));
  if ((v83[1] & 1) == 0)
  {
    v88 = *v83;
    v89 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
    swift_beginAccess();
    v90 = sub_1BA4A0FA8();
    v91 = v112;
    (*(*(v90 - 8) + 16))(v112, v41 + v89, v90);
    v92 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep;
    swift_beginAccess();
    v93 = v109;
    v94 = *(v109 + 28);
    v95 = sub_1BA4A1898();
    (*(*(v95 - 8) + 16))(v91 + v94, v41 + v92, v95);
    v96 = (v41 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters);
    swift_beginAccess();
    v97 = *(v96 + 4);
    v98 = v93[9];
    v99 = v96[1];
    v120 = *v96;
    v119 = v99;
    sub_1BA369930((v91 + v98));
    *(v91 + v93[5]) = v88;
    *(v91 + v93[6]) = v122;
    v100 = v91 + v93[8];
    v101 = v119;
    *v100 = v120;
    *(v100 + 16) = v101;
    *(v100 + 32) = v97;

    v123 = sub_1BA369660();
    v124 = v102;
    MEMORY[0x1BFAF1350](0x656761726576612ELL, 0xEC000000656E694CLL);
    sub_1B9F48334(qword_1EDC673F8, type metadata accessor for SnidgetSwiftChartView.AverageLine, &unk_1BA4D4744);
    v103 = v110;
    sub_1BA4A4928();

    sub_1B9F617A8(v91, type metadata accessor for SnidgetSwiftChartView.AverageLine);
    v87 = v114;
    v85 = v116;
    v104 = v115;
    (*(v114 + 32))(v116, v103, v115);
    v86 = v104;
    v84 = 0;
    goto LABEL_16;
  }

LABEL_14:
  v84 = 1;
  v85 = v116;
  v86 = v115;
  v87 = v114;
LABEL_16:
  (*(v87 + 56))(v85, v84, 1, v86);
  v105 = v121;
  v106 = v113;
  sub_1B9F63EF0(v121, v113, sub_1B9F56E14);
  sub_1B9F64138(v85, v79, sub_1B9F56ECC);
  sub_1B9F57238();
  sub_1B9F63EF0(v106, v78, sub_1B9F56E14);
  sub_1B9F579CC();
  v107 = *(v77 + 48);
  sub_1B9F64138(v79, v78 + v107, sub_1B9F56ECC);
  sub_1B9F6307C(v78, v76, sub_1B9F56E14);
  sub_1B9F643C4(v78 + v107, v76 + *(v77 + 48), sub_1B9F56ECC);
  sub_1B9F6442C(v85, sub_1B9F56ECC);
  sub_1B9F617A8(v105, sub_1B9F56E14);
  sub_1B9F6442C(v79, sub_1B9F56ECC);
  return sub_1B9F617A8(v106, sub_1B9F56E14);
}

uint64_t sub_1B9F63E74(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F63EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1B9F63F58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F63FA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F63FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F64048(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F64098(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F640E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B9F64138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F641A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = &v2[OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_baseIdentifier];
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 1) = a2;

  if (a2)
  {

    v9 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    sub_1BA4A76D8();
    sub_1B9F5B584();
    sub_1BA4A4008();
    return sub_1BA4A76E8();
  }

  return result;
}

uint64_t sub_1B9F642EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1B9F54DF4(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B9F64370()
{
  swift_beginAccess();
  v0 = qword_1EBBEF230;

  return v0;
}

uint64_t sub_1B9F643C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F6442C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1B9F6448C@<D0>(void *a1@<X8>)
{
  if (qword_1EDC631A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EDC631B8;
  *a1 = qword_1EDC631B0;
  a1[1] = v2;

  return result;
}

uint64_t sub_1B9F6450C()
{
  result = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  qword_1EDC631B0 = result;
  qword_1EDC631B8 = v1;
  return result;
}

uint64_t FeedItem.pluginInfo.getter()
{
  v1 = sub_1BA4A3EA8();
  MEMORY[0x1EEE9AC00](v1, v2);
  v11 = v0;
  sub_1BA4A27B8();
  sub_1B9F6496C();
  v3 = v0;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v9, v12);
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v6;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1B9F64D78(v9);
    if (qword_1EDC6CBD0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    v8 = [v3 pluginPackage];
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

    sub_1BA4A3B78();

    type metadata accessor for UIPluginInfo(0);
    *(swift_allocObject() + qword_1EDC6DC48) = 1;
    return sub_1BA4A3AC8();
  }
}

void *sub_1B9F6491C@<X0>(void *a1@<X8>)
{
  sub_1B9F64FA8();
  result = sub_1BA4A5748();
  *a1 = v3;
  return result;
}

unint64_t sub_1B9F6496C()
{
  result = qword_1EDC6D7F0;
  if (!qword_1EDC6D7F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6D7F0);
  }

  return result;
}

uint64_t sub_1B9F649D0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  result = sub_1BA4A4D78();
  *a2 = result;
  return result;
}

uint64_t sub_1B9F64A24(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1BA4A0FA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1BA4A1898();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = sub_1BA4A51B8();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

void sub_1B9F64B98(uint64_t a1)
{
  if (!qword_1EDC6D7E8)
  {
    sub_1B9F6496C();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6D7E8);
    }
  }
}

uint64_t sub_1B9F64C04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1BA4A0FA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_1BA4A1898();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_1BA4A51B8();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B9F64D78(uint64_t a1)
{
  sub_1B9F64B98(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F64DD4()
{
  v0 = *MEMORY[0x1E696C858];
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = v0;
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    sub_1B9F64F44(0);
    swift_allocObject();
    qword_1EDC6CBD8 = sub_1BA4A3B98();
  }

  else
  {
    __break(1u);
  }
}