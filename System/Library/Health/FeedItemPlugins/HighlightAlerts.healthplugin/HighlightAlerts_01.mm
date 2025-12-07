void *sub_29D9D595C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D9D5FA4(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
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

void *sub_29D9D59F8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D9D5FA4(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_29D9D5A9C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_29D9D5FA4(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29DA3A6C0;
  *(v8 + 32) = 0xD000000000000016;
  *(v8 + 40) = 0x800000029DA36EF0;
  *(v8 + 48) = a1;
  *(v8 + 56) = a2;
  if (!a4)
  {
    goto LABEL_8;
  }

  v9 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v9 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {

    MEMORY[0x29ED6D450](a3, a4);
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_29D9D50F4((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 16) = v11 + 1;
    v12 = v8 + 16 * v11;
    *(v12 + 32) = 0x2D786966667553;
    *(v12 + 40) = 0xE700000000000000;
  }

  else
  {
LABEL_8:
  }

  sub_29D9D5FA4(0, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
  sub_29D9D5E10();
  v13 = sub_29DA347E4();

  return v13;
}

uint64_t sub_29D9D5C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = objc_opt_self();
  v11 = sub_29DA34824();
  v12 = [v10 _typeWithIdentifier_];

  if (v12)
  {

    v24 = sub_29D9D5A9C(a1, a2, a3, a4);
    v14 = v13;

    v15 = [v12 sensitiveLoggingIdentifier];
    v16 = sub_29DA34854();
    v17 = a1;
    v19 = v18;

    v20 = sub_29D9D5A9C(v16, v19, a3, a4);
    v22 = v21;

    *a5 = v17;
    a5[1] = a2;
    a5[2] = a3;
    a5[3] = a4;
    a5[4] = v24;
    a5[5] = v14;
    a5[6] = v20;
    a5[7] = v22;
  }

  else
  {
    sub_29DA34DF4();
    MEMORY[0x29ED6D450](0xD00000000000004BLL, 0x800000029DA36F50);
    MEMORY[0x29ED6D450](a1, a2);
    result = sub_29DA34F64();
    __break(1u);
  }

  return result;
}

unint64_t sub_29D9D5E10()
{
  result = qword_2A1A2DB40;
  if (!qword_2A1A2DB40)
  {
    sub_29D9D5FA4(255, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB40);
  }

  return result;
}

void sub_29D9D5E90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA35104();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D9D5EE4(uint64_t a1)
{
  if (!qword_2A1A2D4B0)
  {
    sub_29D9C79FC(255, &qword_2A1A2D480, 0x29EDBA080);
    v1 = sub_29DA349A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D4B0);
    }
  }
}

void sub_29D9D5F4C()
{
  if (!qword_2A17D14B8)
  {
    v0 = sub_29DA34AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A17D14B8);
    }
  }
}

void sub_29D9D5FA4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29D9D5FF4(uint64_t a1)
{
  if (!qword_2A1A2CB00)
  {
    sub_29D9C79FC(255, &qword_2A1A2CAE0, &off_29F359180);
    sub_29DA336F4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2CB00);
    }
  }
}

__n128 sub_29D9D6078(uint64_t a1, uint64_t a2)
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

uint64_t sub_29D9D608C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29D9D60D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_29D9D6134(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000029DA36FC0 == a2 || (sub_29DA35114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966667573 && a2 == 0xE600000000000000 || (sub_29DA35114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000029DA36FE0 == a2 || (sub_29DA35114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000029DA37000 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_29DA35114();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_29D9D62A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_29D9D6660(0, &qword_2A17D14C0, MEMORY[0x29EDC9E80]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v24 - v8;
  sub_29D9C706C(a1, a1[3]);
  sub_29D9D65A4();
  sub_29DA35214();
  if (v2)
  {
    return sub_29D9C7968(a1);
  }

  LOBYTE(v33[0]) = 0;
  v10 = sub_29DA35024();
  v28 = v11;
  LOBYTE(v33[0]) = 1;
  v12 = sub_29DA34FF4();
  v27 = v13;
  v25 = v12;
  LOBYTE(v33[0]) = 2;
  v24 = sub_29DA35024();
  v26 = v14;
  v34 = 3;
  v15 = sub_29DA35024();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  v18 = v28;
  *&v29 = v10;
  *(&v29 + 1) = v28;
  v20 = v25;
  v19 = v26;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  *&v32 = v15;
  *(&v32 + 1) = v17;
  sub_29D9D65F8(&v29, v33);
  sub_29D9C7968(a1);
  v33[0] = v10;
  v33[1] = v18;
  v33[2] = v20;
  v33[3] = v27;
  v33[4] = v24;
  v33[5] = v19;
  v33[6] = v15;
  v33[7] = v17;
  result = sub_29D9D6630(v33);
  v22 = v30;
  *a2 = v29;
  a2[1] = v22;
  v23 = v32;
  a2[2] = v31;
  a2[3] = v23;
  return result;
}

unint64_t sub_29D9D65A4()
{
  result = qword_2A17D14C8;
  if (!qword_2A17D14C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14C8);
  }

  return result;
}

void sub_29D9D6660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29D9D65A4();
    v7 = a3(a1, &type metadata for HighlightAlertFeedIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29D9D66D8()
{
  result = qword_2A17D14D8;
  if (!qword_2A17D14D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14D8);
  }

  return result;
}

unint64_t sub_29D9D6730()
{
  result = qword_2A17D14E0;
  if (!qword_2A17D14E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14E0);
  }

  return result;
}

unint64_t sub_29D9D6788()
{
  result = qword_2A17D14E8;
  if (!qword_2A17D14E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D14E8);
  }

  return result;
}

void sub_29D9D67DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v156 = a6;
  v150 = a5;
  v168 = a4;
  v6 = MEMORY[0x29EDC9C68];
  sub_29D9DC270(0, qword_2A1A2CDD0, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v157 = &v141 - v8;
  sub_29D9DC270(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v155 = (&v141 - v10);
  v159 = sub_29DA335B4();
  v158 = *(v159 - 8);
  MEMORY[0x2A1C7C4A8](v159);
  v164 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_29DA336F4();
  v153 = *(v154 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v154);
  v149 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v152 = &v141 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v160 = &v141 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v151 = &v141 - v18;
  v163 = sub_29DA33554();
  v165 = *(v163 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v163);
  v162 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v161 = &v141 - v21;
  v22 = type metadata accessor for HighlightAlertConfiguration(0);
  v23 = MEMORY[0x2A1C7C4A8](v22);
  v25 = (&v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x2A1C7C4A8](v23);
  v28 = (&v141 - v27);
  v29 = MEMORY[0x2A1C7C4A8](v26);
  v147 = (&v141 - v30);
  MEMORY[0x2A1C7C4A8](v29);
  v32 = (&v141 - v31);
  v166 = sub_29DA34644();
  v167 = *(v166 - 8);
  v33 = MEMORY[0x2A1C7C4A8](v166);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x2A1C7C4A8](v33);
  v38 = &v141 - v37;
  v39 = MEMORY[0x2A1C7C4A8](v36);
  v148 = &v141 - v40;
  MEMORY[0x2A1C7C4A8](v39);
  v42 = &v141 - v41;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    swift_beginAccess();
    v169 = swift_unknownObjectWeakLoadStrong();
    if (!v169)
    {

      return;
    }

    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (!v45)
    {

      return;
    }

    v46 = v45;

    sub_29DA33B44();

    v47 = v170;
    if (v171)
    {
      sub_29DA34614();
      sub_29D9DBFF8(v168, v32);
      v48 = v47;
      v49 = v47;
      v50 = sub_29DA34634();
      v51 = sub_29DA34B84();
      sub_29D9DC0B0(v47);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v146 = v46;
        v54 = v53;
        v170 = v53;
        *v52 = 136380931;
        v55 = *v32;
        v56 = v32[1];

        sub_29D9DC190(v32, type metadata accessor for HighlightAlertConfiguration);
        v57 = sub_29D9EBB44(v55, v56, &v170);

        *(v52 + 4) = v57;
        *(v52 + 12) = 2082;
        swift_getErrorValue();
        v58 = sub_29DA35154();
        v60 = sub_29D9EBB44(v58, v59, &v170);

        *(v52 + 14) = v60;
        _os_log_impl(&dword_29D9BB000, v50, v51, "HighlightAlert query operation for %{private}s returned error: %{public}s", v52, 0x16u);
        swift_arrayDestroy();
        v61 = v54;
        v46 = v146;
        MEMORY[0x29ED6E4C0](v61, -1, -1);
        MEMORY[0x29ED6E4C0](v52, -1, -1);

        sub_29D9DC0B0(v49);
      }

      else
      {

        sub_29D9DC0B0(v47);
        sub_29D9DC190(v32, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v167 + 8))(v42, v166);
LABEL_23:
      [v46 cancel];

      return;
    }

    if (!v170)
    {
      sub_29DA34614();
      sub_29D9DBFF8(v168, v25);
      v78 = sub_29DA34634();
      v79 = sub_29DA34BA4();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v170 = v81;
        *v80 = 136380675;
        v82 = v46;
        v83 = *v25;
        v84 = v25[1];

        sub_29D9DC190(v25, type metadata accessor for HighlightAlertConfiguration);
        v85 = sub_29D9EBB44(v83, v84, &v170);
        v46 = v82;

        *(v80 + 4) = v85;
        _os_log_impl(&dword_29D9BB000, v78, v79, "HighlightAlert query for %{private}s returned no samples", v80, 0xCu);
        sub_29D9C7968(v81);
        MEMORY[0x29ED6E4C0](v81, -1, -1);
        MEMORY[0x29ED6E4C0](v80, -1, -1);
      }

      else
      {

        sub_29D9DC190(v25, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v167 + 8))(v35, v166);
      goto LABEL_23;
    }

    v146 = v46;
    v145 = v170;
    v62 = [v170 sampleType];

    sub_29DA33B44();

    sub_29D9C706C(&v170, v172);
    v63 = sub_29DA33984();
    v64 = [v62 hk:v63 metadataValueDisplayTypeInStore:?];

    sub_29D9C7968(&v170);
    if (v64)
    {
      v65 = [v64 objectType];

      if (v65)
      {
        objc_opt_self();
        v66 = swift_dynamicCastObjCClass();
        if (v66)
        {
          v142 = v66;
          v143 = v65;
          v67 = v145;
          v68 = [v145 startDate];
          v69 = v151;
          sub_29DA336C4();

          v70 = [v67 endDate];
          sub_29DA336C4();

          v71 = v161;
          sub_29DA33504();
          v72 = *(v168 + *(v22 + 32));
          v144 = v44;
          if (v72 == 2)
          {
            v73 = v163;
            v75 = v154;
            v76 = v153;
            v77 = v152;
          }

          else
          {
            v73 = v163;
            v74 = v165;
            v75 = v154;
            v76 = v153;
            v77 = v152;
            if (v72 != 1)
            {
              v96 = v162;
              (*(v165 + 16))(v162, v71, v163);
              v97 = v164;
              v98 = v155;
LABEL_36:
              v99 = sub_29DA33534();
              *v100 = *v100 + 0.001;
              v99(&v170, 0);
              v101 = type metadata accessor for HighlightAlertDistributionConfiguration(0);
              v102 = *(v74 + 16);
              v103 = v156;
              v104 = v156[v101[10]];
              v102(v98, v96, v73);
              (*(v74 + 56))(v98, 0, 1, v73);
              sub_29D9EC718(v98, v104, v97);
              sub_29D9DC120(v98, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
              v151 = *v103;
              v105 = &v103[v101[6]];
              v153 = *v105;
              LODWORD(v152) = v105[8];
              v150 = v101[9];
              v160 = qword_2A1A2CD70;
              v106 = v146;
              v107 = v73;
              v108 = *&v146[qword_2A1A2CD70];
              v109 = (v108 + *(*v108 + *MEMORY[0x29EDC9DE8] + 16));
              v154 = (*(*v108 + 48) + 3) & 0x1FFFFFFFCLL;
              os_unfair_lock_lock((v108 + v154));
              v155 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
              sub_29D9DC120(v109, qword_2A1A2CDD0, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);
              v110 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
              v102(&v109[v110[5]], v96, v107);
              v111 = v158;
              v112 = v97;
              v113 = v159;
              (*(v158 + 16))(&v109[v110[6]], v112, v159);
              v114 = v110[7];
              v115 = sub_29DA34064();
              (*(*(v115 - 8) + 16))(&v109[v114], &v103[v150], v115);
              *v109 = v142;
              *&v109[v110[8]] = v151;
              *&v109[v110[9]] = 0;
              v116 = &v109[v110[10]];
              *v116 = v153;
              v116[8] = v152;
              *&v109[v110[11]] = 0;
              v117 = *(v110 - 1);
              (*(v117 + 56))(v109, 0, 1, v110);
              v118 = v143;
              os_unfair_lock_unlock((v108 + v154));
              v119 = *&v160[v106];
              v120 = *(*v119 + *MEMORY[0x29EDC9DE8] + 16);
              v121 = (*(*v119 + 48) + 3) & 0x1FFFFFFFCLL;
              os_unfair_lock_lock((v119 + v121));
              v122 = v119 + v120;
              v123 = v157;
              v124 = v155;
              sub_29D9DC1F0(v122, v157, qword_2A1A2CDD0, v155);
              LODWORD(v110) = (*(v117 + 48))(v123, 1, v110);
              sub_29D9DC120(v123, qword_2A1A2CDD0, v124);
              os_unfair_lock_unlock((v119 + v121));
              if (v110 != 1)
              {
                v137 = *(v165 + 8);
                v138 = v163;
                v137(v161, v163);
                sub_29D9DC0B0(v145);

                (*(v111 + 8))(v164, v113);
                v137(v162, v138);
                return;
              }

              v125 = v118;
              v126 = v148;
              sub_29DA34614();
              v127 = v147;
              sub_29D9DBFF8(v168, v147);
              v128 = sub_29DA34634();
              v129 = sub_29DA34B84();
              v130 = os_log_type_enabled(v128, v129);
              v131 = v144;
              if (v130)
              {
                v132 = swift_slowAlloc();
                v133 = swift_slowAlloc();
                v170 = v133;
                *v132 = 136380675;
                v134 = *v127;
                v135 = v127[1];

                sub_29D9DC190(v127, type metadata accessor for HighlightAlertConfiguration);
                v136 = sub_29D9EBB44(v134, v135, &v170);

                *(v132 + 4) = v136;
                _os_log_impl(&dword_29D9BB000, v128, v129, "HighlightAlert query for %{private}s passed invalid configuration to distribution query operation", v132, 0xCu);
                sub_29D9C7968(v133);
                MEMORY[0x29ED6E4C0](v133, -1, -1);
                MEMORY[0x29ED6E4C0](v132, -1, -1);
                sub_29D9DC0B0(v145);
              }

              else
              {
                sub_29D9DC0B0(v145);

                sub_29D9DC190(v127, type metadata accessor for HighlightAlertConfiguration);
              }

              (*(v167 + 8))(v126, v166);
              v139 = *(v165 + 8);
              v140 = v163;
              v139(v161, v163);
              (*(v158 + 8))(v164, v159);
              v139(v162, v140);
              v93 = v146;
              [v146 cancel];

              goto LABEL_29;
            }
          }

          sub_29DA334F4();
          sub_29DA33684();
          v94 = *(v76 + 8);
          v94(v69, v75);
          if (sub_29DA336D4() == 1)
          {
            v95 = v149;
            sub_29DA334F4();
          }

          else
          {
            sub_29DA334B4();
            v95 = v149;
            sub_29DA33684();
            v94(v69, v75);
          }

          sub_29DA33684();
          (*(v76 + 16))(v160, v95, v75);
          v96 = v162;
          sub_29DA33504();
          v94(v95, v75);
          v94(v77, v75);
          v97 = v164;
          v98 = v155;
          v74 = v165;
          goto LABEL_36;
        }
      }
    }

    sub_29DA34614();
    sub_29D9DBFF8(v168, v28);
    v86 = sub_29DA34634();
    v87 = sub_29DA34BA4();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v170 = v89;
      *v88 = 136380675;
      v90 = *v28;
      v91 = v28[1];

      sub_29D9DC190(v28, type metadata accessor for HighlightAlertConfiguration);
      v92 = sub_29D9EBB44(v90, v91, &v170);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_29D9BB000, v86, v87, "HighlightAlert query for %{private}s returned non-quantity primary metadata type.", v88, 0xCu);
      sub_29D9C7968(v89);
      MEMORY[0x29ED6E4C0](v89, -1, -1);
      MEMORY[0x29ED6E4C0](v88, -1, -1);
      sub_29D9DC0B0(v145);
    }

    else
    {
      sub_29D9DC0B0(v145);

      sub_29D9DC190(v28, type metadata accessor for HighlightAlertConfiguration);
    }

    (*(v167 + 8))(v38, v166);
    v93 = v146;
    [v146 cancel];

LABEL_29:
  }
}

void *sub_29D9D7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v173 = a6;
  v171 = a5;
  v165 = sub_29DA336F4();
  v164 = *(v165 - 8);
  MEMORY[0x2A1C7C4A8](v165);
  v162 = v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_29DA33754();
  v161 = *(v163 - 8);
  MEMORY[0x2A1C7C4A8](v163);
  v160 = v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29D9DC270(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v168 = v150 - v11;
  v172 = sub_29DA33964();
  v170 = *(v172 - 8);
  MEMORY[0x2A1C7C4A8](v172);
  v169 = v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9DC270(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v9);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = (v150 - v14);
  v16 = type metadata accessor for HighlightAlertSampleInfo(0);
  MEMORY[0x2A1C7C4A8](v16 - 8);
  v18 = v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for HighlightAlertConfiguration(0);
  v20 = MEMORY[0x2A1C7C4A8](v19 - 8);
  v166 = (v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x2A1C7C4A8](v20);
  v158 = (v150 - v23);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v174 = (v150 - v25);
  MEMORY[0x2A1C7C4A8](v24);
  v27 = (v150 - v26);
  v28 = sub_29DA34644();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x2A1C7C4A8](v28);
  v32 = v150 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x2A1C7C4A8](v30);
  v167 = v150 - v34;
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v157 = v150 - v36;
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v159 = v150 - v38;
  v39 = MEMORY[0x2A1C7C4A8](v37);
  v175 = v150 - v40;
  MEMORY[0x2A1C7C4A8](v39);
  v176 = v150 - v41;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v153 = v15;
  v154 = v18;
  v177 = v28;
  v178 = v29;
  v43 = a2;
  v44 = result;
  v45 = *v43;
  v46 = *(v43 + 8);
  v156 = v43;
  if (*(v43 + 16))
  {
    v47 = 0;
  }

  else
  {
    v47 = 0x7961446E65766553;
  }

  if (*(v43 + 16))
  {
    v48 = 0;
  }

  else
  {
    v48 = 0xE800000000000000;
  }

  sub_29D9D5C44(v45, v46, v47, v48, v184);
  v49 = v184[4];

  sub_29D9D6630(v184);
  sub_29DA34B34();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    sub_29DA34614();
    v62 = sub_29DA34634();
    v63 = sub_29DA34B84();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v177;
    if (v64)
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_29D9BB000, v62, v63, "HighlightAlert query operations went away unexpectedly", v66, 2u);
      MEMORY[0x29ED6E4C0](v66, -1, -1);
    }

    else
    {
    }

    return (*(v178 + 8))(v32, v65);
  }

  v51 = Strong;

  sub_29DA33B44();

  v52 = v182;
  v53 = v183;
  swift_beginAccess();
  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {

    sub_29D9DC0B0(v52);
    goto LABEL_17;
  }

  v55 = v54;

  sub_29DA33B44();

  v56 = v180[0];
  v155 = v180[1];
  v152 = v181;
  v150[1] = v49;
  if (v181 != 1)
  {
    v67 = v155;
    sub_29D9DBFB4(v180[0], v155);
    v68 = 0;
    v69 = v56;
    if (!v53)
    {
      goto LABEL_31;
    }

LABEL_26:
    v151 = v69;
    v173 = v67;
    v70 = v52;

    v71 = v176;
    sub_29DA34614();
    sub_29D9DBFF8(v156, v27);
    v72 = v52;
    v73 = sub_29DA34634();
    v74 = sub_29DA34B84();
    sub_29D9DC0B0(v52);
    if (!os_log_type_enabled(v73, v74))
    {

      sub_29D9DC0B0(v52);
      sub_29D9DC064(v151, v173, v68);
      sub_29D9DC0B0(v52);
      sub_29D9DC064(v56, v155, v152);
      sub_29D9DC190(v27, type metadata accessor for HighlightAlertConfiguration);
      v84 = *(v178 + 8);
      v86 = v71;
      return v84(v86, v177);
    }

    v75 = swift_slowAlloc();
    v175 = v56;
    v76 = v75;
    v77 = swift_slowAlloc();
    v180[0] = v77;
    *v76 = 136380931;
    v78 = *v27;
    v79 = v27[1];

    sub_29D9DC190(v27, type metadata accessor for HighlightAlertConfiguration);
    v80 = sub_29D9EBB44(v78, v79, v180);

    *(v76 + 4) = v80;
    *(v76 + 12) = 2082;
    swift_getErrorValue();
    v81 = sub_29DA35154();
    v83 = sub_29D9EBB44(v81, v82, v180);

    *(v76 + 14) = v83;
    _os_log_impl(&dword_29D9BB000, v73, v74, "HighlightAlert query operation for %{private}s returned error: %{public}s", v76, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v77, -1, -1);
    MEMORY[0x29ED6E4C0](v76, -1, -1);

    sub_29D9DC0B0(v52);
    sub_29D9DC064(v151, v173, v68);
    sub_29D9DC0B0(v52);
    sub_29D9DC064(v175, v155, v152);
    v84 = *(v178 + 8);
    v85 = &v186;
LABEL_34:
    v86 = *(v85 - 32);
    return v84(v86, v177);
  }

  v57 = v155;
  sub_29D9DC0C8(v180[0], v155, 1);
  sub_29D9DC0C8(v56, v57, 1);
  v58 = v56;
  sub_29D9C6144();
  if ((swift_dynamicCast() & 1) != 0 && v179 == 1)
  {
    v59 = v155;
    sub_29D9DC064(v56, v155, 1);
    v60 = v56;
    v61 = v59;
    goto LABEL_30;
  }

  v180[0] = v56;
  if (swift_dynamicCast() && !v179)
  {
    v60 = v56;
    v61 = v155;
LABEL_30:
    sub_29D9DC064(v60, v61, 1);
    v69 = 0;
    v67 = 0;
    v68 = 0;
    if (v53)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  v68 = 1;
  v69 = v56;
  v67 = v155;
  if (v53)
  {
    goto LABEL_26;
  }

LABEL_31:
  if (v68)
  {
    v87 = v69;

    v88 = v175;
    sub_29DA34614();
    v89 = v174;
    sub_29D9DBFF8(v156, v174);
    v90 = v69;
    v91 = v69;
    v92 = sub_29DA34634();
    v93 = sub_29DA34B84();
    sub_29D9DC064(v69, v67, 1);
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v173 = v67;
      v176 = v52;
      v95 = v94;
      v96 = swift_slowAlloc();
      v180[0] = v96;
      *v95 = 136380931;
      v97 = *v89;
      v98 = v89[1];

      sub_29D9DC190(v89, type metadata accessor for HighlightAlertConfiguration);
      v99 = sub_29D9EBB44(v97, v98, v180);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2082;
      swift_getErrorValue();
      v100 = sub_29DA35154();
      v102 = v56;
      v103 = sub_29D9EBB44(v100, v101, v180);

      *(v95 + 14) = v103;
      _os_log_impl(&dword_29D9BB000, v92, v93, "HighlightAlert quantity distribution query operation for %{private}s returned error: %{public}s", v95, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v96, -1, -1);
      MEMORY[0x29ED6E4C0](v95, -1, -1);

      v104 = v173;
      sub_29D9DC064(v91, v173, 1);
      sub_29D9DC064(v91, v104, 1);
      sub_29D9DC0B0(v176);
      sub_29D9DC064(v102, v155, v152);
      v84 = *(v178 + 8);
      v85 = &v185;
      goto LABEL_34;
    }

    sub_29D9DC064(v69, v67, 1);
    sub_29D9DC064(v69, v67, 1);
    sub_29D9DC0B0(v52);
    sub_29D9DC064(v56, v155, v152);
    sub_29D9DC190(v89, type metadata accessor for HighlightAlertConfiguration);
LABEL_45:
    v84 = *(v178 + 8);
    v86 = v88;
    return v84(v86, v177);
  }

  v151 = v69;
  if (v52)
  {
    v105 = type metadata accessor for HighlightAlertDistributionConfiguration(0);
    v106 = v171;
    v107 = v171 + *(v105 + 24);
    if ((*(v107 + 8) & 1) == 0 && *v107 && v69 && v67 && !*(v67 + 2))
    {
      v144 = v69;
      sub_29D9DC0BC(v52);
      v145 = v52;

      v88 = v157;
      sub_29DA34614();
      v146 = sub_29DA34634();
      v147 = sub_29DA34B84();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = v52;
        v149 = swift_slowAlloc();
        *v149 = 0;
        _os_log_impl(&dword_29D9BB000, v146, v147, "HighlightAlert submission skipped because data is not valid", v149, 2u);
        MEMORY[0x29ED6E4C0](v149, -1, -1);

        sub_29D9DC0B0(v148);
        sub_29D9DC0B0(v148);
        sub_29D9DC064(v144, v67, 0);
        sub_29D9DC0B0(v148);
        sub_29D9DC064(v56, v155, v152);
      }

      else
      {
        sub_29D9DC0B0(v52);
        sub_29D9DC064(v56, v155, v152);
        sub_29D9DC064(v144, v67, 0);
        sub_29D9DC0B0(v52);

        sub_29D9DC0B0(v52);
      }

      goto LABEL_45;
    }

    sub_29D9DC0BC(v52);
    sub_29D9DC0BC(v52);
    sub_29D9DC0BC(v52);
    sub_29D9DC0C8(v69, v67, 0);
    sub_29D9DC0D4();
    v108 = v154;
    sub_29DA34794();
    v109 = v153;
    v110 = v156;
    sub_29D9D9474(v108, v69, v67, v156, v106, v173, v153);
    sub_29D9DC064(v69, v67, 0);
    v111 = v168;
    sub_29DA1AF88(v108, v109, v110, v168);
    v112 = v170;
    v113 = v172;
    if ((*(v170 + 48))(v111, 1, v172) == 1)
    {
      v173 = v67;
      v114 = v52;

      sub_29D9DC120(v111, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
      v115 = v159;
      sub_29DA34614();
      v116 = v158;
      sub_29D9DBFF8(v110, v158);
      v117 = sub_29DA34634();
      v118 = sub_29DA34B84();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v175 = v56;
        v121 = v120;
        v180[0] = v120;
        *v119 = 136380675;
        v122 = *v116;
        v123 = v116[1];

        sub_29D9DC190(v116, type metadata accessor for HighlightAlertConfiguration);
        v124 = sub_29D9EBB44(v122, v123, v180);

        *(v119 + 4) = v124;
        _os_log_impl(&dword_29D9BB000, v117, v118, "HighlightAlert was unable to create a feed item for %{private}s", v119, 0xCu);
        sub_29D9C7968(v121);
        MEMORY[0x29ED6E4C0](v121, -1, -1);
        MEMORY[0x29ED6E4C0](v119, -1, -1);

        sub_29D9DC0B0(v114);
        sub_29D9DC0B0(v114);
        sub_29D9DC064(v151, v173, 0);
        sub_29D9DC0B0(v114);
        sub_29D9DC064(v175, v155, v152);
      }

      else
      {

        sub_29D9DC0B0(v114);
        sub_29D9DC0B0(v114);
        sub_29D9DC064(v151, v173, 0);
        sub_29D9DC0B0(v114);
        sub_29D9DC064(v56, v155, v152);
        sub_29D9DC190(v116, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v178 + 8))(v115, v177);
    }

    else
    {
      v134 = *(v112 + 32);
      v176 = v52;
      v134(v169, v111, v113);
      sub_29D9DC270(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
      v135 = sub_29DA34774();
      v136 = [v135 UUID];

      v137 = v160;
      sub_29DA33744();

      v138 = sub_29DA34774();
      v139 = [v138 endDate];

      v140 = v162;
      sub_29DA336C4();

      v141 = v169;
      sub_29DA15594(v169, v137, v140, v173);
      sub_29DA34B34();

      v142 = v176;
      sub_29D9DC0B0(v176);
      sub_29D9DC0B0(v142);
      sub_29D9DC064(v151, v67, 0);
      sub_29D9DC0B0(v142);
      sub_29D9DC064(v56, v155, v152);

      (*(v164 + 8))(v140, v165);
      (*(v161 + 8))(v137, v163);
      (*(v112 + 8))(v141, v172);
    }

    sub_29D9DC120(v153, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
    return sub_29D9DC190(v154, type metadata accessor for HighlightAlertSampleInfo);
  }

  else
  {
    v175 = v56;

    v125 = v167;
    sub_29DA34614();
    v126 = v166;
    sub_29D9DBFF8(v156, v166);
    v127 = sub_29DA34634();
    v128 = sub_29DA34BA4();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v180[0] = v130;
      *v129 = 136380675;
      v132 = *v126;
      v131 = v126[1];

      sub_29D9DC190(v126, type metadata accessor for HighlightAlertConfiguration);
      v133 = sub_29D9EBB44(v132, v131, v180);

      *(v129 + 4) = v133;
      _os_log_impl(&dword_29D9BB000, v127, v128, "HighlightAlert query for %{private}s returned no samples; marking this feed item for deletion.", v129, 0xCu);
      sub_29D9C7968(v130);
      MEMORY[0x29ED6E4C0](v130, -1, -1);
      MEMORY[0x29ED6E4C0](v129, -1, -1);
    }

    else
    {

      sub_29D9DC190(v126, type metadata accessor for HighlightAlertConfiguration);
    }

    v143 = (*(v178 + 8))(v125, v177);
    MEMORY[0x2A1C7C4A8](v143);
    v150[-2] = v156;

    sub_29DA33B54();
    sub_29D9DC064(v151, v67, 0);
    sub_29D9DC0B0(0);
    sub_29D9DC064(v175, v155, v152);
  }
}

