unint64_t sub_29E735948()
{
  result = qword_2A185A8A8;
  if (!qword_2A185A8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8A8);
  }

  return result;
}

unint64_t sub_29E73599C()
{
  result = qword_2A185A8B8;
  if (!qword_2A185A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8B8);
  }

  return result;
}

unint64_t sub_29E7359F0()
{
  result = qword_2A185A8C8;
  if (!qword_2A185A8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8C8);
  }

  return result;
}

unint64_t sub_29E735A44()
{
  result = qword_2A185A8D8;
  if (!qword_2A185A8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8D8);
  }

  return result;
}

unint64_t sub_29E735A98()
{
  result = qword_2A185A8E8;
  if (!qword_2A185A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8E8);
  }

  return result;
}

unint64_t sub_29E735AEC()
{
  result = qword_2A185A8F8;
  if (!qword_2A185A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A8F8);
  }

  return result;
}

unint64_t sub_29E735B40()
{
  result = qword_2A185A908;
  if (!qword_2A185A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A908);
  }

  return result;
}

unint64_t sub_29E735B94()
{
  result = qword_2A185A918;
  if (!qword_2A185A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A918);
  }

  return result;
}

unint64_t sub_29E735BE8()
{
  result = qword_2A185A928;
  if (!qword_2A185A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A928);
  }

  return result;
}

unint64_t sub_29E735C3C()
{
  result = qword_2A185A938;
  if (!qword_2A185A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A938);
  }

  return result;
}

unint64_t sub_29E735C90()
{
  result = qword_2A185A948;
  if (!qword_2A185A948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A948);
  }

  return result;
}

void sub_29E735CE4(uint64_t a1)
{
  if (!qword_2A185A950)
  {
    sub_29E735D54();
    sub_29E754DB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185A950);
    }
  }
}

unint64_t sub_29E735D54()
{
  result = qword_2A185A958;
  if (!qword_2A185A958)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2A185A958);
  }

  return result;
}

void sub_29E735DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_29E735E08(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_29E735E98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_29E73600C()
{
  result = qword_2A185A9B8;
  if (!qword_2A185A9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9B8);
  }

  return result;
}

unint64_t sub_29E736064()
{
  result = qword_2A185A9C0;
  if (!qword_2A185A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9C0);
  }

  return result;
}

unint64_t sub_29E7360BC()
{
  result = qword_2A185A9C8;
  if (!qword_2A185A9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9C8);
  }

  return result;
}

unint64_t sub_29E736114()
{
  result = qword_2A185A9D0;
  if (!qword_2A185A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9D0);
  }

  return result;
}

unint64_t sub_29E73616C()
{
  result = qword_2A185A9D8;
  if (!qword_2A185A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9D8);
  }

  return result;
}

unint64_t sub_29E7361C4()
{
  result = qword_2A185A9E0;
  if (!qword_2A185A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9E0);
  }

  return result;
}

unint64_t sub_29E73621C()
{
  result = qword_2A185A9E8;
  if (!qword_2A185A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9E8);
  }

  return result;
}

unint64_t sub_29E736274()
{
  result = qword_2A185A9F0;
  if (!qword_2A185A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9F0);
  }

  return result;
}

unint64_t sub_29E7362CC()
{
  result = qword_2A185A9F8;
  if (!qword_2A185A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A9F8);
  }

  return result;
}

unint64_t sub_29E736324()
{
  result = qword_2A185AA00;
  if (!qword_2A185AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA00);
  }

  return result;
}

unint64_t sub_29E73637C()
{
  result = qword_2A185AA08;
  if (!qword_2A185AA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA08);
  }

  return result;
}

unint64_t sub_29E7363D4()
{
  result = qword_2A185AA10;
  if (!qword_2A185AA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA10);
  }

  return result;
}

unint64_t sub_29E73642C()
{
  result = qword_2A185AA18;
  if (!qword_2A185AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA18);
  }

  return result;
}

unint64_t sub_29E736484()
{
  result = qword_2A185AA20;
  if (!qword_2A185AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA20);
  }

  return result;
}

unint64_t sub_29E7364DC()
{
  result = qword_2A185AA28;
  if (!qword_2A185AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA28);
  }

  return result;
}

unint64_t sub_29E736534()
{
  result = qword_2A185AA30;
  if (!qword_2A185AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA30);
  }

  return result;
}

unint64_t sub_29E73658C()
{
  result = qword_2A185AA38;
  if (!qword_2A185AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA38);
  }

  return result;
}

unint64_t sub_29E7365E4()
{
  result = qword_2A185AA40;
  if (!qword_2A185AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA40);
  }

  return result;
}

unint64_t sub_29E73663C()
{
  result = qword_2A185AA48;
  if (!qword_2A185AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA48);
  }

  return result;
}

unint64_t sub_29E736694()
{
  result = qword_2A185AA50;
  if (!qword_2A185AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA50);
  }

  return result;
}

unint64_t sub_29E7366EC()
{
  result = qword_2A185AA58;
  if (!qword_2A185AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA58);
  }

  return result;
}

unint64_t sub_29E736744()
{
  result = qword_2A185AA60;
  if (!qword_2A185AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA60);
  }

  return result;
}

unint64_t sub_29E73679C()
{
  result = qword_2A185AA68;
  if (!qword_2A185AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA68);
  }

  return result;
}

unint64_t sub_29E7367F4()
{
  result = qword_2A185AA70;
  if (!qword_2A185AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA70);
  }

  return result;
}

unint64_t sub_29E73684C()
{
  result = qword_2A185AA78;
  if (!qword_2A185AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA78);
  }

  return result;
}

unint64_t sub_29E7368A4()
{
  result = qword_2A185AA80;
  if (!qword_2A185AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AA80);
  }

  return result;
}

uint64_t type metadata accessor for BreathingDisturbancesHighlightDateModel(uint64_t a1)
{
  result = qword_2A1A7C288;
  if (!qword_2A1A7C288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E736980(uint64_t a1)
{
  sub_29E74ED28();
  if (v1 <= 0x3F)
  {
    sub_29E74E838();
    if (v2 <= 0x3F)
    {
      sub_29E736A1C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E736A1C(uint64_t a1)
{
  if (!qword_2A1A7BD70)
  {
    sub_29E609B5C(255, &qword_2A1A7BD78, 0x29EDBAE28);
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BD70);
    }
  }
}

uint64_t sub_29E736A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v118 = a2;
  v116 = a1;
  v4 = sub_29E752098();
  v101 = *(v4 - 8);
  v102 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v100 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29E7377B0(0, &qword_2A1A7CFB8, MEMORY[0x29EDB9D58], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v93 = v88 - v8;
  sub_29E7377B0(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v92 = v88 - v10;
  v96 = sub_29E74E8C8();
  v95 = *(v96 - 8);
  MEMORY[0x2A1C7C4A8](v96);
  v94 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_29E74EE68();
  v117 = *(v115 - 8);
  MEMORY[0x2A1C7C4A8](v115);
  v13 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7377B0(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v6);
  v15 = MEMORY[0x2A1C7C4A8](v14 - 8);
  v98 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = v88 - v17;
  v19 = sub_29E74EE78();
  v20 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v22 = v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E74ED28();
  v103 = v23;
  v24 = *(v23 - 8);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v108 = v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v99 = v88 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v114 = v88 - v30;
  MEMORY[0x2A1C7C4A8](v29);
  v32 = v88 - v31;
  v33 = sub_29E754048();
  v110 = *(v33 - 8);
  v111 = v33;
  MEMORY[0x2A1C7C4A8](v33);
  v35 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for BreathingDisturbancesHighlightDateModel(0);
  v91 = *(v106 + 28);
  *&a3[v91] = 0;
  v104 = *(v24 + 16);
  v105 = v24 + 16;
  v104(v32, v116, v23);
  v112 = v20;
  v113 = v19;
  (*(v20 + 16))(v22, v118, v19);
  v107 = v32;
  sub_29E754008();
  v36 = objc_opt_self();
  v109 = v35;
  v37 = sub_29E753FF8();
  v38 = sub_29E74EE08();
  v39 = [v36 hk:v37 sleepDayEndForMorningIndex:v38 calendar:?];

  v40 = a3;
  sub_29E74ECD8();

  v41 = *MEMORY[0x29EDB9CB8];
  v42 = v117;
  v43 = v115;
  v97 = *(v117 + 104);
  v97(v13, v41, v115);
  v44 = v40;
  sub_29E74EE48();
  v45 = v24;
  v46 = *(v42 + 8);
  v117 = v42 + 8;
  v46(v13, v43);
  v47 = *(v45 + 48);
  v48 = v103;
  if ((v47)(v18, 1) == 1)
  {
    v54 = v118;
    v55 = v18;
    v56 = v45;
    v57 = v44;
  }

  else
  {
    v89 = v44;
    v90 = v45;
    v58 = *(v45 + 32);
    v88[1] = v45 + 32;
    v88[0] = v58;
    v58(v114, v18, v48);
    v59 = v115;
    v97(v13, v41, v115);
    v60 = v89;
    v55 = v98;
    sub_29E74EE48();
    v46(v13, v59);
    if (v47(v55, 1, v48) != 1)
    {
      v68 = v99;
      (v88[0])(v99, v55, v48);
      v69 = &v60[*(v106 + 20)];
      v70 = v60;
      v71 = v104;
      v104(v69, v114, v48);
      v71(v107, v68, v48);
      v71(v108, v70, v48);
      sub_29E74E808();
      sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
      v72 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
      sub_29E609B5C(0, &qword_2A1A7BDC0, 0x29EDBA0A8);
      sub_29E7377B0(0, &qword_2A1A7D3D8, sub_29E617E04, MEMORY[0x29EDC9E90]);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_29E762F40;
      v74 = sub_29E74EC98();
      v75 = sub_29E609B5C(0, &unk_2A1A7BD58, 0x29EDB8DB0);
      *(v73 + 56) = v75;
      v76 = sub_29E737814();
      *(v73 + 64) = v76;
      *(v73 + 32) = v74;
      v77 = sub_29E74EC98();
      *(v73 + 96) = v75;
      *(v73 + 104) = v76;
      *(v73 + 72) = v77;
      v78 = sub_29E7545B8();
      v80 = v112;
      v79 = v113;
      (*(v112 + 56))(v92, 1, 1, v113);
      v81 = sub_29E74EE88();
      (*(*(v81 - 8) + 56))(v93, 1, 1, v81);
      v82 = v94;
      sub_29E74E8B8();
      v83 = objc_allocWithZone(MEMORY[0x29EDBAE28]);
      v84 = sub_29E74EC98();
      v85 = sub_29E74E898();
      v86 = [v83 initWithSampleType:v72 samplePredicate:v78 options:2 anchorDate:v84 intervalComponents:v85];

      (*(v80 + 8))(v118, v79);
      v87 = *(v90 + 8);
      v87(v116, v48);
      (*(v95 + 8))(v82, v96);
      v87(v99, v48);
      v87(v114, v48);
      result = (*(v110 + 8))(v109, v111);
      *&v70[v91] = v86;
      return result;
    }

    v54 = v118;
    v56 = v90;
    (*(v90 + 8))(v114, v48);
    v57 = v60;
  }

  sub_29E617214(v55, v49, v50, v51, v52, v53);
  v61 = v100;
  sub_29E752048();
  v62 = sub_29E752088();
  v63 = sub_29E7546B8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v119 = v65;
    *v64 = 136446210;
    *(v64 + 4) = sub_29E6B9C90(0xD000000000000027, 0x800000029E76DDC0, &v119);
    _os_log_impl(&dword_29E5ED000, v62, v63, "[%{public}s] Unable to calculate query start date and highlight date interval start via the gregorian calendar. This will result in no highlight, as no samples will be returned from the query using the same start and end date.", v64, 0xCu);
    sub_29E5FECBC(v65);
    MEMORY[0x29ED98410](v65, -1, -1);
    MEMORY[0x29ED98410](v64, -1, -1);
  }

  (*(v101 + 8))(v61, v102);
  v66 = v104;
  v104(&v57[*(v106 + 20)], v57, v48);
  v66(v107, v57, v48);
  v66(v108, v57, v48);
  sub_29E74E808();
  (*(v112 + 8))(v54, v113);
  (*(v56 + 8))(v116, v48);
  return (*(v110 + 8))(v109, v111);
}

void sub_29E7377B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29E737814()
{
  result = qword_2A1A7BD50;
  if (!qword_2A1A7BD50)
  {
    sub_29E609B5C(255, &unk_2A1A7BD58, 0x29EDB8DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BD50);
  }

  return result;
}

uint64_t type metadata accessor for SleepOptionsHostingController(uint64_t a1)
{
  result = qword_2A185AA88;
  if (!qword_2A185AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_29E737908(void *a1, uint64_t a2, void *a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = a1;
  v8.super_class = type metadata accessor for SleepOptionsHostingController(0);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

id sub_29E7379EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOptionsHostingController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_29E737A78(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = *(a2 + 16);
  v5 = objc_allocWithZone(type metadata accessor for SleepOptionsHostingController(0));
  sub_29E737C28(v2, v3, v4);
  v6 = sub_29E753028();
  v7 = v6;
  sub_29E737C38(v2, v3, v4);
  if (v6)
  {
  }

  return v6;
}

void *sub_29E737B1C(void *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = objc_allocWithZone(type metadata accessor for SleepOptionsHostingController(0));
  v3 = a1;
  v4 = sub_29E753038();
  v5 = [v4 navigationItem];

  v6 = sub_29E754198();

  [v5 setTitle_];

  return v4;
}

uint64_t sub_29E737C28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2A1C710E0](a1, a2);
  }

  else
  {
  }
}

uint64_t sub_29E737C38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2A1C71028](a1, a2);
  }

  else
  {
  }
}

uint64_t type metadata accessor for SleepApneaEventSharedListDataSource(uint64_t a1)
{
  result = qword_2A185AAA8;
  if (!qword_2A185AAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E737CEC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_2A185AA98) = a1;
  sub_29E602E20(a2, v3 + qword_2A185AAA0);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v10 = a1;
  sub_29E754D78();

  strcpy(v17, "MutableArray<");
  HIWORD(v17[1]) = -4864;
  sub_29E74ED78();
  v11 = sub_29E74ED48();
  v13 = v12;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x29ED96C20](v11, v13);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v14 = sub_29E750D08();
  v15 = swift_allocObject();
  swift_weakInit();

  sub_29E73858C(v10, a2, sub_29E739A94, v15);

  sub_29E5FECBC(a2);

  return v14;
}

uint64_t sub_29E737F08(unint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_29E737F68(a1);
  }

  return result;
}

uint64_t sub_29E737F68(unint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74F8B8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = v5;
  v28 = v4;
  if (!(a1 >> 62))
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_17:
    sub_29E739A9C(0, &qword_2A18568D0, sub_29E602F60, MEMORY[0x29EDC9E90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_29E762F30;
    if (qword_2A1A7D6F0 == -1)
    {
LABEL_18:
      sub_29E74F8A8();
      sub_29E74F7C8();
      (*(v8 + 8))(v10, v7);
      *(v5 + 56) = sub_29E751968();
      *(v5 + 64) = sub_29E739C1C(&qword_2A185A270, MEMORY[0x29EDC2A68], MEMORY[0x29EDC2A60]);
      sub_29E5FEBF4((v5 + 32));
      sub_29E751958();
      goto LABEL_19;
    }

LABEL_21:
    swift_once();
    goto LABEL_18;
  }

  if (!sub_29E754C98())
  {
    goto LABEL_17;
  }

  v11 = sub_29E754C98();
  if (!v11)
  {
    v5 = MEMORY[0x29EDCA190];
    goto LABEL_19;
  }

LABEL_3:
  v33 = MEMORY[0x29EDCA190];
  v10 = &v33;
  sub_29E6DBD4C(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v26 = v2;
  v5 = v33;
  sub_29E7544C8();
  v12 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x29ED976A0](v12, a1);
    }

    else
    {
      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    sub_29E7544B8();
    sub_29E754468();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v31 = sub_29E750EE8();
    v32 = sub_29E739C1C(&qword_2A1858328, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23F0]);
    v15 = sub_29E5FEBF4(v30);
    sub_29E683144(v14, v15);

    v33 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_29E6DBD4C((v16 > 1), v17 + 1, 1);
    }

    ++v12;
    v18 = v31;
    v19 = v32;
    v20 = sub_29E613218(v30, v31);
    MEMORY[0x2A1C7C4A8](v20);
    v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22);
    sub_29E6CE380(v17, v22, &v33, v18, v19);
    sub_29E5FECBC(v30);
    v5 = v33;
  }

  while (v11 != v12);
LABEL_19:
  v24 = v29;
  sub_29E739A9C(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E6CC108(v5);

  sub_29E74ED78();
  sub_29E74ED48();
  (*(v27 + 8))(v24, v28);
  sub_29E750C98();
  sub_29E750D18();
}

