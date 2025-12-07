uint64_t sub_21444538C()
{
  close(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_2144453E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914350, &qword_21474D950);
    v3 = sub_2146DA058();
    v4 = a1 + 32;

    while (1)
    {
      sub_214445550(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_21408C300(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_213FDC730(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2144454F8()
{
  result = qword_27C913AE0;
  if (!qword_27C913AE0)
  {
    v3 = sub_2146D8578();
    result = swift_getWitnessTable(MEMORY[0x277CC8650], v3, v0, v1);
    atomic_store(result, &qword_27C913AE0);
  }

  return result;
}

uint64_t sub_214445550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FE0, &unk_2146EA760);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144455C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_214737980;
  *(inited + 32) = 0x6D69547472617473;
  *(inited + 40) = 0xE900000000000065;
  v3 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v4 = sub_2146D9588();
  [v3 setDateFormat_];

  v5 = sub_2146D8AD8();
  v6 = [v3 stringFromDate_];

  v7 = sub_2146D95B8();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0x656D6954646E65;
  *(inited + 88) = 0xE700000000000000;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v12 = sub_2146D9588();
  [v11 setDateFormat_];

  v13 = type metadata accessor for MBDActionCalendar(0);
  v14 = sub_2146D8AD8();
  v15 = [v11 stringFromDate_];

  v16 = sub_2146D95B8();
  v18 = v17;

  *(inited + 96) = v16;
  *(inited + 104) = v18;
  *(inited + 120) = v10;
  *(inited + 128) = 0x656C746974;
  *(inited + 136) = 0xE500000000000000;
  v19 = v1 + v13[6];
  v20 = *(v19 + 24);
  if (v20)
  {
    *(inited + 144) = *(v19 + 16);
    *(inited + 152) = v20;
    *(inited + 168) = v10;
    strcpy((inited + 176), "calDescription");
    *(inited + 191) = -18;
    v21 = v1 + v13[7];
    v22 = *(v21 + 24);
    if (v22 != 1)
    {
      v23 = *(v21 + 16);
      if (v22)
      {
        v24 = MEMORY[0x277D837D0];
        v25 = v23;
        v26 = v22;
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v24 = 0;
        *(inited + 208) = 0;
      }

      *(inited + 192) = v25;
      *(inited + 200) = v26;
      *(inited + 216) = v24;
      *(inited + 224) = 0x6B6361626C6C6166;
      *(inited + 232) = 0xEB000000006C7255;
      v27 = v1 + v13[8];
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      if (!v29)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(inited + 256) = 0;
LABEL_10:
        *(inited + 240) = v30;
        *(inited + 248) = v31;
        *(inited + 264) = v32;

        sub_213FDC9D0(v23, v22);
        sub_213FDC9D0(v28, v29);
        v33 = sub_214045690(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
        swift_arrayDestroy();
        v34 = sub_2140418B8(v33);

        return v34;
      }

      if (v29 != 1)
      {
        v32 = MEMORY[0x277D837D0];
        v30 = v28;
        v31 = v29;
        goto LABEL_10;
      }
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214445978()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_214445A70(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_214445B54(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_214445C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2144475FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214445C78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D69547472617473;
  v5 = 0xE500000000000000;
  v6 = 0x656C746974;
  v7 = 0xEE006E6F69747069;
  v8 = 0x72637365446C6163;
  if (v2 != 3)
  {
    v8 = 0x6B6361626C6C6166;
    v7 = 0xEB000000006C7255;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D6954646E65;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_214445D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2144475FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214445D54(uint64_t a1)
{
  v2 = sub_2144473C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214445D90(uint64_t a1)
{
  v2 = sub_2144473C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214445DCC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v129 = a2;
  v130 = type metadata accessor for MBDActionCalendar(0);
  MEMORY[0x28223BE20](v130);
  v133 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2146D8B08();
  v134 = *(v135 - 8);
  v4 = MEMORY[0x28223BE20](v135);
  v131 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v132 = &v115 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v115 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v115 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v115 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v115 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AE8, &qword_2147418A0);
  v136 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v115 - v20;
  v22 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_2144473C0();
  v23 = v148;
  sub_2146DAA08();
  if (!v23)
  {
    v24 = v16;
    v126 = v10;
    v127 = v13;
    v128 = v18;
    v25 = v135;
    LOBYTE(v144) = 0;
    sub_2146DA168();
    LOBYTE(v144) = 1;
    v26 = sub_2146DA168();
    v27 = v136;
    v124 = v26;
    v125 = v28;
    LOBYTE(v144) = 2;
    v29 = sub_2146DA168();
    v31 = v30;
    v123 = v29;
    LOBYTE(v144) = 3;
    v32 = sub_2146DA0F8();
    *(&v121 + 1) = v34;
    *&v121 = v32;
    v122 = v31;
    LOBYTE(v144) = 4;
    v35 = sub_2146DA0F8();
    v148 = 0;
    v120 = v36;
    v117 = v35;
    v37 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v119 = "FileDescriptor";
    v118 = 0xD000000000000018;
    v38 = sub_2146D9588();
    [v37 setDateFormat_];

    v39 = sub_2146D9588();

    v40 = [v37 dateFromString_];

    if (v40)
    {
      sub_2146D8AE8();

      v116 = v134[4];
      v116(v128, v24, v25);
      v41 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v42 = sub_2146D9588();
      [v41 setDateFormat_];

      v43 = sub_2146D9588();

      v44 = [v41 dateFromString_];

      if (v44)
      {
        v125 = v19;
        v45 = v126;
        sub_2146D8AE8();

        v46 = v127;
        v116(v127, v45, v25);
        v47 = v134[2];
        v48 = v132;
        v47(v132, v128, v25);
        v49 = v131;
        v47(v131, v46, v25);
        v50 = v133;
        v47(v133, v48, v25);
        v47((v50 + *(v130 + 20)), v49, v25);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2146E9BF0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
        v52 = swift_allocObject();
        LOBYTE(v144) = 0;
        v53 = swift_allocObject();
        *(v53 + 16) = 100;
        *(v53 + 24) = v144;
        *(v52 + 16) = sub_21406418C;
        *(v52 + 24) = v53;
        *(inited + 32) = v52;
        sub_214042B80(inited, &v144);
        v54 = v146;
        v126 = v145;
        LOBYTE(v46) = v147;
        sub_2144A2E70(&v140);
        v56 = v141;
        v55 = v142;
        LOBYTE(inited) = v143;
        sub_2144A2FBC(v138);
        v57 = v139;
        v58 = v130;
        v59 = v50 + *(v130 + 24);
        *v59 = v144;
        *(v59 + 16) = v126;
        *(v59 + 24) = v54;
        *(v59 + 32) = v46;
        v60 = v50 + *(v58 + 28);
        *v60 = v140;
        *(v60 + 16) = v56;
        *(v60 + 24) = v55;
        *(v60 + 32) = inited;
        v61 = v50 + *(v58 + 32);
        v62 = v138[1];
        *v61 = v138[0];
        *(v61 + 16) = v62;
        *(v61 + 32) = v57;
        v64 = *v59;
        v63 = *(v59 + 8);
        v65 = *(v59 + 24);
        v116 = *(v59 + 16);
        LODWORD(v58) = *(v59 + 32);
        *&v140 = v123;
        *(&v140 + 1) = v122;
        LODWORD(v126) = v58;
        LOBYTE(v138[0]) = v58;
        *&v144 = 0xD000000000000017;
        *(&v144 + 1) = 0x800000021478D680;
        v118 = 0x800000021478D680;
        v145 = 0xD00000000000001CLL;
        v146 = 0x800000021478A360;
        v130 = 0x800000021478A360;
        v119 = v65;

        v66 = v148;
        v124 = v64;
        v67 = v64(&v140, v138, &v144);
        if (v66)
        {
          v148 = v66;

          v68 = v125;
        }

        else
        {
          v115 = v61;
          v68 = v125;
          if (v67)
          {
            v73 = v130;
            v148 = 0;

            *v59 = v124;
            *(v59 + 8) = v63;
            v74 = v122;
            *(v59 + 16) = v123;
            *(v59 + 24) = v74;
            *(v59 + 32) = v126;
            v76 = *v60;
            v75 = *(v60 + 8);
            v77 = *(v60 + 16);
            v78 = *(v60 + 24);
            v79 = *(v60 + 32);
            v140 = v121;
            LODWORD(v124) = v79;
            LOBYTE(v138[0]) = v79;
            *&v144 = 0xD000000000000020;
            *(&v144 + 1) = 0x800000021478D6A0;
            v145 = 0xD00000000000001CLL;
            v146 = v73;

            v123 = v77;
            sub_213FDC9D0(v77, v78);
            v80 = v148;
            v126 = v76;
            v81 = (v76)(&v140, v138, &v144);
            v148 = v80;
            if (v80)
            {
            }

            else
            {
              if (v81)
              {
                sub_213FDC6D0(v123, v78);
                v86 = v130;

                v87 = *(v60 + 16);
                v88 = *(v60 + 24);

                sub_213FDC6D0(v87, v88);
                *v60 = v126;
                *(v60 + 8) = v75;
                v89 = *(&v121 + 1);
                *(v60 + 16) = v121;
                *(v60 + 24) = v89;
                *(v60 + 32) = v124;
                v91 = *v115;
                v90 = *(v115 + 8);
                v92 = *(v115 + 16);
                v93 = *(v115 + 24);
                v94 = *(v115 + 32);
                *&v140 = v117;
                *(&v140 + 1) = v120;
                LODWORD(v126) = v94;
                LOBYTE(v138[0]) = v94;
                *&v144 = 0xD00000000000001DLL;
                *(&v144 + 1) = 0x800000021478D6D0;
                v145 = 0xD00000000000001CLL;
                v146 = v86;

                sub_213FDC9D0(v92, v93);
                v95 = v148;
                v96 = v91(&v140, v138, &v144);
                v148 = v95;
                if (v95)
                {
                }

                else
                {
                  if (v96)
                  {
                    sub_213FDC6D0(v92, v93);

                    v103 = v134[1];
                    v103(v131, v25);
                    v103(v132, v25);
                    v103(v127, v25);
                    v103(v128, v25);
                    (*(v136 + 8))(v21, v125);
                    v104 = v115;
                    v105 = *(v115 + 16);
                    v106 = *(v115 + 24);

                    sub_213FDC6D0(v105, v106);
                    *v104 = v91;
                    *(v104 + 8) = v90;
                    v107 = v120;
                    *(v104 + 16) = v117;
                    *(v104 + 24) = v107;
                    *(v104 + 32) = v126;
                    sub_214447470(v133, v129);
                    return __swift_destroy_boxed_opaque_existential_1(v137);
                  }

                  sub_214031C4C();
                  v108 = swift_allocError();
                  *v109 = 0xD00000000000001DLL;
                  v109[1] = 0x800000021478D6D0;
                  v110 = v130;
                  v109[2] = 0xD00000000000001CLL;
                  v109[3] = v110;
                  v148 = v108;
                  swift_willThrow();
                }

                v111 = v134[1];
                v111(v131, v25);
                v111(v132, v25);
                v111(v127, v25);
                v111(v128, v25);
                (*(v136 + 8))(v21, v125);
                v112 = v115;
                v113 = *(v115 + 16);
                v114 = *(v115 + 24);

                sub_213FDC6D0(v113, v114);
                *v112 = v91;
                *(v112 + 8) = v90;
                *(v112 + 16) = v92;
                *(v112 + 24) = v93;
                *(v112 + 32) = v126;
                goto LABEL_17;
              }

              sub_214031C4C();
              v97 = swift_allocError();
              *v98 = 0xD000000000000020;
              v98[1] = 0x800000021478D6A0;
              v99 = v130;
              v98[2] = 0xD00000000000001CLL;
              v98[3] = v99;
              v148 = v97;
              swift_willThrow();
            }

            v100 = v134[1];
            v100(v131, v25);
            v100(v132, v25);
            v100(v127, v25);
            v100(v128, v25);
            (*(v136 + 8))(v21, v125);
            v101 = *(v60 + 16);
            v102 = *(v60 + 24);

            sub_213FDC6D0(v101, v102);
            *v60 = v126;
            *(v60 + 8) = v75;
            *(v60 + 16) = v123;
            *(v60 + 24) = v78;
            *(v60 + 32) = v124;
LABEL_17:
            sub_214447414(v133);
            return __swift_destroy_boxed_opaque_existential_1(v137);
          }

          sub_214031C4C();
          v82 = swift_allocError();
          *v83 = 0xD000000000000017;
          v83[1] = v118;
          v83[2] = 0xD00000000000001CLL;
          v83[3] = v130;
          v148 = v82;
          swift_willThrow();
        }

        v84 = v134[1];
        v84(v131, v25);
        v84(v132, v25);
        v84(v127, v25);
        v84(v128, v25);
        (*(v136 + 8))(v21, v68);

        *v59 = v124;
        *(v59 + 8) = v63;
        v85 = v119;
        *(v59 + 16) = v116;
        *(v59 + 24) = v85;
        *(v59 + 32) = v126;
        goto LABEL_17;
      }

      (v134[1])(v128, v25);
    }

    else
    {
    }

    v69 = sub_2146D9F58();
    v70 = swift_allocError();
    v72 = v71;
    sub_2146D9F28();
    (*(*(v69 - 8) + 104))(v72, *MEMORY[0x277D84168], v69);
    v148 = v70;
    swift_willThrow();
    (*(v27 + 8))(v21, v19);
    return __swift_destroy_boxed_opaque_existential_1(v137);
  }

  v148 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v137);
}

void sub_214446F18(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AF8, qword_2147418A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2144473C0();
  sub_2146DAA28();
  v9 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v10 = sub_2146D9588();
  [v9 setDateFormat_];

  v11 = sub_2146D8AD8();
  v12 = [v9 stringFromDate_];

  sub_2146D95B8();
  LOBYTE(v25) = 0;
  sub_2146DA328();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v24 = v6;

    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_2146D9588();
    [v13 setDateFormat_];

    v15 = type metadata accessor for MBDActionCalendar(0);
    v16 = sub_2146D8AD8();
    v17 = [v13 stringFromDate_];

    sub_2146D95B8();
    LOBYTE(v25) = 1;
    sub_2146DA328();

    v18 = v24;
    if (!*(v3 + v15[6] + 24) || (LOBYTE(v25) = 2, , sub_2146DA328(), , v19 = v3 + v15[7], v20 = *(v19 + 24), v20 == 1) || (v25 = *(v19 + 16), v26 = v20, v27 = 3, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050), sub_214045AC0(), sub_2146DA388(), v21 = v3 + v15[8], v22 = *(v21 + 24), v22 == 1))
    {
      sub_2146DA018();
      __break(1u);
    }

    else
    {
      v25 = *(v21 + 16);
      v26 = v22;
      v27 = 4;
      sub_2146DA388();
      (*(v18 + 8))(v8, v5);
    }
  }
}

unint64_t sub_2144473C0()
{
  result = qword_27C913AF0;
  if (!qword_27C913AF0)
  {
    result = swift_getWitnessTable(aM_109, &_s19CodingConfigurationV10CodingKeysON_8, v0, v1);
    atomic_store(result, &qword_27C913AF0);
  }

  return result;
}

uint64_t sub_214447414(uint64_t a1)
{
  v2 = type metadata accessor for MBDActionCalendar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214447470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDActionCalendar(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2144474F8()
{
  result = qword_27C913B00;
  if (!qword_27C913B00)
  {
    result = swift_getWitnessTable(byte_214741A18, &_s19CodingConfigurationV10CodingKeysON_8, v0, v1);
    atomic_store(result, &qword_27C913B00);
  }

  return result;
}

unint64_t sub_214447550()
{
  result = qword_27C913B08;
  if (!qword_27C913B08)
  {
    result = swift_getWitnessTable(aQ_20, &_s19CodingConfigurationV10CodingKeysON_8, v0, v1);
    atomic_store(result, &qword_27C913B08);
  }

  return result;
}

unint64_t sub_2144475A8()
{
  result = qword_27C913B10;
  if (!qword_27C913B10)
  {
    result = swift_getWitnessTable(aA_25, &_s19CodingConfigurationV10CodingKeysON_8, v0, v1);
    atomic_store(result, &qword_27C913B10);
  }

  return result;
}

unint64_t sub_2144475FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214447648@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10002u >> (8 * (result + 1));
  if ((result + 1) >= 3)
  {
    LOBYTE(v2) = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214447670@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x10002u >> (8 * (result + 1));
  if ((result + 1) >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2144476DC()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214741CB8[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214447764(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_214741CB8[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_214447890()
{
  v1 = *v0;

  return v1;
}

void sub_2144478C0(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_214447918@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LiteRelayTextMessage(0) + 20);

  return sub_2144479A8(v3, a1);
}

uint64_t type metadata accessor for LiteRelayTextMessage(uint64_t a1)
{
  result = qword_27C913B50;
  if (!qword_27C913B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2144479A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214447A18(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for LiteRelayTextMessage(0) + 20);

  return sub_214447A5C(a1, v3);
}

uint64_t sub_214447A5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_214447B14()
{
  v1 = *(v0 + *(type metadata accessor for LiteRelayTextMessage(0) + 24));

  return v1;
}

void sub_214447B54(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LiteRelayTextMessage(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214447BE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](60, 0xE100000000000000);
  MEMORY[0x2160545D0](0xD000000000000014, 0x8000000214741A80);
  MEMORY[0x2160545D0](0x79646F4273616820, 0xEA00000000003A20);
  if (*(v0 + 8))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 8))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2160545D0](v5, v6);

  MEMORY[0x2160545D0](0x6B63616270617420, 0xEE00203A65707954);
  v7 = type metadata accessor for LiteRelayTextMessage(0);
  sub_2144479A8(v0 + *(v7 + 20), v4);
  v8 = type metadata accessor for LiteTapback(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_21408354C(v4);
    v9 = 15;
  }

  else
  {
    v9 = v4[*(v8 + 20)];
    sub_2140835B4(v4);
  }

  v16[15] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907B80, &qword_2146F4D10);
  v10 = sub_2146D9608();
  MEMORY[0x2160545D0](v10);

  MEMORY[0x2160545D0](0xD000000000000011, 0x800000021479AC20);
  v11 = (v1 + *(v7 + 24));
  v12 = v11[1];
  if (v12)
  {
    v13 = *v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v11[1];
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x2160545D0](v13, v14);

  MEMORY[0x2160545D0](62, 0xE100000000000000);
  return v17;
}

unint64_t sub_214447E44()
{
  result = qword_27C913B18;
  if (!qword_27C913B18)
  {
    result = swift_getWitnessTable(asc_214741AC0, &type metadata for LiteRelayTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C913B18);
  }

  return result;
}

unint64_t sub_214447E98(uint64_t a1)
{
  *(a1 + 8) = sub_214447EC8();
  result = sub_214447F1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214447EC8()
{
  result = qword_27C913B20;
  if (!qword_27C913B20)
  {
    result = swift_getWitnessTable(a9_7, &type metadata for LiteRelayTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C913B20);
  }

  return result;
}

unint64_t sub_214447F1C()
{
  result = qword_27C913B28;
  if (!qword_27C913B28)
  {
    result = swift_getWitnessTable(aMx_0, &type metadata for LiteRelayTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C913B28);
  }

  return result;
}

unint64_t sub_214447F74()
{
  result = qword_27C913B30;
  if (!qword_27C913B30)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913B38, qword_214741B90);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27C913B30);
  }

  return result;
}

uint64_t sub_214447FD8(uint64_t a1)
{
  *(a1 + 8) = sub_214448040(&qword_27C913B40, asc_2146FAAE0);
  result = sub_214448040(&qword_27C913B48, byte_2146FAB08);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214448040(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for LiteRelayTextMessage(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

void sub_2144480B0(uint64_t a1)
{
  sub_2143ACE3C();
  if (v1 <= 0x3F)
  {
    sub_214448138(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_214448138(uint64_t a1)
{
  if (!qword_280B2FBB0)
  {
    type metadata accessor for LiteTapback(255);
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B2FBB0);
    }
  }
}

unint64_t sub_2144481A0()
{
  result = qword_27C913B60;
  if (!qword_27C913B60)
  {
    result = swift_getWitnessTable(aY_16, &type metadata for LiteRelayTextMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C913B60);
  }

  return result;
}

uint64_t sub_2144481F4@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (result == -1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void *sub_21444821C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*result == -1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_21444837C()
{
  result = qword_27C913B68;
  if (!qword_27C913B68)
  {
    result = swift_getWitnessTable(byte_214741CD0, &type metadata for CollaborationNoticeAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C913B68);
  }

  return result;
}

uint64_t sub_214448428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214448464()
{
  result = qword_27C913B70;
  if (!qword_27C913B70)
  {
    result = swift_getWitnessTable(aY_17, &type metadata for CollaborationNoticeAction, v0, v1);
    atomic_store(result, &qword_27C913B70);
  }

  return result;
}

unint64_t sub_2144484B8()
{
  result = qword_27C913B78;
  if (!qword_27C913B78)
  {
    result = swift_getWitnessTable(asc_2146F8CB8, &type metadata for CollaborationNoticeAction, v0, v1);
    atomic_store(result, &qword_27C913B78);
  }

  return result;
}

unint64_t sub_21444852C()
{
  result = qword_27C913B80;
  if (!qword_27C913B80)
  {
    result = swift_getWitnessTable(aI_22, &type metadata for CollaborationNoticeAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C913B80);
  }

  return result;
}

BlastDoor::MBDChipType_optional __swiftcall MBDChipType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2144485A8()
{
  result = qword_27C913B88;
  if (!qword_27C913B88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipType, &type metadata for MBDChipType, v0, v1);
    atomic_store(result, &qword_27C913B88);
  }

  return result;
}

unint64_t sub_214448604(uint64_t a1)
{
  *(a1 + 8) = sub_2142E93B4();
  result = sub_2142E94BC();
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for MBDChipContent(uint64_t a1)
{
  result = qword_27C913B90;
  if (!qword_27C913B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_214448740(uint64_t a1)
{
  sub_2144487B4();
  if (v1 <= 0x3F)
  {
    sub_2144487E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_2144487B4()
{
  result = qword_27C913BA0;
  if (!qword_27C913BA0)
  {
    result = &type metadata for MBDChipReply;
    atomic_store(&type metadata for MBDChipReply, &qword_27C913BA0);
  }

  return result;
}

void sub_2144487E4()
{
  if (!qword_27C913BA8)
  {
    v0 = type metadata accessor for MBDChipAction(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27C913BA8);
    }
  }
}

unint64_t sub_21444882C()
{
  result = qword_27C913BB0;
  if (!qword_27C913BB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipType, &type metadata for MBDChipType, v0, v1);
    atomic_store(result, &qword_27C913BB0);
  }

  return result;
}

unint64_t sub_2144488D4(uint64_t a1)
{
  *(a1 + 8) = sub_214448904();
  result = sub_214448958();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214448904()
{
  result = qword_27C913BB8;
  if (!qword_27C913BB8)
  {
    result = swift_getWitnessTable(a9MM, &type metadata for SatelliteSMSTextMessage, v0, v1);
    atomic_store(result, &qword_27C913BB8);
  }

  return result;
}

unint64_t sub_214448958()
{
  result = qword_27C913BC0;
  if (!qword_27C913BC0)
  {
    result = swift_getWitnessTable(byte_2146FC4F8, &type metadata for SatelliteSMSTextMessage, v0, v1);
    atomic_store(result, &qword_27C913BC0);
  }

  return result;
}

uint64_t sub_2144489AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_214448A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_214448A68()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214448AE4()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214448B60@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214448BAC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_214448C08@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214448C54(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

void sub_214448CE0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214448E28(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214448EC4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

void sub_214448F5C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 48);
  v8 = *(v2 + 80);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_2144490A4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214449140(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

uint64_t sub_2144491D8()
{
  v1 = *(v0 + 88);
  sub_213FDCA18(v1, *(v0 + 96));
  return v1;
}

uint64_t sub_21444920C(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

unint64_t sub_214449264(uint64_t a1)
{
  *(a1 + 8) = sub_21431FCEC();
  result = sub_21431F4B8();
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2144492C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_214449308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214449370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a5;
  v25 = a1;
  v26 = a2;
  v11 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v15, v14);
  v16 = *(a6 + 16);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) != 1)
  {
    return (*(v17 + 32))(a7, v13, v16);
  }

  (*(v11 + 8))(v13, a6);
  v27 = a3;
  v28 = a4;

  MEMORY[0x2160545D0](58, 0xE100000000000000);
  v29 = v24;
  v18 = sub_2146DA428();
  MEMORY[0x2160545D0](v18);

  MEMORY[0x2160545D0](58, 0xE100000000000000);
  MEMORY[0x2160545D0](v25, v26);
  v19 = v27;
  v20 = v28;
  sub_21404A6EC();
  swift_allocError();
  *v21 = 0xD00000000000002ELL;
  *(v21 + 8) = 0x80000002147998A0;
  strcpy((v21 + 16), "Expected Value");
  *(v21 + 31) = -18;
  *(v21 + 32) = v19;
  *(v21 + 40) = v20;
  return swift_willThrow();
}

uint64_t PhotosPoster.$identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 PhotosPoster.$identifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t PhotosPoster.$assetIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 680);
  v3 = *(v1 + 688);
  v4 = *(v1 + 696);
  v5 = *(v1 + 704);
  *a1 = *(v1 + 672);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 PhotosPoster.$assetIdentifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[43].n128_i64[0];
  v7 = v1[43].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[42] = *a1;
  v1[43].n128_u64[0] = v3;
  v1[43].n128_u64[1] = v4;
  v1[44].n128_u8[0] = v5;
  return result;
}

uint64_t PhotosPoster.identifier.getter()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t PhotosPoster.assetIdentifier.getter()
{
  if (*(v0 + 696) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 688);

    return v1;
  }

  return result;
}

uint64_t AvatarRecord.$identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 AvatarRecord.$identifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t AvatarRecord.identifier.getter()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

__n128 MemojiPoster.avatarImage.setter(uint64_t a1)
{
  sub_213FB2DF4(v1 + 32, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 224) = *(a1 + 192);
  *(v1 + 240) = v3;
  *(v1 + 256) = *(a1 + 224);
  *(v1 + 272) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 160) = *(a1 + 128);
  *(v1 + 176) = v4;
  v5 = *(a1 + 176);
  *(v1 + 192) = *(a1 + 160);
  *(v1 + 208) = v5;
  v6 = *(a1 + 80);
  *(v1 + 96) = *(a1 + 64);
  *(v1 + 112) = v6;
  v7 = *(a1 + 112);
  *(v1 + 128) = *(a1 + 96);
  *(v1 + 144) = v7;
  v8 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 64) = result;
  *(v1 + 80) = v10;
  return result;
}

void *MemojiPoster.$avatarImage.setter(const void *a1)
{
  sub_213FB2DF4(v1 + 32, &qword_27C905500, &qword_2146F2BE0);

  return memcpy((v1 + 32), a1, 0x1B8uLL);
}

unint64_t sub_214449A94@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904150, &unk_2146EAAB0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0x3F80000000000000;
  *(v3 + 16) = sub_21445D570;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_214043AE0(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 0x3F80000000000000;
  *(v6 + 16) = sub_21445D5B8;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  sub_214043AE0(v5, a1 + 24);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2146E9BF0;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 0x3F80000000000000;
  *(v9 + 16) = sub_21445D5B8;
  *(v9 + 24) = v10;
  *(v8 + 32) = v9;
  sub_214043AE0(v8, a1 + 48);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_2146E9BF0;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = 0x3F80000000000000;
  *(v12 + 16) = sub_21445D5B8;
  *(v12 + 24) = v13;
  *(v11 + 32) = v12;
  sub_214043AE0(v11, a1 + 72);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146E9BF0;
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = 0x3F80000000000000;
  *(v15 + 16) = sub_21445D5B8;
  *(v15 + 24) = v16;
  *(v14 + 32) = v15;
  sub_214043AE0(v14, a1 + 96);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_2146E9BF0;
  v18 = swift_allocObject();
  v19 = swift_allocObject();
  *(v19 + 16) = 0x3F80000000000000;
  *(v18 + 16) = sub_21445D5B8;
  *(v18 + 24) = v19;
  *(v17 + 32) = v18;
  sub_214043AE0(v17, a1 + 120);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_2146E9BF0;
  v21 = swift_allocObject();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x3F80000000000000;
  *(v21 + 16) = sub_21445D5B8;
  *(v21 + 24) = v22;
  *(v20 + 32) = v21;
  sub_214043AE0(v20, a1 + 144);
  v23 = swift_initStackObject();
  *(v23 + 16) = xmmword_2146E9BF0;
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = 0x3F80000000000000;
  *(v24 + 16) = sub_21445D5B8;
  *(v24 + 24) = v25;
  *(v23 + 32) = v24;
  return sub_214043AE0(v23, a1 + 168);
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.$groupName.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  v3 = *(v1 + 200);
  v4 = *(v1 + 208);
  v5 = *(v1 + 216);
  *a1 = *(v1 + 184);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.$groupName.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 184) = *a1;
  *(v1 + 200) = v3;
  *(v1 + 208) = v4;
  *(v1 + 216) = v5;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.groupName.getter()
{
  if (*(v0 + 208) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 200);

    return v1;
  }

  return result;
}

uint64_t PhotosPoster.Media.$assetUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 PhotosPoster.Media.$assetUUID.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

uint64_t PhotosPoster.Media.$subpath.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v4 = *(v1 + 64);
  v3 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 PhotosPoster.Media.$subpath.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

uint64_t PhotosPoster.Media.assetUUID.getter()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t PhotosPoster.Media.subpath.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 64);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t PhotosPoster.ParallaxLayer.$identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 488);
  v4 = *(v1 + 496);
  v3 = *(v1 + 504);
  v5 = *(v1 + 512);
  *a1 = *(v1 + 480);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 PhotosPoster.ParallaxLayer.$identifier.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[30] = *a1;
  v1[31].n128_u64[0] = v3;
  v1[31].n128_u64[1] = v4;
  v1[32].n128_u8[0] = v5;
  return result;
}

__n128 PhotosPoster.ParallaxLayer.image.setter(uint64_t a1)
{
  sub_213FB2DF4(v1, &qword_27C904858, &qword_214736F00);
  v3 = *(a1 + 208);
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = v3;
  *(v1 + 224) = *(a1 + 224);
  *(v1 + 240) = *(a1 + 240);
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  v7 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v7;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  result = *(a1 + 32);
  v10 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v10;
  return result;
}

void *PhotosPoster.ParallaxLayer.$image.setter(const void *a1)
{
  sub_213FB2DF4(v1, &qword_27C905500, &qword_2146F2BE0);

  return memcpy(v1, a1, 0x1B8uLL);
}

uint64_t PhotosPoster.ParallaxLayer.identifier.getter()
{
  if (*(v0 + 504))
  {
    v1 = *(v0 + 496);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21444A480@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21407B588;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2140676DC;
  *(v5 + 24) = 0;
  *(inited + 40) = v5;
  return sub_214042B80(inited, a1);
}

unint64_t sub_21444A584@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 256;
  *(v4 + 24) = 0;
  *(v3 + 16) = sub_21445C1D4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904188, &unk_2146F3E90);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_214742170;
  *(v6 + 16) = sub_214442A04;
  *(v6 + 24) = v7;
  *(v5 + 32) = v6;
  return sub_2140442CC(v5, a1 + 40);
}

uint64_t sub_21444A6D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21444A724(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21444A780@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 65);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

__n128 sub_21444A7A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 65) = v5;
  return result;
}

uint64_t sub_21444A7FC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21444A878()
{
  if (*(v0 + 64))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.rawValue.getter()
{
  result = 0xD00000000000001BLL;
  switch(*v0)
  {
    case 1:
    case 3:
    case 5:
      result = 0xD000000000000018;
      break;
    case 2:
    case 0xD:
      result = 0xD00000000000001DLL;
      break;
    case 4:
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 8:
    case 0xA:
      result = 0xD00000000000001CLL;
      break;
    case 9:
    case 0xB:
      result = 0xD000000000000023;
      break;
    case 0xC:
      result = 0xD000000000000019;
      break;
    case 0xF:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PhotosPoster.ParallaxLayer.image.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MemojiPoster.avatarImage.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_213FB2E54(v1 + 32, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a1 + 192) = v23;
    *(a1 + 208) = v4;
    *(a1 + 224) = v25;
    *(a1 + 240) = v26;
    v5 = v20;
    *(a1 + 128) = v19;
    *(a1 + 144) = v5;
    v6 = v22;
    *(a1 + 160) = v21;
    *(a1 + 176) = v6;
    v7 = v16;
    *(a1 + 64) = v15;
    *(a1 + 80) = v7;
    v8 = v18;
    *(a1 + 96) = v17;
    *(a1 + 112) = v8;
    v9 = v12;
    *a1 = v11;
    *(a1 + 16) = v9;
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DynamicPoster.DynamicPosterType.rawValue.getter()
{
  result = 0x315F7364756F6C63;
  switch(*v0)
  {
    case 1:
      result = 0x325F7364756F6C63;
      break;
    case 2:
      result = 0x335F7364756F6C63;
      break;
    case 3:
      result = 0x345F7364756F6C63;
      break;
    case 4:
      result = 0x355F7364756F6C63;
      break;
    case 5:
      result = 0x365F7364756F6C63;
      break;
    case 6:
      result = 0x315F6E6165636FLL;
      break;
    case 7:
      result = 0x325F6E6165636FLL;
      break;
    case 8:
      result = 0x5F72657474696C67;
      break;
    case 9:
      result = 0x5F72657474696C67;
      break;
    case 0xA:
      result = 0x5F72657474696C67;
      break;
    case 0xB:
      result = 0x5F72657474696C67;
      break;
    case 0xC:
      result = 0x5F72657474696C67;
      break;
    case 0xD:
      result = 0x315F61726F727561;
      break;
    case 0xE:
      result = 0x325F61726F727561;
      break;
    case 0xF:
      result = 0x335F61726F727561;
      break;
    case 0x10:
      result = 0x345F61726F727561;
      break;
    case 0x11:
      result = 0x355F61726F727561;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t PosterArchive.ProviderBundleIdentifier.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0xD000000000000028;
  v2 = 0xD000000000000030;
  v3 = 0xD000000000000036;
  if (a1 != 4)
  {
    v3 = 0xD000000000000035;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 != 1)
  {
    v1 = 0xD00000000000002CLL;
  }

  if (!a1)
  {
    v1 = 0xD00000000000002ELL;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t PosterArchive.init(with:provider:posterUUID:version:versionSupplement:role:)@<X0>(_OWORD *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, _OWORD *a7@<X8>)
{
  v11 = *a6;
  v12 = a1[11];
  a7[10] = a1[10];
  a7[11] = v12;
  a7[12] = a1[12];
  *(a7 + 203) = *(a1 + 203);
  v13 = a1[7];
  a7[6] = a1[6];
  a7[7] = v13;
  v14 = a1[9];
  a7[8] = a1[8];
  a7[9] = v14;
  v15 = a1[3];
  a7[2] = a1[2];
  a7[3] = v15;
  v16 = a1[5];
  a7[4] = a1[4];
  a7[5] = v16;
  v17 = a1[1];
  *a7 = *a1;
  a7[1] = v17;
  memcpy(a7 + 14, a2, 0x2D9uLL);
  v18 = type metadata accessor for PosterArchive(0);
  v19 = v18[6];
  v20 = sub_2146D8B88();
  result = (*(*(v20 - 8) + 32))(a7 + v19, a3, v20);
  *(a7 + v18[7]) = a4;
  *(a7 + v18[8]) = a5;
  *(a7 + v18[9]) = v11;
  return result;
}

uint64_t type metadata accessor for PosterArchive(uint64_t a1)
{
  result = qword_280B2F960;
  if (!qword_280B2F960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PosterArchive.Context.wallpaperWorkingDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t PosterArchive.Context.init(wallpaperWorkingDirectory:role:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  v5 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  return result;
}

uint64_t sub_21444AFF8()
{
  if (*v0)
  {
    return 1701605234;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void sub_21444B030(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x800000021478C7A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_2146DA6A8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_21444B118(uint64_t a1)
{
  v2 = sub_21444B360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21444B154(uint64_t a1)
{
  v2 = sub_21444B360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.Context.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913BC8, &qword_214742190);
  v12 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 16);
  v16 = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21444B360();

  sub_2146DAA28();
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v17 = 0;
  sub_2140A6418();
  v9 = v11[1];
  sub_2146DA388();

  if (!v9)
  {
    LOBYTE(v13) = v16;
    v17 = 1;
    sub_21444B3B4();
    sub_2146DA388();
  }

  return (*(v12 + 8))(v5, v3);
}

unint64_t sub_21444B360()
{
  result = qword_27C913BD0;
  if (!qword_27C913BD0)
  {
    result = swift_getWitnessTable(aAd, &type metadata for PosterArchive.Context.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913BD0);
  }

  return result;
}

unint64_t sub_21444B3B4()
{
  result = qword_27C913BD8;
  if (!qword_27C913BD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.PosterKitPosterRole, &type metadata for PosterArchive.PosterKitPosterRole, v0, v1);
    atomic_store(result, &qword_27C913BD8);
  }

  return result;
}

void PosterArchive.Context.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913BE0, &qword_214742198);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21444B360();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = 0;
    sub_21406100C();
    sub_2146DA1C8();
    v9 = v13;
    v10 = v14;
    v16 = v15;
    v17 = 1;
    sub_21444B64C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v11 = v13;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v16;
    *(a2 + 17) = v11;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_21444B64C()
{
  result = qword_27C913BE8;
  if (!qword_27C913BE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PosterArchive.PosterKitPosterRole, &type metadata for PosterArchive.PosterKitPosterRole, v0, v1);
    atomic_store(result, &qword_27C913BE8);
  }

  return result;
}

BlastDoor::PosterArchive::Configuration::SystemTimeFontConfiguration::TimeFontIdentifier __swiftcall PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.init(defaultingRawValue:)(Swift::String defaultingRawValue)
{
  v2 = v1;
  result = PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.init(rawValue:)(defaultingRawValue).value;
  v4 = v5;
  if (v5 == 16)
  {
    v4 = 12;
  }

  *v2 = v4;
  return result;
}

BlastDoor::PosterArchive::Configuration::SystemTimeFontConfiguration::TimeFontIdentifier_optional __swiftcall PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_21444B7DC@<X0>(unint64_t *a1@<X8>)
{
  result = PosterArchive.Configuration.SystemTimeFontConfiguration.TimeFontIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleAlignment __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  if (defaultingRawValue >= 6)
  {
    v2 = 0;
  }

  else
  {
    v2 = defaultingRawValue;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleAlignment_optional __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleColor::Style __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style.init(defaultingRawValue:)(Swift::Int defaultingRawValue)
{
  v2 = defaultingRawValue == 1;
  if (defaultingRawValue == 2)
  {
    v2 = 2;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::TitleColor::Style_optional __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.Style.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.color.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.color.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v3;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.localizedName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void PosterArchive.Configuration.TitleStyleConfiguration.TitleColor.localizedName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.discreteColorProperties.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.discreteColorProperties.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.gradientProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 32);
  *(a1 + 8) = *(v1 + 40);
  *(a1 + 24) = *(v1 + 56);
  *(a1 + 40) = v2;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.TitleContentStyle.gradientProperties.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::NumberingSystem __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem.init(defaultingRawValue:)(Swift::String defaultingRawValue)
{
  v2 = v1;
  result = PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem.init(rawValue:)(defaultingRawValue).value;
  v4 = v5;
  if (v5 == 5)
  {
    v4 = 0;
  }

  *v2 = v4;
  return result;
}

BlastDoor::PosterArchive::Configuration::TitleStyleConfiguration::NumberingSystem_optional __swiftcall PosterArchive.Configuration.TitleStyleConfiguration.NumberingSystem.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_21444C190()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21444C1EC(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21444C22C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.timeFontConfiguration.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.timeFontConfiguration.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.titleColor.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  a1[6] = v8;
  return sub_21430F12C(v2, v3, v4, v5, v6, v7, v8);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.titleColor.setter(__int128 *a1)
{
  v6 = a1[2];
  v3 = *(a1 + 6);
  sub_21430EE64(v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9]);
  v4 = *a1;
  *(v1 + 5) = a1[1];
  *(v1 + 3) = v4;
  result = v6;
  *(v1 + 7) = v6;
  v1[9] = v3;
  return result;
}

uint64_t PosterArchive.Configuration.TitleStyleConfiguration.titleContentStyle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v9 = v1[7];
  v10 = v2;
  v11 = v1[9];
  v3 = v11;
  v4 = v1[6];
  v8[0] = v1[5];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C90A768, &unk_2147421A0);
}

__n128 PosterArchive.Configuration.TitleStyleConfiguration.titleContentStyle.setter(uint64_t a1)
{
  v3 = v1[8];
  v7[2] = v1[7];
  v7[3] = v3;
  v7[4] = v1[9];
  v4 = v1[6];
  v7[0] = v1[5];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A768, &unk_2147421A0);
  v5 = *(a1 + 48);
  v1[7] = *(a1 + 32);
  v1[8] = v5;
  v1[9] = *(a1 + 64);
  result = *(a1 + 16);
  v1[5] = *a1;
  v1[6] = result;
  return result;
}

uint64_t sub_21444C674@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 208);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 200);
    a2[1] = v4;
  }

  return result;
}

double sub_21444C6E8(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void PosterArchive.Configuration.TitleStyleConfiguration.groupName.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 184);
  v8 = *(v2 + 216);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 200), *(v2 + 208));

    *(v2 + 200) = a1;
    *(v2 + 208) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*PosterArchive.Configuration.TitleStyleConfiguration.groupName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 200);
  *(v3 + 24) = v5;
  v6 = *(v1 + 208);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21444C9B4;
  }

  return result;
}

void sub_21444C9B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 184);
    v13 = *(v3 + 216);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 200) = v5;
      *(v9 + 208) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 184);
  v13 = *(v3 + 216);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 200) = v5;
  *(v7 + 208) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21444CB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 192);
  v3 = *(a1 + 200);
  v4 = *(a1 + 208);
  v5 = *(a1 + 216);
  *a2 = *(a1 + 184);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21444CBD8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 200);
  v9 = *(a2 + 208);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 184) = v4;
  *(a2 + 192) = v3;
  *(a2 + 200) = v5;
  *(a2 + 208) = v6;
  *(a2 + 216) = v7;
  return result;
}