uint64_t sub_29D9D93C8(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x7961446E65766553;
  }

  if (*(a2 + 16))
  {
    v5 = 0;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  sub_29D9D5C44(v2, v3, v4, v5, v10);
  v6 = v10[4];
  v7 = v10[5];

  sub_29D9D6630(v10);
  sub_29D9F8C54(&v9, v6, v7);
}

uint64_t sub_29D9D9474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  v354 = a6;
  v329 = a5;
  v360 = a4;
  v320 = a3;
  v352 = a2;
  v355 = a7;
  v272 = sub_29DA342E4();
  v270 = *(v272 - 8);
  MEMORY[0x2A1C7C4A8](v272);
  v268 = &v246 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_29DA341B4();
  v269 = *(v271 - 8);
  MEMORY[0x2A1C7C4A8](v271);
  v267 = &v246 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_29DA34384();
  v318 = *(v319 - 8);
  MEMORY[0x2A1C7C4A8](v319);
  v317 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_29DA342F4();
  v314 = *(v315 - 8);
  MEMORY[0x2A1C7C4A8](v315);
  v316 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = sub_29DA34274();
  v311 = *(v312 - 8);
  MEMORY[0x2A1C7C4A8](v312);
  v313 = &v246 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x29EDC9C68];
  sub_29D9DC270(0, &qword_2A1A2CC98, MEMORY[0x29EDC4C80], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v310 = &v246 - v15;
  v307 = sub_29DA340E4();
  v306 = *(v307 - 8);
  MEMORY[0x2A1C7C4A8](v307);
  v333 = &v246 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v303 = sub_29DA342B4();
  v302 = *(v303 - 8);
  MEMORY[0x2A1C7C4A8](v303);
  v332 = &v246 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_29DA34284();
  v300 = *(v301 - 8);
  MEMORY[0x2A1C7C4A8](v301);
  v331 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = sub_29DA34334();
  v308 = *(v309 - 8);
  MEMORY[0x2A1C7C4A8](v309);
  v330 = &v246 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9DC270(0, &qword_2A1A2CCA8, MEMORY[0x29EDC4C30], v13);
  v21 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v304 = &v246 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v305 = &v246 - v23;
  sub_29D9DC270(0, &qword_2A1A2CCA0, MEMORY[0x29EDC4C70], v13);
  v25 = MEMORY[0x2A1C7C4A8](v24 - 8);
  v281 = &v246 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v25);
  v280 = &v246 - v27;
  v284 = sub_29DA341D4();
  v283 = *(v284 - 8);
  MEMORY[0x2A1C7C4A8](v284);
  v282 = &v246 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = sub_29DA34314();
  v278 = *(v279 - 8);
  v29 = MEMORY[0x2A1C7C4A8](v279);
  v275 = &v246 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v29);
  v292 = &v246 - v31;
  sub_29D9DC270(0, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0], v13);
  v33 = MEMORY[0x2A1C7C4A8](v32 - 8);
  v274 = &v246 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v291 = &v246 - v36;
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v277 = &v246 - v38;
  MEMORY[0x2A1C7C4A8](v37);
  v290 = &v246 - v39;
  sub_29D9DC270(0, &qword_2A1A2CCB8, MEMORY[0x29EDC4B00], v13);
  v41 = MEMORY[0x2A1C7C4A8](v40 - 8);
  v299 = &v246 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v41);
  v342 = &v246 - v43;
  sub_29D9DC270(0, &qword_2A1A2DB80, MEMORY[0x29EDC4D60], v13);
  MEMORY[0x2A1C7C4A8](v44 - 8);
  v289 = &v246 - v45;
  sub_29D9DC270(0, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40], v13);
  v47 = MEMORY[0x2A1C7C4A8](v46 - 8);
  v295 = &v246 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v294 = &v246 - v50;
  MEMORY[0x2A1C7C4A8](v49);
  v341 = &v246 - v51;
  v324 = sub_29DA34234();
  v286 = *(v324 - 8);
  v52 = MEMORY[0x2A1C7C4A8](v324);
  v288 = &v246 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v52);
  v287 = &v246 - v54;
  v323 = sub_29DA34204();
  v335 = *(v323 - 8);
  MEMORY[0x2A1C7C4A8](v323);
  v322 = &v246 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_29DA34374();
  v358 = *(v346 - 8);
  v56 = MEMORY[0x2A1C7C4A8](v346);
  v327 = &v246 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x2A1C7C4A8](v56);
  v328 = &v246 - v59;
  v60 = MEMORY[0x2A1C7C4A8](v58);
  v345 = &v246 - v61;
  MEMORY[0x2A1C7C4A8](v60);
  v351 = &v246 - v62;
  v344 = sub_29DA34264();
  v343 = *(v344 - 8);
  v63 = MEMORY[0x2A1C7C4A8](v344);
  v265 = &v246 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x2A1C7C4A8](v63);
  v266 = &v246 - v66;
  v67 = MEMORY[0x2A1C7C4A8](v65);
  v273 = &v246 - v68;
  v69 = MEMORY[0x2A1C7C4A8](v67);
  v276 = &v246 - v70;
  v71 = MEMORY[0x2A1C7C4A8](v69);
  v321 = &v246 - v72;
  MEMORY[0x2A1C7C4A8](v71);
  v347 = &v246 - v73;
  v334 = sub_29DA34394();
  v325 = *(v334 - 8);
  v74 = MEMORY[0x2A1C7C4A8](v334);
  v285 = &v246 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v74);
  v336 = &v246 - v76;
  v340 = sub_29DA34224();
  v339 = *(v340 - 8);
  MEMORY[0x2A1C7C4A8](v340);
  v338 = &v246 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9DC270(0, &qword_2A1A2CC90, MEMORY[0x29EDC4D10], v13);
  v79 = MEMORY[0x2A1C7C4A8](v78 - 8);
  v293 = &v246 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v79);
  v337 = &v246 - v81;
  v298 = sub_29DA343B4();
  v297 = *(v298 - 8);
  MEMORY[0x2A1C7C4A8](v298);
  v296 = &v246 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_29DA336F4();
  v353 = *(v83 - 8);
  v84 = MEMORY[0x2A1C7C4A8](v83);
  v86 = &v246 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x2A1C7C4A8](v84);
  v89 = &v246 - v88;
  v90 = MEMORY[0x2A1C7C4A8](v87);
  v92 = &v246 - v91;
  MEMORY[0x2A1C7C4A8](v90);
  v94 = &v246 - v93;
  v95 = sub_29DA33554();
  v356 = *(v95 - 8);
  v357 = v95;
  v96 = MEMORY[0x2A1C7C4A8](v95);
  v98 = &v246 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v96);
  v359 = &v246 - v99;
  sub_29D9DC270(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
  v101 = v100;
  v102 = sub_29DA34774();
  v103 = [v102 startDate];

  sub_29DA336C4();
  v348 = v101;
  v350 = a1;
  v104 = sub_29DA34774();
  v105 = [v104 endDate];

  sub_29DA336C4();
  sub_29DA33504();
  v326 = type metadata accessor for HighlightAlertConfiguration(0);
  v106 = *(v360 + v326[8]);
  if (v106 == 2 || v106 == 1)
  {
    sub_29DA334F4();
    sub_29DA33684();
    v107 = v353;
    v108 = *(v353 + 1);
    v108(v94, v83);
    if (sub_29DA336D4() == 1)
    {
      sub_29DA334F4();
    }

    else
    {
      sub_29DA334B4();
      sub_29DA33684();
      v108(v94, v83);
    }

    sub_29DA33684();
    (*(v107 + 2))(v92, v86, v83);
    sub_29DA33504();
    v108(v86, v83);
    v108(v89, v83);
    v110 = v356;
    v109 = v357;
    (*(v356 + 8))(v98, v357);
  }

  else
  {
    v110 = v356;
    v109 = v357;
    (*(v356 + 32))(v359, v98, v357);
  }

  v111 = v360;
  v112 = v358;
  if ((*(v360 + 17) & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_29DA33B44();

  sub_29D9C706C(v361, v361[3]);
  v113 = sub_29DA33984();
  v114 = sub_29DA34774();
  v115 = [v114 sampleType];

  v116 = [v115 hk:v113 metadataValueDisplayTypeInStore:?];
  if (!v116)
  {

    sub_29D9C7968(v361);
LABEL_17:
    (*(v110 + 8))(v359, v109);
    goto LABEL_18;
  }

  v117 = [v116 objectType];

  v118 = [v117 identifier];
  v119 = sub_29DA34854();
  v121 = v120;

  sub_29D9C7968(v361);
  if (!v352)
  {
    (*(v110 + 8))(v359, v109);

LABEL_18:
    v152 = type metadata accessor for HighlightAlertDiagramInfo(0);
    return (*(*(v152 - 8) + 56))(v355, 1, 1, v152);
  }

  if (!*(v352 + 16))
  {

    goto LABEL_17;
  }

  v349 = v119;
  v350 = v121;
  v122 = type metadata accessor for HighlightAlertDistributionConfiguration(0);
  v263 = v122[5];
  v123 = v122[8];
  v262 = v122[7];
  v261 = v123;
  v124 = v326;
  v353 = v326[9];
  v125 = *(v112 + 16);
  v126 = v111 + v326[12];
  v127 = v337;
  v128 = v346;
  v348 = v112 + 16;
  v264 = v125;
  v125(v337, v126, v346);
  (*(v112 + 56))(v127, 0, 1, v128);
  v259 = v124[11];
  v129 = v124[14];
  v258 = v124[13];
  v255 = v129;
  v130 = v124[16];
  v256 = v124[15];
  v247 = v130;
  v131 = v329 + v122[11];
  v254 = *v131;
  v260 = *(v131 + 8);
  v132 = v124[18];
  v246 = v124[17];
  v257 = v132;
  (*(v325 + 104))(v336, *MEMORY[0x29EDC4D40], v334);
  v133 = *MEMORY[0x29EDC4B68];
  v134 = *(v343 + 104);
  v249 = v343 + 104;
  v248 = v134;
  v134(v347, v133, v344);
  v135 = *(v112 + 104);
  v253 = *MEMORY[0x29EDC4CA0];
  v135(v351);
  v252 = *MEMORY[0x29EDC4CB0];
  v135(v345);
  v136 = *(v335 + 13);
  v251 = *MEMORY[0x29EDC4B38];
  v335 += 104;
  v250 = v136;
  v136(v322);
  v137 = *(v286 + 13);
  v138 = v288;
  v139 = v287;
  v140 = v324;
  (v137)(v287, *MEMORY[0x29EDC4B48], v324);
  v141 = *MEMORY[0x29EDC4B50];
  v286 = v137;
  (v137)(v138, v141, v140);

  v142 = v351;
  v143 = v139;
  sub_29DA34214();
  v144 = v138;
  v145 = v289;
  sub_29D9DC1F0(v353 + v360, v289, &qword_2A1A2DB80, MEMORY[0x29EDC4D60]);
  v146 = v325;
  v147 = v334;
  v148 = (*(v325 + 48))(v145, 1);
  v353 = (v112 + 104);
  v354 = v135;
  if (v148 == 1)
  {
    sub_29D9DC120(v145, &qword_2A1A2DB80, MEMORY[0x29EDC4D60]);
    v149 = 1;
    v150 = v341;
    v151 = v347;
  }

  else
  {
    v154 = v146;
    v155 = *(v146 + 32);
    v156 = v285;
    v155(v285, v145, v147);
    (*(v154 + 16))(v336, v156, v147);
    v157 = v347;
    v248(v347, *MEMORY[0x29EDC4B78], v344);
    v158 = *MEMORY[0x29EDC4B58];
    v159 = v143;
    v160 = v144;
    v161 = v324;
    v162 = v286;
    v286(v159, v158, v324);
    v162(v160, v158, v161);
    v163 = v346;
    v164 = v354;
    (v354)(v142, v253, v346);
    (v164)(v345, v252, v163);
    v250(v322, v251, v323);
    v150 = v341;
    sub_29DA34214();
    (*(v154 + 8))(v285, v334);
    v149 = 0;
    v151 = v157;
  }

  v165 = v291;
  v166 = v321;
  v167 = *(v339 + 56);
  v336 = (v339 + 56);
  v335 = v167;
  (v167)(v150, v149, 1, v340);
  v168 = v360;
  v169 = v290;
  sub_29D9DC1F0(v360 + v255, v290, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  v170 = v343;
  v171 = *(v343 + 48);
  v172 = v344;
  if (v171(v169, 1, v344) != 1)
  {
    v179 = *(v170 + 32);
    v179(v166, v169, v172);
    v180 = v168 + v256;
    v181 = v277;
    sub_29D9DC1F0(v180, v277, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
    if (v171(v181, 1, v172) != 1)
    {
      v197 = v276;
      v179(v276, v181, v172);
      v198 = *(v170 + 16);
      v198(v151, v166, v172);
      v199 = v292;
      sub_29DA34304();
      v198(v151, v197, v172);
      v200 = v275;
      sub_29DA34304();
      v201 = v278;
      v202 = *(v278 + 16);
      v203 = v280;
      v204 = v279;
      v202(v280, v199, v279);
      v205 = *(v201 + 56);
      v205(v203, 0, 1, v204);
      v206 = v281;
      v202(v281, v200, v204);
      v205(v206, 0, 1, v204);
      v207 = v282;
      sub_29DA341C4();
      v208 = *(v201 + 8);
      v208(v200, v204);
      v208(v292, v204);
      v209 = *(v343 + 8);
      v209(v276, v172);
      v209(v321, v172);
      v196 = v342;
      (*(v283 + 32))(v342, v207, v284);
      goto LABEL_29;
    }

    sub_29D9DC120(v181, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
    (*(v170 + 16))(v151, v166, v172);
    v182 = v166;
    v183 = v292;
    sub_29DA34304();
    v184 = v278;
    v185 = v170;
    v186 = v280;
    v187 = v279;
    (*(v278 + 16))(v280, v183, v279);
    v188 = *(v184 + 56);
    v188(v186, 0, 1, v187);
    v188(v281, 1, 1, v187);
    v189 = v282;
    sub_29DA341C4();
    (*(v184 + 8))(v183, v187);
    (*(v185 + 8))(v182, v172);
LABEL_27:
    v196 = v342;
    (*(v283 + 32))(v342, v189, v284);
LABEL_29:
    v210 = MEMORY[0x29EDC4AF8];
LABEL_30:
    v211 = *v210;
    v212 = sub_29DA34194();
    v213 = *(v212 - 8);
    (*(v213 + 104))(v196, v211, v212);
    (*(v213 + 56))(v196, 0, 1, v212);
    goto LABEL_31;
  }

  v173 = v151;
  v174 = v170;
  v175 = MEMORY[0x29EDC4BE0];
  sub_29D9DC120(v169, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  sub_29D9DC1F0(v168 + v256, v165, &qword_2A1A2DB90, v175);
  if (v171(v165, 1, v172) != 1)
  {
    v190 = v273;
    (*(v170 + 32))(v273, v165, v172);
    (*(v170 + 16))(v173, v190, v172);
    v191 = v292;
    sub_29DA34304();
    v192 = v278;
    v193 = *(v278 + 56);
    v194 = v279;
    v193(v280, 1, 1, v279);
    v195 = v281;
    (*(v192 + 16))(v281, v191, v194);
    v193(v195, 0, 1, v194);
    v189 = v282;
    sub_29DA341C4();
    (*(v192 + 8))(v191, v194);
    (*(v174 + 8))(v190, v172);
    goto LABEL_27;
  }

  v176 = MEMORY[0x29EDC4BE0];
  sub_29D9DC120(v165, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  v177 = v274;
  sub_29D9DC1F0(v168 + v247, v274, &qword_2A1A2DB90, v176);
  if (v171(v177, 1, v172) != 1)
  {
    v243 = v266;
    (*(v174 + 32))(v266, v177, v172);
    v244 = *(v174 + 16);
    v244(v173, v243, v172);
    v244(v265, v243, v172);
    (*(v270 + 16))(v268, v168 + v246, v272);
    v245 = v267;
    sub_29DA341A4();
    (*(v174 + 8))(v243, v172);
    v196 = v342;
    (*(v269 + 32))(v342, v245, v271);
    v210 = MEMORY[0x29EDC4AF0];
    goto LABEL_30;
  }

  sub_29D9DC120(v177, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0]);
  v178 = sub_29DA34194();
  (*(*(v178 - 8) + 56))(v342, 1, 1, v178);
LABEL_31:
  v214 = v305;
  v215 = v346;
  v216 = v329 + v263;
  v217 = v329 + v262;
  v218 = v329 + v261;
  v219 = v360 + v259;
  v329 = v360 + v258;
  v334 = v360 + v257;
  if (v260)
  {
    v220 = 1;
  }

  else
  {
    (v354)(v351, *MEMORY[0x29EDC4CF8], v346);
    sub_29DA34294();
    v220 = 0;
  }

  v221 = sub_29DA342A4();
  (*(*(v221 - 8) + 56))(v214, v220, 1, v221);
  v222 = v294;
  v223 = v340;
  (*(v339 + 16))(v294, v338, v340);
  (v335)(v222, 0, 1, v223);
  sub_29D9DC1F0(v341, v295, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40]);
  sub_29DA34324();
  v224 = v293;
  sub_29D9DC1F0(v337, v293, &qword_2A1A2CC90, MEMORY[0x29EDC4D10]);
  v225 = v358;
  v226 = *(v358 + 48);
  if (v226(v224, 1, v215) == 1)
  {
    v227 = v328;
    (v354)(v328, *MEMORY[0x29EDC4CF0], v215);
    if (v226(v224, 1, v215) != 1)
    {
      sub_29D9DC120(v224, &qword_2A1A2CC90, MEMORY[0x29EDC4D10]);
    }
  }

  else
  {
    v228 = *(v225 + 32);
    v227 = v328;
    v228(v328, v224, v215);
  }

  (*(v300 + 16))(v331, v218, v301);
  (*(v302 + 104))(v332, *MEMORY[0x29EDC4C40], v303);
  v229 = v264;
  v264(v351, v216, v215);
  v229(v345, v217, v215);
  v229(v327, v227, v215);
  (*(v343 + 16))(v347, v219, v344);
  (*(v306 + 16))(v333, v329, v307);
  v354 = MEMORY[0x29EDC4B00];
  sub_29D9DC1F0(v342, v299, &qword_2A1A2CCB8, MEMORY[0x29EDC4B00]);
  v353 = MEMORY[0x29EDC4C30];
  sub_29D9DC1F0(v214, v304, &qword_2A1A2CCA8, MEMORY[0x29EDC4C30]);
  v230 = v308;
  v231 = v310;
  v232 = v330;
  v233 = v309;
  (*(v308 + 16))(v310, v330, v309);
  (*(v230 + 56))(v231, 0, 1, v233);
  (*(v311 + 16))(v313, v334, v312);
  (*(v314 + 104))(v316, *MEMORY[0x29EDC4C60], v315);
  (*(v318 + 104))(v317, *MEMORY[0x29EDC4D28], v319);
  v234 = v296;
  sub_29DA341F4();
  (*(v358 + 8))(v328, v346);
  (*(v230 + 8))(v232, v233);
  sub_29D9DC120(v214, &qword_2A1A2CCA8, v353);
  sub_29D9DC120(v342, &qword_2A1A2CCB8, v354);
  sub_29D9DC120(v341, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40]);
  (*(v339 + 8))(v338, v340);
  sub_29D9DC120(v337, &qword_2A1A2CC90, MEMORY[0x29EDC4D10]);
  v235 = v297;
  v236 = v298;
  (*(v297 + 104))(v234, *MEMORY[0x29EDC4B30], v298);
  v237 = v360 + v326[10];
  v238 = *v237;
  LOBYTE(v233) = *(v237 + 8);
  v239 = v355;
  v240 = v350;
  *v355 = v349;
  v239[1] = v240;
  v241 = type metadata accessor for HighlightAlertDiagramInfo(0);
  (*(v356 + 32))(v239 + v241[5], v359, v357);
  (*(v235 + 32))(v239 + v241[6], v234, v236);
  v242 = v239 + v241[7];
  *v242 = v238;
  v242[8] = v233;
  *(v239 + v241[8]) = v352;
  *(v239 + v241[9]) = v320;
  (*(*(v241 - 1) + 56))(v239, 0, 1, v241);
}

uint64_t sub_29D9DBFB4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_29D9DBFF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D9DC064(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_29D9DC070(a1, a2);
  }
}

uint64_t sub_29D9DC070(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

id sub_29D9DC0C8(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_29D9DBFB4(a1, a2);
  }
}

unint64_t sub_29D9DC0D4()
{
  result = qword_2A1A2E010;
  if (!qword_2A1A2E010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A2E010);
  }

  return result;
}

uint64_t sub_29D9DC120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9DC270(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D9DC190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D9DC1F0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D9DC270(0, a3, a4, MEMORY[0x29EDC9C68]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_29D9DC270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9DC2D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 88) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = sub_29DA34644();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DC39C, 0, 0);
}

uint64_t sub_29D9DC39C(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 40);
  sub_29DA34614();
  v3 = v2;

  v4 = sub_29DA34634();
  v5 = sub_29DA34BA4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 48);
  if (v6)
  {
    v10 = *(v1 + 40);
    v23 = *(v1 + 24);
    v24 = *(v1 + 32);
    v25 = *(v1 + 64);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446467;
    v13 = [v10 description];
    v14 = sub_29DA34854();
    v16 = v15;

    v17 = sub_29D9EBB44(v14, v16, &v26);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_29D9EBB44(v23, v24, &v26);
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: fetch alert state for %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);

    (*(v7 + 8))(v25, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v18 = swift_task_alloc();
  *(v1 + 72) = v18;
  *v18 = v1;
  v18[1] = sub_29D9DC5DC;
  v19 = *(v1 + 32);
  v20 = *(v1 + 88);
  v21 = *(v1 + 24);

  return sub_29D9DC7E4(v21, v19, v20, 0);
}