void sub_29E73858C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = *v4;
  v28 = a3;
  sub_29E739A9C(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v26 - v8;
  sub_29E750088();
  sub_29E739A9C(0, &qword_2A1A7D400, MEMORY[0x29EDC3798], MEMORY[0x29EDC9E90]);
  v10 = sub_29E74FB98();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v26 = xmmword_29E762F30;
  *(v13 + 16) = xmmword_29E762F30;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x29EDC3710], v10);
  sub_29E67905C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29E764160;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  *(v14 + 32) = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v15 = sub_29E74E838();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_29E67905C(0, &qword_2A1858820, MEMORY[0x29EDC37E0]);
  v16 = swift_allocObject();
  *(v16 + 16) = v26;
  *(v16 + 32) = sub_29E754638();
  v17 = MEMORY[0x29ED92970](v13, v14, v9, v16);

  sub_29E739B00(v9);
  v18 = v17;
  v19 = sub_29E750068();

  sub_29E601938(a2, a2[3]);
  v20 = sub_29E74FB58();
  sub_29E602E20(a2, v30);
  v21 = swift_allocObject();
  sub_29E5FAEE4(v30, (v21 + 2));
  v22 = v27;
  v23 = v28;
  v21[7] = v19;
  v21[8] = v23;
  v21[9] = a4;
  v21[10] = v22;
  aBlock[4] = sub_29E739B8C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2503818;
  v24 = _Block_copy(aBlock);
  v25 = v19;

  [v20 performBlock_];
  _Block_release(v24);
}

void sub_29E7389A8(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v111 = a3;
  v112 = a5;
  v110 = a4;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  v113 = v6;
  v114 = v7;
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v13 = &v104 - v12;
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v104 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v104 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v104 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v104 - v23;
  sub_29E601938(a1, a1[3]);
  v25 = sub_29E74FB58();
  sub_29E750088();
  v33 = sub_29E7549F8();
  v107 = v16;
  v108 = v13;
  v105 = v22;
  v106 = v19;
  v34 = v111;
  v104 = v24;

  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_49:

    sub_29E752048();
    v26 = sub_29E752088();
    v27 = sub_29E7546B8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v116[0] = v29;
      *v28 = 136446210;
      v30 = sub_29E755178();
      v32 = sub_29E6B9C90(v30, v31, v116);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_29E5ED000, v26, v27, "%{public}s] Missing feed item for sleep apnea event.", v28, 0xCu);
      sub_29E5FECBC(v29);
      MEMORY[0x29ED98410](v29, -1, -1);
      MEMORY[0x29ED98410](v28, -1, -1);
    }

    goto LABEL_5;
  }

  if (!sub_29E754C98())
  {
    goto LABEL_49;
  }

LABEL_9:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x29ED976A0](0, v33);
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_52;
    }

    v35 = *(v33 + 32);
  }

  v109 = v35;
  v36 = [v35 userData];
  if (v36)
  {
    v37 = v36;
    v38 = sub_29E74EB18();
    v40 = v39;

    v41 = sub_29E74EB08();
    sub_29E643D20(v38, v40);
  }

  else
  {
    v41 = 0;
  }

  v42 = [objc_allocWithZone(MEMORY[0x29EDC4470]) initWithData_];

  if (!v42)
  {

    v55 = v108;
    sub_29E752048();
    v56 = sub_29E752088();
    v57 = sub_29E7546B8();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v116[0] = v59;
      *v58 = 136446210;
      v60 = sub_29E755178();
      v62 = sub_29E6B9C90(v60, v61, v116);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_29E5ED000, v56, v57, "%{public}s] Unable to decode chart feed item data", v58, 0xCu);
      sub_29E5FECBC(v59);
      MEMORY[0x29ED98410](v59, -1, -1);
      MEMORY[0x29ED98410](v58, -1, -1);
    }

    (*(v114 + 8))(v55, v113);
    return;
  }

  v43 = [v42 chartModel];
  if (!v43)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v44 = v43;
  v45 = [v43 hasSixMonthData];

  if (v45)
  {
    v46 = [v42 chartModel];
    if (v46)
    {
      v47 = v46;

      v48 = [v47 sixMonthData];

      if (v48)
      {
        if ([v48 type] == 11)
        {
          v49 = [v48 queryDataObject];
          if (v49)
          {
            v50 = v49;
            v51 = sub_29E74EB18();
            v53 = v52;

            v54 = sub_29E74EB08();
            sub_29E643D20(v51, v53);
          }

          else
          {
            v54 = 0;
          }

          v86 = [objc_allocWithZone(MEMORY[0x29EDC4500]) initWithData_];

          if (v86)
          {
            v87 = [v86 samples];
            if (v87)
            {
              v88 = v87;
              v116[0] = 0;
              sub_29E609B5C(0, &qword_2A185AAC0, 0x29EDC4508);
              sub_29E7543E8();

              v89 = v109;
              if (v116[0])
              {
                swift_getKeyPath();
                sub_29E739BB4(0);
                sub_29E739C1C(&qword_2A185AAD0, sub_29E739BB4, MEMORY[0x29EDC9A70]);
                v90 = sub_29E7543A8();
              }

              else
              {
                v90 = MEMORY[0x29EDCA190];
              }
            }

            else
            {
              v90 = MEMORY[0x29EDCA190];
              v89 = v109;
            }

            v34(v90);
          }

          else
          {
            v91 = v104;
            sub_29E752048();
            v92 = v48;
            v93 = sub_29E752088();
            v94 = sub_29E7546B8();

            if (os_log_type_enabled(v93, v94))
            {
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v116[0] = v96;
              *v95 = 136446466;
              v97 = sub_29E755178();
              v99 = sub_29E6B9C90(v97, v98, v116);

              *(v95 + 4) = v99;
              *(v95 + 12) = 2080;
              v115 = v92;
              sub_29E609B5C(0, &qword_2A185AAB8, 0x29EDC4468);
              v100 = v92;
              v101 = sub_29E754208();
              v103 = sub_29E6B9C90(v101, v102, v116);

              *(v95 + 14) = v103;
              _os_log_impl(&dword_29E5ED000, v93, v94, "%{public}s] Could not decode query data: %s", v95, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED98410](v96, -1, -1);
              MEMORY[0x29ED98410](v95, -1, -1);
            }

            else
            {
            }

            (*(v114 + 8))(v91, v113);
          }
        }

        else
        {
          v78 = v105;
          sub_29E752048();
          v79 = sub_29E752088();
          v80 = sub_29E7546B8();
          if (os_log_type_enabled(v79, v80))
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v116[0] = v82;
            *v81 = 136446210;
            v83 = sub_29E755178();
            v85 = sub_29E6B9C90(v83, v84, v116);

            *(v81 + 4) = v85;
            _os_log_impl(&dword_29E5ED000, v79, v80, "%{public}s] Got a chart model with a non-notification type", v81, 0xCu);
            sub_29E5FECBC(v82);
            MEMORY[0x29ED98410](v82, -1, -1);
            MEMORY[0x29ED98410](v81, -1, -1);
          }

          else
          {
          }

          (*(v114 + 8))(v78, v113);
        }

        return;
      }

      v10 = v106;
      sub_29E752048();
      v71 = sub_29E752088();
      v72 = sub_29E7546B8();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v116[0] = v74;
        *v73 = 136446210;
        v75 = sub_29E755178();
        v77 = sub_29E6B9C90(v75, v76, v116);

        *(v73 + 4) = v77;
        _os_log_impl(&dword_29E5ED000, v71, v72, "%{public}s] Unable to decode sharable charting model", v73, 0xCu);
        sub_29E5FECBC(v74);
        MEMORY[0x29ED98410](v74, -1, -1);
        MEMORY[0x29ED98410](v73, -1, -1);
      }

LABEL_5:
      (*(v114 + 8))(v10, v113);
      return;
    }

LABEL_53:
    __break(1u);
    return;
  }

  v63 = v107;
  sub_29E752048();
  v64 = sub_29E752088();
  v65 = sub_29E7546B8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v116[0] = v67;
    *v66 = 136446210;
    v68 = sub_29E755178();
    v70 = sub_29E6B9C90(v68, v69, v116);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_29E5ED000, v64, v65, "%{public}s] Missing data charting model", v66, 0xCu);
    sub_29E5FECBC(v67);
    MEMORY[0x29ED98410](v67, -1, -1);
    MEMORY[0x29ED98410](v66, -1, -1);
  }

  (*(v114 + 8))(v63, v113);
}

uint64_t sub_29E7394FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v3 = sub_29E74F8B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E750458();
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v4 + 8))(v6, v3);
  sub_29E7521F8();
  v8 = sub_29E750448();
  a1[3] = v7;
  result = sub_29E739C1C(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_29E7397A8()
{
  v0 = sub_29E750D58();
  v1 = *(v0 + qword_2A185AA98);

  sub_29E5FECBC((v0 + qword_2A185AAA0));

  return swift_deallocClassInstance();
}

uint64_t sub_29E739834()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  sub_29E751098();
  v4 = sub_29E750E68();
  sub_29E751758();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E739928()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E739984(uint64_t a1)
{
  v1 = sub_29E751388();
  sub_29E751368();
  type metadata accessor for SleepApneaEventSharedListDataSource(0);
  swift_allocObject();
  sub_29E737CEC(v1, v4);
  sub_29E750828();

  v2 = sub_29E750818();

  return v2;
}

void sub_29E739A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E739B00(uint64_t a1)
{
  sub_29E739A9C(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E739B9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E739BB4(uint64_t a1)
{
  if (!qword_2A185AAC8)
  {
    sub_29E609B5C(255, &qword_2A185AAC0, 0x29EDC4508);
    v1 = sub_29E754448();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AAC8);
    }
  }
}

uint64_t sub_29E739C1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E739C7C()
{
  v0 = sub_29E751D18();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E750888();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A18561D8 != -1)
  {
    swift_once();
  }

  v8 = sub_29E61037C(v4, qword_2A1869208);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC2C80], v0);
  v9 = objc_allocWithZone(sub_29E7508A8());
  return sub_29E750898();
}

id sub_29E739E40()
{
  v18 = sub_29E751D18();
  v0 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E750888();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v17 - v8;
  if (qword_2A18561E0 != -1)
  {
    swift_once();
  }

  v10 = sub_29E61037C(v3, qword_2A1869220);
  v11 = *(v4 + 16);
  v11(v9, v10, v3);
  v12 = type metadata accessor for MicaAnimationContainerView();
  v13 = objc_allocWithZone(v12);
  v11(v7, v9, v3);
  (*(v0 + 104))(v2, *MEMORY[0x29EDC2C80], v18);
  v14 = objc_allocWithZone(sub_29E7508A8());
  *&v13[OBJC_IVAR____TtC20SleepHealthAppPlugin26MicaAnimationContainerView_animationView] = sub_29E750898();
  v19.receiver = v13;
  v19.super_class = v12;
  v15 = objc_msgSendSuper2(&v19, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_29E66AC88();
  [v15 setLayoutMargins_];

  (*(v4 + 8))(v9, v3);
  return v15;
}

uint64_t sub_29E73A0E8()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC6B20], v0);
  v4 = sub_29E74F7E8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E73A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E73A2CC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E73A36C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

unint64_t *sub_29E73A430()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v3);
  v4 = sub_29E750518();
  (*(v1 + 8))(v3, v0);
  v5 = sub_29E6D5A34(v4);

  return v5;
}

char *sub_29E73A510()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000016, 0x800000029E7618C0);
}

char *sub_29E73A5FC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD00000000000001FLL, 0x800000029E761880);
}

char *sub_29E73A6EC()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000018, 0x800000029E761840);
}

char *sub_29E73A7D8()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000011, 0x800000029E761800);
}

char *sub_29E73A8C4()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000016, 0x800000029E7617C0);
}

char *sub_29E73A9B0()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000019, 0x800000029E761780);
}

char *sub_29E73AA9C()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000015, 0x800000029E761740);
}

char *sub_29E73AB88()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000018, 0x800000029E761700);
}

char *sub_29E73AC74()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000013, 0x800000029E7616C0);
}

char *sub_29E73AD64()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();
  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for IllustratedListItemView());
  return sub_29E6D99F4(v0, v2, 0xD000000000000016, 0x800000029E761680);
}

id sub_29E73AE50()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x29EDC7AC8]);

  return [v4 init];
}

uint64_t sub_29E73AF40()
{
  sub_29E62F414(0);
  v0 = sub_29E750108();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E76E040;
  v53 = v4;
  v5 = v4 + v3;
  *v5 = sub_29E739C7C;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = *(v1 + 104);
  v6(v4 + v3);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v7 = (v5 + v2);
  *v7 = sub_29E74E9D8();
  v7[1] = v8;
  (v6)(v5 + v2, *MEMORY[0x29EDC1610], v0);
  v9 = v5 + 2 * v2;
  *v9 = sub_29E74E9D8();
  *(v9 + 8) = v10;
  *(v9 + 16) = 0;
  v11 = *MEMORY[0x29EDC1630];
  v55 = *MEMORY[0x29EDC1630];
  (v6)(v9, v11, v0);
  v12 = (v5 + 3 * v2);
  *v12 = sub_29E74E9D8();
  v12[1] = v13;
  v12[2] = 0;
  v54 = *MEMORY[0x29EDC15D0];
  v6(v12);
  v14 = v5 + 4 * v2;
  *v14 = sub_29E74E9D8();
  *(v14 + 8) = v15;
  *(v14 + 16) = 0;
  (v6)(v14, v11, v0);
  v16 = v5 + 5 * v2;
  *v16 = sub_29E739E40;
  *(v16 + 8) = 0;
  *(v16 + 16) = 1;
  v6(v16);
  v17 = v5 + 6 * v2;
  *v17 = sub_29E73A510;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  v6(v17);
  v18 = v5 + 7 * v2;
  *v18 = sub_29E73A5FC;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  v6(v18);
  v19 = v5 + 8 * v2;
  *v19 = sub_29E73A6EC;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v6(v19);
  v20 = v5 + 9 * v2;
  *v20 = sub_29E73A7D8;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  v6(v20);
  v21 = v5 + 10 * v2;
  *v21 = sub_29E73A8C4;
  *(v21 + 8) = 0;
  *(v21 + 16) = 1;
  v6(v21);
  v22 = v5 + 11 * v2;
  *v22 = sub_29E73A9B0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v6(v22);
  v23 = (v5 + 12 * v2);
  *v23 = sub_29E74E9D8();
  v23[1] = v24;
  v23[2] = 0;
  (v6)(v23, v54, v0);
  v25 = v5 + 13 * v2;
  *v25 = sub_29E74E9D8();
  *(v25 + 8) = v26;
  *(v25 + 16) = 0;
  (v6)(v25, v55, v0);
  v27 = v5 + 14 * v2;
  *v27 = sub_29E73AA9C;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v6(v27);
  v28 = v5 + 15 * v2;
  *v28 = sub_29E73AB88;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v6(v28);
  v29 = v5 + 16 * v2;
  *v29 = sub_29E73AC74;
  *(v29 + 8) = 0;
  *(v29 + 16) = 1;
  v6(v29);
  v30 = v5 + 17 * v2;
  *v30 = sub_29E73AD64;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v6(v30);
  v31 = (v5 + 18 * v2);
  *v31 = sub_29E74E9D8();
  v31[1] = v32;
  v31[2] = 0;
  (v6)(v31, v54, v0);
  v33 = v5 + 19 * v2;
  *v33 = sub_29E74E9D8();
  *(v33 + 8) = v34;
  *(v33 + 16) = 0;
  (v6)(v33, v55, v0);
  v35 = v5 + 20 * v2;
  *v35 = sub_29E73AE50();
  *(v35 + 8) = 1;
  (v6)(v35, *MEMORY[0x29EDC1608], v0);
  v51 = (v5 + 21 * v2);
  sub_29E662E20();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_29E764170;
  *(v36 + 32) = sub_29E74E9D8();
  *(v36 + 40) = v37;
  *(v36 + 48) = sub_29E74E9D8();
  *(v36 + 56) = v38;
  *(v36 + 64) = sub_29E74E9D8();
  *(v36 + 72) = v39;
  *v51 = v36;
  v52 = *MEMORY[0x29EDC15D8];
  v6(v51);
  v40 = (v5 + 22 * v2);
  *v40 = sub_29E74E9D8();
  v40[1] = v41;
  v40[2] = 0;
  (v6)(v40, v54, v0);
  v42 = v5 + 23 * v2;
  *v42 = sub_29E74E9D8();
  *(v42 + 8) = v43;
  *(v42 + 16) = 0;
  (v6)(v42, v55, v0);
  v44 = (v5 + 24 * v2);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_29E769B70;
  *(v45 + 32) = sub_29E74E9D8();
  *(v45 + 40) = v46;
  *(v45 + 48) = sub_29E74E9D8();
  *(v45 + 56) = v47;
  *(v45 + 64) = sub_29E74E9D8();
  *(v45 + 72) = v48;
  *(v45 + 80) = sub_29E74E9D8();
  *(v45 + 88) = v49;
  *v44 = v45;
  (v6)(v44, v52, v0);
  return v53;
}

uint64_t sub_29E73BA1C(uint64_t a1)
{
  v2 = sub_29E752BF8();
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752DB8();
}

