uint64_t sub_18E17FB50()
{
  sub_18E15D468();
  v3 = v2;
  sub_18E15A7FC();
  *v4 = v3;
  v5 = *v1;
  sub_18E159064();
  *v6 = v5;
  *(v3 + 656) = v0;

  sub_18E158EC4((v3 + 208));
  if (v0)
  {
  }

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E17FC80()
{
  sub_18E16BBD0(v0 + 240, v0 + 272);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 640);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E19EB8C();
    v2 = v14;
  }

  v3 = *(v2 + 16);
  if (v3 >= *(v2 + 24) >> 1)
  {
    sub_18E19EB8C();
    v2 = v15;
  }

  sub_18E158EC4((v0 + 240));
  *(v2 + 16) = v3 + 1;
  sub_18E177BE0((v0 + 272), (v2 + 32 * v3 + 32));
  v4 = *(v0 + 632) + 1;
  *(v0 + 640) = v2;
  *(v0 + 632) = v4;
  result = *(v0 + 616);
  if (v4 == *(v0 + 624))
  {
    v6 = *(v0 + 608);
    v7 = *(v0 + 472);

    v7[3] = v6;
    *v7 = v2;
    sub_18E15A7EC();

    return v8();
  }

  else if (v4 >= *(result + 16))
  {
    __break(1u);
  }

  else
  {
    sub_18E16BBD0(result + 32 * v4 + 32, v0 + 208);
    swift_task_alloc();
    sub_18E15B77C();
    *(v0 + 648) = v9;
    *v9 = v10;
    v11 = sub_18E1595D0(v9);

    return sub_18E17F258(v11, v12, v13);
  }

  return result;
}

uint64_t sub_18E17FE0C()
{
  sub_18E15A288();

  sub_18E1594CC();

  return v0();
}

uint64_t sub_18E17FE68()
{
  sub_18E15A288();

  sub_18E158EC4((v0 + 336));
  sub_18E1594CC();

  return v1();
}

uint64_t static Generable.decode(data:sanitizerWithConfiguration:)()
{
  sub_18E15A288();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v0[14] = v5;
  v0[15] = v6;
  v7 = sub_18E1A7260();
  v0[20] = v7;
  v0[21] = *(v7 - 8);
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  sub_18E161880(&qword_1EABD0B38, &qword_18E1AC688);
  v0[24] = swift_task_alloc();
  v0[25] = type metadata accessor for StringResponseSanitizerWithConfiguration(0);
  v0[26] = swift_task_alloc();
  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18E180024()
{
  sub_18E1A7280();
  v2 = v0[24];
  v3 = v0[25];
  sub_18E18056C(v0[17], v2);
  v4 = sub_18E15D690(v2, 1, v3);
  if (v4 == 1)
  {
    sub_18E1805DC(v0[24]);
    v5 = v0[22];
    v6 = v0[23];
    v7 = v0[20];
    v8 = v0[21];
    sub_18E16BBD0((v0 + 2), (v0 + 6));
    sub_18E1A7250();
    (*(v8 + 16))(v5, v6, v7);
    sub_18E1A7270();
    v12 = sub_18E15A858();
    v13(v12);
    sub_18E158EC4(v0 + 2);

    sub_18E15A7EC();

    return v14();
  }

  else
  {
    sub_18E180644(v0[24], v0[26]);
    swift_task_alloc();
    sub_18E15B77C();
    v0[27] = v9;
    *v9 = v10;
    v9[1] = sub_18E180258;
    v11 = v0[26];

    return sub_18E17F258((v0 + 10), (v0 + 2), v11);
  }
}

uint64_t sub_18E180258()
{
  sub_18E15A288();
  sub_18E15D468();
  sub_18E15A7FC();
  *v3 = v2;
  v4 = *v1;
  sub_18E159064();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_18E159FD4();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18E180354()
{
  sub_18E1806A8(*(v0 + 208));
  sub_18E158EC4((v0 + 16));
  sub_18E177BE0((v0 + 80), (v0 + 16));
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  sub_18E16BBD0(v0 + 16, v0 + 48);
  sub_18E1A7250();
  (*(v5 + 16))(v2, v3, v4);
  sub_18E1A7270();
  if (v1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 184), *(v0 + 160));
    sub_18E158EC4((v0 + 16));

    sub_18E1594CC();
  }

  else
  {
    v7 = sub_18E15A858();
    v8(v7);
    sub_18E158EC4((v0 + 16));

    sub_18E15A7EC();
  }

  return v6();
}

uint64_t sub_18E1804D4()
{
  sub_18E1806A8(*(v0 + 208));
  sub_18E158EC4((v0 + 16));

  sub_18E1594CC();

  return v1();
}

uint64_t sub_18E18056C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E161880(&qword_1EABD0B38, &qword_18E1AC688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E1805DC(uint64_t a1)
{
  v2 = sub_18E161880(&qword_1EABD0B38, &qword_18E1AC688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18E180644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringResponseSanitizerWithConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18E1806A8(uint64_t a1)
{
  v2 = type metadata accessor for StringResponseSanitizerWithConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_18E180704@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_18E159728(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_18E16BBD0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_18E180768()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9BD8);
  sub_18E1592FC(v0, qword_1ED8D9BD8);
  return sub_18E1A7410();
}

uint64_t sub_18E1807F0()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D99D8);
  sub_18E1592FC(v0, qword_1ED8D99D8);
  return sub_18E1A7410();
}

uint64_t sub_18E180878()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D99B8);
  sub_18E1592FC(v0, qword_1ED8D99B8);
  return sub_18E1A7410();
}

uint64_t sub_18E1808DC()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9BB8);
  sub_18E1592FC(v0, qword_1ED8D9BB8);
  return sub_18E1A7410();
}

uint64_t sub_18E180964()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9998);
  sub_18E1592FC(v0, qword_1ED8D9998);
  return sub_18E1A7410();
}

uint64_t sub_18E1809EC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_18E1A7400();
  v7 = sub_18E1592FC(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_18E180A84()
{
  v0 = sub_18E1A7400();
  sub_18E16BD84(v0, qword_1ED8D9978);
  sub_18E1592FC(v0, qword_1ED8D9978);
  return sub_18E1A7410();
}

void *GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  v106 = a2;
  v103 = a3;
  v99 = sub_18E1A71C0();
  sub_18E159050();
  v97 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_18E15A808();
  v96 = v7 - v6;
  v8 = sub_18E1A71F0();
  sub_18E159050();
  v100 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15A808();
  v98 = v13 - v12;
  v14 = sub_18E161880(&qword_1EABD0B50, &qword_18E1AC6D0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v94 - v16;
  v18 = sub_18E1A73F0();
  sub_18E159050();
  v101 = v19;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v95 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v94 - v25;
  v27 = sub_18E1A7400();
  sub_18E159050();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  sub_18E15A808();
  v34 = v33 - v32;
  if (qword_1ED8D9BD0 != -1)
  {
    swift_once();
  }

  v35 = sub_18E1592FC(v27, qword_1ED8D9BD8);
  v104 = v29;
  v105 = v34;
  (*(v29 + 16))(v34, v35, v27);
  if (qword_1ED8D99B0 != -1)
  {
    swift_once();
  }

  sub_18E1592FC(v27, qword_1ED8D99B8);
  v36 = v109;
  sub_18E1A7440();
  if (LOBYTE(v107[0]) != 2 && (v107[0] & 1) != 0)
  {
    (*(v104 + 8))(v105, v27);
    sub_18E18208C(v107);
    goto LABEL_26;
  }

  v94 = v8;
  v102 = v27;
  sub_18E15AA6C();
  sub_18E182094(v37, v36, MEMORY[0x1E69C6500]);
  sub_18E15DA04(qword_1ED8D99F8);
  sub_18E1A7440();
  if (sub_18E15D690(v17, 1, v18) == 1)
  {
    sub_18E178150(v17, &qword_1EABD0B50, &qword_18E1AC6D0);
    sub_18E1814E4();
    sub_18E181538();
    sub_18E1A7440();
    memcpy(v107, __src, 0x88uLL);
    if (sub_18E18158C(v107) == 1)
    {
      if (qword_1ED8DA268 != -1)
      {
        sub_18E1591C0(&qword_1ED8DA268);
      }

      v38 = sub_18E1A7360();
      sub_18E1592FC(v38, qword_1ED8DA270);
      v39 = sub_18E1A7340();
      v40 = sub_18E1A7730();
      if (os_log_type_enabled(v39, v40))
      {
        *sub_18E15BCEC() = 0;
        sub_18E15A074(&dword_18E157000, v41, v42, "GenerativeConfigurationProtocol: stringRenderedPromptSanitizer set to use defaults.");
        sub_18E1590E4();
      }

      v43 = type metadata accessor for CachedSafetyModelsWrapper();
      v44 = sub_18E15B80C(v43);
      v45 = type metadata accessor for CachedSafetyModels();
      v46 = sub_18E15B80C(v45);
      sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
      sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
      sub_18E15A160();
      v47 = sub_18E1A7490();
      v48 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
      v49 = sub_18E15A434(v48);
      *(v49 + 24) = 0;
      *(v49 + 16) = v47;
      *(v46 + 16) = v49;
      *(v44 + 16) = v46;
      v50 = type metadata accessor for ModelManagerSessionWrapper();
      v51 = sub_18E15B80C(v50);
      v52 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
      v53 = sub_18E15A434(v52);
      v54 = 0;
      *(v53 + 24) = 0;
      *(v53 + 16) = 0;
      *(v51 + 16) = v53;
      v55 = xmmword_18E1AC6B0;
      v56 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v61 = xmmword_18E1AC6C0;
    }

    else
    {
      v44 = v107[15];
      v51 = v107[16];
      v55 = sub_18E15A874();
    }

    goto LABEL_19;
  }

  v62 = v101;
  (*(v101 + 32))(v26, v17, v18);
  v63 = sub_18E1A7460();
  v64 = sub_18E1A73E0();
  sub_18E180704(v64, v65, v63, __src);

  if (*(&__src[1] + 1))
  {
    v66 = swift_dynamicCast();
    v67 = v94;
    if (v66)
    {
      (*(v62 + 8))(v26, v18);
      v55 = sub_18E15A874();
      v44 = v107[15];
      v51 = v107[16];
LABEL_19:
      __src[0] = v55;
      LOBYTE(__src[1]) = v54;
      *(&__src[1] + 8) = v61;
      *(&__src[2] + 8) = v56;
      *(&__src[3] + 8) = v57;
      *(&__src[4] + 8) = v58;
      *(&__src[5] + 8) = v59;
      *(&__src[6] + 8) = v60;
      *(&__src[7] + 1) = v44;
      *&__src[8] = v51;
      if (qword_1ED8D99D0 != -1)
      {
        swift_once();
      }

      v68 = v102;
      sub_18E1592FC(v102, qword_1ED8D99D8);
      sub_18E161880(&qword_1EABD0B58, &qword_18E1AC6D8);
      sub_18E1A7420();
      v69 = v107[0];
      if (v107[0])
      {
        v70 = v107[1];
        v71 = sub_18E15AB98();
        v73 = v68;
      }

      else
      {
        v74 = sub_18E18E478();
        if (!v74)
        {
          if (qword_1ED8DA268 != -1)
          {
            sub_18E1591C0(&qword_1ED8DA268);
          }

          v85 = sub_18E1A7360();
          sub_18E1592FC(v85, qword_1ED8DA270);
          v86 = sub_18E1A7340();
          v87 = sub_18E1A7720();
          v88 = os_log_type_enabled(v86, v87);
          v89 = v103;
          if (v88)
          {
            *sub_18E15BCEC() = 0;
            sub_18E15A074(&dword_18E157000, v90, v91, "GenerativeConfigurationProtocol: stringRenderedPromptSanitizer set to nil. Could not find a StringRenderedPromptSanitizerRunner.");
            sub_18E1590E4();
          }

          sub_18E182038(__src);

          v92 = sub_18E15AB98();
          v93(v92, v102);
          sub_18E18208C(v107);
          v76 = v89;
          return memcpy(v76, v107, 0x98uLL);
        }

        v69 = v74;
        v70 = v75;
        v71 = sub_18E15AB98();
        v73 = v102;
      }

      v72(v71, v73);
      memcpy(v107, __src, 0x88uLL);
      v107[17] = v69;
      v107[18] = v70;
      nullsub_1();
LABEL_26:
      v76 = v103;
      return memcpy(v76, v107, 0x98uLL);
    }
  }

  else
  {
    sub_18E178150(__src, &qword_1EABD0960, &qword_18E1AB550);
    v67 = v94;
  }

  (*(v62 + 16))(v95, v26, v18);
  v78 = v96;
  sub_18E1A71B0();
  v79 = v62;
  v80 = v97;
  v81 = v99;
  (*(v97 + 104))(v78, *MEMORY[0x1E69A0A08], v99);
  v82 = v98;
  sub_18E1A71D0();
  (*(v80 + 8))(v78, v81);
  sub_18E1A7210();
  sub_18E15D0E0();
  sub_18E182094(v83, v84, MEMORY[0x1E69A0A80]);
  swift_allocError();
  sub_18E1A7200();
  (*(v100 + 8))(v82, v67);
  swift_willThrow();
  (*(v79 + 8))(v26, v18);
  return (*(v104 + 8))(v105, v102);
}

unint64_t sub_18E1814E4()
{
  result = qword_1ED8D9AA8;
  if (!qword_1ED8D9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9AA8);
  }

  return result;
}

unint64_t sub_18E181538()
{
  result = qword_1ED8D9AB0;
  if (!qword_1ED8D9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9AB0);
  }

  return result;
}

uint64_t sub_18E18158C(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18E1815C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v6 = sub_18E1A7400();
  sub_18E1592FC(v6, a4);
  return sub_18E1A7450();
}

uint64_t GenerativeConfigurationProtocol.stringResponseSanitizer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v99 = a1;
  v100 = a2;
  v96 = a3;
  v90 = sub_18E1A71C0();
  sub_18E159050();
  v88 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15A808();
  v87 = v8 - v7;
  v92 = sub_18E1A71F0();
  sub_18E159050();
  v91 = v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15A808();
  v89 = v13 - v12;
  v14 = sub_18E161880(&qword_1EABD0B50, &qword_18E1AC6D0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v86 - v16;
  v18 = sub_18E1A73F0();
  sub_18E159050();
  *&v94 = v19;
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v86 - v26;
  v28 = sub_18E1A7400();
  sub_18E159050();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  sub_18E15A808();
  v35 = v34 - v33;
  if (qword_1ED8D9BB0 != -1)
  {
    swift_once();
  }

  v36 = sub_18E1592FC(v28, qword_1ED8D9BB8);
  v97 = v30;
  v98 = v35;
  (*(v30 + 16))(v35, v36, v28);
  if (qword_1ED8D9970 != -1)
  {
    swift_once();
  }

  sub_18E1592FC(v28, qword_1ED8D9978);
  v37 = v108;
  sub_18E1A7440();
  if (v103 == 2 || (v103 & 1) == 0)
  {
    v95 = v28;
    v93 = v3;
    sub_18E15AA6C();
    sub_18E182094(v39, v37, MEMORY[0x1E69C6500]);
    sub_18E15DA04(qword_1ED8D99F8);
    sub_18E1A7440();
    if (sub_18E15D690(v17, 1, v18) == 1)
    {
      sub_18E178150(v17, &qword_1EABD0B50, &qword_18E1AC6D0);
      sub_18E1820DC();
      sub_18E182130();
      sub_18E1A7440();
      v40 = v106;
      if (v106)
      {
        v41 = v107;
        v42 = v105;
        v43 = v104;
        v44 = v103;
      }

      else
      {
        if (qword_1ED8DA268 != -1)
        {
          sub_18E1591C0(&qword_1ED8DA268);
        }

        v49 = sub_18E1A7360();
        sub_18E1592FC(v49, qword_1ED8DA270);
        v50 = sub_18E1A7340();
        v51 = sub_18E1A7730();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = sub_18E15BCEC();
          *v52 = 0;
          _os_log_impl(&dword_18E157000, v50, v51, "GenerativeConfigurationProtocol: stringResponseSanitizer set to use defaults", v52, 2u);
          sub_18E1590E4();
        }

        v53 = type metadata accessor for CachedSafetyModelsWrapper();
        v40 = sub_18E15B80C(v53);
        v54 = type metadata accessor for CachedSafetyModels();
        v55 = sub_18E15B80C(v54);
        sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
        sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
        sub_18E15A160();
        v56 = sub_18E1A7490();
        v57 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
        v58 = sub_18E15A434(v57);
        *(v58 + 24) = 0;
        *(v58 + 16) = v56;
        *(v55 + 16) = v58;
        *(v40 + 16) = v55;
        v59 = type metadata accessor for ModelManagerSessionWrapper();
        v41 = sub_18E15B80C(v59);
        v60 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
        v61 = sub_18E15A434(v60);
        v43 = 0;
        v42 = 0;
        *(v61 + 24) = 0;
        *(v61 + 16) = 0;
        *(v41 + 16) = v61;
        v44 = xmmword_18E1AC6B0;
      }

      v94 = v44;
LABEL_20:
      if (qword_1ED8D9990 != -1)
      {
        swift_once();
      }

      v62 = v95;
      sub_18E1592FC(v95, qword_1ED8D9998);
      sub_18E161880(&qword_1EABD0B68, &qword_18E1AC6E0);
      sub_18E1A7420();
      v63 = v103;
      if (v103)
      {
        v64 = *(&v103 + 1);
        v65 = sub_18E15A2E0();
        v67 = v62;
      }

      else
      {
        v68 = sub_18E19298C();
        if (!v68)
        {
          if (qword_1ED8DA268 != -1)
          {
            sub_18E1591C0(&qword_1ED8DA268);
          }

          v79 = sub_18E1A7360();
          sub_18E1592FC(v79, qword_1ED8DA270);
          v80 = sub_18E1A7340();
          v81 = sub_18E1A7720();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = sub_18E15BCEC();
            *v82 = 0;
            _os_log_impl(&dword_18E157000, v80, v81, "GenerativeConfigurationProtocol: stringResponseSanitizer set to nil. Could not find a StringResponseSanitizerRunner.", v82, 2u);
            sub_18E1590E4();
          }

          sub_18E15F0C0(v94, *(&v94 + 1), v43 & 1);

          v83 = sub_18E15A2E0();
          result = v84(v83, v95);
          goto LABEL_34;
        }

        v63 = v68;
        v64 = v69;
        v65 = sub_18E15A2E0();
        v67 = v95;
      }

      result = v66(v65, v67);
      LOBYTE(v103) = v43 & 1;
      v70 = v96;
      *v96 = v94;
      *(v70 + 16) = v43 & 1;
      *(v70 + 3) = v42;
      *(v70 + 4) = v40;
      *(v70 + 5) = v41;
      *(v70 + 6) = v63;
      *(v70 + 7) = v64;
      return result;
    }

    v45 = v94;
    (*(v94 + 32))(v27, v17, v18);
    v46 = sub_18E1A7460();
    v47 = sub_18E1A73E0();
    sub_18E180704(v47, v48, v46, &v101);

    if (v102)
    {
      if (swift_dynamicCast())
      {
        (*(v45 + 8))(v27, v18);
        v94 = v103;
        v43 = v104;
        v42 = v105;
        v40 = v106;
        v41 = v107;
        goto LABEL_20;
      }
    }

    else
    {
      sub_18E178150(&v101, &qword_1EABD0960, &qword_18E1AB550);
    }

    v71 = v97;
    v72 = v95;
    (*(v45 + 16))(v24, v27, v18);
    v73 = v87;
    sub_18E1A71B0();
    v74 = v88;
    v75 = v90;
    (*(v88 + 104))(v73, *MEMORY[0x1E69A0A08], v90);
    v76 = v89;
    sub_18E1A71D0();
    (*(v74 + 8))(v73, v75);
    sub_18E1A7210();
    sub_18E15D0E0();
    sub_18E182094(v77, v78, MEMORY[0x1E69A0A80]);
    swift_allocError();
    sub_18E1A7200();
    (*(v91 + 8))(v76, v92);
    swift_willThrow();
    (*(v45 + 8))(v27, v18);
    return (*(v71 + 8))(v98, v72);
  }

  result = (*(v97 + 8))(v98, v28);
LABEL_34:
  v85 = v96;
  v96[2] = 0u;
  v85[3] = 0u;
  *v85 = 0u;
  v85[1] = 0u;
  return result;
}

uint64_t sub_18E182094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18E1820DC()
{
  result = qword_1ED8D9AB8;
  if (!qword_1ED8D9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D9AB8);
  }

  return result;
}

unint64_t sub_18E182130()
{
  result = qword_1ED8D9AC0[0];
  if (!qword_1ED8D9AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D9AC0);
  }

  return result;
}

uint64_t LanguageRecognizer.init(supportedLanguageCodes:topK:tokenThreshold:includeEmojis:samples:checkOVSIfUnderTokenThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_18E1A7390();
  swift_allocObject();
  result = sub_18E1A7380();
  v15 = MEMORY[0x1E69E7CC0];
  *a7 = a1;
  *(a7 + 8) = v15;
  *(a7 + 16) = a2;
  *(a7 + 24) = a3;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5;
  *(a7 + 48) = a6;
  *(a7 + 56) = result;
  return result;
}

