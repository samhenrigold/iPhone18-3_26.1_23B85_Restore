uint64_t NationalElectionTheme.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440);
  v63 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v63 - v6;
  v68 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v8);
  v10 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v64 = &v63 - v13;
  v14 = *(v1 + 24);
  sub_219F6B0E4(a1, *v1);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v14);
  v15 = *(v1 + 56);
  sub_219F6B0E4(a1, *(v1 + 32));
  sub_21A0E626C();
  MEMORY[0x21CED2490](v15);
  v16 = *(v1 + 88);
  sub_219F6B0E4(a1, *(v1 + 64));
  sub_21A0E626C();
  MEMORY[0x21CED2490](v16);
  v17 = *(v1 + 128);
  v18 = *(v2 + 129);
  v67 = v2;
  v19 = *(v2 + 130);
  sub_21A0E626C();
  MEMORY[0x21CED2490](v17);
  sub_21A0E626C();
  if (v18 == 9)
  {
    sub_21A0E6DCC();
    if (v19 != 3)
    {
LABEL_3:
      sub_21A0E6DCC();
      sub_21A0E626C();

      goto LABEL_6;
    }
  }

  else
  {
    sub_21A0E6DCC();
    sub_219F7A96C();
    if (v19 != 3)
    {
      goto LABEL_3;
    }
  }

  sub_21A0E6DCC();
LABEL_6:
  v20 = v67;
  v66 = type metadata accessor for NationalElectionTheme(0);
  v21 = v64;
  sub_219F45500(v20 + *(v66 + 32), v64, &qword_27CCD9628, &qword_21A0E9610);
  if (v65[6](v21, 1, v68) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    sub_219F88A5C(v21, v10);
    sub_21A0E6DCC();
    ActivityAsset.hash(into:)(a1);
    sub_219F91544(a1, *(v10 + *(v4 + 28)));
    v22 = *(v4 + 32);
    v65 = v10;
    v23 = *(v10 + v22);
    MEMORY[0x21CED2490](*(v23 + 16));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = v23 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v26 = *(v63 + 72);
      do
      {
        sub_219F45500(v25, v7, &qword_27CCD98C8, &unk_21A0EA440);
        v27 = sub_219F73104();
        sub_219FC5A20(a1, v4, v27);
        sub_219F6409C(v7, &qword_27CCD98C8, &unk_21A0EA440);
        v25 += v26;
        --v24;
      }

      while (v24);
    }

    v28 = v68;
    v29 = v65;
    v30 = v65 + *(v68 + 20);
    v31 = *(v30 + 9);
    v96 = *(v30 + 8);
    v97 = v31;
    v98 = *(v30 + 10);
    v32 = *(v30 + 5);
    v92 = *(v30 + 4);
    v93 = v32;
    v33 = *(v30 + 7);
    v94 = *(v30 + 6);
    v95 = v33;
    v34 = *(v30 + 1);
    v88 = *v30;
    v89 = v34;
    v35 = *(v30 + 3);
    v90 = *(v30 + 2);
    v91 = v35;
    sub_21A02EB6C(a1);
    v36 = (v29 + *(v28 + 24));
    v37 = v36[9];
    v85 = v36[8];
    v86 = v37;
    v87 = v36[10];
    v38 = v36[5];
    v81 = v36[4];
    v82 = v38;
    v39 = v36[7];
    v83 = v36[6];
    v84 = v39;
    v40 = v36[1];
    v77 = *v36;
    v78 = v40;
    v41 = v36[3];
    v79 = v36[2];
    v80 = v41;
    sub_21A02EB6C(a1);
    sub_21A0A755C(v29, type metadata accessor for ActivityMinimalAppearanceTheme);
    v20 = v67;
  }

  v42 = v66;
  v43 = (v20 + *(v66 + 36));
  v44 = *(v43 + 6);
  v45 = *(v43 + 16) | (*(v43 + 68) << 32);
  if ((~*(v43 + 12) & 0xFFFFFFFE) != 0 || (v45 & 0xFE00000000) != 0x200000000)
  {
    v46 = *(v43 + 7);
    v47 = v43[1];
    v69 = *v43;
    v70 = v47;
    v71 = v43[2];
    v72 = v44;
    v73 = v46;
    BYTE4(v74) = BYTE4(v45);
    LODWORD(v74) = v45;
    sub_21A0E6DCC();
    ActivityColor.hash(into:)(a1);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v48 = (v20 + *(v42 + 40));
  v49 = *(v48 + 6);
  v50 = *(v48 + 8);
  if ((~*(v48 + 12) & 0xFFFFFFFE) != 0 || (v50 & 0xFE00000000) != 0x200000000)
  {
    v52 = *(v48 + 9);
    v51 = *(v48 + 10);
    v53 = *(v48 + 7);
    v54 = v48[1];
    v69 = *v48;
    v70 = v54;
    v71 = v48[2];
    sub_21A0E6DCC();
    v72 = v49;
    v73 = v53;
    v74 = v50;
    v75 = v52;
    v76 = v51;
    ActivityColor.hash(into:)(a1);
    sub_219F91544(a1, v52);
    sub_219F70020(a1, v51);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v55 = (v20 + *(v42 + 44));
  v56 = *(v55 + 6);
  v57 = *(v55 + 8);
  if ((~*(v55 + 12) & 0xFFFFFFFE) == 0 && (v57 & 0xFE00000000) == 0x200000000)
  {
    return sub_21A0E6DCC();
  }

  v60 = *(v55 + 9);
  v59 = *(v55 + 10);
  v61 = *(v55 + 7);
  v62 = v55[1];
  v69 = *v55;
  v70 = v62;
  v71 = v55[2];
  sub_21A0E6DCC();
  v72 = v56;
  v73 = v61;
  v74 = v57;
  v75 = v60;
  v76 = v59;
  ActivityColor.hash(into:)(a1);
  sub_219F91544(a1, v60);
  return sub_219F70020(a1, v59);
}

uint64_t NationalElectionTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  NationalElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t NationalElectionTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v51 = v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD950, &qword_21A102508);
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v49 - v8;
  v10 = type metadata accessor for NationalElectionTheme(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v11[10];
  v16 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v17 = *(*(v16 - 8) + 56);
  v97 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = &v14[v11[11]];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 2) = 0u;
  *(v18 + 3) = xmmword_21A0EB370;
  v18[68] = 2;
  *(v18 + 16) = 0;
  v19 = &v14[v11[12]];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = xmmword_21A0EB370;
  *(v19 + 8) = 0x200000000;
  *(v19 + 9) = 0;
  v55 = v19;
  v56 = v14;
  *(v19 + 10) = 0;
  v20 = &v14[v11[13]];
  *v20 = 0u;
  *(v20 + 1) = 0u;
  *(v20 + 2) = 0u;
  *(v20 + 3) = xmmword_21A0EB370;
  *(v20 + 9) = 0;
  *(v20 + 10) = 0;
  *(v20 + 8) = 0x200000000;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_21A0A72DC();
  v22 = v54;
  sub_21A0E6E7C();
  if (v22)
  {
    v23 = v56;
    __swift_destroy_boxed_opaque_existential_1(v57);
    v24 = v55;
    sub_219F6409C(v23 + v97, &qword_27CCD9628, &qword_21A0E9610);
    v25 = *(v24 + 3);
    v87 = *(v24 + 2);
    v88 = v25;
    v89 = *(v24 + 4);
    v90 = *(v24 + 10);
    v26 = *(v24 + 1);
    v85 = *v24;
    v86 = v26;
    sub_219F6409C(&v85, &qword_27CCDAB00, &qword_21A0EF390);
    v27 = *(v20 + 3);
    v93 = *(v20 + 2);
    v94 = v27;
    v95 = *(v20 + 4);
    v96 = *(v20 + 10);
    v28 = *(v20 + 1);
    v91 = *v20;
    v92 = v28;
    return sub_219F6409C(&v91, &qword_27CCDAB00, &qword_21A0EF390);
  }

  else
  {
    LOBYTE(v85) = 0;
    sub_21A0A73D8();
    sub_21A0E6ADC();
    v29 = v92;
    v30 = v56;
    *v56 = v91;
    *(v30 + 16) = v29;
    LOBYTE(v85) = 1;
    v54 = v9;
    sub_21A0E6ADC();
    v49[1] = 0;
    v31 = v92;
    *(v30 + 32) = v91;
    *(v30 + 48) = v31;
    LOBYTE(v85) = 2;
    sub_21A0E6ADC();
    v32 = v97;
    v33 = v92;
    *(v30 + 64) = v91;
    *(v30 + 80) = v33;
    LOBYTE(v85) = 3;
    sub_21A0A742C();
    sub_21A0E6ADC();
    v34 = *(&v91 + 1);
    v35 = v93;
    v36 = *(&v93 + 1);
    *(v30 + 96) = v91;
    *(v30 + 104) = v34;
    *(v30 + 112) = v92;
    *(v30 + 128) = v35;
    *(v30 + 129) = v36;
    LOBYTE(v91) = 4;
    sub_21A0A7604(&qword_27CCDD968, type metadata accessor for ActivityMinimalAppearanceTheme, &protocol conformance descriptor for ActivityMinimalAppearanceTheme);
    sub_21A0E6A8C();
    sub_21A0A726C(v51, v30 + v32);
    v80 = 5;
    sub_219F81E1C();
    sub_21A0E6A8C();
    v37 = *v84;
    *(v18 + 2) = v83;
    *(v18 + 3) = v37;
    *(v18 + 61) = *&v84[13];
    v38 = v82;
    *v18 = v81;
    *(v18 + 1) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0, &qword_21A0FDD10);
    v79 = 6;
    sub_21A0A7480(&qword_27CCDD970, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6A8C();
    v75 = v93;
    v76 = v94;
    v77 = v95;
    v78 = v96;
    v73 = v91;
    v74 = v92;
    v39 = v55;
    v40 = *(v55 + 3);
    v87 = *(v55 + 2);
    v88 = v40;
    v89 = *(v55 + 4);
    v90 = *(v55 + 10);
    v41 = *(v55 + 1);
    v85 = *v55;
    v86 = v41;
    sub_219F6409C(&v85, &qword_27CCDAB00, &qword_21A0EF390);
    v42 = v76;
    *(v39 + 2) = v75;
    *(v39 + 3) = v42;
    *(v39 + 4) = v77;
    *(v39 + 10) = v78;
    v43 = v74;
    *v39 = v73;
    *(v39 + 1) = v43;
    v66 = 7;
    sub_21A0E6A8C();
    (*(v52 + 8))(v54, v53);
    v60 = v69;
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v58 = v67;
    v59 = v68;
    v44 = *(v20 + 3);
    v64[2] = *(v20 + 2);
    v64[3] = v44;
    v64[4] = *(v20 + 4);
    v65 = *(v20 + 10);
    v45 = *(v20 + 1);
    v64[0] = *v20;
    v64[1] = v45;
    sub_219F6409C(v64, &qword_27CCDAB00, &qword_21A0EF390);
    v46 = v61;
    *(v20 + 2) = v60;
    *(v20 + 3) = v46;
    *(v20 + 4) = v62;
    *(v20 + 10) = v63;
    v47 = v59;
    *v20 = v58;
    *(v20 + 1) = v47;
    sub_21A0A74F8(v30, v50);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return sub_21A0A755C(v30, type metadata accessor for NationalElectionTheme);
  }
}

BOOL _s22NewsLiveActivitiesCore32NationalElectionStaticAttributesV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v120 = *(v4 - 8);
  v121 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v117 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v118 = &v116 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD998, &unk_21A102730);
  MEMORY[0x28223BE20](v119, v10);
  v122 = &v116 - v11;
  v123 = a2;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v15 = a1[3];
  v17 = *a2;
  v16 = a2[1];
  v19 = a2[2];
  v18 = a2[3];

  if (!sub_219F75C08(v12, v17))
  {
    goto LABEL_20;
  }

  if (v13 == v16 && v14 == v19)
  {

    if (v15 != v18)
    {
      return 0;
    }
  }

  else
  {
    v20 = sub_21A0E6C5C();

    result = 0;
    if ((v20 & 1) == 0 || v15 != v18)
    {
      return result;
    }
  }

  v22 = a1[4];
  v23 = a1[5];
  v24 = a1[6];
  v25 = a1[7];
  v27 = v123[4];
  v26 = v123[5];
  v29 = v123[6];
  v28 = v123[7];

  if (!sub_219F75C08(v22, v27))
  {
    goto LABEL_20;
  }

  if (v23 == v26 && v24 == v29)
  {

    if (v25 != v28)
    {
      return 0;
    }
  }

  else
  {
    v30 = sub_21A0E6C5C();

    result = 0;
    if ((v30 & 1) == 0 || v25 != v28)
    {
      return result;
    }
  }

  v31 = a1[8];
  v32 = a1[9];
  v33 = a1[10];
  v34 = a1[11];
  v36 = v123[8];
  v35 = v123[9];
  v38 = v123[10];
  v37 = v123[11];

  if (!sub_219F75C08(v31, v36))
  {
LABEL_20:

    return 0;
  }

  if (v32 == v35 && v33 == v38)
  {

    if (v34 != v37)
    {
      return 0;
    }

LABEL_25:
    v40 = a1[13];
    v41 = a1[14];
    v42 = a1[15];
    v43 = *(a1 + 128);
    v44 = *(a1 + 129);
    *&v146 = a1[12];
    *(&v146 + 1) = v40;
    *&v147 = v41;
    *(&v147 + 1) = v42;
    LOBYTE(v148) = v43;
    *(&v148 + 1) = v44;
    v45 = v123;
    v46 = v123[13];
    v47 = v123[14];
    v48 = v123[15];
    v49 = *(v123 + 128);
    v50 = *(v123 + 129);
    *&v175 = v123[12];
    *(&v175 + 1) = v46;
    *&v176 = v47;
    *(&v176 + 1) = v48;
    LOBYTE(v177) = v49;
    *(&v177 + 1) = v50;

    sub_219F79C1C(v41, v42);

    sub_219F79C1C(v47, v48);
    v51 = _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(&v146, &v175);
    v52 = v176;

    sub_219F79CD8(v52, *(&v52 + 1));
    v53 = v147;

    sub_219F79CD8(v53, *(&v53 + 1));
    if (!v51)
    {
      return 0;
    }

    v54 = type metadata accessor for NationalElectionTheme(0);
    v55 = v54[8];
    v56 = *(v119 + 48);
    v57 = v122;
    sub_219F45500(a1 + v55, v122, &qword_27CCD9628, &qword_21A0E9610);
    sub_219F45500(v45 + v55, v57 + v56, &qword_27CCD9628, &qword_21A0E9610);
    v58 = v121;
    v59 = *(v120 + 48);
    if (v59(v57, 1, v121) == 1)
    {
      if (v59(v57 + v56, 1, v58) == 1)
      {
        sub_219F6409C(v57, &qword_27CCD9628, &qword_21A0E9610);
        goto LABEL_34;
      }
    }

    else
    {
      v60 = v118;
      sub_219F45500(v57, v118, &qword_27CCD9628, &qword_21A0E9610);
      if (v59(v57 + v56, 1, v58) != 1)
      {
        v64 = v57 + v56;
        v65 = v117;
        sub_219F88A5C(v64, v117);
        v66 = static ActivityMinimalAppearanceTheme.== infix(_:_:)();
        sub_21A0A755C(v65, type metadata accessor for ActivityMinimalAppearanceTheme);
        sub_21A0A755C(v60, type metadata accessor for ActivityMinimalAppearanceTheme);
        sub_219F6409C(v57, &qword_27CCD9628, &qword_21A0E9610);
        if ((v66 & 1) == 0)
        {
          return 0;
        }

LABEL_34:
        v67 = v54[9];
        v68 = a1 + v67;
        v69 = *(a1 + v67 + 48);
        v70 = ~*(a1 + v67 + 48);
        v71 = *(a1 + v67 + 64) | (*(a1 + v67 + 68) << 32);
        v72 = (v45 + v67);
        v73 = *(v45 + v67 + 48);
        v74 = *(v45 + v67 + 64) | (*(v45 + v67 + 68) << 32);
        if ((v70 & 0xFFFFFFFE) != 0 || (v71 & 0xFE00000000) != 0x200000000)
        {
          v75 = *(v68 + 7);
          v76 = *(v68 + 1);
          v146 = *v68;
          v147 = v76;
          v148 = *(v68 + 2);
          *&v149 = v69;
          *(&v149 + 1) = v75;
          v150[4] = BYTE4(v71);
          *v150 = v71;
          if ((~v73 & 0xFFFFFFFE) == 0 && (v74 & 0xFE00000000) == 0x200000000)
          {
            return 0;
          }

          v77 = v72[1];
          v175 = *v72;
          v176 = v77;
          v177 = v72[2];
          v178 = v73;
          LODWORD(v179) = v74;
          BYTE4(v179) = BYTE4(v74);
          if ((_s22NewsLiveActivitiesCore13ActivityColorO2eeoiySbAC_ACtFZ_0(&v146, &v175) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if ((~v73 & 0xFFFFFFFE) != 0 || (v74 & 0xFE00000000) != 0x200000000)
          {
            return result;
          }
        }

        v78 = a1 + v54[10];
        v79 = *(v78 + 1);
        v80 = *(v78 + 3);
        v158 = *(v78 + 2);
        v159 = v80;
        v160 = *(v78 + 4);
        v161 = *(v78 + 10);
        v81 = *(v78 + 1);
        v157[0] = *v78;
        v157[1] = v81;
        v82 = v123 + v54[10];
        v83 = *(v82 + 1);
        v162[0] = *v82;
        v162[1] = v83;
        v84 = *(v82 + 4);
        v163 = *(v82 + 3);
        v164 = v84;
        v162[2] = *(v82 + 2);
        v140 = v157[0];
        v141 = v79;
        v165 = *(v82 + 10);
        v142 = v158;
        v85 = v159;
        v86 = v160;
        v135[0] = *(v78 + 72);
        v88 = (~v163 & 0xFFFFFFFE) == 0 && (v84 & 0xFE00000000) == 0x200000000;
        if ((~v159 & 0xFFFFFFFE) != 0 || (v160 & 0xFE00000000) != 0x200000000)
        {
          if (!v88)
          {
            v94 = *(v82 + 1);
            v146 = *v82;
            v147 = v94;
            v148 = *(v82 + 2);
            v149 = v163;
            *v150 = v84;
            *&v150[8] = *(v82 + 72);
            v175 = v146;
            v176 = v94;
            v177 = v148;
            v178 = v163;
            v180 = *&v150[16];
            v179 = *v150;
            v95 = *v78;
            v96 = *(v78 + 2);
            v172[1] = *(v78 + 1);
            v172[2] = v96;
            v172[0] = v95;
            v174 = *(v78 + 72);
            v172[3] = v159;
            v173 = v160;
            sub_219F45500(v157, &v166, &qword_27CCDAB00, &qword_21A0EF390);
            sub_219F45500(v162, &v166, &qword_27CCDAB00, &qword_21A0EF390);
            v97 = sub_21A0D99E0(v172, &v175);
            sub_219F6409C(&v146, &qword_27CCDAB00, &qword_21A0EF390);
            v166 = v140;
            v167 = v141;
            v168 = v142;
            v169 = v85;
            v170 = v86;
            v171 = v135[0];
            sub_219F6409C(&v166, &qword_27CCDAB00, &qword_21A0EF390);
            if ((v97 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_55;
          }
        }

        else if (v88)
        {
          v89 = *(v78 + 1);
          v146 = *v78;
          v147 = v89;
          v148 = *(v78 + 2);
          v149 = v159;
          *v150 = v160;
          *&v150[8] = *(v78 + 72);
          sub_219F45500(v157, &v175, &qword_27CCDAB00, &qword_21A0EF390);
          sub_219F45500(v162, &v175, &qword_27CCDAB00, &qword_21A0EF390);
          sub_219F6409C(&v146, &qword_27CCDAB00, &qword_21A0EF390);
LABEL_55:
          v98 = a1 + v54[11];
          v99 = *(v98 + 1);
          v100 = *(v98 + 3);
          v136 = *(v98 + 2);
          v137 = v100;
          v138 = *(v98 + 4);
          v139 = *(v98 + 10);
          v101 = *(v98 + 1);
          v135[0] = *v98;
          v135[1] = v101;
          v102 = v123 + v54[11];
          v103 = *(v102 + 1);
          v140 = *v102;
          v141 = v103;
          v104 = *(v102 + 4);
          v143 = *(v102 + 3);
          v144 = v104;
          v142 = *(v102 + 2);
          v132 = v135[0];
          v133 = v99;
          v145 = *(v102 + 10);
          v134 = v136;
          v105 = v137;
          v106 = v138;
          v131 = *(v98 + 72);
          v108 = (~v143 & 0xFFFFFFFE) == 0 && (v104 & 0xFE00000000) == 0x200000000;
          if ((~v137 & 0xFFFFFFFE) == 0 && (v138 & 0xFE00000000) == 0x200000000)
          {
            if (v108)
            {
              v109 = *(v98 + 1);
              v146 = *v98;
              v147 = v109;
              v148 = *(v98 + 2);
              v149 = v137;
              *v150 = v138;
              *&v150[8] = *(v98 + 72);
              sub_219F45500(v135, &v166, &qword_27CCDAB00, &qword_21A0EF390);
              sub_219F45500(&v140, &v166, &qword_27CCDAB00, &qword_21A0EF390);
              sub_219F6409C(&v146, &qword_27CCDAB00, &qword_21A0EF390);
              return 1;
            }

            goto LABEL_66;
          }

          if (v108)
          {
LABEL_66:
            v110 = *(v98 + 1);
            v146 = *v98;
            v147 = v110;
            v148 = *(v98 + 2);
            *&v150[8] = *(v98 + 72);
            v111 = *(v102 + 1);
            v151 = *v102;
            v149 = v137;
            v152 = v111;
            v153 = *(v102 + 2);
            *v150 = v138;
            v154 = v143;
            v155 = v104;
            v156 = *(v102 + 72);
            sub_219F45500(v135, &v166, &qword_27CCDAB00, &qword_21A0EF390);
            v92 = &v140;
            v93 = &v166;
            goto LABEL_67;
          }

          v112 = *(v102 + 1);
          v127[0] = *v102;
          v127[1] = v112;
          v128 = *(v102 + 2);
          v129 = v143;
          *&v130[0] = v104;
          *(v130 + 8) = *(v102 + 72);
          v146 = v127[0];
          v147 = v112;
          v148 = v128;
          v149 = v143;
          *&v150[16] = *&v130[1];
          *v150 = v130[0];
          v113 = *v98;
          v114 = *(v98 + 2);
          v167 = *(v98 + 1);
          v168 = v114;
          v166 = v113;
          v171 = *(v98 + 72);
          v169 = v137;
          v170 = v138;
          sub_219F45500(v135, v124, &qword_27CCDAB00, &qword_21A0EF390);
          sub_219F45500(&v140, v124, &qword_27CCDAB00, &qword_21A0EF390);
          v115 = sub_21A0D99E0(&v166, &v146);
          sub_219F6409C(v127, &qword_27CCDAB00, &qword_21A0EF390);
          v124[0] = v132;
          v124[1] = v133;
          v124[2] = v134;
          v124[3] = v105;
          v125 = v106;
          v126 = v131;
          sub_219F6409C(v124, &qword_27CCDAB00, &qword_21A0EF390);
          return (v115 & 1) != 0;
        }

        v90 = *(v78 + 1);
        v146 = *v78;
        v147 = v90;
        v148 = *(v78 + 2);
        *&v150[8] = *(v78 + 72);
        v91 = *(v82 + 1);
        v151 = *v82;
        v149 = v159;
        v152 = v91;
        v153 = *(v82 + 2);
        *v150 = v160;
        v154 = v163;
        v155 = v84;
        v156 = *(v82 + 72);
        sub_219F45500(v157, &v175, &qword_27CCDAB00, &qword_21A0EF390);
        v92 = v162;
        v93 = &v175;
LABEL_67:
        sub_219F45500(v92, v93, &qword_27CCDAB00, &qword_21A0EF390);
        v61 = &unk_27CCDD9A0;
        v62 = &unk_21A102C70;
        v63 = &v146;
        goto LABEL_32;
      }

      sub_21A0A755C(v60, type metadata accessor for ActivityMinimalAppearanceTheme);
    }

    v61 = &qword_27CCDD998;
    v62 = &unk_21A102730;
    v63 = v57;
LABEL_32:
    sub_219F6409C(v63, v61, v62);
    return 0;
  }

  v39 = sub_21A0E6C5C();

  result = 0;
  if ((v39 & 1) != 0 && v34 == v37)
  {
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_21A0A726C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21A0A72DC()
{
  result = qword_27CCDD928;
  if (!qword_27CCDD928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD928);
  }

  return result;
}

unint64_t sub_21A0A7330()
{
  result = qword_27CCDD930;
  if (!qword_27CCDD930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD930);
  }

  return result;
}

unint64_t sub_21A0A7384()
{
  result = qword_27CCDD938;
  if (!qword_27CCDD938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD938);
  }

  return result;
}

unint64_t sub_21A0A73D8()
{
  result = qword_27CCDD958;
  if (!qword_27CCDD958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD958);
  }

  return result;
}

unint64_t sub_21A0A742C()
{
  result = qword_27CCDD960;
  if (!qword_27CCDD960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD960);
  }

  return result;
}

uint64_t sub_21A0A7480(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDBAD0, &qword_21A0FDD10);
    sub_219F81E1C();
    sub_219F81DC8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21A0A74F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionTheme(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A755C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A0A7604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ActivityLinearGradient.UnitPoint.Named(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityLinearGradient.UnitPoint.Named(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A0A77C8()
{
  result = qword_27CCDD980;
  if (!qword_27CCDD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD980);
  }

  return result;
}

unint64_t sub_21A0A7820()
{
  result = qword_27CCDD988;
  if (!qword_27CCDD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD988);
  }

  return result;
}

unint64_t sub_21A0A7878()
{
  result = qword_27CCDD990;
  if (!qword_27CCDD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD990);
  }

  return result;
}