uint64_t sub_29E73BAE4(void *a1, uint64_t a2)
{
  v55 = a2;
  v51 = a1;
  v2 = sub_29E752098();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SleepApneaEventSummaryView(0);
  MEMORY[0x2A1C7C4A8](v49);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_29E74ED28();
  v48 = *(v46 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v46);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v45 - v8;
  v10 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73C75C(0, &unk_2A18594A0, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v45 - v14;
  v16 = sub_29E74E838();
  v17 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v54 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20 = sub_29E751358();
  if (v20)
  {
    v21 = v20;
    sub_29E750608();

    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      v22 = *(v17 + 32);
      v45 = v19;
      v22(v19, v15, v16);
      v53 = v16;
      sub_29E74E828();
      v23 = v47;
      sub_29E74E7F8();
      v24 = sub_29E751388();
      v25 = v48;
      v26 = *(v48 + 16);
      v27 = v46;
      v26(v12, v9, v46);
      v26(&v12[v10[5]], v23, v27);
      *&v12[v10[6]] = v24;
      v12[v10[7]] = 0;
      v28 = v24;
      v29 = HKSPLogForCategory();
      v30 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v29 healthDataSource:v28];

      v31 = *(v25 + 8);
      v31(v23, v27);
      v31(v9, v27);
      *&v12[v10[8]] = v30;
      v32 = v50;
      sub_29E5FEC58(v12, v50);
      v33 = v49;
      v34 = *(v49 + 20);
      *(v32 + v34) = swift_getKeyPath();
      v35 = MEMORY[0x29EDBC388];
      sub_29E73C75C(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
      swift_storeEnumTagMultiPayload();
      v36 = *(v33 + 24);
      *(v32 + v36) = swift_getKeyPath();
      sub_29E73C75C(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], v35);
      swift_storeEnumTagMultiPayload();
      sub_29E683C20(0);
      v38 = objc_allocWithZone(v37);
      v39 = sub_29E753038();
      [v51 presentViewController:v39 animated:1 completion:0];

      sub_29E5FFC24(v12);
      (*(v17 + 8))(v45, v53);
    }
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  sub_29E739B00(v15);
  sub_29E752048();
  v40 = sub_29E752088();
  v41 = sub_29E7546C8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v56 = v43;
    *v42 = 136446210;
    *(v42 + 4) = sub_29E6B9C90(0x634164616F4C6E4FLL, 0xEC0000006E6F6974, &v56);
    _os_log_impl(&dword_29E5ED000, v40, v41, "[%{public}s] Could not get date interval from chart context; not presenting sample detail view in BD room", v42, 0xCu);
    sub_29E5FECBC(v43);
    MEMORY[0x29ED98410](v43, -1, -1);
    MEMORY[0x29ED98410](v42, -1, -1);
  }

  (*(v52 + 8))(v4, v53);
}

uint64_t sub_29E73C1C4(void *a1, void *a2, void *a3)
{
  v48 = a3;
  v45 = a2;
  v51 = a1;
  v3 = type metadata accessor for SleepApneaEventSummaryView(0);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_29E74ED28();
  v6 = *(v49 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v49);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v46 = &v43 - v9;
  v10 = type metadata accessor for SleepApneaEventSummaryViewModel(0);
  MEMORY[0x2A1C7C4A8](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E752098();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v50 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752048();
  v17 = sub_29E752088();
  v18 = sub_29E7546C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v43 = v13;
    v20 = v19;
    v21 = swift_slowAlloc();
    v44 = v3;
    v22 = v21;
    v52 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_29E6B9C90(0x634164616F4C6E4FLL, 0xEC0000006E6F6974, &v52);
    _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Presenting apnea event summary.", v20, 0xCu);
    sub_29E5FECBC(v22);
    v23 = v22;
    v3 = v44;
    MEMORY[0x29ED98410](v23, -1, -1);
    MEMORY[0x29ED98410](v20, -1, -1);

    (*(v14 + 8))(v16, v43);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  v24 = v45;
  v25 = [v45 startDate];
  v26 = v46;
  sub_29E74ECD8();

  v27 = [v24 endDate];
  v28 = v47;
  sub_29E74ECD8();

  v29 = *(v6 + 16);
  v30 = v49;
  v29(v12, v26, v49);
  v29(&v12[v10[5]], v28, v30);
  v31 = v48;
  *&v12[v10[6]] = v48;
  v12[v10[7]] = 1;
  v32 = v31;
  v33 = HKSPLogForCategory();
  v34 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v33 healthDataSource:v32];

  v35 = *(v6 + 8);
  v35(v28, v30);
  v35(v26, v30);
  *&v12[v10[8]] = v34;
  sub_29E5FEC58(v12, v5);
  v36 = *(v3 + 20);
  *&v5[v36] = swift_getKeyPath();
  v37 = MEMORY[0x29EDBC388];
  sub_29E73C75C(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  swift_storeEnumTagMultiPayload();
  v38 = *(v3 + 24);
  *&v5[v38] = swift_getKeyPath();
  sub_29E73C75C(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], v37);
  swift_storeEnumTagMultiPayload();
  sub_29E683C20(0);
  v40 = objc_allocWithZone(v39);
  v41 = sub_29E753038();
  [v51 presentViewController:v41 animated:1 completion:0];

  sub_29E5FFC24(v12);
}

void sub_29E73C75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E73C7C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29E7513D8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v34 = a1;
    v10 = [v9 identifier];
    v11 = sub_29E7541D8();
    v13 = v12;

    v15 = v11 == sub_29E7541D8() && v13 == v14;
    v35 = a2;
    if (v15)
    {
      goto LABEL_9;
    }

    v16 = sub_29E755028();

    if (v16)
    {
      goto LABEL_10;
    }
  }

  sub_29E754E48();
  __break(1u);
LABEL_9:

LABEL_10:
  sub_29E751318();
  sub_29E751238();
  v17 = type metadata accessor for SleepApneaEventSharingListComponent();
  v18 = swift_allocObject();
  *(v18 + 16) = 0xD00000000000001CLL;
  *(v18 + 24) = 0x800000029E7619E0;
  v37 = v17;
  v38 = sub_29E73CCF4(&qword_2A185AAD8, type metadata accessor for SleepApneaEventSharingListComponent, &unk_29E76DF4C);
  v36[0] = v18;
  sub_29E7518F8();

  sub_29E66D0D0(v36);
  result = sub_29E7511D8();
  v20 = result;
  v21 = *(result + 16);
  if (v21)
  {
    v22 = 0;
    v23 = result + 32;
    while (v22 < *(v20 + 16))
    {
      sub_29E602E20(v23, v36);
      sub_29E601938(v36, v37);
      v24 = sub_29E750DF8();
      v26 = v25;
      if (v24 == sub_29E751278() && v26 == v27)
      {

        sub_29E5FECBC(v36);
LABEL_21:

        sub_29E7511D8();

        sub_29E73CC94(0, &qword_2A1858BE8, MEMORY[0x29EDC9E90]);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_29E762F30;
        v31 = type metadata accessor for SleepApneaEventSharingEducationComponent();
        v32 = swift_allocObject();
        *(v32 + 16) = 0xD000000000000021;
        *(v32 + 24) = 0x800000029E761A00;
        *(inited + 56) = v31;
        *(inited + 64) = sub_29E73CCF4(&qword_2A185AAE0, type metadata accessor for SleepApneaEventSharingEducationComponent, &unk_29E76DF0C);
        *(inited + 32) = v32;
        v33 = sub_29E7511C8();
        sub_29E73CE70(v22 + 1, v22 + 1, inited);
        swift_setDeallocating();
        sub_29E6CEF90();
        swift_arrayDestroy();
        v33(v36, 0);

        return (*(v5 + 32))(v35, v7, v4);
      }

      v29 = sub_29E755028();

      result = sub_29E5FECBC(v36);
      if (v29)
      {
        goto LABEL_21;
      }

      ++v22;
      v23 += 40;
      if (v21 == v22)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return (*(v5 + 32))(v35, v7, v4);
  }

  return result;
}

void sub_29E73CC94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E6CEF90();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E73CCF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E73CD3C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = *v4;
  v10 = v9 + 32 + 40 * result;
  sub_29E6CEF90();
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, a2);
  v14 = v13 - a2;
  if (v11)
  {
    goto LABEL_21;
  }

  result = v10 + 40 * a3;
  v15 = (v9 + 32 + 40 * a2);
  if (result != v15 || result >= v15 + 40 * v14)
  {
    result = memmove(result, v15, 40 * v14);
  }

  v17 = *(v9 + 16);
  v11 = __OFADD__(v17, v12);
  v18 = v17 + v12;
  if (v11)
  {
    goto LABEL_22;
  }

  *(v9 + 16) = v18;
LABEL_13:
  if (a3 < 1)
  {
    return result;
  }

  if (*(a4 + 16) != a3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  return swift_arrayInitWithCopy();
}

unint64_t sub_29E73CE70(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > v5[3] >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_29E6DB2F8(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_29E73CD3C(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

id sub_29E73CF44()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    v3 = HKSPLogForCategory();
    v4 = [objc_allocWithZone(MEMORY[0x29EDBAA00]) initWithLoggingCategory:v3 healthDataSource:*(v0 + 112)];

    v5 = *(v0 + 152);
    *(v0 + 152) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_29E73CFD8(int a1, int a2)
{
  v3 = v2;
  LODWORD(v4) = a2;
  LODWORD(v5) = a1;
  v6 = *v2;
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v11 = sub_29E752088();
  v12 = sub_29E754688();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v4;
    v4 = v13;
    v14 = swift_slowAlloc();
    v31 = v5;
    v5 = v14;
    aBlock[0] = v14;
    *v4 = 136446210;
    v15 = sub_29E755178();
    v30 = v6;
    v17 = sub_29E6B9C90(v15, v16, aBlock);

    *(v4 + 4) = v17;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Attempting to send analytics event...", v4, 0xCu);
    sub_29E5FECBC(v5);
    v18 = v5;
    LOBYTE(v5) = v31;
    MEMORY[0x29ED98410](v18, -1, -1);
    v19 = v4;
    LOBYTE(v4) = v32;
    MEMORY[0x29ED98410](v19, -1, -1);

    v20 = v30;
    (*(v8 + 8))(v10, v7);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    v20 = v6;
  }

  v21 = *(v3 + 120);
  v23 = v3[16];
  v22 = v3[17];
  v24 = *(v3 + 72);
  type metadata accessor for SleepApneaOnboardingAnalyticsEvent();
  v25 = swift_allocObject();
  *(v25 + 16) = v5;
  *(v25 + 17) = v4;
  *(v25 + 24) = v23;
  *(v25 + 32) = v22;
  *(v25 + 40) = v21;
  *(v25 + 41) = v24;

  v26 = sub_29E73CF44();
  v27 = swift_allocObject();
  *(v27 + 16) = v20;
  aBlock[4] = sub_29E73D6FC;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E5FE860;
  aBlock[3] = &unk_2A2503888;
  v28 = _Block_copy(aBlock);

  [v26 submitEvent:v25 completion:v28];
  _Block_release(v28);
}

uint64_t sub_29E73D2F8(char a1, void *a2, uint64_t a3)
{
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v35 - v10;
  if (a1)
  {
    sub_29E752068();
    v12 = sub_29E752088();
    v13 = sub_29E754688();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v36 = v15;
      *v14 = 136446210;
      v16 = sub_29E755178();
      v18 = sub_29E6B9C90(v16, v17, &v36);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Successfully submitted analytics", v14, 0xCu);
      sub_29E5FECBC(v15);
      MEMORY[0x29ED98410](v15, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    v19 = *(v6 + 8);
    v20 = v11;
    goto LABEL_9;
  }

  sub_29E752068();
  v21 = a2;
  v22 = sub_29E752088();
  v23 = sub_29E7546A8();

  if (!os_log_type_enabled(v22, v23))
  {

    v19 = *(v6 + 8);
    v20 = v9;
LABEL_9:
    v33 = v5;
    return v19(v20, v33);
  }

  v35 = v5;
  v24 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v36 = v26;
  *v24 = 136446466;
  v27 = sub_29E755178();
  v29 = sub_29E6B9C90(v27, v28, &v36);

  *(v24 + 4) = v29;
  *(v24 + 12) = 2112;
  if (a2)
  {
    v30 = a2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    v32 = v31;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *(v24 + 14) = v31;
  *v25 = v32;
  _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Failed to submit analytics with error: %@", v24, 0x16u);
  sub_29E6764FC(v25);
  MEMORY[0x29ED98410](v25, -1, -1);
  sub_29E5FECBC(v26);
  MEMORY[0x29ED98410](v26, -1, -1);
  MEMORY[0x29ED98410](v24, -1, -1);

  v19 = *(v6 + 8);
  v20 = v9;
  v33 = v35;
  return v19(v20, v33);
}

uint64_t SleepApneaOnboardingAnalyticsContextManager.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SleepApneaOnboardingAnalyticsContextManager.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x2A1C73CE8](v0);
}

uint64_t sub_29E73D704(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E73D71C@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_29E754828();
  if (v4)
  {
    v5 = v4;
    sub_29E750008();
    swift_allocObject();
    v6 = v5;
    sub_29E74FFF8();
    v7 = v6;

    sub_29E754858();
    sub_29E754838();
    sub_29E750A98();
    swift_allocObject();
    sub_29E750A68();
    sub_29E750A58();
    sub_29E750A78();
    sub_29E750A88();
    sub_29E751378();

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_29E7513C8();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

id sub_29E73DCB4(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HostingConfigurationCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for SleepScoreGalleryCard(uint64_t a1)
{
  result = qword_2A185AAE8;
  if (!qword_2A185AAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E73DD80(uint64_t a1)
{
  sub_29E73E938(319, qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29E650A80();
    if (v2 <= 0x3F)
    {
      sub_29E73E938(319, &qword_2A1A7BEF0, type metadata accessor for HKWidthDesignation, MEMORY[0x29EDBC390]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E73DE98@<X0>(uint64_t a1@<X8>)
{
  sub_29E73E8A4(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73EB24(0, &qword_2A185AB58, sub_29E73E8A4, MEMORY[0x29EDBC5F8]);
  v7 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v24 - v8;
  v10 = type metadata accessor for SleepScoreCard(0);
  v11 = v10 - 8;
  MEMORY[0x2A1C7C4A8](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73EFB4(v1, &v13[*(v11 + 28)], qword_2A1A7CE90, type metadata accessor for SleepScoreRoomModel, MEMORY[0x29EDC9C68], sub_29E73E938);
  v14 = (v1 + *(type metadata accessor for SleepScoreGalleryCard(0) + 24));
  v16 = *v14;
  v15 = v14[1];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v17 = &v13[*(v11 + 32)];
  *v17 = v16;
  *(v17 + 1) = v15;

  *v5 = sub_29E753388();
  sub_29E73ED54(0);
  sub_29E73E1B4(v13, v1, &v5[*(v18 + 44)]);
  sub_29E73E714();
  sub_29E753C48();
  sub_29E752CA8();
  sub_29E73EEE0(v5, v9, sub_29E73E8A4);
  v19 = &v9[*(v7 + 36)];
  v20 = v24[6];
  *(v19 + 4) = v24[5];
  *(v19 + 5) = v20;
  *(v19 + 6) = v24[7];
  v21 = v24[2];
  *v19 = v24[1];
  *(v19 + 1) = v21;
  v22 = v24[4];
  *(v19 + 2) = v24[3];
  *(v19 + 3) = v22;
  sub_29E73EDF0(v9, a1);
  return sub_29E73F028(v13, type metadata accessor for SleepScoreCard);
}

uint64_t sub_29E73E1B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v48 = a2;
  v4 = type metadata accessor for SleepScoreGalleryCard(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E73EA30(0);
  v44 = v7;
  v8 = MEMORY[0x2A1C7C4A8](v7);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v43 - v10;
  sub_29E73EB24(0, &qword_2A185AB10, type metadata accessor for SleepScoreCard, MEMORY[0x29EDBC5E8]);
  v13 = v12;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v43 - v17;
  sub_29E7544C8();
  v45 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E73EE78(a1, v18, type metadata accessor for SleepScoreCard);
  *&v18[*(v13 + 36)] = 256;
  sub_29E73E714();
  sub_29E753C28();
  sub_29E752AB8();
  sub_29E73EE78(a1, v11, type metadata accessor for SleepScoreCard);
  sub_29E73EB24(0, &qword_2A185AB28, type metadata accessor for SleepScoreCard, MEMORY[0x29EDBC3E0]);
  v20 = &v11[*(v19 + 36)];
  v21 = v50;
  *v20 = v49;
  *(v20 + 1) = v21;
  *(v20 + 2) = v51;
  v22 = sub_29E753C38();
  v24 = v23;
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E73EE78(v48, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreGalleryCard);
  v25 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v26 = swift_allocObject();
  sub_29E73EEE0(v6, v26 + v25, type metadata accessor for SleepScoreGalleryCard);

  sub_29E73EA98(0);
  v28 = &v11[*(v27 + 36)];
  *v28 = sub_29E73EF48;
  v28[1] = v26;
  v28[2] = v22;
  v28[3] = v24;
  sub_29E74F198();
  sub_29E74F198();
  v29 = &v11[*(v44 + 36)];
  v30 = *(sub_29E753238() + 20);
  v31 = *MEMORY[0x29EDBC6F8];
  v32 = sub_29E752F78();
  (*(*(v32 - 8) + 104))(&v29[v30], v31, v32);
  sub_29E753148();
  *v29 = v33;
  *(v29 + 1) = v34;
  *(v29 + 2) = v35;
  *(v29 + 3) = v36;
  sub_29E73EC38(0);
  *&v29[*(v37 + 36)] = 256;
  v38 = MEMORY[0x29EDBC5E8];
  sub_29E73EFB4(v18, v16, &qword_2A185AB10, type metadata accessor for SleepScoreCard, MEMORY[0x29EDBC5E8], sub_29E73EB24);
  v39 = v46;
  sub_29E73EE78(v11, v46, sub_29E73EA30);
  v40 = v47;
  sub_29E73EFB4(v16, v47, &qword_2A185AB10, type metadata accessor for SleepScoreCard, v38, sub_29E73EB24);
  sub_29E73E99C(0);
  sub_29E73EE78(v39, v40 + *(v41 + 48), sub_29E73EA30);
  sub_29E73F028(v11, sub_29E73EA30);
  sub_29E73F088(v18);
  sub_29E73F028(v39, sub_29E73EA30);
  sub_29E73F088(v16);
}

uint64_t sub_29E73E714()
{
  v1 = sub_29E752EB8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SleepScoreGalleryCard(0);
  v6 = v0 + *(result + 28);
  v7 = *v6;
  if ((*(v6 + 8) & 1) == 0)
  {

    sub_29E7546B8();
    v8 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();
    sub_29E5FAF18(v7, 0);
    result = (*(v2 + 8))(v4, v1);
    v7 = v10;
  }

  if ((v7 - 1) >= 6)
  {
    type metadata accessor for HKWidthDesignation(0);
    v10 = v7;
    result = sub_29E755048();
    __break(1u);
  }

  return result;
}

void sub_29E73E8A4(uint64_t a1)
{
  if (!qword_2A185AAF8)
  {
    sub_29E73E938(255, &qword_2A185AB00, sub_29E73E99C, MEMORY[0x29EDBCC28]);
    sub_29E73ECCC();
    v1 = sub_29E752A98();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AAF8);
    }
  }
}

void sub_29E73E938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E73E99C(uint64_t a1)
{
  if (!qword_2A185AB08)
  {
    sub_29E73EB24(255, &qword_2A185AB10, type metadata accessor for SleepScoreCard, MEMORY[0x29EDBC5E8]);
    sub_29E73EA30(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185AB08);
    }
  }
}

void sub_29E73EA30(uint64_t a1)
{
  if (!qword_2A185AB18)
  {
    sub_29E73EA98(255);
    sub_29E73EC38(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AB18);
    }
  }
}

void sub_29E73EA98(uint64_t a1)
{
  if (!qword_2A185AB20)
  {
    sub_29E73EB24(255, &qword_2A185AB28, type metadata accessor for SleepScoreCard, MEMORY[0x29EDBC3E0]);
    sub_29E73EB88(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AB20);
    }
  }
}

void sub_29E73EB24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E752C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E73EB88(uint64_t a1)
{
  if (!qword_2A185AB30)
  {
    sub_29E73EBE4();
    v1 = sub_29E752CB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AB30);
    }
  }
}

unint64_t sub_29E73EBE4()
{
  result = qword_2A185AB38;
  if (!qword_2A185AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AB38);
  }

  return result;
}

void sub_29E73EC38(uint64_t a1)
{
  if (!qword_2A185AB40)
  {
    sub_29E753238();
    sub_29E73F1DC(&qword_2A185AB48, MEMORY[0x29EDBC890], MEMORY[0x29EDBC888]);
    v1 = sub_29E752A88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AB40);
    }
  }
}

unint64_t sub_29E73ECCC()
{
  result = qword_2A185AB50;
  if (!qword_2A185AB50)
  {
    sub_29E73E938(255, &qword_2A185AB00, sub_29E73E99C, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AB50);
  }

  return result;
}

void sub_29E73ED54(uint64_t a1)
{
  if (!qword_2A185AB60)
  {
    sub_29E73E938(255, &qword_2A185AB00, sub_29E73E99C, MEMORY[0x29EDBCC28]);
    sub_29E6E1220();
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AB60);
    }
  }
}

uint64_t sub_29E73EDF0(uint64_t a1, uint64_t a2)
{
  sub_29E73EB24(0, &qword_2A185AB58, sub_29E73E8A4, MEMORY[0x29EDBC5F8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E73EE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E73EEE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E73EFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29E73F028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E73F088(uint64_t a1)
{
  sub_29E73EB24(0, &qword_2A185AB10, type metadata accessor for SleepScoreCard, MEMORY[0x29EDBC5E8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E73F108()
{
  result = qword_2A185AB68;
  if (!qword_2A185AB68)
  {
    sub_29E73EB24(255, &qword_2A185AB58, sub_29E73E8A4, MEMORY[0x29EDBC5F8]);
    sub_29E73F1DC(&qword_2A185AB70, sub_29E73E8A4, MEMORY[0x29EDBBEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AB68);
  }

  return result;
}

uint64_t sub_29E73F1DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint(uint64_t a1)
{
  result = qword_2A185AB78;
  if (!qword_2A185AB78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E73F298(uint64_t a1)
{
  result = sub_29E74ED28();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E73F314()
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E73F754(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  v1 = *(v0 + *(type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v1);
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E73F3FC(uint64_t a1, uint64_t a2)
{
  sub_29E74ED28();
  sub_29E73F754(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v4);
  return sub_29E7540B8();
}

uint64_t sub_29E73F4C0(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E73F754(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x29ED97A10](*&v4);
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E73F598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    return sub_29E74ECB8();
  }

  else
  {
    return v4 < v5;
  }
}

BOOL sub_29E73F5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    v6 = sub_29E74ECB8();
  }

  else
  {
    v6 = v4 < v5;
  }

  return (v6 & 1) == 0;
}

BOOL sub_29E73F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a1 + v3);
  v5 = *(a2 + v3);
  if (v4 == v5)
  {
    v6 = sub_29E74ECB8();
  }

  else
  {
    v6 = v4 < v5;
  }

  return (v6 & 1) == 0;
}

uint64_t sub_29E73F660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = *(a2 + v3);
  v5 = *(a1 + v3);
  if (v4 == v5)
  {
    return sub_29E74ECB8();
  }

  else
  {
    return v4 < v5;
  }
}

uint64_t sub_29E73F690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29E74ECC8() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  return sub_29E74ECC8();
}

uint64_t sub_29E73F754(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E73F970()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_picker;
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_picker] setDelegate_];
  [*&v0[v2] setDataSource_];
  v3 = [v0 contentView];
  [v3 addSubview_];

  [*&v1[v2] setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = *&v1[v2];
  v5 = [v1 contentView];
  v6 = sub_29E754AF8();

  v7 = [*&v1[v2] heightAnchor];
  v8 = [v7 constraintEqualToConstant_];

  MEMORY[0x29ED96CE0]();
  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E754418();
  }

  sub_29E754438();
  v9 = objc_opt_self();
  sub_29E66B09C();
  v10 = sub_29E7543D8();

  [v9 activateConstraints_];
}

id sub_29E73FB44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29E73FF40(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_picker;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x29EDC7BC0]) init];
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_pickerData] = MEMORY[0x29EDCA190];
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    v5 = sub_29E754198();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v2;
  v9.super_class = type metadata accessor for PickerTableViewCell();
  v6 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, 0, v5);

  v7 = v6;
  sub_29E73F970();

  return v7;
}