uint64_t LanguageRecognizer.init(supportedLanguageCodes:preferredLanguages:topK:tokenThreshold:includeEmojis:samples:checkOVSIfUnderTokenThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  sub_18E1A7390();
  swift_allocObject();
  result = sub_18E1A7380();
  *(a8 + 56) = result;
  return result;
}

unint64_t sub_18E1822A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_18E1A79E0();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_18E18230C(char a1)
{
  result = 1265659764;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      return result;
    case 3:
      result = 0x7268546E656B6F74;
      break;
    case 4:
      result = 0x456564756C636E69;
      break;
    case 5:
      result = 0x73656C706D6173;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x706552746E657665;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

unint64_t sub_18E182444@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18E1822A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_18E182474@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18E18230C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18E1824BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1822F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E1824E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E1822F4();
  *a1 = result;
  return result;
}

void *sub_18E18250C@<X0>(void *a1@<X8>)
{
  result = sub_18E1822FC();
  *a1 = result;
  return result;
}

uint64_t sub_18E182534(uint64_t a1)
{
  v2 = sub_18E1828E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E182570(uint64_t a1)
{
  v2 = sub_18E1828E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LanguageRecognizer.encode(to:)(void *a1)
{
  v4 = sub_18E161880(&qword_1EABD0B70, &qword_18E1AC6F0);
  sub_18E159050();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[3];
  v24 = v1[2];
  v25 = v11;
  v23 = v13;
  v22 = *(v1 + 32);
  v21 = v1[5];
  v20 = *(v1 + 48);
  v19 = v1[7];
  sub_18E158E00(a1, a1[3]);
  sub_18E1828E4();

  sub_18E1A7CD0();
  v27 = v12;
  v26 = 0;
  sub_18E161880(&qword_1EABD0B80, &qword_18E1AC6F8);
  sub_18E182DFC(&qword_1EABD0B88, &qword_1EABD0B90, MEMORY[0x1E6969618]);
  sub_18E1A7B30();
  if (v2)
  {
  }

  else
  {

    v27 = v25;
    v26 = 1;
    sub_18E161880(&qword_1EABD0B98, &qword_18E1AC700);
    v14 = sub_18E182E88(&qword_1EABD0BA0, &qword_1EABD0BA8, MEMORY[0x1E6969728]);
    sub_18E15ABA8(v14);
    sub_18E15A2F0(2);
    sub_18E15D77C();
    sub_18E1A7B20();
    sub_18E15A2F0(3);
    sub_18E15D77C();
    sub_18E1A7B20();
    sub_18E15A2F0(4);
    sub_18E15D77C();
    sub_18E1A7B10();
    sub_18E15A2F0(5);
    sub_18E15D77C();
    sub_18E1A7B20();
    sub_18E15A2F0(6);
    sub_18E15D77C();
    sub_18E1A7B10();
    v27 = v19;
    v26 = 7;
    sub_18E1A7390();
    sub_18E1591E0();
    v17 = sub_18E18400C(v15, v16, MEMORY[0x1E69A0ED0]);
    sub_18E15ABA8(v17);
  }

  return (*(v6 + 8))(v10, v4);
}

unint64_t sub_18E1828E4()
{
  result = qword_1EABD0B78;
  if (!qword_1EABD0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B78);
  }

  return result;
}

uint64_t LanguageRecognizer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18E161880(&qword_1EABD0BB0, &qword_18E1AC708);
  sub_18E159050();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E158E00(a1, a1[3]);
  sub_18E1828E4();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E161880(&qword_1EABD0B80, &qword_18E1AC6F8);
  sub_18E182DFC(&qword_1EABD0BB8, &qword_1EABD0BC0, MEMORY[0x1E6969630]);
  sub_18E15A898();
  sub_18E1A7A80();
  v8 = v32[0];
  sub_18E161880(&qword_1EABD0B98, &qword_18E1AC700);
  LOBYTE(v28) = 1;
  sub_18E182E88(&qword_1EABD0BC8, &qword_1EABD0BD0, MEMORY[0x1E6969740]);
  sub_18E15A898();
  sub_18E1A7A30();
  if (v32[0])
  {
    v9 = v32[0];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_18E1595FC(2);
  v42 = sub_18E1A7A70();
  sub_18E1595FC(3);
  v27 = sub_18E1A7A70();
  sub_18E1595FC(4);
  v25 = sub_18E1A7A10();
  sub_18E1595FC(5);
  v10 = sub_18E1A7A20();
  v12 = 5;
  if ((v11 & 1) == 0)
  {
    v12 = v10;
  }

  v24 = v12;
  sub_18E1595FC(6);
  v22 = sub_18E1A7A10();
  sub_18E1A7390();
  LOBYTE(v32[0]) = 7;
  sub_18E1591E0();
  sub_18E18400C(v13, v14, MEMORY[0x1E69A0EE8]);
  sub_18E1A7A30();
  v21 = v25 & 1;
  v26 = (v22 == 2) | v22 & 1;
  if (v39)
  {
    v23 = v39;
  }

  else
  {
    swift_allocObject();
    v23 = sub_18E1A7380();
  }

  v15 = sub_18E15D0F8();
  v16(v15);
  *&v28 = v8;
  *(&v28 + 1) = v9;
  v17 = v42;
  *&v29 = v42;
  *(&v29 + 1) = v27;
  LOBYTE(v30) = v21;
  *(&v30 + 1) = v41[0];
  DWORD1(v30) = *(v41 + 3);
  *(&v30 + 1) = v24;
  LOBYTE(v31) = v26;
  *(&v31 + 1) = *v40;
  DWORD1(v31) = *&v40[3];
  *(&v31 + 1) = v23;
  v18 = v28;
  v19 = v29;
  v20 = v31;
  a2[2] = v30;
  a2[3] = v20;
  *a2 = v18;
  a2[1] = v19;
  sub_18E182F14(&v28, v32);
  sub_18E158EC4(a1);
  v32[0] = v8;
  v32[1] = v9;
  v32[2] = v17;
  v32[3] = v27;
  v33 = v21;
  *v34 = v41[0];
  *&v34[3] = *(v41 + 3);
  v35 = v24;
  v36 = v26;
  *v37 = *v40;
  *&v37[3] = *&v40[3];
  v38 = v23;
  return sub_18E182F4C(v32);
}

uint64_t sub_18E182DFC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0B80, &qword_18E1AC6F8);
    sub_18E18400C(a2, MEMORY[0x1E6969610], a3);
    result = sub_18E15D4A4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E182E88(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0B98, &qword_18E1AC700);
    sub_18E18400C(a2, MEMORY[0x1E6969720], a3);
    result = sub_18E15D4A4();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static LanguageRecognizer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((sub_18E1830A0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_18E15AA84();
  if ((sub_18E1834F8(v2, v6, v12, v13, MEMORY[0x1E6969720], MEMORY[0x1E6969738]) & 1) == 0)
  {
    return 0;
  }

  v14 = v3 == v7 && v4 == v8;
  if (!v14 || ((v5 ^ v9) & 1) != 0 || v17 != v10 || ((v16 ^ v11) & 1) != 0)
  {
    return 0;
  }

  sub_18E1A7390();
  return sub_18E1A7370() & 1;
}

uint64_t sub_18E1830A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E1A6E00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v46 = &v35 - v12;
  result = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v35 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a1 + 56);
  v36 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v23 = (v5 + 8);
  v37 = v22;
  v38 = &v35 - v15;
  v39 = v5;
  v40 = a1;
  if (v21)
  {
    while (2)
    {
      v24 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
LABEL_13:
      v27 = *(a1 + 48);
      v43 = *(v5 + 72);
      v28 = *(v5 + 16);
      v28(v16, v27 + v43 * (v24 | (v17 << 6)), v4);
      (*(v5 + 32))(v46, v16, v4);
      sub_18E18400C(&qword_1EABD0C30, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
      v29 = sub_18E1A74C0();
      v30 = a2;
      v31 = ~(-1 << *(a2 + 32));
      do
      {
        v32 = v29 & v31;
        if (((*(v44 + (((v29 & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v31)) & 1) == 0)
        {
          (*v23)(v46, v4);
          return 0;
        }

        v28(v9, *(v30 + 48) + v32 * v43, v4);
        sub_18E18400C(&qword_1EABCFE60, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v33 = sub_18E1A74F0();
        v34 = *v23;
        (*v23)(v9, v4);
        v29 = v32 + 1;
      }

      while ((v33 & 1) == 0);
      result = (v34)(v46, v4);
      a2 = v30;
      v5 = v39;
      a1 = v40;
      v22 = v37;
      v16 = v38;
      v21 = v41;
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      return 1;
    }

    v26 = *(v36 + 8 * v17);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v41 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E183424(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_18E1A7B90() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_18E1834F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v8 = a3(0);
  sub_18E159050();
  v10 = v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v32 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    v29 = 0;
    return v29 & 1;
  }

  if (!v19 || a1 == a2)
  {
    v29 = 1;
    return v29 & 1;
  }

  v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v24 = *(v10 + 16);
  v23 = v10 + 16;
  v25 = (v23 - 8);
  v33 = *(v23 + 56);
  v34 = v24;
  while (1)
  {
    v26 = v34;
    result = (v34)(v18, v21, v8);
    if (!v19)
    {
      break;
    }

    v28 = v23;
    v26(v15, v22, v8);
    sub_18E18400C(v35, v36, v37);
    v29 = sub_18E1A74F0();
    v30 = *v25;
    (*v25)(v15, v8);
    v30(v18, v8);
    if (v29)
    {
      v22 += v33;
      v21 += v33;
      v31 = v19-- == 1;
      v23 = v28;
      if (!v31)
      {
        continue;
      }
    }

    return v29 & 1;
  }

  __break(1u);
  return result;
}

uint64_t LanguageRecognizer.hash(into:)(const void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  sub_18E183A98(a1, *v1);
  sub_18E15AA84();
  sub_18E1839A4(a1, v3, v7, v8, MEMORY[0x1E6969720], MEMORY[0x1E6969730]);
  MEMORY[0x193ACB0A0](v4);
  MEMORY[0x193ACB0A0](v5);
  sub_18E1A7C80();
  MEMORY[0x193ACB0A0](v6);
  sub_18E1A7C80();
  sub_18E1A7390();
  sub_18E1591E0();
  sub_18E18400C(v9, v10, MEMORY[0x1E69A0ED8]);
  return sub_18E1A74D0();
}

uint64_t LanguageRecognizer.hashValue.getter()
{
  sub_18E1A7C60();
  LanguageRecognizer.hash(into:)(v1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E183844(uint64_t a1)
{
  sub_18E1A7C60();
  LanguageRecognizer.hash(into:)(v2);
  return sub_18E1A7CA0();
}

void sub_18E1838B4()
{
  sub_18E15A094();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_18E1A75C0();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_18E183964()
{
  sub_18E15A094();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x193ACB0A0](v3);
      --v0;
    }

    while (v0);
  }
}

uint64_t sub_18E1839A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v11 = *(a2 + 16);
  result = MEMORY[0x193ACB0A0](v11);
  if (v11)
  {
    v13 = *(a3(0) - 8);
    v14 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    sub_18E18400C(a4, a5, a6);
    do
    {
      result = sub_18E1A74D0();
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_18E183A98(const void *a1, uint64_t a2)
{
  v4 = sub_18E1A6E00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v9 = sub_18E1A7CA0();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v20[3] = v5 + 16;
  v20[4] = v9;
  v20[2] = v5 + 8;

  v15 = 0;
  for (i = 0; v12; v15 ^= v19)
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v5 + 16))(v8, *(a2 + 48) + *(v5 + 72) * (v18 | (v17 << 6)), v4);
    sub_18E18400C(&qword_1EABD0C30, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
    v19 = sub_18E1A74C0();
    result = (*(v5 + 8))(v8, v4);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x193ACB0A0](v15);
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E183CC0()
{
  result = qword_1EABD0BE8;
  if (!qword_1EABD0BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0BE8);
  }

  return result;
}

__n128 sub_18E183D14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LanguageRecognizer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LanguageRecognizer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E183EA0()
{
  result = qword_1EABD0BF0;
  if (!qword_1EABD0BF0)
  {
    sub_18E169A64(&qword_1EABD0BF8, qword_18E1AC890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0BF0);
  }

  return result;
}

unint64_t sub_18E183F08()
{
  result = qword_1EABD0C00;
  if (!qword_1EABD0C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C00);
  }

  return result;
}

unint64_t sub_18E183F60()
{
  result = qword_1EABD0C08;
  if (!qword_1EABD0C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C08);
  }

  return result;
}

unint64_t sub_18E183FB8()
{
  result = qword_1EABD0C10;
  if (!qword_1EABD0C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C10);
  }

  return result;
}

uint64_t sub_18E18400C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LanguageScriptValidator.eventReporter.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t LanguageScriptValidator.init(locales:isEmojiAllowed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  sub_18E1A7390();
  swift_allocObject();
  result = sub_18E1A7380();
  *(a3 + 16) = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LanguageScriptValidator.validate(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;
  v5 = *(v1 + 8);
  v6 = v1[2];
  if (sub_18E184FAC())
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    (*(v7 + 8))(countAndFlagsBits, object, &v8);
  }
}

uint64_t static LanguageScriptValidator.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = sub_18E1834B0();
  result = 0;
  if ((v6 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        sub_18E1A7390();
        sub_18E159614();
        sub_18E184C70(v8, v9, MEMORY[0x1E69A0EE0]);

        v10 = sub_18E1A74F0();

        if (v10)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_18E1842A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C61636F6CLL && a2 == 0xE700000000000000;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x41696A6F6D457369 && a2 == 0xEE006465776F6C6CLL;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x706552746E657665 && a2 == 0xED0000726574726FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_18E1843C4(char a1)
{
  if (!a1)
  {
    return 0x73656C61636F6CLL;
  }

  if (a1 == 1)
  {
    return 0x41696A6F6D457369;
  }

  return 0x706552746E657665;
}

uint64_t sub_18E18443C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1842A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E184464(uint64_t a1)
{
  v2 = sub_18E1846F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E1844A0(uint64_t a1)
{
  v2 = sub_18E1846F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LanguageScriptValidator.encode(to:)(void *a1)
{
  v3 = sub_18E161880(&qword_1EABD0C48, &qword_18E1AC9F0);
  sub_18E159050();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - v8;
  v10 = *v1;
  v17 = *(v1 + 8);
  v16 = v1[2];
  sub_18E158E00(a1, a1[3]);
  v11 = sub_18E1846F8();

  sub_18E1A7CD0();
  v19 = v10;
  v18 = 0;
  sub_18E161880(&qword_1EABD0C58, &qword_18E1AC9F8);
  sub_18E184BD4(&qword_1EABD0C60, &qword_1EABD0C68, MEMORY[0x1E6969778], MEMORY[0x1E69E6300]);
  sub_18E15D78C();
  sub_18E1A7B30();

  if (!v11)
  {
    v12 = v16;
    LOBYTE(v19) = 1;
    sub_18E1A7B10();
    v19 = v12;
    v18 = 2;
    sub_18E1A7390();
    sub_18E159614();
    sub_18E184C70(v13, v14, MEMORY[0x1E69A0ED0]);
    sub_18E15D78C();
    sub_18E1A7AE0();
  }

  return (*(v5 + 8))(v9, v3);
}

unint64_t sub_18E1846F8()
{
  result = qword_1EABD0C50;
  if (!qword_1EABD0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C50);
  }

  return result;
}

uint64_t LanguageScriptValidator.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_18E18391C();
  sub_18E1A7C80();
  if (!v2)
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();
  sub_18E1A7390();
  sub_18E159614();
  sub_18E184C70(v3, v4, MEMORY[0x1E69A0ED8]);
  return sub_18E1A74D0();
}

uint64_t LanguageScriptValidator.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_18E1A7C60();
  sub_18E18391C();
  sub_18E1A7C80();
  sub_18E1A7C80();
  if (v1)
  {
    sub_18E1A7390();
    sub_18E159614();
    sub_18E184C70(v2, v3, MEMORY[0x1E69A0ED8]);
    sub_18E1A74D0();
  }

  return sub_18E1A7CA0();
}

uint64_t LanguageScriptValidator.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18E161880(&qword_1EABD0C70, &qword_18E1ACA00);
  sub_18E159050();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E158E00(a1, a1[3]);
  sub_18E1846F8();
  sub_18E1A7CC0();
  if (v2)
  {
    return sub_18E158EC4(a1);
  }

  sub_18E161880(&qword_1EABD0C58, &qword_18E1AC9F8);
  sub_18E184BD4(&qword_1EABD0C78, &qword_1EABD0C80, MEMORY[0x1E6969790], MEMORY[0x1E69E6330]);
  sub_18E1591F8();
  sub_18E1A7A80();
  v7 = v13;
  LOBYTE(v13) = 1;
  v14 = sub_18E1A7A60() & 1;
  sub_18E1A7390();
  sub_18E159614();
  sub_18E184C70(v8, v9, MEMORY[0x1E69A0EE8]);
  sub_18E1591F8();
  sub_18E1A7A30();
  v10 = sub_18E159514();
  v11(v10);
  *a2 = v7;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13;

  sub_18E158EC4(a1);
}

uint64_t sub_18E184B48(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v6 = v2;
  v7 = v3;
  sub_18E1A7C60();
  LanguageScriptValidator.hash(into:)(v5);
  return sub_18E1A7CA0();
}

uint64_t sub_18E184BD4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0C58, &qword_18E1AC9F8);
    sub_18E184C70(a2, MEMORY[0x1E6969770], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E184C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18E184CBC()
{
  result = qword_1EABD0C88;
  if (!qword_1EABD0C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C88);
  }

  return result;
}

uint64_t sub_18E184D10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_18E184D50(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for LanguageScriptValidator.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E184E80()
{
  result = qword_1EABD0C90;
  if (!qword_1EABD0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C90);
  }

  return result;
}

unint64_t sub_18E184ED8()
{
  result = qword_1EABD0C98;
  if (!qword_1EABD0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0C98);
  }

  return result;
}

unint64_t sub_18E184F30()
{
  result = qword_1EABD0CA0;
  if (!qword_1EABD0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CA0);
  }

  return result;
}

uint64_t sub_18E184FAC()
{
  v0 = sub_18E1A7500();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  return sub_18E185020(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for LanguageScriptValidatorRunnerProtocol);
}

uint64_t sub_18E185020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t dispatch thunk of static RenderedPromptSanitizerRunnerProtocol.scrub(_:configuration:sanitizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_18E15DC38;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t static ResponseSanitizerRunnerProtocol.scrub<A>(_:configuration:sanitizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  (*(a6 + 48))(a1, sub_18E185354, v14, a2, a3, a5, a7, a4, a6);
}

uint64_t sub_18E1852AC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);

  return sub_18E159EBC(a4, 0, 1, AssociatedTypeWitness);
}

uint64_t dispatch thunk of static ResponseSanitizerRunnerProtocol.scrub(_:configuration:sanitizer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_18E15DC38;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v7;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  v8 = *(type metadata accessor for StringResponseSanitizerWithConfiguration(0) + 20);
  sub_18E185EEC(a2, a3 + v8, type metadata accessor for StringResponseSanitizerRunnerConfiguration);
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = *(a3 + 32);
  v13 = *(a3 + 40);
  v18 = *a3;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v14 = *(v6 + 8);
  v15 = *(v14 + 56);
  sub_18E159D24(v18, v9, v10);

  v15(a3 + v8, &v18, 0, v5, v14);
  sub_18E185F54(a2, type metadata accessor for StringResponseSanitizerRunnerConfiguration);
  sub_18E15F0C0(v18, v19, v20);
}

uint64_t StringResponseSanitizerWithConfiguration.scrub<A>(_:elementToContent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[1];
  v21[0] = *v5;
  v21[1] = v11;
  v12 = v5[3];
  v14 = *v5;
  v13 = v5[1];
  v21[2] = v5[2];
  v21[3] = v12;
  v17 = v14;
  v18 = v13;
  v19 = v5[2];
  v20 = v5[3];
  v15 = *(type metadata accessor for StringResponseSanitizerWithConfiguration(0) + 20);
  sub_18E1856FC(v21, v22);
  StringResponseSanitizerWithRunner.scrub<A>(_:elementToContent:configuration:)(a1, a2, a3, v5 + v15, a4, a5);
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v19;
  v22[3] = v20;
  return sub_18E185758(v22);
}

uint64_t StringResponseSanitizerWithConfiguration._sanitize(_:)()
{
  sub_18E15A288();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_18E1A70C0();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18E18586C, 0, 0);
}