void (*PosterArchive.Configuration.TitleStyleConfiguration.$groupName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 192);
  v6 = *(v1 + 200);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);
  *v4 = *(v1 + 184);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21444CD00;
}

void sub_21444CD00(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 200);
  v10 = *(v3 + 208);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 184) = v5;
    *(v3 + 192) = v4;
    *(v3 + 200) = v7;
    *(v3 + 208) = v6;
    *(v3 + 216) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 184) = v5;
    *(v3 + 192) = v4;
    *(v3 + 200) = v7;
    *(v3 + 208) = v6;
    *(v3 + 216) = v8;
  }

  free(v2);
}

uint64_t PosterArchive.Configuration.titleStyleConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 9) = *(v1 + 201);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 201) = *(v1 + 201);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_213FB2E54(v21, &v20, &qword_27C90A698, &qword_2146F5F28);
}

__n128 PosterArchive.Configuration.titleStyleConfiguration.setter(uint64_t a1)
{
  v3 = v1[11];
  v16[10] = v1[10];
  v16[11] = v3;
  v17[0] = v1[12];
  *(v17 + 9) = *(v1 + 201);
  v4 = v1[7];
  v16[6] = v1[6];
  v16[7] = v4;
  v5 = v1[9];
  v16[8] = v1[8];
  v16[9] = v5;
  v6 = v1[3];
  v16[2] = v1[2];
  v16[3] = v6;
  v7 = v1[5];
  v16[4] = v1[4];
  v16[5] = v7;
  v8 = v1[1];
  v16[0] = *v1;
  v16[1] = v8;
  sub_213FB2DF4(v16, &qword_27C90A698, &qword_2146F5F28);
  v9 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v9;
  v1[12] = *(a1 + 192);
  *(v1 + 201) = *(a1 + 201);
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  return result;
}