uint64_t sub_29E740024(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20SleepHealthAppPlugin19PickerTableViewCell_pickerData);
  if (*(v2 + 16) <= a1)
  {
    return 0;
  }

  v3 = *(v2 + 16 * a1 + 32);

  return v3;
}

uint64_t sub_29E74007C()
{
  v1[8] = v0;
  v1[9] = *v0;
  v2 = sub_29E752098();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_29E662AC4(0);
  v1[15] = swift_task_alloc();
  v3 = sub_29E74FDC8();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E740210, 0, 0);
}

uint64_t sub_29E740210()
{
  swift_getObjectType();
  sub_29E744EEC(&qword_2A1A7C368, type metadata accessor for BreathingDisturbancesHighlightExecutor, &unk_29E76E590);
  sub_29E74FB68();
  v0[20] = 0;
  v1 = swift_task_alloc();
  v0[21] = v1;
  sub_29E745544(0, &qword_2A1A7BDE8, sub_29E7455A8, MEMORY[0x29EDC9C68]);
  *v1 = v0;
  v1[1] = sub_29E74041C;
  v3 = v0[8];

  return MEMORY[0x2A1C73C70](v0 + 7, 0, 0, 0xD00000000000001ELL, 0x800000029E761D90, sub_29E74553C, v3, v2);
}

uint64_t sub_29E74041C()
{

  return MEMORY[0x2A1C73D48](sub_29E740518, 0, 0);
}

uint64_t sub_29E740518(uint64_t a1)
{
  v77 = v1;
  v2 = v1[7];
  if (!v2)
  {
    sub_29E752048();
    v10 = sub_29E752088();
    v11 = sub_29E7546C8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v1[11];
    v13 = v1[12];
    v15 = v1[10];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v76[0] = v17;
      *v16 = 136446210;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, v76);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] No breathing disturbances data found. Removing any highlights that might exist.", v16, 0xCu);
      sub_29E5FECBC(v17);
      MEMORY[0x29ED98410](v17, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);
    }

    (*(v14 + 8))(v13, v15);
    v22 = v1[5];
    v21 = v1[6];
    sub_29E601938(v1 + 2, v22);
    v23 = swift_task_alloc();
    v1[28] = v23;
    *v23 = v1;
    v24 = sub_29E741044;
    goto LABEL_14;
  }

  v3 = [objc_opt_self() displayTypeWithIdentifier_];
  if (!v3)
  {
    __break(1u);
    return MEMORY[0x2A1C64D78](v3, v4, v5);
  }

  v6 = v3;
  v7 = v1[20];
  sub_29E741378(v3, v2, v1[15]);
  if (v7)
  {

    sub_29E5FECBC(v1 + 2);

    v8 = v1[1];

    return v8();
  }

  v25 = v1[16];
  v26 = v1[17];
  v27 = v1[15];

  if ((*(v26 + 48))(v27, 1, v25) != 1)
  {
    v40 = v1[18];
    v41 = v1[19];
    v42 = v1[16];
    v43 = v1[17];
    (*(v43 + 32))(v41, v1[15], v42);
    sub_29E752048();
    v44 = *(v43 + 16);
    v44(v40, v41, v42);
    v45 = sub_29E752088();
    v46 = sub_29E7546C8();
    v47 = os_log_type_enabled(v45, v46);
    v49 = v1[17];
    v48 = v1[18];
    v75 = v1[16];
    v50 = v1[14];
    v52 = v1[10];
    v51 = v1[11];
    if (v47)
    {
      v74 = v44;
      v73 = v1[10];
      v53 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76[0] = v71;
      *v53 = 136446466;
      v54 = sub_29E755178();
      v72 = v50;
      v56 = sub_29E6B9C90(v54, v55, v76);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      v57 = sub_29E74FC78();
      v59 = v58;
      v70 = v46;
      v60 = *(v49 + 8);
      v60(v48, v75);
      v61 = sub_29E6B9C90(v57, v59, v76);
      v44 = v74;

      *(v53 + 14) = v61;
      _os_log_impl(&dword_29E5ED000, v45, v70, "[%{public}s] Executor is replacing existing feed item with %s", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v71, -1, -1);
      MEMORY[0x29ED98410](v53, -1, -1);

      (*(v51 + 8))(v72, v73);
    }

    else
    {

      v60 = *(v49 + 8);
      v60(v48, v75);
      (*(v51 + 8))(v50, v52);
    }

    v1[22] = v60;
    v62 = v1[19];
    v63 = v1[16];
    v64 = v1[17];
    v66 = v1[5];
    v65 = v1[6];
    sub_29E601938(v1 + 2, v66);
    sub_29E745544(0, &qword_2A1A7D3F8, MEMORY[0x29EDC3840], MEMORY[0x29EDC9E90]);
    v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v68 = swift_allocObject();
    v1[23] = v68;
    *(v68 + 16) = xmmword_29E762F30;
    v44(v68 + v67, v62, v63);
    v69 = swift_task_alloc();
    v1[24] = v69;
    *v69 = v1;
    v69[1] = sub_29E740C80;
    v3 = v68;
    v4 = v66;
    v5 = v65;

    return MEMORY[0x2A1C64D78](v3, v4, v5);
  }

  sub_29E745610(v1[15], sub_29E662AC4);
  sub_29E752048();
  v28 = sub_29E752088();
  v29 = sub_29E7546C8();
  v30 = os_log_type_enabled(v28, v29);
  v31 = v1[13];
  v32 = v1[10];
  v33 = v1[11];
  if (v30)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v76[0] = v35;
    *v34 = 136446210;
    v36 = sub_29E755178();
    v38 = sub_29E6B9C90(v36, v37, v76);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_29E5ED000, v28, v29, "[%{public}s] No new feed item, remove the old one.", v34, 0xCu);
    sub_29E5FECBC(v35);
    MEMORY[0x29ED98410](v35, -1, -1);
    MEMORY[0x29ED98410](v34, -1, -1);
  }

  (*(v33 + 8))(v31, v32);
  v22 = v1[5];
  v21 = v1[6];
  sub_29E601938(v1 + 2, v22);
  v23 = swift_task_alloc();
  v1[26] = v23;
  *v23 = v1;
  v24 = sub_29E740E80;
LABEL_14:
  v23[1] = v24;
  v39 = MEMORY[0x29EDCA190];

  return MEMORY[0x2A1C64D80](v39, v22, v21);
}