uint64_t sub_18E18586C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v2 + 16);
  v4(v1, *(v0 + 24), v3);
  v5 = (*(v2 + 88))(v1, v3);
  *(v0 + 104) = v5;
  if (v5 == *MEMORY[0x1E69A0898])
  {
    v6 = *(v0 + 56);
    (*(*(v0 + 48) + 96))(v6, *(v0 + 40));
    v7 = *v6;
    v8 = v6[1];
    *(v0 + 64) = v8;
    v9 = swift_task_alloc();
    *(v0 + 72) = v9;
    *v9 = v0;
    v9[1] = sub_18E185A0C;

    return StringResponseSanitizerWithConfiguration.scrub(_:)(v7, v8);
  }

  else
  {
    v11 = *(v0 + 40);
    v13 = *(v0 + 16);
    v12 = *(v0 + 24);
    (*(*(v0 + 48) + 8))(*(v0 + 56), v11);
    v4(v13, v12, v11);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_18E185A0C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  sub_18E159064();
  *v8 = v7;
  v6[10] = v2;

  if (v2)
  {
    v9 = sub_18E185BC4;
  }

  else
  {

    v6[11] = a2;
    v6[12] = a1;
    v9 = sub_18E185B40;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_18E185B40()
{
  sub_18E15A288();
  v1 = v0[11];
  v2 = v0[6];
  v3 = v0[2];
  *v3 = v0[12];
  v3[1] = v1;
  (*(v2 + 104))();

  v4 = v0[1];

  return v4();
}

uint64_t sub_18E185BC4()
{
  sub_18E15A288();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18E185C2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E185CD4;

  return StringResponseSanitizerWithConfiguration._sanitize(_:)();
}

uint64_t sub_18E185CD4()
{
  sub_18E15A288();
  v1 = *v0;
  sub_18E159064();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = __src[17];
  v6 = __src[18];
  memcpy(a3, __src, 0x88uLL);
  a3[17] = v5;
  a3[18] = v6;
  v7 = *(type metadata accessor for StringRenderedPromptSanitizerWithConfiguration(0) + 20);
  sub_18E185EEC(a2, a3 + v7, type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration);
  memcpy(__dst, a3, sizeof(__dst));
  memcpy(__srca, a3, sizeof(__srca));
  v8 = *(v6 + 8);
  v9 = *(v8 + 48);
  sub_18E178FF8(__dst, v13);
  v9(a3 + v7, __srca, 0, v5, v8);
  sub_18E185F54(a2, type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration);
  memcpy(v13, __srca, sizeof(v13));
  return sub_18E182038(v13);
}

uint64_t sub_18E185EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18E185F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StringRenderedPromptSanitizerWithConfiguration.scrub(_:)(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  return sub_18E159130();
}

uint64_t sub_18E185FD0()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  memcpy(v0 + 2, v1, 0x98uLL);
  v4 = *(type metadata accessor for StringRenderedPromptSanitizerWithConfiguration(0) + 20);
  v5 = v0[19];
  v6 = v0[20];
  sub_18E1862B8((v0 + 2), (v0 + 21));
  v0[93] = v3;
  v0[94] = v2;
  memcpy(v0 + 40, v0 + 2, 0x88uLL);
  v7 = *(v6 + 8);
  v10 = (*(v7 + 40) + **(v7 + 40));
  v8 = swift_task_alloc();
  v0[98] = v8;
  *v8 = v0;
  v8[1] = sub_18E18615C;

  return v10(v0 + 91, v0 + 93, &v1[v4], v0 + 40, v5, v7);
}

uint64_t sub_18E18615C()
{
  sub_18E15A288();
  v2 = *v1;
  sub_18E159064();
  *v3 = v2;
  v2[99] = v0;

  if (v0)
  {
    memcpy(v2 + 57, v2 + 40, 0x88uLL);
    sub_18E182038((v2 + 57));
    v4 = sub_18E1862A0;
  }

  else
  {
    memcpy(v2 + 74, v2 + 40, 0x88uLL);
    sub_18E182038((v2 + 74));
    v4 = sub_18E186294;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t StringRenderedPromptSanitizerWithConfiguration.useCaseIdentifier.getter()
{
  v1 = v0 + *(type metadata accessor for StringRenderedPromptSanitizerWithConfiguration(0) + 20);
  v2 = *(v1 + *(type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration(0) + 20));

  return v2;
}

uint64_t sub_18E1863CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_18E186474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18E15FF58(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_18E1864A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18E15FFA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_18E1864D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E15FF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E186500@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18E17A4FC();
  *a1 = result;
  return result;
}

void *sub_18E186528@<X0>(void *a1@<X8>)
{
  result = sub_18E186444();
  *a1 = result;
  return result;
}

uint64_t sub_18E186550(uint64_t a1)
{
  v2 = sub_18E186718();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18658C(uint64_t a1)
{
  v2 = sub_18E186718();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SensitiveContentSettings.Sanitizer.SanitizerBackendType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_18E159F44();
  v27 = v26;
  v28 = sub_18E161880(&qword_1EABD0CA8, "\bx");
  sub_18E159050();
  v30 = v29;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v31, v32);
  sub_18E15A114();
  v33 = *v24;
  sub_18E159D74(v27);
  sub_18E186718();
  sub_18E15A8D0();
  sub_18E1A7CD0();
  switch(v33)
  {
    case 3:
      break;
    default:
      sub_18E1A7B10();
      break;
  }

  (*(v30 + 8))(v25, v28);
  sub_18E15A29C();
}

unint64_t sub_18E186718()
{
  result = qword_1EABD0CB0;
  if (!qword_1EABD0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CB0);
  }

  return result;
}

void SensitiveContentSettings.Sanitizer.SanitizerBackendType.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v39 = v4;
  v34 = sub_18E1A71F0();
  sub_18E159050();
  v36 = v5;
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_18E15A808();
  v35 = v9 - v8;
  v41 = sub_18E1A78C0();
  sub_18E159050();
  v38 = v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E15A808();
  v15 = v14 - v13;
  v16 = sub_18E1A78B0();
  sub_18E159050();
  v37 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15A808();
  v22 = v21 - v20;
  v23 = sub_18E161880(&qword_1EABD0CB8, &qword_18E1ACDC8);
  sub_18E159050();
  v40 = v24;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_18E15A114();
  sub_18E159D74(v3);
  sub_18E186718();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v0)
  {
    v27 = 0;
    if ((sub_18E1A7AB0() & 1) == 0)
    {
      if (sub_18E15921C(1))
      {
        if (qword_1ED8DA268 != -1)
        {
          swift_once();
        }

        v28 = sub_18E1A7360();
        sub_18E1592FC(v28, qword_1ED8DA270);
        v29 = sub_18E1A7340();
        v30 = sub_18E1A7710();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&dword_18E157000, v29, v30, "TextModerationLM has been removed. Decoding result is a no-op", v31, 2u);
          MEMORY[0x193ACB8D0](v31, -1, -1);
        }

        v27 = 3;
      }

      else if (sub_18E15921C(2))
      {
        v27 = 1;
      }

      else
      {
        if ((sub_18E15921C(3) & 1) == 0)
        {
          sub_18E158E00(v3, v3[3]);
          sub_18E1A7CB0();
          sub_18E1A7870();
          MEMORY[0x193ACAA20](0xD000000000000039, 0x800000018E1B2B40);
          v32 = MEMORY[0x193ACAAB0](&unk_1F0101EC0, &type metadata for SensitiveContentSettings.Sanitizer.SanitizerBackendType.CodingKeys);
          MEMORY[0x193ACAA20](v32);

          sub_18E1A78A0();
          (*(v37 + 16))(v15, v22, v16);
          (*(v38 + 104))(v15, *MEMORY[0x1E69E6B00], v41);
          swift_allocError();
          (*(v38 + 16))(v33, v15, v41);
          sub_18E1A71E0();
          (*(v36 + 104))(v35, *MEMORY[0x1E69A0A28], v34);
          sub_18E1A7210();
          sub_18E186CD4();
          swift_allocError();
          sub_18E1A7200();
          (*(v36 + 8))(v35, v34);
          swift_willThrow();
          (*(v38 + 8))(v15, v41);
          (*(v37 + 8))(v22, v16);
          (*(v40 + 8))(v1, v23);
          goto LABEL_14;
        }

        v27 = 2;
      }
    }

    (*(v40 + 8))(v1, v23);
    *v39 = v27;
  }

LABEL_14:
  sub_18E158EC4(v3);
  sub_18E15A29C();
}

unint64_t sub_18E186CD4()
{
  result = qword_1EABD0B60;
  if (!qword_1EABD0B60)
  {
    sub_18E1A7210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0B60);
  }

  return result;
}

uint64_t sub_18E186DC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x800000018E1B2B80 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E186E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E186DC0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E186E8C(uint64_t a1)
{
  v2 = sub_18E187730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E186EC8(uint64_t a1)
{
  v2 = sub_18E187730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SensitiveContentSettings.Sanitizer.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E159F44();
  v25 = v24;
  v26 = sub_18E161880(&qword_1EABD0CC0, &qword_18E1ACDD0);
  sub_18E159050();
  v28 = v27;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_18E15D458();
  sub_18E158E00(v25, v25[3]);
  sub_18E187730();
  sub_18E1A7CD0();
  sub_18E187784();
  sub_18E1A7B30();
  (*(v28 + 8))(v23, v26);
  sub_18E15A29C();
}

uint64_t _s16GenerativeModels24SensitiveContentSettingsV9SanitizerV0F11BackendTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_18E1A7C60();
  MEMORY[0x193ACB0A0](v1);
  return sub_18E1A7CA0();
}

void SensitiveContentSettings.Sanitizer.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_18E159F44();
  v15 = v14;
  v17 = v16;
  sub_18E161880(&qword_1EABD0CD8, &qword_18E1ACDD8);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15D458();
  sub_18E159D74(v15);
  sub_18E187730();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v13)
  {
    sub_18E1877D8();
    sub_18E1A7A80();
    v20 = sub_18E15C048();
    v21(v20);
    *v17 = a13;
  }

  sub_18E158EC4(v15);
  sub_18E15A29C();
}

uint64_t SensitiveContentSettings.init(locale:sanitizers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_18E1A6F50();
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a3 = a2;
  return result;
}

uint64_t sub_18E187248(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657A6974696E6173 && a2 == 0xEA00000000007372)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E1872E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E187248(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E187314(uint64_t a1)
{
  v2 = sub_18E18782C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E187350(uint64_t a1)
{
  v2 = sub_18E18782C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SensitiveContentSettings.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E159F44();
  v22 = v21;
  v23 = sub_18E161880(&qword_1EABD0CE8, &qword_18E1ACDE0);
  sub_18E159050();
  v25 = v24;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v26, v27);
  sub_18E15A114();
  sub_18E159D74(v22);
  sub_18E18782C();

  sub_18E15A8D0();
  sub_18E1A7CD0();
  sub_18E161880(&qword_1EABD0CF0, &qword_18E1ACDE8);
  sub_18E1878D4(&qword_1EABCFC80, sub_18E187880, MEMORY[0x1E69E6300]);
  sub_18E1A7B30();

  (*(v25 + 8))(v20, v23);
  sub_18E15A29C();
}

uint64_t SensitiveContentSettings.hashValue.getter()
{
  sub_18E1A7C60();
  sub_18E183964();
  return sub_18E1A7CA0();
}

void SensitiveContentSettings.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  sub_18E161880(&qword_1EABD0CF8, &qword_18E1ACDF0);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E15D458();
  sub_18E159D74(v12);
  sub_18E18782C();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v10)
  {
    sub_18E161880(&qword_1EABD0CF0, &qword_18E1ACDE8);
    sub_18E1878D4(&qword_1EABD0D00, sub_18E18794C, MEMORY[0x1E69E6330]);
    sub_18E1A7A80();
    v17 = sub_18E15C048();
    v18(v17);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

uint64_t sub_18E1876B8(uint64_t a1)
{
  sub_18E1A7C60();
  sub_18E183964();
  return sub_18E1A7CA0();
}

unint64_t sub_18E187730()
{
  result = qword_1EABD0CC8;
  if (!qword_1EABD0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CC8);
  }

  return result;
}

unint64_t sub_18E187784()
{
  result = qword_1EABD0CD0;
  if (!qword_1EABD0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CD0);
  }

  return result;
}

unint64_t sub_18E1877D8()
{
  result = qword_1EABD0CE0;
  if (!qword_1EABD0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0CE0);
  }

  return result;
}

unint64_t sub_18E18782C()
{
  result = qword_1EABCFDF8;
  if (!qword_1EABCFDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDF8);
  }

  return result;
}

unint64_t sub_18E187880()
{
  result = qword_1EABCFDE0;
  if (!qword_1EABCFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDE0);
  }

  return result;
}

uint64_t sub_18E1878D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(&qword_1EABD0CF0, &qword_18E1ACDE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18E18794C()
{
  result = qword_1EABD0D08;
  if (!qword_1EABD0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D08);
  }

  return result;
}

unint64_t sub_18E1879A4()
{
  result = qword_1EABD0D10;
  if (!qword_1EABD0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D10);
  }

  return result;
}

unint64_t sub_18E1879FC()
{
  result = qword_1EABD0D18;
  if (!qword_1EABD0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D18);
  }

  return result;
}

unint64_t sub_18E187A54()
{
  result = qword_1EABD0198;
  if (!qword_1EABD0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0198);
  }

  return result;
}

_BYTE *sub_18E187AD0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_18E187B7C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E187C5C()
{
  result = qword_1EABD0D20;
  if (!qword_1EABD0D20)
  {
    sub_18E169A64(&qword_1EABD0D28, qword_18E1AD128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D20);
  }

  return result;
}

unint64_t sub_18E187CC4()
{
  result = qword_1EABD0D30;
  if (!qword_1EABD0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D30);
  }

  return result;
}

unint64_t sub_18E187D1C()
{
  result = qword_1EABD0D38;
  if (!qword_1EABD0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D38);
  }

  return result;
}

unint64_t sub_18E187D74()
{
  result = qword_1EABD0D40;
  if (!qword_1EABD0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D40);
  }

  return result;
}

unint64_t sub_18E187DCC()
{
  result = qword_1EABCFDE8;
  if (!qword_1EABCFDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDE8);
  }

  return result;
}

unint64_t sub_18E187E24()
{
  result = qword_1EABCFDF0;
  if (!qword_1EABCFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDF0);
  }

  return result;
}

unint64_t sub_18E187E7C()
{
  result = qword_1EABD0D48;
  if (!qword_1EABD0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D48);
  }

  return result;
}

unint64_t sub_18E187ED4()
{
  result = qword_1EABD0D50;
  if (!qword_1EABD0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D50);
  }

  return result;
}

unint64_t sub_18E187F2C()
{
  result = qword_1EABD0D58;
  if (!qword_1EABD0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D58);
  }

  return result;
}

unint64_t sub_18E187F84()
{
  result = qword_1EABD0D60;
  if (!qword_1EABD0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D60);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.init(overrides:guardrails:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  memcpy((a3 + 24), a2, 0x60uLL);
  v6 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v6);
  sub_18E15933C();
  v7 = type metadata accessor for CachedSafetyModels();
  sub_18E15B80C(v7);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  sub_18E15A160();
  sub_18E1A7490();
  v8 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v9 = sub_18E15A434(v8);
  sub_18E15A8DC(v9);
  *(a3 + 120) = v3;
  v10 = type metadata accessor for ModelManagerSessionWrapper();
  v11 = sub_18E15B80C(v10);
  v12 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  v13 = sub_18E15A434(v12);
  result = sub_18E15B9EC(v13);
  *(v11 + 16) = result;
  *(a3 + 128) = v11;
  return result;
}

uint64_t StringRenderedPromptSanitizer.Overrides.denyList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

GenerativeModels::StringRenderedPromptSanitizer::Overrides __swiftcall StringRenderedPromptSanitizer.Overrides.init(denyList:)(GenerativeModels::InputDenyListBundle denyList)
{
  v2 = *(denyList.identifier._countAndFlagsBits + 8);
  *v1 = *denyList.identifier._countAndFlagsBits;
  v1[1] = v2;
  result.denyList.value = denyList;
  return result;
}

BOOL static StringRenderedPromptSanitizer.Overrides.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = v4 == *a2 && v2 == v3;
      return v5 || (sub_18E15A124(v4, v2, *a2) & 1) != 0;
    }

LABEL_10:

    return 0;
  }

  if (v3)
  {
    goto LABEL_10;
  }

  return 1;
}

uint64_t sub_18E1881B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7473694C796E6564 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E18822C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E1881B4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E188258(uint64_t a1)
{
  v2 = sub_18E188410();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E188294(uint64_t a1)
{
  v2 = sub_18E188410();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.Overrides.encode(to:)()
{
  sub_18E159F44();
  v2 = v1;
  v3 = sub_18E161880(&qword_1EABD0D68, &qword_18E1AD470);
  sub_18E159050();
  v5 = v4;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v12 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_18E159D90(v2, v2[3]);
  sub_18E188410();

  sub_18E1A7CD0();
  v12[0] = v10;
  v12[1] = v11;
  sub_18E188464();
  sub_18E1A7AE0();

  (*(v5 + 8))(v9, v3);
  sub_18E15A29C();
}

unint64_t sub_18E188410()
{
  result = qword_1EABD0188;
  if (!qword_1EABD0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0188);
  }

  return result;
}

unint64_t sub_18E188464()
{
  result = qword_1EABD0120;
  if (!qword_1EABD0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0120);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.Overrides.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();

  return sub_18E1A75C0();
}

uint64_t StringRenderedPromptSanitizer.Overrides.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_18E159F00(a1);
  sub_18E1A7C80();
  if (v2)
  {
    sub_18E1A75C0();
  }

  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.Overrides.init(from:)()
{
  sub_18E159F44();
  v3 = v2;
  v5 = v4;
  v6 = sub_18E161880(&qword_1EABD0D70, &qword_18E1AD478);
  sub_18E159050();
  v8 = v7;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15D458();
  sub_18E159D90(v3, v3[3]);
  sub_18E188410();
  sub_18E1A7CC0();
  if (!v0)
  {
    sub_18E18874C();
    sub_18E15D5E8();
    sub_18E1A7A30();
    (*(v8 + 8))(v1, v6);
    *v5 = v11;
  }

  sub_18E158EC4(v3);
  sub_18E15A29C();
}

uint64_t sub_18E1886E0(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_18E1A7C60();
  sub_18E1A7C80();
  if (v2)
  {
    sub_18E1A75C0();
  }

  return sub_18E1A7CA0();
}

unint64_t sub_18E18874C()
{
  result = qword_1EABCFE50;
  if (!qword_1EABCFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE50);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.Guardrails.languageRecognizer.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 24);
  v7[0] = *(v1 + 8);
  v7[1] = v2;
  v4 = *(v1 + 56);
  v8 = *(v1 + 40);
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_18E18CC14(v7, &v6, &qword_1EABD0D78, &qword_18E1AD480);
}

uint64_t StringRenderedPromptSanitizer.Guardrails.languageScriptValidator.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[10];
  v4 = v1[11];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return sub_18E18884C(v2, v3, v4);
}

uint64_t sub_18E18884C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

double StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0;
  return result;
}

__n128 StringRenderedPromptSanitizer.Guardrails.init(sensitiveContentSettings:languageRecognizer:languageScriptValidator:)@<Q0>(void *a1@<X0>, _OWORD *a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2[1];
  *(a4 + 8) = *a2;
  *(a4 + 24) = v4;
  v5 = a2[3];
  *(a4 + 40) = a2[2];
  v6 = a3[1].n128_u64[0];
  *a4 = *a1;
  *(a4 + 56) = v5;
  result = *a3;
  *(a4 + 72) = *a3;
  *(a4 + 88) = v6;
  return result;
}

BOOL static StringRenderedPromptSanitizer.Guardrails.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v119[0] = *(a1 + 8);
  v119[1] = v5;
  v6 = *(a1 + 56);
  v119[2] = *(a1 + 40);
  v119[3] = v6;
  v8 = *(a1 + 72);
  v7 = *(a1 + 80);
  v9 = *(a1 + 88);
  v10 = *a2;
  v11 = *(a2 + 56);
  v120[2] = *(a2 + 40);
  v120[3] = v11;
  v12 = *(a2 + 24);
  v120[0] = *(a2 + 8);
  v120[1] = v12;
  v14 = *(a2 + 72);
  v13 = *(a2 + 80);
  v15 = *(a2 + 88);
  if (!v4)
  {
    if (!v10)
    {

      goto LABEL_8;
    }

LABEL_6:

    return 0;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  if ((sub_18E15DFE0(v4, v10) & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v95 = v7;
  v16 = *&v119[0];
  v17 = *&v120[0];
  if (*&v119[0])
  {
    sub_18E15ABD4();
    v25 = *(a1 + 64);
    *&v110 = *&v119[0];
    *(&v113 + 1) = v25;
    v106 = v110;
    v107 = v111;
    v108 = v112;
    v109 = v113;
    if (*&v120[0])
    {
      v26 = *(a2 + 32);
      *&v105[8] = *(a2 + 16);
      *&v105[24] = v26;
      *&v105[40] = *(a2 + 48);
      *&v105[56] = *(a2 + 64);
      *v105 = *&v120[0];
      sub_18E159348(v119, v18, v19, v20, v21, v22, v23, v24, v90, v95, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1));
      sub_18E159348(v120, v27, v28, v29, v30, v31, v32, v33, v91, v96, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1));
      sub_18E159348(&v110, v34, v35, v36, v37, v38, v39, v40, v92, v97, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1));
      v41 = static LanguageRecognizer.== infix(_:_:)(&v106, v105);
      v100 = *v105;
      v101 = *&v105[16];
      v102 = *&v105[32];
      v103 = *&v105[48];
      sub_18E182F4C(&v100);
      v104[0] = v106;
      v104[1] = v107;
      v104[2] = v108;
      v104[3] = v109;
      sub_18E182F4C(v104);
      v42 = *(a1 + 32);
      *&v105[8] = *(a1 + 16);
      *&v105[24] = v42;
      *&v105[40] = *(a1 + 48);
      v43 = *(a1 + 64);
      *v105 = v16;
      *&v105[56] = v43;
      sub_18E18CBB8(v105, &qword_1EABD0D78, &qword_18E1AD480);
      if ((v41 & 1) == 0)
      {
        return 0;
      }

      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }

    *v105 = v110;
    *&v105[16] = v111;
    *&v105[32] = v112;
    *&v105[48] = v113;
    sub_18E18DFBC(v119, v18, v19, v20, v21, v22, v23, v24, v90, v95, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1));
    sub_18E18DFBC(v120, v57, v58, v59, v60, v61, v62, v63, v93, v98, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1));
    sub_18E18DFBC(&v110, v64, v65, v66, v67, v68, v69, v70, v94, v99, v100, *(&v100 + 1), v101, *(&v101 + 1), v102, *(&v102 + 1), v103, *(&v103 + 1));
    sub_18E182F4C(v105);