uint64_t sub_21444D000(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = PosterArchive.ProviderBundleIdentifier.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == PosterArchive.ProviderBundleIdentifier.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21444D088()
{
  v1 = *v0;
  sub_2146DA958();
  PosterArchive.ProviderBundleIdentifier.rawValue.getter(v1);
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21444D0EC(uint64_t a1)
{
  PosterArchive.ProviderBundleIdentifier.rawValue.getter(*v1);
  sub_2146D9698();

  return result;
}

uint64_t sub_21444D140(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  PosterArchive.ProviderBundleIdentifier.rawValue.getter(v2);
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_21444D1A0@<X0>(Swift::String *a1@<X0>, BlastDoor::PosterArchive::ProviderBundleIdentifier_optional *a2@<X8>)
{
  result = _s9BlastDoor13PosterArchiveV24ProviderBundleIdentifierO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_21444D1D0@<X0>(unint64_t *a1@<X8>)
{
  result = PosterArchive.ProviderBundleIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t PosterArchive.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 11) = *(v1 + 203);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 203) = *(v1 + 203);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_214458494(v21, &v20);
}

__n128 PosterArchive.configuration.setter(uint64_t a1)
{
  v3 = v1[11];
  v16[10] = v1[10];
  v16[11] = v3;
  v17[0] = v1[12];
  *(v17 + 11) = *(v1 + 203);
  v4 = v1[7];
  v16[6] = v1[6];
  v16[7] = v4;
  v5 = v1[9];
  v16[8] = v1[8];
  v16[9] = v5;
  v6 = v1[3];
  v16[2] = v1[2];
  v16[3] = v6;
  v7 = v1[5];
  v16[4] = v1[4];
  v16[5] = v7;
  v8 = v1[1];
  v16[0] = *v1;
  v16[1] = v8;
  sub_2144584CC(v16);
  v9 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v9;
  v1[12] = *(a1 + 192);
  *(v1 + 203) = *(a1 + 203);
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  result = *a1;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  return result;
}

uint64_t PosterArchive.posterUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PosterArchive(0) + 24);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PosterArchive.posterUUID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PosterArchive(0) + 24);
  v4 = sub_2146D8B88();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PosterArchive.version.setter(uint64_t a1)
{
  result = type metadata accessor for PosterArchive(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t PosterArchive.versionSupplement.setter(uint64_t a1)
{
  result = type metadata accessor for PosterArchive(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

BlastDoor::PosterArchive::PosterKitPosterRole_optional __swiftcall PosterArchive.PosterKitPosterRole.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PosterArchive.role.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PosterArchive(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t PosterArchive.role.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for PosterArchive(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_21444D7AC()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x6E6F6973726576;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 1701605234;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72656469766F7270;
  if (v1 != 1)
  {
    v5 = 0x5555726574736F70;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_21444D874@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21445BB28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21444D89C(uint64_t a1)
{
  v2 = sub_214458534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21444D8D8(uint64_t a1)
{
  v2 = sub_214458534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PosterArchive.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913BF0, &qword_2147421B0);
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214458534();
  v7 = v4;
  sub_2146DAA28();
  v8 = v2[11];
  v9 = v2[9];
  v64 = v2[10];
  v65 = v8;
  v10 = v2[11];
  v66[0] = v2[12];
  *(v66 + 11) = *(v2 + 203);
  v11 = v2[7];
  v12 = v2[5];
  v60 = v2[6];
  v61 = v11;
  v13 = v2[7];
  v14 = v2[9];
  v62 = v2[8];
  v63 = v14;
  v15 = v2[3];
  v16 = v2[1];
  v56 = v2[2];
  v57 = v15;
  v17 = v2[3];
  v18 = v2[5];
  v58 = v2[4];
  v59 = v18;
  v19 = v2[1];
  v55[0] = *v2;
  v55[1] = v19;
  v52 = v64;
  v53 = v10;
  v54[0] = v2[12];
  *(v54 + 11) = *(v2 + 203);
  v48 = v60;
  v49 = v13;
  v50 = v62;
  v51 = v9;
  v44 = v56;
  v45 = v17;
  v46 = v58;
  v47 = v12;
  v42 = v55[0];
  v43 = v16;
  v41 = 0;
  sub_214458494(v55, &v28);
  sub_214458588();
  v20 = v25;
  sub_2146DA388();
  if (v20)
  {
    v38 = v52;
    v39 = v53;
    *v40 = v54[0];
    *&v40[11] = *(v54 + 11);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v28 = v42;
    v29 = v43;
    sub_2144584CC(&v28);
    return (*(v67 + 8))(v6, v4);
  }

  else
  {
    v22 = v67;
    v38 = v52;
    v39 = v53;
    *v40 = v54[0];
    *&v40[11] = *(v54 + 11);
    v34 = v48;
    v35 = v49;
    v36 = v50;
    v37 = v51;
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v28 = v42;
    v29 = v43;
    sub_2144584CC(&v28);
    v27 = 1;
    sub_2144585DC();
    sub_2146DA388();
    v23 = v6;
    v24 = type metadata accessor for PosterArchive(0);
    v27 = 2;
    sub_2146D8B88();
    sub_214458EA4(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2146DA388();
    v27 = 3;
    sub_2146DA3E8();
    v27 = 4;
    sub_2146DA3E8();
    v27 = *(v2 + *(v24 + 36));
    v26 = 5;
    sub_21444B3B4();
    sub_2146DA388();
    return (*(v22 + 8))(v23, v7);
  }
}

uint64_t PosterArchive.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_2146D8B88();
  v23 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913C10, &qword_2147421B8);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for PosterArchive(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_214458534();
  v25 = v7;
  v12 = v27;
  sub_2146DAA08();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v13 = v24;
  v29[735] = 0;
  sub_214458630();
  sub_2146DA1C8();
  v14 = v41;
  v10[10] = v40;
  v10[11] = v14;
  v10[12] = v42[0];
  *(v10 + 203) = *(v42 + 11);
  v15 = v37;
  v10[6] = v36;
  v10[7] = v15;
  v16 = v39;
  v10[8] = v38;
  v10[9] = v16;
  v17 = v33;
  v10[2] = v32;
  v10[3] = v17;
  v18 = v35;
  v10[4] = v34;
  v10[5] = v18;
  v19 = v31;
  *v10 = v30;
  v10[1] = v19;
  v28 = 1;
  sub_214458684();
  sub_2146DA1C8();
  memcpy(v10 + 14, v29, 0x2D9uLL);
  v29[0] = 2;
  sub_214458EA4(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_2146DA1C8();
  (*(v23 + 32))(v10 + v8[6], v5, v3);
  v29[0] = 3;
  v27 = 0;
  *(v10 + v8[7]) = sub_2146DA228();
  v29[0] = 4;
  *(v10 + v8[8]) = sub_2146DA228();
  v28 = 5;
  sub_21444B64C();
  sub_2146DA1C8();
  (*(v13 + 8))(v25, v26);
  *(v10 + v8[9]) = v29[0];
  sub_2143B80D0(v10, v22);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_2143B8134(v10);
}

void PhotosPoster.Media.assetUUID.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*PhotosPoster.Media.assetUUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

void (*PhotosPoster.Media.$assetUUID.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

void PhotosPoster.Media.subpath.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 48);
  v8 = *(v2 + 80);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*PhotosPoster.Media.subpath.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 64);
    a1[1] = v3;

    return sub_21406A7D8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*PhotosPoster.Media.$subpath.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406ABB0;
}

BlastDoor::PhotosPoster::Layout::ClockLayerOrder __swiftcall PhotosPoster.Layout.ClockLayerOrder.init(defaultingRawValue:)(Swift::String defaultingRawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  *v2 = v3 == 1;
  return result;
}

BlastDoor::PhotosPoster::Layout::ClockLayerOrder_optional __swiftcall PhotosPoster.Layout.ClockLayerOrder.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

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

  *v2 = v5;
  return result;
}

uint64_t sub_21444EA38(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "ClockAboveBackground";
  }

  else
  {
    v2 = "ster.DynamicExtension";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "ClockAboveBackground";
  }

  else
  {
    v4 = "ster.DynamicExtension";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2146DA6A8();
  }

  return v5 & 1;
}

uint64_t sub_21444EADC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

double sub_21444EB54(uint64_t a1)
{
  sub_2146D9698();

  return result;
}

uint64_t sub_21444EBB8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_21444EC2C(char *a2@<X8>)
{
  v3 = sub_2146DA098();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21444EC8C(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "ClockAboveBackground";
  }

  else
  {
    v2 = "ster.DynamicExtension";
  }

  *a1 = 0xD000000000000014;
  a1[1] = v2 | 0x8000000000000000;
}

BlastDoor::PhotosPoster::Layout::ClockIntersection __swiftcall PhotosPoster.Layout.ClockIntersection.init(defaultingRawValue:)(Swift::UInt defaultingRawValue)
{
  if (defaultingRawValue >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = defaultingRawValue;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PhotosPoster::Layout::ClockIntersection_optional __swiftcall PhotosPoster.Layout.ClockIntersection.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

BlastDoor::PhotosPoster::Layout::LayoutVariant __swiftcall PhotosPoster.Layout.LayoutVariant.init(defaultingRawValue:)(Swift::UInt defaultingRawValue)
{
  if (defaultingRawValue >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = defaultingRawValue;
  }

  *v1 = v2;
  return defaultingRawValue;
}

BlastDoor::PhotosPoster::Layout::LayoutVariant_optional __swiftcall PhotosPoster.Layout.LayoutVariant.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void PhotosPoster.Layout.visibleFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[6] = a1;
  v4[7] = a2;
  v4[8] = a3;
  v4[9] = a4;
}

void PhotosPoster.Layout.inactiveFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

void PhotosPoster.Layout.timeFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

void PhotosPoster.Layout.spatialVisibleFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

void PhotosPoster.Layout.spatialAdaptiveFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[23] = a1;
  v4[24] = a2;
  v4[25] = a3;
  v4[26] = a4;
}

void PhotosPoster.Layout.adaptiveTimeFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[27] = a1;
  v4[28] = a2;
  v4[29] = a3;
  v4[30] = a4;
}

void PhotosPoster.Layout.salientContentFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[31] = a1;
  v4[32] = a2;
  v4[33] = a3;
  v4[34] = a4;
}

void (*PhotosPoster.ParallaxLayer.image.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x1F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = v4 + 248;
  *(v4 + 496) = v2;
  result = sub_213FB2E54(v2, v4 + 248, &qword_27C904858, &qword_214736F00);
  if (*(v5 + 272))
  {
    v8 = *(v6 + 208);
    *(v5 + 192) = *(v6 + 192);
    *(v5 + 208) = v8;
    *(v5 + 224) = *(v6 + 224);
    *(v5 + 240) = *(v6 + 240);
    v9 = *(v6 + 144);
    *(v5 + 128) = *(v6 + 128);
    *(v5 + 144) = v9;
    v10 = *(v6 + 176);
    *(v5 + 160) = *(v6 + 160);
    *(v5 + 176) = v10;
    v11 = *(v6 + 80);
    *(v5 + 64) = *(v6 + 64);
    *(v5 + 80) = v11;
    v12 = *(v6 + 112);
    *(v5 + 96) = *(v6 + 96);
    *(v5 + 112) = v12;
    v13 = *(v6 + 16);
    *v5 = *v6;
    *(v5 + 16) = v13;
    v14 = *(v6 + 48);
    *(v5 + 32) = *(v6 + 32);
    *(v5 + 48) = v14;
    return sub_2140A3C24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*PhotosPoster.ParallaxLayer.$image.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x378uLL);
  }

  *a1 = v3;
  *(v3 + 880) = v1;
  sub_213FB2E54(v1, v3, &qword_27C905500, &qword_2146F2BE0);
  return sub_2140A3E5C;
}

void PhotosPoster.ParallaxLayer.frame.setter(double a1, double a2, double a3, double a4)
{
  v4[55] = a1;
  v4[56] = a2;
  v4[57] = a3;
  v4[58] = a4;
}

uint64_t sub_21444F3F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 504);
  if (v4)
  {
    *a2 = *(a1 + 496);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_21444F460(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void PhotosPoster.ParallaxLayer.identifier.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 480);
  v8 = *(v2 + 512);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 496) = a1;
    *(v2 + 504) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*PhotosPoster.ParallaxLayer.identifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 504);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 496);
    a1[1] = v3;

    return sub_21444F6F4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_21444F6F4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 480);
    v10 = *(v3 + 512);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 496) = v4;
      *(v3 + 504) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 480);
  v10 = *(v3 + 512);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 496) = v4;
  *(v3 + 504) = v2;
}

void sub_21444F914(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 480) = v4;
  *(a2 + 488) = v3;
  *(a2 + 496) = v6;
  *(a2 + 504) = v5;
  *(a2 + 512) = v7;
}

void (*PhotosPoster.ParallaxLayer.$identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 488);
  v7 = *(v1 + 496);
  v6 = *(v1 + 504);
  v8 = *(v1 + 512);
  *v4 = *(v1 + 480);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21444FA24;
}

void sub_21444FA24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 480) = v5;
    *(v3 + 488) = v4;
    *(v3 + 496) = v7;
    *(v3 + 504) = v6;
    *(v3 + 512) = v8;
  }

  else
  {

    *(v3 + 480) = v5;
    *(v3 + 488) = v4;
    *(v3 + 496) = v7;
    *(v3 + 504) = v6;
    *(v3 + 512) = v8;
  }

  free(v2);
}

void PhotosPoster.ParallaxLayoutConfiguration.timeRect.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

void PhotosPoster.ParallaxLayoutConfiguration.inactiveTimeRect.setter(double a1, double a2, double a3, double a4)
{
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = a3;
  v4[10] = a4;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.portraitConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 96);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = result;
  return result;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.portraitConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  *(v1 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.landscapeConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 152);
  v3 = *(v1 + 184);
  *(a1 + 64) = *(v1 + 168);
  *(a1 + 80) = v3;
  *(a1 + 89) = *(v1 + 193);
  v4 = *(v1 + 120);
  *a1 = *(v1 + 104);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 136);
  *(a1 + 48) = result;
  return result;
}

__n128 PhotosPoster.CompoundDeviceConfiguration.landscapeConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v1 + 152) = *(a1 + 48);
  v3 = *(a1 + 80);
  *(v1 + 168) = *(a1 + 64);
  *(v1 + 184) = v3;
  *(v1 + 193) = *(a1 + 89);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 104) = *a1;
  *(v1 + 120) = v5;
  *(v1 + 136) = v2;
  return result;
}

void PhotosPoster.options.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *PhotosPoster.options.setter(_BYTE *result)
{
  v2 = result[1];
  *v1 = *result;
  v1[1] = v2;
  return result;
}

void PhotosPoster.identifier.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 8);
  v8 = *(v2 + 40);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*PhotosPoster.identifier.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 24);
    a1[1] = v3;

    return sub_214069FB0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*PhotosPoster.$identifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v7 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21406A388;
}

uint64_t PhotosPoster.media.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[6];
  v10 = v1[5];
  v11 = v2;
  v4 = v1[8];
  v12 = v1[7];
  v3 = v12;
  v13 = v4;
  v6 = v1[4];
  v9[0] = v1[3];
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_2142FC684(v9, &v8);
}

__n128 PhotosPoster.media.setter(uint64_t a1)
{
  v3 = v1[6];
  v10[2] = v1[5];
  v10[3] = v3;
  v4 = v1[8];
  v10[4] = v1[7];
  v10[5] = v4;
  v5 = v1[4];
  v10[0] = v1[3];
  v10[1] = v5;
  sub_2142FC3CC(v10);
  v6 = *(a1 + 48);
  v1[5] = *(a1 + 32);
  v1[6] = v6;
  v7 = *(a1 + 80);
  v1[7] = *(a1 + 64);
  v1[8] = v7;
  result = *a1;
  v9 = *(a1 + 16);
  v1[3] = *a1;
  v1[4] = v9;
  return result;
}

uint64_t PhotosPoster.layerStack.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0x132uLL);
  memcpy(a1, (v1 + 144), 0x132uLL);
  return sub_2142FC7E4(__dst, v4);
}

void *PhotosPoster.layerStack.setter(const void *a1)
{
  memcpy(v4, (v1 + 144), 0x132uLL);
  sub_2142FC4F8(v4);
  return memcpy((v1 + 144), a1, 0x132uLL);
}

__n128 PhotosPoster.layoutConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 208) = *(v1 + 664);
  v2 = *(v1 + 632);
  *(a1 + 160) = *(v1 + 616);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 648);
  v3 = *(v1 + 568);
  *(a1 + 96) = *(v1 + 552);
  *(a1 + 112) = v3;
  v4 = *(v1 + 600);
  *(a1 + 128) = *(v1 + 584);
  *(a1 + 144) = v4;
  v5 = *(v1 + 504);
  *(a1 + 32) = *(v1 + 488);
  *(a1 + 48) = v5;
  v6 = *(v1 + 536);
  *(a1 + 64) = *(v1 + 520);
  *(a1 + 80) = v6;
  result = *(v1 + 456);
  v8 = *(v1 + 472);
  *a1 = result;
  *(a1 + 16) = v8;
  return result;
}

__n128 PhotosPoster.layoutConfiguration.setter(uint64_t a1)
{
  v2 = *(a1 + 176);
  *(v1 + 616) = *(a1 + 160);
  *(v1 + 632) = v2;
  *(v1 + 648) = *(a1 + 192);
  *(v1 + 664) = *(a1 + 208);
  v3 = *(a1 + 112);
  *(v1 + 552) = *(a1 + 96);
  *(v1 + 568) = v3;
  v4 = *(a1 + 144);
  *(v1 + 584) = *(a1 + 128);
  *(v1 + 600) = v4;
  v5 = *(a1 + 48);
  *(v1 + 488) = *(a1 + 32);
  *(v1 + 504) = v5;
  v6 = *(a1 + 80);
  *(v1 + 520) = *(a1 + 64);
  *(v1 + 536) = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *(v1 + 456) = *a1;
  *(v1 + 472) = v8;
  return result;
}

uint64_t sub_214450394@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 696);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 688);
    a2[1] = v4;
  }

  return result;
}

double sub_214450408(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void PhotosPoster.assetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 672);
  v8 = *(v2 + 704);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 688), *(v2 + 696));

    *(v2 + 688) = a1;
    *(v2 + 696) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*PhotosPoster.assetIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 688);
  *(v3 + 24) = v5;
  v6 = *(v1 + 696);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144506E0;
  }

  return result;
}

void sub_2144506E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 672);
    v13 = *(v3 + 704);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 688) = v5;
      *(v9 + 696) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 672);
  v13 = *(v3 + 704);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 688) = v5;
  *(v7 + 696) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2144508C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 680);
  v3 = *(a1 + 688);
  v4 = *(a1 + 696);
  v5 = *(a1 + 704);
  *a2 = *(a1 + 672);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21445091C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 688);
  v9 = *(a2 + 696);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 672) = v4;
  *(a2 + 680) = v3;
  *(a2 + 688) = v5;
  *(a2 + 696) = v6;
  *(a2 + 704) = v7;
  return result;
}

void (*PhotosPoster.$assetIdentifier.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 680);
  v6 = *(v1 + 688);
  v7 = *(v1 + 696);
  v8 = *(v1 + 704);
  *v4 = *(v1 + 672);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214450A58;
}

