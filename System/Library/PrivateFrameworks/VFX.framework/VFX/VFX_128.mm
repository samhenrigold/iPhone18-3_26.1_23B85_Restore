char *sub_1AFAE9D30(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    if (v5 == *(a1 + 24) >> 1 || *(*(a1 + 8) + 40 * v5) != 8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  v6 = *(a1 + 48);
  v84 = *(a1 + 32);
  v85 = v6;
  v86 = *(a1 + 64);
  v7 = *(a1 + 16);
  v83[0] = *a1;
  v83[1] = v7;
  *v81 = v84;
  *&v81[16] = v6;
  v82 = v86;
  v79 = v83[0];
  v80 = v7;
  sub_1AFAF541C(v83, &v74);
  sub_1AFAE59B0(8u);
  if (v3)
  {
    v76 = *v81;
    v77 = *&v81[16];
    v78 = v82;
    v74 = v79;
    v75 = v80;
    v8 = &v74;
    return sub_1AFAF53E8(v8);
  }

  else
  {

    v87 = a3 + 56;
    v50 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v72[2] = *v81;
      v72[3] = *&v81[16];
      v69 = *v81;
      v70 = *&v81[16];
      v72[0] = v79;
      v72[1] = v80;
      v67 = v79;
      v68 = v80;
      v76 = *v81;
      v77 = *&v81[16];
      v74 = v79;
      v75 = v80;
      v73 = v82;
      v71 = v82;
      v78 = v82;
      *v65 = *v81;
      *&v65[16] = *&v81[16];
      v66 = v82;
      v63 = v79;
      v64 = v80;
      sub_1AFAF541C(v72, &v58);
      sub_1AFAF541C(&v74, &v58);
      v10 = sub_1AFAE59B0(0xEu);
      v11 = MEMORY[0x1B27189E0](v10);
      v13 = v12;

      if (v64 == *(&v64 + 1) >> 1 || (v14 = *(&v63 + 1) + 40 * v64, *v14 != 7))
      {

        v60 = *v65;
        v61 = *&v65[16];
        v62 = v66;
        v58 = v63;
        v59 = v64;
        sub_1AFAF53E8(&v58);
        v11 = 0;
        v13 = 0;
      }

      else
      {
        v48 = *(v14 + 8);
        v16 = *(v14 + 24);
        v15 = *(v14 + 32);
        *&v64 = v64 + 1;

        *v65 = 7;
        *&v65[8] = v48;
        *&v65[24] = v16;
        v66 = v15;
        v60 = v69;
        v61 = v70;
        v62 = v71;
        v58 = v67;
        v59 = v68;
        sub_1AFAF53E8(&v58);
        v69 = *v65;
        v70 = *&v65[16];
        v71 = v66;
        v67 = v63;
        v68 = v64;
      }

      v17 = sub_1AFAE9720(&v67);
      v19 = v18;
      *v65 = *v81;
      *&v65[16] = *&v81[16];
      v66 = v82;
      v63 = v79;
      v64 = v80;
      sub_1AFAF53E8(&v63);
      v20 = v68;
      *v81 = v69;
      *&v81[16] = v70;
      v79 = v67;
      v47 = *(&v68 + 1);
      v49 = *(&v67 + 1);
      v80 = v68;
      v82 = v71;
      v46 = v67;
      if (v13)
      {
        if (!*(a3 + 16) || (sub_1AFDFF288(), sub_1AFDFD038(), v21 = sub_1AFDFF2F8(), v22 = -1 << *(a3 + 32), v23 = v21 & ~v22, ((*(v87 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0))
        {
LABEL_37:

          *&v58 = 0;
          *(&v58 + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v58 = 0x746E656D75677261;
          *(&v58 + 1) = 0xEA00000000002720;
          MEMORY[0x1B2718AE0](v11, v13);

          MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF46C30);
          v36 = sub_1AFAE5C18(v58, *(&v58 + 1));
          v38 = v37;

          sub_1AFAF5454();
          swift_allocError();
          *v39 = v36;
          v39[1] = v38;
          swift_willThrow();
          v60 = *v81;
          v61 = *&v81[16];
          v62 = v82;
          v58 = v79;
          v59 = v80;
          v8 = &v58;
          return sub_1AFAF53E8(v8);
        }

        v24 = ~v22;
        while (1)
        {
          v25 = (*(a3 + 48) + 16 * v23);
          v26 = *v25 == v11 && v13 == v25[1];
          if (v26 || (sub_1AFDFEE28() & 1) != 0)
          {
            break;
          }

          v23 = (v23 + 1) & v24;
          if (((*(v87 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        v27 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v50 : sub_1AF427218(0, *(v50 + 2) + 1, 1, v50);
        v29 = *(v27 + 2);
        v28 = *(v27 + 3);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          v27 = sub_1AF427218(v28 > 1, v29 + 1, 1, v27);
        }
      }

      else
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v27 = v50;
        }

        else
        {
          v27 = sub_1AF427218(0, *(v50 + 2) + 1, 1, v50);
        }

        v29 = *(v27 + 2);
        v31 = *(v27 + 3);
        v30 = v29 + 1;
        if (v29 >= v31 >> 1)
        {
          v27 = sub_1AF427218(v31 > 1, v29 + 1, 1, v27);
        }

        v13 = 0;
      }

      *(v27 + 2) = v30;
      v50 = v27;
      v32 = &v27[32 * v29];
      *(v32 + 4) = v11;
      *(v32 + 5) = v13;
      *(v32 + 6) = v17;
      *(v32 + 7) = v19;
      if (v20 == v47 >> 1)
      {
        break;
      }

      v33 = v49 + 40 * v20;
      if (*v33)
      {
        break;
      }

      v45 = *(v33 + 8);
      v35 = *(v33 + 24);
      v34 = *(v33 + 32);

      *&v79 = v46;
      *(&v79 + 1) = v49;
      *&v80 = v20 + 1;
      *(&v80 + 1) = v47;
      *v81 = 0;
      *&v81[8] = v45;
      *&v81[24] = v35;
      v82 = v34;
    }

    sub_1AFAE59B0(9u);

    v53 = *v81;
    v54 = *&v81[16];
    v55 = v82;
    v51 = v79;
    v52 = v80;
    v56[2] = *v81;
    v56[3] = *&v81[16];
    v57 = v82;
    v56[0] = v79;
    v56[1] = v80;
    sub_1AFAF541C(&v51, &v58);
    sub_1AFAF53E8(v56);
    v40 = *(a1 + 48);
    v60 = *(a1 + 32);
    v61 = v40;
    v62 = *(a1 + 64);
    v41 = *(a1 + 16);
    v58 = *a1;
    v59 = v41;
    sub_1AFAF53E8(&v58);
    v42 = v54;
    *(a1 + 32) = v53;
    *(a1 + 48) = v42;
    *(a1 + 64) = v55;
    v43 = v52;
    *a1 = v51;
    *(a1 + 16) = v43;
    return v50;
  }
}

void *sub_1AFAEA414@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  LODWORD(v128) = a3;
  v8 = sub_1AFDFBCE8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 48);
  v125 = *(a1 + 32);
  v126 = v12;
  v127 = *(a1 + 64);
  v13 = *(a1 + 16);
  v123 = *a1;
  v124 = v13;
  v86 = v125;
  v87 = v12;
  v88 = v127;
  v84 = v123;
  v85 = v13;
  if (a2)
  {
    if (v124 == *(&v124 + 1) >> 1 || (*(*(&v123 + 1) + 40 * v124) | 4) != 5)
    {
      sub_1AFAF541C(&v123, &v79);
    }

    else
    {
      sub_1AFAF541C(&v123, &v79);
      sub_1AFAE5E1C(v89);
      sub_1AFAF54A8(v89);
    }

    sub_1AFAE59B0(0xEu);
    if (v4)
    {
      goto LABEL_29;
    }

    sub_1AFAE59B0(2u);
  }

  else
  {
    sub_1AFAF541C(&v123, &v79);
  }

  v14 = sub_1AFAE59B0(0xEu);
  if (!v4)
  {
    v71 = a4;
    v72 = v9;
    v15 = MEMORY[0x1B27189E0](v14);
    v17 = v16;

    if (v85 == *(&v85 + 1) >> 1 || *(*(&v84 + 1) + 40 * v85) != 2)
    {
      sub_1AFB7929C(v15, v17, &v94);
      if (v95)
      {
        v70 = v95;
        HIDWORD(v67) = v99;
        v128 = v97;
        v69 = v96;
        v68 = v94;
        v100 = v98;

        v18 = *(a1 + 48);
        v115 = *(a1 + 32);
        v116 = v18;
        v117 = *(a1 + 64);
        v19 = *(a1 + 16);
        v114[0] = *a1;
        v114[1] = v19;
        v76 = v115;
        v77 = v18;
        v78 = v117;
        v74 = v114[0];
        v75 = v19;
        sub_1AFAF541C(v114, &v79);
        sub_1AFAF53E8(&v74);
        v20 = sub_1AFAE5EE4();
        v33 = v21;
        sub_1AFAF53E8(v114);
        *&v79 = v20;
        *(&v79 + 1) = v33;
        sub_1AFDFBC88();
        sub_1AF4486E4();
        v22 = sub_1AFDFDEA8();
        v24 = v23;
        v25 = v11;
        v26 = WORD2(v67);
        (*(v72 + 8))(v25, v8);

        v27 = v87;
        v81 = v86;
        v82 = v87;
        v28 = v88;
        v83 = v88;
        v30 = v84;
        v29 = v85;
        v79 = v84;
        v80 = v85;
        *(a1 + 32) = v86;
        *(a1 + 48) = v27;
        *(a1 + 64) = v28;
        *a1 = v30;
        *(a1 + 16) = v29;
        v31 = v100;
        sub_1AFAF541C(&v79, v73);
        v32 = 0;
        LOBYTE(v33) = 1;
LABEL_18:
        v81 = v86;
        v82 = v87;
        v83 = v88;
        v79 = v84;
        v80 = v85;
        result = sub_1AFAF53E8(&v79);
        v35 = v71;
        v36 = v70;
        *v71 = v68;
        v35[1] = v36;
        *(v35 + 1) = v69;
        v35[4] = v128;
        *(v35 + 40) = v31;
        *(v35 + 21) = v26;
        v35[6] = v22;
        v35[7] = v24;
        *(v35 + 64) = v32;
        *(v35 + 65) = v33;
        return result;
      }

      v37 = *(a1 + 48);
      v120 = *(a1 + 32);
      v121 = v37;
      v122 = *(a1 + 64);
      v38 = *(a1 + 16);
      v118 = *a1;
      v119 = v38;
      *&v79 = 0;
      *(&v79 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v79 = 0xD000000000000017;
      *(&v79 + 1) = 0x80000001AFF46910;
      MEMORY[0x1B2718AE0](v15, v17);

      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      v40 = *(&v79 + 1);
      v39 = v79;
    }

    else
    {
      v70 = 0x73676E69646E6942;
      if (v15 == 0x73676E69646E6962 && v17 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
      {

        v17 = 0xE800000000000000;
      }

      else
      {
        v70 = v15;
      }

      if (qword_1ED730450 != -1)
      {
        swift_once();
      }

      v41 = sub_1AF6DC144(v70, v17, 0, 1);
      if (v41)
      {
        v42 = v41;
        if (swift_conformsToProtocol2())
        {
          v43 = swift_conformsToProtocol2();
          if (v43)
          {
            v70 = v43;

            sub_1AFAE59B0(2u);

            sub_1AFAE8B28(&v84, v42, v90);
            v44 = *(a1 + 48);
            v106 = *(a1 + 32);
            v107 = v44;
            v108 = *(a1 + 64);
            v45 = *(a1 + 16);
            v104 = *a1;
            v105 = v45;
            *&v79 = sub_1AFAE5EE4();
            *(&v79 + 1) = v46;
            sub_1AFDFBC88();
            sub_1AF4486E4();
            v22 = sub_1AFDFDEA8();
            v24 = v47;
            (*(v72 + 8))(v11, v8);

            v102[2] = v86;
            v102[3] = v87;
            v103 = v88;
            v102[0] = v84;
            v102[1] = v85;
            sub_1AFAF541C(v102, &v79);
            v48 = sub_1AFAE9034(&unk_1F2500BB8);
            sub_1AF585778(&unk_1F2500BD8);
            v55 = sub_1AFAE9D30(&v84, 1, v48);

            if (!*(v55 + 2))
            {
              v32 = 0;
              LOBYTE(v33) = 1;
              goto LABEL_35;
            }

            if (v128)
            {
              v56 = sub_1AFAE56B0(v55);
              v32 = v56;
              LODWORD(v33) = (v56 >> 8) & 1;
LABEL_35:
              sub_1AFAF53E8(v102);

              v61 = *(a1 + 48);
              v76 = *(a1 + 32);
              v77 = v61;
              v78 = *(a1 + 64);
              v62 = *(a1 + 16);
              v74 = *a1;
              v75 = v62;
              sub_1AFAF53E8(&v74);
              v63 = v87;
              v81 = v86;
              v82 = v87;
              v64 = v88;
              v83 = v88;
              v66 = v84;
              v65 = v85;
              v79 = v84;
              v80 = v85;
              *(a1 + 32) = v86;
              *(a1 + 48) = v63;
              *(a1 + 64) = v64;
              *a1 = v66;
              *(a1 + 16) = v65;
              v26 = v93;
              v128 = v91;
              v31 = v92;
              v69 = v90[1];
              v70 = *(&v90[0] + 1);
              v68 = *&v90[0];
              sub_1AFAF541C(&v79, v73);
              goto LABEL_18;
            }

            v57 = sub_1AFAE5C18(0xD000000000000021, 0x80000001AFF46950);
            v59 = v58;
            sub_1AFAF5454();
            swift_allocError();
            *v60 = v57;
            v60[1] = v59;
            swift_willThrow();
            v101 = v90[0];
            sub_1AF585778(&v101);

            sub_1AFAF53E8(v102);
            goto LABEL_29;
          }
        }
      }

      v49 = *(a1 + 48);
      v111 = *(a1 + 32);
      v112 = v49;
      v113 = *(a1 + 64);
      v50 = *(a1 + 16);
      v109 = *a1;
      v110 = v50;
      *&v79 = 0;
      *(&v79 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v79 = 0xD000000000000018;
      *(&v79 + 1) = 0x80000001AFF46930;
      MEMORY[0x1B2718AE0](v70, v17);

      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      v40 = *(&v79 + 1);
      v39 = v79;
    }

    v51 = sub_1AFAE5C18(v39, v40);
    v53 = v52;

    sub_1AFAF5454();
    swift_allocError();
    *v54 = v51;
    v54[1] = v53;
    swift_willThrow();
  }

LABEL_29:
  v81 = v86;
  v82 = v87;
  v83 = v88;
  v79 = v84;
  v80 = v85;
  return sub_1AFAF53E8(&v79);
}

uint64_t sub_1AFAEAD00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646C726F77 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E656373 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646C726F777263 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 2003134838 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);

    MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF469F0);
    sub_1AFAF5454();
    swift_allocError();
    *v6 = 39;
    v6[1] = 0xE100000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_1AFAEAF38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  sub_1AFAF57F8(0, &qword_1EB630C80, sub_1AFAF54D4, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6A10]);
  v3 = sub_1AFDFE1B8();
  v4 = 0;
  v5 = v3 + 56;
  v6 = a1 + 32;
  do
  {
    v7 = *(v6 + v4);
    sub_1AFDFF288();
    sub_1AFDFF2A8();
    v8 = sub_1AFDFF2F8();
    v9 = ~(-1 << *(v3 + 32));
    v10 = v8 & v9;
    v11 = (v8 & v9) >> 6;
    v12 = *(v5 + 8 * v11);
    v13 = 1 << (v8 & v9);
    v14 = *(v3 + 48);
    if ((v13 & v12) != 0)
    {
      while (*(v14 + v10) != v7)
      {
        v10 = (v10 + 1) & v9;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
        if (((1 << v10) & v12) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_3:
      *(v5 + 8 * v11) = v13 | v12;
      *(v14 + v10) = v7;
      ++*(v3 + 16);
    }

    ++v4;
  }

  while (v4 != v1);
  return v3;
}

uint64_t sub_1AFAEB098@<X0>(__int128 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  v9 = *a1;
  v814 = a1[1];
  v8 = v814;
  v10 = a1[3];
  v815 = a1[2];
  v816 = v10;
  v817 = *(a1 + 8);
  v11 = v817;
  v813 = v9;
  *(v7 + 48) = v815;
  *(v7 + 64) = v10;
  *(v7 + 80) = v11;
  *(v7 + 16) = v9;
  *(v7 + 32) = v8;
  sub_1AFAF541C(&v813, &v587);
  v12 = sub_1AFAE59B0(0xEu);
  if (v3)
  {
  }

  v17 = v15;
  v583 = a3;
  v584 = v12;
  v18 = v13;
  v818 = v14;
  sub_1AFAF5748(0, &qword_1ED72F7C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AFE431C0;
  *(v19 + 32) = 0x6563617073;
  *(v19 + 40) = 0xE500000000000000;
  v20 = sub_1AFAE9034(v19);
  swift_setDeallocating();
  sub_1AF756E70();
  v21 = sub_1AFAE9D30(v7 + 16, 1, v20);
  v577 = v17;

  v578 = v21;
  sub_1AFAE55E4(0x6563617073, 0xE500000000000000, v21);
  if (v23)
  {
    v24 = v22;
    v25 = v23;

    v26 = sub_1AFAEAD00(v24, v25);
  }

  else
  {
    v26 = 5;
  }

  v27 = v818;
  if ((sub_1AFAE6C5C(29796, 0xE200000000000000, v584, v18, v818, v17) & 1) == 0)
  {
    if (sub_1AFAE6C5C(1701669236, 0xE400000000000000, v584, v18, v27, v17))
    {
      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v28 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v28 = MEMORY[0x1E69E7CD0];
      }

      sub_1AFAE6460(1, v28, v578, v7, v584, v18, v27, v17, &v596);
      v43 = a1[3];
      v589 = a1[2];
      v590 = v43;
      v591 = *(a1 + 8);
      v44 = a1[1];
      v587 = *a1;
      v588 = v44;
      sub_1AFAF53E8(&v587);

      v35 = v599;
      v585 = v598;
      v36 = v597;
      v37 = v596;
      goto LABEL_132;
    }

    if (sub_1AFAE6C5C(0x5F646C726F777263, 0xEF6A6F72705F6F74, v584, v18, v27, v17))
    {
      v565 = v18;
      sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
      v29 = swift_allocObject();
      v30 = sub_1AF757508(v29, 2);
      *v31 = 258;
      if (sub_1AF449D1C(v30))
      {
        v32 = sub_1AFAEAF38(v30);
      }

      else
      {
        v32 = MEMORY[0x1E69E7CD0];
      }

      v49 = v818;

      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v50 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v50 = MEMORY[0x1E69E7CD0];
      }

      if (a2 != 4 && sub_1AF702B44(a2, v32))
      {

        v579 = v50;
        v554 = sub_1AF449D1C(v578);
        if (v554)
        {
          v51 = 0;
          v52 = v578 + 32;
          v53 = v50 + 56;
          while (1)
          {
            v68 = (v52 + 32 * v51);
            v69 = v68[1];
            if (!v69)
            {
              break;
            }

            v70 = *v68;
            if (!*(v579 + 16))
            {

              goto LABEL_46;
            }

            sub_1AFDFF288();

            sub_1AFDFD038();
            v71 = sub_1AFDFF2F8();
            v72 = -1 << *(v579 + 32);
            v73 = v71 & ~v72;
            if (((*(v53 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
            {
LABEL_45:

              v18 = v565;
LABEL_46:
              v77 = *(v7 + 64);
              v630 = *(v7 + 48);
              v631 = v77;
              v632 = *(v7 + 80);
              v78 = *(v7 + 32);
              v628 = *(v7 + 16);
              v629 = v78;
              *&v587 = 0x746E656D75677261;
              *(&v587 + 1) = 0xEA00000000002720;
              MEMORY[0x1B2718AE0](v70, v69);

              MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
              v79 = MEMORY[0x1B27189E0](v584, v18, v818, v577);
              v81 = v80;

              MEMORY[0x1B2718AE0](v79, v81);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            ++v51;
            v74 = ~v72;
            while (1)
            {
              v75 = (*(v579 + 48) + 16 * v73);
              v76 = *v75 == v70 && v69 == v75[1];
              if (v76 || (sub_1AFDFEE28() & 1) != 0)
              {
                break;
              }

              v73 = (v73 + 1) & v74;
              if (((*(v53 + ((v73 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v73) & 1) == 0)
              {
                goto LABEL_45;
              }
            }

            v18 = v565;
            v52 = v578 + 32;
            if (v51 == v554)
            {
              goto LABEL_75;
            }
          }

          v217 = *(v7 + 64);
          v635 = *(v7 + 48);
          v636 = v217;
          v637 = *(v7 + 80);
          v218 = *(v7 + 32);
          v633 = *(v7 + 16);
          v634 = v218;
          *&v587 = 0xD000000000000016;
          *(&v587 + 1) = 0x80000001AFF468D0;
          v219 = MEMORY[0x1B27189E0](v584, v18, v818, v577);
          v221 = v220;

          MEMORY[0x1B2718AE0](v219, v221);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v63 = *(&v587 + 1);
          v62 = v587;
          goto LABEL_56;
        }

LABEL_75:

        v116 = a1[3];
        v589 = a1[2];
        v590 = v116;
        v591 = *(a1 + 8);
        v117 = a1[1];
        v587 = *a1;
        v588 = v117;
        sub_1AFAF53E8(&v587);
        v118 = swift_allocObject();
        *(v118 + 16) = 5;
        *(v118 + 24) = 0;
        *(v118 + 32) = 0;
        *(v118 + 40) = 0;
        v37 = v118 | 0x7000000000000000;
        *(v118 + 48) = 5;
LABEL_131:
        v36 = 1;
        v35 = 1;
        v585 = xmmword_1AFE4C460;
LABEL_132:
        v38 = v583;
        goto LABEL_133;
      }

      v54 = *(v7 + 64);
      v640 = *(v7 + 48);
      v641 = v54;
      v642 = *(v7 + 80);
      v55 = *(v7 + 32);
      v638 = *(v7 + 16);
      v639 = v55;
      *&v587 = 0x206E69746C697562;
      *(&v587 + 1) = 0xE900000000000027;
      v56 = MEMORY[0x1B27189E0](v584, v18, v49, v577);
      v58 = v57;

      MEMORY[0x1B2718AE0](v56, v58);

      MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
      sub_1AFAF54D4();
      v59 = sub_1AFDFD788();
      v61 = v60;

      MEMORY[0x1B2718AE0](v59, v61);

      v63 = *(&v587 + 1);
      v62 = v587;
LABEL_56:
      v93 = sub_1AFAE5C18(v62, v63);
      v95 = v94;

      sub_1AFAF5454();
      swift_allocError();
      *v96 = v93;
      v96[1] = v95;
      swift_willThrow();
    }

    if (sub_1AFAE6C5C(0x5F646C726F777263, 0xEF776569765F6F74, v584, v18, v27, v17))
    {
      sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
      v39 = swift_allocObject();
      v40 = sub_1AF757508(v39, 2);
      *v41 = 258;
      if (sub_1AF449D1C(v40))
      {
        v42 = sub_1AFAEAF38(v40);
      }

      else
      {
        v42 = MEMORY[0x1E69E7CD0];
      }

      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v82 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v82 = MEMORY[0x1E69E7CD0];
      }

      if (a2 == 4 || !sub_1AF702B44(a2, v42))
      {

        v85 = *(v7 + 64);
        v655 = *(v7 + 48);
        v656 = v85;
        v657 = *(v7 + 80);
        v86 = *(v7 + 32);
        v653 = *(v7 + 16);
        v654 = v86;
        *&v587 = 0x206E69746C697562;
        *(&v587 + 1) = 0xE900000000000027;
        v87 = MEMORY[0x1B27189E0](v584, v18, v27, v577);
        v89 = v88;

        MEMORY[0x1B2718AE0](v87, v89);

        MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
        sub_1AFAF54D4();
        v90 = sub_1AFDFD788();
        v92 = v91;

        MEMORY[0x1B2718AE0](v90, v92);

        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

      v580 = v82;
      v555 = sub_1AF449D1C(v578);
      if (v555)
      {
        v83 = 0;
        v84 = v82 + 56;
        v568 = v18;
        while (1)
        {
          v101 = (v578 + 32 + 32 * v83);
          v102 = v101[1];
          if (!v102)
          {
            break;
          }

          v573 = v83;
          v103 = *v101;
          if (!*(v580 + 16))
          {

LABEL_71:

            v110 = *(v7 + 64);
            v645 = *(v7 + 48);
            v646 = v110;
            v647 = *(v7 + 80);
            v111 = *(v7 + 32);
            v643 = *(v7 + 16);
            v644 = v111;
            *&v587 = 0x746E656D75677261;
            *(&v587 + 1) = 0xEA00000000002720;
            MEMORY[0x1B2718AE0](v103, v102);

            MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
            v112 = MEMORY[0x1B27189E0](v584, v568, v818, v577);
            v114 = v113;

            MEMORY[0x1B2718AE0](v112, v114);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          sub_1AFDFF288();

          sub_1AFDFD038();
          v104 = sub_1AFDFF2F8();
          v105 = -1 << *(v580 + 32);
          v106 = v104 & ~v105;
          if (((*(v84 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
          {
            goto LABEL_71;
          }

          v574 = v573 + 1;
          v107 = ~v105;
          while (1)
          {
            v108 = (*(v580 + 48) + 16 * v106);
            v109 = *v108 == v103 && v102 == v108[1];
            if (v109 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v106 = (v106 + 1) & v107;
            if (((*(v84 + ((v106 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v106) & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          v18 = v568;
          v83 = v574;
          if (v574 == v555)
          {
            goto LABEL_103;
          }
        }

        v261 = *(v7 + 64);
        v650 = *(v7 + 48);
        v651 = v261;
        v652 = *(v7 + 80);
        v262 = *(v7 + 32);
        v648 = *(v7 + 16);
        v649 = v262;
        *&v587 = 0xD000000000000016;
        *(&v587 + 1) = 0x80000001AFF468D0;
        v263 = MEMORY[0x1B27189E0](v584, v18, v818, v577);
        v265 = v264;

        MEMORY[0x1B2718AE0](v263, v265);

        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

LABEL_103:

      v149 = a1[3];
      v589 = a1[2];
      v590 = v149;
      v591 = *(a1 + 8);
      v150 = a1[1];
      v587 = *a1;
      v588 = v150;
      sub_1AFAF53E8(&v587);
      v151 = swift_allocObject();
      v152 = 6;
    }

    else
    {
      if (sub_1AFAE6C5C(0x5F6F745F77656976, 0xEC0000006A6F7270, v584, v18, v27, v17))
      {
        v566 = v18;
        sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
        v45 = swift_allocObject();
        v46 = sub_1AF757508(v45, 2);
        *v47 = 258;
        if (sub_1AF449D1C(v46))
        {
          v48 = sub_1AFAEAF38(v46);
        }

        else
        {
          v48 = MEMORY[0x1E69E7CD0];
        }

        if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
        {
          v115 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
        }

        else
        {
          v115 = MEMORY[0x1E69E7CD0];
        }

        if (a2 == 4 || !sub_1AF702B44(a2, v48))
        {

          v121 = *(v7 + 64);
          v670 = *(v7 + 48);
          v671 = v121;
          v672 = *(v7 + 80);
          v122 = *(v7 + 32);
          v668 = *(v7 + 16);
          v669 = v122;
          *&v587 = 0x206E69746C697562;
          *(&v587 + 1) = 0xE900000000000027;
          v123 = MEMORY[0x1B27189E0](v584, v566, v27, v17);
          v125 = v124;

          MEMORY[0x1B2718AE0](v123, v125);

          MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
          sub_1AFAF54D4();
          v126 = sub_1AFDFD788();
          v128 = v127;

          MEMORY[0x1B2718AE0](v126, v128);

          v63 = *(&v587 + 1);
          v62 = v587;
          goto LABEL_56;
        }

        v556 = sub_1AF449D1C(v578);
        if (v556)
        {
          v119 = 0;
          v120 = v115 + 56;
          v581 = v115;
          while (1)
          {
            v134 = (v578 + 32 + 32 * v119);
            v135 = v134[1];
            if (!v135)
            {
              break;
            }

            v575 = v119;
            v136 = *v134;
            if (!*(v115 + 16))
            {

LABEL_99:

              v143 = *(v7 + 64);
              v660 = *(v7 + 48);
              v661 = v143;
              v662 = *(v7 + 80);
              v144 = *(v7 + 32);
              v658 = *(v7 + 16);
              v659 = v144;
              *&v587 = 0x746E656D75677261;
              *(&v587 + 1) = 0xEA00000000002720;
              MEMORY[0x1B2718AE0](v136, v135);

              MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
              v145 = MEMORY[0x1B27189E0](v584, v566, v818, v577);
              v147 = v146;

              MEMORY[0x1B2718AE0](v145, v147);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            sub_1AFDFF288();

            sub_1AFDFD038();
            v137 = sub_1AFDFF2F8();
            v138 = -1 << *(v115 + 32);
            v139 = v137 & ~v138;
            if (((*(v120 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
            {
              goto LABEL_99;
            }

            v576 = v575 + 1;
            v140 = ~v138;
            while (1)
            {
              v141 = (*(v581 + 48) + 16 * v139);
              v142 = *v141 == v136 && v135 == v141[1];
              if (v142 || (sub_1AFDFEE28() & 1) != 0)
              {
                break;
              }

              v139 = (v139 + 1) & v140;
              if (((*(v120 + ((v139 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v139) & 1) == 0)
              {
                goto LABEL_99;
              }
            }

            v119 = v576;
            v115 = v581;
            if (v576 == v556)
            {
              goto LABEL_129;
            }
          }

          v298 = *(v7 + 64);
          v665 = *(v7 + 48);
          v666 = v298;
          v667 = *(v7 + 80);
          v299 = *(v7 + 32);
          v663 = *(v7 + 16);
          v664 = v299;
          *&v587 = 0xD000000000000016;
          *(&v587 + 1) = 0x80000001AFF468D0;
          v300 = MEMORY[0x1B27189E0](v584, v566, v818, v577);
          v302 = v301;

          MEMORY[0x1B2718AE0](v300, v302);

          MEMORY[0x1B2718AE0](39, 0xE100000000000000);
          v63 = *(&v587 + 1);
          v62 = v587;
          goto LABEL_56;
        }

LABEL_129:

        v183 = a1[3];
        v589 = a1[2];
        v590 = v183;
        v591 = *(a1 + 8);
        v184 = a1[1];
        v587 = *a1;
        v588 = v184;
        sub_1AFAF53E8(&v587);
        v151 = swift_allocObject();
        *(v151 + 16) = 7;
LABEL_130:
        *(v151 + 24) = 0;
        *(v151 + 32) = 0;
        *(v151 + 40) = 0;
        v37 = v151 | 0x7000000000000000;
        *(v151 + 48) = 5;
        goto LABEL_131;
      }

      if ((sub_1AFAE6C5C(0x5F6F745F6A6F7270, 0xEC00000077656976, v584, v18, v27, v17) & 1) == 0)
      {
        if (sub_1AFAE6C5C(0xD000000000000012, 0x80000001AFF46800, v584, v18, v27, v17))
        {
          sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
          v97 = swift_allocObject();
          v98 = sub_1AF757508(v97, 2);
          *v99 = 258;
          if (sub_1AF449D1C(v98))
          {
            v100 = sub_1AFAEAF38(v98);
          }

          else
          {
            v100 = MEMORY[0x1E69E7CD0];
          }

          v181 = v818;

          if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
          {
            v182 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v182 = MEMORY[0x1E69E7CD0];
          }

          if (a2 == 4 || !sub_1AF702B44(a2, v100))
          {

            v191 = *(v7 + 16);
            v699 = *(v7 + 32);
            v192 = *(v7 + 64);
            v700 = *(v7 + 48);
            v701 = v192;
            v702 = *(v7 + 80);
            v698 = v191;
            *&v587 = 0x206E69746C697562;
            *(&v587 + 1) = 0xE900000000000027;
            v193 = MEMORY[0x1B27189E0](v584, v18, v181, v17);
            v195 = v194;

            MEMORY[0x1B2718AE0](v193, v195);

            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
            sub_1AFAF54D4();
            v196 = sub_1AFDFD788();
            v198 = v197;

            MEMORY[0x1B2718AE0](v196, v198);

            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          v558 = sub_1AF449D1C(v578);
          if (v558)
          {
            v569 = v18;
            v189 = 0;
            v190 = v182 + 56;
            while (1)
            {
              v203 = (v578 + 32 + 32 * v189);
              v204 = v203[1];
              if (!v204)
              {
                break;
              }

              v205 = *v203;
              if (!*(v182 + 16))
              {

LABEL_154:

                v212 = *(v7 + 16);
                v689 = *(v7 + 32);
                v213 = *(v7 + 64);
                v690 = *(v7 + 48);
                v691 = v213;
                v692 = *(v7 + 80);
                v688 = v212;
                *&v587 = 0x746E656D75677261;
                *(&v587 + 1) = 0xEA00000000002720;
                MEMORY[0x1B2718AE0](v205, v204);

                MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                v214 = MEMORY[0x1B27189E0](v584, v569, v818, v577);
                v216 = v215;

                MEMORY[0x1B2718AE0](v214, v216);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v63 = *(&v587 + 1);
                v62 = v587;
                goto LABEL_56;
              }

              sub_1AFDFF288();

              sub_1AFDFD038();
              v206 = sub_1AFDFF2F8();
              v207 = -1 << *(v182 + 32);
              v208 = v206 & ~v207;
              if (((*(v190 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
              {
                goto LABEL_154;
              }

              ++v189;
              v209 = ~v207;
              while (1)
              {
                v210 = (*(v182 + 48) + 16 * v208);
                v211 = *v210 == v205 && v204 == v210[1];
                if (v211 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }

                v208 = (v208 + 1) & v209;
                if (((*(v190 + ((v208 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v208) & 1) == 0)
                {
                  goto LABEL_154;
                }
              }

              if (v189 == v558)
              {
                goto LABEL_182;
              }
            }

            v368 = *(v7 + 16);
            v694 = *(v7 + 32);
            v369 = *(v7 + 64);
            v695 = *(v7 + 48);
            v696 = v369;
            v697 = *(v7 + 80);
            v693 = v368;
            *&v587 = 0xD000000000000016;
            *(&v587 + 1) = 0x80000001AFF468D0;
            v370 = MEMORY[0x1B27189E0](v584, v569, v818, v577);
            v372 = v371;

            MEMORY[0x1B2718AE0](v370, v372);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

LABEL_182:

          v257 = a1[3];
          v589 = a1[2];
          v590 = v257;
          v591 = *(a1 + 8);
          v258 = a1[1];
          v587 = *a1;
          v588 = v258;
          sub_1AFAF53E8(&v587);
          v259 = swift_allocObject();
          v260 = 9;
        }

        else if (sub_1AFAE6C5C(0x705F6172656D6163, 0xEF6E6F697469736FLL, v584, v18, v27, v17))
        {
          if (v26 == 5)
          {
            v129 = 3;
          }

          else
          {
            v129 = v26;
          }

          v557 = v129;
          v130 = swift_allocObject();
          v131 = sub_1AF757508(v130, 1);
          *v132 = 0x6563617073;
          v132[1] = 0xE500000000000000;
          if (sub_1AF449D1C(v131))
          {
            v133 = sub_1AFAE9034(v131);
          }

          else
          {
            v133 = MEMORY[0x1E69E7CD0];
          }

          v222 = v818;

          sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
          v223 = swift_allocObject();
          v224 = sub_1AF757508(v223, 2);
          *v225 = 258;
          if (sub_1AF449D1C(v224))
          {
            v226 = sub_1AFAEAF38(v224);
          }

          else
          {
            v226 = MEMORY[0x1E69E7CD0];
          }

          if (a2 == 4 || !sub_1AF702B44(a2, v226))
          {

            v231 = *(v7 + 16);
            v714 = *(v7 + 32);
            v232 = *(v7 + 64);
            v715 = *(v7 + 48);
            v716 = v232;
            v717 = *(v7 + 80);
            v713 = v231;
            *&v587 = 0x206E69746C697562;
            *(&v587 + 1) = 0xE900000000000027;
            v233 = MEMORY[0x1B27189E0](v584, v18, v222, v17);
            v235 = v234;

            MEMORY[0x1B2718AE0](v233, v235);

            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
            sub_1AFAF54D4();
            v236 = sub_1AFDFD788();
            v238 = v237;

            MEMORY[0x1B2718AE0](v236, v238);

            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          v571 = v18;

          v547 = sub_1AF449D1C(v578);
          if (v547)
          {
            v229 = 0;
            v230 = v133 + 56;
            while (1)
            {
              v243 = (v578 + 32 + 32 * v229);
              v244 = v243[1];
              if (!v244)
              {
                break;
              }

              v245 = *v243;
              if (!*(v133 + 16))
              {

LABEL_181:

                v252 = *(v7 + 16);
                v704 = *(v7 + 32);
                v253 = *(v7 + 64);
                v705 = *(v7 + 48);
                v706 = v253;
                v707 = *(v7 + 80);
                v703 = v252;
                *&v587 = 0x746E656D75677261;
                *(&v587 + 1) = 0xEA00000000002720;
                MEMORY[0x1B2718AE0](v245, v244);

                MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                v254 = MEMORY[0x1B27189E0](v584, v571, v818, v577);
                v256 = v255;

                MEMORY[0x1B2718AE0](v254, v256);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v63 = *(&v587 + 1);
                v62 = v587;
                goto LABEL_56;
              }

              sub_1AFDFF288();

              sub_1AFDFD038();
              v246 = sub_1AFDFF2F8();
              v247 = -1 << *(v133 + 32);
              v248 = v246 & ~v247;
              if (((*(v230 + ((v248 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v248) & 1) == 0)
              {
                goto LABEL_181;
              }

              ++v229;
              v249 = ~v247;
              while (1)
              {
                v250 = (*(v133 + 48) + 16 * v248);
                v251 = *v250 == v245 && v244 == v250[1];
                if (v251 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }

                v248 = (v248 + 1) & v249;
                if (((*(v230 + ((v248 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v248) & 1) == 0)
                {
                  goto LABEL_181;
                }
              }

              if (v229 == v547)
              {
                goto LABEL_209;
              }
            }

            v403 = *(v7 + 16);
            v709 = *(v7 + 32);
            v404 = *(v7 + 64);
            v710 = *(v7 + 48);
            v711 = v404;
            v712 = *(v7 + 80);
            v708 = v403;
            *&v587 = 0xD000000000000016;
            *(&v587 + 1) = 0x80000001AFF468D0;
            v405 = MEMORY[0x1B27189E0](v584, v571, v818, v577);
            v407 = v406;

            MEMORY[0x1B2718AE0](v405, v407);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

LABEL_209:

          v296 = a1[3];
          v589 = a1[2];
          v590 = v296;
          v591 = *(a1 + 8);
          v297 = a1[1];
          v587 = *a1;
          v588 = v297;
          sub_1AFAF53E8(&v587);
          v259 = swift_allocObject();
          v260 = v557;
        }

        else if (sub_1AFAE6C5C(0xD000000000000018, 0x80000001AFF46820, v584, v18, v27, v17))
        {
          sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
          v163 = swift_allocObject();
          v164 = sub_1AF757508(v163, 2);
          *v165 = 258;
          if (sub_1AF449D1C(v164))
          {
            v166 = sub_1AFAEAF38(v164);
          }

          else
          {
            v166 = MEMORY[0x1E69E7CD0];
          }

          v266 = v818;

          if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
          {
            v267 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v267 = MEMORY[0x1E69E7CD0];
          }

          v559 = v267;
          if (a2 == 4 || !sub_1AF702B44(a2, v166))
          {

            v270 = *(v7 + 16);
            v729 = *(v7 + 32);
            v271 = *(v7 + 64);
            v730 = *(v7 + 48);
            v731 = v271;
            v732 = *(v7 + 80);
            v728 = v270;
            *&v587 = 0x206E69746C697562;
            *(&v587 + 1) = 0xE900000000000027;
            v272 = MEMORY[0x1B27189E0](v584, v18, v266, v17);
            v274 = v273;

            MEMORY[0x1B2718AE0](v272, v274);

            MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
            sub_1AFAF54D4();
            v275 = sub_1AFDFD788();
            v277 = v276;

            MEMORY[0x1B2718AE0](v275, v277);

            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          v572 = v18;

          v548 = sub_1AF449D1C(v578);
          if (v548)
          {
            v268 = 0;
            v269 = v559 + 56;
            while (1)
            {
              v282 = (v578 + 32 + 32 * v268);
              v283 = v282[1];
              if (!v283)
              {
                break;
              }

              v284 = *v282;
              if (!*(v559 + 16))
              {

LABEL_208:

                v291 = *(v7 + 16);
                v719 = *(v7 + 32);
                v292 = *(v7 + 64);
                v720 = *(v7 + 48);
                v721 = v292;
                v722 = *(v7 + 80);
                v718 = v291;
                *&v587 = 0x746E656D75677261;
                *(&v587 + 1) = 0xEA00000000002720;
                MEMORY[0x1B2718AE0](v284, v283);

                MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                v293 = MEMORY[0x1B27189E0](v584, v572, v818, v577);
                v295 = v294;

                MEMORY[0x1B2718AE0](v293, v295);

                MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                v63 = *(&v587 + 1);
                v62 = v587;
                goto LABEL_56;
              }

              sub_1AFDFF288();

              sub_1AFDFD038();
              v285 = sub_1AFDFF2F8();
              v286 = -1 << *(v559 + 32);
              v287 = v285 & ~v286;
              if (((*(v269 + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287) & 1) == 0)
              {
                goto LABEL_208;
              }

              ++v268;
              v288 = ~v286;
              while (1)
              {
                v289 = (*(v559 + 48) + 16 * v287);
                v290 = *v289 == v284 && v283 == v289[1];
                if (v290 || (sub_1AFDFEE28() & 1) != 0)
                {
                  break;
                }

                v287 = (v287 + 1) & v288;
                if (((*(v269 + ((v287 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v287) & 1) == 0)
                {
                  goto LABEL_208;
                }
              }

              if (v268 == v548)
              {
                goto LABEL_236;
              }
            }

            v438 = *(v7 + 16);
            v724 = *(v7 + 32);
            v439 = *(v7 + 64);
            v725 = *(v7 + 48);
            v726 = v439;
            v727 = *(v7 + 80);
            v723 = v438;
            *&v587 = 0xD000000000000016;
            *(&v587 + 1) = 0x80000001AFF468D0;
            v440 = MEMORY[0x1B27189E0](v584, v572, v818, v577);
            v442 = v441;

            MEMORY[0x1B2718AE0](v440, v442);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

LABEL_236:

          v331 = a1[3];
          v589 = a1[2];
          v590 = v331;
          v591 = *(a1 + 8);
          v332 = a1[1];
          v587 = *a1;
          v588 = v332;
          sub_1AFAF53E8(&v587);
          v259 = swift_allocObject();
          v260 = 10;
        }

        else
        {
          v570 = v18;
          if (sub_1AFAE6C5C(0xD000000000000012, 0x80000001AFF46840, v584, v18, v27, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v199 = swift_allocObject();
            v200 = sub_1AF757508(v199, 2);
            *v201 = 258;
            if (sub_1AF449D1C(v200))
            {
              v202 = sub_1AFAEAF38(v200);
            }

            else
            {
              v202 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v560 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v560 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v202))
            {

              v305 = *(v7 + 16);
              v744 = *(v7 + 32);
              v306 = *(v7 + 64);
              v745 = *(v7 + 48);
              v746 = v306;
              v747 = *(v7 + 80);
              v743 = v305;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v307 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v309 = v308;

              MEMORY[0x1B2718AE0](v307, v309);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v310 = sub_1AFDFD788();
              v312 = v311;

              MEMORY[0x1B2718AE0](v310, v312);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v549 = sub_1AF449D1C(v578);
            if (v549)
            {
              v303 = 0;
              v304 = v560 + 56;
              while (1)
              {
                v317 = (v578 + 32 + 32 * v303);
                v318 = v317[1];
                if (!v318)
                {
                  break;
                }

                v319 = *v317;
                if (!*(v560 + 16))
                {

LABEL_235:

                  v326 = *(v7 + 16);
                  v734 = *(v7 + 32);
                  v327 = *(v7 + 64);
                  v735 = *(v7 + 48);
                  v736 = v327;
                  v737 = *(v7 + 80);
                  v733 = v326;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v319, v318);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v328 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v330 = v329;

                  MEMORY[0x1B2718AE0](v328, v330);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v320 = sub_1AFDFF2F8();
                v321 = -1 << *(v560 + 32);
                v322 = v320 & ~v321;
                if (((*(v304 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v322) & 1) == 0)
                {
                  goto LABEL_235;
                }

                ++v303;
                v323 = ~v321;
                while (1)
                {
                  v324 = (*(v560 + 48) + 16 * v322);
                  v325 = *v324 == v319 && v318 == v324[1];
                  if (v325 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v322 = (v322 + 1) & v323;
                  if (((*(v304 + ((v322 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v322) & 1) == 0)
                  {
                    goto LABEL_235;
                  }
                }

                if (v303 == v549)
                {
                  goto LABEL_263;
                }
              }

              v473 = *(v7 + 16);
              v739 = *(v7 + 32);
              v474 = *(v7 + 64);
              v740 = *(v7 + 48);
              v741 = v474;
              v742 = *(v7 + 80);
              v738 = v473;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v475 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v477 = v476;

              MEMORY[0x1B2718AE0](v475, v477);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_263:

            v366 = a1[3];
            v589 = a1[2];
            v590 = v366;
            v591 = *(a1 + 8);
            v367 = a1[1];
            v587 = *a1;
            v588 = v367;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 11;
          }

          else if (sub_1AFAE6C5C(0xD00000000000001ALL, 0x80000001AFF46860, v584, v18, v818, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v239 = swift_allocObject();
            v240 = sub_1AF757508(v239, 2);
            *v241 = 258;
            if (sub_1AF449D1C(v240))
            {
              v242 = sub_1AFAEAF38(v240);
            }

            else
            {
              v242 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v561 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v561 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v242))
            {

              v340 = *(v7 + 16);
              v759 = *(v7 + 32);
              v341 = *(v7 + 64);
              v760 = *(v7 + 48);
              v761 = v341;
              v762 = *(v7 + 80);
              v758 = v340;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v342 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v344 = v343;

              MEMORY[0x1B2718AE0](v342, v344);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v345 = sub_1AFDFD788();
              v347 = v346;

              MEMORY[0x1B2718AE0](v345, v347);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v550 = sub_1AF449D1C(v578);
            if (v550)
            {
              v338 = 0;
              v339 = v561 + 56;
              while (1)
              {
                v352 = (v578 + 32 + 32 * v338);
                v353 = v352[1];
                if (!v353)
                {
                  break;
                }

                v354 = *v352;
                if (!*(v561 + 16))
                {

LABEL_262:

                  v361 = *(v7 + 16);
                  v749 = *(v7 + 32);
                  v362 = *(v7 + 64);
                  v750 = *(v7 + 48);
                  v751 = v362;
                  v752 = *(v7 + 80);
                  v748 = v361;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v354, v353);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v363 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v365 = v364;

                  MEMORY[0x1B2718AE0](v363, v365);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v355 = sub_1AFDFF2F8();
                v356 = -1 << *(v561 + 32);
                v357 = v355 & ~v356;
                if (((*(v339 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v357) & 1) == 0)
                {
                  goto LABEL_262;
                }

                ++v338;
                v358 = ~v356;
                while (1)
                {
                  v359 = (*(v561 + 48) + 16 * v357);
                  v360 = *v359 == v354 && v353 == v359[1];
                  if (v360 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v357 = (v357 + 1) & v358;
                  if (((*(v339 + ((v357 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v357) & 1) == 0)
                  {
                    goto LABEL_262;
                  }
                }

                if (v338 == v550)
                {
                  goto LABEL_290;
                }
              }

              v487 = *(v7 + 16);
              v754 = *(v7 + 32);
              v488 = *(v7 + 64);
              v755 = *(v7 + 48);
              v756 = v488;
              v757 = *(v7 + 80);
              v753 = v487;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v489 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v491 = v490;

              MEMORY[0x1B2718AE0](v489, v491);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_290:

            v401 = a1[3];
            v589 = a1[2];
            v590 = v401;
            v591 = *(a1 + 8);
            v402 = a1[1];
            v587 = *a1;
            v588 = v402;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 12;
          }

          else if (sub_1AFAE6C5C(0x6E5F6172656D6163, 0xEB00000000726165, v584, v18, v818, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v278 = swift_allocObject();
            v279 = sub_1AF757508(v278, 2);
            *v280 = 258;
            if (sub_1AF449D1C(v279))
            {
              v281 = sub_1AFAEAF38(v279);
            }

            else
            {
              v281 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v562 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v562 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v281))
            {

              v375 = *(v7 + 16);
              v774 = *(v7 + 32);
              v376 = *(v7 + 64);
              v775 = *(v7 + 48);
              v776 = v376;
              v777 = *(v7 + 80);
              v773 = v375;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v377 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v379 = v378;

              MEMORY[0x1B2718AE0](v377, v379);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v380 = sub_1AFDFD788();
              v382 = v381;

              MEMORY[0x1B2718AE0](v380, v382);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v551 = sub_1AF449D1C(v578);
            if (v551)
            {
              v373 = 0;
              v374 = v562 + 56;
              while (1)
              {
                v387 = (v578 + 32 + 32 * v373);
                v388 = v387[1];
                if (!v388)
                {
                  break;
                }

                v389 = *v387;
                if (!*(v562 + 16))
                {

LABEL_289:

                  v396 = *(v7 + 16);
                  v764 = *(v7 + 32);
                  v397 = *(v7 + 64);
                  v765 = *(v7 + 48);
                  v766 = v397;
                  v767 = *(v7 + 80);
                  v763 = v396;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v389, v388);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v398 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v400 = v399;

                  MEMORY[0x1B2718AE0](v398, v400);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v390 = sub_1AFDFF2F8();
                v391 = -1 << *(v562 + 32);
                v392 = v390 & ~v391;
                if (((*(v374 + ((v392 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v392) & 1) == 0)
                {
                  goto LABEL_289;
                }

                ++v373;
                v393 = ~v391;
                while (1)
                {
                  v394 = (*(v562 + 48) + 16 * v392);
                  v395 = *v394 == v389 && v388 == v394[1];
                  if (v395 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v392 = (v392 + 1) & v393;
                  if (((*(v374 + ((v392 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v392) & 1) == 0)
                  {
                    goto LABEL_289;
                  }
                }

                if (v373 == v551)
                {
                  goto LABEL_317;
                }
              }

              v499 = *(v7 + 16);
              v769 = *(v7 + 32);
              v500 = *(v7 + 64);
              v770 = *(v7 + 48);
              v771 = v500;
              v772 = *(v7 + 80);
              v768 = v499;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v501 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v503 = v502;

              MEMORY[0x1B2718AE0](v501, v503);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_317:

            v436 = a1[3];
            v589 = a1[2];
            v590 = v436;
            v591 = *(a1 + 8);
            v437 = a1[1];
            v587 = *a1;
            v588 = v437;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 14;
          }

          else if (sub_1AFAE6C5C(0x665F6172656D6163, 0xEA00000000007261, v584, v18, v818, v17))
          {
            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v313 = swift_allocObject();
            v314 = sub_1AF757508(v313, 2);
            *v315 = 258;
            if (sub_1AF449D1C(v314))
            {
              v316 = sub_1AFAEAF38(v314);
            }

            else
            {
              v316 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v563 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v563 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v316))
            {

              v410 = *(v7 + 16);
              v789 = *(v7 + 32);
              v411 = *(v7 + 64);
              v790 = *(v7 + 48);
              v791 = v411;
              v792 = *(v7 + 80);
              v788 = v410;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v412 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v414 = v413;

              MEMORY[0x1B2718AE0](v412, v414);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v415 = sub_1AFDFD788();
              v417 = v416;

              MEMORY[0x1B2718AE0](v415, v417);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v552 = sub_1AF449D1C(v578);
            if (v552)
            {
              v408 = 0;
              v409 = v563 + 56;
              while (1)
              {
                v422 = (v578 + 32 + 32 * v408);
                v423 = v422[1];
                if (!v423)
                {
                  break;
                }

                v424 = *v422;
                if (!*(v563 + 16))
                {

LABEL_316:

                  v431 = *(v7 + 16);
                  v779 = *(v7 + 32);
                  v432 = *(v7 + 64);
                  v780 = *(v7 + 48);
                  v781 = v432;
                  v782 = *(v7 + 80);
                  v778 = v431;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v424, v423);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v433 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v435 = v434;

                  MEMORY[0x1B2718AE0](v433, v435);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v425 = sub_1AFDFF2F8();
                v426 = -1 << *(v563 + 32);
                v427 = v425 & ~v426;
                if (((*(v409 + ((v427 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v427) & 1) == 0)
                {
                  goto LABEL_316;
                }

                ++v408;
                v428 = ~v426;
                while (1)
                {
                  v429 = (*(v563 + 48) + 16 * v427);
                  v430 = *v429 == v424 && v423 == v429[1];
                  if (v430 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v427 = (v427 + 1) & v428;
                  if (((*(v409 + ((v427 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v427) & 1) == 0)
                  {
                    goto LABEL_316;
                  }
                }

                if (v408 == v552)
                {
                  goto LABEL_344;
                }
              }

              v511 = *(v7 + 16);
              v784 = *(v7 + 32);
              v512 = *(v7 + 64);
              v785 = *(v7 + 48);
              v786 = v512;
              v787 = *(v7 + 80);
              v783 = v511;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v513 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v515 = v514;

              MEMORY[0x1B2718AE0](v513, v515);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_344:

            v471 = a1[3];
            v589 = a1[2];
            v590 = v471;
            v591 = *(a1 + 8);
            v472 = a1[1];
            v587 = *a1;
            v588 = v472;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 15;
          }

          else
          {
            if ((sub_1AFAE6C5C(0x695F6172656D6163, 0xEC0000007865646ELL, v584, v18, v818, v17) & 1) == 0)
            {
              if (sub_1AFAE6C5C(0x6F5F6C6174726F70, 0xEE00797469636170, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v383 = swift_allocObject();
                v384 = sub_1AF757508(v383, 2);
                *v385 = 258;
                if (sub_1AF449D1C(v384))
                {
                  v386 = sub_1AFAEAF38(v384);
                }

                else
                {
                  v386 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v478 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v478 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x13u, v478, v386, a2, v7, v584, v18, v818, &v600, v17, v578);
                v479 = a1[3];
                v589 = a1[2];
                v590 = v479;
                v591 = *(a1 + 8);
                v480 = a1[1];
                v587 = *a1;
                v588 = v480;
                sub_1AFAF53E8(&v587);

                v35 = v603;
                v585 = v602;
                v36 = v601;
                v37 = v600;
              }

              else if (sub_1AFAE6C5C(0x65636E6169646172, 0xE800000000000000, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v418 = swift_allocObject();
                v419 = sub_1AF757508(v418, 2);
                *v420 = 258;
                if (sub_1AF449D1C(v419))
                {
                  v421 = sub_1AFAEAF38(v419);
                }

                else
                {
                  v421 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v492 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v492 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x14u, v492, v421, a2, v7, v584, v18, v818, &v604, v17, v578);
                v493 = a1[3];
                v589 = a1[2];
                v590 = v493;
                v591 = *(a1 + 8);
                v494 = a1[1];
                v587 = *a1;
                v588 = v494;
                sub_1AFAF53E8(&v587);

                v35 = v607;
                v585 = v606;
                v36 = v605;
                v37 = v604;
              }

              else if (sub_1AFAE6C5C(0x6E61696461727269, 0xEA00000000006563, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v453 = swift_allocObject();
                v454 = sub_1AF757508(v453, 2);
                *v455 = 258;
                if (sub_1AF449D1C(v454))
                {
                  v456 = sub_1AFAEAF38(v454);
                }

                else
                {
                  v456 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v504 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v504 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x15u, v504, v456, a2, v7, v584, v18, v818, &v608, v17, v578);
                v505 = a1[3];
                v589 = a1[2];
                v590 = v505;
                v591 = *(a1 + 8);
                v506 = a1[1];
                v587 = *a1;
                v588 = v506;
                sub_1AFAF53E8(&v587);

                v35 = v611;
                v585 = v610;
                v36 = v609;
                v37 = v608;
              }

              else if (sub_1AFAE6C5C(0x65746E695F6C6269, 0xED0000797469736ELL, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v481 = swift_allocObject();
                v482 = sub_1AF757508(v481, 2);
                *v483 = 258;
                if (sub_1AF449D1C(v482))
                {
                  v484 = sub_1AFAEAF38(v482);
                }

                else
                {
                  v484 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v516 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v516 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x10u, v516, v484, a2, v7, v584, v18, v818, &v612, v17, v578);
                v517 = a1[3];
                v589 = a1[2];
                v590 = v517;
                v591 = *(a1 + 8);
                v518 = a1[1];
                v587 = *a1;
                v588 = v518;
                sub_1AFAF53E8(&v587);

                v35 = v615;
                v585 = v614;
                v36 = v613;
                v37 = v612;
              }

              else if (sub_1AFAE6C5C(0x61746F725F6C6269, 0xEC0000006E6F6974, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v495 = swift_allocObject();
                v496 = sub_1AF757508(v495, 2);
                *v497 = 258;
                if (sub_1AF449D1C(v496))
                {
                  v498 = sub_1AFAEAF38(v496);
                }

                else
                {
                  v498 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v528 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v528 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x11u, v528, v498, a2, v7, v584, v18, v818, &v616, v17, v578);
                v529 = a1[3];
                v589 = a1[2];
                v590 = v529;
                v591 = *(a1 + 8);
                v530 = a1[1];
                v587 = *a1;
                v588 = v530;
                sub_1AFAF53E8(&v587);

                v35 = v619;
                v585 = v618;
                v36 = v617;
                v37 = v616;
              }

              else if (sub_1AFAE6C5C(0x74756C5F66647262, 0xE800000000000000, v584, v18, v818, v17))
              {
                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v507 = swift_allocObject();
                v508 = sub_1AF757508(v507, 2);
                *v509 = 258;
                if (sub_1AF449D1C(v508))
                {
                  v510 = sub_1AFAEAF38(v508);
                }

                else
                {
                  v510 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v540 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v540 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x16u, v540, v510, a2, v7, v584, v18, v818, &v620, v17, v578);
                v541 = a1[3];
                v589 = a1[2];
                v590 = v541;
                v591 = *(a1 + 8);
                v542 = a1[1];
                v587 = *a1;
                v588 = v542;
                sub_1AFAF53E8(&v587);

                v35 = v623;
                v585 = v622;
                v36 = v621;
                v37 = v620;
              }

              else
              {
                if ((sub_1AFAE6C5C(0xD000000000000017, 0x80000001AFF3A740, v584, v18, v818, v17) & 1) == 0)
                {

                  v531 = *(v7 + 16);
                  v809 = *(v7 + 32);
                  v532 = *(v7 + 64);
                  v810 = *(v7 + 48);
                  v811 = v532;
                  v812 = *(v7 + 80);
                  v808 = v531;
                  *&v587 = 0xD000000000000017;
                  *(&v587 + 1) = 0x80000001AFF46880;
                  v533 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
                  v535 = v534;

                  MEMORY[0x1B2718AE0](v533, v535);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v536 = sub_1AFAE5C18(v587, *(&v587 + 1));
                  v538 = v537;

                  sub_1AFAF5454();
                  swift_allocError();
                  *v539 = v536;
                  v539[1] = v538;
                  swift_willThrow();
                }

                sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
                v519 = swift_allocObject();
                v520 = sub_1AF757508(v519, 1);
                *v521 = 1;
                if (sub_1AF449D1C(v520))
                {
                  v522 = sub_1AFAEAF38(v520);
                }

                else
                {
                  v522 = MEMORY[0x1E69E7CD0];
                }

                if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
                {
                  v543 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
                }

                else
                {
                  v543 = MEMORY[0x1E69E7CD0];
                }

                sub_1AFAE5FC0(0x12u, v543, v522, a2, v7, v584, v18, v818, &v624, v17, v578);
                v544 = a1[3];
                v589 = a1[2];
                v590 = v544;
                v591 = *(a1 + 8);
                v545 = a1[1];
                v587 = *a1;
                v588 = v545;
                sub_1AFAF53E8(&v587);

                v35 = v627;
                v585 = v626;
                v36 = v625;
                v37 = v624;
              }

              goto LABEL_132;
            }

            sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
            v348 = swift_allocObject();
            v349 = sub_1AF757508(v348, 2);
            *v350 = 258;
            if (sub_1AF449D1C(v349))
            {
              v351 = sub_1AFAEAF38(v349);
            }

            else
            {
              v351 = MEMORY[0x1E69E7CD0];
            }

            if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
            {
              v564 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
            }

            else
            {
              v564 = MEMORY[0x1E69E7CD0];
            }

            if (a2 == 4 || !sub_1AF702B44(a2, v351))
            {

              v445 = *(v7 + 16);
              v804 = *(v7 + 32);
              v446 = *(v7 + 64);
              v805 = *(v7 + 48);
              v806 = v446;
              v807 = *(v7 + 80);
              v803 = v445;
              *&v587 = 0x206E69746C697562;
              *(&v587 + 1) = 0xE900000000000027;
              v447 = MEMORY[0x1B27189E0](v584, v18, v818, v17);
              v449 = v448;

              MEMORY[0x1B2718AE0](v447, v449);

              MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
              sub_1AFAF54D4();
              v450 = sub_1AFDFD788();
              v452 = v451;

              MEMORY[0x1B2718AE0](v450, v452);

              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

            v553 = sub_1AF449D1C(v578);
            if (v553)
            {
              v443 = 0;
              v444 = v564 + 56;
              while (1)
              {
                v457 = (v578 + 32 + 32 * v443);
                v458 = v457[1];
                if (!v458)
                {
                  break;
                }

                v459 = *v457;
                if (!*(v564 + 16))
                {

LABEL_343:

                  v466 = *(v7 + 16);
                  v794 = *(v7 + 32);
                  v467 = *(v7 + 64);
                  v795 = *(v7 + 48);
                  v796 = v467;
                  v797 = *(v7 + 80);
                  v793 = v466;
                  *&v587 = 0x746E656D75677261;
                  *(&v587 + 1) = 0xEA00000000002720;
                  MEMORY[0x1B2718AE0](v459, v458);

                  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
                  v468 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
                  v470 = v469;

                  MEMORY[0x1B2718AE0](v468, v470);

                  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
                  v63 = *(&v587 + 1);
                  v62 = v587;
                  goto LABEL_56;
                }

                sub_1AFDFF288();

                sub_1AFDFD038();
                v460 = sub_1AFDFF2F8();
                v461 = -1 << *(v564 + 32);
                v462 = v460 & ~v461;
                if (((*(v444 + ((v462 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v462) & 1) == 0)
                {
                  goto LABEL_343;
                }

                ++v443;
                v463 = ~v461;
                while (1)
                {
                  v464 = (*(v564 + 48) + 16 * v462);
                  v465 = *v464 == v459 && v458 == v464[1];
                  if (v465 || (sub_1AFDFEE28() & 1) != 0)
                  {
                    break;
                  }

                  v462 = (v462 + 1) & v463;
                  if (((*(v444 + ((v462 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v462) & 1) == 0)
                  {
                    goto LABEL_343;
                  }
                }

                if (v443 == v553)
                {
                  goto LABEL_355;
                }
              }

              v523 = *(v7 + 16);
              v799 = *(v7 + 32);
              v524 = *(v7 + 64);
              v800 = *(v7 + 48);
              v801 = v524;
              v802 = *(v7 + 80);
              v798 = v523;
              *&v587 = 0xD000000000000016;
              *(&v587 + 1) = 0x80000001AFF468D0;
              v525 = MEMORY[0x1B27189E0](v584, v570, v818, v577);
              v527 = v526;

              MEMORY[0x1B2718AE0](v525, v527);

              MEMORY[0x1B2718AE0](39, 0xE100000000000000);
              v63 = *(&v587 + 1);
              v62 = v587;
              goto LABEL_56;
            }

LABEL_355:

            v485 = a1[3];
            v589 = a1[2];
            v590 = v485;
            v591 = *(a1 + 8);
            v486 = a1[1];
            v587 = *a1;
            v588 = v486;
            sub_1AFAF53E8(&v587);
            v259 = swift_allocObject();
            v260 = 13;
          }
        }

        *(v259 + 16) = v260;
        *(v259 + 24) = 0;
        *(v259 + 32) = 0;
        *(v259 + 40) = 0;
        v37 = v259 | 0x7000000000000000;
        *(v259 + 48) = 5;
        v36 = 1;
        v35 = 1;
        v585 = xmmword_1AFE4C460;
        v38 = v583;
        goto LABEL_133;
      }

      v567 = v18;
      sub_1AFAF5748(0, &qword_1EB6309F0, &type metadata for ScriptFunction.Kind, MEMORY[0x1E69E6F90]);
      v64 = swift_allocObject();
      v65 = sub_1AF757508(v64, 2);
      *v66 = 258;
      if (sub_1AF449D1C(v65))
      {
        v67 = sub_1AFAEAF38(v65);
      }

      else
      {
        v67 = MEMORY[0x1E69E7CD0];
      }

      if (sub_1AF449D1C(MEMORY[0x1E69E7CC0]))
      {
        v148 = sub_1AFAE9034(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v148 = MEMORY[0x1E69E7CD0];
      }

      if (a2 == 4 || !sub_1AF702B44(a2, v67))
      {

        v155 = *(v7 + 16);
        v684 = *(v7 + 32);
        v156 = *(v7 + 64);
        v685 = *(v7 + 48);
        v686 = v156;
        v687 = *(v7 + 80);
        v683 = v155;
        *&v587 = 0x206E69746C697562;
        *(&v587 + 1) = 0xE900000000000027;
        v157 = MEMORY[0x1B27189E0](v584, v567, v27, v17);
        v159 = v158;

        MEMORY[0x1B2718AE0](v157, v159);

        MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF468A0);
        sub_1AFAF54D4();
        v160 = sub_1AFDFD788();
        v162 = v161;

        MEMORY[0x1B2718AE0](v160, v162);

        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

      v546 = sub_1AF449D1C(v578);
      if (v546)
      {
        v153 = 0;
        v154 = v148 + 56;
        v582 = v148;
        while (1)
        {
          v167 = (v578 + 32 + 32 * v153);
          v168 = v167[1];
          if (!v168)
          {
            break;
          }

          v169 = *v167;
          if (!*(v148 + 16))
          {

LABEL_125:

            v176 = *(v7 + 16);
            v674 = *(v7 + 32);
            v177 = *(v7 + 64);
            v675 = *(v7 + 48);
            v676 = v177;
            v677 = *(v7 + 80);
            v673 = v176;
            *&v587 = 0x746E656D75677261;
            *(&v587 + 1) = 0xEA00000000002720;
            MEMORY[0x1B2718AE0](v169, v168);

            MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF468F0);
            v178 = MEMORY[0x1B27189E0](v584, v567, v818, v577);
            v180 = v179;

            MEMORY[0x1B2718AE0](v178, v180);

            MEMORY[0x1B2718AE0](39, 0xE100000000000000);
            v63 = *(&v587 + 1);
            v62 = v587;
            goto LABEL_56;
          }

          sub_1AFDFF288();

          sub_1AFDFD038();
          v170 = sub_1AFDFF2F8();
          v171 = -1 << *(v148 + 32);
          v172 = v170 & ~v171;
          if (((*(v154 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) == 0)
          {
            goto LABEL_125;
          }

          ++v153;
          v173 = ~v171;
          while (1)
          {
            v174 = (*(v582 + 48) + 16 * v172);
            v175 = *v174 == v169 && v168 == v174[1];
            if (v175 || (sub_1AFDFEE28() & 1) != 0)
            {
              break;
            }

            v172 = (v172 + 1) & v173;
            if (((*(v154 + ((v172 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v172) & 1) == 0)
            {
              goto LABEL_125;
            }
          }

          v148 = v582;
          if (v153 == v546)
          {
            goto LABEL_160;
          }
        }

        v333 = *(v7 + 16);
        v679 = *(v7 + 32);
        v334 = *(v7 + 64);
        v680 = *(v7 + 48);
        v681 = v334;
        v682 = *(v7 + 80);
        v678 = v333;
        *&v587 = 0xD000000000000016;
        *(&v587 + 1) = 0x80000001AFF468D0;
        v335 = MEMORY[0x1B27189E0](v584, v567, v818, v577);
        v337 = v336;

        MEMORY[0x1B2718AE0](v335, v337);

        MEMORY[0x1B2718AE0](39, 0xE100000000000000);
        v63 = *(&v587 + 1);
        v62 = v587;
        goto LABEL_56;
      }

LABEL_160:

      v227 = a1[3];
      v589 = a1[2];
      v590 = v227;
      v591 = *(a1 + 8);
      v228 = a1[1];
      v587 = *a1;
      v588 = v228;
      sub_1AFAF53E8(&v587);
      v151 = swift_allocObject();
      v152 = 8;
    }

    *(v151 + 16) = v152;
    goto LABEL_130;
  }

  sub_1AFAE6460(0, MEMORY[0x1E69E7CD0], v578, v7, v584, v18, v27, v17, &v592);
  v33 = a1[3];
  v589 = a1[2];
  v590 = v33;
  v591 = *(a1 + 8);
  v34 = a1[1];
  v587 = *a1;
  v588 = v34;
  sub_1AFAF53E8(&v587);

  v35 = v595;
  v585 = v594;
  v36 = v593;
  v37 = v592;
  v38 = v583;
LABEL_133:
  v185 = *(v7 + 64);
  v589 = *(v7 + 48);
  v590 = v185;
  v591 = *(v7 + 80);
  v186 = *(v7 + 32);
  v587 = *(v7 + 16);
  v588 = v186;
  sub_1AFAF541C(&v587, v586);

  v187 = v590;
  a1[2] = v589;
  a1[3] = v187;
  *(a1 + 8) = v591;
  v188 = v588;
  *a1 = v587;
  a1[1] = v188;
  *v38 = v37;
  *(v38 + 8) = v36;
  *(v38 + 16) = v585;
  *(v38 + 32) = v35;
  return result;
}

uint64_t sub_1AFAEFCA4(__int128 *a1)
{
  v3 = a1[3];
  v61 = a1[2];
  v62 = v3;
  v63 = *(a1 + 8);
  v4 = a1[1];
  v60[0] = *a1;
  v60[1] = v4;
  v52 = v61;
  v53 = v3;
  v54 = v63;
  v50 = v60[0];
  v51 = v4;
  sub_1AFAF541C(v60, &v45);
  v5 = &v50;
  sub_1AFAE59B0(2u);
  if (!v1)
  {

    v6 = sub_1AFAE59B0(0xEu);
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    if (sub_1AFAE6C5C(0x6E6F697469736F70, 0xE800000000000000, v6, v7, v8, v9))
    {
      v15 = a1[3];
      v47 = a1[2];
      v48 = v15;
      v49 = *(a1 + 8);
      v16 = a1[1];
      v45 = *a1;
      v46 = v16;
      sub_1AFAF53E8(&v45);

      v5 = 0;
LABEL_21:
      v42 = v52;
      v43 = v53;
      v44 = v54;
      v40 = v50;
      v41 = v51;
      v47 = v52;
      v48 = v53;
      v49 = v54;
      v45 = v50;
      v46 = v51;
      sub_1AFAF541C(&v40, v39);
      sub_1AFAF53E8(&v45);
      v31 = v43;
      a1[2] = v42;
      a1[3] = v31;
      *(a1 + 8) = v44;
      v32 = v41;
      *a1 = v40;
      a1[1] = v32;
      return v5;
    }

    if (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v11, v12, v13, v14))
    {
      v17 = a1[3];
      v47 = a1[2];
      v48 = v17;
      v49 = *(a1 + 8);
      v18 = a1[1];
      v45 = *a1;
      v46 = v18;
      sub_1AFAF53E8(&v45);

      v5 = 5;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(0x6C616D726F6ELL, 0xE600000000000000, v11, v12, v13, v14))
    {
      v19 = a1[3];
      v47 = a1[2];
      v48 = v19;
      v49 = *(a1 + 8);
      v20 = a1[1];
      v45 = *a1;
      v46 = v20;
      sub_1AFAF53E8(&v45);

      v5 = 6;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(0x746E65676E6174, 0xE700000000000000, v11, v12, v13, v14))
    {
      v21 = a1[3];
      v47 = a1[2];
      v48 = v21;
      v49 = *(a1 + 8);
      v22 = a1[1];
      v45 = *a1;
      v46 = v22;
      sub_1AFAF53E8(&v45);

      v5 = 7;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3176053, 0xE300000000000000, v11, v12, v13, v14))
    {
      v23 = a1[3];
      v47 = a1[2];
      v48 = v23;
      v49 = *(a1 + 8);
      v24 = a1[1];
      v45 = *a1;
      v46 = v24;
      sub_1AFAF53E8(&v45);

      v5 = 1;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3241589, 0xE300000000000000, v11, v12, v13, v14))
    {
      v25 = a1[3];
      v47 = a1[2];
      v48 = v25;
      v49 = *(a1 + 8);
      v26 = a1[1];
      v45 = *a1;
      v46 = v26;
      sub_1AFAF53E8(&v45);

      v5 = 2;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3307125, 0xE300000000000000, v11, v12, v13, v14))
    {
      v27 = a1[3];
      v47 = a1[2];
      v48 = v27;
      v49 = *(a1 + 8);
      v28 = a1[1];
      v45 = *a1;
      v46 = v28;
      sub_1AFAF53E8(&v45);

      v5 = 3;
      goto LABEL_21;
    }

    if (sub_1AFAE6C5C(3372661, 0xE300000000000000, v11, v12, v13, v14))
    {
      v29 = a1[3];
      v47 = a1[2];
      v48 = v29;
      v49 = *(a1 + 8);
      v30 = a1[1];
      v45 = *a1;
      v46 = v30;
      sub_1AFAF53E8(&v45);

      v5 = 4;
      goto LABEL_21;
    }

    v57 = v52;
    v58 = v53;
    v59 = v54;
    v55 = v50;
    v56 = v51;
    *&v45 = 0;
    *(&v45 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v45 = 0xD000000000000011;
    *(&v45 + 1) = 0x80000001AFF46A10;
    v33 = MEMORY[0x1B27189E0](v11, v12, v13, v14);
    v35 = v34;

    MEMORY[0x1B2718AE0](v33, v35);

    MEMORY[0x1B2718AE0](0x65762420726F6620, 0xEC00000078657472);
    v5 = sub_1AFAE5C18(v45, *(&v45 + 1));
    v37 = v36;

    sub_1AFAF5454();
    swift_allocError();
    *v38 = v5;
    v38[1] = v37;
    swift_willThrow();
  }

  v47 = v52;
  v48 = v53;
  v49 = v54;
  v45 = v50;
  v46 = v51;
  sub_1AFAF53E8(&v45);
  return v5;
}

unint64_t sub_1AFAF0198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1718378856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0xC000000000000050;
  }

  if (a1 == 0x32666C6168 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE85140;
LABEL_11:
    *(v6 + 16) = v7;
    return v6 | 0x2000000000000000;
  }

  if (a1 == 0x33666C6168 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE85150;
    goto LABEL_11;
  }

  if (a1 == 0x34666C6168 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE85160;
    goto LABEL_11;
  }

  if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0xC000000000000058;
  }

  if (a1 == 0x3274616F6C66 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE4C420;
    goto LABEL_11;
  }

  if (a1 == 0x3374616F6C66 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE4C430;
    goto LABEL_11;
  }

  if (a1 == 0x3474616F6C66 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v6 = swift_allocObject();
    v7 = xmmword_1AFE4C440;
    goto LABEL_11;
  }

  if (a1 == 0x33783374616F6C66 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = 3;
    v9 = swift_allocObject();
    v10 = xmmword_1AFE4C430;
LABEL_41:
    *(v9 + 16) = v10;
    *(v8 + 24) = v9 | 0x2000000000000000;
    return v8 | 0x2000000000000000;
  }

  if (a1 == 0x34783474616F6C66 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = swift_allocObject();
    *(v8 + 16) = 4;
    v9 = swift_allocObject();
    v10 = xmmword_1AFE4C440;
    goto LABEL_41;
  }

  if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0xC000000000000030;
  }

  else
  {
    sub_1AF770DF0();
    sub_1AF770E44();
    if ((sub_1AFDFCD68() & 1) != 0 || (sub_1AFDFCD68()) && (, v11 = sub_1AF910080(a1, a2), v11 != 7))
    {
      v12 = v11;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = a1;
      *(v13 + 32) = a2;
      return v13 | 0xA000000000000000;
    }

    else
    {

      return 0xF000000000000007;
    }
  }
}

uint64_t sub_1AFAF0708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1ED722B48 != -1)
  {
    swift_once();
  }

  result = sub_1AF70265C(a2, a3, qword_1ED73B388);
  if (result)
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a2, a3);
    MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF46AD0);
    v6 = sub_1AFAE5C18(39, 0xE100000000000000);
    v8 = v7;

    sub_1AFAF5454();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    return swift_willThrow();
  }

  return result;
}

__int128 *sub_1AFAF0834(__int128 *a1)
{
  v3 = a1[1];
  v77[0] = *a1;
  v77[1] = v3;
  v4 = a1[3];
  v78 = a1[2];
  v79 = v4;
  v80 = *(a1 + 8);
  v66 = v77[0];
  v67 = v3;
  *v68 = v78;
  *&v68[16] = v4;
  v69 = v80;
  if (v3 != *(&v3 + 1) >> 1)
  {
    v5 = *(&v77[0] + 1) + 40 * v3;
    if (*v5 == 2)
    {
      v54 = *(v5 + 8);
      v7 = *(v5 + 24);
      v6 = *(v5 + 32);
      v66 = v77[0];
      *&v67 = v3 + 1;
      *(&v67 + 1) = *(&v3 + 1);
      sub_1AFAF541C(v77, &v61);

      *&v68[8] = v54;
      *v68 = 2;
      *&v68[24] = v7;
      v69 = v6;
      v8 = &v66;
      v9 = sub_1AFAE59B0(0xEu);
      if (v1)
      {
LABEL_29:
        v63 = *v68;
        v64 = *&v68[16];
        v65 = v69;
        v61 = v66;
        v62 = v67;
        sub_1AFAF53E8(&v61);
        return v8;
      }

      v13 = v9;
      v14 = v10;
      v15 = v11;
      v16 = v12;
      if (sub_1AFAE6C5C(0x6E6F697469736F70, 0xE800000000000000, v9, v10, v11, v12) & 1) != 0 || (sub_1AFAE6C5C(0xD000000000000010, 0x80000001AFF46A80, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3176053, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3241589, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3307125, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(3372661, 0xE300000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(0x6C616D726F6ELL, 0xE600000000000000, v13, v14, v15, v16) & 1) != 0 || (sub_1AFAE6C5C(0x746E65676E6174, 0xE700000000000000, v13, v14, v15, v16))
      {
        v47 = a1[3];
        v63 = a1[2];
        v64 = v47;
        v65 = *(a1 + 8);
        v48 = a1[1];
        v61 = *a1;
        v62 = v48;
        sub_1AFAF53E8(&v61);

        v8 = 0;
        goto LABEL_43;
      }

      v74 = *v68;
      v75 = *&v68[16];
      v76 = v69;
      v72 = v66;
      v73 = v67;
      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v61 = 0xD000000000000021;
      *(&v61 + 1) = 0x80000001AFF46AA0;
      v51 = MEMORY[0x1B27189E0](v13, v14, v15, v16);
      v53 = v52;

      MEMORY[0x1B2718AE0](v51, v53);

      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      v39 = *(&v61 + 1);
      v38 = v61;
      goto LABEL_26;
    }
  }

  sub_1AFAF541C(v77, &v61);
  v8 = sub_1AFAE9034(&unk_1F2500C48);
  sub_1AF585778(&unk_1F2500C68);
  v17 = sub_1AFAE9D30(&v66, 0, v8);
  if (!v1)
  {
    v18 = v17;

    if (v67 == *(&v67 + 1) >> 1 || (v19 = (*(&v66 + 1) + 40 * v67), v20 = *v19, v22 = v19[1], v21 = v19[2], v23 = v19[3], v24 = v19[4], , v20 != 14))
    {

      v30 = *(v18 + 2);
      if (!v30)
      {
LABEL_27:

        v8 = sub_1AFAE5C18(0xD000000000000026, 0x80000001AFF46A50);
        v41 = v42;
        goto LABEL_28;
      }
    }

    else
    {
      v25 = MEMORY[0x1B27189E0](v22, v21, v23, v24);
      v27 = v26;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1AF427218(0, *(v18 + 2) + 1, 1, v18);
      }

      v29 = *(v18 + 2);
      v28 = *(v18 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v18 = sub_1AF427218(v28 > 1, v29 + 1, 1, v18);
      }

      *(v18 + 2) = v30;
      v31 = &v18[32 * v29];
      *(v31 + 2) = xmmword_1AFE99BE0;
      *(v31 + 6) = v25;
      *(v31 + 7) = v27;
    }

    v32 = (v18 + 56);
    while (1)
    {
      v33 = *(v32 - 2);
      if (v33)
      {
        v8 = *(v32 - 1);
        v34 = *v32;
        v35 = *(v32 - 3) == 1701667182 && v33 == 0xE400000000000000;
        if (v35 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }
      }

      v32 += 4;
      if (!--v30)
      {
        goto LABEL_27;
      }
    }

    v37 = *(v18 + 6);
    v36 = *(v18 + 7);

    swift_bridgeObjectRetain_n();

    if ((~sub_1AFAF0198(v37, v36) & 0xF000000000000007) != 0)
    {

      v70[2] = *v68;
      v70[3] = *&v68[16];
      v71 = v69;
      v70[0] = v66;
      v70[1] = v67;
      sub_1AFAF541C(v70, &v61);
      sub_1AFAF0708(v70, v8, v34);
      v45 = a1[3];
      v63 = a1[2];
      v64 = v45;
      v65 = *(a1 + 8);
      v46 = a1[1];
      v61 = *a1;
      v62 = v46;
      sub_1AFAF53E8(&v61);
      sub_1AFAF53E8(v70);
LABEL_43:
      v58 = *v68;
      v59 = *&v68[16];
      v60 = v69;
      v56 = v66;
      v57 = v67;
      v63 = *v68;
      v64 = *&v68[16];
      v65 = v69;
      v61 = v66;
      v62 = v67;
      sub_1AFAF541C(&v56, v55);
      sub_1AFAF53E8(&v61);
      v49 = v59;
      a1[2] = v58;
      a1[3] = v49;
      *(a1 + 8) = v60;
      v50 = v57;
      *a1 = v56;
      a1[1] = v50;
      return v8;
    }

    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v61 = 0xD000000000000014;
    *(&v61 + 1) = 0x80000001AFF46A30;
    MEMORY[0x1B2718AE0](v37, v36);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v39 = *(&v61 + 1);
    v38 = v61;
LABEL_26:
    v8 = sub_1AFAE5C18(v38, v39);
    v41 = v40;

LABEL_28:
    sub_1AFAF5454();
    swift_allocError();
    *v43 = v8;
    v43[1] = v41;
    swift_willThrow();
    goto LABEL_29;
  }

  v63 = *v68;
  v64 = *&v68[16];
  v65 = v69;
  v61 = v66;
  v62 = v67;
  sub_1AFAF53E8(&v61);

  return v8;
}

uint64_t sub_1AFAF1160(__int128 *a1)
{
  v3 = a1[3];
  v57 = a1[2];
  v58 = v3;
  v59 = *(a1 + 8);
  v4 = a1[1];
  v56[0] = *a1;
  v56[1] = v4;
  v48 = v57;
  v49 = v3;
  v50 = v59;
  v46 = v56[0];
  v47 = v4;
  sub_1AFAF541C(v56, &v41);
  v5 = &v46;
  sub_1AFAE59B0(2u);
  if (!v1)
  {

    v6 = sub_1AFAE59B0(0xEu);
    v11 = v6;
    v12 = v7;
    v13 = v8;
    v14 = v9;
    if (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v6, v7, v8, v9))
    {
      v15 = a1[3];
      v43 = a1[2];
      v44 = v15;
      v45 = *(a1 + 8);
      v16 = a1[1];
      v41 = *a1;
      v42 = v16;
      sub_1AFAF53E8(&v41);

      v5 = 0;
LABEL_17:
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v36 = v46;
      v37 = v47;
      v43 = v48;
      v44 = v49;
      v45 = v50;
      v41 = v46;
      v42 = v47;
      sub_1AFAF541C(&v36, v35);
      sub_1AFAF53E8(&v41);
      v27 = v39;
      a1[2] = v38;
      a1[3] = v27;
      *(a1 + 8) = v40;
      v28 = v37;
      *a1 = v36;
      a1[1] = v28;
      return v5;
    }

    if (sub_1AFAE6C5C(0xD000000000000010, 0x80000001AFF46A80, v11, v12, v13, v14))
    {
      v17 = a1[3];
      v43 = a1[2];
      v44 = v17;
      v45 = *(a1 + 8);
      v18 = a1[1];
      v41 = *a1;
      v42 = v18;
      sub_1AFAF53E8(&v41);

      v5 = 1;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0x645F7261656E696CLL, 0xEC00000068747065, v11, v12, v13, v14))
    {
      v19 = a1[3];
      v43 = a1[2];
      v44 = v19;
      v45 = *(a1 + 8);
      v20 = a1[1];
      v41 = *a1;
      v42 = v20;
      sub_1AFAF53E8(&v41);

      v5 = 2;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0x61665F746E6F7266, 0xEC000000676E6963, v11, v12, v13, v14))
    {
      v21 = a1[3];
      v43 = a1[2];
      v44 = v21;
      v45 = *(a1 + 8);
      v22 = a1[1];
      v41 = *a1;
      v42 = v22;
      sub_1AFAF53E8(&v41);

      v5 = 3;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0xD000000000000017, 0x80000001AFF46B00, v11, v12, v13, v14))
    {
      v23 = a1[3];
      v43 = a1[2];
      v44 = v23;
      v45 = *(a1 + 8);
      v24 = a1[1];
      v41 = *a1;
      v42 = v24;
      sub_1AFAF53E8(&v41);

      v5 = 4;
      goto LABEL_17;
    }

    if (sub_1AFAE6C5C(0x766974696D697270, 0xEC00000064695F65, v11, v12, v13, v14))
    {
      v25 = a1[3];
      v43 = a1[2];
      v44 = v25;
      v45 = *(a1 + 8);
      v26 = a1[1];
      v41 = *a1;
      v42 = v26;
      sub_1AFAF53E8(&v41);

      v5 = 5;
      goto LABEL_17;
    }

    v53 = v48;
    v54 = v49;
    v55 = v50;
    v51 = v46;
    v52 = v47;
    *&v41 = 0;
    *(&v41 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v41 = 0xD000000000000011;
    *(&v41 + 1) = 0x80000001AFF46A10;
    v29 = MEMORY[0x1B27189E0](v11, v12, v13, v14);
    v31 = v30;

    MEMORY[0x1B2718AE0](v29, v31);

    MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF46B20);
    v5 = sub_1AFAE5C18(v41, *(&v41 + 1));
    v33 = v32;

    sub_1AFAF5454();
    swift_allocError();
    *v34 = v5;
    v34[1] = v33;
    swift_willThrow();
  }

  v43 = v48;
  v44 = v49;
  v45 = v50;
  v41 = v46;
  v42 = v47;
  sub_1AFAF53E8(&v41);
  return v5;
}

void *sub_1AFAF15DC(uint64_t a1)
{
  v3 = *(a1 + 48);
  v48 = *(a1 + 32);
  v49 = v3;
  v50 = *(a1 + 64);
  v4 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v4;
  v39 = v48;
  v40 = v3;
  v41 = v50;
  v37 = v47[0];
  v38 = v4;
  sub_1AFAF541C(v47, &v32);
  sub_1AFAE59B0(2u);
  if (!v1)
  {

    v5 = sub_1AFAE59B0(0xEu);
    v7 = v6;
    v9 = v8;
    v11 = v10;
    if (sub_1AFAE6C5C(0x726F6C6F63, 0xE500000000000000, v5, v6, v8, v10))
    {
      v12 = *(a1 + 48);
      v25[2] = *(a1 + 32);
      v25[3] = v12;
      v26 = *(a1 + 64);
      v13 = *(a1 + 16);
      v25[0] = *a1;
      v25[1] = v13;
      sub_1AFAF53E8(v25);

      v29 = v39;
      v30 = v40;
      v31 = v41;
      v27 = v37;
      v28 = v38;
      v34 = v39;
      v35 = v40;
      v36 = v41;
      v32 = v37;
      v33 = v38;
      sub_1AFAF541C(&v27, v24);
      result = sub_1AFAF53E8(&v32);
      v15 = v30;
      *(a1 + 32) = v29;
      *(a1 + 48) = v15;
      *(a1 + 64) = v31;
      v16 = v28;
      *a1 = v27;
      *(a1 + 16) = v16;
      return result;
    }

    v44 = v39;
    v45 = v40;
    v46 = v41;
    v42 = v37;
    v43 = v38;
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v32 = 0xD000000000000011;
    *(&v32 + 1) = 0x80000001AFF46A10;
    v17 = MEMORY[0x1B27189E0](v5, v7, v9, v11);
    v19 = v18;

    MEMORY[0x1B2718AE0](v17, v19);

    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF46B40);
    v20 = sub_1AFAE5C18(v32, *(&v32 + 1));
    v22 = v21;

    sub_1AFAF5454();
    swift_allocError();
    *v23 = v20;
    v23[1] = v22;
    swift_willThrow();
  }

  v34 = v39;
  v35 = v40;
  v36 = v41;
  v32 = v37;
  v33 = v38;
  return sub_1AFAF53E8(&v32);
}

uint64_t sub_1AFAF1860(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1AFDFE9E8() & 1;
  }
}

__int128 *sub_1AFAF18D8(__int128 *a1)
{
  v3 = a1[3];
  v72 = a1[2];
  v73 = v3;
  v74 = *(a1 + 8);
  v4 = a1[1];
  v71[0] = *a1;
  v71[1] = v4;
  v63 = v72;
  v64 = v3;
  v65 = v74;
  v61 = v71[0];
  v62 = v4;
  sub_1AFAF541C(v71, &v56);
  v5 = &v61;
  v6 = sub_1AFAE59B0(0xEu);
  if (v1)
  {
LABEL_8:
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v56 = v61;
    v57 = v62;
    sub_1AFAF53E8(&v56);
    return v5;
  }

  v10 = sub_1AFAF1860(v6, v7, v8, v9, 0x6C6169726574616DLL, 0xE800000000000000);

  if ((v10 & 1) == 0)
  {
    v66 = v61;
    v67 = v62;
    v68 = v63;
    v69 = v64;
    v70 = v65;
    v12 = v62;
    v13 = 0xE000000000000000;
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v54[0] = 0xD000000000000017;
    *(&v54[0] + 1) = 0x80000001AFF46BB0;
    if (v12 == *(&v12 + 1) >> 1)
    {
      v14 = 0;
    }

    else
    {

      v15 = sub_1AFDFD1F8();
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = MEMORY[0x1B27189E0](v15, v17, v19, v21);
      v13 = v23;

      v14 = v22;
    }

    MEMORY[0x1B2718AE0](v14, v13);

    v5 = sub_1AFAE5C18(*&v54[0], *(&v54[0] + 1));
    v25 = v24;

    sub_1AFAF5454();
    swift_allocError();
    *v26 = v5;
    v26[1] = v25;
    swift_willThrow();
    goto LABEL_8;
  }

  v11 = sub_1AFAE9034(&unk_1F2500C78);
  sub_1AF585778(&unk_1F2500C98);
  v5 = sub_1AFAE9D30(&v61, 0, v11);
  v28 = a1[3];
  v58 = a1[2];
  v59 = v28;
  v60 = *(a1 + 8);
  v29 = a1[1];
  v56 = *a1;
  v57 = v29;
  sub_1AFAF53E8(&v56);

  if (v62 == *(&v62 + 1) >> 1 || (v30 = (*(&v61 + 1) + 40 * v62), v31 = *v30, v32 = v30[1], v33 = v30[2], v34 = v30[3], v35 = v30[4], , v31 != 14))
  {
  }

  else
  {
    v36 = MEMORY[0x1B27189E0](v32, v33, v34, v35);
    v38 = v37;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1AF427218(0, *(v5 + 2) + 1, 1, v5);
    }

    v39 = *(v5 + 2);
    v40 = *(v5 + 3);
    v41 = v39 + 1;
    if (v39 >= v40 >> 1)
    {
      v45 = v5;
      v46 = *(v5 + 2);
      v47 = sub_1AF427218(v40 > 1, v39 + 1, 1, v45);
      v39 = v46;
      v5 = v47;
    }

    *(v5 + 2) = v41;
    v42 = &v5[2 * v39];
    v42[2] = xmmword_1AFE99BE0;
    *(v42 + 6) = v36;
    *(v42 + 7) = v38;
  }

  v51 = v63;
  v52 = v64;
  v53 = v65;
  v49 = v61;
  v50 = v62;
  v54[2] = v63;
  v54[3] = v64;
  v55 = v65;
  v54[0] = v61;
  v54[1] = v62;
  sub_1AFAF541C(&v49, v48);
  sub_1AFAF53E8(v54);
  v43 = v52;
  a1[2] = v51;
  a1[3] = v43;
  *(a1 + 8) = v53;
  v44 = v50;
  *a1 = v49;
  a1[1] = v44;
  return v5;
}

void *sub_1AFAF1CF0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[3];
  v91 = a1[2];
  v92 = v5;
  v93 = *(a1 + 8);
  v6 = a1[1];
  v90[0] = *a1;
  v90[1] = v6;
  v70 = v91;
  v71 = v5;
  v72 = v93;
  v68 = v90[0];
  v69 = v6;
  sub_1AFAF541C(v90, &v63);
  v7 = sub_1AFAF18D8(&v68);
  if (v2)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = *(v7 + 2);
  if (!v9)
  {

    v18 = a1[3];
    v87 = a1[2];
    v88 = v18;
    v89 = *(a1 + 8);
    v19 = a1[1];
    v85 = *a1;
    v86 = v19;
    v15 = sub_1AFAE5C18(0xD000000000000023, 0x80000001AFF46B60);
    v17 = v20;
    goto LABEL_6;
  }

  v11 = *(v7 + 6);
  v10 = *(v7 + 7);
  swift_bridgeObjectRetain_n();
  v12 = sub_1AFAF0198(v11, v10);
  if ((~v12 & 0xF000000000000007) == 0)
  {

    v13 = a1[3];
    v82 = a1[2];
    v83 = v13;
    v84 = *(a1 + 8);
    v14 = a1[1];
    v80 = *a1;
    v81 = v14;
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v63 = 0xD00000000000001DLL;
    *(&v63 + 1) = 0x80000001AFF46B90;
    MEMORY[0x1B2718AE0](v11, v10);

    MEMORY[0x1B2718AE0](39, 0xE100000000000000);
    v15 = sub_1AFAE5C18(v63, *(&v63 + 1));
    v17 = v16;

LABEL_6:
    sub_1AFAF5454();
    swift_allocError();
    *v21 = v15;
    v21[1] = v17;
    swift_willThrow();
LABEL_7:
    v65 = v70;
    v66 = v71;
    v67 = v72;
    v63 = v68;
    v64 = v69;
    return sub_1AFAF53E8(&v63);
  }

  v57 = v11;
  v58 = a2;
  v59 = v10;
  v60 = v12;
  v23 = 0;
  v24 = -v9;
  v25 = MEMORY[0x1E69E7CC0];
  do
  {
    v26 = 2 * v23++;
    while (1)
    {
      v27 = &v8[v26];
      v28 = *(&v8[v26 + 2] + 8);
      v61 = v28;
      if (!v28)
      {
        goto LABEL_10;
      }

      v29 = *(v27 + 4);
      v30 = *(v27 + 7);
      if (v29 == 1701667182 && v28 == 0xE400000000000000)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        goto LABEL_19;
      }

LABEL_10:
      v26 += 2;
      ++v23;
      if (v24 + v23 == 1)
      {
        goto LABEL_24;
      }
    }

    v29 = 1701667182;
LABEL_19:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v63 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AFC07A2C(0, v25[2] + 1, 1);
      v25 = v63;
    }

    v34 = v25[2];
    v33 = v25[3];
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      sub_1AFC07A2C(v33 > 1, v34 + 1, 1);
      v35 = v34 + 1;
      v25 = v63;
    }

    v25[2] = v35;
    v36 = &v25[4 * v34];
    v36[4] = v29;
    *(v36 + 5) = v61;
    v36[7] = v30;
  }

  while (v24 + v23);
LABEL_24:

  if (!v25[2])
  {

    v41 = a1[3];
    v75 = a1[2];
    v76 = v41;
    v77 = *(a1 + 8);
    v42 = a1[1];
    v73 = *a1;
    v74 = v42;
    v43 = sub_1AFAE5C18(0xD000000000000023, 0x80000001AFF46B60);
    v45 = v44;
    sub_1AFAF5454();
    swift_allocError();
    *v46 = v43;
    v46[1] = v45;
    swift_willThrow();
    sub_1AF914F8C(v60);
    goto LABEL_7;
  }

  v38 = v25[6];
  v37 = v25[7];

  v39 = a1[3];
  v78[2] = a1[2];
  v78[3] = v39;
  v79 = *(a1 + 8);
  v40 = a1[1];
  v78[0] = *a1;
  v78[1] = v40;
  sub_1AFAF541C(v78, &v63);
  sub_1AFAF0708(v78, v38, v37);
  v47 = a1[3];
  v65 = a1[2];
  v66 = v47;
  v67 = *(a1 + 8);
  v48 = a1[1];
  v63 = *a1;
  v64 = v48;
  sub_1AFAF53E8(&v63);
  sub_1AFAF53E8(v78);
  if (v60 >> 61 == 5)
  {
    result = sub_1AF914F8C(v60);
    v49 = 4;
    v50 = v57;
    v51 = v58;
    v52 = v59;
    goto LABEL_31;
  }

  sub_1AF90E730(v60);
  v51 = v58;
  if (v53)
  {
    memset(v62, 0, sizeof(v62));
    v38 = sub_1AF493834(v53, v62, v38, v37, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0, 0, &type metadata for MaterialParameters, v53, &off_1F253F520);
    sub_1AF914F8C(v60);

    result = sub_1AFAF5528(v62, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, v54);
    v37 = 0;
    v50 = 0;
    v52 = 0;
    v49 = 3;
LABEL_31:
    v55 = v71;
    a1[2] = v70;
    a1[3] = v55;
    *(a1 + 8) = v72;
    v56 = v69;
    *a1 = v68;
    a1[1] = v56;
    *v51 = v38;
    *(v51 + 8) = v37;
    *(v51 + 16) = v50;
    *(v51 + 24) = v52;
    *(v51 + 32) = v49;
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
    v94 = v60;
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFAF2328(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746165706572 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F745F706D616C63 && a2 == 0xED00006F72657A5FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F745F706D616C63 && a2 == 0xED0000656764655FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D5F746165706572 && a2 == 0xED0000726F727269 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);

    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF46BF0);
    sub_1AFAF5454();
    swift_allocError();
    *v6 = 39;
    v6[1] = 0xE100000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_1AFAF252C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7473657261656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261656E696CLL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else
  {
    sub_1AFDFE218();

    MEMORY[0x1B2718AE0](a1, a2);

    MEMORY[0x1B2718AE0](0xD00000000000001CLL, 0x80000001AFF46C10);
    sub_1AFAF5454();
    swift_allocError();
    *v6 = 39;
    v6[1] = 0xE100000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_1AFAF2688@<X0>(__int128 *a1@<X0>, char a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v11 = swift_allocObject();
  v13 = *a1;
  v344 = a1[1];
  v12 = v344;
  v14 = a1[3];
  v345 = a1[2];
  v346 = v14;
  v348 = a1;
  v347 = *(a1 + 8);
  v15 = v347;
  v343 = v13;
  *(v11 + 48) = v345;
  *(v11 + 64) = v14;
  *(v11 + 80) = v15;
  *(v11 + 16) = v13;
  *(v11 + 32) = v12;
  sub_1AFAF541C(&v343, &v233);
  sub_1AFAE5E1C(v238);
  sub_1AFAF54A8(v238);
  v16 = v238[0];
  if (v238[0] != 5 && v238[0] != 6 && v238[0] != 1)
  {
    v29 = *(v11 + 32);
    v338 = *(v11 + 16);
    v339 = v29;
    v30 = *(v11 + 64);
    v340 = *(v11 + 48);
    v341 = v30;
    v342 = *(v11 + 80);
    v31 = *(&v338 + 1);
    v32 = v339;
    v33 = 0xE000000000000000;
    *&v233 = 0;
    *(&v233 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v233 = 0xD00000000000001ELL;
    *(&v233 + 1) = 0x80000001AFF464D0;
    if (v32 == *(&v32 + 1) >> 1)
    {
      v34 = 0;
    }

    else
    {
      v48 = *(v31 + 40 * v32 + 8);

      v49 = sub_1AF9AAD70(v48);
      v51 = v50;
      v53 = v52;
      v55 = v54;

      v56 = MEMORY[0x1B27189E0](v49, v51, v53, v55);
      v33 = v57;

      v34 = v56;
    }

    MEMORY[0x1B2718AE0](v34, v33);

    v59 = *(&v233 + 1);
    v58 = v233;
    goto LABEL_14;
  }

  v225 = a2;
  v228 = a3;
  v231 = a5;
  v17 = a4 < 5u;
  v18 = *(v11 + 16);
  v334 = *(v11 + 32);
  v19 = *(v11 + 64);
  v335 = *(v11 + 48);
  v336 = v19;
  v337 = *(v11 + 80);
  v333 = v18;
  v20 = sub_1AFAE891C(0xEu);
  if (v5)
  {
  }

  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = a4;
  v28 = v23;
  v224 = v27;
  if (sub_1AFAE6C5C(0x6F43747069726373, 0xED0000747865746ELL, v20, v21, v22, v23) & 1) != 0 || (sub_1AFAE6C5C(0x635F747069726373, 0xEE00747865746E6FLL, v24, v25, v26, v28))
  {

    sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);
    v35 = v348;
    v36 = v348[3];
    v235 = v348[2];
    v236 = v36;
    v237 = *(v348 + 8);
    v37 = v348[1];
    v233 = *v348;
    v234 = v37;
    sub_1AFAF53E8(&v233);

    sub_1AFAE5E1C(v239);
    sub_1AFAF54A8(v239);
    v38 = 0;
    v39 = 1;
    v40 = 0xF000000000000007;
    v41 = 0x8000000000000000;
LABEL_10:
    v42 = 1;
LABEL_11:
    v43 = *(v11 + 64);
    v235 = *(v11 + 48);
    v236 = v43;
    v237 = *(v11 + 80);
    v44 = *(v11 + 32);
    v233 = *(v11 + 16);
    v234 = v44;
    sub_1AFAF541C(&v233, v232);

    v46 = v236;
    v35[2] = v235;
    v35[3] = v46;
    *(v35 + 8) = v237;
    v47 = v234;
    *v35 = v233;
    v35[1] = v47;
    *v231 = v41;
    *(v231 + 8) = v39;
    *(v231 + 16) = v40;
    *(v231 + 24) = v38;
    *(v231 + 32) = v42;
    return result;
  }

  v64 = v17 & (6u >> v224);
  if (v16 == 1)
  {
    sub_1AFAEA414(v11 + 16, 1, 1, &v233);
    v65 = *(&v234 + 1);
    v66 = v236;
    v226 = v237;
    v67 = BYTE1(v237);
    v68 = v348[3];
    v235 = v348[2];
    v236 = v68;
    v237 = *(v348 + 8);
    v69 = v348[1];
    v233 = *v348;
    v234 = v69;
    sub_1AFAF53E8(&v233);
    v232[0] = 35;
    v232[1] = 0xE100000000000000;
    MEMORY[0x1B2718AE0](v66, *(&v66 + 1));

    v70 = swift_allocObject();
    *(v70 + 16) = v65;
    *(v70 + 24) = 35;
    *(v70 + 32) = 0xE100000000000000;
    if ((v64 | v228) & 1) != 0 && ((v226 & 2) == 0 ? (v71 = 1) : (v71 = v67), (v71))
    {
      v39 = 1;
    }

    else
    {
      v39 = 7;
    }

    v38 = 0;
    v41 = v70 | 0x3000000000000004;
LABEL_34:
    v42 = 1;
    v40 = 0xF000000000000007;
    v35 = v348;
    goto LABEL_11;
  }

  if (sub_1AFAE6C5C(0x6E69746C697562, 0xE700000000000000, v24, v25, v26, v28))
  {

    sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

    sub_1AFAE5E1C(v240);
    sub_1AFAF54A8(v240);
    sub_1AFAE59B0(2u);

    sub_1AFAEB098((v11 + 16), v224, &v241);
    v35 = v348;
    v72 = v348[3];
    v235 = v348[2];
    v236 = v72;
    v237 = *(v348 + 8);
    v73 = v348[1];
    v233 = *v348;
    v234 = v73;
    sub_1AFAF53E8(&v233);
    v42 = v245;
    v40 = v243;
    v38 = v244;
    v39 = v242;
    v41 = v241;
    goto LABEL_11;
  }

  if ((sub_1AFAE6C5C(0x72657474696D65, 0xE700000000000000, v24, v25, v26, v28) & 1) == 0)
  {
    if (sub_1AFAE6C5C(0x656C636974726170, 0xE800000000000000, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      if (v228)
      {
        sub_1AFAE5E1C(v248);
        sub_1AFAF54A8(v248);
        sub_1AFAE59B0(2u);

        v86 = sub_1AFAE9188(v11 + 16);
        if (v86 == 0x7865646E69 && v87 == 0xE500000000000000 || (v140 = v64, v141 = v86, v142 = v87, (sub_1AFDFEE28() & 1) != 0))
        {

          if (v225 == 2)
          {
            v35 = v348;
            v143 = v348[3];
            v235 = v348[2];
            v236 = v143;
            v237 = *(v348 + 8);
            v144 = v348[1];
            v233 = *v348;
            v234 = v144;
            sub_1AFAF53E8(&v233);
            v38 = 0;
            v39 = 1;
            v40 = 0xF000000000000007;
            v41 = 0x8000000000000010;
            goto LABEL_10;
          }

          v150 = *(v11 + 64);
          v275 = *(v11 + 48);
          v276 = v150;
          v277 = *(v11 + 80);
          v151 = *(v11 + 32);
          v273 = *(v11 + 16);
          v274 = v151;
          v109 = 0xD000000000000038;
          v110 = 0x80000001AFF46720;
          goto LABEL_94;
        }

        sub_1AF701F04(v141, v142, &v249);

        v152 = v250;
        if (v250)
        {
          v227 = v249;
          v229 = v251;
          v153 = sub_1AFAE9034(&unk_1F2500CA8);
          sub_1AF585778(&unk_1F2500CC8);
          v177 = sub_1AFAE9D30(v11 + 16, 1, v153);

          sub_1AFAE55E4(0x6563617073, 0xE500000000000000, v177);
          v179 = v178;
          v181 = v180;

          if (!v181)
          {
            v197 = 5;
            goto LABEL_114;
          }

          v182 = sub_1AFAEAD00(v179, v181);
          v197 = v182;

          if ((v224 - 1) >= 2u)
          {
            v218 = *(v11 + 64);
            v285 = *(v11 + 48);
            v286 = v218;
            v287 = *(v11 + 80);
            v219 = *(v11 + 32);
            v283 = *(v11 + 16);
            v284 = v219;
            v220 = sub_1AFAE5C18(0xD00000000000003DLL, 0x80000001AFF46680);
            v222 = v221;
            sub_1AFAF5454();
            swift_allocError();
            *v223 = v220;
            v223[1] = v222;
            swift_willThrow();
            v262[0] = v227;
            v262[1] = v152;
            v213 = v262;
            goto LABEL_134;
          }

          sub_1AFDFDFD8();
          if (swift_conformsToProtocol2())
          {
            if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
            {
              v207 = *(v11 + 64);
              v280 = *(v11 + 48);
              v281 = v207;
              v282 = *(v11 + 80);
              v208 = *(v11 + 32);
              v278 = *(v11 + 16);
              v279 = v208;
              v209 = sub_1AFAE5C18(0xD000000000000055, 0x80000001AFF466C0);
              v211 = v210;
              sub_1AFAF5454();
              swift_allocError();
              *v212 = v209;
              v212[1] = v211;
              swift_willThrow();
              v261[0] = v227;
              v261[1] = v152;
              v213 = v261;
LABEL_134:
              sub_1AF585778(v213);
            }

LABEL_114:
            v198 = v348;
            v199 = v348[3];
            v235 = v348[2];
            v236 = v199;
            v237 = *(v348 + 8);
            v200 = v348[1];
            v233 = *v348;
            v234 = v200;
            sub_1AFAF53E8(&v233);
            v201 = swift_allocObject();
            v38 = 0;
            *(v201 + 16) = v227;
            *(v201 + 24) = v152;
            v35 = v198;
            *(v201 + 32) = v229;
            *(v201 + 40) = v252;
            *(v201 + 56) = v253;
            *(v201 + 60) = v197;
            if (v140)
            {
              v39 = 1;
            }

            else
            {
              v39 = 3;
            }

            v41 = v201 | 0x5000000000000000;
            v42 = 1;
            v40 = 0xF000000000000007;
            goto LABEL_11;
          }

          __break(1u);
LABEL_136:
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v164 = *(v11 + 32);
        v288 = *(v11 + 16);
        v289 = v164;
        v165 = *(v11 + 64);
        v290 = *(v11 + 48);
        v291 = v165;
        v292 = *(v11 + 80);
        *&v233 = 0xD00000000000001BLL;
        *(&v233 + 1) = 0x80000001AFF46660;
        if (v289 == *(&v289 + 1) >> 1)
        {
          v162 = 0;
          v163 = 0xE000000000000000;
        }

        else
        {
          v183 = *(*(&v288 + 1) + 40 * v289 + 8);

          v184 = sub_1AF9AAD70(v183);
          v186 = v185;
          v188 = v187;
          v190 = v189;

          v162 = MEMORY[0x1B27189E0](v184, v186, v188, v190);
          v163 = v191;
        }

        goto LABEL_102;
      }

      v107 = *(v11 + 64);
      v295 = *(v11 + 48);
      v296 = v107;
      v297 = *(v11 + 80);
      v108 = *(v11 + 32);
      v293 = *(v11 + 16);
      v294 = v108;
      v109 = 0xD000000000000031;
      v110 = 0x80000001AFF46620;
LABEL_94:
      v156 = sub_1AFAE5C18(v109, v110);
      v158 = v157;
      sub_1AFAF5454();
      swift_allocError();
      *v159 = v156;
      v159[1] = v158;
      goto LABEL_15;
    }

    if (sub_1AFAE6C5C(0x695F786574726576, 0xE90000000000006ELL, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      if (v224 == 2)
      {
        sub_1AFAE5E1C(v254);
        sub_1AFAF54A8(v254);
        v124 = sub_1AFAEFCA4((v11 + 16));
        v35 = v348;
        v125 = v348[3];
        v235 = v348[2];
        v236 = v125;
        v237 = *(v348 + 8);
        v126 = v348[1];
        v233 = *v348;
        v234 = v126;
        sub_1AFAF53E8(&v233);
        v127 = swift_allocObject();
        v38 = 0;
        v128 = v124;
        v41 = v127 | 0x7000000000000000;
        *(v127 + 16) = v128;
        *(v127 + 24) = 0;
        *(v127 + 32) = 0;
        *(v127 + 40) = 0;
        v39 = 1;
        v40 = 0xF000000000000007;
        v42 = 1;
        *(v127 + 48) = 0;
        goto LABEL_11;
      }

      v114 = *(v11 + 64);
      v300 = *(v11 + 48);
      v301 = v114;
      v302 = *(v11 + 80);
      v115 = *(v11 + 32);
      v298 = *(v11 + 16);
      v299 = v115;
      v109 = 0xD000000000000030;
      v110 = 0x80000001AFF465E0;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x6F5F786574726576, 0xEA00000000007475, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      sub_1AFAE5E1C(v255);
      sub_1AFAF54A8(v255);
      if (v224 <= 2u && v224)
      {
        v95 = sub_1AFAF0834((v11 + 16));
        v97 = v96;
        v99 = v98;
        v35 = v348;
        v100 = v348[3];
        v235 = v348[2];
        v236 = v100;
        v237 = *(v348 + 8);
        v101 = v348[1];
        v233 = *v348;
        v234 = v101;
        sub_1AFAF53E8(&v233);
        v102 = swift_allocObject();
        v38 = 0;
        *(v102 + 16) = v95;
        *(v102 + 24) = v97;
        *(v102 + 32) = v99;
        *(v102 + 40) = 0;
        if (v224 == 1)
        {
          v39 = 1;
          v41 = v102 | 0x7000000000000000;
          v40 = 0xF000000000000007;
          v42 = 1;
        }

        else
        {
          v42 = 1;
          v41 = v102 | 0x7000000000000000;
          v40 = 0xF000000000000007;
          v39 = 3;
        }

        *(v102 + 48) = 1;
        goto LABEL_11;
      }

      v120 = *(v11 + 64);
      v305 = *(v11 + 48);
      v306 = v120;
      v307 = *(v11 + 80);
      v121 = *(v11 + 32);
      v303 = *(v11 + 16);
      v304 = v121;
      v109 = 0xD00000000000002ALL;
      v110 = 0x80000001AFF465B0;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x746E656D67617266, 0xEB000000006E695FLL, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      sub_1AFAE5E1C(v256);
      sub_1AFAF54A8(v256);
      if (v224 == 1)
      {
        v103 = sub_1AFAF1160((v11 + 16));
        v35 = v348;
        v104 = v348[3];
        v235 = v348[2];
        v236 = v104;
        v237 = *(v348 + 8);
        v105 = v348[1];
        v233 = *v348;
        v234 = v105;
        sub_1AFAF53E8(&v233);
        v106 = swift_allocObject();
        v38 = 0;
        *(v106 + 16) = v103;
        *(v106 + 24) = 0;
        *(v106 + 32) = 0;
        *(v106 + 40) = 0;
        v41 = v106 | 0x7000000000000000;
        v39 = 1;
        v40 = 0xF000000000000007;
        v42 = 1;
        *(v106 + 48) = 2;
        goto LABEL_11;
      }

      v133 = *(v11 + 64);
      v310 = *(v11 + 48);
      v311 = v133;
      v312 = *(v11 + 80);
      v134 = *(v11 + 32);
      v308 = *(v11 + 16);
      v309 = v134;
      v109 = 0xD000000000000032;
      v110 = 0x80000001AFF46570;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x746E656D67617266, 0xEC00000074756F5FLL, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      sub_1AFAE5E1C(v257);
      sub_1AFAF54A8(v257);
      if (v224 == 1)
      {
        sub_1AFAF15DC(v11 + 16);
        v35 = v348;
        v111 = v348[3];
        v235 = v348[2];
        v236 = v111;
        v237 = *(v348 + 8);
        v112 = v348[1];
        v233 = *v348;
        v234 = v112;
        sub_1AFAF53E8(&v233);
        v113 = swift_allocObject();
        v38 = 0;
        v42 = 1;
        *(v113 + 16) = 1;
        *(v113 + 24) = 0;
        *(v113 + 32) = 0;
        *(v113 + 40) = 0;
        v41 = v113 | 0x7000000000000000;
        v40 = 0xF000000000000007;
        v39 = 3;
        *(v113 + 48) = 6;
        goto LABEL_11;
      }

      v145 = *(v11 + 64);
      v315 = *(v11 + 48);
      v316 = v145;
      v317 = *(v11 + 80);
      v146 = *(v11 + 32);
      v313 = *(v11 + 16);
      v314 = v146;
      v109 = 0xD000000000000032;
      v110 = 0x80000001AFF46570;
      goto LABEL_94;
    }

    if (sub_1AFAE6C5C(0x6C6169726574616DLL, 0xE800000000000000, v24, v25, v26, v28))
    {

      sub_1AFAE67C4(5, v24, v25, v26, v28, v16, v11);

      if ((v224 - 1) <= 1u)
      {
        sub_1AFAF1CF0((v11 + 16), v258);
        v35 = v348;
        v116 = v348[3];
        v235 = v348[2];
        v236 = v116;
        v237 = *(v348 + 8);
        v117 = v348[1];
        v233 = *v348;
        v234 = v117;
        sub_1AFAF53E8(&v233);
        v118 = swift_allocObject();
        v38 = 0;
        v119 = v258[1];
        *(v118 + 16) = v258[0];
        *(v118 + 32) = v119;
        *(v118 + 48) = v259;
        v41 = v118 | 0x7000000000000000;
        goto LABEL_45;
      }

      v154 = *(v11 + 16);
      v319 = *(v11 + 32);
      v155 = *(v11 + 64);
      v320 = *(v11 + 48);
      v321 = v155;
      v322 = *(v11 + 80);
      v318 = v154;
      v109 = 0xD00000000000002DLL;
      v110 = 0x80000001AFF46540;
      goto LABEL_94;
    }

    if ((sub_1AFAE6C5C(0x3165727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0 && (sub_1AFAE6C5C(0x3265727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0 && (sub_1AFAE6C5C(0x3365727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0)
    {
      v160 = *(v11 + 32);
      v328 = *(v11 + 16);
      v329 = v160;
      v161 = *(v11 + 64);
      v330 = *(v11 + 48);
      v331 = v161;
      v332 = *(v11 + 80);
      *&v233 = 0xD00000000000001BLL;
      *(&v233 + 1) = 0x80000001AFF464F0;
      if (v329 == *(&v329 + 1) >> 1)
      {
        v162 = 0;
        v163 = 0xE000000000000000;
      }

      else
      {
        v168 = *(*(&v328 + 1) + 40 * v329 + 8);

        v169 = sub_1AF9AAD70(v168);
        v171 = v170;
        v173 = v172;
        v175 = v174;

        v162 = MEMORY[0x1B27189E0](v169, v171, v173, v175);
        v163 = v176;
      }

LABEL_102:
      MEMORY[0x1B2718AE0](v162, v163);

      v59 = *(&v233 + 1);
      v58 = v233;
LABEL_14:
      v60 = sub_1AFAE5C18(v58, v59);
      v62 = v61;

      sub_1AFAF5454();
      swift_allocError();
      *v63 = v60;
      v63[1] = v62;
LABEL_15:
      swift_willThrow();
    }

    sub_1AFAE5E1C(v260);
    sub_1AFAF54A8(v260);
    v129 = sub_1AFAE9034(&unk_1F2500CD8);
    swift_arrayDestroy();
    v147 = sub_1AFAE9D30(v11 + 16, 1, v129);

    if (!*(v147 + 2))
    {
LABEL_89:

      v148 = *(v11 + 16);
      v324 = *(v11 + 32);
      v149 = *(v11 + 64);
      v325 = *(v11 + 48);
      v326 = v149;
      v327 = *(v11 + 80);
      v323 = v148;
      v109 = 0xD000000000000025;
      v110 = 0x80000001AFF46510;
      goto LABEL_94;
    }

    if (*(v147 + 5))
    {

      goto LABEL_89;
    }

    v166 = *(v147 + 7);
    v230 = *(v147 + 6);
    if (sub_1AFAE6C5C(0x3165727574786574, 0xE900000000000064, v24, v25, v26, v28))
    {
      v167 = 0;
    }

    else
    {
      if ((sub_1AFAE6C5C(0x3265727574786574, 0xE900000000000064, v24, v25, v26, v28) & 1) == 0)
      {
        v192 = sub_1AFAE6C5C(0x3365727574786574, 0xE900000000000064, v24, v25, v26, v28);
        v167 = 2;
        swift_bridgeObjectRetain_n();

        if ((v192 & 1) == 0)
        {
          goto LABEL_136;
        }

LABEL_110:

        sub_1AFAE55E4(0x5F73736572646461, 0xEC00000065646F6DLL, v147);
        if (v194)
        {
          v195 = v193;
          v196 = v194;

          v202 = sub_1AFAF2328(v195, v196);
        }

        else
        {
          v202 = 2;
        }

        sub_1AFAE55E4(0x6D5F7265746C6966, 0xEB0000000065646FLL, v147);
        v204 = v203;
        v206 = v205;

        v42 = 1;
        if (v206)
        {

          v214 = sub_1AFAF252C(v204, v206);
        }

        else
        {
          v214 = 1;
        }

        v35 = v348;
        v215 = v348[3];
        v235 = v348[2];
        v236 = v215;
        v237 = *(v348 + 8);
        v216 = v348[1];
        v233 = *v348;
        v234 = v216;
        sub_1AFAF53E8(&v233);
        v217 = swift_allocObject();
        v38 = 0;
        *(v217 + 16) = v230;
        *(v217 + 24) = v166;
        *(v217 + 32) = 1;
        *(v217 + 33) = v167;
        *(v217 + 34) = v202;
        v41 = v217 | 0x4000000000000000;
        v40 = 0xF000000000000007;
        v39 = 3;
        *(v217 + 35) = v214 & 1;
        goto LABEL_11;
      }

      v167 = 1;
    }

    goto LABEL_110;
  }

  if (v16 != 5)
  {
    sub_1AFAE5E1C(v247);
    sub_1AFAF54A8(v247);
    sub_1AFAE59B0(8u);
    v35 = v348;

    v88 = sub_1AFAE9188(v11 + 16);
    v90 = v89;
    v91 = v88;
    sub_1AFAE59B0(9u);

    if ((v224 - 1) >= 2u)
    {
      v130 = v35[3];
      v235 = v35[2];
      v236 = v130;
      v237 = *(v35 + 8);
      v131 = v35[1];
      v233 = *v35;
      v234 = v131;
      sub_1AFAF53E8(&v233);
      v132 = swift_allocObject();
      v38 = 0;
      *(v132 + 16) = v91;
      *(v132 + 24) = v90;
      v39 = 1;
      *(v132 + 32) = 1;
      v41 = v132 | 0x4000000000000004;
      goto LABEL_46;
    }

    v122 = *(v11 + 64);
    v270 = *(v11 + 48);
    v271 = v122;
    v272 = *(v11 + 80);
    v123 = *(v11 + 32);
    v268 = *(v11 + 16);
    v269 = v123;
    v109 = 0xD000000000000043;
    v110 = 0x80000001AFF46760;
    goto LABEL_94;
  }

  sub_1AFAE5E1C(v246);
  sub_1AFAF54A8(v246);
  v74 = *(v11 + 32);
  v35 = v348;
  if (v74 == *(v11 + 40) >> 1 || *(*(v11 + 24) + 40 * v74) != 2)
  {
    v92 = v348[3];
    v235 = v348[2];
    v236 = v92;
    v237 = *(v348 + 8);
    v93 = v348[1];
    v233 = *v348;
    v234 = v93;
    sub_1AFAF53E8(&v233);
    v94 = swift_allocObject();
    v38 = 0;
    *(v94 + 16) = 0;
    *(v94 + 24) = 0;
    *(v94 + 32) = 2;
    v41 = v94 | 0x4000000000000004;
LABEL_45:
    v39 = 1;
LABEL_46:
    v40 = 0xF000000000000007;
    goto LABEL_10;
  }

  sub_1AFAE59B0(2u);

  sub_1AFAEA414(v11 + 16, 0, 1, &v233);
  v75 = v64;
  v76 = *(&v234 + 1);
  v77 = v237;
  v78 = BYTE1(v237);
  *&v233 = 0x72657474696D6524;
  *(&v233 + 1) = 0xE90000000000002ELL;
  MEMORY[0x1B2718AE0](v236, *(&v236 + 1));

  v79 = *(&v233 + 1);
  if ((v224 - 1) >= 2u)
  {
    v135 = v233;
    v136 = v348[3];
    v235 = v348[2];
    v236 = v136;
    v237 = *(v348 + 8);
    v137 = v348[1];
    v233 = *v348;
    v234 = v137;
    sub_1AFAF53E8(&v233);
    v138 = swift_allocObject();
    *(v138 + 16) = v76;
    *(v138 + 24) = v135;
    *(v138 + 32) = v79;
    if ((v75 | v228) & 1) != 0 && ((v77 & 2) == 0 ? (v139 = 1) : (v139 = v78), (v139))
    {
      v39 = 1;
    }

    else
    {
      v39 = 3;
    }

    v38 = 0;
    v41 = v138 | 0x3000000000000004;
    goto LABEL_34;
  }

  v80 = *(v11 + 64);
  v265 = *(v11 + 48);
  v266 = v80;
  v267 = *(v11 + 80);
  v81 = *(v11 + 32);
  v263 = *(v11 + 16);
  v264 = v81;
  v82 = sub_1AFAE5C18(0xD000000000000047, 0x80000001AFF467B0);
  v84 = v83;
  sub_1AFAF5454();
  swift_allocError();
  *v85 = v82;
  v85[1] = v84;
  swift_willThrow();
}

char *sub_1AFAF4338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6, unsigned int a7)
{
  result = sub_1AFAE6F94(a1, a2, a3, a4, a5);
  if (v7)
  {
    return result;
  }

  sub_1AFDFD1F8();
  v12 = sub_1AFDFDE38();
  v16 = sub_1AFAE53E0(v12, v13, v14, v15, 0);
  v65 = a5;

  v17 = *(v16 + 2);

  v18 = 0;
  v19 = v16 + 32;
  v20 = 1;
  v21 = (2 * v17) | 1;
  *&v92 = v16;
  *(&v92 + 1) = v16 + 32;
  *&v93 = 0;
  *(&v93 + 1) = v21;
  v103 = MEMORY[0x1E69E7CC0];
  memset(v94, 0, sizeof(v94));
  v95 = 0;
  v63 = a6;
  for (i = a7; ; a7 = i)
  {
    v22 = v21 >> 1;
    if (v18 != v21 >> 1 && v19[40 * v18] == 16)
    {
      break;
    }

    if (v20)
    {
      v23 = v65;
    }

    else
    {
      sub_1AFAE59B0(0);
      v23 = v65;

      v21 = *(&v93 + 1);
      v18 = v93;
      v22 = *(&v93 + 1) >> 1;
      if (v93 != *(&v93 + 1) >> 1)
      {
        v19 = *(&v92 + 1);
        if (*(*(&v92 + 1) + 40 * v93) == 16)
        {
          break;
        }
      }
    }

    v89 = v94[0];
    v90 = v94[1];
    v91 = v95;
    v87 = v92;
    v88 = v93;
    v83 = v93;
    v84 = v94[0];
    v85 = v94[1];
    v86 = v95;
    v82 = v92;
    if (v23 == 3)
    {
      sub_1AFAF541C(&v87, v80);

LABEL_12:
      sub_1AFAE59B0(0xEu);

      sub_1AFAE59B0(0xEu);

      sub_1AFAE59B0(3u);

      sub_1AFAF2688(&v82, v23, a6 & 1, a7, v96);
      v25 = v96;
      goto LABEL_14;
    }

    v24 = sub_1AFDFEE28();
    sub_1AFAF541C(&v87, v80);

    if (v24)
    {
      goto LABEL_12;
    }

    sub_1AFAF2688(&v82, v23, a6 & 1, a7, v97);
    sub_1AFAE59B0(0xEu);

    v25 = v97;
LABEL_14:
    v80[1] = v93;
    v80[2] = v94[0];
    v80[3] = v94[1];
    v26 = v25[32];
    v27 = *(v25 + 2);
    v28 = *(v25 + 3);
    v29 = v25[8];
    v30 = *v25;
    v81 = v95;
    v80[0] = v92;
    v68 = v27;
    v67 = v29;
    v66 = v30;
    if (v93 != *(&v93 + 1) >> 1)
    {
    }

    sub_1AFAF53E8(v80);
    v31 = sub_1AFDFD1F8();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v73 = v84;
    v74 = v85;
    v75 = v86;
    v71 = v82;
    v72 = v83;
    v94[0] = v84;
    v94[1] = v85;
    v95 = v86;
    v92 = v82;
    v93 = v83;
    v77 = v26;
    v79 = v86;
    v78[3] = v85;
    v78[2] = v84;
    v78[1] = v83;
    v78[0] = v82;
    sub_1AFAF541C(&v71, v70);
    sub_1AFAF53E8(v78);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v38 = v103;
    }

    else
    {
      v38 = sub_1AF427324(0, *(v103 + 2) + 1, 1, v103);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_1AF427324(v39 > 1, v40 + 1, 1, v38);
    }

    v20 = 0;
    v19 = *(&v71 + 1);
    v21 = *(&v72 + 1);
    v18 = v72;
    *(v38 + 2) = v40 + 1;
    v103 = v38;
    v41 = &v38[72 * v40];
    *(v41 + 4) = v66;
    v41[40] = v67;
    v42 = *(v70 + 3);
    *(v41 + 41) = v70[0];
    *(v41 + 11) = v42;
    *(v41 + 6) = v68;
    *(v41 + 7) = v28;
    v41[64] = v77;
    v43 = *v76;
    *(v41 + 17) = *&v76[3];
    *(v41 + 65) = v43;
    *(v41 + 9) = v31;
    *(v41 + 10) = v33;
    *(v41 + 11) = v35;
    *(v41 + 12) = v37;
    a6 = v63;
  }

  if (v18 == v22)
  {

    v98 = v92;
    v99 = v93;
    v100 = v94[0];
    v101 = v94[1];
    v102 = v95;
    v44 = v93;
    v45 = 0xE000000000000000;
    *&v87 = 0;
    *(&v87 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v82 = 0xD000000000000017;
    *(&v82 + 1) = 0x80000001AFF464B0;
    if (v44 == *(&v44 + 1) >> 1)
    {
      v46 = 0;
    }

    else
    {

      v50 = sub_1AFDFD1F8();
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v57 = MEMORY[0x1B27189E0](v50, v52, v54, v56);
      v45 = v58;

      v46 = v57;
    }

    MEMORY[0x1B2718AE0](v46, v45);

    v59 = sub_1AFAE5C18(v82, *(&v82 + 1));
    v61 = v60;

    sub_1AFAF5454();
    swift_allocError();
    *v62 = v59;
    v62[1] = v61;
    swift_willThrow();
    v89 = v94[0];
    v90 = v94[1];
    v91 = v95;
    v87 = v92;
    v88 = v93;
    return sub_1AFAF53E8(&v87);
  }

  else
  {
    v47 = &v19[40 * v18];
    v69 = *(v47 + 8);
    v49 = *(v47 + 3);
    v48 = *(v47 + 4);
    *(&v92 + 1) = v19;
    *&v93 = v18 + 1;
    *(&v93 + 1) = v21;

    *(v94 + 8) = v69;
    *&v94[0] = 16;
    *(&v94[1] + 1) = v49;
    v95 = v48;
    v91 = v48;
    v87 = v92;
    v88 = v93;
    v89 = v94[0];
    v90 = v94[1];
    sub_1AFAF53E8(&v87);
    return v103;
  }
}

uint64_t sub_1AFAF4B48@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = (a1 >> 59) & 0x1E | (a1 >> 2) & 1;
  if (v6 <= 8)
  {
    if (v6 >= 8)
    {
      goto LABEL_3;
    }

    goto LABEL_6;
  }

  if (v6 >= 14)
  {
    if (v6 != 14)
    {
      if (v6 != 16)
      {
        goto LABEL_63;
      }

      if (a1 == 0x8000000000000000)
      {
        sub_1AFA9EF20(0x8000000000000000);
        if (sub_1AFADB4E4(v25, 2u))
        {
          goto LABEL_28;
        }

        v12 = 0x8000000000000000;
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v19 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v21 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v20 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
    v22 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    if (v22 <= 2)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30))
      {
        v26 = v22 == 1;
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        sub_1AFABCED4(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20));
      }
    }

    else
    {
      if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x30) <= 4u)
      {
        if (v22 != 3)
        {

          v15 = 0;
          v16 = 0xE500000000000000;
          v17 = 0x74736E6F63;
          v14 = v20;
          result = v21;
          goto LABEL_16;
        }

        sub_1AFA9EF20(a1);
        if (sub_1AFADB4E4(v23, 2u))
        {
          if ((a2 & 2) != 0)
          {
            v24 = MEMORY[0x1E69E6878];
          }

          else
          {
            v24 = MEMORY[0x1E69E6270];
          }
        }

        else
        {
          sub_1AFA9EF20(a1);
        }

        v35 = sub_1AFAF9348(v24, 2u);
        v42 = v41;
        sub_1AFABCF1C(v18, v19, v21, v20, 3);
        v14 = v42;
        goto LABEL_54;
      }

      if (v22 == 5)
      {
        if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) - 20 >= 3)
        {
          if (*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10) != 18)
          {
LABEL_3:
            sub_1AFA9EF20(a1);
            if (sub_1AFADB4E4(v7, 2u))
            {
LABEL_28:
              if ((a2 & 2) != 0)
              {
                v10 = MEMORY[0x1E69E6878];
              }

              else
              {
                v10 = MEMORY[0x1E69E6270];
              }

              goto LABEL_13;
            }

LABEL_11:
            v12 = a1;
LABEL_12:
            sub_1AFA9EF20(v12);
            goto LABEL_13;
          }

          sub_1AFA9EF20(a1);
          if (sub_1AFADB4E4(v43, 2u))
          {
            if ((a2 & 2) != 0)
            {
              v44 = MEMORY[0x1E69E6878];
            }

            else
            {
              v44 = MEMORY[0x1E69E6270];
            }
          }

          else
          {
            sub_1AFA9EF20(a1);
          }

          result = sub_1AFAF9348(v44, 2u);
        }

        else
        {
          v27 = sub_1AFA9F610(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10));
          if (v27 >> 61 != 5)
          {
            while (1)
            {
              sub_1AF445BE4(v27);
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF46470);
              sub_1AFDFE458();
              MEMORY[0x1B2718AE0](0xD000000000000012, 0x80000001AFF46490);
LABEL_63:
              v27 = sub_1AFDFE518();
              __break(1u);
            }
          }

          v29 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v28 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
          v30 = v27;

          sub_1AF445BE4(v30);
          v14 = v28;
          result = v29;
        }

        v17 = 0;
        v15 = 0;
        v16 = 0xE000000000000000;
        goto LABEL_16;
      }
    }

    sub_1AFA9EF20(a1);
    v32 = sub_1AFADB4E4(v31, 2u);
    if ((a2 & 2) != 0)
    {
      if (v32)
      {
        v34 = MEMORY[0x1E69E6878];
      }

      else
      {
        sub_1AFA9EF20(a1);
      }

      v38 = sub_1AFAF9348(v34, 2u);
      v40 = v39;
      sub_1AFABCF1C(v18, v19, v21, v20, v22);
      v14 = v40;
      v15 = 1;
      v16 = 0xE600000000000000;
      v17 = 0x646165726874;
      result = v38;
      goto LABEL_16;
    }

    if (v32)
    {
      v33 = MEMORY[0x1E69E6270];
    }

    else
    {
      sub_1AFA9EF20(a1);
    }

    v35 = sub_1AFAF9348(v33, 2u);
    v37 = v36;
    sub_1AFABCF1C(v18, v19, v21, v20, v22);
    v14 = v37;
LABEL_54:
    v15 = 0;
    v16 = 0xE500000000000000;
    v17 = 0x74736E6F63;
    result = v35;
    goto LABEL_16;
  }

LABEL_6:
  sub_1AFA9EF20(a1);
  v9 = sub_1AFADB4E4(v8, 2u);
  if ((a2 & 2) == 0)
  {
    if (v9)
    {
      v10 = MEMORY[0x1E69E6270];
LABEL_13:
      result = sub_1AFAF9348(v10, 2u);
      v15 = 0;
      v16 = 0xE500000000000000;
      v17 = 0x74736E6F63;
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (v9)
  {
    v11 = MEMORY[0x1E69E6878];
  }

  else
  {
    sub_1AFA9EF20(a1);
  }

  result = sub_1AFAF9348(v11, 2u);
  v15 = 1;
  v16 = 0xE600000000000000;
  v17 = 0x646165726874;
LABEL_16:
  *a3 = result;
  *(a3 + 8) = v14;
  *(a3 + 16) = v17;
  *(a3 + 24) = v16;
  *(a3 + 32) = v15;
  return result;
}

uint64_t sub_1AFAF500C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a1;
  v37 = a2;
  v4 = *(a3 + 16);
  if (!v4)
  {

    return a1;
  }

  v5 = a4;

  v7 = (a3 + 72 * v4);
  v32 = v5;
  while (1)
  {
    if (!v7[3])
    {
      goto LABEL_10;
    }

    v16 = *(v7 - 5);
    v17 = *(v7 - 32);
    v18 = *(v7 - 3);
    v42 = *v7;
    if (v5 > 1u)
    {
      break;
    }

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);
    sub_1AFA9EF20(v16);
    if (sub_1AFADB4E4(v19, v5))
    {
      if ((v17 & 2) != 0)
      {
        v20 = MEMORY[0x1E69E6878];
      }

      else
      {
        v20 = MEMORY[0x1E69E6270];
      }
    }

    else
    {
      sub_1AFA9EF20(v16);
    }

    v15 = sub_1AFAF9348(v20, v5);
    v14 = v25;
    *&v35 = v15;
    *(&v35 + 1) = v25;
    sub_1AFA9EF20(v16);
    if ((sub_1AFADB4E4(v26, v5) & 1) == 0)
    {
      MEMORY[0x1B2718AE0](38, 0xE100000000000000);
      v14 = *(&v35 + 1);
      v15 = v35;
    }

LABEL_9:
    v34[0] = v15;
    v34[1] = v14;
    sub_1AF95A6E4();
    sub_1AFDFCFE8();
    sub_1AF443F24(v16);
    sub_1AF444AF4(v18);
    sub_1AF443F24(v16);
    sub_1AF444AF4(v18);

LABEL_10:
    v7 -= 9;
    if (!--v4)
    {
      return v36;
    }
  }

  if (v5 == 2)
  {
    sub_1AF443EE0(v16);
    sub_1AF444224(v18);

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);
    sub_1AFAF4B48(v16, v17, v38);
    v21 = v38[1];
    v33 = v38[0];
    v41[0] = v39;
    if ((*(&v39 + 1) & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(*(&v39 + 1)) & 0xFLL;
    }

    else
    {
      v22 = *&v41[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v35 = v39;

      sub_1AF450FE0(v41, v34);
      MEMORY[0x1B2718AE0](32, 0xE100000000000000);

      sub_1AF585778(v41);
      v24 = *(&v35 + 1);
      v23 = v35;
    }

    else
    {
      sub_1AF585778(v41);
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    if (v40)
    {
      v28 = 38;
    }

    else
    {
      v28 = 0;
    }

    if (v40)
    {
      v29 = 0xE100000000000000;
    }

    else
    {
      v29 = 0xE000000000000000;
    }

    *&v35 = v23;
    *(&v35 + 1) = v24;
    MEMORY[0x1B2718AE0](v33, v21);

    MEMORY[0x1B2718AE0](v28, v29);

    v14 = *(&v35 + 1);
    v15 = v35;
    v5 = v32;
    goto LABEL_9;
  }

  if (v5 == 3)
  {
    sub_1AF443EE0(v16);
    sub_1AF444224(v18);

    sub_1AF443EE0(v16);
    sub_1AF444224(v18);
    sub_1AFA9EF20(v16);
    if (sub_1AFADB4E4(v27, 3u))
    {
      v9 = v17 & 2;
      if ((v17 & 2) != 0)
      {
        v8 = MEMORY[0x1E69E6878];
      }

      else
      {
        v8 = MEMORY[0x1E69E6270];
      }
    }

    else
    {
      sub_1AFA9EF20(v16);
      v9 = v17 & 2;
    }

    v10 = v9 == 0;
    v11 = 0x2074756F6E69;
    if (v10)
    {
      v11 = 0;
    }

    v12 = 0xE000000000000000;
    if (!v10)
    {
      v12 = 0xE600000000000000;
    }

    *&v35 = v11;
    *(&v35 + 1) = v12;
    v13 = sub_1AFAF9348(v8, 3u);
    MEMORY[0x1B2718AE0](v13);

    v14 = *(&v35 + 1);
    v15 = v35;
    goto LABEL_9;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void *sub_1AFAF53E8(void *a1)
{
  swift_unknownObjectRelease();

  return a1;
}

unint64_t sub_1AFAF5454()
{
  result = qword_1EB642938;
  if (!qword_1EB642938)
  {
    result = swift_getWitnessTable(byte_1AFE99DEC, &type metadata for ScriptParser.Error, v0, v1);
    atomic_store(result, &qword_1EB642938);
  }

  return result;
}

unint64_t sub_1AFAF54D4()
{
  result = qword_1EB632128;
  if (!qword_1EB632128)
  {
    result = swift_getWitnessTable(asc_1AFE96FFC, &type metadata for ScriptFunction.Kind, v0, v1);
    atomic_store(result, &qword_1EB632128);
  }

  return result;
}

uint64_t sub_1AFAF5528(uint64_t a1, unint64_t *a2, uint64_t a3, double a4)
{
  sub_1AFAF5748(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AFAF5598()
{
  if (!qword_1ED726B68)
  {
    v0 = sub_1AFDFE1C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED726B68);
    }
  }
}

uint64_t sub_1AFAF55F0(uint64_t a1, uint64_t a2, double a3)
{
  sub_1AFAF5748(0, qword_1ED722118, &type metadata for Lexer.Token, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AFAF5678()
{
  result = qword_1EB642940;
  if (!qword_1EB642940)
  {
    result = swift_getWitnessTable(asc_1AFE99DAC, &type metadata for Lexer.Error, v0, v1);
    atomic_store(result, &qword_1EB642940);
  }

  return result;
}

void sub_1AFAF56CC(uint64_t a1, double a2)
{
  if (!qword_1ED722BE0)
  {
    sub_1AFAF5748(255, &qword_1ED722BE8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9280]);
    v2 = sub_1AFDFDD58();
    if (!v3)
    {
      atomic_store(v2, &qword_1ED722BE0);
    }
  }
}

void sub_1AFAF5748(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFAF5798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFAF57F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AFAF5860()
{
  result = qword_1EB630E10;
  if (!qword_1EB630E10)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E67C0], MEMORY[0x1E69E67B0], v0, v1);
    atomic_store(result, &qword_1EB630E10);
  }

  return result;
}

unint64_t sub_1AFAF58B4()
{
  result = qword_1EB630C58;
  if (!qword_1EB630C58)
  {
    sub_1AFAF57F8(255, &qword_1EB630C50, sub_1AFAF5860, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6EA0]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6EB0], v3, v0, v1);
    atomic_store(result, &qword_1EB630C58);
  }

  return result;
}

void sub_1AFAF5944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AFAF59A8(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable(MEMORY[0x1E69E9290], v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t initializeWithCopy for Lexer.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t assignWithCopy for Lexer.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithTake for Lexer.Token(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;

  return a1;
}

uint64_t destroy for ScriptParser.ParsedScriptParameter(unint64_t *a1)
{
  sub_1AF443F24(*a1);
  v2 = a1[2];
  if ((~v2 & 0xF000000000000007) != 0)
  {
    sub_1AF443F24(v2);
  }
}

uint64_t initializeWithCopy for ScriptParser.ParsedScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    sub_1AF443EE0(*(a2 + 16));
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  return a1;
}

uint64_t assignWithCopy for ScriptParser.ParsedScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  sub_1AF443EE0(*a2);
  v5 = *a1;
  *a1 = v4;
  sub_1AF443F24(v5);
  v7 = (a1 + 16);
  v6 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = v8 & 0xF000000000000007;
  if ((~v6 & 0xF000000000000007) != 0)
  {
    if (v9 == 0xF000000000000007)
    {
      sub_1AFABD940((a1 + 16));
      *v7 = *(a2 + 16);
    }

    else
    {
      sub_1AF443EE0(*(a2 + 16));
      v10 = *v7;
      *v7 = v8;
      sub_1AF443F24(v10);
    }
  }

  else
  {
    if (v9 != 0xF000000000000007)
    {
      sub_1AF443EE0(*(a2 + 16));
    }

    *v7 = v8;
  }

  v11 = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 24) = v11;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t assignWithTake for ScriptParser.ParsedScriptParameter(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_1AF443F24(v4);
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  if ((~v5 & 0xF000000000000007) != 0)
  {
    if ((~v7 & 0xF000000000000007) != 0)
    {
      *v6 = v7;
      sub_1AF443F24(v5);
      goto LABEL_6;
    }

    sub_1AFABD940((a1 + 16));
  }

  *v6 = v7;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptParser.ParsedScriptParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for ScriptParser.ParsedScriptParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

uint64_t destroy for ScriptParser.Cursor(void *a1)
{
  swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for ScriptParser.Cursor(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = a2[3];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 5);
  v3 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v3;
  swift_unknownObjectRetain();

  return a1;
}

uint64_t *assignWithCopy for ScriptParser.Cursor(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  *(a1 + 32) = *(a2 + 32);
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];

  return a1;
}

uint64_t assignWithTake for ScriptParser.Cursor(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  return a1;
}

unint64_t sub_1AFAF603C()
{
  result = qword_1EB642950;
  if (!qword_1EB642950)
  {
    result = swift_getWitnessTable(asc_1AFE99D3C, &type metadata for Lexer.TokenKind, v0, v1);
    atomic_store(result, &qword_1EB642950);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Lexer(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

double sub_1AFAF6160@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v10 = *a3;
  v11 = sub_1AFDFDFE8();
  v12 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v12;
  *(a5 + 32) = v11;
  *(a5 + 40) = v13 & 1;
  *(a5 + 42) = a4;

  return result;
}

uint64_t sub_1AFAF6214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = qword_1EB633620;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = off_1EB633628;
  v11 = sub_1AFAF6B54(a3, a4, a1, ObjectType);
  if (v11 != 1)
  {
    v12 = v11;
LABEL_13:

    return v12;
  }

  if (sub_1AFAF67A8(a2, a3, a4))
  {
    if (ObjectType == sub_1AFDFDFD8())
    {
      swift_retain_n();
      v12 = a1;
    }

    else if ((*(a4 + 8))(a2, a3, a4))
    {
      sub_1AFDFE008();
      v12 = sub_1AFDFE628();
    }

    else
    {
      v12 = 0;
    }

    os_unfair_lock_lock(v10[5]);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v10[6];
    v10[6] = 0x8000000000000000;
    sub_1AF85177C(v12, a3, a4, a1, ObjectType, isUniquelyReferenced_nonNull_native);

    v10[6] = v15;
    os_unfair_lock_unlock(v10[5]);

    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1AFAF6430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = (*(a4 + 16))(a3, a4);
  v8 = *(v7 + 16);
  if (v8)
  {
    v20 = a5;
    v9 = (v7 + 74);
    while (1)
    {
      v10 = *(v9 - 21);
      v11 = *(v9 - 17);
      v12 = *(v9 - 13);
      v13 = *(v9 - 9);
      v14 = *(v9 - 5);
      v15 = *(v9 - 2);
      v16 = *v9;
      if (v10 == a1 && v11 == a2)
      {
        break;
      }

      if (sub_1AFDFEE28())
      {
        goto LABEL_12;
      }

      v9 += 24;
      if (!--v8)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v18 = 0;
        goto LABEL_13;
      }
    }

    v10 = a1;
LABEL_12:
    v18 = v15 | (v16 << 16);

LABEL_13:
    a5 = v20;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v18 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12;
  *(a5 + 24) = v13;
  *(a5 + 32) = v14;
  *(a5 + 40) = v18;
  return result;
}

double sub_1AFAF6564@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (a3)
  {
    (*(a6 + 24))(v12, a1, a2, a3, a4, 0, a5);
  }

  else
  {
    sub_1AFAF65F4(a1, a2, a4, a5, a6, v12);
  }

  v8 = v13;
  v9 = v14;
  result = *v12;
  v11 = v12[1];
  *a7 = v12[0];
  *(a7 + 16) = v11;
  *(a7 + 32) = v8;
  *(a7 + 40) = v9;
  return result;
}

uint64_t sub_1AFAF65F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a2;
  v11 = a1;
  result = sub_1AFAF6430(a1, a2, a4, a5, v34);
  if (!*(&v34[0] + 1))
  {
    v28 = a6;
    v18 = *(a5 + 40);

    v19 = v18(a4, a5);
    v20 = *(v19 + 16);
    if (v20)
    {
      v29 = a5;
      v30 = v6;
      v32 = 0;
      v21 = (v19 + 80);
      do
      {
        v22 = *(v21 - 6);
        if (v22 > a3)
        {
          v23 = *(v21 - 3);
          v24 = *(v21 - 2);
          v25 = *(v21 - 1);
          v26 = *v21;
          v27 = v11 == *(v21 - 5) && v10 == *(v21 - 4);
          if (v27 || (sub_1AFDFEE28() & 1) != 0)
          {

            v29 = v26;
            v30 = v25;
            v32 = v22;
            v11 = v23;
            v10 = v24;
          }
        }

        v21 += 7;
        --v20;
      }

      while (v20);

      if (v32)
      {
        sub_1AFAF65F4(v11, v10, v32, v30, v29, v37);
        v31 = v37[0];
        v33 = v37[1];
        v15 = v38;
        v14 = v39;

        v17 = v31;
        v16 = v33;
        a6 = v28;
        goto LABEL_18;
      }
    }

    else
    {
    }

    a6 = v28;

    v15 = 0;
    v14 = 0;
    v17 = 0uLL;
    v16 = 0uLL;
    goto LABEL_18;
  }

  v14 = v36;
  v15 = v35;
  v16 = v34[1];
  v17 = v34[0];
LABEL_18:
  *a6 = v17;
  *(a6 + 16) = v16;
  *(a6 + 32) = v15;
  *(a6 + 40) = v14;
  return result;
}

BOOL sub_1AFAF67A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!(*(a3 + 8))())
  {
    return 1;
  }

  sub_1AFDFDFC8();
  v4 = v3;

  if (!v4)
  {
    return 1;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = sub_1AFDFCEC8();

    v8 = [v6 valueForKeyPath_];

    if (v8)
    {
      sub_1AFDFDFB8();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1AF449D40(&v10, v11);
    }

    else
    {
      swift_unknownObjectRelease();
      memset(v11, 0, sizeof(v11));
    }

    sub_1AF44CB60(v11);
    return v8 != 0;
  }

  else
  {

    swift_unknownObjectRelease();
    return 1;
  }
}

uint64_t sub_1AFAF68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](a1);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  MEMORY[0x1B271ACB0](a4);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF697C(uint64_t a1)
{
  v2 = v1[3];
  MEMORY[0x1B271ACB0](*v1);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  return MEMORY[0x1B271ACB0](v2);
}

uint64_t sub_1AFAF69EC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFE008();
  sub_1AFDFCD08();
  MEMORY[0x1B271ACB0](v3);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6A6C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[2];
  v4 = a2[3];
  v5 = a1[2];
  v6 = a1[3];
  sub_1AFDFE008();
  return MEMORY[0x1B2719A10](v5, v3) & (v6 == v4);
}

void *sub_1AFAF6ADC()
{
  type metadata accessor for ScriptKeyPathCache();
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *v1 = 0;
  *(v0 + 16) = "ScriptKeyPathCache";
  *(v0 + 24) = 18;
  *(v0 + 32) = 2;
  *(v0 + 40) = v1;
  result = sub_1AF42E9B0(MEMORY[0x1E69E7CC0]);
  *(v0 + 48) = result;
  off_1EB633628 = v0;
  return result;
}

uint64_t sub_1AFAF6B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  os_unfair_lock_lock(*(v4 + 40));
  v10 = *(v4 + 48);
  if (*(v10 + 16))
  {

    v11 = sub_1AF419CA8(a1, a2, a3, a4);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  os_unfair_lock_unlock(*(v5 + 40));
  return v13;
}

double sub_1AFAF6BFC()
{

  swift_deallocClassInstance();
  return result;
}

uint64_t ScriptKeyPathReference.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFE008();
    sub_1AFDFCD08();
    sub_1AFDFD038();
    return MEMORY[0x1B271ACB0](v2 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFE008();
    return sub_1AFDFCD08();
  }
}

uint64_t ScriptKeyPathReference.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1AFDFF288();
  if (v1 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    sub_1AFDFE008();
    sub_1AFDFCD08();
    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](v1 & 0x7FFFFFFFFFFFFFFFLL);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFE008();
    sub_1AFDFCD08();
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6DD8(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_1AFDFF288();
  ScriptKeyPathReference.hash(into:)(v4);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6E84()
{
  sub_1AFDFF288();
  v0 = sub_1AFDFDFD8();
  MEMORY[0x1B271ACB0](v0);
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF6F10(uint64_t a1)
{
  v1 = sub_1AFDFDFD8();
  MEMORY[0x1B271ACB0](v1);

  return sub_1AFDFD038();
}

uint64_t sub_1AFAF6F8C(uint64_t a1)
{
  sub_1AFDFF288();
  v1 = sub_1AFDFDFD8();
  MEMORY[0x1B271ACB0](v1);
  sub_1AFDFD038();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAF7014(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1AFDFDFD8();
  v5 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v2, v3);
  return v5;
}

uint64_t sub_1AFAF70A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1AFDFDFD8();
  if (v6 != sub_1AFDFDFD8())
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1AFDFEE28();
}

uint64_t sub_1AFAF7198(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3C8();
  sub_1AF448018(v4, v5);
  sub_1AFDFEBE8();
  if (!v2)
  {
    sub_1AFDFDFD8();
    sub_1AF448018(v4, v5);
    sub_1AF6457DC();
    sub_1AFDFEC38();
    if ((*(v1 + 42) & 0x400) != 0)
    {
      sub_1AF448018(v4, v5);
      sub_1AFDFEC38();
    }
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v4);
}

double sub_1AFAF72F8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1AFAF7D20(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 12);
    *(a1 + 28) = *(v7 + 12);
  }

  return result;
}

BOOL _s3VFX22ScriptKeyPathReferenceO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  if ((v4 & 0x8000000000000000) == 0)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      sub_1AFDFE008();
      sub_1AFAF75C8(v6, v7, v9, v8);
      v10 = sub_1AFAF75C8(v3, v2, v5, v4);
      v11 = MEMORY[0x1B2719A10](v3, v6, v10);
      sub_1AFAF7624(v3, v2, v5, v4);
      sub_1AFAF7624(v6, v7, v9, v8);
      return v11 & 1;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_5:
    sub_1AFAF75C8(*a2, a2[1], v9, v8);
    sub_1AFAF75C8(v3, v2, v5, v4);
LABEL_6:
    sub_1AFAF7624(v3, v2, v5, v4);
    sub_1AFAF7624(v6, v7, v9, v8);
    return 0;
  }

  sub_1AFDFE008();
  sub_1AFAF75C8(v6, v7, v9, v8);
  v13 = sub_1AFAF75C8(v3, v2, v5, v4);
  if ((MEMORY[0x1B2719A10](v3, v6, v13) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (v2 == v7 && v5 == v9)
  {
    sub_1AFAF7624(v3, v2, v5, v4);
    sub_1AFAF7624(v6, v2, v5, v8);
    return v4 == v8;
  }

  v14 = sub_1AFDFEE28();
  sub_1AFAF7624(v3, v2, v5, v4);
  sub_1AFAF7624(v6, v7, v9, v8);
  result = 0;
  if (v14)
  {
    return v4 == v8;
  }

  return result;
}

unint64_t sub_1AFAF7550()
{
  result = qword_1EB642958;
  if (!qword_1EB642958)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ScriptKeyPathReference, &type metadata for ScriptKeyPathReference, v0, v1);
    atomic_store(result, &qword_1EB642958);
  }

  return result;
}

double sub_1AFAF75C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 < 0)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1AFAF7624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  if (a4 < 0)
  {
  }

  return result;
}

uint64_t *initializeWithCopy for ScriptKeyPathReference(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_1AFAF75C8(*a2, v4, v5, v6);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return a1;
}

uint64_t *assignWithCopy for ScriptKeyPathReference(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_1AFAF75C8(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_1AFAF7624(v7, v8, v9, v10);
  return a1;
}

uint64_t *assignWithTake for ScriptKeyPathReference(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  *a1 = *a2;
  *(a1 + 1) = v7;
  sub_1AFAF7624(v3, v5, v4, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptKeyPathReference(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 32))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 24) >> 50) >> 13) | (2 * ((*(a1 + 24) >> 50) & 0x1C00 | ((*(a1 + 24) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ScriptKeyPathReference(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1AFAF7878(void *result, uint64_t a2)
{
  v2 = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[3] = v2;
  return result;
}

_OWORD *initializeWithCopy for ScriptKeyPathCache.ResolveRequest(_OWORD *a1, _OWORD *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t assignWithCopy for ScriptKeyPathCache.ResolveRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

_OWORD *assignWithTake for ScriptKeyPathCache.ResolveRequest(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t destroy for ScriptKeyPath(uint64_t a1)
{
}

uint64_t initializeWithCopy for ScriptKeyPath(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);

  return a1;
}

uint64_t assignWithCopy for ScriptKeyPath(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

uint64_t assignWithTake for ScriptKeyPath(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptKeyPath(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for ScriptKeyPath(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFAF7BDC()
{
  result = qword_1EB642960;
  if (!qword_1EB642960)
  {
    result = swift_getWitnessTable(byte_1AFE99F54, &type metadata for ScriptKeyPath, v0, v1);
    atomic_store(result, &qword_1EB642960);
  }

  return result;
}

unint64_t sub_1AFAF7C34()
{
  result = qword_1EB633630;
  if (!qword_1EB633630)
  {
    result = swift_getWitnessTable(aE_3, &type metadata for ScriptKeyPathCache.ResolveRequest, v0, v1);
    atomic_store(result, &qword_1EB633630);
  }

  return result;
}

uint64_t sub_1AFAF7C88(uint64_t a1, uint64_t a2)
{
  sub_1AF4486E4();
  v2 = sub_1AFDFDE98();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1AFAF7D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF388();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF448018(v44, v45);
  v5 = sub_1AFDFEA78();
  v7 = v6;
  *&v42 = v5;
  sub_1AF448018(v44, v45);
  sub_1AF645788();
  sub_1AFDFEAD8();
  v41 = v7;
  v9 = *&v43[0];
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    if (*&v43[0])
    {
      v11 = v10;
      sub_1AF441150(v44, v45);
      if ((sub_1AFDFEB18() & 1) == 0)
      {
        sub_1AF448018(v44, v45);
        sub_1AFDFEAD8();
        v37 = *&v43[0];
        memset(v43, 0, sizeof(v43));
        v38 = sub_1AF4917E4(v42, v41, v37, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, v43, 0, v9, v11);

        sub_1AF44CB60(v43);
        v19 = *(v38 + 16);
        v18 = *(v38 + 24);
        v42 = *(v38 + 32);
        v39 = *(v38 + 48);
        v21 = *(v38 + 56);
        v22 = *(v38 + 58);

        v20 = v39;

        goto LABEL_24;
      }
    }
  }

  v12 = swift_conformsToProtocol2();
  if (!v12 || !*&v43[0])
  {
    v23 = swift_conformsToProtocol2();
    if (v23 && *&v43[0])
    {
      v24 = v23;
      sub_1AF441150(v44, v45);
      v25 = sub_1AFDFEA68();
      if ((v26 & 1) != 0 || v25 != 3)
      {
        v34 = a1[3];
        v35 = a1[4];
        sub_1AF441150(a1, v34);
        v36 = sub_1AF695174(v34, v35);
        sub_1AFAF65F4(v42, v41, v36, *&v43[0], v24, &v52);
        v18 = v53;
        if (v53)
        {
          v22 = v57;
          v42 = v54;
          v19 = v52;
          v59 = v56;
          v20 = v55;

          v21 = v59;
          goto LABEL_24;
        }

        sub_1AFDFE218();

        *&v43[0] = 0xD00000000000001CLL;
        *(&v43[0] + 1) = 0x80000001AFF46E90;
        MEMORY[0x1B2718AE0](v42, v41);
      }

      else
      {
        sub_1AF448018(v44, v45);
        sub_1AFDFEAD8();
        v27 = a1[3];
        v28 = a1[4];
        sub_1AF441150(a1, v27);
        v29 = sub_1AF695174(v27, v28);
        (*(v24 + 24))(&v46, v42, v41, *&v43[0], v29, 0, *&v43[0], v24);
        v18 = v47;
        if (v47)
        {
          v22 = v51;
          v20 = v49;
          v42 = v48;
          v58 = v50;
          v19 = v46;

          v21 = v58;
          goto LABEL_24;
        }

        sub_1AFDFE218();

        *&v43[0] = 0xD000000000000023;
        *(&v43[0] + 1) = 0x80000001AFF46EB0;
        MEMORY[0x1B2718AE0](v42, v41);
      }

      goto LABEL_21;
    }

    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    v30 = 0x80000001AFF46E60;
    v31 = 0xD000000000000022;
LABEL_20:
    *&v43[0] = v31;
    *(&v43[0] + 1) = v30;
    MEMORY[0x1B2718AE0](v42, v41);
LABEL_21:

    v32 = v43[0];
    sub_1AF4567E0();
    swift_allocError();
    *v33 = v32;
    *(v33 + 16) = 32;
    swift_willThrow();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v13 = v12;
  v40 = &v40;
  v14 = *(*&v43[0] - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF6461F4(v9, v13);
  v17 = sub_1AF64622C(v42, v41, v9, v13);
  (*(v14 + 8))(v16, v9);
  if (!v17)
  {
    *&v43[0] = 0;
    *(&v43[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    v30 = 0x80000001AFF46EE0;
    v31 = 0xD00000000000001DLL;
    goto LABEL_20;
  }

  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  v42 = *(v17 + 32);
  v20 = *(v17 + 48);
  v21 = *(v17 + 56);
  v22 = *(v17 + 58);

LABEL_24:
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v42;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 42) = v22;
  return result;
}

uint64_t destroy for ScriptKeyPathMigration(uint64_t a1)
{
}

uint64_t initializeWithCopy for ScriptKeyPathMigration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;

  return a1;
}

uint64_t assignWithCopy for ScriptKeyPathMigration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for ScriptKeyPathMigration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptKeyPathMigration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ScriptKeyPathMigration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AFAF8704(uint64_t a1, unint64_t a2, __int16 *a3)
{
  v6 = *a3;
  type metadata accessor for MetalToolchainCodeLoader();
  v7 = swift_allocObject();
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  sub_1AF45207C();
  v9 = v8;
  v15 = v6;
  type metadata accessor for XcodeCommandBuilder();
  swift_allocObject();
  v10 = sub_1AF45D418(&v15);
  if (v10)
  {
    *(v9 + 120) = v10;

    v11 = sub_1AF452240(a1, a2);
    if (v3)
    {
    }

    else
    {
      sub_1AF454174(v11, v12);

      sub_1AFDFC018();
    }
  }

  else
  {
    sub_1AF81F330();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
  }
}

uint64_t sub_1AFAF888C(uint64_t a1)
{
  sub_1AF4486E4();
  v1 = sub_1AFDFDE98();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = (v4 + 16 * v3);
      v11 = *v9;
      v10 = v9[1];
      swift_bridgeObjectRetain_n();
      while (1)
      {
        v13 = sub_1AFDFD108();
        if (!v14)
        {
          break;
        }

        if (v13 == 32 && v14 == 0xE100000000000000)
        {
        }

        else
        {
          v12 = sub_1AFDFEE28();

          if ((v12 & 1) == 0)
          {

            v22 = sub_1AFDFD1A8();
            v23 = v18;

            MEMORY[0x1B2718AE0](v11, v10);

            v6 = v22;
            v7 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_1AF420554(0, *(v5 + 2) + 1, 1, v5);
            }

            v16 = *(v5 + 2);
            v19 = *(v5 + 3);
            v17 = v16 + 1;
            if (v16 >= v19 >> 1)
            {
              v5 = sub_1AF420554(v19 > 1, v16 + 1, 1, v5);
            }

            goto LABEL_4;
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1AF420554(0, *(v5 + 2) + 1, 1, v5);
      }

      v16 = *(v5 + 2);
      v15 = *(v5 + 3);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v5 = sub_1AF420554(v15 > 1, v16 + 1, 1, v5);
      }

      v6 = 0;
      v7 = 0xE000000000000000;
LABEL_4:
      ++v3;
      *(v5 + 2) = v17;
      v8 = &v5[16 * v16];
      *(v8 + 4) = v6;
      *(v8 + 5) = v7;
    }

    while (v3 != v2);
  }

  sub_1AFB12AC4(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v20 = sub_1AFDFCD98();

  return v20;
}

uint64_t sub_1AFAF8B58(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  v72 = a6;
  v73 = a7;
  v70 = a3;
  v71 = a4;
  v68 = a1;
  v69 = a2;
  v10 = sub_1AFDFC318();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for ScriptIndex(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v64 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v64 - v29;
  v67 = a8;
  sub_1AFB12858(a8, v17);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    sub_1AF687E28(v17);
  }

  else
  {
    sub_1AFB128EC(v17, v30);
    sub_1AFB12BD8(v30, v27, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AFB12B14(v27, type metadata accessor for ScriptIndex);
      v32 = v30;
    }

    else
    {
      v33 = *v27;
      v34 = v27[1];
      if (v33 != -1 || v34 != 0)
      {
        LODWORD(v76[0]) = v33;
        v77 = sub_1AFDFEA08();
        v78 = v36;
        MEMORY[0x1B2718AE0](95, 0xE100000000000000);
        LODWORD(v76[0]) = v34;
        v37 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v37);

        v39 = v77;
        v38 = v78;
        sub_1AFB12B14(v30, type metadata accessor for ScriptIndex);
        goto LABEL_13;
      }

      v32 = v30;
    }

    sub_1AFB12B14(v32, type metadata accessor for ScriptIndex);
  }

  LODWORD(v76[0]) = a5;
  v77 = sub_1AFDFEA08();
  v78 = v40;
  MEMORY[0x1B2718AE0](95, 0xE100000000000000);
  LODWORD(v76[0]) = HIDWORD(a5);
  v41 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v41);

  v39 = v77;
  v38 = v78;
LABEL_13:
  sub_1AFB12858(v67, v14);
  if (v31(v14, 1, v18) == 1)
  {
    sub_1AF687E28(v14);
    v42 = 0;
    v43 = 0xE000000000000000;
  }

  else
  {
    sub_1AFB128EC(v14, v24);
    sub_1AFB12BD8(v24, v21, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v45 = v65;
      v44 = v66;
      v46 = *(v65 + 32);
      v67 = v39;
      v47 = v64;
      v46(v64, v21, v66);
      v77 = sub_1AFDFC2B8();
      v78 = v48;
      v76[0] = 45;
      v76[1] = 0xE100000000000000;
      v74 = 95;
      v75 = 0xE100000000000000;
      sub_1AF4486E4();
      v42 = sub_1AFDFDEB8();
      v43 = v49;
      v50 = v47;
      v39 = v67;
      (*(v45 + 8))(v50, v44);
      sub_1AFB12B14(v24, type metadata accessor for ScriptIndex);
    }

    else
    {
      LODWORD(v77) = *v21;
      v42 = sub_1AFDFEA08();
      v43 = v51;
      sub_1AFB12B14(v24, type metadata accessor for ScriptIndex);
    }
  }

  v77 = v68;
  v78 = v69;
  strcpy(v76, "%SCRIPT_ID%");
  HIDWORD(v76[1]) = -352321536;
  v74 = 0xD00000000000001ELL;
  v75 = 0x80000001AFF47E30;
  sub_1AF4486E4();
  v77 = sub_1AFDFDEB8();
  v78 = v52;
  strcpy(v76, "%PROJECT%");
  WORD1(v76[1]) = 0;
  HIDWORD(v76[1]) = -385875968;
  v74 = v70;
  v75 = v71;
  v53 = sub_1AFDFDEB8();
  v55 = v54;

  v77 = v53;
  v78 = v55;
  v76[0] = 0x25444E494B25;
  v76[1] = 0xE600000000000000;
  v74 = v72;
  v75 = v73;
  v56 = sub_1AFDFDEB8();
  v58 = v57;

  v77 = v56;
  v78 = v58;
  strcpy(v76, "%ENTITY%");
  BYTE1(v76[1]) = 0;
  WORD1(v76[1]) = 0;
  HIDWORD(v76[1]) = -402653184;
  v74 = v39;
  v75 = v38;
  v59 = sub_1AFDFDEB8();
  v61 = v60;

  v77 = v59;
  v78 = v61;
  strcpy(v76, "%ORIG_ENTITY%");
  HIWORD(v76[1]) = -4864;
  v74 = v42;
  v75 = v43;
  v62 = sub_1AFDFDEB8();

  return v62;
}

uint64_t sub_1AFAF9348(uint64_t a1, unsigned __int8 a2)
{
  if (a2 < 3u)
  {
    LOBYTE(v2) = a2;
    if (swift_dynamicCastMetatype())
    {
      return 1819242338;
    }

    if (swift_dynamicCastMetatype())
    {
      v4 = 0x5F38746E6975;
      return v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3631746E6975;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3233746E6975;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3436746E6975;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3436746E69;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F38746E69;
    }

    if (swift_dynamicCastMetatype())
    {
      v4 = 0x5F3631746E69;
      return v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    }

    if (swift_dynamicCastMetatype())
    {
      v4 = 0x5F3233746E69;
      return v4 & 0xFFFFFFFFFFFFLL | 0x74000000000000;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x745F3436746E69;
    }

    sub_1AF67C994(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      return 0x746E695F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6E69755F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6E69755F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6E69755F646D6973;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x656C62756F64;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x74616F6C66;
    }

    sub_1AF67C994(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C665F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C665F646D6973;
    }

    sub_1AF67C994(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x6F6C665F646D6973;
    }

    sub_1AF80AF34(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x616F6C665F786676;
    }

    sub_1AF80AF34(0, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    if (swift_dynamicCastMetatype())
    {
      return 0x5F746E695F786676;
    }

    type metadata accessor for simd_quatf(0);
    if (swift_dynamicCastMetatype())
    {
      if (v2 <= 1u)
      {
        v6 = sub_1AFDFEE28();

        result = 0x6F6C665F646D6973;
        if ((v6 & 1) == 0)
        {
          return 0x6175715F646D6973;
        }

        return result;
      }
    }

    else
    {
      type metadata accessor for simd_float2x2(0);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for simd_float2x3(0);
        v5 = swift_dynamicCastMetatype();
        if (!v5)
        {
          while (1)
          {
            type metadata accessor for simd_float2x4(v5);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float3x2(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float3x3(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float3x4(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float4x2(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float4x3(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            type metadata accessor for simd_float4x4(0);
            if (swift_dynamicCastMetatype())
            {
              break;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            sub_1AFB12AC4(0, &qword_1ED722038, MEMORY[0x1E69E6270], MEMORY[0x1E69E6720]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            sub_1AFB12AC4(0, &unk_1ED721F60, MEMORY[0x1E69E6878], MEMORY[0x1E69E6720]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            sub_1AFB12AC4(0, &qword_1EB642968, MEMORY[0x1E69E6B70], MEMORY[0x1E69E6720]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A64696F76;
            }

            type metadata accessor for __vfx_sampler1d(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x706D61735F786676;
            }

            type metadata accessor for __vfx_sampler2d(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x706D61735F786676;
            }

            type metadata accessor for __vfx_sampler3d(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x706D61735F786676;
            }

            type metadata accessor for frame_constants(0);
            if (swift_dynamicCastMetatype())
            {
              return 0x6F635F656D617266;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x656C636974726170;
            }

            if (swift_dynamicCastMetatype())
            {
              return 1718378856;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x32666C6168;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x33666C6168;
            }

            if (swift_dynamicCastMetatype())
            {
              return 0x34666C6168;
            }

            type metadata accessor for pbr_lighting_parameters(0);
            if (swift_dynamicCastMetatype())
            {
              return 0xD000000000000017;
            }

            sub_1AFB12AC4(0, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
            if (swift_dynamicCastMetatype())
            {
              return 0x2A2074616F6C66;
            }

            type metadata accessor for vfx_script_buffer(0);
            if (swift_dynamicCastMetatype())
            {
              return 0xD000000000000011;
            }

            if (!swift_dynamicCastMetatype())
            {
              v7 = sub_1AFDFF4B8();
              MEMORY[0x1B2718AE0](v7);

              MEMORY[0x1B2718AE0](544106784, 0xE400000000000000);
              if (v2)
              {
                if (v2 == 1)
                {
                  v2 = 0xE600000000000000;
                  v8 = 0x7070436A624FLL;
                }

                else
                {
                  v2 = 0xE500000000000000;
                  v8 = 0x6C6174654DLL;
                }
              }

              else
              {
                v2 = 0xE100000000000000;
                v8 = 67;
              }

              MEMORY[0x1B2718AE0](v8, v2);
            }

LABEL_55:
            v5 = sub_1AFDFE518();
            __break(1u);
          }
        }

        return 0x6F6C665F646D6973;
      }
    }

    return 0x6F6C665F646D6973;
  }

  if (a2 != 3)
  {
    goto LABEL_55;
  }

  return sub_1AF75D128(a1);
}

uint64_t sub_1AFAF9FBC()
{
  result = sub_1AFAF9FE0();
  qword_1ED73B400 = result;
  *algn_1ED73B408 = v1;
  return result;
}

uint64_t sub_1AFAF9FE0()
{
  v0 = sub_1AFDFC128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF45F940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1AFDFCEC8();
  v7 = sub_1AFDFCEC8();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  sub_1AFDFC0B8();
  v9 = sub_1AFDFCEA8();
  (*(v1 + 8))(v3, v0);
  return v9;
}

uint64_t sub_1AFAFA198()
{
  result = sub_1AFAFA1BC();
  qword_1EB6C35A8 = result;
  unk_1EB6C35B0 = v1;
  return result;
}

uint64_t sub_1AFAFA1BC()
{
  v0 = sub_1AFDFC128();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF45F940();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1AFDFCEC8();
  v7 = sub_1AFDFCEC8();
  v8 = [v5 URLForResource:v6 withExtension:v7];

  sub_1AFDFC0B8();
  v9 = sub_1AFDFCEA8();
  (*(v1 + 8))(v3, v0);
  return v9;
}

uint64_t sub_1AFAFA374()
{
  sub_1AFDFE218();

  MEMORY[0x1B2718AE0](v0[5], v0[6]);
  v1 = MEMORY[0x1B2718AE0](46, 0xE100000000000000);
  v2 = (*(*v0 + 104))(v1);
  if (v2 <= 1)
  {
    if (v2)
    {
      v3 = 0xE200000000000000;
      v4 = 28013;
    }

    else
    {
      v3 = 0xE300000000000000;
      v4 = 7368803;
    }
  }

  else if (v2 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x6C6174656DLL;
  }

  else if (v2 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7466697773;
  }

  else
  {
    v3 = 0xE200000000000000;
    v4 = 29546;
  }

  MEMORY[0x1B2718AE0](v4, v3);

  MEMORY[0x1B2718AE0](0x100000000000001FLL, 0x80000001AFF47ED0);
  return 0x202F2F0A2F2FLL;
}

char *sub_1AFAFA510(int a1, double a2)
{
  v4 = v3;
  v5 = v2;
  v176 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v167 = (&v155 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v155 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v155 - v14;
  v184 = type metadata accessor for SimpleScript(0);
  v16 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v175 = &v155 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v155 - v19;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v229 = qword_1ED73B840;
  v230 = 0;
  v231 = 2;
  v232 = 0;
  v233 = 2;
  v234 = 0;
  sub_1AF70471C(1, &v203);
  v223 = v203;
  v224 = v204;
  v225 = v205;
  v226 = v206 | 1;
  v227 = v207;
  v228 = v208;
  sub_1AF6B06C0(v2[2], &v223, 0x200000000, v209);
  v162 = *&v209[0];
  if (!*&v209[0])
  {
    v144 = &qword_1ED723E50;
    v145 = &off_1F255B808;
    v146 = type metadata accessor for SimpleScript;
    v147 = sub_1AFB12B74;
    v148 = &v203;
LABEL_134:
    sub_1AFB12A64(v148, v144, v146, v145, v147);
    return MEMORY[0x1E69E7CC0];
  }

  v160 = *(&v209[2] + 1);
  v21 = *(&v210 + 1);
  v165 = *(&v211 + 1);
  v166 = v211;
  v213 = *(v209 + 8);
  v214 = *(&v209[1] + 8);
  if (v212 < 1)
  {
    sub_1AFB12A64(&v203, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);
    v144 = &qword_1ED725EA0;
    v146 = &type metadata for QueryResult;
    v145 = MEMORY[0x1E69E6720];
    v147 = sub_1AFB12AC4;
    v148 = v209;
    goto LABEL_134;
  }

  if (!*(&v210 + 1))
  {
    v199 = v209[2];
    v200 = v210;
    v201 = v211;
    v202 = v212;
    v197 = v209[0];
    v198 = v209[1];
    sub_1AF5DD298(&v197, &v191);
    sub_1AFB12A64(&v203, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);
    sub_1AFB12A64(v209, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v152 = MEMORY[0x1E69E7CC0];
LABEL_139:
    sub_1AFB12A64(v209, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    return v152;
  }

  v158 = v16;
  v164 = v165[4];
  v163 = *(v166 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v199 = v209[2];
  v200 = v210;
  v201 = v211;
  v202 = v212;
  v197 = v209[0];
  v198 = v209[1];
  sub_1AF5DD298(&v197, &v191);
  v22 = 0;
  v174 = MEMORY[0x1E69E7CC0];
  v177 = v5;
  v168 = v8;
  v185 = v20;
  v186 = v15;
  v159 = v21;
  while (1)
  {
    v23 = (v160 + 48 * v22);
    v190 = *v23;
    v188 = v23[1];
    v24 = *(v23 + 3);
    v189 = *(v23 + 2);
    v26 = *(v23 + 4);
    v25 = *(v23 + 5);
    v161 = v22;
    if (v163)
    {
      v27 = *(v25 + 376);

      os_unfair_lock_lock(v27);
      os_unfair_lock_lock(*(v25 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v164);
    v28 = v165;
    v29 = *(v165 + 4);
    v221[0] = *(v165 + 3);
    v221[1] = v29;
    v222 = v165[10];
    v30 = *(*(*(*(v25 + 40) + 16) + 32) + 16) + 1;
    v28[6] = ecs_stack_allocator_allocate(v165[4], 48 * v30, 8);
    v28[7] = v30;
    v28[9] = 0;
    v28[10] = 0;
    v28[8] = 0;
    v31 = v189;
    v187 = v25;
    v32 = sub_1AF64B110(v184, &off_1F255B808, v189, v24, v26, v28);
    v33 = v32;
    if (!v31)
    {
      break;
    }

    if (v26)
    {
      v178 = *(v158 + 72);
      while (1)
      {
        v235 = v33;
        v36 = *v189++;
        v190 = v36;
        v37 = *(*v5 + 104);
        v38 = v37();
        v188 = v26;
        if (!v38)
        {
          break;
        }

        v39 = v187;
        v40 = sub_1AFDFEE28();

        if ((v40 & 1) == 0)
        {
          if ((v37)(v41) == 1)
          {
            goto LABEL_25;
          }

          v42 = sub_1AFDFEE28();

          if ((v42 & 1) == 0)
          {
            v44 = v235[32];
            v45 = (v37)(v43);
            if (v44 <= 1)
            {
              if (v44)
              {
                v46 = 0xE600000000000000;
                v47 = 0x7070636A626FLL;
              }

              else
              {
                v46 = 0xE100000000000000;
                v47 = 99;
              }
            }

            else
            {
              if (v44 != 2)
              {
                v35 = v235;
                if (v44 == 3)
                {
                  v46 = 0xE500000000000000;
                  v47 = 0x7466697773;
                }

                else
                {
                  v46 = 0xE200000000000000;
                  v47 = 29546;
                }

                goto LABEL_38;
              }

              v46 = 0xE500000000000000;
              v47 = 0x6C6174656DLL;
            }

            v35 = v235;
LABEL_38:
            if (v45 <= 1u)
            {
              if (v45)
              {
                v51 = 0xE600000000000000;
                if (v47 != 0x7070636A626FLL)
                {
                  goto LABEL_67;
                }
              }

              else
              {
                v51 = 0xE100000000000000;
                if (v47 != 99)
                {
                  goto LABEL_67;
                }
              }
            }

            else if (v45 == 2)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x6C6174656DLL)
              {
                goto LABEL_67;
              }
            }

            else if (v45 == 3)
            {
              v51 = 0xE500000000000000;
              if (v47 != 0x7466697773)
              {
                goto LABEL_67;
              }
            }

            else
            {
              v51 = 0xE200000000000000;
              if (v47 != 29546)
              {
                goto LABEL_67;
              }
            }

            if (v46 != v51)
            {
LABEL_67:
              v88 = sub_1AFDFEE28();

              if ((v88 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_54;
            }

            goto LABEL_53;
          }
        }

LABEL_26:
        v35 = v235;
        v48 = v235[32];
        if (v48 > 1 || v235[32])
        {
          v49 = sub_1AFDFEE28();

          if (v49)
          {
            goto LABEL_54;
          }

          if (v48 != 1)
          {
            v50 = sub_1AFDFEE28();

            if ((v50 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_54;
          }
        }

LABEL_53:

LABEL_54:
        sub_1AFB12BD8(v35, v20, type metadata accessor for SimpleScript);
        v52 = v5[5];
        v181 = v5[6];
        v182 = v52;

        if (v39[184])
        {
          goto LABEL_141;
        }

        v54 = *(*(v53 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v39 + 21) + 4 * v190) + 8);
        v179 = *(*(v39 + 21) + 4 * v190);
        v180 = v54;

        v55 = v183;
        sub_1AFB12858(v35 + *(v184 + 40), v183);
        v56 = type metadata accessor for ScriptIndex(0);
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        if (v58(v55, 1, v56) == 1)
        {
          v59 = v4;

          if (v39[184])
          {
            goto LABEL_141;
          }

          v61 = *(*(v39 + 21) + 4 * v190);
          v62 = *(*(v60 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v61 + 8);

          v63 = v186;
          *v186 = v61;
          v63[1] = v62;
          swift_storeEnumTagMultiPayload();
          v64 = v183;
          v65 = v58(v183, 1, v56) == 1;
          v4 = v59;
          v66 = v64;
          v35 = v235;
          if (!v65)
          {
            sub_1AF687E28(v66);
          }
        }

        else
        {
          v63 = v186;
          sub_1AFB128EC(v55, v186);
        }

        v67.n128_f64[0] = (*(v57 + 56))(v63, 0, 1, v56);
        v20 = v185;
        sub_1AFAA86E4(0, 0, &v191, v67);
        if (v4)
        {
          sub_1AFB12B14(v20, type metadata accessor for SimpleScript);
          sub_1AF687E28(v63);
          if (v176)
          {
            goto LABEL_135;
          }

          v4 = 0;
          v5 = v177;
        }

        else
        {
          v169 = &v155;
          v69 = v179;
          v70 = v191;
          v71 = v192;
          v72 = v193;
          v170 = v194;
          v171 = v195;
          v172 = v196;
          MEMORY[0x1EEE9AC00](v68);
          v74 = v181;
          v73 = v182;
          *(&v155 - 6) = v182;
          *(&v155 - 5) = v74;
          v75 = v180;
          *(&v155 - 8) = v76;
          *(&v155 - 7) = v75;
          *(&v155 - 3) = 0x656C706D6973;
          v153 = 0xE600000000000000;
          v154 = v186;
          v173 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v155 - 8), v70);
          v179 = 0;
          v77 = sub_1AFAF8B58(v71, v72, v73, v74, v69 | (v75 << 32), 0x656C706D6973uLL, 0xE600000000000000, v186);
          v79 = v78;
          v20 = v185;

          sub_1AFB12B14(v20, type metadata accessor for SimpleScript);
          sub_1AF687E28(v186);

          v80 = sub_1AF6496EC(v190);

          sub_1AFAB9EAC(v80, v166);
          v82 = v81;
          v84 = v83;

          v85 = v174;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v85 = sub_1AF425C8C(0, *(v85 + 2) + 1, 1, v85);
          }

          v87 = *(v85 + 2);
          v86 = *(v85 + 3);
          if (v87 >= v86 >> 1)
          {
            v85 = sub_1AF425C8C(v86 > 1, v87 + 1, 1, v85);
          }

          *(v85 + 2) = v87 + 1;
          v174 = v85;
          v34 = &v85[40 * v87];
          *(v34 + 4) = v173;
          *(v34 + 5) = v77;
          *(v34 + 6) = v79;
          *(v34 + 7) = v82;
          *(v34 + 8) = v84;
          v4 = v179;
          v5 = v177;
          v35 = v235;
        }

LABEL_15:
        v33 = (v35 + v178);
        v26 = v188 - 1;
        if (v188 == 1)
        {
          goto LABEL_70;
        }
      }

      v39 = v187;
LABEL_25:

      goto LABEL_26;
    }

LABEL_70:
    v215 = v162;
    v216 = v213;
    v217 = v214;
    sub_1AF630994(v165, &v215, v221);
    v90 = v187;
    sub_1AF62D29C(v187);
    ecs_stack_allocator_pop_snapshot(v164);
    if (v163)
    {
      os_unfair_lock_unlock(*(v90 + 43));
      os_unfair_lock_unlock(*(v90 + 47));
    }

    v22 = v161 + 1;
    if (v161 + 1 == v159)
    {
      sub_1AFB12A64(&v203, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);
      sub_1AFB12A64(v209, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
      v152 = v174;
      goto LABEL_139;
    }
  }

  v89 = v190;
  if (v190 == v188)
  {
    goto LABEL_70;
  }

  v91 = *(v158 + 72);
  v173 = v188 - 1;
  v235 = v32;
  v182 = v91;
  while (2)
  {
    v92 = &v33[v91 * v89];
    v189 = v89;
    while (2)
    {
      v190 = v92;
      v93 = *(*v5 + 104);
      if (!v93())
      {
        goto LABEL_83;
      }

      v94 = sub_1AFDFEE28();

      if (v94)
      {
        break;
      }

      if ((v93)(v95) == 1)
      {
LABEL_83:

        break;
      }

      v96 = sub_1AFDFEE28();

      if ((v96 & 1) == 0)
      {
        v98 = *(v190 + 32);
        v99 = (v93)(v97);
        if (v98 <= 1)
        {
          if (v98)
          {
            v101 = 0xE600000000000000;
            v102 = 0x7070636A626FLL;
          }

          else
          {
            v101 = 0xE100000000000000;
            v102 = 99;
          }
        }

        else
        {
          if (v98 != 2)
          {
            v100 = v187;
            if (v98 == 3)
            {
              v101 = 0xE500000000000000;
              v102 = 0x7466697773;
            }

            else
            {
              v101 = 0xE200000000000000;
              v102 = 29546;
            }

LABEL_97:
            if (v99 <= 1u)
            {
              if (v99)
              {
                v106 = 0xE600000000000000;
                if (v102 != 0x7070636A626FLL)
                {
                  goto LABEL_122;
                }

                goto LABEL_110;
              }

              v106 = 0xE100000000000000;
              if (v102 == 99)
              {
                goto LABEL_110;
              }
            }

            else if (v99 == 2)
            {
              v106 = 0xE500000000000000;
              if (v102 == 0x6C6174656DLL)
              {
                goto LABEL_110;
              }
            }

            else
            {
              if (v99 == 3)
              {
                v106 = 0xE500000000000000;
                if (v102 != 0x7466697773)
                {
                  goto LABEL_122;
                }

LABEL_110:
                if (v101 != v106)
                {
                  goto LABEL_122;
                }

LABEL_112:

                goto LABEL_113;
              }

              v106 = 0xE200000000000000;
              if (v102 == 29546)
              {
                goto LABEL_110;
              }
            }

LABEL_122:
            v123 = sub_1AFDFEE28();

            if (v123)
            {
              goto LABEL_113;
            }

LABEL_74:
            v92 = v190 + v182;
            v189 = (v189 + 1);
            if (v188 == v189)
            {
              goto LABEL_70;
            }

            continue;
          }

          v101 = 0xE500000000000000;
          v102 = 0x6C6174656DLL;
        }

        v100 = v187;
        goto LABEL_97;
      }

      break;
    }

    v103 = *(v190 + 32);
    if (v103 <= 1)
    {
      v100 = v187;
      if (!*(v190 + 32))
      {
        goto LABEL_112;
      }
    }

    else
    {
      v100 = v187;
    }

    v104 = sub_1AFDFEE28();

    if ((v104 & 1) == 0)
    {
      if (v103 == 1)
      {
        goto LABEL_112;
      }

      v105 = sub_1AFDFEE28();

      if ((v105 & 1) == 0)
      {
        goto LABEL_74;
      }
    }

LABEL_113:
    v107 = v190;
    sub_1AFB12BD8(v190, v175, type metadata accessor for SimpleScript);
    v108 = v5[5];
    v180 = v5[6];
    v181 = v108;

    if (v100[184])
    {
      goto LABEL_141;
    }

    v110 = *(*(v109 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * *(*(v100 + 21) + 4 * v189) + 8);
    v178 = *(*(v100 + 21) + 4 * v189);
    v179 = v110;

    v111 = v168;
    sub_1AFB12858(v107 + *(v184 + 40), v168);
    v112 = type metadata accessor for ScriptIndex(0);
    v113 = *(v112 - 8);
    v114 = *(v113 + 48);
    if (v114(v111, 1, v112) == 1)
    {

      if (v100[184])
      {
LABEL_141:
        LODWORD(v154) = 0;
        v153 = 204;
        result = sub_1AFDFE518();
        __break(1u);
        return result;
      }

      v116 = *(*(v100 + 21) + 4 * v189);
      v117 = *(*(v115 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v116 + 8);

      v118 = v167;
      *v167 = v116;
      v118[1] = v117;
      swift_storeEnumTagMultiPayload();
      v119 = v114(v168, 1, v112);
      v5 = v177;
      if (v119 != 1)
      {
        sub_1AF687E28(v168);
      }
    }

    else
    {
      v118 = v167;
      sub_1AFB128EC(v111, v167);
    }

    v120.n128_f64[0] = (*(v113 + 56))(v118, 0, 1, v112);
    v121 = v175;
    sub_1AFAA86E4(0, 0, &v191, v120);
    if (!v4)
    {
      v157 = &v155;
      v169 = v178;
      v156 = v192;
      v124 = v193;
      v170 = v194;
      v171 = v195;
      v172 = v196;
      MEMORY[0x1EEE9AC00](v122);
      v126 = v180;
      v125 = v181;
      *(&v155 - 6) = v181;
      *(&v155 - 5) = v126;
      v127 = v179;
      *(&v155 - 8) = v128;
      *(&v155 - 7) = v127;
      *(&v155 - 3) = 0x656C706D6973;
      v153 = 0xE600000000000000;
      v154 = v118;
      v190 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v155 - 8), v129);
      v130 = sub_1AFAF8B58(v156, v124, v125, v126, v169 | (v127 << 32), 0x656C706D6973uLL, 0xE600000000000000, v118);
      v132 = v131;

      sub_1AFB12B14(v121, type metadata accessor for SimpleScript);
      sub_1AF687E28(v118);

      v133 = sub_1AF6496EC(v189);

      sub_1AFAB9EAC(v133, v166);
      v135 = v134;
      v137 = v136;

      v138 = v174;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v138 = sub_1AF425C8C(0, *(v138 + 2) + 1, 1, v138);
      }

      v140 = *(v138 + 2);
      v139 = *(v138 + 3);
      if (v140 >= v139 >> 1)
      {
        v174 = sub_1AF425C8C(v139 > 1, v140 + 1, 1, v138);
      }

      else
      {
        v174 = v138;
      }

      v141 = v189;
      v89 = (v189 + 1);
      v142 = v174;
      *(v174 + 2) = v140 + 1;
      v143 = &v142[40 * v140];
      *(v143 + 4) = v190;
      *(v143 + 5) = v130;
      *(v143 + 6) = v132;
      *(v143 + 7) = v135;
      *(v143 + 8) = v137;
      v65 = v173 == v141;
      v4 = 0;
      v5 = v177;
      v20 = v185;
      v33 = v235;
      v91 = v182;
      if (v65)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  sub_1AFB12B14(v121, type metadata accessor for SimpleScript);
  sub_1AF687E28(v118);
  if ((v176 & 1) == 0)
  {

    v4 = 0;
    v20 = v185;
    goto LABEL_74;
  }

LABEL_135:
  v150 = v187;
  swift_willThrow();
  v218 = v162;
  v219 = v213;
  v220 = v214;
  sub_1AF630994(v165, &v218, v221);
  sub_1AF62D29C(v150);
  ecs_stack_allocator_pop_snapshot(v164);
  if (v163)
  {
    os_unfair_lock_unlock(*(v150 + 43));
    os_unfair_lock_unlock(*(v150 + 47));
  }

  sub_1AFB12A64(&v203, &qword_1ED723E50, type metadata accessor for SimpleScript, &off_1F255B808, sub_1AFB12B74);

  v151 = MEMORY[0x1E69E6720];
  sub_1AFB12A64(v209, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  sub_1AFB12A64(v209, &qword_1ED725EA0, &type metadata for QueryResult, v151, sub_1AFB12AC4);
}

char *sub_1AFAFBDA0(int a1, double a2)
{
  v4 = v3;
  v5 = v2;
  v148 = a1;
  sub_1AFB0EF20(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v146 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v140 = (&v132 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v157 = &v132 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v132 - v13);
  v158 = type metadata accessor for ShaderScript(0);
  v15 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v147 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v132 - v18;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v202 = qword_1ED73B840;
  v203 = 0;
  v204 = 2;
  v205 = 0;
  v206 = 2;
  v207 = 0;
  sub_1AF70424C(1, &v176);
  v196 = v176;
  v197 = v177;
  v198 = v178;
  v199 = v179 | 1;
  v200 = v180;
  v201 = v181;
  sub_1AF6B06C0(v2[2], &v196, 0x200000000, v182);
  v136 = *&v182[0];
  if (!*&v182[0])
  {
    v123 = &qword_1ED723E58;
    v124 = &off_1F255B8D0;
    v125 = type metadata accessor for ShaderScript;
    v126 = sub_1AFB12B74;
    v127 = &v176;
LABEL_124:
    sub_1AFB12A64(v127, v123, v125, v124, v126);
    return MEMORY[0x1E69E7CC0];
  }

  v134 = *(&v182[2] + 1);
  v20 = *(&v183 + 1);
  v139 = *(&v184 + 1);
  v186 = *(v182 + 8);
  v187 = *(&v182[1] + 8);
  if (v185 < 1)
  {
    sub_1AFB12A64(&v176, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);
    v123 = &qword_1ED725EA0;
    v125 = &type metadata for QueryResult;
    v124 = MEMORY[0x1E69E6720];
    v126 = sub_1AFB12AC4;
    v127 = v182;
    goto LABEL_124;
  }

  if (!*(&v183 + 1))
  {
    v172 = v182[2];
    v173 = v183;
    v174 = v184;
    v175 = v185;
    v170 = v182[0];
    v171 = v182[1];
    sub_1AF5DD298(&v170, &v164);
    sub_1AFB12A64(&v176, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);
    sub_1AFB12A64(v182, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
    v131 = MEMORY[0x1E69E7CC0];
    goto LABEL_129;
  }

  v132 = v15;
  v138 = v139[4];
  v137 = *(v184 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v172 = v182[2];
  v173 = v183;
  v174 = v184;
  v175 = v185;
  v170 = v182[0];
  v171 = v182[1];
  sub_1AF5DD298(&v170, &v164);
  v21 = 0;
  v149 = MEMORY[0x1E69E7CC0];
  v154 = v5;
  v160 = v19;
  v161 = v14;
  v133 = v20;
  while (2)
  {
    v22 = (v134 + 48 * v21);
    v208 = *v22;
    v23 = v22[1];
    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v26 = *(v22 + 4);
    v27 = *(v22 + 5);
    v135 = v21;
    v163 = v23;
    if (v137)
    {
      v28 = *(v27 + 376);

      os_unfair_lock_lock(v28);
      os_unfair_lock_lock(*(v27 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v138);
    v29 = v139;
    v30 = *(v139 + 4);
    v194[0] = *(v139 + 3);
    v194[1] = v30;
    v195 = v139[10];
    v31 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
    v29[6] = ecs_stack_allocator_allocate(v139[4], 48 * v31, 8);
    v29[7] = v31;
    v29[9] = 0;
    v29[10] = 0;
    v29[8] = 0;
    v32 = v25;
    v33 = sub_1AF64B110(v158, &off_1F255B8D0, v25, v24, v26, v29);
    v34 = v33;
    v155 = v27;
    if (v32)
    {
      if (!v26)
      {
        goto LABEL_66;
      }

      v150 = *(v132 + 72);
      while (1)
      {
        v162 = v26;
        v208 = *v32;
        v37 = *(*v5 + 104);
        v38 = v37();
        v163 = v32 + 1;
        if (!v38)
        {
          break;
        }

        v39 = sub_1AFDFEE28();

        if ((v39 & 1) == 0)
        {
          if ((v37)(v40) == 1)
          {
            break;
          }

          v41 = sub_1AFDFEE28();

          if ((v41 & 1) == 0)
          {
            v43 = *(v34 + 16);
            v44 = (v37)(v42);
            if (v43 <= 1)
            {
              if (v43)
              {
                v45 = 0xE600000000000000;
                v46 = 0x7070636A626FLL;
              }

              else
              {
                v45 = 0xE100000000000000;
                v46 = 99;
              }
            }

            else if (v43 == 2)
            {
              v45 = 0xE500000000000000;
              v46 = 0x6C6174656DLL;
            }

            else if (v43 == 3)
            {
              v45 = 0xE500000000000000;
              v46 = 0x7466697773;
            }

            else
            {
              v45 = 0xE200000000000000;
              v46 = 29546;
            }

            if (v44 <= 1u)
            {
              if (v44)
              {
                v50 = 0xE600000000000000;
                if (v46 != 0x7070636A626FLL)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v50 = 0xE100000000000000;
                if (v46 != 99)
                {
                  goto LABEL_63;
                }
              }
            }

            else if (v44 == 2)
            {
              v50 = 0xE500000000000000;
              if (v46 != 0x6C6174656DLL)
              {
                goto LABEL_63;
              }
            }

            else if (v44 == 3)
            {
              v50 = 0xE500000000000000;
              if (v46 != 0x7466697773)
              {
                goto LABEL_63;
              }
            }

            else
            {
              v50 = 0xE200000000000000;
              if (v46 != 29546)
              {
                goto LABEL_63;
              }
            }

            if (v45 != v50)
            {
LABEL_63:
              v78 = sub_1AFDFEE28();

              if ((v78 & 1) == 0)
              {
                goto LABEL_15;
              }

              goto LABEL_52;
            }

            goto LABEL_51;
          }
        }

LABEL_25:
        v47 = *(v34 + 16);
        if (v47 > 1 || *(v34 + 16))
        {
          v48 = sub_1AFDFEE28();

          if (v48)
          {
            goto LABEL_52;
          }

          if (v47 != 1)
          {
            v49 = sub_1AFDFEE28();

            if ((v49 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_52;
          }
        }

LABEL_51:

LABEL_52:
        v51 = v4;
        sub_1AFB12BD8(v34, v160, type metadata accessor for ShaderScript);
        v52 = v5[5];
        v152 = v5[6];
        v153 = v52;

        v53 = v208;
        v151 = sub_1AF6496EC(v208);

        v54 = v157;
        v55 = *(v158 + 24);
        v159 = v34;
        sub_1AFB12858(v34 + v55, v157);
        v56 = type metadata accessor for ScriptIndex(0);
        v57 = *(v56 - 8);
        v58 = *(v57 + 48);
        if (v58(v54, 1, v56) == 1)
        {

          v59 = sub_1AF6496EC(v53);

          v60 = v161;
          *v161 = v59;
          v61 = v157;
          swift_storeEnumTagMultiPayload();
          v62 = v58(v61, 1, v56);
          v63 = v160;
          if (v62 != 1)
          {
            sub_1AF687E28(v61);
          }
        }

        else
        {
          v60 = v161;
          sub_1AFB128EC(v54, v161);
          v63 = v160;
        }

        (*(v57 + 56))(v60, 0, 1, v56);
        v64 = sub_1AFAAADB4(0, 0, &v164);
        if (v51)
        {
          sub_1AFB12B14(v63, type metadata accessor for ShaderScript);
          sub_1AF687E28(v60);
          if (v148)
          {
            goto LABEL_125;
          }

          v4 = 0;
          v5 = v154;
          v27 = v155;
          v34 = v159;
        }

        else
        {
          v141 = &v132;
          v65 = v151;
          v66 = v164;
          v67 = v165;
          v68 = v166;
          v144 = v168;
          v142 = v167;
          v143 = v169;
          MEMORY[0x1EEE9AC00](v64);
          v70 = v152;
          v69 = v153;
          *(&v132 - 6) = v153;
          *(&v132 - 5) = v70;
          *(&v132 - 8) = v65;
          *(&v132 - 7) = v71;
          *(&v132 - 3) = 0x726564616873;
          *(&v132 - 2) = 0xE600000000000000;
          *(&v132 - 1) = v161;
          v145 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v132 - 8), v66);
          v156 = 0;
          v72 = sub_1AFAF8B58(v67, v68, v69, v70, v65, 0x726564616873uLL, 0xE600000000000000, v161);
          v74 = v73;

          sub_1AFB12B14(v63, type metadata accessor for ShaderScript);
          sub_1AF687E28(v161);
          v27 = v155;

          sub_1AF6496EC(v208);

          sub_1AFAACE38();

          v75 = v149;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1AF425C8C(0, *(v75 + 2) + 1, 1, v75);
          }

          v34 = v159;
          v77 = *(v75 + 2);
          v76 = *(v75 + 3);
          v149 = v75;
          v4 = v156;
          v5 = v154;
          if (v77 >= v76 >> 1)
          {
            v149 = sub_1AF425C8C(v76 > 1, v77 + 1, 1, v149);
          }

          v35 = v149;
          *(v149 + 2) = v77 + 1;
          v36 = &v35[40 * v77];
          *(v36 + 4) = v145;
          *(v36 + 5) = v72;
          *(v36 + 6) = v74;
          strcpy(v36 + 56, "Shader Script");
          *(v36 + 35) = -4864;
        }

LABEL_15:
        v34 += v150;
        v32 = v163;
        v26 = v162 - 1;
        if (v162 == 1)
        {
          goto LABEL_66;
        }
      }

      goto LABEL_25;
    }

    v79 = v208;
    if (v208 == v163)
    {
      goto LABEL_66;
    }

    v80 = *(v132 + 72);
    v150 = v163 - 1;
    v162 = v80;
    v159 = v33;
    do
    {
      v81 = v34 + v80 * v79;
      v82 = v79;
      while (1)
      {
        v208 = v82;
        v83 = *(*v5 + 104);
        if (!v83())
        {
LABEL_79:

          goto LABEL_80;
        }

        v84 = sub_1AFDFEE28();

        if ((v84 & 1) == 0)
        {
          if ((v83)(v85) == 1)
          {
            goto LABEL_79;
          }

          v86 = sub_1AFDFEE28();

          if ((v86 & 1) == 0)
          {
            v88 = *(v81 + 16);
            v89 = (v83)(v87);
            if (v88 <= 1)
            {
              if (v88)
              {
                v90 = 0xE600000000000000;
                v91 = 0x7070636A626FLL;
              }

              else
              {
                v90 = 0xE100000000000000;
                v91 = 99;
              }
            }

            else if (v88 == 2)
            {
              v90 = 0xE500000000000000;
              v91 = 0x6C6174656DLL;
            }

            else if (v88 == 3)
            {
              v90 = 0xE500000000000000;
              v91 = 0x7466697773;
            }

            else
            {
              v90 = 0xE200000000000000;
              v91 = 29546;
            }

            if (v89 <= 1u)
            {
              if (v89)
              {
                v95 = 0xE600000000000000;
                if (v91 != 0x7070636A626FLL)
                {
                  goto LABEL_114;
                }

                goto LABEL_104;
              }

              v95 = 0xE100000000000000;
              if (v91 == 99)
              {
                goto LABEL_104;
              }
            }

            else if (v89 == 2)
            {
              v95 = 0xE500000000000000;
              if (v91 == 0x6C6174656DLL)
              {
                goto LABEL_104;
              }
            }

            else
            {
              if (v89 == 3)
              {
                v95 = 0xE500000000000000;
                if (v91 != 0x7466697773)
                {
                  goto LABEL_114;
                }

LABEL_104:
                if (v90 == v95)
                {

LABEL_106:

                  goto LABEL_107;
                }

                goto LABEL_114;
              }

              v95 = 0xE200000000000000;
              if (v91 == 29546)
              {
                goto LABEL_104;
              }
            }

LABEL_114:
            v108 = sub_1AFDFEE28();

            if ((v108 & 1) == 0)
            {
              goto LABEL_70;
            }

            goto LABEL_107;
          }
        }

LABEL_80:
        v92 = *(v81 + 16);
        if (v92 <= 1 && !*(v81 + 16))
        {
          goto LABEL_106;
        }

        v93 = sub_1AFDFEE28();

        if (v93)
        {
          goto LABEL_107;
        }

        if (v92 == 1)
        {
          goto LABEL_106;
        }

        v94 = sub_1AFDFEE28();

        if ((v94 & 1) == 0)
        {
          goto LABEL_70;
        }

LABEL_107:
        v156 = v4;
        sub_1AFB12BD8(v81, v147, type metadata accessor for ShaderScript);
        v96 = v5[5];
        v152 = v5[6];
        v153 = v96;

        v97 = v208;
        v151 = sub_1AF6496EC(v208);

        v98 = v146;
        sub_1AFB12858(v81 + *(v158 + 24), v146);
        v99 = type metadata accessor for ScriptIndex(0);
        v100 = *(v99 - 8);
        v101 = *(v100 + 48);
        if (v101(v98, 1, v99) == 1)
        {

          v102 = sub_1AF6496EC(v97);

          v103 = v140;
          *v140 = v102;
          v104 = v146;
          swift_storeEnumTagMultiPayload();
          if (v101(v104, 1, v99) != 1)
          {
            sub_1AF687E28(v104);
          }
        }

        else
        {
          v103 = v140;
          sub_1AFB128EC(v98, v140);
        }

        (*(v100 + 56))(v103, 0, 1, v99);
        v105 = v147;
        v106 = v156;
        v107 = sub_1AFAAADB4(0, 0, &v164);
        v4 = v106;
        if (!v106)
        {
          break;
        }

        sub_1AFB12B14(v105, type metadata accessor for ShaderScript);
        sub_1AF687E28(v103);
        if (v148)
        {
LABEL_125:
          v129 = v155;
          swift_willThrow();
          v191 = v136;
          v192 = v186;
          v193 = v187;
          sub_1AF630994(v139, &v191, v194);
          sub_1AF62D29C(v129);
          ecs_stack_allocator_pop_snapshot(v138);
          if (v137)
          {
            os_unfair_lock_unlock(*(v129 + 344));
            os_unfair_lock_unlock(*(v129 + 376));
          }

          sub_1AFB12A64(&v176, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);

          v130 = MEMORY[0x1E69E6720];
          sub_1AFB12A64(v182, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
          sub_1AFB12A64(v182, &qword_1ED725EA0, &type metadata for QueryResult, v130, sub_1AFB12AC4);
        }

        v4 = 0;
        v5 = v154;
        v27 = v155;
LABEL_70:
        v82 = v208 + 1;
        v81 += v162;
        if (v163 == (v208 + 1))
        {
          goto LABEL_66;
        }
      }

      v142 = &v132;
      v109 = v164;
      v141 = v165;
      v110 = v166;
      v111 = v151;
      v145 = v168;
      v143 = v167;
      v144 = v169;
      MEMORY[0x1EEE9AC00](v107);
      v112 = v152;
      v113 = v153;
      *(&v132 - 6) = v153;
      *(&v132 - 5) = v112;
      *(&v132 - 8) = v111;
      *(&v132 - 7) = v114;
      *(&v132 - 3) = 0x726564616873;
      *(&v132 - 2) = 0xE600000000000000;
      *(&v132 - 1) = v103;
      v156 = sub_1AFBFBEF0(sub_1AFA9EB54, (&v132 - 8), v109);
      v115 = sub_1AFAF8B58(v141, v110, v113, v112, v111, 0x726564616873uLL, 0xE600000000000000, v103);
      v153 = v116;

      sub_1AFB12B14(v147, type metadata accessor for ShaderScript);
      sub_1AF687E28(v103);
      v27 = v155;

      v117 = v208;
      sub_1AF6496EC(v208);

      sub_1AFAACE38();

      v118 = v149;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v118 = sub_1AF425C8C(0, *(v118 + 2) + 1, 1, v118);
      }

      v5 = v154;
      v80 = v162;
      v120 = *(v118 + 2);
      v119 = *(v118 + 3);
      v149 = v118;
      if (v120 >= v119 >> 1)
      {
        v149 = sub_1AF425C8C(v119 > 1, v120 + 1, 1, v149);
      }

      v79 = v117 + 1;
      v121 = v149;
      *(v149 + 2) = v120 + 1;
      v122 = &v121[40 * v120];
      *(v122 + 4) = v156;
      *(v122 + 5) = v115;
      *(v122 + 6) = v153;
      strcpy(v122 + 56, "Shader Script");
      *(v122 + 35) = -4864;
      v34 = v159;
    }

    while (v150 != v117);
LABEL_66:
    v188 = v136;
    v189 = v186;
    v190 = v187;
    sub_1AF630994(v139, &v188, v194);
    sub_1AF62D29C(v27);
    ecs_stack_allocator_pop_snapshot(v138);
    if (v137)
    {
      os_unfair_lock_unlock(*(v27 + 344));
      os_unfair_lock_unlock(*(v27 + 376));
    }

    v21 = v135 + 1;
    if (v135 + 1 != v133)
    {
      continue;
    }

    break;
  }

  sub_1AFB12A64(&v176, &qword_1ED723E58, type metadata accessor for ShaderScript, &off_1F255B8D0, sub_1AFB12B74);
  sub_1AFB12A64(v182, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  v131 = v149;
LABEL_129:
  sub_1AFB12A64(v182, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFB12AC4);
  return v131;
}