LABEL_18:
    sub_18E15ABD4();
    v71 = *(a2 + 32);
    v115 = *(a2 + 16);
    v72 = *(a1 + 64);
    *&v110 = v16;
    *(&v113 + 1) = v72;
    v114 = v17;
    v116 = v71;
    v117 = *(a2 + 48);
    v118 = *(a2 + 64);
    sub_18E18CBB8(&v110, &qword_1EABD0D80, &qword_18E1AD488);
    return 0;
  }

  if (*&v120[0])
  {
    sub_18E18CC14(v119, &v110, &qword_1EABD0D78, &qword_18E1AD480);
    sub_18E18CC14(v120, &v110, &qword_1EABD0D78, &qword_18E1AD480);
    goto LABEL_18;
  }

  sub_18E15ABD4();
  v73 = *(a1 + 64);
  *&v110 = 0;
  *(&v113 + 1) = v73;
  sub_18E18CC14(v119, &v106, &qword_1EABD0D78, &qword_18E1AD480);
  sub_18E18CC14(v120, &v106, &qword_1EABD0D78, &qword_18E1AD480);
  sub_18E18CBB8(&v110, &qword_1EABD0D78, &qword_18E1AD480);
  if (v8)
  {
LABEL_12:
    *&v110 = v8;
    *(&v110 + 1) = v95;
    *&v111 = v9;
    if (v14)
    {
      *&v106 = v14;
      BYTE8(v106) = v13 & 1;
      *&v107 = v15;
      v44 = sub_18E15D118();
      sub_18E18884C(v44, v45, v46);
      v47 = sub_18E158FD8();
      sub_18E18884C(v47, v48, v49);
      v50 = sub_18E15D118();
      sub_18E18884C(v50, v51, v52);
      v53 = static LanguageScriptValidator.== infix(_:_:)(&v110, &v106);

      v54 = sub_18E15D118();
      sub_18E188CFC(v54, v55, v56);
      return (v53 & 1) != 0;
    }

    v77 = sub_18E15D118();
    sub_18E18884C(v77, v78, v79);
    sub_18E18884C(0, v13, v15);
    v80 = sub_18E15D118();
    sub_18E18884C(v80, v81, v82);

LABEL_23:
    v83 = sub_18E15D118();
    sub_18E188CFC(v83, v84, v85);
    v86 = sub_18E158FD8();
    sub_18E188CFC(v86, v87, v88);
    return 0;
  }

LABEL_20:
  sub_18E18884C(0, v95, v9);
  if (v14)
  {
    v74 = sub_18E158FD8();
    sub_18E18884C(v74, v75, v76);
    goto LABEL_23;
  }

  sub_18E18884C(0, v13, v15);
  sub_18E188CFC(0, v95, v9);
  return 1;
}

uint64_t sub_18E188CFC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18E188D3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x800000018E1B2BA0 == a2;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000018E1B2BC0 == a2;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000017 && 0x800000018E1B2BE0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18E1A7B90();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_18E188E54(char a1)
{
  if (!a1)
  {
    return 0xD000000000000018;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000017;
}

uint64_t sub_18E188EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E188D3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E188ED8(uint64_t a1)
{
  v2 = sub_18E18921C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E188F14(uint64_t a1)
{
  v2 = sub_18E18921C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.Guardrails.encode(to:)()
{
  sub_18E159F44();
  v3 = v2;
  v4 = sub_18E161880(&qword_1EABD0D88, &qword_18E1AD490);
  sub_18E159050();
  v6 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  v11 = *v0;
  v12 = *(v0 + 3);
  v31 = *(v0 + 1);
  v32 = v12;
  v13 = *(v0 + 7);
  v33 = *(v0 + 5);
  v34 = v13;
  v14 = v0[10];
  v21 = v0[9];
  v20 = v14;
  v19 = v0[11];
  sub_18E159D90(v3, v3[3]);
  sub_18E18921C();

  sub_18E1A7CD0();
  *&v27 = v11;
  v26[0] = 0;
  sub_18E189270();
  sub_18E1A7AE0();
  if (v1)
  {
  }

  else
  {
    v15 = v19;
    v16 = v20;
    v17 = v21;

    v27 = v31;
    v28 = v32;
    v29 = v33;
    v30 = v34;
    v26[79] = 1;
    sub_18E18CC14(&v31, v26, &qword_1EABD0D78, &qword_18E1AD480);
    sub_18E1892C4();
    sub_18E1A7AE0();
    sub_18E15A240();
    sub_18E18CBB8(v26, &qword_1EABD0D78, &qword_18E1AD480);
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v22 = 2;
    sub_18E18884C(v17, v16, v15);
    sub_18E189318();
    sub_18E1A7AE0();
    sub_18E188CFC(v23, v24, v25);
  }

  (*(v6 + 8))(v10, v4);
  sub_18E15C520();
  sub_18E15A29C();
}

unint64_t sub_18E18921C()
{
  result = qword_1EABD0D90;
  if (!qword_1EABD0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D90);
  }

  return result;
}

unint64_t sub_18E189270()
{
  result = qword_1EABCFDD8;
  if (!qword_1EABCFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDD8);
  }

  return result;
}

unint64_t sub_18E1892C4()
{
  result = qword_1EABD0D98;
  if (!qword_1EABD0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0D98);
  }

  return result;
}

unint64_t sub_18E189318()
{
  result = qword_1EABD0DA0;
  if (!qword_1EABD0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DA0);
  }

  return result;
}

uint64_t StringRenderedPromptSanitizer.Guardrails.hash(into:)(const void *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 72);
  v5 = *(v1 + 88);
  if (*v1)
  {
    sub_18E15A1C4();
    sub_18E183964();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_18E1A7C80();
    if (!v4)
    {
      return sub_18E1A7C80();
    }

    goto LABEL_7;
  }

  sub_18E1A7C80();
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  *&v8[8] = *(v1 + 16);
  *&v8[24] = *(v1 + 32);
  *&v8[40] = *(v1 + 48);
  *&v8[56] = *(v1 + 64);
  *v8 = v3;
  sub_18E15A1C4();
  v9 = v3;
  v6 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11 = v6;
  v12 = *(v1 + 48);
  v13 = *(v1 + 64);
  sub_18E182F14(&v9, v14);
  LanguageRecognizer.hash(into:)(a1);
  v14[0] = *v8;
  v14[1] = *&v8[16];
  v14[2] = *&v8[32];
  v14[3] = *&v8[48];
  sub_18E182F4C(v14);
  if (!v4)
  {
    return sub_18E1A7C80();
  }

LABEL_7:
  sub_18E15A1C4();
  sub_18E159F88();
  sub_18E18391C();
  sub_18E1A7C80();
  if (v5)
  {
    *&v14[0] = v5;
    sub_18E15A1C4();
    sub_18E1A7390();
    sub_18E18CF44(&qword_1EABD0BE0, MEMORY[0x1E69A0EC8], MEMORY[0x1E69A0ED8]);
    sub_18E159F88();
    return sub_18E1A74D0();
  }

  return sub_18E1A7C80();
}

uint64_t StringRenderedPromptSanitizer.Guardrails.hashValue.getter(uint64_t a1)
{
  sub_18E159F00(a1);
  StringRenderedPromptSanitizer.Guardrails.hash(into:)(v2);
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.Guardrails.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  sub_18E161880(&qword_1EABD0DA8, &qword_18E1AD498);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15DAF8();
  sub_18E159D90(v2, v2[3]);
  sub_18E18921C();
  sub_18E1A7CC0();
  if (v0)
  {
    sub_18E158EC4(v2);
  }

  else
  {
    v13 = v4;
    LOBYTE(v14[0]) = 0;
    sub_18E18C878();
    sub_18E18DFAC();
    sub_18E1A7A30();
    v12 = v15;
    v27 = 1;
    sub_18E18C8CC();
    sub_18E18DFAC();
    sub_18E1A7A30();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    v23 = 2;
    sub_18E18C920();
    sub_18E18DFAC();
    sub_18E1A7A30();
    v7 = sub_18E15D898();
    v8(v7);
    *&v14[1] = v32;
    *&v14[3] = v33;
    *&v14[5] = v34;
    v9 = v24;
    v10 = v25;
    v11 = v26;
    v14[0] = v12;
    *&v14[7] = v35;
    v14[9] = v24;
    v14[10] = v25;
    v14[11] = v26;
    memcpy(v13, v14, 0x60uLL);
    sub_18E18C974(v14, &v15);
    sub_18E158EC4(v2);
    v15 = v12;
    v16 = v32;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    sub_18E18C9AC(&v15);
  }

  sub_18E15C520();
  sub_18E15A29C();
}

uint64_t sub_18E1897F4(uint64_t a1)
{
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.Guardrails.hash(into:)(v2);
  return sub_18E1A7CA0();
}

BOOL static StringRenderedPromptSanitizer.DefaultableOverrides.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if ((v3 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      if (v2 == 1)
      {
        v29 = sub_18E15D108();
        sub_18E159D24(v29, v30, v31);
        v32 = sub_18E15A4C8();
        sub_18E159D24(v32, v33, 0);
        v34 = sub_18E15A4C8();
        sub_18E159D24(v34, v35, 0);
        v36 = sub_18E15D108();
        sub_18E159D24(v36, v37, v38);
        v39 = sub_18E15A4C8();
        sub_18E15F0C0(v39, v40, 0);
        v41 = sub_18E15D108();
        sub_18E15F0C0(v41, v42, v43);
        if (v4 == 1)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }

      v116 = *a1;
      v117 = v2;
      if (v4 != 1)
      {
        v114 = v5;
        v115 = v4;
        v94 = sub_18E15D108();
        v97 = sub_18E15923C(v94, v95, v96);
        v99 = sub_18E15923C(v97, v98, 0);
        sub_18E159D24(v99, v100, 0);
        v101 = sub_18E15D108();
        v104 = sub_18E15923C(v101, v102, v103);
        sub_18E159D28(v104, v105);
        v106 = static StringRenderedPromptSanitizer.Overrides.== infix(_:_:)(&v116, &v114);
        v107 = sub_18E15A234();
        sub_18E15F0C0(v107, v108, 0);
        v109 = sub_18E15D108();
        sub_18E15F0C0(v109, v110, v111);

        v112 = sub_18E15A234();
        sub_18E15F0C4(v112, v113);
        return v106;
      }

      v59 = sub_18E15BCB0();
      v61 = sub_18E15923C(v59, v60, 0);
      v63 = sub_18E15923C(v61, v62, 0);
      sub_18E159D24(v63, v64, 0);
      v65 = sub_18E15BCB0();
      v67 = sub_18E15923C(v65, v66, 0);
      sub_18E159D28(v67, v68);
      v69 = sub_18E15A234();
      sub_18E15F0C0(v69, v70, 0);
      v56 = sub_18E15BCB0();
      v58 = 0;
      goto LABEL_15;
    }

LABEL_7:
    v25 = sub_18E15A234();
    sub_18E159D24(v25, v26, v3);
    v27 = sub_18E15923C(v5, v4, v6);
    sub_18E15F0C0(v27, v28, v3);
    sub_18E15F0C0(v5, v4, v6);
    return 0;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v116 = *a1;
    v117 = v2;
    if (v4 != 1)
    {
      v114 = v5;
      v115 = v4;
      v22 = 1;
      v74 = sub_18E15AAAC();
      v77 = sub_18E15923C(v74, v75, v76);
      v79 = sub_18E15923C(v77, v78, 1);
      sub_18E159D24(v79, v80, 1);
      v81 = sub_18E15AAAC();
      v84 = sub_18E15923C(v81, v82, v83);
      sub_18E159D28(v84, v85);
      v86 = static StringRenderedPromptSanitizer.Overrides.== infix(_:_:)(&v116, &v114);
      v87 = sub_18E15A234();
      sub_18E15F0C0(v87, v88, 1);
      v89 = sub_18E15AAAC();
      sub_18E15F0C0(v89, v90, v91);

      v92 = sub_18E15A234();
      sub_18E15F0C4(v92, v93);
      if (v86)
      {
        return v22;
      }

      return 0;
    }

    v44 = sub_18E15BCB0();
    v46 = sub_18E15923C(v44, v45, 1);
    v48 = sub_18E15923C(v46, v47, 1);
    sub_18E159D24(v48, v49, 1);
    v50 = sub_18E15BCB0();
    v52 = sub_18E15923C(v50, v51, 1);
    sub_18E159D28(v52, v53);
    v54 = sub_18E15A234();
    sub_18E15F0C0(v54, v55, 1);
    v56 = sub_18E15BCB0();
    v58 = 1;
LABEL_15:
    sub_18E15F0C0(v56, v57, v58);

    goto LABEL_16;
  }

  v7 = sub_18E15AAAC();
  sub_18E159D24(v7, v8, v9);
  v10 = sub_18E15A4C8();
  sub_18E159D24(v10, v11, 1);
  v12 = sub_18E15A4C8();
  sub_18E159D24(v12, v13, 1);
  v14 = sub_18E15AAAC();
  sub_18E159D24(v14, v15, v16);
  v17 = sub_18E15A4C8();
  sub_18E15F0C0(v17, v18, 1);
  v19 = sub_18E15AAAC();
  sub_18E15F0C0(v19, v20, v21);
  if (v4 != 1)
  {
LABEL_16:
    v71 = sub_18E15A234();
    sub_18E15F0C4(v71, v72);
    sub_18E15F0C4(v5, v4);
    return 0;
  }

LABEL_5:
  v22 = 1;
  v23 = sub_18E15A4C8();
  sub_18E15F0C4(v23, v24);
  return v22;
}

uint64_t sub_18E189B48(uint64_t a1)
{
  v2 = sub_18E18C9DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E189B84(uint64_t a1)
{
  v2 = sub_18E18C9DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E189BC0(uint64_t a1)
{
  v2 = sub_18E18CAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E189BFC(uint64_t a1)
{
  v2 = sub_18E18CAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E189C38(uint64_t a1)
{
  v2 = sub_18E18CA30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E189C74(uint64_t a1)
{
  v2 = sub_18E18CA30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.DefaultableOverrides.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  sub_18E161880(&qword_1EABD0DC8, &qword_18E1AD4A0);
  sub_18E159050();
  v27 = v6;
  v28 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_18E159FE0();
  sub_18E161880(&qword_1EABD0DD0, &qword_18E1AD4A8);
  sub_18E159050();
  v25 = v10;
  v26 = v9;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  v31 = sub_18E161880(&qword_1EABD0DD8, &qword_18E1AD4B0);
  sub_18E159050();
  v16 = v15;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_18E15D458();
  v19 = v0[1];
  v29 = *v0;
  v30 = v19;
  v20 = *(v0 + 16);
  sub_18E159D90(v4, v4[3]);
  sub_18E18C9DC();
  sub_18E1A7CD0();
  if (v20)
  {
    LOBYTE(v32) = 1;
    sub_18E18CA30();
    v21 = v31;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    v32 = v29;
    v33 = v30;
    sub_18E18CA84();
    v22 = v28;
    sub_18E1A7AE0();
    (*(v27 + 8))(v2, v22);
  }

  else
  {
    LOBYTE(v32) = 0;
    sub_18E18CAD8();
    v21 = v31;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    v32 = v29;
    v33 = v30;
    sub_18E18CA84();
    v23 = v26;
    sub_18E1A7AE0();
    (*(v25 + 8))(v14, v23);
  }

  (*(v16 + 8))(v1, v21);
  sub_18E15A29C();
}

uint64_t StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if ((*(v1 + 16) & 1) == 0)
  {
    MEMORY[0x193ACB0A0](0);
    if (v3 != 1)
    {
      sub_18E1A7C80();
      sub_18E1A7C80();
      if (v3)
      {
        v9 = sub_18E159F88();
        sub_18E159D28(v9, v10);
        sub_18E1A75C0();
        v6 = sub_18E159F88();
      }

      else
      {
        v6 = v2;
        v7 = 0;
      }

      v11 = 0;
      goto LABEL_13;
    }

    return sub_18E1A7C80();
  }

  MEMORY[0x193ACB0A0](1);
  if (v3 == 1)
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();
  sub_18E1A7C80();
  if (v3)
  {
    v4 = sub_18E159F88();
    sub_18E159D28(v4, v5);
    sub_18E1A75C0();
    v6 = sub_18E159F88();
  }

  else
  {
    v6 = v2;
    v7 = 0;
  }

  v11 = 1;
LABEL_13:

  return sub_18E15F0C0(v6, v7, v11);
}

uint64_t StringRenderedPromptSanitizer.DefaultableOverrides.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_18E159F00(a1);
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)(v4);
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.DefaultableOverrides.init(from:)()
{
  sub_18E159F44();
  v4 = v3;
  v53 = v5;
  sub_18E161880(&qword_1EABD0DE0, &qword_18E1AD4B8);
  sub_18E159050();
  v50 = v7;
  v51 = v6;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v44 - v10;
  v12 = sub_18E161880(&qword_1EABD0DE8, &qword_18E1AD4C0);
  sub_18E159050();
  v49 = v13;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v14, v15);
  sub_18E159FE0();
  v16 = sub_18E161880(&qword_1EABD0DF0, &unk_18E1AD4C8);
  sub_18E159050();
  v52 = v17;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v18, v19);
  sub_18E15D458();
  sub_18E159D90(v4, v4[3]);
  sub_18E18C9DC();
  sub_18E1A7CC0();
  if (v0)
  {
    goto LABEL_9;
  }

  v47 = v12;
  v48 = v2;
  v55 = v4;
  v20 = v53;
  sub_18E1A7AA0();
  sub_18E15AF14();
  if (v22 == v23 >> 1)
  {
    goto LABEL_8;
  }

  v46 = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_18E15AF84();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      v45 = v24;
      if (v24)
      {
        LOBYTE(v54) = 1;
        sub_18E18CA30();
        v29 = v11;
        sub_18E15D5E8();
        v30 = v46;
        sub_18E1A79F0();
        if (!v30)
        {
          sub_18E18CB2C();
          v31 = v51;
          sub_18E15A45C(&type metadata for StringRenderedPromptSanitizer.Overrides, v32);
          swift_unknownObjectRelease();
          v41 = v50;
LABEL_14:
          (*(v41 + 8))(v29, v31);
          v42 = sub_18E15C598();
          v43(v42);
          *v20 = v54;
          *(v20 + 16) = v45;
          sub_18E158EC4(v55);
          goto LABEL_10;
        }
      }

      else
      {
        LOBYTE(v54) = 0;
        sub_18E18CAD8();
        v29 = v48;
        sub_18E15D5E8();
        v37 = v46;
        sub_18E1A79F0();
        if (!v37)
        {
          sub_18E18CB2C();
          v31 = v47;
          sub_18E15A45C(&type metadata for StringRenderedPromptSanitizer.Overrides, v40);
          swift_unknownObjectRelease();
          v41 = v49;
          goto LABEL_14;
        }
      }

      v38 = sub_18E15C598();
      v39(v38);
      swift_unknownObjectRelease();
      v4 = v55;
LABEL_9:
      sub_18E158EC4(v4);
LABEL_10:
      sub_18E15A29C();
      return;
    }

LABEL_8:
    sub_18E1A78C0();
    swift_allocError();
    v34 = v33;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v34 = &type metadata for StringRenderedPromptSanitizer.DefaultableOverrides;
    v35 = sub_18E1A7A00();
    sub_18E15B9CC(v35);
    sub_18E1594D8();
    (*(v36 + 104))(v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v52 + 8))(v1, v16);
    v4 = v55;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_18E18A5A4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)(v4);
  return sub_18E1A7CA0();
}