uint64_t sub_29D9DC5DC(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D9DC72C, 0, 0);
  }
}

uint64_t sub_29D9DC72C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  if (v1)
  {
    sub_29DA2458C(v1, *(v0 + 16));
  }

  else
  {
    v3 = type metadata accessor for HighlightAlertState(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D9DC7E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = v4;
  *(v5 + 304) = a3;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = sub_29DA34644();
  *(v5 + 192) = v6;
  *(v5 + 200) = *(v6 - 8);
  *(v5 + 208) = swift_task_alloc();
  sub_29D9D5FF4(0);
  *(v5 + 216) = v7;
  *(v5 + 224) = *(v7 - 8);
  *(v5 + 232) = swift_task_alloc();
  v8 = sub_29DA336F4();
  *(v5 + 240) = v8;
  *(v5 + 248) = *(v8 - 8);
  *(v5 + 256) = swift_task_alloc();
  sub_29D9E2094(0);
  *(v5 + 264) = v9;
  *(v5 + 272) = *(v9 - 8);
  *(v5 + 280) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DC9C0, 0, 0);
}

uint64_t sub_29D9DC9C0()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 18;
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v10 = *(v1[23] + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
  v7 = sub_29DA34824();
  v1[36] = v7;
  v1[2] = v1;
  v1[7] = v3;
  v1[3] = sub_29D9DCB90;
  swift_continuation_init();
  v1[17] = v6;
  v8 = sub_29D9E1E30(v1 + 14);
  sub_29D9E2104(0);
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v4 + 32))(v8, v5, v6);
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D9DE7FC;
  v1[13] = &unk_2A2460FA0;
  [v10 fetchEntriesForKey:v7 completion:?];
  (*(v4 + 8))(v8, v6);

  return MEMORY[0x2A1C73CC0](v2);
}

uint64_t sub_29D9DCB90()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_29D9DD068;
  }

  else
  {
    v2 = sub_29D9DCCA0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9DCCA0()
{
  v44 = v0;
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = sub_29D9DE8BC(v1, *(v0 + 160), *(v0 + 168), *(v0 + 304));

    if (v2)
    {
      v5 = *(v0 + 248);
      v4 = *(v0 + 256);
      v7 = *(v0 + 232);
      v6 = *(v0 + 240);
      v8 = *(v0 + 216);
      v9 = *(v0 + 176);
      sub_29DA336E4();
      v10 = *(v8 + 48);
      *v7 = v9;
      (*(v5 + 32))(&v7[v10], v4, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_29D9D5218(0, v3[2] + 1, 1, v3);
      }

      v12 = v3[2];
      v11 = v3[3];
      if (v12 >= v11 >> 1)
      {
        v3 = sub_29D9D5218((v11 > 1), v12 + 1, 1, v3);
      }

      v14 = *(v0 + 224);
      v13 = *(v0 + 232);
      v3[2] = v12 + 1;
      sub_29D9E21F0(v13, v3 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12);
    }

    v15 = *(v0 + 184);
    v1 = sub_29D9DF0BC(v3);

    sub_29DA34614();
    v16 = v1;

    v17 = v15;
    v18 = sub_29DA34634();
    v19 = sub_29DA34BA4();

    v20 = os_log_type_enabled(v18, v19);
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 192);
    if (v20)
    {
      v42 = v19;
      v24 = *(v0 + 184);
      v37 = *(v0 + 160);
      v38 = *(v0 + 168);
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v25 = 136446723;
      v26 = [v24 description];
      v40 = v23;
      v41 = v21;
      v27 = sub_29DA34854();
      v29 = v28;

      v30 = sub_29D9EBB44(v27, v29, &v43);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2081;
      *(v0 + 152) = v1;
      sub_29D9E2188(0, &unk_2A1A2CAD0, &qword_2A1A2CAE0, &off_29F359180, MEMORY[0x29EDC9C68]);
      v31 = v16;
      v32 = sub_29DA34894();
      v34 = sub_29D9EBB44(v32, v33, &v43);

      *(v25 + 14) = v34;
      *(v25 + 22) = 2081;
      *(v25 + 24) = sub_29D9EBB44(v37, v38, &v43);
      _os_log_impl(&dword_29D9BB000, v18, v42, "%{public}s: fetched effective state: %{private}s, key: %{private}s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v39, -1, -1);
      MEMORY[0x29ED6E4C0](v25, -1, -1);

      (*(v22 + 8))(v41, v40);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }
  }

  v35 = *(v0 + 8);

  return v35(v1);
}

uint64_t sub_29D9DD068()
{
  v1 = *(v0 + 288);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29D9DD118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 296) = a4;
  *(v5 + 160) = a3;
  *(v5 + 168) = v4;
  *(v5 + 144) = a1;
  *(v5 + 152) = a2;
  sub_29D9E1FD8(0, &unk_2A17D1570, MEMORY[0x29EDCA180] + 8);
  *(v5 + 176) = v6;
  *(v5 + 184) = *(v6 - 8);
  *(v5 + 192) = swift_task_alloc();
  v7 = sub_29DA34644();
  *(v5 + 200) = v7;
  *(v5 + 208) = *(v7 - 8);
  *(v5 + 216) = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DD250, 0, 0);
}

uint64_t sub_29D9DD250(uint64_t a1)
{
  v42 = v1;
  v2 = *(v1 + 168);
  sub_29DA34614();
  v3 = v2;

  v4 = sub_29DA34634();
  v5 = sub_29DA34BA4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  v9 = *(v1 + 200);
  if (v6)
  {
    v10 = *(v1 + 168);
    v37 = *(v1 + 152);
    v38 = *(v1 + 160);
    v39 = *(v1 + 216);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136446467;
    v13 = [v10 description];
    v14 = sub_29DA34854();
    v16 = v15;

    v17 = sub_29D9EBB44(v14, v16, &v41);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2081;
    *(v11 + 14) = sub_29D9EBB44(v37, v38, &v41);
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: persist alert state for %{private}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);

    (*(v7 + 8))(v39, v9);
  }

  else
  {

    (*(v7 + 8))(v8, v9);
  }

  v18 = *(v1 + 296);
  v19 = sub_29DA24BD4();
  if (v18 == 1)
  {
    *(v1 + 224) = v19;
    v20 = v19;
    v21 = swift_task_alloc();
    *(v1 + 232) = v21;
    *v21 = v1;
    v21[1] = sub_29D9DD6D4;
    v22 = *(v1 + 160);
    v23 = *(v1 + 152);

    return sub_29D9DC7E4(v23, v22, 1, v20);
  }

  else
  {
    *(v1 + 248) = v19;
    v25 = [v19 data];
    v26 = *(v1 + 168);
    if (v25)
    {
      v27 = v25;
      v28 = sub_29DA33624();
      v30 = v29;

      v40 = *(v26 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
      if (v30 >> 60 == 15)
      {
        v31 = 0;
      }

      else
      {
        sub_29D9E2040(v28, v30);
        v31 = sub_29DA33614();
        sub_29D9CFBBC(v28, v30);
      }
    }

    else
    {
      v28 = 0;
      v31 = 0;
      v40 = *(v26 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
      v30 = 0xF000000000000000;
    }

    *(v1 + 264) = v28;
    *(v1 + 272) = v31;
    *(v1 + 256) = v30;
    v32 = *(v1 + 184);
    v33 = *(v1 + 192);
    v34 = *(v1 + 176);
    v35 = sub_29DA34824();
    *(v1 + 280) = v35;
    *(v1 + 16) = v1;
    *(v1 + 24) = sub_29D9DDAB8;
    swift_continuation_init();
    *(v1 + 136) = v34;
    v36 = sub_29D9E1E30((v1 + 112));
    sub_29D9C6144();
    sub_29DA349C4();
    (*(v32 + 32))(v36, v33, v34);
    *(v1 + 80) = MEMORY[0x29EDCA5F8];
    *(v1 + 88) = 1107296256;
    *(v1 + 96) = sub_29D9DDD20;
    *(v1 + 104) = &unk_2A2460F78;
    [v40 setData:v31 forKey:v35 completion:?];
    (*(v32 + 8))(v36, v34);

    return MEMORY[0x2A1C73CC0](v1 + 16);
  }
}

uint64_t sub_29D9DD6D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 240) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2A1C73D48](sub_29D9DD84C, 0, 0);
  }
}

uint64_t sub_29D9DD84C()
{
  v1 = v0[30];
  if (!v1)
  {
    v1 = sub_29DA24BD4();
  }

  v0[31] = v1;
  v2 = [v1 data];
  v3 = v0[21];
  if (v2)
  {
    v4 = v2;
    v5 = sub_29DA33624();
    v7 = v6;

    v15 = *(v3 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
    if (v7 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      sub_29D9E2040(v5, v7);
      v8 = sub_29DA33614();
      sub_29D9CFBBC(v5, v7);
    }
  }

  else
  {
    v5 = 0;
    v8 = 0;
    v15 = *(v3 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
    v7 = 0xF000000000000000;
  }

  v0[33] = v5;
  v0[34] = v8;
  v0[32] = v7;
  v9 = v0[23];
  v10 = v0[24];
  v11 = v0[22];
  v12 = sub_29DA34824();
  v0[35] = v12;
  v0[2] = v0;
  v0[3] = sub_29D9DDAB8;
  swift_continuation_init();
  v0[17] = v11;
  v13 = sub_29D9E1E30(v0 + 14);
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v9 + 32))(v13, v10, v11);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D9DDD20;
  v0[13] = &unk_2A2460F78;
  [v15 setData:v8 forKey:v12 completion:?];
  (*(v9 + 8))(v13, v11);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D9DDAB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_29D9DDC70;
  }

  else
  {
    v2 = sub_29D9DDBC8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9DDBC8()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);

  sub_29D9CFBBC(v4, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_29D9DDC70()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  swift_willThrow();

  sub_29D9CFBBC(v2, v4);

  v6 = v0[1];

  return v6();
}

void sub_29D9DDD20(uint64_t a1, int a2, void *a3)
{
  sub_29D9C706C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_29D9E1FD8(0, &unk_2A17D1570, MEMORY[0x29EDCA180] + 8);
    sub_29DA349E4();
  }

  else if (a3)
  {
    sub_29D9E1FD8(0, &unk_2A17D1570, MEMORY[0x29EDCA180] + 8);
    v5 = a3;
    sub_29DA349D4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D9DDDD8(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = sub_29DA34644();
  v3[25] = v4;
  v3[26] = *(v4 - 8);
  v3[27] = swift_task_alloc();
  sub_29D9E1FD8(0, &unk_2A17D1570, MEMORY[0x29EDCA180] + 8);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9DDF0C, 0, 0);
}

uint64_t sub_29D9DDF0C()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v6 = v0[22];
  v7 = [objc_allocWithZone(MEMORY[0x29EDBAB00]) initWithPush:1 pull:0];
  v0[31] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x29EDBAAA8]) initWithContextSyncRequest_];
  v0[32] = v8;
  v12 = *(v4 + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_cloudSyncControl);
  MEMORY[0x29ED6D450](v6, v5);
  v9 = sub_29DA34824();
  v0[33] = v9;

  v0[2] = v0;
  v0[3] = sub_29D9DE164;
  swift_continuation_init();
  v0[17] = v3;
  v10 = sub_29D9E1E30(v0 + 14);
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v2 + 32))(v10, v1, v3);
  v0[10] = MEMORY[0x29EDCA5F8];
  v0[11] = 1107296256;
  v0[12] = sub_29D9DDD20;
  v0[13] = &unk_2A2460F50;
  [v12 syncWithRequest:v8 reason:v9 completion:?];
  (*(v2 + 8))(v10, v3);

  return MEMORY[0x2A1C73CC0](v0 + 2);
}

uint64_t sub_29D9DE164()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_29D9DE2F4;
  }

  else
  {
    v2 = sub_29D9DE274;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9DE274()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_29D9DE2F4()
{
  v33 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v5 = *(v0 + 192);
  swift_willThrow();

  sub_29DA34614();
  v6 = v5;
  v7 = v1;
  v8 = sub_29DA34634();
  v9 = sub_29DA34B84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 208);
    v31 = *(v0 + 216);
    v11 = *(v0 + 192);
    v29 = *(v0 + 272);
    v30 = *(v0 + 200);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136446466;
    v14 = [v11 description];
    v15 = sub_29DA34854();
    v17 = v16;

    v18 = sub_29D9EBB44(v15, v17, v32);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2082;
    swift_getErrorValue();
    v19 = *(*(v0 + 152) - 8);
    swift_task_alloc();
    (*(v19 + 16))();
    v20 = sub_29DA34894();
    v22 = v21;

    v23 = sub_29D9EBB44(v20, v22, v32);

    *(v12 + 14) = v23;
    _os_log_impl(&dword_29D9BB000, v8, v9, "%{public}s: received error requesting context sync push request: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);

    (*(v10 + 8))(v31, v30);
  }

  else
  {
    v25 = *(v0 + 208);
    v24 = *(v0 + 216);
    v26 = *(v0 + 200);

    (*(v25 + 8))(v24, v26);
  }

  v27 = *(v0 + 8);

  return v27();
}

id sub_29D9DE618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertStateSyncManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29D9DE734()
{
  MEMORY[0x29ED6D450](60, 0xE100000000000000);
  swift_getObjectType();
  sub_29D9E1F94();
  v0 = sub_29DA34894();
  MEMORY[0x29ED6D450](v0);

  MEMORY[0x29ED6D450](32, 0xE100000000000000);
  sub_29DA34E94();
  MEMORY[0x29ED6D450](62, 0xE100000000000000);
  return 0;
}

void sub_29D9DE7FC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_29D9C706C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_29D9E2094(0);
    v5 = a3;
    sub_29DA349D4();
  }

  else
  {
    if (a2)
    {
      sub_29D9C79FC(0, &qword_2A1A2CAC0, 0x29EDBAB50);
      sub_29DA34954();
    }

    sub_29D9E2094(0);
    sub_29DA349E4();
  }
}

void *sub_29D9DE8BC(unint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v77 = a2;
  LOBYTE(v4) = a4;
  v78 = a3;
  sub_29D9E23F0(0, &qword_2A1A2CAF8, sub_29D9D5FF4);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v80 = &v64 - v7;
  sub_29D9D5FF4(0);
  v9 = v8;
  v10 = *(v8 - 1);
  v11 = MEMORY[0x2A1C7C4A8](v8);
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v73 = &v64 - v13;
  v83 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_80;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v15 = MEMORY[0x29EDCA190];
  v71 = v10;
  v72 = v9;
  if (v14)
  {
    v16 = 0;
    v9 = (a1 & 0xC000000000000001);
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v9)
      {
        v17 = MEMORY[0x29ED6D970](v16, a1);
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_76;
      }

      if (v4 & 1) == 0 || (v20 = [v17 deviceContext], v21 = objc_msgSend(v20, sel_representsLocalDevice), v20, (v21))
      {
        sub_29DA34E44();
        sub_29DA34E74();
        sub_29DA34E84();
        sub_29DA34E54();
      }

      else
      {
      }

      ++v16;
    }

    while (v19 != v14);
    v22 = v83;
    v10 = v71;
    v9 = v72;
    v15 = MEMORY[0x29EDCA190];
    if ((v83 & 0x8000000000000000) != 0)
    {
LABEL_81:
      v54 = v22;
      a1 = sub_29DA34D34();
      v22 = v54;
      if (!a1)
      {
LABEL_82:

        v25 = MEMORY[0x29EDCA190];
        v52 = *(MEMORY[0x29EDCA190] + 16);
        if (!v52)
        {
          goto LABEL_70;
        }

        goto LABEL_83;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v22 = MEMORY[0x29EDCA190];
    if ((MEMORY[0x29EDCA190] & 0x8000000000000000) != 0)
    {
      goto LABEL_81;
    }
  }

  if ((v22 & 0x4000000000000000) != 0)
  {
    goto LABEL_81;
  }

  a1 = *(v22 + 16);
  if (!a1)
  {
    goto LABEL_82;
  }

LABEL_20:
  v4 = v22;
  v83 = v15;
  result = sub_29DA1FA90(0, a1 & ~(a1 >> 63), 0);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_104:
    __break(1u);
    return result;
  }

  v24 = 0;
  v81 = 0;
  v25 = v83;
  v26 = v4;
  v67 = v4;
  v68 = v4 & 0xC000000000000001;
  v65 = v4 + 32;
  v66 = a1;
  v74 = (v10 + 48);
  do
  {
    if (__OFADD__(v24, 1))
    {
      goto LABEL_78;
    }

    v70 = v24 + 1;
    if (v68)
    {
      v27 = MEMORY[0x29ED6D970]();
    }

    else
    {
      if (v24 >= *(v26 + 16))
      {
        goto LABEL_79;
      }

      v27 = *(v65 + 8 * v24);
    }

    v79 = v27;
    v28 = [v27 storageEntries];
    sub_29D9C79FC(0, &qword_2A1A2CAC8, 0x29EDBAB48);
    a1 = sub_29DA34954();

    v82 = v15;
    if (a1 >> 62)
    {
      v29 = sub_29DA34D34();
      v69 = v25;
      if (!v29)
      {
        goto LABEL_46;
      }

LABEL_29:
      v30 = 0;
      v4 = a1 & 0xC000000000000001;
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v4)
        {
          v31 = MEMORY[0x29ED6D970](v30, a1);
        }

        else
        {
          if (v30 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

          v31 = *(a1 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          v14 = sub_29DA34D34();
          goto LABEL_3;
        }

        v9 = [v31 key];
        v34 = sub_29DA34854();
        v36 = v35;

        if (v34 == v77 && v36 == v78)
        {
        }

        else
        {
          v38 = sub_29DA35114();

          if ((v38 & 1) == 0)
          {

            goto LABEL_32;
          }
        }

        sub_29DA34E44();
        sub_29DA34E74();
        sub_29DA34E84();
        sub_29DA34E54();
LABEL_32:
        ++v30;
        if (v33 == v29)
        {
          v39 = v82;
          v10 = v71;
          v9 = v72;
          goto LABEL_47;
        }
      }
    }

    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v25;
    if (v29)
    {
      goto LABEL_29;
    }

LABEL_46:
    v39 = MEMORY[0x29EDCA190];
LABEL_47:

    if ((v39 & 0x8000000000000000) != 0 || (v39 & 0x4000000000000000) != 0)
    {
      v40 = sub_29DA34D34();
      a1 = v80;
      if (v40)
      {
LABEL_50:
        v41 = 0;
        v42 = MEMORY[0x29EDCA190];
        while (1)
        {
          if ((v39 & 0xC000000000000001) != 0)
          {
            v43 = MEMORY[0x29ED6D970](v41, v39);
          }

          else
          {
            if (v41 >= *(v39 + 16))
            {
              goto LABEL_75;
            }

            v43 = *(v39 + 8 * v41 + 32);
          }

          v44 = v43;
          v4 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_74;
          }

          v82 = v43;
          v45 = a1;
          v46 = v81;
          sub_29D9DFB80(&v82, v76, v79, v45);
          v81 = v46;
          a1 = v80;

          if ((*v74)(a1, 1, v9) == 1)
          {
            sub_29D9E2394(a1, &qword_2A1A2CAF8, sub_29D9D5FF4);
          }

          else
          {
            v47 = a1;
            v48 = v73;
            sub_29D9E21F0(v47, v73);
            sub_29D9E21F0(v48, v75);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v42 = sub_29D9D5218(0, v42[2] + 1, 1, v42);
            }

            v50 = v42[2];
            v49 = v42[3];
            if (v50 >= v49 >> 1)
            {
              v42 = sub_29D9D5218((v49 > 1), v50 + 1, 1, v42);
            }

            v42[2] = v50 + 1;
            sub_29D9E21F0(v75, v42 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v50);
            a1 = v80;
          }

          ++v41;
          if (v4 == v40)
          {
            goto LABEL_66;
          }
        }
      }
    }

    else
    {
      v40 = *(v39 + 16);
      a1 = v80;
      if (v40)
      {
        goto LABEL_50;
      }
    }

    v42 = MEMORY[0x29EDCA190];
