unint64_t sub_23FFCE960(char a1)
{
  result = 0x6C646E7542707061;
  switch(a1)
  {
    case 1:
      result = 0x496D657449707061;
      break;
    case 2:
      result = 0x6973726556707061;
      break;
    case 3:
      result = 0x656D614E707061;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
    case 6:
    case 14:
      result = 0x7562697274736964;
      break;
    case 7:
      result = 0x65706F6C65766564;
      break;
    case 8:
      result = 0x65706F6C65766564;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x7070416265577369;
      break;
    case 11:
      result = 0x6972747369447369;
      break;
    case 12:
      result = 0x6D614E72656B7361;
      break;
    case 13:
      result = 0x6E69746152656761;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x49746E756F636361;
      break;
    case 19:
      result = 7107189;
      break;
    case 20:
      result = 0x6B6F54687475416FLL;
      break;
    case 21:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0x4449746E65696C63;
      break;
    case 23:
      result = 0xD000000000000019;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0xD000000000000012;
      break;
    case 26:
      result = 0xD00000000000001CLL;
      break;
    case 27:
      result = 0xD00000000000001DLL;
      break;
    case 28:
      result = 0x7265727265666572;
      break;
    case 29:
      result = 0x6572616853707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23FFCECD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFD0F30(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFCED04(uint64_t a1)
{
  v2 = sub_23FFD09C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFCED40(uint64_t a1)
{
  v2 = sub_23FFD09C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExceptionRequestMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B78, &qword_23FFEA160);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD09C8();
  sub_23FFD9ACC();
  LOBYTE(v13) = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_23FFD993C();
    LOBYTE(v13) = 2;
    sub_23FFD993C();
    LOBYTE(v13) = 3;
    sub_23FFD98EC();
    v9 = type metadata accessor for ExceptionRequestMetadata(0);
    LOBYTE(v13) = 4;
    sub_23FFD8F6C();
    sub_23FFD0A1C(&qword_27E3A2438, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_23FFD98CC();
    LOBYTE(v13) = 5;
    sub_23FFD98EC();
    LOBYTE(v13) = 6;
    sub_23FFD98EC();
    LOBYTE(v13) = 7;
    sub_23FFD98EC();
    LOBYTE(v13) = 8;
    sub_23FFD98EC();
    LOBYTE(v13) = 9;
    sub_23FFD98CC();
    LOBYTE(v13) = 10;
    sub_23FFD98FC();
    LOBYTE(v13) = 11;
    sub_23FFD98FC();
    LOBYTE(v13) = 12;
    sub_23FFD98EC();
    LOBYTE(v13) = 13;
    sub_23FFD98EC();
    LOBYTE(v13) = 14;
    sub_23FFD98EC();
    LOBYTE(v13) = 15;
    sub_23FFD989C();
    LOBYTE(v13) = 16;
    sub_23FFD989C();
    LOBYTE(v13) = 17;
    sub_23FFD98EC();
    LOBYTE(v13) = 18;
    sub_23FFD98EC();
    LOBYTE(v13) = 19;
    sub_23FFD991C();
    LOBYTE(v13) = 20;
    sub_23FFD989C();
    LOBYTE(v13) = 21;
    sub_23FFD989C();
    LOBYTE(v13) = 22;
    sub_23FFD989C();
    v10 = (v3 + *(v9 + 108));
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 23;
    sub_23FFA7094(v13, v11);
    sub_23FF70D64();
    sub_23FFD98CC();
    sub_23FF6EC6C(v13, v14);
    LOBYTE(v13) = 24;
    sub_23FFD98AC();
    LOBYTE(v13) = 25;
    sub_23FFD98FC();
    LOBYTE(v13) = 26;
    sub_23FFD98DC();
    LOBYTE(v13) = 27;
    sub_23FFD98DC();
    LOBYTE(v13) = 28;
    sub_23FFD98CC();
    LOBYTE(v13) = 29;
    sub_23FFD98CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ExceptionRequestMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_23FFD8F6C();
  v118 = *(v3 - 8);
  v119 = v3;
  MEMORY[0x28223BE20](v3);
  v114 = &v109[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v116 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v115 = &v109[-v9];
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v109[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v109[-v13];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4B88, &qword_23FFEA168);
  v120 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v16 = &v109[-v15];
  v17 = type metadata accessor for ExceptionRequestMetadata(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v109[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD09C8();
  v121 = v16;
  v20 = v123;
  sub_23FFD9AAC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v14;
  v22 = v120;
  v123 = a1;
  v112 = v17;
  v113 = v19;
  LOBYTE(v124) = 0;
  v23 = sub_23FFD980C();
  v25 = v113;
  *v113 = v23;
  v25[1] = v26;
  LOBYTE(v124) = 1;
  v25[2] = sub_23FFD985C();
  LOBYTE(v124) = 2;
  v25[3] = sub_23FFD985C();
  LOBYTE(v124) = 3;
  v25[4] = sub_23FFD980C();
  v25[5] = v33;
  LOBYTE(v124) = 4;
  sub_23FFD0A1C(&qword_27E3A2458, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_23FFD97EC();
  v34 = v112;
  sub_23FF6832C(v21, v25 + v112[8]);
  LOBYTE(v124) = 5;
  v35 = sub_23FFD980C();
  v36 = (v25 + v34[9]);
  *v36 = v35;
  v36[1] = v37;
  LOBYTE(v124) = 6;
  v38 = sub_23FFD980C();
  v39 = (v25 + v34[10]);
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v124) = 7;
  v41 = sub_23FFD980C();
  v42 = (v25 + v112[11]);
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v124) = 8;
  v44 = sub_23FFD980C();
  v111 = 0;
  v46 = (v113 + v112[12]);
  *v46 = v44;
  v46[1] = v45;
  LOBYTE(v124) = 9;
  v47 = v111;
  sub_23FFD97EC();
  v111 = v47;
  if (v47)
  {
    (*(v22 + 8))(v121, v122);
    v48 = 0;
    memset(v110, 0, sizeof(v110));
    v125 = 0;
    LODWORD(v114) = 0;
    LODWORD(v115) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v120) = 0;
    LODWORD(v121) = 0;
    LODWORD(v122) = 0;
    v49 = 0;
  }

  else
  {
    sub_23FF6832C(v12, v113 + v112[13]);
    LOBYTE(v124) = 10;
    v50 = v111;
    v51 = sub_23FFD981C();
    v111 = v50;
    if (v50 || (*(v113 + v112[14]) = v51 & 1, LOBYTE(v124) = 11, v52 = v111, v53 = sub_23FFD981C(), (v111 = v52) != 0) || (*(v113 + v112[15]) = v53 & 1, LOBYTE(v124) = 12, v54 = v111, v55 = sub_23FFD980C(), (v111 = v54) != 0))
    {
      (*(v22 + 8))(v121, v122);
      memset(v110, 0, sizeof(v110));
      v125 = 0;
      LODWORD(v114) = 0;
      LODWORD(v115) = 0;
      LODWORD(v116) = 0;
      LODWORD(v117) = 0;
      LODWORD(v120) = 0;
      LODWORD(v121) = 0;
      LODWORD(v122) = 0;
      v49 = 0;
      v48 = 1;
    }

    else
    {
      v57 = (v113 + v112[16]);
      *v57 = v55;
      v57[1] = v56;
      LOBYTE(v124) = 13;
      v58 = v111;
      v59 = sub_23FFD980C();
      v111 = v58;
      if (v58)
      {
        (*(v22 + 8))(v121, v122);
        *&v110[4] = 0;
        v125 = 0;
        LODWORD(v114) = 0;
        LODWORD(v115) = 0;
        LODWORD(v116) = 0;
        LODWORD(v117) = 0;
        LODWORD(v120) = 0;
        LODWORD(v121) = 0;
        LODWORD(v122) = 0;
        v49 = 0;
        v48 = 1;
        *v110 = 1;
      }

      else
      {
        v61 = (v113 + v112[17]);
        *v61 = v59;
        v61[1] = v60;
        LOBYTE(v124) = 14;
        v62 = v111;
        v63 = sub_23FFD980C();
        v111 = v62;
        if (v62)
        {
          (*(v22 + 8))(v121, v122);
          v125 = 0;
          LODWORD(v114) = 0;
          LODWORD(v115) = 0;
          LODWORD(v116) = 0;
          LODWORD(v117) = 0;
          LODWORD(v120) = 0;
          LODWORD(v121) = 0;
          LODWORD(v122) = 0;
          v49 = 0;
          v48 = 1;
          *v110 = 1;
          *&v110[4] = 1;
        }

        else
        {
          v65 = (v113 + v112[18]);
          *v65 = v63;
          v65[1] = v64;
          LOBYTE(v124) = 15;
          v66 = v111;
          v67 = sub_23FFD97BC();
          v111 = v66;
          if (v66)
          {
            (*(v22 + 8))(v121, v122);
            v125 = 0;
            LODWORD(v114) = 0;
            LODWORD(v115) = 0;
            LODWORD(v116) = 0;
            LODWORD(v117) = 0;
            LODWORD(v120) = 0;
            LODWORD(v121) = 0;
            LODWORD(v122) = 0;
            v49 = 0;
            v48 = 1;
            *v110 = 0x100000001;
            *&v110[8] = 1;
          }

          else
          {
            v69 = (v113 + v112[19]);
            *v69 = v67;
            v69[1] = v68;
            LOBYTE(v124) = 16;
            v70 = v111;
            v71 = sub_23FFD97BC();
            v111 = v70;
            if (v70)
            {
              (*(v22 + 8))(v121, v122);
              LODWORD(v114) = 0;
              LODWORD(v115) = 0;
              LODWORD(v116) = 0;
              LODWORD(v117) = 0;
              LODWORD(v120) = 0;
              LODWORD(v121) = 0;
              LODWORD(v122) = 0;
              v49 = 0;
              v48 = 1;
              *v110 = 0x100000001;
              *&v110[8] = 1;
              v125 = 1;
            }

            else
            {
              v73 = (v113 + v112[20]);
              *v73 = v71;
              v73[1] = v72;
              LOBYTE(v124) = 17;
              v74 = v111;
              v75 = sub_23FFD980C();
              v111 = v74;
              if (v74)
              {
                (*(v22 + 8))(v121, v122);
                LODWORD(v115) = 0;
                LODWORD(v116) = 0;
                LODWORD(v117) = 0;
                LODWORD(v120) = 0;
                LODWORD(v121) = 0;
                LODWORD(v122) = 0;
                v49 = 0;
                v48 = 1;
                *v110 = 0x100000001;
                *&v110[8] = 1;
                v125 = 1;
                LODWORD(v114) = 1;
              }

              else
              {
                v77 = (v113 + v112[21]);
                *v77 = v75;
                v77[1] = v76;
                LOBYTE(v124) = 18;
                v78 = v111;
                v79 = sub_23FFD980C();
                v111 = v78;
                if (v78)
                {
                  (*(v22 + 8))(v121, v122);
                  LODWORD(v116) = 0;
                  LODWORD(v117) = 0;
                  LODWORD(v120) = 0;
                  LODWORD(v121) = 0;
                  LODWORD(v122) = 0;
                  v49 = 0;
                  v48 = 1;
                  *v110 = 0x100000001;
                  *&v110[8] = 1;
                  v125 = 1;
                  LODWORD(v114) = 1;
                  LODWORD(v115) = 1;
                }

                else
                {
                  v81 = (v113 + v112[22]);
                  *v81 = v79;
                  v81[1] = v80;
                  LOBYTE(v124) = 19;
                  v82 = v111;
                  sub_23FFD983C();
                  v111 = v82;
                  if (v82)
                  {
                    (*(v22 + 8))(v121, v122);
                    LODWORD(v117) = 0;
                    LODWORD(v120) = 0;
                    LODWORD(v121) = 0;
                    LODWORD(v122) = 0;
                    v49 = 0;
                    v48 = 1;
                    *v110 = 0x100000001;
                    *&v110[8] = 1;
                    v125 = 1;
                    LODWORD(v114) = 1;
                    LODWORD(v115) = 1;
                    LODWORD(v116) = 1;
                  }

                  else
                  {
                    (*(v118 + 32))(v113 + v112[23], v114, v119);
                    LOBYTE(v124) = 20;
                    v83 = v111;
                    v84 = sub_23FFD97BC();
                    v111 = v83;
                    if (v83)
                    {
                      (*(v22 + 8))(v121, v122);
                      LODWORD(v120) = 0;
                      LODWORD(v121) = 0;
                      LODWORD(v122) = 0;
                      v49 = 0;
                      v48 = 1;
                      *v110 = 0x100000001;
                      *&v110[8] = 1;
                      v125 = 1;
                      LODWORD(v114) = 1;
                      LODWORD(v115) = 1;
                      LODWORD(v116) = 1;
                      LODWORD(v117) = 1;
                    }

                    else
                    {
                      v86 = (v113 + v112[24]);
                      *v86 = v84;
                      v86[1] = v85;
                      LOBYTE(v124) = 21;
                      v87 = v111;
                      v88 = sub_23FFD97BC();
                      v111 = v87;
                      if (v87)
                      {
                        (*(v22 + 8))(v121, v122);
                        LODWORD(v121) = 0;
                        LODWORD(v122) = 0;
                        v49 = 0;
                        v48 = 1;
                        *v110 = 0x100000001;
                        *&v110[8] = 1;
                        v125 = 1;
                        LODWORD(v114) = 1;
                        LODWORD(v115) = 1;
                        LODWORD(v116) = 1;
                        LODWORD(v117) = 1;
                        LODWORD(v120) = 1;
                      }

                      else
                      {
                        v90 = (v113 + v112[25]);
                        *v90 = v88;
                        v90[1] = v89;
                        LOBYTE(v124) = 22;
                        v91 = v111;
                        v92 = sub_23FFD97BC();
                        v111 = v91;
                        if (v91)
                        {
                          (*(v22 + 8))(v121, v122);
                          LODWORD(v122) = 0;
                          v49 = 0;
                          v48 = 1;
                          *v110 = 0x100000001;
                          *&v110[8] = 1;
                          v125 = 1;
                          LODWORD(v114) = 1;
                          LODWORD(v115) = 1;
                          LODWORD(v116) = 1;
                          LODWORD(v117) = 1;
                          LODWORD(v120) = 1;
                          LODWORD(v121) = 1;
                        }

                        else
                        {
                          v94 = (v113 + v112[26]);
                          *v94 = v92;
                          v94[1] = v93;
                          v126 = 23;
                          sub_23FF71690();
                          v95 = v111;
                          sub_23FFD97EC();
                          v111 = v95;
                          if (v95)
                          {
                            (*(v22 + 8))(v121, v122);
                            v49 = 0;
                            v48 = 1;
                            *v110 = 0x100000001;
                            *&v110[8] = 1;
                            v125 = 1;
                            LODWORD(v114) = 1;
                            LODWORD(v115) = 1;
                            LODWORD(v116) = 1;
                            LODWORD(v117) = 1;
                            LODWORD(v120) = 1;
                            LODWORD(v121) = 1;
                            LODWORD(v122) = 1;
                          }

                          else
                          {
                            *(v113 + v112[27]) = v124;
                            LOBYTE(v124) = 24;
                            v96 = v111;
                            v97 = sub_23FFD97CC();
                            v111 = v96;
                            if (!v96)
                            {
                              *(v113 + v112[28]) = v97;
                              LOBYTE(v124) = 25;
                              v98 = v111;
                              v99 = sub_23FFD981C();
                              v111 = v98;
                              if (!v98)
                              {
                                *(v113 + v112[29]) = v99 & 1;
                                LOBYTE(v124) = 26;
                                v100 = v111;
                                v101 = sub_23FFD97FC();
                                if (!v100)
                                {
                                  v103 = v113 + v112[30];
                                  *v103 = v101;
                                  v103[8] = v102 & 1;
                                  LOBYTE(v124) = 27;
                                  v104 = sub_23FFD97FC();
                                  v105 = v113 + v112[31];
                                  *v105 = v104;
                                  v105[8] = v106 & 1;
                                  LOBYTE(v124) = 28;
                                  sub_23FFD97EC();
                                  sub_23FF6832C(v115, v113 + v112[32]);
                                  LOBYTE(v124) = 29;
                                  sub_23FFD97EC();
                                  (*(v22 + 8))(v121, v122);
                                  v108 = v113;
                                  sub_23FF6832C(v116, v113 + v112[33]);
                                  sub_23FFD0A64(v108, v117);
                                  __swift_destroy_boxed_opaque_existential_1(v123);
                                  return sub_23FFD0AC8(v108);
                                }

                                (*(v22 + 8))(v121, v122);
                                __swift_destroy_boxed_opaque_existential_1(v123);
                                v27 = v113;

                                v107 = v112;
                                sub_23FF64248(v27 + v112[8], &qword_27E3A2418, &qword_23FFDADC0);

                                v30 = v107;
                                sub_23FF64248(v27 + v107[13], &qword_27E3A2418, &qword_23FFDADC0);

                                v31 = 1;
                                v29 = 1;
                                v32 = 1;
                                LOBYTE(v28) = 1;
                                goto LABEL_13;
                              }
                            }

                            (*(v22 + 8))(v121, v122);
                            v48 = 1;
                            *v110 = 0x100000001;
                            *&v110[8] = 1;
                            v125 = 1;
                            LODWORD(v114) = 1;
                            LODWORD(v115) = 1;
                            LODWORD(v116) = 1;
                            LODWORD(v117) = 1;
                            LODWORD(v120) = 1;
                            LODWORD(v121) = 1;
                            LODWORD(v122) = 1;
                            v49 = 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v123);
  v27 = v113;

  v30 = v112;
  sub_23FF64248(v27 + v112[8], &qword_27E3A2418, &qword_23FFDADC0);
  v31 = v49;

  v28 = v120;

  v32 = v121;
  if (v48)
  {
    result = sub_23FF64248(v27 + v30[13], &qword_27E3A2418, &qword_23FFDADC0);
    if (v110[0])
    {
      goto LABEL_20;
    }

LABEL_6:
    v29 = v122;
    if (!*&v110[4])
    {
      goto LABEL_21;
    }

LABEL_7:

    if (v110[8])
    {
      goto LABEL_22;
    }

LABEL_8:
    if (!v125)
    {
      goto LABEL_23;
    }

LABEL_9:

    if (v114)
    {
      goto LABEL_24;
    }

LABEL_10:
    if (!v115)
    {
      goto LABEL_25;
    }

LABEL_11:

    if (v116)
    {
      goto LABEL_26;
    }

    goto LABEL_12;
  }

  if (!*v110)
  {
    goto LABEL_6;
  }

LABEL_20:

  v29 = v122;
  if (v110[4])
  {
    goto LABEL_7;
  }

LABEL_21:
  if (!*&v110[8])
  {
    goto LABEL_8;
  }

LABEL_22:

  if (v125)
  {
    goto LABEL_9;
  }

LABEL_23:
  if (!v114)
  {
    goto LABEL_10;
  }

LABEL_24:

  if (v115)
  {
    goto LABEL_11;
  }

LABEL_25:
  if (!v116)
  {
LABEL_12:
    if (!v117)
    {
      goto LABEL_27;
    }

LABEL_13:
    result = (*(v118 + 8))(v27 + v30[23], v119);
    if ((v28 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_14:

    if (v32)
    {
      goto LABEL_29;
    }

LABEL_15:
    if (!v29)
    {
      goto LABEL_30;
    }

    goto LABEL_16;
  }

LABEL_26:

  if (v117)
  {
    goto LABEL_13;
  }

LABEL_27:
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_28:
  if (!v32)
  {
    goto LABEL_15;
  }

LABEL_29:

  if ((v29 & 1) == 0)
  {
LABEL_30:
    if (v31)
    {
      return sub_23FF6EC6C(*(v27 + v30[27]), *(v27 + v30[27] + 8));
    }

    return result;
  }

LABEL_16:

  if (v31)
  {
    return sub_23FF6EC6C(*(v27 + v30[27]), *(v27 + v30[27] + 8));
  }

  return result;
}

unint64_t sub_23FFD09C8()
{
  result = qword_27E3A4B80;
  if (!qword_27E3A4B80)
  {
    result = swift_getWitnessTable(byte_23FFEA37C, &type metadata for ExceptionRequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4B80);
  }

  return result;
}

uint64_t sub_23FFD0A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FFD0A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExceptionRequestMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFD0AC8(uint64_t a1)
{
  v2 = type metadata accessor for ExceptionRequestMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23FFD0B4C(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  sub_23FF59878(319);
  if (v2 <= 0x3F)
  {
    sub_23FF9D0DC(319, &qword_27E3A2478, v1);
    if (v3 <= 0x3F)
    {
      sub_23FFD8F6C();
      if (v4 <= 0x3F)
      {
        sub_23FF9D0DC(319, &qword_27E3A3B98, MEMORY[0x277CC9318]);
        if (v5 <= 0x3F)
        {
          sub_23FF9D0DC(319, &qword_27E3A4BA0, MEMORY[0x277D839B0]);
          if (v6 <= 0x3F)
          {
            sub_23FF9D0DC(319, &qword_27E3A4BA8, MEMORY[0x277D84D38]);
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

uint64_t getEnumTagSinglePayload for ExceptionRequestMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExceptionRequestMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23FFD0E2C()
{
  result = qword_27E3A4BB0;
  if (!qword_27E3A4BB0)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for ExceptionRequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4BB0);
  }

  return result;
}

unint64_t sub_23FFD0E84()
{
  result = qword_27E3A4BB8;
  if (!qword_27E3A4BB8)
  {
    result = swift_getWitnessTable(byte_23FFEA2C4, &type metadata for ExceptionRequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4BB8);
  }

  return result;
}

unint64_t sub_23FFD0EDC()
{
  result = qword_27E3A4BC0;
  if (!qword_27E3A4BC0)
  {
    result = swift_getWitnessTable(byte_23FFEA2EC, &type metadata for ExceptionRequestMetadata.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4BC0);
  }

  return result;
}

uint64_t sub_23FFD0F30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D657449707061 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6973726556707061 && a2 == 0xEC00000044496E6FLL || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC710 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF656D614E726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEB00000000444972 || (sub_23FFD996C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_23FFD996C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC730 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7070416265577369 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6972747369447369 && a2 == 0xED0000726F747562 || (sub_23FFD996C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D614E72656B7361 && a2 == 0xE900000000000065 || (sub_23FFD996C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E69746152656761 && a2 == 0xEF676E6972745367 || (sub_23FFD996C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEF65707954726F74 || (sub_23FFD996C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC750 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEC770 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEC790 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6B6F54687475416FLL && a2 == 0xEA00000000006E65 || (sub_23FFD996C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEAE60 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023FFEBA70 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEC7B0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEC7D0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000023FFEC7F0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000023FFEC810 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x7265727265666572 && a2 == 0xE800000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255)
  {

    return 29;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 29;
    }

    else
    {
      return 30;
    }
  }
}

uint64_t AppVersion.init(appleItemID:appleVersionID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t AppVersion.description.getter()
{
  v2 = sub_23FFD995C();
  MEMORY[0x245CB3B50](58, 0xE100000000000000);
  v0 = sub_23FFD995C();
  MEMORY[0x245CB3B50](v0);

  return v2;
}

uint64_t sub_23FFD1980()
{
  if (*v0)
  {
    return 0x726556656C707061;
  }

  else
  {
    return 0x657449656C707061;
  }
}

uint64_t sub_23FFD19D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726556656C707061 && a2 == 0xEE0044496E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FFD1AB8(uint64_t a1)
{
  v2 = sub_23FFD1CC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFD1AF4(uint64_t a1)
{
  v2 = sub_23FFD1CC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BC8, &qword_23FFEA3D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD1CC0();
  sub_23FFD9ACC();
  v11 = 0;
  sub_23FFD993C();
  if (!v2)
  {
    v10 = 1;
    sub_23FFD993C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_23FFD1CC0()
{
  result = qword_27E3A4BD0;
  if (!qword_27E3A4BD0)
  {
    result = swift_getWitnessTable(byte_23FFEA918, &type metadata for AppVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4BD0);
  }

  return result;
}

uint64_t AppVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BD8, &unk_23FFEA3D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD1CC0();
  sub_23FFD9AAC();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_23FFD985C();
    v13 = 1;
    v10 = sub_23FFD985C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AutomaticUpdate.alternativeDistributionPackage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutomaticUpdate(0) + 20);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AutomaticUpdate(uint64_t a1)
{
  result = qword_27E3A4BF8;
  if (!qword_27E3A4BF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AutomaticUpdate.account.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutomaticUpdate(0) + 24));

  return v1;
}

uint64_t AutomaticUpdate.installVerificationToken.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutomaticUpdate(0) + 28));

  return v1;
}

uint64_t AutomaticUpdate.appShareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AutomaticUpdate(0) + 32);

  return sub_23FFA6FE0(v3, a1);
}

uint64_t AutomaticUpdate.appShareURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AutomaticUpdate(0) + 32);

  return sub_23FF8ADF4(a1, v3);
}

uint64_t AutomaticUpdate.init(appleItemID:alternativeDistributionPackage:account:installVerificationToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for AutomaticUpdate(0);
  v14 = v13[8];
  v15 = sub_23FFD8F6C();
  v16 = *(v15 - 8);
  v21 = *(v16 + 56);
  v21(&a7[v14], 1, 1, v15);
  *a7 = a1;
  (*(v16 + 32))(&a7[v13[5]], a2, v15);
  v17 = &a7[v13[6]];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &a7[v13[7]];
  *v18 = a5;
  *(v18 + 1) = a6;
  sub_23FF64248(&a7[v14], &qword_27E3A2418, &qword_23FFDADC0);

  return (v21)(&a7[v14], 1, 1, v15);
}

unint64_t sub_23FFD2258()
{
  v1 = *v0;
  v2 = 0x657449656C707061;
  v3 = 0x746E756F636361;
  v4 = 0x6572616853707061;
  if (v1 == 3)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
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

uint64_t sub_23FFD2308@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FFD5984(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FFD2330(uint64_t a1)
{
  v2 = sub_23FFD25EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FFD236C(uint64_t a1)
{
  v2 = sub_23FFD25EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutomaticUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BE0, &qword_23FFEA3E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD25EC();
  sub_23FFD9ACC();
  v13 = 0;
  sub_23FFD993C();
  if (!v1)
  {
    type metadata accessor for AutomaticUpdate(0);
    v12 = 1;
    sub_23FFD8F6C();
    sub_23FF82E4C(&qword_27E3A2438, MEMORY[0x277CC9268]);
    sub_23FFD991C();
    v11 = 2;
    sub_23FFD98EC();
    v10 = 3;
    sub_23FFD98EC();
    v9 = 4;
    sub_23FFD98CC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FFD25EC()
{
  result = qword_27E3A4BE8;
  if (!qword_27E3A4BE8)
  {
    result = swift_getWitnessTable(aAB_1, &type metadata for AutomaticUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4BE8);
  }

  return result;
}

uint64_t AutomaticUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2418, &qword_23FFDADC0);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = v30 - v4;
  v5 = sub_23FFD8F6C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4BF0, &qword_23FFEA3F0);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for AutomaticUpdate(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = *(v6 + 56);
  v37 = *(v13 + 32);
  v38 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15(v38 + v37, 1, 1, v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FFD25EC();
  v35 = v11;
  v16 = v36;
  sub_23FFD9AAC();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_23FF64248(v38 + v37, &qword_27E3A2418, &qword_23FFDADC0);
  }

  else
  {
    v17 = v8;
    v36 = a1;
    v43 = 0;
    v18 = v34;
    v19 = sub_23FFD985C();
    v20 = v38;
    *v38 = v19;
    v42 = 1;
    v21 = sub_23FF82E4C(&qword_27E3A2458, MEMORY[0x277CC9280]);
    sub_23FFD983C();
    v30[1] = v21;
    (*(v6 + 32))(v20 + v12[5], v17, v5);
    v41 = 2;
    v22 = sub_23FFD980C();
    v23 = (v20 + v12[6]);
    *v23 = v22;
    v23[1] = v24;
    v40 = 3;
    v25 = sub_23FFD980C();
    v26 = v36;
    v27 = (v20 + v12[7]);
    *v27 = v25;
    v27[1] = v28;
    v39 = 4;
    sub_23FFD97EC();
    (*(v33 + 8))(v35, v18);
    sub_23FF8ADF4(v32, v20 + v37);
    sub_23FFD2B50(v20, v31);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return sub_23FFD2BB4(v20);
  }
}

uint64_t sub_23FFD2B50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomaticUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFD2BB4(uint64_t a1)
{
  v2 = type metadata accessor for AutomaticUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MarketplaceAppExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject(0, a1, a2, a4);
  result = sub_23FFD5C28(v4, type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject, type metadata accessor for _MarketplaceExtensionConfiguration.ExportedObject);
  *a3 = result;
  return result;
}

uint64_t sub_23FFD2C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v28 = a2;
  v29 = a3;
  v27 = *v5;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_23FFD8DBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_23FFD949C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a1, v8);
  v16 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v27;
  *(v18 + 4) = *((v7 & v27) + 0x50);
  *(v18 + 5) = *((v7 & v19) + 0x58);
  *(v18 + 6) = v5;
  (*(v9 + 32))(&v18[v16], v11, v8);
  v20 = &v18[v17];
  v21 = v29;
  *v20 = v28;
  v20[1] = v21;
  v22 = &v18[(v17 + 23) & 0xFFFFFFFFFFFFFFF8];
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  v24 = v5;

  sub_23FF91244(0, 0, v14, &unk_23FFEA9F8, v18);
}

uint64_t sub_23FFD2F08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v18;
  v12 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v13 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v16 = (*(v12 + 16) + **(v12 + 16));
  v14 = swift_task_alloc();
  v8[4] = v14;
  *v14 = v8;
  v14[1] = sub_23FFD30A0;

  return v16(a5, a6, a7, v13, v12);
}

uint64_t sub_23FFD30A0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_23FFD31A0, 0, 0);
}

uint64_t sub_23FFD31A0()
{
  (*(v0 + 16))(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

void sub_23FFD3248(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_23FFD92FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_23FFD32E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v10 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v13 = (*(v9 + 32) + **(v9 + 32));
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_23FFD3458;

  return v13(a5, v10, v9);
}

uint64_t sub_23FFD3458(char a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_23FFD3558, 0, 0);
}

uint64_t sub_23FFD3558()
{
  (*(v0 + 16))(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FFD3614(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v9 = *((*MEMORY[0x277D85000] & *a4) + 0x58);
  v10 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v13 = (*(v9 + 40) + **(v9 + 40));
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_23FFD378C;

  return v13(a5, v10, v9);
}

uint64_t sub_23FFD378C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_23FFD388C, 0, 0);
}

uint64_t sub_23FFD388C()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B0, &qword_23FFDB128);
  sub_23FFD6D2C();
  sub_23FFD6DE0();
  v1 = sub_23FFD90EC();
  v2 = v0[3];
  v3 = v1;
  v5 = v4;

  v2(v3, v5);
  sub_23FF62F84(v3, v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_23FFD3A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v8[9] = *MEMORY[0x277D85000] & *a6;
  v8[10] = type metadata accessor for MarketplaceKitError(0);
  v8[11] = swift_task_alloc();
  v8[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E38, &qword_23FFEA980);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FFD3B24, 0, 0);
}

uint64_t sub_23FFD3B24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E40, &unk_23FFEA988);
  sub_23FFD6ACC(&qword_27E3A4E48, sub_23FFD6A78, MEMORY[0x277D83978]);
  sub_23FFD6ACC(&qword_27E3A4E58, sub_23FFD6B44, MEMORY[0x277D83948]);
  sub_23FFD90DC();
  v1 = v0[9];
  v2 = v0[2];
  v0[15] = v2;
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_23FFD3D68;

  return v7(v2, v4, v3);
}

uint64_t sub_23FFD3D68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_23FFD4048;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_23FFD3EAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23FFD3EAC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  *v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_23FFD6BE8(v1, v2);
  v3 = *(v0 + 136);
  sub_23FFD6B98(&qword_27E3A4E68, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD6B98(&qword_27E3A4E70, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v4 = sub_23FFD90EC();
  if (v3)
  {

    return MEMORY[0x2821FEBD8](v3, "AppDistribution/MarketplaceExtension.swift", 42, 1, 128);
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = v4;
    v8 = v5;
    (*(v0 + 56))();
    sub_23FF62F84(v7, v8);
    sub_23FF64248(v6, &qword_27E3A4E38, &qword_23FFEA980);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_23FFD4048()
{
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24E8, &unk_23FFDB010);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  if (v3)
  {
    v6 = *(v0 + 88);

    sub_23FF51974(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  sub_23FFD6B98(&qword_27E3A4E68, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD6B98(&qword_27E3A4E70, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v7 = sub_23FFD90EC();
  v8 = *(v0 + 112);
  v9 = v7;
  v11 = v10;
  (*(v0 + 56))();
  sub_23FF62F84(v9, v11);
  sub_23FF64248(v8, &qword_27E3A4E38, &qword_23FFEA980);

  v12 = *(v0 + 8);

  return v12();
}

id MarketplaceExtension.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject(0, a1, a2, a4);
  result = sub_23FFD5C28(v4, type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject, type metadata accessor for _MarketplaceExtensionLegacyConfiguration.ExportedObject);
  *a3 = result;
  return result;
}

uint64_t sub_23FFD4338(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 resume];
  return 1;
}

uint64_t sub_23FFD43D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  (*(*((*MEMORY[0x277D85000] & *v4) + 0x58) + 16))(a1, a2, a3, *((*MEMORY[0x277D85000] & *v4) + 0x50));
  a4();
}

uint64_t sub_23FFD44BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_23FFD8DBC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(a5);
  sub_23FFD8DAC();
  v17 = sub_23FFD935C();
  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  v21 = a1;
  a8(v15, v17, v19, a7, v20);

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_23FFD4644(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_23FFD949C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v5;
  v16 = a1;

  sub_23FF91244(0, 0, v12, a5, v14);
}

uint64_t sub_23FFD4768(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = *MEMORY[0x277D85000] & *a4;
  return MEMORY[0x2822009F8](sub_23FFD47C4, 0, 0);
}

uint64_t sub_23FFD47C4()
{
  v1 = v0[4];
  v2 = (*(*(v0[6] + 88) + 32))(v0[3], *(v0[6] + 80));
  v1(v2 & 1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_23FFD48B4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t sub_23FFD497C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_23FFD949C();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v15 = v5;

  sub_23FF91244(0, 0, v12, a5, v14);
}

uint64_t sub_23FFD4AA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[7] = *MEMORY[0x277D85000] & *a4;
  return MEMORY[0x2822009F8](sub_23FFD4B00, 0, 0);
}

uint64_t sub_23FFD4B00()
{
  v1 = (*(*(v0[7] + 88) + 24))(v0[4], *(v0[7] + 80));
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A26B0, &qword_23FFDB128);
  sub_23FFD6D2C();
  sub_23FFD6DE0();
  v3 = sub_23FFD90EC();
  v4 = v0[5];
  v5 = v3;
  v7 = v6;

  v4(v5, v7);
  sub_23FF62F84(v5, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_23FFD4CAC(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t))
{
  v10 = _Block_copy(aBlock);
  v11 = sub_23FFD93EC();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  v13 = a1;
  a7(v11, a6, v12);
}

uint64_t sub_23FFD4D84(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2920, &qword_23FFDBCE8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_23FFD949C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v6;
  v16[7] = a3;
  v16[8] = a4;
  sub_23FF71730(a1, a2);
  v17 = v6;

  sub_23FF91244(0, 0, v14, a6, v16);
}

uint64_t sub_23FFD4EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  v8[9] = *MEMORY[0x277D85000] & *a6;
  v8[10] = type metadata accessor for MarketplaceKitError(0);
  v8[11] = swift_task_alloc();
  v8[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E38, &qword_23FFEA980);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FFD4FD4, 0, 0);
}

uint64_t sub_23FFD4FD4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E40, &unk_23FFEA988);
  sub_23FFD6ACC(&qword_27E3A4E48, sub_23FFD6A78, MEMORY[0x277D83978]);
  sub_23FFD6ACC(&qword_27E3A4E58, sub_23FFD6B44, MEMORY[0x277D83948]);
  sub_23FFD90DC();
  v1 = v0[9];
  v2 = v0[2];
  v0[15] = v2;
  v4 = *(v1 + 80);
  v3 = *(v1 + 88);
  v7 = (*(v3 + 40) + **(v3 + 40));
  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_23FFD5218;

  return v7(v2, v4, v3);
}

uint64_t sub_23FFD5218(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_23FFD54F8;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_23FFD535C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23FFD535C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  *v1 = *(v0 + 144);
  swift_storeEnumTagMultiPayload();
  sub_23FFD6BE8(v1, v2);
  v3 = *(v0 + 136);
  sub_23FFD6B98(&qword_27E3A4E68, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD6B98(&qword_27E3A4E70, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v4 = sub_23FFD90EC();
  if (v3)
  {

    return MEMORY[0x2821FEBD8](v3, "AppDistribution/MarketplaceExtension.swift", 42, 1, 204);
  }

  else
  {
    v6 = *(v0 + 112);
    v7 = v4;
    v8 = v5;
    (*(v0 + 56))();
    sub_23FF62F84(v7, v8);
    sub_23FF64248(v6, &qword_27E3A4E38, &qword_23FFEA980);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_23FFD54F8()
{
  v1 = *(v0 + 136);
  *(v0 + 24) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24E8, &unk_23FFDB010);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  if (v3)
  {
    v6 = *(v0 + 88);

    sub_23FF51974(v6, v5);
    swift_storeEnumTagMultiPayload();
  }

  else
  {

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  sub_23FFD6B98(&qword_27E3A4E68, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  sub_23FFD6B98(&qword_27E3A4E70, protocol conformance descriptor for MarketplaceKitServiceResult<A>);
  v7 = sub_23FFD90EC();
  v8 = *(v0 + 112);
  v9 = v7;
  v11 = v10;
  (*(v0 + 56))();
  sub_23FF62F84(v9, v11);
  sub_23FF64248(v8, &qword_27E3A4E38, &qword_23FFEA980);

  v12 = *(v0 + 8);

  return v12();
}

void sub_23FFD5758(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = a3;
  v17 = a1;
  v13 = sub_23FFD8F9C();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  a7(v13, v15, a6, v16);

  sub_23FF62F84(v13, v15);
}

id sub_23FFD58A8(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23FFD5984(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657449656C707061 && a2 == 0xEB0000000044496DLL;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000023FFEAE80 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F636361 && a2 == 0xE700000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEAE60 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6572616853707061 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_23FFD996C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id sub_23FFD5B4C(uint64_t a1, uint64_t (*a2)(void, uint64_t, void))
{
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  (*(*(v6 - 8) + 16))(&v2[*((*MEMORY[0x277D85000] & *v2) + 0x60)], a1, v6);
  v7 = a2(0, v6, *((v5 & v4) + 0x58));
  v9.receiver = v2;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_23FFD5CB4(uint64_t a1)
{
  sub_23FFD8F6C();
  if (v1 <= 0x3F)
  {
    sub_23FF59878(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t dispatch thunk of MarketplaceAppExtension.additionalHeaders(for:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_23FFD74C0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MarketplaceAppExtension.automaticUpdates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23FFD5FC0;

  return v9(a1, a2, a3);
}

uint64_t sub_23FFD5FC0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MarketplaceAppExtension.requestFailed(response:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23FFD61E4;

  return v9(a1, a2, a3);
}

uint64_t sub_23FFD61E4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MarketplaceAppExtension.availableAppVersions(forAppleItemIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23FFD61E4;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MarketplaceExtension.automaticUpdates(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23FFD74B8;

  return v9(a1, a2, a3);
}

uint64_t sub_23FFD6584(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_witness_table_15AppDistribution011MarketplaceA9ExtensionRzlAA01_cD13ConfigurationVyxG0D10Foundation0adE0HPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), const char *a3)
{
  v4 = a2(255, *a1, a1[1]);

  return swift_getWitnessTable(a3, v4);
}

uint64_t sub_23FFD66AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23FFD66F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_23FFD6754()
{
  result = qword_27E3A4E08;
  if (!qword_27E3A4E08)
  {
    result = swift_getWitnessTable(aM_5, &type metadata for AppVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4E08);
  }

  return result;
}

unint64_t sub_23FFD67AC()
{
  result = qword_27E3A4E10;
  if (!qword_27E3A4E10)
  {
    result = swift_getWitnessTable(byte_23FFEA834, &type metadata for AutomaticUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4E10);
  }

  return result;
}

uint64_t sub_23FFD6800(uint64_t a1)
{
  result = swift_getWitnessTable(byte_23FFEA85C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23FFD6840()
{
  result = qword_27E3A4E18;
  if (!qword_27E3A4E18)
  {
    result = swift_getWitnessTable(byte_23FFEA7A4, &type metadata for AutomaticUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4E18);
  }

  return result;
}

unint64_t sub_23FFD6898()
{
  result = qword_27E3A4E20;
  if (!qword_27E3A4E20)
  {
    result = swift_getWitnessTable(asc_23FFEA7CC, &type metadata for AutomaticUpdate.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4E20);
  }

  return result;
}

unint64_t sub_23FFD68F0()
{
  result = qword_27E3A4E28;
  if (!qword_27E3A4E28)
  {
    result = swift_getWitnessTable(byte_23FFEA6EC, &type metadata for AppVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4E28);
  }

  return result;
}

unint64_t sub_23FFD6948()
{
  result = qword_27E3A4E30;
  if (!qword_27E3A4E30)
  {
    result = swift_getWitnessTable(byte_23FFEA714, &type metadata for AppVersion.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A4E30);
  }

  return result;
}

uint64_t sub_23FFD699C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23FF8C81C;

  return sub_23FFD4EB8(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_23FFD6A78()
{
  result = qword_27E3A4E50;
  if (!qword_27E3A4E50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppVersion, &type metadata for AppVersion, v0, v1);
    atomic_store(result, &qword_27E3A4E50);
  }

  return result;
}

uint64_t sub_23FFD6ACC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4E40, &unk_23FFEA988);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FFD6B44()
{
  result = qword_27E3A4E60;
  if (!qword_27E3A4E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AppVersion, &type metadata for AppVersion, v0, v1);
    atomic_store(result, &qword_27E3A4E60);
  }

  return result;
}

uint64_t sub_23FFD6B98(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A4E38, &qword_23FFEA980);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FFD6BE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A4E38, &qword_23FFEA980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FFD6C58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF8C81C;

  return sub_23FFD4AA4(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_23FFD6D2C()
{
  result = qword_27E3A4E78;
  if (!qword_27E3A4E78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A26B0, &qword_23FFDB128);
    v4[0] = sub_23FFD6ACC(&qword_27E3A4E48, sub_23FFD6A78, MEMORY[0x277D83978]);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27E3A4E78);
  }

  return result;
}

unint64_t sub_23FFD6DE0()
{
  result = qword_27E3A4E80;
  if (!qword_27E3A4E80)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A26B0, &qword_23FFDB128);
    v4[0] = sub_23FFD6ACC(&qword_27E3A4E58, sub_23FFD6B44, MEMORY[0x277D83948]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27E3A4E80);
  }

  return result;
}

uint64_t sub_23FFD6E94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF8C81C;

  return sub_23FFD4768(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();
  sub_23FF62F84(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23FFD6FDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23FF8C81C;

  return sub_23FFD3A08(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23FFD7108(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF6E6E4;

  return sub_23FFD3614(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23FFD722C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23FF8C81C;

  return sub_23FFD32E0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23FFD7300(uint64_t a1)
{
  v3 = *(sub_23FFD8DBC() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_23FF8C81C;

  return sub_23FFD2F08(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

void sub_23FFD7460(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_23FFD8F8C();
  (*(v3 + 16))(v3, v4);
}

AppDistribution::SecureButtonTag::ButtonImagePlacement_optional __swiftcall SecureButtonTag.ButtonImagePlacement.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureButtonTag.label.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label);

  return v1;
}

uint64_t SecureButtonTag.imageName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName);

  return v1;
}

id SecureButtonTag.__allocating_init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  v27 = objc_allocWithZone(v13);
  v28 = *a5;
  v29 = &v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement] = v28;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor] = a6;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor] = a7;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] = a9;
  v31 = &v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] = a12;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth] = a13;
  *&v27[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor] = a8;
  v33.receiver = v27;
  v33.super_class = v13;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.init(label:imageName:imagePlacement:backgroundColor:foregroundColor:cornerRadius:size:fontSize:borderWidth:borderColor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13)
{
  ObjectType = swift_getObjectType();
  v28 = *a5;
  v29 = &v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label];
  *v29 = a1;
  v29[1] = a2;
  v30 = &v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName];
  *v30 = a3;
  v30[1] = a4;
  if (v28 == 4)
  {
    LOBYTE(v28) = 1;
  }

  v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement] = v28;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor] = a6;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor] = a7;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] = a9;
  v31 = &v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size];
  *v31 = a10;
  v31[1] = a11;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] = a12;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth] = a13;
  *&v13[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor] = a8;
  v33.receiver = v13;
  v33.super_class = ObjectType;
  return objc_msgSendSuper2(&v33, sel_init);
}

id SecureButtonTag.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_23FFD86D0(a1);

  return v4;
}

id SecureButtonTag.init(coder:)(void *a1)
{
  v2 = sub_23FFD86D0(a1);

  return v2;
}

Swift::Void __swiftcall SecureButtonTag.encode(with:)(NSCoder with)
{
  v3 = sub_23FFD933C();
  v4 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8))
  {
    v5 = sub_23FFD933C();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement);
  v8 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor);
  v10 = type metadata accessor for SerializableColor();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = v9;
  v37.receiver = v11;
  v37.super_class = v10;
  v12 = v9;
  v13 = objc_msgSendSuper2(&v37, sel_init);
  v14 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];

  v15 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor);
  v16 = objc_allocWithZone(v10);
  *&v16[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = v15;
  v36.receiver = v16;
  v36.super_class = v10;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v36, sel_init);
  v19 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

  v20 = sub_23FFD901C();
  v21 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

  v22 = sub_23FFD901C();
  v23 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v22 forKey:v23];

  v24 = sub_23FFD901C();
  v25 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

  v26 = sub_23FFD901C();
  v27 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

  v28 = sub_23FFD901C();
  v29 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v28 forKey:v29];

  v30 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor);
  v31 = objc_allocWithZone(v10);
  *&v31[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = v30;
  v35.receiver = v31;
  v35.super_class = v10;
  v32 = v30;
  v33 = objc_msgSendSuper2(&v35, sel_init);
  v34 = sub_23FFD933C();
  [(objc_class *)with.super.isa encodeObject:v33 forKey:v34, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class];
}

uint64_t SecureButtonTag.hash.getter()
{
  sub_23FFD9A8C();
  sub_23FFD938C();
  if (*(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8))
  {
    sub_23FFD9A4C();
    sub_23FFD938C();
  }

  else
  {
    sub_23FFD9A4C();
  }

  MEMORY[0x245CB41F0](*(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement));
  type metadata accessor for CGColor(0);
  sub_23FFD8B20();
  sub_23FFD904C();
  sub_23FFD904C();
  v1 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius);
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x245CB4210](*&v1);
  v2 = v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size;
  v3 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x245CB4210](*&v3);
  v4 = *(v2 + 8);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x245CB4210](*&v4);
  v5 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x245CB4210](*&v5);
  v6 = *(v0 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x245CB4210](*&v6);
  sub_23FFD904C();
  return sub_23FFD9A6C();
}