BOOL static StringRenderedPromptSanitizer.DefaultableGuardrails.== infix(_:_:)(char *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x61uLL);
  memcpy(v164, a2, 0x61uLL);
  memcpy(v165, __src, 0x61uLL);
  v4 = memcpy(v166, a2, sizeof(v166));
  v12 = __dst[0];
  v13 = v164[0];
  if ((__dst[12] & 1) == 0)
  {
    if ((v164[12] & 1) == 0)
    {
      if (__dst[0] == 1)
      {
        v50 = sub_18E18DF94(v4, v5, v6, v7, v8, v9, v10, v11, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v58 = sub_18E15DB68(v50, v51, v52, v53, v54, v55, v56, v57, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v66 = sub_18E15DB68(v58, v59, v60, v61, v62, v63, v64, v65, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18DF94(v66, v67, v68, v69, v70, v71, v72, v73, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
        if (v13 == 1)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }

LABEL_11:
      __srca[0] = __dst[0];
      memcpy(&__srca[1], __src + 8, 0x58uLL);
      v74 = memcpy(v159, __srca, sizeof(v159));
      if (v164[0] != 1)
      {
        v107 = memcpy(&v156[1], (a2 + 8), 0x58uLL);
        v115 = sub_18E18DF94(v107, v108, v109, v110, v111, v112, v113, v114, v164[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v123 = sub_18E15DB68(v115, v116, v117, v118, v119, v120, v121, v122, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v131 = sub_18E18DF94(v123, v124, v125, v126, v127, v128, v129, v130, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v139 = sub_18E15DB68(v131, v132, v133, v134, v135, v136, v137, v138, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        v147 = sub_18E15DB68(v139, v140, v141, v142, v143, v144, v145, v146, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18DF94(v147, v148, v149, v150, v151, v152, v153, v154, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
        sub_18E18CC14(__srca, v161, &qword_1EABD0E08, &qword_18E1AD4E8);
        v155 = static StringRenderedPromptSanitizer.Guardrails.== infix(_:_:)(v159, v156);
        sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
        sub_18E18CC74(v164);
        sub_18E18CC74(__dst);
        memcpy(v157, v156, sizeof(v157));
        sub_18E18C9AC(v157);
        memcpy(v158, v159, sizeof(v158));
        sub_18E18C9AC(v158);
        v161[0] = v12;
        memcpy(&v161[1], __src + 8, 0x58uLL);
        sub_18E18CBB8(v161, &qword_1EABD0E08, &qword_18E1AD4E8);
        return v155;
      }

      v82 = sub_18E18DF94(v74, v75, v76, v77, v78, v79, v80, v81, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      v90 = sub_18E15DB68(v82, v83, v84, v85, v86, v87, v88, v89, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      v98 = sub_18E15DB68(v90, v91, v92, v93, v94, v95, v96, v97, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      sub_18E18DF94(v98, v99, v100, v101, v102, v103, v104, v105, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
      sub_18E18CC14(__srca, v161, &qword_1EABD0E08, &qword_18E1AD4E8);
      sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
      memcpy(v161, v159, 0x60uLL);
      sub_18E18C9AC(v161);
      goto LABEL_13;
    }

LABEL_7:
    v39 = sub_18E15DB68(v4, v5, v6, v7, v8, v9, v10, v11, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
    sub_18E18DF94(v39, v40, v41, v42, v43, v44, v45, v46, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
    v47 = &qword_1EABD0DF8;
    v48 = &qword_18E1AD4D8;
    v49 = v165;
LABEL_14:
    sub_18E18CBB8(v49, v47, v48);
    return 0;
  }

  if ((v164[12] & 1) == 0)
  {
    goto LABEL_7;
  }

  if (__dst[0] != 1)
  {
    goto LABEL_11;
  }

  v14 = sub_18E18DF94(v4, v5, v6, v7, v8, v9, v10, v11, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  v22 = sub_18E15DB68(v14, v15, v16, v17, v18, v19, v20, v21, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  v30 = sub_18E15DB68(v22, v23, v24, v25, v26, v27, v28, v29, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  sub_18E18DF94(v30, v31, v32, v33, v34, v35, v36, v37, v156[0], v156[1], v156[2], v156[3], v156[4], v156[5], v156[6], v156[7], v156[8], v156[9], v156[10], v156[11], v157[0], v157[1], v157[2], v157[3], v157[4], v157[5], v157[6], v157[7], v157[8], v157[9], v157[10], v157[11], v158[0], v158[1], v158[2], v158[3], v158[4], v158[5], v158[6], v158[7], v158[8], v158[9], v158[10], v158[11], v159[0], v159[1], v159[2], v159[3], v159[4], v159[5], v159[6], v159[7], v159[8], v159[9], v159[10], v159[11], __srca[0], __srca[1], __srca[2], __srca[3], __srca[4], __srca[5], __srca[6]);
  sub_18E18CBB8(v165, &qword_1EABD0DF8, &qword_18E1AD4D8);
  if (v13 != 1)
  {
LABEL_13:
    v161[0] = v12;
    sub_18E159F18();
    v161[12] = v13;
    memcpy(v162, (a2 + 8), sizeof(v162));
    v47 = &unk_1EABD0E00;
    v48 = &unk_18E1AD4E0;
    v49 = v161;
    goto LABEL_14;
  }

LABEL_5:
  v38 = 1;
  v161[0] = 1;
  sub_18E159F18();
  sub_18E18CBB8(v161, &qword_1EABD0E08, &qword_18E1AD4E8);
  return v38;
}

uint64_t sub_18E18A970(uint64_t a1)
{
  v1 = a1;
  sub_18E159F00(a1);
  MEMORY[0x193ACB0A0](v1 & 1);
  return sub_18E1A7CA0();
}

uint64_t sub_18E18A9B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E15A124(12383, 0xE200000000000000, a1);

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E18AA18(uint64_t a1)
{
  sub_18E159F00(a1);
  MEMORY[0x193ACB0A0](0);
  return sub_18E1A7CA0();
}

uint64_t sub_18E18AA54(uint64_t a1)
{
  v2 = sub_18E18CCA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18AA90(uint64_t a1)
{
  v2 = sub_18E18CCA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18AACC(uint64_t a1)
{
  v2 = sub_18E18CDA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18AB08(uint64_t a1)
{
  v2 = sub_18E18CDA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18AB44(uint64_t a1)
{
  v2 = sub_18E18CCF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18AB80(uint64_t a1)
{
  v2 = sub_18E18CCF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.DefaultableGuardrails.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  sub_18E161880(&qword_1EABD0E10, &qword_18E1AD4F0);
  sub_18E159050();
  v24 = v6;
  v25 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_18E15DAF8();
  sub_18E161880(&qword_1EABD0E18, &qword_18E1AD4F8);
  sub_18E159050();
  v22 = v10;
  v23 = v9;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - v13;
  v26 = sub_18E161880(&qword_1EABD0E20, &qword_18E1AD500);
  sub_18E159050();
  v16 = v15;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_18E159FE0();
  v27 = v0;
  v19 = v0[96];
  sub_18E159D90(v4, v4[3]);
  sub_18E18CCA4();
  sub_18E1A7CD0();
  if (v19)
  {
    v28[0] = 1;
    sub_18E18CCF8();
    sub_18E18E004(&type metadata for StringRenderedPromptSanitizer.DefaultableGuardrails.WithoutDefaultCodingKeys, v28);
    memcpy(v28, v27, sizeof(v28));
    sub_18E18CD4C();
    v20 = v25;
    sub_18E1A7AE0();
    (*(v24 + 8))(v2, v20);
  }

  else
  {
    v28[0] = 0;
    sub_18E18CDA0();
    sub_18E18E004(&type metadata for StringRenderedPromptSanitizer.DefaultableGuardrails.WithDefaultCodingKeys, v28);
    memcpy(v28, v27, sizeof(v28));
    sub_18E18CD4C();
    v21 = v23;
    sub_18E1A7AE0();
    (*(v22 + 8))(v14, v21);
  }

  (*(v16 + 8))(v1, v4);
  sub_18E15A29C();
}

uint64_t StringRenderedPromptSanitizer.DefaultableGuardrails.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = v2[96];
  if (v4)
  {
    v5 = &v8;
  }

  else
  {
    v5 = &v7;
  }

  memcpy(v5, v2, 0x60uLL);
  MEMORY[0x193ACB0A0](v4 & 1);
  return sub_18E18C6AC(a1);
}

uint64_t StringRenderedPromptSanitizer.DefaultableGuardrails.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 96);
  sub_18E159F00(a1);
  v3 = sub_18E15A234();
  memcpy(v3, v4, 0x60uLL);
  MEMORY[0x193ACB0A0](v2 & 1);
  sub_18E18C6AC(v6);
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.DefaultableGuardrails.init(from:)()
{
  sub_18E159F44();
  v52 = v0;
  v3 = v2;
  v50 = v4;
  v49 = sub_18E161880(&qword_1EABD0E48, &qword_18E1AD508);
  sub_18E159050();
  v48 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_18E15D458();
  v8 = sub_18E161880(&qword_1EABD0E50, &qword_18E1AD510);
  sub_18E159050();
  v47 = v9;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15DAF8();
  v12 = sub_18E161880(&qword_1EABD0E58, &qword_18E1AD518);
  sub_18E159050();
  v14 = v13;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v45 - v17;
  v19 = v3[3];
  v51 = v3;
  sub_18E159D90(v3, v19);
  sub_18E18CCA4();
  v20 = v52;
  sub_18E1A7CC0();
  if (v20)
  {
    goto LABEL_8;
  }

  v45[1] = v1;
  v46 = v14;
  v21 = v50;
  v52 = v18;
  sub_18E1A7AA0();
  sub_18E15AF14();
  if (v23 == v24 >> 1)
  {
LABEL_7:
    sub_18E1A78C0();
    swift_allocError();
    v32 = v31;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v32 = &type metadata for StringRenderedPromptSanitizer.DefaultableGuardrails;
    v33 = v52;
    v34 = sub_18E1A7A00();
    sub_18E15B9CC(v34);
    sub_18E1594D8();
    (*(v35 + 104))(v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v46 + 8))(v33, v12);
LABEL_8:
    sub_18E158EC4(v51);
LABEL_9:
    sub_18E15C520();
    sub_18E15A29C();
    return;
  }

  if (v23 < (v24 >> 1))
  {
    v55 = *(v22 + v23);
    sub_18E15AF84();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v55)
      {
        LOBYTE(v53[0]) = 1;
        sub_18E18CCF8();
        sub_18E15AE98(&type metadata for StringRenderedPromptSanitizer.DefaultableGuardrails.WithoutDefaultCodingKeys, v53);
        v29 = v21;
        sub_18E18CDF4();
        v30 = v49;
        sub_18E18DFF8();
        sub_18E1A7A30();
        sub_18E15CA98();
        swift_unknownObjectRelease();
        v36 = sub_18E15C05C();
        v37(v36, v30);
        v38 = sub_18E15D63C();
        v39(v38);
        memcpy(v54, v53, sizeof(v54));
        v40 = 1;
        v21 = v29;
      }

      else
      {
        LOBYTE(v53[0]) = 0;
        sub_18E18CDA0();
        sub_18E15AE98(&type metadata for StringRenderedPromptSanitizer.DefaultableGuardrails.WithDefaultCodingKeys, v53);
        sub_18E18CDF4();
        sub_18E18DFF8();
        sub_18E1A7A30();
        sub_18E15CA98();
        swift_unknownObjectRelease();
        v41 = sub_18E15C05C();
        v42(v41, v8);
        v43 = sub_18E15D63C();
        v44(v43);
        memcpy(v54, v53, sizeof(v54));
        v40 = 0;
      }

      memcpy(v21, v54, 0x60uLL);
      v21[96] = v40;
      sub_18E158EC4(v51);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_18E18B4C4(uint64_t a1)
{
  v2 = v1[96];
  sub_18E1A7C60();
  if (v2)
  {
    v3 = &v7;
  }

  else
  {
    v3 = &v6;
  }

  memcpy(v3, v1, 0x60uLL);
  MEMORY[0x193ACB0A0](v2 & 1);
  sub_18E18C6AC(v5);
  return sub_18E1A7CA0();
}

void *StringRenderedPromptSanitizer.init(overrides:)@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v11 = *a1;
  v4 = 1;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  StringRenderedPromptSanitizer.init(overrides:guardrails:)(&v11, &v4, __src);
  return memcpy(a2, __src, 0x88uLL);
}

void *StringRenderedPromptSanitizer.init(guardrails:)@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v4 = xmmword_18E1AC6B0;
  StringRenderedPromptSanitizer.init(overrides:guardrails:)(&v4, a1, __src);
  return memcpy(a2, __src, 0x88uLL);
}

BOOL static StringRenderedPromptSanitizer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  memcpy(__dst, (a1 + 24), sizeof(__dst));
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  memcpy(v73, (a2 + 24), sizeof(v73));
  __src[0] = v3;
  __src[1] = v4;
  LOBYTE(__src[2]) = v5;
  v67[0] = v6;
  v67[1] = v7;
  LOBYTE(v67[2]) = v8;
  sub_18E159D24(v3, v4, v5);
  sub_18E159D24(v6, v7, v8);
  LOBYTE(a2) = static StringRenderedPromptSanitizer.DefaultableOverrides.== infix(_:_:)(__src, v67);
  sub_18E15F0C0(v6, v7, v8);
  sub_18E15F0C0(v3, v4, v5);
  if (a2)
  {
    v9 = __dst[0];
    memcpy(v71, &__dst[1], sizeof(v71));
    v10 = v73[0];
    v11 = memcpy(v70, &v73[1], sizeof(v70));
    if (__dst[0] == 1)
    {
      if (v73[0] == 1)
      {
        v19 = 1;
        sub_18E15D854(v11, v12, v13, v14, v15, v16, v17, v18, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8], v67[9], v67[10], v67[11], 1, __src[1]);
        sub_18E18CC14(__dst, v67, &qword_1EABD0E08, &qword_18E1AD4E8);
        sub_18E18CC14(v73, v67, &qword_1EABD0E08, &qword_18E1AD4E8);
        v20 = __src;
LABEL_11:
        sub_18E18CBB8(v20, &qword_1EABD0E08, &qword_18E1AD4E8);
        return v19;
      }

      sub_18E18CC14(__dst, __src, &qword_1EABD0E08, &qword_18E1AD4E8);
      sub_18E18CC14(v73, __src, &qword_1EABD0E08, &qword_18E1AD4E8);
    }

    else
    {
      sub_18E15D854(v11, v12, v13, v14, v15, v16, v17, v18, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11], v65[0], v65[1], v65[2], v65[3], v65[4], v65[5], v65[6], v65[7], v65[8], v65[9], v65[10], v65[11], v66[0], v66[1], v66[2], v66[3], v66[4], v66[5], v66[6], v66[7], v66[8], v66[9], v66[10], v66[11], v67[0], v67[1], v67[2], v67[3], v67[4], v67[5], v67[6], v67[7], v67[8], v67[9], v67[10], v67[11], __dst[0], __src[1]);
      memcpy(v67, __src, sizeof(v67));
      if (v10 != 1)
      {
        memcpy(&v66[1], &v73[1], 0x58uLL);
        v66[0] = v10;
        sub_18E15B8EC(__dst, v42, v43, v44, v45, v46, v47, v48, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11]);
        sub_18E15B8EC(v73, v49, v50, v51, v52, v53, v54, v55, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11]);
        sub_18E15B8EC(__src, v56, v57, v58, v59, v60, v61, v62, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11]);
        v19 = static StringRenderedPromptSanitizer.Guardrails.== infix(_:_:)(v67, v66);
        memcpy(v64, v66, sizeof(v64));
        sub_18E18C9AC(v64);
        memcpy(v65, v67, sizeof(v65));
        sub_18E18C9AC(v65);
        v66[0] = v9;
        memcpy(&v66[1], v71, 0x58uLL);
        v20 = v66;
        goto LABEL_11;
      }

      memcpy(v66, __src, sizeof(v66));
      sub_18E15DB30(__dst, v21, v22, v23, v24, v25, v26, v27, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11]);
      sub_18E15DB30(v73, v28, v29, v30, v31, v32, v33, v34, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11]);
      sub_18E15DB30(__src, v35, v36, v37, v38, v39, v40, v41, v64[0], v64[1], v64[2], v64[3], v64[4], v64[5], v64[6], v64[7], v64[8], v64[9], v64[10], v64[11]);
      sub_18E18C9AC(v66);
    }

    __src[0] = v9;
    memcpy(&__src[1], v71, 0x58uLL);
    __src[12] = v10;
    memcpy(v69, v70, sizeof(v69));
    sub_18E18CBB8(__src, &qword_1EABD0E00, &qword_18E1AD4E0);
  }

  return 0;
}

uint64_t sub_18E18BBAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE900000000000073;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6961726472617567 && a2 == 0xEA0000000000736CLL;
    if (v6 || (sub_18E1A7B90() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000018E1B2790 == a2;
      if (v7 || (sub_18E1A7B90() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000013 && 0x800000018E1B2C00 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18E1A7B90();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18E18BD20(uint64_t a1)
{
  v1 = a1;
  sub_18E159F00(a1);
  MEMORY[0x193ACB0A0](v1);
  return sub_18E1A7CA0();
}

unint64_t sub_18E18BD60(char a1)
{
  result = 0x656469727265766FLL;
  switch(a1)
  {
    case 1:
      result = 0x6961726472617567;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E18BE00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E18BBAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E18BE28(uint64_t a1)
{
  v2 = sub_18E18CE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18BE64(uint64_t a1)
{
  v2 = sub_18E18CE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringRenderedPromptSanitizer.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E159F44();
  v27 = v26;
  v43 = sub_18E161880(&qword_1EABD0E68, &qword_18E1AD520);
  sub_18E159050();
  v44 = v28;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_18E159FE0();
  v31 = *v23;
  v32 = *(v23 + 8);
  v33 = *(v23 + 16);
  sub_18E18DFD8();
  memcpy(v34, v35, v36);
  sub_18E159D90(v27, v27[3]);
  sub_18E159D24(v31, v32, v33);
  sub_18E18CE48();
  sub_18E1A7CD0();
  v46[0] = v31;
  v46[1] = v32;
  LOBYTE(v46[2]) = v33;
  v45[0] = 0;
  sub_18E18CE9C();
  sub_18E1A7B30();
  if (v24)
  {
    sub_18E15F0C0(v46[0], v46[1], LOBYTE(v46[2]));
    (*(v44 + 8))(v25, v43);
  }

  else
  {
    sub_18E15F0C0(v46[0], v46[1], LOBYTE(v46[2]));
    memcpy(v46, v47, sizeof(v46));
    sub_18E18CC14(v47, v45, &qword_1EABD0E08, &qword_18E1AD4E8);
    sub_18E18CD4C();
    sub_18E1A7AE0();
    memcpy(v45, v46, sizeof(v45));
    sub_18E18CBB8(v45, &qword_1EABD0E08, &qword_18E1AD4E8);
    type metadata accessor for CachedSafetyModelsWrapper();
    sub_18E15B83C();
    v39 = sub_18E18CF44(v37, v38, &protocol conformance descriptor for CachedSafetyModelsWrapper);
    sub_18E15DBB0(v39);
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A2FC();
    v42 = sub_18E18CF44(v40, v41, &protocol conformance descriptor for ModelManagerSessionWrapper);
    sub_18E15DBB0(v42);
    (*(v44 + 8))(v25, v43);
  }

  sub_18E15A29C();
}

uint64_t StringRenderedPromptSanitizer.hash(into:)(const void *a1)
{
  sub_18E18DFD8();
  memcpy(v2, v3, v4);
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)(a1);
  return sub_18E18C6AC(a1);
}

uint64_t StringRenderedPromptSanitizer.hashValue.getter()
{
  sub_18E18DFD8();
  memcpy(v0, v1, v2);
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)(v4);
  sub_18E18C6AC(v4);
  return sub_18E1A7CA0();
}

void StringRenderedPromptSanitizer.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  sub_18E161880(&qword_1EABD0E80, &qword_18E1AD528);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  v17 = v2;
  sub_18E159D90(v2, v2[3]);
  sub_18E18CE48();
  sub_18E1A7CC0();
  if (v0)
  {
    sub_18E158EC4(v2);
  }

  else
  {
    sub_18E18CEF0();
    sub_18E18DFF8();
    sub_18E1A7A80();
    v7 = v19;
    v16 = v20;
    v28 = v21;
    sub_18E18CDF4();
    sub_18E18DFF8();
    sub_18E1A7A30();
    memcpy(&v27[7], v26, 0x60uLL);
    type metadata accessor for CachedSafetyModelsWrapper();
    LOBYTE(v18[0]) = 2;
    sub_18E15B83C();
    sub_18E18CF44(v8, v9, &protocol conformance descriptor for CachedSafetyModelsWrapper);
    sub_18E18DFE4();
    sub_18E1A7A80();
    v10 = v19;
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A2FC();
    sub_18E18CF44(v11, v12, &protocol conformance descriptor for ModelManagerSessionWrapper);
    sub_18E18DFE4();
    sub_18E1A7A80();
    v13 = sub_18E15A44C();
    v14(v13);
    v15 = v25;
    v18[0] = v7;
    v18[1] = v16;
    LOBYTE(v18[2]) = v28;
    memcpy(&v18[2] + 1, v27, 0x67uLL);
    v18[15] = v10;
    v18[16] = v25;
    memcpy(v4, v18, 0x88uLL);
    sub_18E178FF8(v18, &v19);
    sub_18E158EC4(v17);
    v19 = v7;
    v20 = v16;
    v21 = v28;
    memcpy(v22, v27, sizeof(v22));
    v23 = v10;
    v24 = v15;
    sub_18E182038(&v19);
  }

  sub_18E15C520();
  sub_18E15A29C();
}

uint64_t sub_18E18C5F4(uint64_t a1)
{
  memcpy(__dst, (v1 + 24), sizeof(__dst));
  sub_18E1A7C60();
  StringRenderedPromptSanitizer.DefaultableOverrides.hash(into:)(v3);
  sub_18E18C6AC(v3);
  return sub_18E1A7CA0();
}

uint64_t sub_18E18C6AC(const void *a1)
{
  v3 = *v1;
  if (*v1 == 1)
  {
    return sub_18E1A7C80();
  }

  v4 = v1[1];
  v5 = v1[9];
  v6 = v1[11];
  sub_18E1A7C80();
  if (v3)
  {
    sub_18E1A7C80();
    sub_18E183964();
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_18E1A7C80();
    if (!v5)
    {
      return sub_18E1A7C80();
    }

    goto LABEL_8;
  }

  sub_18E1A7C80();
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  *&v9[8] = *(v1 + 1);
  *&v9[24] = *(v1 + 2);
  *&v9[40] = *(v1 + 3);
  *&v9[56] = v1[8];
  *v9 = v4;
  sub_18E1A7C80();
  v10 = v4;
  v7 = *(v1 + 2);
  v11 = *(v1 + 1);
  v12 = v7;
  v13 = *(v1 + 3);
  v14 = v1[8];
  sub_18E182F14(&v10, v15);
  LanguageRecognizer.hash(into:)(a1);
  v15[0] = *v9;
  v15[1] = *&v9[16];
  v15[2] = *&v9[32];
  v15[3] = *&v9[48];
  sub_18E182F4C(v15);
  if (!v5)
  {
    return sub_18E1A7C80();
  }

LABEL_8:
  sub_18E1A7C80();
  sub_18E18391C();
  sub_18E1A7C80();
  if (v6)
  {
    *&v15[0] = v6;
    sub_18E1A7C80();
    sub_18E1A7390();
    sub_18E18CF44(&qword_1EABD0BE0, MEMORY[0x1E69A0EC8], MEMORY[0x1E69A0ED8]);
    return sub_18E1A74D0();
  }

  return sub_18E1A7C80();
}

unint64_t sub_18E18C878()
{
  result = qword_1EABD0DB0;
  if (!qword_1EABD0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DB0);
  }

  return result;
}

unint64_t sub_18E18C8CC()
{
  result = qword_1EABD0DB8;
  if (!qword_1EABD0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DB8);
  }

  return result;
}

unint64_t sub_18E18C920()
{
  result = qword_1EABD0DC0;
  if (!qword_1EABD0DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0DC0);
  }

  return result;
}

unint64_t sub_18E18C9DC()
{
  result = qword_1ED8D98D0;
  if (!qword_1ED8D98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98D0);
  }

  return result;
}

unint64_t sub_18E18CA30()
{
  result = qword_1EABD00F0;
  if (!qword_1EABD00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD00F0);
  }

  return result;
}

unint64_t sub_18E18CA84()
{
  result = qword_1ED8D96C8;
  if (!qword_1ED8D96C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96C8);
  }

  return result;
}

unint64_t sub_18E18CAD8()
{
  result = qword_1ED8D96D0;
  if (!qword_1ED8D96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D96D0);
  }

  return result;
}

unint64_t sub_18E18CB2C()
{
  result = qword_1EABCFDD0;
  if (!qword_1EABCFDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFDD0);
  }

  return result;
}

uint64_t sub_18E18CBB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_18E161880(a2, a3);
  sub_18E1594D8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_18E18CC14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_18E161880(a3, a4);
  sub_18E1594D8();
  v5 = sub_18E15A234();
  v6(v5);
  return a2;
}

unint64_t sub_18E18CCA4()
{
  result = qword_1EABD0E28;
  if (!qword_1EABD0E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E28);
  }

  return result;
}

unint64_t sub_18E18CCF8()
{
  result = qword_1EABD0E30;
  if (!qword_1EABD0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E30);
  }

  return result;
}

unint64_t sub_18E18CD4C()
{
  result = qword_1EABD0E38;
  if (!qword_1EABD0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E38);
  }

  return result;
}

unint64_t sub_18E18CDA0()
{
  result = qword_1EABD0E40;
  if (!qword_1EABD0E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E40);
  }

  return result;
}

unint64_t sub_18E18CDF4()
{
  result = qword_1EABD0E60;
  if (!qword_1EABD0E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E60);
  }

  return result;
}

unint64_t sub_18E18CE48()
{
  result = qword_1EABD0E70;
  if (!qword_1EABD0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E70);
  }

  return result;
}

unint64_t sub_18E18CE9C()
{
  result = qword_1EABD0E78;
  if (!qword_1EABD0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E78);
  }

  return result;
}