LABEL_66:

    v25 = v69;
    v83 = v69;
    v4 = v69[2];
    v51 = v69[3];
    if (v4 >= v51 >> 1)
    {
      sub_29DA1FA90((v51 > 1), v4 + 1, 1);
      v25 = v83;
    }

    *(v25 + 16) = v4 + 1;
    *(v25 + 8 * v4 + 32) = v42;
    v24 = v70;
    v26 = v67;
    v15 = MEMORY[0x29EDCA190];
  }

  while (v70 != v66);

  v52 = *(v25 + 16);
  if (v52)
  {
LABEL_83:
    v55 = 0;
    v53 = MEMORY[0x29EDCA190];
    while (v55 < *(v25 + 16))
    {
      v56 = *(v25 + 32 + 8 * v55);
      v57 = *(v56 + 16);
      v58 = v53[2];
      v59 = v58 + v57;
      if (__OFADD__(v58, v57))
      {
        goto LABEL_100;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || v59 > v53[3] >> 1)
      {
        if (v58 <= v59)
        {
          v60 = v58 + v57;
        }

        else
        {
          v60 = v58;
        }

        result = sub_29D9D5218(result, v60, 1, v53);
        v53 = result;
      }

      if (*(v56 + 16))
      {
        if ((v53[3] >> 1) - v53[2] < v57)
        {
          goto LABEL_102;
        }

        swift_arrayInitWithCopy();

        if (v57)
        {
          v61 = v53[2];
          v62 = __OFADD__(v61, v57);
          v63 = v61 + v57;
          if (v62)
          {
            goto LABEL_103;
          }

          v53[2] = v63;
        }
      }

      else
      {

        if (v57)
        {
          goto LABEL_101;
        }
      }

      if (v52 == ++v55)
      {
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_70:
  v53 = MEMORY[0x29EDCA190];
LABEL_71:

  return v53;
}

id sub_29D9DF0BC(uint64_t a1)
{
  sub_29D9D5FF4(0);
  v111 = v2;
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v100 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v109 = (&v97 - v7);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v110 = &v97 - v9;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v107 = (&v97 - v11);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = (&v97 - v13);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v17 = &v97 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v97 - v18;
  sub_29D9E23F0(0, &qword_2A1A2CAF8, sub_29D9D5FF4);
  v21 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v23 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v97 - v24;
  v26 = *(a1 + 16);
  v106 = v14;
  v98 = a1;
  if (!v26)
  {
    (*(v3 + 56))(&v97 - v24, 1, 1, v111);
    goto LABEL_5;
  }

  v97 = &v97 - v24;
  v99 = v23;
  v103 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  sub_29D9E2254(v103, v19);
  if (v26 == 1)
  {
LABEL_3:
    v25 = v97;
    sub_29D9E21F0(v19, v97);
    (*(v3 + 56))(v25, 0, 1, v111);
    v23 = v99;
LABEL_5:
    sub_29D9E2314(v25, v23);
    v27 = (*(v3 + 48))(v23, 1, v111);
    v28 = v107;
    if (v27 == 1)
    {
      return 0;
    }

    sub_29D9E21F0(v23, v14);
    v105 = *v14;
    v30 = *(v111 + 48);
    v31 = sub_29DA336F4();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v34 = v14 + v30;
    v35 = v33;
    v103 = v32 + 8;
    v33(v34, v31);
    v36 = MEMORY[0x29EDCA190];
    v108 = v31;
    v104 = v3;
    if (v26)
    {
      v99 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v37 = v98 + v99;
      v102 = *(v3 + 72);
      while (1)
      {
        v39 = v35;
        v40 = v110;
        sub_29D9E2254(v37, v110);
        v41 = v40;
        v42 = v109;
        sub_29D9E2254(v41, v109);
        v43 = *v42;
        v44 = [*v42 eventUUID];

        if (v44)
        {
          v45 = sub_29DA34854();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0;
        }

        v48 = [v105 eventUUID];
        if (!v48)
        {
          break;
        }

        v49 = v48;
        v50 = sub_29DA34854();
        v52 = v51;

        v53 = v109 + *(v111 + 48);
        if (!v47)
        {
          v28 = v107;
          if (!v52)
          {
            goto LABEL_25;
          }

          goto LABEL_10;
        }

        if (!v52)
        {
          v28 = v107;
LABEL_10:

          v31 = v108;
          v35 = v39;
          v39(v53, v108);
          goto LABEL_11;
        }

        if (v45 == v50 && v47 == v52)
        {

          v28 = v107;
LABEL_25:
          v31 = v108;
          v35 = v39;
          v39(v53, v108);
LABEL_26:
          sub_29D9E21F0(v110, v100);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v112 = v36;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_29DA1FAB0(0, *(v36 + 16) + 1, 1);
            v35 = v39;
            v36 = v112;
          }

          v56 = *(v36 + 16);
          v55 = *(v36 + 24);
          if (v56 >= v55 >> 1)
          {
            sub_29DA1FAB0((v55 > 1), v56 + 1, 1);
            v35 = v39;
            v36 = v112;
          }

          *(v36 + 16) = v56 + 1;
          v38 = v102;
          sub_29D9E21F0(v100, v36 + v99 + v56 * v102);
          v14 = v106;
          goto LABEL_12;
        }

        v57 = sub_29DA35114();

        v31 = v108;
        v35 = v39;
        v39(v53, v108);
        v28 = v107;
        if (v57)
        {
          goto LABEL_26;
        }

LABEL_11:
        sub_29D9E22B8(v110);
        v38 = v102;
LABEL_12:
        v37 += v38;
        if (!--v26)
        {
          goto LABEL_33;
        }
      }

      v53 = v109 + *(v111 + 48);
      if (!v47)
      {
        goto LABEL_25;
      }

      goto LABEL_10;
    }

LABEL_33:
    v58 = *(v36 + 16);
    if (v58)
    {
      v112 = MEMORY[0x29EDCA190];
      sub_29DA34E64();
      v59 = *(v104 + 80);
      v110 = v36;
      v60 = v36 + ((v59 + 32) & ~v59);
      v61 = *(v104 + 72);
      do
      {
        sub_29D9E2254(v60, v14);
        sub_29D9E21F0(v14, v28);
        v35(v28 + *(v111 + 48), v31);
        sub_29DA34E44();
        sub_29DA34E74();
        v31 = v108;
        sub_29DA34E84();
        sub_29DA34E54();
        v60 += v61;
        --v58;
      }

      while (v58);

      v62 = v112;
    }

    else
    {

      v62 = MEMORY[0x29EDCA190];
    }

    v111 = v62;
    result = [objc_allocWithZone(HighlightAlertCodableState) init];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v29 = result;
    [result mergeFrom_];
    if (v111 >> 62)
    {
      goto LABEL_78;
    }

    v110 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v110)
    {
      goto LABEL_79;
    }

    goto LABEL_50;
  }

  v63 = 1;
  v29 = 0x29F359000;
  v104 = v3;
  v105 = v19;
  v101 = v26;
  v64 = v107;
  while (!__OFADD__(v63, 1))
  {
    v108 = v63 + 1;
    sub_29D9E2254(v103 + *(v3 + 72) * v63, v17);
    sub_29D9E2254(v19, v14);
    v65 = *v14;
    v66 = v111;
    v67 = *(v111 + 48);
    [*v14 *(v29 + 3312)];
    v69 = v68;

    sub_29D9E2254(v17, v64);
    v70 = *v64;
    v71 = *(v66 + 48);
    [*v64 *(v29 + 3312)];
    v73 = v72;

    v74 = sub_29DA336F4();
    v75 = *(*(v74 - 8) + 8);
    v75(v64 + v71, v74);
    v75(v14 + v67, v74);
    if (v69 == v73)
    {
      v76 = v105;
      v77 = sub_29DA336A4();
      v26 = v101;
      v19 = v76;
      if ((v77 & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      sub_29D9E2254(v105, v14);
      v78 = *v14;
      v102 = *(v66 + 48);
      [v78 eventDate];
      v80 = v79;

      sub_29D9E2254(v17, v64);
      v81 = *v64;
      v82 = *(v66 + 48);
      [*v64 eventDate];
      v84 = v83;

      v75(v64 + v82, v74);
      v75(v14 + v102, v74);
      v26 = v101;
      v19 = v105;
      if (v80 >= v84)
      {
LABEL_45:
        sub_29D9E22B8(v17);
        goto LABEL_39;
      }
    }

    sub_29D9E22B8(v19);
    sub_29D9E21F0(v17, v19);
LABEL_39:
    v3 = v104;
    ++v63;
    v14 = v106;
    v29 = 0x29F359000uLL;
    if (v108 == v26)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  v110 = sub_29DA34D34();
  if (v110)
  {
LABEL_50:
    v86 = 0;
    v87 = v111 & 0xC000000000000001;
    v88 = v111 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v87)
      {
        v90 = MEMORY[0x29ED6D970](v86, v111);
      }

      else
      {
        if (v86 >= *(v88 + 16))
        {
          goto LABEL_77;
        }

        v90 = *(v111 + 8 * v86 + 32);
      }

      v91 = v90;
      v92 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_76;
      }

      if ([v29 hasExpirationDate] && objc_msgSend(v91, sel_hasExpirationDate))
      {
        break;
      }

      if ([v91 hasExpirationDate])
      {
        [v91 expirationDate];
LABEL_65:
        [v29 setExpirationDate_];
      }

      if ([v91 hasAcknowledged])
      {
        if ([v29 acknowledged])
        {
          v96 = 1;
        }

        else
        {
          v96 = [v91 acknowledged];
        }

        [v29 setAcknowledged_];
      }

      if ([v91 hasDismissed])
      {
        if ([v29 dismissed])
        {
          v89 = 1;
        }

        else
        {
          v89 = [v91 dismissed];
        }

        [v29 setDismissed_];
      }

      ++v86;
      if (v92 == v110)
      {
        goto LABEL_79;
      }
    }

    [v29 expirationDate];
    v94 = v93;
    [v91 expirationDate];
    if (v95 >= v94)
    {
      v95 = v94;
    }

    goto LABEL_65;
  }

LABEL_79:

  return v29;
}

uint64_t sub_29D9DFB80@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v135 = a4;
  v125 = a3;
  v6 = sub_29DA34644();
  v133 = *(v6 - 8);
  v134 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v132 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v131 = v124 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v128 = v124 - v11;
  sub_29D9E23F0(0, &qword_2A1A2D2E0, MEMORY[0x29EDC3990]);
  v126 = v12;
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v130 = v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = v124 - v15;
  v17 = sub_29DA33B04();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v17);
  v127 = v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v129 = v124 - v21;
  v22 = *a1;
  v23 = [*a1 value];
  v24 = sub_29DA33624();
  v26 = v25;

  v27 = objc_allocWithZone(HighlightAlertCodableState);
  v28 = sub_29DA33614();
  sub_29D9CFBD0(v24, v26);
  v29 = [v27 initWithData_];

  if (!v29)
  {
    sub_29DA34614();
    v33 = a2;
    v34 = v22;
    v35 = sub_29DA34634();
    v36 = sub_29DA34B84();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v136 = v38;
      *v37 = 136446467;
      v39 = [v33 description];
      v40 = sub_29DA34854();
      v42 = v41;

      v43 = sub_29D9EBB44(v40, v42, &v136);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2081;
      v44 = [v34 key];
      v45 = sub_29DA34854();
      v47 = v46;

      v48 = sub_29D9EBB44(v45, v47, &v136);

      *(v37 + 14) = v48;
      _os_log_impl(&dword_29D9BB000, v35, v36, "%{public}s: unable to decode state for key: %{private}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v38, -1, -1);
      MEMORY[0x29ED6E4C0](v37, -1, -1);
    }

    (*(v133 + 8))(v132, v134);
    goto LABEL_20;
  }

  v30 = a2;
  v31 = sub_29D9C79FC(0, &qword_2A1A2CAE0, &off_29F359180);
  v32 = sub_29D9E2444();
  v132 = v31;
  v124[1] = v32;
  sub_29DA33DE4();
  if (v18[6](v16, 1, v17) == 1)
  {
    sub_29D9E2394(v16, &qword_2A1A2D2E0, MEMORY[0x29EDC3990]);
    goto LABEL_17;
  }

  v49 = v129;
  v18[4](v129, v16, v17);
  v50 = v130;
  sub_29DA33AD4();
  (v18[7])(v50, 0, 1, v17);
  v51 = sub_29DA33AC4();
  sub_29D9E2394(v50, &qword_2A1A2D2E0, MEMORY[0x29EDC3990]);
  if ((v51 & 1) == 0)
  {
    (v18[1])(v49, v17);
LABEL_17:
    v90 = v131;
    sub_29DA34614();
    v91 = v30;
    v92 = v29;
    v93 = v22;
    v94 = sub_29DA34634();
    v95 = sub_29DA34B84();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v136 = v129;
      *v96 = 136446979;
      v97 = [v91 description];
      v98 = sub_29DA34854();
      v128 = v93;
      v100 = v99;

      v101 = sub_29D9EBB44(v98, v100, &v136);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2082;
      sub_29DA33DE4();
      v102 = sub_29DA34894();
      v104 = sub_29D9EBB44(v102, v103, &v136);

      *(v96 + 14) = v104;
      *(v96 + 22) = 2082;
      LOBYTE(v100) = v95;
      v105 = v127;
      sub_29DA33AD4();
      sub_29D9E24AC(&unk_2A17D1580, MEMORY[0x29EDC3990], MEMORY[0x29EDC39B8]);
      v106 = sub_29DA350F4();
      v108 = v107;
      (v18[1])(v105, v17);
      v109 = sub_29D9EBB44(v106, v108, &v136);

      *(v96 + 24) = v109;
      *(v96 + 32) = 2081;
      v110 = [v128 key];
      v111 = sub_29DA34854();
      v113 = v112;

      v114 = sub_29D9EBB44(v111, v113, &v136);

      *(v96 + 34) = v114;
      _os_log_impl(&dword_29D9BB000, v94, v100, "%{public}s: codable state has incompatible version: %{public}s, current code version: %{public}s, key: %{private}s", v96, 0x2Au);
      v115 = v129;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v115, -1, -1);
      MEMORY[0x29ED6E4C0](v96, -1, -1);

      (*(v133 + 8))(v131, v134);
    }

    else
    {

      (*(v133 + 8))(v90, v134);
    }

LABEL_20:
    sub_29D9D5FF4(0);
    return (*(*(v116 - 8) + 56))(v135, 1, 1, v116);
  }

  v131 = v18;
  v132 = v17;
  v52 = v128;
  sub_29DA34614();
  v53 = v125;
  v54 = v30;
  v55 = v29;
  v56 = v22;
  v57 = sub_29DA34634();
  v58 = sub_29DA34BA4();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v130 = v56;
    v60 = v59;
    v127 = swift_slowAlloc();
    v136 = v127;
    *v60 = 136447235;
    v61 = [v54 description];
    v62 = sub_29DA34854();
    v64 = v63;

    v65 = sub_29D9EBB44(v62, v64, &v136);

    *(v60 + 4) = v65;
    LODWORD(v126) = v58;
    *(v60 + 12) = 2081;
    v66 = v55;
    v67 = [v66 description];
    v68 = sub_29DA34854();
    v70 = v69;

    v71 = sub_29D9EBB44(v68, v70, &v136);

    *(v60 + 14) = v71;
    *(v60 + 22) = 2081;
    v72 = [v130 key];
    v73 = sub_29DA34854();
    v75 = v74;

    v76 = sub_29D9EBB44(v73, v75, &v136);

    *(v60 + 24) = v76;
    *(v60 + 32) = 2082;
    v77 = [v53 deviceContext];
    [v77 type];

    v78 = HKStringForDeviceType();
    v79 = sub_29DA34854();
    v81 = v80;

    v82 = sub_29D9EBB44(v79, v81, &v136);

    *(v60 + 34) = v82;
    *(v60 + 42) = 2082;
    v83 = [v53 deviceContext];
    v84 = [v83 representsLocalDevice];

    if (v84)
    {
      v85 = 1702195828;
    }

    else
    {
      v85 = 0x65736C6166;
    }

    if (v84)
    {
      v86 = 0xE400000000000000;
    }

    else
    {
      v86 = 0xE500000000000000;
    }

    v87 = sub_29D9EBB44(v85, v86, &v136);

    *(v60 + 44) = v87;
    _os_log_impl(&dword_29D9BB000, v57, v126, "%{public}s: found state: %{private}s, key: %{private}s, device type: %{public}s, represents local device: %{public}s", v60, 0x34u);
    v88 = v127;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v88, -1, -1);
    v89 = v60;
    v56 = v130;
    MEMORY[0x29ED6E4C0](v89, -1, -1);

    (*(v133 + 8))(v128, v134);
  }

  else
  {

    (*(v133 + 8))(v52, v134);
  }

  v118 = v129;
  sub_29D9D5FF4(0);
  v120 = v119;
  v121 = v135;
  *v135 = v55;
  v122 = v55;
  v123 = [v56 modificationDate];
  sub_29DA336C4();

  (*(v131 + 1))(v118, v132);
  return (*(*(v120 - 8) + 56))(v121, 0, 1, v120);
}

uint64_t sub_29D9E07AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  sub_29D9E1FD8(0, &qword_2A1A2CB60, MEMORY[0x29EDC9A98]);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = sub_29DA34644();
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9E08F0, 0, 0);
}

uint64_t sub_29D9E08F0(uint64_t a1)
{
  v27 = v1;
  v2 = v1[22];
  sub_29DA34614();
  v3 = v2;
  v4 = sub_29DA34634();
  v5 = sub_29DA34BA4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[30];
  v9 = v1[26];
  v8 = v1[27];
  if (v6)
  {
    v10 = v1[22];
    v25 = v1[30];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136446210;
    v13 = [v10 description];
    v14 = sub_29DA34854();
    v16 = v15;

    v17 = sub_29D9EBB44(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: start observing context sync store", v11, 0xCu);
    sub_29D9C7968(v12);
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);

    v18 = *(v8 + 8);
    v18(v25, v9);
  }

  else
  {

    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  v1[31] = v18;
  v20 = v1[24];
  v19 = v1[25];
  v21 = v1[23];
  v22 = *(v1[22] + OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore);
  [v22 setDelegate_];
  v1[2] = v1;
  v1[7] = v1 + 33;
  v1[3] = sub_29D9E0BF0;
  swift_continuation_init();
  v1[17] = v21;
  v23 = sub_29D9E1E30(v1 + 14);
  sub_29D9C6144();
  sub_29DA349C4();
  (*(v20 + 32))(v23, v19, v21);
  v1[10] = MEMORY[0x29EDCA5F8];
  v1[11] = 1107296256;
  v1[12] = sub_29D9E1174;
  v1[13] = &unk_2A2460F28;
  [v22 startObservingDeviceKeyValueStoreWithCompletion_];
  (*(v20 + 8))(v23, v21);

  return MEMORY[0x2A1C73CC0](v1 + 2);
}

uint64_t sub_29D9E0BF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_29D9E0EF8;
  }

  else
  {
    v2 = sub_29D9E0D00;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9E0D00(uint64_t a1)
{
  v23 = v1;
  v2 = v1[22];
  sub_29DA34614();
  v3 = v2;
  v4 = sub_29DA34634();
  v5 = sub_29DA34BA4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[31];
  v8 = v1[29];
  v9 = v1[26];
  if (v6)
  {
    v10 = v1[22];
    v21 = v1[31];
    v11 = swift_slowAlloc();
    v20 = v8;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446210;
    v13 = [v10 description];
    v14 = sub_29DA34854();
    v16 = v15;

    v17 = sub_29D9EBB44(v14, v16, &v22);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: now observing context sync store", v11, 0xCu);
    sub_29D9C7968(v12);
    MEMORY[0x29ED6E4C0](v12, -1, -1);
    MEMORY[0x29ED6E4C0](v11, -1, -1);

    v21(v20, v9);
  }

  else
  {

    v7(v8, v9);
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_29D9E0EF8()
{
  v28 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 176);
  swift_willThrow();
  sub_29DA34614();
  v3 = v2;
  v4 = v1;
  v5 = sub_29DA34634();
  v6 = sub_29DA34B84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 256);
    v25 = *(v0 + 224);
    v26 = *(v0 + 248);
    v24 = *(v0 + 208);
    v8 = *(v0 + 176);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136446466;
    v11 = [v8 description];
    v12 = sub_29DA34854();
    v14 = v13;

    v15 = sub_29D9EBB44(v12, v14, v27);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v16 = sub_29DA35154();
    v18 = sub_29D9EBB44(v16, v17, v27);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_29D9BB000, v5, v6, "%{public}s: unable to start observing context sync store: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v10, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);

    v26(v25, v24);
  }

  else
  {
    v19 = *(v0 + 248);
    v20 = *(v0 + 224);
    v21 = *(v0 + 208);

    v19(v20, v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

void sub_29D9E1174(uint64_t a1, char a2, void *a3)
{
  sub_29D9C706C((a1 + 32), *(a1 + 56));
  sub_29D9E1FD8(0, &qword_2A1A2CB60, MEMORY[0x29EDC9A98]);
  if (a3)
  {
    v4 = a3;
    sub_29DA349D4();
  }

  else
  {
    sub_29DA349E4();
  }
}

uint64_t sub_29D9E1224(unint64_t a1)
{
  v110 = a1;
  v119 = sub_29DA336F4();
  v2 = *(v119 - 8);
  MEMORY[0x2A1C7C4A8](v119);
  v118 = v103 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v104 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v109 = v103 - v9;
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = v103 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v103 - v13;
  sub_29DA34614();
  v15 = v1;
  v16 = sub_29DA34634();
  v17 = sub_29DA34BA4();

  v18 = os_log_type_enabled(v16, v17);
  v120 = v4;
  v105 = v5;
  v127 = v15;
  v121 = v12;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v128 = v20;
    *v19 = 136446210;
    v21 = [v127 description];
    v22 = sub_29DA34854();
    v23 = v2;
    v25 = v24;

    v4 = v120;
    v26 = sub_29D9EBB44(v22, v25, &v128);
    v2 = v23;

    *(v19 + 4) = v26;
    _os_log_impl(&dword_29D9BB000, v16, v17, "%{public}s: received device key value store update", v19, 0xCu);
    sub_29D9C7968(v20);
    v27 = v20;
    v12 = v121;
    MEMORY[0x29ED6E4C0](v27, -1, -1);
    MEMORY[0x29ED6E4C0](v19, -1, -1);

    v28 = *(v105 + 8);
    v29 = v4;
  }

  else
  {
    v29 = v4;

    v28 = *(v5 + 8);
  }

  v28(v14, v4);
  result = swift_unknownObjectWeakLoadStrong();
  v32 = v110;
  if (result)
  {
    v103[1] = result;
    v129 = MEMORY[0x29EDCA1A0];
    if (v110 >> 62)
    {
      goto LABEL_48;
    }

    v33 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
    v117 = v28;
    if (v33)
    {
      v34 = 0;
      v112 = v32 & 0xC000000000000001;
      v108 = v32 & 0xFFFFFFFFFFFFFF8;
      v107 = v32 + 32;
      v126 = v105 + 8;
      v116 = (v2 + 8);
      *&v31 = 136446210;
      v106 = v31;
      *&v31 = 136446723;
      v115 = v31;
      v111 = v33;
      while (1)
      {
        if (v112)
        {
          v35 = MEMORY[0x29ED6D970](v34, v32);
          v36 = __OFADD__(v34, 1);
          v37 = v34 + 1;
          if (v36)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v34 >= *(v108 + 16))
          {
            goto LABEL_46;
          }

          v35 = *(v107 + 8 * v34);
          v36 = __OFADD__(v34, 1);
          v37 = v34 + 1;
          if (v36)
          {
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            v33 = sub_29DA34D34();
            goto LABEL_7;
          }
        }

        v114 = v37;
        v38 = v35;
        v39 = [v35 deviceContext];
        v40 = [v39 representsLocalDevice];

        v113 = v38;
        if (v40)
        {
          v2 = v109;
          sub_29DA34614();
          v41 = v127;
          v42 = sub_29DA34634();
          v43 = sub_29DA34BA4();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v45 = swift_slowAlloc();
            v128 = v45;
            *v44 = v106;
            v46 = [v41 description];
            v47 = sub_29DA34854();
            v49 = v48;

            v50 = v47;
            v12 = v121;
            v51 = sub_29D9EBB44(v50, v49, &v128);

            *(v44 + 4) = v51;
            _os_log_impl(&dword_29D9BB000, v42, v43, "%{public}s: dropping update from local device", v44, 0xCu);
            sub_29D9C7968(v45);
            MEMORY[0x29ED6E4C0](v45, -1, -1);
            v52 = v44;
            v32 = v110;
            MEMORY[0x29ED6E4C0](v52, -1, -1);
          }

          v28(v2, v29);
        }

        else
        {
          v53 = [v38 storageEntries];
          sub_29D9C79FC(0, &qword_2A1A2CAC8, 0x29EDBAB48);
          v54 = sub_29DA34954();

          v55 = v54;
          if (v54 >> 62)
          {
            v56 = sub_29DA34D34();
            v55 = v54;
            v57 = v113;
            v34 = v114;
            if (!v56)
            {
LABEL_34:

              goto LABEL_11;
            }
          }

          else
          {
            v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v57 = v113;
            v34 = v114;
            if (!v56)
            {
              goto LABEL_34;
            }
          }

          if (v56 < 1)
          {
            goto LABEL_47;
          }

          v58 = 0;
          v123 = v55 & 0xC000000000000001;
          v124 = v56;
          v125 = v55;
          do
          {
            if (v123)
            {
              v63 = MEMORY[0x29ED6D970](v58);
            }

            else
            {
              v63 = *(v55 + 8 * v58 + 32);
            }

            v64 = v63;
            sub_29DA34614();
            v65 = v127;
            v66 = v64;
            v67 = sub_29DA34634();
            v2 = sub_29DA34BA4();

            if (os_log_type_enabled(v67, v2))
            {
              v68 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              v128 = v122;
              *v68 = v115;
              v69 = [v65 description];
              v70 = sub_29DA34854();
              v72 = v71;

              v73 = sub_29D9EBB44(v70, v72, &v128);

              *(v68 + 4) = v73;
              *(v68 + 12) = 2081;
              v74 = [v66 key];
              v75 = sub_29DA34854();
              v77 = v76;

              v78 = sub_29D9EBB44(v75, v77, &v128);

              *(v68 + 14) = v78;
              *(v68 + 22) = 2082;
              v79 = [v66 modificationDate];
              v80 = v118;
              sub_29DA336C4();

              sub_29D9E24AC(&qword_2A1A2D350, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
              v81 = v119;
              v82 = sub_29DA350F4();
              v84 = v83;
              (*v116)(v80, v81);
              v85 = sub_29D9EBB44(v82, v84, &v128);

              *(v68 + 24) = v85;
              _os_log_impl(&dword_29D9BB000, v67, v2, "%{public}s: entry updated for %{private}s, modification date: %{public}s", v68, 0x20u);
              v86 = v122;
              swift_arrayDestroy();
              MEMORY[0x29ED6E4C0](v86, -1, -1);
              v87 = v68;
              v12 = v121;
              MEMORY[0x29ED6E4C0](v87, -1, -1);

              v29 = v120;
              v28 = v117;
              (v117)(v12);
            }

            else
            {

              v28(v12, v29);
            }

            ++v58;
            v59 = [v66 key];
            v60 = sub_29DA34854();
            v62 = v61;

            sub_29D9F8C54(&v128, v60, v62);

            v55 = v125;
          }

          while (v124 != v58);

          v32 = v110;
        }

        v34 = v114;
LABEL_11:
        if (v34 == v111)
        {
          v88 = v129;
          goto LABEL_37;
        }
      }
    }

    v88 = MEMORY[0x29EDCA1A0];
LABEL_37:
    v89 = v104;
    if (*(v88 + 16))
    {
      sub_29DA34614();
      v90 = v127;

      v91 = sub_29DA34634();
      v92 = sub_29DA34BA4();

      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v128 = v94;
        *v93 = 136446467;
        v95 = [v90 description];
        v96 = sub_29DA34854();
        v98 = v97;

        v99 = sub_29D9EBB44(v96, v98, &v128);

        *(v93 + 4) = v99;
        *(v93 + 12) = 2081;
        v100 = sub_29DA34AB4();
        v102 = sub_29D9EBB44(v100, v101, &v128);

        *(v93 + 14) = v102;
        _os_log_impl(&dword_29D9BB000, v91, v92, "%{public}s: sending update delegate changed keys: %{private}s", v93, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v94, -1, -1);
        MEMORY[0x29ED6E4C0](v93, -1, -1);

        v117(v89, v29);
      }

      else
      {

        v28(v89, v29);
      }

      sub_29D9CD45C(v88);
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *sub_29D9E1E30(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_29D9E1EAC(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_updateDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(MEMORY[0x29EDBAB58]);
  v4 = sub_29DA34824();
  v5 = [v3 initWithProtectionCategory:0 domain:v4 healthStore:a1];

  *&v1[OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_contextSyncStore] = v5;
  v6 = [objc_allocWithZone(MEMORY[0x29EDBAA90]) initWithHealthStore_];
  *&v1[OBJC_IVAR____TtC15HighlightAlerts30HighlightAlertStateSyncManager_cloudSyncControl] = v6;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for HighlightAlertStateSyncManager();
  return objc_msgSendSuper2(&v8, sel_init);
}

unint64_t sub_29D9E1F94()
{
  result = qword_2A1A2CFA8[0];
  if (!qword_2A1A2CFA8[0])
  {
    type metadata accessor for HighlightAlertStateSyncManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2A1A2CFA8);
  }

  return result;
}

void sub_29D9E1FD8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_29D9C6144();
    v4 = sub_29DA349F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29D9E2040(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_29D9E2094(uint64_t a1)
{
  if (!qword_2A1A2CB68)
  {
    sub_29D9E2104(255);
    sub_29D9C6144();
    v1 = sub_29DA349F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CB68);
    }
  }
}

void sub_29D9E2104(uint64_t a1)
{
  if (!qword_2A1A2CB90)
  {
    sub_29D9E2188(255, &qword_2A1A2CB98, &qword_2A1A2CAC0, 0x29EDBAB50, MEMORY[0x29EDC9A40]);
    v1 = sub_29DA34CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CB90);
    }
  }
}