uint64_t sub_21A0A78CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65646973657270 && a2 == 0xE900000000000074;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616E6573 && a2 == 0xE600000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573756F68 && a2 == 0xE500000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614272656E6E6977 && a2 == 0xEB00000000656764 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x546C616D696E696DLL && a2 == 0xEC000000656D6568 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x54656E696C79656BLL && a2 == 0xEB00000000746E69 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEE00746E6954646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A10B010 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_21A0A7BC4(uint64_t a1)
{
  sub_219F43FBC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21A0A7C70(uint64_t a1)
{
  result = type metadata accessor for NationalElectionUpdate.Hero(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21A0A7CEC(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v26 - v6;
  v8 = type metadata accessor for NationalElectionUpdate.Hero(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NationalElectionUpdate(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A0A89A8(v1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21A0A8A0C(v15, v11);
    MEMORY[0x21CED2490](1);
    sub_21A0E626C();
    sub_21A0E626C();
    sub_21A0E626C();
    v27 = v8;
    v16 = &v11[*(v8 + 28)];
    ActivityAsset.hash(into:)(a1);
    sub_219F91544(a1, *&v16[*(v3 + 28)]);
    v17 = *&v16[*(v3 + 32)];
    MEMORY[0x21CED2490](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v20 = *(v4 + 72);
      do
      {
        sub_21A0A8A70(v19, v7);
        v21 = sub_219F73104();
        sub_219FC5A20(a1, v3, v21);
        sub_219F6409C(v7, &qword_27CCD98C8, &unk_21A0EA440);
        v19 += v20;
        --v18;
      }

      while (v18);
    }

    v22 = &v11[*(v27 + 32)];
    v23 = *(v22 + 3);
    v30 = *(v22 + 2);
    v31[0] = v23;
    *(v31 + 13) = *(v22 + 61);
    v24 = *(v22 + 1);
    v28 = *v22;
    v29 = v24;
    ActivityFill.hash(into:)(a1);
    sub_21A0E626C();
    return sub_21A0A8AE0(v11, type metadata accessor for NationalElectionUpdate.Hero);
  }

  else
  {
    MEMORY[0x21CED2490](0);
    sub_21A0E626C();
    sub_21A0E626C();
  }
}

unint64_t sub_21A0A7FF8()
{
  result = qword_27CCDD9C8;
  if (!qword_27CCDD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD9C8);
  }

  return result;
}

uint64_t sub_21A0A804C(uint64_t a1)
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_219FAB16C(v2);
  ActivityFill.hash(into:)(v2);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A8108(__int128 *a1, uint64_t a2)
{
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_219FAB16C(a1);
  ActivityFill.hash(into:)(a1);

  return sub_21A0E626C();
}

uint64_t sub_21A0A81BC(uint64_t a1, uint64_t a2)
{
  sub_21A0E6DAC();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_21A0E626C();
  sub_219FAB16C(v3);
  ActivityFill.hash(into:)(v3);
  sub_21A0E626C();
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A8278()
{
  sub_21A0E6DAC();
  sub_21A0A7CEC(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A82BC(uint64_t a1)
{
  sub_21A0E6DAC();
  sub_21A0A7CEC(v2);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A838C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21A0A83D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NationalElectionUpdate(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v33 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD9E0, &qword_21A102928);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v33 - v19;
  v21 = (&v33 + *(v18 + 56) - v19);
  sub_21A0A89A8(a1, &v33 - v19);
  sub_21A0A89A8(a2, v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A0A89A8(v20, v15);
    v24 = *v15;
    v23 = v15[1];
    v26 = v15[2];
    v25 = v15[3];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

LABEL_7:
      sub_219F6409C(v20, &qword_27CCDD9E0, &qword_21A102928);
LABEL_8:
      v22 = 0;
      return v22 & 1;
    }

    v29 = v21[2];
    v28 = v21[3];
    v30 = v24 == *v21 && v23 == v21[1];
    if (v30 || (sub_21A0E6C5C() & 1) != 0)
    {
      if (v26 == v29 && v25 == v28)
      {
      }

      else
      {
        v32 = sub_21A0E6C5C();

        if ((v32 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      sub_21A0A8AE0(v20, type metadata accessor for NationalElectionUpdate);
      v22 = 1;
      return v22 & 1;
    }

LABEL_24:
    sub_21A0A8AE0(v20, type metadata accessor for NationalElectionUpdate);
    goto LABEL_8;
  }

  sub_21A0A89A8(v20, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A0A8AE0(v12, type metadata accessor for NationalElectionUpdate.Hero);
    goto LABEL_7;
  }

  sub_21A0A8A0C(v21, v7);
  v22 = sub_21A0A874C(v12, v7);
  sub_21A0A8AE0(v7, type metadata accessor for NationalElectionUpdate.Hero);
  sub_21A0A8AE0(v12, type metadata accessor for NationalElectionUpdate.Hero);
  sub_21A0A8AE0(v20, type metadata accessor for NationalElectionUpdate);
  return v22 & 1;
}

uint64_t sub_21A0A874C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21A0E6C5C()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_21A0E6C5C()) && (a1[4] == a2[4] && a1[5] == a2[5] || (sub_21A0E6C5C())) && (v6 = type metadata accessor for NationalElectionUpdate.Hero(0), v7 = *(v6 + 28), v8 = a1 + v7, v9 = a2 + v7, (static ActivityAsset.== infix(_:_:)(a1 + v7, a2 + v7)) && (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440), v11 = *(v10 + 28), v12 = *&v8[v11], v13 = *&v9[v11], , , v14 = sub_219FAAA00(v12, v13), , , (v14) && (sub_219F75DC0(*&v8[*(v10 + 32)], *&v9[*(v10 + 32)]))
  {
    v15 = a1 + *(v6 + 32);
    v16 = *(v15 + 3);
    v17 = *(v15 + 1);
    v40 = *(v15 + 2);
    v41 = v16;
    v18 = *(v15 + 3);
    v42 = *(v15 + 4);
    v43 = *(v15 + 10);
    v19 = *(v15 + 1);
    v39[0] = *v15;
    v39[1] = v19;
    v35 = v40;
    v36 = v18;
    v37 = *(v15 + 4);
    v38 = *(v15 + 10);
    v33 = v39[0];
    v34 = v17;
    v20 = a2 + *(v6 + 32);
    v21 = *(v20 + 3);
    v22 = *(v20 + 1);
    v45 = *(v20 + 2);
    v46 = v21;
    v23 = *(v20 + 3);
    v47 = *(v20 + 4);
    v24 = *(v20 + 1);
    v44[0] = *v20;
    v44[1] = v24;
    v29 = v45;
    v30 = v23;
    v31 = *(v20 + 4);
    v48 = *(v20 + 10);
    v32 = *(v20 + 10);
    v27 = v44[0];
    v28 = v22;
    sub_219FB63A4(v39, v51);
    sub_219FB63A4(v44, v51);
    v25 = _s22NewsLiveActivitiesCore19PoliticalPartyThemeV2eeoiySbAC_ACtFZ_0(&v33, &v27);
    v49[2] = v29;
    v49[3] = v30;
    v49[4] = v31;
    v50 = v32;
    v49[0] = v27;
    v49[1] = v28;
    sub_219FB63DC(v49);
    v51[2] = v35;
    v51[3] = v36;
    v51[4] = v37;
    v52 = v38;
    v51[0] = v33;
    v51[1] = v34;
    sub_219FB63DC(v51);
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t sub_21A0A89A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A8A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NationalElectionUpdate.Hero(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A8A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0A8AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for NationalElectionViewData(uint64_t a1)
{
  result = qword_27CCDD9F0;
  if (!qword_27CCDD9F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21A0A8C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0A8D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t NationalElectionViewData.hash(into:)(__int128 *a1)
{
  PresidentialElectionData.hash(into:)(a1);
  v19 = type metadata accessor for NationalElectionViewData(0);
  v3 = v1 + *(v19 + 20);
  sub_21A0E626C();
  v4 = type metadata accessor for BalanceOfPowerData(0);
  v5 = v3 + v4[5];
  MEMORY[0x21CED2490](*v5);
  v21 = v4;
  v20 = v3;
  if (*(v5 + 16))
  {
    v6 = *(v5 + 40);
    v7 = *(v5 + 42);
    sub_21A0E6DCC();
    sub_21A0E626C();
    MEMORY[0x21CED2490](v6 & 1);
    sub_21A0E626C();
    sub_21A0E6DCC();
    if (v6 >> 8 != 9)
    {
      sub_219F7A96C();
    }

    v4 = v21;
    sub_21A0E6DCC();
    if (v7 == 3)
    {
      v3 = v20;
    }

    else
    {
      v3 = v20;
      sub_21A0E626C();
    }
  }

  else
  {
    sub_21A0E6DCC();
  }

  MEMORY[0x21CED2490](*(v5 + 43));
  type metadata accessor for BalanceOfPowerData.Entity(0);
  ElectionEntityTheme.hash(into:)(a1);
  v8 = v3 + v4[6];
  MEMORY[0x21CED2490](*v8);
  if (*(v8 + 16))
  {
    v9 = *(v8 + 40);
    v10 = *(v8 + 42);
    sub_21A0E6DCC();
    sub_21A0E626C();
    MEMORY[0x21CED2490](v9 & 1);
    sub_21A0E626C();
    sub_21A0E6DCC();
    if (v9 >> 8 != 9)
    {
      sub_219F7A96C();
    }

    v4 = v21;
    sub_21A0E6DCC();
    if (v10 == 3)
    {
      v3 = v20;
    }

    else
    {
      v3 = v20;
      sub_21A0E626C();
    }
  }

  else
  {
    sub_21A0E6DCC();
  }

  MEMORY[0x21CED2490](*(v8 + 43));
  ElectionEntityTheme.hash(into:)(a1);
  MEMORY[0x21CED2490](*(v3 + v4[7]));
  v11 = v1 + *(v19 + 24);
  sub_21A0E626C();
  v12 = v11 + v4[5];
  MEMORY[0x21CED2490](*v12);
  if (*(v12 + 16))
  {
    v13 = *(v12 + 40);
    v14 = *(v12 + 42);
    sub_21A0E6DCC();
    sub_21A0E626C();
    MEMORY[0x21CED2490](v13 & 1);
    sub_21A0E626C();
    if (v13 >> 8 == 9)
    {
      sub_21A0E6DCC();
      if (v14 != 3)
      {
LABEL_20:
        sub_21A0E6DCC();
        v4 = v21;
        sub_21A0E626C();

        goto LABEL_24;
      }
    }

    else
    {
      sub_21A0E6DCC();
      sub_219F7A96C();
      if (v14 != 3)
      {
        goto LABEL_20;
      }
    }

    sub_21A0E6DCC();
    v4 = v21;
  }

  else
  {
    sub_21A0E6DCC();
  }

LABEL_24:
  MEMORY[0x21CED2490](*(v12 + 43));
  ElectionEntityTheme.hash(into:)(a1);
  v15 = v11 + v4[6];
  MEMORY[0x21CED2490](*v15);
  if (!*(v15 + 16))
  {
    sub_21A0E6DCC();
    goto LABEL_31;
  }

  v16 = *(v15 + 40);
  v17 = *(v15 + 42);
  sub_21A0E6DCC();
  sub_21A0E626C();
  MEMORY[0x21CED2490](v16 & 1);
  sub_21A0E626C();
  if (v16 >> 8 != 9)
  {
    sub_21A0E6DCC();
    sub_219F7A96C();
    if (v17 != 3)
    {
      goto LABEL_27;
    }

LABEL_30:
    sub_21A0E6DCC();
    v4 = v21;
    goto LABEL_31;
  }

  sub_21A0E6DCC();
  if (v17 == 3)
  {
    goto LABEL_30;
  }

LABEL_27:
  sub_21A0E6DCC();
  v4 = v21;
  sub_21A0E626C();

LABEL_31:
  MEMORY[0x21CED2490](*(v15 + 43));
  ElectionEntityTheme.hash(into:)(a1);
  return MEMORY[0x21CED2490](*(v11 + v4[7]));
}

uint64_t NationalElectionViewData.hashValue.getter()
{
  sub_21A0E6DAC();
  NationalElectionViewData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A9510()
{
  sub_21A0E6DAC();
  NationalElectionViewData.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0A9554(uint64_t a1)
{
  sub_21A0E6DAC();
  NationalElectionViewData.hash(into:)(v2);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore24NationalElectionViewDataV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = (v4 || (sub_21A0E6C5C() & 1) != 0) && (v5 = type metadata accessor for PresidentialElectionData(0), (_s22NewsLiveActivitiesCore24PresidentialElectionDataV6EntityV2eeoiySbAE_AEtFZ_0(a1 + v5[5], a2 + v5[5]) & 1) != 0) && (_s22NewsLiveActivitiesCore24PresidentialElectionDataV6EntityV2eeoiySbAE_AEtFZ_0(a1 + v5[6], a2 + v5[6]) & 1) != 0 && *(a1 + v5[7]) == *(a2 + v5[7]) && ((v6 = type metadata accessor for NationalElectionViewData(0), v7 = *(v6 + 20), v8 = a1 + v7, v9 = a2 + v7, *(a1 + v7) == *(a2 + v7)) ? (v10 = *(a1 + v7 + 8) == *(a2 + v7 + 8)) : (v10 = 0), (v10 || (sub_21A0E6C5C() & 1) != 0) && (v11 = type metadata accessor for BalanceOfPowerData(0), (static BalanceOfPowerData.Entity.== infix(_:_:)() & 1) != 0) && (static BalanceOfPowerData.Entity.== infix(_:_:)() & 1) != 0 && *&v8[*(v11 + 28)] == *&v9[*(v11 + 28)] && ((v12 = *(v6 + 24), v13 = (a1 + v12), v14 = (a2 + v12), *v13 == *v14) && v13[1] == v14[1] || (sub_21A0E6C5C() & 1) != 0)) && (static BalanceOfPowerData.Entity.== infix(_:_:)() & 1) != 0 && (static BalanceOfPowerData.Entity.== infix(_:_:)() & 1) != 0 && *(v13 + *(v11 + 28)) == *(v14 + *(v11 + 28));
  return result;
}

unint64_t sub_21A0A9730()
{
  result = qword_27CCDD9E8;
  if (!qword_27CCDD9E8)
  {
    type metadata accessor for NationalElectionViewData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDD9E8);
  }

  return result;
}

uint64_t sub_21A0A97B0(uint64_t a1)
{
  result = type metadata accessor for PresidentialElectionData(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for BalanceOfPowerData(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void PrimaryElectionTheme.apply(properties:data:)(uint64_t *a1, uint64_t a2)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA480, &unk_21A0ED7B0);
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v5);
  v56 = &v54 - v6;
  v64 = sub_21A0E468C();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v7);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A0E49AC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v66 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDB9C8, &qword_21A0F6F68);
  v61 = *(v63 - 8);
  v13 = MEMORY[0x28223BE20](v63, v12);
  v59 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v68 = &v54 - v16;
  v17 = *a1;
  v18 = a1[2];
  v67 = a1[1];
  v55 = v18;
  v65 = *(a1 + 24);
  v19 = *(a1 + 25);
  v20 = type metadata accessor for PrimaryElectionTheme(0);
  v21 = *(v20 + 32);
  v70 = v2;
  v22 = (v2 + v21);
  v23 = v22[1];
  if (!v23)
  {
    goto LABEL_15;
  }

  v69 = v19;
  v54 = *v22;
  v24 = *(a2 + *(type metadata accessor for PrimaryElectionData(0) + 20));
  v25 = *(v24 + 16);

  if (!v25)
  {
LABEL_11:

LABEL_14:
    LOBYTE(v19) = v69;
LABEL_15:
    v32 = v70 + *(v20 + 28);
    v28 = *(v32 + 88);
    if (!v28)
    {
      return;
    }

    v25 = (v32 + 80);
    v23 = *(v32 + 80);
    v75 = v23;
    v76 = v28;
    v74[0] = v23;
    v74[1] = v28;
    strcpy(v73, "{{reporting}}");
    HIWORD(v73[1]) = -4864;
    sub_219F3F130();

    if (sub_21A0E677C())
    {
      if (v19 & 1) != 0 || (v67)
      {
        if (qword_27CCD90D0 == -1)
        {
          goto LABEL_20;
        }

        goto LABEL_40;
      }

      strcpy(v74, "{{reporting}}");
      HIWORD(v74[1]) = -4864;
      v71 = v17;
      sub_21A0E499C();
      v70 = sub_21A021038();
      v47 = v59;
      sub_21A0E465C();
      v48 = v60;
      sub_21A0E467C();
      v49 = v63;
      MEMORY[0x21CECFD40](v48, v63);
      (*(v62 + 8))(v48, v64);
      v50 = *(v61 + 8);
      v50(v47, v49);
      sub_219F3E490(&qword_27CCDBF18, &qword_27CCDB9C8, &qword_21A0F6F68, MEMORY[0x277CC9158]);
      v51 = v68;
      sub_21A0E60EC();
      v50(v51, v49);
      v71 = v73[0];
      v72 = v73[1];
      sub_21A0AF4DC();
      sub_21A0AF530();
      sub_21A0E666C();

      v23 = v75;
      v40 = v76;
    }

    else
    {
      v40 = v28;
    }

    v74[0] = v23;
    v74[1] = v40;
    strcpy(v73, "{{delegates}}");
    HIWORD(v73[1]) = -4864;
    if (sub_21A0E677C())
    {
      if (v19 & 1) != 0 || (v65)
      {
        if (qword_27CCD90D0 != -1)
        {
          swift_once();
        }

        v41 = sub_21A0E516C();
        __swift_project_value_buffer(v41, qword_27CCD97D8);

        v34 = sub_21A0E514C();
        v42 = sub_21A0E669C();

        if (!os_log_type_enabled(v34, v42))
        {

          goto LABEL_35;
        }

        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v74[0] = v44;
        *v43 = 136315138;
        v45 = sub_219F50144(v23, v40, v74);

        *(v43 + 4) = v45;
        _os_log_impl(&dword_219F39000, v34, v42, "Hiding excerpt due to missing value for {{delegates}}. Excerpt: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);
        MEMORY[0x21CED2D30](v44, -1, -1);
        v39 = v43;
LABEL_30:
        MEMORY[0x21CED2D30](v39, -1, -1);
LABEL_35:

        goto LABEL_36;
      }

      strcpy(v74, "{{delegates}}");
      HIWORD(v74[1]) = -4864;
      v71 = v55;
      sub_21A0E499C();
      sub_219F9DCCC();
      v52 = v56;
      sub_21A0E463C();
      sub_219F3E490(&qword_27CCDA490, &qword_27CCDA480, &unk_21A0ED7B0, MEMORY[0x277CC8CE8]);
      v53 = v58;
      sub_21A0E678C();
      (*(v57 + 8))(v52, v53);
      v71 = v73[0];
      v72 = v73[1];
      sub_21A0AF4DC();
      sub_21A0AF530();
      sub_21A0E666C();
    }

    v46 = v76;
    *(v32 + 80) = v75;
    *(v32 + 88) = v46;
    return;
  }

  v26 = 0;
  v27 = (v24 + 64);
  v28 = 0x66666F6E7572;
  while (v26 < *(v24 + 16))
  {
    v29 = *v27;
    if (v29 <= 1 || v29 == 3)
    {
      v30 = sub_21A0E6C5C();

      if (v30)
      {
        goto LABEL_13;
      }
    }

    else if (v29 != 4)
    {
      swift_bridgeObjectRelease_n();
LABEL_13:
      v31 = v70 + *(v20 + 28);

      *(v31 + 80) = v54;
      *(v31 + 88) = v23;
      goto LABEL_14;
    }

    v26 = (v26 + 1);
    v27 += 40;
    if (v25 == v26)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_20:
  v33 = sub_21A0E516C();
  __swift_project_value_buffer(v33, qword_27CCD97D8);

  v34 = sub_21A0E514C();
  v35 = sub_21A0E669C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v74[0] = v37;
    *v36 = 136315138;
    v38 = sub_219F50144(v23, v28, v74);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_219F39000, v34, v35, "Hiding excerpt due to missing value for {{reporting}} Excerpt: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x21CED2D30](v37, -1, -1);
    v39 = v36;
    goto LABEL_30;
  }

  swift_bridgeObjectRelease_n();
LABEL_36:

  *v25 = 0;
  v25[1] = 0;
}

uint64_t sub_21A0AA1DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006B63;
  v3 = 0x6174537472616D73;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0x6174537472616D73;
    }

    if (v4 == 2)
    {
      v5 = 0x800000021A1096B0;
    }

    else
    {
      v5 = 0xEA00000000006B63;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x800000021A109690;
    }

    else
    {
      v5 = 0x800000021A109670;
    }

    v6 = 0xD000000000000014;
  }

  if (a2 == 2)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000021A1096B0;
  }

  v7 = 0x800000021A109690;
  if (!a2)
  {
    v7 = 0x800000021A109670;
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000014;
  }

  else
  {
    v8 = v3;
  }

  if (a2 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v2;
  }

  if (v6 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_21A0E6C5C();
  }

  return v10 & 1;
}

uint64_t sub_21A0AA2F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x696461654C706F74;
  v4 = a1;
  v5 = 0x6C69617254706F74;
  v6 = 0xEB00000000676E69;
  if (a1 != 6)
  {
    v5 = 7368564;
    v6 = 0xE300000000000000;
  }

  v7 = 0x72546D6F74746F62;
  v8 = 0xEE00676E696C6961;
  if (a1 != 4)
  {
    v7 = 0x676E696C69617274;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x654C6D6F74746F62;
  v10 = 0xED0000676E696461;
  if (a1 != 2)
  {
    v9 = 0x6D6F74746F62;
    v10 = 0xE600000000000000;
  }

  v11 = 0xE700000000000000;
  v12 = 0x676E696461656CLL;
  if (!a1)
  {
    v12 = 0x696461654C706F74;
    v11 = 0xEA0000000000676ELL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xEB00000000676E69;
        if (v13 != 0x6C69617254706F74)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v2 = 0xE300000000000000;
        if (v13 != 7368564)
        {
          goto LABEL_41;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE00676E696C6961;
      if (v13 != 0x72546D6F74746F62)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v13 != 0x676E696C69617274)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xED0000676E696461;
        if (v13 != 0x654C6D6F74746F62)
        {
          goto LABEL_41;
        }

        goto LABEL_38;
      }

      v2 = 0xE600000000000000;
      v3 = 0x6D6F74746F62;
    }

    else if (a2)
    {
      v2 = 0xE700000000000000;
      if (v13 != 0x676E696461656CLL)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    if (v13 != v3)
    {
LABEL_41:
      v15 = sub_21A0E6C5C();
      goto LABEL_42;
    }
  }

LABEL_38:
  if (v14 != v2)
  {
    goto LABEL_41;
  }

  v15 = 1;
LABEL_42:

  return v15 & 1;
}

uint64_t sub_21A0AA588(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701667182;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746867696577;
    }

    else
    {
      v4 = 0x656C616373;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616E7265746E69;
    }

    else
    {
      v4 = 1701667182;
    }

    if (v3)
    {
      v5 = 0xEC000000656D614ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x746867696577;
  if (a2 != 2)
  {
    v8 = 0x656C616373;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x6C616E7265746E69;
    v6 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AA6C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1954047348;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEA00000000006567;
    v4 = 0xE700000000000000;
    if (a1 == 2)
    {
      v6 = 0x61746E6563726570;
    }

    else
    {
      v6 = 0x72656765746E69;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6C6F626D7973;
    }

    else
    {
      v6 = 1954047348;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE400000000000000;
  v9 = 0x61746E6563726570;
  v10 = 0xEA00000000006567;
  if (a2 != 2)
  {
    v9 = 0x72656765746E69;
    v10 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x6C6F626D7973;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_21A0E6C5C();
  }

  return v13 & 1;
}

uint64_t sub_21A0AA7FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72656E6E6977;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x66666F6E7572;
    }

    else
    {
      v4 = 0x72676F72705F6E69;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000737365;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6465737265766572;
    }

    else
    {
      v4 = 0x72656E6E6977;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x66666F6E7572;
  if (a2 != 2)
  {
    v8 = 0x72676F72705F6E69;
    v7 = 0xEB00000000737365;
  }

  if (a2)
  {
    v2 = 0x6465737265766572;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AA944(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x657669746361;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6465646E65;
    }

    else
    {
      v5 = 0x657669746361;
    }

    if (v3)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x657373696D736964;
    v4 = 0xE900000000000064;
  }

  else if (a1 == 3)
  {
    v4 = 0xE500000000000000;
    v5 = 0x656C617473;
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE500000000000000;
    v8 = 0x6465646E65;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x657373696D736964;
    v6 = 0xE900000000000064;
    v7 = 0xE500000000000000;
    v8 = 0x656C617473;
    if (a2 != 3)
    {
      v8 = 0x6E776F6E6B6E75;
      v7 = 0xE700000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21A0E6C5C();
  }

  return v12 & 1;
}

uint64_t sub_21A0AAAB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D65;
  v3 = 0x686353726F6C6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x5379616C70736964;
    }

    if (v4 == 2)
    {
      v6 = 0x800000021A1095E0;
    }

    else
    {
      v6 = 0xEC000000656C6163;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E656D6563616C70;
    }

    else
    {
      v5 = 0x686353726F6C6F63;
    }

    if (v4)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xEB00000000656D65;
    }
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000021A1095E0;
  if (a2 != 2)
  {
    v7 = 0x5379616C70736964;
    v8 = 0xEC000000656C6163;
  }

  if (a2)
  {
    v3 = 0x6E656D6563616C70;
    v2 = 0xE900000000000074;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AAC14(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE600000000000000;
    v11 = 0x6C64616568627573;
    v12 = 0xEB00000000656E69;
    if (a1 != 2)
    {
      v11 = 2036625250;
      v12 = 0xE400000000000000;
    }

    v13 = 0x656E696C64616568;
    if (a1)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v13 = 0x33656C746974;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v12;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x326E6F6974706163;
    v5 = 0xE800000000000000;
    v6 = 0x65746F6E746F6F66;
    if (a1 != 7)
    {
      v6 = 0x30326863746177;
      v5 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0x74756F6C6C6163;
    if (a1 != 4)
    {
      v7 = 0x6E6F6974706163;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    if (v2 <= 5)
    {
      v9 = 0xE700000000000000;
    }

    else
    {
      v9 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xEB00000000656E69;
        if (v8 != 0x6C64616568627573)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE400000000000000;
        if (v8 != 2036625250)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE800000000000000;
      if (v8 != 0x656E696C64616568)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v8 != 0x33656C746974)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v14 = 0xE700000000000000;
    if (a2 == 4)
    {
      if (v8 != 0x74756F6C6C6163)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x6E6F6974706163)
    {
LABEL_52:
      v15 = sub_21A0E6C5C();
      goto LABEL_53;
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x326E6F6974706163)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x65746F6E746F6F66)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE700000000000000;
    if (v8 != 0x30326863746177)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_21A0AAEC8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x756F437055746F6ELL;
    }

    else
    {
      v3 = 0x746C75736572;
    }

    if (v2 == 2)
    {
      v4 = 0xEA0000000000746ELL;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x61726F7463656C65;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEE00746E756F436CLL;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x756F437055746F6ELL;
  v8 = 0xEA0000000000746ELL;
  if (a2 != 2)
  {
    v7 = 0x746C75736572;
    v8 = 0xE600000000000000;
  }

  if (a2)
  {
    v6 = 0x61726F7463656C65;
    v5 = 0xEE00746E756F436CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21A0E6C5C();
  }

  return v11 & 1;
}

uint64_t sub_21A0AB01C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7261646E6F636573;
    }

    else
    {
      v3 = 0x7972616D697270;
    }

    if (v2)
    {
      v4 = 0xE900000000000079;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x7972616974726574;
  }

  else if (a1 == 3)
  {
    v3 = 0x616E726574617571;
    v4 = 0xEA00000000007972;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x7972616E697571;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x7261646E6F636573;
    }

    else
    {
      v9 = 0x7972616D697270;
    }

    if (a2)
    {
      v8 = 0xE900000000000079;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x616E726574617571;
    v6 = 0xEA00000000007972;
    if (a2 != 3)
    {
      v5 = 0x7972616E697571;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7972616974726574;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_21A0E6C5C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_21A0AB1B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6B6E696C70656564;
  if (a1 != 5)
  {
    v5 = 0x7974697669746361;
    v4 = 0xEB0000000074694BLL;
  }

  v6 = 0x6163696669746F6ELL;
  v7 = 0xEC0000006E6F6974;
  if (a1 != 3)
  {
    v6 = 0x50676E69646E616CLL;
    v7 = 0xEB00000000656761;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6C69546F63736964;
  v9 = 0xE900000000000065;
  if (a1 != 1)
  {
    v8 = 0x6465626D45626577;
    v9 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000065;
        if (v10 != 0x6C69546F63736964)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x6465626D45626577)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6B6E696C70656564)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x7974697669746361;
    v14 = 7629131;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F6ELL)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x50676E69646E616CLL;
    v14 = 6645601;
  }

  v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v10 != v13)
  {
LABEL_39:
    v15 = sub_21A0E6C5C();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_21A0AB414(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x61684364756F6C63;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xEE0044496C656E6ELL;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x7461447472617473;
    v4 = 0xE900000000000065;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x74616E6974736564;
    }

    else
    {
      v3 = 0x7475626972747461;
    }

    if (v2 == 3)
    {
      v4 = 0xEE004C52556E6F69;
    }

    else
    {
      v4 = 0xEA00000000007365;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x61684364756F6C63;
    }

    else
    {
      v6 = 25705;
    }

    if (a2)
    {
      v5 = 0xEE0044496C656E6ELL;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE900000000000065;
    if (v3 != 0x7461447472617473)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xEE004C52556E6F69;
    if (v3 != 0x74616E6974736564)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xEA00000000007365;
    if (v3 != 0x7475626972747461)
    {
LABEL_34:
      v7 = sub_21A0E6C5C();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_21A0AB5E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0x7976616568;
    if (a1 != 2)
    {
      v12 = 0x746867696CLL;
    }

    v13 = 1684828002;
    if (a1)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v13 = 0x6B63616C62;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE500000000000000;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x646C6F62696D6573;
    v5 = 0xE400000000000000;
    v6 = 1852401780;
    if (a1 != 7)
    {
      v6 = 0x67694C6172746C75;
      v5 = 0xEA00000000007468;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x6D756964656DLL;
    if (a1 != 4)
    {
      v8 = 0x72616C75676572;
      v7 = 0xE700000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      v14 = 0xE500000000000000;
      if (a2 == 2)
      {
        if (v9 != 0x7976616568)
        {
          goto LABEL_52;
        }
      }

      else if (v9 != 0x746867696CLL)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1684828002)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x6B63616C62)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE600000000000000;
      if (v9 != 0x6D756964656DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v9 != 0x72616C75676572)
      {
LABEL_52:
        v15 = sub_21A0E6C5C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v9 != 0x646C6F62696D6573)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE400000000000000;
    if (v9 != 1852401780)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xEA00000000007468;
    if (v9 != 0x67694C6172746C75)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_21A0AB870(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006574617473;
  v3 = 0x2D746E65746E6F63;
  v4 = a1;
  v5 = 0x636E6176656C6572;
  v6 = 0xEF65726F63732D65;
  v7 = 0xE500000000000000;
  v8 = 0x746E657665;
  if (a1 != 4)
  {
    v8 = 0x617373696D736964;
    v7 = 0xEE00657461642D6CLL;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6D617473656D6974;
  v10 = 0xE900000000000070;
  if (a1 != 1)
  {
    v9 = 0x61642D656C617473;
    v10 = 0xEA00000000006574;
  }

  if (!a1)
  {
    v9 = 0x2D746E65746E6F63;
    v10 = 0xED00006574617473;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEF65726F63732D65;
      if (v11 != 0x636E6176656C6572)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE500000000000000;
      if (v11 != 0x746E657665)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEE00657461642D6CLL;
      if (v11 != 0x617373696D736964)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000070;
        if (v11 != 0x6D617473656D6974)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x61642D656C617473;
      v2 = 0xEA00000000006574;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_21A0E6C5C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

__n128 PrimaryElectionTheme.keylineTint.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 61) = *(v1 + 61);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

__n128 PrimaryElectionTheme.keylineTint.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v2;
  *(v1 + 61) = *(a1 + 61);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t PrimaryElectionTheme.backgroundTint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v4 = *(v1 + 136);
  v10 = *(v1 + 120);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 152);
  v6 = *(v1 + 88);
  v9[0] = *(v1 + 72);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00, &qword_21A0EF390);
}

__n128 PrimaryElectionTheme.backgroundTint.setter(uint64_t a1)
{
  v3 = *(v1 + 120);
  v8[2] = *(v1 + 104);
  v8[3] = v3;
  v8[4] = *(v1 + 136);
  v9 = *(v1 + 152);
  v4 = *(v1 + 88);
  v8[0] = *(v1 + 72);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00, &qword_21A0EF390);
  v5 = *(a1 + 48);
  *(v1 + 104) = *(a1 + 32);
  *(v1 + 120) = v5;
  *(v1 + 136) = *(a1 + 64);
  *(v1 + 152) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 72) = *a1;
  *(v1 + 88) = v7;
  return result;
}

uint64_t PrimaryElectionTheme.systemActionForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v4 = *(v1 + 224);
  v10 = *(v1 + 208);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 240);
  v6 = *(v1 + 176);
  v9[0] = *(v1 + 160);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00, &qword_21A0EF390);
}

__n128 PrimaryElectionTheme.systemActionForeground.setter(uint64_t a1)
{
  v3 = *(v1 + 208);
  v8[2] = *(v1 + 192);
  v8[3] = v3;
  v8[4] = *(v1 + 224);
  v9 = *(v1 + 240);
  v4 = *(v1 + 176);
  v8[0] = *(v1 + 160);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00, &qword_21A0EF390);
  v5 = *(a1 + 48);
  *(v1 + 192) = *(a1 + 32);
  *(v1 + 208) = v5;
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v7;
  return result;
}

double PrimaryElectionTheme.candidates.getter()
{
  type metadata accessor for PrimaryElectionTheme(0);

  return result;
}

uint64_t PrimaryElectionTheme.candidates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PrimaryElectionTheme(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PrimaryElectionTheme.winnerBadge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PrimaryElectionTheme(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = *(v3 + 32);
  LOWORD(v3) = *(v3 + 33);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 33) = v3;

  return sub_219F79C1C(v6, v7);
}

__n128 PrimaryElectionTheme.winnerBadge.setter(uint64_t a1)
{
  v10 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = v1 + *(type metadata accessor for PrimaryElectionTheme(0) + 40);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);

  sub_219F79CD8(v7, v8);
  result = v10;
  *v6 = v10;
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  *(v6 + 32) = v4;
  *(v6 + 33) = v5;
  return result;
}

unint64_t sub_21A0AC294(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x546C616D696E696DLL;
    v6 = 0xD000000000000013;
    if (a1 != 8)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x74616469646E6163;
    if (a1 != 5)
    {
      v7 = 0x614272656E6E6977;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x54656E696C79656BLL;
    v2 = 0xD000000000000016;
    v3 = 0x726564616568;
    if (a1 != 3)
    {
      v3 = 0x784566666F6E7572;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x756F72676B636162;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21A0AC410@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21A0B07E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21A0AC444(uint64_t a1)
{
  v2 = sub_21A0B02FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0AC480(uint64_t a1)
{
  v2 = sub_21A0B02FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrimaryElectionTheme.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCB0, &unk_21A102A10);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0B02FC();
  sub_21A0E6EAC();
  v9 = v2[2];
  v10 = v2[3];
  v11 = *v2;
  v66[1] = v2[1];
  v66[2] = v9;
  v67[0] = v10;
  *(v67 + 13) = *(v2 + 61);
  v66[0] = v11;
  v65 = 0;
  sub_219F81DC8();
  v68 = v8;
  v12 = v32;
  sub_21A0E6B6C();
  if (v12)
  {
    return (*(v5 + 8))(v68, v4);
  }

  v13 = *(v2 + 120);
  v63[2] = *(v2 + 104);
  v63[3] = v13;
  v63[4] = *(v2 + 136);
  v64 = *(v2 + 19);
  v14 = *(v2 + 88);
  v63[0] = *(v2 + 72);
  v63[1] = v14;
  v15 = *(v2 + 120);
  v59 = *(v2 + 104);
  v60 = v15;
  v61 = *(v2 + 136);
  v62 = *(v2 + 19);
  v16 = *(v2 + 88);
  v57 = *(v2 + 72);
  v58 = v16;
  v56 = 1;
  sub_219F45500(v63, v51, &qword_27CCDAB00, &qword_21A0EF390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0, &qword_21A0FDD10);
  sub_21A0A7480(&qword_27CCDD948, &protocol conformance descriptor for <A> Dynamic<A>);
  sub_21A0E6B6C();
  v49[2] = v59;
  v49[3] = v60;
  v49[4] = v61;
  v50 = v62;
  v49[0] = v57;
  v49[1] = v58;
  sub_219F6409C(v49, &qword_27CCDAB00, &qword_21A0EF390);
  v17 = v2[13];
  v18 = v2[11];
  v52 = v2[12];
  v53 = v17;
  v19 = v2[13];
  v54 = v2[14];
  v20 = v2[11];
  v51[0] = v2[10];
  v51[1] = v20;
  v45 = v52;
  v46 = v19;
  v47 = v2[14];
  v55 = *(v2 + 30);
  v48 = *(v2 + 30);
  v43 = v51[0];
  v44 = v18;
  v42 = 2;
  sub_219F45500(v51, v40, &qword_27CCDAB00, &qword_21A0EF390);
  sub_21A0E6B6C();
  v40[2] = v45;
  v40[3] = v46;
  v40[4] = v47;
  v41 = v48;
  v40[0] = v43;
  v40[1] = v44;
  sub_219F6409C(v40, &qword_27CCDAB00, &qword_21A0EF390);
  v21 = type metadata accessor for PrimaryElectionTheme(0);
  LOBYTE(v33) = 3;
  type metadata accessor for ActivityHeaderData(0);
  sub_21A0B0520(&qword_27CCDCEC0, type metadata accessor for ActivityHeaderData, &protocol conformance descriptor for ActivityHeaderData);
  sub_21A0E6BBC();
  LOBYTE(v33) = 4;
  sub_21A0E6B3C();
  v33 = *(v2 + *(v21 + 36));
  v39 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCC0, &unk_21A102A20);
  sub_21A0B040C(&qword_27CCDDCC8, sub_21A0B0350, MEMORY[0x277D83948]);
  sub_21A0E6BBC();
  v22 = (v2 + *(v21 + 40));
  v24 = *v22;
  v23 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v27 = *(v22 + 32);
  LOWORD(v22) = *(v22 + 33);
  v33 = v24;
  v34 = v23;
  v35 = v26;
  v36 = v25;
  v37 = v27;
  v38 = v22;
  v39 = 6;

  sub_219F79C1C(v26, v25);
  sub_21A0A7384();
  sub_21A0E6BBC();
  v28 = v35;
  v29 = v36;

  sub_219F79CD8(v28, v29);
  LOBYTE(v33) = 7;
  type metadata accessor for ActivityMinimalAppearanceTheme(0);
  sub_21A0B0520(&qword_27CCDD940, type metadata accessor for ActivityMinimalAppearanceTheme, &protocol conformance descriptor for ActivityMinimalAppearanceTheme);
  sub_21A0E6B6C();
  LOBYTE(v33) = 8;
  sub_21A0E6BBC();
  LOBYTE(v33) = 9;
  v30 = v68;
  sub_21A0E6B6C();
  return (*(v5 + 8))(v30, v4);
}

uint64_t PrimaryElectionTheme.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440);
  v114 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v110 - v10;
  v12 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v119 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v116 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v117 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v115 = &v110 - v24;
  v25 = *(v2 + 6);
  v26 = ~*(v2 + 12);
  v27 = *(v2 + 16) | (v2[68] << 32);
  v113 = v8;
  v121 = v13;
  if ((v26 & 0xFFFFFFFE) != 0 || (v27 & 0xFE00000000) != 0x200000000)
  {
    v28 = *(v2 + 7);
    v29 = *(v2 + 1);
    v177 = *v2;
    v178 = v29;
    v179 = *(v2 + 2);
    *&v180 = v25;
    *(&v180 + 1) = v28;
    BYTE4(v181) = BYTE4(v27);
    LODWORD(v181) = v27;
    sub_21A0E6DCC();
    ActivityColor.hash(into:)(a1);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v30 = *(v2 + 15);
  v31 = ~*(v2 + 30);
  v32 = *(v2 + 17);
  v120 = v12;
  v118 = v4;
  if ((v31 & 0xFFFFFFFE) != 0 || (v32 & 0xFE00000000) != 0x200000000)
  {
    v34 = *(v2 + 18);
    v33 = *(v2 + 19);
    v35 = *(v2 + 16);
    v36 = *(v2 + 88);
    v177 = *(v2 + 72);
    v178 = v36;
    v179 = *(v2 + 104);
    sub_21A0E6DCC();
    *&v180 = v30;
    *(&v180 + 1) = v35;
    *&v181 = v32;
    *(&v181 + 1) = v34;
    *&v182 = v33;
    ActivityColor.hash(into:)(a1);
    sub_219F91544(a1, v34);
    sub_219F70020(a1, v33);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v37 = *(v2 + 26);
  v38 = *(v2 + 28);
  if ((~*(v2 + 52) & 0xFFFFFFFE) != 0 || (v38 & 0xFE00000000) != 0x200000000)
  {
    v40 = *(v2 + 29);
    v39 = *(v2 + 30);
    v41 = *(v2 + 27);
    v42 = *(v2 + 11);
    v177 = *(v2 + 10);
    v178 = v42;
    v179 = *(v2 + 12);
    sub_21A0E6DCC();
    *&v180 = v37;
    *(&v180 + 1) = v41;
    *&v181 = v38;
    *(&v181 + 1) = v40;
    *&v182 = v39;
    ActivityColor.hash(into:)(a1);
    sub_219F91544(a1, v40);
    sub_219F70020(a1, v39);
  }

  else
  {
    sub_21A0E6DCC();
  }

  v43 = type metadata accessor for PrimaryElectionTheme(0);
  ActivityHeaderData.hash(into:)(a1);
  if (*&v2[v43[8] + 8])
  {
    sub_21A0E6DCC();
    sub_21A0E626C();
  }

  else
  {
    sub_21A0E6DCC();
  }

  sub_219F70178(a1, *&v2[v43[9]]);
  v44 = &v2[v43[10]];
  v45 = v44[32];
  v46 = v44[33];
  v47 = v44[34];
  sub_21A0E626C();
  MEMORY[0x21CED2490](v45);
  sub_21A0E626C();
  sub_21A0E6DCC();
  if (v46 != 9)
  {
    sub_219F7A96C();
  }

  v48 = v120;
  sub_21A0E6DCC();
  v49 = v121;
  if (v47 == 3)
  {
    v50 = v115;
  }

  else
  {
    v50 = v115;
    sub_21A0E626C();
  }

  sub_219F45500(&v2[v43[11]], v50, &qword_27CCD9628, &qword_21A0E9610);
  v53 = *(v49 + 48);
  v51 = v49 + 48;
  v52 = v53;
  if (v53(v50, 1, v48) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v111 = v52;
    v112 = v43;
    v121 = v51;
    v115 = v2;
    v54 = v116;
    sub_21A0B03A4(v50, v116, type metadata accessor for ActivityMinimalAppearanceTheme);
    sub_21A0E6DCC();
    ActivityAsset.hash(into:)(a1);
    v55 = v118;
    sub_219F91544(a1, *(v54 + *(v118 + 28)));
    v56 = *(v54 + *(v55 + 32));
    MEMORY[0x21CED2490](*(v56 + 16));
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = v56 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
      v59 = *(v114 + 72);
      do
      {
        sub_219F45500(v58, v11, &qword_27CCD98C8, &unk_21A0EA440);
        v60 = sub_219F73104();
        sub_219FC5A20(a1, v55, v60);
        sub_219F6409C(v11, &qword_27CCD98C8, &unk_21A0EA440);
        v58 += v59;
        --v57;
      }

      while (v57);
    }

    v48 = v120;
    v61 = v116;
    v62 = (v116 + *(v120 + 20));
    v63 = v62[9];
    v185 = v62[8];
    v186 = v63;
    v187 = v62[10];
    v64 = v62[5];
    v181 = v62[4];
    v182 = v64;
    v65 = v62[6];
    v184 = v62[7];
    v183 = v65;
    v66 = v62[1];
    v177 = *v62;
    v178 = v66;
    v67 = v62[3];
    v179 = v62[2];
    v180 = v67;
    sub_21A02EB6C(a1);
    v68 = (v61 + *(v48 + 24));
    v69 = v68[9];
    v174 = v68[8];
    v175 = v69;
    v176 = v68[10];
    v70 = v68[5];
    v170 = v68[4];
    v171 = v70;
    v71 = v68[7];
    v172 = v68[6];
    v173 = v71;
    v72 = v68[1];
    v166 = *v68;
    v167 = v72;
    v73 = v68[3];
    v168 = v68[2];
    v169 = v73;
    sub_21A02EB6C(a1);
    sub_21A0B0EA8(v61, type metadata accessor for ActivityMinimalAppearanceTheme);
    v2 = v115;
    v52 = v111;
    v43 = v112;
  }

  v74 = &v2[v43[12]];
  sub_219FAB16C(a1);
  v75 = &v74[*(v48 + 20)];
  v76 = *(v75 + 9);
  v163 = *(v75 + 8);
  v164 = v76;
  v165 = *(v75 + 10);
  v77 = *(v75 + 5);
  v159 = *(v75 + 4);
  v160 = v77;
  v78 = *(v75 + 7);
  v161 = *(v75 + 6);
  v162 = v78;
  v79 = *(v75 + 1);
  v155 = *v75;
  v156 = v79;
  v80 = *(v75 + 3);
  v157 = *(v75 + 2);
  v158 = v80;
  sub_21A02EB6C(a1);
  v81 = &v74[*(v48 + 24)];
  v82 = *(v81 + 9);
  v152 = *(v81 + 8);
  v153 = v82;
  v154 = *(v81 + 10);
  v83 = *(v81 + 5);
  v148 = *(v81 + 4);
  v149 = v83;
  v84 = *(v81 + 7);
  v150 = *(v81 + 6);
  v151 = v84;
  v85 = *(v81 + 1);
  v144 = *v81;
  v145 = v85;
  v86 = *(v81 + 3);
  v146 = *(v81 + 2);
  v147 = v86;
  sub_21A02EB6C(a1);
  v87 = v117;
  sub_219F45500(&v2[v43[13]], v117, &qword_27CCD9628, &qword_21A0E9610);
  if (v52(v87, 1, v48) == 1)
  {
    return sub_21A0E6DCC();
  }

  v89 = v119;
  sub_21A0B03A4(v87, v119, type metadata accessor for ActivityMinimalAppearanceTheme);
  sub_21A0E6DCC();
  ActivityAsset.hash(into:)(a1);
  v90 = v118;
  sub_219F91544(a1, *(v89 + *(v118 + 28)));
  v91 = *(v89 + *(v90 + 32));
  MEMORY[0x21CED2490](*(v91 + 16));
  v92 = *(v91 + 16);
  v93 = v113;
  if (v92)
  {
    v94 = v91 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v95 = *(v114 + 72);
    do
    {
      sub_219F45500(v94, v93, &qword_27CCD98C8, &unk_21A0EA440);
      v96 = sub_219F73104();
      sub_219FC5A20(a1, v90, v96);
      sub_219F6409C(v93, &qword_27CCD98C8, &unk_21A0EA440);
      v94 += v95;
      --v92;
    }

    while (v92);
  }

  v97 = v119;
  v98 = (v119 + *(v48 + 20));
  v99 = v98[9];
  v141 = v98[8];
  v142 = v99;
  v143 = v98[10];
  v100 = v98[5];
  v137 = v98[4];
  v138 = v100;
  v101 = v98[7];
  v139 = v98[6];
  v140 = v101;
  v102 = v98[1];
  v133 = *v98;
  v134 = v102;
  v103 = v98[3];
  v135 = v98[2];
  v136 = v103;
  sub_21A02EB6C(a1);
  v104 = (v97 + *(v48 + 24));
  v105 = v104[9];
  v130 = v104[8];
  v131 = v105;
  v132 = v104[10];
  v106 = v104[5];
  v126 = v104[4];
  v127 = v106;
  v107 = v104[7];
  v128 = v104[6];
  v129 = v107;
  v108 = v104[1];
  v122 = *v104;
  v123 = v108;
  v109 = v104[3];
  v124 = v104[2];
  v125 = v109;
  sub_21A02EB6C(a1);
  return sub_21A0B0EA8(v97, type metadata accessor for ActivityMinimalAppearanceTheme);
}

uint64_t PrimaryElectionTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionTheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v65 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v64 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v66 = v62 - v12;
  v70 = type metadata accessor for ActivityHeaderData(0);
  MEMORY[0x28223BE20](v70, v13);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCD8, &qword_21A102A30);
  v67 = *(v16 - 8);
  v68 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v62 - v18;
  v20 = type metadata accessor for PrimaryElectionTheme(0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = xmmword_21A0EB370;
  v24[68] = 2;
  *(v24 + 16) = 0;
  *(v24 + 72) = 0u;
  v74 = v24 + 72;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0u;
  *(v24 + 120) = xmmword_21A0EB370;
  *(v24 + 17) = 0x200000000;
  *(v24 + 10) = 0u;
  *(v24 + 9) = 0u;
  *(v24 + 11) = 0u;
  *(v24 + 12) = 0u;
  *(v24 + 13) = xmmword_21A0EB370;
  *(v24 + 29) = 0;
  *(v24 + 30) = 0;
  *(v24 + 28) = 0x200000000;
  v25 = *(v22 + 44);
  v26 = *(v4 + 56);
  v75 = v24 + 160;
  v76 = v25;
  v26(&v24[v25], 1, 1, v3);
  v122 = v20;
  v72 = *(v20 + 52);
  v26(&v24[v72], 1, 1, v3);
  v27 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_21A0B02FC();
  v69 = v19;
  v28 = v71;
  sub_21A0E6E7C();
  if (v28)
  {
    v71 = v28;
    LODWORD(v68) = 0;
    LODWORD(v69) = 0;
    v70 = 0;
    v29 = v74;
    v30 = v75;
    __swift_destroy_boxed_opaque_existential_1(v73);
    v31 = *(v29 + 3);
    v112 = *(v29 + 2);
    v113 = v31;
    v114 = *(v29 + 4);
    v115 = *(v29 + 10);
    v32 = *(v29 + 1);
    v110 = *v29;
    v111 = v32;
    sub_219F6409C(&v110, &qword_27CCDAB00, &qword_21A0EF390);
    v33 = *(v30 + 3);
    v118 = *(v30 + 2);
    v119 = v33;
    v120 = *(v30 + 4);
    v121 = *(v30 + 10);
    v34 = *(v30 + 1);
    v116 = *v30;
    v117 = v34;
    sub_219F6409C(&v116, &qword_27CCDAB00, &qword_21A0EF390);
    v35 = v122;

    if (v68)
    {
      v36 = &v24[v35[10]];
      v37 = *(v36 + 2);
      v38 = *(v36 + 3);

      sub_219F79CD8(v37, v38);
    }

    sub_219F6409C(&v24[v76], &qword_27CCD9628, &qword_21A0E9610);
    if (v69)
    {
      sub_21A0B0EA8(&v24[v35[12]], type metadata accessor for ActivityMinimalAppearanceTheme);
    }

    return sub_219F6409C(&v24[v72], &qword_27CCD9628, &qword_21A0E9610);
  }

  else
  {
    v71 = v15;
    v62[2] = v3;
    v105 = 0;
    sub_219F81E1C();
    sub_21A0E6A8C();
    v39 = *v109;
    *(v24 + 2) = v108;
    *(v24 + 3) = v39;
    *(v24 + 61) = *&v109[13];
    v40 = v107;
    *v24 = v106;
    *(v24 + 1) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0, &qword_21A0FDD10);
    v104 = 1;
    v62[1] = sub_21A0A7480(&qword_27CCDD970, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6A8C();
    v41 = v74;
    v42 = v75;
    v100 = v118;
    v101 = v119;
    v102 = v120;
    v98 = v116;
    v99 = v117;
    v43 = *(v74 + 3);
    v112 = *(v74 + 2);
    v113 = v43;
    v114 = *(v74 + 4);
    v44 = *(v74 + 1);
    v110 = *v74;
    v103 = v121;
    v115 = *(v74 + 10);
    v111 = v44;
    sub_219F6409C(&v110, &qword_27CCDAB00, &qword_21A0EF390);
    v45 = v101;
    *(v41 + 2) = v100;
    *(v41 + 3) = v45;
    *(v41 + 4) = v102;
    *(v41 + 10) = v103;
    v46 = v99;
    *v41 = v98;
    *(v41 + 1) = v46;
    v91 = 2;
    sub_21A0E6A8C();
    v85 = v94;
    v86 = v95;
    v87 = v96;
    v88 = v97;
    v83 = v92;
    v84 = v93;
    v47 = *(v42 + 3);
    v89[2] = *(v42 + 2);
    v89[3] = v47;
    v89[4] = *(v42 + 4);
    v90 = *(v42 + 10);
    v48 = *(v42 + 1);
    v89[0] = *v42;
    v89[1] = v48;
    sub_219F6409C(v89, &qword_27CCDAB00, &qword_21A0EF390);
    v49 = v86;
    *(v42 + 2) = v85;
    *(v42 + 3) = v49;
    *(v42 + 4) = v87;
    *(v42 + 10) = v88;
    v50 = v84;
    *v42 = v83;
    *(v42 + 1) = v50;
    LOBYTE(v77) = 3;
    sub_21A0B0520(&qword_27CCDCEF8, type metadata accessor for ActivityHeaderData, &protocol conformance descriptor for ActivityHeaderData);
    v51 = v71;
    sub_21A0E6ADC();
    v52 = v122;
    sub_21A0B03A4(v51, &v24[v122[7]], type metadata accessor for ActivityHeaderData);
    LOBYTE(v77) = 4;
    v53 = sub_21A0E6A5C();
    v54 = &v24[v52[8]];
    *v54 = v53;
    v54[1] = v55;
    v70 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDCC0, &unk_21A102A20);
    v82 = 5;
    sub_21A0B040C(&qword_27CCDDCE0, sub_21A0B0484, MEMORY[0x277D83978]);
    sub_21A0E6ADC();
    *&v24[v52[9]] = v77;
    v82 = 6;
    sub_21A0A742C();
    sub_21A0E6ADC();
    v56 = v78;
    v57 = v80;
    v58 = v81;
    v59 = &v24[v52[10]];
    *v59 = v77;
    *(v59 + 1) = v56;
    *(v59 + 1) = v79;
    v59[32] = v57;
    *(v59 + 33) = v58;
    LOBYTE(v77) = 7;
    sub_21A0B0520(&qword_27CCDD968, type metadata accessor for ActivityMinimalAppearanceTheme, &protocol conformance descriptor for ActivityMinimalAppearanceTheme);
    v60 = v66;
    sub_21A0E6A8C();
    sub_219FF0668(v60, &v24[v76], &qword_27CCD9628, &qword_21A0E9610);
    LOBYTE(v77) = 8;
    sub_21A0E6ADC();
    sub_21A0B03A4(v65, &v24[v122[12]], type metadata accessor for ActivityMinimalAppearanceTheme);
    LOBYTE(v77) = 9;
    sub_21A0E6A8C();
    v71 = 0;
    (*(v67 + 8))(v69, v68);
    sub_219FF0668(v64, &v24[v72], &qword_27CCD9628, &qword_21A0E9610);
    sub_21A0B0E40(v24, v63, type metadata accessor for PrimaryElectionTheme);
    __swift_destroy_boxed_opaque_existential_1(v73);
    return sub_21A0B0EA8(v24, type metadata accessor for PrimaryElectionTheme);
  }
}

uint64_t sub_21A0AE124()
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0AE168(uint64_t a1)
{
  sub_21A0E6DAC();
  PrimaryElectionTheme.hash(into:)(v2);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0AE1D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v32 = &v28 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v28 - v5;
  v7 = type metadata accessor for ActivityHeaderData(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrimaryElectionTheme(0);
  __swift_allocate_value_buffer(v12, qword_27CCDDA00);
  v13 = __swift_project_value_buffer(v12, qword_27CCDDA00);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 1, 1, v14);
  v16 = *(v8 + 48);
  v15(&v11[v16], 1, 1, v14);
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 1) = xmmword_21A1029E0;
  *(v11 + 4) = 0xD000000000000011;
  *(v11 + 5) = 0x800000021A10B0F0;
  *(v11 + 3) = 0u;
  *(v11 + 4) = 0u;
  *(v11 + 10) = 0x100000000000003DLL;
  *(v11 + 11) = 0x800000021A10B090;
  sub_219FF0668(v6, &v11[v16], &qword_27CCD98D8, &unk_21A0EA100);
  v31 = sub_21A0B0B3C();
  if (qword_27CCD91D0 != -1)
  {
    swift_once();
  }

  v17 = *algn_27CCFE708;
  v30 = qword_27CCFE700;
  v18 = qword_27CCFE710;
  v19 = unk_27CCFE718;
  v20 = byte_27CCFE720;
  v28 = byte_27CCFE722;
  v29 = byte_27CCFE721;
  v21 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v32, 1, 1, v21);

  sub_219F79C1C(v18, v19);
  if (qword_27CCD9230 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v21, qword_27CCFE728);
  sub_21A0B0E40(v23, v13 + v12[12], type metadata accessor for ActivityMinimalAppearanceTheme);
  v22(v13 + v12[13], 1, 1, v21);
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  *(v13 + 48) = xmmword_21A0EB370;
  *(v13 + 68) = 2;
  *(v13 + 64) = 0;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = xmmword_21A0EB370;
  *(v13 + 136) = 0x200000000;
  *(v13 + 144) = 0u;
  *(v13 + 160) = 0u;
  *(v13 + 176) = 0u;
  *(v13 + 192) = 0u;
  *(v13 + 208) = xmmword_21A0EB370;
  *(v13 + 232) = 0;
  *(v13 + 240) = 0;
  *(v13 + 224) = 0x200000000;
  sub_21A0B03A4(v11, v13 + v12[7], type metadata accessor for ActivityHeaderData);
  v24 = (v13 + v12[8]);
  *v24 = 0;
  v24[1] = 0;
  v25 = v30;
  *(v13 + v12[9]) = v31;
  v26 = v13 + v12[10];
  *v26 = v25;
  *(v26 + 8) = v17;
  *(v26 + 16) = v18;
  *(v26 + 24) = v19;
  *(v26 + 32) = v20;
  LOBYTE(v25) = v28;
  *(v26 + 33) = v29;
  *(v26 + 34) = v25;
  return sub_219F4D494(v32, v13 + v12[11], &qword_27CCD9628, &qword_21A0E9610);
}

