void *sub_1C47CDA90(uint64_t a1, void *a2, void *a3)
{
  result = sub_1C4409678((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1C467BF20();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_1C467BF1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C47CDB20(void (*a1)(uint64_t)@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X5>, _BYTE *a6@<X6>, _BYTE *a7@<X8>)
{
  if (__OFADD__(*a2, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a2;
    sub_1C47CE0D4(a3, &v22);
    if (v23)
    {
      v21 = a7;
      sub_1C441D670(&v22, v24);
      v13 = v25;
      v14 = v26;
      sub_1C4409678(v24, v25);
      LOBYTE(v22) = *(a4 + *(type metadata accessor for FAFamilySourceIngestor(0) + 24));
      sub_1C47CC080(&v22, v13, v14);
      if (v7)
      {
        sub_1C440962C(v24);
        v24[0] = v7;
        v17 = v7;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        if (swift_dynamicCast())
        {

          v18 = v22;
          sub_1C465B58C();
          v19 = swift_allocError();
          *v20 = v18;
          v27 = 1;
          static Transformers.reportError(error:context:config:pipelineType:)(v19, 0x796C696D61464146, 0xE800000000000000, a4, &v27);
        }

        else
        {

          LOBYTE(v24[0]) = 1;
          static Transformers.reportError(error:context:config:pipelineType:)(v7, 0x796C696D61464146, 0xE800000000000000, a4, v24);

          *a6 = 1;
        }

        a7 = v21;
        goto LABEL_12;
      }

      sub_1C4812140();
      v16 = v15;

      a1(v16);

      sub_1C440962C(v24);
      a7 = v21;
    }

    else
    {
      sub_1C47CDFA0(&v22);
    }

    if (!__OFADD__(*a5, 1))
    {
      ++*a5;
LABEL_12:
      *a7 = *a6;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C47CDD70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4665934;

  return sub_1C47CD2E0();
}

uint64_t sub_1C47CDE6C(uint64_t a1)
{
  result = sub_1C47CDF38(&qword_1EDDE2F48, &unk_1C4F2D488);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47CDEB0(uint64_t a1)
{
  result = sub_1C47CDF38(&qword_1EDDE2F30, &unk_1C4F2D4B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47CDEF4(uint64_t a1)
{
  result = sub_1C47CDF38(&qword_1EDDE2F38, &unk_1C4F2D4CC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47CDF38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FAFamilySourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C47CDFA0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BD1C8, &unk_1C4F2D520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47CE008(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD1C8, &unk_1C4F2D520);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47CE078(uint64_t a1)
{
  v2 = type metadata accessor for Pipeline.StatusStore(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47CE0D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BD1C8, &unk_1C4F2D520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47CE144(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for FAFamilySourceIngestor(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Source(0);
  *(v3 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v9);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C47CE29C, 0, 0);
}

uint64_t sub_1C47CE29C()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFED38 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 64), qword_1EDDFD0F0);
  *(v0 + 104) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8, type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8 + *(v9 + 20), type metadata accessor for Source);
  *(v8 + *(v9 + 24)) = v4;
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 120) = 1;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C47CE454;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C47CE454()
{

  return MEMORY[0x1EEE6DFA0](sub_1C47CE550, 0, 0);
}

uint64_t sub_1C47CE550()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  v23 = v0[5];
  v7 = v0[2];
  v8 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v7, v3, v9);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v7);
  v10 = (v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v4;
  v10[4] = sub_1C47CE7F0();
  v11 = sub_1C4422F90(v10);
  sub_1C47CE848(v5, v11, type metadata accessor for FAFamilySourceIngestor);
  sub_1C44002E8();
  sub_1C47CE848(v2, v12, v13);
  sub_1C44002E8();
  sub_1C47CE848(v1, v14, v15);
  sub_1C44002E8();
  sub_1C47CE848(v23, v16, v17);
  sub_1C44002E8();
  sub_1C47CE848(v6, v18, v19);
  *(v8 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v20 = v0[1];
  v21 = v0[3];

  return v20(v21);
}

uint64_t type metadata accessor for FamilyCircleGroupPhase(uint64_t a1)
{
  result = qword_1EDDE2E80;
  if (!qword_1EDDE2E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C47CE7F0()
{
  result = qword_1EDDE2F40;
  if (!qword_1EDDE2F40)
  {
    type metadata accessor for FAFamilySourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2F40);
  }

  return result;
}

uint64_t sub_1C47CE848(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C47CE8B4()
{
  if (qword_1EC0B7140 != -1)
  {
    swift_once();
  }

  qword_1EC151F98 = qword_1EC0C3908;
  unk_1EC151FA0 = *&qword_1EC0C3910;
  qword_1EC151FB0 = qword_1EC0C3920;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C47CE934(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BD1F8, &qword_1C4F2D630);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C47CF038();
  sub_1C4F02BF8();
  v15 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v14 = 1;
    sub_1C4F02738();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C47CEB10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BD1E8, &unk_1C4F2D620);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C47CF038();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v8 = v7;
  v15 = v6;
  v13 = sub_1C4F02618();
  v14 = v9;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v10 = sub_1C4402F74();
  v11(v10);
  result = sub_1C440962C(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

uint64_t sub_1C47CED88(uint64_t a1)
{
  v2 = sub_1C47CF038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47CEDC4(uint64_t a1)
{
  v2 = sub_1C47CF038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C47CEE00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B6AD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC151FB0;
  *a1 = qword_1EC151F98;
  *(a1 + 8) = unk_1EC151FA0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

double sub_1C47CEE84@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C47CEB10(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C47CEEE4(uint64_t a1)
{
  result = sub_1C47CEF0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C47CEF0C()
{
  result = qword_1EC0BD1D0;
  if (!qword_1EC0BD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1D0);
  }

  return result;
}

unint64_t sub_1C47CEF60(uint64_t a1)
{
  *(a1 + 8) = sub_1C47CEF90();
  result = sub_1C47CEFE4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C47CEF90()
{
  result = qword_1EC0BD1D8;
  if (!qword_1EC0BD1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1D8);
  }

  return result;
}

unint64_t sub_1C47CEFE4()
{
  result = qword_1EC0BD1E0;
  if (!qword_1EC0BD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1E0);
  }

  return result;
}

unint64_t sub_1C47CF038()
{
  result = qword_1EC0BD1F0;
  if (!qword_1EC0BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD1F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FamilyMember.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C47CF16C()
{
  result = qword_1EC0BD200;
  if (!qword_1EC0BD200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD200);
  }

  return result;
}

unint64_t sub_1C47CF1C4()
{
  result = qword_1EC0BD208;
  if (!qword_1EC0BD208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD208);
  }

  return result;
}

unint64_t sub_1C47CF21C()
{
  result = qword_1EC0BD210;
  if (!qword_1EC0BD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD210);
  }

  return result;
}

uint64_t sub_1C47CF270(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_store) = a3;
  return v3;
}

uint64_t sub_1C47CF2DC()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView____lazy_storage___featureNames);
  }

  else
  {
    sub_1C448DE08();
    v2 = v3;
    *(v0 + v1) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C47CF348()
{
  v151 = type metadata accessor for GraphTriple(0);
  sub_1C43FCDF8();
  v133 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = v116 - v6;
  v7 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v143 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v137 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v136 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v145 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v17 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v116 - v19;
  v138 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v142 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v141 = v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v116 - v25;
  v27 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v149 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v129 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v116 - v35;
  v134 = v0;
  v135 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_store);
  sub_1C486DFC0();
  sub_1C4868198();

  if (sub_1C44157D4(v26, 1, v27) == 1)
  {
    return sub_1C4420C3C(v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v146 = *(v29 + 32);
  v147 = (v29 + 32);
  v146(v36, v26, v27);
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v38 = *(v29 + 72);
  v39 = *(v29 + 80);
  v130 = v29;
  v40 = (v39 + 32) & ~v39;
  v154 = v38;
  v41 = swift_allocObject();
  v131 = xmmword_1C4F0D130;
  *(v41 + 16) = xmmword_1C4F0D130;
  v42 = *(v29 + 16);
  v148 = v40;
  v150 = v27;
  v152 = v42;
  v153 = v29 + 16;
  v42(v41 + v40, v36, v27);
  sub_1C4D51ABC();
  v128 = v43;
  v44 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v45 = *(sub_1C4EFEEF8() - 8);
  v46 = *(v45 + 80);
  v47 = (v46 + 32) & ~v46;
  v121 = *(v45 + 72);
  v120 = v46;
  v123 = v44;
  v48 = swift_allocObject();
  sub_1C44322E0(v48);
  v122 = v47;
  sub_1C4EFE2C8();
  sub_1C4D504A4();
  v127 = v49;
  v140 = v20;
  v50 = *MEMORY[0x1E69A95C0];
  v51 = v143;
  v132 = v36;
  v52 = v7;
  v54 = v143 + 104;
  v53 = *(v143 + 104);
  sub_1C43FC2F4();
  v53();
  v55 = v17;
  sub_1C43FC2F4();
  v53();
  sub_1C43FC2F4();
  v53();
  v56 = v136;
  sub_1C43FC2F4();
  v53();
  v57 = v137;
  v125 = v50;
  sub_1C43FC2F4();
  v126 = v54;
  v124 = v53;
  v53();
  v58 = v145;
  sub_1C4EFDCD8();

  v59 = *(v51 + 8);
  v59(v57, v52);
  v59(v56, v52);
  v59(v58, v52);
  v128 = v55;
  v59(v55, v52);
  v127 = v59;
  v59(v140, v52);
  v60 = sub_1C4EFF8F8();
  v61 = v139;
  v119 = v60;
  sub_1C440BAA8(v139, 1, 1, v60);
  v62 = v141;
  v63 = sub_1C498DB80();
  sub_1C4420C3C(v61, &qword_1EC0BAA00, &unk_1C4F17400);
  v64 = *(v142 + 8);
  v142 += 8;
  v118 = v64;
  v64(v62, v138);
  v65 = *(v63 + 16);
  v66 = v52;
  v143 = v51 + 8;
  if (v65)
  {
    v117 = v52;
    v155[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v65, 0);
    v67 = v155[0];
    v68 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v116[1] = v63;
    v69 = v63 + v68;
    v70 = *(v133 + 72);
    do
    {
      sub_1C449EE28(v69, v4, type metadata accessor for GraphTriple);
      v71 = &v4[v151[8]];
      v73 = *v71;
      v72 = *(v71 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C449F17C(v4, type metadata accessor for GraphTriple);
      v155[0] = v67;
      v75 = *(v67 + 16);
      v74 = *(v67 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1C44CD9C0(v74 > 1, v75 + 1, 1);
        v67 = v155[0];
      }

      *(v67 + 16) = v75 + 1;
      v76 = v67 + 16 * v75;
      *(v76 + 32) = v73;
      *(v76 + 40) = v72;
      v69 += v70;
      --v65;
    }

    while (v65);

    v77 = v132;
    v66 = v117;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
    v77 = v132;
  }

  v78 = v128;
  if (*(v67 + 16))
  {
    v79 = swift_allocObject();
    sub_1C44322E0(v79);
    sub_1C4EFE2C8();
    sub_1C4D504A4();
    v151 = v80;
    *&v131 = sub_1C4499940();
    sub_1C440AA08();
    v81 = v124;
    v124();
    sub_1C440AA08();
    v81();
    sub_1C440AA08();
    v81();
    v82 = v136;
    sub_1C440AA08();
    v81();
    v83 = v78;
    v84 = v137;
    sub_1C440AA08();
    v81();
    v85 = v83;
    v86 = v141;
    v87 = v145;
    sub_1C4EFDCD8();

    v88 = v127;
    v127(v84, v66);
    v88(v82, v66);
    v88(v87, v66);
    v88(v85, v66);
    v88(v140, v66);
    v89 = v139;
    sub_1C440BAA8(v139, 1, 1, v119);
    v90 = sub_1C498DB80();
    sub_1C4420C3C(v89, &qword_1EC0BAA00, &unk_1C4F17400);
    v118(v86, v138);
    v91 = *(v90 + 2);
    if (v91)
    {
      v151 = v4;
      v155[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D178();
      v92 = v155[0];
      v93 = *(v133 + 80);
      v145 = v90;
      v94 = &v90[(v93 + 32) & ~v93];
      v95 = *(v133 + 72);
      v96 = v150;
      v97 = v129;
      do
      {
        v98 = v151;
        sub_1C449EE28(v94, v151, type metadata accessor for GraphTriple);
        v152(v97, v98, v96);
        sub_1C449F17C(v98, type metadata accessor for GraphTriple);
        v155[0] = v92;
        v99 = *(v92 + 16);
        v90 = (v99 + 1);
        if (v99 >= *(v92 + 24) >> 1)
        {
          sub_1C459D178();
          v92 = v155[0];
        }

        *(v92 + 16) = v90;
        v146((v92 + v148 + v99 * v154), v97, v96);
        v94 += v95;
        --v91;
      }

      while (v91);

      sub_1C4406DE0();
      v100 = v92;
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
      v96 = v150;
      sub_1C4406DE0();
    }

    v155[0] = MEMORY[0x10];
    v155[1] = MEMORY[0x18];
    v155[2] = MEMORY[0x20];
    v155[3] = MEMORY[0x28];
    v155[4] = MEMORY[0x30];
    v101 = *(v100 + 16);
    if (v101)
    {
      v156 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C459D810();
      v102 = v156;
      v151 = objc_opt_self();
      v91 = v100 + v148;
      v148 = 0x80000001C4F86460;
      v146 = v100;
      v147 = (v90 + 8);
      do
      {
        v103 = v149;
        v152(v149, v91, v96);
        v104 = sub_1C4EFF048();
        v106 = v105;
        v90 = [v151 featureValueWithInt64_];
        (*v147)(v103, v96);
        v156 = v102;
        v107 = *(v102 + 16);
        if (v107 >= *(v102 + 24) >> 1)
        {
          sub_1C459D810();
          v102 = v156;
        }

        *(v102 + 16) = v107 + 1;
        v108 = (v102 + 40 * v107);
        v108[4] = 0xD000000000000011;
        v108[5] = v148;
        v108[6] = v104;
        v108[7] = v106;
        v108[8] = v90;
        v91 += v154;
        --v101;
        v96 = v150;
      }

      while (v101);

      sub_1C4406DE0();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v109 = v144;
    sub_1C47D32C8();
    if (v109)
    {

      return (*(v90 + 1))(v132, v96);
    }

    else
    {

      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v110 = sub_1C4F00978();
      sub_1C442B738(v110, qword_1EDE2DF70);

      v111 = sub_1C4F00968();
      v112 = sub_1C4F01CB8();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = v90;
        v115 = swift_slowAlloc();
        v155[0] = v115;
        *v113 = 136315138;
        *(v113 + 4) = sub_1C441D828(*(v91 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config), *(v91 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config + 8), v155);
        _os_log_impl(&dword_1C43F8000, v111, v112, "SignalView %s: Wrote features", v113, 0xCu);
        sub_1C440962C(v115);
        MEMORY[0x1C6942830](v115, -1, -1);
        MEMORY[0x1C6942830](v113, -1, -1);

        return v114[1](v132, v150);
      }

      else
      {

        return (*(v90 + 1))(v132, v150);
      }
    }
  }

  else
  {
    (*(v130 + 8))(v77, v150);
  }
}

uint64_t sub_1C47D02B8()
{

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31FamilyNameEquivalencySignalView_config, _s10ViewConfigVMa);

  return v0;
}

uint64_t sub_1C47D0340()
{
  sub_1C47D02B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FamilyNameEquivalencySignalView(uint64_t a1)
{
  result = qword_1EC0BD220;
  if (!qword_1EC0BD220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47D03EC(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C47D04A0()
{
  sub_1C47CF348();
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C47D057C()
{
  v1 = sub_1C456902C(&qword_1EC0BD230, &unk_1C4F2D800);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v72 - v2;
  v4 = sub_1C456902C(&qword_1EC0BD238, &qword_1C4F731B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - v5;
  v76 = type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v77 = type metadata accessor for FavoriteSportsTeamStructs.SportsTeam(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v78 = v13 - v12;
  v14 = type metadata accessor for FavoriteSportsTeamStructs.Person(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  if (qword_1EDDE9248 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v19, qword_1EDE2CF30);
  String.base64EncodedSHA(withPrefix:)();
  v21 = v20;
  v23 = v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4DA334C(v21, v23, v24, v25, v26, v27, v28, v29, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
  if (v0)
  {
  }

  else
  {
    v73 = v21;
    v74 = v6;
    v30 = v10;
    v75 = v3;
    v31 = (v18 + *(v14 + 36));

    *v31 = xmmword_1C4F17530;
    v32 = v79;
    sub_1C4C6261C(v79);
    if (!v33)
    {
      sub_1C45B4BF8(v32, &selRef_qid);
    }

    if (qword_1EDDE92C0 != -1)
    {
      swift_once();
    }

    sub_1C442B738(v19, &qword_1EDE2CFF0);
    String.base64EncodedSHA(withPrefix:)();
    v35 = v34;
    v19 = v36;

    v43 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v43 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v43)
    {
      v44 = v78;
      sub_1C4DA3C38(v35, v19, v37, v38, v39, v40, v41, v42, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83);
      v72 = v30;
      v46 = v79;
      v47 = sub_1C45B4BF8(v79, &selRef_qid);
      v49 = v48;
      v50 = v77;
      v51 = v44;
      v52 = (v44 + *(v77 + 44));

      *v52 = v47;
      v52[1] = v49;
      v53 = v46;
      v54 = v72;
      v55 = sub_1C45B4BF8(v53, &selRef_name);
      v57 = v56;
      v58 = (v51 + *(v50 + 36));

      *v58 = v55;
      v58[1] = v57;
      v59 = sub_1C4EFEEF8();
      sub_1C440BAA8(v54, 1, 1, v59);
      v60 = v76;
      sub_1C4EFD258();
      v61 = v60[6];
      if (qword_1EDDFD240 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Source(0);
      v63 = sub_1C442B738(v62, &qword_1EDDFD248);
      sub_1C448CC68(v63, v54 + v61, type metadata accessor for Source);
      sub_1C4EFE558();
      v64 = (v54 + v60[8]);
      sub_1C4EFE658();
      v65 = v60[10];
      *v64 = sub_1C4C6261C(v79);
      v64[1] = v66;
      *(v54 + v65) = xmmword_1C4F2D7F0;
      v67 = v74;
      sub_1C448CC68(v54, v74, type metadata accessor for FavoriteSportsTeamStructs.IdentifierRelationshipType);
      sub_1C440BAA8(v67, 0, 1, v60);
      v68 = v78;
      sub_1C4DA4534(v67);
      v69 = v75;
      sub_1C448CC68(v68, v75, type metadata accessor for FavoriteSportsTeamStructs.SportsTeam);
      sub_1C440BAA8(v69, 0, 1, v77);
      sub_1C4DA464C(v69);
      HIBYTE(v81) = 1;
      sub_1C4DA4778(v73, v23, &v81 + 7);
      v19 = v71;

      sub_1C441F9AC();
      sub_1C442CA1C();
      sub_1C4406DF4();
    }

    else
    {

      sub_1C465B58C();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
      sub_1C4406DF4();
    }
  }

  return v19;
}

uint64_t sub_1C47D0B14(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C47D0B6C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for FavoriteSportsTeamSourceIngestor(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  v8 = type metadata accessor for Source(0);
  *(v3 + 64) = v8;
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v9);
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 121) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C47D0CC4, 0, 0);
}

uint64_t sub_1C47D0CC4()
{
  sub_1C4419288();
  sub_1C44717B8(v1, v2, v3);
  if (qword_1EDDFD240 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 121);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 64), &qword_1EDDFD248);
  *(v0 + 104) = v11;
  sub_1C44717B8(v11, v5, type metadata accessor for Source);
  sub_1C44717B8(v10, v8, type metadata accessor for PhaseStores);
  sub_1C44717B8(v11, v8 + *(v9 + 20), type metadata accessor for Source);
  *(v8 + *(v9 + 24)) = v4;
  sub_1C44717B8(v11, v7, type metadata accessor for Source);
  sub_1C44717B8(v10, v6, type metadata accessor for PhaseStores);
  *(v0 + 120) = v4;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_1C47D0E78;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C47D0E78()
{

  return MEMORY[0x1EEE6DFA0](sub_1C47D0F74, 0, 0);
}

uint64_t sub_1C47D0F74()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v22 = v0[12];
  v23 = v0[5];
  v6 = v0[2];
  v7 = v0[3];
  sub_1C44717B8(v0[13], v0[9], type metadata accessor for Source);
  sub_1C4419288();
  sub_1C44717B8(v6, v1, v8);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44857CC(v6);
  v9 = (v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v3;
  v9[4] = sub_1C47D1220();
  v10 = sub_1C4422F90(v9);
  sub_1C47D1278(v4, v10, type metadata accessor for FavoriteSportsTeamSourceIngestor);
  sub_1C44002E8();
  sub_1C47D1278(v2, v11, v12);
  sub_1C44002E8();
  sub_1C47D1278(v22, v13, v14);
  sub_1C44002E8();
  sub_1C47D1278(v23, v15, v16);
  sub_1C44002E8();
  sub_1C47D1278(v5, v17, v18);
  *(v7 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v19 = v0[1];
  v20 = v0[3];

  return v19(v20);
}

uint64_t type metadata accessor for FavoriteSportsTeamPhase(uint64_t a1)
{
  result = qword_1EDDE2200;
  if (!qword_1EDDE2200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C47D1220()
{
  result = qword_1EDDDDFE0;
  if (!qword_1EDDDDFE0)
  {
    type metadata accessor for FavoriteSportsTeamSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDDFE0);
  }

  return result;
}

uint64_t sub_1C47D1278(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for FavoriteSportsTeamSourceIngestor(uint64_t a1)
{
  result = qword_1EDDDDFC0;
  if (!qword_1EDDDDFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C47D1368()
{
  v0[18] = 0;
  v0[19] = 0;
  v1 = [objc_opt_self() sharedInstance];
  v0[23] = v1;
  v0[20] = MEMORY[0x1E69E7CC0];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1C47D14B8;
  v2 = swift_continuation_init();
  v0[17] = sub_1C456902C(&qword_1EC0BD240, qword_1C4F5F810);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C47CDA90;
  v0[13] = &unk_1F43EC2F0;
  v0[14] = v2;
  [v1 requestedSchedulesForTeamsWithReply_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C47D14B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1C47D16E8;
  }

  else
  {
    v2 = sub_1C47D15C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C47D15C8()
{
  v1 = *(v0 + 168);
  v2 = [v1 teams];
  sub_1C4461BB8(0, &unk_1EDDFA480, 0x1E698AF38);
  v3 = sub_1C4F01678();

  *(v0 + 160) = v3;
  sub_1C442CA44();
  v4 = swift_task_alloc();
  sub_1C4419678(v4);
  v5 = *(v0 + 176);

  sub_1C47D17FC(v5, (v0 + 152), (v0 + 144));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1C47D16E8(uint64_t a1)
{
  v9 = v1;
  v2 = *(v1 + 192);
  v3 = *(v1 + 176);
  swift_willThrow();
  v8[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v2, 0xD000000000000012, 0x80000001C4F9B510, v3, v8);

  sub_1C442CA44();
  v4 = swift_task_alloc();
  sub_1C4419678(v4);
  v5 = *(v1 + 176);

  sub_1C47D17FC(v5, (v1 + 152), (v1 + 144));
  v6 = *(v1 + 8);

  return v6();
}

uint64_t sub_1C47D17FC(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C4430B24(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C47CE078(v9);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C47D1A64(void (*a1)(uint64_t)@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, void *a5@<X5>, _BYTE *a6@<X6>, _BYTE *a7@<X8>)
{
  v8 = v7;
  v12 = *a2;
  v26 = *a2 & 0xC000000000000001;
  v27 = sub_1C4428DA0(*a2);
  v25 = v12 & 0xFFFFFFFFFFFFFF8;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = 0;
  v23 = a4;
  while (1)
  {
    if (v27 == v13)
    {

      *a7 = *a6;
      return;
    }

    if (v26)
    {
      v14 = MEMORY[0x1C6940F90](v13, v12);
    }

    else
    {
      if (v13 >= *(v25 + 16))
      {
        goto LABEL_15;
      }

      v14 = *(v12 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    sub_1C4ACEF94();
    if (v8)
    {

      return;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_16;
    }

    ++*a4;
    sub_1C47D057C();
    v16 = a3;
    v17 = v12;
    v18 = a6;
    sub_1C4812140();
    v20 = v19;

    a1(v20);
    v8 = 0;

    if (__OFADD__(*a5, 1))
    {
      goto LABEL_17;
    }

    ++*a5;
    a6 = v18;
    v12 = v17;
    a3 = v16;
    a4 = v23;
    ++v13;
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_1C47D1C88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return sub_1C47D1348();
}

uint64_t sub_1C47D1D18(uint64_t a1)
{
  result = sub_1C47D1DE4(qword_1EDDDDFE8, &unk_1C4F2D854);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47D1D5C(uint64_t a1)
{
  result = sub_1C47D1DE4(&qword_1EDDDDFD0, &unk_1C4F2D87C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47D1DA0(uint64_t a1)
{
  result = sub_1C47D1DE4(&qword_1EDDDDFD8, &unk_1C4F2D898);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C47D1DE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FavoriteSportsTeamSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall ViewFeatureDatabaseTable.clearAllData()()
{
  sub_1C444B120();
  v0 = sub_1C440CABC();
  sub_1C446C37C(v0, v1);
}

void sub_1C47D1F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C442BAE8(v14, v15, v16, v17, v18, v19, v20, v21, v36);
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4406E1C();
  sub_1C456902C(&qword_1EC0BD330, &qword_1C4F2DAF0);
  sub_1C444FD74();
  if (!v10)
  {
    goto LABEL_7;
  }

  v25 = v10;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v26 = *(v23 + 8);
  v27 = sub_1C43FCE84();
  v26(v27);
  if (v11)
  {

    v30 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v30);
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v28 = v10;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v29 = sub_1C43FCE84();
  v26(v29);
  sub_1C442F1A4();
  v31 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C(v31))
  {

    goto LABEL_7;
  }

  v32 = sub_1C440F670();
  v33(v32);
  v34 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v34, v35);
  __break(1u);
}

void sub_1C47D21A8()
{
  sub_1C43FE96C();
  sub_1C4400368();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FC318();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4406E1C();
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v2)
  {
    goto LABEL_8;
  }

  v8 = v2;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v9 = *(v6 + 8);
  v10 = sub_1C43FCE84();
  v9(v10);
  if (v0)
  {

    v13 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v13);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v11 = v2;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v12 = sub_1C43FCE84();
  v9(v12);
  sub_1C441842C();
  v14 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C441D1F8(v1, &v19, v14))
  {

    goto LABEL_8;
  }

  v15 = sub_1C43FD75C();
  v16(v15);
  v17 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v17, v18);
  __break(1u);
}

void sub_1C47D2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C440D420();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FC318();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C456902C(&qword_1EC0BD310, &qword_1C4F2DAD0);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v18 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v19 = *(v16 + 8);
  v20 = sub_1C43FCE84();
  v19(v20);
  if (v10)
  {

    v23 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v23);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v21 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v22 = sub_1C43FCE84();
  v19(v22);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8(v11, v24, v25))
  {

    goto LABEL_8;
  }

  v26 = sub_1C43FD75C();
  v27(v26);
  v28 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v28, v29);
  __break(1u);
}

void sub_1C47D26B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4411CC4();
  v12 = v11;
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  sub_1C43FBE44();
  sub_1C4EFAD98();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  v18 = sub_1C43FD2BC();
  sub_1C456902C(v18, v19);
  sub_1C4418A58();
  if (!v10)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v21 = *(v16 + 8);
  v22 = sub_1C43FCE84();
  v21(v22);
  if (v12)
  {

    v25 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v25);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v23 = v10;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v24 = sub_1C43FCE84();
  v21(v24);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C440BCF8(v26, v27, v28))
  {

    goto LABEL_8;
  }

  v29 = sub_1C4403150();
  v30(v29);
  sub_1C441B3B8(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  __break(1u);
}

void sub_1C47D299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FC318();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C456902C(&qword_1EC0BD3D8, &unk_1C4F2DBB0);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v18 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v19 = *(v16 + 8);
  v20 = sub_1C43FCE84();
  v19(v20);
  if (v10)
  {

    v23 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v23);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v21 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v22 = sub_1C43FCE84();
  v19(v22);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8(v11, v24, v25))
  {

    goto LABEL_8;
  }

  v26 = sub_1C43FD75C();
  v27(v26);
  v28 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v28, v29);
  __break(1u);
}

void sub_1C47D2D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4400368();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBFDC();
  sub_1C440D420();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FC318();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4406E1C();
  sub_1C456902C(&qword_1EC0BD320, &qword_1C4F2DAE0);
  sub_1C4404B44();
  sub_1C4EFAF88();
  if (!v12)
  {
    goto LABEL_8;
  }

  v18 = v12;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v19 = *(v16 + 8);
  v20 = sub_1C43FCE84();
  v19(v20);
  if (v10)
  {

    v23 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v23);
    sub_1C4433CB8();
LABEL_8:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v21 = v12;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v22 = sub_1C43FCE84();
  v19(v22);
  sub_1C442F1A4();
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  sub_1C441B920();
  if (!sub_1C441D1F8(v11, v24, v25))
  {

    goto LABEL_8;
  }

  v26 = sub_1C43FD75C();
  v27(v26);
  v28 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v28, v29);
  __break(1u);
}

void sub_1C47D304C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_1C43FE96C();
  sub_1C4417168();
  sub_1C4EFB1E8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBFDC();
  sub_1C4433378();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C442BAE8(v14, v15, v16, v17, v18, v19, v20, v21, v36);
  sub_1C43FCDF8();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C4406E1C();
  sub_1C456902C(&qword_1EC0BD3A0, &qword_1C4F2DB70);
  sub_1C444FD74();
  if (!v10)
  {
    goto LABEL_7;
  }

  v25 = v10;
  sub_1C4EFA798();
  sub_1C447F088();
  sub_1C445E7F4();
  v26 = *(v23 + 8);
  v27 = sub_1C43FCE84();
  v26(v27);
  if (v11)
  {

    v30 = sub_1C4778264();
    sub_1C43FFB2C(&type metadata for ErrorHandlingDatabasePoolError, v30);
    sub_1C4433CB8();
LABEL_7:
    sub_1C440431C();
    sub_1C43FBC80();
    return;
  }

  v28 = v10;
  sub_1C4EFAAC8();
  sub_1C447F088();
  sub_1C445E7F4();
  v29 = sub_1C43FCE84();
  v26(v29);
  sub_1C442F1A4();
  v31 = sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (!sub_1C43FEF9C(v31))
  {

    goto LABEL_7;
  }

  v32 = sub_1C440F670();
  v33(v32);
  v34 = sub_1C441C250(OBJC_IVAR____TtC24IntelligencePlatformCore25ErrorHandlingDatabasePool_databaseFileURL);
  sub_1C4774554(v34, v35);
  __break(1u);
}

void sub_1C47D32C8()
{
  sub_1C43FE96C();
  v3 = v2;
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[2];
  v37 = v0[3];
  v7 = v0[4];
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_1C4F0D130;
  v39 = v5;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  v10 = *(v3 + 16);
  if (v10)
  {
    v33 = v6;
    v34 = v7;
    v35 = v1;
    v36 = inited;
    v40 = MEMORY[0x1E69E7CC0];
    v38 = v4;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C459D768(0, v10, 0);
    v11 = v40;
    v12 = (v3 + 64);
    do
    {
      v14 = *(v12 - 4);
      v13 = *(v12 - 3);
      v16 = *(v12 - 2);
      v15 = *(v12 - 1);
      v17 = *v12;
      v18 = objc_allocWithZone(MEMORY[0x1E69A9EA8]);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v20 = sub_1C4673B1C(v39, v38, v14, v13, v16, v15);
      v21 = v20;
      v23 = *(v40 + 16);
      v22 = *(v40 + 24);
      if (v23 >= v22 >> 1)
      {
        v25 = sub_1C43FCFE8(v22);
        v20 = sub_1C459D768(v25, v23 + 1, 1);
      }

      *(v40 + 16) = v23 + 1;
      v24 = v40 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v19;
      v12 += 5;
      --v10;
    }

    while (v10);
    v9 = v36;
    v6 = v33;
    v7 = v34;
  }

  else
  {
    v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v11 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v20);
  v32[2] = v9;
  v32[3] = v6;
  v32[4] = v37;
  v32[5] = v7;
  v32[6] = v11;
  sub_1C4418704(sub_1C47DC8C4, v32, v26, v27, v28, v29, v30, v31, v32[0], v32[1]);

  swift_setDeallocating();
  sub_1C44DEE40();
  sub_1C43FBC80();
}

uint64_t ViewFeatureDatabaseTable.table.getter()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

uint64_t GeneralFeatureDatabaseTable.init(db:table:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[1] = a3;
  a4[2] = result;
  *a4 = a2;
  return result;
}

uint64_t GeneralFeatureDatabaseTable.subidentifiers(forViews:)()
{

  v0 = sub_1C440CABC();
  v2 = sub_1C49A529C(v0, v1);

  return v2;
}

void sub_1C47D35E0()
{
  sub_1C43FBD3C();
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C43FBE44();
  v19 = sub_1C4EFB5A8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C4EFB5F8();
  sub_1C43FCDF8();
  v20 = v9;
  v21 = v8;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  v10 = *v0;
  v11 = v0[1];
  v18 = *v0;
  v12 = v0[2];
  sub_1C4EFB5E8();
  v13 = swift_allocObject();
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = v12;
  v14 = *MEMORY[0x1E699FE90];
  v15 = *(v3 + 104);
  v15(v7, v14, v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4EFB5C8();

  v16 = *(v3 + 8);
  v16(v7, v19);
  v17 = swift_allocObject();
  v17[2] = v18;
  v17[3] = v11;
  v17[4] = v12;
  v15(v7, v14, v19);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C4EFB5C8();

  v16(v7, v19);
  sub_1C47DCC38(&qword_1EDDFEDB0, type metadata accessor for ErrorHandlingDatabasePool, &unk_1C4F244D0);
  sub_1C4EFB5D8();
  (*(v20 + 8))(v0, v21);
  sub_1C43FE9F0();
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ViewFeatureDatabaseTable.numRows()()
{
  sub_1C444B120();
  sub_1C440CABC();
  sub_1C47D21A8();
  return result;
}

uint64_t sub_1C47D3B38()
{
  sub_1C456902C(&qword_1EC0BBBF8, &qword_1C4F5C950);
  v0 = *(type metadata accessor for ViewDatabaseArtifact.Property(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C4F13950;
  v4 = (v3 + v2);
  sub_1C4EFBDD8();
  sub_1C441EBEC();
  *v4 = v5;
  v4[1] = v6;
  v7 = (v4 + v1);
  sub_1C4EFBDD8();
  sub_1C4408A18();
  *v7 = v8;
  v7[1] = v9;
  v10 = (v4 + 2 * v1);
  sub_1C4EFBDD8();
  *v10 = 0xD000000000000011;
  v10[1] = 0x80000001C4F86480;
  v11 = (v4 + 3 * v1);
  sub_1C4EFBDB8();
  *v11 = 0x65756C6176;
  v11[1] = 0xE500000000000000;
  v12 = (v4 + 4 * v1);
  sub_1C4EFBDE8();
  sub_1C4425B70();
  *v12 = v13;
  v12[1] = v14;
  return v3;
}

uint64_t sub_1C47D3CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C4EFBE58();
  if (!v3 && (result & 1) != 0)
  {
    return sub_1C4EFBF68();
  }

  return result;
}

uint64_t sub_1C47D3D74()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4607CD4(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4607CD4(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4607CD4(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4607CD4(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4607CD4(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4607CD4(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4607CD4(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4607CD4(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  sub_1C4607CD4(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  (*(*(v7 - 8) + 104))(v2, *MEMORY[0x1E69A00D0], v7);
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB478();
  return sub_1C4607CD4(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

void sub_1C47D4198()
{
  sub_1C43FE96C();
  v2 = v1;
  v16 = v4;
  v17 = v3;
  v5 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4423B7C();
  v9 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  v11 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v15 - v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v19[3] = sub_1C4EFBD38();
  v19[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v19);
  sub_1C4EFBD48();
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = MEMORY[0x1E69A0130];
  v18[0] = v16;
  v18[1] = v2;
  v20[3] = sub_1C4EFB298();
  v20[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v20);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4607CD4(v18, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v19);
  sub_1C4EFBCD8();
  (*(v7 + 8))(v0, v5);
  sub_1C440962C(v20);
  sub_1C4EFB898();
  (*(v11 + 8))(v14, v9);
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C47D4410@<X0>(uint64_t a1@<X0>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a1;
  v28 = a6;
  v7 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - v9;
  v11 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v32[3] = sub_1C4EFBD38();
  v32[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v32);
  sub_1C4EFBD48();
  v31[3] = MEMORY[0x1E69E6158];
  v31[4] = MEMORY[0x1E69A0130];
  v31[0] = v29;
  v31[1] = a5;
  v33[3] = sub_1C4EFB298();
  v33[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v33);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4607CD4(v31, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v32);
  sub_1C4EFBCD8();
  (*(v8 + 8))(v10, v7);
  sub_1C440962C(v33);
  v15 = v33[6];
  v16 = sub_1C4EFB868();
  if (v15)
  {
    (*(v12 + 8))(v14, v11);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C4F00978();
    sub_1C442B738(v17, qword_1EDE2DF70);
    v18 = v15;
    v19 = sub_1C4F00968();
    v20 = sub_1C4F01CD8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v15;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1C43F8000, v19, v20, "GeneralFeaturesDatabaseTable: numRows() threw error %@", v21, 0xCu);
      sub_1C4607CD4(v22, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v22, -1, -1);
      MEMORY[0x1C6942830](v21, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v25 = v15;
    return swift_willThrow();
  }

  else
  {
    v27 = v16;
    result = (*(v12 + 8))(v14, v11);
    *v28 = v27;
  }

  return result;
}

void sub_1C47D4810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C446BEC0(v13, v14, v15, v16, v17, v18);
  sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C443F1B8();
  if (v11)
  {
    while (1)
    {
      v22 = *(v12 - 1);
      v21 = *v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBD18();
      v37[3] = sub_1C4EFBD38();
      sub_1C443F5E8(MEMORY[0x1E69A0050]);
      sub_1C441CA08();
      v36[3] = MEMORY[0x1E69E6158];
      v36[4] = MEMORY[0x1E69A0130];
      v36[0] = v22;
      v36[1] = v21;
      v38[3] = sub_1C4EFB298();
      v38[4] = MEMORY[0x1E699FE60];
      sub_1C4422F90(v38);
      sub_1C440C4CC();
      sub_1C4EFBB28();
      sub_1C4607CD4(v36, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v37);
      sub_1C44358B0();
      v23 = sub_1C43FCE84();
      v24(v23);
      sub_1C440962C(v38);
      sub_1C4414584();
      v10 = a10;
      if (a10)
      {
        break;
      }

      v25 = sub_1C442FD80();
      v26(v25);
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v33 = sub_1C442FD80();
    v34(v33);
  }

  else
  {
LABEL_4:
    v27 = *(v35 + 16);
    v28 = (v35 + 40);
    if (v27)
    {
      while (1)
      {
        v29 = *v28;
        v30 = *(v28 - 1);
        v31 = v29;
        v32 = objc_autoreleasePoolPush();
        sub_1C47D5958();
        if (v10)
        {
          break;
        }

        v10 = 0;
        objc_autoreleasePoolPop(v32);

        v28 += 2;
        if (!--v27)
        {
          goto LABEL_10;
        }
      }

      objc_autoreleasePoolPop(v32);
    }
  }

LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C47D4AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C446BEC0(v13, v14, v15, v16, v17, v18);
  sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FE95C();
  sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C443F1B8();
  if (v11)
  {
    while (1)
    {
      v22 = *(v12 - 1);
      v21 = *v12;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFBD18();
      v42[3] = sub_1C4EFBD38();
      sub_1C443F5E8(MEMORY[0x1E69A0050]);
      sub_1C441CA08();
      v41[3] = MEMORY[0x1E69E6158];
      v41[4] = MEMORY[0x1E69A0130];
      v41[0] = v22;
      v41[1] = v21;
      v43[3] = sub_1C4EFB298();
      v43[4] = MEMORY[0x1E699FE60];
      sub_1C4422F90(v43);
      sub_1C440C4CC();
      sub_1C4EFBB28();
      sub_1C4607CD4(v41, &qword_1EC0C5040, &qword_1C4F0F950);
      sub_1C440962C(v42);
      sub_1C44358B0();
      v23 = sub_1C43FCE84();
      v24(v23);
      sub_1C440962C(v43);
      sub_1C4414584();
      v10 = a10;
      if (a10)
      {
        break;
      }

      v25 = sub_1C442FD80();
      v26(v25);
      v12 += 2;
      if (!--v11)
      {
        goto LABEL_4;
      }
    }

    v35 = sub_1C442FD80();
    v36(v35);
  }

  else
  {
LABEL_4:
    v27 = *(v37 + 16);
    v28 = (v37 + 56);
    if (v27)
    {
      while (1)
      {
        v29 = *(v28 - 2);
        v30 = *v28;
        v31 = *(v28 - 1);
        v32 = *(v28 - 3);
        v33 = v29;
        v34 = objc_autoreleasePoolPush();
        sub_1C47D4D60(v33, v39, v40, a10, v38, v32, v31, v30, v43);
        if (v10)
        {
          break;
        }

        v10 = 0;
        objc_autoreleasePoolPop(v34);

        v28 += 32;
        if (!--v27)
        {
          goto LABEL_10;
        }
      }

      objc_autoreleasePoolPop(v34);
    }
  }

LABEL_10:
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C47D4D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, int a8, uint64_t *a9)
{
  v73 = a2;
  v72 = a8;
  v69 = a7;
  v77 = *MEMORY[0x1E69E9840];
  v14 = sub_1C4EFB768();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_opt_self();
  v75 = 0;
  v19 = [v18 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:&v75];
  v20 = v75;
  if (!v19)
  {
    v45 = v20;
    v46 = sub_1C4EF97A8();

    swift_willThrow();
LABEL_13:
    *a9 = v46;
    return;
  }

  v68 = v14;
  v64 = a5;
  v21 = sub_1C4EF9A68();
  v70 = v22;
  v71 = v21;

  v75 = 0;
  v76 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
  v63 = a3;
  v65 = a4;
  MEMORY[0x1C6940010](a3, a4);
  MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9B530);
  v66 = v75;
  v67 = v76;
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C4F13950;
  *(v23 + 32) = 0x656D614E77656976;
  *(v23 + 40) = 0xE800000000000000;
  v24 = [a6 viewName];
  v25 = sub_1C4F01138();
  v27 = v26;

  v28 = MEMORY[0x1E69E6158];
  v29 = MEMORY[0x1E69A0138];
  *(v23 + 72) = MEMORY[0x1E69E6158];
  *(v23 + 80) = v29;
  *(v23 + 48) = v25;
  *(v23 + 56) = v27;
  *(v23 + 88) = 0x4E65727574616566;
  *(v23 + 96) = 0xEB00000000656D61;
  v30 = [a6 featureName];
  v31 = sub_1C4F01138();
  v33 = v32;

  *(v23 + 128) = v28;
  *(v23 + 136) = v29;
  *(v23 + 104) = v31;
  *(v23 + 112) = v33;
  v34 = v70;
  v35 = a6;
  *(v23 + 144) = 0xD000000000000011;
  *(v23 + 152) = 0x80000001C4F86480;
  v36 = sub_1C47DC860(a6);
  *(v23 + 184) = v28;
  *(v23 + 192) = v29;
  v38 = v71;
  if (v37)
  {
    v39 = v36;
  }

  else
  {
    v39 = 0;
  }

  v40 = 0xE000000000000000;
  if (v37)
  {
    v40 = v37;
  }

  *(v23 + 160) = v39;
  *(v23 + 168) = v40;
  *(v23 + 200) = 0x4465727574616566;
  *(v23 + 208) = 0xEB00000000617461;
  v41 = MEMORY[0x1E699FD70];
  *(v23 + 240) = MEMORY[0x1E6969080];
  *(v23 + 248) = v41;
  *(v23 + 216) = v38;
  *(v23 + 224) = v34;
  *(v23 + 256) = 0x6E656469666E6F63;
  *(v23 + 264) = 0xEA00000000006563;
  if (v72)
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    *(v23 + 280) = 0;
    *(v23 + 288) = 0;
  }

  else
  {
    v44 = MEMORY[0x1E69A0168];
    v43 = MEMORY[0x1E69E63B0];
    v42 = v69;
  }

  *(v23 + 272) = v42;
  *(v23 + 296) = v43;
  *(v23 + 304) = v44;
  sub_1C44344B8(v38, v34);
  sub_1C4EFB738();
  v47 = v74;
  sub_1C4EFBFF8();
  v46 = v47;
  if (v47)
  {
    (*(v15 + 8))(v17, v68);
    sub_1C4434000(v38, v34);

    goto LABEL_13;
  }

  (*(v15 + 8))(v17, v68);

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v48 = sub_1C4F00978();
  sub_1C442B738(v48, qword_1EDE2E088);
  v49 = v35;
  v50 = v65;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CB8();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v75 = v54;
    *v53 = 136315394;
    v55 = [v49 string];
    v56 = sub_1C4F01138();
    v58 = v57;

    v59 = sub_1C441D828(v56, v58, &v75);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    *(v53 + 14) = sub_1C441D828(v63, v50, &v75);
    _os_log_impl(&dword_1C43F8000, v51, v52, "FeatureDatabaseTable: Wrote %s to db with table name %s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v54, -1, -1);
    MEMORY[0x1C6942830](v53, -1, -1);
    v61 = v70;
    v60 = v71;
  }

  else
  {
    v60 = v71;
    v61 = v34;
  }

  sub_1C4434000(v60, v61);
}

void sub_1C47D5344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1C4428DA0(a2);
  for (i = 0; v11 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = sub_1C43FCE84();
      v13 = MEMORY[0x1C6940F90](v15);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(a2 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

    v25 = v13;
    sub_1C47D54B4(&v25, a3, a4, a5, a1);

    if (v6)
    {
      return;
    }
  }

  v16 = *(a6 + 16);
  v17 = (a6 + 40);
  if (v16)
  {
    while (1)
    {
      v18 = *v17;
      v19 = *(v17 - 1);
      v20 = v18;
      v21 = objc_autoreleasePoolPush();
      sub_1C47D5958();
      if (v7)
      {
        break;
      }

      v7 = 0;
      objc_autoreleasePoolPop(v21);

      v17 += 2;
      if (!--v16)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v21);
  }
}

uint64_t sub_1C47D54B4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v32 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v30 - v6;
  v30 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v30 - v8;
  v10 = *a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v11 = sub_1C4EFBD38();
  v43 = v11;
  v44 = MEMORY[0x1E69A0050];
  v12 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v42);
  sub_1C4EFBD48();
  v13 = [v10 viewName];
  v14 = sub_1C4F01138();
  v16 = v15;

  v40 = MEMORY[0x1E69E6158];
  v41 = MEMORY[0x1E69A0130];
  v39[0] = v14;
  v39[1] = v16;
  v17 = sub_1C4EFB298();
  v46 = v17;
  v47 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v45);
  sub_1C4EFBB28();
  sub_1C4607CD4(v39, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v42);
  v43 = v11;
  v44 = v12;
  sub_1C4422F90(v42);
  sub_1C4EFBD48();
  v18 = [v10 featureName];
  v19 = sub_1C4F01138();
  v21 = v20;

  v37 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69A0130];
  v35 = v19;
  v36 = v21;
  v40 = v17;
  v22 = MEMORY[0x1E699FE60];
  v41 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v39);
  sub_1C4EFBB28();
  sub_1C4607CD4(&v35, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v42);
  v43 = v17;
  v44 = v22;
  sub_1C4422F90(v42);
  sub_1C4EFBB08();
  sub_1C440962C(v39);
  sub_1C440962C(v45);
  v46 = v11;
  v47 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v45);
  sub_1C4EFBD48();
  v23 = sub_1C47DC860(v10);
  v37 = MEMORY[0x1E69E6158];
  v38 = MEMORY[0x1E69A0130];
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  v26 = 0xE000000000000000;
  if (v24)
  {
    v26 = v24;
  }

  v35 = v25;
  v36 = v26;
  v40 = v17;
  v41 = v22;
  sub_1C4422F90(v39);
  sub_1C4EFBB28();
  sub_1C4607CD4(&v35, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v45);
  v46 = v17;
  v47 = v22;
  sub_1C4422F90(v45);
  sub_1C4EFBB08();
  sub_1C440962C(v39);
  sub_1C440962C(v42);
  v27 = v32;
  sub_1C4EFBCD8();
  (*(v33 + 8))(v7, v27);
  sub_1C440962C(v45);
  v28 = v30;
  sub_1C4EFB898();
  return (*(v31 + 8))(v9, v28);
}

void sub_1C47D5958()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v64[2] = *MEMORY[0x1E69E9840];
  sub_1C4EFB768();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v64[0] = 0;
  v12 = [objc_opt_self() archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v64];
  v13 = v64[0];
  if (!v12)
  {
    v45 = v13;
    v42 = sub_1C4EF97A8();

    swift_willThrow();
    goto LABEL_10;
  }

  v14 = sub_1C4EF9A68();
  v62 = v15;
  v63 = v14;

  v64[0] = 0;
  v64[1] = 0xE000000000000000;
  sub_1C4F02248();
  sub_1C4422300();
  v16 = sub_1C4404B44();
  MEMORY[0x1C6940010](v16);
  MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9B530);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v60 = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C4F13950;
  sub_1C441EBEC();
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = [v4 viewName];
  v22 = sub_1C4F01138();
  v61 = v6;
  v24 = v23;

  v25 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69A0138];
  *(v17 + 72) = MEMORY[0x1E69E6158];
  *(v17 + 80) = v26;
  *(v17 + 48) = v22;
  *(v17 + 56) = v24;
  sub_1C4408A18();
  *(v17 + 88) = v27;
  *(v17 + 96) = v28;
  v29 = [v4 featureName];
  v30 = sub_1C4F01138();
  v32 = v31;

  *(v17 + 128) = v25;
  *(v17 + 136) = v26;
  *(v17 + 104) = v30;
  *(v17 + 112) = v32;
  *(v17 + 144) = 0xD000000000000011;
  *(v17 + 152) = 0x80000001C4F86480;
  v33 = sub_1C47DC860(v4);
  *(v17 + 184) = v25;
  *(v17 + 192) = v26;
  if (v34)
  {
    v35 = v33;
  }

  else
  {
    v35 = 0;
  }

  v36 = 0xE000000000000000;
  if (v34)
  {
    v36 = v34;
  }

  *(v17 + 160) = v35;
  *(v17 + 168) = v36;
  sub_1C44022AC();
  *(v17 + 200) = v37;
  *(v17 + 208) = v38;
  v39 = MEMORY[0x1E699FD70];
  *(v17 + 240) = MEMORY[0x1E6969080];
  *(v17 + 248) = v39;
  *(v17 + 216) = v63;
  *(v17 + 224) = v62;
  sub_1C4425B70();
  *(v17 + 256) = v40;
  *(v17 + 264) = v41;
  *(v17 + 272) = 0u;
  *(v17 + 288) = 0u;
  *(v17 + 304) = 0;
  sub_1C44344B8(v63, v62);
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  v42 = v0;
  if (v0)
  {
    v43 = sub_1C441AEA0();
    v44(v43);
    sub_1C4434000(v63, v62);

LABEL_10:
    *v2 = v42;
    goto LABEL_17;
  }

  v46 = sub_1C441AEA0();
  v47(v46);

  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v48 = sub_1C4F00978();
  sub_1C43FCEE8(v48, qword_1EDE2E088);
  v49 = v4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v50 = sub_1C4F00968();
  v51 = sub_1C4F01CB8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v52 = 136315394;
    v53 = [v49 string];
    v54 = sub_1C4F01138();
    v56 = v55;

    v57 = sub_1C441D828(v54, v56, v64);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    *(v52 + 14) = sub_1C441D828(v60, v61, v64);
    _os_log_impl(&dword_1C43F8000, v50, v51, "FeatureDatabaseTable: Wrote %s to db with table name %s", v52, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    v59 = v62;
    v58 = v63;
  }

  else
  {
    v58 = v63;
    v59 = v62;
  }

  sub_1C4434000(v58, v59);

LABEL_17:
  sub_1C43FBC80();
}

void sub_1C47D5E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, char a26)
{
  sub_1C43FE96C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v65 = v34;
  v66 = v35;
  v67 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBCC4();
  v41 = v40 - v39;
  sub_1C4F02248();
  sub_1C4422300();
  MEMORY[0x1C6940010](v33, v31);
  MEMORY[0x1C6940010](0xD000000000000050, 0x80000001C4F9B530);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C4F13950;
  sub_1C441EBEC();
  v43 = MEMORY[0x1E69E6158];
  v44 = MEMORY[0x1E69A0138];
  v45[4] = v46;
  v45[5] = v47;
  v45[9] = v43;
  v45[10] = v44;
  v45[6] = v65;
  v45[7] = v29;
  sub_1C4408A18();
  v48[11] = v49;
  v48[12] = v50;
  v48[16] = v51;
  v48[17] = v52;
  v48[13] = v66;
  v48[14] = v27;
  v48[18] = 0xD000000000000011;
  v48[19] = 0x80000001C4F86480;
  v48[23] = v51;
  v48[24] = v52;
  if (!a22)
  {
    a21 = 0;
  }

  v54 = 0xE000000000000000;
  if (a22)
  {
    v54 = a22;
  }

  v48[20] = a21;
  v48[21] = v54;
  sub_1C44022AC();
  v55[25] = v56;
  v55[26] = v57;
  v58 = MEMORY[0x1E699FD70];
  v55[30] = MEMORY[0x1E6969080];
  v55[31] = v58;
  v55[27] = a23;
  v55[28] = a24;
  sub_1C4425B70();
  *(v59 + 256) = v60;
  *(v59 + 264) = v61;
  if (a26)
  {
    v62 = 0;
    v63 = 0;
    v64 = 0;
    *(v42 + 280) = 0;
    *(v42 + 288) = 0;
  }

  else
  {
    v62 = a25;
    v64 = MEMORY[0x1E69A0168];
    v63 = MEMORY[0x1E69E63B0];
  }

  *(v42 + 272) = v62;
  *(v42 + 296) = v63;
  *(v42 + 304) = v64;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44344B8(a23, a24);
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  (*(v37 + 8))(v41, v67);

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C47D60D4()
{
  sub_1C43FE96C();
  v38[3] = v1;
  v39 = v0;
  v38[1] = v2;
  v40 = v3;
  v4 = sub_1C456902C(&qword_1EC0BD3F0, &qword_1C4F2DBC8);
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v38[2] = v12;
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDED138 != -1)
  {
    sub_1C440E2A4(&qword_1EDDED138);
  }

  v14 = sub_1C4EFBD38();
  sub_1C43FCEE8(v14, qword_1EDE2DC48);
  v15 = MEMORY[0x1E69A0038];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  sub_1C4422F90((v13 + 32));
  sub_1C440A6B8();
  v17 = *(v16 + 16);
  v17();
  sub_1C47DC96C();
  MEMORY[0x1C6939B20](v13);

  if (qword_1EDDED128 != -1)
  {
    swift_once();
  }

  sub_1C43FCEE8(v14, qword_1EDE2D308);
  v41[3] = v14;
  v41[4] = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v41);
  (v17)(v18, &type metadata for FeatureRow, v14);
  v42[3] = sub_1C4EFB298();
  v42[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v42);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C443FC2C(&qword_1EDDFCEC0);
  sub_1C4F01458();
  sub_1C440962C(v41);
  sub_1C43FC300();
  sub_1C4401CBC(v19, &qword_1EC0BD3F0, &qword_1C4F2DBC8, v20);
  sub_1C4EFB438();
  v21 = *(v6 + 8);
  v22 = sub_1C4401D48();
  v21(v22);
  sub_1C440962C(v42);
  sub_1C4EFB888();
  (v21)(v10, v4);
  sub_1C441310C();
  sub_1C4401CBC(v23, &qword_1EC0BD3F0, &qword_1C4F2DBC8, v24);
  v25 = v39;
  v26 = sub_1C4EFB008();
  if (v25)
  {
    v27 = sub_1C4401D48();
    v21(v27);
    if (qword_1EDDFFAF0 != -1)
    {
      sub_1C440686C();
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C43FCEE8(v28, qword_1EDE2E088);
    v29 = v25;
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CD8();

    if (os_log_type_enabled(v30, v31))
    {
      sub_1C43FECF0();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v25;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_1C43F8000, v30, v31, "FeatureDatabaseTable: subIdentifiers: Could not load from FeatureRow due to %@, returning []", v32, 0xCu);
      sub_1C4607CD4(v33, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    v36 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v36 = v26;
    v37 = sub_1C4401D48();
    v21(v37);
  }

  *v40 = v36;
  sub_1C43FBC80();
}

void sub_1C47D65BC()
{
  sub_1C43FE96C();
  v130 = v0;
  v116 = v1;
  v3 = v2;
  v117 = v4;
  v115 = v5;
  v7 = v6;
  v9 = v8;
  v124 = v10;
  v12 = v11;
  v122 = sub_1C4EFB288();
  sub_1C43FCDF8();
  v121 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  v120 = v16 - v15;
  sub_1C43FBE44();
  v142 = sub_1C4EFB298();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v119 = v21 - v20;
  sub_1C456902C(&qword_1EC0BD250, &qword_1C4F2D9C8);
  sub_1C43FCDF8();
  v129 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBFDC();
  v126 = v24;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v114 - v26;
  v28 = MEMORY[0x1E699FE60];
  v29 = MEMORY[0x1E69A0130];
  v131 = &v114 - v26;
  v125 = v12;
  v127 = v30;
  v118 = v3;
  v128 = v7;
  if (v9)
  {
    v31 = MEMORY[0x1E69A0050];
    sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C4F0D130;
    if (qword_1EDDED138 != -1)
    {
      sub_1C440E2A4(&qword_1EDDED138);
    }

    v33 = sub_1C4EFBD38();
    v34 = sub_1C442B738(v33, qword_1EDE2DC48);
    v35 = MEMORY[0x1E69A0048];
    *(v32 + 56) = v33;
    *(v32 + 64) = v35;
    sub_1C4422F90((v32 + 32));
    sub_1C440A6B8();
    v37 = *(v36 + 16);
    v37();
    sub_1C47DC96C();
    sub_1C4EFAE08();

    v137 = v33;
    v138 = v31;
    v38 = sub_1C4422F90(v136);
    (v37)(v38, v34, v33);
    v134 = MEMORY[0x1E69E6158];
    v135 = MEMORY[0x1E69A0130];
    v132 = 0;
    v133 = 0xE000000000000000;
    *(&v140 + 1) = v142;
    v141 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v139);
    sub_1C440C4CC();
    sub_1C4EFBB68();
    sub_1C4607CD4(&v132, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v136);
    sub_1C43FC300();
    sub_1C4401CBC(v39, v40, v41, v42);
    v27 = v131;
    sub_1C4EFB438();
    v43 = sub_1C4401D48();
    v44(v43);
    sub_1C440962C(v139);
    v7 = v128;
  }

  else
  {
    if (qword_1EDDED138 != -1)
    {
      sub_1C440E2A4(&qword_1EDDED138);
    }

    v45 = sub_1C4EFBD38();
    sub_1C442B738(v45, qword_1EDE2DC48);
    v137 = v45;
    sub_1C443F5E8(MEMORY[0x1E69A0050]);
    sub_1C440A6B8();
    (*(v46 + 16))();
    v134 = MEMORY[0x1E69E6158];
    v135 = v29;
    v132 = 0;
    v133 = 0xE000000000000000;
    *(&v140 + 1) = v142;
    v141 = v28;
    sub_1C4422F90(v139);
    sub_1C440C4CC();
    sub_1C4EFBB68();
    sub_1C4607CD4(&v132, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v136);
    sub_1C47DC96C();
    sub_1C4EFAE28();
    sub_1C440962C(v139);
  }

  v47 = 0;
  v48 = *(v7 + 16);
  v49 = MEMORY[0x1E69E7CC0];
LABEL_9:
  v50 = (v7 + 40 * v47);
  while (v48 != v47)
  {
    if (v47 >= v48)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      sub_1C440686C();
      swift_once();
LABEL_40:
      v99 = sub_1C4F00978();
      sub_1C43FCEE8(v99, qword_1EDE2E088);
      v100 = v48;
      v101 = sub_1C4F00968();
      v102 = sub_1C4F01CD8();

      if (os_log_type_enabled(v101, v102))
      {
        sub_1C43FECF0();
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        *v103 = 138412290;
        v105 = v48;
        v106 = _swift_stdlib_bridgeErrorToNSError();
        *(v103 + 4) = v106;
        *v104 = v106;
        _os_log_impl(&dword_1C43F8000, v101, v102, "FeatureDatabaseTable: loadFeatures: could not load FeatureRows due to %@", v103, 0xCu);
        sub_1C4607CD4(v104, &qword_1EC0BDA00, &qword_1C4F10D30);
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
        sub_1C43FBCFC();
        MEMORY[0x1C6942830]();
      }

      v107 = MEMORY[0x1E69E7CC0];
      goto LABEL_43;
    }

    v51 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      goto LABEL_51;
    }

    v52 = *(v50 + 64);
    ++v47;
    v50 += 5;
    if (v52)
    {
      v53 = *v50;
      v123 = *(v50 - 1);
      v54 = v50[1];
      v55 = v50[2];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139[0] = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459E008(0, *(v49 + 16) + 1, 1);
        v49 = v139[0];
      }

      v58 = *(v49 + 16);
      v57 = *(v49 + 24);
      if (v58 >= v57 >> 1)
      {
        v60 = sub_1C43FCFE8(v57);
        sub_1C459E008(v60, v58 + 1, 1);
        v49 = v139[0];
      }

      *(v49 + 16) = v58 + 1;
      v59 = v49 + 40 * v58;
      *(v59 + 32) = v123;
      *(v59 + 40) = v53;
      *(v59 + 48) = v54;
      *(v59 + 56) = v55;
      *(v59 + 64) = 1;
      v47 = v51;
      v7 = v128;
      v27 = v131;
      goto LABEL_9;
    }
  }

  v61 = *(v49 + 16);
  if (v61)
  {
    v139[0] = MEMORY[0x1E69E7CC0];
    v62 = v49;
    sub_1C44CD9C0(0, v61, 0);
    v63 = v139[0];
    v123 = v62;
    v64 = (v62 + 40);
    do
    {
      v65 = *(v64 - 1);
      v66 = *v64;
      v139[0] = v63;
      v68 = *(v63 + 16);
      v67 = *(v63 + 24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (v68 >= v67 >> 1)
      {
        sub_1C44CD9C0(v67 > 1, v68 + 1, 1);
        v63 = v139[0];
      }

      *(v63 + 16) = v68 + 1;
      v69 = v63 + 16 * v68;
      *(v69 + 32) = v65;
      *(v69 + 40) = v66;
      v64 += 5;
      --v61;
    }

    while (v61);

    v27 = v131;
    v7 = v128;
  }

  else
  {
  }

  v123 = sub_1C4499940();
  v70 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v136[0] = MEMORY[0x1E69E7CC0];
    sub_1C459D970();
    v70 = v136[0];
    v71 = (v7 + 64);
    v72 = v130;
    v73 = v119;
    do
    {
      v74 = *(v71 - 3);
      v75 = *v71;
      v139[0] = *(v71 - 4);
      v139[1] = v74;
      v140 = *(v71 - 1);
      LOBYTE(v141) = v75;
      sub_1C47D72CC(v139, v73);
      v136[0] = v70;
      v77 = *(v70 + 16);
      v76 = *(v70 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_1C43FCFE8(v76);
        sub_1C459D970();
        v70 = v136[0];
      }

      *(v70 + 16) = v77 + 1;
      (*(v18 + 32))(v70 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v77, v73, v142);
      v71 += 40;
      --v48;
    }

    while (v48);
    v27 = v131;
  }

  else
  {
    v72 = v130;
  }

  v130 = v72;
  v78 = v127;
  if (*(v70 + 16))
  {
    v136[0] = v70;
    v79 = v120;
    sub_1C4EFB268();
    *(&v140 + 1) = v142;
    v141 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v139);
    sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
    sub_1C443FC2C(&qword_1EDDDBD58);
    sub_1C4F01468();
    sub_1C43FFB20();
    v80(v79, v122);

    sub_1C43FC300();
    sub_1C4401CBC(v81, v82, v83, v84);
    v85 = v126;
    sub_1C4EFB438();
    v86 = v129;
    v87 = sub_1C43FCE84();
    v88(v87);
    sub_1C440962C(v139);
    (*(v86 + 32))(v27, v85, v78);
  }

  else
  {
  }

  sub_1C441310C();
  sub_1C4401CBC(v89, v90, v91, v92);
  sub_1C47DC918();
  v93 = v130;
  sub_1C4EFAFD8();
  v48 = v93;
  if (v93)
  {
    v94 = sub_1C43FCE84();
    v95(v94);

    if (qword_1EDDFFAF0 != -1)
    {
      goto LABEL_52;
    }

    goto LABEL_40;
  }

  v96 = swift_allocObject();
  v97 = v115;
  *(v96 + 16) = v123;
  *(v96 + 24) = v97;
  v98 = v118;
  *(v96 + 32) = v117;
  *(v96 + 40) = v98;
  *(v96 + 48) = v116 & 1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  sub_1C456902C(&qword_1EC0BD260, &qword_1C4F2D9D8);
  sub_1C4401CBC(&qword_1EDDF01D0, &qword_1EC0BD260, &qword_1C4F2D9D8, MEMORY[0x1E699FDF8]);
  sub_1C4EFBD78();

  sub_1C456902C(&qword_1EC0BD248, &qword_1C4F2D9C0);

  sub_1C456902C(&qword_1EC0BD268, &qword_1C4F2D9E0);
  sub_1C4401CBC(&qword_1EDDDBD40, &qword_1EC0BD248, &qword_1C4F2D9C0, MEMORY[0x1E69E6348]);
  sub_1C4401CBC(&qword_1EDDF0038, &qword_1EC0BD268, &qword_1C4F2D9E0, MEMORY[0x1E69A00F8]);
  sub_1C4F01BF8();
  v107 = v139[0];
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v108 = sub_1C4F00978();
  sub_1C43FCEE8(v108, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v109 = sub_1C4F00968();
  v110 = sub_1C4F01CB8();
  if (os_log_type_enabled(v109, v110))
  {
    sub_1C43FECF0();
    v111 = swift_slowAlloc();
    *v111 = 134217984;
    *(v111 + 4) = *(v107 + 16);

    _os_log_impl(&dword_1C43F8000, v109, v110, "FeatureDatabaseTable: %ld in total feature row table", v111, 0xCu);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  else
  {
  }

  v112 = sub_1C4450668();
  v113(v112);
LABEL_43:
  *v125 = v107;
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C47D72CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = sub_1C4EFB288();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1C4EFB298();
  v4 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v32 - v7;
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v38 = a1[3];
  sub_1C456902C(&qword_1EC0B8F40, &qword_1C4F0EA10);
  v35 = *(v4 + 72);
  v36 = v4;
  v11 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  v13 = qword_1EDDED128;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_1C4EFBD38();
  v15 = sub_1C442B738(v14, qword_1EDE2D308);
  v45 = v14;
  v46 = MEMORY[0x1E69A0050];
  v16 = sub_1C4422F90(v44);
  v17 = *(*(v14 - 8) + 16);
  v17(v16, v15, v14);
  v43[3] = MEMORY[0x1E69E6158];
  v43[4] = MEMORY[0x1E69A0130];
  v43[0] = v9;
  v43[1] = v8;
  sub_1C4EFBB28();
  sub_1C4607CD4(v43, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v44);
  if (v10 && *(v10 + 16))
  {
    v43[0] = v10;
    if (qword_1EDDED140 != -1)
    {
      swift_once();
    }

    v18 = sub_1C442B738(v14, qword_1EDE2D320);
    v45 = v14;
    v46 = MEMORY[0x1E69A0050];
    v19 = sub_1C4422F90(v44);
    v17(v19, v18, v14);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
    v20 = v33;
    sub_1C4F01458();
    sub_1C440962C(v44);
    v22 = *(v12 + 16);
    v21 = *(v12 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1C458D4FC(v21 > 1, v22 + 1, 1, v12);
      v12 = v30;
    }

    *(v12 + 16) = v22 + 1;
    (*(v36 + 32))(v12 + v11 + v22 * v35, v20, v37);
  }

  if (v38 && *(v38 + 16))
  {
    v43[0] = v38;
    if (qword_1EDDED138 != -1)
    {
      swift_once();
    }

    v23 = sub_1C442B738(v14, qword_1EDE2DC48);
    v45 = v14;
    v46 = MEMORY[0x1E69A0050];
    v24 = sub_1C4422F90(v44);
    v17(v24, v23, v14);
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCEC0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6328]);
    v25 = v34;
    sub_1C4F01458();
    sub_1C440962C(v44);
    v27 = *(v12 + 16);
    v26 = *(v12 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1C458D4FC(v26 > 1, v27 + 1, 1, v12);
      v12 = v31;
    }

    *(v12 + 16) = v27 + 1;
    (*(v36 + 32))(v12 + v11 + v27 * v35, v25, v37);
  }

  v44[0] = v12;
  v28 = v39;
  sub_1C4EFB278();
  sub_1C456902C(&qword_1EC0BD258, &qword_1C4F2D9D0);
  sub_1C4401CBC(&qword_1EDDDBD58, &qword_1EC0BD258, &qword_1C4F2D9D0, MEMORY[0x1E69E6328]);
  sub_1C4F01468();
  (*(v40 + 8))(v28, v42);
}

uint64_t sub_1C47D78B4@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  memcpy(__dst, __src, 0x49uLL);
  v12 = __dst[0];
  v13 = __dst[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v32 = v12;
  if (sub_1C4499AD0(v12, v13, a2))
  {
    v14 = __dst[2];
    v15 = __dst[3];
    v30[0] = a3;
    v30[1] = a4;
    v30[2] = a5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v16 = v14;
    v17 = sub_1C47D7A88(__dst);
    v19 = v18;
    v20 = __dst[6];
    v21 = __dst[7];
    sub_1C44344B8(__dst[6], __dst[7]);
  }

  else
  {

    v20 = __dst[6];
    v21 = __dst[7];
    v17 = __dst[4];
    v19 = __dst[5];
    v16 = __dst[2];
    v15 = __dst[3];
    sub_1C470CD44(__dst, v30);
  }

  v22 = __dst[8];
  __srca[0] = v32;
  __srca[1] = v13;
  __srca[2] = v16;
  __srca[3] = v15;
  __srca[4] = v17;
  __srca[5] = v19;
  __srca[6] = v20;
  __srca[7] = v21;
  __srca[8] = __dst[8];
  LOBYTE(__srca[9]) = __dst[9];
  memcpy(v30, __srca, 0x49uLL);
  if ((a6 & 1) == 0)
  {
    return memcpy(a7, __srca, 0x49uLL);
  }

  result = sub_1C47D7E48(v30);
  if (result)
  {
    v24 = __srca[9];
    v25 = v16;
    v26 = v17;
    v27 = v32;
  }

  else
  {
    result = sub_1C470CDA0(__srca);
    v27 = 0;
    v13 = 0;
    v25 = 0;
    v15 = 0;
    v26 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24 = 0;
  }

  *a7 = v27;
  a7[1] = v13;
  a7[2] = v25;
  a7[3] = v15;
  a7[4] = v26;
  a7[5] = v19;
  a7[6] = v20;
  a7[7] = v21;
  a7[8] = v22;
  *(a7 + 72) = v24;
  return result;
}

uint64_t sub_1C47D7A88(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v32 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v32 - v9;
  v11 = sub_1C4EFF0C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = MEMORY[0x1E69E6158];
  v35 = MEMORY[0x1E69E6158];
  v33 = v15;
  v34 = v16;
  swift_bridgeObjectRetain_n();
  sub_1C47D8528();
  v19 = v18;
  sub_1C440962C(&v33);

  if (v19)
  {
    v20 = 7104878;

    v32[0] = 0;
    v32[1] = 0xE000000000000000;
    v35 = v17;
    v33 = v15;
    v34 = v16;
    sub_1C47D8528();
    v22 = v21;
    sub_1C440962C(&v33);
    if (v22)
    {
      sub_1C48685A4(v22, v7);

      if (sub_1C44157D4(v7, 1, v11) != 1)
      {
        v24 = sub_1C4EFF068();
        v23 = v26;
        (*(v12 + 8))(v7, v11);
LABEL_9:
        MEMORY[0x1C6940010](v24, v23);

        MEMORY[0x1C6940010](15933, 0xE200000000000000);
        v35 = v17;
        v33 = v15;
        v34 = v16;
        sub_1C47D8528();
        v28 = v27;
        sub_1C440962C(&v33);
        if (v28)
        {
          sub_1C4A3E1CC(v28, v4);

          if (sub_1C44157D4(v4, 1, v11) != 1)
          {
            v20 = sub_1C4EFF068();
            v29 = v30;
            (*(v12 + 8))(v4, v11);
            goto LABEL_14;
          }

          sub_1C4607CD4(v4, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        v29 = 0xE300000000000000;
LABEL_14:
        MEMORY[0x1C6940010](v20, v29);

        return v32[0];
      }

      sub_1C4607CD4(v7, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v23 = 0xE300000000000000;
    v24 = 7104878;
    goto LABEL_9;
  }

  sub_1C4EFF0D8();
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4607CD4(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v25 = sub_1C4EFF068();
    (*(v12 + 8))(v14, v11);
  }

  return v25;
}

BOOL sub_1C47D7E48(char *a1)
{
  v2 = sub_1C4EFF0C8();
  v51 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C456902C(&qword_1EC0B8580, &unk_1C4F0D340);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = *(a1 + 4);
  v22 = *(a1 + 5);
  v54 = a1;
  v58 = MEMORY[0x1E69E6158];
  v56 = v21;
  v57 = v22;
  swift_bridgeObjectRetain_n();
  sub_1C47D8528();
  v24 = v23;
  sub_1C440962C(&v56);

  if (!v24)
  {
    v54 = v14;
    v37 = v53;
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v20, 1, v2) == 1)
    {

      v38 = v20;
LABEL_11:
      sub_1C4607CD4(v38, &unk_1EC0BA0E0, &qword_1C4F105A0);
      return 0;
    }

    sub_1C4607CD4(v20, &unk_1EC0BA0E0, &qword_1C4F105A0);
    sub_1C4EFF0D8();
    v40 = v54;
    sub_1C4EFF098();
    sub_1C440BAA8(v40, 0, 1, v2);
    v41 = *(v4 + 48);
    v42 = v6;
    sub_1C457E858(v17, v6);
    sub_1C457E858(v40, &v6[v41]);
    if (sub_1C44157D4(v6, 1, v2) == 1)
    {
      sub_1C4607CD4(v40, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4607CD4(v17, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (sub_1C44157D4(&v6[v41], 1, v2) == 1)
      {
        v38 = v6;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1C457E858(v6, v11);
      if (sub_1C44157D4(&v6[v41], 1, v2) != 1)
      {
        v45 = v51;
        v46 = v42 + v41;
        v47 = v37;
        (*(v51 + 32))(v37, v46, v2);
        sub_1C47DCC38(&qword_1EDDFCC98, MEMORY[0x1E69A9810], MEMORY[0x1E69A9830]);
        v48 = sub_1C4F010B8();
        v49 = *(v45 + 8);
        v49(v47, v2);
        sub_1C4607CD4(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C4607CD4(v17, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v49(v11, v2);
        sub_1C4607CD4(v42, &unk_1EC0BA0E0, &qword_1C4F105A0);
        return (v48 & 1) == 0;
      }

      sub_1C4607CD4(v54, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C4607CD4(v17, &unk_1EC0BA0E0, &qword_1C4F105A0);
      (*(v51 + 8))(v11, v2);
    }

    sub_1C4607CD4(v6, &qword_1EC0B8580, &unk_1C4F0D340);
    return 1;
  }

  v25 = v2;

  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v26 = sub_1C4F00978();
  sub_1C442B738(v26, qword_1EDE2E088);
  v27 = v54;
  sub_1C470CD44(v54, &v56);
  v28 = sub_1C4F00968();
  v29 = sub_1C4F01CB8();
  sub_1C470CDA0(v27);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = 7104878;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v55 = v32;
    *v31 = 136315138;
    v58 = MEMORY[0x1E69E6158];
    v56 = v21;
    v57 = v22;
    sub_1C47D8528();
    v34 = v33;
    sub_1C440962C(&v56);
    if (v34)
    {
      v35 = v52;
      sub_1C48685A4(v34, v52);

      if (sub_1C44157D4(v35, 1, v25) != 1)
      {
        v30 = sub_1C4EFF068();
        v36 = v43;
        (*(v51 + 8))(v35, v25);
        goto LABEL_18;
      }

      sub_1C4607CD4(v35, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    v36 = 0xE300000000000000;
LABEL_18:
    v44 = sub_1C441D828(v30, v36, &v55);

    *(v31 + 4) = v44;
    _os_log_impl(&dword_1C43F8000, v28, v29, "FeaturesFilter: got an edge value %s", v31, 0xCu);
    sub_1C440962C(v32);
    MEMORY[0x1C6942830](v32, -1, -1);
    MEMORY[0x1C6942830](v31, -1, -1);

    return 1;
  }

  return 1;
}

void sub_1C47D8528()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBFDC();
  v78 = v4;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD230();
  v80 = v6;
  sub_1C43FBE44();
  v7 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v76 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v77 = v13;
  sub_1C456902C(&qword_1EC0BD270, &qword_1C4F2D9E8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FE95C();
  v81 = sub_1C456902C(&qword_1EC0BD278, &unk_1C4F2D9F0);
  sub_1C43FCDF8();
  v16 = v15;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v74 - v18;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C440686C();
    swift_once();
  }

  v19 = sub_1C4F00978();
  sub_1C442B738(v19, qword_1EDE2E088);
  sub_1C442B870(v2, &v87);
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CB8();
  v22 = os_log_type_enabled(v20, v21);
  v79 = v9;
  if (v22)
  {
    v75 = v16;
    v23 = v7;
    sub_1C43FECF0();
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v83 = v25;
    *v24 = 136315138;
    sub_1C442B870(&v87, v84);
    if (swift_dynamicCast())
    {
      v26 = *(&v86 + 1);
      v27 = v86;
    }

    else
    {
      v26 = 0xE800000000000000;
      v27 = 0x676E697274536F6ELL;
    }

    sub_1C440962C(&v87);
    v28 = sub_1C441D828(v27, v26, &v83);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_1C43F8000, v20, v21, "parseEdgeValue row value %s", v24, 0xCu);
    sub_1C440962C(v25);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();

    v7 = v23;
    v16 = v75;
  }

  else
  {

    sub_1C440962C(&v87);
  }

  v29 = sub_1C442B870(v2, &v87);
  if (!sub_1C4430634(v29, v30, v31, MEMORY[0x1E69E6158]))
  {
    v34 = sub_1C442B870(v2, &v87);
    if (!sub_1C4430634(v34, v35, v36, MEMORY[0x1E6969080]))
    {
      goto LABEL_31;
    }

    v37 = v84[0];
    v38 = sub_1C43FD2BC();
    sub_1C44344B8(v38, v39);
    v40 = sub_1C43FD2BC();
    sub_1C44CE108(v40, v41);
    v33 = v81;
    if (v42)
    {
      v43 = sub_1C43FD2BC();
      sub_1C4434000(v43, v44);
      v45 = sub_1C43FD2BC();
      sub_1C4434000(v45, v46);
LABEL_14:
      v32 = v82;
      goto LABEL_21;
    }

    v86 = v37;
    v47 = sub_1C43FD2BC();
    sub_1C44344B8(v47, v48);
    sub_1C456902C(&qword_1EC0C61A0, &qword_1C4F1E400);
    if (swift_dynamicCast())
    {
      v75 = v16;
      sub_1C441D670(v84, &v87);
      sub_1C4409678(&v87, v90);
      v49 = sub_1C4F02588();
      v50 = sub_1C43FD2BC();
      sub_1C4434000(v50, v51);
      if (v49)
      {
        sub_1C4409678(&v87, v90);
        sub_1C4F02578();
        v52 = sub_1C43FD2BC();
        sub_1C4434000(v52, v53);
        sub_1C440962C(&v87);
        v16 = v75;
        goto LABEL_14;
      }

      sub_1C440962C(&v87);
      v16 = v75;
    }

    else
    {
      v54 = sub_1C43FD2BC();
      sub_1C4434000(v54, v55);
      v85 = 0;
      memset(v84, 0, sizeof(v84));
      sub_1C4607CD4(v84, &qword_1EC0BB218, &qword_1C4F2DA00);
    }

    v32 = v82;
    v56 = sub_1C43FD2BC();
    sub_1C47DC7B8(v56, v57);
    v58 = sub_1C43FD2BC();
    sub_1C4434000(v58, v59);
    goto LABEL_21;
  }

  v33 = v81;
  v32 = v82;
LABEL_21:
  if (qword_1EC0B6AE0 != -1)
  {
    swift_once();
  }

  v60 = sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  sub_1C442B738(v60, qword_1EC151FC8);
  sub_1C4C67230();

  if (sub_1C44157D4(v0, 1, v33) == 1)
  {
    v61 = &qword_1EC0BD270;
    v62 = &qword_1C4F2D9E8;
    v63 = v0;
  }

  else
  {
    (*(v16 + 32))(v32, v0, v33);
    swift_getKeyPath();
    v64 = v16;
    sub_1C4EFCBE8();

    MEMORY[0x1C693FEF0](v87, v88, v89, v90);

    swift_getKeyPath();
    sub_1C4EFCBE8();

    MEMORY[0x1C693FEF0](v87, v88, v89, v90);

    v65 = v80;
    sub_1C4EFF0D8();
    if (sub_1C44157D4(v65, 1, v7) == 1)
    {
      (*(v64 + 8))(v32, v33);
    }

    else
    {
      v66 = v79;
      v67 = *(v79 + 32);
      v68 = v77;
      v67(v77, v65, v7);
      v65 = v78;
      sub_1C4EFF0D8();
      if (sub_1C44157D4(v65, 1, v7) != 1)
      {
        v69 = v76;
        v67(v76, v65, v7);
        sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
        v70 = *(v66 + 72);
        v71 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v72 = swift_allocObject();
        *(v72 + 16) = xmmword_1C4F0CE60;
        v73 = v72 + v71;
        (*(v66 + 16))(v73, v68, v7);
        v67(v73 + v70, v69, v7);
        (*(v66 + 8))(v68, v7);
        (*(v64 + 8))(v82, v81);
        goto LABEL_31;
      }

      (*(v66 + 8))(v68, v7);
      (*(v64 + 8))(v82, v33);
    }

    v61 = &unk_1EC0BA0E0;
    v62 = &qword_1C4F105A0;
    v63 = v65;
  }

  sub_1C4607CD4(v63, v61, v62);
LABEL_31:
  sub_1C43FE9F0();
}

void sub_1C47D8D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22)
{
  sub_1C43FE96C();
  v105 = v23;
  v124 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v100 = v31;
  v33 = v32;
  v97 = v34;
  v104 = v35;
  v99 = v36;
  v110 = a22;
  v103 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  sub_1C43FCDF8();
  *&v102 = v37;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v38);
  v101 = &v96 - v39;
  v106 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  sub_1C43FCDF8();
  v98 = v40;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  v108 = &v96 - v42;
  sub_1C43FBE44();
  v43 = sub_1C4EFB298();
  sub_1C43FCDF8();
  v109 = v44;
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  v46 = MEMORY[0x1E699FE60];
  v107 = v22;
  if (v33)
  {
    v47 = sub_1C4EFBD38();
    v123[3] = v47;
    v123[4] = MEMORY[0x1E69A0050];
    sub_1C4422F90(v123);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C441CA08();
    v48 = MEMORY[0x1E69A0130];
    v121 = MEMORY[0x1E69E6158];
    v122 = MEMORY[0x1E69A0130];
    v96 = v33;
    v49 = MEMORY[0x1E69E6158];
    v119 = v100;
    v120 = v30;
    sub_1C440CC2C();
    *(v50 - 256) = v46;
    sub_1C4422F90(&v111);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v119, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v123);
    v123[3] = v47;
    sub_1C443F5E8(MEMORY[0x1E69A0050]);
    sub_1C4441034();
    v117 = v49;
    v118 = v48;
    v115 = v28;
    v116 = v26;
    v121 = v43;
    v51 = MEMORY[0x1E699FE60];
    v122 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v119);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v115, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(v123);
    v123[3] = v43;
    v123[4] = v51;
    sub_1C4422F90(v123);
    sub_1C4EFBB08();
    sub_1C440962C(&v119);
    sub_1C440962C(&v111);
    v121 = v47;
    v122 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v119);
    sub_1C4EFBD48();
    v117 = MEMORY[0x1E69E6158];
    v118 = MEMORY[0x1E69A0130];
    v115 = v97;
    v116 = v96;
    sub_1C440CC2C();
    *(v52 - 256) = v51;
    sub_1C4422F90(&v111);
    sub_1C4EFBB28();
    sub_1C4607CD4(&v115, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v119);
    v22 = v107;
  }

  else
  {
    v53 = sub_1C4EFBD38();
    v113 = v53;
    v114 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v111);
    sub_1C441CA08();
    v54 = MEMORY[0x1E69A0130];
    v121 = MEMORY[0x1E69E6158];
    v122 = MEMORY[0x1E69A0130];
    v119 = v100;
    v120 = v30;
    v123[3] = v43;
    sub_1C443F5E8(MEMORY[0x1E699FE60]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v119, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v111);
    v121 = v53;
    v122 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v119);
    sub_1C4441034();
    v117 = MEMORY[0x1E69E6158];
    v118 = v54;
    v51 = MEMORY[0x1E699FE60];
    v115 = v28;
    v116 = v26;
    sub_1C440CC2C();
    *(v55 - 256) = v51;
    sub_1C4422F90(&v111);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v115, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v119);
  }

  sub_1C4EFBB08();
  sub_1C440962C(&v111);
  sub_1C440962C(v123);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v56 = v101;
  sub_1C4EFBD18();
  v123[3] = v43;
  v123[4] = v51;
  v57 = sub_1C4422F90(v123);
  (*(v109 + 16))(v57, v22, v43);
  v58 = v103;
  sub_1C4EFBCD8();
  sub_1C43FFB20();
  v59(v56, v58);
  sub_1C440962C(v123);
  sub_1C47DC918();
  sub_1C441310C();
  sub_1C4401CBC(v60, v61, v62, v63);
  v64 = v106;
  v65 = v105;
  v66 = sub_1C4EFB3F8();
  v67 = v65;
  if (!v65)
  {
    v82 = v66;
    v104 = v43;
    v64 = 0;
    v43 = *(v66 + 16);
    v105 = MEMORY[0x1E69E7CC0];
    v83 = 32;
    v103 = 32;
LABEL_10:
    v84 = v83 + 80 * v64;
    while (1)
    {
      if (v43 == v64)
      {

        sub_1C43FFB20();
        v94(v108, v106);
        sub_1C43FFB20();
        v95(v107, v104);
        v77 = v99;
        v81 = v105;
        goto LABEL_21;
      }

      if (v64 >= *(v82 + 16))
      {
        break;
      }

      memcpy(v123, (v82 + v84), 0x49uLL);
      sub_1C470CD44(v123, &v111);
      v85 = objc_autoreleasePoolPush();
      sub_1C47D9768(v123, v28, v26, v124, a21, &v111);
      v67 = 0;
      ++v64;
      v84 += 80;
      objc_autoreleasePoolPop(v85);
      sub_1C470CDA0(v123);
      if (v111)
      {
        v102 = v111;
        v86 = v112;
        v87 = v113;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v86;
        LODWORD(v100) = v87;
        if (isUniquelyReferenced_nonNull_native)
        {
          v89 = v105;
        }

        else
        {
          sub_1C458D53C();
        }

        v91 = v89[2];
        v90 = v89[3];
        v92 = v102;
        if (v91 >= v90 >> 1)
        {
          sub_1C43FCFE8(v90);
          sub_1C458D53C();
          v92 = v102;
        }

        v89[2] = v91 + 1;
        v105 = v89;
        v93 = &v89[4 * v91];
        *(v93 + 2) = v92;
        v93[6] = v101;
        *(v93 + 56) = v100 & 1;
        v83 = v103;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (qword_1EDDFFAF0 != -1)
  {
LABEL_23:
    sub_1C440686C();
    swift_once();
  }

  v68 = sub_1C4F00978();
  sub_1C43FCEE8(v68, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v69 = v67;
  v70 = sub_1C4F00968();
  v71 = sub_1C4F01CD8();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v123[0] = v74;
    *v72 = 136315394;
    *(v72 + 4) = sub_1C441D828(v124, a21, v123);
    *(v72 + 12) = 2112;
    v75 = v67;
    v76 = _swift_stdlib_bridgeErrorToNSError();
    *(v72 + 14) = v76;
    *v73 = v76;
    _os_log_impl(&dword_1C43F8000, v70, v71, "FeatureDatabaseTable: Could not load from table %s due to %@, returning []", v72, 0x16u);
    sub_1C4607CD4(v73, &qword_1EC0BDA00, &qword_1C4F10D30);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C440962C(v74);
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  v77 = v99;
  v78 = v98;
  v79 = v107;

  (*(v78 + 8))(v108, v64);
  sub_1C43FFB20();
  v80(v79, v43);
  v81 = MEMORY[0x1E69E7CC0];
LABEL_21:
  *v77 = v81;
  sub_1C43FBC80();
}

void sub_1C47D9768(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v14 = *a1;
  v13 = *(a1 + 8);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4673B1C(v14, v13, v16, v15, v10, v11);
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v18 = sub_1C4F01D38();
  if (v7)
  {

    v19 = a5;
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v21 = v7;
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CD8();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315650;
      *(v24 + 4) = sub_1C441D828(a2, a3, &v40);
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_1C441D828(a4, v19, &v40);
      *(v24 + 22) = 2080;
      swift_getErrorValue();
      v26 = sub_1C4F02A38();
      v28 = sub_1C441D828(v26, v27, &v40);

      *(v24 + 24) = v28;
      _os_log_impl(&dword_1C43F8000, v22, v23, "FeatureDatabaseTable: Could not deserialize %s from table %s due to: %s. Will treat as non-existent.", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v25, -1, -1);
      MEMORY[0x1C6942830](v24, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (v18)
    {
      v29 = *(a1 + 64);
      v30 = *(a1 + 72);
      *a7 = v17;
      *(a7 + 8) = v18;
      *(a7 + 16) = v29;
      *(a7 + 24) = v30;
      return;
    }

    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v31 = sub_1C4F00978();
    sub_1C442B738(v31, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CD8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136315394;
      *(v34 + 4) = sub_1C441D828(a2, a3, &v40);
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1C441D828(a4, a5, &v40);
      _os_log_impl(&dword_1C43F8000, v32, v33, "FeatureDatabaseTable: Could not deserialize %s from table %s. Will treat as non-existent.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v35, -1, -1);
      MEMORY[0x1C6942830](v34, -1, -1);
    }
  }

  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 24) = 0;
  *(a7 + 16) = 0;
}

void sub_1C47D9BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v67 = a1;
  v74 = a7;
  v62 = a5;
  v63 = a6;
  v61 = a9;
  v73 = a10;
  v14 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v65 = *(v14 - 8);
  *&v66 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v60 - v15;
  v16 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v60 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v70 = &v60 - v17;
  v18 = sub_1C4EFB298();
  v71 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v16;
  v69 = v20;
  if (a2)
  {
    v21 = sub_1C4EFBD38();
    __dst[3] = v21;
    __dst[4] = MEMORY[0x1E69A0050];
    sub_1C4422F90(__dst);
    sub_1C4EFBD48();
    v84 = MEMORY[0x1E69E6158];
    v85 = MEMORY[0x1E69A0130];
    v82 = a3;
    v83 = a4;
    v77 = v18;
    v22 = MEMORY[0x1E699FE60];
    v78 = MEMORY[0x1E699FE60];
    sub_1C4422F90(&v75);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(__dst);
    v79[0] = a2;
    __dst[3] = v21;
    __dst[4] = MEMORY[0x1E69A0050];
    sub_1C4422F90(__dst);
    sub_1C4EFBD48();
    v84 = v18;
    v85 = v22;
    sub_1C4422F90(&v82);
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
    v23 = v22;
    v24 = MEMORY[0x1E69A0130];
    sub_1C4F01458();
    sub_1C440962C(__dst);
    __dst[3] = v18;
    __dst[4] = v22;
    sub_1C4422F90(__dst);
    sub_1C4EFBB08();
    sub_1C440962C(&v82);
    sub_1C440962C(&v75);
    v84 = MEMORY[0x1E69E6158];
    v85 = v24;
    v82 = v62;
    v83 = v63;
    v80 = v21;
    v81 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v79);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBD48();
    v77 = v18;
    v78 = v22;
    sub_1C4422F90(&v75);
    sub_1C4EFBB18();
    sub_1C440962C(v79);
    sub_1C4607CD4(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
    v25 = v69;
    sub_1C4EFBB08();
    sub_1C440962C(&v75);
    sub_1C440962C(__dst);
  }

  else
  {
    v26 = sub_1C4EFBD38();
    v77 = v26;
    v78 = MEMORY[0x1E69A0050];
    sub_1C4422F90(&v75);
    sub_1C4EFBD48();
    v27 = MEMORY[0x1E69E6158];
    v28 = MEMORY[0x1E69A0130];
    v84 = MEMORY[0x1E69E6158];
    v85 = MEMORY[0x1E69A0130];
    v82 = a3;
    v83 = a4;
    __dst[3] = v18;
    __dst[4] = MEMORY[0x1E699FE60];
    sub_1C4422F90(__dst);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFBB28();
    sub_1C4607CD4(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C440962C(&v75);
    v84 = v27;
    v85 = v28;
    v82 = v62;
    v83 = v63;
    v80 = v26;
    v81 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v79);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v23 = MEMORY[0x1E699FE60];
    sub_1C4EFBD48();
    v77 = v18;
    v78 = v23;
    sub_1C4422F90(&v75);
    sub_1C4EFBB18();
    sub_1C440962C(v79);
    sub_1C4607CD4(&v82, &qword_1EC0C5040, &qword_1C4F0F950);
    sub_1C4EFBB08();
    sub_1C440962C(&v75);
    sub_1C440962C(__dst);
    v25 = v20;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v29 = v64;
  sub_1C4EFBD18();
  __dst[3] = v18;
  __dst[4] = v23;
  v30 = sub_1C4422F90(__dst);
  (*(v71 + 16))(v30, v25, v18);
  v31 = v66;
  sub_1C4EFBCD8();
  (*(v65 + 8))(v29, v31);
  sub_1C440962C(__dst);
  sub_1C47DC918();
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF60]);
  v32 = v68;
  v33 = sub_1C4EFB3F8();
  v34 = v32;
  if (!v32)
  {
    v48 = v33;
    v68 = v18;
    v25 = 0;
    v18 = *(v33 + 16);
    v47 = MEMORY[0x1E69E7CC0];
    v49 = 32;
    v67 = 32;
LABEL_10:
    v50 = v49 + 80 * v25;
    while (1)
    {
      if (v18 == v25)
      {

        (*(v60 + 8))(v70, v72);
        (*(v71 + 8))(v69, v68);
        v46 = v61;
        goto LABEL_20;
      }

      if (v25 >= *(v48 + 16))
      {
        break;
      }

      memcpy(__dst, (v48 + v50), 0x49uLL);
      sub_1C470CD44(__dst, &v75);
      v51 = objc_autoreleasePoolPush();
      sub_1C47DA630(__dst, v74, a8, &v75);
      v34 = 0;
      ++v25;
      v50 += 80;
      objc_autoreleasePoolPop(v51);
      sub_1C470CDA0(__dst);
      if (v75)
      {
        v66 = v75;
        v52 = v76;
        v53 = v77;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v52;
        LODWORD(v64) = v53;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C458D53C();
          v47 = v58;
        }

        v55 = *(v47 + 16);
        v56 = v66;
        if (v55 >= *(v47 + 24) >> 1)
        {
          sub_1C458D53C();
          v56 = v66;
          v47 = v59;
        }

        *(v47 + 16) = v55 + 1;
        v57 = v47 + 32 * v55;
        *(v57 + 32) = v56;
        *(v57 + 48) = v65;
        *(v57 + 56) = v64 & 1;
        v49 = v67;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_1EDDFFAF0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v35 = sub_1C4F00978();
  sub_1C442B738(v35, qword_1EDE2E088);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v36 = v34;
  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CD8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    __dst[0] = v40;
    *v39 = 136315394;
    *(v39 + 4) = sub_1C441D828(v74, a8, __dst);
    *(v39 + 12) = 2080;
    swift_getErrorValue();
    v41 = sub_1C4F02A38();
    v43 = sub_1C441D828(v41, v42, __dst);

    *(v39 + 14) = v43;
    _os_log_impl(&dword_1C43F8000, v37, v38, "FeatureDatabaseTable: Could not deserialize from table %s due to: %s, returning []", v39, 0x16u);
    swift_arrayDestroy();
    v44 = v40;
    v25 = v69;
    MEMORY[0x1C6942830](v44, -1, -1);
    MEMORY[0x1C6942830](v39, -1, -1);
  }

  v45 = v60;
  v46 = v61;

  (*(v45 + 8))(v70, v72);
  (*(v71 + 8))(v25, v18);
  v47 = MEMORY[0x1E69E7CC0];
LABEL_20:
  *v46 = v47;
}

void sub_1C47DA630(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v12 = *a1;
  v11 = *(a1 + 8);
  v14 = *(a1 + 16);
  v13 = *(a1 + 24);
  objc_allocWithZone(MEMORY[0x1E69A9EA8]);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v15 = sub_1C4673B1C(v12, v11, v14, v13, v8, v9);
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v16 = sub_1C4F01D38();
  if (v5)
  {

    v17 = a3;
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2E088);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v19 = v5;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315394;
      *(v22 + 4) = sub_1C441D828(a2, v17, &v44);
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v24 = sub_1C4F02A38();
      v26 = sub_1C441D828(v24, v25, &v44);

      *(v22 + 14) = v26;
      _os_log_impl(&dword_1C43F8000, v20, v21, "FeatureDatabaseTable: Could not deserialize from table %s due to: %s. Will treat as non-existent.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v23, -1, -1);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (v16)
    {
      v27 = *(a1 + 64);
      v28 = *(a1 + 72);
      *a5 = v15;
      *(a5 + 8) = v16;
      *(a5 + 16) = v27;
      *(a5 + 24) = v28;
      return;
    }

    v29 = a3;
    if (qword_1EDDFFAF0 != -1)
    {
      swift_once();
    }

    v30 = sub_1C4F00978();
    sub_1C442B738(v30, qword_1EDE2E088);
    v31 = v15;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v32 = sub_1C4F00968();
    v33 = sub_1C4F01CD8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v44 = v35;
      *v34 = 136315394;
      v42 = v29;
      v36 = [v31 string];
      v37 = sub_1C4F01138();
      v39 = v38;

      v40 = sub_1C441D828(v37, v39, &v44);

      *(v34 + 4) = v40;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_1C441D828(a2, v42, &v44);
      _os_log_impl(&dword_1C43F8000, v32, v33, "FeatureDatabaseTable: Could not deserialize %s from table %s. Will treat as non-existent.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v35, -1, -1);
      MEMORY[0x1C6942830](v34, -1, -1);
    }

    else
    {
    }
  }

  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 24) = 0;
  *(a5 + 16) = 0;
}

uint64_t sub_1C47DAB04()
{
  v0 = sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  sub_1C44F9918(v0, qword_1EC151FC8);
  sub_1C442B738(v0, qword_1EC151FC8);
  sub_1C456902C(&qword_1EC0BD288, &qword_1C4F2DA58);
  sub_1C4401CBC(&qword_1EC0BD290, &qword_1EC0BD280, &qword_1C4F2DA08, MEMORY[0x1E69E9290]);
  return sub_1C4EFCB98();
}

uint64_t sub_1C47DABDC@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v75 = sub_1C456902C(&qword_1EC0BD280, &qword_1C4F2DA08);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v69 = v63 - v1;
  v2 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v72 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v68 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v85 = v63 - v5;
  v71 = sub_1C456902C(&qword_1EC0BD2A0, &qword_1C4F2DA68);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v86 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v63 - v8;
  v10 = sub_1C4EFCB28();
  v11 = *(v10 - 8);
  v93 = v10;
  v94 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&qword_1EC0BD2A8, &unk_1C4F2DA70);
  v91 = *(v14 - 8);
  v92 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v67 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v63 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v88 = v63 - v20;
  v21 = sub_1C4EFC1B8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v66 = v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v63 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v63 - v28;
  sub_1C4EFC198();
  v30 = sub_1C47DCC38(&qword_1EC0BD2B0, MEMORY[0x1E69E8268], MEMORY[0x1E69E8260]);
  v84 = v29;
  v81 = v30;
  MEMORY[0x1C693AE20](v26, v21);
  v31 = *(v22 + 8);
  v89 = v26;
  v90 = v21;
  v82 = v31;
  v83 = v22 + 8;
  v31(v26, v21);
  if (qword_1EC0B6AE8 != -1)
  {
    swift_once();
  }

  sub_1C442B738(v2, qword_1EC151FE0);
  sub_1C4EFC178();
  v32 = sub_1C456902C(&qword_1EC0BD2B8, &unk_1C4F5FAE0);
  v65 = MEMORY[0x1E69E9290];
  v33 = sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  v77 = v2;
  v78 = v33;
  sub_1C4EFCAF8();
  v76 = *(v94 + 8);
  v94 += 8;
  v76(v13, v93);
  v34 = v32;
  MEMORY[0x1C693AEB0](v9, v32);
  v87 = sub_1C4401CBC(&qword_1EDDF0018, &qword_1EC0BD2A8, &unk_1C4F2DA70, MEMORY[0x1E69E8278]);
  v35 = v92;
  MEMORY[0x1C693AE20](v18, v92, v87);
  v37 = v91 + 8;
  v36 = *(v91 + 8);
  v80 = v18;
  v36(v18, v35);
  v38 = v36;
  v64 = v36;
  v91 = v37;
  v95[0] = 15933;
  v95[1] = 0xE200000000000000;
  v39 = sub_1C47DCB64();
  MEMORY[0x1C693AE20](&v96, v95, MEMORY[0x1E69E6158], v39);
  sub_1C4EFC178();
  v79 = v9;
  v40 = v34;
  v63[1] = v34;
  v41 = v77;
  sub_1C4EFCAF8();
  v42 = v93;
  v43 = v76;
  v76(v13, v93);
  v44 = v67;
  MEMORY[0x1C693AEB0](v9, v40);
  v45 = v92;
  MEMORY[0x1C693AE20](v44, v92, v87);
  v38(v44, v45);
  v46 = v66;
  sub_1C4EFC1A8();
  v47 = v90;
  MEMORY[0x1C693AE20](v46, v90, v81);
  v82(v46, v47);
  sub_1C4EFC148();
  sub_1C4EFC178();
  v48 = v68;
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v72 = *(v72 + 8);
  (v72)(v48, v41);
  v43(v13, v42);
  sub_1C4C66BE8();

  sub_1C4EFC178();
  sub_1C456902C(&qword_1EC0BD288, &qword_1C4F2DA58);
  v49 = v65;
  sub_1C4401CBC(&unk_1EDDEFFF8, &qword_1EC0BD2A0, &qword_1C4F2DA68, v65);
  v50 = v69;
  v51 = v71;
  sub_1C4EFCAB8();
  v52 = v93;
  v53 = v76;
  v76(v13, v93);
  sub_1C4EFC178();
  sub_1C4EFCAE8();
  sub_1C4401CBC(&qword_1EC0BD290, &qword_1EC0BD280, &qword_1C4F2DA08, v49);
  v54 = v75;
  v55 = v77;
  sub_1C4EFCAB8();
  v56 = v72;
  (v72)(v48, v55);
  v53(v13, v52);
  (*(v74 + 8))(v50, v54);
  v57 = *(v70 + 8);
  v57(v86, v51);
  v57(v79, v51);
  v56(v85, v55);
  v58 = v90;
  v59 = v82;
  v82(v89, v90);
  v60 = v92;
  v61 = v64;
  v64(v80, v92);
  v61(v88, v60);
  return v59(v84, v58);
}

uint64_t sub_1C47DB5F4()
{
  v0 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C44F9918(v0, qword_1EC151FE0);
  sub_1C442B738(v0, qword_1EC151FE0);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  return sub_1C4EFCB98();
}

uint64_t sub_1C47DB6B0@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_1C4EFC188();
  v2 = *(v1 - 8);
  v54 = v1;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v51 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C456902C(&qword_1EC0BD2C0, &unk_1C4F2DA80);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v42 - v8;
  v9 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  v47 = sub_1C4EFCB28();
  v59 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C456902C(&qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v42 - v19;
  v21 = sub_1C456902C(&qword_1EC0BD2D0, &unk_1C4F2DA90);
  v60 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v45 = &v42 - v25;
  v42 = sub_1C4EFCB78();
  sub_1C440BAA8(v20, 1, 1, v42);
  sub_1C4EFC178();
  sub_1C47DBD5C(v12);
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  v26 = MEMORY[0x1E69E67B0];
  v49 = v9;
  sub_1C4EFCB18();
  v27 = *(v10 + 8);
  v48 = v10 + 8;
  v50 = v27;
  v27(v12, v9);
  v28 = *(v59 + 8);
  v59 += 8;
  v29 = v47;
  v28(v17, v47);
  sub_1C4607CD4(v20, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  MEMORY[0x1C693AE40](v15, v26);
  v30 = sub_1C4401CBC(&qword_1EDDF0030, &qword_1EC0BD2D0, &unk_1C4F2DA90, MEMORY[0x1E69E8220]);
  v43 = v21;
  v44 = v30;
  MEMORY[0x1C693AE20](v23, v21, v30);
  v31 = *(v60 + 8);
  v60 += 8;
  v46 = v31;
  v31(v23, v21);
  v32 = v51;
  sub_1C4EFCB58();
  sub_1C440BAA8(v20, 1, 1, v42);
  sub_1C4EFC178();
  sub_1C47DCC38(&qword_1EDDFA260, MEMORY[0x1E69E8250], MEMORY[0x1E69E8248]);
  v33 = v54;
  sub_1C4EFCB08();
  v28(v17, v29);
  sub_1C4607CD4(v20, &qword_1EC0BD2C8, &unk_1C4F4A7C0);
  (*(v55 + 8))(v32, v33);
  v34 = v52;
  MEMORY[0x1C693AEE0](v15, v26);
  v35 = sub_1C4401CBC(&qword_1EC0BD2D8, &qword_1EC0BD2C0, &unk_1C4F2DA80, MEMORY[0x1E69E8290]);
  v36 = v53;
  v37 = v56;
  MEMORY[0x1C693AE20](v34, v56, v35);
  v38 = *(v57 + 8);
  v38(v34, v37);
  v39 = v45;
  v40 = v43;
  sub_1C4EFC148();
  sub_1C47DC3A4();
  v50(v15, v49);
  v38(v36, v37);
  return v46(v39, v40);
}

uint64_t sub_1C47DBD5C@<X0>(uint64_t x8_0@<X8>)
{
  v3 = sub_1C4EFCB28();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  sub_1C4EFC1E8();
  v16 = sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0, MEMORY[0x1E69E8280]);
  MEMORY[0x1C693AE20](v12, v9, v16);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v26[0] = 58;
  v26[1] = 0xE100000000000000;
  v18 = sub_1C47DCB64();
  MEMORY[0x1C693AE20](v27, v26, MEMORY[0x1E69E6158], v18);
  sub_1C4EFC148();
  v19 = v27[0];
  v20 = v27[1];
  sub_1C4EFC178();
  sub_1C47DC604(v19, v20, x8_0);

  (*(v24 + 8))(v5, v25);
  (*(v22 + 8))(v8, v23);
  return (v17)(v15, v9);
}

uint64_t sub_1C47DC06C()
{
  v0 = sub_1C456902C(&qword_1EC0BD2E0, &qword_1C4F4A7D0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v9[0] = 25709;
  v9[1] = 0xE200000000000000;
  v4 = sub_1C47DCB64();
  v5 = MEMORY[0x1E69E6158];
  MEMORY[0x1C693AE00](v10, v9, MEMORY[0x1E69E6158], v4);
  v7 = 26981;
  v8 = 0xE200000000000000;
  MEMORY[0x1C693AE00](v9, &v7, v5, v4);
  v7 = v10[0];
  v8 = v10[1];
  sub_1C4EFC128();

  sub_1C47DC1D0();

  return (*(v1 + 8))(v3, v0);
}

void sub_1C47DC1D0()
{
  sub_1C43FBD3C();
  v1 = v0;
  v3 = v2;
  sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - v5;
  v7 = sub_1C4EFCB28();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v13 = v12 - v11;
  v17[0] = v3;
  v17[1] = v1;
  sub_1C4EFC178();
  v14 = sub_1C43FD2BC();
  sub_1C456902C(v14, v15);
  sub_1C4401CBC(&qword_1EDDFA258, &qword_1EC0BD2E0, &qword_1C4F4A7D0, MEMORY[0x1E69E8280]);
  sub_1C47DCB64();
  v16 = MEMORY[0x1E69E67B0];
  sub_1C4EFCAD8();
  (*(v9 + 8))(v13, v7);
  MEMORY[0x1C693AEC0](v6, v16);
  sub_1C43FE9F0();
}

void sub_1C47DC3A4()
{
  sub_1C43FBD3C();
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v6 = v5;
  v26 = v7;
  v27 = v8;
  v9 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v23 = sub_1C4EFCB28();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  sub_1C4423B7C();
  sub_1C4EFC178();
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  sub_1C4EFCAE8();
  sub_1C456902C(v6, v4);
  sub_1C4401CBC(v24, v6, v4, v25);
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v21 = *(v11 + 8);
  v21(v14, v9);
  v21(v17, v9);
  (*(v19 + 8))(v0, v23);
  sub_1C43FE9F0();
}

uint64_t sub_1C47DC604@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v6 = sub_1C456902C(&qword_1EC0BD298, &qword_1C4F2DA60);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v15[2] = a2;
  v15[3] = a3;
  sub_1C4401CBC(&qword_1EDDFA248, &qword_1EC0BD298, &qword_1C4F2DA60, MEMORY[0x1E69E9290]);
  sub_1C4EFCAE8();
  sub_1C47DCB64();
  sub_1C4EFCAE8();
  sub_1C4EFCAB8();
  v13 = *(v7 + 8);
  v13(v9, v6);
  return (v13)(v12, v6);
}

uint64_t sub_1C47DC7B8(uint64_t a1, unint64_t a2)
{
  sub_1C44344B8(a1, a2);
  sub_1C47DC9E0(a1, a2);
  v4 = sub_1C4F01258();

  return v4;
}

uint64_t sub_1C47DC824@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1C4F01258();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1C47DC860(void *a1)
{
  v1 = [a1 subidentifierName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

unint64_t sub_1C47DC918()
{
  result = qword_1EDDFA020[0];
  if (!qword_1EDDFA020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFA020);
  }

  return result;
}

unint64_t sub_1C47DC96C()
{
  result = qword_1EDDED120;
  if (!qword_1EDDED120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED120);
  }

  return result;
}

void sub_1C47DC9E0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4EF9AB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v8 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = BYTE6(a2);
LABEL_6:
      if (!v8)
      {
        goto LABEL_9;
      }

      sub_1C4434A7C(v8, 0);
      v11 = sub_1C4EF99B8();
      sub_1C4434000(a1, a2);
      (*(v5 + 8))(v7, v4);
      if (v11 != v8)
      {
        __break(1u);
LABEL_9:
        sub_1C4434000(a1, a2);
      }

      return;
  }
}

unint64_t sub_1C47DCB64()
{
  result = qword_1EDDFA5F0;
  if (!qword_1EDDFA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA5F0);
  }

  return result;
}

uint64_t sub_1C47DCBD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C47DCC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C47DCC80()
{
  result = qword_1EC0BD3D0;
  if (!qword_1EC0BD3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD3D0);
  }

  return result;
}

uint64_t sub_1C47DCCD4(uint64_t a1)
{
  sub_1C4F00318();
  v1 = type metadata accessor for IntelligencePlatformDataCollection(0);
  v2 = sub_1C4410C60(v1);
  sub_1C441E398(v2[8]);
  type metadata accessor for FeatureVector(0);
  v3 = sub_1C43FEFE8();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

void sub_1C47DCD2C(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for FeatureVector(0);
  sub_1C4F00318();
  sub_1C441E398(*(v1 + 24));
}

uint64_t sub_1C47DCD78@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = *(type metadata accessor for Feature(0) + 20);
  v4 = type metadata accessor for Feature.FeatureIdentifier(0);
  sub_1C440BAA8(a2 + v3, 1, 1, v4);
  type metadata accessor for FeatureValue(0);
  v5 = sub_1C43FEFE8();

  return sub_1C440BAA8(v5, v6, v7, v8);
}

int *sub_1C47DCDF0(uint64_t a1)
{
  sub_1C4F00318();
  v1 = type metadata accessor for Feature.FeatureIdentifier(0);
  return sub_1C4410C60(v1);
}

uint64_t sub_1C47DCE20()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC151FF8);
  sub_1C442B738(v0, qword_1EC151FF8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "taskName";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subtaskName";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sessionID";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "sessionSequenceNumber";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "featureVector";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DD0A4()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C44196B4();
        sub_1C43FD770();
        sub_1C47DF510();
        break;
      case 2:
        sub_1C44196B4();
        sub_1C43FD770();
        sub_1C47DF560();
        break;
      case 3:
        sub_1C44196B4();
        sub_1C43FD770();
        sub_1C47DF5B0();
        break;
      case 4:
        v7 = sub_1C4406AC8();
        sub_1C47DD160(v7, v8, v9, v10);
        break;
      case 5:
        v3 = sub_1C4406AC8();
        sub_1C47DD1C4(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47DD1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntelligencePlatformDataCollection(0);
  type metadata accessor for FeatureVector(0);
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector, &unk_1C4F2DFC0);
  return sub_1C4F003F8();
}

uint64_t sub_1C47DD278()
{
  sub_1C4405A6C();
  sub_1C44196B4();
  sub_1C43FEE74();
  result = sub_1C47DF664();
  if (!v0)
  {
    sub_1C44196B4();
    sub_1C43FEE74();
    sub_1C47DF6C0();
    sub_1C44196B4();
    sub_1C43FEE74();
    sub_1C47DF71C();
    v2 = sub_1C43FEE60();
    sub_1C47DD2F4(v2, v3, v4, v5);
    v6 = sub_1C43FEE60();
    sub_1C47DD36C(v6, v7, v8, v9);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DD2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IntelligencePlatformDataCollection(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_1C4F00468();
  }

  return result;
}

uint64_t sub_1C47DD36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BD4A0, &qword_1C4F2E1A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureVector(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IntelligencePlatformDataCollection(0);
  sub_1C445FFF0(a1 + *(v11 + 36), v7, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  }

  sub_1C47E0194();
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector, &unk_1C4F2DFC0);
  sub_1C4F004B8();
  return sub_1C447E918(v10, type metadata accessor for FeatureVector);
}

uint64_t sub_1C47DD540()
{
  v2 = sub_1C43FECE0();
  type metadata accessor for FeatureVector(v2);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C456902C(&qword_1EC0BD4A0, &qword_1C4F2E1A0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v44 - v8;
  v10 = sub_1C456902C(&qword_1EC0BD4A8, &qword_1C4F2E1A8);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for IntelligencePlatformDataCollection(0);
  sub_1C440891C();
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_41;
    }

    sub_1C4402FD0(v16);
    v20 = v20 && v18 == v19;
    if (!v20 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v15)
  {
    goto LABEL_41;
  }

  sub_1C440891C();
  if (v23)
  {
    if (!v21)
    {
      goto LABEL_41;
    }

    sub_1C4402FD0(v22);
    v26 = v20 && v24 == v25;
    if (!v26 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v21)
  {
    goto LABEL_41;
  }

  sub_1C440891C();
  if (v29)
  {
    if (!v27)
    {
      goto LABEL_41;
    }

    sub_1C4402FD0(v28);
    v32 = v20 && v30 == v31;
    if (!v32 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else if (v27)
  {
    goto LABEL_41;
  }

  sub_1C4409C8C();
  if (v34)
  {
    if (!v33)
    {
      goto LABEL_41;
    }
  }

  else
  {
    sub_1C4414A9C();
    if (v35)
    {
      goto LABEL_41;
    }
  }

  v36 = *(v14 + 36);
  v37 = *(v10 + 48);
  sub_1C445FFF0(v1 + v36, v13, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  sub_1C445FFF0(v0 + v36, &v13[v37], &qword_1EC0BD4A0, &qword_1C4F2E1A0);
  sub_1C4414160(v13);
  if (v20)
  {
    sub_1C4414160(&v13[v37]);
    if (v20)
    {
      sub_1C4420C3C(v13, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
      goto LABEL_44;
    }
  }

  else
  {
    sub_1C445FFF0(v13, v9, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
    sub_1C4414160(&v13[v37]);
    if (!v38)
    {
      sub_1C47E0194();
      v41 = sub_1C47DDF04();
      sub_1C447E918(v6, type metadata accessor for FeatureVector);
      sub_1C447E918(v9, type metadata accessor for FeatureVector);
      sub_1C4420C3C(v13, &qword_1EC0BD4A0, &qword_1C4F2E1A0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_44:
      sub_1C4F00328();
      sub_1C441F9D4();
      sub_1C47DFCFC(v42, v43, MEMORY[0x1E69AAC10]);
      sub_1C4402120();
      v39 = sub_1C4F010B8();
      return v39 & 1;
    }

    sub_1C447E918(v9, type metadata accessor for FeatureVector);
  }

  sub_1C4420C3C(v13, &qword_1EC0BD4A8, &qword_1C4F2E1A8);
LABEL_41:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1C47DD8DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD498, type metadata accessor for IntelligencePlatformDataCollection, &unk_1C4F2E0F0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DD97C(uint64_t a1)
{
  sub_1C47DFCFC(&qword_1EC0BD480, type metadata accessor for IntelligencePlatformDataCollection, &unk_1C4F2E128);

  return sub_1C4F00428();
}

uint64_t sub_1C47DDA44(uint64_t a1, uint64_t a2)
{
  sub_1C47DFCFC(&qword_1EC0BD480, type metadata accessor for IntelligencePlatformDataCollection, &unk_1C4F2E128);

  return sub_1C4F00438();
}

uint64_t sub_1C47DDAC4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152010);
  sub_1C442B738(v0, qword_1EC152010);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureVectorVersion";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DDCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Feature(0);
  sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature, &unk_1C4F2DE58);
  return sub_1C4F003E8();
}

uint64_t sub_1C47DDD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C47DDE8C(v3, a1, a2, a3);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Feature(0);
      sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature, &unk_1C4F2DE58);
      sub_1C43FD5B4();
      sub_1C4F004A8();
    }

    type metadata accessor for FeatureVector(0);
    sub_1C4417184();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DDE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeatureVector(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_1C4F00468();
  }

  return result;
}

uint64_t sub_1C47DDF04()
{
  v0 = sub_1C43FECE0();
  type metadata accessor for FeatureVector(v0);
  sub_1C4409C8C();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    sub_1C4414A9C();
    if (v3)
    {
      return 0;
    }
  }

  sub_1C47E8984();
  if (v4)
  {
    sub_1C4F00328();
    sub_1C441F9D4();
    sub_1C47DFCFC(v5, v6, MEMORY[0x1E69AAC10]);
    return sub_1C4F010B8() & 1;
  }

  return 0;
}

uint64_t sub_1C47DDFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C47DE04C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C47DE13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD4C0, type metadata accessor for FeatureVector, &unk_1C4F2DF88);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DE1DC(uint64_t a1)
{
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector, &unk_1C4F2DFC0);

  return sub_1C4F00428();
}

uint64_t sub_1C47DE2A4(uint64_t a1, uint64_t a2)
{
  sub_1C47DFCFC(&qword_1EC0BD460, type metadata accessor for FeatureVector, &unk_1C4F2DFC0);

  return sub_1C4F00438();
}

uint64_t sub_1C47DE324()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152028);
  sub_1C442B738(v0, qword_1EC152028);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DE4EC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1C4F00378();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = sub_1C4405BCC();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = sub_1C4405BCC();
      a4(v10);
    }
  }

  return result;
}

uint64_t sub_1C47DE578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Feature(0);
  type metadata accessor for Feature.FeatureIdentifier(0);
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier, &unk_1C4F2DCF0);
  return sub_1C4F003F8();
}

uint64_t sub_1C47DE62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Feature(0);
  type metadata accessor for FeatureValue(0);
  sub_1C47DFCFC(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  return sub_1C4F003F8();
}

uint64_t sub_1C47DE6E0()
{
  sub_1C4405A6C();
  v1 = sub_1C43FEE60();
  result = sub_1C47DE72C(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = sub_1C43FEE60();
    sub_1C47DE900(v6, v7, v8, v9);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DE72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Feature.FeatureIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Feature(0);
  sub_1C445FFF0(a1 + *(v11 + 20), v7, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  }

  sub_1C47E0194();
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier, &unk_1C4F2DCF0);
  sub_1C4F004B8();
  return sub_1C447E918(v10, type metadata accessor for Feature.FeatureIdentifier);
}

uint64_t sub_1C47DE900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for FeatureValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Feature(0);
  sub_1C445FFF0(a1 + *(v11 + 24), v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
  }

  sub_1C47E0194();
  sub_1C47DFCFC(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);
  sub_1C4F004B8();
  return sub_1C447E918(v10, type metadata accessor for FeatureValue);
}

uint64_t sub_1C47DEAD4(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v42 = (v6 - v5);
  sub_1C456902C(&qword_1EC0BB6C8, &unk_1C4F2E1B0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v41 - v8;
  v45 = sub_1C456902C(&qword_1EC0BB6C0, &unk_1C4F20AE0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v41 - v10;
  type metadata accessor for Feature.FeatureIdentifier(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  sub_1C456902C(&qword_1EC0BD4B0, &unk_1C4F2E1C0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = sub_1C456902C(&qword_1EC0BD4B8, &unk_1C4F2F360) - 8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v44 = type metadata accessor for Feature(0);
  v22 = *(v44 + 20);
  v23 = *(v18 + 56);
  v48 = a1;
  sub_1C445FFF0(a1 + v22, v21, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  sub_1C445FFF0(a2 + v22, &v21[v23], &qword_1EC0BD4B0, &unk_1C4F2E1C0);
  sub_1C440582C(v21);
  if (v24)
  {
    sub_1C440582C(&v21[v23]);
    if (v24)
    {
      sub_1C4420C3C(v21, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      goto LABEL_11;
    }
  }

  else
  {
    sub_1C445FFF0(v21, v17, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
    sub_1C440582C(&v21[v23]);
    if (!v24)
    {
      sub_1C47E0194();
      v28 = sub_1C47DF778();
      sub_1C447E918(v14, type metadata accessor for Feature.FeatureIdentifier);
      v29 = sub_1C4402120();
      sub_1C447E918(v29, v30);
      sub_1C4420C3C(v21, &qword_1EC0BD4B0, &unk_1C4F2E1C0);
      if ((v28 & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_11:
      v31 = *(v44 + 24);
      v32 = *(v45 + 48);
      v33 = v47;
      sub_1C445FFF0(v48 + v31, v47, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      sub_1C445FFF0(a2 + v31, v33 + v32, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      if (sub_1C44157D4(v33, 1, v46) == 1)
      {
        sub_1C440582C(v33 + v32);
        if (!v24)
        {
          goto LABEL_18;
        }

        sub_1C4420C3C(v33, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
      }

      else
      {
        v34 = v43;
        sub_1C445FFF0(v33, v43, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        sub_1C440582C(v33 + v32);
        if (v24)
        {
          sub_1C447E918(v34, type metadata accessor for FeatureValue);
LABEL_18:
          v25 = &qword_1EC0BB6C0;
          v26 = &unk_1C4F20AE0;
          v27 = v33;
          goto LABEL_19;
        }

        v37 = v42;
        sub_1C47E0194();
        v38 = sub_1C47E3504(v34, v37);
        sub_1C447E918(v37, type metadata accessor for FeatureValue);
        sub_1C447E918(v34, type metadata accessor for FeatureValue);
        sub_1C4420C3C(v33, &qword_1EC0BB6C8, &unk_1C4F2E1B0);
        if ((v38 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      sub_1C4F00328();
      sub_1C441F9D4();
      sub_1C47DFCFC(v39, v40, MEMORY[0x1E69AAC10]);
      v35 = sub_1C4F010B8();
      return v35 & 1;
    }

    sub_1C447E918(v17, type metadata accessor for Feature.FeatureIdentifier);
  }

  v25 = &qword_1EC0BD4B8;
  v26 = &unk_1C4F2F360;
  v27 = v21;
LABEL_19:
  sub_1C4420C3C(v27, v25, v26);
LABEL_20:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1C47DF028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD4C8, type metadata accessor for Feature, &unk_1C4F2DE20);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DF0C8(uint64_t a1)
{
  sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature, &unk_1C4F2DE58);

  return sub_1C4F00428();
}

uint64_t sub_1C47DF190(uint64_t a1, uint64_t a2)
{
  sub_1C47DFCFC(&qword_1EC0BD440, type metadata accessor for Feature, &unk_1C4F2DE58);

  return sub_1C4F00438();
}

uint64_t sub_1C47DF210()
{
  result = MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F9B6C0);
  qword_1EC152040 = 0x75746165462E6467;
  *algn_1EC152048 = 0xEA00000000006572;
  return result;
}

uint64_t sub_1C47DF280()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152050);
  sub_1C442B738(v0, qword_1EC152050);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0C890;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "view";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "subidentifier";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47DF488()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C4406E34();
        sub_1C43FD770();
        sub_1C47DF5B0();
        break;
      case 2:
        sub_1C4406E34();
        sub_1C43FD770();
        sub_1C47DF560();
        break;
      case 1:
        sub_1C4406E34();
        sub_1C43FD770();
        sub_1C47DF510();
        break;
    }
  }

  return result;
}

uint64_t sub_1C47DF510()
{
  v0 = sub_1C4414568();
  v1(v0);
  sub_1C4417184();
  return sub_1C4F003D8();
}

uint64_t sub_1C47DF560()
{
  v0 = sub_1C4414568();
  v1(v0);
  sub_1C4417184();
  return sub_1C4F003D8();
}

uint64_t sub_1C47DF5B0()
{
  v0 = sub_1C4414568();
  v1(v0);
  sub_1C4417184();
  return sub_1C4F003D8();
}

uint64_t sub_1C47DF600()
{
  sub_1C4405A6C();
  sub_1C4406E34();
  sub_1C43FEE74();
  result = sub_1C47DF664();
  if (!v0)
  {
    sub_1C4406E34();
    sub_1C43FEE74();
    sub_1C47DF6C0();
    sub_1C4406E34();
    sub_1C43FEE74();
    sub_1C47DF71C();
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47DF664()
{
  v1 = sub_1C4414568();
  result = v2(v1);
  v4 = (v0 + *(result + 20));
  v5 = v4[1];
  if (v5)
  {
    return sub_1C442BB0C(*v4, v5, 1);
  }

  return result;
}

uint64_t sub_1C47DF6C0()
{
  v1 = sub_1C4414568();
  result = v2(v1);
  v4 = (v0 + *(result + 24));
  v5 = v4[1];
  if (v5)
  {
    return sub_1C442BB0C(*v4, v5, 2);
  }

  return result;
}

uint64_t sub_1C47DF71C()
{
  v1 = sub_1C4414568();
  result = v2(v1);
  v4 = (v0 + *(result + 28));
  v5 = v4[1];
  if (v5)
  {
    return sub_1C442BB0C(*v4, v5, 3);
  }

  return result;
}

uint64_t sub_1C47DF778()
{
  v0 = sub_1C43FECE0();
  type metadata accessor for Feature.FeatureIdentifier(v0);
  sub_1C440891C();
  if (v3)
  {
    if (!v1)
    {
      return 0;
    }

    sub_1C4402FD0(v2);
    v6 = v6 && v4 == v5;
    if (!v6 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v1)
  {
    return 0;
  }

  sub_1C440891C();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1C4402FD0(v8);
    v12 = v6 && v10 == v11;
    if (!v12 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_1C440891C();
  if (v15)
  {
    if (v13)
    {
      sub_1C4402FD0(v14);
      v18 = v6 && v16 == v17;
      if (v18 || (sub_1C4F02938() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v13)
  {
LABEL_26:
    sub_1C4F00328();
    sub_1C441F9D4();
    sub_1C47DFCFC(v19, v20, MEMORY[0x1E69AAC10]);
    sub_1C4402120();
    return sub_1C4F010B8() & 1;
  }

  return 0;
}

uint64_t sub_1C47DF884(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C47DFCFC(a2, a3, a4);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C47DF910()
{
  if (qword_1EC0B6B08 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC152040;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v0;
}

uint64_t sub_1C47DF978@<X0>(uint64_t a1@<X8>)
{
  sub_1C4F00328();
  sub_1C43FBCE0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t sub_1C47DF9D8()
{
  sub_1C4F00328();
  sub_1C43FBCE0();
  v0 = sub_1C4402120();

  return v1(v0);
}

uint64_t sub_1C47DFA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47DFCFC(&qword_1EC0BD4D0, type metadata accessor for Feature.FeatureIdentifier, &unk_1C4F2DCB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47DFB04(uint64_t a1)
{
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier, &unk_1C4F2DCF0);

  return sub_1C4F00428();
}

uint64_t sub_1C47DFBCC(uint64_t a1, uint64_t a2)
{
  sub_1C47DFCFC(&qword_1EC0BD420, type metadata accessor for Feature.FeatureIdentifier, &unk_1C4F2DCF0);

  return sub_1C4F00438();
}

uint64_t sub_1C47DFCFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47E0194()
{
  v2 = sub_1C43FECE0();
  v3(v2);
  sub_1C43FBCE0();
  (*(v4 + 32))(v0, v1);
  return v0;
}

void sub_1C47E0214(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EC0BD4D8, MEMORY[0x1E69E72F0]);
      if (v3 <= 0x3F)
      {
        sub_1C47E0424(319, qword_1EDDEABE8, type metadata accessor for FeatureVector, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C47E0348(uint64_t a1)
{
  sub_1C47E0424(319, &qword_1EC0BD4E0, type metadata accessor for Feature, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C4F00328();
    if (v2 <= 0x3F)
    {
      sub_1C44FCC6C(319, &qword_1EC0BD4D8, MEMORY[0x1E69E72F0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C47E0424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C47E04B0(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C47E0424(319, &qword_1EC0BD4F8, type metadata accessor for Feature.FeatureIdentifier, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C47E0424(319, &qword_1EDDF8B70, type metadata accessor for FeatureValue, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C47E05D4(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C44FCC6C(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C47E06A8(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = sub_1C4EFBD38();
  sub_1C44F9918(v4, a2);
  sub_1C442B738(v4, a2);
  sub_1C47E127C();
  return sub_1C4EFBD58();
}

uint64_t sub_1C47E0724(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E77656976 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E65727574616566 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C4F86480 == a2;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C47E08D4(char a1)
{
  result = 0x656D614E77656976;
  switch(a1)
  {
    case 1:
      result = 0x4E65727574616566;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C47E097C(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BD530, &qword_1C4F2E5E8);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9 - 8];
  sub_1C4409678(a1, a1[3]);
  sub_1C47E127C();
  sub_1C4F02BF8();
  LOBYTE(v14) = 0;
  sub_1C44196D0();
  sub_1C4F02798();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1C44196D0();
    sub_1C4F02798();
    LOBYTE(v14) = 2;
    sub_1C44196D0();
    sub_1C4F02798();
    v14 = *(v3 + 48);
    v15 = v14;
    v13[23] = 3;
    sub_1C446E59C(&v15, v13);
    sub_1C446E5F8();
    sub_1C4F027E8();
    sub_1C4434000(v14, *(&v14 + 1));
    LOBYTE(v14) = 4;
    sub_1C44196D0();
    sub_1C4F02758();
  }

  return (*(v7 + 8))(v10, v5);
}

void *sub_1C47E0B50@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BD528, &qword_1C4F2E5E0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C47E127C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  LOBYTE(v35) = 0;
  sub_1C442CA64();
  v11 = sub_1C4F02678();
  v33 = v12;
  LOBYTE(v35) = 1;
  sub_1C442CA64();
  v13 = sub_1C4F02678();
  v32 = v14;
  v30 = v13;
  LOBYTE(v35) = 2;
  v29 = sub_1C4F02678();
  v31 = v15;
  LOBYTE(__src[0]) = 3;
  sub_1C444C16C();
  sub_1C4F026C8();
  v28[0] = v35;
  v28[1] = v36;
  v46 = 4;
  sub_1C442CA64();
  v16 = sub_1C4F02638();
  v18 = v17;
  v19 = v16;
  (*(v7 + 8))(v10, v5);
  v18 &= 1u;
  v45 = v18;
  __src[0] = v11;
  __src[1] = v33;
  v20 = v30;
  v21 = v32;
  __src[2] = v30;
  __src[3] = v32;
  v22 = v31;
  __src[4] = v29;
  __src[5] = v31;
  sub_1C441F9EC();
  __src[6] = v24;
  __src[7] = v23;
  __src[8] = v19;
  LOBYTE(__src[9]) = v18;
  sub_1C470CD44(__src, &v35);
  sub_1C440962C(a1);
  v35 = v11;
  v36 = v33;
  v37 = v20;
  v38 = v21;
  v39 = v29;
  v40 = v22;
  sub_1C441F9EC();
  v41 = v26;
  v42 = v25;
  v43 = v19;
  v44 = v18;
  sub_1C470CDA0(&v35);
  return memcpy(a2, __src, 0x49uLL);
}

uint64_t sub_1C47E0EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C47E0724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C47E0F20(uint64_t a1)
{
  v2 = sub_1C47E127C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C47E0F5C(uint64_t a1)
{
  v2 = sub_1C47E127C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C47E0F98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C47E0B50(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x49uLL);
  }

  return result;
}

uint64_t sub_1C47E0FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47E1614();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C47E1070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C47E1668();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C47E1164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C47E16BC();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C47E11B8(uint64_t a1, char a2, char a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v9[16] = a2;
  v10 = a1;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = a3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v7 = sub_1C49A5498(sub_1C470CD1C, v9);

  return v7;
}

unint64_t sub_1C47E127C()
{
  result = qword_1EDDED158[0];
  if (!qword_1EDDED158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDED158);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeatureRow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C47E13B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C47E13F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C47E145C()
{
  result = qword_1EC0BD510;
  if (!qword_1EC0BD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD510);
  }

  return result;
}

unint64_t sub_1C47E14B8()
{
  result = qword_1EC0BD518;
  if (!qword_1EC0BD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD518);
  }

  return result;
}

unint64_t sub_1C47E1510()
{
  result = qword_1EC0BD520;
  if (!qword_1EC0BD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD520);
  }

  return result;
}

unint64_t sub_1C47E1568()
{
  result = qword_1EDDED148;
  if (!qword_1EDDED148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED148);
  }

  return result;
}

unint64_t sub_1C47E15C0()
{
  result = qword_1EDDED150;
  if (!qword_1EDDED150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED150);
  }

  return result;
}

unint64_t sub_1C47E1614()
{
  result = qword_1EDDED118;
  if (!qword_1EDDED118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDED118);
  }

  return result;
}

unint64_t sub_1C47E1668()
{
  result = qword_1EC0BD538;
  if (!qword_1EC0BD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD538);
  }

  return result;
}

unint64_t sub_1C47E16BC()
{
  result = qword_1EC0BD540;
  if (!qword_1EC0BD540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD540);
  }

  return result;
}

_BYTE *_s24SiriInferenceFeatureFlagOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C47E17F0()
{
  result = qword_1EC0BD548;
  if (!qword_1EC0BD548)
  {
    sub_1C4572308(&qword_1EC0BD550, qword_1C4F2E610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD548);
  }

  return result;
}

uint64_t sub_1C47E1854(char a1)
{
  v1 = sub_1C4F02278();
  MEMORY[0x1C6940010](v1);

  return 0;
}

uint64_t sub_1C47E18C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4F02278();
  if (v4 == a1 && v5 == a2)
  {

LABEL_8:

    return 0;
  }

  v7 = sub_1C44196E4(v4);

  if (v7)
  {
    goto LABEL_8;
  }

  v9 = sub_1C4F02278();
  if (v9 == a1 && v10 == a2)
  {

    return 1;
  }

  else
  {
    v12 = sub_1C44196E4(v9);

    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C47E19CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C47E18C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C47E19FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C47E1854(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C47E1AEC()
{
  result = qword_1EC0BD558;
  if (!qword_1EC0BD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD558);
  }

  return result;
}

unint64_t sub_1C47E1B40()
{
  result = qword_1EC0BD560;
  if (!qword_1EC0BD560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD560);
  }

  return result;
}

unint64_t sub_1C47E1BA8()
{
  result = qword_1EC0BD568;
  if (!qword_1EC0BD568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD568);
  }

  return result;
}

uint64_t sub_1C47E1BFC(uint64_t a1)
{
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_1C47E1C48()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1C4EF9CD8();
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C47E1D04, 0, 0);
}

void sub_1C47E1D04()
{
  v1 = v0[3];
  v2 = v1[3];
  if (v2 >= *(*v1 + 16))
  {
    v12 = type metadata accessor for FeatureProviderSnapshot(0);
    sub_1C440BAA8(v0[2], 1, 1, v12);

    v13 = v0[1];

    v13();
  }

  else if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = *v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64)) + *(v4 + 56) * v2;
    v0[7] = v6;
    v0[8] = v4 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v6(v3, v7, v5);
    v1[3] = v2 + 1;
    v8 = v1[2];
    ObjectType = swift_getObjectType();
    v14 = (*(v8 + 16) + **(v8 + 16));
    v10 = swift_task_alloc();
    v0[9] = v10;
    *v10 = v0;
    v10[1] = sub_1C47E1EF0;
    v11 = v0[6];

    v14(v11, ObjectType, v8);
  }
}

uint64_t sub_1C47E1EF0()
{
  sub_1C43FBCD4();
  sub_1C43FBE64();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C47E1FE8, 0, 0);
}

uint64_t sub_1C47E1FE8()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  (*(v0 + 56))(v4, v1, v3);
  sub_1C465CF34();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  v7 = type metadata accessor for FeatureProviderSnapshot(0);
  *(v4 + *(v7 + 20)) = v6;
  sub_1C440BAA8(*(v0 + 16), 0, 1, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1C47E20D4()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C47E2168;

  return sub_1C47E1C48();
}

uint64_t sub_1C47E2168()
{
  sub_1C43FBCD4();
  v1 = *v0;
  sub_1C43FBE64();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C47E2254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C47E2320;

  return (sub_1C498250C)(a1, a2, a3);
}

uint64_t sub_1C47E2320()
{
  v2 = *v1;
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBE64();
  *v5 = v4;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1C47E2438@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C47E1BFC(*v1);
  v5 = v4;
  v7 = v6;
  swift_unknownObjectRelease();

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = 0;
  return result;
}

unint64_t sub_1C47E24A0(uint64_t a1)
{
  result = sub_1C47E24C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C47E24C8()
{
  result = qword_1EC0BD570;
  if (!qword_1EC0BD570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BD570);
  }

  return result;
}

void sub_1C47E2574(uint64_t a1)
{
  sub_1C47E2714(319, &qword_1EDDDBCD0, type metadata accessor for FeatureValue.BasicValue, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C47E2A34(319, &qword_1EDDDBBB8, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C47E2714(319, &qword_1EDDDBCC8, type metadata accessor for FeatureValue.NamedValue, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1C4F00328();
        if (v4 <= 0x3F)
        {
          sub_1C47E2714(319, &qword_1EDDF8BF0, type metadata accessor for FeatureValue.BasicValue, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C47E2714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C47E27C0(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C47E2A34(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C47E2714(319, &qword_1EDDF8BF0, type metadata accessor for FeatureValue.BasicValue, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C47E28D8(uint64_t a1)
{
  sub_1C4F00328();
  if (v1 <= 0x3F)
  {
    sub_1C47E2A34(319, &qword_1EDDFCDC0, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C47E2A34(319, &qword_1EDDF05D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C47E2A34(319, &qword_1EDDDBB88, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C47E2A34(319, &qword_1EDDFEAB0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C47E2A34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1C47E2A84@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  type metadata accessor for FeatureValue(0);
  sub_1C4F00318();
  type metadata accessor for FeatureValue.BasicValue(0);
  v3 = sub_1C43FEFE8();

  return sub_1C440BAA8(v3, v4, v5, v6);
}

uint64_t sub_1C47E2AEC(uint64_t a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t sub_1C47E2B24(double a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

double sub_1C47E2B5C()
{
  v1 = v0 + *(type metadata accessor for FeatureValue.BasicValue(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

float sub_1C47E2B94()
{
  v1 = v0 + *(type metadata accessor for FeatureValue.BasicValue(0) + 28);
  result = *v1;
  if (*(v1 + 4))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1C47E2BCC(float a1)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t sub_1C47E2C04()
{
  v1 = (v0 + *(type metadata accessor for FeatureValue.BasicValue(0) + 20));
  if (v1[8])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

int *sub_1C47E2C38@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  result = type metadata accessor for FeatureValue.BasicValue(0);
  v4 = a2 + result[5];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a2 + result[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + result[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (a2 + result[8]);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C47E2CA4@<X0>(uint64_t a2@<X8>)
{
  sub_1C4F00318();
  v3 = (a2 + *(type metadata accessor for FeatureValue.NamedValue(0) + 20));
  *v3 = 0;
  v3[1] = 0;
  type metadata accessor for FeatureValue.BasicValue(0);
  v4 = sub_1C43FEFE8();

  return sub_1C440BAA8(v4, v5, v6, v7);
}

uint64_t sub_1C47E2CFC()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152068);
  sub_1C442B738(v0, qword_1EC152068);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value_sequence";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_sequence_shape";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value_dictionary";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47E2F48()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_1C4406AC8();
        sub_1C47E2FF0(v3, v4, v5, v6);
        break;
      case 2:
        sub_1C4F00388();
        break;
      case 3:
        v7 = sub_1C4406AC8();
        sub_1C47E3090(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_1C4406AC8();
        sub_1C47E3130(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47E2FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44);
  return sub_1C4F003E8();
}

uint64_t sub_1C47E3090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeatureValue.NamedValue(0);
  sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue, &unk_1C4F2E9DC);
  return sub_1C4F003E8();
}

uint64_t sub_1C47E3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeatureValue(0);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44);
  return sub_1C4F003F8();
}

uint64_t sub_1C47E31E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (!*(*v3 + 16) || (type metadata accessor for FeatureValue.BasicValue(0), sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44), v9 = sub_1C43FD5B4(), result = sub_1C440F598(v9, 1, v10, v11), (v5 = v4) == 0))
  {
    if (!*(v3[1] + 16) || (v4 = v5, result = sub_1C4F00448(), !v5))
    {
      if (!*(v3[2] + 16) || (type metadata accessor for FeatureValue.NamedValue(0), sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue, &unk_1C4F2E9DC), v13 = sub_1C43FD5B4(), result = sub_1C440F598(v13, 3, v14, v15), (v5 = v4) == 0))
      {
        result = sub_1C47E3364(v3, a1, a2, a3);
        if (!v5)
        {
          type metadata accessor for FeatureValue(0);
          return sub_1C4F00308();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C47E3364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for FeatureValue.BasicValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeatureValue(0);
  sub_1C46D6C34(a1 + *(v11 + 32), v7);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB438, qword_1C4F1F960);
  }

  sub_1C47E549C(v7, v10);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44);
  sub_1C4F004B8();
  return sub_1C47E5440(v10);
}

uint64_t sub_1C47E3504(uint64_t a1, void *a2)
{
  v5 = sub_1C43FBE94();
  type metadata accessor for FeatureValue.BasicValue(v5);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440E01C();
  sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1C47E9434();
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_1C47E9678(*(v2 + 8), a2[1]) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C47E96CC();
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = *(type metadata accessor for FeatureValue(0) + 32);
  v17 = *(v10 + 48);
  sub_1C46D6C34(v2 + v16, v13);
  sub_1C46D6C34(a2 + v16, &v13[v17]);
  sub_1C43FC0FC(v13);
  if (v18)
  {
    sub_1C43FC0FC(&v13[v17]);
    if (v18)
    {
      sub_1C4420C3C(v13, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_16:
      sub_1C4F00328();
      sub_1C4406E50();
      sub_1C47E5128(v22, v23, MEMORY[0x1E69AAC10]);
      v19 = sub_1C4F010B8();
      return v19 & 1;
    }

    goto LABEL_12;
  }

  sub_1C46D6C34(v13, v9);
  sub_1C43FC0FC(&v13[v17]);
  if (v18)
  {
    sub_1C47E5440(v9);
LABEL_12:
    sub_1C4420C3C(v13, &qword_1EC0BD5B8, &unk_1C4F2F340);
    goto LABEL_13;
  }

  sub_1C47E549C(&v13[v17], v3);
  v21 = sub_1C47E419C(v9, v3);
  sub_1C47E5440(v3);
  sub_1C47E5440(v9);
  sub_1C4420C3C(v13, &qword_1EC0BB438, qword_1C4F1F960);
  if (v21)
  {
    goto LABEL_16;
  }

LABEL_13:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_1C47E379C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C47E3810(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1C4F00328();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C47E38D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47E5128(&qword_1EC0BD5C0, type metadata accessor for FeatureValue, &unk_1C4F2EC74);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47E3978(uint64_t a1)
{
  sub_1C47E5128(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);

  return sub_1C4F00428();
}

uint64_t sub_1C47E3A40(uint64_t a1, uint64_t a2)
{
  sub_1C47E5128(qword_1EDDF8B90, type metadata accessor for FeatureValue, &unk_1C4F2ECAC);

  return sub_1C4F00438();
}

uint64_t sub_1C47E3AE0()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC152090);
  sub_1C442B738(v0, qword_1EC152090);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D480;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "int_value";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "double_value";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "float_value";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "string_value";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47E3D20()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = sub_1C4406AC8();
        sub_1C47E3DC0(v3, v4, v5, v6);
        break;
      case 2:
        v15 = sub_1C4406AC8();
        sub_1C47E3E24(v15, v16, v17, v18);
        break;
      case 3:
        v7 = sub_1C4406AC8();
        sub_1C47E3E88(v7, v8, v9, v10);
        break;
      case 4:
        v11 = sub_1C4406AC8();
        sub_1C47E3EEC(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C47E3F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C43FEE60();
  result = sub_1C47E3FBC(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_1C43FEE60();
    sub_1C47E4034(v9, v10, v11, v12);
    v13 = sub_1C43FEE60();
    sub_1C47E40AC(v13, v14, v15, v16);
    v17 = sub_1C43FEE60();
    sub_1C47E4124(v17, v18, v19, v20);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47E3FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_1C4F00478();
  }

  return result;
}

uint64_t sub_1C47E4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_1C4F00488();
  }

  return result;
}

uint64_t sub_1C47E40AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return sub_1C4F00458();
  }

  return result;
}

uint64_t sub_1C47E4124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeatureValue.BasicValue(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47E419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  type metadata accessor for FeatureValue.BasicValue(v4);
  sub_1C4408908();
  if (v8)
  {
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v7)
    {
      LOBYTE(v5) = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  sub_1C4408908();
  if (v13)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v12)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v14 = *(v9 + 28);
  v15 = (v2 + v14);
  v16 = *(v2 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  sub_1C440891C();
  if (v19)
  {
    if (!v20)
    {
      return 0;
    }

    v23 = *v21 == *v22 && v19 == v20;
    if (!v23 && (sub_1C4F02938() & 1) == 0)
    {
      return 0;
    }

LABEL_26:
    sub_1C4F00328();
    sub_1C4406E50();
    sub_1C47E5128(v24, v25, MEMORY[0x1E69AAC10]);
    sub_1C4402120();
    return sub_1C4F010B8() & 1;
  }

  if (!v20)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_1C47E4330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47E5128(&qword_1EC0BD5C8, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB0C);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47E43D0(uint64_t a1)
{
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44);

  return sub_1C4F00428();
}

uint64_t sub_1C47E4498(uint64_t a1, uint64_t a2)
{
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44);

  return sub_1C4F00438();
}

uint64_t sub_1C47E4538(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  result = MEMORY[0x1C6940010](a2, 0xEB0000000065756CLL);
  *a3 = 0x75746165462E6467;
  *a4 = 0xEF65756C61566572;
  return result;
}

uint64_t sub_1C47E45B4()
{
  v0 = sub_1C4F004E8();
  sub_1C44F9918(v0, qword_1EC1520B8);
  sub_1C442B738(v0, qword_1EC1520B8);
  sub_1C456902C(&qword_1EC0BB698, &unk_1C4F20AC0);
  v1 = (sub_1C456902C(&qword_1EC0BB6A0, &qword_1C4F24070) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0CE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C4F004C8();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C4F004D8();
}

uint64_t sub_1C47E477C()
{
  sub_1C4411B70();
  while (1)
  {
    sub_1C43FE99C();
    result = sub_1C4F00378();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = sub_1C4406AC8();
      sub_1C47E4844(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = sub_1C4406AC8();
      sub_1C47E47E0(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C47E4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FeatureValue.NamedValue(0);
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44);
  return sub_1C4F003F8();
}

uint64_t sub_1C47E48F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C43FEE60();
  result = sub_1C47E494C(v4, v5, v6, v7);
  if (!v3)
  {
    v9 = sub_1C43FEE60();
    sub_1C47E49C4(v9, v10, v11, v12);
    sub_1C43FE99C();
    return sub_1C4F00308();
  }

  return result;
}

uint64_t sub_1C47E494C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FeatureValue.NamedValue(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1C4F00498();
  }

  return result;
}

uint64_t sub_1C47E49C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for FeatureValue.BasicValue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FeatureValue.NamedValue(0);
  sub_1C46D6C34(a1 + *(v11 + 24), v7);
  if (sub_1C44157D4(v7, 1, v8) == 1)
  {
    return sub_1C4420C3C(v7, &qword_1EC0BB438, qword_1C4F1F960);
  }

  sub_1C47E549C(v7, v10);
  sub_1C47E5128(qword_1EDDF8C10, type metadata accessor for FeatureValue.BasicValue, &unk_1C4F2EB44);
  sub_1C4F004B8();
  return sub_1C47E5440(v10);
}

uint64_t sub_1C47E4B64(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C43FBE94();
  type metadata accessor for FeatureValue.BasicValue(v5);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440E01C();
  sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = sub_1C456902C(&qword_1EC0BD5B8, &unk_1C4F2F340);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for FeatureValue.NamedValue(0);
  sub_1C440891C();
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_19;
    }

    v19 = *v17 == *v18 && v15 == v16;
    if (!v19 && (sub_1C4F02938() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v16)
  {
    goto LABEL_19;
  }

  v20 = *(v14 + 24);
  v21 = *(v10 + 48);
  sub_1C46D6C34(v2 + v20, v13);
  sub_1C46D6C34(a2 + v20, &v13[v21]);
  sub_1C43FC0FC(v13);
  if (v19)
  {
    sub_1C43FC0FC(&v13[v21]);
    if (v19)
    {
      sub_1C4420C3C(v13, &qword_1EC0BB438, qword_1C4F1F960);
LABEL_22:
      sub_1C4F00328();
      sub_1C4406E50();
      sub_1C47E5128(v26, v27, MEMORY[0x1E69AAC10]);
      sub_1C4402120();
      v23 = sub_1C4F010B8();
      return v23 & 1;
    }

    goto LABEL_18;
  }

  sub_1C46D6C34(v13, v9);
  sub_1C43FC0FC(&v13[v21]);
  if (v22)
  {
    sub_1C47E5440(v9);
LABEL_18:
    sub_1C4420C3C(v13, &qword_1EC0BD5B8, &unk_1C4F2F340);
    goto LABEL_19;
  }

  sub_1C47E549C(&v13[v21], v3);
  v25 = sub_1C47E419C(v9, v3);
  sub_1C47E5440(v3);
  sub_1C47E5440(v9);
  sub_1C4420C3C(v13, &qword_1EC0BB438, qword_1C4F1F960);
  if (v25)
  {
    goto LABEL_22;
  }

LABEL_19:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_1C47E4DCC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C4F02AF8();
  a1(0);
  sub_1C47E5128(a2, a3, a4);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C47E4EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C47E5128(&qword_1EC0BD5D0, type metadata accessor for FeatureValue.NamedValue, &unk_1C4F2E9A4);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C47E4F50(uint64_t a1)
{
  sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue, &unk_1C4F2E9DC);

  return sub_1C4F00428();
}

uint64_t sub_1C47E5018(uint64_t a1, uint64_t a2)
{
  sub_1C47E5128(&qword_1EC0BD580, type metadata accessor for FeatureValue.NamedValue, &unk_1C4F2E9DC);

  return sub_1C4F00438();
}

uint64_t sub_1C47E5128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C47E5440(uint64_t a1)
{
  v2 = type metadata accessor for FeatureValue.BasicValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C47E549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureValue.BasicValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C47E5500(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C47E5540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C47E559C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C47E55B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C47E55F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1C47E563C(uint64_t a1, double a2, uint64_t a3)
{
  v3 = a2;
  v26 = *MEMORY[0x1E69E9840];
  v5 = sub_1C47E57A4(a1, a3, a2);
  v6 = v5 == 8 || v5 == 3;
  if (v6)
  {
    *&v24 = MEMORY[0x1C6940C00](v3);
    *(&v24 + 1) = v7;
    v25 = v8;
    v22 = v24;
    v23 = v8;
    if (v3 == 0.0)
    {
      v9 = 0;
LABEL_14:
      MEMORY[0x1C6941AC0](&v22, &v24, v9, 0);
      v20 = v22;
      v21 = v23;
      v18 = v22;
      v19 = v23;
      v15 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
      [v15 doubleValue];
      v3 = v16;

      return v3;
    }

    log10(fabs(v3));
    sub_1C4406DB4();
    if (v11 ^ v12 | v6)
    {
      if (v10 < 9.22337204e18)
      {
        if (v10 > -9.22337204e18)
        {
          v13 = -v10;
          v14 = v13 + a1;
          if (!__OFADD__(v13, a1))
          {
            v9 = v14 - 1;
            if (!__OFSUB__(v14, 1))
            {
              goto LABEL_14;
            }

LABEL_19:
            __break(1u);
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  return v3;
}

uint64_t sub_1C47E57A4(uint64_t a1, uint64_t a2, double a3)
{
  v3 = (*&a3 >> 52) & 0x7FFLL;
  if (v3)
  {
    if (a3 < 0.0)
    {
      v4 = 3;
    }

    else
    {
      v4 = 8;
    }

    if (a3 < 0.0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 9;
    }

    if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v6 = (*&a3 >> 51) & 1;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 2047)
    {
      return v6;
    }

    else
    {
      return v4;
    }
  }

  else if ((*&a3 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    if (sub_1C4F01A18())
    {
      return 4;
    }

    else
    {
      return 7;
    }
  }

  else if (a3 < 0.0)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_1C47E5828(float a1)
{
  if ((LODWORD(a1) >> 23))
  {
    if ((LODWORD(a1) >> 23) == 255)
    {
      if ((LODWORD(a1) & 0x7FFFFF) != 0)
      {
        return (LODWORD(a1) >> 22) & 1;
      }

      else if (sub_1C4F01A88())
      {
        return 2;
      }

      else
      {
        return 9;
      }
    }

    else if (a1 < 0.0)
    {
      return 3;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    v2 = LODWORD(a1) & 0x7FFFFF;
    v3 = sub_1C4F01A88();
    if (v3)
    {
      v4 = 5;
    }

    else
    {
      v4 = 6;
    }

    if (v3)
    {
      v5 = 4;
    }

    else
    {
      v5 = 7;
    }

    if (v2)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

void sub_1C47E58BC(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1C47E57A4(a1, a2, a3);
  v6 = v5 == 8 || v5 == 3;
  if (v6)
  {
    v7 = a1 + 48;
    v8 = *(a1 + 16) + 1;
    do
    {
      if (!--v8)
      {
        return;
      }

      v9 = v7 + 24;
      v10 = *(v7 - 16);

      LOBYTE(v10) = v10(v11, a3);

      v7 = v9;
    }

    while ((v10 & 1) == 0);
    sub_1C4406DB4();
    if (v13 ^ v14 | v6)
    {
      if (v12 > -9.22337204e18)
      {
        if (v12 < 9.22337204e18)
        {
          return;
        }

        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }
}

float sub_1C47E5998(uint64_t a1, float a2)
{
  v2 = a2;
  v23 = *MEMORY[0x1E69E9840];
  v4 = sub_1C47E5828(a2);
  if (v4 == 8 || v4 == 3)
  {
    *&v19 = MEMORY[0x1C6940C00](v2);
    *(&v19 + 1) = v6;
    v20 = v7;
    v17 = v19;
    v18 = v7;
    v8 = floorf(log10f(fabsf(v2)));
    if ((LODWORD(v8) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v8 < 9.2234e18)
    {
      if (v8 > -9.2234e18)
      {
        v9 = -v8;
        v10 = v9 + a1;
        if (!__OFADD__(v9, a1))
        {
          if (!__OFSUB__(v10, 1))
          {
            MEMORY[0x1C6941AC0](&v17, &v19, v10 - 1, 0);
            v21 = v17;
            v22 = v18;
            v11 = objc_allocWithZone(MEMORY[0x1E696AB90]);
            v15 = v21;
            v16 = v22;
            v12 = [v11 initWithDecimal_];
            [v12 floatValue];
            v2 = v13;

            return v2;
          }

LABEL_17:
          __break(1u);
        }

LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_15;
  }

  return v2;
}

uint64_t sub_1C47E5B10(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461B078();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C47F61F8(v6);
  *a1 = v2;
  return result;
}

void sub_1C47E5B7C()
{
  sub_1C47F7A30();
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C445AAC8(v2, v3, v4, v5, v6);
  v7 = *(*(v0 + v1) + 16);
  if (v7)
  {
    sub_1C44EC9D4();
    v8 = sub_1C461C04C();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C449BB0C();
    if (v8 != v7)
    {
      __break(1u);
    }
  }

  sub_1C4488800();
}

void sub_1C47E5C30()
{
  sub_1C47F7A30();
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore32CategoricalBehaviorHistogramBase_categoryMap;
  sub_1C445AAC8(v2, v3, v4, v5, v6);
  v7 = *(v0 + v1);
  sub_1C43FD030();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
LABEL_7:
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v17 = (*(v7 + 48) + ((v13 << 10) | (16 * v16)));
    v18 = *v17;
    v19 = v17[1];
    v20 = HIBYTE(v19) & 0xF;
    v21 = v18 & 0xFFFFFFFFFFFFLL;
    if ((v19 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v19) & 0xF;
    }

    else
    {
      v22 = v18 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      if ((v19 & 0x1000000000000000) != 0)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4AA0500(v18, v19, 0xAuLL);
        v25 = v32;
        v36 = v33;

        if ((v36 & 1) == 0)
        {
LABEL_83:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458A7C8();
            v14 = v34;
          }

          sub_1C440C4FC();
          if (v26)
          {
            sub_1C458A7C8();
            v14 = v35;
          }

          *(v14 + 16) = v19;
          *(v14 + 112) = v25;
        }
      }

      else
      {
        if ((v19 & 0x2000000000000000) != 0)
        {
          if (v18 == 43)
          {
            if (!v20)
            {
              goto LABEL_93;
            }

            if (v20 != 1)
            {
              v25 = 0;
              while (1)
              {
                sub_1C444191C();
                if (!v27 && v26)
                {
                  break;
                }

                sub_1C4424968();
                if (!v27)
                {
                  break;
                }

                sub_1C4471CAC();
                if (v26)
                {
                  break;
                }

                sub_1C4414AC0();
                if (v27)
                {
                  goto LABEL_78;
                }
              }
            }
          }

          else if (v18 == 45)
          {
            if (!v20)
            {
              goto LABEL_90;
            }

            if (v20 != 1)
            {
              v25 = 0;
              while (1)
              {
                sub_1C444191C();
                if (!v27 && v26)
                {
                  break;
                }

                sub_1C4424968();
                if (!v27)
                {
                  break;
                }

                v26 = 10 * v25 >= v30;
                v25 = 10 * v25 - v30;
                if (!v26)
                {
                  break;
                }

                sub_1C4414AC0();
                if (v27)
                {
                  goto LABEL_78;
                }
              }
            }
          }

          else if (v20)
          {
            v25 = 0;
            while (1)
            {
              sub_1C444191C();
              if (!v27 && v26)
              {
                break;
              }

              sub_1C4424968();
              if (!v27)
              {
                break;
              }

              sub_1C4471CAC();
              if (v26)
              {
                break;
              }

              sub_1C4414AC0();
              if (v27)
              {
                goto LABEL_78;
              }
            }
          }

          goto LABEL_77;
        }

        if ((v18 & 0x1000000000000000) != 0)
        {
          v23 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v23 = sub_1C4F022F8();
        }

        v24 = *v23;
        if (v24 == 43)
        {
          if (v21 < 1)
          {
            goto LABEL_91;
          }

          if (v21 == 1)
          {
            goto LABEL_77;
          }

          v25 = 0;
          if (v23)
          {
            while (1)
            {
              sub_1C444191C();
              if (!v27 && v26)
              {
                goto LABEL_77;
              }

              sub_1C4424968();
              if (!v27)
              {
                goto LABEL_77;
              }

              sub_1C4471CAC();
              if (v26)
              {
                goto LABEL_77;
              }

              sub_1C4414AC0();
              if (v27)
              {
                goto LABEL_78;
              }
            }
          }
        }

        else if (v24 == 45)
        {
          if (v21 < 1)
          {
            goto LABEL_92;
          }

          if (v21 == 1)
          {
            goto LABEL_77;
          }

          v25 = 0;
          if (v23)
          {
            while (1)
            {
              sub_1C444191C();
              if (!v27 && v26)
              {
                break;
              }

              sub_1C4424968();
              if (!v27)
              {
                break;
              }

              v26 = 10 * v25 >= v28;
              v25 = 10 * v25 - v28;
              if (!v26)
              {
                break;
              }

              sub_1C4414AC0();
              if (v27)
              {
                goto LABEL_78;
              }
            }

LABEL_77:
            v25 = 0;
            v29 = 1;
            goto LABEL_78;
          }
        }

        else
        {
          if (!v21)
          {
            goto LABEL_77;
          }

          v25 = 0;
          if (v23)
          {
            do
            {
              v31 = *v23 - 48;
              if (v31 > 9)
              {
                goto LABEL_77;
              }

              if (!is_mul_ok(v25, 0xAuLL))
              {
                goto LABEL_77;
              }

              v26 = __CFADD__(10 * v25, v31);
              v25 = 10 * v25 + v31;
              if (v26)
              {
                goto LABEL_77;
              }

              ++v23;
            }

            while (--v21);
          }
        }

        v29 = 0;
LABEL_78:
        if ((v29 & 1) == 0)
        {
          goto LABEL_83;
        }
      }
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      sub_1C4488800();
      return;
    }

    v10 = *(v7 + 64 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}