void sub_29D9E2188(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D9C79FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D9E21F0(uint64_t a1, uint64_t a2)
{
  sub_29D9D5FF4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E2254(uint64_t a1, uint64_t a2)
{
  sub_29D9D5FF4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E22B8(uint64_t a1)
{
  sub_29D9D5FF4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29D9E2314(uint64_t a1, uint64_t a2)
{
  sub_29D9E23F0(0, &qword_2A1A2CAF8, sub_29D9D5FF4);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E2394(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9E23F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D9E23F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29D9E2444()
{
  result = qword_2A1A2CAE8;
  if (!qword_2A1A2CAE8)
  {
    sub_29D9C79FC(255, &qword_2A1A2CAE0, &off_29F359180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CAE8);
  }

  return result;
}

uint64_t sub_29D9E24AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29D9E25CC(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D9E5DE8(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v87 = &v72 - v4;
  sub_29D9E5DE8(0, &qword_2A1A2CC78, MEMORY[0x29EDC4FD0], v2);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v85 = &v72 - v6;
  sub_29D9E5DB4(0);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v83 = &v72 - v10;
  sub_29D9E5E4C(0);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v82 = &v72 - v14;
  v15 = sub_29DA345B4();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v92 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29DA34064();
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v78 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29DA340A4();
  v75 = *(v19 - 8);
  v76 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v77 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_29DA34044();
  v73 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29DA34514();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v88 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v89 = &v72 - v26;
  sub_29D9E4C44(0);
  v28 = MEMORY[0x2A1C7C4A8](v27 - 8);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v72 - v31;
  v33 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  v34 = *(v33 - 1);
  MEMORY[0x2A1C7C4A8](v33);
  v36 = (&v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = a1;
  v37 = *&a1[qword_2A1A2CD70];
  v38 = *(*v37 + *MEMORY[0x29EDC9DE8] + 16);
  v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v37 + v39));
  sub_29D9E5E80(v37 + v38, v32, sub_29D9E4C44);
  os_unfair_lock_unlock((v37 + v39));
  v40 = *(v34 + 48);
  if (v40(v32, 1, v33) == 1)
  {
    v41 = sub_29D9E4C44;
    v42 = v32;
LABEL_5:
    sub_29D9E5EE8(v42, v41);
    return 0;
  }

  sub_29D9E5C3C(v32, v36);
  os_unfair_lock_lock((v37 + v39));
  sub_29D9E5E80(v37 + v38, v30, sub_29D9E4C44);
  v43 = v40(v30, 1, v33);
  sub_29D9E5EE8(v30, sub_29D9E4C44);
  os_unfair_lock_unlock((v37 + v39));
  if (v43 == 1)
  {
    v41 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
    v42 = v36;
    goto LABEL_5;
  }

  v45 = v33[7];
  (*(v73 + 104))(v22, *MEMORY[0x29EDC48D0], v74);
  (*(v75 + 104))(v77, *MEMORY[0x29EDC4908], v76);
  (*(v79 + 16))(v78, v36 + v45, v80);
  v46 = v89;
  sub_29DA34504();
  v47 = v33[5];
  v48 = sub_29DA33554();
  v49 = *(v48 - 8);
  v50 = v82;
  (*(v49 + 16))(v82, v36 + v47, v48);
  (*(v49 + 56))(v50, 0, 1, v48);
  v51 = *(v36 + v33[9]);
  v52 = v33[6];
  v53 = sub_29DA335B4();
  v54 = *(v53 - 8);
  v55 = v83;
  (*(v54 + 16))(v83, v36 + v52, v53);
  (*(v54 + 56))(v55, 0, 1, v53);
  sub_29D9E5E80(v50, v81, sub_29D9E5E4C);
  sub_29D9E5E80(v55, v84, sub_29D9E5DB4);
  v56 = v51;
  v57 = v92;
  sub_29DA345A4();
  sub_29D9E5EE8(v55, sub_29D9E5DB4);
  sub_29D9E5EE8(v50, sub_29D9E5E4C);
  v58 = *v36;
  (*(v90 + 16))(v88, v46, v91);
  v59 = v93;
  v60 = v85;
  v61 = v57;
  v62 = v94;
  (*(v93 + 16))(v85, v61, v94);
  (*(v59 + 56))(v60, 0, 1, v62);
  v63 = v58;
  v64 = v86;
  v65 = [v86 name];
  if (v65)
  {
    v66 = v65;
    sub_29DA34854();
  }

  v67 = *&v64[qword_2A1A2D6C0];
  v68 = v87;
  sub_29DA334F4();
  v69 = sub_29DA336F4();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = objc_allocWithZone(sub_29DA34544());

  v71 = sub_29DA34524();
  (*(v93 + 8))(v92, v94);
  (*(v90 + 8))(v89, v91);
  sub_29D9E5EE8(v36, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);

  return v71;
}

void *sub_29D9E30D4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = a2(v2);
    v6 = *(v2 + v3);
    *(v2 + v3) = v5;
    v7 = v5;
    sub_29D9E5D94(v6);
  }

  sub_29D9E5DA4(v4);
  return v5;
}

uint64_t sub_29D9E3144(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D9E5DE8(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v87 = &v72 - v4;
  sub_29D9E5DE8(0, &qword_2A1A2CC78, MEMORY[0x29EDC4FD0], v2);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v85 = &v72 - v6;
  sub_29D9E5DB4(0);
  v8 = MEMORY[0x2A1C7C4A8](v7 - 8);
  v84 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v83 = &v72 - v10;
  sub_29D9E5E4C(0);
  v12 = MEMORY[0x2A1C7C4A8](v11 - 8);
  v81 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v82 = &v72 - v14;
  v15 = sub_29DA345B4();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x2A1C7C4A8](v15);
  v92 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29DA34064();
  v79 = *(v17 - 8);
  v80 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v78 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_29DA340A4();
  v75 = *(v19 - 8);
  v76 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v77 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_29DA34044();
  v73 = *(v74 - 8);
  MEMORY[0x2A1C7C4A8](v74);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29DA34514();
  v90 = *(v23 - 8);
  v91 = v23;
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v88 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v89 = &v72 - v26;
  sub_29D9E4C44(0);
  v28 = MEMORY[0x2A1C7C4A8](v27 - 8);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v72 - v31;
  v33 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  v34 = *(v33 - 1);
  MEMORY[0x2A1C7C4A8](v33);
  v36 = (&v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = a1;
  v37 = *&a1[qword_2A1A2CD70];
  v38 = *(*v37 + *MEMORY[0x29EDC9DE8] + 16);
  v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v37 + v39));
  sub_29D9E5E80(v37 + v38, v32, sub_29D9E4C44);
  os_unfair_lock_unlock((v37 + v39));
  v40 = *(v34 + 48);
  if (v40(v32, 1, v33) == 1)
  {
    v41 = sub_29D9E4C44;
    v42 = v32;
LABEL_6:
    sub_29D9E5EE8(v42, v41);
    return 0;
  }

  sub_29D9E5C3C(v32, v36);
  os_unfair_lock_lock((v37 + v39));
  sub_29D9E5E80(v37 + v38, v30, sub_29D9E4C44);
  v43 = v40(v30, 1, v33);
  sub_29D9E5EE8(v30, sub_29D9E4C44);
  os_unfair_lock_unlock((v37 + v39));
  if (v43 == 1 || *(v36 + v33[10] + 8) == 1)
  {
    v41 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
    v42 = v36;
    goto LABEL_6;
  }

  v45 = v33[7];
  (*(v73 + 104))(v22, *MEMORY[0x29EDC48D0], v74);
  (*(v75 + 104))(v77, *MEMORY[0x29EDC4908], v76);
  (*(v79 + 16))(v78, v36 + v45, v80);
  v46 = v89;
  sub_29DA34504();
  v47 = v33[5];
  v48 = sub_29DA33554();
  v49 = *(v48 - 8);
  v50 = v82;
  (*(v49 + 16))(v82, v36 + v47, v48);
  (*(v49 + 56))(v50, 0, 1, v48);
  v51 = *(v36 + v33[11]);
  v52 = v33[6];
  v53 = sub_29DA335B4();
  v54 = *(v53 - 8);
  v55 = v83;
  (*(v54 + 16))(v83, v36 + v52, v53);
  (*(v54 + 56))(v55, 0, 1, v53);
  sub_29D9E5E80(v50, v81, sub_29D9E5E4C);
  sub_29D9E5E80(v55, v84, sub_29D9E5DB4);
  v56 = v51;
  v57 = v92;
  sub_29DA345A4();
  sub_29D9E5EE8(v55, sub_29D9E5DB4);
  sub_29D9E5EE8(v50, sub_29D9E5E4C);
  v58 = *v36;
  (*(v90 + 16))(v88, v46, v91);
  v59 = v93;
  v60 = v85;
  v61 = v57;
  v62 = v94;
  (*(v93 + 16))(v85, v61, v94);
  (*(v59 + 56))(v60, 0, 1, v62);
  v63 = v58;
  v64 = v86;
  v65 = [v86 name];
  if (v65)
  {
    v66 = v65;
    sub_29DA34854();
  }

  v67 = *&v64[qword_2A1A2D6C0];
  v68 = v87;
  sub_29DA334F4();
  v69 = sub_29DA336F4();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = objc_allocWithZone(sub_29DA34544());

  v71 = sub_29DA34524();
  (*(v93 + 8))(v92, v94);
  (*(v90 + 8))(v89, v91);
  sub_29D9E5EE8(v36, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);

  return v71;
}

void *sub_29D9E3C40(uint64_t a1, char a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;

    MEMORY[0x2A1C7C4A8](v7);
    sub_29DA33B54();
  }

  return result;
}

id sub_29D9E3D08(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_29D9E4C44(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = qword_2A1A2D6B0;
  sub_29D9E4C78();
  v11 = swift_allocError();
  *v12 = 0;
  v27 = v11;
  v28 = 0;
  v29 = 1;
  v13 = MEMORY[0x29EDC3C80];
  sub_29D9E5DE8(0, &qword_2A1A2DA30, sub_29D9E4CCC, MEMORY[0x29EDC3C80]);
  swift_allocObject();
  *&v3[v10] = sub_29DA33B74();
  v14 = qword_2A1A2CD70;
  v15 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  sub_29D9E4D8C(0);
  v16 = swift_allocObject();
  *(v16 + ((*(*v16 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D9E5E80(v9, v16 + *(*v16 + *MEMORY[0x29EDC9DE8] + 16), sub_29D9E4C44);
  sub_29D9E5EE8(v9, sub_29D9E4C44);
  *&v4[v14] = v16;
  v17 = qword_2A1A2D6C8;
  v27 = 0;
  LOBYTE(v28) = -1;
  sub_29D9E5DE8(0, &qword_2A1A2DA28, sub_29D9E4DF4, v13);
  swift_allocObject();
  *&v4[v17] = sub_29DA33B74();
  v18 = qword_2A1A2D6B8;
  v27 = 0;
  LOBYTE(v28) = -1;
  swift_allocObject();
  *&v4[v18] = sub_29DA33B74();
  *&v4[qword_2A1A2D6E0] = 1;
  *&v4[qword_2A1A2D6D8] = 1;
  *&v4[qword_2A1A2D6C0] = a1;
  v19 = type metadata accessor for HighlightAlertQuantityDistributionOperation(0);
  v26.receiver = v4;
  v26.super_class = v19;
  v20 = a1;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v22 = v21;
  if (a3)
  {
    v23 = sub_29DA34824();
  }

  else
  {
    v23 = 0;
  }

  [v21 setName_];

  return v21;
}

void sub_29D9E4080()
{
  v1 = v0;
  v41 = sub_29DA34644();
  v2 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9E4C44(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = [objc_opt_self() currentQueue];
  if (!v42)
  {
    aBlock = 0;
    v44 = 0xE000000000000000;
    sub_29DA34DF4();
    swift_getObjectType();
    v39 = sub_29DA35254();
    MEMORY[0x29ED6D450](v39);

    MEMORY[0x29ED6D450](0xD000000000000031, 0x800000029DA373C0);
    sub_29DA34F64();
    __break(1u);
    return;
  }

  v12 = *&v1[qword_2A1A2CD70];
  v13 = *(*v12 + *MEMORY[0x29EDC9DE8] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v12 + v14));
  sub_29D9E5E80(v12 + v13, v7, sub_29D9E4C44);
  os_unfair_lock_unlock((v12 + v14));
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v15 = sub_29D9E4C44;
    v16 = v7;
LABEL_9:
    sub_29D9E5EE8(v16, v15);
    sub_29DA34614();
    v30 = v1;
    v31 = sub_29DA34634();
    v32 = sub_29DA34B84();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v33 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29D9E5BF4();
      v35 = sub_29DA34894();
      v37 = sub_29D9EBB44(v35, v36, &aBlock);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_29D9BB000, v31, v32, "%{public}s attempted to run with invalid configuration", v33, 0xCu);
      sub_29D9C7968(v34);
      MEMORY[0x29ED6E4C0](v34, -1, -1);
      MEMORY[0x29ED6E4C0](v33, -1, -1);
    }

    (*(v2 + 8))(v4, v41);
    v38 = v42;

    sub_29DA33B54();

    sub_29DA33C04();

    return;
  }

  sub_29D9E5C3C(v7, v11);
  v17 = sub_29D9E25AC();
  if (!v17)
  {
    v15 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration;
    v16 = v11;
    goto LABEL_9;
  }

  v18 = v17;
  v19 = [*v11 identifier];
  sub_29DA34854();

  sub_29DA34B04();

  v20 = sub_29DA34054();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v20;
  v47 = sub_29D9E5CA0;
  v48 = v22;
  aBlock = MEMORY[0x29EDCA5F8];
  v44 = 1107296256;
  v45 = sub_29DA05EEC;
  v46 = &unk_2A2461098;
  v23 = _Block_copy(&aBlock);
  v24 = objc_opt_self();

  v25 = v20;
  v26 = [v24 blockOperationWithBlock_];
  _Block_release(v23);

  [v26 addDependency_];
  v27 = v42;
  [v42 addOperation_];
  v28 = sub_29D9E30B4();
  if (v28)
  {
    v29 = v28;
    [v26 addDependency_];
    [v27 addOperation_];
  }

  [v27 addOperation_];

  sub_29D9E5EE8(v11, type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration);
}

void sub_29D9E4708(void *a1)
{
  v1 = a1;
  sub_29D9E4080();
}

id sub_29D9E4750()
{
  sub_29DA34AF4();
  result = [v0 isCancelled];
  if (result)
  {
    v2 = sub_29D9E25AC();
    if (v2)
    {
      v3 = v2;
      if (([v2 isCancelled] & 1) == 0)
      {
        [v3 cancel];
      }
    }

    v4 = sub_29D9E30B4();
    if (v4)
    {
      v5 = v4;
      if (([v4 isCancelled] & 1) == 0)
      {
        [v5 cancel];
      }
    }

    sub_29DA33B54();

    return sub_29DA34B24();
  }

  return result;
}

void sub_29D9E4890()
{

  sub_29D9E5D94(*(v0 + qword_2A1A2D6E0));
  v1 = *(v0 + qword_2A1A2D6D8);

  sub_29D9E5D94(v1);
}

id sub_29D9E4920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertQuantityDistributionOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9E4958(uint64_t a1)
{

  sub_29D9E5D94(*(a1 + qword_2A1A2D6E0));
  v2 = *(a1 + qword_2A1A2D6D8);

  sub_29D9E5D94(v2);
}

void sub_29D9E4A44(uint64_t a1)
{
  sub_29D9C79FC(319, &qword_2A1A2CB28, 0x29EDBAD20);
  if (v1 <= 0x3F)
  {
    sub_29DA33554();
    if (v2 <= 0x3F)
    {
      sub_29DA335B4();
      if (v3 <= 0x3F)
      {
        sub_29DA34064();
        if (v4 <= 0x3F)
        {
          type metadata accessor for _HKQuantityDistributionStyle(319);
          if (v5 <= 0x3F)
          {
            sub_29D9E2188(319, &qword_2A1A2CB40, &qword_2A1A2CB48, 0x29EDBA0A8, MEMORY[0x29EDC9C68]);
            if (v6 <= 0x3F)
            {
              sub_29D9E5DE8(319, &qword_2A1A2CAB0, type metadata accessor for _HKQuantityDistributionStyle, MEMORY[0x29EDC9C68]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_29D9E4BB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29D9E4BF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29D9E4C78()
{
  result = qword_2A1A2D698;
  if (!qword_2A1A2D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D698);
  }

  return result;
}

void sub_29D9E4CCC(uint64_t a1)
{
  if (!qword_2A1A2D3D8)
  {
    sub_29D9E4D3C();
    sub_29D9C6144();
    v1 = sub_29DA35204();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D3D8);
    }
  }
}

void sub_29D9E4D3C()
{
  if (!qword_2A1A2D6D0)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D6D0);
    }
  }
}

void sub_29D9E4D8C(uint64_t a1)
{
  if (!qword_2A1A2CA80)
  {
    sub_29D9E4C44(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_29DA34E24();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CA80);
    }
  }
}

void sub_29D9E4E28(uint64_t a1)
{
  if (!qword_2A1A2D3D0)
  {
    sub_29D9E2188(255, &qword_2A1A2D498, &qword_2A1A2D450, 0x29EDBAEF8, MEMORY[0x29EDC9A40]);
    sub_29D9C6144();
    v1 = sub_29DA35204();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D3D0);
    }
  }
}

void sub_29D9E4EC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([v3 isCancelled])
    {

LABEL_5:
      return;
    }

    v4 = [v3 isFinished];

    if (v4)
    {
      goto LABEL_5;
    }

    MEMORY[0x2A1C7C4A8](v5);
    sub_29DA33BF4();
  }
}

void sub_29D9E4FAC(char *a1, uint64_t a2)
{
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v81 - v10;
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = &v81 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v81 - v15;

  sub_29DA33B44();

  v17 = v90;
  if (v90 != 255)
  {
    v85 = a2;
    v86 = v4;
    v18 = v89;

    sub_29DA33B44();

    v19 = v89;
    if (v90 == 255)
    {
      v20 = MEMORY[0x29EDCA190];
    }

    else
    {
      v20 = v89;
    }

    v87 = (v90 != 255) & v90;
    if (v17)
    {
      sub_29D9E5CC8(v18, v17);
      sub_29D9E5CE0(v18, 1);
      sub_29DA34614();
      sub_29D9E5CC8(v18, v17);
      v21 = a1;
      v22 = sub_29DA34634();
      v23 = sub_29DA34B84();

      sub_29D9E5CF8(v18, v17);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v85 = v20;
        v25 = v24;
        v26 = swift_slowAlloc();
        v84 = a1;
        v27 = v26;
        v89 = v26;
        *v25 = 136446466;
        ObjectType = swift_getObjectType();
        sub_29D9E5BF4();
        v28 = sub_29DA34894();
        v30 = sub_29D9EBB44(v28, v29, &v89);
        v83 = v18;
        v31 = v5;
        v32 = v30;

        *(v25 + 4) = v32;
        *(v25 + 12) = 2082;
        swift_getErrorValue();
        v33 = sub_29DA35154();
        v35 = sub_29D9EBB44(v33, v34, &v89);

        *(v25 + 14) = v35;
        _os_log_impl(&dword_29D9BB000, v22, v23, "%{public}s base query result failed with error: %{public}s", v25, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v27, -1, -1);
        v36 = v25;
        v20 = v85;
        MEMORY[0x29ED6E4C0](v36, -1, -1);

        v37 = v31[1](v16, v86);
        v18 = v83;
      }

      else
      {

        v37 = v5[1](v16, v86);
      }

      MEMORY[0x2A1C7C4A8](v37);
      *(&v81 - 2) = v18;

      sub_29DA33B54();

      sub_29D9E5CF8(v18, v17);
      sub_29D9E5CF8(v18, v17);
      goto LABEL_32;
    }

    if (((v90 != 255) & v90) != 0)
    {
      sub_29D9E5CE0(v89, 1);
      sub_29DA34614();
      v48 = a1;
      sub_29D9E5CE0(v19, 1);
      v49 = v48;
      v50 = sub_29DA34634();
      v51 = sub_29DA34B84();

      sub_29D9E5CEC(v19, 1);
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v85 = v20;
        v53 = v52;
        v82 = swift_slowAlloc();
        v89 = v82;
        *v53 = 136446466;
        ObjectType = swift_getObjectType();
        sub_29D9E5BF4();
        v54 = sub_29DA34894();
        v83 = v5;
        v56 = sub_29D9EBB44(v54, v55, &v89);
        v84 = v49;
        v57 = v56;

        *(v53 + 4) = v57;
        *(v53 + 12) = 2082;
        swift_getErrorValue();
        v58 = sub_29DA35154();
        v60 = sub_29D9EBB44(v58, v59, &v89);

        *(v53 + 14) = v60;
        _os_log_impl(&dword_29D9BB000, v50, v51, "%{public}s overlay query result failed with error: %{public}s", v53, 0x16u);
        v61 = v82;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v61, -1, -1);
        v62 = v53;
        v20 = v85;
        MEMORY[0x29ED6E4C0](v62, -1, -1);

        v63 = v83[1](v14, v86);
      }

      else
      {

        v63 = v5[1](v14, v86);
      }

      MEMORY[0x2A1C7C4A8](v63);
      *(&v81 - 2) = v19;

      sub_29DA33B54();

      sub_29D9E5CEC(v19, 1);
      goto LABEL_32;
    }

    sub_29D9E5CC8(v18, v17);
    sub_29D9E5CE0(v20, 0);
    sub_29DA34614();
    sub_29D9E5CC8(v18, v17);
    sub_29D9E5CE0(v20, 0);
    sub_29D9E5CC8(v18, v17);
    v84 = a1;
    v64 = a1;
    sub_29D9E5CE0(v20, 0);
    v65 = sub_29DA34634();
    v66 = sub_29DA34B74();

    v67 = v20 >> 62;
    if (os_log_type_enabled(v65, v66))
    {
      v82 = (v20 >> 62);
      v83 = v5;
      v68 = v20;
      v69 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v89 = v81;
      *v69 = 136446723;
      ObjectType = swift_getObjectType();
      sub_29D9E5BF4();
      v70 = sub_29DA34894();
      v72 = sub_29D9EBB44(v70, v71, &v89);

      *(v69 + 4) = v72;
      *(v69 + 12) = 2049;
      if (v18 >> 62)
      {
        v73 = sub_29DA34D34();
      }

      else
      {
        v73 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_29D9E5CF8(v18, v17);
      *(v69 + 14) = v73;
      sub_29D9E5CF8(v18, v17);
      *(v69 + 22) = 2049;
      if (v82)
      {
        v74 = sub_29DA34D34();
      }

      else
      {
        v74 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v20 = v68;
      sub_29D9E5CEC(v68, 0);
      *(v69 + 24) = v74;
      sub_29D9E5CEC(v68, 0);
      _os_log_impl(&dword_29D9BB000, v65, v66, "%{public}s received distribution data: %{private}ld count, overlay data: %{private}ld count", v69, 0x20u);
      v75 = v81;
      sub_29D9C7968(v81);
      MEMORY[0x29ED6E4C0](v75, -1, -1);
      MEMORY[0x29ED6E4C0](v69, -1, -1);

      v83[1](v11, v86);
      v67 = v82;
    }

    else
    {
      sub_29D9E5CEC(v20, 0);
      sub_29D9E5CF8(v18, v17);
      sub_29D9E5CEC(v20, 0);
      sub_29D9E5CF8(v18, v17);

      v5[1](v11, v86);
    }

    sub_29DA34544();
    *(swift_allocObject() + 16) = v64;
    v76 = v64;
    v77 = sub_29DA34534();

    if (v67)
    {
      v78 = sub_29DA34D34();
      if (v78)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v78 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v78)
      {
LABEL_28:
        *(swift_allocObject() + 16) = v76;
        v79 = v76;
        v80 = sub_29DA34534();

LABEL_31:
        MEMORY[0x2A1C7C4A8](v78);
        *(&v81 - 2) = v77;
        *(&v81 - 1) = v80;

        sub_29DA33B54();

        sub_29D9E5CEC(v20, 0);
        sub_29D9E5CF8(v18, v17);
LABEL_32:
        sub_29DA34B14();
        sub_29D9E5CEC(v20, v87);
        sub_29D9E5CF8(v18, v17);
        return;
      }
    }

    v80 = 0;
    goto LABEL_31;
  }

  v38 = v5;
  sub_29DA34614();
  v39 = a1;
  v40 = sub_29DA34634();
  v41 = sub_29DA34B84();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = v4;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v44;
    *v43 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29D9E5BF4();
    v45 = sub_29DA34894();
    v47 = sub_29D9EBB44(v45, v46, &v89);

    *(v43 + 4) = v47;
    _os_log_impl(&dword_29D9BB000, v40, v41, "%{public}s attempted final result processing without valid base result", v43, 0xCu);
    sub_29D9C7968(v44);
    MEMORY[0x29ED6E4C0](v44, -1, -1);
    MEMORY[0x29ED6E4C0](v43, -1, -1);

    v38[1](v8, v42);
  }

  else
  {

    v38[1](v8, v4);
  }

  sub_29DA33B54();
}