uint64_t sub_21A0AE664@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for PrimaryElectionTheme(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_21A0B0E40(v7, a4, type metadata accessor for PrimaryElectionTheme);
}

uint64_t sub_21A0AE6E0(__n128 a1, uint64_t a2, uint64_t *a3)
{
  v35 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D8, &unk_21A0EA100);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ActivityHeaderData(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for PrimaryElectionTheme(0);
  __swift_allocate_value_buffer(v16, a3);
  v17 = __swift_project_value_buffer(v16, a3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v20 = *(v12 + 48);
  v19(v15 + v20, 1, 1, v18);
  v15->n128_u64[0] = 0;
  v15->n128_u64[1] = 0;
  v15[1] = v35;
  v15[2].n128_u64[0] = 0xD000000000000012;
  v15[2].n128_u64[1] = 0x800000021A10B070;
  v15[3] = 0u;
  v15[4] = 0u;
  v15[5].n128_u64[0] = 0x100000000000003DLL;
  v15[5].n128_u64[1] = 0x800000021A10B090;
  sub_219FF0668(v10, v15 + v20, &qword_27CCD98D8, &unk_21A0EA100);
  v35.n128_u64[0] = sub_21A0B0B3C();
  if (qword_27CCD91D0 != -1)
  {
    swift_once();
  }

  v21 = *algn_27CCFE708;
  v34 = qword_27CCFE700;
  v22 = qword_27CCFE710;
  v23 = unk_27CCFE718;
  v24 = byte_27CCFE720;
  v32 = byte_27CCFE722;
  v33 = byte_27CCFE721;
  v25 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v36, 1, 1, v25);

  sub_219F79C1C(v22, v23);
  if (qword_27CCD9230 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v25, qword_27CCFE728);
  sub_21A0B0E40(v27, v17 + v16[12], type metadata accessor for ActivityMinimalAppearanceTheme);
  v26(v17 + v16[13], 1, 1, v25);
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = xmmword_21A0EB370;
  *(v17 + 68) = 2;
  *(v17 + 64) = 0;
  *(v17 + 72) = 0u;
  *(v17 + 88) = 0u;
  *(v17 + 104) = 0u;
  *(v17 + 120) = xmmword_21A0EB370;
  *(v17 + 136) = 0x200000000;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0u;
  *(v17 + 176) = 0u;
  *(v17 + 192) = 0u;
  *(v17 + 208) = xmmword_21A0EB370;
  *(v17 + 232) = 0;
  *(v17 + 240) = 0;
  *(v17 + 224) = 0x200000000;
  sub_21A0B03A4(v15, v17 + v16[7], type metadata accessor for ActivityHeaderData);
  v28 = (v17 + v16[8]);
  *v28 = 0;
  v28[1] = 0;
  v29 = v34;
  *(v17 + v16[9]) = v35.n128_u64[0];
  v30 = v17 + v16[10];
  *v30 = v29;
  *(v30 + 8) = v21;
  *(v30 + 16) = v22;
  *(v30 + 24) = v23;
  *(v30 + 32) = v24;
  LOBYTE(v29) = v32;
  *(v30 + 33) = v33;
  *(v30 + 34) = v29;
  return sub_219F4D494(v36, v17 + v16[11], &qword_27CCD9628, &qword_21A0E9610);
}