uint64_t sub_29E740C80()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_29E7412B0;
  }

  else
  {
    v2 = sub_29E740DB4;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E740DB4()
{
  (*(v0 + 176))(*(v0 + 152), *(v0 + 128));
  sub_29E5FECBC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E740E80()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_29E741204;
  }

  else
  {
    v2 = sub_29E740F94;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E740F94()
{
  sub_29E5FECBC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E741044()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_29E741158;
  }

  else
  {
    v2 = sub_29E746090;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29E741158()
{
  sub_29E5FECBC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E741204()
{
  sub_29E5FECBC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_29E7412B0()
{
  (*(v0 + 176))(*(v0 + 152), *(v0 + 128));
  sub_29E5FECBC((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_29E741378(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v77 = a1;
  v80 = a3;
  v75 = *v4;
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74FC58();
  v69 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v68 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_29E74FB98();
  v71 = *(v72 - 8);
  MEMORY[0x2A1C7C4A8](v72);
  v67 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74FDC8();
  v78 = *(v13 - 8);
  v79 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v70 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7455DC(0);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = (v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
  v18 = *(v76 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v76);
  v73 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v74 = v64 - v21;
  v22 = a2;
  v23 = sub_29E742B00(a2);
  if (*(v23 + 16))
  {
    v75 = v23;
    v66 = v10;
    sub_29E66D198();
    v24 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
    v81[0] = sub_29E7541D8();
    v81[1] = v25;
    MEMORY[0x29ED96C20](0x67696C686769482ELL, 0xEB000000002E7468);
    v26 = [v24 identifier];
    v27 = sub_29E7541D8();
    v29 = v28;

    MEMORY[0x29ED96C20](v27, v29);

    sub_29E742FF8(v77, v22, v17);
    if ((*(v18 + 48))(v17, 1, v76) == 1)
    {

      sub_29E745610(v17, sub_29E7455DC);
      (*(v78 + 56))(v80, 1, 1, v79);
    }

    else
    {
      v77 = v24;
      v38 = v74;
      sub_29E745BC0(v17, v74, type metadata accessor for BreathingDisturbancesHighlightDataModel);
      sub_29E74E7C8();
      swift_allocObject();
      sub_29E74E7B8();
      sub_29E744EEC(&qword_2A1A7D188, type metadata accessor for BreathingDisturbancesHighlightDataModel, &unk_29E76C9CC);
      v39 = v82;
      v40 = sub_29E74E7A8();
      if (v39)
      {
        sub_29E745610(v38, type metadata accessor for BreathingDisturbancesHighlightDataModel);
      }

      else
      {
        v42 = v41;
        v43 = v40;

        sub_29E64C7DC(v43, v42);
        sub_29E744EEC(&qword_2A1A7D198, type metadata accessor for BreathingDisturbancesHighlightDataModel, &unk_29E76C994);
        sub_29E750CE8();
        v76 = v43;
        v82 = v42;
        v65 = [objc_allocWithZone(MEMORY[0x29EDBAA68]) initWithIdentifier_];
        if (v65)
        {
          type metadata accessor for BreathingDisturbancesHighlightView(0);
          v64[1] = "getBreathingDisturbancesData()";
          v44 = v67;
          (*(v71 + 104))(v67, *MEMORY[0x29EDC3788], v72);
          v45 = sub_29E754638();
          v46 = v69;
          v47 = v68;
          (*(v69 + 104))(v68, *MEMORY[0x29EDC1B28], v66);
          sub_29E744EEC(&qword_2A1A7C448, type metadata accessor for BreathingDisturbancesHighlightView, &unk_29E76C94C);
          v48 = v70;
          sub_29E74FC38();

          (*(v46 + 8))(v47, v66);
          (*(v71 + 8))(v44, v72);
          v49 = sub_29E745798(v75);

          v50 = *(v49 + 2);
          v51 = 32;
          v52 = v77;
          do
          {
            if (!v50)
            {
              break;
            }

            v53 = *&v49[v51];
            v51 += 8;
            --v50;
          }

          while (v53 != 1);

          v54 = v48;
          sub_29E74FDA8();
          sub_29E67905C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_29E764160;
          v56 = v65;
          *(inited + 32) = v65;
          v57 = v56;
          sub_29E6D5A34(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          sub_29E74FD28();
          sub_29E67905C(0, &qword_2A1A7BCF0, MEMORY[0x29EDC99B0]);
          v58 = swift_initStackObject();
          *(v58 + 16) = xmmword_29E762F30;
          *(v58 + 32) = sub_29E74FF08();
          *(v58 + 40) = v59;
          sub_29E5FF900(v58);
          swift_setDeallocating();
          sub_29E619D6C(v58 + 32);
          sub_29E74FD88();

          sub_29E643D20(v76, v82);
          sub_29E745610(v73, type metadata accessor for BreathingDisturbancesHighlightDataModel);
          sub_29E745610(v38, type metadata accessor for BreathingDisturbancesHighlightDataModel);
          v60 = v78;
          v61 = v80;
          v62 = v54;
          v63 = v79;
          (*(v78 + 32))(v80, v62, v79);
          (*(v60 + 56))(v61, 0, 1, v63);
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  else
  {
    v30 = v6;

    sub_29E752048();
    v31 = sub_29E752088();
    v32 = sub_29E7546C8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v81[0] = v34;
      *v33 = 136446210;
      v35 = sub_29E755178();
      v37 = sub_29E6B9C90(v35, v36, v81);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s] Not enough breathing disturbances in the last week to meet threshold for highlight. Removing highlight from feed item storage.", v33, 0xCu);
      sub_29E5FECBC(v34);
      MEMORY[0x29ED98410](v34, -1, -1);
      MEMORY[0x29ED98410](v33, -1, -1);
    }

    (*(v7 + 8))(v9, v30);
    (*(v78 + 56))(v80, 1, 1, v79);
  }
}

uint64_t sub_29E741F24(uint64_t a1)
{
  sub_29E745C28(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_29E7420B8(sub_29E745CC0, v7);
}

uint64_t sub_29E742060(uint64_t a1)
{
  sub_29E745C28(0);

  return sub_29E754498();
}

void sub_29E7420B8(void (*a1)(void, void), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_29E752098();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v42 - v12;
  sub_29E752048();
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();
  v16 = os_log_type_enabled(v14, v15);
  v45 = v6;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v43 = a1;
    v44 = v7;
    v42 = a2;
    v18 = v17;
    v19 = v11;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v18 = 136446210;
    v21 = sub_29E755178();
    v23 = v8;
    v24 = sub_29E6B9C90(v21, v22, aBlock);

    *(v18 + 4) = v24;
    v8 = v23;
    _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s] Query for breathing disturbance data.", v18, 0xCu);
    sub_29E5FECBC(v20);
    v25 = v20;
    v11 = v19;
    MEMORY[0x29ED98410](v25, -1, -1);
    v26 = v18;
    a2 = v42;
    a1 = v43;
    v7 = v44;
    MEMORY[0x29ED98410](v26, -1, -1);
  }

  v27 = *(v8 + 8);
  v27(v13, v7);
  v28 = v3 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
  v29 = *&v28[*(type metadata accessor for BreathingDisturbancesHighlightDateModel(0) + 28)];
  if (v29)
  {
    v30 = swift_allocObject();
    v30[2] = a1;
    v30[3] = a2;
    v30[4] = v3;
    aBlock[4] = sub_29E745D40;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_29E742A60;
    aBlock[3] = &unk_2A2503928;
    v31 = _Block_copy(aBlock);
    v32 = v29;

    [v32 setInitialResultsHandler_];
    _Block_release(v31);
    [v3[4] executeQuery_];
  }

  else
  {
    sub_29E752048();
    v33 = sub_29E752088();
    v34 = sub_29E7546B8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136446210;
      v37 = sub_29E755178();
      v45 = v8;
      v39 = sub_29E6B9C90(v37, v38, aBlock);
      v44 = v11;
      v40 = v39;

      *(v35 + 4) = v40;
      _os_log_impl(&dword_29E5ED000, v33, v34, "[%{public}s] No query available from the date model; check for the fault log in BreathingDisturbancesHighlightDateModel.", v35, 0xCu);
      sub_29E5FECBC(v36);
      MEMORY[0x29ED98410](v36, -1, -1);
      MEMORY[0x29ED98410](v35, -1, -1);

      v41 = v44;
    }

    else
    {

      v41 = v11;
    }

    v27(v41, v7);
    a1(0, 0);
  }
}

uint64_t sub_29E7424EC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return a4(0, a3);
  }

  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x29EDCA190];
  type metadata accessor for BreathingDisturbancesHighlightDateModel(0);
  v10 = a2;
  v11 = sub_29E74EC98();
  v12 = sub_29E74EC98();
  v13 = swift_allocObject();
  *(v13 + 16) = a6;
  *(v13 + 24) = v9;
  v17[4] = sub_29E745D64;
  v17[5] = v13;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1107296256;
  v17[2] = sub_29E7429EC;
  v17[3] = &unk_2A25039A0;
  v14 = _Block_copy(v17);

  [v10 enumerateStatisticsFromDate:v11 toDate:v12 withBlock:v14];
  _Block_release(v14);

  swift_beginAccess();

  a4(v15, 0);
}

id sub_29E7426C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v6 = type metadata accessor for BreathingDisturbancesData(0);
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74ED28();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v29 - v15;
  result = [a1 averageQuantity];
  if (result)
  {
    v18 = result;
    v30 = v7;
    v19 = [a1 endDate];
    sub_29E74ECD8();

    sub_29E74EDD8();
    v20 = v14;
    v21 = *(v11 + 8);
    v21(v20, v10);
    v22 = [objc_opt_self() countUnit];
    [v18 doubleValueForUnit_];
    v24 = v23;

    (*(v11 + 16))(v9, v16, v10);
    *&v9[*(v6 + 20)] = v24;
    swift_beginAccess();
    v25 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_29E6DB940(0, v25[2] + 1, 1, v25);
      *(a4 + 16) = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_29E6DB940((v27 > 1), v28 + 1, 1, v25);
    }

    v25[2] = v28 + 1;
    sub_29E745BC0(v9, v25 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, type metadata accessor for BreathingDisturbancesData);
    *(a4 + 16) = v25;

    return (v21)(v16, v10);
  }

  return result;
}

void sub_29E7429EC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_29E742A60(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

uint64_t sub_29E742B00(uint64_t a1)
{
  v2 = v1;
  v53 = sub_29E74EE68();
  v4 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v52 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66BE0C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_29E74ED28();
  v9 = *(v51 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v51);
  v50 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v41 = &v38 - v12;
  v13 = type metadata accessor for BreathingDisturbancesData(0) - 8;
  v14 = MEMORY[0x2A1C7C4A8](v13);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v38 - v17;
  v19 = *(a1 + 16);
  if (v19)
  {
    v47 = v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
    v48 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
    v38 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v20 = a1 + v38;
    v54 = *(v16 + 72);
    v46 = *MEMORY[0x29EDB9CB8];
    v21 = (v9 + 8);
    v44 = (v4 + 8);
    v45 = (v4 + 104);
    v43 = (v9 + 48);
    v39 = (v9 + 32);
    v42 = MEMORY[0x29EDCA190];
    v49 = v2;
    while (1)
    {
      sub_29E7459AC(v20, v18);
      v22 = v8;
      v24 = v52;
      v23 = v53;
      (*v45)(v52, v46, v53);
      type metadata accessor for BreathingDisturbancesHighlightDateModel(0);
      v25 = v50;
      sub_29E74E7F8();
      sub_29E74EE48();
      v26 = *v21;
      v27 = v51;
      (*v21)(v25, v51);
      v28 = v24;
      v8 = v22;
      (*v44)(v28, v23);
      if ((*v43)(v22, 1, v27) == 1)
      {
        sub_29E745610(v22, sub_29E66BE0C);
      }

      else
      {
        v29 = v41;
        (*v39)(v41, v22, v27);
        v30 = sub_29E74ECA8();
        v31 = v27;
        v32 = v30;
        v26(v29, v31);
        if (v32)
        {
          sub_29E745BC0(v18, v40, type metadata accessor for BreathingDisturbancesData);
          v33 = v42;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v33;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29E6DBEC4(0, *(v33 + 16) + 1, 1);
            v33 = v55;
          }

          v36 = *(v33 + 16);
          v35 = *(v33 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_29E6DBEC4((v35 > 1), v36 + 1, 1);
            v33 = v55;
          }

          *(v33 + 16) = v36 + 1;
          v42 = v33;
          sub_29E745BC0(v40, v33 + v38 + v36 * v54, type metadata accessor for BreathingDisturbancesData);
          goto LABEL_5;
        }
      }

      sub_29E745610(v18, type metadata accessor for BreathingDisturbancesData);
LABEL_5:
      v20 += v54;
      if (!--v19)
      {
        return v42;
      }
    }
  }

  return MEMORY[0x29EDCA190];
}

uint64_t sub_29E742FF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v144 = a3;
  v145 = a1;
  v139 = *v3;
  v6 = sub_29E752098();
  v142 = *(v6 - 8);
  v143 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v123[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v128 = &v123[-v11];
  MEMORY[0x2A1C7C4A8](v10);
  v126 = &v123[-v12];
  v13 = sub_29E74EE68();
  v133 = *(v13 - 8);
  v134 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v131 = &v123[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E66BE0C(0);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v132 = &v123[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v138 = sub_29E74ED28();
  v135 = *(v138 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v138);
  v130 = &v123[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v17);
  v125 = &v123[-v19];
  v20 = type metadata accessor for BreathingDisturbancesData(0);
  v146 = *(v20 - 8);
  v21 = MEMORY[0x2A1C7C4A8](v20);
  v23 = &v123[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v26 = &v123[-v25];
  v27 = MEMORY[0x2A1C7C4A8](v24);
  v129 = &v123[-v28];
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v140 = &v123[-v30];
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v33 = &v123[-v32];
  v34 = MEMORY[0x2A1C7C4A8](v31);
  v36 = &v123[-v35];
  v37 = MEMORY[0x2A1C7C4A8](v34);
  v137 = &v123[-v38];
  MEMORY[0x2A1C7C4A8](v37);
  v141 = &v123[-v39];
  sub_29E745544(0, &qword_2A1A7CF08, MEMORY[0x29EDC20F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v40 - 8);
  v42 = &v123[-v41];
  sub_29E750F08();
  v43 = sub_29E750AE8();
  (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
  v44 = v145;
  v145 = sub_29E750EF8();
  v127 = a2;
  v136 = v4;
  v45 = sub_29E742B00(a2);
  v46 = sub_29E745798(v45);
  v47 = sub_29E745A10(v46);

  if (v47 == 4)
  {
    v48 = v144;

    sub_29E752048();
    v49 = sub_29E752088();
    v50 = sub_29E7546C8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v147[0] = v52;
      *v51 = 136446210;
      v53 = sub_29E755178();
      v55 = sub_29E6B9C90(v53, v54, v147);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_29E5ED000, v49, v50, "[%{public}s] Could not get highlight classification based on the provided data.", v51, 0xCu);
      sub_29E5FECBC(v52);
      MEMORY[0x29ED98410](v52, -1, -1);
      MEMORY[0x29ED98410](v51, -1, -1);
    }

    (*(v142 + 8))(v9, v143);
    v56 = v48;
LABEL_15:
    v98 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
    return (*(*(v98 - 8) + 56))(v56, 1, 1, v98);
  }

  v124 = v47;
  v57 = *(v45 + 16);
  if (!v57)
  {

    v90 = v128;
    sub_29E752048();
    v91 = sub_29E752088();
    v92 = sub_29E7546C8();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v147[0] = v94;
      *v93 = 136446210;
      v95 = sub_29E755178();
      v97 = sub_29E6B9C90(v95, v96, v147);

      *(v93 + 4) = v97;
      _os_log_impl(&dword_29E5ED000, v91, v92, "[%{public}s] Could not get highlight max/min values.", v93, 0xCu);
      sub_29E5FECBC(v94);
      MEMORY[0x29ED98410](v94, -1, -1);
      MEMORY[0x29ED98410](v93, -1, -1);
    }

    (*(v142 + 8))(v90, v143);
    v56 = v144;
    goto LABEL_15;
  }

  v58 = (*(v146 + 80) + 32) & ~*(v146 + 80);
  v59 = v45 + v58;
  result = sub_29E7459AC(v45 + v58, v36);
  if (v57 == 1)
  {
    v61 = v36;
    v62 = v137;
    sub_29E745BC0(v61, v137, type metadata accessor for BreathingDisturbancesData);
    v63 = v141;
    sub_29E745BC0(v62, v141, type metadata accessor for BreathingDisturbancesData);
    sub_29E7459AC(v45 + v58, v26);
    v64 = v138;
LABEL_8:

    v65 = v129;
    sub_29E745BC0(v26, v129, type metadata accessor for BreathingDisturbancesData);
    v66 = v65;
    v67 = v140;
    sub_29E745BC0(v66, v140, type metadata accessor for BreathingDisturbancesData);
    v68 = *(v20 + 20);
    v69 = *&v63[v68];
    v70 = *&v67[v68];
    v71 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
    v73 = v133;
    v72 = v134;
    v74 = v131;
    (*(v133 + 104))(v131, *MEMORY[0x29EDB9CC8], v134);
    v75 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
    v76 = v136;
    v77 = v64;
    v78 = v130;
    sub_29E74EDD8();
    v79 = v132;
    sub_29E74EE48();
    v80 = v135;
    v81 = v78;
    v82 = v77;
    (*(v135 + 8))(v81, v77);
    (*(v73 + 8))(v74, v72);
    if ((*(v80 + 48))(v79, 1, v77) == 1)
    {
      v84 = v140;
      v83 = v141;
      sub_29E745610(v79, sub_29E66BE0C);
      v85 = v126;
      sub_29E752048();
      v86 = sub_29E752088();
      v87 = sub_29E7546B8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_29E5ED000, v86, v87, "Could not create new date from components", v88, 2u);
        MEMORY[0x29ED98410](v88, -1, -1);
      }

      (*(v142 + 8))(v85, v143);
      sub_29E745610(v84, type metadata accessor for BreathingDisturbancesData);
      sub_29E745610(v83, type metadata accessor for BreathingDisturbancesData);
      v89 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
      return (*(*(v89 - 8) + 56))(v144, 1, 1, v89);
    }

    else
    {
      v101 = v79;
      v102 = *(v80 + 32);
      v103 = v125;
      v102(v125, v101, v77);
      v104 = v76 + v71;
      v105 = v124;
      sub_29E743D28(v104, v76 + v75, v124, &unk_2A24FD420, &unk_2A24FD470, &unk_2A24FD4C0, &unk_2A24FD510);
      v107 = v106;
      v146 = v108;
      v143 = sub_29E745670(v105);
      v110 = v109;
      v111 = sub_29E743EF4();
      v113 = v112;
      sub_29E745610(v140, type metadata accessor for BreathingDisturbancesData);
      sub_29E745610(v141, type metadata accessor for BreathingDisturbancesData);
      v114 = type metadata accessor for BreathingDisturbancesHighlightDataModel(0);
      v115 = v144;
      v102(v144 + *(v114 + 44), v103, v82);
      v116 = v146;
      *v115 = v145;
      v115[1] = v107;
      v117 = v143;
      v115[2] = v116;
      v115[3] = v117;
      v115[4] = v110;
      v115[5] = v111;
      v118 = v127;
      v115[6] = v113;
      v115[7] = v118;
      v115[8] = v69;
      v115[9] = v70;
      (*(*(v114 - 8) + 56))(v115, 0, 1, v114);
    }
  }

  else
  {
    v139 = v58;
    for (i = 1; i != v57; ++i)
    {
      if (i >= *(v45 + 16))
      {
        __break(1u);
        goto LABEL_30;
      }

      v100 = *(v146 + 72);
      sub_29E7459AC(v59 + v100 * i, v33);
      if (*&v36[*(v20 + 20)] >= *&v33[*(v20 + 20)])
      {
        result = sub_29E745610(v33, type metadata accessor for BreathingDisturbancesData);
      }

      else
      {
        sub_29E745610(v36, type metadata accessor for BreathingDisturbancesData);
        result = sub_29E745BC0(v33, v36, type metadata accessor for BreathingDisturbancesData);
      }
    }

    v119 = v36;
    v120 = v137;
    sub_29E745BC0(v119, v137, type metadata accessor for BreathingDisturbancesData);
    v63 = v141;
    sub_29E745BC0(v120, v141, type metadata accessor for BreathingDisturbancesData);
    result = sub_29E7459AC(v59, v26);
    v64 = v138;
    v121 = v45 + v139 + v100;
    v122 = 1;
    while (v122 < *(v45 + 16))
    {
      sub_29E7459AC(v121, v23);
      if (*&v23[*(v20 + 20)] >= *&v26[*(v20 + 20)])
      {
        result = sub_29E745610(v23, type metadata accessor for BreathingDisturbancesData);
      }

      else
      {
        sub_29E745610(v26, type metadata accessor for BreathingDisturbancesData);
        result = sub_29E745BC0(v23, v26, type metadata accessor for BreathingDisturbancesData);
      }

      ++v122;
      v121 += v100;
      if (v57 == v122)
      {
        goto LABEL_8;
      }
    }

LABEL_30:
    __break(1u);
  }

  return result;
}

void sub_29E743D28(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_29E74EC98();
  v13 = sub_29E74EE08();
  v14 = [v12 hk:v13 morningIndexWithCalendar:?];

  v15 = v14 % 3;
  if (a3 <= 1u)
  {
    if (a3)
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        if (v15 < *(a4 + 16))
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }

      goto LABEL_20;
    }

    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < *(a7 + 16))
      {
        goto LABEL_15;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a3 == 2)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < *(a6 + 16))
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }

    goto LABEL_19;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 >= *(a5 + 16))
  {
LABEL_25:
    __break(1u);
    return;
  }

LABEL_15:
  v16 = qword_2A1A7D6F0;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
}