uint64_t SecureButtonTag.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_23FFB9978(a1, v16);
  if (!v17)
  {
    sub_23FFB9790(v16);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v13 = 0;
    return v13 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label) == *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label] && *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label + 8) == *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label + 8];
  if (!v3 && (sub_23FFD996C() & 1) == 0)
  {
    goto LABEL_27;
  }

  v4 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8);
  v5 = *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName + 8];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_27;
    }

    v6 = *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName) == *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName] && v4 == v5;
    if (!v6 && (sub_23FFD996C() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v5)
  {
LABEL_27:

    goto LABEL_28;
  }

  if (*(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement) != v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement])
  {
    goto LABEL_27;
  }

  type metadata accessor for CGColor(0);
  v7 = *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor];
  sub_23FFD8B20();
  v8 = v7;
  v9 = sub_23FFD903C();

  if ((v9 & 1) == 0)
  {
    goto LABEL_27;
  }

  v10 = *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor];
  v11 = sub_23FFD903C();

  if ((v11 & 1) == 0 || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius) != *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size) != *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size + 8) != *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size + 8] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize) != *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] || *(v1 + OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth) != *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth])
  {
    goto LABEL_27;
  }

  v12 = *&v15[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor];
  v13 = sub_23FFD903C();

  return v13 & 1;
}