uint64_t sub_21A0AEB30()
{
  v0 = type metadata accessor for ActivityAsset(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98D0, &unk_21A0E9C90);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v68 - v6;
  v8 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  __swift_allocate_value_buffer(v8, qword_27CCFE728);
  v72 = __swift_project_value_buffer(v8, qword_27CCFE728);
  *v3 = 0xD000000000000010;
  *(v3 + 1) = 0x800000021A10B0D0;
  v3[16] = 0;
  *(v3 + 17) = 777;
  swift_storeEnumTagMultiPayload();
  sub_21A0B0E40(v3, v7, type metadata accessor for ActivityAsset);
  if (qword_27CCD9198 != -1)
  {
    swift_once();
  }

  v9 = qword_27CCDBDB0;

  sub_21A0B0EA8(v3, type metadata accessor for ActivityAsset);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD98C8, &unk_21A0EA440);
  *&v7[*(v10 + 28)] = v9;
  v11 = MEMORY[0x277D84F90];
  *&v7[*(v10 + 32)] = MEMORY[0x277D84F90];
  v12 = qword_27CCDBDB0;
  v13 = qword_27CCD9188;

  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
    v14 = qword_27CCDBDB0;
  }

  v15 = (dword_27CCDB788 | (byte_27CCDB78C << 32)) & 0xFFFFFFC1FFFFFFFFLL;
  memset(v73, 0, sizeof(v73));
  v74 = 0;

  v70 = xmmword_27CCDB768;
  v71 = xmmword_27CCDB748;
  v68 = *&qword_27CCDB778;
  v69 = unk_27CCDB758;
  sub_219F6409C(v73, &qword_27CCD9F78, &unk_21A0ED840);
  memset(v75, 0, sizeof(v75));
  v76 = 0;
  sub_219F6409C(v75, &qword_27CCD9F78, &unk_21A0ED840);
  *&v77 = 4;
  *&v80 = 0;
  BYTE4(v81) = 0x80;
  LODWORD(v81) = 0;
  *(&v81 + 1) = v12;
  *&v82[0] = v11;
  *(&v82[1] + 8) = v69;
  *(v82 + 8) = v71;
  *(&v82[3] + 8) = v68;
  *(&v82[2] + 8) = v70;
  BYTE12(v82[4]) = BYTE4(v15);
  DWORD2(v82[4]) = v15;
  *&v83 = v14;
  *(&v83 + 1) = v11;
  nullsub_1();
  sub_219F5EC1C(&v84);
  v16 = v72;
  v17 = (v72 + *(v8 + 20));
  sub_219F5EC1C(v95);
  v18 = v95[0];
  v19 = v95[2];
  v17[1] = v95[1];
  v17[2] = v19;
  *v17 = v18;
  v20 = v95[3];
  v21 = v95[4];
  v22 = v95[6];
  v17[5] = v95[5];
  v17[6] = v22;
  v17[3] = v20;
  v17[4] = v21;
  v23 = v95[7];
  v24 = v95[8];
  v25 = v95[10];
  v17[9] = v95[9];
  v17[10] = v25;
  v17[7] = v23;
  v17[8] = v24;
  v26 = (v16 + *(v8 + 24));
  v27 = v84;
  v28 = v86;
  v26[1] = v85;
  v26[2] = v28;
  *v26 = v27;
  v29 = v87;
  v30 = v88;
  v31 = v90;
  v26[5] = v89;
  v26[6] = v31;
  v26[3] = v29;
  v26[4] = v30;
  v32 = v91;
  v33 = v92;
  v34 = v94;
  v26[9] = v93;
  v26[10] = v34;
  v26[7] = v32;
  v26[8] = v33;
  sub_219F4D494(v7, v16, &qword_27CCD98D0, &unk_21A0E9C90);
  v36 = v17[1];
  v35 = v17[2];
  v96[0] = *v17;
  v96[1] = v36;
  v96[2] = v35;
  v37 = v17[6];
  v39 = v17[3];
  v38 = v17[4];
  v96[5] = v17[5];
  v96[6] = v37;
  v96[3] = v39;
  v96[4] = v38;
  v40 = v17[10];
  v42 = v17[7];
  v41 = v17[8];
  v96[9] = v17[9];
  v96[10] = v40;
  v96[7] = v42;
  v96[8] = v41;
  v43 = v77;
  v44 = v79;
  v17[1] = v78;
  v17[2] = v44;
  *v17 = v43;
  v45 = v80;
  v46 = v81;
  v47 = v82[1];
  v17[5] = v82[0];
  v17[6] = v47;
  v17[3] = v45;
  v17[4] = v46;
  v48 = v82[2];
  v49 = v82[3];
  v50 = v83;
  v17[9] = v82[4];
  v17[10] = v50;
  v17[7] = v48;
  v17[8] = v49;
  sub_219F6409C(v96, &qword_27CCD9B40, &unk_21A0ED830);
  v52 = v26[1];
  v51 = v26[2];
  v97[0] = *v26;
  v97[1] = v52;
  v97[2] = v51;
  v53 = v26[5];
  v55 = v26[3];
  v54 = v26[4];
  v97[6] = v26[6];
  v97[5] = v53;
  v97[3] = v55;
  v97[4] = v54;
  v56 = v26[9];
  v58 = v26[7];
  v57 = v26[8];
  v97[10] = v26[10];
  v97[9] = v56;
  v97[7] = v58;
  v97[8] = v57;
  v59 = v84;
  v60 = v86;
  v26[1] = v85;
  v26[2] = v60;
  *v26 = v59;
  v61 = v87;
  v62 = v88;
  v63 = v90;
  v26[5] = v89;
  v26[6] = v63;
  v26[3] = v61;
  v26[4] = v62;
  v64 = v91;
  v65 = v92;
  v66 = v94;
  v26[9] = v93;
  v26[10] = v66;
  v26[7] = v64;
  v26[8] = v65;
  return sub_219F6409C(v97, &qword_27CCDA4A8, &unk_21A0F2320);
}

double sub_21A0AEFE0()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  strcpy(&xmmword_27CCDDA48, "Donald Trump");
  BYTE13(xmmword_27CCDDA48) = 0;
  HIWORD(xmmword_27CCDDA48) = -5120;
  qword_27CCDDA58 = 0x706D757254;
  unk_27CCDDA60 = 0xE500000000000000;
  strcpy(&xmmword_27CCDDA68, "donald-trump");
  BYTE13(xmmword_27CCDDA68) = 0;
  HIWORD(xmmword_27CCDDA68) = -5120;
  xmmword_27CCDDA78 = xmmword_27CCDB790;
  xmmword_27CCDDA88 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDA98 = xmmword_27CCDB7B0;
  xmmword_27CCDDAA8 = *&qword_27CCDB7C0;
  dword_27CCDDAB8 = dword_27CCDB7D0;
  byte_27CCDDABC = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF0AC()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  *&xmmword_27CCDDAC0 = 0x614820696B6B694ELL;
  *(&xmmword_27CCDDAC0 + 1) = 0xEB0000000079656CLL;
  qword_27CCDDAD0 = 0x79656C6148;
  unk_27CCDDAD8 = 0xE500000000000000;
  *&xmmword_27CCDDAE0 = 0x61682D696B6B696ELL;
  *(&xmmword_27CCDDAE0 + 1) = 0xEB0000000079656CLL;
  xmmword_27CCDDAF0 = xmmword_27CCDB790;
  xmmword_27CCDDB00 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDB10 = xmmword_27CCDB7B0;
  xmmword_27CCDDB20 = *&qword_27CCDB7C0;
  dword_27CCDDB30 = dword_27CCDB7D0;
  byte_27CCDDB34 = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF178()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  strcpy(&xmmword_27CCDDB38, "Ron DeSantis");
  BYTE13(xmmword_27CCDDB38) = 0;
  HIWORD(xmmword_27CCDDB38) = -5120;
  qword_27CCDDB48 = 0x7369746E61536544;
  unk_27CCDDB50 = 0xE800000000000000;
  strcpy(&xmmword_27CCDDB58, "ron-desantis");
  BYTE13(xmmword_27CCDDB58) = 0;
  HIWORD(xmmword_27CCDDB58) = -5120;
  xmmword_27CCDDB68 = xmmword_27CCDB790;
  xmmword_27CCDDB78 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDB88 = xmmword_27CCDB7B0;
  xmmword_27CCDDB98 = *&qword_27CCDB7C0;
  dword_27CCDDBA8 = dword_27CCDB7D0;
  byte_27CCDDBAC = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF248()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  *&xmmword_27CCDDBB0 = 0x6152206B65766956;
  *(&xmmword_27CCDDBB0 + 1) = 0xEF796D617773616DLL;
  qword_27CCDDBC0 = 0x6D617773616D6152;
  unk_27CCDDBC8 = 0xE900000000000079;
  *&xmmword_27CCDDBD0 = 0x61722D6B65766976;
  *(&xmmword_27CCDDBD0 + 1) = 0xEF796D617773616DLL;
  xmmword_27CCDDBE0 = xmmword_27CCDB790;
  xmmword_27CCDDBF0 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDC00 = xmmword_27CCDB7B0;
  xmmword_27CCDDC10 = *&qword_27CCDB7C0;
  dword_27CCDDC20 = dword_27CCDB7D0;
  byte_27CCDDC24 = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

double sub_21A0AF320()
{
  if (qword_27CCD9190 != -1)
  {
    swift_once();
  }

  *&xmmword_27CCDDC28 = 0x6E655020656B694DLL;
  *(&xmmword_27CCDDC28 + 1) = 0xEA00000000006563;
  qword_27CCDDC38 = 0x65636E6550;
  unk_27CCDDC40 = 0xE500000000000000;
  *&xmmword_27CCDDC48 = 0x6E65702D656B696DLL;
  *(&xmmword_27CCDDC48 + 1) = 0xEA00000000006563;
  xmmword_27CCDDC58 = xmmword_27CCDB790;
  xmmword_27CCDDC68 = unk_27CCDB7A0;
  result = *&xmmword_27CCDB7B0;
  xmmword_27CCDDC78 = xmmword_27CCDB7B0;
  xmmword_27CCDDC88 = *&qword_27CCDB7C0;
  dword_27CCDDC98 = dword_27CCDB7D0;
  byte_27CCDDC9C = ((dword_27CCDB7D0 | (byte_27CCDB7D4 << 32)) & 0xFFFFFFC1FFFFFFFFLL) >> 32;
  return result;
}

char *sub_21A0AF3E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD18, &unk_21A102C78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_21A0AF4DC()
{
  result = qword_27CCDDCA0;
  if (!qword_27CCDDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCA0);
  }

  return result;
}

unint64_t sub_21A0AF530()
{
  result = qword_27CCDDCA8;
  if (!qword_27CCDDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCA8);
  }

  return result;
}