id sub_29E743EF4()
{
  v42[1] = *v0;
  v1 = sub_29E752098();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v45 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74EE68();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E66BE0C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74ED28();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v44 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = v42 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v43 = v42 - v17;
  (*(v4 + 104))(v6, *MEMORY[0x29EDB9CB8], v3);
  v18 = v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel;
  v42[2] = *(type metadata accessor for BreathingDisturbancesHighlightDateModel(0) + 24);
  v42[3] = v18;
  sub_29E74E828();
  v19 = v10;
  sub_29E74EE48();
  v20 = *(v11 + 8);
  v20(v16, v19);
  v21 = v3;
  v22 = v11;
  (*(v4 + 8))(v6, v21);
  if ((*(v11 + 48))(v9, 1, v19) == 1)
  {
    sub_29E745610(v9, sub_29E66BE0C);
    v23 = v45;
    sub_29E752058();
    v24 = sub_29E752088();
    v25 = sub_29E7546C8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v48 = v27;
      *v26 = 136446210;
      v28 = sub_29E755178();
      v30 = sub_29E6B9C90(v28, v29, &v48);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_29E5ED000, v24, v25, "[%{public}s] Could not get Highlight Description Start Date", v26, 0xCu);
      sub_29E5FECBC(v27);
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v26, -1, -1);
    }

    (*(v46 + 8))(v23, v47);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    return sub_29E74E9D8();
  }

  else
  {
    v32 = *(v11 + 32);
    v33 = v43;
    v32(v43, v9, v19);
    sub_29E74E7F8();
    v34 = sub_29E74ECB8();
    v35 = v20;
    v20(v16, v19);
    v36 = v44;
    if (v34)
    {
      sub_29E74E7F8();
    }

    else
    {
      (*(v22 + 16))(v44, v33, v19);
    }

    result = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
    if (result)
    {
      v37 = result;
      v38 = sub_29E74EC98();
      v39 = sub_29E74EC98();
      v40 = [v37 stringFromDate:v38 toDate:v39];

      v41 = sub_29E7541D8();
      v35(v36, v19);
      v35(v33, v19);
      return v41;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_29E744514()
{
  sub_29E751758();
  v1 = OBJC_IVAR____TtCC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor7Planner_signals;
  v2 = sub_29E751EA8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29E744608@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 8);
  a1[3] = ObjectType;
  a1[4] = v6;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t sub_29E74465C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor7Planner_signals;
  v4 = sub_29E751EA8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_29E7446D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29E745D6C();
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  v8[3] = swift_getObjectType();
  v8[4] = *(v6 + 8);
  v8[0] = v5;
  swift_unknownObjectRetain_n();
  sub_29E751F38();
  sub_29E751758();

  return sub_29E5FECBC(v8);
}

uint64_t sub_29E7447CC()
{
  v0 = sub_29E751ED8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E751EF8();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v5 = sub_29E751F28();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E745544(0, &qword_2A1A7BD18, MEMORY[0x29EDC34F0], MEMORY[0x29EDC9E90]);
  sub_29E751EC8();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_29E762F30;
  sub_29E751F18();
  (*(v1 + 104))(v3, *MEMORY[0x29EDC3500], v0);
  sub_29E751EE8();
  (*(v1 + 8))(v3, v0);
  sub_29E751EB8();
  return v6;
}

uint64_t sub_29E744A64(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E744EEC(&qword_2A1A7C438, type metadata accessor for BreathingDisturbancesHighlightExecutor.Planner, &unk_29E76E550);

  return MEMORY[0x2A1C64978](a1, a2, v5, v6);
}

uint64_t sub_29E744B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *v5;
  v9 = sub_29E744EEC(&qword_2A1A7C438, type metadata accessor for BreathingDisturbancesHighlightExecutor.Planner, &unk_29E76E550);

  return a5(a1, a2, v8, v9);
}

uint64_t sub_29E744BF8()
{
  sub_29E751758();

  sub_29E745610(v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel, type metadata accessor for BreathingDisturbancesHighlightDateModel);
  v1 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
  v2 = sub_29E74EE78();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_29E744CF0(uint64_t a1)
{
  result = type metadata accessor for BreathingDisturbancesHighlightDateModel(319);
  if (v2 <= 0x3F)
  {
    result = sub_29E74EE78();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_29E744DFC(uint64_t a1)
{
  result = sub_29E751EA8();
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

uint64_t sub_29E744EEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E744F34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_29E605728;

  return sub_29E74007C();
}

uint64_t sub_29E744FC0(uint64_t a1)
{
  v3 = sub_29E751EA8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + 32) profileIdentifier];
  v8 = *(v4 + 16);
  v11 = *(v1 + 16);
  v8(v6, a1, v3);
  type metadata accessor for BreathingDisturbancesHighlightExecutor.Planner(0);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v11;
  (*(v4 + 32))(v9 + OBJC_IVAR____TtCC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor7Planner_signals, v6, v3);
  swift_unknownObjectRetain();
  return v9;
}

uint64_t sub_29E74510C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = sub_29E744EEC(qword_2A1A7C370, type metadata accessor for BreathingDisturbancesHighlightExecutor, &unk_29E76E5E0);

  return MEMORY[0x2A1C64700](a1, a2, a3, v7, v8);
}

char *sub_29E74520C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v32 = a4;
  v28 = a2;
  v31 = sub_29E74ED28();
  v7 = *(v31 - 8);
  MEMORY[0x2A1C7C4A8](v31);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BreathingDisturbancesHighlightDateModel(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E74EDB8();
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E74EE78();
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v28;
  *(v4 + 2) = a1;
  *(v4 + 3) = v19;
  *(v4 + 4) = a3;
  (*(v12 + 104))(v14, *MEMORY[0x29EDB9C78], v11);
  swift_unknownObjectRetain();
  v20 = a3;
  sub_29E74EDC8();
  (*(v12 + 8))(v14, v11);
  v21 = OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar;
  (*(v16 + 32))(&v4[OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_calendar], v18, v15);
  v22 = v29;
  v24 = v31;
  v23 = v32;
  (*(v7 + 16))(v29, v32, v31);
  (*(v16 + 16))(v18, &v4[v21], v15);
  v25 = v30;
  sub_29E736A84(v22, v18, v30);
  (*(v7 + 8))(v23, v24);
  sub_29E745BC0(v25, &v4[OBJC_IVAR____TtC20SleepHealthAppPlugin38BreathingDisturbancesHighlightExecutor_dateModel], type metadata accessor for BreathingDisturbancesHighlightDateModel);
  return v4;
}

void sub_29E745544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E745610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E745670(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
LABEL_3:
      if (qword_2A1A7D6F0 == -1)
      {
        return sub_29E74E9D8();
      }

      goto LABEL_8;
    }
  }

  else if (a1)
  {
    goto LABEL_3;
  }

  if (qword_2A1A7D6F0 != -1)
  {
LABEL_8:
    swift_once();
  }

  return sub_29E74E9D8();
}

char *sub_29E745798(uint64_t a1)
{
  v2 = type metadata accessor for BreathingDisturbancesData(0);
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x29EDCA190];
  }

  v7 = objc_opt_self();
  v8 = *(v2 + 20);
  v9 = objc_opt_self();
  v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v11 = *(v3 + 72);
  v12 = MEMORY[0x29EDCA190];
  v22 = v7;
  do
  {
    sub_29E7459AC(v10, v5);
    v13 = [v7 countUnit];
    v14 = [v9 quantityWithUnit:v13 doubleValue:*&v5[v8]];

    v15 = sub_29E754A98();
    v17 = v16;
    sub_29E745610(v5, type metadata accessor for BreathingDisturbancesData);
    if ((v17 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_29E6DB82C(0, *(v12 + 2) + 1, 1, v12);
      }

      v19 = *(v12 + 2);
      v18 = *(v12 + 3);
      if (v19 >= v18 >> 1)
      {
        v12 = sub_29E6DB82C((v18 > 1), v19 + 1, 1, v12);
      }

      *(v12 + 2) = v19 + 1;
      *&v12[8 * v19 + 32] = v15;
      v7 = v22;
    }

    v10 += v11;
    --v6;
  }

  while (v6);
  return v12;
}

uint64_t sub_29E7459AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreathingDisturbancesData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E745A10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 4;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x29EDCA190];
  v4 = (a1 + 32);
  v5 = *(a1 + 16);
  do
  {
    v8 = *v4++;
    if (v8 == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E6DBF14(0, *(v3 + 16) + 1, 1);
      }

      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_29E6DBF14((v6 > 1), v7 + 1, 1);
      }

      *(v3 + 16) = v7 + 1;
      *(v3 + 8 * v7 + 32) = 1;
    }

    --v5;
  }

  while (v5);
  v9 = *(v3 + 16);

  v10 = MEMORY[0x29EDCA190];
  do
  {
    if (!*v2++)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_29E6DBF14(0, *(v10 + 16) + 1, 1);
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_29E6DBF14((v11 > 1), v12 + 1, 1);
      }

      *(v10 + 16) = v12 + 1;
      *(v10 + 8 * v12 + 32) = 0;
    }

    --v1;
  }

  while (v1);
  v14 = *(v10 + 16);

  if (v9 >= v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 3;
  }

  if (!v14)
  {
    v15 = 0;
  }

  if (v9)
  {
    return v15;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_29E745BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E745C28(uint64_t a1)
{
  if (!qword_2A1A7BDD0)
  {
    sub_29E745544(255, &qword_2A1A7BDE8, sub_29E7455A8, MEMORY[0x29EDC9C68]);
    v1 = sub_29E7544A8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7BDD0);
    }
  }
}

uint64_t sub_29E745CC0(uint64_t a1)
{
  sub_29E745C28(0);

  return sub_29E742060(a1);
}