void sub_214450A58(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 688);
  v10 = *(v3 + 696);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 672) = v5;
    *(v3 + 680) = v4;
    *(v3 + 688) = v7;
    *(v3 + 696) = v6;
    *(v3 + 704) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 672) = v5;
    *(v3 + 680) = v4;
    *(v3 + 688) = v7;
    *(v3 + 696) = v6;
    *(v3 + 704) = v8;
  }

  free(v2);
}

void (*sub_214450C24(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214450CC0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void (*sub_214450D5C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214450DF8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_214450E90(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214450FD8(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214451074(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

uint64_t sub_21445110C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 64))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(result + 56);
  }

  return result;
}

uint64_t (*sub_214451190(void *a1))(double *a1)
{
  a1[1] = v1;
  if (*(v1 + 64))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + 56);
    return sub_214451218;
  }

  return result;
}

uint64_t sub_214451244(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);

  *(a2 + 40) = v4;
  *(a2 + 48) = v3;
  *(a2 + 56) = v5;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;
  return result;
}

void (*sub_2144512B0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 65);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;

  return sub_214451348;
}

void sub_214451348(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  if (a2)
  {

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
  }

  else
  {

    *(v3 + 40) = v5;
    *(v3 + 48) = v4;
    *(v3 + 56) = v6;
    *(v3 + 64) = v7;
    *(v3 + 65) = v8;
  }

  free(v2);
}

uint64_t sub_2144513F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = *(v1 + 32);
  return sub_21431C5DC(v2, v3, v4, v5);
}

__n128 sub_214451410(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_21431E10C(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = *a1;
  v5 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v5;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_214451478@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_213FB2E54(v8, v7, &qword_27C90AAB8, &qword_2146F6090);
}

__n128 sub_2144514DC(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v8[3] = v4;
  v9 = *(v1 + 104);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C90AAB8, &qword_2146F6090);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  *(v1 + 104) = *(a1 + 32);
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_21445157C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v9 = *(v1 + 144);
  v10 = v2;
  v11 = *(v1 + 176);
  v3 = v11;
  v4 = *(v1 + 128);
  v8[0] = *(v1 + 112);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90AAB8, &qword_2146F6090);
}

__n128 sub_2144515D8(uint64_t a1)
{
  v3 = *(v1 + 160);
  v7[2] = *(v1 + 144);
  v7[3] = v3;
  v8 = *(v1 + 176);
  v4 = *(v1 + 128);
  v7[0] = *(v1 + 112);
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90AAB8, &qword_2146F6090);
  v5 = *(a1 + 48);
  *(v1 + 144) = *(a1 + 32);
  *(v1 + 160) = v5;
  *(v1 + 176) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = result;
  return result;
}

uint64_t sub_214451668@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v9 = *(v1 + 216);
  v10 = v3;
  v11 = *(v1 + 248);
  v4 = v11;
  v8[0] = *(v1 + 184);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_213FB2E54(v8, v7, &qword_27C90AAB8, &qword_2146F6090);
}

__n128 sub_2144516CC(__int128 *a1)
{
  v3 = *(v1 + 200);
  v4 = *(v1 + 232);
  v8[2] = *(v1 + 216);
  v8[3] = v4;
  v9 = *(v1 + 248);
  v8[0] = *(v1 + 184);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C90AAB8, &qword_2146F6090);
  v5 = *a1;
  *(v1 + 200) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 216) = result;
  *(v1 + 232) = v7;
  *(v1 + 248) = *(a1 + 32);
  *(v1 + 184) = v5;
  return result;
}

uint64_t sub_21445176C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[13];
  v3 = v1[11];
  v35 = v1[12];
  v36 = v2;
  v4 = v1[13];
  v37[0] = v1[14];
  *(v37 + 10) = *(v1 + 234);
  v5 = v1[9];
  v7 = v1[7];
  v31 = v1[8];
  v6 = v31;
  v32 = v5;
  v8 = v1[9];
  v9 = v1[11];
  v33 = v1[10];
  v10 = v33;
  v34 = v9;
  v11 = v1[5];
  v13 = v1[3];
  v27 = v1[4];
  v12 = v27;
  v28 = v11;
  v14 = v1[5];
  v15 = v1[7];
  v29 = v1[6];
  v16 = v29;
  v30 = v15;
  v17 = v1[1];
  v24[0] = *v1;
  v24[1] = v17;
  v18 = v1[3];
  v20 = *v1;
  v19 = v1[1];
  v25 = v1[2];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[14];
  *(a1 + 234) = *(v1 + 234);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_214451830(uint64_t a1)
{
  v3 = v1[13];
  v18[12] = v1[12];
  v18[13] = v3;
  v19[0] = v1[14];
  *(v19 + 10) = *(v1 + 234);
  v4 = v1[9];
  v18[8] = v1[8];
  v18[9] = v4;
  v5 = v1[11];
  v18[10] = v1[10];
  v18[11] = v5;
  v6 = v1[5];
  v18[4] = v1[4];
  v18[5] = v6;
  v7 = v1[7];
  v18[6] = v1[6];
  v18[7] = v7;
  v8 = v1[1];
  v18[0] = *v1;
  v18[1] = v8;
  v9 = v1[3];
  v18[2] = v1[2];
  v18[3] = v9;
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[12] = *(a1 + 192);
  v1[13] = v10;
  v1[14] = *(a1 + 224);
  *(v1 + 234) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v11;
  v12 = *(a1 + 176);
  v1[10] = *(a1 + 160);
  v1[11] = v12;
  v13 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v13;
  v14 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v14;
  v15 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v17;
  return result;
}

uint64_t sub_214451910@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[29];
  v3 = v1[27];
  v35 = v1[28];
  v36 = v2;
  v4 = v1[29];
  v37[0] = v1[30];
  v5 = v1[25];
  v7 = v1[23];
  v31 = v1[24];
  v6 = v31;
  v32 = v5;
  v8 = v1[25];
  v9 = v1[27];
  v33 = v1[26];
  v10 = v33;
  v34 = v9;
  v11 = v1[21];
  v13 = v1[19];
  v27 = v1[20];
  v12 = v27;
  v28 = v11;
  v14 = v1[21];
  v15 = v1[23];
  v29 = v1[22];
  v16 = v29;
  v30 = v15;
  v17 = v1[17];
  v24[0] = v1[16];
  v24[1] = v17;
  v18 = v1[19];
  v20 = v1[16];
  v19 = v1[17];
  v25 = v1[18];
  v21 = v25;
  v26 = v18;
  *(v37 + 10) = *(v1 + 490);
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[30];
  *(a1 + 234) = *(v1 + 490);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_2144519D8(uint64_t a1)
{
  v3 = v1[29];
  v18[12] = v1[28];
  v18[13] = v3;
  v19[0] = v1[30];
  v4 = v1[25];
  v18[8] = v1[24];
  v18[9] = v4;
  v5 = v1[27];
  v18[10] = v1[26];
  v18[11] = v5;
  v6 = v1[21];
  v18[4] = v1[20];
  v18[5] = v6;
  v7 = v1[23];
  v18[6] = v1[22];
  v18[7] = v7;
  v8 = v1[17];
  v18[0] = v1[16];
  v18[1] = v8;
  v9 = v1[19];
  v18[2] = v1[18];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 490);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[28] = *(a1 + 192);
  v1[29] = v10;
  v1[30] = *(a1 + 224);
  *(v1 + 490) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[24] = *(a1 + 128);
  v1[25] = v11;
  v12 = *(a1 + 176);
  v1[26] = *(a1 + 160);
  v1[27] = v12;
  v13 = *(a1 + 80);
  v1[20] = *(a1 + 64);
  v1[21] = v13;
  v14 = *(a1 + 112);
  v1[22] = *(a1 + 96);
  v1[23] = v14;
  v15 = *(a1 + 16);
  v1[16] = *a1;
  v1[17] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[18] = result;
  v1[19] = v17;
  return result;
}

uint64_t sub_214451AC4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[45];
  v3 = v1[43];
  v35 = v1[44];
  v36 = v2;
  v4 = v1[45];
  v37[0] = v1[46];
  v5 = v1[41];
  v7 = v1[39];
  v31 = v1[40];
  v6 = v31;
  v32 = v5;
  v8 = v1[41];
  v9 = v1[43];
  v33 = v1[42];
  v10 = v33;
  v34 = v9;
  v11 = v1[37];
  v13 = v1[35];
  v27 = v1[36];
  v12 = v27;
  v28 = v11;
  v14 = v1[37];
  v15 = v1[39];
  v29 = v1[38];
  v16 = v29;
  v30 = v15;
  v17 = v1[33];
  v24[0] = v1[32];
  v24[1] = v17;
  v18 = v1[35];
  v20 = v1[32];
  v19 = v1[33];
  v25 = v1[34];
  v21 = v25;
  v26 = v18;
  *(v37 + 10) = *(v1 + 746);
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[46];
  *(a1 + 234) = *(v1 + 746);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_214451B8C(uint64_t a1)
{
  v3 = v1[45];
  v18[12] = v1[44];
  v18[13] = v3;
  v19[0] = v1[46];
  v4 = v1[41];
  v18[8] = v1[40];
  v18[9] = v4;
  v5 = v1[43];
  v18[10] = v1[42];
  v18[11] = v5;
  v6 = v1[37];
  v18[4] = v1[36];
  v18[5] = v6;
  v7 = v1[39];
  v18[6] = v1[38];
  v18[7] = v7;
  v8 = v1[33];
  v18[0] = v1[32];
  v18[1] = v8;
  v9 = v1[35];
  v18[2] = v1[34];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 746);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[44] = *(a1 + 192);
  v1[45] = v10;
  v1[46] = *(a1 + 224);
  *(v1 + 746) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[40] = *(a1 + 128);
  v1[41] = v11;
  v12 = *(a1 + 176);
  v1[42] = *(a1 + 160);
  v1[43] = v12;
  v13 = *(a1 + 80);
  v1[36] = *(a1 + 64);
  v1[37] = v13;
  v14 = *(a1 + 112);
  v1[38] = *(a1 + 96);
  v1[39] = v14;
  v15 = *(a1 + 16);
  v1[32] = *a1;
  v1[33] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[34] = result;
  v1[35] = v17;
  return result;
}

uint64_t sub_214451C78@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[61];
  v3 = v1[59];
  v35 = v1[60];
  v36 = v2;
  v4 = v1[61];
  v37[0] = v1[62];
  v5 = v1[57];
  v7 = v1[55];
  v31 = v1[56];
  v6 = v31;
  v32 = v5;
  v8 = v1[57];
  v9 = v1[59];
  v33 = v1[58];
  v10 = v33;
  v34 = v9;
  v11 = v1[53];
  v13 = v1[51];
  v27 = v1[52];
  v12 = v27;
  v28 = v11;
  v14 = v1[53];
  v15 = v1[55];
  v29 = v1[54];
  v16 = v29;
  v30 = v15;
  v17 = v1[49];
  v24[0] = v1[48];
  v24[1] = v17;
  v18 = v1[51];
  v20 = v1[48];
  v19 = v1[49];
  v25 = v1[50];
  v21 = v25;
  v26 = v18;
  *(v37 + 10) = *(v1 + 1002);
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[62];
  *(a1 + 234) = *(v1 + 1002);
  a1[8] = v6;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v3;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v7;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v13;
  return sub_2142FCC0C(v24, &v23);
}

__n128 sub_214451D40(uint64_t a1)
{
  v3 = v1[61];
  v18[12] = v1[60];
  v18[13] = v3;
  v19[0] = v1[62];
  v4 = v1[57];
  v18[8] = v1[56];
  v18[9] = v4;
  v5 = v1[59];
  v18[10] = v1[58];
  v18[11] = v5;
  v6 = v1[53];
  v18[4] = v1[52];
  v18[5] = v6;
  v7 = v1[55];
  v18[6] = v1[54];
  v18[7] = v7;
  v8 = v1[49];
  v18[0] = v1[48];
  v18[1] = v8;
  v9 = v1[51];
  v18[2] = v1[50];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1002);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[60] = *(a1 + 192);
  v1[61] = v10;
  v1[62] = *(a1 + 224);
  *(v1 + 1002) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[56] = *(a1 + 128);
  v1[57] = v11;
  v12 = *(a1 + 176);
  v1[58] = *(a1 + 160);
  v1[59] = v12;
  v13 = *(a1 + 80);
  v1[52] = *(a1 + 64);
  v1[53] = v13;
  v14 = *(a1 + 112);
  v1[54] = *(a1 + 96);
  v1[55] = v14;
  v15 = *(a1 + 16);
  v1[48] = *a1;
  v1[49] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[50] = result;
  v1[51] = v17;
  return result;
}

uint64_t sub_214451E2C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[77];
  v18[12] = v1[76];
  v18[13] = v2;
  v19[0] = v1[78];
  v3 = v1[73];
  v18[8] = v1[72];
  v18[9] = v3;
  v4 = v1[75];
  v18[10] = v1[74];
  v18[11] = v4;
  v5 = v1[69];
  v18[4] = v1[68];
  v18[5] = v5;
  v6 = v1[71];
  v18[6] = v1[70];
  v18[7] = v6;
  v7 = v1[65];
  v18[0] = v1[64];
  v18[1] = v7;
  v8 = v1[67];
  v18[2] = v1[66];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 1258);
  v9 = v1[77];
  a1[12] = v1[76];
  a1[13] = v9;
  a1[14] = v1[78];
  *(a1 + 234) = *(v1 + 1258);
  v10 = v1[73];
  a1[8] = v1[72];
  a1[9] = v10;
  v11 = v1[75];
  a1[10] = v1[74];
  a1[11] = v11;
  v12 = v1[69];
  a1[4] = v1[68];
  a1[5] = v12;
  v13 = v1[71];
  a1[6] = v1[70];
  a1[7] = v13;
  v14 = v1[65];
  *a1 = v1[64];
  a1[1] = v14;
  v15 = v1[67];
  a1[2] = v1[66];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214451F2C(uint64_t a1)
{
  v3 = v1[77];
  v18[12] = v1[76];
  v18[13] = v3;
  v19[0] = v1[78];
  v4 = v1[73];
  v18[8] = v1[72];
  v18[9] = v4;
  v5 = v1[75];
  v18[10] = v1[74];
  v18[11] = v5;
  v6 = v1[69];
  v18[4] = v1[68];
  v18[5] = v6;
  v7 = v1[71];
  v18[6] = v1[70];
  v18[7] = v7;
  v8 = v1[65];
  v18[0] = v1[64];
  v18[1] = v8;
  v9 = v1[67];
  v18[2] = v1[66];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1258);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[76] = *(a1 + 192);
  v1[77] = v10;
  v1[78] = *(a1 + 224);
  *(v1 + 1258) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[72] = *(a1 + 128);
  v1[73] = v11;
  v12 = *(a1 + 176);
  v1[74] = *(a1 + 160);
  v1[75] = v12;
  v13 = *(a1 + 80);
  v1[68] = *(a1 + 64);
  v1[69] = v13;
  v14 = *(a1 + 112);
  v1[70] = *(a1 + 96);
  v1[71] = v14;
  v15 = *(a1 + 16);
  v1[64] = *a1;
  v1[65] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[66] = result;
  v1[67] = v17;
  return result;
}

uint64_t sub_214452050@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[93];
  v18[12] = v1[92];
  v18[13] = v2;
  v19[0] = v1[94];
  v3 = v1[89];
  v18[8] = v1[88];
  v18[9] = v3;
  v4 = v1[91];
  v18[10] = v1[90];
  v18[11] = v4;
  v5 = v1[85];
  v18[4] = v1[84];
  v18[5] = v5;
  v6 = v1[87];
  v18[6] = v1[86];
  v18[7] = v6;
  v7 = v1[81];
  v18[0] = v1[80];
  v18[1] = v7;
  v8 = v1[83];
  v18[2] = v1[82];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 1514);
  v9 = v1[93];
  a1[12] = v1[92];
  a1[13] = v9;
  a1[14] = v1[94];
  *(a1 + 234) = *(v1 + 1514);
  v10 = v1[89];
  a1[8] = v1[88];
  a1[9] = v10;
  v11 = v1[91];
  a1[10] = v1[90];
  a1[11] = v11;
  v12 = v1[85];
  a1[4] = v1[84];
  a1[5] = v12;
  v13 = v1[87];
  a1[6] = v1[86];
  a1[7] = v13;
  v14 = v1[81];
  *a1 = v1[80];
  a1[1] = v14;
  v15 = v1[83];
  a1[2] = v1[82];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452150(uint64_t a1)
{
  v3 = v1[93];
  v18[12] = v1[92];
  v18[13] = v3;
  v19[0] = v1[94];
  v4 = v1[89];
  v18[8] = v1[88];
  v18[9] = v4;
  v5 = v1[91];
  v18[10] = v1[90];
  v18[11] = v5;
  v6 = v1[85];
  v18[4] = v1[84];
  v18[5] = v6;
  v7 = v1[87];
  v18[6] = v1[86];
  v18[7] = v7;
  v8 = v1[81];
  v18[0] = v1[80];
  v18[1] = v8;
  v9 = v1[83];
  v18[2] = v1[82];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1514);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[92] = *(a1 + 192);
  v1[93] = v10;
  v1[94] = *(a1 + 224);
  *(v1 + 1514) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[88] = *(a1 + 128);
  v1[89] = v11;
  v12 = *(a1 + 176);
  v1[90] = *(a1 + 160);
  v1[91] = v12;
  v13 = *(a1 + 80);
  v1[84] = *(a1 + 64);
  v1[85] = v13;
  v14 = *(a1 + 112);
  v1[86] = *(a1 + 96);
  v1[87] = v14;
  v15 = *(a1 + 16);
  v1[80] = *a1;
  v1[81] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[82] = result;
  v1[83] = v17;
  return result;
}

uint64_t sub_214452274@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[109];
  v18[12] = v1[108];
  v18[13] = v2;
  v19[0] = v1[110];
  v3 = v1[105];
  v18[8] = v1[104];
  v18[9] = v3;
  v4 = v1[107];
  v18[10] = v1[106];
  v18[11] = v4;
  v5 = v1[101];
  v18[4] = v1[100];
  v18[5] = v5;
  v6 = v1[103];
  v18[6] = v1[102];
  v18[7] = v6;
  v7 = v1[97];
  v18[0] = v1[96];
  v18[1] = v7;
  v8 = v1[99];
  v18[2] = v1[98];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 1770);
  v9 = v1[109];
  a1[12] = v1[108];
  a1[13] = v9;
  a1[14] = v1[110];
  *(a1 + 234) = *(v1 + 1770);
  v10 = v1[105];
  a1[8] = v1[104];
  a1[9] = v10;
  v11 = v1[107];
  a1[10] = v1[106];
  a1[11] = v11;
  v12 = v1[101];
  a1[4] = v1[100];
  a1[5] = v12;
  v13 = v1[103];
  a1[6] = v1[102];
  a1[7] = v13;
  v14 = v1[97];
  *a1 = v1[96];
  a1[1] = v14;
  v15 = v1[99];
  a1[2] = v1[98];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452374(uint64_t a1)
{
  v3 = v1[109];
  v18[12] = v1[108];
  v18[13] = v3;
  v19[0] = v1[110];
  v4 = v1[105];
  v18[8] = v1[104];
  v18[9] = v4;
  v5 = v1[107];
  v18[10] = v1[106];
  v18[11] = v5;
  v6 = v1[101];
  v18[4] = v1[100];
  v18[5] = v6;
  v7 = v1[103];
  v18[6] = v1[102];
  v18[7] = v7;
  v8 = v1[97];
  v18[0] = v1[96];
  v18[1] = v8;
  v9 = v1[99];
  v18[2] = v1[98];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 1770);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[108] = *(a1 + 192);
  v1[109] = v10;
  v1[110] = *(a1 + 224);
  *(v1 + 1770) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[104] = *(a1 + 128);
  v1[105] = v11;
  v12 = *(a1 + 176);
  v1[106] = *(a1 + 160);
  v1[107] = v12;
  v13 = *(a1 + 80);
  v1[100] = *(a1 + 64);
  v1[101] = v13;
  v14 = *(a1 + 112);
  v1[102] = *(a1 + 96);
  v1[103] = v14;
  v15 = *(a1 + 16);
  v1[96] = *a1;
  v1[97] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[98] = result;
  v1[99] = v17;
  return result;
}