BOOL _s22NewsLiveActivitiesCore20PrimaryElectionThemeV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = type metadata accessor for ActivityMinimalAppearanceTheme(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9628, &qword_21A0E9610);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v114 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDD998, &unk_21A102730);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = (&v114 - v24);
  v26 = *(a1 + 6);
  v27 = *(a1 + 16) | (*(a1 + 68) << 32);
  v28 = a2[3];
  v29 = *(a2 + 16) | (*(a2 + 68) << 32);
  if ((~*(a1 + 12) & 0xFFFFFFFE) != 0 || (v27 & 0xFE00000000) != 0x200000000)
  {
    v31 = *(a1 + 7);
    v32 = a1[1];
    v151 = *a1;
    v152 = v32;
    v153 = a1[2];
    *&v154 = v26;
    *(&v154 + 1) = v31;
    v155[4] = BYTE4(v27);
    *v155 = v27;
    if ((~v28 & 0xFFFFFFFE) == 0 && (v29 & 0xFE00000000) == 0x200000000)
    {
      return 0;
    }

    v33 = a2[1];
    v179 = *a2;
    v180 = v33;
    v181 = a2[2];
    v182 = v28;
    LODWORD(v183) = v29;
    BYTE4(v183) = BYTE4(v29);
    v124 = a1;
    v34 = a2;
    v35 = v8;
    v36 = v4;
    v37 = v5;
    v38 = (&v114 - v24);
    v39 = v16;
    v40 = v23;
    v41 = _s22NewsLiveActivitiesCore13ActivityColorO2eeoiySbAC_ACtFZ_0(&v151, &v179);
    v23 = v40;
    v16 = v39;
    v25 = v38;
    v5 = v37;
    v4 = v36;
    v8 = v35;
    a2 = v34;
    a1 = v124;
    if ((v41 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v123 = v13;
    v124 = v5;
    v122 = v21;
    v42 = *(a1 + 120);
    v162[2] = *(a1 + 104);
    v163 = v42;
    v164 = *(a1 + 136);
    v165 = *(a1 + 19);
    v43 = *(a1 + 88);
    v162[0] = *(a1 + 72);
    v162[1] = v43;
    v44 = *(a2 + 120);
    v166[2] = *(a2 + 104);
    v167 = v44;
    v168 = *(a2 + 136);
    v169 = *(a2 + 19);
    v45 = *(a2 + 88);
    v166[0] = *(a2 + 72);
    v166[1] = v45;
    v46 = *(a1 + 88);
    v145 = *(a1 + 72);
    v146 = v46;
    v147 = *(a1 + 104);
    v47 = v163;
    v48 = v164;
    v50 = (~v167 & 0xFFFFFFFE) == 0 && (v168 & 0xFE00000000) == 0x200000000;
    v140[0] = a1[9];
    if ((~v163 & 0xFFFFFFFE) != 0 || (v164 & 0xFE00000000) != 0x200000000)
    {
      if (!v50)
      {
        v118 = v8;
        v119 = v16;
        v120 = v23;
        v121 = v4;
        v55 = *(a2 + 88);
        v151 = *(a2 + 72);
        v152 = v55;
        v153 = *(a2 + 104);
        v154 = v167;
        *v155 = v168;
        *&v155[8] = a2[9];
        v179 = v151;
        v180 = v55;
        v181 = v153;
        v182 = v167;
        v184 = *&v155[16];
        v183 = *v155;
        v56 = *(a1 + 72);
        v57 = *(a1 + 104);
        v176[1] = *(a1 + 88);
        v176[2] = v57;
        v176[0] = v56;
        v178 = a1[9];
        v176[3] = v163;
        v177 = v164;
        sub_219F45500(v162, &v170, &qword_27CCDAB00, &qword_21A0EF390);
        sub_219F45500(v166, &v170, &qword_27CCDAB00, &qword_21A0EF390);
        v58 = sub_21A0D99E0(v176, &v179);
        sub_219F6409C(&v151, &qword_27CCDAB00, &qword_21A0EF390);
        v170 = v145;
        v171 = v146;
        v172 = v147;
        v173 = v47;
        v174 = v48;
        v175 = v140[0];
        sub_219F6409C(&v170, &qword_27CCDAB00, &qword_21A0EF390);
        if ((v58 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_22;
      }
    }

    else if (v50)
    {
      v118 = v8;
      v119 = v16;
      v120 = v23;
      v121 = v4;
      v51 = *(a1 + 88);
      v151 = *(a1 + 72);
      v152 = v51;
      v153 = *(a1 + 104);
      v154 = v163;
      *v155 = v164;
      *&v155[8] = a1[9];
      sub_219F45500(v162, &v179, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F45500(v166, &v179, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F6409C(&v151, &qword_27CCDAB00, &qword_21A0EF390);
LABEL_22:
      v59 = a1[11];
      v60 = a1[13];
      v141 = a1[12];
      v142 = v60;
      v143 = a1[14];
      v61 = a1[11];
      v140[0] = a1[10];
      v140[1] = v61;
      v62 = a2[13];
      v147 = a2[12];
      v148 = v62;
      v149 = a2[14];
      v63 = a2[11];
      v145 = a2[10];
      v146 = v63;
      v137 = v140[0];
      v138 = v59;
      v144 = *(a1 + 30);
      v150 = *(a2 + 30);
      v139 = v141;
      v64 = v142;
      v65 = v143;
      v67 = (~v148 & 0xFFFFFFFE) == 0 && (v149 & 0xFE00000000) == 0x200000000;
      v136 = *(a1 + 232);
      if ((~v142 & 0xFFFFFFFE) != 0 || (v143 & 0xFE00000000) != 0x200000000)
      {
        if (!v67)
        {
          v76 = a2[11];
          v131 = a2[10];
          v132 = v76;
          v133 = a2[12];
          v134 = v148;
          *&v135[0] = v149;
          *(v135 + 8) = *(a2 + 232);
          v151 = v131;
          v152 = v76;
          v153 = v133;
          v154 = v148;
          *&v155[16] = *&v135[1];
          *v155 = v135[0];
          v77 = a1[10];
          v78 = a1[12];
          v171 = a1[11];
          v172 = v78;
          v170 = v77;
          v175 = *(a1 + 232);
          v173 = v142;
          v174 = v143;
          sub_219F45500(v140, &v125, &qword_27CCDAB00, &qword_21A0EF390);
          sub_219F45500(&v145, &v125, &qword_27CCDAB00, &qword_21A0EF390);
          v79 = sub_21A0D99E0(&v170, &v151);
          sub_219F6409C(&v131, &qword_27CCDAB00, &qword_21A0EF390);
          v125 = v137;
          v126 = v138;
          v127 = v139;
          v128 = v64;
          v129 = v65;
          v130 = v136;
          v68 = v123;
          sub_219F6409C(&v125, &qword_27CCDAB00, &qword_21A0EF390);
          if ((v79 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_39;
        }
      }

      else
      {
        v68 = v123;
        if (v67)
        {
          v69 = a1[11];
          v151 = a1[10];
          v152 = v69;
          v153 = a1[12];
          v154 = v142;
          *v155 = v143;
          *&v155[8] = *(a1 + 232);
          sub_219F45500(v140, &v170, &qword_27CCDAB00, &qword_21A0EF390);
          sub_219F45500(&v145, &v170, &qword_27CCDAB00, &qword_21A0EF390);
          sub_219F6409C(&v151, &qword_27CCDAB00, &qword_21A0EF390);
LABEL_39:
          v80 = type metadata accessor for PrimaryElectionTheme(0);
          if ((static ActivityHeaderData.== infix(_:_:)() & 1) == 0)
          {
            return 0;
          }

          v81 = v80[8];
          v82 = (a1 + v81);
          v83 = *(a1 + v81 + 8);
          v84 = (a2 + v81);
          v85 = v84[1];
          if (v83)
          {
            if (!v85 || (*v82 != *v84 || v83 != v85) && (sub_21A0E6C5C() & 1) == 0)
            {
              return 0;
            }
          }

          else if (v85)
          {
            return 0;
          }

          if ((sub_219F78CEC(*(a1 + v80[9]), *(a2 + v80[9])) & 1) == 0)
          {
            return 0;
          }

          v86 = v80[10];
          v88 = *(a1 + v86);
          v87 = *(a1 + v86 + 8);
          v89 = *(a1 + v86 + 16);
          v117 = *(a1 + v86 + 24);
          v90 = *(a1 + v86 + 32);
          v91 = *(a1 + v86 + 33);
          *&v131 = v88;
          *(&v131 + 1) = v87;
          *&v132 = v89;
          *(&v132 + 1) = v117;
          LOBYTE(v133) = v90;
          *(&v133 + 1) = v91;
          v92 = a2 + v86;
          v93 = *v92;
          v94 = *(v92 + 1);
          v95 = *(v92 + 2);
          v96 = *(v92 + 3);
          v115 = v92[32];
          v116 = v90;
          LOWORD(v92) = *(v92 + 33);
          *&v125 = v93;
          *(&v125 + 1) = v94;
          *&v126 = v95;
          *(&v126 + 1) = v96;
          LOBYTE(v127) = v115;
          *(&v127 + 1) = v92;

          sub_219F79C1C(v89, v117);

          sub_219F79C1C(v95, v96);
          LOBYTE(v96) = _s22NewsLiveActivitiesCore19ElectionEntityBadgeV2eeoiySbAC_ACtFZ_0(&v131, &v125);
          v97 = v126;

          sub_219F79CD8(v97, *(&v97 + 1));
          v98 = v132;

          sub_219F79CD8(v98, *(&v98 + 1));
          if ((v96 & 1) == 0)
          {
            return 0;
          }

          v99 = v80[11];
          v100 = *(v120 + 48);
          sub_219F45500(a1 + v99, v25, &qword_27CCD9628, &qword_21A0E9610);
          sub_219F45500(a2 + v99, v25 + v100, &qword_27CCD9628, &qword_21A0E9610);
          v101 = *(v124 + 6);
          v102 = v121;
          v103 = v101(v25, 1, v121);
          v121 = v102;
          if (v103 == 1)
          {
            if (v101((v25 + v100), 1, v102) == 1)
            {
              sub_219F6409C(v25, &qword_27CCD9628, &qword_21A0E9610);
LABEL_56:
              if ((static ActivityMinimalAppearanceTheme.== infix(_:_:)() & 1) == 0)
              {
                return 0;
              }

              v107 = v80[13];
              v108 = *(v120 + 48);
              v109 = a1 + v107;
              v110 = v122;
              sub_219F45500(v109, v122, &qword_27CCD9628, &qword_21A0E9610);
              sub_219F45500(a2 + v107, v110 + v108, &qword_27CCD9628, &qword_21A0E9610);
              v111 = v121;
              if (v101(v110, 1, v121) == 1)
              {
                if (v101((v110 + v108), 1, v111) == 1)
                {
                  sub_219F6409C(v110, &qword_27CCD9628, &qword_21A0E9610);
                  return 1;
                }

                goto LABEL_62;
              }

              sub_219F45500(v110, v68, &qword_27CCD9628, &qword_21A0E9610);
              if (v101((v110 + v108), 1, v111) == 1)
              {
                sub_21A0B0EA8(v68, type metadata accessor for ActivityMinimalAppearanceTheme);
LABEL_62:
                v72 = &qword_27CCDD998;
                v73 = &unk_21A102730;
                v74 = v110;
                goto LABEL_35;
              }

              v112 = v118;
              sub_21A0B03A4(v110 + v108, v118, type metadata accessor for ActivityMinimalAppearanceTheme);
              v113 = static ActivityMinimalAppearanceTheme.== infix(_:_:)();
              sub_21A0B0EA8(v112, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_21A0B0EA8(v68, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_219F6409C(v110, &qword_27CCD9628, &qword_21A0E9610);
              return (v113 & 1) != 0;
            }
          }

          else
          {
            v104 = v119;
            sub_219F45500(v25, v119, &qword_27CCD9628, &qword_21A0E9610);
            if (v101((v25 + v100), 1, v102) != 1)
            {
              v105 = v25 + v100;
              v106 = v118;
              sub_21A0B03A4(v105, v118, type metadata accessor for ActivityMinimalAppearanceTheme);
              LODWORD(v124) = static ActivityMinimalAppearanceTheme.== infix(_:_:)();
              sub_21A0B0EA8(v106, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_21A0B0EA8(v104, type metadata accessor for ActivityMinimalAppearanceTheme);
              sub_219F6409C(v25, &qword_27CCD9628, &qword_21A0E9610);
              v68 = v123;
              if ((v124 & 1) == 0)
              {
                return 0;
              }

              goto LABEL_56;
            }

            sub_21A0B0EA8(v104, type metadata accessor for ActivityMinimalAppearanceTheme);
          }

          v72 = &qword_27CCDD998;
          v73 = &unk_21A102730;
          v74 = v25;
LABEL_35:
          sub_219F6409C(v74, v72, v73);
          return 0;
        }
      }

      v70 = a1[11];
      v151 = a1[10];
      v152 = v70;
      v153 = a1[12];
      *&v155[8] = *(a1 + 232);
      v71 = a2[11];
      v156 = a2[10];
      v154 = v142;
      v157 = v71;
      v158 = a2[12];
      *v155 = v143;
      v159 = v148;
      v160 = v149;
      v161 = *(a2 + 232);
      sub_219F45500(v140, &v170, &qword_27CCDAB00, &qword_21A0EF390);
      v53 = &v145;
      v54 = &v170;
LABEL_34:
      sub_219F45500(v53, v54, &qword_27CCDAB00, &qword_21A0EF390);
      v72 = &unk_27CCDD9A0;
      v73 = &unk_21A102C70;
      v74 = &v151;
      goto LABEL_35;
    }

    v52 = *(a1 + 88);
    v151 = *(a1 + 72);
    v152 = v52;
    v153 = *(a1 + 104);
    v154 = v163;
    *&v155[8] = a1[9];
    v156 = *(a2 + 72);
    v157 = *(a2 + 88);
    v158 = *(a2 + 104);
    *v155 = v164;
    v159 = v167;
    v160 = v168;
    v161 = a2[9];
    sub_219F45500(v162, &v179, &qword_27CCDAB00, &qword_21A0EF390);
    v53 = v166;
    v54 = &v179;
    goto LABEL_34;
  }

  v30 = 0;
  if ((~v28 & 0xFFFFFFFE) == 0 && (v29 & 0xFE00000000) == 0x200000000)
  {
    goto LABEL_9;
  }

  return v30;
}

uint64_t sub_21A0B0294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A0B02FC()
{
  result = qword_27CCDDCB8;
  if (!qword_27CCDDCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCB8);
  }

  return result;
}

unint64_t sub_21A0B0350()
{
  result = qword_27CCDDCD0;
  if (!qword_27CCDDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCD0);
  }

  return result;
}

uint64_t sub_21A0B03A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0B040C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CCDDCC0, &unk_21A102A20);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A0B0484()
{
  result = qword_27CCDDCE8;
  if (!qword_27CCDDCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCE8);
  }

  return result;
}

uint64_t sub_21A0B0520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PrimaryElectionTheme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PrimaryElectionTheme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21A0B06E4()
{
  result = qword_27CCDDCF8;
  if (!qword_27CCDDCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDCF8);
  }

  return result;
}

unint64_t sub_21A0B073C()
{
  result = qword_27CCDDD00;
  if (!qword_27CCDDD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD00);
  }

  return result;
}

unint64_t sub_21A0B0794()
{
  result = qword_27CCDDD08;
  if (!qword_27CCDDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD08);
  }

  return result;
}

uint64_t sub_21A0B07E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54656E696C79656BLL && a2 == 0xEB00000000746E69;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEE00746E6954646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A10B010 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x784566666F6E7572 && a2 == 0xED00007470726563 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614272656E6E6977 && a2 == 0xEB00000000656764 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x546C616D696E696DLL && a2 == 0xEC000000656D6568 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021A10B030 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000021A10B050 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_21A0B0B3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD10, &unk_21A102C60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21A0FBCA0;
  if (qword_27CCD9238 != -1)
  {
    swift_once();
  }

  v1 = xmmword_27CCDDA88;
  v2 = xmmword_27CCDDA98;
  v3 = xmmword_27CCDDAA8;
  v38[5] = xmmword_27CCDDA98;
  v39[0] = xmmword_27CCDDAA8;
  v4 = *(&xmmword_27CCDDAA8 + 13);
  *(v39 + 13) = *(&xmmword_27CCDDAA8 + 13);
  v5 = *&qword_27CCDDA58;
  v38[0] = xmmword_27CCDDA48;
  v6 = xmmword_27CCDDA68;
  v7 = xmmword_27CCDDA78;
  v38[1] = *&qword_27CCDDA58;
  v38[2] = xmmword_27CCDDA68;
  v38[3] = xmmword_27CCDDA78;
  v38[4] = xmmword_27CCDDA88;
  *(v0 + 32) = xmmword_27CCDDA48;
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  *(v0 + 96) = v1;
  *(v0 + 112) = v2;
  *(v0 + 128) = v3;
  *(v0 + 141) = v4;
  sub_219F72ECC(v38, v46);
  if (qword_27CCD9240 != -1)
  {
    swift_once();
  }

  v8 = xmmword_27CCDDB00;
  v9 = xmmword_27CCDDB10;
  v40[4] = xmmword_27CCDDB00;
  v40[5] = xmmword_27CCDDB10;
  v10 = xmmword_27CCDDB20;
  v41[0] = xmmword_27CCDDB20;
  v11 = *(&xmmword_27CCDDB20 + 13);
  *(v41 + 13) = *(&xmmword_27CCDDB20 + 13);
  v12 = *&qword_27CCDDAD0;
  v40[0] = xmmword_27CCDDAC0;
  v40[1] = *&qword_27CCDDAD0;
  v13 = xmmword_27CCDDAE0;
  v14 = xmmword_27CCDDAF0;
  v40[2] = xmmword_27CCDDAE0;
  v40[3] = xmmword_27CCDDAF0;
  *(v0 + 152) = xmmword_27CCDDAC0;
  *(v0 + 168) = v12;
  *(v0 + 184) = v13;
  *(v0 + 200) = v14;
  *(v0 + 216) = v8;
  *(v0 + 232) = v9;
  *(v0 + 248) = v10;
  *(v0 + 261) = v11;
  sub_219F72ECC(v40, v46);
  if (qword_27CCD9248 != -1)
  {
    swift_once();
  }

  v15 = xmmword_27CCDDB78;
  v16 = xmmword_27CCDDB88;
  v42[4] = xmmword_27CCDDB78;
  v42[5] = xmmword_27CCDDB88;
  v17 = xmmword_27CCDDB98;
  v43[0] = xmmword_27CCDDB98;
  v18 = *(&xmmword_27CCDDB98 + 13);
  *(v43 + 13) = *(&xmmword_27CCDDB98 + 13);
  v19 = *&qword_27CCDDB48;
  v42[0] = xmmword_27CCDDB38;
  v42[1] = *&qword_27CCDDB48;
  v20 = xmmword_27CCDDB58;
  v21 = xmmword_27CCDDB68;
  v42[2] = xmmword_27CCDDB58;
  v42[3] = xmmword_27CCDDB68;
  *(v0 + 272) = xmmword_27CCDDB38;
  *(v0 + 288) = v19;
  *(v0 + 304) = v20;
  *(v0 + 320) = v21;
  *(v0 + 336) = v15;
  *(v0 + 352) = v16;
  *(v0 + 368) = v17;
  *(v0 + 381) = v18;
  sub_219F72ECC(v42, v46);
  if (qword_27CCD9250 != -1)
  {
    swift_once();
  }

  v22 = xmmword_27CCDDBF0;
  v23 = xmmword_27CCDDC00;
  v44[4] = xmmword_27CCDDBF0;
  v44[5] = xmmword_27CCDDC00;
  v24 = xmmword_27CCDDC10;
  v45[0] = xmmword_27CCDDC10;
  v25 = *(&xmmword_27CCDDC10 + 13);
  *(v45 + 13) = *(&xmmword_27CCDDC10 + 13);
  v26 = *&qword_27CCDDBC0;
  v44[0] = xmmword_27CCDDBB0;
  v44[1] = *&qword_27CCDDBC0;
  v27 = xmmword_27CCDDBD0;
  v28 = xmmword_27CCDDBE0;
  v44[2] = xmmword_27CCDDBD0;
  v44[3] = xmmword_27CCDDBE0;
  *(v0 + 392) = xmmword_27CCDDBB0;
  *(v0 + 408) = v26;
  *(v0 + 424) = v27;
  *(v0 + 440) = v28;
  *(v0 + 456) = v22;
  *(v0 + 472) = v23;
  *(v0 + 488) = v24;
  *(v0 + 501) = v25;
  sub_219F72ECC(v44, v46);
  if (qword_27CCD9258 != -1)
  {
    swift_once();
  }

  v29 = xmmword_27CCDDC68;
  v30 = xmmword_27CCDDC78;
  v46[4] = xmmword_27CCDDC68;
  v46[5] = xmmword_27CCDDC78;
  v31 = xmmword_27CCDDC88;
  v47[0] = xmmword_27CCDDC88;
  v32 = *(&xmmword_27CCDDC88 + 13);
  *(v47 + 13) = *(&xmmword_27CCDDC88 + 13);
  v33 = *&qword_27CCDDC38;
  v46[0] = xmmword_27CCDDC28;
  v46[1] = *&qword_27CCDDC38;
  v34 = xmmword_27CCDDC48;
  v35 = xmmword_27CCDDC58;
  v46[2] = xmmword_27CCDDC48;
  v46[3] = xmmword_27CCDDC58;
  *(v0 + 512) = xmmword_27CCDDC28;
  *(v0 + 528) = v33;
  *(v0 + 544) = v34;
  *(v0 + 560) = v35;
  *(v0 + 576) = v29;
  *(v0 + 592) = v30;
  *(v0 + 608) = v31;
  *(v0 + 621) = v32;
  sub_219F72ECC(v46, v37);
  return v0;
}

uint64_t sub_21A0B0E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A0B0EA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A0B0F0C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A0E524C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v23 - v11;
  sub_219F3F240(v26);
  v13 = v26[0];
  v24 = v26[1];
  v14 = v27;
  sub_21A0E541C();
  (*(v5 + 104))(v9, *MEMORY[0x277CDF3C0], v4);
  v15 = sub_21A0E523C();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v12, v4);
  sub_219F9AE04();
  sub_21A0E555C();
  v17 = v25;
  v18 = sub_21A0E548C();
  sub_21A0E545C();
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v19 < 9.22337204e18)
  {
    v20 = v19;
    v21 = sub_21A07ADFC(MEMORY[0x277D84F90]);
    v22 = sub_21A0E554C();
    (*(*(v22 - 8) + 8))(a1, v22);
    *a2 = v13;
    *(a2 + 1) = v24;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15 & 1;
    *(a2 + 17) = v17;
    *(a2 + 18) = v18 & 1;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_21A0B1158(uint64_t a1@<X8>)
{
  v3 = sub_21A0E554C();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1);
  sub_21A0B0F0C(v6, a1);
}

uint64_t ScheduledLiveActivity.scheduleRequest.getter()
{
  v1 = sub_21A0E495C();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v17 - v8;
  v10 = sub_21A0E4AEC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = *v0;
  v17[0] = *(v0 + 1);
  v17[1] = v12;
  v13 = type metadata accessor for ScheduledLiveActivity(0);
  v14 = *(v2 + 16);
  v14(v9, &v0[*(v13 + 20)], v1);
  v14(v6, &v0[*(v13 + 28)], v1);

  sub_21A0E4A6C();
  v15 = objc_allocWithZone(sub_21A0E49EC());
  return sub_21A0E49BC();
}

uint64_t ScheduledLiveActivity.init(activityID:scheduleDate:backgroundTaskID:originalScheduleDate:retryCount:scheduleDelay:randomInitialDelay:scheduleTimeWindow:retryInterval:retryScheduleTimeWindow:retryCountMax:expectedDownloadByteSize:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v24 = a1[1];
  *a9 = *a1;
  *(a9 + 1) = v24;
  v25 = type metadata accessor for ScheduledLiveActivity(0);
  v26 = v25[5];
  v27 = sub_21A0E495C();
  v28 = *(*(v27 - 8) + 32);
  v28(&a9[v26], a2, v27);
  v29 = &a9[v25[6]];
  *v29 = a3;
  *(v29 + 1) = a4;
  result = (v28)(&a9[v25[7]], a5, v27);
  *&a9[v25[8]] = a6;
  *&a9[v25[9]] = a10;
  *&a9[v25[10]] = a11;
  *&a9[v25[11]] = a12;
  *&a9[v25[12]] = a13;
  *&a9[v25[13]] = a14;
  *&a9[v25[14]] = a7;
  *&a9[v25[15]] = a8;
  return result;
}

uint64_t ScheduledLiveActivity.init(activityID:scheduleDate:backgroundTaskIDSuffix:originalScheduleDate:retryCount:scheduleDelay:randomInitialDelay:scheduleTimeWindow:retryInterval:retryScheduleTimeWindow:retryCountMax:expectedDownloadByteSize:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v23 = *a1;
  v24 = a1[1];
  v25 = type metadata accessor for ScheduledLiveActivity(0);
  v26 = v25[5];
  v27 = sub_21A0E495C();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&a9[v26], a2, v27);
  MEMORY[0x21CED1980](a3, a4);

  (*(v28 + 8))(a2, v27);
  *a9 = v23;
  *(a9 + 1) = v24;
  v29 = &a9[v25[6]];
  *v29 = 0xD000000000000013;
  *(v29 + 1) = 0x800000021A10AB90;
  result = (*(v28 + 32))(&a9[v25[7]], a5, v27);
  *&a9[v25[8]] = a6;
  *&a9[v25[9]] = a10;
  *&a9[v25[10]] = a11;
  *&a9[v25[11]] = a12;
  *&a9[v25[12]] = a13;
  *&a9[v25[13]] = a14;
  *&a9[v25[14]] = a7;
  *&a9[v25[15]] = a8;
  return result;
}

double ScheduledLiveActivity.activityID.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t ScheduledLiveActivity.scheduleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledLiveActivity(0) + 20);
  v4 = sub_21A0E495C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledLiveActivity.backgroundTaskID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ScheduledLiveActivity(0) + 24));

  return v1;
}

uint64_t ScheduledLiveActivity.originalScheduleDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledLiveActivity(0) + 28);
  v4 = sub_21A0E495C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledLiveActivity.with(backgroundTaskIDSuffix:scheduleDate:originalScheduleDate:retryCount:scheduleDelay:scheduleTimeWindow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>, uint64_t a10, char a11)
{
  v12 = v11;
  v58 = a6;
  v59 = a8;
  v60 = a5;
  v54 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v53 - v24;
  v26 = sub_21A0E495C();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26, a2);
  v63 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v61 = a7;
  v62 = &v53 - v31;
  if (a2)
  {
    v64 = 0xD000000000000013;
    v65 = 0x800000021A10AB90;
    MEMORY[0x21CED1980](a1);
    v56 = v65;
    v57 = v64;
  }

  else
  {
    v32 = &v12[*(type metadata accessor for ScheduledLiveActivity(0) + 24)];
    v33 = *v32;
    v56 = v32[1];
    v57 = v33;
  }

  v34 = *(v12 + 1);
  v55 = *v12;
  sub_21A02456C(a3, v25);
  v35 = *(v27 + 48);
  if (v35(v25, 1, v26) == 1)
  {
    v36 = type metadata accessor for ScheduledLiveActivity(0);
    (*(v27 + 16))(v62, &v12[*(v36 + 20)], v26);
    v37 = v35(v25, 1, v26);

    if (v37 != 1)
    {
      sub_21A04DDF4(v25);
    }
  }

  else
  {
    (*(v27 + 32))(v62, v25, v26);
  }

  sub_21A02456C(v54, v22);
  if (v35(v22, 1, v26) == 1)
  {
    v38 = type metadata accessor for ScheduledLiveActivity(0);
    (*(v27 + 16))(v63, &v12[*(v38 + 28)], v26);
    v39 = v35(v22, 1, v26);
    v41 = v60;
    v40 = v61;
    if (v39 != 1)
    {
      sub_21A04DDF4(v22);
    }
  }

  else
  {
    (*(v27 + 32))(v63, v22, v26);
    v41 = v60;
    v40 = v61;
  }

  if (v58)
  {
    v41 = *&v12[*(type metadata accessor for ScheduledLiveActivity(0) + 32)];
  }

  if (v59)
  {
    v40 = *&v12[*(type metadata accessor for ScheduledLiveActivity(0) + 36)];
  }

  v43 = type metadata accessor for ScheduledLiveActivity(0);
  v44 = v43;
  v45 = *&v12[v43[10]];
  if (a11)
  {
    a10 = *&v12[v43[11]];
  }

  v46 = *&v12[v43[12]];
  v47 = *&v12[v43[13]];
  v48 = *&v12[v43[14]];
  *a9 = v55;
  *(a9 + 1) = v34;
  v49 = *(v27 + 32);
  v49(&a9[v43[5]], v62, v26);
  v50 = &a9[v44[6]];
  v51 = v56;
  *v50 = v57;
  *(v50 + 1) = v51;
  result = (v49)(&a9[v44[7]], v63, v26);
  *&a9[v44[8]] = v41;
  *&a9[v44[9]] = v40;
  *&a9[v44[10]] = v45;
  *&a9[v44[11]] = a10;
  *&a9[v44[12]] = v46;
  *&a9[v44[13]] = v47;
  *&a9[v44[14]] = v48;
  *&a9[v44[15]] = 100000;
  return result;
}