uint64_t sub_29E745D4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E745D6C()
{
  v0 = sub_29E751E68();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  sub_29E67905C(0, &qword_2A1A7BCE0, MEMORY[0x29EDCA170] + 8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_29E764160;
  sub_29E751E58();
  sub_29E745544(0, &qword_2A1A7BD10, sub_29E745F84, MEMORY[0x29EDC9E90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E762F30;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29E764160;
  sub_29E66D198();
  *(inited + 32) = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  sub_29E6D5A64(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v2 + 56) = sub_29E750028();
  *(v2 + 64) = sub_29E744EEC(&unk_2A1A7CF40, MEMORY[0x29EDC3BE8], MEMORY[0x29EDC3BE0]);
  sub_29E5FEBF4((v2 + 32));
  sub_29E750018();
  sub_29E751E88();
  swift_allocObject();
  *(v1 + 32) = sub_29E751E78();
  return v1;
}

unint64_t sub_29E745F84()
{
  result = qword_2A1A7CEE0;
  if (!qword_2A1A7CEE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7CEE0);
  }

  return result;
}

uint64_t sub_29E745FE8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_29E746030(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_29E746094@<X0>(void *a1@<X8>)
{
  v3 = sub_29E74F7F8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == *MEMORY[0x29EDC6B20])
  {
    a1[3] = &type metadata for SleepHygieneArticleDataProvider;
    a1[4] = sub_29E6C13F8();
    result = sub_29E6C144C();
LABEL_13:
    a1[5] = result;
    return result;
  }

  if (v7 == *MEMORY[0x29EDC6B28])
  {
    a1[3] = &type metadata for SleepImportanceArticleDataProvider;
    a1[4] = sub_29E6C14A0();
    result = sub_29E6C14F4();
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x29EDC6B18])
  {
    a1[3] = &type metadata for SleepStagesArticleDataProvider;
    a1[4] = sub_29E6C1290();
    result = sub_29E6C12E4();
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x29EDC6B08])
  {
    a1[3] = &type metadata for SleepApneaArticleDataProvider;
    a1[4] = sub_29E6C15F0();
    result = sub_29E6C1644();
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x29EDC6B30])
  {
    a1[3] = &type metadata for SleepApneaNotificationArticleDataProvider;
    a1[4] = sub_29E6C1548();
    result = sub_29E6C159C();
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x29EDC6B10])
  {
    a1[3] = &type metadata for SleepScoreArticleDataProvider;
    a1[4] = sub_29E6C1698();
    result = sub_29E6C16EC();
    goto LABEL_13;
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

uint64_t sub_29E7462EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E746638(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_29E74F7F8();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_29E74F7D8();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_29E746690(v12);
    sub_29E752048();

    v17 = sub_29E752088();
    v18 = sub_29E7546A8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_29E6B9C90(0xD00000000000001ELL, 0x800000029E76E670, &v23);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_29E6B9C90(a1, a2, &v23);
      _os_log_impl(&dword_29E5ED000, v17, v18, "[%{public}s] Article identifier %{public}s could not be found", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v20, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    result = (*(v7 + 8))(v9, v6);
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    sub_29E746094(a3);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

void sub_29E746638(uint64_t a1)
{
  if (!qword_2A1859CC8)
  {
    sub_29E74F7F8();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1859CC8);
    }
  }
}

uint64_t sub_29E746690(uint64_t a1)
{
  sub_29E746638(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E74674C()
{
  ObjectType = swift_getObjectType();
  v77 = sub_29E750698();
  v74 = *(v77 - 8);
  v0 = MEMORY[0x2A1C7C4A8](v77);
  v73 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v0);
  v72 = &v63 - v2;
  sub_29E747E30(0, &qword_2A185AC88, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v70 = &v63 - v4;
  sub_29E747E30(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v79 = &v63 - v8;
  v68 = sub_29E752098();
  v67 = *(v68 - 1);
  MEMORY[0x2A1C7C4A8](v68);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29E7515A8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v71 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v69 = &v63 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v63 - v17;
  sub_29E7518B8();
  sub_29E751578();
  v21 = *(v12 + 8);
  v20 = v12 + 8;
  v19 = v21;
  v21(v18, v11);
  sub_29E601938(v82, v83);
  v22 = sub_29E751528();
  v23 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v24 = sub_29E754198();
  v25 = [v23 initWithIdentifier:v24 healthStore:v22];

  sub_29E5FECBC(v82);
  v26 = [objc_allocWithZone(MEMORY[0x29EDC6890]) initWithFeatureIdentifier:*MEMORY[0x29EDBA758] sleepStore:v25];
  sub_29E72F4DC();
  if (sub_29E754A78())
  {
    v75 = v19;
    v76 = v20;
    v65 = v11;
    sub_29E752068();
    v27 = sub_29E752088();
    v28 = sub_29E7546C8();
    v29 = os_log_type_enabled(v27, v28);
    v64 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v82[0] = v31;
      *v30 = 136446466;
      v32 = sub_29E755178();
      v34 = sub_29E6B9C90(v32, v33, v82);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      *(v30 + 14) = sub_29E6B9C90(0x2928706154646964, 0xE800000000000000, v82);
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s.%{public}s]: Presenting sleep apnea onboarding", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v31, -1, -1);
      MEMORY[0x29ED98410](v30, -1, -1);
    }

    (*(v67 + 8))(v10, v68);
    v35 = v75;
    v36 = v70;
    v37 = v25;
    sub_29E7518B8();
    sub_29E751578();
    v38 = v65;
    v35(v18, v65);
    sub_29E601938(v82, v83);
    v39 = sub_29E751528();
    v68 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v37 healthDataSource:v39];
    v70 = v37;

    sub_29E5FECBC(v82);
    sub_29E7518B8();
    v40 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
    sub_29E7477A0(&qword_2A1857618, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject, &unk_29E76E7E8);
    sub_29E7477A0(&qword_2A1857620, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject, &unk_29E76E7C0);
    sub_29E751598();
    v35(v18, v38);
    if ((*(*(v40 - 8) + 48))(v36, 1, v40) == 1)
    {
      sub_29E747E84(v36, &qword_2A185AC88, type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject);
      v41 = sub_29E74FFA8();
      (*(*(v41 - 8) + 56))(v79, 1, 1, v41);
    }

    else
    {
      v43 = sub_29E74FFA8();
      v44 = *(v43 - 8);
      v45 = v79;
      (*(v44 + 16))(v79, v36, v43);
      sub_29E747EE0(v36);
      (*(v44 + 56))(v45, 0, 1, v43);
    }

    v46 = v73;
    sub_29E6F5CC4(v79, v78);
    v47 = v69;
    sub_29E7518B8();
    sub_29E751578();
    v35(v47, v38);
    sub_29E601938(v82, v83);
    v48 = sub_29E751528();
    v49 = v71;
    sub_29E7518B8();
    sub_29E751578();
    v35(v49, v38);
    sub_29E601938(v81, v81[3]);
    v50 = v72;
    sub_29E751538();
    v51 = v74;
    v52 = v77;
    (*(v74 + 32))(v46, v50, v77);
    v53 = (*(v51 + 88))(v46, v52);
    if (v53 == *MEMORY[0x29EDC1D20])
    {
      v54 = 0;
    }

    else if (v53 == *MEMORY[0x29EDC1D68])
    {
      v54 = 6;
    }

    else if (v53 == *MEMORY[0x29EDC1D80])
    {
      v54 = 3;
    }

    else if (v53 == *MEMORY[0x29EDC1D60])
    {
      v54 = 2;
    }

    else
    {
      (*(v51 + 8))(v46, v77);
      v54 = 7;
    }

    sub_29E5FECBC(v81);
    v55 = type metadata accessor for SleepApneaOnboardingNavigationController(0);
    v56 = objc_allocWithZone(v55);
    *&v56[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
    v57 = v78;
    sub_29E6F5CC4(v78, &v56[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord]);
    v58 = v68;
    *&v56[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v68;
    *&v56[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v48;
    v56[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = v54;
    v80.receiver = v56;
    v80.super_class = v55;
    v59 = v58;
    v60 = objc_msgSendSuper2(&v80, sel_initWithNibName_bundle_, 0, 0);
    v61 = MEMORY[0x29EDC3A58];
    sub_29E747E84(v57, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    sub_29E5FECBC(v82);
    sub_29E718D68();
    sub_29E7195BC();

    [v60 setModalPresentationStyle_];
    sub_29E7518B8();
    v62 = sub_29E751588();
    v75(v18, v38);
    [v62 presentViewController:v60 animated:1 completion:0];

    return sub_29E747E84(v79, &qword_2A1A7CF50, v61);
  }

  else
  {
    sub_29E7518B8();
    sub_29E747294(v25);

    return (v19)(v18, v11);
  }
}

uint64_t sub_29E747294(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_29E7515A8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E752098();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v10 = sub_29E752088();
  v27 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v27))
  {
    v11 = swift_slowAlloc();
    v24 = v10;
    v12 = v11;
    v26 = swift_slowAlloc();
    v29 = v26;
    *v12 = 136446466;
    v13 = sub_29E755178();
    ObjectType = v6;
    v15 = sub_29E6B9C90(v13, v14, &v29);
    v25 = v7;
    v16 = v2;
    v17 = v15;

    *(v12 + 4) = v17;
    v2 = v16;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_29E6B9C90(0xD00000000000002BLL, 0x800000029E760F70, &v29);
    v18 = v24;
    _os_log_impl(&dword_29E5ED000, v24, v27, "[%{public}s.%{public}s]: Sleep tracking is not onboarded. Throwing prompt to encourage onboarding.", v12, 0x16u);
    v19 = v26;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v19, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);

    (*(v25 + 8))(v9, ObjectType);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  sub_29E751578();
  v29 = a1;
  v20 = a1;
  sub_29E7518B8();
  v21 = sub_29E751588();
  (*(v3 + 8))(v5, v2);
  sub_29E72E8D0(v21);

  return sub_29E643FF4(&v29);
}

uint64_t sub_29E7475D0(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  (*(v4 + 16))(v6, a1, v3);
  v8 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v8;
}

id sub_29E7476D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepApneaPromotionFeedItemViewActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E7477A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E7477E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_29E74FFA8();
  v19 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E748088(0, &qword_2A185ACA0, MEMORY[0x29EDC9E80]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E601938(a1, a1[3]);
  sub_29E747FD0();
  sub_29E755128();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_29E7477A0(&qword_2A1857B18, MEMORY[0x29EDC3A58], MEMORY[0x29EDC3A68]);
    sub_29E754F58();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_29E748024(v12, v17);
  }

  return sub_29E5FECBC(a1);
}

uint64_t sub_29E747A98()
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](0);
  return sub_29E755108();
}

uint64_t sub_29E747B04(uint64_t a1)
{
  sub_29E7550C8();
  MEMORY[0x29ED979F0](0);
  return sub_29E755108();
}

uint64_t sub_29E747B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x527972746E756F63 && a2 == 0xED000064726F6365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_29E755028();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_29E747BF8(uint64_t a1)
{
  v2 = sub_29E747FD0();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29E747C34(uint64_t a1)
{
  v2 = sub_29E747FD0();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29E747C88(void *a1)
{
  sub_29E748088(0, &qword_2A185ACB0, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29E601938(a1, a1[3]);
  sub_29E747FD0();
  sub_29E755138();
  sub_29E74FFA8();
  sub_29E7477A0(&qword_2A1857B68, MEMORY[0x29EDC3A58], MEMORY[0x29EDC3A60]);
  sub_29E754FB8();
  return (*(v4 + 8))(v6, v3);
}

void sub_29E747E30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E747E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E747E30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E747EE0(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E747F64(uint64_t a1)
{
  result = sub_29E74FFA8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_29E747FD0()
{
  result = qword_2A185ACA8;
  if (!qword_2A185ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACA8);
  }

  return result;
}

uint64_t sub_29E748024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepApneaPromotionActionHandlerUserDataObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E748088(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29E747FD0();
    v7 = a3(a1, &type metadata for SleepApneaPromotionActionHandlerUserDataObject.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SleepApneaPromotionActionHandlerUserDataObject.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SleepApneaPromotionActionHandlerUserDataObject.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29E7481D0()
{
  result = qword_2A185ACB8;
  if (!qword_2A185ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACB8);
  }

  return result;
}

unint64_t sub_29E748228()
{
  result = qword_2A185ACC0;
  if (!qword_2A185ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACC0);
  }

  return result;
}

unint64_t sub_29E748280()
{
  result = qword_2A185ACC8;
  if (!qword_2A185ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACC8);
  }

  return result;
}

uint64_t type metadata accessor for SleepRoomDisabledScheduleSection(uint64_t a1)
{
  result = qword_2A185ACD0;
  if (!qword_2A185ACD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E748360()
{
  v0 = sub_29E74ED88();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v12[-2] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7491E4(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  sub_29E750CA8();
  v4 = swift_allocObject();
  v11 = xmmword_29E762F30;
  *(v4 + 16) = xmmword_29E762F30;
  sub_29E693C6C(0, &qword_2A185A510, &qword_2A1856FF0, MEMORY[0x29EDC18F8], MEMORY[0x29EDC9E90]);
  v5 = swift_allocObject();
  *(v5 + 16) = v11;
  *(v5 + 56) = sub_29E750EE8();
  *(v5 + 64) = sub_29E74919C(&qword_2A1859540, MEMORY[0x29EDC23F8], MEMORY[0x29EDC23E8]);
  v6 = sub_29E5FEBF4((v5 + 32));
  sub_29E748644(v6);
  sub_29E750C78();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v12, "MutableArray<");
  HIWORD(v12[1]) = -4864;
  sub_29E74ED78();
  v7 = sub_29E74ED48();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x29ED96C20](v7, v9);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  return sub_29E750D08();
}

uint64_t sub_29E748644@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_29E751908();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v47 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F698();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v42 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x29EDC9C68];
  sub_29E7491E4(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v44 = v32 - v7;
  v8 = sub_29E750DC8();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x2A1C7C4A8](v8);
  v39 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7491E4(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v5);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v37 = v32 - v11;
  v38 = sub_29E752108();
  v36 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E7520C8();
  v14 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E752258();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752248();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E752228();
  sub_29E74E9D8();
  v33 = v20;
  sub_29E752198();
  v32[1] = "DISABLED_SLEEP_SCHEDULE_DETAIL";
  v51[3] = v17;
  v51[4] = MEMORY[0x29EDC7800];
  v21 = sub_29E5FEBF4(v51);
  v34 = v18;
  (*(v18 + 16))(v21, v20, v17);
  sub_29E7491E4(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  sub_29E752128();
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v22 = v35;
  (*(v14 + 104))(v16, *MEMORY[0x29EDC7768], v35);
  v23 = sub_29E7520D8();
  (*(*(v23 - 8) + 56))(v37, 1, 1, v23);
  sub_29E7520F8();
  sub_29E7520E8();
  (*(v36 + 8))(v13, v38);
  (*(v14 + 8))(v16, v22);
  *(swift_allocObject() + 16) = v43;
  v25 = v39;
  v24 = v40;
  *v39 = 1;
  (*(v24 + 104))(v25, *MEMORY[0x29EDC22C0], v41);
  v26 = sub_29E752178();
  (*(*(v26 - 8) + 56))(v44, 1, 1, v26);
  v28 = v45;
  v27 = v46;
  v29 = v17;
  v30 = v42;
  (*(v45 + 104))(v42, *MEMORY[0x29EDC6AD0], v46);
  sub_29E754298();
  (*(v28 + 8))(v30, v27);
  (*(v48 + 104))(v47, *MEMORY[0x29EDC2A38], v49);
  sub_29E750ED8();
  return (*(v34 + 8))(v33, v29);
}

uint64_t sub_29E748E98(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E750E78();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750E28();
  v6 = sub_29E750E68();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_29E748FC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v3 = sub_29E750458();
  swift_allocObject();
  v4 = sub_29E750438();
  a1[3] = v3;
  result = sub_29E74919C(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_29E74919C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E7491E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E749248(void *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E749300(a1);
}

uint64_t sub_29E749300(void *a1)
{
  v2 = v1;
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v40 - v9;
  sub_29E752048();
  v11 = sub_29E752088();
  v12 = sub_29E7546C8();
  v13 = os_log_type_enabled(v11, v12);
  v41 = v2;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40 = v8;
    v16 = v4;
    v17 = v5;
    v18 = v15;
    v45[0] = v15;
    *v14 = 136446210;
    v19 = sub_29E755178();
    v21 = sub_29E6B9C90(v19, v20, v45);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_29E5ED000, v11, v12, "[%{public}s] Sleep schedule off tapped (moving to full schedule edit)", v14, 0xCu);
    sub_29E5FECBC(v18);
    v22 = v18;
    v5 = v17;
    v4 = v16;
    v8 = v40;
    MEMORY[0x29ED98410](v22, -1, -1);
    MEMORY[0x29ED98410](v14, -1, -1);
  }

  v23 = *(v5 + 8);
  v23(v10, v4);
  v44 = a1;
  sub_29E6E9BB0();
  sub_29E609CF8(0, &qword_2A18569E0, MEMORY[0x29EDC6B58]);
  v24 = a1;
  if (swift_dynamicCast())
  {
    sub_29E60A040(v42, v45);
    sub_29E601938(v45, v45[3]);
    sub_29E74F8C8();
    return sub_29E5FECBC(v45);
  }

  else
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    sub_29E6093D0(v42);
    sub_29E752048();
    v26 = v24;
    v27 = sub_29E752088();
    v28 = sub_29E7546C8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45[0] = v40;
      *v29 = 136446466;
      v30 = sub_29E755178();
      v32 = sub_29E6B9C90(v30, v31, v45);

      *(v29 + 4) = v32;
      *(v29 + 12) = 2082;
      v33 = v26;
      v34 = [v33 description];
      v35 = sub_29E7541D8();
      v41 = v5;
      v37 = v36;

      v38 = sub_29E6B9C90(v35, v37, v45);

      *(v29 + 14) = v38;
      _os_log_impl(&dword_29E5ED000, v27, v28, "[%{public}s] Unable to present full schedule edit on unknown view controller: %{public}s", v29, 0x16u);
      v39 = v40;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v39, -1, -1);
      MEMORY[0x29ED98410](v29, -1, -1);
    }

    return (v23)(v8, v4);
  }
}

id sub_29E749704()
{
  sub_29E66D198();
  result = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E7497A8(uint64_t a1)
{
  v2 = sub_29E7497F8();

  return MEMORY[0x2A1C60910](a1, v2);
}

unint64_t sub_29E7497F8()
{
  result = qword_2A185ACE8;
  if (!qword_2A185ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185ACE8);
  }

  return result;
}

uint64_t sub_29E74984C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_29E7498A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for SleepTrackingOnboardingTileActionHandler(uint64_t a1)
{
  result = qword_2A1A7CB40;
  if (!qword_2A1A7CB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E7499A8(uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_29E7515A8();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7518B8();
  sub_29E751578();
  (*(v7 + 8))(v9, v6);
  sub_29E601938(v21, v21[3]);
  v10 = sub_29E751528();
  sub_29E5FECBC(v21);
  v11 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
  v12 = v10;
  v13 = sub_29E754198();
  v14 = [v11 initWithIdentifier:v13 healthStore:v12 options:a3];

  v15 = sub_29E74F4C8();
  v16 = v12;
  v17 = v14;
  v18 = sub_29E74F4B8();
  v19 = MEMORY[0x29EDC6A70];
  a4[3] = v15;
  a4[4] = v19;

  *a4 = v18;
}

uint64_t sub_29E749B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v42 = a2;
  v41 = sub_29E7515A8();
  v48 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v47 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E74F6D8();
  v43 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F4A8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v35 - v11;
  v38 = sub_29E752098();
  v37 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v15 = *(v7 + 16);
  v44 = a1;
  v15(v12, a1, v6);
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  v18 = os_log_type_enabled(v16, v17);
  v40 = v7 + 16;
  v39 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v53[0] = v35;
    *v19 = 136446466;
    *(v19 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E762110, v53);
    *(v19 + 12) = 2082;
    v15(v10, v12, v6);
    v20 = sub_29E7541F8();
    v36 = v10;
    v22 = v21;
    (*(v7 + 8))(v12, v6);
    v23 = sub_29E6B9C90(v20, v22, v53);
    v10 = v36;

    *(v19 + 14) = v23;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] Presenting sleep onboarding with context %{public}s", v19, 0x16u);
    v24 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v24, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  (*(v37 + 8))(v14, v38);
  sub_29E6D6704(&v51);
  if (v52)
  {
    sub_29E5FAEE4(&v51, v53);
    v25 = v39;
  }

  else
  {
    sub_29E7499A8(0, v53);
    v25 = v39;
    if (v52)
    {
      sub_29E74B1B8(&v51, sub_29E63DE6C);
    }
  }

  v26 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  sub_29E602E20(v53, &v51);
  v25(v10, v44, v6);
  sub_29E74B218(0, &qword_2A1859E30, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9E90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29E762F30;
  v28 = v26;
  sub_29E74F6C8();
  v50 = v27;
  sub_29E74B27C(&qword_2A1859E38, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC6AE0]);
  sub_29E72F528(0);
  sub_29E74B27C(&qword_2A1859E48, sub_29E72F528, MEMORY[0x29EDC9A70]);
  sub_29E754C58();
  sub_29E74F6E8();
  swift_allocObject();
  sub_29E74F6B8();
  v29 = v47;
  sub_29E7518B8();
  v30 = sub_29E751588();
  (*(v48 + 8))(v29, v41);
  v31 = swift_allocObject();
  v32 = v42;
  v33 = v49;
  *(v31 + 16) = v42;
  *(v31 + 24) = v33;
  sub_29E5F51BC(v32, v33);
  sub_29E74F6A8();

  return sub_29E5FECBC(v53);
}

uint64_t sub_29E74A254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v42 = a2;
  v41 = sub_29E7515A8();
  v48 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v47 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_29E74F6D8();
  v43 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v46 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F4A8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v35 - v11;
  v38 = sub_29E752098();
  v37 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v15 = *(v7 + 16);
  v44 = a1;
  v15(v12, a1, v6);
  v16 = sub_29E752088();
  v17 = sub_29E7546C8();
  v18 = os_log_type_enabled(v16, v17);
  v40 = v7 + 16;
  v39 = v15;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v53[0] = v35;
    *v19 = 136446466;
    *(v19 + 4) = sub_29E6B9C90(0xD000000000000028, 0x800000029E76EB40, v53);
    *(v19 + 12) = 2082;
    v15(v10, v12, v6);
    v20 = sub_29E7541F8();
    v36 = v10;
    v22 = v21;
    (*(v7 + 8))(v12, v6);
    v23 = sub_29E6B9C90(v20, v22, v53);
    v10 = v36;

    *(v19 + 14) = v23;
    _os_log_impl(&dword_29E5ED000, v16, v17, "[%{public}s] Presenting sleep onboarding with context %{public}s", v19, 0x16u);
    v24 = v35;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v24, -1, -1);
    MEMORY[0x29ED98410](v19, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  (*(v37 + 8))(v14, v38);
  sub_29E74A950(&v51);
  if (v52)
  {
    sub_29E5FAEE4(&v51, v53);
    v25 = v39;
  }

  else
  {
    sub_29E7499A8(0, v53);
    v25 = v39;
    if (v52)
    {
      sub_29E74B1B8(&v51, sub_29E63DE6C);
    }
  }

  v26 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  sub_29E602E20(v53, &v51);
  v25(v10, v44, v6);
  sub_29E74B218(0, &qword_2A1859E30, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9E90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29E762F30;
  v28 = v26;
  sub_29E74F6C8();
  v50 = v27;
  sub_29E74B27C(&qword_2A1859E38, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC6AE0]);
  sub_29E72F528(0);
  sub_29E74B27C(&qword_2A1859E48, sub_29E72F528, MEMORY[0x29EDC9A70]);
  sub_29E754C58();
  sub_29E74F6E8();
  swift_allocObject();
  sub_29E74F6B8();
  v29 = v47;
  sub_29E7518B8();
  v30 = sub_29E751588();
  (*(v48 + 8))(v29, v41);
  v31 = swift_allocObject();
  v32 = v42;
  v33 = v49;
  *(v31 + 16) = v42;
  *(v31 + 24) = v33;
  sub_29E5F51BC(v32, v33);
  sub_29E74F6A8();

  return sub_29E5FECBC(v53);
}

double sub_29E74A950@<D0>(uint64_t a1@<X8>)
{
  v3 = qword_2A1A7CB60;
  swift_beginAccess();
  sub_29E74B2C4(v1 + v3, &v6, sub_29E6A10C0);
  if (*(&v7 + 1) == 1)
  {
    sub_29E74B1B8(&v6, sub_29E6A10C0);
    sub_29E7499A8(0, a1);
    sub_29E74B2C4(a1, &v6, sub_29E63DE6C);
    swift_beginAccess();
    sub_29E6A12E0(&v6, v1 + v3);
    swift_endAccess();
  }

  else
  {
    result = *&v6;
    v5 = v7;
    *a1 = v6;
    *(a1 + 16) = v5;
    *(a1 + 32) = v8;
  }

  return result;
}