uint64_t sub_214452498@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[125];
  v18[12] = v1[124];
  v18[13] = v2;
  v19[0] = v1[126];
  v3 = v1[121];
  v18[8] = v1[120];
  v18[9] = v3;
  v4 = v1[123];
  v18[10] = v1[122];
  v18[11] = v4;
  v5 = v1[117];
  v18[4] = v1[116];
  v18[5] = v5;
  v6 = v1[119];
  v18[6] = v1[118];
  v18[7] = v6;
  v7 = v1[113];
  v18[0] = v1[112];
  v18[1] = v7;
  v8 = v1[115];
  v18[2] = v1[114];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2026);
  v9 = v1[125];
  a1[12] = v1[124];
  a1[13] = v9;
  a1[14] = v1[126];
  *(a1 + 234) = *(v1 + 2026);
  v10 = v1[121];
  a1[8] = v1[120];
  a1[9] = v10;
  v11 = v1[123];
  a1[10] = v1[122];
  a1[11] = v11;
  v12 = v1[117];
  a1[4] = v1[116];
  a1[5] = v12;
  v13 = v1[119];
  a1[6] = v1[118];
  a1[7] = v13;
  v14 = v1[113];
  *a1 = v1[112];
  a1[1] = v14;
  v15 = v1[115];
  a1[2] = v1[114];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452598(uint64_t a1)
{
  v3 = v1[125];
  v18[12] = v1[124];
  v18[13] = v3;
  v19[0] = v1[126];
  v4 = v1[121];
  v18[8] = v1[120];
  v18[9] = v4;
  v5 = v1[123];
  v18[10] = v1[122];
  v18[11] = v5;
  v6 = v1[117];
  v18[4] = v1[116];
  v18[5] = v6;
  v7 = v1[119];
  v18[6] = v1[118];
  v18[7] = v7;
  v8 = v1[113];
  v18[0] = v1[112];
  v18[1] = v8;
  v9 = v1[115];
  v18[2] = v1[114];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2026);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[124] = *(a1 + 192);
  v1[125] = v10;
  v1[126] = *(a1 + 224);
  *(v1 + 2026) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[120] = *(a1 + 128);
  v1[121] = v11;
  v12 = *(a1 + 176);
  v1[122] = *(a1 + 160);
  v1[123] = v12;
  v13 = *(a1 + 80);
  v1[116] = *(a1 + 64);
  v1[117] = v13;
  v14 = *(a1 + 112);
  v1[118] = *(a1 + 96);
  v1[119] = v14;
  v15 = *(a1 + 16);
  v1[112] = *a1;
  v1[113] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[114] = result;
  v1[115] = v17;
  return result;
}

uint64_t sub_2144526BC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[141];
  v18[12] = v1[140];
  v18[13] = v2;
  v19[0] = v1[142];
  v3 = v1[137];
  v18[8] = v1[136];
  v18[9] = v3;
  v4 = v1[139];
  v18[10] = v1[138];
  v18[11] = v4;
  v5 = v1[133];
  v18[4] = v1[132];
  v18[5] = v5;
  v6 = v1[135];
  v18[6] = v1[134];
  v18[7] = v6;
  v7 = v1[129];
  v18[0] = v1[128];
  v18[1] = v7;
  v8 = v1[131];
  v18[2] = v1[130];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2282);
  v9 = v1[141];
  a1[12] = v1[140];
  a1[13] = v9;
  a1[14] = v1[142];
  *(a1 + 234) = *(v1 + 2282);
  v10 = v1[137];
  a1[8] = v1[136];
  a1[9] = v10;
  v11 = v1[139];
  a1[10] = v1[138];
  a1[11] = v11;
  v12 = v1[133];
  a1[4] = v1[132];
  a1[5] = v12;
  v13 = v1[135];
  a1[6] = v1[134];
  a1[7] = v13;
  v14 = v1[129];
  *a1 = v1[128];
  a1[1] = v14;
  v15 = v1[131];
  a1[2] = v1[130];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144527BC(uint64_t a1)
{
  v3 = v1[141];
  v18[12] = v1[140];
  v18[13] = v3;
  v19[0] = v1[142];
  v4 = v1[137];
  v18[8] = v1[136];
  v18[9] = v4;
  v5 = v1[139];
  v18[10] = v1[138];
  v18[11] = v5;
  v6 = v1[133];
  v18[4] = v1[132];
  v18[5] = v6;
  v7 = v1[135];
  v18[6] = v1[134];
  v18[7] = v7;
  v8 = v1[129];
  v18[0] = v1[128];
  v18[1] = v8;
  v9 = v1[131];
  v18[2] = v1[130];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2282);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[140] = *(a1 + 192);
  v1[141] = v10;
  v1[142] = *(a1 + 224);
  *(v1 + 2282) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[136] = *(a1 + 128);
  v1[137] = v11;
  v12 = *(a1 + 176);
  v1[138] = *(a1 + 160);
  v1[139] = v12;
  v13 = *(a1 + 80);
  v1[132] = *(a1 + 64);
  v1[133] = v13;
  v14 = *(a1 + 112);
  v1[134] = *(a1 + 96);
  v1[135] = v14;
  v15 = *(a1 + 16);
  v1[128] = *a1;
  v1[129] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[130] = result;
  v1[131] = v17;
  return result;
}

uint64_t sub_2144528E0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[157];
  v18[12] = v1[156];
  v18[13] = v2;
  v19[0] = v1[158];
  v3 = v1[153];
  v18[8] = v1[152];
  v18[9] = v3;
  v4 = v1[155];
  v18[10] = v1[154];
  v18[11] = v4;
  v5 = v1[149];
  v18[4] = v1[148];
  v18[5] = v5;
  v6 = v1[151];
  v18[6] = v1[150];
  v18[7] = v6;
  v7 = v1[145];
  v18[0] = v1[144];
  v18[1] = v7;
  v8 = v1[147];
  v18[2] = v1[146];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2538);
  v9 = v1[157];
  a1[12] = v1[156];
  a1[13] = v9;
  a1[14] = v1[158];
  *(a1 + 234) = *(v1 + 2538);
  v10 = v1[153];
  a1[8] = v1[152];
  a1[9] = v10;
  v11 = v1[155];
  a1[10] = v1[154];
  a1[11] = v11;
  v12 = v1[149];
  a1[4] = v1[148];
  a1[5] = v12;
  v13 = v1[151];
  a1[6] = v1[150];
  a1[7] = v13;
  v14 = v1[145];
  *a1 = v1[144];
  a1[1] = v14;
  v15 = v1[147];
  a1[2] = v1[146];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144529E0(uint64_t a1)
{
  v3 = v1[157];
  v18[12] = v1[156];
  v18[13] = v3;
  v19[0] = v1[158];
  v4 = v1[153];
  v18[8] = v1[152];
  v18[9] = v4;
  v5 = v1[155];
  v18[10] = v1[154];
  v18[11] = v5;
  v6 = v1[149];
  v18[4] = v1[148];
  v18[5] = v6;
  v7 = v1[151];
  v18[6] = v1[150];
  v18[7] = v7;
  v8 = v1[145];
  v18[0] = v1[144];
  v18[1] = v8;
  v9 = v1[147];
  v18[2] = v1[146];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2538);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[156] = *(a1 + 192);
  v1[157] = v10;
  v1[158] = *(a1 + 224);
  *(v1 + 2538) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[152] = *(a1 + 128);
  v1[153] = v11;
  v12 = *(a1 + 176);
  v1[154] = *(a1 + 160);
  v1[155] = v12;
  v13 = *(a1 + 80);
  v1[148] = *(a1 + 64);
  v1[149] = v13;
  v14 = *(a1 + 112);
  v1[150] = *(a1 + 96);
  v1[151] = v14;
  v15 = *(a1 + 16);
  v1[144] = *a1;
  v1[145] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[146] = result;
  v1[147] = v17;
  return result;
}

uint64_t sub_214452B04@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[173];
  v18[12] = v1[172];
  v18[13] = v2;
  v19[0] = v1[174];
  v3 = v1[169];
  v18[8] = v1[168];
  v18[9] = v3;
  v4 = v1[171];
  v18[10] = v1[170];
  v18[11] = v4;
  v5 = v1[165];
  v18[4] = v1[164];
  v18[5] = v5;
  v6 = v1[167];
  v18[6] = v1[166];
  v18[7] = v6;
  v7 = v1[161];
  v18[0] = v1[160];
  v18[1] = v7;
  v8 = v1[163];
  v18[2] = v1[162];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 2794);
  v9 = v1[173];
  a1[12] = v1[172];
  a1[13] = v9;
  a1[14] = v1[174];
  *(a1 + 234) = *(v1 + 2794);
  v10 = v1[169];
  a1[8] = v1[168];
  a1[9] = v10;
  v11 = v1[171];
  a1[10] = v1[170];
  a1[11] = v11;
  v12 = v1[165];
  a1[4] = v1[164];
  a1[5] = v12;
  v13 = v1[167];
  a1[6] = v1[166];
  a1[7] = v13;
  v14 = v1[161];
  *a1 = v1[160];
  a1[1] = v14;
  v15 = v1[163];
  a1[2] = v1[162];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452C04(uint64_t a1)
{
  v3 = v1[173];
  v18[12] = v1[172];
  v18[13] = v3;
  v19[0] = v1[174];
  v4 = v1[169];
  v18[8] = v1[168];
  v18[9] = v4;
  v5 = v1[171];
  v18[10] = v1[170];
  v18[11] = v5;
  v6 = v1[165];
  v18[4] = v1[164];
  v18[5] = v6;
  v7 = v1[167];
  v18[6] = v1[166];
  v18[7] = v7;
  v8 = v1[161];
  v18[0] = v1[160];
  v18[1] = v8;
  v9 = v1[163];
  v18[2] = v1[162];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 2794);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[172] = *(a1 + 192);
  v1[173] = v10;
  v1[174] = *(a1 + 224);
  *(v1 + 2794) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[168] = *(a1 + 128);
  v1[169] = v11;
  v12 = *(a1 + 176);
  v1[170] = *(a1 + 160);
  v1[171] = v12;
  v13 = *(a1 + 80);
  v1[164] = *(a1 + 64);
  v1[165] = v13;
  v14 = *(a1 + 112);
  v1[166] = *(a1 + 96);
  v1[167] = v14;
  v15 = *(a1 + 16);
  v1[160] = *a1;
  v1[161] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[162] = result;
  v1[163] = v17;
  return result;
}

uint64_t sub_214452D28@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[189];
  v18[12] = v1[188];
  v18[13] = v2;
  v19[0] = v1[190];
  v3 = v1[185];
  v18[8] = v1[184];
  v18[9] = v3;
  v4 = v1[187];
  v18[10] = v1[186];
  v18[11] = v4;
  v5 = v1[181];
  v18[4] = v1[180];
  v18[5] = v5;
  v6 = v1[183];
  v18[6] = v1[182];
  v18[7] = v6;
  v7 = v1[177];
  v18[0] = v1[176];
  v18[1] = v7;
  v8 = v1[179];
  v18[2] = v1[178];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3050);
  v9 = v1[189];
  a1[12] = v1[188];
  a1[13] = v9;
  a1[14] = v1[190];
  *(a1 + 234) = *(v1 + 3050);
  v10 = v1[185];
  a1[8] = v1[184];
  a1[9] = v10;
  v11 = v1[187];
  a1[10] = v1[186];
  a1[11] = v11;
  v12 = v1[181];
  a1[4] = v1[180];
  a1[5] = v12;
  v13 = v1[183];
  a1[6] = v1[182];
  a1[7] = v13;
  v14 = v1[177];
  *a1 = v1[176];
  a1[1] = v14;
  v15 = v1[179];
  a1[2] = v1[178];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214452E28(uint64_t a1)
{
  v3 = v1[189];
  v18[12] = v1[188];
  v18[13] = v3;
  v19[0] = v1[190];
  v4 = v1[185];
  v18[8] = v1[184];
  v18[9] = v4;
  v5 = v1[187];
  v18[10] = v1[186];
  v18[11] = v5;
  v6 = v1[181];
  v18[4] = v1[180];
  v18[5] = v6;
  v7 = v1[183];
  v18[6] = v1[182];
  v18[7] = v7;
  v8 = v1[177];
  v18[0] = v1[176];
  v18[1] = v8;
  v9 = v1[179];
  v18[2] = v1[178];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3050);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[188] = *(a1 + 192);
  v1[189] = v10;
  v1[190] = *(a1 + 224);
  *(v1 + 3050) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[184] = *(a1 + 128);
  v1[185] = v11;
  v12 = *(a1 + 176);
  v1[186] = *(a1 + 160);
  v1[187] = v12;
  v13 = *(a1 + 80);
  v1[180] = *(a1 + 64);
  v1[181] = v13;
  v14 = *(a1 + 112);
  v1[182] = *(a1 + 96);
  v1[183] = v14;
  v15 = *(a1 + 16);
  v1[176] = *a1;
  v1[177] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[178] = result;
  v1[179] = v17;
  return result;
}

uint64_t sub_214452F4C@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[205];
  v18[12] = v1[204];
  v18[13] = v2;
  v19[0] = v1[206];
  v3 = v1[201];
  v18[8] = v1[200];
  v18[9] = v3;
  v4 = v1[203];
  v18[10] = v1[202];
  v18[11] = v4;
  v5 = v1[197];
  v18[4] = v1[196];
  v18[5] = v5;
  v6 = v1[199];
  v18[6] = v1[198];
  v18[7] = v6;
  v7 = v1[193];
  v18[0] = v1[192];
  v18[1] = v7;
  v8 = v1[195];
  v18[2] = v1[194];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3306);
  v9 = v1[205];
  a1[12] = v1[204];
  a1[13] = v9;
  a1[14] = v1[206];
  *(a1 + 234) = *(v1 + 3306);
  v10 = v1[201];
  a1[8] = v1[200];
  a1[9] = v10;
  v11 = v1[203];
  a1[10] = v1[202];
  a1[11] = v11;
  v12 = v1[197];
  a1[4] = v1[196];
  a1[5] = v12;
  v13 = v1[199];
  a1[6] = v1[198];
  a1[7] = v13;
  v14 = v1[193];
  *a1 = v1[192];
  a1[1] = v14;
  v15 = v1[195];
  a1[2] = v1[194];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_21445304C(uint64_t a1)
{
  v3 = v1[205];
  v18[12] = v1[204];
  v18[13] = v3;
  v19[0] = v1[206];
  v4 = v1[201];
  v18[8] = v1[200];
  v18[9] = v4;
  v5 = v1[203];
  v18[10] = v1[202];
  v18[11] = v5;
  v6 = v1[197];
  v18[4] = v1[196];
  v18[5] = v6;
  v7 = v1[199];
  v18[6] = v1[198];
  v18[7] = v7;
  v8 = v1[193];
  v18[0] = v1[192];
  v18[1] = v8;
  v9 = v1[195];
  v18[2] = v1[194];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3306);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[204] = *(a1 + 192);
  v1[205] = v10;
  v1[206] = *(a1 + 224);
  *(v1 + 3306) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[200] = *(a1 + 128);
  v1[201] = v11;
  v12 = *(a1 + 176);
  v1[202] = *(a1 + 160);
  v1[203] = v12;
  v13 = *(a1 + 80);
  v1[196] = *(a1 + 64);
  v1[197] = v13;
  v14 = *(a1 + 112);
  v1[198] = *(a1 + 96);
  v1[199] = v14;
  v15 = *(a1 + 16);
  v1[192] = *a1;
  v1[193] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[194] = result;
  v1[195] = v17;
  return result;
}

uint64_t sub_214453170@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[221];
  v18[12] = v1[220];
  v18[13] = v2;
  v19[0] = v1[222];
  v3 = v1[217];
  v18[8] = v1[216];
  v18[9] = v3;
  v4 = v1[219];
  v18[10] = v1[218];
  v18[11] = v4;
  v5 = v1[213];
  v18[4] = v1[212];
  v18[5] = v5;
  v6 = v1[215];
  v18[6] = v1[214];
  v18[7] = v6;
  v7 = v1[209];
  v18[0] = v1[208];
  v18[1] = v7;
  v8 = v1[211];
  v18[2] = v1[210];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3562);
  v9 = v1[221];
  a1[12] = v1[220];
  a1[13] = v9;
  a1[14] = v1[222];
  *(a1 + 234) = *(v1 + 3562);
  v10 = v1[217];
  a1[8] = v1[216];
  a1[9] = v10;
  v11 = v1[219];
  a1[10] = v1[218];
  a1[11] = v11;
  v12 = v1[213];
  a1[4] = v1[212];
  a1[5] = v12;
  v13 = v1[215];
  a1[6] = v1[214];
  a1[7] = v13;
  v14 = v1[209];
  *a1 = v1[208];
  a1[1] = v14;
  v15 = v1[211];
  a1[2] = v1[210];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453270(uint64_t a1)
{
  v3 = v1[221];
  v18[12] = v1[220];
  v18[13] = v3;
  v19[0] = v1[222];
  v4 = v1[217];
  v18[8] = v1[216];
  v18[9] = v4;
  v5 = v1[219];
  v18[10] = v1[218];
  v18[11] = v5;
  v6 = v1[213];
  v18[4] = v1[212];
  v18[5] = v6;
  v7 = v1[215];
  v18[6] = v1[214];
  v18[7] = v7;
  v8 = v1[209];
  v18[0] = v1[208];
  v18[1] = v8;
  v9 = v1[211];
  v18[2] = v1[210];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3562);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[220] = *(a1 + 192);
  v1[221] = v10;
  v1[222] = *(a1 + 224);
  *(v1 + 3562) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[216] = *(a1 + 128);
  v1[217] = v11;
  v12 = *(a1 + 176);
  v1[218] = *(a1 + 160);
  v1[219] = v12;
  v13 = *(a1 + 80);
  v1[212] = *(a1 + 64);
  v1[213] = v13;
  v14 = *(a1 + 112);
  v1[214] = *(a1 + 96);
  v1[215] = v14;
  v15 = *(a1 + 16);
  v1[208] = *a1;
  v1[209] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[210] = result;
  v1[211] = v17;
  return result;
}

uint64_t sub_214453394@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[237];
  v18[12] = v1[236];
  v18[13] = v2;
  v19[0] = v1[238];
  v3 = v1[233];
  v18[8] = v1[232];
  v18[9] = v3;
  v4 = v1[235];
  v18[10] = v1[234];
  v18[11] = v4;
  v5 = v1[229];
  v18[4] = v1[228];
  v18[5] = v5;
  v6 = v1[231];
  v18[6] = v1[230];
  v18[7] = v6;
  v7 = v1[225];
  v18[0] = v1[224];
  v18[1] = v7;
  v8 = v1[227];
  v18[2] = v1[226];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 3818);
  v9 = v1[237];
  a1[12] = v1[236];
  a1[13] = v9;
  a1[14] = v1[238];
  *(a1 + 234) = *(v1 + 3818);
  v10 = v1[233];
  a1[8] = v1[232];
  a1[9] = v10;
  v11 = v1[235];
  a1[10] = v1[234];
  a1[11] = v11;
  v12 = v1[229];
  a1[4] = v1[228];
  a1[5] = v12;
  v13 = v1[231];
  a1[6] = v1[230];
  a1[7] = v13;
  v14 = v1[225];
  *a1 = v1[224];
  a1[1] = v14;
  v15 = v1[227];
  a1[2] = v1[226];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453494(uint64_t a1)
{
  v3 = v1[237];
  v18[12] = v1[236];
  v18[13] = v3;
  v19[0] = v1[238];
  v4 = v1[233];
  v18[8] = v1[232];
  v18[9] = v4;
  v5 = v1[235];
  v18[10] = v1[234];
  v18[11] = v5;
  v6 = v1[229];
  v18[4] = v1[228];
  v18[5] = v6;
  v7 = v1[231];
  v18[6] = v1[230];
  v18[7] = v7;
  v8 = v1[225];
  v18[0] = v1[224];
  v18[1] = v8;
  v9 = v1[227];
  v18[2] = v1[226];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 3818);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[236] = *(a1 + 192);
  v1[237] = v10;
  v1[238] = *(a1 + 224);
  *(v1 + 3818) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[232] = *(a1 + 128);
  v1[233] = v11;
  v12 = *(a1 + 176);
  v1[234] = *(a1 + 160);
  v1[235] = v12;
  v13 = *(a1 + 80);
  v1[228] = *(a1 + 64);
  v1[229] = v13;
  v14 = *(a1 + 112);
  v1[230] = *(a1 + 96);
  v1[231] = v14;
  v15 = *(a1 + 16);
  v1[224] = *a1;
  v1[225] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[226] = result;
  v1[227] = v17;
  return result;
}

uint64_t sub_2144535B8@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[253];
  v18[12] = v1[252];
  v18[13] = v2;
  v19[0] = v1[254];
  v3 = v1[249];
  v18[8] = v1[248];
  v18[9] = v3;
  v4 = v1[251];
  v18[10] = v1[250];
  v18[11] = v4;
  v5 = v1[245];
  v18[4] = v1[244];
  v18[5] = v5;
  v6 = v1[247];
  v18[6] = v1[246];
  v18[7] = v6;
  v7 = v1[241];
  v18[0] = v1[240];
  v18[1] = v7;
  v8 = v1[243];
  v18[2] = v1[242];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4074);
  v9 = v1[253];
  a1[12] = v1[252];
  a1[13] = v9;
  a1[14] = v1[254];
  *(a1 + 234) = *(v1 + 4074);
  v10 = v1[249];
  a1[8] = v1[248];
  a1[9] = v10;
  v11 = v1[251];
  a1[10] = v1[250];
  a1[11] = v11;
  v12 = v1[245];
  a1[4] = v1[244];
  a1[5] = v12;
  v13 = v1[247];
  a1[6] = v1[246];
  a1[7] = v13;
  v14 = v1[241];
  *a1 = v1[240];
  a1[1] = v14;
  v15 = v1[243];
  a1[2] = v1[242];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144536B8(uint64_t a1)
{
  v3 = v1[253];
  v18[12] = v1[252];
  v18[13] = v3;
  v19[0] = v1[254];
  v4 = v1[249];
  v18[8] = v1[248];
  v18[9] = v4;
  v5 = v1[251];
  v18[10] = v1[250];
  v18[11] = v5;
  v6 = v1[245];
  v18[4] = v1[244];
  v18[5] = v6;
  v7 = v1[247];
  v18[6] = v1[246];
  v18[7] = v7;
  v8 = v1[241];
  v18[0] = v1[240];
  v18[1] = v8;
  v9 = v1[243];
  v18[2] = v1[242];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4074);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[252] = *(a1 + 192);
  v1[253] = v10;
  v1[254] = *(a1 + 224);
  *(v1 + 4074) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[248] = *(a1 + 128);
  v1[249] = v11;
  v12 = *(a1 + 176);
  v1[250] = *(a1 + 160);
  v1[251] = v12;
  v13 = *(a1 + 80);
  v1[244] = *(a1 + 64);
  v1[245] = v13;
  v14 = *(a1 + 112);
  v1[246] = *(a1 + 96);
  v1[247] = v14;
  v15 = *(a1 + 16);
  v1[240] = *a1;
  v1[241] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[242] = result;
  v1[243] = v17;
  return result;
}