id SecureButtonTag.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SecureButtonTag.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_23FFD8410(void *a1)
{
  v2 = sub_23FFD940C();
  *(v2 + 16) = 4;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  UISGetColorSRGBComponents();
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = sub_23FFD901C();
  v4 = sub_23FFD933C();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v2 + 16) < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = sub_23FFD901C();
  v6 = sub_23FFD933C();
  [a1 encodeObject:v5 forKey:v6];

  if (*(v2 + 16) < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = sub_23FFD901C();
  v8 = sub_23FFD933C();
  [a1 encodeObject:v7 forKey:v8];

  if (*(v2 + 16) < 4uLL)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v9 = sub_23FFD901C();
  v10 = sub_23FFD933C();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_23FFD868C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_23FFD86D0(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  sub_23FFD8D60();
  v5 = sub_23FFD95BC();
  if (v5)
  {
    v6 = v5;
    sub_23FFD934C();
  }

  v7 = &v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_label];
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = sub_23FFD95BC();
  sub_23FFD934C();

  v9 = &v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imageName];
  *v9 = 0;
  v9[1] = 0;
  v10 = sub_23FFD933C();
  v11 = [a1 decodeIntegerForKey_];

  if (v11 >= 4)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_imagePlacement] = v12;
  type metadata accessor for SerializableColor();
  v13 = sub_23FFD95BC();
  if (!v13 || (v14 = *(v13 + OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor), v15 = v13, GenericRGB = v14, v15, !v14))
  {
    GenericRGB = CGColorCreateGenericRGB(0.0, 0.0, 0.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_backgroundColor] = GenericRGB;
  v17 = sub_23FFD95BC();
  if (!v17 || (v18 = *(v17 + OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor), v19 = v17, v20 = v18, v19, !v18))
  {
    v20 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  }

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_foregroundColor] = v20;
  v21 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v23 = v22;

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_cornerRadius] = v23;
  v24 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v26 = v25;

  v27 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v29 = v28;

  v30 = &v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_size];
  *v30 = v26;
  v30[1] = v29;
  v31 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v33 = v32;

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_fontSize] = v33;
  v34 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v36 = v35;

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderWidth] = v36;
  v37 = sub_23FFD95BC();
  if (!v37 || (v38 = *(v37 + OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor), v39 = v37, v40 = v38, v39, !v38))
  {
    v40 = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 0.0);
  }

  *&v2[OBJC_IVAR____TtC15AppDistribution15SecureButtonTag_borderColor] = v40;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  return objc_msgSendSuper2(&v42, sel_init, 0);
}