uint64_t sub_29E74AA64()
{
  swift_getObjectType();
  v0 = sub_29E74F488();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_29E750698();
  v34 = *(v36 - 8);
  MEMORY[0x2A1C7C4A8](v36);
  v32 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_29E7515A8();
  v4 = *(v29 - 8);
  MEMORY[0x2A1C7C4A8](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_29E74F4A8();
  v35 = *(v37 - 8);
  MEMORY[0x2A1C7C4A8](v37);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = v8;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = v16;
    v38[0] = v16;
    *v15 = 136446210;
    v18 = sub_29E755178();
    v28 = v2;
    v20 = sub_29E6B9C90(v18, v19, v38);
    v2 = v28;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Onboarding button tapped for sleep tracking", v15, 0xCu);
    sub_29E5FECBC(v17);
    v4 = v27;
    MEMORY[0x29ED98410](v17, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);

    (*(v9 + 8))(v11, v26);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v21 = *MEMORY[0x29EDC67F0];
  sub_29E7518B8();
  sub_29E751578();
  (*(v4 + 8))(v6, v29);
  sub_29E601938(v38, v38[3]);
  v22 = v32;
  sub_29E751538();
  v23 = sub_29E71237C();
  (*(v34 + 8))(v22, v36);
  [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:v21 presentation:v23];

  sub_29E5FECBC(v38);
  (*(v30 + 104))(v2, *MEMORY[0x29EDC6A68], v31);
  v24 = v33;
  sub_29E74F498();
  sub_29E74A254(v24, 0, 0);
  return (*(v35 + 8))(v24, v37);
}

uint64_t sub_29E74AF54(uint64_t a1)
{
  v3 = sub_29E7515A8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  v8 = &v7[qword_2A1A7CB60];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  *(v8 + 24) = xmmword_29E768E70;
  (*(v4 + 16))(v6, a1, v3);
  v9 = sub_29E7518C8();
  (*(v4 + 8))(a1, v3);
  return v9;
}

id sub_29E74B0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepTrackingOnboardingTileActionHandler(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E74B1B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29E74B218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E74B27C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E74B2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E74B32C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2A1C733A0](v0, 32, 7);
}

uint64_t type metadata accessor for SleepApneaEventPDFAlertsChart(uint64_t a1)
{
  result = qword_2A185ACF0;
  if (!qword_2A185ACF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E74B3E4(uint64_t a1)
{
  type metadata accessor for SleepApneaEventSummaryViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_29E74D9E0(319, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
    if (v2 <= 0x3F)
    {
      sub_29E6A85FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E74B4B0@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  sub_29E74D9E0(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v64 = &v53 - v3;
  sub_29E6AC8E0(0);
  v61 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v4);
  v60 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v58 = &v53 - v7;
  v8 = sub_29E74ED28();
  v59 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v68 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AC948(0);
  v63 = v10;
  MEMORY[0x2A1C7C4A8](v10);
  v62 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DA44(0);
  v13 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DDE0(0);
  v17 = v16;
  v67 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DF44(0);
  v69 = *(v20 - 8);
  v70 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74E240(0);
  v57 = v23;
  v56 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v25 = (&v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = v1;
  sub_29E74DAF4(0);
  sub_29E74DC88();
  sub_29E752488();
  *&v15[*(v13 + 36)] = 0;
  v26 = sub_29E74DE64();
  sub_29E753698();
  sub_29E5FACA8(v15);
  sub_29E74E048(0);
  v28 = v27;
  v72 = v13;
  v73 = v26;
  v29 = v68;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_29E74D97C(&qword_2A185AD78, sub_29E74E048, MEMORY[0x29EDB86F8]);
  sub_29E753688();
  v67[1](v19, v17);
  sub_29E74E684(0, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
  v33 = v32;
  v72 = v17;
  v73 = v28;
  v74 = OpaqueTypeConformance2;
  v75 = v31;
  v34 = swift_getOpaqueTypeConformance2();
  v35 = sub_29E74E3CC();
  v67 = v25;
  v36 = v70;
  sub_29E753678();
  v37 = v22;
  v38 = v66;
  (*(v69 + 8))(v37, v36);
  v39 = *(type metadata accessor for SleepApneaEventSummaryViewModel(0) + 20);
  sub_29E74EC68();
  sub_29E74D97C(&qword_2A1A7CFC8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
  result = sub_29E7540E8();
  if (result)
  {
    v41 = v59;
    v69 = v35;
    v55 = v34;
    v42 = *(v59 + 32);
    v54 = v33;
    v43 = v58;
    v42(v58, v29, v8);
    v44 = v61;
    (*(v41 + 16))(v43 + *(v61 + 48), v38 + v39, v8);
    v45 = v60;
    sub_29E74E464(v43, v60);
    v46 = *(v44 + 48);
    v47 = v62;
    v42(v62, v45, v8);
    v48 = *(v41 + 8);
    v48(v45 + v46, v8);
    sub_29E74E4C8(v43, v45);
    v42((v47 + *(v63 + 36)), (v45 + *(v44 + 48)), v8);
    v48(v45, v8);
    v49 = sub_29E7525D8();
    v50 = v64;
    (*(*(v49 - 8) + 56))(v64, 1, 1, v49);
    v72 = v70;
    v73 = v54;
    v74 = v55;
    v75 = v69;
    swift_getOpaqueTypeConformance2();
    sub_29E6AE1DC();
    v51 = v57;
    v52 = v67;
    sub_29E7536A8();
    sub_29E74E52C(v50);
    sub_29E74E5B8(v47);
    return (*(v56 + 8))(v52, v51);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_29E74BCB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_29E74ED28();
  v65 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v51 = v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74E684(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v69 = v50 - v6;
  v53 = sub_29E752568();
  v54 = *(v53 - 8);
  MEMORY[0x2A1C7C4A8](v53);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74DBF0(0);
  v58 = v9;
  v59 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v52 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6AD088(0);
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = MEMORY[0x2A1C7C4A8](v11);
  v62 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v61 = v50 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v56 = v50 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v68 = v50 - v18;
  sub_29E727BD0(0);
  v60 = v19;
  v57 = *(v19 - 8);
  v20 = MEMORY[0x2A1C7C4A8](v19);
  v67 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v20);
  v70 = v50 - v22;
  sub_29E7544C8();
  v55 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71 = *(a1 + *(type metadata accessor for SleepApneaEventPDFAlertsChart(0) + 20));
  sub_29E74D9E0(0, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
  sub_29E727CEC(0);
  sub_29E74DB68();
  sub_29E727DB4(255);
  v24 = v23;
  v25 = sub_29E7524B8();

  *&v75 = v25;
  *(&v75 + 1) = MEMORY[0x29EDB8698];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v75 = v24;
  *(&v75 + 1) = MEMORY[0x29EDBCA98];
  *&v76 = OpaqueTypeConformance2;
  *(&v76 + 1) = MEMORY[0x29EDBCA88];
  swift_getOpaqueTypeConformance2();
  sub_29E74D97C(&qword_2A185ADA0, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, &unk_29E76463C);
  sub_29E753B18();
  sub_29E752F58();
  type metadata accessor for SleepApneaEventSummaryViewModel(0);
  v27 = v51;
  sub_29E74EC68();
  sub_29E7523D8();

  (*(v65 + 8))(v27, v3);
  v28 = v8;
  sub_29E752558();
  if (qword_2A18561F8 != -1)
  {
    swift_once();
  }

  v65 = v3;
  v29 = qword_2A1869268;
  *&v75 = qword_2A1869268;

  v30 = MEMORY[0x29EDBCA98];
  v31 = MEMORY[0x29EDB86E0];
  v32 = MEMORY[0x29EDBCA88];
  v33 = v52;
  v34 = v53;
  sub_29E7522E8();
  v54 = *(v54 + 8);
  (v54)(v28, v34);
  v51 = v28;
  if (qword_2A1856200 != -1)
  {
    swift_once();
  }

  v75 = xmmword_2A1869270;
  v76 = *&qword_2A1869280;
  v77 = qword_2A1869290;
  v71 = v34;
  v72 = v30;
  v73 = v31;
  v74 = v32;
  v50[1] = swift_getOpaqueTypeConformance2();
  v35 = v58;
  sub_29E752318();
  v59 = *(v59 + 8);
  (v59)(v33, v35);
  sub_29E752F58();
  sub_29E7523D8();

  v36 = v51;
  sub_29E752558();
  v71 = v29;
  sub_29E7522E8();

  (v54)(v36, v34);
  v37 = v56;
  sub_29E752318();
  (v59)(v33, v35);
  v38 = v57;
  v39 = v67;
  v40 = v60;
  (*(v57 + 16))(v67, v70, v60);
  v71 = v39;
  v42 = v63;
  v41 = v64;
  v43 = *(v63 + 16);
  v44 = v61;
  v45 = v68;
  v43(v61, v68, v64);
  v72 = v44;
  v46 = v62;
  v43(v62, v37, v41);
  v73 = v46;
  sub_29E71E560(&v71, v66);
  v47 = *(v42 + 8);
  v47(v37, v41);
  v47(v45, v41);
  v48 = *(v38 + 8);
  v48(v70, v40);
  v47(v46, v41);
  v47(v44, v41);
  v48(v67, v40);
}

uint64_t sub_29E74C6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v34 = a2;
  v2 = sub_29E752F78();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v31 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74E6F0(0, &qword_2A1A7C0D0, MEMORY[0x29EDC9AD8], MEMORY[0x29EDB8798], MEMORY[0x29EDB8620]);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v26 = v23 - v5;
  sub_29E74E684(0, &qword_2A1A7C0D8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB8538], MEMORY[0x29EDB8620]);
  v7 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v23[1] = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v28 = sub_29E7524B8();
  v24 = *(v28 - 8);
  MEMORY[0x2A1C7C4A8](v28);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E727DB4(0);
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v23[0] = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v27 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  type metadata accessor for SleepApneaEventPDFAlertsChartPoint(0);
  sub_29E74ED28();
  sub_29E7523D8();

  sub_29E752F58();
  sub_29E7523D8();

  sub_29E752F58();
  v35 = 0x3FE0000000000000;
  sub_29E7523D8();

  sub_29E7524A8();
  v14 = v31;
  v13 = v32;
  v15 = v33;
  (*(v32 + 104))(v31, *MEMORY[0x29EDBC6F8], v33);
  v16 = MEMORY[0x29EDB8698];
  v17 = v23[0];
  v18 = v28;
  sub_29E7522D8();
  (*(v13 + 8))(v14, v15);
  (*(v24 + 8))(v10, v18);
  v19 = [objc_opt_self() hk_respiratoryKeyColor];
  v20 = sub_29E7538E8();
  v36 = v16;
  v37 = v20;
  v35 = v18;
  swift_getOpaqueTypeConformance2();
  v21 = v30;
  sub_29E7522E8();

  (*(v29 + 8))(v17, v21);
}

uint64_t sub_29E74CC84()
{
  v0 = sub_29E752368();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E752418();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752358();
  sub_29E752358();
  sub_29E74E110(0);
  sub_29E74E184();
  sub_29E7525A8();
}

uint64_t sub_29E74CE10@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  sub_29E74E614(0);
  v37 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E752458();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752478();
  MEMORY[0x2A1C7C4A8](v5 - 8);
  sub_29E6AD728(0);
  v34 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30 - v10;
  v12 = sub_29E7522A8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v30 - v17;
  sub_29E7544C8();
  v35 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v32 = v18;
  sub_29E752298();
  sub_29E752468();
  sub_29E752448();
  sub_29E74E6F0(0, &qword_2A1858DF0, MEMORY[0x29EDBCA18], MEMORY[0x29EDBC3E0], MEMORY[0x29EDBC558]);
  sub_29E6AD7B8();
  sub_29E7523B8();
  v19 = *(v13 + 16);
  v19(v16, v18, v12);
  v30 = v11;
  v31 = v16;
  v20 = *(v7 + 16);
  v21 = v34;
  v20(v39, v11, v34);
  v22 = v36;
  v19(v36, v16, v12);
  sub_29E74D97C(&qword_2A1858E20, sub_29E6AD728, MEMORY[0x29EDB8618]);
  v23 = v37;
  v24 = *(v37 + 48);
  v25 = v39;
  v20(&v22[v24], v39, v21);
  v26 = v38;
  (*(v13 + 32))(v38, v22, v12);
  (*(v7 + 32))(v26 + *(v23 + 48), &v22[v24], v21);
  v27 = *(v7 + 8);
  v27(v30, v21);
  v28 = *(v13 + 8);
  v28(v32, v12);
  v27(v25, v21);
  v28(v31, v12);
}

double sub_29E74D308@<D0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752F58();
  v2 = sub_29E7535E8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_29E753C48();
  sub_29E752AB8();

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 48) = v11;
  result = *&v12;
  *(a1 + 64) = v12;
  return result;
}

uint64_t sub_29E74D428()
{
  v0 = sub_29E752398();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v1 = sub_29E752418();
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v2 = sub_29E752368();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752358();
  sub_29E752408();
  sub_29E752388();
  sub_29E7522A8();
  sub_29E752588();
}

uint64_t sub_29E74D5E8()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752A58();
  sub_29E752298();
}

uint64_t sub_29E74D6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29E74D97C(&qword_2A185A3D8, type metadata accessor for SleepApneaEventPDFAlertsChart, &unk_29E76ECC0);

  return MEMORY[0x2A1C635D0](a1, a2, a3, v6);
}

uint64_t sub_29E74D780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_29E74D97C(&qword_2A185A3D8, type metadata accessor for SleepApneaEventPDFAlertsChart, &unk_29E76ECC0);

  return a4(a1, a2, v6);
}

uint64_t sub_29E74D810(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = sub_29E74D97C(&qword_2A185AD08, type metadata accessor for SleepApneaEventPDFAlertsChart, &unk_29E76EC80);
  *v3 = v1;
  v3[1] = sub_29E60350C;

  return MEMORY[0x2A1C61D30](a1, v4);
}

uint64_t sub_29E74D97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E74D9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E74DA44(uint64_t a1)
{
  if (!qword_2A185AD10)
  {
    sub_29E74DAAC(255);
    sub_29E74DD84(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AD10);
    }
  }
}

void sub_29E74DAF4(uint64_t a1)
{
  if (!qword_2A185AD20)
  {
    sub_29E727BD0(255);
    sub_29E6AD088(255);
    v1 = sub_29E7522B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AD20);
    }
  }
}

unint64_t sub_29E74DB68()
{
  result = qword_2A185A770;
  if (!qword_2A185A770)
  {
    sub_29E74D9E0(255, &qword_2A185A758, type metadata accessor for SleepApneaEventPDFAlertsChartPoint, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A770);
  }

  return result;
}

void sub_29E74DBF0(uint64_t a1)
{
  if (!qword_2A1858DA0)
  {
    sub_29E752568();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1858DA0);
    }
  }
}

unint64_t sub_29E74DC88()
{
  result = qword_2A185AD28;
  if (!qword_2A185AD28)
  {
    sub_29E74DAF4(255);
    sub_29E727E38();
    sub_29E74DBF0(255);
    sub_29E752568();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD28);
  }

  return result;
}

void sub_29E74DD84(uint64_t a1)
{
  if (!qword_2A185AD30)
  {
    sub_29E62A510();
    v1 = sub_29E752A88();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AD30);
    }
  }
}

void sub_29E74DDE0(uint64_t a1)
{
  if (!qword_2A185AD38)
  {
    sub_29E74DA44(255);
    sub_29E74DE64();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185AD38);
    }
  }
}

unint64_t sub_29E74DE64()
{
  result = qword_2A185AD40;
  if (!qword_2A185AD40)
  {
    sub_29E74DA44(255);
    sub_29E74D97C(&qword_2A185AD48, sub_29E74DAAC, MEMORY[0x29EDB8690]);
    sub_29E74D97C(&qword_2A185AD50, sub_29E74DD84, MEMORY[0x29EDBC3B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD40);
  }

  return result;
}

void sub_29E74DF44(uint64_t a1)
{
  if (!qword_2A185AD58)
  {
    sub_29E74DDE0(255);
    sub_29E74E048(255);
    sub_29E74DA44(255);
    sub_29E74DE64();
    swift_getOpaqueTypeConformance2();
    sub_29E74D97C(&qword_2A185AD78, sub_29E74E048, MEMORY[0x29EDB86F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185AD58);
    }
  }
}

void sub_29E74E090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E74E110(uint64_t a1)
{
  if (!qword_2A185AD68)
  {
    sub_29E7522A8();
    sub_29E6AD728(255);
    v1 = sub_29E7522B8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185AD68);
    }
  }
}

unint64_t sub_29E74E184()
{
  result = qword_2A185AD70;
  if (!qword_2A185AD70)
  {
    sub_29E74E110(255);
    sub_29E74D97C(&qword_2A1858E20, sub_29E6AD728, MEMORY[0x29EDB8618]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD70);
  }

  return result;
}

void sub_29E74E240(uint64_t a1)
{
  if (!qword_2A185AD80)
  {
    sub_29E74DF44(255);
    sub_29E74E684(255, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    sub_29E74DDE0(255);
    sub_29E74E048(255);
    sub_29E74DA44(255);
    sub_29E74DE64();
    swift_getOpaqueTypeConformance2();
    sub_29E74D97C(&qword_2A185AD78, sub_29E74E048, MEMORY[0x29EDB86F8]);
    swift_getOpaqueTypeConformance2();
    sub_29E74E3CC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185AD80);
    }
  }
}

unint64_t sub_29E74E3CC()
{
  result = qword_2A185AD90;
  if (!qword_2A185AD90)
  {
    sub_29E74E684(255, &qword_2A185AD88, MEMORY[0x29EDB8550], MEMORY[0x29EDB8548], MEMORY[0x29EDB86F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185AD90);
  }

  return result;
}

uint64_t sub_29E74E464(uint64_t a1, uint64_t a2)
{
  sub_29E6AC8E0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E74E4C8(uint64_t a1, uint64_t a2)
{
  sub_29E6AC8E0(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E74E52C(uint64_t a1)
{
  sub_29E74D9E0(0, &qword_2A1A7C090, MEMORY[0x29EDB8710], MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E74E5B8(uint64_t a1)
{
  sub_29E6AC948(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E74E614(uint64_t a1)
{
  if (!qword_2A185AD98)
  {
    sub_29E7522A8();
    sub_29E6AD728(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185AD98);
    }
  }
}

void sub_29E74E684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_29E74E6F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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