uint64_t sub_21A0B1E68(uint64_t a1)
{
  v2 = sub_21A0B3400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0B1EA4(uint64_t a1)
{
  v2 = sub_21A0B3400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScheduledLiveActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD20, &qword_21A102C88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0B3400();
  sub_21A0E6EAC();
  v10 = v3[1];
  v12[0] = *v3;
  v12[1] = v10;
  v13 = 0;
  sub_21A02C7FC();

  sub_21A0E6BBC();
  if (v2)
  {
  }

  else
  {

    type metadata accessor for ScheduledLiveActivity(0);
    LOBYTE(v12[0]) = 1;
    sub_21A0E495C();
    sub_219F45060(&qword_27CCD9808, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_21A0E6BBC();
    LOBYTE(v12[0]) = 2;
    sub_21A0E6B7C();
    LOBYTE(v12[0]) = 3;
    sub_21A0E6BBC();
    LOBYTE(v12[0]) = 4;
    sub_21A0E6BAC();
    LOBYTE(v12[0]) = 5;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 6;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 7;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 8;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 9;
    sub_21A0E6B9C();
    LOBYTE(v12[0]) = 10;
    sub_21A0E6BCC();
    LOBYTE(v12[0]) = 11;
    sub_21A0E6BCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ScheduledLiveActivity.hash(into:)(uint64_t a1)
{
  sub_21A0E626C();
  v2 = type metadata accessor for ScheduledLiveActivity(0);
  sub_21A0E495C();
  sub_219F45060(&qword_27CCD9828, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_21A0E615C();
  sub_21A0E626C();
  sub_21A0E615C();
  MEMORY[0x21CED2490](*(v1 + v2[8]));
  v3 = *(v1 + v2[9]);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v3);
  v4 = *(v1 + v2[10]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v4);
  v5 = *(v1 + v2[11]);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v5);
  v6 = *(v1 + v2[12]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v6);
  v7 = *(v1 + v2[13]);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x21CED24C0](*&v7);
  MEMORY[0x21CED24C0](*(v1 + v2[14]));
  return MEMORY[0x21CED24C0](*(v1 + v2[15]));
}

uint64_t ScheduledLiveActivity.hashValue.getter()
{
  sub_21A0E6DAC();
  ScheduledLiveActivity.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t ScheduledLiveActivity.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD30, &qword_21A102C90);
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = v42 - v14;
  v16 = type metadata accessor for ScheduledLiveActivity(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0B3400();
  v50 = v15;
  v20 = v51;
  sub_21A0E6E7C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v8;
  v43 = v19;
  v44 = v16;
  v51 = a1;
  v54 = 0;
  sub_21A02C850();
  sub_21A0E6ADC();
  v22 = v53;
  v23 = v43;
  *v43 = v52;
  *(v23 + 1) = v22;
  LOBYTE(v52) = 1;
  v24 = sub_219F45060(&qword_27CCD9838, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v25 = v46;
  sub_21A0E6ADC();
  v42[1] = v24;
  v26 = v11;
  v27 = v25;
  v28 = *(v47 + 32);
  v28(&v23[v44[5]], v26, v27);
  LOBYTE(v52) = 2;
  v42[2] = 0;
  v29 = sub_21A0E6A9C();
  v30 = &v23[v44[6]];
  *v30 = v29;
  v30[1] = v31;
  LOBYTE(v52) = 3;
  sub_21A0E6ADC();
  v28(&v23[v44[7]], v21, v27);
  LOBYTE(v52) = 4;
  v32 = sub_21A0E6ACC();
  v33 = v44;
  *&v23[v44[8]] = v32;
  LOBYTE(v52) = 5;
  sub_21A0E6ABC();
  *&v23[v33[9]] = v34;
  LOBYTE(v52) = 6;
  sub_21A0E6ABC();
  *&v23[v33[10]] = v35;
  LOBYTE(v52) = 7;
  sub_21A0E6ABC();
  *&v23[v33[11]] = v36;
  LOBYTE(v52) = 8;
  sub_21A0E6ABC();
  *&v23[v33[12]] = v37;
  LOBYTE(v52) = 9;
  sub_21A0E6ABC();
  *&v43[v44[13]] = v38;
  LOBYTE(v52) = 10;
  *&v43[v44[14]] = sub_21A0E6AEC();
  LOBYTE(v52) = 11;
  v39 = sub_21A0E6AEC();
  (*(v48 + 8))(v50, v49);
  v40 = v43;
  *&v43[v44[15]] = v39;
  sub_21A0B3454(v40, v45);
  __swift_destroy_boxed_opaque_existential_1(v51);
  return sub_21A0B34B8(v40);
}

uint64_t sub_21A0B2B4C()
{
  sub_21A0E6DAC();
  ScheduledLiveActivity.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B2B90(uint64_t a1)
{
  sub_21A0E6DAC();
  ScheduledLiveActivity.hash(into:)(v2);
  return sub_21A0E6DFC();
}

uint64_t ScheduledLiveActivity.description.getter()
{
  v1 = v0;
  sub_21A0E686C();
  MEMORY[0x21CED1980](0xD000000000000021, 0x800000021A10B110);
  MEMORY[0x21CED1980](*v1, v1[1]);
  MEMORY[0x21CED1980](0x6C75646568637320, 0xEE003D6574614465);
  v2 = type metadata accessor for ScheduledLiveActivity(0);
  sub_21A0E495C();
  sub_219F45060(&qword_27CCDAFE8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v3 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v3);

  MEMORY[0x21CED1980](0xD000000000000012, 0x800000021A10B140);
  MEMORY[0x21CED1980](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  MEMORY[0x21CED1980](0xD000000000000016, 0x800000021A10B160);
  v4 = sub_21A0E6BFC();
  MEMORY[0x21CED1980](v4);

  MEMORY[0x21CED1980](0xD000000000000014, 0x800000021A10B180);
  sub_21A0E65CC();
  MEMORY[0x21CED1980](93, 0xE100000000000000);
  return 0;
}

uint64_t LiveActivityScheduleRequest.scheduledActivity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21A0E4AEC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v81 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v80 = &v70 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v79 = &v70 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v76 = &v70 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v75 = &v70 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v72 = &v70 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v71 = &v70 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v70 = &v70 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v70 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  v35 = &v70 - v34;
  MEMORY[0x28223BE20](v33, v36);
  v38 = &v70 - v37;
  v39 = sub_21A0E49CC();
  v77 = v40;
  v78 = v39;
  sub_21A0E49DC();
  v41 = type metadata accessor for ScheduledLiveActivity(0);
  sub_21A0E4A5C();
  v42 = *(v3 + 8);
  v42(v38, v2);
  sub_21A0E49DC();
  v43 = sub_21A0E4AAC();
  v73 = v44;
  v74 = v43;
  v42(v35, v2);
  sub_21A0E49DC();
  sub_21A0E4A3C();
  v42(v31, v2);
  v45 = v70;
  sub_21A0E49DC();
  v46 = sub_21A0E4A4C();
  v42(v45, v2);
  v47 = v71;
  sub_21A0E49DC();
  sub_21A0E4A9C();
  v49 = v48;
  v42(v47, v2);
  v50 = v72;
  sub_21A0E49DC();
  sub_21A0E4ABC();
  v52 = v51;
  v42(v50, v2);
  v53 = v75;
  sub_21A0E49DC();
  sub_21A0E4ACC();
  v55 = v54;
  v42(v53, v2);
  v56 = v76;
  sub_21A0E49DC();
  sub_21A0E4A8C();
  v58 = v57;
  v42(v56, v2);
  v59 = v79;
  sub_21A0E49DC();
  sub_21A0E4A2C();
  v61 = v60;
  v42(v59, v2);
  v62 = v80;
  sub_21A0E49DC();
  v63 = sub_21A0E4A7C();
  v42(v62, v2);
  v64 = v81;
  sub_21A0E49DC();
  v65 = sub_21A0E4ADC();
  result = (v42)(v64, v2);
  v67 = v77;
  *a1 = v78;
  a1[1] = v67;
  v68 = (a1 + v41[6]);
  v69 = v73;
  *v68 = v74;
  v68[1] = v69;
  *(a1 + v41[8]) = v46;
  *(a1 + v41[9]) = v49;
  *(a1 + v41[10]) = v52;
  *(a1 + v41[11]) = v55;
  *(a1 + v41[12]) = v58;
  *(a1 + v41[13]) = v61;
  *(a1 + v41[14]) = v63;
  *(a1 + v41[15]) = v65;
  return result;
}

BOOL _s22NewsLiveActivitiesCore09ScheduledB8ActivityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21A0E6C5C()) && (v5 = type metadata accessor for ScheduledLiveActivity(0), (sub_21A0E492C()) && ((v6 = v5[6], v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), (v10 || (sub_21A0E6C5C()) && (sub_21A0E492C() & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]) && *(a1 + v5[12]) == *(a2 + v5[12]) && *(a1 + v5[13]) == *(a2 + v5[13]) && *(a1 + v5[14]) == *(a2 + v5[14])))
  {
    return *(a1 + v5[15]) == *(a2 + v5[15]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_21A0B3400()
{
  result = qword_27CCDDD28;
  if (!qword_27CCDDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD28);
  }

  return result;
}

uint64_t sub_21A0B3454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledLiveActivity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A0B34B8(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledLiveActivity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21A0B35A8()
{
  result = qword_27CCDDD40;
  if (!qword_27CCDDD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD40);
  }

  return result;
}

unint64_t sub_21A0B3600()
{
  result = qword_27CCDDD48;
  if (!qword_27CCDDD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD48);
  }

  return result;
}

unint64_t sub_21A0B3658()
{
  result = qword_27CCDDD50;
  if (!qword_27CCDDD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD50);
  }

  return result;
}

void *sub_21A0B36AC(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  memcpy(v96, v2, 0x9E9uLL);
  memcpy(v97, v4, 0x9E9uLL);
  memcpy(v98, v5, 0x9E9uLL);
  if (sub_219F88A28(v98) != 1)
  {
    memcpy(v95, v97, 0x9E9uLL);
    v74 = v7;
    if (sub_219F88A28(v95) != 1)
    {
      memcpy(v94, v98, 0x320uLL);
      memcpy(v90, v95, 0x320uLL);
      sub_219F45500(v98, v89, &qword_27CCDB160, &unk_21A0F2280);
      sub_219F45500(v95, v89, &qword_27CCDB160, &unk_21A0F2280);
      sub_219FEB494(v94, v90);
      memcpy(v94, &v98[50], 0x3E8uLL);
      memcpy(v90, &v95[50], sizeof(v90));
      sub_219F45500(&v98[50], v89, &qword_27CCD9578, &qword_21A0E8980);
      sub_219F45500(&v95[50], v89, &qword_27CCD9578, &qword_21A0E8980);
      sub_219F93F40(v94, v90);
      memcpy(v94, &v98[112] + 8, 0x190uLL);
      memcpy(v90, &v95[112] + 8, 0x190uLL);
      sub_219F45500(&v98[112] + 8, v89, &qword_27CCDCE98, &qword_21A102F20);
      sub_219F45500(&v95[112] + 8, v89, &qword_27CCDCE98, &qword_21A102F20);
      sub_21A0CE27C(v93, v94, v90);
      v20 = *(&v95[140] + 1);
      if ((~DWORD2(v95[140]) & 0xFFFFFFFE) != 0 || ((DWORD2(v95[141]) | (BYTE12(v95[141]) << 32)) & 0xFE00000000) != 0x200000000)
      {
        v51 = DWORD2(v95[141]) | (BYTE12(v95[141]) << 32);
        v21 = *(&v95[137] + 1);
        v22 = v95[138];
        v23 = v95[139];
        v24 = *&v95[140];
        v25 = *&v95[141];
      }

      else
      {
        v21 = *(&v98[137] + 1);
        v22 = v98[138];
        v23 = v98[139];
        v20 = *(&v98[140] + 1);
        v24 = *&v98[140];
        v25 = *&v98[141];
        v51 = DWORD2(v98[141]) | (BYTE12(v98[141]) << 32);
      }

      v26 = *&v95[145];
      v72 = v21;
      v73 = v20;
      v70 = v23;
      v71 = v22;
      v68 = v25;
      v69 = v24;
      if ((~LODWORD(v95[145]) & 0xFFFFFFFE) != 0 || (*&v95[146] & 0xFE00000000) != 0x200000000)
      {
        v65 = *&v95[146];
        v27 = &v95[147];
        v32 = &v95[146] + 8;
        v28 = v95[142];
        v29 = v95[143];
        v30 = v95[144];
        v31 = *(&v95[145] + 1);
      }

      else
      {
        v27 = &v98[147];
        sub_219F45500(&v98[142], v94, &qword_27CCDAB00, &qword_21A0EF390);
        v28 = v98[142];
        v29 = v98[143];
        v30 = v98[144];
        v31 = *(&v98[145] + 1);
        v26 = *&v98[145];
        v32 = &v98[146] + 8;
        v65 = *&v98[146];
      }

      v63 = v30;
      v64 = v29;
      v66 = v28;
      v33 = *v32;
      v13 = *v27;
      if (*&v95[152])
      {
        v49 = *&v95[152];
        v34 = &v95[152] + 8;
        v35 = *(&v95[147] + 1);
        v36 = v95[148];
        v37 = v95[149];
        v38 = v95[150];
        v39 = v95[151];
      }

      else
      {
        sub_219F45500(&v98[147] + 8, v94, &qword_27CCD9F78, &unk_21A0ED840);
        v35 = *(&v98[147] + 1);
        v36 = v98[148];
        v37 = v98[149];
        v38 = v98[150];
        v39 = v98[151];
        v34 = &v98[152] + 8;
        v49 = *&v98[152];
      }

      v67 = v26;
      v62 = v31;
      v50 = v35;
      v60 = v37;
      v61 = v36;
      v58 = v39;
      v59 = v38;
      v48 = *v34;
      if ((~LODWORD(v95[156]) & 0xFFFFFFFE) != 0 || (*&v95[157] & 0xFE00000000) != 0x200000000)
      {
        v46 = *&v95[157];
        v47 = *&v95[156];
        v40 = &v95[158];
        v41 = &v95[157] + 8;
        v55 = v95[154];
        v56 = v95[153];
        v54 = v95[155];
        v45 = *(&v95[156] + 1);
      }

      else
      {
        v40 = &v98[158];
        sub_219F45500(&v98[153], v94, &qword_27CCDAB00, &qword_21A0EF390);
        v55 = v98[154];
        v56 = v98[153];
        v54 = v98[155];
        v45 = *(&v98[156] + 1);
        v41 = &v98[157] + 8;
        v46 = *&v98[157];
        v47 = *&v98[156];
      }

      v52 = *v40;
      v53 = *v41;
      sub_219F45500(&v95[142], v94, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F45500(&v95[147] + 8, v94, &qword_27CCD9F78, &unk_21A0ED840);
      sub_219F45500(&v95[153], v94, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F6409C(v97, &qword_27CCD9EB0, &unk_21A104760);
      v42 = BYTE8(v95[158]);
      sub_219F6409C(v96, &qword_27CCD9EB0, &unk_21A104760);
      v43 = BYTE8(v98[158]);
      if (v42 != 2)
      {
        v43 = v42;
      }

      v57 = v43;
      sub_219F65C20(__src);
      memcpy(v94, __src, 0x320uLL);
      sub_219F638CC(v89);
      memcpy(&v94[800], v89, 0x3E8uLL);
      sub_21A07DB18(v76);
      memcpy(&v94[1800], v76, 0x190uLL);
      memcpy(__dst, v94, sizeof(__dst));
      sub_219F6409C(__dst, &qword_27CCDB160, &unk_21A0F2280);
      memcpy(v90, &v94[800], sizeof(v90));
      sub_219F6409C(v90, &qword_27CCD9578, &qword_21A0E8980);
      memcpy(v78, &v94[1800], sizeof(v78));
      sub_219F6409C(v78, &qword_27CCDCE98, &qword_21A102F20);
      memset(v79, 0, 48);
      v79[3] = xmmword_21A0EB370;
      v82 = 0;
      v80 = 0x200000000;
      v81 = 0;
      sub_219F6409C(v79, &qword_27CCDAB00, &qword_21A0EF390);
      memset(v83, 0, sizeof(v83));
      v84 = 0;
      sub_219F6409C(v83, &qword_27CCD9F78, &unk_21A0ED840);
      memset(v85, 0, 48);
      v85[3] = xmmword_21A0EB370;
      v88 = 0;
      v86 = 0x200000000;
      v87 = 0;
      sub_219F6409C(v85, &qword_27CCDAB00, &qword_21A0EF390);
      v11 = v33;
      v10 = v51;
      v12 = v50;
      v14 = v48;
      v15 = v49;
      v18 = v46;
      v16 = v47;
      v17 = v45;
      goto LABEL_26;
    }

    v57 = BYTE8(v98[158]);
    memcpy(v91, v98, sizeof(v91));
    memcpy(v92, &v98[50], sizeof(v92));
    memcpy(v93, &v98[112] + 8, sizeof(v93));
    v70 = v98[139];
    v71 = v98[138];
    v72 = *(&v98[137] + 1);
    v73 = *(&v98[140] + 1);
    v68 = *&v98[141];
    v69 = *&v98[140];
    v10 = DWORD2(v98[141]) | (BYTE12(v98[141]) << 32);
    v66 = v98[142];
    v63 = v98[144];
    v64 = v98[143];
    v62 = *(&v98[145] + 1);
    v67 = *&v98[145];
    v11 = *(&v98[146] + 1);
    v65 = *&v98[146];
    v12 = *(&v98[147] + 1);
    v13 = *&v98[147];
    v60 = v98[149];
    v61 = v98[148];
    v58 = v98[151];
    v59 = v98[150];
    v14 = *(&v98[152] + 1);
    v15 = *&v98[152];
    v55 = v98[154];
    v56 = v98[153];
    v54 = v98[155];
    v17 = *(&v98[156] + 1);
    v16 = *&v98[156];
    v53 = *(&v98[157] + 1);
    v18 = *&v98[157];
    v19 = *&v98[158];
LABEL_7:
    v52 = v19;
LABEL_26:
    memcpy(v94, v91, 0x320uLL);
    memcpy(&v94[800], v92, 0x3E8uLL);
    memcpy(&v94[1800], v93, 0x190uLL);
    memcpy(v95, v94, 0x898uLL);
    *(&v95[137] + 1) = v72;
    v95[138] = v71;
    v95[139] = v70;
    *&v95[140] = v69;
    *(&v95[140] + 1) = v73;
    *&v95[141] = v68;
    BYTE12(v95[141]) = BYTE4(v10);
    DWORD2(v95[141]) = v10;
    v95[142] = v66;
    v95[143] = v64;
    v95[144] = v63;
    *&v95[145] = v67;
    *(&v95[145] + 1) = v62;
    *&v95[146] = v65;
    *(&v95[146] + 1) = v11;
    *&v95[147] = v13;
    *(&v95[147] + 1) = v12;
    v95[148] = v61;
    v95[149] = v60;
    v95[150] = v59;
    v95[151] = v58;
    *&v95[152] = v15;
    *(&v95[152] + 1) = v14;
    v95[153] = v56;
    v95[154] = v55;
    v95[155] = v54;
    *&v95[156] = v16;
    *(&v95[156] + 1) = v17;
    *&v95[157] = v18;
    *(&v95[157] + 1) = v53;
    *&v95[158] = v52;
    BYTE8(v95[158]) = v57;
    nullsub_1();
    v8 = v95;
    v9 = v74;
    return memcpy(v9, v8, 0x9E9uLL);
  }

  memcpy(v95, v97, 0x9E9uLL);
  if (sub_219F88A28(v95) != 1)
  {
    v74 = v7;
    v57 = BYTE8(v95[158]);
    memcpy(v91, v95, sizeof(v91));
    memcpy(v92, &v95[50], sizeof(v92));
    memcpy(v93, &v95[112] + 8, sizeof(v93));
    v70 = v95[139];
    v71 = v95[138];
    v72 = *(&v95[137] + 1);
    v73 = *(&v95[140] + 1);
    v68 = *&v95[141];
    v69 = *&v95[140];
    v10 = DWORD2(v95[141]) | (BYTE12(v95[141]) << 32);
    v66 = v95[142];
    v63 = v95[144];
    v64 = v95[143];
    v62 = *(&v95[145] + 1);
    v67 = *&v95[145];
    v11 = *(&v95[146] + 1);
    v65 = *&v95[146];
    v12 = *(&v95[147] + 1);
    v13 = *&v95[147];
    v60 = v95[149];
    v61 = v95[148];
    v58 = v95[151];
    v59 = v95[150];
    v14 = *(&v95[152] + 1);
    v15 = *&v95[152];
    v55 = v95[154];
    v56 = v95[153];
    v54 = v95[155];
    v17 = *(&v95[156] + 1);
    v16 = *&v95[156];
    v53 = *(&v95[157] + 1);
    v18 = *&v95[157];
    v19 = *&v95[158];
    goto LABEL_7;
  }

  v8 = v97;
  v9 = v7;
  return memcpy(v9, v8, 0x9E9uLL);
}

uint64_t LiveBlogTheme.header.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x320uLL);
  memcpy(a1, v1, 0x320uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDB160, &unk_21A0F2280);
}

void *LiveBlogTheme.header.setter(const void *a1)
{
  memcpy(__dst, v1, 0x320uLL);
  sub_219F6409C(__dst, &qword_27CCDB160, &unk_21A0F2280);
  return memcpy(v1, a1, 0x320uLL);
}

uint64_t LiveBlogTheme.body.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 800), 0x3E8uLL);
  memcpy(a1, (v1 + 800), 0x3E8uLL);
  return sub_219F45500(__dst, v4, &qword_27CCD9578, &qword_21A0E8980);
}

void *LiveBlogTheme.body.setter(const void *a1)
{
  memcpy(v4, (v1 + 800), 0x3E8uLL);
  sub_219F6409C(v4, &qword_27CCD9578, &qword_21A0E8980);
  return memcpy((v1 + 800), a1, 0x3E8uLL);
}

uint64_t LiveBlogTheme.footer.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 1800), 0x190uLL);
  memcpy(a1, (v1 + 1800), 0x190uLL);
  return sub_219F45500(__dst, v4, &qword_27CCDCE98, &qword_21A102F20);
}

void *LiveBlogTheme.footer.setter(const void *a1)
{
  memcpy(__dst, (v1 + 1800), 0x190uLL);
  sub_219F6409C(__dst, &qword_27CCDCE98, &qword_21A102F20);
  return memcpy((v1 + 1800), a1, 0x190uLL);
}

__n128 LiveBlogTheme.keylineTint.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2248);
  *(a1 + 32) = *(v1 + 2232);
  *(a1 + 48) = v2;
  *(a1 + 61) = *(v1 + 2261);
  result = *(v1 + 2216);
  *a1 = *(v1 + 2200);
  *(a1 + 16) = result;
  return result;
}

__n128 LiveBlogTheme.keylineTint.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 2232) = *(a1 + 32);
  *(v1 + 2248) = v2;
  *(v1 + 2261) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 2200) = *a1;
  *(v1 + 2216) = result;
  return result;
}

uint64_t LiveBlogTheme.backgroundTint.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2304);
  v4 = *(v1 + 2336);
  v10 = *(v1 + 2320);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 2352);
  v6 = *(v1 + 2288);
  v9[0] = *(v1 + 2272);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00, &qword_21A0EF390);
}

__n128 LiveBlogTheme.backgroundTint.setter(uint64_t a1)
{
  v3 = *(v1 + 2320);
  v8[2] = *(v1 + 2304);
  v8[3] = v3;
  v8[4] = *(v1 + 2336);
  v9 = *(v1 + 2352);
  v4 = *(v1 + 2288);
  v8[0] = *(v1 + 2272);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00, &qword_21A0EF390);
  v5 = *(a1 + 48);
  *(v1 + 2304) = *(a1 + 32);
  *(v1 + 2320) = v5;
  *(v1 + 2336) = *(a1 + 64);
  *(v1 + 2352) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 2272) = *a1;
  *(v1 + 2288) = v7;
  return result;
}

uint64_t LiveBlogTheme.background.getter@<X0>(uint64_t a1@<X8>)
{
  v12 = *(v1 + 2440);
  v2 = *(v1 + 2392);
  v4 = *(v1 + 2424);
  v10 = *(v1 + 2408);
  v3 = v10;
  v11 = v4;
  v6 = *(v1 + 2376);
  v9[0] = *(v1 + 2360);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCD9F78, &unk_21A0ED840);
}

__n128 LiveBlogTheme.background.setter(uint64_t a1)
{
  v9 = *(v1 + 2440);
  v3 = *(v1 + 2408);
  v8[2] = *(v1 + 2392);
  v8[3] = v3;
  v8[4] = *(v1 + 2424);
  v4 = *(v1 + 2376);
  v8[0] = *(v1 + 2360);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCD9F78, &unk_21A0ED840);
  v5 = *(a1 + 48);
  *(v1 + 2392) = *(a1 + 32);
  *(v1 + 2408) = v5;
  *(v1 + 2424) = *(a1 + 64);
  *(v1 + 2440) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 2360) = *a1;
  *(v1 + 2376) = v7;
  return result;
}

uint64_t LiveBlogTheme.systemActionForeground.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 2480);
  v4 = *(v1 + 2512);
  v10 = *(v1 + 2496);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 2528);
  v6 = *(v1 + 2464);
  v9[0] = *(v1 + 2448);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_219F45500(v9, v8, &qword_27CCDAB00, &qword_21A0EF390);
}

__n128 LiveBlogTheme.systemActionForeground.setter(uint64_t a1)
{
  v3 = *(v1 + 2496);
  v8[2] = *(v1 + 2480);
  v8[3] = v3;
  v8[4] = *(v1 + 2512);
  v9 = *(v1 + 2528);
  v4 = *(v1 + 2464);
  v8[0] = *(v1 + 2448);
  v8[1] = v4;
  sub_219F6409C(v8, &qword_27CCDAB00, &qword_21A0EF390);
  v5 = *(a1 + 48);
  *(v1 + 2480) = *(a1 + 32);
  *(v1 + 2496) = v5;
  *(v1 + 2512) = *(a1 + 64);
  *(v1 + 2528) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *(v1 + 2448) = *a1;
  *(v1 + 2464) = v7;
  return result;
}

__n128 LiveBlogTheme.init(header:body:footer:keylineTint:backgroundTint:background:systemActionForeground:colorScheme:)(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v2;
  v17 = v16;
  v34 = *v18;
  sub_219F65C20(__src);
  memcpy(v17, __src, 0x320uLL);
  sub_219F638CC(v36);
  memcpy((v17 + 800), v36, 0x3E8uLL);
  sub_21A07DB18(v37);
  memcpy((v17 + 1800), v37, 0x190uLL);
  *(v17 + 2272) = 0u;
  *(v17 + 2288) = 0u;
  *(v17 + 2304) = 0u;
  *(v17 + 2320) = xmmword_21A0EB370;
  *(v17 + 2336) = 0x200000000;
  *(v17 + 2344) = 0u;
  *(v17 + 2360) = 0u;
  *(v17 + 2376) = 0u;
  *(v17 + 2392) = 0u;
  *(v17 + 2408) = 0u;
  *(v17 + 2424) = 0u;
  *(v17 + 2440) = 0u;
  *(v17 + 2456) = 0u;
  *(v17 + 2472) = 0u;
  *(v17 + 2488) = 0;
  *(v17 + 2496) = xmmword_21A0EB370;
  *(v17 + 2512) = 0x200000000;
  *(v17 + 2520) = 0u;
  memcpy(__dst, v17, sizeof(__dst));
  sub_219F6409C(__dst, &qword_27CCDB160, &unk_21A0F2280);
  memcpy(v17, v15, 0x320uLL);
  memcpy(v39, (v17 + 800), sizeof(v39));
  sub_219F6409C(v39, &qword_27CCD9578, &qword_21A0E8980);
  memcpy((v17 + 800), v14, 0x3E8uLL);
  memcpy(v40, (v17 + 1800), sizeof(v40));
  sub_219F6409C(v40, &qword_27CCDCE98, &qword_21A102F20);
  memcpy((v17 + 1800), v12, 0x190uLL);
  v19 = *(v10 + 48);
  *(v17 + 2232) = *(v10 + 32);
  *(v17 + 2248) = v19;
  *(v17 + 2261) = *(v10 + 61);
  v20 = *(v10 + 16);
  *(v17 + 2200) = *v10;
  *(v17 + 2216) = v20;
  v21 = *(v17 + 2320);
  v41[2] = *(v17 + 2304);
  v41[3] = v21;
  v41[4] = *(v17 + 2336);
  v42 = *(v17 + 2352);
  v22 = *(v17 + 2288);
  v41[0] = *(v17 + 2272);
  v41[1] = v22;
  sub_219F6409C(v41, &qword_27CCDAB00, &qword_21A0EF390);
  v23 = *(v8 + 48);
  *(v17 + 2304) = *(v8 + 32);
  *(v17 + 2320) = v23;
  *(v17 + 2336) = *(v8 + 64);
  *(v17 + 2352) = *(v8 + 80);
  v24 = *(v8 + 16);
  *(v17 + 2272) = *v8;
  *(v17 + 2288) = v24;
  v25 = *(v17 + 2408);
  v43[2] = *(v17 + 2392);
  v43[3] = v25;
  v43[4] = *(v17 + 2424);
  v44 = *(v17 + 2440);
  v26 = *(v17 + 2376);
  v43[0] = *(v17 + 2360);
  v43[1] = v26;
  sub_219F6409C(v43, &qword_27CCD9F78, &unk_21A0ED840);
  v27 = *(v6 + 48);
  *(v17 + 2392) = *(v6 + 32);
  *(v17 + 2408) = v27;
  *(v17 + 2424) = *(v6 + 64);
  *(v17 + 2440) = *(v6 + 80);
  v28 = *(v6 + 16);
  *(v17 + 2360) = *v6;
  *(v17 + 2376) = v28;
  v29 = *(v17 + 2496);
  v45[2] = *(v17 + 2480);
  v45[3] = v29;
  v45[4] = *(v17 + 2512);
  v46 = *(v17 + 2528);
  v30 = *(v17 + 2464);
  v45[0] = *(v17 + 2448);
  v45[1] = v30;
  sub_219F6409C(v45, &qword_27CCDAB00, &qword_21A0EF390);
  v31 = *(v4 + 48);
  *(v17 + 2480) = *(v4 + 32);
  *(v17 + 2496) = v31;
  *(v17 + 2512) = *(v4 + 64);
  *(v17 + 2528) = *(v4 + 80);
  result = *v4;
  v33 = *(v4 + 16);
  *(v17 + 2448) = *v4;
  *(v17 + 2464) = v33;
  *(v17 + 2536) = v34;
  return result;
}