uint64_t sub_29D9E5B30(uint64_t a1, char a2)
{
  sub_29D9DC064(*a1, *(a1 + 8), *(a1 + 16));
  sub_29D9E4C78();
  result = swift_allocError();
  *v5 = a2;
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_29D9E5B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29D9DC064(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
}

unint64_t sub_29D9E5BF4()
{
  result = qword_2A1A2CD68;
  if (!qword_2A1A2CD68)
  {
    type metadata accessor for HighlightAlertQuantityDistributionOperation(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2CD68);
  }

  return result;
}

uint64_t sub_29D9E5C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertQuantityDistributionOperation.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E5CA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D9E5CC8(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_29D9E5CE0(result, a2 & 1);
  }

  return result;
}

id sub_29D9E5CE0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_29D9E5CEC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_29D9E5CF8(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_29D9E5CEC(a1, a2 & 1);
  }
}

id sub_29D9E5D40(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D9DC064(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;

  return v3;
}

void sub_29D9E5D94(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_29D9E5DA4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

void sub_29D9E5DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9E5E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9E5EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_29D9E5FC4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_29D9E5CF8(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_29D9E5CE0(v3, v4);
}

unint64_t sub_29D9E6034()
{
  result = qword_2A17D15F0;
  if (!qword_2A17D15F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D15F0);
  }

  return result;
}

id sub_29D9E6094(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = *a3;
  v5 = a3[1];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v8;
  v10[4] = v9;
  v10[5] = v6;
  v10[6] = v5;
  v16[4] = sub_29D9E9494;
  v16[5] = v10;
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1107296256;
  v16[2] = sub_29DA05EEC;
  v16[3] = &unk_2A2461240;
  v11 = _Block_copy(v16);
  v12 = objc_opt_self();

  v13 = [v12 blockOperationWithBlock_];
  _Block_release(v11);

  v14 = v13;
  [v14 addDependency_];
  [a2 addDependency_];

  return v14;
}

void sub_29D9E627C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = a5;
  v70 = a4;
  v5 = sub_29DA336F4();
  v6 = MEMORY[0x2A1C7C4A8](v5 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v69 = sub_29DA33554();
  v68 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29DA34644();
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v16 = &v63 - v15;
  v17 = MEMORY[0x2A1C7C4A8](v14);
  v19 = &v63 - v18;
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v63 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (!v24)
    {
LABEL_27:

      return;
    }

    v25 = v24;
    swift_beginAccess();
    v67 = swift_unknownObjectWeakLoadStrong();
    if (!v67)
    {
LABEL_26:

      v23 = v25;
      goto LABEL_27;
    }

    sub_29DA33B44();

    v26 = v74;
    if (v75 == 1)
    {
      sub_29DA34614();
      v27 = v73;

      sub_29D9DC0BC(v26);
      v28 = sub_29DA34634();
      v29 = sub_29DA34B84();

      sub_29D9DC0B0(v26);
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v74 = v31;
        *v30 = 136380931;
        *(v30 + 4) = sub_29D9EBB44(v70, v27, &v74);
        *(v30 + 12) = 2082;
        swift_getErrorValue();
        v32 = sub_29DA35154();
        v34 = sub_29D9EBB44(v32, v33, &v74);

        *(v30 + 14) = v34;
        _os_log_impl(&dword_29D9BB000, v28, v29, "HighlightAlert query operation for %{private}s returned error: %{public}s", v30, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v31, -1, -1);
        MEMORY[0x29ED6E4C0](v30, -1, -1);

        sub_29D9DC0B0(v26);
      }

      else
      {
        sub_29D9DC0B0(v26);
      }

      (*(v72 + 8))(v21, v71);
    }

    else
    {
      if (v74)
      {
        v65 = v25;
        v66 = v74;
        v35 = [v74 sampleType];

        sub_29DA33B44();

        sub_29D9C706C(&v74, v76);
        v36 = sub_29DA33984();
        v37 = [v35 hk:v36 metadataValueDisplayTypeInStore:?];

        sub_29D9C7968(&v74);
        if (v37)
        {
          v38 = [v37 objectType];

          if (v38)
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v39 = v66;
              v40 = [v66 startDate];
              sub_29DA336C4();

              v41 = [v39 endDate];
              sub_29DA336C4();

              sub_29DA33504();
              v42 = v67;
              if (sub_29DA34434())
              {
                (*(v68 + 8))(v8, v69);

                sub_29D9DC0B0(v39);
                v43 = v42;
                v42 = v23;
                v25 = v65;
LABEL_25:

                v23 = v43;
                v25 = v42;
                goto LABEL_26;
              }

              sub_29DA34614();
              v54 = v73;

              v55 = sub_29DA34634();
              v56 = sub_29DA34B84();

              v57 = os_log_type_enabled(v55, v56);
              v25 = v65;
              if (v57)
              {
                v58 = swift_slowAlloc();
                v64 = v55;
                v59 = v58;
                v60 = swift_slowAlloc();
                v74 = v60;
                *v59 = 136380675;
                *(v59 + 4) = sub_29D9EBB44(v70, v54, &v74);
                v61 = v56;
                v62 = v64;
                _os_log_impl(&dword_29D9BB000, v64, v61, "HighlightAlert query for %{private}s passed invalid configuration to dose query operation", v59, 0xCu);
                sub_29D9C7968(v60);
                MEMORY[0x29ED6E4C0](v60, -1, -1);
                MEMORY[0x29ED6E4C0](v59, -1, -1);

                sub_29D9DC0B0(v66);
              }

              else
              {

                sub_29D9DC0B0(v66);
              }

              (*(v72 + 8))(v19, v71);
              (*(v68 + 8))(v8, v69);
              goto LABEL_19;
            }
          }
        }

        sub_29DA34614();
        v49 = v73;

        v50 = sub_29DA34634();
        v51 = sub_29DA34BA4();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v74 = v53;
          *v52 = 136380675;
          *(v52 + 4) = sub_29D9EBB44(v70, v49, &v74);
          _os_log_impl(&dword_29D9BB000, v50, v51, "HighlightAlert query for %{private}s returned non-quantity primary metadata type.", v52, 0xCu);
          sub_29D9C7968(v53);
          MEMORY[0x29ED6E4C0](v53, -1, -1);
          MEMORY[0x29ED6E4C0](v52, -1, -1);
        }

        sub_29D9DC0B0(v66);

        (*(v72 + 8))(v16, v71);
        v25 = v65;
        v42 = v67;
        [v67 cancel];
        goto LABEL_24;
      }

      sub_29DA34614();
      v44 = v73;

      v45 = sub_29DA34634();
      v46 = sub_29DA34BA4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v74 = v48;
        *v47 = 136380675;
        *(v47 + 4) = sub_29D9EBB44(v70, v44, &v74);
        _os_log_impl(&dword_29D9BB000, v45, v46, "HighlightAlert query for %{private}s returned no samples", v47, 0xCu);
        sub_29D9C7968(v48);
        MEMORY[0x29ED6E4C0](v48, -1, -1);
        MEMORY[0x29ED6E4C0](v47, -1, -1);
      }

      (*(v72 + 8))(v13, v71);
    }

    v42 = v67;
LABEL_19:
    [v42 cancel];
LABEL_24:
    v43 = v23;
    goto LABEL_25;
  }
}

uint64_t sub_29D9E6C10(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v182 = a5;
  v213 = a4;
  v215 = a3;
  v187 = sub_29DA336F4();
  v186 = *(v187 - 8);
  MEMORY[0x2A1C7C4A8](v187);
  v184 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_29DA33754();
  v183 = *(v185 - 8);
  MEMORY[0x2A1C7C4A8](v185);
  v181 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x29EDC9C68];
  sub_29D9E939C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v210 = &v173 - v10;
  v193 = sub_29DA33964();
  v191 = *(v193 - 8);
  MEMORY[0x2A1C7C4A8](v193);
  v180 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9E939C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v8);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v197 = (&v173 - v13);
  v14 = type metadata accessor for HighlightAlertSampleInfo(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v198 = &v173 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29DA34404();
  v206 = *(v16 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v205 = &v173 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for HighlightAlertConfiguration(0);
  v19 = MEMORY[0x2A1C7C4A8](v18 - 8);
  v188 = (&v173 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v179 = (&v173 - v22);
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v196 = (&v173 - v24);
  MEMORY[0x2A1C7C4A8](v23);
  v203 = (&v173 - v25);
  v26 = sub_29DA34644();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = &v173 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x2A1C7C4A8](v28);
  v189 = &v173 - v32;
  v33 = MEMORY[0x2A1C7C4A8](v31);
  v190 = &v173 - v34;
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v199 = &v173 - v36;
  MEMORY[0x2A1C7C4A8](v35);
  v204 = &v173 - v37;
  sub_29D9E8738(0);
  v209 = v38;
  MEMORY[0x2A1C7C4A8](v38);
  v212 = &v173 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9E939C(0, &qword_2A1A2CC80, MEMORY[0x29EDC4EE8], v8);
  MEMORY[0x2A1C7C4A8](v40 - 8);
  v42 = &v173 - v41;
  v202 = sub_29DA34494();
  v201 = *(v202 - 8);
  v43 = MEMORY[0x2A1C7C4A8](v202);
  v194 = &v173 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v43);
  v195 = &v173 - v45;
  sub_29D9E8848(0);
  v211 = v46;
  v47 = MEMORY[0x2A1C7C4A8](v46);
  v192 = &v173 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x2A1C7C4A8](v47);
  v51 = (&v173 - v50);
  v52 = MEMORY[0x2A1C7C4A8](v49);
  v214 = &v173 - v53;
  v54 = MEMORY[0x2A1C7C4A8](v52);
  v56 = &v173 - v55;
  MEMORY[0x2A1C7C4A8](v54);
  v58 = &v173 - v57;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v60 = result;
    v177 = v16;
    v207 = v26;
    v208 = v27;
    v200 = v58;
    v61 = *a2;
    v62 = *(a2 + 8);
    v178 = a2;
    if (*(a2 + 16))
    {
      v63 = 0;
    }

    else
    {
      v63 = 0x7961446E65766553;
    }

    if (*(a2 + 16))
    {
      v64 = 0;
    }

    else
    {
      v64 = 0xE800000000000000;
    }

    sub_29D9D5C44(v61, v62, v63, v64, v218);
    v66 = v218[4];
    v65 = v218[5];

    sub_29D9D6630(v218);
    sub_29DA34B34();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v68 = v60;
    if (Strong)
    {
      v69 = Strong;

      sub_29DA33B44();

      v70 = v216[1];
      v71 = v217;
      swift_beginAccess();
      v72 = swift_unknownObjectWeakLoadStrong();
      if (v72)
      {
        v73 = v72;
        v215 = v65;
        sub_29DA34424();

        sub_29DA33B44();

        v74 = v56;
        v75 = v200;
        sub_29D9E9200(v74, v200);
        v76 = v214;
        sub_29D9E9264(v75, v214, sub_29D9E8848);
        sub_29D9E9264(v76, v51, sub_29D9E8848);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v176 = v68;
        v175 = v66;
        if (EnumCaseMultiPayload == 1)
        {
          v78 = *v51;
          v216[0] = v78;
          v79 = v78;
          sub_29D9C6144();
          v80 = v202;
          if (swift_dynamicCast())
          {
            v174 = v71;
            v213 = v70;
            v81 = v201;
            (*(v201 + 56))(v42, 0, 1, v80);
            v82 = v195;
            (*(v81 + 32))(v195, v42, v80);
            v83 = *MEMORY[0x29EDC4EE0];
            v84 = v194;
            v173 = *(v81 + 104);
            v173(v194, v83, v80);
            v85 = sub_29DA34484();
            v86 = v80;
            v87 = *(v81 + 8);
            v87(v84, v86);
            if (v85 & 1) != 0 || (v173(v84, *MEMORY[0x29EDC4ED8], v86), v88 = sub_29DA34484(), v87(v84, v86), (v88))
            {
              v89 = v192;
              sub_29DA343E4();

              v87(v82, v86);
              v76 = v214;
              sub_29D9E92CC(v214, sub_29D9E8848);
              swift_storeEnumTagMultiPayload();
              sub_29D9E9200(v89, v76);
              v90 = v178;
              v91 = v210;
              v92 = v212;
            }

            else
            {
              v87(v82, v86);

              v76 = v214;
              v90 = v178;
              v91 = v210;
              v92 = v212;
            }

            v70 = v213;
            v71 = v174;
LABEL_26:
            v99 = *(v209 + 48);
            sub_29D9E9264(v76, &v92[v99], sub_29D9E8848);
            if (v71)
            {
              v100 = v70;

              v101 = v204;
              sub_29DA34614();
              v102 = v90;
              v103 = v203;
              sub_29D9E9264(v102, v203, type metadata accessor for HighlightAlertConfiguration);
              v104 = v70;
              v105 = sub_29DA34634();
              v106 = sub_29DA34B84();
              sub_29D9DC0B0(v70);
              if (os_log_type_enabled(v105, v106))
              {
                v107 = swift_slowAlloc();
                v108 = swift_slowAlloc();
                v216[0] = v108;
                *v107 = 136380931;
                v109 = *v103;
                v110 = v103[1];

                sub_29D9E92CC(v103, type metadata accessor for HighlightAlertConfiguration);
                v111 = sub_29D9EBB44(v109, v110, v216);

                *(v107 + 4) = v111;
                *(v107 + 12) = 2082;
                swift_getErrorValue();
                v112 = sub_29DA35154();
                v114 = sub_29D9EBB44(v112, v113, v216);

                *(v107 + 14) = v114;
                _os_log_impl(&dword_29D9BB000, v105, v106, "HighlightAlert query operation for %{private}s returned error: %{public}s", v107, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x29ED6E4C0](v108, -1, -1);
                v115 = v107;
                v92 = v212;
                MEMORY[0x29ED6E4C0](v115, -1, -1);

                sub_29D9DC0B0(v70);
                sub_29D9DC0B0(v70);
                (*(v208 + 8))(v101, v207);
                v116 = v214;
              }

              else
              {

                sub_29D9DC0B0(v70);
                sub_29D9DC0B0(v70);
                sub_29D9E92CC(v103, type metadata accessor for HighlightAlertConfiguration);
                (*(v208 + 8))(v101, v207);
                v116 = v76;
              }

              sub_29D9E92CC(v116, sub_29D9E8848);
              sub_29D9E92CC(v200, sub_29D9E8848);
              v131 = &v92[v99];
              return sub_29D9E92CC(v131, sub_29D9E8848);
            }

            if (swift_getEnumCaseMultiPayload() == 1)
            {

              v117 = *&v92[v99];
              v118 = v199;
              sub_29DA34614();
              v119 = v196;
              sub_29D9E9264(v90, v196, type metadata accessor for HighlightAlertConfiguration);
              v120 = v117;
              v121 = sub_29DA34634();
              v122 = sub_29DA34B84();

              if (os_log_type_enabled(v121, v122))
              {
                v123 = swift_slowAlloc();
                v124 = swift_slowAlloc();
                v216[0] = v124;
                *v123 = 136380931;
                v125 = *v119;
                v126 = v119[1];

                sub_29D9E92CC(v119, type metadata accessor for HighlightAlertConfiguration);
                v127 = sub_29D9EBB44(v125, v126, v216);

                *(v123 + 4) = v127;
                *(v123 + 12) = 2082;
                swift_getErrorValue();
                v128 = sub_29DA35154();
                v130 = sub_29D9EBB44(v128, v129, v216);

                *(v123 + 14) = v130;
                _os_log_impl(&dword_29D9BB000, v121, v122, "HighlightAlert quantity distribution query operation for %{private}s returned error: %{public}s", v123, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x29ED6E4C0](v124, -1, -1);
                MEMORY[0x29ED6E4C0](v123, -1, -1);

                sub_29D9DC0B0(v70);
                (*(v208 + 8))(v199, v207);
              }

              else
              {

                sub_29D9DC0B0(v70);
                sub_29D9E92CC(v119, type metadata accessor for HighlightAlertConfiguration);
                (*(v208 + 8))(v118, v207);
              }

              v151 = v214;
              goto LABEL_48;
            }

            v132 = v70;
            (*(v206 + 32))(v205, &v92[v99], v177);
            if (v70)
            {
              sub_29D9DC0BC(v70);
              sub_29D9DC0BC(v70);
              sub_29D9DC0D4();
              v133 = v70;
              v134 = v198;
              v213 = v133;
              sub_29DA34794();
              v135 = v176;
              v136 = v197;
              sub_29D9E88B8(v90, v197);
              sub_29DA1AF88(v134, v136, v90, v91);
              v137 = v191;
              v138 = v193;
              if ((*(v191 + 48))(v91, 1, v193) == 1)
              {

                sub_29D9E932C(v91, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
                v139 = v190;
                sub_29DA34614();
                v140 = v90;
                v141 = v179;
                sub_29D9E9264(v140, v179, type metadata accessor for HighlightAlertConfiguration);
                v142 = sub_29DA34634();
                v143 = sub_29DA34B84();
                if (os_log_type_enabled(v142, v143))
                {
                  v144 = swift_slowAlloc();
                  v145 = v76;
                  v146 = swift_slowAlloc();
                  v216[0] = v146;
                  *v144 = 136380675;
                  v147 = v135;
                  v148 = *v141;
                  v149 = v141[1];

                  sub_29D9E92CC(v141, type metadata accessor for HighlightAlertConfiguration);
                  v150 = sub_29D9EBB44(v148, v149, v216);

                  *(v144 + 4) = v150;
                  _os_log_impl(&dword_29D9BB000, v142, v143, "HighlightAlert was unable to create a feed item for %{private}s", v144, 0xCu);
                  sub_29D9C7968(v146);
                  MEMORY[0x29ED6E4C0](v146, -1, -1);
                  MEMORY[0x29ED6E4C0](v144, -1, -1);

                  sub_29D9DC0B0(v132);
                  sub_29D9DC0B0(v132);

                  (*(v208 + 8))(v190, v207);
                  sub_29D9E932C(v197, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
                  sub_29D9E92CC(v198, type metadata accessor for HighlightAlertSampleInfo);
                  (*(v206 + 8))(v205, v177);
                  v151 = v145;
LABEL_48:
                  sub_29D9E92CC(v151, sub_29D9E8848);
                  v131 = v200;
                  return sub_29D9E92CC(v131, sub_29D9E8848);
                }

                sub_29D9DC0B0(v132);
                sub_29D9DC0B0(v132);

                sub_29D9E92CC(v141, type metadata accessor for HighlightAlertConfiguration);
                (*(v208 + 8))(v139, v207);
                sub_29D9E932C(v136, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
                v170 = v134;
              }

              else
              {
                v163 = v180;
                (*(v137 + 32))(v180, v91, v138);
                sub_29D9E939C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
                v164 = sub_29DA34774();
                v165 = [v164 UUID];

                v166 = v181;
                sub_29DA33744();

                v167 = sub_29DA34774();
                v168 = [v167 endDate];

                v169 = v184;
                sub_29DA336C4();

                sub_29DA15594(v163, v166, v169, v182);
                sub_29DA34B34();

                sub_29D9DC0B0(v132);
                sub_29D9DC0B0(v132);

                (*(v186 + 8))(v169, v187);
                (*(v183 + 8))(v166, v185);
                (*(v137 + 8))(v163, v193);
                sub_29D9E932C(v197, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
                v170 = v198;
              }

              sub_29D9E92CC(v170, type metadata accessor for HighlightAlertSampleInfo);
            }

            else
            {

              v152 = v189;
              sub_29DA34614();
              v153 = v188;
              sub_29D9E9264(v90, v188, type metadata accessor for HighlightAlertConfiguration);
              v154 = sub_29DA34634();
              v155 = sub_29DA34BA4();
              v156 = os_log_type_enabled(v154, v155);
              v157 = v208;
              if (v156)
              {
                v158 = swift_slowAlloc();
                v159 = swift_slowAlloc();
                v216[0] = v159;
                *v158 = 136380675;
                v160 = *v153;
                v161 = v153[1];

                sub_29D9E92CC(v153, type metadata accessor for HighlightAlertConfiguration);
                v162 = sub_29D9EBB44(v160, v161, v216);

                *(v158 + 4) = v162;
                v76 = v214;
                _os_log_impl(&dword_29D9BB000, v154, v155, "HighlightAlert query for %{private}s returned no samples; marking this feed item for deletion.", v158, 0xCu);
                sub_29D9C7968(v159);
                MEMORY[0x29ED6E4C0](v159, -1, -1);
                MEMORY[0x29ED6E4C0](v158, -1, -1);
              }

              else
              {

                sub_29D9E92CC(v153, type metadata accessor for HighlightAlertConfiguration);
              }

              v171 = (*(v157 + 8))(v152, v207);
              v172 = v176;
              MEMORY[0x2A1C7C4A8](v171);
              *(&v173 - 2) = v90;

              sub_29DA33B54();

              sub_29D9DC0B0(0);
            }

            (*(v206 + 8))(v205, v177);
            v151 = v76;
            goto LABEL_48;
          }

          (*(v201 + 56))(v42, 1, 1, v80);
          sub_29D9E932C(v42, &qword_2A1A2CC80, MEMORY[0x29EDC4EE8]);
        }

        else
        {
          sub_29D9E92CC(v51, sub_29D9E8848);
        }

        v90 = v178;
        v91 = v210;
        v92 = v212;
        goto LABEL_26;
      }

      sub_29D9DC0B0(v70);
    }

    else
    {
    }

    v93 = v208;
    sub_29DA34614();
    v94 = sub_29DA34634();
    v95 = sub_29DA34B84();
    v96 = os_log_type_enabled(v94, v95);
    v97 = v207;
    if (v96)
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_29D9BB000, v94, v95, "HighlightAlert query operations went away unexpectedly", v98, 2u);
      MEMORY[0x29ED6E4C0](v98, -1, -1);
    }

    else
    {
    }

    return (*(v93 + 8))(v30, v97);
  }

  return result;
}