unint64_t sub_18E18CEF0()
{
  result = qword_1EABD0E88;
  if (!qword_1EABD0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0E88);
  }

  return result;
}

uint64_t sub_18E18CF44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18E18CF90()
{
  result = qword_1EABD0EA0;
  if (!qword_1EABD0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EA0);
  }

  return result;
}

unint64_t sub_18E18CFE8()
{
  result = qword_1EABD0EA8;
  if (!qword_1EABD0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EA8);
  }

  return result;
}

unint64_t sub_18E18D040()
{
  result = qword_1EABD0EB0;
  if (!qword_1EABD0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EB0);
  }

  return result;
}

unint64_t sub_18E18D098()
{
  result = qword_1EABD0EB8;
  if (!qword_1EABD0EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EB8);
  }

  return result;
}

unint64_t sub_18E18D0F0()
{
  result = qword_1EABD0EC0;
  if (!qword_1EABD0EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EC0);
  }

  return result;
}

uint64_t sub_18E18D154(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_18E18D194(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_18E18D1EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 97))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 96);
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

uint64_t sub_18E18D22C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StringRenderedPromptSanitizer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_18E18D398(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StringRenderedPromptSanitizer.Guardrails.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_18E18D570(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_18E18D620()
{
  result = qword_1EABD0EC8;
  if (!qword_1EABD0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EC8);
  }

  return result;
}

unint64_t sub_18E18D678()
{
  result = qword_1EABD0ED0;
  if (!qword_1EABD0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0ED0);
  }

  return result;
}

unint64_t sub_18E18D6D0()
{
  result = qword_1EABD0ED8;
  if (!qword_1EABD0ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0ED8);
  }

  return result;
}

unint64_t sub_18E18D728()
{
  result = qword_1EABD0EE0;
  if (!qword_1EABD0EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EE0);
  }

  return result;
}

unint64_t sub_18E18D780()
{
  result = qword_1EABD0EE8;
  if (!qword_1EABD0EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EE8);
  }

  return result;
}

unint64_t sub_18E18D7D8()
{
  result = qword_1EABD0EF0;
  if (!qword_1EABD0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EF0);
  }

  return result;
}

unint64_t sub_18E18D830()
{
  result = qword_1EABD0EF8;
  if (!qword_1EABD0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0EF8);
  }

  return result;
}

unint64_t sub_18E18D888()
{
  result = qword_1EABD0F00;
  if (!qword_1EABD0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F00);
  }

  return result;
}

unint64_t sub_18E18D8E0()
{
  result = qword_1EABD0F08;
  if (!qword_1EABD0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F08);
  }

  return result;
}

unint64_t sub_18E18D938()
{
  result = qword_1EABD0F10;
  if (!qword_1EABD0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F10);
  }

  return result;
}

unint64_t sub_18E18D990()
{
  result = qword_1EABD0F18;
  if (!qword_1EABD0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F18);
  }

  return result;
}

unint64_t sub_18E18D9E8()
{
  result = qword_1EABD0F20;
  if (!qword_1EABD0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F20);
  }

  return result;
}

unint64_t sub_18E18DA40()
{
  result = qword_1EABD0F28;
  if (!qword_1EABD0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F28);
  }

  return result;
}

unint64_t sub_18E18DA98()
{
  result = qword_1EABD0F30;
  if (!qword_1EABD0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F30);
  }

  return result;
}

unint64_t sub_18E18DAF0()
{
  result = qword_1EABD0F38;
  if (!qword_1EABD0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F38);
  }

  return result;
}

unint64_t sub_18E18DB48()
{
  result = qword_1EABD0F40;
  if (!qword_1EABD0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F40);
  }

  return result;
}

unint64_t sub_18E18DBA0()
{
  result = qword_1EABD0F48;
  if (!qword_1EABD0F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F48);
  }

  return result;
}

unint64_t sub_18E18DBF8()
{
  result = qword_1ED8D98C8;
  if (!qword_1ED8D98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98C8);
  }

  return result;
}

unint64_t sub_18E18DC50()
{
  result = qword_1ED8D98C0;
  if (!qword_1ED8D98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98C0);
  }

  return result;
}

unint64_t sub_18E18DCA8()
{
  result = qword_1ED8D98B8;
  if (!qword_1ED8D98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98B8);
  }

  return result;
}

unint64_t sub_18E18DD00()
{
  result = qword_1ED8D98B0;
  if (!qword_1ED8D98B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98B0);
  }

  return result;
}

unint64_t sub_18E18DD58()
{
  result = qword_1ED8D98E0[0];
  if (!qword_1ED8D98E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8D98E0);
  }

  return result;
}

unint64_t sub_18E18DDB0()
{
  result = qword_1ED8D98D8;
  if (!qword_1ED8D98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8D98D8);
  }

  return result;
}

unint64_t sub_18E18DE08()
{
  result = qword_1EABD0F50;
  if (!qword_1EABD0F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F50);
  }

  return result;
}

unint64_t sub_18E18DE60()
{
  result = qword_1EABD0F58;
  if (!qword_1EABD0F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F58);
  }

  return result;
}

unint64_t sub_18E18DEB8()
{
  result = qword_1EABD01F8;
  if (!qword_1EABD01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01F8);
  }

  return result;
}

unint64_t sub_18E18DF10()
{
  result = qword_1EABD0190;
  if (!qword_1EABD0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0190);
  }

  return result;
}

uint64_t sub_18E18DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return sub_18E18CB80(&STACK[0x2A0], &a65);
}

uint64_t sub_18E18DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  return sub_18E18CC14(a1, va, v18, v19);
}

uint64_t sub_18E18E004(uint64_t a1, uint64_t a2)
{

  return sub_18E1A7AD0();
}

void *StringRenderedPromptSanitizerWithRunner.init(sanitizer:runner:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x88uLL);
  a4[17] = a2;
  a4[18] = a3;
  return result;
}

uint64_t StringRenderedPromptSanitizerWithRunner.scrub(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  memcpy(v4 + 2, v5, 0x88uLL);
  v9 = v5[17];
  v10 = v5[18];
  sub_18E178FF8((v4 + 2), (v4 + 19));
  v4[89] = a1;
  v4[90] = a2;
  memcpy(v4 + 36, v4 + 2, 0x88uLL);
  v11 = *(v10 + 8);
  v14 = (*(v11 + 40) + **(v11 + 40));
  v12 = swift_task_alloc();
  v4[91] = v12;
  *v12 = v4;
  v12[1] = sub_18E18E1E4;

  return v14(v4 + 87, v4 + 89, a3, v4 + 36, v9, v11);
}

uint64_t sub_18E18E1E4()
{
  v2 = *v1;
  *(*v1 + 736) = v0;

  if (v0)
  {
    memcpy((v2 + 424), (v2 + 288), 0x88uLL);
    sub_18E182038(v2 + 424);
    v3 = sub_18E18E348;
  }

  else
  {
    memcpy((v2 + 560), (v2 + 288), 0x88uLL);
    sub_18E182038(v2 + 560);
    v3 = sub_18E18E328;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t StringRenderedPromptSanitizerWithRunner.sanitizer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x88uLL);
  memcpy(a1, v1, 0x88uLL);
  return sub_18E178FF8(__dst, v4);
}

uint64_t sub_18E18E3C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 120);
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

uint64_t sub_18E18E404(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18E18E478()
{
  v0 = sub_18E1A7500();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  return sub_18E185020(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for StringRenderedPromptSanitizerRunnerProtocol);
}

uint64_t sub_18E18E4F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelBundleInfoForSanitizer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StringRenderedPromptSanitizerRunnerConfiguration.userRequestIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration(0) + 28);
  v4 = sub_18E1A6D90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StringRenderedPromptSanitizerRunnerConfiguration.init(modelBundleInfo:useCaseIdentifier:onBehalfOfProcessId:userRequestIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_18E15A594(a1, a6);
  v11 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration(0);
  v12 = (a6 + v11[5]);
  *v12 = a2;
  v12[1] = a3;
  *(a6 + v11[6]) = a4;
  v13 = v11[7];
  v14 = sub_18E1A6D90();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t sub_18E18E6B0(uint64_t a1)
{
  result = type metadata accessor for ModelBundleInfoForSanitizer(319);
  if (v2 <= 0x3F)
  {
    result = sub_18E1A6D90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t StringResponseSanitizer.init(overrides:guardrails:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *a2;
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  v7 = type metadata accessor for CachedSafetyModelsWrapper();
  sub_18E15B80C(v7);
  sub_18E15933C();
  v8 = type metadata accessor for CachedSafetyModels();
  sub_18E15B80C(v8);
  sub_18E161880(&qword_1EABD0988, &unk_18E1AB600);
  sub_18E161880(&qword_1EABD0A78, &qword_18E1ABBB8);
  v9 = sub_18E15A160();
  sub_18E15BAE0(MEMORY[0x1E69E7CC0], v10, v11, v9);
  v12 = sub_18E161880(&qword_1EABD0A80, qword_18E1ABBC0);
  v13 = sub_18E15A434(v12);
  sub_18E15A8DC(v13);
  *(a3 + 32) = v3;
  v14 = type metadata accessor for ModelManagerSessionWrapper();
  v15 = sub_18E15B80C(v14);
  v16 = sub_18E161880(&qword_1EABD0AE8, &qword_18E1AC170);
  result = sub_18E15A434(v16);
  *(result + 24) = 0;
  *(result + 16) = 0;
  *(v15 + 16) = result;
  *(a3 + 40) = v15;
  return result;
}

uint64_t StringResponseSanitizer.Overrides.denyList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

GenerativeModels::StringResponseSanitizer::Overrides __swiftcall StringResponseSanitizer.Overrides.init(denyList:)(GenerativeModels::OutputDenyListBundle denyList)
{
  v2 = *(denyList.identifier._countAndFlagsBits + 8);
  *v1 = *denyList.identifier._countAndFlagsBits;
  v1[1] = v2;
  result.denyList.value = denyList;
  return result;
}

BOOL static StringResponseSanitizer.Overrides.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      v4 = *a1;
      v5 = v4 == *a2 && v2 == v3;
      return v5 || (sub_18E15A124(v4, v2, *a2) & 1) != 0;
    }

LABEL_10:

    return 0;
  }

  if (v3)
  {
    goto LABEL_10;
  }

  return 1;
}

uint64_t sub_18E18E8F8(uint64_t a1)
{
  v2 = sub_18E15BA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18E934(uint64_t a1)
{
  v2 = sub_18E15BA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.Overrides.encode(to:)()
{
  sub_18E159F44();
  v2 = v1;
  sub_18E159050();
  v5 = v4;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_18E15A114();
  sub_18E159D90(v2, v2[3]);
  sub_18E15BA04();

  sub_18E15A8D0();
  sub_18E1A7CD0();
  sub_18E18EAA4();
  sub_18E1A7AE0();

  (*(v5 + 8))(v0, v3);
  sub_18E15A29C();
}

unint64_t sub_18E18EAA4()
{
  result = qword_1EABCFFD8;
  if (!qword_1EABCFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFFD8);
  }

  return result;
}

uint64_t StringResponseSanitizer.Overrides.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();

  return sub_18E1A75C0();
}

uint64_t StringResponseSanitizer.Overrides.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_18E159F00(a1);
  sub_18E1A7C80();
  if (v2)
  {
    sub_18E1A75C0();
  }

  return sub_18E1A7CA0();
}

uint64_t sub_18E18EC1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000018E1B2BA0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18E1A7B90();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18E18ECBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18E18EC1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18E18ECE8(uint64_t a1)
{
  v2 = sub_18E18EE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18ED24(uint64_t a1)
{
  v2 = sub_18E18EE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.Guardrails.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E159F44();
  v22 = v21;
  v23 = sub_18E161880(&qword_1EABD0F70, &qword_18E1AE9B0);
  sub_18E159050();
  v25 = v24;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v26, v27);
  sub_18E15D458();
  sub_18E159D90(v22, v22[3]);
  sub_18E18EE8C();

  sub_18E15D900();
  sub_18E15A8D0();
  sub_18E1A7CD0();
  sub_18E189270();
  sub_18E1A7B30();

  (*(v25 + 8))(v20, v23);
  sub_18E15A29C();
}

unint64_t sub_18E18EE8C()
{
  result = qword_1EABCFE18;
  if (!qword_1EABCFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE18);
  }

  return result;
}

uint64_t StringResponseSanitizer.Guardrails.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x193ACB0A0](v2);
  if (v2)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x193ACB0A0](v5);
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t StringResponseSanitizer.Guardrails.hashValue.getter(uint64_t a1)
{
  sub_18E159F00(a1);
  sub_18E183964();
  return sub_18E1A7CA0();
}

void StringResponseSanitizer.Guardrails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v12 = v11;
  v14 = v13;
  sub_18E161880(&qword_1EABD0F78, &qword_18E1AE9B8);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E15D458();
  sub_18E159D90(v12, v12[3]);
  sub_18E18EE8C();
  sub_18E15D900();
  sub_18E15A8D0();
  sub_18E1A7CC0();
  if (!v10)
  {
    sub_18E18C878();
    sub_18E15D5E8();
    sub_18E1A7A80();
    v17 = sub_18E15C048();
    v18(v17);
    *v14 = a10;
  }

  sub_18E158EC4(v12);
  sub_18E15A29C();
}

BOOL static StringResponseSanitizer.DefaultableOverrides.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  if ((v3 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      if (v2 == 1)
      {
        v29 = sub_18E15D108();
        sub_18E159D24(v29, v30, v31);
        v32 = sub_18E15A4C8();
        sub_18E159D24(v32, v33, 0);
        v34 = sub_18E15A4C8();
        sub_18E159D24(v34, v35, 0);
        v36 = sub_18E15D108();
        sub_18E159D24(v36, v37, v38);
        v39 = sub_18E15A4C8();
        sub_18E15F0C0(v39, v40, 0);
        v41 = sub_18E15D108();
        sub_18E15F0C0(v41, v42, v43);
        if (v4 == 1)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }

      v116 = *a1;
      v117 = v2;
      if (v4 != 1)
      {
        v114 = v5;
        v115 = v4;
        v94 = sub_18E15D108();
        v97 = sub_18E15923C(v94, v95, v96);
        v99 = sub_18E15923C(v97, v98, 0);
        sub_18E159D24(v99, v100, 0);
        v101 = sub_18E15D108();
        v104 = sub_18E15923C(v101, v102, v103);
        sub_18E159D28(v104, v105);
        v106 = static StringResponseSanitizer.Overrides.== infix(_:_:)(&v116, &v114);
        v107 = sub_18E15A234();
        sub_18E15F0C0(v107, v108, 0);
        v109 = sub_18E15D108();
        sub_18E15F0C0(v109, v110, v111);

        v112 = sub_18E15A234();
        sub_18E15F0C4(v112, v113);
        return v106;
      }

      v59 = sub_18E15BCB0();
      v61 = sub_18E15923C(v59, v60, 0);
      v63 = sub_18E15923C(v61, v62, 0);
      sub_18E159D24(v63, v64, 0);
      v65 = sub_18E15BCB0();
      v67 = sub_18E15923C(v65, v66, 0);
      sub_18E159D28(v67, v68);
      v69 = sub_18E15A234();
      sub_18E15F0C0(v69, v70, 0);
      v56 = sub_18E15BCB0();
      v58 = 0;
      goto LABEL_15;
    }

LABEL_7:
    v25 = sub_18E15A234();
    sub_18E159D24(v25, v26, v3);
    v27 = sub_18E15923C(v5, v4, v6);
    sub_18E15F0C0(v27, v28, v3);
    sub_18E15F0C0(v5, v4, v6);
    return 0;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v116 = *a1;
    v117 = v2;
    if (v4 != 1)
    {
      v114 = v5;
      v115 = v4;
      v22 = 1;
      v74 = sub_18E15AAAC();
      v77 = sub_18E15923C(v74, v75, v76);
      v79 = sub_18E15923C(v77, v78, 1);
      sub_18E159D24(v79, v80, 1);
      v81 = sub_18E15AAAC();
      v84 = sub_18E15923C(v81, v82, v83);
      sub_18E159D28(v84, v85);
      v86 = static StringResponseSanitizer.Overrides.== infix(_:_:)(&v116, &v114);
      v87 = sub_18E15A234();
      sub_18E15F0C0(v87, v88, 1);
      v89 = sub_18E15AAAC();
      sub_18E15F0C0(v89, v90, v91);

      v92 = sub_18E15A234();
      sub_18E15F0C4(v92, v93);
      if (v86)
      {
        return v22;
      }

      return 0;
    }

    v44 = sub_18E15BCB0();
    v46 = sub_18E15923C(v44, v45, 1);
    v48 = sub_18E15923C(v46, v47, 1);
    sub_18E159D24(v48, v49, 1);
    v50 = sub_18E15BCB0();
    v52 = sub_18E15923C(v50, v51, 1);
    sub_18E159D28(v52, v53);
    v54 = sub_18E15A234();
    sub_18E15F0C0(v54, v55, 1);
    v56 = sub_18E15BCB0();
    v58 = 1;
LABEL_15:
    sub_18E15F0C0(v56, v57, v58);

    goto LABEL_16;
  }

  v7 = sub_18E15AAAC();
  sub_18E159D24(v7, v8, v9);
  v10 = sub_18E15A4C8();
  sub_18E159D24(v10, v11, 1);
  v12 = sub_18E15A4C8();
  sub_18E159D24(v12, v13, 1);
  v14 = sub_18E15AAAC();
  sub_18E159D24(v14, v15, v16);
  v17 = sub_18E15A4C8();
  sub_18E15F0C0(v17, v18, 1);
  v19 = sub_18E15AAAC();
  sub_18E15F0C0(v19, v20, v21);
  if (v4 != 1)
  {
LABEL_16:
    v71 = sub_18E15A234();
    sub_18E15F0C4(v71, v72);
    sub_18E15F0C4(v5, v4);
    return 0;
  }