unint64_t sub_21A0B4B80()
{
  v1 = *v0;
  v2 = 0x726564616568;
  v3 = 0xD000000000000016;
  if (v1 != 6)
  {
    v3 = 0x686353726F6C6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = 0x756F72676B636162;
  }

  v4 = 0x7265746F6F66;
  if (v1 != 2)
  {
    v4 = 0x54656E696C79656BLL;
  }

  if (*v0)
  {
    v2 = 2036625250;
  }

  if (*v0 > 1u)
  {
    v2 = v4;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21A0B4C90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21A0B8678(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21A0B4CB8(uint64_t a1)
{
  v2 = sub_21A0B7E48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0B4CF4(uint64_t a1)
{
  v2 = sub_21A0B7E48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveBlogTheme.encode(to:)(uint64_t a1, uint64_t a2)
{
  v77 = v3;
  v4 = v2;
  v5 = MEMORY[0x28223BE20](a1, a2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD58, &qword_21A102F28);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v20 - v9;
  memcpy(v56, v4, sizeof(v56));
  memcpy(v57, (v4 + 800), sizeof(v57));
  memcpy(v58, (v4 + 1800), sizeof(v58));
  v61 = *(v4 + 2304);
  v62 = *(v4 + 2320);
  v63 = *(v4 + 2336);
  v59 = *(v4 + 2272);
  v60 = *(v4 + 2288);
  v11 = *(v4 + 2408);
  v67 = *(v4 + 2392);
  v68 = v11;
  v69 = *(v4 + 2424);
  v12 = *(v4 + 2376);
  v65 = *(v4 + 2360);
  v64 = *(v4 + 2352);
  v70 = *(v4 + 2440);
  v66 = v12;
  v73 = *(v4 + 2480);
  v74 = *(v4 + 2496);
  v75 = *(v4 + 2512);
  v76 = *(v4 + 2528);
  v71 = *(v4 + 2448);
  v72 = *(v4 + 2464);
  v21 = *(v4 + 2536);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_219F45500(v56, v53, &qword_27CCDB160, &unk_21A0F2280);
  sub_21A0B7E48();
  sub_21A0E6EAC();
  memcpy(v55, v56, sizeof(v55));
  v54[807] = 0;
  sub_21A0B7E9C();
  v13 = v77;
  sub_21A0E6B6C();
  if (v13)
  {
    memcpy(v53, v55, 0x320uLL);
    sub_219F6409C(v53, &qword_27CCDB160, &unk_21A0F2280);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    memcpy(v54, v55, 0x320uLL);
    sub_219F6409C(v54, &qword_27CCDB160, &unk_21A0F2280);
    memcpy(v53, v57, sizeof(v53));
    v52[1007] = 1;
    sub_219F45500(v57, v52, &qword_27CCD9578, &qword_21A0E8980);
    sub_21A0B7EF0();
    sub_21A0E6B6C();
    memcpy(v52, v53, 0x3E8uLL);
    sub_219F6409C(v52, &qword_27CCD9578, &qword_21A0E8980);
    memcpy(v51, v58, sizeof(v51));
    v50[407] = 2;
    sub_219F45500(v58, v50, &qword_27CCDCE98, &qword_21A102F20);
    sub_21A0B7F44();
    sub_21A0E6B6C();
    memcpy(v50, v51, 0x190uLL);
    sub_219F6409C(v50, &qword_27CCDCE98, &qword_21A102F20);
    v15 = *(v4 + 2232);
    v16 = *(v4 + 2248);
    v17 = *(v4 + 2200);
    v46 = *(v4 + 2216);
    v47 = v15;
    v48[0] = v16;
    *(v48 + 13) = *(v4 + 2261);
    v45 = v17;
    LOBYTE(v42[0]) = 3;
    sub_219F81DC8();
    v18 = v10;
    sub_21A0E6B6C();
    v47 = v61;
    v48[0] = v62;
    v48[1] = v63;
    v49 = v64;
    v45 = v59;
    v46 = v60;
    v44 = 4;
    sub_219F45500(&v59, v42, &qword_27CCDAB00, &qword_21A0EF390);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0, &qword_21A0FDD10);
    sub_21A0A7480(&qword_27CCDD948, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6B6C();
    v77 = v19;
    v42[2] = v47;
    v42[3] = v48[0];
    v42[4] = v48[1];
    v43 = v49;
    v42[0] = v45;
    v42[1] = v46;
    sub_219F6409C(v42, &qword_27CCDAB00, &qword_21A0EF390);
    v38 = v67;
    v39 = v68;
    v40 = v69;
    v41 = v70;
    v36 = v65;
    v37 = v66;
    v35 = 5;
    sub_219F45500(&v65, v33, &qword_27CCD9F78, &unk_21A0ED840);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8, &unk_21A0EF240);
    sub_21A081F7C(&qword_27CCDA4E0, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6B6C();
    v33[2] = v38;
    v33[3] = v39;
    v33[4] = v40;
    v34 = v41;
    v33[0] = v36;
    v33[1] = v37;
    sub_219F6409C(v33, &qword_27CCD9F78, &unk_21A0ED840);
    v29 = v73;
    v30 = v74;
    v31 = v75;
    v32 = v76;
    v27 = v71;
    v28 = v72;
    v26 = 6;
    sub_219F45500(&v71, v24, &qword_27CCDAB00, &qword_21A0EF390);
    sub_21A0E6B6C();
    v24[2] = v29;
    v24[3] = v30;
    v24[4] = v31;
    v25 = v32;
    v24[0] = v27;
    v24[1] = v28;
    sub_219F6409C(v24, &qword_27CCDAB00, &qword_21A0EF390);
    v23 = v21;
    v22 = 7;
    sub_21A038C68();
    sub_21A0E6B6C();
    return (*(v7 + 8))(v18, 0);
  }
}

uint64_t LiveBlogTheme.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v4 = *(v2 + 2360);
  v33 = *(v2 + 2376);
  v5 = *(v2 + 2408);
  v34 = *(v2 + 2392);
  v35 = v5;
  v6 = *(v2 + 2248);
  v7 = *(v2 + 2268);
  v8 = *(v2 + 2264);
  v9 = *(v2 + 2320);
  v16 = *(v2 + 2256);
  v17 = *(v2 + 2328);
  v10 = *(v2 + 2336);
  v18 = *(v2 + 2344);
  v19 = *(v2 + 2352);
  v36 = *(v2 + 2424);
  v32 = v4;
  v11 = *(v2 + 2432);
  v23 = *(v2 + 2440);
  v24 = v10;
  v39 = *(v2 + 2480);
  v38 = *(v2 + 2464);
  v37 = *(v2 + 2448);
  v12 = *(v2 + 2496);
  v25 = *(v2 + 2512);
  v20 = *(v2 + 2504);
  v21 = *(v2 + 2520);
  v22 = *(v2 + 2528);
  v26 = *(v2 + 2536);
  memcpy(v40, v2, 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v40) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(__dst, v2, 0x320uLL);
    sub_21A0E6DCC();
    memcpy(v30, v2, 0x320uLL);
    sub_219FEEA7C(v30, v31);
    ActivityHeaderTheme.hash(into:)(v3);
    memcpy(v31, __dst, 0x320uLL);
    sub_219FEEA4C(v31);
  }

  memcpy(v31, (v2 + 800), sizeof(v31));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v31) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(__src, (v2 + 800), sizeof(__src));
    sub_21A0E6DCC();
    memcpy(__dst, (v2 + 800), 0x3E8uLL);
    sub_219F98538(__dst, v30);
    LiveBlogBodyTheme.hash(into:)(v3);
    memcpy(v30, __src, sizeof(v30));
    sub_219F98490(v30);
  }

  memcpy(v30, (v2 + 1800), 0x190uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v30) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    memcpy(v27, (v2 + 1800), sizeof(v27));
    sub_21A0E6DCC();
    memcpy(__src, (v2 + 1800), 0x190uLL);
    sub_21A0B7F98(__src, __dst);
    ActivityFooterTheme.hash(into:)(v3);
    memcpy(__dst, v27, 0x190uLL);
    sub_21A0B7FF4(__dst);
  }

  if ((~v6 & 0xFFFFFFFE) != 0 || ((v8 | (v7 << 32)) & 0xFE00000000) != 0x200000000)
  {
    v13 = *(v2 + 2216);
    __dst[0] = *(v2 + 2200);
    __dst[1] = v13;
    __dst[2] = *(v2 + 2232);
    *&__dst[3] = v6;
    *(&__dst[3] + 1) = v16;
    LODWORD(__dst[4]) = v8;
    BYTE4(__dst[4]) = (v8 | (v7 << 32)) >> 32;
    sub_21A0E6DCC();
    ActivityColor.hash(into:)(v3);
  }

  else
  {
    sub_21A0E6DCC();
  }

  if ((~v9 & 0xFFFFFFFE) != 0 || (v24 & 0xFE00000000) != 0x200000000)
  {
    v14 = *(v2 + 2288);
    __dst[0] = *(v2 + 2272);
    __dst[1] = v14;
    __dst[2] = *(v2 + 2304);
    sub_21A0E6DCC();
    *&__dst[3] = v9;
    *(&__dst[3] + 1) = v17;
    *&__dst[4] = v24;
    *(&__dst[4] + 1) = v18;
    *&__dst[5] = v19;
    ActivityColor.hash(into:)(v3);
    sub_219F91544(v3, v18);
    sub_219F70020(v3, v19);
    if (!v11)
    {
      goto LABEL_17;
    }

LABEL_19:
    __dst[2] = v34;
    __dst[3] = v35;
    *&__dst[4] = v36;
    __dst[0] = v32;
    __dst[1] = v33;
    sub_21A0E6DCC();
    *(&__dst[4] + 1) = v11;
    *&__dst[5] = v23;
    ActivityFill.hash(into:)(v3);
    sub_219F91544(v3, v11);
    sub_219F6AB48(v3, v23);
    goto LABEL_20;
  }

  sub_21A0E6DCC();
  if (v11)
  {
    goto LABEL_19;
  }

LABEL_17:
  sub_21A0E6DCC();
LABEL_20:
  if ((~v12 & 0xFFFFFFFE) != 0 || (v25 & 0xFE00000000) != 0x200000000)
  {
    __dst[0] = v37;
    __dst[1] = v38;
    __dst[2] = v39;
    sub_21A0E6DCC();
    *&__dst[3] = v12;
    *(&__dst[3] + 1) = v20;
    *&__dst[4] = v25;
    *(&__dst[4] + 1) = v21;
    *&__dst[5] = v22;
    ActivityColor.hash(into:)(v3);
    sub_219F91544(v3, v21);
    sub_219F70020(v3, v22);
  }

  else
  {
    sub_21A0E6DCC();
  }

  if (v26 == 2)
  {
    return sub_21A0E6DCC();
  }

  sub_21A0E6DCC();
  sub_21A0E626C();
}

uint64_t LiveBlogTheme.hashValue.getter()
{
  sub_21A0E6DAC();
  LiveBlogTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t LiveBlogTheme.init(from:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDD80, &qword_21A102F30);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - v9;
  sub_219F65C20(v179);
  memcpy(v178, v179, 0x320uLL);
  sub_219F638CC(v180);
  memcpy(&v178[800], v180, 0x3E8uLL);
  sub_21A07DB18(v181);
  memcpy(&v178[1800], v181, 0x190uLL);
  v11 = v3[3];
  v37 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v11);
  sub_21A0B7E48();
  sub_21A0E6E7C();
  if (v2)
  {
    *&v41 = v2;
    v57 = 0;
    v58 = 0;
    v55 = 0;
    v56 = 0;
    v36 = 0;
    v182 = 0;
    v42 = 0;
    v43 = 0;
    v39 = 0;
    v40 = 0;
    v65 = 0;
    v66 = 0;
    v63 = 0;
    v64 = 0;
    v61 = 0;
    v62 = 0;
    v38 = 0;
    v52 = 0;
    v53 = 0;
    v59 = 0;
    v60 = 0;
    v50 = 0;
    v51 = 0;
    v48 = 0;
    v49 = 0;
    v46 = 0;
    v47 = 0;
    v54 = 0u;
    v44 = 4294967294;
    v45 = 0x200000000;
    v34 = 0u;
    v35 = 0u;
    v33 = 0u;
    __swift_destroy_boxed_opaque_existential_1(v37);
    memcpy(v135, v178, sizeof(v135));
    v136 = 0;
    v137 = v59;
    v138 = v60;
    v139 = v62;
    v140 = v64;
    v141 = v66;
    v142 = 4294967294;
    v143 = v43;
    v145 = 2;
    v144 = 0;
    v146 = v176;
    v147 = v177;
    v148 = v36;
    v149 = v182;
    v150 = v42;
    v151 = v40;
    v152 = v39;
    v153 = v65;
    v154 = 4294967294;
    v155 = v63;
    v156 = 0x200000000;
    v157 = v61;
    v158 = v38;
    v159 = v53;
    v160 = v52;
    v161 = v51;
    v162 = v50;
    v163 = v49;
    v164 = v48;
    v165 = v47;
    v166 = v46;
    *&v168[16] = v34;
    *&v168[32] = v33;
    v167 = v54;
    *v168 = v35;
    v169 = v58;
    v170 = v44;
    v171 = v57;
    v172 = v45;
    v173 = v56;
    v174 = v55;
    v175 = 2;
  }

  else
  {
    *&v35 = v5;
    v133[807] = 0;
    sub_21A0B8048();
    sub_21A0E6A8C();
    memcpy(v132, v134, sizeof(v132));
    memcpy(v133, v178, 0x320uLL);
    sub_219F6409C(v133, &qword_27CCDB160, &unk_21A0F2280);
    memcpy(v178, v132, 0x320uLL);
    v130[1007] = 1;
    sub_21A0B809C();
    sub_21A0E6A8C();
    memcpy(v129, v131, sizeof(v129));
    memcpy(v130, &v178[800], 0x3E8uLL);
    sub_219F6409C(v130, &qword_27CCD9578, &qword_21A0E8980);
    memcpy(&v178[800], v129, 0x3E8uLL);
    v127[407] = 2;
    sub_21A0B80F0();
    sub_21A0E6A8C();
    memcpy(v126, v128, sizeof(v126));
    memcpy(v127, &v178[1800], 0x190uLL);
    sub_219F6409C(v127, &qword_27CCDCE98, &qword_21A102F20);
    memcpy(&v178[1800], v126, 0x190uLL);
    v115 = 3;
    sub_219F81E1C();
    sub_21A0E6A8C();
    v59 = v117;
    v60 = v118;
    v62 = v119;
    v64 = v120;
    v66 = v121;
    v31 = v122;
    v32 = v116;
    v43 = v123;
    v30 = v124 | (v125 << 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDBAD0, &qword_21A0FDD10);
    v103 = 4;
    sub_21A0A7480(&qword_27CCDD970, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6A8C();
    v36 = v104;
    v182 = v105;
    v42 = v106;
    v39 = v108;
    v40 = v107;
    v65 = v109;
    v63 = v111;
    v28 = v112;
    v29 = v110;
    v61 = v113;
    v13 = v114;
    memset(v98, 0, sizeof(v98));
    v41 = xmmword_21A0EB370;
    v99 = xmmword_21A0EB370;
    v102 = 0;
    v100 = 0x200000000;
    v101 = 0;
    sub_219F6409C(v98, &qword_27CCDAB00, &qword_21A0EF390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDA4D8, &unk_21A0EF240);
    v87 = 5;
    sub_21A081F7C(&qword_27CCDA580, &protocol conformance descriptor for <A> Dynamic<A>);
    sub_21A0E6A8C();
    v38 = v13;
    v52 = v89;
    v53 = v88;
    v50 = v91;
    v51 = v90;
    v48 = v93;
    v49 = v92;
    v46 = v95;
    v47 = v94;
    v54 = v96;
    v14 = v97;
    memset(v85, 0, sizeof(v85));
    v86 = 0;
    sub_219F6409C(v85, &qword_27CCD9F78, &unk_21A0ED840);
    v75 = 6;
    sub_21A0E6A8C();
    *&v34 = v14;
    v33 = v77;
    v27 = v76;
    v15 = v78;
    v57 = v81;
    v58 = v79;
    v44 = v80;
    v45 = v82;
    v55 = v84;
    v56 = v83;
    memset(v70, 0, sizeof(v70));
    v71 = v41;
    v74 = 0;
    v72 = 0x200000000;
    v73 = 0;
    sub_219F6409C(v70, &qword_27CCDAB00, &qword_21A0EF390);
    v68 = 7;
    sub_21A038B6C();
    sub_21A0E6A8C();
    *&v41 = 0;
    (*(v7 + 8))(v10, v6);
    v16 = v69;
    memcpy(v67, v178, 0x898uLL);
    *&v67[2200] = v32;
    *&v67[2208] = v59;
    *&v67[2216] = v60;
    *&v67[2224] = v62;
    *&v67[2232] = v64;
    *&v67[2240] = v66;
    v17 = v30;
    *&v67[2248] = v31;
    *&v67[2256] = v43;
    *&v67[2424] = v54;
    v18 = HIDWORD(v30);
    v67[2268] = BYTE4(v30);
    *&v67[2264] = v30;
    v19 = v36;
    *&v67[2272] = v36;
    *&v67[2280] = v182;
    v20 = v15;
    v26 = v15;
    v21 = v42;
    *&v67[2288] = v42;
    v22 = v39;
    v23 = v40;
    *&v67[2296] = v40;
    *&v67[2304] = v39;
    *&v67[2312] = v65;
    *&v67[2320] = v29;
    *&v67[2328] = v63;
    *&v67[2336] = v28;
    *&v67[2344] = v61;
    v24 = v38;
    *&v67[2352] = v38;
    *&v67[2360] = v53;
    *&v67[2368] = v52;
    *&v67[2376] = v51;
    *&v67[2384] = v50;
    *&v67[2392] = v49;
    *&v67[2400] = v48;
    *&v67[2408] = v47;
    *&v67[2416] = v46;
    *&v67[2440] = v34;
    *&v67[2448] = v27;
    *&v67[2464] = v33;
    *&v67[2480] = v20;
    *&v67[2488] = v58;
    *&v67[2496] = v44;
    *&v67[2504] = v57;
    *&v67[2512] = v45;
    *&v67[2520] = v56;
    *&v67[2528] = v55;
    v67[2536] = v69;
    memcpy(v35, v67, 0x9E9uLL);
    sub_21A080104(v67, v135);
    __swift_destroy_boxed_opaque_existential_1(v37);
    memcpy(v135, v178, sizeof(v135));
    v136 = v32;
    v137 = v59;
    v138 = v60;
    v139 = v62;
    v140 = v64;
    v141 = v66;
    v142 = v31;
    v143 = v43;
    v145 = v18;
    v144 = v17;
    v146 = v176;
    v147 = v177;
    v148 = v19;
    v149 = v182;
    v150 = v21;
    v151 = v23;
    v152 = v22;
    v153 = v65;
    v154 = v29;
    v155 = v63;
    v156 = v28;
    v157 = v61;
    v158 = v24;
    v159 = v53;
    v160 = v52;
    v161 = v51;
    v162 = v50;
    v163 = v49;
    v164 = v48;
    v165 = v47;
    v166 = v46;
    v167 = v54;
    *v168 = v34;
    *&v168[8] = v27;
    *&v168[24] = v33;
    *&v168[40] = v26;
    v169 = v58;
    v170 = v44;
    v171 = v57;
    v172 = v45;
    v173 = v56;
    v174 = v55;
    v175 = v16;
  }

  return sub_21A080160(v135);
}

uint64_t sub_21A0B6864()
{
  sub_21A0E6DAC();
  LiveBlogTheme.hash(into:)(v2, v0);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B68A8(uint64_t a1)
{
  sub_21A0E6DAC();
  LiveBlogTheme.hash(into:)(v3, v1);
  return sub_21A0E6DFC();
}

BOOL _s22NewsLiveActivitiesCore0B9BlogThemeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  memcpy(v77, v2, sizeof(v77));
  memcpy(v78, v5 + 800, sizeof(v78));
  memcpy(v79, v5 + 1800, sizeof(v79));
  v6 = *(v5 + 2216);
  v80 = *(v5 + 2200);
  v81 = v6;
  v82 = *(v5 + 2232);
  v7 = *(v5 + 281);
  v60 = *(v5 + 282);
  v8 = v5[2268];
  v9 = *(v5 + 566);
  v10 = *(v5 + 145);
  v85 = *(v5 + 144);
  v86 = v10;
  *v87 = *(v5 + 146);
  *&v87[16] = *(v5 + 294);
  v11 = *(v5 + 143);
  v83 = *(v5 + 142);
  v84 = v11;
  v93 = *(v5 + 305);
  v12 = *(v5 + 2408);
  v92 = *(v5 + 2424);
  v13 = *(v5 + 2392);
  v91 = v12;
  v90 = v13;
  v14 = *(v5 + 2360);
  v89 = *(v5 + 2376);
  v88 = v14;
  v15 = *(v5 + 156);
  v96 = *(v5 + 155);
  v97 = v15;
  *v98 = *(v5 + 157);
  *&v98[16] = *(v5 + 316);
  v16 = *(v5 + 153);
  v95 = *(v5 + 154);
  v94 = v16;
  v17 = v5[2536];
  memcpy(v99, v4, sizeof(v99));
  memcpy(v100, (v4 + 800), sizeof(v100));
  memcpy(v101, (v4 + 1800), sizeof(v101));
  v18 = *(v4 + 2216);
  v102 = *(v4 + 2200);
  v103 = v18;
  v104 = *(v4 + 2232);
  v19 = *(v4 + 2248);
  v59 = *(v4 + 2256);
  v20 = *(v4 + 2268);
  v21 = *(v4 + 2264);
  v22 = *(v4 + 2320);
  v107 = *(v4 + 2304);
  v108 = v22;
  *v109 = *(v4 + 2336);
  *&v109[16] = *(v4 + 2352);
  v23 = *(v4 + 2288);
  v105 = *(v4 + 2272);
  v106 = v23;
  v115 = *(v4 + 2440);
  v24 = *(v4 + 2408);
  v114 = *(v4 + 2424);
  v25 = *(v4 + 2392);
  v113 = v24;
  v112 = v25;
  v26 = *(v4 + 2360);
  v111 = *(v4 + 2376);
  v110 = v26;
  v27 = *(v4 + 2496);
  v118 = *(v4 + 2480);
  v119 = v27;
  *v120 = *(v4 + 2512);
  *&v120[16] = *(v4 + 2528);
  v28 = *(v4 + 2448);
  v117 = *(v4 + 2464);
  v116 = v28;
  v58 = *(v4 + 2536);
  memcpy(v75, v5, 0x320uLL);
  memcpy(&v75[50], v4, 0x320uLL);
  memcpy(v121, v5, 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v121) == 1)
  {
    memcpy(v73, v4, 0x320uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) == 1)
    {
      v57 = v17;
      memcpy(v76, v5, 0x320uLL);
      sub_219F45500(v77, v74, &qword_27CCDB160, &unk_21A0F2280);
      sub_219F45500(v99, v74, &qword_27CCDB160, &unk_21A0F2280);
      sub_219F6409C(v76, &qword_27CCDB160, &unk_21A0F2280);
      goto LABEL_9;
    }

    sub_219F45500(v77, v76, &qword_27CCDB160, &unk_21A0F2280);
    sub_219F45500(v99, v76, &qword_27CCDB160, &unk_21A0F2280);
LABEL_7:
    memcpy(v73, v75, 0x640uLL);
    v29 = &unk_27CCDDDC0;
    v30 = &unk_21A104748;
LABEL_24:
    v33 = v73;
LABEL_25:
    sub_219F6409C(v33, v29, v30);
    return 0;
  }

  memcpy(v76, v5, 0x320uLL);
  memcpy(v74, v5, 0x320uLL);
  memcpy(v73, v4, 0x320uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) == 1)
  {
    memcpy(__dst, v5, 0x320uLL);
    sub_219F45500(v77, __src, &qword_27CCDB160, &unk_21A0F2280);
    sub_219F45500(v99, __src, &qword_27CCDB160, &unk_21A0F2280);
    sub_219F45500(v76, __src, &qword_27CCDB160, &unk_21A0F2280);
    sub_219FEEA4C(__dst);
    goto LABEL_7;
  }

  v57 = v17;
  memcpy(__dst, v4, 0x320uLL);
  sub_219F45500(v77, __src, &qword_27CCDB160, &unk_21A0F2280);
  sub_219F45500(v99, __src, &qword_27CCDB160, &unk_21A0F2280);
  sub_219F45500(v76, __src, &qword_27CCDB160, &unk_21A0F2280);
  v31 = _s22NewsLiveActivitiesCore19ActivityHeaderThemeV2eeoiySbAC_ACtFZ_0(v74, __dst);
  memcpy(v62, __dst, 0x320uLL);
  sub_219FEEA4C(v62);
  memcpy(__src, v74, 0x320uLL);
  sub_219FEEA4C(__src);
  memcpy(__dst, v5, 0x320uLL);
  sub_219F6409C(__dst, &qword_27CCDB160, &unk_21A0F2280);
  if (!v31)
  {
    return 0;
  }

LABEL_9:
  memcpy(v75, v78, 0x3E8uLL);
  memcpy(&v75[62] + 8, v100, 0x3E8uLL);
  memcpy(v76, v78, sizeof(v76));
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v76) == 1)
  {
    memcpy(v73, &v75[62] + 8, 0x3E8uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) == 1)
    {
      memcpy(v74, v75, sizeof(v74));
      sub_219F45500(v78, __dst, &qword_27CCD9578, &qword_21A0E8980);
      sub_219F45500(v100, __dst, &qword_27CCD9578, &qword_21A0E8980);
      sub_219F6409C(v74, &qword_27CCD9578, &qword_21A0E8980);
      goto LABEL_17;
    }

    sub_219F45500(v78, v74, &qword_27CCD9578, &qword_21A0E8980);
    sub_219F45500(v100, v74, &qword_27CCD9578, &qword_21A0E8980);
    goto LABEL_15;
  }

  memcpy(v74, v75, sizeof(v74));
  memcpy(__dst, v75, 0x3E8uLL);
  memcpy(v73, &v75[62] + 8, 0x3E8uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) == 1)
  {
    memcpy(__src, v75, 0x3E8uLL);
    sub_219F45500(v78, v62, &qword_27CCD9578, &qword_21A0E8980);
    sub_219F45500(v100, v62, &qword_27CCD9578, &qword_21A0E8980);
    sub_219F45500(v74, v62, &qword_27CCD9578, &qword_21A0E8980);
    sub_219F98490(__src);
LABEL_15:
    memcpy(v73, v75, sizeof(v73));
    v29 = &unk_27CCDDDC8;
    v30 = &unk_21A104750;
    goto LABEL_24;
  }

  memcpy(__src, &v75[62] + 8, 0x3E8uLL);
  sub_219F45500(v78, v62, &qword_27CCD9578, &qword_21A0E8980);
  sub_219F45500(v100, v62, &qword_27CCD9578, &qword_21A0E8980);
  sub_219F45500(v74, v62, &qword_27CCD9578, &qword_21A0E8980);
  v32 = _s22NewsLiveActivitiesCore0B13BlogBodyThemeV2eeoiySbAC_ACtFZ_0(__dst, __src);
  memcpy(v61, __src, 0x3E8uLL);
  sub_219F98490(v61);
  memcpy(v62, __dst, 0x3E8uLL);
  sub_219F98490(v62);
  memcpy(__src, v75, 0x3E8uLL);
  sub_219F6409C(__src, &qword_27CCD9578, &qword_21A0E8980);
  if (!v32)
  {
    return 0;
  }