void sub_29D9E8738(uint64_t a1)
{
  if (!qword_2A1A2C9D0)
  {
    sub_29D9E87A8(255);
    sub_29D9E8848(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2C9D0);
    }
  }
}

void sub_29D9E87A8(uint64_t a1)
{
  if (!qword_2A1A2D3C0)
  {
    sub_29D9E939C(255, &qword_2A1A2D440, sub_29D9DC0D4, MEMORY[0x29EDC9C68]);
    sub_29D9C6144();
    v1 = sub_29DA35204();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D3C0);
    }
  }
}

void sub_29D9E8848(uint64_t a1)
{
  if (!qword_2A1A2C9D8)
  {
    sub_29DA34404();
    sub_29D9C6144();
    v1 = sub_29DA35204();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2C9D8);
    }
  }
}

uint64_t sub_29D9E88B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v77 = a1;
  v3 = sub_29DA34644();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v71 = &v66 - v7;
  v8 = sub_29DA336F4();
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v10 = sub_29DA33554();
  v74 = *(v10 - 8);
  v75 = v10;
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v15 = &v66 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v76 = &v66 - v16;
  sub_29D9E939C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = (&v66 - v18);
  if (!*(sub_29DA343F4() + 16) || (, !*(sub_29DA343F4() + 16)))
  {

    v36 = type metadata accessor for HighlightAlertDiagramInfo(0);
    v37 = *(*(v36 - 8) + 56);

    return v37(a2, 1, 1, v36);
  }

  if (*(v77 + 17) != 1)
  {
LABEL_18:
    v57 = type metadata accessor for HighlightAlertDiagramInfo(0);
    (*(*(v57 - 8) + 56))(v19, 1, 1, v57);
    return sub_29D9E9400(v19, a2);
  }

  v69 = a2;

  sub_29DA33B44();

  sub_29D9C706C(v78, v78[3]);
  v20 = sub_29DA33984();
  sub_29D9E939C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
  v68 = v21;
  v22 = sub_29DA34774();
  v23 = [v22 sampleType];

  v24 = [v23 hk:v20 metadataValueDisplayTypeInStore:?];
  if (!v24)
  {

    sub_29D9C7968(v78);
    a2 = v69;
    goto LABEL_18;
  }

  v25 = [v24 objectType];

  v26 = [v25 identifier];
  v66 = sub_29DA34854();
  v28 = v27;

  sub_29D9C7968(v78);
  sub_29DA33634();
  sub_29DA33634();
  sub_29DA33504();
  v29 = sub_29DA34854();
  v31 = sub_29D9C4550(v29, v30);

  if (v31)
  {
    v32 = [v31 BOOLValue];

    if (v32)
    {

      sub_29DA34614();
      v33 = sub_29DA34634();
      v34 = sub_29DA34BA4();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_29D9BB000, v33, v34, "HighlightAlert omitting dose diagram due to prunable data", v35, 2u);
        MEMORY[0x29ED6E4C0](v35, -1, -1);
      }

      (*(v72 + 8))(v6, v73);
      (*(v74 + 8))(v76, v75);