uint64_t sub_2144537DC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[269];
  v18[12] = v1[268];
  v18[13] = v2;
  v19[0] = v1[270];
  v3 = v1[265];
  v18[8] = v1[264];
  v18[9] = v3;
  v4 = v1[267];
  v18[10] = v1[266];
  v18[11] = v4;
  v5 = v1[261];
  v18[4] = v1[260];
  v18[5] = v5;
  v6 = v1[263];
  v18[6] = v1[262];
  v18[7] = v6;
  v7 = v1[257];
  v18[0] = v1[256];
  v18[1] = v7;
  v8 = v1[259];
  v18[2] = v1[258];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4330);
  v9 = v1[269];
  a1[12] = v1[268];
  a1[13] = v9;
  a1[14] = v1[270];
  *(a1 + 234) = *(v1 + 4330);
  v10 = v1[265];
  a1[8] = v1[264];
  a1[9] = v10;
  v11 = v1[267];
  a1[10] = v1[266];
  a1[11] = v11;
  v12 = v1[261];
  a1[4] = v1[260];
  a1[5] = v12;
  v13 = v1[263];
  a1[6] = v1[262];
  a1[7] = v13;
  v14 = v1[257];
  *a1 = v1[256];
  a1[1] = v14;
  v15 = v1[259];
  a1[2] = v1[258];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144538DC(uint64_t a1)
{
  v3 = v1[269];
  v18[12] = v1[268];
  v18[13] = v3;
  v19[0] = v1[270];
  v4 = v1[265];
  v18[8] = v1[264];
  v18[9] = v4;
  v5 = v1[267];
  v18[10] = v1[266];
  v18[11] = v5;
  v6 = v1[261];
  v18[4] = v1[260];
  v18[5] = v6;
  v7 = v1[263];
  v18[6] = v1[262];
  v18[7] = v7;
  v8 = v1[257];
  v18[0] = v1[256];
  v18[1] = v8;
  v9 = v1[259];
  v18[2] = v1[258];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4330);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[268] = *(a1 + 192);
  v1[269] = v10;
  v1[270] = *(a1 + 224);
  *(v1 + 4330) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[264] = *(a1 + 128);
  v1[265] = v11;
  v12 = *(a1 + 176);
  v1[266] = *(a1 + 160);
  v1[267] = v12;
  v13 = *(a1 + 80);
  v1[260] = *(a1 + 64);
  v1[261] = v13;
  v14 = *(a1 + 112);
  v1[262] = *(a1 + 96);
  v1[263] = v14;
  v15 = *(a1 + 16);
  v1[256] = *a1;
  v1[257] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[258] = result;
  v1[259] = v17;
  return result;
}

uint64_t sub_214453A00@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[285];
  v18[12] = v1[284];
  v18[13] = v2;
  v19[0] = v1[286];
  v3 = v1[281];
  v18[8] = v1[280];
  v18[9] = v3;
  v4 = v1[283];
  v18[10] = v1[282];
  v18[11] = v4;
  v5 = v1[277];
  v18[4] = v1[276];
  v18[5] = v5;
  v6 = v1[279];
  v18[6] = v1[278];
  v18[7] = v6;
  v7 = v1[273];
  v18[0] = v1[272];
  v18[1] = v7;
  v8 = v1[275];
  v18[2] = v1[274];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4586);
  v9 = v1[285];
  a1[12] = v1[284];
  a1[13] = v9;
  a1[14] = v1[286];
  *(a1 + 234) = *(v1 + 4586);
  v10 = v1[281];
  a1[8] = v1[280];
  a1[9] = v10;
  v11 = v1[283];
  a1[10] = v1[282];
  a1[11] = v11;
  v12 = v1[277];
  a1[4] = v1[276];
  a1[5] = v12;
  v13 = v1[279];
  a1[6] = v1[278];
  a1[7] = v13;
  v14 = v1[273];
  *a1 = v1[272];
  a1[1] = v14;
  v15 = v1[275];
  a1[2] = v1[274];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453B04(uint64_t a1)
{
  v3 = v1[285];
  v18[12] = v1[284];
  v18[13] = v3;
  v19[0] = v1[286];
  v4 = v1[281];
  v18[8] = v1[280];
  v18[9] = v4;
  v5 = v1[283];
  v18[10] = v1[282];
  v18[11] = v5;
  v6 = v1[277];
  v18[4] = v1[276];
  v18[5] = v6;
  v7 = v1[279];
  v18[6] = v1[278];
  v18[7] = v7;
  v8 = v1[273];
  v18[0] = v1[272];
  v18[1] = v8;
  v9 = v1[275];
  v18[2] = v1[274];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4586);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[284] = *(a1 + 192);
  v1[285] = v10;
  v1[286] = *(a1 + 224);
  *(v1 + 4586) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[280] = *(a1 + 128);
  v1[281] = v11;
  v12 = *(a1 + 176);
  v1[282] = *(a1 + 160);
  v1[283] = v12;
  v13 = *(a1 + 80);
  v1[276] = *(a1 + 64);
  v1[277] = v13;
  v14 = *(a1 + 112);
  v1[278] = *(a1 + 96);
  v1[279] = v14;
  v15 = *(a1 + 16);
  v1[272] = *a1;
  v1[273] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[274] = result;
  v1[275] = v17;
  return result;
}

uint64_t sub_214453C30@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[301];
  v18[12] = v1[300];
  v18[13] = v2;
  v19[0] = v1[302];
  v3 = v1[297];
  v18[8] = v1[296];
  v18[9] = v3;
  v4 = v1[299];
  v18[10] = v1[298];
  v18[11] = v4;
  v5 = v1[293];
  v18[4] = v1[292];
  v18[5] = v5;
  v6 = v1[295];
  v18[6] = v1[294];
  v18[7] = v6;
  v7 = v1[289];
  v18[0] = v1[288];
  v18[1] = v7;
  v8 = v1[291];
  v18[2] = v1[290];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 4842);
  v9 = v1[301];
  a1[12] = v1[300];
  a1[13] = v9;
  a1[14] = v1[302];
  *(a1 + 234) = *(v1 + 4842);
  v10 = v1[297];
  a1[8] = v1[296];
  a1[9] = v10;
  v11 = v1[299];
  a1[10] = v1[298];
  a1[11] = v11;
  v12 = v1[293];
  a1[4] = v1[292];
  a1[5] = v12;
  v13 = v1[295];
  a1[6] = v1[294];
  a1[7] = v13;
  v14 = v1[289];
  *a1 = v1[288];
  a1[1] = v14;
  v15 = v1[291];
  a1[2] = v1[290];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453D34(uint64_t a1)
{
  v3 = v1[301];
  v18[12] = v1[300];
  v18[13] = v3;
  v19[0] = v1[302];
  v4 = v1[297];
  v18[8] = v1[296];
  v18[9] = v4;
  v5 = v1[299];
  v18[10] = v1[298];
  v18[11] = v5;
  v6 = v1[293];
  v18[4] = v1[292];
  v18[5] = v6;
  v7 = v1[295];
  v18[6] = v1[294];
  v18[7] = v7;
  v8 = v1[289];
  v18[0] = v1[288];
  v18[1] = v8;
  v9 = v1[291];
  v18[2] = v1[290];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 4842);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[300] = *(a1 + 192);
  v1[301] = v10;
  v1[302] = *(a1 + 224);
  *(v1 + 4842) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[296] = *(a1 + 128);
  v1[297] = v11;
  v12 = *(a1 + 176);
  v1[298] = *(a1 + 160);
  v1[299] = v12;
  v13 = *(a1 + 80);
  v1[292] = *(a1 + 64);
  v1[293] = v13;
  v14 = *(a1 + 112);
  v1[294] = *(a1 + 96);
  v1[295] = v14;
  v15 = *(a1 + 16);
  v1[288] = *a1;
  v1[289] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[290] = result;
  v1[291] = v17;
  return result;
}

uint64_t sub_214453E60@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[317];
  v18[12] = v1[316];
  v18[13] = v2;
  v19[0] = v1[318];
  v3 = v1[313];
  v18[8] = v1[312];
  v18[9] = v3;
  v4 = v1[315];
  v18[10] = v1[314];
  v18[11] = v4;
  v5 = v1[309];
  v18[4] = v1[308];
  v18[5] = v5;
  v6 = v1[311];
  v18[6] = v1[310];
  v18[7] = v6;
  v7 = v1[305];
  v18[0] = v1[304];
  v18[1] = v7;
  v8 = v1[307];
  v18[2] = v1[306];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5098);
  v9 = v1[317];
  a1[12] = v1[316];
  a1[13] = v9;
  a1[14] = v1[318];
  *(a1 + 234) = *(v1 + 5098);
  v10 = v1[313];
  a1[8] = v1[312];
  a1[9] = v10;
  v11 = v1[315];
  a1[10] = v1[314];
  a1[11] = v11;
  v12 = v1[309];
  a1[4] = v1[308];
  a1[5] = v12;
  v13 = v1[311];
  a1[6] = v1[310];
  a1[7] = v13;
  v14 = v1[305];
  *a1 = v1[304];
  a1[1] = v14;
  v15 = v1[307];
  a1[2] = v1[306];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214453F64(uint64_t a1)
{
  v3 = v1[317];
  v18[12] = v1[316];
  v18[13] = v3;
  v19[0] = v1[318];
  v4 = v1[313];
  v18[8] = v1[312];
  v18[9] = v4;
  v5 = v1[315];
  v18[10] = v1[314];
  v18[11] = v5;
  v6 = v1[309];
  v18[4] = v1[308];
  v18[5] = v6;
  v7 = v1[311];
  v18[6] = v1[310];
  v18[7] = v7;
  v8 = v1[305];
  v18[0] = v1[304];
  v18[1] = v8;
  v9 = v1[307];
  v18[2] = v1[306];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5098);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[316] = *(a1 + 192);
  v1[317] = v10;
  v1[318] = *(a1 + 224);
  *(v1 + 5098) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[312] = *(a1 + 128);
  v1[313] = v11;
  v12 = *(a1 + 176);
  v1[314] = *(a1 + 160);
  v1[315] = v12;
  v13 = *(a1 + 80);
  v1[308] = *(a1 + 64);
  v1[309] = v13;
  v14 = *(a1 + 112);
  v1[310] = *(a1 + 96);
  v1[311] = v14;
  v15 = *(a1 + 16);
  v1[304] = *a1;
  v1[305] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[306] = result;
  v1[307] = v17;
  return result;
}

uint64_t sub_214454090@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[333];
  v18[12] = v1[332];
  v18[13] = v2;
  v19[0] = v1[334];
  v3 = v1[329];
  v18[8] = v1[328];
  v18[9] = v3;
  v4 = v1[331];
  v18[10] = v1[330];
  v18[11] = v4;
  v5 = v1[325];
  v18[4] = v1[324];
  v18[5] = v5;
  v6 = v1[327];
  v18[6] = v1[326];
  v18[7] = v6;
  v7 = v1[321];
  v18[0] = v1[320];
  v18[1] = v7;
  v8 = v1[323];
  v18[2] = v1[322];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5354);
  v9 = v1[333];
  a1[12] = v1[332];
  a1[13] = v9;
  a1[14] = v1[334];
  *(a1 + 234) = *(v1 + 5354);
  v10 = v1[329];
  a1[8] = v1[328];
  a1[9] = v10;
  v11 = v1[331];
  a1[10] = v1[330];
  a1[11] = v11;
  v12 = v1[325];
  a1[4] = v1[324];
  a1[5] = v12;
  v13 = v1[327];
  a1[6] = v1[326];
  a1[7] = v13;
  v14 = v1[321];
  *a1 = v1[320];
  a1[1] = v14;
  v15 = v1[323];
  a1[2] = v1[322];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454194(uint64_t a1)
{
  v3 = v1[333];
  v18[12] = v1[332];
  v18[13] = v3;
  v19[0] = v1[334];
  v4 = v1[329];
  v18[8] = v1[328];
  v18[9] = v4;
  v5 = v1[331];
  v18[10] = v1[330];
  v18[11] = v5;
  v6 = v1[325];
  v18[4] = v1[324];
  v18[5] = v6;
  v7 = v1[327];
  v18[6] = v1[326];
  v18[7] = v7;
  v8 = v1[321];
  v18[0] = v1[320];
  v18[1] = v8;
  v9 = v1[323];
  v18[2] = v1[322];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5354);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[332] = *(a1 + 192);
  v1[333] = v10;
  v1[334] = *(a1 + 224);
  *(v1 + 5354) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[328] = *(a1 + 128);
  v1[329] = v11;
  v12 = *(a1 + 176);
  v1[330] = *(a1 + 160);
  v1[331] = v12;
  v13 = *(a1 + 80);
  v1[324] = *(a1 + 64);
  v1[325] = v13;
  v14 = *(a1 + 112);
  v1[326] = *(a1 + 96);
  v1[327] = v14;
  v15 = *(a1 + 16);
  v1[320] = *a1;
  v1[321] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[322] = result;
  v1[323] = v17;
  return result;
}

uint64_t sub_2144542C0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[349];
  v18[12] = v1[348];
  v18[13] = v2;
  v19[0] = v1[350];
  v3 = v1[345];
  v18[8] = v1[344];
  v18[9] = v3;
  v4 = v1[347];
  v18[10] = v1[346];
  v18[11] = v4;
  v5 = v1[341];
  v18[4] = v1[340];
  v18[5] = v5;
  v6 = v1[343];
  v18[6] = v1[342];
  v18[7] = v6;
  v7 = v1[337];
  v18[0] = v1[336];
  v18[1] = v7;
  v8 = v1[339];
  v18[2] = v1[338];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5610);
  v9 = v1[349];
  a1[12] = v1[348];
  a1[13] = v9;
  a1[14] = v1[350];
  *(a1 + 234) = *(v1 + 5610);
  v10 = v1[345];
  a1[8] = v1[344];
  a1[9] = v10;
  v11 = v1[347];
  a1[10] = v1[346];
  a1[11] = v11;
  v12 = v1[341];
  a1[4] = v1[340];
  a1[5] = v12;
  v13 = v1[343];
  a1[6] = v1[342];
  a1[7] = v13;
  v14 = v1[337];
  *a1 = v1[336];
  a1[1] = v14;
  v15 = v1[339];
  a1[2] = v1[338];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144543C4(uint64_t a1)
{
  v3 = v1[349];
  v18[12] = v1[348];
  v18[13] = v3;
  v19[0] = v1[350];
  v4 = v1[345];
  v18[8] = v1[344];
  v18[9] = v4;
  v5 = v1[347];
  v18[10] = v1[346];
  v18[11] = v5;
  v6 = v1[341];
  v18[4] = v1[340];
  v18[5] = v6;
  v7 = v1[343];
  v18[6] = v1[342];
  v18[7] = v7;
  v8 = v1[337];
  v18[0] = v1[336];
  v18[1] = v8;
  v9 = v1[339];
  v18[2] = v1[338];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5610);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[348] = *(a1 + 192);
  v1[349] = v10;
  v1[350] = *(a1 + 224);
  *(v1 + 5610) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[344] = *(a1 + 128);
  v1[345] = v11;
  v12 = *(a1 + 176);
  v1[346] = *(a1 + 160);
  v1[347] = v12;
  v13 = *(a1 + 80);
  v1[340] = *(a1 + 64);
  v1[341] = v13;
  v14 = *(a1 + 112);
  v1[342] = *(a1 + 96);
  v1[343] = v14;
  v15 = *(a1 + 16);
  v1[336] = *a1;
  v1[337] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[338] = result;
  v1[339] = v17;
  return result;
}

uint64_t sub_2144544F0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[365];
  v18[12] = v1[364];
  v18[13] = v2;
  v19[0] = v1[366];
  v3 = v1[361];
  v18[8] = v1[360];
  v18[9] = v3;
  v4 = v1[363];
  v18[10] = v1[362];
  v18[11] = v4;
  v5 = v1[357];
  v18[4] = v1[356];
  v18[5] = v5;
  v6 = v1[359];
  v18[6] = v1[358];
  v18[7] = v6;
  v7 = v1[353];
  v18[0] = v1[352];
  v18[1] = v7;
  v8 = v1[355];
  v18[2] = v1[354];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 5866);
  v9 = v1[365];
  a1[12] = v1[364];
  a1[13] = v9;
  a1[14] = v1[366];
  *(a1 + 234) = *(v1 + 5866);
  v10 = v1[361];
  a1[8] = v1[360];
  a1[9] = v10;
  v11 = v1[363];
  a1[10] = v1[362];
  a1[11] = v11;
  v12 = v1[357];
  a1[4] = v1[356];
  a1[5] = v12;
  v13 = v1[359];
  a1[6] = v1[358];
  a1[7] = v13;
  v14 = v1[353];
  *a1 = v1[352];
  a1[1] = v14;
  v15 = v1[355];
  a1[2] = v1[354];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144545F4(uint64_t a1)
{
  v3 = v1[365];
  v18[12] = v1[364];
  v18[13] = v3;
  v19[0] = v1[366];
  v4 = v1[361];
  v18[8] = v1[360];
  v18[9] = v4;
  v5 = v1[363];
  v18[10] = v1[362];
  v18[11] = v5;
  v6 = v1[357];
  v18[4] = v1[356];
  v18[5] = v6;
  v7 = v1[359];
  v18[6] = v1[358];
  v18[7] = v7;
  v8 = v1[353];
  v18[0] = v1[352];
  v18[1] = v8;
  v9 = v1[355];
  v18[2] = v1[354];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 5866);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[364] = *(a1 + 192);
  v1[365] = v10;
  v1[366] = *(a1 + 224);
  *(v1 + 5866) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[360] = *(a1 + 128);
  v1[361] = v11;
  v12 = *(a1 + 176);
  v1[362] = *(a1 + 160);
  v1[363] = v12;
  v13 = *(a1 + 80);
  v1[356] = *(a1 + 64);
  v1[357] = v13;
  v14 = *(a1 + 112);
  v1[358] = *(a1 + 96);
  v1[359] = v14;
  v15 = *(a1 + 16);
  v1[352] = *a1;
  v1[353] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[354] = result;
  v1[355] = v17;
  return result;
}

uint64_t sub_214454720@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[381];
  v18[12] = v1[380];
  v18[13] = v2;
  v19[0] = v1[382];
  v3 = v1[377];
  v18[8] = v1[376];
  v18[9] = v3;
  v4 = v1[379];
  v18[10] = v1[378];
  v18[11] = v4;
  v5 = v1[373];
  v18[4] = v1[372];
  v18[5] = v5;
  v6 = v1[375];
  v18[6] = v1[374];
  v18[7] = v6;
  v7 = v1[369];
  v18[0] = v1[368];
  v18[1] = v7;
  v8 = v1[371];
  v18[2] = v1[370];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6122);
  v9 = v1[381];
  a1[12] = v1[380];
  a1[13] = v9;
  a1[14] = v1[382];
  *(a1 + 234) = *(v1 + 6122);
  v10 = v1[377];
  a1[8] = v1[376];
  a1[9] = v10;
  v11 = v1[379];
  a1[10] = v1[378];
  a1[11] = v11;
  v12 = v1[373];
  a1[4] = v1[372];
  a1[5] = v12;
  v13 = v1[375];
  a1[6] = v1[374];
  a1[7] = v13;
  v14 = v1[369];
  *a1 = v1[368];
  a1[1] = v14;
  v15 = v1[371];
  a1[2] = v1[370];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454824(uint64_t a1)
{
  v3 = v1[381];
  v18[12] = v1[380];
  v18[13] = v3;
  v19[0] = v1[382];
  v4 = v1[377];
  v18[8] = v1[376];
  v18[9] = v4;
  v5 = v1[379];
  v18[10] = v1[378];
  v18[11] = v5;
  v6 = v1[373];
  v18[4] = v1[372];
  v18[5] = v6;
  v7 = v1[375];
  v18[6] = v1[374];
  v18[7] = v7;
  v8 = v1[369];
  v18[0] = v1[368];
  v18[1] = v8;
  v9 = v1[371];
  v18[2] = v1[370];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6122);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[380] = *(a1 + 192);
  v1[381] = v10;
  v1[382] = *(a1 + 224);
  *(v1 + 6122) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[376] = *(a1 + 128);
  v1[377] = v11;
  v12 = *(a1 + 176);
  v1[378] = *(a1 + 160);
  v1[379] = v12;
  v13 = *(a1 + 80);
  v1[372] = *(a1 + 64);
  v1[373] = v13;
  v14 = *(a1 + 112);
  v1[374] = *(a1 + 96);
  v1[375] = v14;
  v15 = *(a1 + 16);
  v1[368] = *a1;
  v1[369] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[370] = result;
  v1[371] = v17;
  return result;
}