unint64_t sub_23FFD8B20()
{
  result = qword_27E3A4EE8;
  if (!qword_27E3A4EE8)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable(byte_23FFDA8F8, v3, v0, v1);
    atomic_store(result, &qword_27E3A4EE8);
  }

  return result;
}

unint64_t sub_23FFD8B7C()
{
  result = qword_27E3A4EF8;
  if (!qword_27E3A4EF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SecureButtonTag.ButtonImagePlacement, &type metadata for SecureButtonTag.ButtonImagePlacement, v0, v1);
    atomic_store(result, &qword_27E3A4EF8);
  }

  return result;
}

id sub_23FFD8C44(void *a1)
{
  v3 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v5 = v4;

  v6 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v8 = v7;

  v9 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  v12 = sub_23FFD933C();
  [a1 decodeDoubleForKey_];
  v14 = v13;

  *&v1[OBJC_IVAR____TtC15AppDistribution17SerializableColor_underlyingColor] = CGColorCreateSRGB(v5, v8, v11, v14);
  v16.receiver = v1;
  v16.super_class = type metadata accessor for SerializableColor();
  return objc_msgSendSuper2(&v16, sel_init);
}

unint64_t sub_23FFD8D60()
{
  result = qword_27E3A4FD0;
  if (!qword_27E3A4FD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3A4FD0);
  }

  return result;
}