LABEL_24:
      v65 = type metadata accessor for HighlightAlertDiagramInfo(0);
      return (*(*(v65 - 8) + 56))(v69, 1, 1, v65);
    }
  }

  v67 = v28;
  v39 = sub_29DA34774();
  v40 = [v39 startDate];

  sub_29DA336C4();
  v41 = sub_29DA34774();
  v42 = [v41 endDate];

  sub_29DA336C4();
  sub_29DA33504();
  sub_29DA33544();
  v44 = v43;
  v45 = v74;
  v46 = v75;
  v47 = *(v74 + 8);
  result = v47(v15, v75);
  if (!__OFADD__(*MEMORY[0x29EDBA3B0], *MEMORY[0x29EDBA3B8]))
  {
    if (v44 <= (*MEMORY[0x29EDBA3B0] + *MEMORY[0x29EDBA3B8]) || (v48 = *(sub_29DA343F4() + 16), , v48 < 2))
    {

      v58 = v71;
      sub_29DA34614();
      v59 = v70;
      (*(v45 + 16))(v70, v76, v46);
      v60 = sub_29DA34634();
      v61 = sub_29DA34BA4();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 134283521;
        sub_29DA33544();
        v64 = v63;
        v47(v59, v46);
        *(v62 + 4) = v64;
        _os_log_impl(&dword_29D9BB000, v60, v61, "HighlightAlert omitting dose diagram due to low duration: %{private}f", v62, 0xCu);
        MEMORY[0x29ED6E4C0](v62, -1, -1);
      }

      else
      {

        v47(v59, v46);
      }

      (*(v72 + 8))(v58, v73);
      v47(v76, v46);
      goto LABEL_24;
    }

    v49 = type metadata accessor for HighlightAlertDiagramInfo(0);
    v50 = v76;
    (*(v45 + 16))(v19 + v49[5], v76, v46);
    sub_29DA34134();
    v51 = v77 + *(type metadata accessor for HighlightAlertConfiguration(0) + 40);
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = sub_29DA343F4();
    v47(v50, v46);
    v55 = v67;
    *v19 = v66;
    v19[1] = v55;
    v56 = v19 + v49[7];
    *v56 = v52;
    v56[8] = v53;
    *(v19 + v49[8]) = v54;
    *(v19 + v49[9]) = MEMORY[0x29EDCA190];
    (*(*(v49 - 1) + 56))(v19, 0, 1, v49);
    a2 = v69;
    return sub_29D9E9400(v19, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_29D9E9200(uint64_t a1, uint64_t a2)
{
  sub_29D9E8848(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E9264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9E92CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29D9E932C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9E939C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_29D9E939C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9E9400(uint64_t a1, uint64_t a2)
{
  sub_29D9E939C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9E94A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HighlightAlertDailyAveragesOperationError.hashValue.getter(unsigned __int8 a1)
{
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](a1);
  return sub_29DA351E4();
}

uint64_t sub_29D9E9544(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void HighlightAlertDailyAveragesOperation.configuration.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + qword_2A1A2CEC8);
  v4 = *(*v3 + *MEMORY[0x29EDC9DE8] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_29D9E9694(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_29D9E9694(uint64_t a1, uint64_t a2)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_29D9E9758()
{
  v1 = qword_2A1A2CEC0;
  v2 = *&v0[qword_2A1A2CEC0];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_29D9E97C8(v0);
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_29D9E5D94(v4);
  }

  sub_29D9E5DA4(v2);
  return v3;
}

uint64_t sub_29D9E97C8(char *a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29D9EA1D0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v50 = &v48 - v4;
  sub_29D9EA1D0(0, &qword_2A17D1608, MEMORY[0x29EDC4FA8], v2);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v52 = &v48 - v6;
  v7 = sub_29DA34044();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29DA344B4();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v51 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, v2);
  v13 = MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v48 - v16;
  v18 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = a1;
  v22 = *&a1[qword_2A1A2CEC8];
  v23 = *(*v22 + *MEMORY[0x29EDC9DE8] + 16);
  v24 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v22 + v24));
  sub_29D9E9694(v22 + v23, v17);
  os_unfair_lock_unlock((v22 + v24));
  v25 = *(v19 + 48);
  if (v25(v17, 1, v18) == 1)
  {
    sub_29D9EA560(v17);
    return 0;
  }

  sub_29D9EC11C(v17, v21);
  os_unfair_lock_lock((v22 + v24));
  sub_29D9E9694(v22 + v23, v15);
  v26 = v25(v15, 1, v18);
  sub_29D9EA560(v15);
  os_unfair_lock_unlock((v22 + v24));
  if (v26 == 1)
  {
    sub_29D9EC180(v21);
    return 0;
  }

  v28 = *v21;
  sub_29D9EA1D0(0, &qword_2A17D1610, MEMORY[0x29EDC4988], MEMORY[0x29EDC9E90]);
  v29 = sub_29DA34184();
  v30 = *(v29 - 8);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29DA3AB40;
  (*(v30 + 104))(v32 + v31, *MEMORY[0x29EDC4960], v29);
  (*(v48 + 104))(v9, *MEMORY[0x29EDC48D0], v49);
  v33 = v28;
  sub_29DA344A4();
  v34 = *(v18 + 20);
  v35 = sub_29DA33554();
  v36 = *(v35 - 8);
  v37 = v21 + v34;
  v38 = v50;
  (*(v36 + 16))(v50, v37, v35);
  (*(v36 + 56))(v38, 0, 1, v35);
  v39 = v52;
  sub_29DA34584();
  v40 = sub_29DA34594();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  v41 = v53;
  v42 = [v53 name];
  if (v42)
  {
    v43 = v42;
    sub_29DA34854();
  }

  else
  {
    v44 = v41;
    v43 = [v44 description];
    sub_29DA34854();
  }

  v45 = *&v41[direct field offset for HighlightAlertDailyAveragesOperation.healthStore];
  objc_allocWithZone(sub_29DA34574());
  v46 = v45;
  v47 = sub_29DA34554();
  sub_29D9EC180(v21);
  return v47;
}

id HighlightAlertDailyAveragesOperation.init(healthStore:name:environment:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v24 - v10;
  v12 = direct field offset for HighlightAlertDailyAveragesOperation.result;
  sub_29D9C6088();
  v13 = swift_allocError();
  *v14 = 0;
  v25 = v13;
  v26 = 1;
  sub_29D9EA1D0(0, &qword_2A1A2D2B0, sub_29D9C60DC, MEMORY[0x29EDC3C80]);
  swift_allocObject();
  *&v4[v12] = sub_29DA33B74();
  v15 = qword_2A1A2CEC8;
  v16 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_29D9C6398(0);
  v17 = swift_allocObject();
  *(v17 + ((*(*v17 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_29D9EA234(v11, v17 + *(*v17 + *MEMORY[0x29EDC9DE8] + 16));
  *&v5[v15] = v17;
  *&v5[qword_2A1A2CEC0] = 1;
  *&v5[direct field offset for HighlightAlertDailyAveragesOperation.healthStore] = a1;
  v5[qword_2A1A2CF70] = a4 & 1;
  v18 = type metadata accessor for HighlightAlertDailyAveragesOperation(0);
  v24.receiver = v5;
  v24.super_class = v18;
  v19 = a1;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  v21 = v20;
  if (a3)
  {
    v22 = sub_29DA34824();
  }

  else
  {
    v22 = 0;
  }

  [v20 setName_];

  return v20;
}

void sub_29D9EA1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9EA234(uint64_t a1, uint64_t a2)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL HighlightAlertDailyAveragesOperation.configure(quantityType:dateInterval:)(uint64_t a1, uint64_t a2)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v14[-v6];
  v8 = *(v2 + qword_2A1A2CEC8);
  v15 = a1;
  v16 = a2;
  v9 = *(*v8 + *MEMORY[0x29EDC9DE8] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_29D9EA544((v8 + v9));
  os_unfair_lock_unlock((v8 + v10));
  os_unfair_lock_lock((v8 + v10));
  sub_29D9E9694(v8 + v9, v7);
  v11 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v12 = (*(*(v11 - 8) + 48))(v7, 1, v11) != 1;
  sub_29D9EA560(v7);
  os_unfair_lock_unlock((v8 + v10));
  return v12;
}

id sub_29D9EA474(char *a1, void *a2, uint64_t a3)
{
  sub_29D9EA560(a1);
  v6 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v7 = *(v6 + 20);
  v8 = sub_29DA33554();
  (*(*(v8 - 8) + 16))(&a1[v7], a3, v8);
  *a1 = a2;
  (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  return a2;
}

uint64_t sub_29D9EA560(uint64_t a1)
{
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall HighlightAlertDailyAveragesOperation.main()()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9EA1D0(0, qword_2A1A2CF28, type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v30 - v6;
  v8 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [objc_opt_self() currentQueue];
  if (v12)
  {
    v13 = v12;
    v14 = *&v1[qword_2A1A2CEC8];
    v15 = *(*v14 + *MEMORY[0x29EDC9DE8] + 16);
    v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v16));
    sub_29D9E9694(v14 + v15, v7);
    os_unfair_lock_unlock((v14 + v16));
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_29D9EA560(v7);
    }

    else
    {
      sub_29D9EC11C(v7, v11);
      v17 = sub_29D9E9758();
      if (v17)
      {
        v18 = v17;
        v19 = [*v11 identifier];
        sub_29DA34854();

        sub_29DA34B04();

        v20 = sub_29D9EAB18(v11);
        [v20 addDependency_];
        [v13 addOperation_];
        [v13 addOperation_];

        sub_29D9EC180(v11);
        return;
      }

      sub_29D9EC180(v11);
    }

    sub_29DA34614();
    v21 = v1;
    v22 = sub_29DA34634();
    v23 = sub_29DA34B84();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33[0] = v25;
      *v24 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29D9EC0D4();
      v26 = sub_29DA34894();
      v28 = sub_29D9EBB44(v26, v27, v33);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_29D9BB000, v22, v23, "[%{public}s] attempted to run with invalid configuration", v24, 0xCu);
      sub_29D9C7968(v25);
      MEMORY[0x29ED6E4C0](v25, -1, -1);
      MEMORY[0x29ED6E4C0](v24, -1, -1);
    }

    (*(v30 + 8))(v4, v31);
    swift_beginAccess();

    sub_29DA33B54();

    sub_29DA33C04();
  }

  else
  {
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    sub_29DA34DF4();
    swift_getObjectType();
    v29 = sub_29DA35254();
    MEMORY[0x29ED6D450](v29);

    MEMORY[0x29ED6D450](0xD000000000000031, 0x800000029DA373C0);
    sub_29DA34F64();
    __break(1u);
  }
}

id sub_29D9EAB18(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D9EC3C8(a1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  sub_29D9EC11C(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  aBlock[4] = sub_29D9EC42C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DA05EEC;
  aBlock[3] = &unk_2A2461370;
  v8 = _Block_copy(aBlock);
  v9 = objc_opt_self();

  v10 = [v9 blockOperationWithBlock_];
  _Block_release(v8);

  return v10;
}

void sub_29D9EACE0(void *a1)
{
  v1 = a1;
  HighlightAlertDailyAveragesOperation.main()();
}

Swift::Void __swiftcall HighlightAlertDailyAveragesOperation.cleanUp()()
{
  v1 = v0;
  sub_29DA34AF4();
  if ([v0 isCancelled])
  {
    v2 = sub_29D9E9758();
    if (v2)
    {
      v3 = v2;
      if ([v2 isCancelled])
      {
      }

      else
      {
        [v3 cancel];

        v4 = *&v1[qword_2A1A2CEC0];
        *&v1[qword_2A1A2CEC0] = 0;
        sub_29D9E5D94(v4);
      }
    }

    swift_beginAccess();

    sub_29DA33B54();

    sub_29DA34B24();
  }
}

id HighlightAlertDailyAveragesOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_29D9EAEBC()
{

  v1 = *(v0 + qword_2A1A2CEC0);

  sub_29D9E5D94(v1);
}

id HighlightAlertDailyAveragesOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertDailyAveragesOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9EAF54(uint64_t a1)
{

  v2 = *(a1 + qword_2A1A2CEC0);

  sub_29D9E5D94(v2);
}

void sub_29D9EAFD4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    MEMORY[0x2A1C7C4A8](Strong);
    sub_29DA33BF4();
  }
}

void sub_29D9EB07C(void *a1, uint64_t a2)
{
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v38 - v9;
  v11 = sub_29D9E9758();
  if (v11)
  {
    v12 = v11;
    if ([v11 isFinished])
    {
      v13 = sub_29DA34564();
      v14 = v13;
      if (v15)
      {
        sub_29DA34614();
        v16 = a1;
        sub_29D9DC0BC(v14);
        v17 = sub_29DA34634();
        v18 = sub_29DA34B84();

        sub_29D9DC0B0(v14);
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v40 = v18;
          v20 = v19;
          v41 = swift_slowAlloc();
          v43[0] = v41;
          *v20 = 136446466;
          ObjectType = swift_getObjectType();
          sub_29D9EC0D4();
          v21 = sub_29DA34894();
          v39 = v17;
          v23 = sub_29D9EBB44(v21, v22, v43);

          *(v20 + 4) = v23;
          *(v20 + 12) = 2082;
          swift_getErrorValue();
          v24 = sub_29DA35154();
          v26 = sub_29D9EBB44(v24, v25, v43);

          *(v20 + 14) = v26;
          v27 = v39;
          _os_log_impl(&dword_29D9BB000, v39, v40, "[%{public}s] base query result failed with error: %{public}s", v20, 0x16u);
          v28 = v41;
          swift_arrayDestroy();
          MEMORY[0x29ED6E4C0](v28, -1, -1);
          MEMORY[0x29ED6E4C0](v20, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v10, v4);
        v37 = swift_beginAccess();
        MEMORY[0x2A1C7C4A8](v37);
        *(&v38 - 2) = v14;

        sub_29DA33B54();

        sub_29D9DC0B0(v14);
      }

      else
      {
        sub_29D9EB59C(v13, a2);
        sub_29D9DC0B0(v14);
      }

      sub_29DA34B14();

      return;
    }
  }

  sub_29DA34614();
  v29 = a1;
  v30 = sub_29DA34634();
  v31 = sub_29DA34B84();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43[0] = v33;
    *v32 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29D9EC0D4();
    v34 = sub_29DA34894();
    v36 = sub_29D9EBB44(v34, v35, v43);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_29D9BB000, v30, v31, "[%{public}s] attempted final result processing but base query is not finished", v32, 0xCu);
    sub_29D9C7968(v33);
    MEMORY[0x29ED6E4C0](v33, -1, -1);
    MEMORY[0x29ED6E4C0](v32, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();

  sub_29DA33B54();
}

uint64_t sub_29D9EB540(uint64_t a1, char a2)
{
  sub_29D9E5CEC(*a1, *(a1 + 8));
  sub_29D9C6088();
  result = swift_allocError();
  *v5 = a2;
  *a1 = result;
  *(a1 + 8) = 1;
  return result;
}

uint64_t sub_29D9EB59C(void *a1, uint64_t a2)
{
  v23 = a1;
  v3 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v5 = sub_29DA336F4();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v20 = v9;
  *(v9 + 16) = MEMORY[0x29EDCA190];
  v10 = (v9 + 16);
  sub_29DA33524();
  v21 = sub_29DA33694();
  v11 = *(v6 + 8);
  v11(v8, v5);
  sub_29DA334F4();
  v12 = sub_29DA33694();
  v11(v8, v5);
  sub_29D9EC3C8(a2, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v20;
  sub_29D9EC11C(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  aBlock[4] = sub_29D9EC5F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D9EBAD0;
  aBlock[3] = &unk_2A24613E8;
  v15 = _Block_copy(aBlock);

  v16 = v21;
  [v23 enumerateStatisticsFromDate:v21 toDate:v12 withBlock:v15];
  _Block_release(v15);

  swift_beginAccess();
  v17 = *v10;
  swift_beginAccess();
  v24 = v17;

  sub_29DA33B54();
}

void sub_29D9EB8D0(void *a1, uint64_t a2, uint64_t a3, id *a4)
{
  v7 = sub_29DA336F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 averageQuantity];
  if (v11)
  {
    v12 = v11;
    v13 = [a1 startDate];
    sub_29DA336C4();
    sub_29DA33644();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    v16 = [*a4 canonicalUnit];
    if (v16)
    {
      v17 = v16;

      [v12 doubleValueForUnit_];
      v19 = v18;

      swift_beginAccess();
      v20 = *(a3 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a3 + 16) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_29D9D524C(0, *(v20 + 2) + 1, 1, v20);
        *(a3 + 16) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_29D9D524C((v22 > 1), v23 + 1, 1, v20);
      }

      *(v20 + 2) = v23 + 1;
      v24 = &v20[16 * v23];
      *(v24 + 4) = v15;
      *(v24 + 5) = v19;
      *(a3 + 16) = v20;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_29D9EBAD0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_29D9EBB44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29D9EBC10(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29D9C790C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_29D9C7968(v11);
  return v7;
}

unint64_t sub_29D9EBC10(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29D9EBD1C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29DA34E34();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_29D9EBD1C(uint64_t a1, unint64_t a2)
{
  v3 = sub_29D9EBD68(a1, a2);
  sub_29D9EBE98(&unk_2A245EC90);
  return v3;
}

void *sub_29D9EBD68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29D9EBF84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29DA34E34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29DA348F4();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29D9EBF84(v10, 0);
        result = sub_29DA34DE4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29D9EBE98(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29D9EBFEC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29D9EBF84(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x29EDCA190];
  }

  sub_29D9EC6C0();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29D9EBFEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_29D9EC6C0();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

unint64_t sub_29D9EC0D4()
{
  result = qword_2A17D15F8;
  if (!qword_2A17D15F8)
  {
    type metadata accessor for HighlightAlertDailyAveragesOperation(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A17D15F8);
  }

  return result;
}

uint64_t sub_29D9EC11C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9EC180(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29D9EC1E0()
{
  result = qword_2A17D1600;
  if (!qword_2A17D1600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1600);
  }

  return result;
}

uint64_t sub_29D9EC2F8(uint64_t a1)
{
  result = sub_29D9EC37C();
  if (v2 <= 0x3F)
  {
    result = sub_29DA33554();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_29D9EC37C()
{
  result = qword_2A1A2CB28;
  if (!qword_2A1A2CB28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1A2CB28);
  }

  return result;
}

uint64_t sub_29D9EC3C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29D9EC42C()
{
  type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0);
  v1 = *(v0 + 16);

  sub_29D9EAFD4(v1);
}

uint64_t sub_29D9EC490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29D9EC4B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D9E5CEC(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 1;

  return v3;
}

uint64_t sub_29D9EC500()
{
  v1 = (type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_29DA33554();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

void sub_29D9EC5F0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for HighlightAlertDailyAveragesOperation.Configuration(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  sub_29D9EB8D0(a1, a2, v6, v7);
}

uint64_t sub_29D9EC674(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_29D9E5CEC(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = 0;
}

void sub_29D9EC6C0()
{
  if (!qword_2A1A2C9F8)
  {
    v0 = sub_29DA35104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2C9F8);
    }
  }
}

void sub_29D9EC718(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  sub_29D9ED2A0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v39 - v7;
  v9 = sub_29DA33554();
  v45 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v46 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9ED2A0(0, &qword_2A1A2D320, MEMORY[0x29EDB9D58]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = v39 - v12;
  sub_29D9ED2A0(0, &qword_2A1A2D328, MEMORY[0x29EDB9D18]);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = v39 - v15;
  v17 = sub_29DA337A4();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33784();
  if (a2 <= 1u || a2 == 2)
  {
    (*(v18 + 16))(v16, v20, v17);
    (*(v18 + 56))(v16, 0, 1, v17);
    v21 = sub_29DA337B4();
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    goto LABEL_5;
  }

  v44 = v16;
  sub_29D9ED018(a1, v8);
  v22 = v45;
  if ((*(v45 + 48))(v8, 1, v9) == 1)
  {
    sub_29D9ED098(v8);
    v23 = v44;
    (*(v18 + 16))(v44, v20, v17);
    (*(v18 + 56))(v23, 0, 1, v17);
    v24 = sub_29DA337B4();
    (*(*(v24 - 8) + 56))(v13, 1, 1, v24);
LABEL_5:
    sub_29DA335A4();
LABEL_6:
    (*(v18 + 8))(v20, v17);
    return;
  }

  v40 = v13;
  v41 = v20;
  v42 = v18;
  v43 = v17;
  v39[0] = v9;
  v39[1] = a3;
  (*(v22 + 32))(v46, v8, v9);
  v47 = MEMORY[0x29EDCA190];
  sub_29DA1FA70(0, 11, 0);
  v25 = 0x20u;
  v26 = v47;
  do
  {
    v27 = *(&unk_2A245FC90 + v25);
    if ((v27 * 7) >> 64 != (7 * v27) >> 63)
    {
      __break(1u);
      goto LABEL_23;
    }

    v47 = v26;
    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_29DA1FA70((v28 > 1), v29 + 1, 1);
      v26 = v47;
    }

    *(v26 + 16) = v29 + 1;
    v30 = v26 + 16 * v29;
    *(v30 + 32) = v27;
    *(v30 + 40) = (7 * v27) * 60.0;
    v25 += 8;
  }

  while (v25 != 120);
  v31 = 0;
  v32 = (v26 + 40);
  v18 = v42;
  v17 = v43;
  v33 = v40;
  v20 = v41;
  while (v31 < *(v26 + 16))
  {
    v34 = *v32;
    v32 += 2;
    sub_29DA33544();
    if (v34 >= v35 || v29 == v31++)
    {

      v37 = v44;
      (*(v18 + 16))(v44, v20, v17);
      (*(v18 + 56))(v37, 0, 1, v17);
      v38 = sub_29DA337B4();
      (*(*(v38 - 8) + 56))(v33, 1, 1, v38);
      sub_29DA335A4();
      (*(v45 + 8))(v46, v39[0]);
      goto LABEL_6;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_29D9ED018(uint64_t a1, uint64_t a2)
{
  sub_29D9ED2A0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9ED098(uint64_t a1)
{
  sub_29D9ED2A0(0, qword_2A1A2E100, MEMORY[0x29EDB98E8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for HighlightAlertDistributionConfiguration(uint64_t a1)
{
  result = qword_2A1A2DD68;
  if (!qword_2A1A2DD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29D9ED184(uint64_t a1)
{
  type metadata accessor for _HKQuantityDistributionStyle(319);
  if (v1 <= 0x3F)
  {
    sub_29DA34374();
    if (v2 <= 0x3F)
    {
      sub_29D9ED2A0(319, &qword_2A1A2CAB0, type metadata accessor for _HKQuantityDistributionStyle);
      if (v3 <= 0x3F)
      {
        sub_29DA34284();
        if (v4 <= 0x3F)
        {
          sub_29DA34064();
          if (v5 <= 0x3F)
          {
            sub_29D9ED2F4();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_29D9ED2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D9ED2F4()
{
  if (!qword_2A1A2CB50)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB50);
    }
  }
}

unint64_t sub_29D9ED368()
{
  result = qword_2A17D1618;
  if (!qword_2A17D1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1618);
  }

  return result;
}

unint64_t sub_29D9ED3C0()
{
  result = qword_2A17D1620;
  if (!qword_2A17D1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1620);
  }

  return result;
}

uint64_t sub_29D9ED414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x29EDCA398];
  sub_29D9F33D4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = v25 - v11;
  sub_29D9F2FA8(a3, v25 - v11, &qword_2A1A2CB58, v9);
  v13 = sub_29DA34A34();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_29D9F3014(v12, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  }

  else
  {
    sub_29DA34A24();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_29DA349B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_29DA348B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_29D9F3014(a3, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_29D9F3014(a3, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t HighlightAlertStateManager.fetchAlertState(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_29D9F33D4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v16 - v11;
  v13 = sub_29DA34A34();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_29D9ED414(0, 0, v12, &unk_29DA3BA30, v14);
}

uint64_t sub_29D9ED89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = sub_29DA34644();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  sub_29D9F31FC(0);
  v8[14] = v10;
  v8[15] = swift_task_alloc();
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  v8[16] = swift_task_alloc();
  v11 = type metadata accessor for HighlightAlertState(0);
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9EDA38, 0, 0);
}

uint64_t sub_29D9EDA38()
{
  v1 = swift_task_alloc();
  v0[20] = v1;
  *v1 = v0;
  v1[1] = sub_29D9EDADC;
  v2 = v0[16];
  v3 = v0[7];
  v4 = v0[8];

  return sub_29D9DC2D4(v2, v3, v4, 0);
}

uint64_t sub_29D9EDADC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_29D9EDDB4;
  }

  else
  {
    v2 = sub_29D9EDBF0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9EDBF0()
{
  v1 = v0[16];
  if ((*(v0[18] + 48))(v1, 1, v0[17]) == 1)
  {
    v2 = v0[15];
    v3 = v0[9];
    sub_29D9F3014(v1, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    sub_29D9F32C0();
    v4 = swift_allocError();
    *v5 = 0;
    *v2 = v4;
    swift_storeEnumTagMultiPayload();
    v3(v2);
    v6 = sub_29D9F31FC;
  }

  else
  {
    v2 = v0[19];
    v7 = v0[15];
    v8 = v0[9];
    sub_29D9EE9AC(v1, v2);
    sub_29D9F2F34(v2, v7, type metadata accessor for HighlightAlertState);
    swift_storeEnumTagMultiPayload();
    v8(v7);
    sub_29D9F3070(v7, sub_29D9F31FC);
    v6 = type metadata accessor for HighlightAlertState;
  }

  sub_29D9F3070(v2, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_29D9EDDB4(uint64_t a1)
{
  v29 = v1;
  v2 = v1[21];
  sub_29DA34614();

  v3 = v2;
  v4 = sub_29DA34634();
  v5 = sub_29DA34B84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[12];
    v27 = v1[13];
    v26 = v1[11];
    v7 = v1[7];
    v8 = v1[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136446723;
    v11 = HighlightAlertStateManager.description.getter();
    v13 = sub_29D9EBB44(v11, v12, &v28);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_29D9EBB44(v7, v8, &v28);
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v14 = sub_29DA35154();
    v16 = sub_29D9EBB44(v14, v15, &v28);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: error fetching sync alert state with key: %{private}s, error: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v10, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);

    (*(v6 + 8))(v27, v26);
  }

  else
  {
    v18 = v1[12];
    v17 = v1[13];
    v19 = v1[11];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v1[21];
  v21 = v1[15];
  v22 = v1[9];
  *v21 = v20;
  swift_storeEnumTagMultiPayload();
  v23 = v20;
  v22(v21);

  sub_29D9F3070(v21, sub_29D9F31FC);

  v24 = v1[1];

  return v24();
}

uint64_t HighlightAlertStateManager.description.getter()
{
  MEMORY[0x29ED6D450](60, 0xE100000000000000);
  sub_29D9EE158(0, v0);
  v1 = sub_29DA34894();
  MEMORY[0x29ED6D450](v1);

  MEMORY[0x29ED6D450](32, 0xE100000000000000);
  sub_29DA34E94();
  MEMORY[0x29ED6D450](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_29D9EE158(uint64_t a1, uint64_t a2)
{
  result = qword_2A1A2D018;
  if (!qword_2A1A2D018)
  {
    type metadata accessor for HighlightAlertStateManager();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2D018);
  }

  return result;
}

uint64_t HighlightAlertStateManager.persist(alertState:identifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v26 = a2;
  v11 = type metadata accessor for HighlightAlertState(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F33D4(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398]);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = &v25 - v16;
  v18 = sub_29DA34A34();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_29D9F2F34(a1, v14, type metadata accessor for HighlightAlertState);
  v19 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v6;
  sub_29D9EE9AC(v14, v21 + v19);
  v22 = (v21 + v20);
  *v22 = v26;
  v22[1] = a3;
  v23 = (v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = a4;
  v23[1] = a5;

  sub_29D9C1D2C(a4, a5);
  sub_29D9ED414(0, 0, v17, &unk_29DA3AE38, v21);
}

uint64_t sub_29D9EE3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v12;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v9 = sub_29DA34644();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9EE4C0, 0, 0);
}

uint64_t sub_29D9EE4C0()
{
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_29D9EE564;
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  return sub_29D9DD118(v4, v2, v3, 0);
}

uint64_t sub_29D9EE564()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_29D9EE728;
  }

  else
  {
    v2 = sub_29D9EE678;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9EE678()
{
  v1 = *(v0 + 96);
  if (v1)
  {
    sub_29D9C6144();
    sub_29DA351F4();
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v1(v2, v3);
    sub_29D9F3428(v2, v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_29D9EE728(uint64_t a1)
{
  v28 = v1;
  v2 = v1[18];
  sub_29DA34614();

  v3 = v2;
  v4 = sub_29DA34634();
  v5 = sub_29DA34B84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[15];
    v26 = v1[16];
    v25 = v1[14];
    v7 = v1[10];
    v8 = v1[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136446723;
    v11 = HighlightAlertStateManager.description.getter();
    v13 = sub_29D9EBB44(v11, v12, &v27);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;
    *(v9 + 14) = sub_29D9EBB44(v7, v8, &v27);
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v14 = sub_29DA35154();
    v16 = sub_29D9EBB44(v14, v15, &v27);

    *(v9 + 24) = v16;
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: error persisting sync alert state with key: %{private}s, error: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v10, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);

    (*(v6 + 8))(v26, v25);
  }

  else
  {
    v18 = v1[15];
    v17 = v1[16];
    v19 = v1[14];

    (*(v18 + 8))(v17, v19);
  }

  v20 = v1[12];
  v21 = v1[18];
  if (v20)
  {
    v22 = v21;
    v20(v21, 1);
  }

  v23 = v1[1];

  return v23();
}

uint64_t sub_29D9EE9AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29D9EEA10(uint64_t a1)
{
  v3 = *(type metadata accessor for HighlightAlertState(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_29D9D02DC;

  return sub_29D9EE3F0(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

uint64_t sub_29D9EEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2A1C73D48](sub_29D9EEB9C, 0, 0);
}

uint64_t sub_29D9EEB9C()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_29D9EEC38;
  v3 = v0[3];
  v2 = v0[4];

  return sub_29D9DDDD8(v3, v2);
}

uint64_t sub_29D9EEC38()
{

  return MEMORY[0x2A1C73D48](sub_29D9EED34, 0, 0);
}

uint64_t sub_29D9EED34()
{
  (*(v0 + 40))();
  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_29D9EED98()
{
  sub_29D9F33D4(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
  v52 = v0;
  v1 = MEMORY[0x2A1C7C4A8](v0);
  v51 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v55 = &v50 - v4;
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v50 - v5;
  v7 = sub_29DA34644();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v54 = (&v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v50 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v50 - v14;
  sub_29DA34614();

  v16 = sub_29DA34634();
  v17 = sub_29DA34B64();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v50 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v53 = v13;
    v21 = v8;
    v22 = v7;
    v23 = v20;
    v56[0] = v20;
    *v19 = 136446210;
    v24 = HighlightAlertStateManager.description.getter();
    v26 = sub_29D9EBB44(v24, v25, v56);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_29D9BB000, v16, v17, "%{public}s: fetching context sync migration completed status", v19, 0xCu);
    sub_29D9C7968(v23);
    v27 = v23;
    v7 = v22;
    v8 = v21;
    v13 = v53;
    MEMORY[0x29ED6E4C0](v27, -1, -1);
    v28 = v19;
    v6 = v50;
    MEMORY[0x29ED6E4C0](v28, -1, -1);
  }

  v29 = *(v8 + 8);
  v29(v15, v7);
  sub_29DA34BC4();
  v30 = v55;
  sub_29DA34614();
  sub_29D9F2FA8(v6, v30, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);

  v31 = sub_29DA34634();
  v32 = sub_29DA34B64();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v53 = v13;
    v34 = v33;
    v50 = swift_slowAlloc();
    v56[0] = v50;
    *v34 = 136446466;
    v35 = HighlightAlertStateManager.description.getter();
    v54 = v29;
    v36 = v30;
    v38 = sub_29D9EBB44(v35, v37, v56);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2082;
    v39 = MEMORY[0x29EDB9BC8];
    sub_29D9F2FA8(v30, v51, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    v40 = v6;
    v41 = sub_29DA34894();
    v43 = v42;
    sub_29D9F3014(v36, &qword_2A1A2E148, v39);
    v44 = v41;
    v6 = v40;
    v45 = sub_29D9EBB44(v44, v43, v56);

    *(v34 + 14) = v45;
    _os_log_impl(&dword_29D9BB000, v31, v32, "%{public}s: received context sync migration completed date: %{public}s", v34, 0x16u);
    v46 = v50;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v46, -1, -1);
    MEMORY[0x29ED6E4C0](v34, -1, -1);

    v54(v53, v7);
  }

  else
  {

    sub_29D9F3014(v30, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    v29(v13, v7);
  }

  v47 = sub_29DA336F4();
  v48 = (*(*(v47 - 8) + 48))(v6, 1, v47) != 1;
  sub_29D9F3014(v6, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
  return v48;
}

uint64_t sub_29D9EF4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_29DA336F4();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v6[20] = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_29DA34644();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9EF638, 0, 0);
}

uint64_t sub_29D9EF638(uint64_t a1)
{
  v46 = v1;
  sub_29DA34614();

  v2 = sub_29DA34634();
  v3 = sub_29DA34B64();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 208);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136446210;
    v10 = HighlightAlertStateManager.description.getter();
    v12 = sub_29D9EBB44(v10, v11, &v45);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D9BB000, v2, v3, "%{public}s: beginning alert state migration for all configurations", v8, 0xCu);
    sub_29D9C7968(v9);
    MEMORY[0x29ED6E4C0](v9, -1, -1);
    MEMORY[0x29ED6E4C0](v8, -1, -1);
  }

  v13 = *(v7 + 8);
  v13(v5, v6);
  *(v1 + 216) = v13;
  v14 = sub_29D9FB6FC();
  *(v1 + 224) = v14;
  v15 = v14[2];
  *(v1 + 232) = v15;
  if (v15)
  {
    v16 = *(v1 + 160);
    v17 = *(v1 + 168);
    v18 = *(v16 + 80);
    *(v1 + 288) = v18;
    *(v1 + 240) = *(v16 + 72);
    *(v1 + 248) = 0;
    sub_29D9F2F34(v14 + ((v18 + 32) & ~v18), v17, type metadata accessor for HighlightAlertConfiguration);
    v19 = *v17;
    v20 = *(v17 + 8);
    v21 = *(v17 + 16) == 0;
    if (*(v17 + 16))
    {
      v22 = 0;
    }

    else
    {
      v22 = 0x7961446E65766553;
    }

    if (v21)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v23 = 0;
    }

    sub_29D9D5C44(v19, v20, v22, v23, (v1 + 16));
    v25 = *(v1 + 48);
    v24 = *(v1 + 56);
    *(v1 + 256) = v25;
    *(v1 + 264) = v24;

    sub_29D9D6630(v1 + 16);
    v26 = swift_task_alloc();
    *(v1 + 272) = v26;
    *v26 = v1;
    v26[1] = sub_29D9EFA9C;

    return sub_29D9F04D4(v25, v24);
  }

  else
  {

    v29 = *(v1 + 144);
    v28 = *(v1 + 152);
    v30 = *(v1 + 136);
    sub_29DA336E4();
    sub_29D9F0F44();
    (*(v29 + 8))(v28, v30);
    sub_29DA34614();

    v31 = sub_29DA34634();
    v32 = sub_29DA34B64();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v1 + 216);
    v35 = *(v1 + 200);
    v36 = *(v1 + 176);
    if (v33)
    {
      v44 = *(v1 + 216);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136446210;
      v39 = HighlightAlertStateManager.description.getter();
      v41 = sub_29D9EBB44(v39, v40, &v45);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_29D9BB000, v31, v32, "%{public}s: finished alert state migration", v37, 0xCu);
      sub_29D9C7968(v38);
      MEMORY[0x29ED6E4C0](v38, -1, -1);
      MEMORY[0x29ED6E4C0](v37, -1, -1);

      v42 = v44(v35, v36);
    }

    else
    {

      v42 = v34(v35, v36);
    }

    (*(v1 + 120))(v42);

    v43 = *(v1 + 8);

    return v43();
  }
}

uint64_t sub_29D9EFA9C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_29D9EFF34;
  }

  else
  {

    v2 = sub_29D9EFBB8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9EFBB8()
{
  v30 = v0;
  sub_29D9F3070(*(v0 + 168), type metadata accessor for HighlightAlertConfiguration);
  v1 = *(v0 + 248) + 1;
  if (v1 == *(v0 + 232))
  {

    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v4 = *(v0 + 136);
    sub_29DA336E4();
    sub_29D9F0F44();
    (*(v3 + 8))(v2, v4);
    sub_29DA34614();

    v5 = sub_29DA34634();
    v6 = sub_29DA34B64();

    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 216);
    v9 = *(v0 + 200);
    v10 = *(v0 + 176);
    if (v7)
    {
      v28 = *(v0 + 216);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29 = v12;
      *v11 = 136446210;
      v13 = HighlightAlertStateManager.description.getter();
      v15 = sub_29D9EBB44(v13, v14, &v29);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_29D9BB000, v5, v6, "%{public}s: finished alert state migration", v11, 0xCu);
      sub_29D9C7968(v12);
      MEMORY[0x29ED6E4C0](v12, -1, -1);
      MEMORY[0x29ED6E4C0](v11, -1, -1);

      v16 = v28(v9, v10);
    }

    else
    {

      v16 = v8(v9, v10);
    }

    (*(v0 + 120))(v16);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    *(v0 + 248) = v1;
    v17 = *(v0 + 168);
    sub_29D9F2F34(*(v0 + 224) + ((*(v0 + 288) + 32) & ~*(v0 + 288)) + *(v0 + 240) * v1, v17, type metadata accessor for HighlightAlertConfiguration);
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16) == 0;
    if (*(v17 + 16))
    {
      v21 = 0;
    }

    else
    {
      v21 = 0x7961446E65766553;
    }

    if (v20)
    {
      v22 = 0xE800000000000000;
    }

    else
    {
      v22 = 0;
    }

    sub_29D9D5C44(v18, v19, v21, v22, (v0 + 16));
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    *(v0 + 256) = v24;
    *(v0 + 264) = v23;

    sub_29D9D6630(v0 + 16);
    v25 = swift_task_alloc();
    *(v0 + 272) = v25;
    *v25 = v0;
    v25[1] = sub_29D9EFA9C;

    return sub_29D9F04D4(v24, v23);
  }
}

uint64_t sub_29D9EFF34(uint64_t a1)
{
  v57 = v1;
  v2 = *(v1 + 280);
  sub_29DA34614();

  v3 = v2;
  v4 = sub_29DA34634();
  v5 = sub_29DA34B84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 280);
    v8 = *(v1 + 256);
    v7 = *(v1 + 264);
    v52 = *(v1 + 192);
    v53 = *(v1 + 216);
    v54 = *(v1 + 168);
    v51 = *(v1 + 176);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56 = v10;
    *v9 = 136446723;
    v11 = HighlightAlertStateManager.description.getter();
    v13 = sub_29D9EBB44(v11, v12, &v56);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2081;
    v14 = sub_29D9EBB44(v8, v7, &v56);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2082;
    swift_getErrorValue();
    v15 = sub_29DA35154();
    v17 = sub_29D9EBB44(v15, v16, &v56);

    *(v9 + 24) = v17;
    _os_log_impl(&dword_29D9BB000, v4, v5, "%{public}s: error migrating alert state configuration with identifier: %{private}s, error: %{public}s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v10, -1, -1);
    MEMORY[0x29ED6E4C0](v9, -1, -1);

    v53(v52, v51);
    v18 = v54;
  }

  else
  {
    v19 = *(v1 + 280);
    v20 = *(v1 + 216);
    v21 = *(v1 + 192);
    v23 = *(v1 + 168);
    v22 = *(v1 + 176);

    v20(v21, v22);
    v18 = v23;
  }

  sub_29D9F3070(v18, type metadata accessor for HighlightAlertConfiguration);
  v24 = *(v1 + 248) + 1;
  if (v24 == *(v1 + 232))
  {

    v26 = *(v1 + 144);
    v25 = *(v1 + 152);
    v27 = *(v1 + 136);
    sub_29DA336E4();
    sub_29D9F0F44();
    (*(v26 + 8))(v25, v27);
    sub_29DA34614();

    v28 = sub_29DA34634();
    v29 = sub_29DA34B64();

    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v1 + 216);
    v32 = *(v1 + 200);
    v33 = *(v1 + 176);
    if (v30)
    {
      v55 = *(v1 + 216);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v56 = v35;
      *v34 = 136446210;
      v36 = HighlightAlertStateManager.description.getter();
      v38 = sub_29D9EBB44(v36, v37, &v56);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_29D9BB000, v28, v29, "%{public}s: finished alert state migration", v34, 0xCu);
      sub_29D9C7968(v35);
      MEMORY[0x29ED6E4C0](v35, -1, -1);
      MEMORY[0x29ED6E4C0](v34, -1, -1);

      v39 = v55(v32, v33);
    }

    else
    {

      v39 = v31(v32, v33);
    }

    (*(v1 + 120))(v39);

    v50 = *(v1 + 8);

    return v50();
  }

  else
  {
    *(v1 + 248) = v24;
    v40 = *(v1 + 168);
    sub_29D9F2F34(*(v1 + 224) + ((*(v1 + 288) + 32) & ~*(v1 + 288)) + *(v1 + 240) * v24, v40, type metadata accessor for HighlightAlertConfiguration);
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = *(v40 + 16) == 0;
    if (*(v40 + 16))
    {
      v44 = 0;
    }

    else
    {
      v44 = 0x7961446E65766553;
    }

    if (v43)
    {
      v45 = 0xE800000000000000;
    }

    else
    {
      v45 = 0;
    }

    sub_29D9D5C44(v41, v42, v44, v45, (v1 + 16));
    v47 = *(v1 + 48);
    v46 = *(v1 + 56);
    *(v1 + 256) = v47;
    *(v1 + 264) = v46;

    sub_29D9D6630(v1 + 16);
    v48 = swift_task_alloc();
    *(v1 + 272) = v48;
    *v48 = v1;
    v48[1] = sub_29D9EFA9C;

    return sub_29D9F04D4(v47, v46);
  }
}

uint64_t sub_29D9F04D4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for HighlightAlertState(0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  v3[8] = v5;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_29DA34644();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29D9F064C, 0, 0);
}

uint64_t sub_29D9F064C(uint64_t a1)
{
  v24 = v1;
  sub_29DA34614();

  v2 = sub_29DA34634();
  v3 = sub_29DA34B64();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[12];
  v5 = v1[13];
  v7 = v1[11];
  if (v4)
  {
    v21 = v1[2];
    v22 = v1[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446467;
    v10 = HighlightAlertStateManager.description.getter();
    v12 = sub_29D9EBB44(v10, v11, &v23);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2081;
    *(v8 + 14) = sub_29D9EBB44(v21, v22, &v23);
    _os_log_impl(&dword_29D9BB000, v2, v3, "%{public}s: beginning alert state migration with key: %{private}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v9, -1, -1);
    MEMORY[0x29ED6E4C0](v8, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v14 = v1[3];
  v13 = v1[4];
  v15 = v1[2];
  v16 = swift_task_alloc();
  v1[14] = v16;
  v16[2] = v13;
  v16[3] = v15;
  v16[4] = v14;
  v17 = swift_task_alloc();
  v1[15] = v17;
  *v17 = v1;
  v17[1] = sub_29D9F08A4;
  v18 = v1[10];
  v19 = v1[8];

  return MEMORY[0x2A1C73C80](v18, 0, 0, 0xD000000000000025, 0x800000029DA375D0, sub_29D9F2F9C, v16, v19);
}

uint64_t sub_29D9F08A4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_29D9F0DB0;
  }

  else
  {

    v2 = sub_29D9F09C0;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9F09C0()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = v0[6];
  sub_29D9F2FA8(v0[10], v1, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_29D9F3014(v0[10], qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    v5 = v0[3];
    v4 = v0[4];
    v6 = v0[2];
    sub_29D9F3014(v0[9], qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    sub_29D9F131C(v4, v6, v5);

    v7 = v0[1];

    return v7();
  }

  else
  {
    sub_29D9EE9AC(v0[9], v0[7]);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_29D9F0BA4;
    v10 = v0[7];
    v11 = v0[2];
    v12 = v0[3];

    return sub_29D9DD118(v10, v11, v12, 1);
  }
}

uint64_t sub_29D9F0BA4()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_29D9F0E5C;
  }

  else
  {
    v2 = sub_29D9F0CB8;
  }

  return MEMORY[0x2A1C73D48](v2, 0, 0);
}

uint64_t sub_29D9F0CB8()
{
  sub_29D9F3070(v0[7], type metadata accessor for HighlightAlertState);
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_29D9F3014(v0[10], qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  sub_29D9F131C(v1, v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D9F0DB0()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  sub_29D9F131C(v2, v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_29D9F0E5C()
{
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_29D9F3070(v0[7], type metadata accessor for HighlightAlertState);
  sub_29D9F3014(v1, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  sub_29D9F131C(v2, v4, v3);

  v5 = v0[1];

  return v5();
}