uint64_t sub_214454950@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[397];
  v18[12] = v1[396];
  v18[13] = v2;
  v19[0] = v1[398];
  v3 = v1[393];
  v18[8] = v1[392];
  v18[9] = v3;
  v4 = v1[395];
  v18[10] = v1[394];
  v18[11] = v4;
  v5 = v1[389];
  v18[4] = v1[388];
  v18[5] = v5;
  v6 = v1[391];
  v18[6] = v1[390];
  v18[7] = v6;
  v7 = v1[385];
  v18[0] = v1[384];
  v18[1] = v7;
  v8 = v1[387];
  v18[2] = v1[386];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6378);
  v9 = v1[397];
  a1[12] = v1[396];
  a1[13] = v9;
  a1[14] = v1[398];
  *(a1 + 234) = *(v1 + 6378);
  v10 = v1[393];
  a1[8] = v1[392];
  a1[9] = v10;
  v11 = v1[395];
  a1[10] = v1[394];
  a1[11] = v11;
  v12 = v1[389];
  a1[4] = v1[388];
  a1[5] = v12;
  v13 = v1[391];
  a1[6] = v1[390];
  a1[7] = v13;
  v14 = v1[385];
  *a1 = v1[384];
  a1[1] = v14;
  v15 = v1[387];
  a1[2] = v1[386];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454A54(uint64_t a1)
{
  v3 = v1[397];
  v18[12] = v1[396];
  v18[13] = v3;
  v19[0] = v1[398];
  v4 = v1[393];
  v18[8] = v1[392];
  v18[9] = v4;
  v5 = v1[395];
  v18[10] = v1[394];
  v18[11] = v5;
  v6 = v1[389];
  v18[4] = v1[388];
  v18[5] = v6;
  v7 = v1[391];
  v18[6] = v1[390];
  v18[7] = v7;
  v8 = v1[385];
  v18[0] = v1[384];
  v18[1] = v8;
  v9 = v1[387];
  v18[2] = v1[386];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6378);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[396] = *(a1 + 192);
  v1[397] = v10;
  v1[398] = *(a1 + 224);
  *(v1 + 6378) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[392] = *(a1 + 128);
  v1[393] = v11;
  v12 = *(a1 + 176);
  v1[394] = *(a1 + 160);
  v1[395] = v12;
  v13 = *(a1 + 80);
  v1[388] = *(a1 + 64);
  v1[389] = v13;
  v14 = *(a1 + 112);
  v1[390] = *(a1 + 96);
  v1[391] = v14;
  v15 = *(a1 + 16);
  v1[384] = *a1;
  v1[385] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[386] = result;
  v1[387] = v17;
  return result;
}

uint64_t sub_214454B80@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[413];
  v18[12] = v1[412];
  v18[13] = v2;
  v19[0] = v1[414];
  v3 = v1[409];
  v18[8] = v1[408];
  v18[9] = v3;
  v4 = v1[411];
  v18[10] = v1[410];
  v18[11] = v4;
  v5 = v1[405];
  v18[4] = v1[404];
  v18[5] = v5;
  v6 = v1[407];
  v18[6] = v1[406];
  v18[7] = v6;
  v7 = v1[401];
  v18[0] = v1[400];
  v18[1] = v7;
  v8 = v1[403];
  v18[2] = v1[402];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6634);
  v9 = v1[413];
  a1[12] = v1[412];
  a1[13] = v9;
  a1[14] = v1[414];
  *(a1 + 234) = *(v1 + 6634);
  v10 = v1[409];
  a1[8] = v1[408];
  a1[9] = v10;
  v11 = v1[411];
  a1[10] = v1[410];
  a1[11] = v11;
  v12 = v1[405];
  a1[4] = v1[404];
  a1[5] = v12;
  v13 = v1[407];
  a1[6] = v1[406];
  a1[7] = v13;
  v14 = v1[401];
  *a1 = v1[400];
  a1[1] = v14;
  v15 = v1[403];
  a1[2] = v1[402];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454C84(uint64_t a1)
{
  v3 = v1[413];
  v18[12] = v1[412];
  v18[13] = v3;
  v19[0] = v1[414];
  v4 = v1[409];
  v18[8] = v1[408];
  v18[9] = v4;
  v5 = v1[411];
  v18[10] = v1[410];
  v18[11] = v5;
  v6 = v1[405];
  v18[4] = v1[404];
  v18[5] = v6;
  v7 = v1[407];
  v18[6] = v1[406];
  v18[7] = v7;
  v8 = v1[401];
  v18[0] = v1[400];
  v18[1] = v8;
  v9 = v1[403];
  v18[2] = v1[402];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6634);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[412] = *(a1 + 192);
  v1[413] = v10;
  v1[414] = *(a1 + 224);
  *(v1 + 6634) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[408] = *(a1 + 128);
  v1[409] = v11;
  v12 = *(a1 + 176);
  v1[410] = *(a1 + 160);
  v1[411] = v12;
  v13 = *(a1 + 80);
  v1[404] = *(a1 + 64);
  v1[405] = v13;
  v14 = *(a1 + 112);
  v1[406] = *(a1 + 96);
  v1[407] = v14;
  v15 = *(a1 + 16);
  v1[400] = *a1;
  v1[401] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[402] = result;
  v1[403] = v17;
  return result;
}

uint64_t sub_214454DB0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[429];
  v18[12] = v1[428];
  v18[13] = v2;
  v19[0] = v1[430];
  v3 = v1[425];
  v18[8] = v1[424];
  v18[9] = v3;
  v4 = v1[427];
  v18[10] = v1[426];
  v18[11] = v4;
  v5 = v1[421];
  v18[4] = v1[420];
  v18[5] = v5;
  v6 = v1[423];
  v18[6] = v1[422];
  v18[7] = v6;
  v7 = v1[417];
  v18[0] = v1[416];
  v18[1] = v7;
  v8 = v1[419];
  v18[2] = v1[418];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 6890);
  v9 = v1[429];
  a1[12] = v1[428];
  a1[13] = v9;
  a1[14] = v1[430];
  *(a1 + 234) = *(v1 + 6890);
  v10 = v1[425];
  a1[8] = v1[424];
  a1[9] = v10;
  v11 = v1[427];
  a1[10] = v1[426];
  a1[11] = v11;
  v12 = v1[421];
  a1[4] = v1[420];
  a1[5] = v12;
  v13 = v1[423];
  a1[6] = v1[422];
  a1[7] = v13;
  v14 = v1[417];
  *a1 = v1[416];
  a1[1] = v14;
  v15 = v1[419];
  a1[2] = v1[418];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214454EB4(uint64_t a1)
{
  v3 = v1[429];
  v18[12] = v1[428];
  v18[13] = v3;
  v19[0] = v1[430];
  v4 = v1[425];
  v18[8] = v1[424];
  v18[9] = v4;
  v5 = v1[427];
  v18[10] = v1[426];
  v18[11] = v5;
  v6 = v1[421];
  v18[4] = v1[420];
  v18[5] = v6;
  v7 = v1[423];
  v18[6] = v1[422];
  v18[7] = v7;
  v8 = v1[417];
  v18[0] = v1[416];
  v18[1] = v8;
  v9 = v1[419];
  v18[2] = v1[418];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 6890);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[428] = *(a1 + 192);
  v1[429] = v10;
  v1[430] = *(a1 + 224);
  *(v1 + 6890) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[424] = *(a1 + 128);
  v1[425] = v11;
  v12 = *(a1 + 176);
  v1[426] = *(a1 + 160);
  v1[427] = v12;
  v13 = *(a1 + 80);
  v1[420] = *(a1 + 64);
  v1[421] = v13;
  v14 = *(a1 + 112);
  v1[422] = *(a1 + 96);
  v1[423] = v14;
  v15 = *(a1 + 16);
  v1[416] = *a1;
  v1[417] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[418] = result;
  v1[419] = v17;
  return result;
}

uint64_t sub_214454FE0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[445];
  v18[12] = v1[444];
  v18[13] = v2;
  v19[0] = v1[446];
  v3 = v1[441];
  v18[8] = v1[440];
  v18[9] = v3;
  v4 = v1[443];
  v18[10] = v1[442];
  v18[11] = v4;
  v5 = v1[437];
  v18[4] = v1[436];
  v18[5] = v5;
  v6 = v1[439];
  v18[6] = v1[438];
  v18[7] = v6;
  v7 = v1[433];
  v18[0] = v1[432];
  v18[1] = v7;
  v8 = v1[435];
  v18[2] = v1[434];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7146);
  v9 = v1[445];
  a1[12] = v1[444];
  a1[13] = v9;
  a1[14] = v1[446];
  *(a1 + 234) = *(v1 + 7146);
  v10 = v1[441];
  a1[8] = v1[440];
  a1[9] = v10;
  v11 = v1[443];
  a1[10] = v1[442];
  a1[11] = v11;
  v12 = v1[437];
  a1[4] = v1[436];
  a1[5] = v12;
  v13 = v1[439];
  a1[6] = v1[438];
  a1[7] = v13;
  v14 = v1[433];
  *a1 = v1[432];
  a1[1] = v14;
  v15 = v1[435];
  a1[2] = v1[434];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144550E4(uint64_t a1)
{
  v3 = v1[445];
  v18[12] = v1[444];
  v18[13] = v3;
  v19[0] = v1[446];
  v4 = v1[441];
  v18[8] = v1[440];
  v18[9] = v4;
  v5 = v1[443];
  v18[10] = v1[442];
  v18[11] = v5;
  v6 = v1[437];
  v18[4] = v1[436];
  v18[5] = v6;
  v7 = v1[439];
  v18[6] = v1[438];
  v18[7] = v7;
  v8 = v1[433];
  v18[0] = v1[432];
  v18[1] = v8;
  v9 = v1[435];
  v18[2] = v1[434];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7146);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[444] = *(a1 + 192);
  v1[445] = v10;
  v1[446] = *(a1 + 224);
  *(v1 + 7146) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[440] = *(a1 + 128);
  v1[441] = v11;
  v12 = *(a1 + 176);
  v1[442] = *(a1 + 160);
  v1[443] = v12;
  v13 = *(a1 + 80);
  v1[436] = *(a1 + 64);
  v1[437] = v13;
  v14 = *(a1 + 112);
  v1[438] = *(a1 + 96);
  v1[439] = v14;
  v15 = *(a1 + 16);
  v1[432] = *a1;
  v1[433] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[434] = result;
  v1[435] = v17;
  return result;
}

uint64_t sub_214455210@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[461];
  v18[12] = v1[460];
  v18[13] = v2;
  v19[0] = v1[462];
  v3 = v1[457];
  v18[8] = v1[456];
  v18[9] = v3;
  v4 = v1[459];
  v18[10] = v1[458];
  v18[11] = v4;
  v5 = v1[453];
  v18[4] = v1[452];
  v18[5] = v5;
  v6 = v1[455];
  v18[6] = v1[454];
  v18[7] = v6;
  v7 = v1[449];
  v18[0] = v1[448];
  v18[1] = v7;
  v8 = v1[451];
  v18[2] = v1[450];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7402);
  v9 = v1[461];
  a1[12] = v1[460];
  a1[13] = v9;
  a1[14] = v1[462];
  *(a1 + 234) = *(v1 + 7402);
  v10 = v1[457];
  a1[8] = v1[456];
  a1[9] = v10;
  v11 = v1[459];
  a1[10] = v1[458];
  a1[11] = v11;
  v12 = v1[453];
  a1[4] = v1[452];
  a1[5] = v12;
  v13 = v1[455];
  a1[6] = v1[454];
  a1[7] = v13;
  v14 = v1[449];
  *a1 = v1[448];
  a1[1] = v14;
  v15 = v1[451];
  a1[2] = v1[450];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455314(uint64_t a1)
{
  v3 = v1[461];
  v18[12] = v1[460];
  v18[13] = v3;
  v19[0] = v1[462];
  v4 = v1[457];
  v18[8] = v1[456];
  v18[9] = v4;
  v5 = v1[459];
  v18[10] = v1[458];
  v18[11] = v5;
  v6 = v1[453];
  v18[4] = v1[452];
  v18[5] = v6;
  v7 = v1[455];
  v18[6] = v1[454];
  v18[7] = v7;
  v8 = v1[449];
  v18[0] = v1[448];
  v18[1] = v8;
  v9 = v1[451];
  v18[2] = v1[450];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7402);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[460] = *(a1 + 192);
  v1[461] = v10;
  v1[462] = *(a1 + 224);
  *(v1 + 7402) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[456] = *(a1 + 128);
  v1[457] = v11;
  v12 = *(a1 + 176);
  v1[458] = *(a1 + 160);
  v1[459] = v12;
  v13 = *(a1 + 80);
  v1[452] = *(a1 + 64);
  v1[453] = v13;
  v14 = *(a1 + 112);
  v1[454] = *(a1 + 96);
  v1[455] = v14;
  v15 = *(a1 + 16);
  v1[448] = *a1;
  v1[449] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[450] = result;
  v1[451] = v17;
  return result;
}

uint64_t sub_214455440@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[477];
  v18[12] = v1[476];
  v18[13] = v2;
  v19[0] = v1[478];
  v3 = v1[473];
  v18[8] = v1[472];
  v18[9] = v3;
  v4 = v1[475];
  v18[10] = v1[474];
  v18[11] = v4;
  v5 = v1[469];
  v18[4] = v1[468];
  v18[5] = v5;
  v6 = v1[471];
  v18[6] = v1[470];
  v18[7] = v6;
  v7 = v1[465];
  v18[0] = v1[464];
  v18[1] = v7;
  v8 = v1[467];
  v18[2] = v1[466];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7658);
  v9 = v1[477];
  a1[12] = v1[476];
  a1[13] = v9;
  a1[14] = v1[478];
  *(a1 + 234) = *(v1 + 7658);
  v10 = v1[473];
  a1[8] = v1[472];
  a1[9] = v10;
  v11 = v1[475];
  a1[10] = v1[474];
  a1[11] = v11;
  v12 = v1[469];
  a1[4] = v1[468];
  a1[5] = v12;
  v13 = v1[471];
  a1[6] = v1[470];
  a1[7] = v13;
  v14 = v1[465];
  *a1 = v1[464];
  a1[1] = v14;
  v15 = v1[467];
  a1[2] = v1[466];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455544(uint64_t a1)
{
  v3 = v1[477];
  v18[12] = v1[476];
  v18[13] = v3;
  v19[0] = v1[478];
  v4 = v1[473];
  v18[8] = v1[472];
  v18[9] = v4;
  v5 = v1[475];
  v18[10] = v1[474];
  v18[11] = v5;
  v6 = v1[469];
  v18[4] = v1[468];
  v18[5] = v6;
  v7 = v1[471];
  v18[6] = v1[470];
  v18[7] = v7;
  v8 = v1[465];
  v18[0] = v1[464];
  v18[1] = v8;
  v9 = v1[467];
  v18[2] = v1[466];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7658);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[476] = *(a1 + 192);
  v1[477] = v10;
  v1[478] = *(a1 + 224);
  *(v1 + 7658) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[472] = *(a1 + 128);
  v1[473] = v11;
  v12 = *(a1 + 176);
  v1[474] = *(a1 + 160);
  v1[475] = v12;
  v13 = *(a1 + 80);
  v1[468] = *(a1 + 64);
  v1[469] = v13;
  v14 = *(a1 + 112);
  v1[470] = *(a1 + 96);
  v1[471] = v14;
  v15 = *(a1 + 16);
  v1[464] = *a1;
  v1[465] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[466] = result;
  v1[467] = v17;
  return result;
}

uint64_t sub_214455670@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[493];
  v18[12] = v1[492];
  v18[13] = v2;
  v19[0] = v1[494];
  v3 = v1[489];
  v18[8] = v1[488];
  v18[9] = v3;
  v4 = v1[491];
  v18[10] = v1[490];
  v18[11] = v4;
  v5 = v1[485];
  v18[4] = v1[484];
  v18[5] = v5;
  v6 = v1[487];
  v18[6] = v1[486];
  v18[7] = v6;
  v7 = v1[481];
  v18[0] = v1[480];
  v18[1] = v7;
  v8 = v1[483];
  v18[2] = v1[482];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 7914);
  v9 = v1[493];
  a1[12] = v1[492];
  a1[13] = v9;
  a1[14] = v1[494];
  *(a1 + 234) = *(v1 + 7914);
  v10 = v1[489];
  a1[8] = v1[488];
  a1[9] = v10;
  v11 = v1[491];
  a1[10] = v1[490];
  a1[11] = v11;
  v12 = v1[485];
  a1[4] = v1[484];
  a1[5] = v12;
  v13 = v1[487];
  a1[6] = v1[486];
  a1[7] = v13;
  v14 = v1[481];
  *a1 = v1[480];
  a1[1] = v14;
  v15 = v1[483];
  a1[2] = v1[482];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455774(uint64_t a1)
{
  v3 = v1[493];
  v18[12] = v1[492];
  v18[13] = v3;
  v19[0] = v1[494];
  v4 = v1[489];
  v18[8] = v1[488];
  v18[9] = v4;
  v5 = v1[491];
  v18[10] = v1[490];
  v18[11] = v5;
  v6 = v1[485];
  v18[4] = v1[484];
  v18[5] = v6;
  v7 = v1[487];
  v18[6] = v1[486];
  v18[7] = v7;
  v8 = v1[481];
  v18[0] = v1[480];
  v18[1] = v8;
  v9 = v1[483];
  v18[2] = v1[482];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 7914);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[492] = *(a1 + 192);
  v1[493] = v10;
  v1[494] = *(a1 + 224);
  *(v1 + 7914) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[488] = *(a1 + 128);
  v1[489] = v11;
  v12 = *(a1 + 176);
  v1[490] = *(a1 + 160);
  v1[491] = v12;
  v13 = *(a1 + 80);
  v1[484] = *(a1 + 64);
  v1[485] = v13;
  v14 = *(a1 + 112);
  v1[486] = *(a1 + 96);
  v1[487] = v14;
  v15 = *(a1 + 16);
  v1[480] = *a1;
  v1[481] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[482] = result;
  v1[483] = v17;
  return result;
}

uint64_t sub_2144558A0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[509];
  v18[12] = v1[508];
  v18[13] = v2;
  v19[0] = v1[510];
  v3 = v1[505];
  v18[8] = v1[504];
  v18[9] = v3;
  v4 = v1[507];
  v18[10] = v1[506];
  v18[11] = v4;
  v5 = v1[501];
  v18[4] = v1[500];
  v18[5] = v5;
  v6 = v1[503];
  v18[6] = v1[502];
  v18[7] = v6;
  v7 = v1[497];
  v18[0] = v1[496];
  v18[1] = v7;
  v8 = v1[499];
  v18[2] = v1[498];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8170);
  v9 = v1[509];
  a1[12] = v1[508];
  a1[13] = v9;
  a1[14] = v1[510];
  *(a1 + 234) = *(v1 + 8170);
  v10 = v1[505];
  a1[8] = v1[504];
  a1[9] = v10;
  v11 = v1[507];
  a1[10] = v1[506];
  a1[11] = v11;
  v12 = v1[501];
  a1[4] = v1[500];
  a1[5] = v12;
  v13 = v1[503];
  a1[6] = v1[502];
  a1[7] = v13;
  v14 = v1[497];
  *a1 = v1[496];
  a1[1] = v14;
  v15 = v1[499];
  a1[2] = v1[498];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144559A4(uint64_t a1)
{
  v3 = v1[509];
  v18[12] = v1[508];
  v18[13] = v3;
  v19[0] = v1[510];
  v4 = v1[505];
  v18[8] = v1[504];
  v18[9] = v4;
  v5 = v1[507];
  v18[10] = v1[506];
  v18[11] = v5;
  v6 = v1[501];
  v18[4] = v1[500];
  v18[5] = v6;
  v7 = v1[503];
  v18[6] = v1[502];
  v18[7] = v7;
  v8 = v1[497];
  v18[0] = v1[496];
  v18[1] = v8;
  v9 = v1[499];
  v18[2] = v1[498];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8170);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[508] = *(a1 + 192);
  v1[509] = v10;
  v1[510] = *(a1 + 224);
  *(v1 + 8170) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[504] = *(a1 + 128);
  v1[505] = v11;
  v12 = *(a1 + 176);
  v1[506] = *(a1 + 160);
  v1[507] = v12;
  v13 = *(a1 + 80);
  v1[500] = *(a1 + 64);
  v1[501] = v13;
  v14 = *(a1 + 112);
  v1[502] = *(a1 + 96);
  v1[503] = v14;
  v15 = *(a1 + 16);
  v1[496] = *a1;
  v1[497] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[498] = result;
  v1[499] = v17;
  return result;
}