LABEL_5:
  v22 = 1;
  v23 = sub_18E15A4C8();
  sub_18E15F0C4(v23, v24);
  return v22;
}

uint64_t sub_18E18F3BC(uint64_t a1)
{
  v2 = sub_18E15C068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18F3F8(uint64_t a1)
{
  v2 = sub_18E15C068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18F434(uint64_t a1)
{
  v2 = sub_18E15BF34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18F470(uint64_t a1)
{
  v2 = sub_18E15BF34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18F4AC(uint64_t a1)
{
  v2 = sub_18E191214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18F4E8(uint64_t a1)
{
  v2 = sub_18E191214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.DefaultableOverrides.encode(to:)()
{
  sub_18E159F44();
  v4 = v3;
  sub_18E161880(&qword_1EABD0F80, &qword_18E1AE9C0);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E159FE0();
  sub_18E161880(&qword_1EABD0F88, &qword_18E1AE9C8);
  sub_18E159050();
  v20 = v8;
  v21 = v7;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_18E15BB5C();
  v22 = sub_18E161880(&qword_1EABD0F90, &qword_18E1AE9D0);
  sub_18E159050();
  v12 = v11;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v13, v14);
  sub_18E15D458();
  v15 = *(v0 + 16);
  sub_18E159D90(v4, v4[3]);
  sub_18E15C068();
  sub_18E15D900();
  sub_18E1A7CD0();
  if (v15)
  {
    sub_18E191214();
    v16 = v22;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E191268();
    sub_18E1A7AE0();
    v17 = sub_18E192220();
  }

  else
  {
    sub_18E15BF34();
    v16 = v22;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E191268();
    sub_18E1A7AE0();
    v19 = *(v20 + 8);
    v17 = v2;
    v18 = v21;
  }

  v19(v17, v18);
  (*(v12 + 8))(v1, v16);
  sub_18E15A29C();
}

uint64_t StringResponseSanitizer.DefaultableOverrides.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x193ACB0A0](0);
    if (v2 != 1)
    {
      sub_18E1A7C80();
      sub_18E1A7C80();
      if (v2)
      {
        v8 = sub_18E159F88();
        sub_18E159D28(v8, v9);
        sub_18E15C5A8();
        sub_18E1A75C0();
        v5 = sub_18E159F88();
      }

      else
      {
        v5 = v1;
        v6 = 0;
      }

      v10 = 0;
      goto LABEL_13;
    }

    return sub_18E1A7C80();
  }

  MEMORY[0x193ACB0A0](1);
  if (v2 == 1)
  {
    return sub_18E1A7C80();
  }

  sub_18E1A7C80();
  sub_18E1A7C80();
  if (v2)
  {
    v3 = sub_18E159F88();
    sub_18E159D28(v3, v4);
    sub_18E15C5A8();
    sub_18E1A75C0();
    v5 = sub_18E159F88();
  }

  else
  {
    v5 = v1;
    v6 = 0;
  }

  v10 = 1;
LABEL_13:

  return sub_18E15F0C0(v5, v6, v10);
}

uint64_t StringResponseSanitizer.DefaultableOverrides.hashValue.getter(uint64_t a1)
{
  sub_18E159F00(a1);
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  return sub_18E1A7CA0();
}

uint64_t sub_18E18F940(uint64_t a1)
{
  sub_18E1A7C60();
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  return sub_18E1A7CA0();
}

BOOL static StringResponseSanitizer.DefaultableGuardrails.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1])
  {
    if (*(a2 + 8))
    {
      if (v2)
      {
        if (v3)
        {
          v4 = sub_18E15C5A8();
          v6 = sub_18E15DFE0(v4, v5);
          v7 = 1;
          v8 = sub_18E15DBDC(v3);
          sub_18E15DBDC(v8);
          j__swift_bridgeObjectRetain();
          sub_18E15DBDC(v3);
          swift_bridgeObjectRetain_n();
          j__swift_bridgeObjectRelease();
          sub_18E15A4C8();
          j__swift_bridgeObjectRelease();
          swift_bridgeObjectRelease_n();

          if (v6)
          {
            return v7;
          }

          return 0;
        }

        v13 = sub_18E15DBDC(0);
        sub_18E15DBDC(v13);
        j__swift_bridgeObjectRetain();
        sub_18E15DBDC(0);

        j__swift_bridgeObjectRelease();
        sub_18E158FC0();
        goto LABEL_20;
      }

      sub_18E15A4C8();
      j__swift_bridgeObjectRetain();
      sub_18E158FC0();
      j__swift_bridgeObjectRetain();
      sub_18E158FC0();
      j__swift_bridgeObjectRetain();
      sub_18E15A4C8();
      j__swift_bridgeObjectRetain();
      sub_18E158FC0();
      j__swift_bridgeObjectRelease();
      sub_18E15A4C8();
      goto LABEL_15;
    }

LABEL_8:
    j__swift_bridgeObjectRetain();
    j__swift_bridgeObjectRetain();
    j__swift_bridgeObjectRelease();
    j__swift_bridgeObjectRelease();
    return 0;
  }

  if (*(a2 + 8))
  {
    goto LABEL_8;
  }

  if (!v2)
  {
    sub_18E159DA8();
    j__swift_bridgeObjectRetain();
    sub_18E15DB08();
    j__swift_bridgeObjectRetain();
    sub_18E15DB08();
    j__swift_bridgeObjectRetain();
    sub_18E159DA8();
    j__swift_bridgeObjectRetain();
    sub_18E15DB08();
    j__swift_bridgeObjectRelease();
    sub_18E159DA8();
LABEL_15:
    j__swift_bridgeObjectRelease();
    if (v3)
    {
LABEL_21:

      return 0;
    }

    return 1;
  }

  if (!v3)
  {
    v14 = sub_18E15DAD0(0);
    sub_18E15DAD0(v14);
    j__swift_bridgeObjectRetain();
    sub_18E15DAD0(0);

    j__swift_bridgeObjectRelease();
    sub_18E15DB08();
LABEL_20:
    j__swift_bridgeObjectRelease();

    goto LABEL_21;
  }

  v9 = sub_18E15C5A8();
  v11 = sub_18E15DFE0(v9, v10);
  v12 = sub_18E15DAD0(v3);
  sub_18E15DAD0(v12);
  j__swift_bridgeObjectRetain();
  sub_18E15DAD0(v3);
  swift_bridgeObjectRetain_n();
  j__swift_bridgeObjectRelease();
  sub_18E159DA8();
  j__swift_bridgeObjectRelease();
  swift_bridgeObjectRelease_n();

  return (v11 & 1) != 0;
}

uint64_t sub_18E18FBE8(uint64_t a1)
{
  v2 = sub_18E1912C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18FC24(uint64_t a1)
{
  v2 = sub_18E1912C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18FC60(uint64_t a1)
{
  v2 = sub_18E1913C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18FC9C(uint64_t a1)
{
  v2 = sub_18E1913C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E18FCD8(uint64_t a1)
{
  v2 = sub_18E191318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E18FD14(uint64_t a1)
{
  v2 = sub_18E191318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.DefaultableGuardrails.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_18E159F44();
  v24 = v23;
  sub_18E161880(&qword_1EABD0FB8, &qword_18E1AE9F8);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_18E159FE0();
  sub_18E161880(&qword_1EABD0FC0, &qword_18E1AEA00);
  sub_18E159050();
  v40 = v28;
  v41 = v27;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_18E15BB5C();
  v42 = sub_18E161880(&qword_1EABD0FC8, &qword_18E1AEA08);
  sub_18E159050();
  v32 = v31;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v33, v34);
  sub_18E15D458();
  v35 = *(v20 + 8);
  sub_18E159D90(v24, v24[3]);
  sub_18E1912C4();
  sub_18E15D900();
  sub_18E1A7CD0();
  if (v35)
  {
    sub_18E191318();
    v36 = v42;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E19136C();
    sub_18E1A7AE0();
    v37 = sub_18E192220();
  }

  else
  {
    sub_18E1913C0();
    v36 = v42;
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E19136C();
    sub_18E1A7AE0();
    v39 = *(v40 + 8);
    v37 = v22;
    v38 = v41;
  }

  v39(v37, v38);
  (*(v32 + 8))(v21, v36);
  sub_18E15A29C();
}

void StringResponseSanitizer.DefaultableGuardrails.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x193ACB0A0]((v0[1] & 1) != 0);
  if (v1)
  {
    sub_18E1A7C80();
    sub_18E15C5A8();

    sub_18E183964();
  }

  else
  {
    sub_18E1A7C80();
  }
}

uint64_t StringResponseSanitizer.DefaultableGuardrails.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_18E159F00(a1);
  MEMORY[0x193ACB0A0]((v3 & 1) != 0);
  sub_18E1A7C80();
  if (v2)
  {
    sub_18E183964();
  }

  return sub_18E1A7CA0();
}

void StringResponseSanitizer.DefaultableGuardrails.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_18E159F44();
  v36 = v12;
  v14 = v13;
  sub_18E161880(&qword_1EABD0FE8, &qword_18E1AEA10);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  sub_18E15A114();
  sub_18E161880(&qword_1EABD0FF0, &qword_18E1AEA18);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_18E159FE0();
  v19 = sub_18E161880(&qword_1EABD0FF8, &qword_18E1AEA20);
  sub_18E159050();
  v35 = v20;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_18E15D458();
  sub_18E159D90(v14, v14[3]);
  sub_18E1912C4();
  sub_18E15D900();
  sub_18E1A7CC0();
  if (v10)
  {
    goto LABEL_7;
  }

  sub_18E192214();
  sub_18E1A7AA0();
  v23 = sub_18E15AF14();
  v26 = v23;
  if (v24 == v25 >> 1)
  {
LABEL_6:
    v28 = sub_18E1A78C0();
    swift_allocError();
    v30 = v29;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    *v30 = &type metadata for StringResponseSanitizer.DefaultableGuardrails;
    sub_18E192214();
    sub_18E1A7A00();
    sub_18E15AEBC();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v35 + 8))(v11, v19);
LABEL_7:
    sub_18E158EC4(v14);
    goto LABEL_8;
  }

  if (v24 < (v25 >> 1))
  {
    sub_18E15C52C(v23, v25 >> 1, v24, v25, v24);
    sub_18E15AF84();
    sub_18E19222C();
    if (!(v26 >> 1))
    {
      LOBYTE(a10) = 1;
      sub_18E191318();
      sub_18E15D5E8();
      sub_18E1A79F0();
      sub_18E191414();
      sub_18E15A45C(&type metadata for StringResponseSanitizer.Guardrails, v27);
      sub_18E15B9F8();
      swift_unknownObjectRelease();
      v31 = sub_18E1921E0();
      v32(v31);
      v33 = sub_18E15C598();
      v34(v33);
      *v36 = a10;
      *(v36 + 8) = v14;
      sub_18E158EC4(v14);
LABEL_8:
      sub_18E15A29C();
      return;
    }

    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_18E190574(uint64_t a1)
{
  sub_18E1A7C60();
  StringResponseSanitizer.DefaultableGuardrails.hash(into:)();
  return sub_18E1A7CA0();
}

double StringResponseSanitizer.init(overrides:)(__int128 *a1)
{
  v14 = *a1;
  v13 = 0;
  v1 = StringResponseSanitizer.init(overrides:guardrails:)(&v14, &v13, &v15);
  *&result = sub_18E15D8A8(v1, v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v14, *(&v14 + 1), v15, v16, v17, v10).n128_u64[0];
  return result;
}

double StringResponseSanitizer.init(guardrails:)(uint64_t *a1)
{
  v1 = *a1;
  v15 = xmmword_18E1AC6B0;
  v14 = v1;
  v2 = StringResponseSanitizer.init(overrides:guardrails:)(&v15, &v14, &v16);
  *&result = sub_18E15D8A8(v2, v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, *(&v15 + 1), v16, v17, v18, v11).n128_u64[0];
  return result;
}

BOOL static StringResponseSanitizer.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v16[0] = v2;
  v16[1] = v3;
  v17 = v4;
  v14[0] = v6;
  v14[1] = v7;
  v15 = v8;
  sub_18E159D24(v2, v3, v4);
  sub_18E159D24(v6, v7, v8);
  v10 = static StringResponseSanitizer.DefaultableOverrides.== infix(_:_:)(v16, v14);
  sub_18E15F0C0(v6, v7, v8);
  sub_18E15F0C0(v2, v3, v4);
  if (!v10)
  {
    return 0;
  }

  if (v5)
  {
    if (v9)
    {
      v11 = sub_18E15C5A8();
      return (sub_18E15DFE0(v11, v12) & 1) != 0;
    }

LABEL_7:

    return 0;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  return 1;
}

unint64_t sub_18E1909C4(char a1)
{
  result = 0x656469727265766FLL;
  switch(a1)
  {
    case 1:
      result = 0x6961726472617567;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18E190A64(uint64_t a1)
{
  v2 = sub_18E191468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E190AA0(uint64_t a1)
{
  v2 = sub_18E191468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void StringResponseSanitizer.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E159F44();
  v53 = v24;
  v26 = v25;
  v27 = sub_18E161880(&qword_1EABD1008, &qword_18E1AEA28);
  sub_18E159050();
  v29 = v28;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = *v23;
  v33 = *(v23 + 8);
  v34 = *(v23 + 16);
  v35 = *(v23 + 24);
  v51 = *(v23 + 32);
  v52 = v35;
  v50 = *(v23 + 40);
  v36 = v26[3];
  v37 = v26;
  v39 = &v49 - v38;
  sub_18E159D90(v37, v36);
  sub_18E159D24(v32, v33, v34);
  sub_18E191468();
  sub_18E1A7CD0();
  v54 = v32;
  v55 = v33;
  v56 = v34;
  sub_18E1914BC();
  v40 = v53;
  sub_18E1A7B30();
  if (v40)
  {
    sub_18E15F0C0(v54, v55, v56);
  }

  else
  {
    v42 = v50;
    v41 = v51;
    sub_18E15F0C0(v54, v55, v56);
    v54 = v52;
    sub_18E19136C();

    sub_18E1A7AE0();

    v54 = v41;
    type metadata accessor for CachedSafetyModelsWrapper();
    sub_18E15D4C4();
    v45 = sub_18E191564(v43, v44, &protocol conformance descriptor for CachedSafetyModelsWrapper);
    sub_18E15CAB0(v45);
    v54 = v42;
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A0BC();
    v48 = sub_18E191564(v46, v47, &protocol conformance descriptor for ModelManagerSessionWrapper);
    sub_18E15CAB0(v48);
  }

  (*(v29 + 8))(v39, v27);
  sub_18E15A29C();
}

void StringResponseSanitizer.hash(into:)()
{
  v1 = *(v0 + 24);
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  if (v1)
  {
    sub_18E1A7C80();
    sub_18E159F88();

    sub_18E183964();
  }

  else
  {
    sub_18E1A7C80();
  }
}

uint64_t StringResponseSanitizer.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_18E1A7C60();
  StringResponseSanitizer.DefaultableOverrides.hash(into:)();
  sub_18E1A7C80();
  if (v1)
  {
    sub_18E183964();
  }

  return sub_18E1A7CA0();
}

void StringResponseSanitizer.init(from:)()
{
  sub_18E159F44();
  v2 = v1;
  v4 = v3;
  sub_18E161880(&qword_1EABD1010, &qword_18E1AEA30);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15BB5C();
  sub_18E159D90(v2, v2[3]);
  sub_18E191468();
  sub_18E1A7CC0();
  if (v0)
  {
    sub_18E158EC4(v2);
  }

  else
  {
    sub_18E191510();
    sub_18E1921F8();
    sub_18E1A7A80();
    sub_18E191414();
    sub_18E1921F8();
    sub_18E1A7A30();
    type metadata accessor for CachedSafetyModelsWrapper();
    sub_18E15D4C4();
    sub_18E191564(v7, v8, &protocol conformance descriptor for CachedSafetyModelsWrapper);
    sub_18E1598A0();
    sub_18E1A7A80();
    type metadata accessor for ModelManagerSessionWrapper();
    sub_18E15A0BC();
    sub_18E191564(v9, v10, &protocol conformance descriptor for ModelManagerSessionWrapper);
    sub_18E1598A0();
    sub_18E1A7A80();
    v11 = sub_18E15B854();
    v12(v11);
    *v4 = v17;
    *(v4 + 8) = v18;
    *(v4 + 16) = v19;
    *(v4 + 24) = v17;
    *(v4 + 32) = v17;
    *(v4 + 40) = v17;
    v13 = sub_18E192220();
    sub_18E159D24(v13, v14, v19);

    sub_18E158EC4(v2);
    v15 = sub_18E192220();
    sub_18E15F0C0(v15, v16, v19);
  }

  sub_18E15A29C();
}

uint64_t sub_18E191180(uint64_t a1)
{
  sub_18E1A7C60();
  StringResponseSanitizer.hash(into:)();
  return sub_18E1A7CA0();
}

unint64_t sub_18E191214()
{
  result = qword_1EABD0F98;
  if (!qword_1EABD0F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0F98);
  }

  return result;
}

unint64_t sub_18E191268()
{
  result = qword_1EABD01A0;
  if (!qword_1EABD01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD01A0);
  }

  return result;
}

unint64_t sub_18E1912C4()
{
  result = qword_1EABD0FD0;
  if (!qword_1EABD0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0FD0);
  }

  return result;
}

unint64_t sub_18E191318()
{
  result = qword_1EABD0FD8;
  if (!qword_1EABD0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0FD8);
  }

  return result;
}

unint64_t sub_18E19136C()
{
  result = qword_1EABCFE10;
  if (!qword_1EABCFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE10);
  }

  return result;
}

unint64_t sub_18E1913C0()
{
  result = qword_1EABD0FE0;
  if (!qword_1EABD0FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0FE0);
  }

  return result;
}

unint64_t sub_18E191414()
{
  result = qword_1EABD1000;
  if (!qword_1EABD1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1000);
  }

  return result;
}

unint64_t sub_18E191468()
{
  result = qword_1EABCFE30;
  if (!qword_1EABCFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE30);
  }

  return result;
}

unint64_t sub_18E1914BC()
{
  result = qword_1EABCFE08;
  if (!qword_1EABCFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE08);
  }

  return result;
}

unint64_t sub_18E191510()
{
  result = qword_1EABD1018;
  if (!qword_1EABD1018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1018);
  }

  return result;
}

uint64_t sub_18E191564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18E1915B0()
{
  result = qword_1EABD1020;
  if (!qword_1EABD1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1020);
  }

  return result;
}

unint64_t sub_18E191608()
{
  result = qword_1EABD1028;
  if (!qword_1EABD1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1028);
  }

  return result;
}

unint64_t sub_18E191660()
{
  result = qword_1EABD1030;
  if (!qword_1EABD1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1030);
  }

  return result;
}

unint64_t sub_18E1916B8()
{
  result = qword_1EABD1038;
  if (!qword_1EABD1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1038);
  }

  return result;
}

unint64_t sub_18E191710()
{
  result = qword_1EABD1040;
  if (!qword_1EABD1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1040);
  }

  return result;
}

uint64_t sub_18E191778(uint64_t a1, unsigned int a2)
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

uint64_t sub_18E1917B8(uint64_t result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StringResponseSanitizer.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18E19194C()
{
  result = qword_1EABD1048;
  if (!qword_1EABD1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1048);
  }

  return result;
}

unint64_t sub_18E1919A4()
{
  result = qword_1EABD1050;
  if (!qword_1EABD1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1050);
  }

  return result;
}