LABEL_17:
  memcpy(v75, v79, 0x190uLL);
  memcpy(&v75[25], v101, 0x190uLL);
  memcpy(v74, v79, 0x190uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v74) == 1)
  {
    memcpy(v73, &v75[25], 0x190uLL);
    if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) == 1)
    {
      memcpy(__dst, v75, 0x190uLL);
      sub_219F45500(v79, __src, &qword_27CCDCE98, &qword_21A102F20);
      sub_219F45500(v101, __src, &qword_27CCDCE98, &qword_21A102F20);
      sub_219F6409C(__dst, &qword_27CCDCE98, &qword_21A102F20);
      goto LABEL_28;
    }

    sub_219F45500(v79, __dst, &qword_27CCDCE98, &qword_21A102F20);
    sub_219F45500(v101, __dst, &qword_27CCDCE98, &qword_21A102F20);
    goto LABEL_23;
  }

  memcpy(__dst, v75, 0x190uLL);
  memcpy(__src, v75, 0x190uLL);
  memcpy(v73, &v75[25], 0x190uLL);
  if (get_enum_tag_for_layout_string_22NewsLiveActivitiesCore19ActivityHeaderThemeVSg_0(v73) == 1)
  {
    memcpy(v62, v75, 0x190uLL);
    sub_219F45500(v79, v61, &qword_27CCDCE98, &qword_21A102F20);
    sub_219F45500(v101, v61, &qword_27CCDCE98, &qword_21A102F20);
    sub_219F45500(__dst, v61, &qword_27CCDCE98, &qword_21A102F20);
    sub_21A0B7FF4(v62);
LABEL_23:
    memcpy(v73, v75, 0x320uLL);
    v29 = &unk_27CCDDDD0;
    v30 = &unk_21A104758;
    goto LABEL_24;
  }

  memcpy(v62, &v75[25], 0x190uLL);
  sub_219F45500(v79, v61, &qword_27CCDCE98, &qword_21A102F20);
  sub_219F45500(v101, v61, &qword_27CCDCE98, &qword_21A102F20);
  sub_219F45500(__dst, v61, &qword_27CCDCE98, &qword_21A102F20);
  v35 = _s22NewsLiveActivitiesCore19ActivityFooterThemeV2eeoiySbAC_ACtFZ_0(__src, v62);
  memcpy(v64, v62, sizeof(v64));
  sub_21A0B7FF4(v64);
  memcpy(v61, __src, 0x190uLL);
  sub_21A0B7FF4(v61);
  memcpy(v62, v75, 0x190uLL);
  sub_219F6409C(v62, &qword_27CCDCE98, &qword_21A102F20);
  if (!v35)
  {
    return 0;
  }

LABEL_28:
  v36 = v21 | (v20 << 32);
  if ((~v7 & 0xFFFFFFFE) != 0 || ((v9 | (v8 << 32)) & 0xFE00000000) != 0x200000000)
  {
    v75[0] = v80;
    v75[1] = v81;
    v75[2] = v82;
    *&v75[3] = v7;
    *(&v75[3] + 1) = v60;
    LODWORD(v75[4]) = v9;
    BYTE4(v75[4]) = (v9 | (v8 << 32)) >> 32;
    if ((~v19 & 0xFFFFFFFE) == 0 && (v36 & 0xFE00000000) == 0x200000000)
    {
      return 0;
    }

    v73[0] = v102;
    v73[1] = v103;
    v73[2] = v104;
    *&v73[3] = v19;
    *(&v73[3] + 1) = v59;
    LODWORD(v73[4]) = v21;
    BYTE4(v73[4]) = (v21 | (v20 << 32)) >> 32;
    if ((_s22NewsLiveActivitiesCore13ActivityColorO2eeoiySbAC_ACtFZ_0(v75, v73) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((~v19 & 0xFFFFFFFE) != 0 || (v36 & 0xFE00000000) != 0x200000000)
  {
    return 0;
  }

  v62[0] = v83;
  v62[1] = v84;
  v62[2] = v85;
  v37 = v86;
  v38 = *v87;
  v61[0] = *&v87[8];
  v40 = (~v108 & 0xFFFFFFFE) == 0 && (*v109 & 0xFE00000000) == 0x200000000;
  if ((~v86 & 0xFFFFFFFE) == 0 && (*v87 & 0xFE00000000) == 0x200000000)
  {
    if (v40)
    {
      v75[0] = v83;
      v75[1] = v84;
      v75[2] = v85;
      v75[3] = v86;
      *&v75[4] = *v87;
      *(&v75[4] + 8) = *&v87[8];
      sub_219F45500(&v83, v73, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F45500(&v105, v73, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F6409C(v75, &qword_27CCDAB00, &qword_21A0EF390);
      goto LABEL_50;
    }

LABEL_47:
    v75[0] = v83;
    v75[1] = v84;
    v75[2] = v85;
    *(&v75[4] + 8) = *&v87[8];
    *(&v75[5] + 8) = v105;
    v75[3] = v86;
    *(&v75[6] + 8) = v106;
    *(&v75[7] + 8) = v107;
    *&v75[4] = *v87;
    *(&v75[8] + 8) = v108;
    *(&v75[9] + 1) = *v109;
    v75[10] = *&v109[8];
    sub_219F45500(&v83, v73, &qword_27CCDAB00, &qword_21A0EF390);
    v41 = &v105;
    v42 = v73;
LABEL_48:
    sub_219F45500(v41, v42, &qword_27CCDAB00, &qword_21A0EF390);
    v29 = &unk_27CCDD9A0;
    v30 = &unk_21A102C70;
LABEL_56:
    v33 = v75;
    goto LABEL_25;
  }

  if (v40)
  {
    goto LABEL_47;
  }

  v75[0] = v105;
  v75[1] = v106;
  v75[2] = v107;
  v75[3] = v108;
  *&v75[4] = *v109;
  *(&v75[4] + 8) = *&v109[8];
  v73[0] = v105;
  v73[1] = v106;
  v73[2] = v107;
  v73[3] = v108;
  *&v73[5] = *&v109[16];
  v73[4] = v75[4];
  __dst[2] = v85;
  __dst[1] = v84;
  __dst[0] = v83;
  *(&__dst[4] + 8) = *&v87[8];
  __dst[3] = v86;
  *&__dst[4] = *v87;
  sub_219F45500(&v83, __src, &qword_27CCDAB00, &qword_21A0EF390);
  sub_219F45500(&v105, __src, &qword_27CCDAB00, &qword_21A0EF390);
  v43 = sub_21A0D99E0(__dst, v73);
  sub_219F6409C(v75, &qword_27CCDAB00, &qword_21A0EF390);
  __src[0] = v62[0];
  __src[1] = v62[1];
  __src[2] = v62[2];
  __src[3] = v37;
  *&__src[4] = v38;
  *(&__src[4] + 8) = v61[0];
  sub_219F6409C(__src, &qword_27CCDAB00, &qword_21A0EF390);
  if ((v43 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v64[2] = v90;
  v64[3] = v91;
  v44 = *(&v92 + 1);
  *&v64[4] = v92;
  v64[1] = v89;
  v64[0] = v88;
  v45 = v93;
  if (!*(&v92 + 1))
  {
    if (!*(&v114 + 1))
    {
      v75[2] = v90;
      v75[3] = v91;
      v75[1] = v89;
      v75[0] = v88;
      v75[4] = v92;
      *&v75[5] = v93;
      sub_219F45500(&v88, __src, &qword_27CCD9F78, &unk_21A0ED840);
      sub_219F45500(&v110, __src, &qword_27CCD9F78, &unk_21A0ED840);
      sub_219F6409C(v75, &qword_27CCD9F78, &unk_21A0ED840);
      goto LABEL_58;
    }

LABEL_55:
    v75[2] = v90;
    v75[3] = v91;
    v75[1] = v89;
    v75[0] = v88;
    *(&v75[6] + 8) = v111;
    *(&v75[7] + 8) = v112;
    *(&v75[8] + 8) = v113;
    v75[4] = v92;
    *&v75[5] = v93;
    *(&v75[9] + 8) = v114;
    *(&v75[5] + 8) = v110;
    *(&v75[10] + 1) = v115;
    sub_219F45500(&v88, __src, &qword_27CCD9F78, &unk_21A0ED840);
    sub_219F45500(&v110, __src, &qword_27CCD9F78, &unk_21A0ED840);
    v29 = &qword_27CCDA668;
    v30 = &qword_21A0EE058;
    goto LABEL_56;
  }

  if (!*(&v114 + 1))
  {
    goto LABEL_55;
  }

  v75[2] = v112;
  v75[3] = v113;
  v75[1] = v111;
  v75[0] = v110;
  v75[4] = v114;
  *&v75[5] = v115;
  *&__src[5] = v115;
  __src[3] = v113;
  __src[2] = v112;
  __src[0] = v110;
  __src[1] = v111;
  __src[4] = v114;
  v62[2] = v90;
  v62[3] = v91;
  v62[1] = v89;
  v62[0] = v88;
  v62[4] = v92;
  *&v62[5] = v93;
  sub_219F45500(&v88, v61, &qword_27CCD9F78, &unk_21A0ED840);
  sub_219F45500(&v110, v61, &qword_27CCD9F78, &unk_21A0ED840);
  v46 = sub_21A0D98E4(v62, __src);
  sub_219F6409C(v75, &qword_27CCD9F78, &unk_21A0ED840);
  v61[2] = v64[2];
  v61[3] = v64[3];
  v61[0] = v64[0];
  v61[1] = v64[1];
  *&v61[4] = *&v64[4];
  *(&v61[4] + 1) = v44;
  *&v61[5] = v45;
  sub_219F6409C(v61, &qword_27CCD9F78, &unk_21A0ED840);
  if ((v46 & 1) == 0)
  {
    return 0;
  }

LABEL_58:
  v69 = v94;
  v70 = v95;
  v71 = v96;
  v47 = v97;
  v48 = *v98;
  v68 = *&v98[8];
  v50 = (~v119 & 0xFFFFFFFE) == 0 && (*v120 & 0xFE00000000) == 0x200000000;
  if ((~v97 & 0xFFFFFFFE) == 0 && (*v98 & 0xFE00000000) == 0x200000000)
  {
    if (v50)
    {
      v75[0] = v94;
      v75[1] = v95;
      v75[2] = v96;
      v75[3] = v97;
      *&v75[4] = *v98;
      *(&v75[4] + 8) = *&v98[8];
      sub_219F45500(&v94, v61, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F45500(&v116, v61, &qword_27CCDAB00, &qword_21A0EF390);
      sub_219F6409C(v75, &qword_27CCDAB00, &qword_21A0EF390);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  if (v50)
  {
LABEL_69:
    v75[0] = v94;
    v75[1] = v95;
    v75[2] = v96;
    *(&v75[4] + 8) = *&v98[8];
    *(&v75[5] + 8) = v116;
    v75[3] = v97;
    *(&v75[6] + 8) = v117;
    *(&v75[7] + 8) = v118;
    *&v75[4] = *v98;
    *(&v75[8] + 8) = v119;
    *(&v75[9] + 1) = *v120;
    v75[10] = *&v120[8];
    sub_219F45500(&v94, v61, &qword_27CCDAB00, &qword_21A0EF390);
    v41 = &v116;
    v42 = v61;
    goto LABEL_48;
  }

  v64[0] = v116;
  v64[1] = v117;
  v64[2] = v118;
  v64[3] = v119;
  *&v64[4] = *v120;
  *(&v64[4] + 8) = *&v120[8];
  v75[0] = v116;
  v75[1] = v117;
  v75[2] = v118;
  v75[3] = v119;
  *&v75[5] = *&v120[16];
  v75[4] = v64[4];
  v61[1] = v95;
  v61[2] = v96;
  v61[0] = v94;
  *(&v61[4] + 8) = *&v98[8];
  v61[3] = v97;
  *&v61[4] = *v98;
  sub_219F45500(&v94, v65, &qword_27CCDAB00, &qword_21A0EF390);
  sub_219F45500(&v116, v65, &qword_27CCDAB00, &qword_21A0EF390);
  v51 = sub_21A0D99E0(v61, v75);
  sub_219F6409C(v64, &qword_27CCDAB00, &qword_21A0EF390);
  v65[0] = v69;
  v65[1] = v70;
  v65[2] = v71;
  v65[3] = v47;
  v66 = v48;
  v67 = v68;
  sub_219F6409C(v65, &qword_27CCDAB00, &qword_21A0EF390);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_71:
  if (v57 == 2)
  {
    return v58 == 2;
  }

  if (v58 == 2)
  {
    return 0;
  }

  if (v57)
  {
    v52 = 1802658148;
  }

  else
  {
    v52 = 0x746867696CLL;
  }

  if (v57)
  {
    v53 = 0xE400000000000000;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  if (v58)
  {
    v54 = 1802658148;
  }

  else
  {
    v54 = 0x746867696CLL;
  }

  if (v58)
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  if (v52 != v54 || v53 != v55)
  {
    v56 = sub_21A0E6C5C();

    return (v56 & 1) != 0;
  }

  return 1;
}

unint64_t sub_21A0B7E48()
{
  result = qword_27CCDDD60;
  if (!qword_27CCDDD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD60);
  }

  return result;
}

unint64_t sub_21A0B7E9C()
{
  result = qword_27CCDDD68;
  if (!qword_27CCDDD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD68);
  }

  return result;
}

unint64_t sub_21A0B7EF0()
{
  result = qword_27CCDDD70;
  if (!qword_27CCDDD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD70);
  }

  return result;
}

unint64_t sub_21A0B7F44()
{
  result = qword_27CCDDD78;
  if (!qword_27CCDDD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD78);
  }

  return result;
}

unint64_t sub_21A0B8048()
{
  result = qword_27CCDDD88;
  if (!qword_27CCDDD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD88);
  }

  return result;
}

unint64_t sub_21A0B809C()
{
  result = qword_27CCDDD90;
  if (!qword_27CCDDD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD90);
  }

  return result;
}

unint64_t sub_21A0B80F0()
{
  result = qword_27CCDDD98;
  if (!qword_27CCDDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDD98);
  }

  return result;
}

unint64_t sub_21A0B8148()
{
  result = qword_27CCDDDA0;
  if (!qword_27CCDDDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22NewsLiveActivitiesCore7DynamicVyAA13ActivityColorOGSg(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | (*(a1 + 68) >> 1 << 31);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A0B81C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 2537))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = (*(a1 + 2248) >> 1) & 0x7FFFFFFF | (*(a1 + 2268) >> 1 << 31);
  v4 = -2 - v3;
  if ((-2 - v3) < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t sub_21A0B8238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 2536) = 0;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2537) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 2537) = 0;
    }

    if (a2)
    {
      *(result + 2216) = 0u;
      *(result + 2232) = 0u;
      *(result + 2200) = 0u;
      *(result + 2248) = 2 * ~a2;
      *(result + 2256) = 0;
      *(result + 2264) = 0;
      *(result + 2268) = 2;
    }
  }

  return result;
}

unint64_t sub_21A0B8574()
{
  result = qword_27CCDDDA8;
  if (!qword_27CCDDDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDA8);
  }

  return result;
}

unint64_t sub_21A0B85CC()
{
  result = qword_27CCDDDB0;
  if (!qword_27CCDDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDB0);
  }

  return result;
}

unint64_t sub_21A0B8624()
{
  result = qword_27CCDDDB8;
  if (!qword_27CCDDDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCDDDB8);
  }

  return result;
}

uint64_t sub_21A0B8678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54656E696C79656BLL && a2 == 0xEB00000000746E69 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEE00746E6954646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (sub_21A0E6C5C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000021A10B010 == a2 || (sub_21A0E6C5C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x686353726F6C6F63 && a2 == 0xEB00000000656D65)
  {

    return 7;
  }

  else
  {
    v6 = sub_21A0E6C5C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void *sub_21A0B892C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  v7[0] = *a4;
  v7[1] = v4;
  v8 = *(a4 + 32);
  if (a2)
  {
    v5 = sub_21A04E49C(a1, a2, a3, v7);

    sub_219F5ED9C(v7);
    return v5;
  }

  else
  {
    sub_219F5ED9C(v7);

    return 0;
  }
}

__n128 PrimaryElectionContentState.headerProperties.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  v3 = v1[1].n128_u8[8];
  v4 = v1[1].n128_u8[9];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  a1[1].n128_u8[8] = v3;
  a1[1].n128_u8[9] = v4;
  return result;
}

__n128 PrimaryElectionContentState.headerProperties.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = a1[1].n128_u8[9];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u8[8] = v3;
  v1[1].n128_u8[9] = v4;
  return result;
}

uint64_t PrimaryElectionContentState.data.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PrimaryElectionContentState(0) + 20);

  return sub_21A0BA0D0(a1, v3);
}

uint64_t PrimaryElectionContentState.hash(into:)(uint64_t a1)
{
  v3 = sub_21A0E495C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  if (*(v1 + 25) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    v12 = *(v1 + 24);
    v13 = v1[2];
    v14 = *(v1 + 2);
    v18 = *v1;
    v19 = v14 & 1;
    v20 = v13;
    v21 = v12 & 1;
    sub_21A0E6DCC();
    PrimaryElectionHeaderTemplateProperties.hash(into:)();
  }

  v15 = v1 + *(type metadata accessor for PrimaryElectionContentState(0) + 20);
  sub_21A02456C(v15, v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    sub_21A0E6DCC();
  }

  else
  {
    (*(v4 + 32))(v7, v11, v3);
    sub_21A0E6DCC();
    sub_219F448A0(&qword_27CCD9828, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_21A0E615C();
    (*(v4 + 8))(v7, v3);
  }

  v16 = type metadata accessor for PrimaryElectionData(0);
  return sub_219F6AE3C(a1, *(v15 + *(v16 + 20)));
}

uint64_t PrimaryElectionContentState.hashValue.getter()
{
  sub_21A0E6DAC();
  PrimaryElectionContentState.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B8F44()
{
  sub_21A0E6DAC();
  PrimaryElectionContentState.hash(into:)(v1);
  return sub_21A0E6DFC();
}

uint64_t sub_21A0B8F88(uint64_t a1)
{
  sub_21A0E6DAC();
  PrimaryElectionContentState.hash(into:)(v2);
  return sub_21A0E6DFC();
}

uint64_t PrimaryElectionContentState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v29 = type metadata accessor for PrimaryElectionData(0);
  MEMORY[0x28223BE20](v29, v4);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABA8, &qword_21A0EF7C8);
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDDD8, &unk_21A104770);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for PrimaryElectionContentState(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_21A0BA134();
  sub_21A0E6E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  v25 = v16;
  v18 = v28;
  v37 = 0;
  sub_21A0BA188();
  sub_21A0E6A8C();
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v22 = v25;
  *v25 = v33;
  *(v22 + 2) = v19;
  *(v22 + 24) = v20;
  *(v22 + 25) = v21;
  LOBYTE(v33) = 1;
  sub_219FB7310();
  sub_21A0E6A1C();
  LOBYTE(v33) = 1;
  sub_219F448A0(&qword_27CCDDDF0, type metadata accessor for PrimaryElectionData, &protocol conformance descriptor for PrimaryElectionData);
  sub_21A0E6ADC();
  (*(v27 + 8))(v9, v6);
  (*(v18 + 8))(v12, v31);
  v23 = v25;
  sub_21A0BA1DC(v30, v25 + *(v13 + 20));
  sub_21A0BA240(v23, v26, type metadata accessor for PrimaryElectionContentState);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_21A0BA2A8(v23);
}

uint64_t PrimaryElectionContentState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDABD8, &qword_21A0EF7D8);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDDF8, &qword_21A104780);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A0BA134();
  sub_21A0E6EAC();
  LOBYTE(v21) = 1;
  sub_219FB7310();
  sub_21A0E6B2C();
  v14 = *(v3 + 2);
  v15 = *(v3 + 24);
  v16 = *(v3 + 25);
  v21 = *v3;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDE00, &qword_21A104788);
  sub_21A0BA304();
  sub_21A0E6BBC();
  if (v2)
  {
    (*(v19 + 8))(v8, v20);
  }

  else
  {
    type metadata accessor for PrimaryElectionContentState(0);
    LOBYTE(v21) = 1;
    type metadata accessor for PrimaryElectionData(0);
    sub_219F448A0(&qword_27CCDDE18, type metadata accessor for PrimaryElectionData, &protocol conformance descriptor for PrimaryElectionData);
    v17 = v20;
    sub_21A0E6BBC();
    (*(v19 + 8))(v8, v17);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_21A0B96B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1635017060;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000021A109860;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1635017060;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0x800000021A109860;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21A0E6C5C();
  }

  return v8 & 1;
}

uint64_t sub_21A0B9758()
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0B97D8(uint64_t a1)
{
  sub_21A0E626C();
}

uint64_t sub_21A0B9844(uint64_t a1)
{
  sub_21A0E6DAC();
  sub_21A0E626C();

  return sub_21A0E6DFC();
}

uint64_t sub_21A0B98C0@<X0>(char *a2@<X8>)
{
  v3 = sub_21A0E6A0C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21A0B9920(unint64_t *a1@<X8>)
{
  v2 = 0x800000021A109860;
  v3 = 1635017060;
  if (*v1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21A0B995C()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21A0B9994@<X0>(char *a3@<X8>)
{
  v4 = sub_21A0E6A0C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_21A0B99F8(uint64_t a1)
{
  v2 = sub_21A0BA134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A0B9A34(uint64_t a1)
{
  v2 = sub_21A0BA134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static PrimaryElectionContentState.random(candidates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCDDE20, &qword_21A104790);
  v63 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v62 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD97F0, &qword_21A0E97E0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v57 - v9;
  v59 = type metadata accessor for PrimaryElectionData(0);
  MEMORY[0x28223BE20](v59, v11);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219FBFCFC(0x3E9uLL);
  v14 = v13;
  v15 = sub_21A0E495C();
  v16 = *(*(v15 - 8) + 56);
  v61 = v10;
  v16(v10, 1, 1, v15);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v57 = v4;
    v58 = a2;
    v83 = MEMORY[0x277D84F90];
    result = sub_219FBE700(0, v17, 0);
    v20 = 0;
    v18 = v83;
    v66 = a1 + 32;
    v67 = v17;
    if (v17 <= 0x1F4)
    {
      v21 = 3;
    }

    else
    {
      v21 = 0;
    }

    v65 = v21;
    while ((v13 & 0x8000000000000000) == 0)
    {
      v76 = v20;
      v22 = v66 + 120 * v20;
      v23 = *(v22 + 8);
      v24 = *(v22 + 24);
      v79 = *(v22 + 32);
      v80 = v18;
      v26 = *(v22 + 40);
      v25 = *(v22 + 48);
      v28 = *(v22 + 56);
      v27 = *(v22 + 64);
      v29 = *(v22 + 80);
      v70 = *(v22 + 72);
      v71 = v27;
      v69 = v29;
      v30 = *(v22 + 96);
      v68 = *(v22 + 88);
      v31 = *(v22 + 104);
      v32 = v13;
      v33 = *(v22 + 112) | (*(v22 + 116) << 32);
      v34 = v32 + 1;
      v82 = 0;
      swift_bridgeObjectRetain_n();
      v75 = v23;

      v35 = v24;

      v74 = v33;
      v56 = v33;
      v36 = v32;
      v77 = v28;
      v78 = v25;
      v37 = v28;
      v38 = v70;
      v39 = v71;
      v40 = v31;
      v41 = v30;
      v43 = v68;
      v42 = v69;
      v72 = v41;
      v73 = v40;
      v44 = sub_21A0BA3DC(v25, v37, v71, v70, v69, v68, v41, v40, v56);
      MEMORY[0x21CED2D50](&v82, 8, v44);
      v45 = (v82 * (v32 + 1)) >> 64;
      v46 = v82 * (v32 + 1);
      v81 = v26;
      if (v32 >= v46)
      {
        v64 = v35;
        v47 = ~v32 % v34;
        if (v47 > v46)
        {
          do
          {
            v82 = 0;
            MEMORY[0x21CED2D50](&v82, 8);
          }

          while (v47 > v82 * v34);
          v45 = (v82 * v34) >> 64;
        }
      }

      result = sub_219F63A60(v78, v77, v39, v38, v42, v43, v72, v73, v74);
      v18 = v80;
      v83 = v80;
      v49 = *(v80 + 16);
      v48 = *(v80 + 24);
      if (v49 >= v48 >> 1)
      {
        result = sub_219FBE700((v48 > 1), v49 + 1, 1);
        v18 = v83;
      }

      v20 = v76 + 1;
      v13 = v36 - v45;
      *(v18 + 16) = v49 + 1;
      v50 = v18 + 40 * v49;
      v51 = v81;
      *(v50 + 32) = v79;
      *(v50 + 40) = v51;
      *(v50 + 48) = v45;
      *(v50 + 56) = v45 / v14;
      *(v50 + 64) = v65;
      if (v20 == v67)
      {
        a2 = v58;
        v4 = v57;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v83 = v18;
    swift_getKeyPath();
    v52 = v62;
    sub_21A0E462C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CCD9810, &qword_21A0E97F0);
    sub_219F3E490(&qword_27CCDDE28, &qword_27CCD9810, &qword_21A0E97F0, MEMORY[0x277D83970]);
    sub_219F3E490(&qword_27CCDDE30, &qword_27CCDDE20, &qword_21A104790, MEMORY[0x277CC8C98]);
    v53 = sub_21A0E62FC();
    (*(v63 + 8))(v52, v4);

    v54 = v60;
    sub_219FC26CC(v61, v60);
    *(v54 + *(v59 + 20)) = v53;
    *a2 = v14 / 1000.0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    v55 = type metadata accessor for PrimaryElectionContentState(0);
    return sub_21A0BA1DC(v54, a2 + *(v55 + 20));
  }

  return result;
}