uint64_t sub_214455AD0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[525];
  v18[12] = v1[524];
  v18[13] = v2;
  v19[0] = v1[526];
  v3 = v1[521];
  v18[8] = v1[520];
  v18[9] = v3;
  v4 = v1[523];
  v18[10] = v1[522];
  v18[11] = v4;
  v5 = v1[517];
  v18[4] = v1[516];
  v18[5] = v5;
  v6 = v1[519];
  v18[6] = v1[518];
  v18[7] = v6;
  v7 = v1[513];
  v18[0] = v1[512];
  v18[1] = v7;
  v8 = v1[515];
  v18[2] = v1[514];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8426);
  v9 = v1[525];
  a1[12] = v1[524];
  a1[13] = v9;
  a1[14] = v1[526];
  *(a1 + 234) = *(v1 + 8426);
  v10 = v1[521];
  a1[8] = v1[520];
  a1[9] = v10;
  v11 = v1[523];
  a1[10] = v1[522];
  a1[11] = v11;
  v12 = v1[517];
  a1[4] = v1[516];
  a1[5] = v12;
  v13 = v1[519];
  a1[6] = v1[518];
  a1[7] = v13;
  v14 = v1[513];
  *a1 = v1[512];
  a1[1] = v14;
  v15 = v1[515];
  a1[2] = v1[514];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455BD0(uint64_t a1)
{
  v3 = v1[525];
  v18[12] = v1[524];
  v18[13] = v3;
  v19[0] = v1[526];
  v4 = v1[521];
  v18[8] = v1[520];
  v18[9] = v4;
  v5 = v1[523];
  v18[10] = v1[522];
  v18[11] = v5;
  v6 = v1[517];
  v18[4] = v1[516];
  v18[5] = v6;
  v7 = v1[519];
  v18[6] = v1[518];
  v18[7] = v7;
  v8 = v1[513];
  v18[0] = v1[512];
  v18[1] = v8;
  v9 = v1[515];
  v18[2] = v1[514];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8426);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[524] = *(a1 + 192);
  v1[525] = v10;
  v1[526] = *(a1 + 224);
  *(v1 + 8426) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[520] = *(a1 + 128);
  v1[521] = v11;
  v12 = *(a1 + 176);
  v1[522] = *(a1 + 160);
  v1[523] = v12;
  v13 = *(a1 + 80);
  v1[516] = *(a1 + 64);
  v1[517] = v13;
  v14 = *(a1 + 112);
  v1[518] = *(a1 + 96);
  v1[519] = v14;
  v15 = *(a1 + 16);
  v1[512] = *a1;
  v1[513] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[514] = result;
  v1[515] = v17;
  return result;
}

uint64_t sub_214455CF4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[541];
  v18[12] = v1[540];
  v18[13] = v2;
  v19[0] = v1[542];
  v3 = v1[537];
  v18[8] = v1[536];
  v18[9] = v3;
  v4 = v1[539];
  v18[10] = v1[538];
  v18[11] = v4;
  v5 = v1[533];
  v18[4] = v1[532];
  v18[5] = v5;
  v6 = v1[535];
  v18[6] = v1[534];
  v18[7] = v6;
  v7 = v1[529];
  v18[0] = v1[528];
  v18[1] = v7;
  v8 = v1[531];
  v18[2] = v1[530];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8682);
  v9 = v1[541];
  a1[12] = v1[540];
  a1[13] = v9;
  a1[14] = v1[542];
  *(a1 + 234) = *(v1 + 8682);
  v10 = v1[537];
  a1[8] = v1[536];
  a1[9] = v10;
  v11 = v1[539];
  a1[10] = v1[538];
  a1[11] = v11;
  v12 = v1[533];
  a1[4] = v1[532];
  a1[5] = v12;
  v13 = v1[535];
  a1[6] = v1[534];
  a1[7] = v13;
  v14 = v1[529];
  *a1 = v1[528];
  a1[1] = v14;
  v15 = v1[531];
  a1[2] = v1[530];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214455DF8(uint64_t a1)
{
  v3 = v1[541];
  v18[12] = v1[540];
  v18[13] = v3;
  v19[0] = v1[542];
  v4 = v1[537];
  v18[8] = v1[536];
  v18[9] = v4;
  v5 = v1[539];
  v18[10] = v1[538];
  v18[11] = v5;
  v6 = v1[533];
  v18[4] = v1[532];
  v18[5] = v6;
  v7 = v1[535];
  v18[6] = v1[534];
  v18[7] = v7;
  v8 = v1[529];
  v18[0] = v1[528];
  v18[1] = v8;
  v9 = v1[531];
  v18[2] = v1[530];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8682);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[540] = *(a1 + 192);
  v1[541] = v10;
  v1[542] = *(a1 + 224);
  *(v1 + 8682) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[536] = *(a1 + 128);
  v1[537] = v11;
  v12 = *(a1 + 176);
  v1[538] = *(a1 + 160);
  v1[539] = v12;
  v13 = *(a1 + 80);
  v1[532] = *(a1 + 64);
  v1[533] = v13;
  v14 = *(a1 + 112);
  v1[534] = *(a1 + 96);
  v1[535] = v14;
  v15 = *(a1 + 16);
  v1[528] = *a1;
  v1[529] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[530] = result;
  v1[531] = v17;
  return result;
}

uint64_t sub_214455F24@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[557];
  v18[12] = v1[556];
  v18[13] = v2;
  v19[0] = v1[558];
  v3 = v1[553];
  v18[8] = v1[552];
  v18[9] = v3;
  v4 = v1[555];
  v18[10] = v1[554];
  v18[11] = v4;
  v5 = v1[549];
  v18[4] = v1[548];
  v18[5] = v5;
  v6 = v1[551];
  v18[6] = v1[550];
  v18[7] = v6;
  v7 = v1[545];
  v18[0] = v1[544];
  v18[1] = v7;
  v8 = v1[547];
  v18[2] = v1[546];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 8938);
  v9 = v1[557];
  a1[12] = v1[556];
  a1[13] = v9;
  a1[14] = v1[558];
  *(a1 + 234) = *(v1 + 8938);
  v10 = v1[553];
  a1[8] = v1[552];
  a1[9] = v10;
  v11 = v1[555];
  a1[10] = v1[554];
  a1[11] = v11;
  v12 = v1[549];
  a1[4] = v1[548];
  a1[5] = v12;
  v13 = v1[551];
  a1[6] = v1[550];
  a1[7] = v13;
  v14 = v1[545];
  *a1 = v1[544];
  a1[1] = v14;
  v15 = v1[547];
  a1[2] = v1[546];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456028(uint64_t a1)
{
  v3 = v1[557];
  v18[12] = v1[556];
  v18[13] = v3;
  v19[0] = v1[558];
  v4 = v1[553];
  v18[8] = v1[552];
  v18[9] = v4;
  v5 = v1[555];
  v18[10] = v1[554];
  v18[11] = v5;
  v6 = v1[549];
  v18[4] = v1[548];
  v18[5] = v6;
  v7 = v1[551];
  v18[6] = v1[550];
  v18[7] = v7;
  v8 = v1[545];
  v18[0] = v1[544];
  v18[1] = v8;
  v9 = v1[547];
  v18[2] = v1[546];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 8938);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[556] = *(a1 + 192);
  v1[557] = v10;
  v1[558] = *(a1 + 224);
  *(v1 + 8938) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[552] = *(a1 + 128);
  v1[553] = v11;
  v12 = *(a1 + 176);
  v1[554] = *(a1 + 160);
  v1[555] = v12;
  v13 = *(a1 + 80);
  v1[548] = *(a1 + 64);
  v1[549] = v13;
  v14 = *(a1 + 112);
  v1[550] = *(a1 + 96);
  v1[551] = v14;
  v15 = *(a1 + 16);
  v1[544] = *a1;
  v1[545] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[546] = result;
  v1[547] = v17;
  return result;
}

uint64_t sub_214456154@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[573];
  v18[12] = v1[572];
  v18[13] = v2;
  v19[0] = v1[574];
  v3 = v1[569];
  v18[8] = v1[568];
  v18[9] = v3;
  v4 = v1[571];
  v18[10] = v1[570];
  v18[11] = v4;
  v5 = v1[565];
  v18[4] = v1[564];
  v18[5] = v5;
  v6 = v1[567];
  v18[6] = v1[566];
  v18[7] = v6;
  v7 = v1[561];
  v18[0] = v1[560];
  v18[1] = v7;
  v8 = v1[563];
  v18[2] = v1[562];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9194);
  v9 = v1[573];
  a1[12] = v1[572];
  a1[13] = v9;
  a1[14] = v1[574];
  *(a1 + 234) = *(v1 + 9194);
  v10 = v1[569];
  a1[8] = v1[568];
  a1[9] = v10;
  v11 = v1[571];
  a1[10] = v1[570];
  a1[11] = v11;
  v12 = v1[565];
  a1[4] = v1[564];
  a1[5] = v12;
  v13 = v1[567];
  a1[6] = v1[566];
  a1[7] = v13;
  v14 = v1[561];
  *a1 = v1[560];
  a1[1] = v14;
  v15 = v1[563];
  a1[2] = v1[562];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456258(uint64_t a1)
{
  v3 = v1[573];
  v18[12] = v1[572];
  v18[13] = v3;
  v19[0] = v1[574];
  v4 = v1[569];
  v18[8] = v1[568];
  v18[9] = v4;
  v5 = v1[571];
  v18[10] = v1[570];
  v18[11] = v5;
  v6 = v1[565];
  v18[4] = v1[564];
  v18[5] = v6;
  v7 = v1[567];
  v18[6] = v1[566];
  v18[7] = v7;
  v8 = v1[561];
  v18[0] = v1[560];
  v18[1] = v8;
  v9 = v1[563];
  v18[2] = v1[562];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9194);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[572] = *(a1 + 192);
  v1[573] = v10;
  v1[574] = *(a1 + 224);
  *(v1 + 9194) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[568] = *(a1 + 128);
  v1[569] = v11;
  v12 = *(a1 + 176);
  v1[570] = *(a1 + 160);
  v1[571] = v12;
  v13 = *(a1 + 80);
  v1[564] = *(a1 + 64);
  v1[565] = v13;
  v14 = *(a1 + 112);
  v1[566] = *(a1 + 96);
  v1[567] = v14;
  v15 = *(a1 + 16);
  v1[560] = *a1;
  v1[561] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[562] = result;
  v1[563] = v17;
  return result;
}

uint64_t sub_214456384@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[589];
  v18[12] = v1[588];
  v18[13] = v2;
  v19[0] = v1[590];
  v3 = v1[585];
  v18[8] = v1[584];
  v18[9] = v3;
  v4 = v1[587];
  v18[10] = v1[586];
  v18[11] = v4;
  v5 = v1[581];
  v18[4] = v1[580];
  v18[5] = v5;
  v6 = v1[583];
  v18[6] = v1[582];
  v18[7] = v6;
  v7 = v1[577];
  v18[0] = v1[576];
  v18[1] = v7;
  v8 = v1[579];
  v18[2] = v1[578];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9450);
  v9 = v1[589];
  a1[12] = v1[588];
  a1[13] = v9;
  a1[14] = v1[590];
  *(a1 + 234) = *(v1 + 9450);
  v10 = v1[585];
  a1[8] = v1[584];
  a1[9] = v10;
  v11 = v1[587];
  a1[10] = v1[586];
  a1[11] = v11;
  v12 = v1[581];
  a1[4] = v1[580];
  a1[5] = v12;
  v13 = v1[583];
  a1[6] = v1[582];
  a1[7] = v13;
  v14 = v1[577];
  *a1 = v1[576];
  a1[1] = v14;
  v15 = v1[579];
  a1[2] = v1[578];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456488(uint64_t a1)
{
  v3 = v1[589];
  v18[12] = v1[588];
  v18[13] = v3;
  v19[0] = v1[590];
  v4 = v1[585];
  v18[8] = v1[584];
  v18[9] = v4;
  v5 = v1[587];
  v18[10] = v1[586];
  v18[11] = v5;
  v6 = v1[581];
  v18[4] = v1[580];
  v18[5] = v6;
  v7 = v1[583];
  v18[6] = v1[582];
  v18[7] = v7;
  v8 = v1[577];
  v18[0] = v1[576];
  v18[1] = v8;
  v9 = v1[579];
  v18[2] = v1[578];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9450);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[588] = *(a1 + 192);
  v1[589] = v10;
  v1[590] = *(a1 + 224);
  *(v1 + 9450) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[584] = *(a1 + 128);
  v1[585] = v11;
  v12 = *(a1 + 176);
  v1[586] = *(a1 + 160);
  v1[587] = v12;
  v13 = *(a1 + 80);
  v1[580] = *(a1 + 64);
  v1[581] = v13;
  v14 = *(a1 + 112);
  v1[582] = *(a1 + 96);
  v1[583] = v14;
  v15 = *(a1 + 16);
  v1[576] = *a1;
  v1[577] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[578] = result;
  v1[579] = v17;
  return result;
}

uint64_t sub_2144565B4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[605];
  v18[12] = v1[604];
  v18[13] = v2;
  v19[0] = v1[606];
  v3 = v1[601];
  v18[8] = v1[600];
  v18[9] = v3;
  v4 = v1[603];
  v18[10] = v1[602];
  v18[11] = v4;
  v5 = v1[597];
  v18[4] = v1[596];
  v18[5] = v5;
  v6 = v1[599];
  v18[6] = v1[598];
  v18[7] = v6;
  v7 = v1[593];
  v18[0] = v1[592];
  v18[1] = v7;
  v8 = v1[595];
  v18[2] = v1[594];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9706);
  v9 = v1[605];
  a1[12] = v1[604];
  a1[13] = v9;
  a1[14] = v1[606];
  *(a1 + 234) = *(v1 + 9706);
  v10 = v1[601];
  a1[8] = v1[600];
  a1[9] = v10;
  v11 = v1[603];
  a1[10] = v1[602];
  a1[11] = v11;
  v12 = v1[597];
  a1[4] = v1[596];
  a1[5] = v12;
  v13 = v1[599];
  a1[6] = v1[598];
  a1[7] = v13;
  v14 = v1[593];
  *a1 = v1[592];
  a1[1] = v14;
  v15 = v1[595];
  a1[2] = v1[594];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144566B8(uint64_t a1)
{
  v3 = v1[605];
  v18[12] = v1[604];
  v18[13] = v3;
  v19[0] = v1[606];
  v4 = v1[601];
  v18[8] = v1[600];
  v18[9] = v4;
  v5 = v1[603];
  v18[10] = v1[602];
  v18[11] = v5;
  v6 = v1[597];
  v18[4] = v1[596];
  v18[5] = v6;
  v7 = v1[599];
  v18[6] = v1[598];
  v18[7] = v7;
  v8 = v1[593];
  v18[0] = v1[592];
  v18[1] = v8;
  v9 = v1[595];
  v18[2] = v1[594];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9706);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[604] = *(a1 + 192);
  v1[605] = v10;
  v1[606] = *(a1 + 224);
  *(v1 + 9706) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[600] = *(a1 + 128);
  v1[601] = v11;
  v12 = *(a1 + 176);
  v1[602] = *(a1 + 160);
  v1[603] = v12;
  v13 = *(a1 + 80);
  v1[596] = *(a1 + 64);
  v1[597] = v13;
  v14 = *(a1 + 112);
  v1[598] = *(a1 + 96);
  v1[599] = v14;
  v15 = *(a1 + 16);
  v1[592] = *a1;
  v1[593] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[594] = result;
  v1[595] = v17;
  return result;
}

uint64_t sub_2144567E4@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[621];
  v18[12] = v1[620];
  v18[13] = v2;
  v19[0] = v1[622];
  v3 = v1[617];
  v18[8] = v1[616];
  v18[9] = v3;
  v4 = v1[619];
  v18[10] = v1[618];
  v18[11] = v4;
  v5 = v1[613];
  v18[4] = v1[612];
  v18[5] = v5;
  v6 = v1[615];
  v18[6] = v1[614];
  v18[7] = v6;
  v7 = v1[609];
  v18[0] = v1[608];
  v18[1] = v7;
  v8 = v1[611];
  v18[2] = v1[610];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 9962);
  v9 = v1[621];
  a1[12] = v1[620];
  a1[13] = v9;
  a1[14] = v1[622];
  *(a1 + 234) = *(v1 + 9962);
  v10 = v1[617];
  a1[8] = v1[616];
  a1[9] = v10;
  v11 = v1[619];
  a1[10] = v1[618];
  a1[11] = v11;
  v12 = v1[613];
  a1[4] = v1[612];
  a1[5] = v12;
  v13 = v1[615];
  a1[6] = v1[614];
  a1[7] = v13;
  v14 = v1[609];
  *a1 = v1[608];
  a1[1] = v14;
  v15 = v1[611];
  a1[2] = v1[610];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_2144568E8(uint64_t a1)
{
  v3 = v1[621];
  v18[12] = v1[620];
  v18[13] = v3;
  v19[0] = v1[622];
  v4 = v1[617];
  v18[8] = v1[616];
  v18[9] = v4;
  v5 = v1[619];
  v18[10] = v1[618];
  v18[11] = v5;
  v6 = v1[613];
  v18[4] = v1[612];
  v18[5] = v6;
  v7 = v1[615];
  v18[6] = v1[614];
  v18[7] = v7;
  v8 = v1[609];
  v18[0] = v1[608];
  v18[1] = v8;
  v9 = v1[611];
  v18[2] = v1[610];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 9962);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[620] = *(a1 + 192);
  v1[621] = v10;
  v1[622] = *(a1 + 224);
  *(v1 + 9962) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[616] = *(a1 + 128);
  v1[617] = v11;
  v12 = *(a1 + 176);
  v1[618] = *(a1 + 160);
  v1[619] = v12;
  v13 = *(a1 + 80);
  v1[612] = *(a1 + 64);
  v1[613] = v13;
  v14 = *(a1 + 112);
  v1[614] = *(a1 + 96);
  v1[615] = v14;
  v15 = *(a1 + 16);
  v1[608] = *a1;
  v1[609] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[610] = result;
  v1[611] = v17;
  return result;
}

uint64_t sub_214456A14@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[637];
  v18[12] = v1[636];
  v18[13] = v2;
  v19[0] = v1[638];
  v3 = v1[633];
  v18[8] = v1[632];
  v18[9] = v3;
  v4 = v1[635];
  v18[10] = v1[634];
  v18[11] = v4;
  v5 = v1[629];
  v18[4] = v1[628];
  v18[5] = v5;
  v6 = v1[631];
  v18[6] = v1[630];
  v18[7] = v6;
  v7 = v1[625];
  v18[0] = v1[624];
  v18[1] = v7;
  v8 = v1[627];
  v18[2] = v1[626];
  v18[3] = v8;
  *(v19 + 10) = *(v1 + 10218);
  v9 = v1[637];
  a1[12] = v1[636];
  a1[13] = v9;
  a1[14] = v1[638];
  *(a1 + 234) = *(v1 + 10218);
  v10 = v1[633];
  a1[8] = v1[632];
  a1[9] = v10;
  v11 = v1[635];
  a1[10] = v1[634];
  a1[11] = v11;
  v12 = v1[629];
  a1[4] = v1[628];
  a1[5] = v12;
  v13 = v1[631];
  a1[6] = v1[630];
  a1[7] = v13;
  v14 = v1[625];
  *a1 = v1[624];
  a1[1] = v14;
  v15 = v1[627];
  a1[2] = v1[626];
  a1[3] = v15;
  return sub_2142FCC0C(v18, &v17);
}

__n128 sub_214456B18(uint64_t a1)
{
  v3 = v1[637];
  v18[12] = v1[636];
  v18[13] = v3;
  v19[0] = v1[638];
  v4 = v1[633];
  v18[8] = v1[632];
  v18[9] = v4;
  v5 = v1[635];
  v18[10] = v1[634];
  v18[11] = v5;
  v6 = v1[629];
  v18[4] = v1[628];
  v18[5] = v6;
  v7 = v1[631];
  v18[6] = v1[630];
  v18[7] = v7;
  v8 = v1[625];
  v18[0] = v1[624];
  v18[1] = v8;
  v9 = v1[627];
  v18[2] = v1[626];
  v18[3] = v9;
  *(v19 + 10) = *(v1 + 10218);
  sub_2142FCBB8(v18);
  v10 = *(a1 + 208);
  v1[636] = *(a1 + 192);
  v1[637] = v10;
  v1[638] = *(a1 + 224);
  *(v1 + 10218) = *(a1 + 234);
  v11 = *(a1 + 144);
  v1[632] = *(a1 + 128);
  v1[633] = v11;
  v12 = *(a1 + 176);
  v1[634] = *(a1 + 160);
  v1[635] = v12;
  v13 = *(a1 + 80);
  v1[628] = *(a1 + 64);
  v1[629] = v13;
  v14 = *(a1 + 112);
  v1[630] = *(a1 + 96);
  v1[631] = v14;
  v15 = *(a1 + 16);
  v1[624] = *a1;
  v1[625] = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  v1[626] = result;
  v1[627] = v17;
  return result;
}

void AvatarRecord.identifier.setter(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*AvatarRecord.identifier.modify(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*AvatarRecord.$identifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

uint64_t AvatarRecord.descriptor.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
  return result;
}