unint64_t sub_18E1919FC()
{
  result = qword_1EABD1058;
  if (!qword_1EABD1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1058);
  }

  return result;
}

unint64_t sub_18E191A54()
{
  result = qword_1EABD1060;
  if (!qword_1EABD1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1060);
  }

  return result;
}

unint64_t sub_18E191AAC()
{
  result = qword_1EABD1068;
  if (!qword_1EABD1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1068);
  }

  return result;
}

unint64_t sub_18E191B04()
{
  result = qword_1EABD1070;
  if (!qword_1EABD1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1070);
  }

  return result;
}

unint64_t sub_18E191B5C()
{
  result = qword_1EABD1078;
  if (!qword_1EABD1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1078);
  }

  return result;
}

unint64_t sub_18E191BB4()
{
  result = qword_1EABD1080;
  if (!qword_1EABD1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1080);
  }

  return result;
}

unint64_t sub_18E191C0C()
{
  result = qword_1EABD1088;
  if (!qword_1EABD1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1088);
  }

  return result;
}

unint64_t sub_18E191C64()
{
  result = qword_1EABCFE40;
  if (!qword_1EABCFE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE40);
  }

  return result;
}

unint64_t sub_18E191CBC()
{
  result = qword_1EABCFE38;
  if (!qword_1EABCFE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE38);
  }

  return result;
}

unint64_t sub_18E191D14()
{
  result = qword_1EABD1090;
  if (!qword_1EABD1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1090);
  }

  return result;
}

unint64_t sub_18E191D6C()
{
  result = qword_1EABD1098;
  if (!qword_1EABD1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1098);
  }

  return result;
}

unint64_t sub_18E191DC4()
{
  result = qword_1EABD10A0;
  if (!qword_1EABD10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10A0);
  }

  return result;
}

unint64_t sub_18E191E1C()
{
  result = qword_1EABD10A8;
  if (!qword_1EABD10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10A8);
  }

  return result;
}

unint64_t sub_18E191E74()
{
  result = qword_1EABD10B0;
  if (!qword_1EABD10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10B0);
  }

  return result;
}

unint64_t sub_18E191ECC()
{
  result = qword_1EABD10B8;
  if (!qword_1EABD10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10B8);
  }

  return result;
}

unint64_t sub_18E191F24()
{
  result = qword_1EABD0218;
  if (!qword_1EABD0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0218);
  }

  return result;
}

unint64_t sub_18E191F7C()
{
  result = qword_1EABD0210;
  if (!qword_1EABD0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0210);
  }

  return result;
}

unint64_t sub_18E191FD4()
{
  result = qword_1EABD0248;
  if (!qword_1EABD0248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0248);
  }

  return result;
}

unint64_t sub_18E19202C()
{
  result = qword_1EABD0200;
  if (!qword_1EABD0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0200);
  }

  return result;
}

unint64_t sub_18E192084()
{
  result = qword_1EABD0230;
  if (!qword_1EABD0230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0230);
  }

  return result;
}

unint64_t sub_18E1920DC()
{
  result = qword_1EABD0228;
  if (!qword_1EABD0228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD0228);
  }

  return result;
}

unint64_t sub_18E192134()
{
  result = qword_1EABCFE28;
  if (!qword_1EABCFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE28);
  }

  return result;
}

unint64_t sub_18E19218C()
{
  result = qword_1EABCFE20;
  if (!qword_1EABCFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABCFE20);
  }

  return result;
}

uint64_t sub_18E19222C()
{

  return swift_unknownObjectRelease();
}

__n128 StringResponseSanitizerWithRunner.init(sanitizer:runner:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a4 = *a1;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
  return result;
}

uint64_t StringResponseSanitizerWithRunner.scrub(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[1];
  v9 = *(v3 + 16);
  v11 = v3[3];
  v10 = v3[4];
  v12 = v3[5];
  v15 = v3[7];
  sub_18E159D24(*v3, v8, v9);

  *(v4 + 80) = a1;
  *(v4 + 88) = a2;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  *(v4 + 40) = v11;
  *(v4 + 48) = v10;
  *(v4 + 56) = v12;
  v16 = (*(*(v15 + 8) + 40) + **(*(v15 + 8) + 40));
  v13 = swift_task_alloc();
  *(v4 + 96) = v13;
  *v13 = v4;
  v13[1] = sub_18E192428;

  return v16(v4 + 64, v4 + 80, a3, v4 + 16);
}

uint64_t sub_18E192428()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  sub_18E15F0C0(*(v2 + 16), *(v2 + 24), *(v2 + 32));

  if (v0)
  {
    v3 = sub_18E1925E0;
  }

  else
  {
    v3 = sub_18E1925C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t StringResponseSanitizerWithRunner.scrub<A>(_:elementToContent:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  v13 = *(v6 + 32);
  v14 = *(v6 + 40);
  v15 = *(v6 + 56);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a2;
  v16[5] = a3;
  v25 = v9;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v20 = *(*(v15 + 8) + 48);
  sub_18E159D24(v9, v10, v11);

  v20(a1, sub_18E1927CC, v16, a4, &v25, a5, a6);

  sub_18E15F0C0(v25, v26, v27);
}

uint64_t StringResponseSanitizerWithRunner.sanitizer.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  sub_18E159D24(v2, v3, v4);
}

uint64_t sub_18E1927CC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t StringResponseSanitizerWithRunner.scrub<A>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v13 = *(v4 + 32);
  v14 = *(v4 + 40);
  v15 = *(v4 + 48);
  v16 = *(v4 + 56);
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  sub_18E159D24(v9, v10, v11);
  v17 = *(v16 + 8);

  static ResponseSanitizerRunnerProtocol.scrub<A>(_:configuration:sanitizer:)(a1, a2, &v19, v15, a3, v17, a4);
  sub_18E15F0C0(v19, v20, v21);
}

uint64_t sub_18E1928EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_18E19292C(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_18E19298C()
{
  v0 = sub_18E1A7500();
  v1 = NSClassFromString(v0);

  if (!v1)
  {
    return 0;
  }

  ObjCClassMetadata = swift_getObjCClassMetadata();
  return sub_18E185020(ObjCClassMetadata, ObjCClassMetadata, &protocol descriptor for StringResponseSanitizerRunnerProtocol);
}

uint64_t sub_18E192A00(uint64_t a1)
{
  v2 = sub_18E193078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E192A3C(uint64_t a1)
{
  v2 = sub_18E193078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E192A78(uint64_t a1)
{
  v2 = sub_18E193024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E192AB4(uint64_t a1)
{
  v2 = sub_18E193024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E192AF0(uint64_t a1)
{
  v2 = sub_18E1930CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E192B2C(uint64_t a1)
{
  v2 = sub_18E1930CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void LLMModelBundle.encode(to:)()
{
  sub_18E159F44();
  v47 = v0;
  v3 = v2;
  sub_18E161880(&qword_1EABD10C0, "\\Q");
  sub_18E159050();
  v45 = v5;
  v46 = v4;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_18E15A1EC();
  v42 = v8;
  sub_18E1A6FA0();
  sub_18E159050();
  v43 = v10;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  sub_18E15A808();
  v41 = v13 - v12;
  sub_18E161880(&qword_1EABD10C8, &qword_18E1AFB88);
  sub_18E159050();
  v39 = v15;
  v40 = v14;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E15D7AC();
  sub_18E1A6FE0();
  sub_18E159050();
  v37 = v19;
  v38 = v18;
  MEMORY[0x1EEE9AC00](v18, v20);
  sub_18E15A808();
  v23 = v22 - v21;
  type metadata accessor for LLMModelBundle(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_18E15A808();
  v28 = v27 - v26;
  sub_18E161880(&qword_1EABD10D0, &qword_18E1AFB90);
  sub_18E159050();
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_18E158E00(v3, v3[3]);
  sub_18E193024();
  sub_18E1A7CD0();
  sub_18E19476C(v47, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v43 + 32))(v41, v28, v44);
    sub_18E15BCBC();
    sub_18E193078();
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E15B864();
    sub_18E194B68(v31, v32, MEMORY[0x1E69B2468]);
    sub_18E1A7B30();
    (*(v45 + 8))(v42, v46);
    (*(v43 + 8))(v41, v44);
  }

  else
  {
    (*(v37 + 32))(v23, v28, v38);
    sub_18E1930CC();
    sub_18E15D5E8();
    sub_18E1A7AD0();
    sub_18E15A314();
    sub_18E194B68(v33, v34, MEMORY[0x1E69B2548]);
    sub_18E1A7B30();
    (*(v39 + 8))(v1, v40);
    (*(v37 + 8))(v23, v38);
  }

  v35 = sub_18E15D4DC();
  v36(v35);
  sub_18E15A29C();
}

unint64_t sub_18E193024()
{
  result = qword_1EABD10D8;
  if (!qword_1EABD10D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10D8);
  }

  return result;
}

unint64_t sub_18E193078()
{
  result = qword_1EABD10E0;
  if (!qword_1EABD10E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10E0);
  }

  return result;
}

unint64_t sub_18E1930CC()
{
  result = qword_1EABD10F0;
  if (!qword_1EABD10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD10F0);
  }

  return result;
}

void LLMModelBundle.init(from:)()
{
  sub_18E159F44();
  v76 = v0;
  v2 = v1;
  v67 = v3;
  v75 = sub_18E161880(&qword_1EABD1100, &qword_18E1AFB98);
  sub_18E159050();
  v70 = v4;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_18E15A1EC();
  v72 = v7;
  sub_18E161880(&qword_1EABD1108, &qword_18E1AFBA0);
  sub_18E159050();
  v68 = v9;
  v69 = v8;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v10, v11);
  sub_18E15A1EC();
  v71 = v12;
  sub_18E161880(&qword_1EABD1110, &qword_18E1AFBA8);
  sub_18E159050();
  v73 = v14;
  v74 = v13;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v15, v16);
  v17 = sub_18E15D7AC();
  v18 = type metadata accessor for LLMModelBundle(v17);
  sub_18E159098();
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v63 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v63 - v29;
  v31 = v2[3];
  sub_18E158E00(v2, v31);
  sub_18E193024();
  sub_18E15D90C(&type metadata for LLMModelBundle.CodingKeys);
  if (!v0)
  {
    v63 = v23;
    v64 = v27;
    v32 = v74;
    v65 = v30;
    v66 = v18;
    v76 = v2;
    sub_18E1A7AA0();
    sub_18E15AF14();
    if (v34 != v33 >> 1)
    {
      sub_18E15C554();
      if (v37 == v38)
      {
        __break(1u);
        return;
      }

      v77 = *(v36 + v35);
      sub_18E15AF84();
      sub_18E1953F4();
      if (!v31)
      {
        v39 = v32;
        if (v77)
        {
          sub_18E15BCBC();
          sub_18E193078();
          sub_18E15D5E8();
          sub_18E1A79F0();
          v40 = v65;
          v41 = sub_18E1A6FA0();
          sub_18E15B864();
          sub_18E194B68(v42, v43, MEMORY[0x1E69B2470]);
          v44 = v63;
          sub_18E158FE8(v41, v45);
          swift_unknownObjectRelease();
          v57 = sub_18E1953E8();
          v58(v57);
          v59 = sub_18E159F94();
        }

        else
        {
          sub_18E1930CC();
          sub_18E15D5E8();
          sub_18E1A79F0();
          v40 = v65;
          v52 = sub_18E1A6FE0();
          sub_18E15A314();
          sub_18E194B68(v53, v54, MEMORY[0x1E69B2550]);
          v44 = v64;
          v55 = v69;
          sub_18E158FE8(v52, v56);
          swift_unknownObjectRelease();
          v61 = sub_18E15A0D4();
          v62(v61, v55);
          v59 = sub_18E15D650();
        }

        v60(v59, v39);
        swift_storeEnumTagMultiPayload();
        sub_18E1948C4(v44, v40);
        sub_18E1948C4(v40, v67);
        v51 = v76;
        goto LABEL_10;
      }
    }

    v46 = sub_18E1A78C0();
    swift_allocError();
    v48 = v47;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    sub_18E15DB80();
    sub_18E15AEBC();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v49 = sub_18E15D4DC();
    v50(v49);
    v2 = v76;
  }

  v51 = v2;
LABEL_10:
  sub_18E158EC4(v51);
  sub_18E15A29C();
}

uint64_t ModelBundleIdentifier.identifier.getter()
{
  v2 = v0;
  v3 = sub_18E161880(&qword_1EABD1128, &unk_18E1B10E0);
  sub_18E159050();
  v5 = v4;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  v10 = sub_18E161880(&qword_1EABD1130, &qword_18E1AFBB0);
  sub_18E159050();
  v12 = v11;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = sub_18E15D7AC();
  type metadata accessor for ModelBundleIdentifier(v15);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v16, v17);
  sub_18E15A808();
  v20 = v19 - v18;
  sub_18E15A8F0();
  sub_18E19476C(v2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v9, v20, v3);
    v21 = sub_18E1A6FC0();
    (*(v5 + 8))(v9, v3);
  }

  else
  {
    (*(v12 + 32))(v1, v20, v10);
    v21 = sub_18E1A6FC0();
    (*(v12 + 8))(v1, v10);
  }

  return v21;
}

uint64_t sub_18E193924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E75426D6C6CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_18E1A7B90() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018E1B2C50 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18E1A7B90();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18E1939FC(uint64_t a1)
{
  v2 = sub_18E19481C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E193A38(uint64_t a1)
{
  v2 = sub_18E19481C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E193A74(uint64_t a1)
{
  v2 = sub_18E1947C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E193AB0(uint64_t a1)
{
  v2 = sub_18E1947C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18E193AEC(uint64_t a1)
{
  v2 = sub_18E194870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18E193B28(uint64_t a1)
{
  v2 = sub_18E194870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ModelBundleIdentifier.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_18E159F44();
  v83 = v24;
  v80 = v23;
  v26 = v25;
  sub_18E161880(&qword_1EABD1138, &qword_18E1AFBB8);
  sub_18E159050();
  v78 = v28;
  v79 = v27;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v29, v30);
  sub_18E15A1EC();
  v77 = v31;
  sub_18E161880(&qword_1EABD1128, &unk_18E1B10E0);
  sub_18E159050();
  v75 = v33;
  v76 = v32;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v34, v35);
  sub_18E15A1EC();
  v74 = v36;
  sub_18E161880(&qword_1EABD1140, &qword_18E1AFBC0);
  sub_18E159050();
  v72 = v38;
  v73 = v37;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v70 - v41;
  v43 = sub_18E161880(&qword_1EABD1130, &qword_18E1AFBB0);
  sub_18E159050();
  v71 = v44;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v70 - v47;
  type metadata accessor for ModelBundleIdentifier(0);
  sub_18E159098();
  MEMORY[0x1EEE9AC00](v49, v50);
  sub_18E15A808();
  v53 = v52 - v51;
  sub_18E161880(&qword_1EABD1148, &qword_18E1AFBC8);
  sub_18E159050();
  v81 = v55;
  v82 = v54;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v70 - v58;
  sub_18E158E00(v26, v26[3]);
  sub_18E1947C8();
  sub_18E1A7CD0();
  sub_18E15A8F0();
  sub_18E19476C(v80, v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = sub_18E1953E8();
    v61(v60);
    sub_18E15BCBC();
    sub_18E19481C();
    v62 = v77;
    v63 = v82;
    sub_18E1A7AD0();
    sub_18E15A47C(&qword_1EABD01D0, &qword_1EABD1128, &unk_18E1B10E0);
    v64 = v79;
    sub_18E1A7B30();
    (*(v78 + 8))(v62, v64);
    v65 = sub_18E1953E8();
    v66(v65);
    (*(v81 + 8))(v59, v63);
  }

  else
  {
    v67 = v71;
    (*(v71 + 32))(v48, v53, v43);
    sub_18E194870();
    v68 = v82;
    sub_18E1A7AD0();
    sub_18E15A47C(&qword_1EABCFEB8, &qword_1EABD1130, &qword_18E1AFBB0);
    v69 = v73;
    sub_18E1A7B30();
    (*(v72 + 8))(v42, v69);
    (*(v67 + 8))(v48, v43);
    (*(v81 + 8))(v59, v68);
  }

  sub_18E15A29C();
}

void ModelBundleIdentifier.init(from:)()
{
  sub_18E159F44();
  v78 = v0;
  v2 = v1;
  v69 = v3;
  sub_18E161880(&qword_1EABD1168, &qword_18E1AFBD0);
  sub_18E159050();
  v72 = v4;
  v73 = v5;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_18E15A1EC();
  v75 = v8;
  sub_18E161880(&qword_1EABD1170, &qword_18E1AFBD8);
  sub_18E159050();
  v70 = v10;
  v71 = v9;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v11, v12);
  sub_18E15A1EC();
  v74 = v13;
  sub_18E161880(&qword_1EABD1178, &qword_18E1AFBE0);
  sub_18E159050();
  v76 = v15;
  v77 = v14;
  sub_18E159074();
  MEMORY[0x1EEE9AC00](v16, v17);
  v18 = sub_18E15D7AC();
  v19 = type metadata accessor for ModelBundleIdentifier(v18);
  sub_18E159098();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v65 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v31 = &v65 - v30;
  v32 = v2[3];
  sub_18E158E00(v2, v32);
  sub_18E1947C8();
  sub_18E15D90C(&type metadata for ModelBundleIdentifier.CodingKeys);
  if (!v0)
  {
    v66 = v28;
    v67 = v24;
    v65 = v31;
    v68 = v19;
    v78 = v2;
    v33 = v77;
    sub_18E1A7AA0();
    sub_18E15AF14();
    if (v35 != v34 >> 1)
    {
      sub_18E15C554();
      if (v38 == v39)
      {
        __break(1u);
        return;
      }

      v40 = *(v37 + v36);
      sub_18E15AF84();
      sub_18E1953F4();
      v41 = v67;
      if (!v32)
      {
        if (v40)
        {
          sub_18E15BCBC();
          sub_18E19481C();
          sub_18E15D5E8();
          sub_18E1A79F0();
          sub_18E161880(&qword_1EABD1128, &unk_18E1B10E0);
          sub_18E15DA40();
          sub_18E194920(v42, v43, &unk_18E1B10E0, v44);
          sub_18E1A7A80();
          swift_unknownObjectRelease();
          v55 = sub_18E1598C0();
          v56(v55);
          v57 = sub_18E159F94();
          v58(v57, v33);
          swift_storeEnumTagMultiPayload();
          v59 = v41;
        }

        else
        {
          sub_18E194870();
          sub_18E15D5E8();
          sub_18E1A79F0();
          sub_18E161880(&qword_1EABD1130, &qword_18E1AFBB0);
          sub_18E15DA40();
          sub_18E194920(v51, v52, &qword_18E1AFBB0, v53);
          v59 = v66;
          v54 = v71;
          sub_18E1A7A80();
          swift_unknownObjectRelease();
          v60 = sub_18E15A0D4();
          v61(v60, v54);
          v62 = sub_18E15D4DC();
          v63(v62);
          swift_storeEnumTagMultiPayload();
        }

        v64 = v65;
        sub_18E1948C4(v59, v65);
        sub_18E1948C4(v64, v69);
        v50 = v78;
        goto LABEL_10;
      }
    }

    v45 = sub_18E1A78C0();
    swift_allocError();
    v47 = v46;
    sub_18E161880(&qword_1EABD06A0, &qword_18E1AA9F0);
    sub_18E15DB80();
    sub_18E15AEBC();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = sub_18E15D4DC();
    v49(v48);
    v2 = v78;
  }

  v50 = v2;
LABEL_10:
  sub_18E158EC4(v50);
  sub_18E15A29C();
}

uint64_t StringResponseSanitizerRunnerConfiguration.userRequestIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringResponseSanitizerRunnerConfiguration(0) + 28);
  sub_18E1A6D90();
  sub_18E159098();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t StringResponseSanitizerRunnerConfiguration.init(modelBundleInfo:useCaseIdentifier:onBehalfOfProcessId:userRequestIdentifier:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_18E15ABEC();
  sub_18E1948C4(v10, v11);
  v12 = type metadata accessor for StringResponseSanitizerRunnerConfiguration(0);
  v13 = (a5 + v12[5]);
  *v13 = a1;
  v13[1] = a2;
  *(a5 + v12[6]) = a3;
  v14 = v12[7];
  sub_18E1A6D90();
  sub_18E159098();
  v16 = *(v15 + 32);

  return v16(a5 + v14, a4);
}

uint64_t sub_18E19476C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E15933C();
  v5(v4);
  sub_18E159098();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_18E1947C8()
{
  result = qword_1EABD1150;
  if (!qword_1EABD1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1150);
  }

  return result;
}

unint64_t sub_18E19481C()
{
  result = qword_1EABD1158;
  if (!qword_1EABD1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1158);
  }

  return result;
}

unint64_t sub_18E194870()
{
  result = qword_1EABD1160;
  if (!qword_1EABD1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABD1160);
  }

  return result;
}

uint64_t sub_18E1948C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_18E15933C();
  v5(v4);
  sub_18E159098();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_18E194920(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_18E169A64(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18E1949C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}