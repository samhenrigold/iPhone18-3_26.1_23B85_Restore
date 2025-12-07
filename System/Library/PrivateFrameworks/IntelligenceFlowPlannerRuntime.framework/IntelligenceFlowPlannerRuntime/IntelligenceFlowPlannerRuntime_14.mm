uint64_t sub_22C4A25D4(unint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier(0);
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = &v58[-v4];
  v6 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v58[-v8];
  switch(a1 >> 61)
  {
    case 1uLL:
      swift_projectBox();
      sub_22C4AB80C();
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90F800;
      sub_22C4AB80C();
      *(inited + 32) = sub_22C90A1AC();
      *(inited + 40) = v46;
      v14 = sub_22C490F28(0x696669746E656469, 0xEA00000000007265, inited, 0, 0);
      swift_setDeallocating();
      sub_22C58FFC4();
      v36 = type metadata accessor for PromptTreeIdentifier.Label;
      v37 = v9;
      goto LABEL_14;
    case 2uLL:
      v26 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v27 = *(swift_projectBox() + *(v26 + 48));
      sub_22C4AB80C();
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v28 = swift_initStackObject();
      *(v28 + 16) = xmmword_22C90F870;
      strcpy(v61, "identifier: ");
      BYTE5(v61[1]) = 0;
      HIWORD(v61[1]) = -5120;
      sub_22C4AB80C();

      v29 = sub_22C90A1AC();
      MEMORY[0x2318B7850](v29);

      v30 = v61[1];
      *(v28 + 32) = v61[0];
      *(v28 + 40) = v30;
      v59 = 0x203A65646F6ELL;
      v60 = 0xE600000000000000;
      swift_beginAccess();
      v31 = *(v27 + 16);

      v32 = sub_22C4A25D4(v31);
      v34 = v33;

      MEMORY[0x2318B7850](v32, v34);

      v35 = v60;
      *(v28 + 48) = v59;
      *(v28 + 56) = v35;
      v14 = sub_22C490F28(0x676E69646E6962, 0xE700000000000000, v28, 0, 0);

      swift_setDeallocating();
      sub_22C58FFC4();
      v36 = type metadata accessor for PromptTreeIdentifier;
      v37 = v5;
LABEL_14:
      sub_22C4AB864(v37, v36);
      return v14;
    case 3uLL:
      v38 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_22C90F800;
      v40 = *(v38 + 16);

      sub_22C4A2CE8(v40);
      v42 = v41;
      v44 = v43;

      *(v39 + 32) = v42;
      *(v39 + 40) = v44;
      v14 = sub_22C490F28(0x7461636E6F63, 0xE600000000000000, v39, 0, 0);

      goto LABEL_12;
    case 4uLL:
      v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_22C90F870;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_22C90AF5C();

      v61[0] = 0xD00000000000001ALL;
      v61[1] = 0x800000022C930CD0;
      if (v15)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v15)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      MEMORY[0x2318B7850](v18, v19);

      v20 = v61[1];
      *(v17 + 32) = v61[0];
      *(v17 + 40) = v20;
      v59 = 0x203A65646F6ELL;
      v60 = 0xE600000000000000;
      swift_beginAccess();
      v21 = *(v16 + 16);

      v22 = sub_22C4A25D4(v21);
      v24 = v23;

      MEMORY[0x2318B7850](v22, v24);

      v25 = v60;
      *(v17 + 48) = v59;
      *(v17 + 56) = v25;
      v14 = sub_22C490F28(0xD000000000000010, 0x800000022C930CF0, v17, 0, 0);
LABEL_12:
      swift_setDeallocating();
      break;
    case 5uLL:
      v47 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v48 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v49 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v50 = swift_initStackObject();
      *(v50 + 16) = xmmword_22C90F800;
      swift_beginAccess();
      v51 = *(v49 + 16);

      v52 = sub_22C4A25D4(v51);
      v54 = v53;

      *(v50 + 32) = v52;
      *(v50 + 40) = v54;
      v55 = sub_22C491384(v47, v48);
      v14 = sub_22C490F28(0x796C707061, 0xE500000000000000, v50, v55, v56);

      swift_setDeallocating();
      break;
    default:
      sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_22C90F800;

      v11 = sub_22C90A2AC();
      v13 = v12;

      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      v14 = sub_22C490F28(0x676E69727473, 0xE600000000000000, v10, 0, 0);
      swift_setDeallocating();
      break;
  }

  sub_22C58FFC4();
  return v14;
}

void sub_22C4A2CE8(uint64_t a1)
{
  if (a1 < 0)
  {
    v25 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v27 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    sub_22C3A5908(&qword_27D9BAB68, &qword_22C914840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22C90F800;
    v29 = *(v27 + 16);

    v30 = sub_22C4A2CE8(v29);
    v32 = v31;

    *(inited + 32) = v30;
    *(inited + 40) = v32;
    v33 = sub_22C491594(v25, v26);
    sub_22C490F28(0x796C707061, 0xE500000000000000, inited, v33, v34);

    swift_setDeallocating();
    sub_22C58FFC4();
    return;
  }

  v1 = *(a1 + 16);
  v2 = sub_22C36E2B8();
  if (!v2)
  {
LABEL_14:
    sub_22C3A5908(&qword_27D9BB5D0, &unk_22C9112A0);
    sub_22C3D32C8(&qword_28142F9F0, &qword_27D9BB5D0, &unk_22C9112A0, MEMORY[0x277D83958]);
    sub_22C90A04C();

    v22 = sub_22C90A29C();
    v24 = v23;

    MEMORY[0x2318B7850](v22, v24);

    MEMORY[0x2318B7850](2710794, 0xE300000000000000);
    return;
  }

  v3 = v2;
  v35 = MEMORY[0x277D84F90];
  v4 = v2 & ~(v2 >> 63);

  sub_22C3B5E2C(0, v4, 0, v5, v6, v7, v8);
  if (v3 < 0)
  {
    goto LABEL_18;
  }

  v9 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2318B8460](v9, v1);
      goto LABEL_10;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v10 = *(v1 + 8 * v9 + 32);

LABEL_10:
    swift_beginAccess();
    v11 = *(v10 + 16);

    v12 = sub_22C4A25D4(v11);
    v14 = v13;
    swift_endAccess();

    v20 = *(v35 + 16);
    v19 = *(v35 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22C3B5E2C(v19 > 1, v20 + 1, 1, v15, v16, v17, v18);
    }

    ++v9;
    *(v35 + 16) = v20 + 1;
    v21 = v35 + 16 * v20;
    *(v21 + 32) = v12;
    *(v21 + 40) = v14;
    if (v3 == v9)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_22C4A3004(void *a1, uint64_t a2, uint64_t a3)
{
  v79 = a1;
  v6 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v74 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v74 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v74 = a3;
    v21 = *(a2 + 16);
    v22 = sub_22C36E2B8();
    v76 = v21 & 0xC000000000000001;
    v77 = v22;
    v75 = v21 & 0xFFFFFFFFFFFFFF8;
    v78 = v21;

    v23 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v24 = v80;
      if (v77 == v23)
      {
        goto LABEL_42;
      }

      if (v76)
      {
        MEMORY[0x2318B8460](v23, v78);
      }

      else
      {
        if (v23 >= *(v75 + 16))
        {
          goto LABEL_44;
        }
      }

      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_beginAccess();

      v25 = v20;
      sub_22C4A0390();
      if (v24)
      {

        goto LABEL_33;
      }

      v29 = v26;
      v30 = v27;
      v31 = v28;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C591140(0, *(v3 + 16) + 1, 1, v3);
        v3 = v36;
      }

      v34 = *(v3 + 16);
      v33 = *(v3 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_22C591140(v33 > 1, v34 + 1, 1, v3);
        v3 = v37;
      }

      *(v3 + 16) = v34 + 1;
      v35 = (v3 + 24 * v34);
      v35[4] = v29;
      v35[5] = v30;
      v35[6] = v31;
      ++v23;
      v20 = v25;
    }
  }

  v38 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v39 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v40 = *(*((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);
  if (v39)
  {
    if (v39 == 1)
    {

      v63 = v80;
      v64 = sub_22C4A3004(v79, v40, v15);
      if (!v63)
      {
        v65 = v64;

        v81[0] = v65;

        sub_22C4A80C0(v81);

        return v81[0];
      }
    }

    else if (v39 == 2)
    {

      v41 = v80;
      v42 = sub_22C4A3004(v79, v40, v9);
      if (!v41)
      {
        v24 = v42;
        v80 = 0;

        v43 = 0;
        v44 = v24[2];
        v45 = v24 + 5;
        v3 = MEMORY[0x277D84F90];
LABEL_20:
        v46 = &v45[3 * v43];
        while (v44 != v43)
        {
          if (v43 >= v24[2])
          {
LABEL_45:
            __break(1u);

            __break(1u);
            return result;
          }

          ++v43;
          v47 = v46 + 3;
          v49 = *(v46 - 1);
          v48 = *v46;
          v50 = HIBYTE(*v46) & 0xF;
          v51 = v49 & 0xFFFFFFFFFFFFLL;
          if ((v48 & 0x2000000000000000) != 0)
          {
            v51 = v50;
          }

          v46 = v47;
          if (v51)
          {
            v52 = *(v47 - 2);

            v53 = swift_isUniquelyReferenced_nonNull_native();
            v81[0] = v3;
            if ((v53 & 1) == 0)
            {
              sub_22C3B6540(0, *(v3 + 16) + 1, 1, v54, v55, v56, v57);
              v3 = v81[0];
            }

            v59 = *(v3 + 16);
            v58 = *(v3 + 24);
            v60 = v59 + 1;
            if (v59 >= v58 >> 1)
            {
              v79 = v45;
              sub_22C3B6540(v58 > 1, v59 + 1, 1, v54, v55, v56, v57);
              v60 = v59 + 1;
              v45 = v79;
              v3 = v81[0];
            }

            *(v3 + 16) = v60;
            v61 = (v3 + 24 * v59);
            v61[4] = v49;
            v61[5] = v48;
            v61[6] = v52;
            goto LABEL_20;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v70 = *(v38 + 16);
      sub_22C480170(v70, v39);

      v71 = v80;
      v72 = sub_22C4A3004(v79, v40, v12);
      if (!v71)
      {
        v73 = v72;

        v81[4] = v73;
        v81[0] = v70;
        v81[1] = v39;
        v81[2] = MEMORY[0x277D84FA0];
        sub_22C3A5908(&qword_27D9BD038, &qword_22C917408);
        sub_22C3D32C8(&qword_27D9BD040, &qword_27D9BD038, &qword_22C917408, MEMORY[0x277D83988]);
        v3 = sub_22C90A94C();
        sub_22C48FEE0(v70, v39);
LABEL_42:

        return v3;
      }

      sub_22C48FEE0(v70, v39);
    }
  }

  else
  {

    v66 = v80;
    v67 = sub_22C4A3004(v79, v40, v18);
    if (!v66)
    {
      v68 = v67;

      sub_22C4A3BDC(v68);
      v3 = v69;

      return v3;
    }
  }

LABEL_33:

  sub_22C407C2C();
  return v3;
}

uint64_t sub_22C4A35F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = a1;
  v6 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v76 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v76 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v76 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v76 = a3;
    v21 = *(a2 + 16);
    v22 = sub_22C36E2B8();
    v78 = v21 & 0xC000000000000001;
    v79 = v22;
    v77 = v21 & 0xFFFFFFFFFFFFFF8;
    v80 = v21;

    v23 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v24 = v82;
      if (v79 == v23)
      {
        goto LABEL_42;
      }

      if (v78)
      {
        v25 = MEMORY[0x2318B8460](v23, v80);
      }

      else
      {
        if (v23 >= *(v77 + 16))
        {
          goto LABEL_44;
        }

        v25 = *(v80 + 8 * v23 + 32);
      }

      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_beginAccess();
      v26 = *(v25 + 16);

      v27 = v20;
      v28 = sub_22C4A1448(v81, v26, v20);
      if (v24)
      {

        goto LABEL_33;
      }

      v31 = v28;
      v32 = v29;
      v33 = v30;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C591140(0, *(v3 + 16) + 1, 1, v3);
        v3 = v38;
      }

      v36 = *(v3 + 16);
      v35 = *(v3 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22C591140(v35 > 1, v36 + 1, 1, v3);
        v3 = v39;
      }

      *(v3 + 16) = v36 + 1;
      v37 = (v3 + 24 * v36);
      v37[4] = v31;
      v37[5] = v32;
      v37[6] = v33;
      ++v23;
      v20 = v27;
    }
  }

  v40 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v41 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v42 = *(*((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20) + 16);
  if (v41)
  {
    if (v41 == 1)
    {

      v65 = v82;
      v66 = sub_22C4A35F0(v81, v42, v15);
      if (!v65)
      {
        v67 = v66;

        v83[0] = v67;

        sub_22C4A80C0(v83);

        return v83[0];
      }
    }

    else if (v41 == 2)
    {

      v43 = v82;
      v44 = sub_22C4A35F0(v81, v42, v9);
      if (!v43)
      {
        v24 = v44;
        v82 = 0;

        v45 = 0;
        v46 = v24[2];
        v47 = (v24 + 5);
        v3 = MEMORY[0x277D84F90];
LABEL_20:
        v48 = (v47 + 24 * v45);
        while (v46 != v45)
        {
          if (v45 >= v24[2])
          {
LABEL_45:
            __break(1u);

            __break(1u);
            return result;
          }

          ++v45;
          v49 = v48 + 3;
          v51 = *(v48 - 1);
          v50 = *v48;
          v52 = HIBYTE(*v48) & 0xF;
          v53 = v51 & 0xFFFFFFFFFFFFLL;
          if ((v50 & 0x2000000000000000) != 0)
          {
            v53 = v52;
          }

          v48 = v49;
          if (v53)
          {
            v54 = *(v49 - 2);

            v55 = swift_isUniquelyReferenced_nonNull_native();
            v83[0] = v3;
            if ((v55 & 1) == 0)
            {
              sub_22C3B6540(0, *(v3 + 16) + 1, 1, v56, v57, v58, v59);
              v3 = v83[0];
            }

            v61 = *(v3 + 16);
            v60 = *(v3 + 24);
            v62 = v61 + 1;
            if (v61 >= v60 >> 1)
            {
              v81 = v47;
              sub_22C3B6540(v60 > 1, v61 + 1, 1, v56, v57, v58, v59);
              v62 = v61 + 1;
              v47 = v81;
              v3 = v83[0];
            }

            *(v3 + 16) = v62;
            v63 = (v3 + 24 * v61);
            v63[4] = v51;
            v63[5] = v50;
            v63[6] = v54;
            goto LABEL_20;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v72 = *(v40 + 16);
      sub_22C480170(v72, v41);

      v73 = v82;
      v74 = sub_22C4A35F0(v81, v42, v12);
      if (!v73)
      {
        v75 = v74;

        v83[4] = v75;
        v83[0] = v72;
        v83[1] = v41;
        v83[2] = MEMORY[0x277D84FA0];
        sub_22C3A5908(&qword_27D9BD038, &qword_22C917408);
        sub_22C3D32C8(&qword_27D9BD040, &qword_27D9BD038, &qword_22C917408, MEMORY[0x277D83988]);
        v3 = sub_22C90A94C();
        sub_22C48FEE0(v72, v41);
LABEL_42:

        return v3;
      }

      sub_22C48FEE0(v72, v41);
    }
  }

  else
  {

    v68 = v82;
    v69 = sub_22C4A35F0(v81, v42, v18);
    if (!v68)
    {
      v70 = v69;

      sub_22C4A3BDC(v70);
      v3 = v71;

      return v3;
    }
  }

LABEL_33:

  sub_22C407C2C();
  return v3;
}

uint64_t sub_22C4A3BDC(uint64_t a1)
{
  v3[5] = a1;

  sub_22C3A5908(&qword_27D9BD038, &qword_22C917408);
  sub_22C3A5908(&qword_27D9BD048, &unk_22C917410);
  if (swift_dynamicCast())
  {
    sub_22C36FF94(v3);
    sub_22C3B0E80();
    result = sub_22C7D602C(a1);
    if (*(a1 + 16) <= 0xFuLL)
    {

      return 0;
    }
  }

  else
  {
    sub_22C4076EC(*(a1 + 16), 0);
    sub_22C4A75E4(a1);

    return 0;
  }

  return result;
}

uint64_t sub_22C4A3CCC(uint64_t a1, unint64_t a2)
{
  v21 = a1;
  v22 = a2;

  sub_22C3A5908(&qword_27D9BD048, &unk_22C917410);
  if (swift_dynamicCast())
  {
    sub_22C36FF94(&v17);

    v4 = sub_22C4AAE9C(a1, a2);

    sub_22C3B0E80();
    v5 = sub_22C7D60B0();
    v6 = v4[2];

    if (v6 <= 0xF)
    {

      return 0;
    }
  }

  else
  {
    v7 = sub_22C90A30C();
    v18 = MEMORY[0x277D84F90];
    sub_22C40772C(v7, 0);
    v21 = 0;
    v22 = v18;
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v17 = a1;
    v18 = a2;
    v19 = 0;
    v20 = v8;

    while (1)
    {
      v9 = sub_22C90A3AC();
      if (!v10)
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      v13 = (v22 + 40);
      v14 = *(v22 + 16) + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v11 || v12 != *v13)
        {
          v13 += 2;
          if ((sub_22C90B4FC() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      sub_22C7D47FC(v11, v12, 0);
LABEL_17:
    }

    return v21;
  }

  return v5;
}

uint64_t *sub_22C4A3EB8(uint64_t a1)
{
  v3 = sub_22C9063DC();
  v108 = *(v3 - 8);
  v109 = v3;
  MEMORY[0x28223BE20](v3);
  v106 = v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_22C3A5908(&qword_27D9BC490, &unk_22C914240);
  v5 = MEMORY[0x28223BE20](v107);
  v7 = v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v110 = v99 - v9;
  MEMORY[0x28223BE20](v8);
  v105 = v99 - v10;
  v121 = sub_22C3A5908(&qword_27D9BD030, &qword_22C917400);
  v11 = MEMORY[0x28223BE20](v121);
  v120 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v119 = v99 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v118 = v99 - v16;
  MEMORY[0x28223BE20](v15);
  v117 = v99 - v17;
  v18 = type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
  v124 = *(v18 - 8);
  v125 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760);
  v127 = *(v21 - 8);
  v128 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v116 = v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = v99 - v24;
  v26 = type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C4AB0E0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label, &unk_22C916664);
  v27 = MEMORY[0x277D84F90];
  v126 = v26;
  v28 = sub_22C909F0C();
  v129 = v27;
  sub_22C4966D4(v28, &v129, a1);
  if (v1)
  {
LABEL_42:

    __break(1u);
    return result;
  }

  sub_22C492D00();
  v30 = v29;

  v31 = sub_22C4A4CD0(v30);

  v32 = sub_22C49D5DC(v31);

  sub_22C4AC054(v32);
  v34 = v33;
  v36 = v35;

  v123 = 0;
  v99[1] = a1;
  v37 = *(v36 + 16);
  v102 = v7;
  v104 = v34;
  v103 = v36;
  if (v37)
  {
    v129 = v27;
    swift_retain_n();
    sub_22C3B672C(0, v37, 0);
    v38 = v129;
    v39 = v36 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
    v124 = *(v124 + 72);
    do
    {
      sub_22C4AB80C();
      v40 = *(v128 + 48);
      v41 = sub_22C902D0C();
      (*(*(v41 - 8) + 16))(v25, v20, v41);
      swift_storeEnumTagMultiPayload();
      v42 = swift_allocObject();
      v43 = sub_22C902CEC();
      v45 = v44;
      sub_22C4AB864(v20, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      *&v25[v40] = v42;
      *(v42 + 16) = v43;
      *(v42 + 24) = v45;
      v129 = v38;
      v47 = *(v38 + 16);
      v46 = *(v38 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_22C3B672C((v46 > 1), v47 + 1, 1);
        v38 = v129;
      }

      *(v38 + 16) = v47 + 1;
      sub_22C407C2C();
      v39 += v124;
      --v37;
    }

    while (v37);
    v7 = v102;
    v36 = v103;
    v27 = MEMORY[0x277D84F90];
  }

  else
  {
    swift_retain_n();
  }

  v48 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v129 = v48;
  v49 = v123;
  sub_22C4AAAB4();
  v100 = v129;
  v50 = sub_22C4A4DA0(v36);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129 = v48;
  sub_22C4AA670(v50, sub_22C4AA2B0, 0, isUniquelyReferenced_nonNull_native, &v129);
  v52 = v49;

  v101 = v129;
  v53 = sub_22C4A4F9C();
  v54 = *(v53 + 16);
  if (v54)
  {
    v99[0] = v49;
    v129 = v27;
    sub_22C3B672C(0, v54, 0);
    v125 = v129;
    v57 = sub_22C6339F8();
    v58 = 0;
    v59 = v53 + 64;
    v112 = v55;
    v113 = v54;
    v111 = v53 + 72;
    v114 = v53 + 64;
    v115 = v53;
    while ((v57 & 0x8000000000000000) == 0 && v57 < 1 << *(v53 + 32))
    {
      v60 = v57 >> 6;
      if ((*(v59 + 8 * (v57 >> 6)) & (1 << v57)) == 0)
      {
        goto LABEL_37;
      }

      if (*(v53 + 36) != v55)
      {
        goto LABEL_38;
      }

      v123 = v58;
      v124 = v55;
      v122 = v56;
      type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
      sub_22C4AB80C();
      v61 = *(*(v53 + 56) + 8 * v57);
      v62 = v118;
      sub_22C4AB198();
      v63 = v121;
      *&v62[*(v121 + 48)] = v61;
      v64 = *(v128 + 48);
      sub_22C3A7214();

      v65 = v116;
      sub_22C4AB198();
      swift_storeEnumTagMultiPayload();
      v66 = v120;
      sub_22C407C2C();
      *&v65[v64] = *(v66 + *(v63 + 48));
      sub_22C4AB864(v66, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v67 = v125;
      v129 = v125;
      v69 = *(v125 + 16);
      v68 = *(v125 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_22C3B672C((v68 > 1), v69 + 1, 1);
        v67 = v129;
      }

      *(v67 + 16) = v69 + 1;
      v125 = v67;
      sub_22C407C2C();
      v53 = v115;
      v70 = 1 << *(v115 + 32);
      if (v57 >= v70)
      {
        goto LABEL_39;
      }

      v59 = v114;
      v71 = *(v114 + 8 * v60);
      if ((v71 & (1 << v57)) == 0)
      {
        goto LABEL_40;
      }

      if (*(v115 + 36) != v124)
      {
        goto LABEL_41;
      }

      v72 = v71 & (-2 << (v57 & 0x3F));
      if (v72)
      {
        v70 = __clz(__rbit64(v72)) | v57 & 0x7FFFFFFFFFFFFFC0;
        v73 = v113;
      }

      else
      {
        v74 = v60 << 6;
        v75 = v60 + 1;
        v76 = (v111 + 8 * v60);
        v73 = v113;
        while (v75 < (v70 + 63) >> 6)
        {
          v78 = *v76++;
          v77 = v78;
          v74 += 64;
          ++v75;
          if (v78)
          {
            sub_22C3A5038(v57, v124, v122 & 1);
            v70 = __clz(__rbit64(v77)) + v74;
            goto LABEL_27;
          }
        }

        sub_22C3A5038(v57, v124, v122 & 1);
      }

LABEL_27:
      v56 = 0;
      v58 = v123 + 1;
      v57 = v70;
      v55 = v112;
      if (v123 + 1 == v73)
      {

        v7 = v102;
        v52 = v99[0];
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_30:
  v79 = v100;
  swift_isUniquelyReferenced_nonNull_native();
  v129 = v79;
  sub_22C4AAAB4();
  v80 = v52;
  v81 = v129;
  v82 = v104;
  v83 = sub_22C4A5318();
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v129 = v81;
  sub_22C4AA32C(v83, sub_22C4AA240, 0, v84, &v129);
  v85 = sub_22C8A5524(v129);

  sub_22C4A1448(v85, v82, v110);
  if (v80)
  {

    sub_22C407C2C();
    sub_22C407C2C();
    v87 = v106;
    sub_22C903F7C();

    v88 = sub_22C9063CC();
    v89 = sub_22C90AADC();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v129 = v91;
      *v90 = 136315138;
      v92 = sub_22C491AFC();
      v93 = sub_22C4A25D4(v92);
      v95 = v94;

      v96 = sub_22C36F9F4(v93, v95, &v129);

      *(v90 + 4) = v96;
      v7 = v102;
      sub_22C36FF94(v91);
      MEMORY[0x2318B9880](v91, -1, -1);
      MEMORY[0x2318B9880](v90, -1, -1);
    }

    (*(v108 + 8))(v87, v109);
    v97 = &qword_27D9BC490;
    sub_22C3D32C8(&qword_27D9BC4A8, &qword_27D9BC490, &unk_22C914240, &unk_22C917330);
    swift_allocError();
    sub_22C3A7214();
    swift_willThrow();

    sub_22C36DD28(v7, &qword_27D9BC490, &unk_22C914240);
  }

  else
  {
    v97 = v86;
  }

  return v97;
}

unint64_t sub_22C4A4C7C()
{
  result = qword_27D9BD028;
  if (!qword_27D9BD028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD028);
  }

  return result;
}

uint64_t sub_22C4A4DA0(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptReferenceResolver.BoundVariable(0) - 8;
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;

  sub_22C4A812C(&v10);
  v5 = v10;
  sub_22C902D0C();
  sub_22C4AB0E0(&qword_27D9BAAA8, MEMORY[0x277D1D800], MEMORY[0x277D1D808]);
  v6 = 0;
  v10 = sub_22C909F0C();
  v7 = *(v5 + 16);
  while (1)
  {
    if (v7 == v6)
    {

      return v10;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    sub_22C4AB80C();
    sub_22C4A6914(&v10, v4);
    ++v6;
    sub_22C4AB864(v4, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
  }

  __break(1u);

  sub_22C4AB864(v4, type metadata accessor for TranscriptReferenceResolver.BoundVariable);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_22C4A4F9C()
{
  v1 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v39 = (v3 - v4);
  sub_22C369930();
  MEMORY[0x28223BE20](v5);
  sub_22C3804A4();
  MEMORY[0x28223BE20](v6);
  v8 = (v37 - v7);
  v41 = MEMORY[0x277D84F90];
  v9 = 0;
  sub_22C495588();
  v11 = v10;
  v13 = v12;

  v40 = sub_22C4A5964(v11, v13);
  v15 = v14;
  v16 = 0;
  v41 = MEMORY[0x277D84F98];
  v17 = *(v14 + 16);
  while (v17 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_22C3819F8();
    sub_22C37FD68();
    sub_22C4AB80C();
    sub_22C4A5B50(&v41, v8, v40);
    ++v16;
    sub_22C37F138();
  }

  v37[2] = v13;
  v37[3] = v11;

  v18 = v41;
  v19 = v40;
  v38 = *(v40 + 16);
  if (!v38)
  {
LABEL_18:

    return v18;
  }

  v37[1] = v1;
  v20 = 0;
  sub_22C3819F8();
  v37[4] = v21;
  v9 = v39;
  while (v20 < *(v19 + 16))
  {
    sub_22C4AB80C();
    sub_22C4AB80C();
    v22 = *v0;

    swift_isUniquelyReferenced_nonNull_native();
    v41 = v18;
    sub_22C628410();
    sub_22C369DA4();
    v9 = (v25 + v26);
    if (__OFADD__(v25, v26))
    {
      goto LABEL_21;
    }

    v27 = v23;
    v28 = v24;
    sub_22C3A5908(&qword_27D9BD070, &unk_22C922820);
    if (sub_22C90B15C())
    {
      v9 = v39;
      v29 = sub_22C628410();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

      v27 = v29;
    }

    else
    {
      v9 = v39;
    }

    v18 = v41;
    if (v28)
    {
      *(*(v41 + 56) + 8 * v27) = v22;

      sub_22C370660();
      sub_22C4AB864(v9, v31);
      sub_22C4AB864(v0, v27);
    }

    else
    {
      sub_22C37A010();
      sub_22C37FD68();
      sub_22C4AB80C();
      *(*(v18 + 56) + 8 * v27) = v22;
      sub_22C370660();
      sub_22C4AB864(v9, v32);
      sub_22C4AB864(v0, v27);
      v33 = *(v18 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_22;
      }

      *(v18 + 16) = v35;
    }

    ++v20;
    v19 = v40;
    if (v38 == v20)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);

  sub_22C37F138();

  __break(1u);
LABEL_23:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4A5318()
{
  v1 = type metadata accessor for PromptTreeResolution.State(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  v6 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  sub_22C36C640(v0, 1, 1, v6);
  v7 = *(v2 + 28);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
  sub_22C4AB0E0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label, &unk_22C916664);
  v8 = MEMORY[0x277D84F90];
  *(v0 + v7) = sub_22C909F0C();
  v11[1] = v8;
  sub_22C495A5C();

  sub_22C4AB864(v0, type metadata accessor for PromptTreeResolution.State);
  v9 = *&v5[*(v2 + 28)];

  sub_22C4AB864(v5, type metadata accessor for PromptTreeResolution.State);
  return v9;
}

void sub_22C4A54AC()
{
  sub_22C370030();
  v2 = v1;
  v4 = v3;
  v5 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v7 = sub_22C38165C();
  v8 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v7);
  v9 = sub_22C369914(v8);
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = v43 - v15;
  sub_22C3A7214();
  v17 = type metadata accessor for PromptTreeIdentifier(0);
  if (sub_22C370B74(v16, 1, v17) == 1)
  {
    sub_22C36DD28(v16, &qword_27D9BCF28, qword_22C9175E0);
LABEL_16:
    sub_22C36FB20();
    return;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_22C388F44();
    v42 = v16;
LABEL_15:
    sub_22C4AB864(v42, v41);
    goto LABEL_16;
  }

  v18 = *(v16 + 1);
  v44[0] = *v16;
  v44[1] = v18;
  v44[2] = *(v16 + 2);
  v45 = *(v16 + 6);
  if (v2 >> 61 != 2)
  {
LABEL_13:
    sub_22C48A6C0(v44);
    goto LABEL_16;
  }

  swift_projectBox();
  sub_22C3A7214();
  v19 = *(v0 + *(v5 + 48));
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_22C48A6C0(v44);

    sub_22C388F44();
    v42 = v0;
    goto LABEL_15;
  }

  sub_22C4AB198();
  sub_22C3870A4();
  swift_beginAccess();
  v20 = *(v19 + 16);

  swift_isUniquelyReferenced_nonNull_native();
  v43[0] = *v4;
  sub_22C628AA0();
  sub_22C369DA4();
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v25 = v21;
    v26 = v22;
    sub_22C3A5908(&qword_27D9BD0A8, &qword_22C917490);
    v27 = sub_22C90B15C();
    v28 = v43[0];
    if ((v27 & 1) == 0)
    {
LABEL_10:
      *v4 = v28;
      if ((v26 & 1) == 0)
      {
        v31 = v20;
        v32 = sub_22C406E58(MEMORY[0x277D84F90]);
        v34 = v33;
        v36 = v35;
        sub_22C4AB1F0(v44, v43);
        v37 = v32;
        v20 = v31;
        sub_22C62F884(v25, v43, v37, v34, v36, v28);
      }

      sub_22C4A580C(v20, v12);
      v39 = v38;

      sub_22C4546F8(v39);
      sub_22C4AB8C0();
      sub_22C4AB864(v12, v40);
      goto LABEL_13;
    }

    v29 = sub_22C628AA0();
    if ((v26 & 1) == (v30 & 1))
    {
      v25 = v29;
      goto LABEL_10;
    }
  }

  sub_22C90B54C();
  __break(1u);
}

void sub_22C4A580C(uint64_t a1, uint64_t a2)
{
  v4 = v2[1];
  v16[2] = *v2;
  v16[3] = v4;
  v16[4] = a2;
  v5 = sub_22C7D5CC4(sub_22C4AB418, v16, v4);
  if (v6)
  {
    sub_22C7D5308();
    v9 = v2[2];
    v7 = v2 + 2;
    v8 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C3B63D4(0, *(v8 + 16) + 1, 1);
      v8 = *v7;
    }

    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_22C3B63D4(v11 > 1, v12 + 1, 1);
      v8 = *v7;
    }

    *(v8 + 16) = v12 + 1;
    *(v8 + 8 * v12 + 32) = a1;
    *v7 = v8;
  }

  else
  {
    v13 = v5;
    v14 = v2[2];
    sub_22C405578(v5, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C360();
      v14 = v15;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *(v14 + 16))
    {
      *(v14 + 8 * v13 + 32) = a1;

      v2[2] = v14;
      return;
    }

    __break(1u);
  }
}

uint64_t sub_22C4A5964(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C90963C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v19[-v9];

  v11 = sub_22C49FE24(a1, a2);
  v12 = *(v5 + 104);
  v12(v10, *MEMORY[0x277D72E08], v4);
  if (v11[2] && (sub_22C628358(), (v14 & 1) != 0))
  {
    v15 = *(v11[7] + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v5 + 8);
  v16(v10, v4);
  v12(v8, *MEMORY[0x277D72E10], v4);
  if (v11[2])
  {
    sub_22C628358();
    if (v17)
    {
    }
  }

  v16(v8, v4);
  return v15;
}

void sub_22C4A5B50(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a2;

  v11 = sub_22C47B6D0(sub_22C4AB0C0, v36, a3);
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  v13 = inited;
  *(inited + 16) = xmmword_22C90F800;
  *(inited + 32) = *a2;
  v14 = *(v11 + 16);
  if (v14)
  {
    v31 = inited;
    v33 = v3;
    v34 = a2;
    v35 = a1;
    v38 = MEMORY[0x277D84F90];

    sub_22C3B63D4(0, v14, 0);
    v15 = v38;
    v16 = *(v8 + 80);
    v32 = v11;
    v17 = v11 + ((v16 + 32) & ~v16);
    v18 = *(v8 + 72);
    do
    {
      sub_22C4AB80C();
      v19 = *v10;

      sub_22C4AB864(v10, type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference);
      v38 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22C3B63D4(v20 > 1, v21 + 1, 1);
        v15 = v38;
      }

      *(v15 + 16) = v21 + 1;
      *(v15 + 8 * v21 + 32) = v19;
      v17 += v18;
      --v14;
    }

    while (v14);

    a1 = v35;
    v13 = v31;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v38 = v13;
  sub_22C3CD124(v15);
  v22 = sub_22C3DB9B0(v38);

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v23 + 32) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22C9173F0;
  v26 = swift_allocObject();
  *(v26 + 16) = v23 | 0x8000000000000000;
  *(v25 + 32) = v26;
  v27 = v25 | 0x8000000000000000;
  v28 = swift_allocObject();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v28 + 16) = v29;
  swift_isUniquelyReferenced_nonNull_native();
  v38 = *a1;
  sub_22C62C26C();
  *a1 = v38;
}

BOOL sub_22C4A5EB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD078, &qword_22C917450);
  MEMORY[0x28223BE20](v4);
  v6 = v13 - v5;
  v7 = sub_22C3A5908(&qword_27D9BD080, &qword_22C917458);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v13 - v8;
  v13[3] = *(a2 + 8);
  v13[1] = *(a1 + 8);
  sub_22C3A5908(&qword_27D9BD088, &unk_22C917460);
  sub_22C3D32C8(&qword_27D9BD090, &qword_27D9BD088, &unk_22C917460, MEMORY[0x277D83970]);
  sub_22C90A4EC();
  sub_22C90B11C();
  do
  {
    sub_22C90B1FC();
    v10 = sub_22C370B74(v9, 1, v4);
    if (v10 == 1)
    {
      break;
    }

    sub_22C407C2C();
    v11 = sub_22C9042DC();
    sub_22C36DD28(v6, &qword_27D9BD078, &qword_22C917450);
  }

  while ((v11 & 1) == 0);

  return v10 != 1;
}

uint64_t sub_22C4A60B4()
{
  v1 = v0;
  v2 = sub_22C902CDC();
  v62 = *(v2 - 8);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C902D0C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v59 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v59 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v59 - v19;
  v64 = *(v6 + 16);
  v64(v12, v1, v5);
  LODWORD(result) = (*(v6 + 88))(v12, v5);
  if (result == *MEMORY[0x277D1D7C8] || result == *MEMORY[0x277D1D798])
  {
    (*(v6 + 8))(v12, v5);
    return 1;
  }

  else
  {
    if (result != *MEMORY[0x277D1D7E8])
    {
      if (result == *MEMORY[0x277D1D7E0])
      {
        (*(v6 + 96))(v12, v5);
        v9 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
        v22 = swift_projectBox() + *(v9 + 48);
        goto LABEL_20;
      }

      if (result == *MEMORY[0x277D1D7D8])
      {
        (*(v6 + 96))(v12, v5);
        v23 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
        v24 = swift_projectBox();
        v25 = v24 + *(v23 + 48);
        v26 = (v23 + 64);
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    (*(v6 + 96))(v12, v5);
    v15 = *v12;
    v4 = *(*v12 + 16);
    v1 = *(*v12 + 24);
    switch(*(*v12 + 32))
    {
      case 4:
        goto LABEL_22;
      case 5:

        sub_22C49F4D4();
        v5 = v37;
        v12 = sub_22C3D0CD0(v37);
        v20 = v38;
        sub_22C4242E4(v4, v1, 5);

        if (v20)
        {
          v39 = 0;
        }

        else
        {
          v39 = v12;
        }

        result = v39 + 1;
        if (v39 != -1)
        {
          return result;
        }

        __break(1u);
        break;
      default:

        return 1;
    }

    do
    {
      if (result != *MEMORY[0x277D1D7D0])
      {
        if (result != *MEMORY[0x277D1D7C0])
        {
          goto LABEL_47;
        }

        v41 = *(v6 + 96);
        v6 += 96;
        v41(v12, v5);
        sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
        swift_projectBox();

        sub_22C49F4D4();
        v20 = v42;

        v43 = sub_22C3D0CD0(v20);
        v45 = v44;

        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = v43;
        }

        result = v46 + 1;
        if (v46 == -1)
        {
          __break(1u);
          goto LABEL_41;
        }

        return result;
      }

      (*(v6 + 96))(v12, v5);
      v40 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v24 = swift_projectBox();
      v26 = (v40 + 48);
      v25 = v24;
LABEL_13:
      v9 = *v26;
      v4 = v64;
      v64(v18, v25, v5);
      (v4)(v15, v24 + v9, v5);

      v20 = sub_22C4A60B4();
      v27 = *(v6 + 8);
      v6 += 8;
      v27(v18, v5);
      v12 = sub_22C4A60B4();
      v27(v15, v5);
      if (v12 <= v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v12;
      }

      result = v28 + 1;
      if (v28 != -1)
      {
        return result;
      }

      __break(1u);
LABEL_18:
      ;
    }

    while (result != *MEMORY[0x277D1D7B8]);
    while (1)
    {
      (*(v6 + 96))(v12, v5);
      v22 = swift_projectBox();
LABEL_20:
      v64(v20, v22, v5);

      v29 = sub_22C4A60B4();
      v30 = *(v6 + 8);
      v6 += 8;
      v30(v20, v5);
      result = v29 + 1;
      if (v29 != -1)
      {
        break;
      }

      __break(1u);
LABEL_22:
      v20 = *(v4 + 2);
      if (v20)
      {
        v59 = v1;
        v61 = v15;
        v65 = MEMORY[0x277D84F90];

        sub_22C3B7290(0, v20, 0);
        v31 = v65;
        v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v60 = v4;
        v33 = &v4[v32];
        v34 = *(v6 + 72);
        v62 = v6 + 8;
        v63 = v34;
        do
        {
          v64(v9, v33, v5);
          v6 = sub_22C4A60B4();
          (*v62)(v9, v5);
          v65 = v31;
          v36 = v31[2];
          v35 = v31[3];
          if (v36 >= v35 >> 1)
          {
            sub_22C3B7290(v35 > 1, v36 + 1, 1);
            v31 = v65;
          }

          v31[2] = v36 + 1;
          v31[v36 + 4] = v6;
          v33 += v63;
          --v20;
        }

        while (v20);
        v4 = v60;
        v15 = v61;
        v1 = v59;
      }

      else
      {
LABEL_41:

        v31 = MEMORY[0x277D84F90];
      }

      v5 = sub_22C3D0CD0(v31);
      v12 = v47;
      sub_22C4242E4(v4, v1, 4);

      v48 = (v12 & 1) != 0 ? 0 : v5;
      result = v48 + 1;
      if (v48 != -1)
      {
        break;
      }

      __break(1u);
LABEL_47:
      if (result == *MEMORY[0x277D1D7B0])
      {
        v49 = *(v6 + 96);
        v6 += 96;
        v49(v12, v5);
        v5 = *v12;
        v50 = swift_projectBox();
        v52 = v62;
        v51 = v63;
        (*(v62 + 16))(v4, v50, v63);
        v53 = sub_22C902CAC();
        sub_22C49F7C8(v53);
        v20 = v54;

        v12 = sub_22C3D0CD0(v20);
        v9 = v55;

        v56 = *(v52 + 8);
        v15 = (v52 + 8);
        v56(v4, v51);

        if (v9)
        {
          v57 = 0;
        }

        else
        {
          v57 = v12;
        }

        result = v57 + 1;
        if (v57 != -1)
        {
          return result;
        }

        __break(1u);
      }

      if (result != *MEMORY[0x277D1D7F0] && result != *MEMORY[0x277D1D7A0])
      {
        if (result != *MEMORY[0x277D1D7F8] && result != *MEMORY[0x277D1D7A8])
        {
          result = sub_22C90B4EC();
          __break(1u);
          return result;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_22C4A6914(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v88 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
  MEMORY[0x28223BE20](v88);
  v90 = &v76 - v4;
  v81 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
  MEMORY[0x28223BE20](v81);
  v79 = &v76 - v5;
  v6 = sub_22C3A5908(&qword_27D9BB640, &unk_22C912190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v76 - v7;
  v9 = sub_22C902D0C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v87 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v83 = &v76 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v76 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v86 = (&v76 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v76 - v23;
  v25 = *(type metadata accessor for TranscriptReferenceResolver.BoundVariable(0) + 20);
  v94 = a2;
  v95 = a1;
  v26 = v8;
  v27 = v10;
  sub_22C439F24(a2 + v25, sub_22C4AB128, v93, v28, v29, v30, v31, v32, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);
  v33 = *(v10 + 16);
  v33(v22, v24, v9);
  v34 = a2;
  v35 = v22;
  v36 = v9;
  v82 = v34;
  (v33)(v26);
  sub_22C36C640(v26, 0, 1, v9);
  v80 = v26;
  sub_22C603588();
  v37 = v24;
  v33(v17, v24, v9);
  v84 = *(v10 + 88);
  v85 = v10 + 88;
  v38 = v84(v17, v9);
  HIDWORD(v78) = *MEMORY[0x277D1D7B8];
  v96 = v10;
  v89 = v24;
  v91 = v10 + 16;
  if (v38 == HIDWORD(v78))
  {
    (*(v10 + 96))(v17, v9);
    swift_projectBox();
    v39 = v79;
    sub_22C3A7214();
    v40 = &v39[*(v81 + 48)];
    v41 = *(v40 + 1);
    v77 = *v40;
    v42 = v86;
    (*(v27 + 32))(v86, v39, v36);

    v43 = v88;
    v79 = swift_allocBox();
    v45 = v44;
    v46 = *(v43 + 48);
    v33(v44, v42, v36);
    v47 = swift_allocObject();
    *(v47 + 16) = v77;
    *(v47 + 24) = v41;
    *(v47 + 32) = 3;
    *&v45[v46] = v47;
    v48 = *(v27 + 104);
    v48(&v45[v46], *MEMORY[0x277D1D7E8], v36);
    *v35 = v79;
    v49 = *MEMORY[0x277D1D7D0];
    v48(v35, *MEMORY[0x277D1D7D0], v36);
    v50 = v80;
    v33(v80, v82, v36);
    sub_22C36C640(v50, 0, 1, v36);
    sub_22C603588();
    v37 = v89;
    v51 = v86;
    v86 = *(v96 + 8);
    (v86)(v51, v36);
  }

  else
  {
    v86 = *(v10 + 8);
    (v86)(v17, v9);
    v49 = *MEMORY[0x277D1D7D0];
  }

  v52 = v87;
  v79 = v33;
  v33(v87, v37, v36);
  v53 = v52;
  v54 = v84;
  v55 = v84(v52, v36);
  v56 = v90;
  if (v55 != v49)
  {
    v71 = v86;
    (v86)(v37, v36);
    v72 = v53;
    return (v71)(v72, v36);
  }

  v76 = v35;
  v57 = v96;
  v77 = *(v96 + 96);
  (v77)(v53, v36);
  swift_projectBox();
  sub_22C3A7214();
  v58 = *(v88 + 48);
  v59 = v83;
  (*(v57 + 32))(v83, v56, v36);
  if (v54(&v56[v58], v36) == *MEMORY[0x277D1D7E8])
  {
    (v77)(&v56[v58], v36);
    v60 = *&v56[v58];
    if (*(v60 + 32) == 3)
    {
      v61 = *(v60 + 16);
      v62 = *(v60 + 24);

      v63 = v81;
      v64 = swift_allocBox();
      v66 = (v65 + *(v63 + 48));
      v67 = v83;
      v68 = v79;
      (v79)(v65, v83, v36);
      *v66 = v61;
      v66[1] = v62;
      v69 = v76;
      *v76 = v64;
      (*(v96 + 104))(v69, HIDWORD(v78), v36);
      v70 = v80;
      (v68)(v80, v82, v36);
      sub_22C36C640(v70, 0, 1, v36);
      sub_22C603588();
      v71 = v86;
      (v86)(v67, v36);
      v72 = v89;
      return (v71)(v72, v36);
    }

    v75 = v86;
    (v86)(v83, v36);
    (v75)(v89, v36);
  }

  else
  {
    v74 = v86;
    (v86)(v59, v36);
    (v74)(v89, v36);
    (v74)(&v56[v58], v36);
  }
}

uint64_t sub_22C4A713C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_22C4A60B4();
  type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
  if (v6 < sub_22C4A60B4())
  {
    return sub_22C605684(a1, *a2);
  }

  v8 = sub_22C902D0C();
  return sub_22C36C640(a3, 1, 1, v8);
}

void sub_22C4A71E0()
{
  sub_22C370030();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C3A5908(&qword_27D9BD068, &unk_22C917440);
  sub_22C369914(v6);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22C38165C();
  type metadata accessor for PromptTreeIdentifier.Label(v8);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  if (v3 >> 61 == 1)
  {
    swift_projectBox();
    sub_22C369D8C();
    sub_22C4AB80C();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_22C4AB910();
      sub_22C4AB198();
      v36 = 0;
      v37 = 0xE000000000000000;
      v21 = *v20;
      if (sub_22C370B74(v5, 1, v13) || !sub_22C45D170(v21, *v5))
      {
        sub_22C3A7214();
        if (sub_22C370B74(v0, 1, v13) == 1)
        {
          sub_22C36DD28(v0, &qword_27D9BD068, &unk_22C917440);
        }

        else
        {
          sub_22C4AB910();
          sub_22C4AB198();
          MEMORY[0x2318B7850](*(v17 + 24), *(v17 + 32));
          sub_22C4AB8F8();
          sub_22C4AB864(v17, v24);
        }

        MEMORY[0x2318B7850](*(v20 + 1), *(v20 + 2));
        v25 = sub_22C45D144(v21);
        v26 = sub_22C45CFCC(v25);
        v27 = *(v20 + 5);
        v28 = *(v20 + 6);
        v34 = v26;
        v35 = v29;

        MEMORY[0x2318B7850](v27, v28);

        MEMORY[0x2318B7850](v34, v35);
      }

      else
      {
        MEMORY[0x2318B7850](*(v20 + 5), *(v20 + 6));
      }

      sub_22C36DD28(v5, &qword_27D9BD068, &unk_22C917440);
      sub_22C4AB80C();
      sub_22C36C640(v5, 0, 1, v13);
      sub_22C4AB80C();
      swift_storeEnumTagMultiPayload();
      v30 = swift_allocObject();
      v31 = v37;
      *(v30 + 16) = v36;
      *(v30 + 24) = v31;
      v32 = *(type metadata accessor for PromptTreeResolution.State(0) + 20);
      swift_isUniquelyReferenced_nonNull_native();
      v34 = *&v5[v32];
      sub_22C62DA9C();
      *&v5[v32] = v34;
      sub_22C3733F8();
      sub_22C4AB864(v1, v33);
      sub_22C4AB8F8();
      v23 = v20;
    }

    else
    {
      sub_22C3733F8();
      v23 = v12;
    }

    sub_22C4AB864(v23, v22);
  }

  sub_22C36FB20();
}

uint64_t sub_22C4A7550(uint64_t a1)
{
  v2 = sub_22C4AB7B8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C4A758C(uint64_t a1)
{
  v2 = sub_22C4AB7B8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22C4A75E4(uint64_t result)
{
  v2 = 0;
  v3 = *(result + 16);
  v52 = result + 32;
  while (1)
  {
LABEL_2:
    if (v2 == v3)
    {
      return result;
    }

    v4 = (v52 + 24 * v2);
    v6 = *v4;
    v5 = v4[1];
    v7 = v4[2];
    ++v2;
    v9 = *v1;
    v8 = v1[1];
    v10 = v8 + 32;
    v11 = *(v8 + 16);
    if (!*v1)
    {
      break;
    }

    sub_22C7DAA5C(v6, v5, v7, v10, v11, (v9 + 16));
    v13 = v12;
    v15 = v14;

    if (v13)
    {
      goto LABEL_40;
    }

LABEL_41:
  }

  v53 = *(v8 + 16);
  v54 = v8 + 32;
  v49 = v2;
  if (!v11)
  {
LABEL_39:

    v15 = 0;
    v1 = v48;
    v2 = v49;
    v3 = v47;
LABEL_40:
    sub_22C7D4404(v6, v5, v7, v15);
    goto LABEL_41;
  }

  v16 = 0;
  v17 = v7 + 56;
  v55 = v6;
  v56 = v5;
  v50 = v7;
  while (2)
  {
    v18 = (v54 + 24 * v16);
    result = *v18;
    v19 = v18[2];
    if (*v18 != v6 || v18[1] != v5)
    {
      v21 = v18[2];
      result = sub_22C90B4FC();
      v19 = v21;
      if ((result & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    if (v19 == v7)
    {
LABEL_42:
      v1 = v48;
      v2 = v49;
      v3 = v47;
      goto LABEL_2;
    }

    if (*(v19 + 16) != *(v7 + 16))
    {
LABEL_38:
      ++v16;
      v6 = v55;
      v5 = v56;
      if (v16 == v53)
      {
        goto LABEL_39;
      }

      continue;
    }

    break;
  }

  v22 = 0;
  v23 = v19 + 56;
  v24 = 1 << *(v19 + 32);
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  else
  {
    v25 = -1;
  }

  v26 = v25 & *(v19 + 56);
  v27 = (v24 + 63) >> 6;
  if (v26)
  {
    do
    {
      v28 = __clz(__rbit64(v26));
      v51 = (v26 - 1) & v26;
LABEL_25:
      v31 = *(v19 + 48) + 24 * (v28 | (v22 << 6));
      v32 = *v31;
      v33 = *(v31 + 8);
      v34 = *(v31 + 16);
      v35 = v19;
      sub_22C90B62C();
      MEMORY[0x2318B8B30](v32 >> 14);
      v36 = v33 >> 14;
      MEMORY[0x2318B8B30](v36);
      MEMORY[0x2318B8B10](v34);
      result = sub_22C90B66C();
      v19 = v35;
      v7 = v50;
      v37 = -1 << *(v50 + 32);
      v38 = result & ~v37;
      if (((*(v17 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_38;
      }

      v39 = ~v37;
      while (1)
      {
        v40 = *(v50 + 48) + 24 * v38;
        v41 = *v40;
        v42 = *(v40 + 8);
        v43 = *(v40 + 16);
        v44 = v42 >> 14;
        v45 = v32 >> 14 == v41 >> 14 && v44 == v36;
        if (v45 && v43 == v34)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v17 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v26 = v51;
    }

    while (v51);
  }

  v29 = v22;
  while (1)
  {
    v22 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v22 >= v27)
    {
      goto LABEL_42;
    }

    v30 = *(v23 + 8 * v22);
    ++v29;
    if (v30)
    {
      v28 = __clz(__rbit64(v30));
      v51 = (v30 - 1) & v30;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4A78F8(uint64_t a1, uint64_t a2, int64_t a3, unint64_t a4)
{
  v42 = a2;
  v8 = type metadata accessor for _PromptToolData(0);
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  sub_22C369ABC();
  sub_22C3804A4();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v39 - v11);
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v39 - v14);
  v43 = a4 >> 1;
  v40 = (&v39 - v14);
  v39 = v4;
  while (a3 != v43)
  {
    if (a3 >= v43)
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }

    v16 = v41;
    v17 = *(v41 + 72);
    sub_22C377CDC();
    sub_22C4AB80C();
    v19 = *v4;
    v18 = *(v4 + 8);
    v20 = v18 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    if (*v4)
    {
      v44 = a3;
      sub_22C90B62C();
      v21 = v15[1];

      sub_22C48A9B4(&v45, v21);
      a3 = *v15;
      sub_22C48A9B4(&v45, *v15);
      result = sub_22C90B66C();
      v22 = 1 << *(v19 + 16);
      v23 = __OFSUB__(v22, 1);
      v24 = v22 - 1;
      if (v23)
      {
        goto LABEL_24;
      }

      v25 = v24 & result;
      v26 = sub_22C9030FC();
      *&v51 = v19 + 16;
      *(&v51 + 1) = v19 + 32;
      *&v52 = v25;
      *(&v52 + 1) = v26;
      *&v53 = v27;
      *(&v53 + 1) = v28;
      v54 = 0;
      v4 = &v51;
      sub_22C90313C();
      v45 = v51;
      v46 = v52;
      v47 = v53;
      v48 = v54;
      if ((v29 & 1) == 0)
      {
        do
        {
          sub_22C377CDC();
          sub_22C4AB80C();
          if (sub_22C48819C(*v12, a3))
          {
            v4 = sub_22C48819C(v12[1], v21);
            sub_22C36A9D8();
            sub_22C4AB864(v12, v30);
            if (v4)
            {

              sub_22C4AB928();
              v15 = v40;
              goto LABEL_22;
            }
          }

          else
          {
            sub_22C36A9D8();
            sub_22C4AB864(v12, v31);
          }

          sub_22C90315C();
          v49[0] = v45;
          v49[1] = v46;
          v49[2] = v47;
          v50 = v48;
          v4 = v49;
          sub_22C90313C();
        }

        while ((v32 & 1) == 0);
      }

      sub_22C4AB928();
    }

    else
    {
      v33 = *(v18 + 16);
      if (v33)
      {
        v34 = *v15;
        do
        {
          sub_22C377CDC();
          sub_22C4AB80C();
          if (sub_22C48819C(*v5, v34))
          {
            v35 = sub_22C48819C(v5[1], v15[1]);
            sub_22C36A9D8();
            sub_22C4AB864(v5, v36);
            if (v35)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_22C36A9D8();
            sub_22C4AB864(v5, v37);
          }

          v20 += v17;
          --v33;
        }

        while (v33);
      }
    }

    v15 = v40;
    sub_22C7D4A48();
LABEL_22:
    ++a3;
    sub_22C36A9D8();
    result = sub_22C4AB864(v15, v38);
  }

  return result;
}

void sub_22C4A7C6C(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = sub_22C379890(a1, a2, a3, a4);
  sub_22C37017C();
  v12 = sub_22C4A7FB0(v9, v10, v11) >> 14;
  if (v8 >> 14 >= v12)
  {
    if (v12 >= v8 >> 14)
    {
      return;
    }

    v16 = 0;
    while (1)
    {
      if (__OFSUB__(v16--, 1))
      {
        goto LABEL_34;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        break;
      }

      sub_22C37017C();
      v8 = sub_22C90A24C();
LABEL_30:
      if (v12 >= v8 >> 14)
      {
        return;
      }
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v22 = v5;
      v23 = v4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + (v8 >> 16) - 1) & 0xC0) == 0x80)
      {
        do
        {
          sub_22C38A8F0();
        }

        while (v20);
        goto LABEL_27;
      }
    }

    else
    {
      v18 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v18 = sub_22C37BDB0();
      }

      if ((*(v18 + (v8 >> 16) - 1) & 0xC0) == 0x80)
      {
        do
        {
          sub_22C38A8F0();
        }

        while (v20);
LABEL_27:
        v21 = v19 + 1;
LABEL_29:
        v8 = (v8 + (v21 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
        goto LABEL_30;
      }
    }

    v21 = -1;
    goto LABEL_29;
  }

  v13 = 0;
  sub_22C3758F8();
  while (!__OFADD__(v13, 1))
  {
    if ((v4 & 0x1000000000000000) != 0)
    {
      sub_22C37017C();
      v8 = sub_22C90A23C();
    }

    else
    {
      v14 = v8 >> 16;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v22 = v5;
        v23 = v6;
      }

      else if ((v5 & 0x1000000000000000) == 0)
      {
        sub_22C37BDB0();
      }

      sub_22C382FB4();
      v8 = v7 | ((v14 + v15) << 16);
    }

    ++v13;
    if (v12 <= v8 >> 14)
    {
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22C4A7E20(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = sub_22C379890(a1, a2, a3, a4);
  if (v6 < 0)
  {
    v14 = 0;
    sub_22C3758F8();
    while (1)
    {
      if (v15 < 0x10000)
      {
        goto LABEL_36;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        break;
      }

      sub_22C37017C();
      v15 = sub_22C90A24C();
LABEL_33:
      if (--v14 <= v6)
      {
        return;
      }
    }

    v16 = v15 >> 16;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v23 = v5;
      v24 = v7;
      if ((*(&v23 + v16 - 1) & 0xC0) == 0x80)
      {
        do
        {
          sub_22C38A8F0();
        }

        while (v22);
        v20 = v21 + 1;
        goto LABEL_32;
      }
    }

    else
    {
      v17 = v8;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v17 = sub_22C37BDB0();
      }

      if ((*(v17 + v16 - 1) & 0xC0) == 0x80)
      {
        v18 = -2;
        do
        {
          v19 = *(v17 + v16 + v18--) & 0xC0;
        }

        while (v19 == 128);
        v20 = v18 + 1;
        goto LABEL_32;
      }
    }

    v20 = -1;
LABEL_32:
    v15 = v9 | ((v20 + v16) << 16);
    goto LABEL_33;
  }

  if (v6)
  {
    if ((v4 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v12 = v10 >> 16;
      if (v10 >> 16 >= v11)
      {
        break;
      }

      if ((v4 & 0x1000000000000000) != 0)
      {
        sub_22C37017C();
        v10 = sub_22C90A23C();
      }

      else
      {
        if ((v4 & 0x2000000000000000) != 0)
        {
          v23 = v5;
          v24 = v4 & 0xFFFFFFFFFFFFFFLL;
        }

        else if ((v5 & 0x1000000000000000) == 0)
        {
          sub_22C37BDB0();
        }

        sub_22C382FB4();
        v10 = ((v12 + v13) << 16) | 5;
      }

      if (!--v6)
      {
        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }
}

unint64_t sub_22C4A7FB0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22C4A8050(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22C763484(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22C4A8050(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_22C8A3F0C(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22C4A80C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C164();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_22C4A81D4(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_22C4A812C(uint64_t *a1)
{
  v2 = *(type metadata accessor for TranscriptReferenceResolver.BoundVariable(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C194();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22C4A82C8(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22C4A81D4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_22C4A8820(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C4A83F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C4A82C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22C90B45C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
        v6 = sub_22C90A64C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TranscriptReferenceResolver.BoundVariable(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22C4A9068(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22C4A85B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22C4A83F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = a2;
  if (a3 != a2)
  {
    v42 = *a4;
    v4 = (*a4 + 24 * a3);
    v5 = result - a3;
    while (2)
    {
      v38 = v4;
      v40 = a3;
      v6 = (v42 + 24 * a3);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v36 = v5;
      v10 = v5;
      do
      {
        v11 = *(v4 - 1);
        v12 = v8 == *(v4 - 3) && v7 == *(v4 - 2);
        if (v12 || (sub_22C90B4FC() & 1) != 0)
        {

          sub_22C874128(v9, v13, v14, v15, v16, v17, v18, v19, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, vars0, vars8);
          v21 = v20;
          sub_22C874128(v11, v22, v23, v24, v25, v26, v27, v28, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, vars0a, vars8a);
          v46 = v10;
          v30 = sub_22C4737D0(v29, v21);
        }

        else
        {
          v30 = sub_22C90B4FC();
        }

        if ((v30 & 1) == 0)
        {
          break;
        }

        if (!v42)
        {
          __break(1u);
          return result;
        }

        v8 = *v4;
        v7 = v4[1];
        v9 = v4[2];
        *v4 = *(v4 - 3);
        v4[2] = *(v4 - 1);
        *(v4 - 2) = v7;
        *(v4 - 1) = v9;
        *(v4 - 3) = v8;
        v4 -= 3;
      }

      while (!__CFADD__(v10++, 1));
      a3 = v40 + 1;
      v4 = (v38 + 24);
      v5 = v36 - 1;
      if (v40 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_22C4A85B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
  v9 = MEMORY[0x28223BE20](v8);
  v36 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v34 = -v19;
    v35 = v18;
    v21 = a1 - a3;
    v28 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v32 = v20;
      v33 = a3;
      v30 = v22;
      v31 = v21;
      v23 = v20;
      do
      {
        sub_22C4AB80C();
        sub_22C4AB80C();
        v24 = sub_22C4A60B4();
        v25 = sub_22C4A60B4();
        sub_22C4AB864(v13, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        result = sub_22C4AB864(v17, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        if (v24 >= v25)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return result;
        }

        sub_22C4AB198();
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22C4AB198();
        v23 += v34;
        v22 += v34;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v33 + 1;
      v20 = v32 + v28;
      v21 = v31 - 1;
      v22 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22C4A8820(uint64_t *result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v164 = a3;
  v148 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_105:
    v182 = *v148;
    if (!*v148)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_107;
    }

    goto LABEL_141;
  }

  v141 = a4;
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    v161 = v6;
    if (v5 + 1 < v4)
    {
      v175 = v4;
      v9 = *v164;
      v10 = v5 + 1;
      v11 = (*v164 + 24 * v8);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = (*v164 + 24 * v7);
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];

      LODWORD(v182) = sub_22C4AADD0(v12, v13, v14, v16, v17, v18);
      if (v167)
      {

LABEL_115:

        return;
      }

      v157 = 24 * v7;
      v19 = (v9 + 24 * v7 + 32);
      v144 = v7;
      v20 = v7 + 2;
      v6 = v161;
      v8 = v10;
      v21 = v175;
      while (1)
      {
        v22 = v20;
        if (v8 + 1 >= v21)
        {
          break;
        }

        v170 = v8;
        v23 = v19[4];
        v24 = v19[1];
        v25 = v19[2] == *(v19 - 1) && v19[3] == *v19;
        if (v25 || (sub_22C90B4FC() & 1) != 0)
        {

          sub_22C874128(v23, v26, v27, v28, v29, v30, v31, v32, v138, v141, v144, v148, v151, v154, v157, v161, v164, v167, v8, v175, v179, v182, v185, v188, v191, v194);
          v34 = v33;
          sub_22C874128(v24, v35, v36, v37, v38, v39, v40, v41, v139, v142, v145, v149, v152, v155, v158, v162, v165, v168, v171, v176, v180, v183, v186, v189, v192, v195);
          v43 = sub_22C4737D0(v42, v34);

          v21 = v175;
        }

        else
        {
          v43 = sub_22C90B4FC();
        }

        v19 += 3;
        v8 = v170 + 1;
        v20 = v22 + 1;
        v6 = v161;
        if ((v182 ^ v43))
        {
          goto LABEL_17;
        }
      }

      v8 = v21;
LABEL_17:
      if (v182)
      {
        v7 = v144;
        if (v8 < v144)
        {
          goto LABEL_140;
        }

        if (v144 < v8)
        {
          if (v21 >= v22)
          {
            v44 = v22;
          }

          else
          {
            v44 = v21;
          }

          v45 = 24 * v44;
          v46 = v8;
          v47 = v144;
          v48 = v157;
          do
          {
            if (v47 != --v46)
            {
              v49 = *v164;
              if (!*v164)
              {
                goto LABEL_145;
              }

              v50 = v49 + v48;
              v51 = v49 + v45;
              v52 = *v50;
              v53 = *(v50 + 8);
              v54 = *(v51 - 24);
              *(v50 + 16) = *(v51 - 8);
              *v50 = v54;
              *(v51 - 24) = v52;
              *(v51 - 16) = v53;
            }

            ++v47;
            v45 -= 24;
            v48 += 24;
          }

          while (v47 < v46);
        }
      }

      else
      {
        v7 = v144;
      }
    }

    v55 = v164[1];
    if (v8 < v55)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_137;
      }

      if (v8 - v7 < v141)
      {
        break;
      }
    }

LABEL_53:
    if (v8 < v7)
    {
      goto LABEL_136;
    }

    v174 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v6 + 2) + 1, 1, v6);
      v6 = v128;
    }

    v86 = *(v6 + 2);
    v85 = *(v6 + 3);
    v87 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      sub_22C590218(v85 > 1, v86 + 1, 1, v6);
      v6 = v129;
    }

    *(v6 + 2) = v87;
    v88 = v6 + 32;
    v89 = &v6[16 * v86 + 32];
    *v89 = v7;
    *(v89 + 1) = v174;
    v90 = *v148;
    if (!*v148)
    {
      goto LABEL_146;
    }

    if (v86)
    {
      while (1)
      {
        v91 = v87 - 1;
        v92 = &v88[16 * v87 - 16];
        v93 = &v6[16 * v87];
        if (v87 >= 4)
        {
          break;
        }

        if (v87 == 3)
        {
          v94 = *(v6 + 4);
          v95 = *(v6 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_73:
          if (v97)
          {
            goto LABEL_123;
          }

          v109 = *v93;
          v108 = *(v93 + 1);
          v110 = __OFSUB__(v108, v109);
          v111 = v108 - v109;
          v112 = v110;
          if (v110)
          {
            goto LABEL_126;
          }

          v113 = *(v92 + 1);
          v114 = v113 - *v92;
          if (__OFSUB__(v113, *v92))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v111, v114))
          {
            goto LABEL_131;
          }

          if (v111 + v114 >= v96)
          {
            if (v96 < v114)
            {
              v91 = v87 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        if (v87 < 2)
        {
          goto LABEL_125;
        }

        v116 = *v93;
        v115 = *(v93 + 1);
        v104 = __OFSUB__(v115, v116);
        v111 = v115 - v116;
        v112 = v104;
LABEL_88:
        if (v112)
        {
          goto LABEL_128;
        }

        v118 = *v92;
        v117 = *(v92 + 1);
        v104 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v104)
        {
          goto LABEL_130;
        }

        if (v119 < v111)
        {
          goto LABEL_102;
        }

LABEL_95:
        if (v91 - 1 >= v87)
        {
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v164)
        {
          goto LABEL_143;
        }

        v123 = &v88[16 * v91 - 16];
        v124 = *v123;
        v125 = &v88[16 * v91];
        v126 = *(v125 + 1);
        sub_22C4A99B4((*v164 + 24 * *v123), (*v164 + 24 * *v125), *v164 + 24 * v126, v90);
        if (v167)
        {
          goto LABEL_115;
        }

        if (v126 < v124)
        {
          goto LABEL_118;
        }

        v127 = *(v6 + 2);
        if (v91 > v127)
        {
          goto LABEL_119;
        }

        *v123 = v124;
        *(v123 + 1) = v126;
        if (v91 >= v127)
        {
          goto LABEL_120;
        }

        v87 = v127 - 1;
        sub_22C56BFF0(v125 + 16, v127 - 1 - v91, &v88[16 * v91]);
        *(v6 + 2) = v127 - 1;
        if (v127 <= 2)
        {
          goto LABEL_102;
        }
      }

      v98 = &v88[16 * v87];
      v99 = *(v98 - 8);
      v100 = *(v98 - 7);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_121;
      }

      v103 = *(v98 - 6);
      v102 = *(v98 - 5);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_122;
      }

      v105 = *(v93 + 1);
      v106 = v105 - *v93;
      if (__OFSUB__(v105, *v93))
      {
        goto LABEL_124;
      }

      v104 = __OFADD__(v96, v106);
      v107 = v96 + v106;
      if (v104)
      {
        goto LABEL_127;
      }

      if (v107 >= v101)
      {
        v121 = *v92;
        v120 = *(v92 + 1);
        v104 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v104)
        {
          goto LABEL_135;
        }

        if (v96 < v122)
        {
          v91 = v87 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_73;
    }

LABEL_102:
    v4 = v164[1];
    v5 = v174;
    if (v174 >= v4)
    {
      goto LABEL_105;
    }
  }

  v56 = v7 + v141;
  if (__OFADD__(v7, v141))
  {
    goto LABEL_138;
  }

  if (v56 >= v55)
  {
    v56 = v164[1];
  }

  if (v56 < v7)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    v6 = sub_22C56BFD8();
LABEL_107:
    v130 = v6 + 16;
    v131 = *(v6 + 2);
    while (v131 >= 2)
    {
      if (!*v164)
      {
        goto LABEL_144;
      }

      v132 = v6;
      v133 = &v6[16 * v131];
      v134 = *v133;
      v135 = &v130[2 * v131];
      v136 = *(v135 + 1);
      sub_22C4A99B4((*v164 + 24 * *v133), (*v164 + 24 * *v135), *v164 + 24 * v136, v182);
      if (v167)
      {
        break;
      }

      if (v136 < v134)
      {
        goto LABEL_132;
      }

      if (v131 - 2 >= *v130)
      {
        goto LABEL_133;
      }

      *v133 = v134;
      *(v133 + 1) = v136;
      v137 = *v130 - v131;
      if (*v130 < v131)
      {
        goto LABEL_134;
      }

      v131 = *v130 - 1;
      sub_22C56BFF0(v135 + 16, v137, v135);
      *v130 = v131;
      v6 = v132;
    }

    goto LABEL_115;
  }

  if (v8 == v56)
  {
    goto LABEL_53;
  }

  v177 = *v164;
  v57 = (*v164 + 24 * v8);
  v146 = v7;
  v58 = v7 - v8;
  v151 = v56;
LABEL_39:
  v172 = v8;
  v59 = (v177 + 24 * v8);
  v61 = *v59;
  v60 = v59[1];
  v62 = v59[2];
  v154 = v58;
  v159 = v57;
  v63 = v58;
  while (1)
  {
    v64 = *(v57 - 1);
    v65 = v61 == *(v57 - 3) && v60 == *(v57 - 2);
    if (v65 || (sub_22C90B4FC() & 1) != 0)
    {

      sub_22C874128(v62, v66, v67, v68, v69, v70, v71, v72, v138, v141, v146, v148, v151, v154, v159, v161, v164, v167, v172, v177, v179, v182, v185, v188, v191, v194);
      v184 = v63;
      v74 = v73;
      sub_22C874128(v64, v75, v76, v77, v78, v79, v80, v81, v140, v143, v147, v150, v153, v156, v160, v163, v166, v169, v173, v178, v181, v184, v187, v190, v193, v196);
      v83 = sub_22C4737D0(v82, v74);

      v63 = v182;
    }

    else
    {
      v83 = sub_22C90B4FC();
    }

    if ((v83 & 1) == 0)
    {
LABEL_51:
      v8 = v172 + 1;
      v57 = (v159 + 24);
      v58 = v154 - 1;
      if (v172 + 1 == v151)
      {
        v8 = v151;
        v6 = v161;
        v7 = v146;
        goto LABEL_53;
      }

      goto LABEL_39;
    }

    if (!v177)
    {
      break;
    }

    v61 = *v57;
    v60 = v57[1];
    v62 = v57[2];
    *v57 = *(v57 - 3);
    v57[2] = *(v57 - 1);
    *(v57 - 2) = v60;
    *(v57 - 1) = v62;
    *(v57 - 3) = v61;
    v57 -= 3;
    if (__CFADD__(v63++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_22C4A9068(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v109 = a1;
  v6 = type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
  v117 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v113 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v122 = &v107 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v124 = &v107 - v12;
  MEMORY[0x28223BE20](v11);
  v123 = &v107 - v13;
  v119 = a3;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_99:
    v125 = *v109;
    if (!v125)
    {
      goto LABEL_139;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v120;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_101:
      v100 = (v16 + 16);
      for (i = *(v16 + 2); i >= 2; *v100 = i)
      {
        if (!*v119)
        {
          goto LABEL_136;
        }

        v102 = &v16[16 * i];
        v103 = *v102;
        v104 = &v100[2 * i];
        v105 = *(v104 + 1);
        sub_22C4A9D54(*v119 + *(v117 + 72) * *v102, *v119 + *(v117 + 72) * *v104, *v119 + *(v117 + 72) * v105, v125);
        if (v15)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_124;
        }

        if (i - 2 >= *v100)
        {
          goto LABEL_125;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        v106 = *v100 - i;
        if (*v100 < i)
        {
          goto LABEL_126;
        }

        i = *v100 - 1;
        sub_22C56BFF0(v104 + 16, v106, v104);
      }

LABEL_97:

      return;
    }

LABEL_133:
    v16 = sub_22C56BFD8();
    goto LABEL_101;
  }

  v107 = a4;
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v125 = v6;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v108 = v16;
      v18 = *v119;
      v19 = *(v117 + 72);
      v20 = *v119 + v19 * v15;
      v21 = v123;
      v116 = v14;
      sub_22C4AB80C();
      v110 = v17;
      v22 = v124;
      sub_22C4AB80C();
      v115 = sub_22C4A60B4();
      v114 = sub_22C4A60B4();
      sub_22C4AB864(v22, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      sub_22C4AB864(v21, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      v23 = v116;
      v24 = v110 + 2;
      v118 = v19;
      v25 = v18 + v19 * (v110 + 2);
      while (1)
      {
        v26 = v24;
        v27 = v15 + 1;
        if (v27 >= v23)
        {
          break;
        }

        LODWORD(v121) = v115 < v114;
        v28 = v27;
        v29 = v123;
        sub_22C4AB80C();
        v30 = v124;
        sub_22C4AB80C();
        v31 = sub_22C4A60B4();
        v32 = sub_22C4A60B4();
        sub_22C4AB864(v30, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        v33 = v29;
        v15 = v28;
        sub_22C4AB864(v33, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
        v23 = v116;
        v25 += v118;
        v20 += v118;
        v24 = v26 + 1;
        if (((v121 ^ (v31 >= v32)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v15 = v23;
LABEL_9:
      if (v115 < v114)
      {
        if (v15 < v110)
        {
          goto LABEL_130;
        }

        if (v110 >= v15)
        {
          v16 = v108;
          v17 = v110;
          goto LABEL_30;
        }

        if (v23 >= v26)
        {
          v34 = v26;
        }

        else
        {
          v34 = v23;
        }

        v35 = v118 * (v34 - 1);
        v36 = v118 * v34;
        v37 = v110 * v118;
        v38 = v15;
        v39 = v110;
        do
        {
          if (v39 != --v38)
          {
            v40 = *v119;
            if (!*v119)
            {
              goto LABEL_137;
            }

            sub_22C4AB198();
            v41 = v37 < v35 || v40 + v37 >= (v40 + v36);
            if (v41)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v37 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_22C4AB198();
          }

          ++v39;
          v35 -= v118;
          v36 -= v118;
          v37 += v118;
        }

        while (v39 < v38);
      }

      v16 = v108;
      v17 = v110;
    }

LABEL_30:
    v42 = v119[1];
    if (v15 < v42)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_129;
      }

      if (v15 - v17 < v107)
      {
        break;
      }
    }

LABEL_46:
    if (v15 < v17)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C590218(0, *(v16 + 2) + 1, 1, v16);
      v16 = v97;
    }

    v55 = *(v16 + 2);
    v54 = *(v16 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      sub_22C590218(v54 > 1, v55 + 1, 1, v16);
      v16 = v98;
    }

    *(v16 + 2) = v56;
    v57 = v16 + 32;
    v58 = &v16[16 * v55 + 32];
    *v58 = v17;
    *(v58 + 1) = v15;
    v121 = *v109;
    if (!v121)
    {
      goto LABEL_138;
    }

    if (v55)
    {
      while (1)
      {
        v59 = v56 - 1;
        v60 = &v57[16 * v56 - 16];
        v61 = &v16[16 * v56];
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v62 = *(v16 + 4);
          v63 = *(v16 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_66:
          if (v65)
          {
            goto LABEL_115;
          }

          v77 = *v61;
          v76 = *(v61 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_118;
          }

          v81 = *(v60 + 1);
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_121;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_123;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v56 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v56 < 2)
        {
          goto LABEL_117;
        }

        v84 = *v61;
        v83 = *(v61 + 1);
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_81:
        if (v80)
        {
          goto LABEL_120;
        }

        v86 = *v60;
        v85 = *(v60 + 1);
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_122;
        }

        if (v87 < v79)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v59 - 1 >= v56)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (!*v119)
        {
          goto LABEL_135;
        }

        v91 = &v57[16 * v59 - 16];
        v92 = *v91;
        v93 = &v57[16 * v59];
        v94 = *(v93 + 1);
        v95 = v120;
        sub_22C4A9D54(*v119 + *(v117 + 72) * *v91, *v119 + *(v117 + 72) * *v93, *v119 + *(v117 + 72) * v94, v121);
        v120 = v95;
        if (v95)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_110;
        }

        v96 = *(v16 + 2);
        if (v59 > v96)
        {
          goto LABEL_111;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        if (v59 >= v96)
        {
          goto LABEL_112;
        }

        v56 = v96 - 1;
        sub_22C56BFF0(v93 + 16, v96 - 1 - v59, &v57[16 * v59]);
        *(v16 + 2) = v96 - 1;
        if (v96 <= 2)
        {
          goto LABEL_95;
        }
      }

      v66 = &v57[16 * v56];
      v67 = *(v66 - 8);
      v68 = *(v66 - 7);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_113;
      }

      v71 = *(v66 - 6);
      v70 = *(v66 - 5);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_114;
      }

      v73 = *(v61 + 1);
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_116;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_119;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = *(v60 + 1);
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_127;
        }

        if (v64 < v90)
        {
          v59 = v56 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v14 = v119[1];
    if (v15 >= v14)
    {
      goto LABEL_99;
    }
  }

  v43 = v17 + v107;
  if (__OFADD__(v17, v107))
  {
    goto LABEL_131;
  }

  if (v43 >= v42)
  {
    v43 = v119[1];
  }

  if (v43 < v17)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v15 == v43)
  {
    goto LABEL_46;
  }

  v108 = v16;
  v44 = *v119;
  v45 = *(v117 + 72);
  v46 = *v119 + v45 * (v15 - 1);
  v47 = -v45;
  v110 = v17;
  v111 = v45;
  v48 = v17 - v15;
  v121 = v44;
  v49 = v44 + v15 * v45;
  v112 = v43;
LABEL_39:
  v118 = v15;
  v114 = v49;
  v115 = v48;
  v116 = v46;
  while (1)
  {
    v50 = v123;
    sub_22C4AB80C();
    v51 = v124;
    sub_22C4AB80C();
    v52 = sub_22C4A60B4();
    v53 = sub_22C4A60B4();
    sub_22C4AB864(v51, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
    sub_22C4AB864(v50, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
    if (v52 >= v53)
    {
LABEL_44:
      v15 = v118 + 1;
      v46 = v116 + v111;
      v48 = v115 - 1;
      v49 = v114 + v111;
      if (v118 + 1 == v112)
      {
        v15 = v112;
        v16 = v108;
        v17 = v110;
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (!v121)
    {
      break;
    }

    sub_22C4AB198();
    swift_arrayInitWithTakeFrontToBack();
    sub_22C4AB198();
    v46 += v47;
    v49 += v47;
    v41 = __CFADD__(v48++, 1);
    if (v41)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
}

uint64_t sub_22C4A99B4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_22C38D024(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    v90 = v5;
    v83 = v10;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v14 || (sub_22C90B4FC() & 1) != 0)
      {

        sub_22C874128(v12, v15, v16, v17, v18, v19, v20, v21, v65, v68, v71, v75, v79, v83, v87, v90, v94, v97, v100, v103, v106, v109, v112, v115, vars0, vars8);
        v23 = v22;
        sub_22C874128(v13, v24, v25, v26, v27, v28, v29, v30, v66, v69, v72, v76, v80, v84, v88, v91, v95, v98, v101, v104, v107, v110, v113, v116, vars0a, vars8a);
        v79 = v12;
        v32 = sub_22C4737D0(v31, v23);
      }

      else
      {
        v32 = sub_22C90B4FC();
      }

      v5 = v90;
      v10 = v83;
      if ((v32 & 1) == 0)
      {
        break;
      }

      v33 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 += 24;
    }

    v33 = v4;
    v14 = v7 == v4;
    v4 += 24;
    if (v14)
    {
      goto LABEL_20;
    }

LABEL_19:
    v34 = *v33;
    *(v7 + 2) = *(v33 + 2);
    *v7 = v34;
    goto LABEL_20;
  }

  sub_22C38D024(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
  v73 = v7;
  v77 = v4;
LABEL_22:
  v35 = v5 - 24;
  v81 = (v6 - 24);
  while (v10 > v4 && v6 > v7)
  {
    v92 = v35;
    v85 = v10;
    v37 = v10 - 24;
    v38 = *(v10 - 1);
    v39 = *(v6 - 1);
    v40 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (v40 || (sub_22C90B4FC() & 1) != 0)
    {

      sub_22C874128(v38, v41, v42, v43, v44, v45, v46, v47, v65, v68, v73, v77, v81, v85, v87, v35, v94, v97, v100, v103, v106, v109, v112, v115, vars0, vars8);
      v49 = v48;
      sub_22C874128(v39, v50, v51, v52, v53, v54, v55, v56, v67, v70, v74, v78, v82, v86, v89, v93, v96, v99, v102, v105, v108, v111, v114, v117, vars0b, vars8b);
      v58 = sub_22C4737D0(v57, v49);
    }

    else
    {
      v58 = sub_22C90B4FC();
    }

    v5 = v92;
    v10 = v85;
    v59 = (v92 + 24);
    if (v58)
    {
      v14 = v59 == v6;
      v6 = v81;
      v7 = v73;
      v4 = v77;
      if (!v14)
      {
        v61 = *v81;
        *(v92 + 16) = *(v81 + 16);
        *v92 = v61;
        v6 = v81;
      }

      goto LABEL_22;
    }

    v7 = v73;
    if (v85 != v59)
    {
      v60 = *v37;
      *(v92 + 16) = *(v37 + 2);
      *v92 = v60;
    }

    v35 = v92 - 24;
    v10 = v37;
    v4 = v77;
  }

LABEL_42:
  v62 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v62])
  {
    memmove(v6, v4, 24 * v62);
  }

  return 1;
}

uint64_t sub_22C4A9D54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = a4;
  v59 = type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
  v7 = MEMORY[0x28223BE20](v59);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v57 = &v50 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v12;
  v63 = a1;
  v62 = v60;
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v32 = v60;
    sub_22C3D70E0(a2, v14 / v12, v60);
    v33 = v32 + v17 * v12;
    v34 = -v12;
    v35 = v33;
    v53 = -v12;
    v54 = a1;
LABEL_36:
    v36 = a3;
    v51 = v35;
    v37 = v35;
    v55 = a2 + v34;
    while (1)
    {
      if (v33 <= v60)
      {
        v63 = a2;
        v61 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v37;
      v38 = a2;
      a3 = v36 + v34;
      v39 = v33 + v34;
      v40 = v57;
      v41 = v33;
      sub_22C4AB80C();
      v42 = v58;
      sub_22C4AB80C();
      v56 = sub_22C4A60B4();
      v43 = sub_22C4A60B4();
      sub_22C4AB864(v42, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      sub_22C4AB864(v40, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      if (v56 < v43)
      {
        v45 = v41;
        if (v36 < v38 || a3 >= v38)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v52;
          v34 = v53;
          a1 = v54;
          v33 = v45;
        }

        else
        {
          v34 = v53;
          v35 = v52;
          a1 = v54;
          v47 = v55;
          a2 = v55;
          v33 = v45;
          if (v36 != v38)
          {
            v48 = v52;
            v49 = v33;
            swift_arrayInitWithTakeBackToFront();
            v33 = v49;
            a2 = v47;
            v35 = v48;
          }
        }

        goto LABEL_36;
      }

      v44 = v36 < v41 || a3 >= v41;
      a2 = v38;
      if (v44)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = a3;
        v33 = v39;
        v37 = v39;
        v34 = v53;
        a1 = v54;
      }

      else
      {
        v37 = v39;
        v13 = v41 == v36;
        v36 = a3;
        v33 = v39;
        v34 = v53;
        a1 = v54;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = a3;
          v33 = v39;
          v37 = v39;
        }
      }
    }

    v63 = a2;
    v61 = v51;
  }

  else
  {
    v18 = v60;
    sub_22C3D70E0(a1, (a2 - a1) / v12, v60);
    v56 = v18 + v16 * v12;
    v61 = v56;
    while (v60 < v56 && a2 < a3)
    {
      v20 = a1;
      v21 = a3;
      v22 = v57;
      sub_22C4AB80C();
      v23 = a2;
      v24 = v58;
      sub_22C4AB80C();
      v25 = sub_22C4A60B4();
      v26 = sub_22C4A60B4();
      sub_22C4AB864(v24, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      sub_22C4AB864(v22, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      if (v25 >= v26)
      {
        a2 = v23;
        v30 = v60 + v12;
        v27 = v20;
        if (v20 < v60 || v20 >= v30)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (v20 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v62 = v30;
        v60 = v30;
      }

      else
      {
        a2 = v23 + v12;
        v27 = v20;
        v28 = v20 < v23 || v20 >= a2;
        v29 = v23;
        if (v28)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (v20 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      a1 = v27 + v12;
      v63 = a1;
    }
  }

LABEL_58:
  sub_22C838170(&v63, &v62, &v61);
  return 1;
}

uint64_t sub_22C4AA240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BD050, &qword_22C917420) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760) + 48);
  result = sub_22C88FBBC(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_22C4AA2B0()
{
  sub_22C3A5908(&qword_27D9BC210, &unk_22C917470);
  sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);

  return sub_22C88FBFC();
}

uint64_t sub_22C4AA32C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v37 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v49 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BD058, &qword_22C917428);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  sub_22C8920A0();
  v41 = v45;
  v42 = v46;
  v43 = v47;
  v44 = v48;
  v39 = a1;

  v38 = a3;

  while (1)
  {
    sub_22C8902AC();
    v14 = sub_22C3A5908(&qword_27D9BAEB8, &qword_22C90D760);
    if (sub_22C370B74(v13, 1, v14) == 1)
    {
      sub_22C36A674(v41);
    }

    v15 = *(v14 + 48);
    sub_22C4AB198();
    v16 = *&v13[v15];
    v17 = *a5;
    v25 = sub_22C62832C(v10);
    v26 = *(v17 + 16);
    v27 = (v18 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v18;
    if (*(v17 + 24) >= v28)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BD060, &unk_22C917430);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88C78C(v28, a4 & 1, v19, v20, v21, v22, v23, v24, v37, v38, v39, v40, v41, *(&v41 + 1), v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45);
      v30 = sub_22C62832C(v10);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_16;
      }

      v25 = v30;
    }

    v32 = *a5;
    if (v29)
    {
      sub_22C4AB864(v10, type metadata accessor for PromptTreeIdentifier.Label);
      *(*(v32 + 56) + 8 * v25) = v16;

      a4 = 1;
    }

    else
    {
      *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      sub_22C4AB198();
      *(*(v32 + 56) + 8 * v25) = v16;
      v33 = *(v32 + 16);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_15;
      }

      *(v32 + 16) = v35;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4AA670(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  v8 = sub_22C902D0C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v44 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v47 = v43 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = v43 - v14;
  v16 = sub_22C3A5908(&qword_27D9BC248, &unk_22C912440);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v43 - v17;
  sub_22C8920A0();
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v45 = v9;
  v46 = (v9 + 32);
  v43[4] = v9 + 8;
  v43[5] = v9 + 16;
  v43[3] = v9 + 40;
  v43[1] = a1;

  v43[0] = a3;

  while (1)
  {
    sub_22C890534();
    v19 = sub_22C3A5908(&qword_27D9BC190, &unk_22C9121A0);
    if (sub_22C370B74(v18, 1, v19) == 1)
    {
      sub_22C36A674(v48);
    }

    v20 = *(v19 + 48);
    v21 = *v46;
    (*v46)(v15, v18, v8);
    v21(v47, &v18[v20], v8);
    v22 = *v56;
    sub_22C6280AC();
    v25 = v24;
    v26 = v22[2];
    v27 = (v23 & 1) == 0;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v26 + v27)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC250, qword_22C912450);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88CA14();
      sub_22C6280AC();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_16;
      }

      v25 = v29;
    }

    v31 = *v56;
    if (v28)
    {
      v33 = v44;
      v32 = v45;
      v34 = v15;
      v35 = v47;
      (*(v45 + 16))(v44, v47, v8);
      v36 = *(v32 + 8);
      v37 = v35;
      v15 = v34;
      v36(v37, v8);
      v36(v34, v8);
      (*(v32 + 40))(v31[7] + *(v32 + 72) * v25, v33, v8);
      a4 = 1;
    }

    else
    {
      v31[(v25 >> 6) + 8] |= 1 << v25;
      v38 = *(v45 + 72) * v25;
      v21((v31[6] + v38), v15, v8);
      v21((v31[7] + v38), v47, v8);
      v39 = v31[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_15;
      }

      v31[2] = v41;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

void *sub_22C4AAE9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C90A30C();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = sub_22C4AAFF8(v4, 0);

  v7 = sub_22C4AAF2C(&v9, v6 + 4, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22C4AAF2C(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      result = sub_22C90A3AC();
      if (!v12)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9 = result;
      v9[1] = v12;
      v9 += 2;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22C4AAFF8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_22C3A5908(&qword_27D9BAE90, &qword_22C90D738);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t type metadata accessor for PromptTreeResolution.State(uint64_t a1)
{
  result = qword_27D9BD0B0;
  if (!qword_27D9BD0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4AB0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22C4AB144()
{
  result = qword_27D9BD0A0;
  if (!qword_27D9BD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0A0);
  }

  return result;
}

uint64_t sub_22C4AB198()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

void sub_22C4AB24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  MEMORY[0x28223BE20](v33);
  v36 = (&a9 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v26)
  {

    sub_22C7DBFD0();
    v38 = v37;
    v40 = v39;
    v28 = v41;
  }

  else if (v28)
  {
    a10 = v20;
    v38 = 0;
    v42 = *v24;
    v43 = *(v34 + 72);
    while (1)
    {
      sub_22C4AB80C();
      if (sub_22C48865C(*v36, v42) & 1) != 0 && (sub_22C901F6C() & 1) != 0 && (sub_22C48819C(*(v36 + *(v33 + 24)), *(v24 + *(v33 + 24))))
      {
        break;
      }

      sub_22C4AB8C0();
      sub_22C4AB864(v36, v44);
      ++v38;
      v30 += v43;
      if (v28 == v38)
      {
        v28 = 0;
        v38 = 0;
        v40 = 1;
        goto LABEL_12;
      }
    }

    sub_22C4AB8C0();
    sub_22C4AB864(v36, v45);
    v28 = 0;
    v40 = 0;
  }

  else
  {
    v38 = 0;
    v40 = 1;
  }

LABEL_12:
  *v32 = v38;
  *(v32 + 8) = v40 & 1;
  *(v32 + 16) = v28;
  sub_22C36FB20();
}

void sub_22C4AB464(uint64_t a1)
{
  sub_22C4AB4E8(319);
  if (v1 <= 0x3F)
  {
    sub_22C4AB540(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C4AB4E8(uint64_t a1)
{
  if (!qword_27D9BD0C0)
  {
    type metadata accessor for PromptTreeIdentifier.TurnChange(255);
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BD0C0);
    }
  }
}

void sub_22C4AB540(uint64_t a1)
{
  if (!qword_27D9BD0C8)
  {
    type metadata accessor for PromptTreeIdentifier.Label(255);
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    sub_22C4AB0E0(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label, &unk_22C916664);
    v1 = sub_22C909F2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BD0C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for PromptTreeResolutionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PromptTreeResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22C4AB764()
{
  result = qword_27D9BD0D0;
  if (!qword_27D9BD0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0D0);
  }

  return result;
}

unint64_t sub_22C4AB7B8()
{
  result = qword_27D9BD0D8;
  if (!qword_27D9BD0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0D8);
  }

  return result;
}

uint64_t sub_22C4AB80C()
{
  sub_22C36986C();
  v1(0);
  sub_22C36985C();
  v2 = sub_22C36BA00();
  v3(v2);
  return v0;
}

uint64_t sub_22C4AB864(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4AB93C()
{
}

uint64_t (*sub_22C4AB954(uint64_t (*a1)(unint64_t), uint64_t (*a2)(uint64_t a1), unint64_t a3))(uint64_t a1)
{
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3 >> 61)
  {
    case 2uLL:
      v15 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v16 = swift_projectBox();
      v17 = *(v16 + *(v15 + 48));
      sub_22C4AEC28(v16, v9);
      v43 = swift_allocBox();
      v19 = v18;
      sub_22C4AEC28(v9, v18);
      swift_beginAccess();
      v20 = *(v17 + 16);

      v21 = sub_22C4AB954(a1, a2, v20);
      if (!v3)
      {
        v37 = v21;

        v38 = *(v15 + 48);

        sub_22C4AEBD0(v9, type metadata accessor for PromptTreeIdentifier);
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        v39 = swift_allocObject();
        *(v39 + 16) = v37;
        *(v19 + v38) = v39;
        a3 = v43 | 0x4000000000000000;
        goto LABEL_3;
      }

      a2 = type metadata accessor for PromptTreeIdentifier;
      sub_22C4AEBD0(v9, type metadata accessor for PromptTreeIdentifier);
      sub_22C4AEBD0(v19, type metadata accessor for PromptTreeIdentifier);
      swift_deallocBox();
      return a2;
    case 3uLL:
      v10 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = swift_allocObject();
      v12 = *(v10 + 16);

      sub_22C4ABDA8(a1, a2, v12);
      v14 = v13;

      if (v3)
      {
        goto LABEL_11;
      }

      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v36 = swift_allocObject();
      *(v36 + 16) = v14;
      *(v11 + 16) = v36;
      a3 = v11 | 0x6000000000000000;
      goto LABEL_3;
    case 4uLL:
      v29 = a3 & 0x1FFFFFFFFFFFFFFFLL;
      v30 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v31 = *(v29 + 24);
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      swift_beginAccess();
      v33 = *(v31 + 16);

      v34 = sub_22C4AB954(a1, a2, v33);

      if (v3)
      {
        goto LABEL_11;
      }

      sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
      v41 = swift_allocObject();
      *(v41 + 16) = v34;
      *(v32 + 24) = v41;
      a3 = v32 | 0x8000000000000000;
      goto LABEL_3;
    case 5uLL:
      v22 = a3 & 0x1FFFFFFFFFFFFFFFLL;
      v23 = *((a3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *(v22 + 24);
      v25 = *(v22 + 32);
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      swift_beginAccess();
      v27 = *(v25 + 16);

      v28 = sub_22C4AB954(a1, a2, v27);

      if (v3)
      {
LABEL_11:
        swift_deallocUninitializedObject();
      }

      else
      {
        sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
        v40 = swift_allocObject();
        *(v40 + 16) = v28;
        *(v26 + 32) = v40;
        a3 = v26 | 0xA000000000000000;
LABEL_3:
        a2 = a1(a3);
      }

      return a2;
    default:

      goto LABEL_3;
  }
}

void sub_22C4ABDA8(uint64_t (*a1)(unint64_t), uint64_t (*a2)(uint64_t a1), uint64_t a3)
{
  v4 = v3;
  if (a3 < 0)
  {
    v21 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v22 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v23 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v24 = swift_allocObject();
    v24[2] = v21;
    v24[3] = v22;
    v25 = *(v23 + 16);
    sub_22C480170(v21, v22);

    v26 = sub_22C4ABDA8(a1, a2, v25);

    if (v3)
    {
      sub_22C48FEE0(v24[2], v24[3]);
      swift_deallocUninitializedObject();
    }

    else
    {
      sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
      v27 = swift_allocObject();
      *(v27 + 16) = v26;
      v24[4] = v27;
    }
  }

  else
  {
    v7 = *(a3 + 16);
    v8 = sub_22C36E2B8();
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v10 = v8;
      v30 = MEMORY[0x277D84F90];
      v11 = v8 & ~(v8 >> 63);

      sub_22C3B63D4(0, v11, 0);
      if ((v10 & 0x8000000000000000) == 0)
      {
        v28 = v10;
        v29 = a1;
        v12 = 0;
        v9 = v30;
        while (1)
        {
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if ((v7 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2318B8460](v12, v7);
          }

          else
          {
            if (v12 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v14 = *(v7 + 8 * v12 + 32);
          }

          swift_beginAccess();
          v15 = *(v14 + 16);

          v16 = a2;
          v17 = sub_22C4AB954(v29, a2, v15);
          if (v4)
          {

            return;
          }

          v18 = v17;

          v20 = *(v30 + 16);
          v19 = *(v30 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_22C3B63D4(v19 > 1, v20 + 1, 1);
          }

          *(v30 + 16) = v20 + 1;
          *(v30 + 8 * v20 + 32) = v18;
          ++v12;
          a2 = v16;
          if (v13 == v28)
          {

            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      __break(1u);
    }

    else
    {
LABEL_18:
      sub_22C3DB9B0(v9);
    }
  }
}

void sub_22C4AC054(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = v59 - v11;
  v13 = type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
  v75 = *(v13 - 8);
  MEMORY[0x28223BE20](v13 - 8);
  sub_22C369838();
  v16 = v15 - v14;
  v17 = sub_22C3A5908(&qword_27D9BD0E0, &qword_22C9175C8);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v18);
  v20 = (v59 - v19);
  v76 = MEMORY[0x277D84F90];
  sub_22C493F24();
  if (v1)
  {

    return;
  }

  v73 = a1;
  v60 = v16;
  v69 = v3;
  v70 = v5;
  v24 = v21;
  v25 = v22;
  v26 = v23;

  swift_retain_n();
  swift_retain_n();

  v65 = v25;
  v66 = v24;
  v64 = v26;
  sub_22C4AE47C(v24, v25, v24, v25, v26);
  v67 = v27;
  v29 = v28;
  v31 = v30;
  sub_22C4060D8(MEMORY[0x277D84F90]);
  v32 = 0;
  v76 = v33;
  v77 = v34;
  v78 = v35;
  v36 = *(v31 + 16);
  v37 = v29 + 32;
  v79 = v31;
  v38 = v31 + 32;
  v74 = v9;
  v68 = v12;
  v72 = v29;
  v62 = v29 + 32;
  v63 = v36;
  v61 = v31 + 32;
LABEL_4:
  if (v32 != v36)
  {
    if (v32 < *(v29 + 16))
    {
      if (v32 >= *(v79 + 16))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v39 = *(v37 + 8 * v32);
      v40 = *(v38 + 8 * v32);
      v71 = v32 + 1;
      v41 = *(v40 + 16);
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      for (i = 0; ; ++i)
      {
        if (v41 == i)
        {
          swift_bridgeObjectRelease_n();

          v9 = v74;
          v32 = v71;
          v29 = v72;
          v37 = v62;
          v36 = v63;
          v38 = v61;
          goto LABEL_4;
        }

        if (i >= *(v40 + 16))
        {
          break;
        }

        type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
        v43 = *(v17 + 48);
        *v20 = i;
        sub_22C4AEE10();
        sub_22C4AEC28(v44, v20 + v43);
        sub_22C4AC718(i, v20 + v43, v39, &v76);
        sub_22C36DD28(v20, &qword_27D9BD0E0, &qword_22C9175C8);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  v45 = v76;
  v46 = v77;
  v47 = v78;

  sub_22C492838();
  v49 = *(v47 + 16);
  if (!v49)
  {

    return;
  }

  v59[1] = v48;
  v76 = MEMORY[0x277D84F90];
  v62 = v45;

  v61 = v46;

  v73 = v49;
  sub_22C3B65D4();
  v50 = 0;
  v51 = v76;
  v52 = v70;
  v71 = v47 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
  v53 = v60;
  v63 = v47;
  while (v50 < *(v47 + 16))
  {
    v54 = v68;
    sub_22C3E8FB4(v71 + *(v52 + 72) * v50, v68, &qword_27D9BAEC8, &unk_22C90D770);
    v55 = v54[1];
    v56 = *(v69 + 48);
    *v9 = *v54;
    v9[1] = v55;
    sub_22C388694();
    sub_22C4AEC84(v54 + v56, v9 + v56);
    sub_22C4AEC28(v9 + v56, v53);
    sub_22C36DD28(v9, &qword_27D9BAEC8, &unk_22C90D770);
    v76 = v51;
    v57 = *(v51 + 16);
    if (v57 >= *(v51 + 24) >> 1)
    {
      sub_22C3B65D4();
      v51 = v76;
    }

    ++v50;
    *(v51 + 16) = v57 + 1;
    sub_22C388694();
    sub_22C4AEC84(v53, v58);
    v9 = v74;
    v52 = v70;
    v47 = v63;
    if (v73 == v50)
    {

      return;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_22C4AC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v132 = a4;
  v129 = a2;
  v121 = a1;
  v5 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  MEMORY[0x28223BE20](v5);
  v118 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for TranscriptReferenceResolver.BoundVariable(0);
  MEMORY[0x28223BE20](v130);
  v117 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22C3A5908(&qword_27D9BD0E8, &qword_22C9175D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v126 = (&v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = &v115 - v11;
  v127 = type metadata accessor for PromptTreeIdentifier(0);
  v13 = MEMORY[0x28223BE20](v127);
  v128 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v115 - v15;
  v17 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v123 = *(v17 - 8);
  v124 = v17;
  MEMORY[0x28223BE20](v17);
  v122 = &v115 - v18;
  v19 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22C902D0C();
  v133 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v115 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v116 = &v115 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v135 = (&v115 - v28);
  MEMORY[0x28223BE20](v27);
  v119 = &v115 - v29;
  v30 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  MEMORY[0x28223BE20](v30);
  v32 = (&v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C4AD420(a3, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v120 = v5;
  if (EnumCaseMultiPayload != 1)
  {
    v34 = v22;
    switch(sub_22C370B74(v32, 3, v22))
    {
      case 1u:
        v73 = 120;
        break;
      case 2u:
        v73 = 114;
        break;
      case 3u:
        v136 = 0x5F797469746E65;
        v137 = 0xE700000000000000;
        v138 = v121;
        v74 = sub_22C90B47C();
        MEMORY[0x2318B7850](v74);

        v125 = sub_22C90A2AC();
        v131 = v75;

        if (a3 < 0)
        {
          goto LABEL_8;
        }

        goto LABEL_23;
      default:
        goto LABEL_7;
    }

    v136 = v73;
    v137 = 0xE100000000000000;
    v138 = v121;
    v76 = sub_22C90B47C();
    MEMORY[0x2318B7850](v76);

    v54 = v136;
    v53 = v137;
LABEL_22:
    v125 = v54;
    v131 = v53;
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_8:
    v40 = swift_projectBox();
    (*(v123 + 16))(v122, v40, v124);
    v41 = sub_22C90677C();
    MEMORY[0x28223BE20](v41);
    *(&v115 - 4) = v43;
    *(&v115 - 3) = v42;
    *(&v115 - 2) = v16;
    v44 = v134;
    v45 = sub_22C7D5C6C(sub_22C4AE9CC, (&v115 - 6), v42);
    if (v46)
    {
      v47 = 1;
    }

    else
    {
      sub_22C405404(v45);
      v47 = 0;
    }

    v48 = v135;
    v49 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
    sub_22C36C640(v12, v47, 1, v49);
    sub_22C4AEBD0(v16, type metadata accessor for PromptTreeIdentifier);
    v50 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
    if (sub_22C370B74(v12, 1, v50))
    {

      sub_22C36DD28(v12, &qword_27D9BD0E8, &qword_22C9175D0);
      sub_22C4A4C7C();
      swift_allocError();
      *v51 = 3;
      swift_willThrow();
      return (*(v123 + 8))(v122, v124);
    }

    v134 = v44;
    v55 = v117;
    sub_22C4AEC28(&v12[*(v50 + 48)], v117);
    sub_22C36DD28(v12, &qword_27D9BD0E8, &qword_22C9175D0);
    v56 = v133;
    v57 = v115;
    v58 = v34;
    (v133)[2](v115, v55 + *(v130 + 20), v34);
    sub_22C4AEBD0(v55, type metadata accessor for TranscriptReferenceResolver.BoundVariable);
    v59 = v56[4];
    v60 = v116;
    v61 = v58;
    v59(v116, v57, v58);
    v62 = v118;
    v63 = v124;
    v64 = v122;
    sub_22C90676C();
    (*(v123 + 8))(v64, v63);
    v65 = swift_getEnumCaseMultiPayload();
    if (v65)
    {
      if (v65 == 1)
      {
        v66 = v119;
        v59(v119, v62, v61);
        v67 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
        v68 = swift_allocBox();
        v70 = v69;
        v71 = *(v67 + 48);
        v59(v69, v60, v61);
        v59(&v70[v71], v66, v61);
        *v48 = v68;
        v72 = v133;
        v34 = v61;
        (v133)[13](v48, *MEMORY[0x277D1D7D0], v61);
      }

      else
      {
        v108 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
        v109 = swift_allocBox();
        v111 = v110;
        v112 = *(v108 + 48);
        v59(v110, v60, v61);
        v113 = swift_allocObject();
        *(v113 + 16) = v121;
        *(v113 + 24) = 0;
        *(v113 + 32) = 1;
        *&v111[v112] = v113;
        v72 = v133;
        v114 = v133[13];
        v114(&v111[v112], *MEMORY[0x277D1D7E8], v61);
        *v48 = v109;
        v34 = v61;
        v114(v48, *MEMORY[0x277D1D7D0], v61);
      }
    }

    else
    {
      v97 = v60;
      v98 = v48;
      v100 = *v62;
      v99 = v62[1];
      v101 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
      v124 = swift_allocBox();
      v103 = v102;
      v104 = *(v101 + 48);
      v59(v102, v97, v61);
      v105 = swift_allocObject();
      *(v105 + 16) = v100;
      *(v105 + 24) = v99;
      *(v105 + 32) = 3;
      *&v103[v104] = v105;
      v106 = v133[13];
      v72 = v133;
      v106(&v103[v104], *MEMORY[0x277D1D7E8], v61);
      *v98 = v124;
      v107 = v98;
      v34 = v61;
      v106(v107, *MEMORY[0x277D1D7D0], v61);
    }

    goto LABEL_29;
  }

  v34 = v22;
  v35 = swift_getEnumCaseMultiPayload();
  if (!v35)
  {
    v54 = *v32;
    v53 = v32[1];
    goto LABEL_22;
  }

  if (v35 == 1)
  {
LABEL_7:
    v37 = v133;
    v38 = v119;
    (v133)[4](v119, v32, v34);
    v125 = sub_22C902CEC();
    v131 = v39;
    (v37[1])(v38, v34);
    if ((a3 & 0x8000000000000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_8;
  }

  v136 = v121;
  v125 = sub_22C90B47C();
  v131 = v36;
  if (a3 < 0)
  {
    goto LABEL_8;
  }

LABEL_23:
  v77 = swift_projectBox();
  v78 = v34;
  v79 = sub_22C370B74(v77, 3, v34);
  if ((v79 - 1) >= 2)
  {
    v84 = v135;
    if (v79)
    {
      v85 = swift_allocObject();
      v136 = 0x5F797469746E65;
      v137 = 0xE700000000000000;
      v138 = v121;
      v86 = sub_22C90B47C();
      MEMORY[0x2318B7850](v86);

      v87 = v137;
      *(v85 + 16) = v136;
      *(v85 + 24) = v87;
      *(v85 + 32) = 3;
      *v84 = v85;
      v72 = v133;
      (v133)[13](v84, *MEMORY[0x277D1D7E8], v78);
    }

    else
    {
      sub_22C4AEC28(v77, v21);
      v72 = v133;
      (v133)[4](v84, v21, v78);
    }

    v34 = v78;
LABEL_29:
    v81 = v125;
    v82 = v131;
    goto LABEL_30;
  }

  v80 = swift_allocObject();
  v81 = v125;
  v82 = v131;
  *(v80 + 16) = v125;
  *(v80 + 24) = v82;
  v83 = v135;
  *v135 = v80;
  v72 = v133;
  (v133)[13](v83, *MEMORY[0x277D1D7C8], v34);

LABEL_30:
  v88 = v129;
  sub_22C4AEC28(v129, v128);
  swift_storeEnumTagMultiPayload();
  v89 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  v90 = v126;
  v91 = v126 + *(v89 + 48);
  *v126 = v81;
  *(v90 + 8) = v82;
  v92 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v93 = v72[2];
  v94 = v88 + *(v92 + 20);
  v95 = v34;
  v93(v91, v94, v34);
  v96 = v135;
  v93(&v91[*(v130 + 20)], v135, v95);
  sub_22C36C640(v90, 0, 1, v89);
  sub_22C7C6EE4();
  return (v72[1])(v96, v95);
}

uint64_t sub_22C4AD420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  if (a1 < 0)
  {
    v10 = swift_projectBox();
    (*(v5 + 16))(v7, v10, v4);
    sub_22C90676C();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
    v8 = swift_projectBox();
    sub_22C4AEC28(v8, a2);
    type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t (*sub_22C4AD5AC(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1)
{
  v32[5] = a4;
  v7 = sub_22C3A5908(&qword_27D9BAEC8, &unk_22C90D770);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v10 = (v32 - v9);
  v11 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = type metadata accessor for PromptTreeIdentifier(0);
  v16 = sub_22C369914(v15);
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  if (a1 >> 61 == 2)
  {
    v20 = swift_projectBox();
    sub_22C3E8FB4(v20, v14, &qword_27D9BC420, &qword_22C919300);
    v21 = *&v14[*(v11 + 48)];
    sub_22C3870B0();
    v22 = sub_22C4AEC84(v14, v19);
    MEMORY[0x28223BE20](v22);
    v32[-4] = a2;
    v32[-3] = a3;
    v32[-2] = v19;
    v23 = sub_22C7D5C6C(sub_22C4AEDF8, &v32[-6], a3);
    if ((v24 & 1) == 0)
    {
      sub_22C405404(v23);
      v26 = *v10;
      v27 = v10[1];
      sub_22C4AEBD0(v10 + *(v7 + 48), type metadata accessor for TranscriptReferenceResolver.BoundVariable);
      v28 = swift_beginAccess();
      v29 = *(v21 + 16);
      MEMORY[0x28223BE20](v28);
      v32[-4] = v19;
      v32[-3] = v26;
      v32[-2] = v27;

      a1 = sub_22C4AB954(sub_22C4AEA08, &v32[-6], v29);

      sub_22C36A9F0();
      sub_22C4AEBD0(v19, v30);
      return a1;
    }

    sub_22C36A9F0();
    sub_22C4AEBD0(v19, v25);
  }

  return a1;
}

unint64_t sub_22C4AD860(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  if (a1 >> 61 == 1 && (v13 = swift_projectBox(), sub_22C4AEC28(v13, v12), sub_22C486784(), sub_22C485FE8(), v15 = v14, sub_22C4AEBD0(v10, type metadata accessor for PromptTreeIdentifier.Label), sub_22C4AEBD0(v12, type metadata accessor for PromptTreeIdentifier.Label), (v15 & 1) != 0))
  {
    a1 = swift_allocObject();
    *(a1 + 16) = a3;
    *(a1 + 24) = a4;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_22C4AD9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369ABC();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v15 = sub_22C369914(v14);
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  if (a1 < 0)
  {
    if (a2 < 0)
    {
      v25 = swift_projectBox();
      v26 = swift_projectBox();
      v27 = *(v6 + 16);
      v27(v13, v25, v4);
      v27(v10, v26, v4);
      type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
      type metadata accessor for PromptTreeIdentifier(0);
      sub_22C3727C8();
      sub_22C4AEB88(v28, v29, &unk_22C9162AC);
      sub_22C36BD24();
      sub_22C4AEB88(v30, v31, &unk_22C9165AC);
      v24 = sub_22C90675C();
      v32 = *(v6 + 8);
      v32(v10, v4);
      v32(v13, v4);
      return v24 & 1;
    }

    goto LABEL_5;
  }

  if (a2 < 0)
  {
LABEL_5:
    v24 = 0;
    return v24 & 1;
  }

  v22 = swift_projectBox();
  swift_projectBox();
  sub_22C4AEE28();
  sub_22C4AEC28(v22, v21);
  sub_22C4AEC28(v10, v18);
  sub_22C486D10();
  v24 = v23;
  sub_22C4AEBD0(v18, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
  sub_22C4AEBD0(v21, type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global);
  return v24 & 1;
}

uint64_t sub_22C4ADC7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
  sub_22C369824();
  v5 = v4;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = swift_projectBox();
  if (a2 < 0)
  {
    (*(v5 + 16))(v8, v14, v3);
    MEMORY[0x2318B8B10](1);
    sub_22C4AEB24();
    sub_22C909F8C();
    return (*(v5 + 8))(v8, v3);
  }

  else
  {
    sub_22C4AEC28(v14, v13);
    MEMORY[0x2318B8B10](0);
    sub_22C486F70();
    sub_22C4AEE40();
    return sub_22C4AEBD0(v13, v15);
  }
}

uint64_t sub_22C4ADE08(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C4ADC7C(v3, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C4ADE60(uint64_t a1)
{
  v2 = *v1;
  sub_22C90B62C();
  sub_22C4ADC7C(v4, v2);
  return sub_22C90B66C();
}

uint64_t sub_22C4ADEB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v61 = a2;
  v64 = a1;
  v4 = sub_22C3A5908(&qword_27D9BCF28, qword_22C9175E0);
  sub_22C369914(v4);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v62 = &v55 - v6;
  v7 = type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  v59 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v12;
  v58 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v57 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v63 = &v55 - v17;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v25 = v24 - v23;
  sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  v29 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v30 = sub_22C369914(v29);
  MEMORY[0x28223BE20](v30);
  sub_22C369ABC();
  v33 = v31 - v32;
  result = MEMORY[0x28223BE20](v34);
  if (a3 >> 61 == 2)
  {
    v56 = &v55 - v36;
    v37 = swift_projectBox();
    sub_22C3E8FB4(v37, v28, &qword_27D9BC420, &qword_22C919300);

    if (swift_getEnumCaseMultiPayload())
    {
      sub_22C36A9F0();
      v39 = v28;
    }

    else
    {
      v40 = v7;
      v41 = v56;
      sub_22C4AEC84(v28, v56);
      sub_22C4AEC28(v41, v25);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = v63;
        sub_22C4AEC84(v25, v63);
        v43 = v62;
        sub_22C3E8FB4(v61, v62, &qword_27D9BCF28, qword_22C9175E0);
        if (sub_22C370B74(v43, 1, v40) == 1)
        {
          sub_22C36DD28(v43, &qword_27D9BCF28, qword_22C9175E0);
          sub_22C4A4C7C();
          swift_allocError();
          *v44 = 3;
          swift_willThrow();
          sub_22C374B64();
          sub_22C369DB4();
          return sub_22C4AEBD0(v56, v45);
        }

        sub_22C3870B0();
        v48 = v60;
        sub_22C4AEC84(v43, v60);
        sub_22C4AEE10();
        sub_22C4AEC28(v56, v33);
        sub_22C3A5908(&qword_27D9BD0F0, &qword_22C9175D8);
        v49 = swift_allocBox();
        sub_22C4AEC28(v42, v57);
        sub_22C4AEC28(v48, v59);
        sub_22C3727C8();
        sub_22C4AEB88(v50, v51, &unk_22C9162AC);
        sub_22C36BD24();
        sub_22C4AEB88(v52, v53, &unk_22C9165AC);
        sub_22C90678C();
        sub_22C7C7320(v49 | 0x8000000000000000, v33);
        sub_22C36A9F0();
        sub_22C4AEBD0(v48, v54);
        sub_22C374B64();
        sub_22C369DB4();
        v39 = v56;
      }

      else
      {
        sub_22C4AEC84(v25, v21);
        sub_22C4AEE10();
        sub_22C4AEC28(v41, v33);
        swift_allocBox();
        sub_22C4AEE28();
        sub_22C4AEC28(v21, v46);
        sub_22C7C7320(v7, v33);
        sub_22C4AEE40();
        sub_22C4AEBD0(v21, v47);
        sub_22C369DB4();
        v39 = v41;
      }
    }

    return sub_22C4AEBD0(v39, v38);
  }

  return result;
}

uint64_t type metadata accessor for TranscriptReferenceResolver.BoundVariable(uint64_t a1)
{
  result = qword_27D9BD108;
  if (!qword_27D9BD108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4AE47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a1;
  v9 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  v66 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v60 = &v57 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v71 = 0;
  v72 = MEMORY[0x277D84F90];
  v18 = *(a2 + 16);
  v67 = a5;
  v68 = v18;
  v63 = a3;
  v64 = a5 + 32;
  v61 = a2;
  v62 = a4;
  v70 = &v57 - v14;
  while (1)
  {
    if (v68 == v16)
    {

      return;
    }

    if (v16 >= *(a2 + 16))
    {
      break;
    }

    v19 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v69 = *(v66 + 72);
    sub_22C4AEC28(a2 + v19 + v69 * v16, v15);
    v20 = *(a4 + 16);
    if (a3)
    {

      sub_22C7DC5D4(v15, a4 + v19, v20, a3 + 16, a3 + 32, v21, v22, v23, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
      v25 = v24;
      v27 = v26;

      if (v27)
      {
        goto LABEL_42;
      }

      if ((v25 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_22C7D9F30();
      if (v29)
      {
        goto LABEL_42;
      }

      v25 = v28;
      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }
    }

    if (v25 >= *(v67 + 16))
    {
      goto LABEL_39;
    }

    v30 = *(v64 + 8 * v25);
    if (v71)
    {

      sub_22C7DACF8();
      v32 = v31;
      v34 = v33;
      v36 = v35;

      if (v34)
      {
        goto LABEL_16;
      }
    }

    else
    {

      sub_22C7D918C();
      if (v40)
      {
        v36 = 0;
LABEL_16:
        sub_22C7D46C0(v30, v36, v37, v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v73 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C3B6684(0, *(v17 + 16) + 1, 1);
          v17 = v73;
        }

        v43 = *(v17 + 16);
        v42 = *(v17 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_22C3B6684(v42 > 1, v43 + 1, 1);
          v17 = v73;
        }

        *(v17 + 16) = v43 + 1;
        v44 = v17 + 32;
        *(v17 + 32 + 8 * v43) = MEMORY[0x277D84F90];
        sub_22C4AEC28(v70, v65);
        v45 = *(v17 + 32 + 8 * v43);
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *(v17 + 32 + 8 * v43) = v45;
        if ((v46 & 1) == 0)
        {

          sub_22C59148C();
          *(v44 + 8 * v43) = v53;

          v45 = *(v44 + 8 * v43);
        }

        v47 = *(v45 + 16);
        v48 = v47 + 1;
        if (v47 >= *(v45 + 24) >> 1)
        {
          sub_22C59148C();
          v45 = v54;
          *(v44 + 8 * v43) = v54;
        }

        v49 = v65;
        goto LABEL_35;
      }

      v32 = v39;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_22C56C17C();
      v17 = v50;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    if (v32 >= *(v17 + 16))
    {
      goto LABEL_41;
    }

    v51 = v17 + 32;
    sub_22C4AEC28(v70, v60);
    v45 = *(v17 + 32 + 8 * v32);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *(v17 + 32 + 8 * v32) = v45;
    if ((v52 & 1) == 0)
    {

      sub_22C59148C();
      *(v51 + 8 * v32) = v55;

      v45 = *(v51 + 8 * v32);
    }

    v47 = *(v45 + 16);
    v48 = v47 + 1;
    if (v47 >= *(v45 + 24) >> 1)
    {
      sub_22C59148C();
      v45 = v56;
      *(v51 + 8 * v32) = v56;
    }

    v49 = v60;
LABEL_35:
    *(v45 + 16) = v48;
    sub_22C4AEC84(v49, v45 + v19 + v47 * v69);

    v15 = v70;
    sub_22C4AEBD0(v70, type metadata accessor for PromptTreeIdentifier.TranscriptReference);
    ++v16;
    a4 = v62;
    a3 = v63;
    a2 = v61;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_22C4AEA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))@<X7>, uint64_t a7@<X8>, uint64_t a8@<X3>, uint64_t a9@<X5>)
{
  if (a3)
  {

    v15 = a5(a4, a1, a2, a3 + 16, a3 + 32);
    v17 = v16;
    v19 = v18;
  }

  else
  {
    result = a6(a4, a1, a2, a8, a4, a9, a5);
    v15 = result;
    v17 = v21;
    v19 = 0;
  }

  *a7 = v15;
  *(a7 + 8) = v17 & 1;
  *(a7 + 16) = v19;
  return result;
}

unint64_t sub_22C4AEB24()
{
  result = qword_27D9BD0F8;
  if (!qword_27D9BD0F8)
  {
    sub_22C3AC1A0(&qword_27D9BD0F0, &qword_22C9175D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD0F8);
  }

  return result;
}

uint64_t sub_22C4AEB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C4AEBD0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4AEC28(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v5(v4);
  sub_22C36985C();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_22C4AEC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v5(v4);
  sub_22C36985C();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22C4AED34(uint64_t a1)
{
  result = sub_22C902D0C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22C4AEDA4()
{
  result = qword_27D9BD118;
  if (!qword_27D9BD118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD118);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SystemToolProtocolGrouping(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C4AEF08()
{
  result = qword_27D9BD120;
  if (!qword_27D9BD120)
  {
    sub_22C3AC1A0(&qword_27D9BD128, qword_22C917760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD120);
  }

  return result;
}

uint64_t sub_22C4AEF6C()
{
  v0 = sub_22C908D6C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22C908DEC();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v15[1] = v2 + 16;
  v10 = *MEMORY[0x277D72188];
  v11 = *MEMORY[0x277D72178];
  v12 = (v2 + 8);
  while (1)
  {
    if (v9 == v8)
    {
      v8 = v9;
      goto LABEL_9;
    }

    v13 = v7;
    (*(v2 + 16))(v5, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v0);
    result = (*(v2 + 88))(v5, v0);
    if (result == v10)
    {
      break;
    }

    if (result == v11)
    {
      goto LABEL_8;
    }

    result = (*v12)(v5, v0);
    ++v8;
    v7 = v13;
  }

  result = (*v12)(v5, v0);
LABEL_8:
  v7 = v13;
LABEL_9:
  v14 = *(v7 + 16);
  if (v8 == v14)
  {
    goto LABEL_12;
  }

  if (v8 >= v14)
  {
    __break(1u);
  }

  else
  {
    result = sub_22C4AF1C0();
    if ((result & 1) == 0)
    {
LABEL_12:

      return v8 == v14;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22C4AF16C()
{
  result = qword_27D9BD130;
  if (!qword_27D9BD130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD130);
  }

  return result;
}

BOOL sub_22C4AF1C0()
{
  v1 = v0;
  v2 = sub_22C908D6C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v2);
  v8 = (*(v4 + 88))(v7, v2);
  v9 = v8 != *MEMORY[0x277D72188];
  if (v8 != *MEMORY[0x277D72188] && v8 == *MEMORY[0x277D72178])
  {
    return 0;
  }

  (*(v4 + 8))(v7, v2);
  return v9;
}

void sub_22C4AF300(uint64_t a1)
{
  sub_22C4AF374(319);
  if (v1 <= 0x3F)
  {
    sub_22C908EAC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C4AF374(uint64_t a1)
{
  if (!qword_27D9BD148)
  {
    type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(255);
    v1 = sub_22C90A68C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BD148);
    }
  }
}

uint64_t sub_22C4AF414(uint64_t a1)
{
  result = sub_22C9036EC();
  if (v2 <= 0x3F)
  {
    result = sub_22C9037DC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4AF4A0()
{
  v46 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v48 = v5 - v4;
  sub_22C36BA0C();
  v6 = sub_22C9036EC();
  sub_22C369824();
  v49 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = sub_22C908EAC();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  sub_22C36BA64();
  v21 = v20;
  v22 = sub_22C36BA0C();
  type metadata accessor for FetchedTools(v22);
  sub_22C36985C();
  MEMORY[0x28223BE20](v23);
  sub_22C369838();
  v26 = (v25 - v24);
  sub_22C36AA08();
  sub_22C4B7E50(v0, v26);
  v47 = v2;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v21, v26, v12);
    sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
    v27 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_22C90F800;
    (*(v14 + 16))(v18, v21, v12);
    sub_22C9036CC();
    sub_22C9037DC();
    sub_22C373410();
    sub_22C4B1ACC(v29, v30, MEMORY[0x277D1ED78]);
    v31 = sub_22C37B5F4();
    sub_22C3A5908(v31, v32);
    sub_22C388F5C();
    sub_22C3D32C8(v33, &qword_27D9BB828, &unk_22C912AE0, v34);
    sub_22C90AE4C();
    *(v28 + v27 + *(v46 + 20)) = 0;
    (*(v14 + 8))(v21, v12);
  }

  else
  {
    v28 = *v26;
  }

  v35 = *(v28 + 16);
  if (v35)
  {
    v50 = MEMORY[0x277D84F90];
    sub_22C3B657C(0, v35, 0);
    sub_22C36BA94();
    v37 = v28 + v36;
    v38 = *(v47 + 72);
    v39 = v50;
    do
    {
      sub_22C4B7E50(v37, v48);
      (*(v49 + 16))(v11, v48, v6);
      sub_22C4B7EA8(v48, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v40 = v6;
      v42 = *(v50 + 16);
      v41 = *(v50 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_22C3B657C(v41 > 1, v42 + 1, 1);
      }

      *(v50 + 16) = v42 + 1;
      sub_22C36BA94();
      (*(v44 + 32))(v50 + v43 + *(v44 + 72) * v42, v11, v40);
      v37 += v38;
      --v35;
      v6 = v40;
    }

    while (v35);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v39;
}

uint64_t sub_22C4AF928()
{
  v1 = v0;
  v2 = sub_22C908EAC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v26 - v10;
  type metadata accessor for FetchedTools(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  sub_22C36AA08();
  sub_22C4B7E50(v1, v15);
  sub_22C37B5F4();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v15;
  }

  v16 = sub_22C37335C();
  v17(v16);
  sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
  v18 = (type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0) - 8);
  v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22C90F800;
  (*(v4 + 16))(v8, v11, v2);
  sub_22C9036CC();
  sub_22C9037DC();
  v28 = MEMORY[0x277D84F90];
  v26[1] = v18[8];
  sub_22C373410();
  sub_22C4B1ACC(v21, v22, MEMORY[0x277D1ED78]);
  v27 = v2;
  sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
  sub_22C388F5C();
  sub_22C3D32C8(v23, &qword_27D9BB828, &unk_22C912AE0, v24);
  sub_22C90AE4C();
  *(v20 + v19 + v18[7]) = 0;
  (*(v4 + 8))(v11, v27);
  return v20;
}

BOOL sub_22C4AFBFC(uint64_t a1, uint64_t a2)
{
  if ((sub_22C9036DC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  sub_22C9037DC();
  sub_22C373410();
  sub_22C4B1ACC(v6, v7, MEMORY[0x277D1ED68]);
  sub_22C37335C();
  sub_22C90A56C();
  sub_22C37335C();
  sub_22C90A56C();
  return v9 == v8;
}

uint64_t sub_22C4AFCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7269447070417369 && a2 == 0xED00006465746365;
    if (v6 || (sub_22C90B4FC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C90B4FC();

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

uint64_t sub_22C4AFDE8(char a1)
{
  if (!a1)
  {
    return 0x6974696E69666564;
  }

  if (a1 == 1)
  {
    return 0x7269447070417369;
  }

  return 0x656372756F73;
}

uint64_t sub_22C4AFE4C(void *a1)
{
  v4 = v1;
  v6 = sub_22C3A5908(&qword_27D9BD210, &qword_22C917A08);
  sub_22C369824();
  v8 = v7;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  sub_22C37FCFC();
  sub_22C374168(a1, a1[3]);
  sub_22C4B7DFC();
  sub_22C90B6CC();
  v18 = 0;
  sub_22C9036EC();
  sub_22C4B8808();
  sub_22C4B1ACC(v10, v11, MEMORY[0x277D1ED08]);
  sub_22C36FC80(v4, &v18);
  if (!v2)
  {
    v12 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    v17[1] = 1;
    sub_22C90B3DC();
    v13 = *(v12 + 24);
    v17[0] = 2;
    sub_22C9037DC();
    sub_22C373410();
    sub_22C4B1ACC(v14, v15, MEMORY[0x277D1ED50]);
    sub_22C36FC80(v4 + v13, v17);
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_22C4B0024(uint64_t a1)
{
  sub_22C9036EC();
  sub_22C4B8808();
  sub_22C4B1ACC(v1, v2, MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  sub_22C90B64C();
  sub_22C9037DC();
  sub_22C373410();
  sub_22C4B1ACC(v3, v4, MEMORY[0x277D1ED58]);
  return sub_22C909F8C();
}

uint64_t sub_22C4B00F4()
{
  sub_22C90B62C();
  sub_22C9036EC();
  sub_22C4B8808();
  sub_22C4B1ACC(v0, v1, MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  sub_22C90B64C();
  sub_22C9037DC();
  sub_22C373410();
  sub_22C4B1ACC(v2, v3, MEMORY[0x277D1ED58]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

void sub_22C4B01DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22C370030();
  v26 = v25;
  v48 = v27;
  v49 = sub_22C9037DC();
  sub_22C369824();
  v47 = v28;
  MEMORY[0x28223BE20](v29);
  sub_22C369838();
  v32 = v31 - v30;
  sub_22C9036EC();
  sub_22C369824();
  v50 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22C369838();
  sub_22C3A5908(&qword_27D9BD1F0, &qword_22C917A00);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  v36 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v40 = v39 - v38;
  sub_22C374168(v26, v26[3]);
  sub_22C4B7DFC();
  sub_22C90B6BC();
  if (v24)
  {
    sub_22C36FF94(v26);
  }

  else
  {
    sub_22C4B8808();
    sub_22C4B1ACC(v41, v42, MEMORY[0x277D1ED20]);
    sub_22C90B32C();
    (*(v50 + 32))();
    *(v40 + *(v36 + 20)) = sub_22C90B2EC() & 1;
    sub_22C373410();
    sub_22C4B1ACC(v43, v44, MEMORY[0x277D1ED70]);
    sub_22C90B32C();
    v45 = sub_22C374B8C();
    v46(v45);
    (*(v47 + 32))(v40 + *(v36 + 24), v32, v49);
    sub_22C4B7E50(v40, v48);
    sub_22C36FF94(v26);
    sub_22C4B7EA8(v40, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
  }

  sub_22C36FB20();
}

uint64_t sub_22C4B05CC(uint64_t a1, uint64_t a2)
{
  v31 = sub_22C908EAC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  type metadata accessor for FetchedTools(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = sub_22C3A5908(&qword_27D9BD1E8, &qword_22C9179F8);
  sub_22C369914(v17);
  sub_22C36D5A8();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  v22 = *(v19 + 56);
  sub_22C4B7E50(a1, &v30 - v20);
  sub_22C4B7E50(a2, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C36AA08();
    sub_22C4B7E50(v21, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = &v21[v22];
      v24 = v31;
      (*(v5 + 32))(v9, v23, v31);
      v25 = sub_22C908E6C();
      v26 = *(v5 + 8);
      v26(v9, v24);
      v27 = sub_22C37B5F4();
      (v26)(v27);
LABEL_9:
      sub_22C4B7EA8(v21, type metadata accessor for FetchedTools);
      return v25 & 1;
    }

    (*(v5 + 8))(v13, v31);
  }

  else
  {
    sub_22C36AA08();
    sub_22C4B7E50(v21, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C46E974();
      v25 = v28;

      goto LABEL_9;
    }
  }

  sub_22C36DD28(v21, &qword_27D9BD1E8, &qword_22C9179F8);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_22C4B089C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x727465526C6F6F74 && a2 == 0xED00006C61766569;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022C930D90 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C4B0974(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x727465526C6F6F74;
  }
}

void sub_22C4B09BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22C370030();
  v70 = v24;
  v68 = v23;
  v26 = v25;
  sub_22C3A5908(&qword_27D9BD1B8, &qword_22C9179E0);
  sub_22C369824();
  v66 = v28;
  v67 = v27;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  v63 = v30;
  sub_22C36BA0C();
  sub_22C908EAC();
  sub_22C369824();
  v64 = v32;
  v65 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22C369838();
  v35 = v34 - v33;
  sub_22C3A5908(&qword_27D9BD1C0, &qword_22C9179E8);
  sub_22C369824();
  v61 = v37;
  v62 = v36;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v38);
  v40 = &v60 - v39;
  type metadata accessor for FetchedTools(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v41);
  sub_22C369838();
  v44 = (v43 - v42);
  v69 = sub_22C3A5908(&qword_27D9BD1C8, &qword_22C9179F0);
  sub_22C369824();
  v46 = v45;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v47);
  v49 = &v60 - v48;
  sub_22C374168(v26, v26[3]);
  sub_22C4B7C64();
  sub_22C90B6CC();
  sub_22C36AA08();
  sub_22C4B7E50(v68, v44);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v64 + 32))(v35, v44, v65);
    sub_22C4B7CB8();
    v50 = v63;
    v51 = v69;
    sub_22C90B36C();
    sub_22C38B97C();
    sub_22C4B1ACC(v52, v53, MEMORY[0x277D72240]);
    v54 = v67;
    sub_22C90B41C();
    (*(v66 + 8))(v50, v54);
    v55 = sub_22C36FC74();
    v56(v55);
    (*(v46 + 8))(v49, v51);
  }

  else
  {
    v57 = *v44;
    sub_22C4B7D0C();
    v58 = v69;
    sub_22C36D77C();
    sub_22C90B36C();
    v71 = v57;
    sub_22C3A5908(&qword_27D9BAF98, &qword_22C90D838);
    sub_22C4B7D60(&qword_27D9BD1D8, &qword_27D9BD1E0, &unk_22C91787C, MEMORY[0x277D83948]);
    v59 = v62;
    sub_22C90B41C();
    (*(v61 + 8))(v40, v59);
    (*(v46 + 8))(v49, v58);
  }

  sub_22C36FB20();
}

uint64_t sub_22C4B0E10()
{
  sub_22C369A48();
  v1 = sub_22C908EAC();
  sub_22C369824();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  type metadata accessor for FetchedTools(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  sub_22C36AA08();
  sub_22C4B7E50(v0, v11);
  sub_22C37B5F4();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_22C37335C();
    v13(v12);
    MEMORY[0x2318B8B10](1);
    sub_22C38B97C();
    sub_22C4B1ACC(v14, v15, MEMORY[0x277D72248]);
    sub_22C909F8C();
    return (*(v3 + 8))(v7, v1);
  }

  else
  {
    MEMORY[0x2318B8B10](0);
    sub_22C47216C();
  }
}

uint64_t sub_22C4B0FA4()
{
  sub_22C90B62C();
  sub_22C4B0E10();
  return sub_22C90B66C();
}

void sub_22C4B0FE4()
{
  sub_22C370030();
  v72 = v0;
  v3 = v2;
  v69 = v4;
  sub_22C3A5908(&qword_27D9BD170, &qword_22C9179C8);
  sub_22C369824();
  v65 = v5;
  v66 = v6;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v7);
  sub_22C36D5B4();
  v68 = v8;
  sub_22C3A5908(&qword_27D9BD178, &qword_22C9179D0);
  sub_22C369824();
  v63 = v10;
  v64 = v9;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v11);
  sub_22C36D5B4();
  v67 = v12;
  sub_22C3A5908(&qword_27D9BD180, &qword_22C9179D8);
  sub_22C369824();
  v70 = v14;
  v71 = v13;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C37FCFC();
  v16 = type metadata accessor for FetchedTools(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v20 = v18 - v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  sub_22C374168(v3, v3[3]);
  sub_22C4B7C64();
  v27 = v72;
  sub_22C90B6BC();
  if (v27)
  {
    goto LABEL_10;
  }

  v60 = v26;
  v61 = v20;
  v59 = v24;
  v62 = v16;
  v72 = v3;
  v28 = v71;
  sub_22C90B34C();
  sub_22C3E1F24();
  if (v30 == v31 >> 1)
  {
    v32 = v62;
LABEL_9:
    v42 = sub_22C90AFBC();
    swift_allocError();
    v44 = v43;
    sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
    *v44 = v32;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v70 + 8))(v1, v28);
    v3 = v72;
LABEL_10:
    v45 = v3;
LABEL_11:
    sub_22C36FF94(v45);
    sub_22C36FB20();
    return;
  }

  if (v30 < (v31 >> 1))
  {
    v33 = *(v29 + v30);
    sub_22C3E1F20();
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    v38 = v61;
    if (v35 == v37 >> 1)
    {
      v39 = v33;
      v40 = v28;
      if (v39)
      {
        sub_22C4B7CB8();
        sub_22C36D77C();
        sub_22C90B24C();
        v41 = v69;
        sub_22C908EAC();
        sub_22C38B97C();
        sub_22C4B1ACC(v46, v47, MEMORY[0x277D72258]);
        sub_22C90B32C();
        swift_unknownObjectRelease();
        v49 = sub_22C370188();
        v50(v49);
        v51 = sub_22C3727E0();
        v52(v51);
        swift_storeEnumTagMultiPayload();
        sub_22C36AA08();
        v53 = v38;
      }

      else
      {
        sub_22C4B7D0C();
        sub_22C36D77C();
        sub_22C90B24C();
        v41 = v69;
        sub_22C3A5908(&qword_27D9BAF98, &qword_22C90D838);
        sub_22C4B7D60(&qword_27D9BD1A8, &qword_27D9BD1B0, &unk_22C9178A4, MEMORY[0x277D83978]);
        sub_22C90B32C();
        v48 = v70;
        swift_unknownObjectRelease();
        v54 = sub_22C4B8844();
        v55(v54);
        (*(v48 + 8))(v1, v40);
        v56 = v59;
        *v59 = v73;
        swift_storeEnumTagMultiPayload();
        sub_22C36AA08();
        v53 = v56;
      }

      v57 = v60;
      sub_22C4B86BC(v53, v60);
      sub_22C36AA08();
      sub_22C4B86BC(v57, v41);
      v45 = v72;
      goto LABEL_11;
    }

    v32 = v62;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_22C4B1654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C4AFCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C4B167C(uint64_t a1)
{
  v2 = sub_22C4B7DFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B16B8(uint64_t a1)
{
  v2 = sub_22C4B7DFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B16FC(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C9036EC();
  sub_22C4B1ACC(&qword_281435770, MEMORY[0x277D1ED00], MEMORY[0x277D1ED10]);
  sub_22C909F8C();
  sub_22C90B64C();
  sub_22C9037DC();
  sub_22C4B1ACC(&qword_27D9BC7F0, MEMORY[0x277D1ED48], MEMORY[0x277D1ED58]);
  sub_22C909F8C();
  return sub_22C90B66C();
}

uint64_t sub_22C4B187C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C4B089C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C4B18A4(uint64_t a1)
{
  v2 = sub_22C4B7C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B18E0(uint64_t a1)
{
  v2 = sub_22C4B7C64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B191C(uint64_t a1)
{
  v2 = sub_22C4B7CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B1958(uint64_t a1)
{
  v2 = sub_22C4B7CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B1994(uint64_t a1)
{
  v2 = sub_22C4B7D0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4B19D0(uint64_t a1)
{
  v2 = sub_22C4B7D0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4B1A14(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C4B0E10();
  return sub_22C90B66C();
}

uint64_t sub_22C4B1ACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C4B1B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C370030();
  a19 = v23;
  a20 = v24;
  v218 = v21;
  v216 = v20;
  v26 = v25;
  v217 = v27;
  v28 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  sub_22C369914(v28);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v29);
  sub_22C36D5B4();
  v211 = v30;
  sub_22C36BA0C();
  sub_22C9063DC();
  sub_22C369824();
  v219 = v32;
  v220 = v31;
  MEMORY[0x28223BE20](v31);
  sub_22C369ABC();
  v225 = v33 - v34;
  sub_22C369930();
  MEMORY[0x28223BE20](v35);
  sub_22C36BA64();
  v212 = v36;
  sub_22C36BA0C();
  v203 = sub_22C906CAC();
  sub_22C369824();
  v202 = v37;
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v201 = v40 - v39;
  v41 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  sub_22C369914(v41);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v42);
  sub_22C36D5B4();
  v221 = v43;
  sub_22C36BA0C();
  v206 = sub_22C903F4C();
  sub_22C369824();
  v205 = v44;
  MEMORY[0x28223BE20](v45);
  sub_22C369838();
  v204 = v47 - v46;
  sub_22C36BA0C();
  v209 = sub_22C9079FC();
  sub_22C369824();
  v208 = v48;
  MEMORY[0x28223BE20](v49);
  sub_22C369838();
  v207 = v51 - v50;
  sub_22C36BA0C();
  v233 = sub_22C90377C();
  sub_22C369824();
  v222 = v52;
  MEMORY[0x28223BE20](v53);
  sub_22C369ABC();
  v232 = v54 - v55;
  sub_22C369930();
  MEMORY[0x28223BE20](v56);
  sub_22C36BA64();
  v231 = v57;
  sub_22C36BA0C();
  v230 = sub_22C9037EC();
  sub_22C369824();
  v234 = v58;
  MEMORY[0x28223BE20](v59);
  sub_22C369838();
  v229 = v61 - v60;
  v62 = sub_22C36BA0C();
  v235 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(v62);
  sub_22C369824();
  v228 = v63;
  MEMORY[0x28223BE20](v64);
  sub_22C369ABC();
  v226 = (v65 - v66);
  sub_22C369930();
  MEMORY[0x28223BE20](v67);
  sub_22C36BA64();
  v227 = v68;
  sub_22C36BA0C();
  sub_22C9089DC();
  sub_22C369824();
  v236 = v69;
  v237 = v70;
  MEMORY[0x28223BE20](v69);
  sub_22C369ABC();
  v223 = (v71 - v72);
  sub_22C369930();
  MEMORY[0x28223BE20](v73);
  v224 = &v197 - v74;
  sub_22C369930();
  MEMORY[0x28223BE20](v75);
  v77 = &v197 - v76;
  v215 = sub_22C907C8C();
  sub_22C369824();
  v214 = v78;
  MEMORY[0x28223BE20](v79);
  sub_22C369838();
  v213 = v81 - v80;
  v82 = sub_22C3A5908(&qword_27D9BA808, &qword_22C90C6E0);
  sub_22C369914(v82);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v83);
  sub_22C37FCFC();
  v84 = sub_22C908A0C();
  sub_22C369824();
  v86 = v85;
  MEMORY[0x28223BE20](v87);
  sub_22C369838();
  v90 = v89 - v88;
  v210 = v26;
  sub_22C9087DC();
  v91 = sub_22C36BA00();
  sub_22C3A5908(v91, v92);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
  v93 = v84;
  sub_22C907E0C();
  if (sub_22C370B74(v22, 1, v84) != 1)
  {
    (*(v86 + 32))(v90, v22, v84);

    sub_22C9089EC();
    v103 = v236;
    v104 = v237;
    v105 = *(v237 + 88);
    v106 = sub_22C37B5F4();
    v107 = v105(v106) == *MEMORY[0x277D1E740];
    v200 = v93;
    v199 = v86;
    if (v107)
    {
      v198 = v90;
      v108 = sub_22C37B5F4();
      v109(v108);
      v110 = sub_22C37BA1C();
      v111(v110, v77, v215);
      v112 = *(sub_22C907C6C() + 16);
      if (v112)
      {
        v238 = MEMORY[0x277D84F90];
        sub_22C3B685C(0, v112, 0);
        v226 = *(v234 + 16);
        v113 = v238;
        sub_22C36BA94();
        sub_22C37F76C();
        sub_22C4B8820(*MEMORY[0x277D1ED30]);
        v114 = v222;
        do
        {
          v236 = v112;
          v237 = v113;
          v116 = v229;
          v115 = v230;
          v226(v229, v93, v230);
          sub_22C90371C();
          v117 = v231;
          sub_22C90378C();
          v119 = v232;
          v118 = v233;
          (*v223)(v232, v224, v233);
          v120 = sub_22C90376C();
          v121 = *v114;
          (*v114)(v119, v118);
          v122 = v117;
          v123 = v227;
          v121(v122, v118);
          v124 = v235;
          sub_22C90379C();
          v125 = v115;
          v113 = v237;
          (*v221)(v116, v125);
          *(v123 + *(v124 + 20)) = v120 & 1;
          v127 = *(v113 + 16);
          v126 = *(v113 + 24);
          if (v127 >= v126 >> 1)
          {
            sub_22C382FD0(v126);
          }

          *(v113 + 16) = v127 + 1;
          sub_22C36BA94();
          sub_22C3870C8(v130, v113 + v128 + *(v129 + 72) * v127);
          v93 += v225;
          v112 = v236 - 1;
        }

        while (v236 != 1);
      }

      v146 = v217;
      sub_22C38267C();
      v160 = sub_22C4B2B54(v158, v159);

      sub_22C36FB04();
      v162 = v213;
      v163 = &a17;
    }

    else
    {
      v131 = *(v104 + 8);
      v132 = sub_22C37B5F4();
      v131(v132);
      v133 = v224;
      v134 = v105;
      sub_22C9089EC();
      v135 = v133;
      v136 = sub_22C37B5F4();
      v227 = v134;
      v137 = v134(v136);
      v138 = *MEMORY[0x277D1E808];
      v139 = v90;
      v225 = v104 + 8;
      if (v137 != v138)
      {
        (v131)(v135, v103);
        sub_22C38267C();
        v146 = v217;
        goto LABEL_17;
      }

      v215 = v131;
      v198 = v90;
      (*(v237 + 96))(v135, v103);
      v140 = v208;
      v141 = sub_22C37BA1C();
      v142 = v209;
      v143(v141);
      v144 = v221;
      sub_22C90798C();
      v145 = v206;
      if (sub_22C370B74(v144, 1, v206) == 1)
      {
        (*(v140 + 8))(v135, v142);
        sub_22C36DD28(v144, &qword_27D9BD290, &qword_22C917EC0);
        sub_22C38267C();
        v146 = v217;
        v139 = v198;
        v131 = v215;
LABEL_17:
        v147 = v223;
        v148 = v139;
        sub_22C9089EC();
        v149 = sub_22C36FC74();
        if (v227(v149) == *MEMORY[0x277D1E738])
        {
          v150 = sub_22C36FC74();
          v151(v150);
          v152 = v139;
          v153 = v202;
          v154 = sub_22C37BA1C();
          v155 = v203;
          v156(v154, v147, v203);
          sub_22C906C8C();
          (*(v153 + 8))(v148, v155);
          sub_22C36FB04();
          v157(v152, v200);
          type metadata accessor for FetchedTools(0);
LABEL_27:
          swift_storeEnumTagMultiPayload();
          goto LABEL_28;
        }

        v165 = sub_22C36FC74();
        v131(v165);
        v160 = MEMORY[0x277D84F90];
        v164 = v211;
        goto LABEL_23;
      }

      v173 = sub_22C37BA1C();
      v174(v173, v144, v145);
      v175 = *(sub_22C903F1C() + 16);
      if (v175)
      {
        v239 = MEMORY[0x277D84F90];
        sub_22C3B685C(0, v175, 0);
        v227 = *(v234 + 16);
        v176 = v239;
        sub_22C36BA94();
        sub_22C37F76C();
        sub_22C4B8820(*MEMORY[0x277D1ED30]);
        v177 = v222;
        do
        {
          v236 = v175;
          v237 = v176;
          v179 = v229;
          v178 = v230;
          (v227)(v229, v93, v230);
          sub_22C90371C();
          v180 = v231;
          sub_22C90378C();
          v182 = v232;
          v181 = v233;
          (*v223)(v232, v224, v233);
          v183 = sub_22C90376C();
          v184 = *v177;
          (*v177)(v182, v181);
          v185 = v180;
          v186 = v226;
          v184(v185, v181);
          v187 = v235;
          sub_22C90379C();
          v188 = v178;
          v176 = v237;
          (*v221)(v179, v188);
          *(v186 + *(v187 + 20)) = v183 & 1;
          v190 = *(v176 + 16);
          v189 = *(v176 + 24);
          if (v190 >= v189 >> 1)
          {
            sub_22C382FD0(v189);
          }

          *(v176 + 16) = v190 + 1;
          sub_22C36BA94();
          sub_22C3870C8(v193, v176 + v191 + *(v192 + 72) * v190);
          v93 += v225;
          v175 = v236 - 1;
        }

        while (v236 != 1);

        v146 = v217;
        v145 = v206;
      }

      else
      {

        v146 = v217;
      }

      sub_22C38267C();
      v160 = sub_22C4B2B54(v194, v195);

      sub_22C36FB04();
      v196(v204, v145);
      sub_22C36FB04();
      v162 = v207;
      v163 = &a11;
    }

    v161(v162, *(v163 - 32));
    v164 = v211;
    v139 = v198;
    if (*(v160 + 16))
    {
LABEL_26:
      sub_22C36C640(v164, 1, 1, v235);
      sub_22C4B3BB0(v160, v164);
      v171 = v170;

      sub_22C36DD28(v164, &qword_27D9BD288, &qword_22C917EB8);
      sub_22C36FB04();
      v172(v139, v200);
      *v146 = v171;
      type metadata accessor for FetchedTools(0);
      goto LABEL_27;
    }

LABEL_23:
    v166 = v139;
    sub_22C903F7C();
    v167 = sub_22C9063CC();
    v168 = sub_22C90AADC();
    if (os_log_type_enabled(v167, v168))
    {
      v169 = swift_slowAlloc();
      *v169 = 0;
      _os_log_impl(&dword_22C366000, v167, v168, "No tools provided. Proceeding with no tools.", v169, 2u);
      MEMORY[0x2318B9880](v169, -1, -1);
    }

    (*(v219 + 8))(v212, v220);
    v139 = v166;
    goto LABEL_26;
  }

  sub_22C36DD28(v22, &qword_27D9BA808, &qword_22C90C6E0);

  v94 = v225;
  sub_22C903F7C();
  v95 = sub_22C9063CC();
  v96 = sub_22C90AADC();
  v97 = os_log_type_enabled(v95, v96);
  v98 = v220;
  if (v97)
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_22C366000, v95, v96, "Could not find a tool retrieval or tool resolution event. Cannot proceed", v99, 2u);
    MEMORY[0x2318B9880](v99, -1, -1);
  }

  (*(v219 + 8))(v94, v98);
  type metadata accessor for FullPlannerError(0);
  sub_22C4B1ACC(qword_27D9BB910, type metadata accessor for FullPlannerError, &protocol conformance descriptor for FullPlannerError);
  swift_allocError();
  v101 = v100;
  v102 = sub_22C901E8C();
  sub_22C36C640(v101, 8, 15, v102);
  swift_willThrow();
LABEL_28:
  sub_22C36FB20();
}

uint64_t sub_22C4B2B54(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v2 = sub_22C9036EC();
  v126 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v141 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C3A5908(&qword_27D9BD298, &qword_22C925EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v117 - v5;
  v7 = sub_22C9063DC();
  v128 = *(v7 - 8);
  v129 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v140 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v123 = &v117 - v11;
  MEMORY[0x28223BE20](v10);
  v122 = &v117 - v12;
  v139 = sub_22C908D6C();
  v135 = *(v139 - 1);
  MEMORY[0x28223BE20](v139);
  v138 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v120 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v117 - v18;
  MEMORY[0x28223BE20](v17);
  v127 = &v117 - v19;
  v20 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v125 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v143 = &v117 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v117 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v117 - v28;
  v30 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v136 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v124 = &v117 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v134 = &v117 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v121 = &v117 - v36;
  MEMORY[0x28223BE20](v35);
  v142 = &v117 - v37;
  v144 = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C3D32C8(&qword_27D9BA9F8, &qword_27D9BA9F0, &qword_22C912420, MEMORY[0x277D1E9D8]);
  v38 = sub_22C907F2C();
  v40 = v39;

  if (!v40)
  {
  }

  sub_22C4B4038(v38, v40, v29);

  if (sub_22C370B74(v29, 1, v30) == 1)
  {
    sub_22C36DD28(v29, &qword_27D9BD288, &qword_22C917EB8);
    v41 = v140;
    sub_22C903F7C();
    v42 = sub_22C9063CC();
    v43 = sub_22C90AACC();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_22C366000, v42, v43, "Could not find the MRU tool in the latest plan or toolbox", v44, 2u);
      MEMORY[0x2318B9880](v44, -1, -1);
    }

    (*(v128 + 8))(v41, v129);
LABEL_6:
    v45 = v137;

    return v45;
  }

  v140 = v30;
  sub_22C4B86BC(v29, v142);
  v46 = v127;
  sub_22C9036BC();
  v118 = sub_22C908EAC();
  if (sub_22C370B74(v46, 1, v118) == 1)
  {
    sub_22C36DD28(v46, &qword_27D9BC1E8, &qword_22C9123B0);
LABEL_20:
    v59 = *(v137 + 16);
    v139 = (v126 + 16);
    v60 = (v126 + 32);
    v61 = (v126 + 8);

    v62 = 0;
    while (1)
    {
      if (v62 == v59)
      {
        v63 = 1;
        v62 = v59;
      }

      else
      {
        if (v62 >= v59)
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        result = sub_22C4B7E50(v137 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v62, v27);
        if (__OFADD__(v62++, 1))
        {
          goto LABEL_50;
        }

        v63 = 0;
      }

      v65 = 1;
      v66 = v140;
      sub_22C36C640(v27, v63, 1, v140);
      v67 = v143;
      sub_22C4B8714(v27, v143);
      if (sub_22C370B74(v67, 1, v66) != 1)
      {
        v68 = v134;
        sub_22C4B86BC(v143, v134);
        (*v139)(v6, v68, v2);
        sub_22C4B7EA8(v68, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        v65 = 0;
      }

      sub_22C36C640(v6, v65, 1, v2);
      if (sub_22C370B74(v6, 1, v2) == 1)
      {

        sub_22C3A5908(&qword_27D9BAF88, &unk_22C917A10);
        v76 = (*(v136 + 80) + 32) & ~*(v136 + 80);
        v77 = swift_allocObject();
        *(v77 + 16) = xmmword_22C90F800;
        v78 = v142;
        sub_22C4B7E50(v142, v77 + v76);
        v144 = v77;

        sub_22C3CD1D8(v79);
        v80 = v144;
        v81 = v123;
        sub_22C903F7C();
        v82 = v124;
        sub_22C4B7E50(v78, v124);
        v83 = sub_22C9063CC();
        v84 = sub_22C90AACC();
        if (os_log_type_enabled(v83, v84))
        {
          v143 = v80;
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v146[0] = v86;
          *v85 = 136315138;
          v87 = v120;
          sub_22C9036BC();
          v88 = v118;
          if (sub_22C370B74(v87, 1, v118) == 1)
          {
            sub_22C36DD28(v87, &qword_27D9BC1E8, &qword_22C9123B0);
            v89 = 0;
            v90 = 0;
          }

          else
          {
            v89 = sub_22C908E8C();
            v90 = v105;
            (*(*(v88 - 8) + 8))(v87, v88);
          }

          v144 = v89;
          v145 = v90;
          sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
          v106 = sub_22C90A1AC();
          v108 = v107;
          sub_22C4B7EA8(v124, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
          v109 = sub_22C36F9F4(v106, v108, v146);

          *(v85 + 4) = v109;
          _os_log_impl(&dword_22C366000, v83, v84, "Inserted tool from last plan to the list of tools to be used in the prompt: %s", v85, 0xCu);
          sub_22C36FF94(v86);
          MEMORY[0x2318B9880](v86, -1, -1);
          MEMORY[0x2318B9880](v85, -1, -1);

          (*(v128 + 8))(v81, v129);
          v103 = v125;
          v80 = v143;
        }

        else
        {

          sub_22C4B7EA8(v82, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
          (*(v128 + 8))(v81, v129);
          v103 = v125;
        }

        sub_22C4B7E50(v78, v103);
        sub_22C36C640(v103, 0, 1, v140);
        sub_22C4B3BB0(v80, v103);
        v45 = v110;

        sub_22C36DD28(v103, &qword_27D9BD288, &qword_22C917EB8);
        v75 = v78;
        goto LABEL_44;
      }

      v69 = v141;
      (*v60)(v141, v6, v2);
      sub_22C4B1ACC(&qword_27D9BD2A0, MEMORY[0x277D1ED00], MEMORY[0x277D1ED18]);
      v70 = sub_22C90A0BC();
      result = (*v61)(v69, v2);
      if (v70)
      {
        v71 = v137;

        v72 = v142;
        v73 = v125;
        sub_22C4B7E50(v142, v125);
        sub_22C36C640(v73, 0, 1, v140);
        sub_22C4B3BB0(v71, v73);
        v45 = v74;
        sub_22C36DD28(v73, &qword_27D9BD288, &qword_22C917EB8);
        v75 = v72;
LABEL_44:
        sub_22C4B7EA8(v75, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        return v45;
      }
    }
  }

  result = sub_22C908DEC();
  v48 = result;
  v49 = 0;
  v133 = *(result + 16);
  v132 = v135 + 16;
  v131 = v135 + 88;
  v50 = *MEMORY[0x277D72188];
  v130 = *MEMORY[0x277D72178];
  v51 = (v135 + 8);
  while (1)
  {
    if (v133 == v49)
    {
      v49 = v133;
      goto LABEL_18;
    }

    v52 = v27;
    v53 = v135;
    v54 = v48;
    v55 = v48 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v49;
    v57 = v138;
    v56 = v139;
    (*(v135 + 16))(v138, v55, v139);
    result = (*(v53 + 88))(v57, v56);
    if (result == v50)
    {
      break;
    }

    if (result == v130)
    {
      goto LABEL_17;
    }

    result = (*v51)(v138, v139);
    ++v49;
    v48 = v54;
    v27 = v52;
  }

  result = (*v51)(v138, v139);
LABEL_17:
  v48 = v54;
  v27 = v52;
LABEL_18:
  v58 = *(v48 + 16);
  if (v49 == v58)
  {

    (*(*(v118 - 8) + 8))(v127);
    goto LABEL_20;
  }

  if (v49 >= v58)
  {
    goto LABEL_51;
  }

  result = sub_22C4AF1C0();
  v91 = v142;
  v92 = v118;
  v93 = v121;
  if ((result & 1) == 0)
  {

    v94 = *(*(v92 - 8) + 8);
    v94(v127, v92);
    v95 = v122;
    sub_22C903F7C();
    sub_22C4B7E50(v91, v93);
    v96 = sub_22C9063CC();
    v97 = sub_22C90AACC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v146[0] = v99;
      *v98 = 136315138;
      v100 = v119;
      sub_22C9036BC();
      if (sub_22C370B74(v100, 1, v92) == 1)
      {
        sub_22C36DD28(v100, &qword_27D9BC1E8, &qword_22C9123B0);
        v101 = 0;
        v102 = 0;
      }

      else
      {
        v101 = sub_22C908E8C();
        v111 = v92;
        v102 = v112;
        v94(v100, v111);
      }

      v144 = v101;
      v145 = v102;
      sub_22C3A5908(&qword_27D9BAD90, &unk_22C91D9E0);
      v113 = sub_22C90A1AC();
      v115 = v114;
      sub_22C4B7EA8(v121, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      v116 = sub_22C36F9F4(v113, v115, v146);

      *(v98 + 4) = v116;
      _os_log_impl(&dword_22C366000, v96, v97, "Ignoring MRU tool %s because it conforms to searchInApp", v98, 0xCu);
      sub_22C36FF94(v99);
      MEMORY[0x2318B9880](v99, -1, -1);
      MEMORY[0x2318B9880](v98, -1, -1);

      (*(v128 + 8))(v122, v129);
      v104 = v91;
    }

    else
    {

      sub_22C4B7EA8(v93, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      (*(v128 + 8))(v95, v129);
      v104 = v91;
    }

    sub_22C4B7EA8(v104, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    goto LABEL_6;
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_22C4B3BB0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v4 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v52 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v54 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v51 = v45 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = v45 - v9;
  v11 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v45 - v15;
  sub_22C379DF8(a2, v45 - v15, &qword_27D9BD288, &qword_22C917EB8);
  v17 = v4;
  v18 = sub_22C370B74(v16, 1, v4);
  if (v18 == 1)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 255;
  }

  else
  {
    v50 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition;
    sub_22C4B86BC(v16, v10);
    sub_22C4B5130(v10, v2, &v55);
    v20 = *(&v55 + 1);
    v19 = v55;
    v21 = v56;
    v22 = v57;
    v24 = v58;
    v18 = sub_22C4B7EA8(v10, v50);
    v23 = v24;
  }

  v49 = v20;
  v50 = v19;
  v60[0] = v19;
  v60[1] = v20;
  v47 = v22;
  v48 = v21;
  v60[2] = v21;
  v60[3] = v22;
  v46 = v23;
  v61 = v23;
  MEMORY[0x28223BE20](v18);
  v45[-2] = v25;

  sub_22C4B7478(v26, sub_22C4B8784, &v45[-4]);
  v45[1] = v27;
  v29 = v28;
  v31 = v30;
  v32 = 0;
  v33 = *(v30 + 16);
  v34 = (v28 + 64);
  v35 = MEMORY[0x277D84F90];
  v53 = a2;
  while (1)
  {
    if (v33 == v32)
    {

      sub_22C4B878C(v50, v49, v48, v47, v46);
      return;
    }

    if (v32 >= *(v29 + 16))
    {
      break;
    }

    if (v32 >= *(v31 + 16))
    {
      goto LABEL_18;
    }

    v36 = *v34;
    v37 = *(v34 - 2);
    v38 = *(v34 - 1);
    v39 = *(v34 - 3);
    v40 = *(v31 + 8 * v32 + 32);
    *&v55 = *(v34 - 4);
    *(&v55 + 1) = v39;
    v56 = v37;
    v57 = v38;
    v58 = v36;
    v59 = v40;
    sub_22C480D88(v55, v39, v37, v38, v36);

    sub_22C4B57C8(&v55, v40, v60, a2, v14);
    sub_22C43627C(v55, *(&v55 + 1), v56, v57, v58);

    if (sub_22C370B74(v14, 1, v17) == 1)
    {
      sub_22C36DD28(v14, &qword_27D9BD288, &qword_22C917EB8);
    }

    else
    {
      v41 = v51;
      sub_22C4B86BC(v14, v51);
      sub_22C4B86BC(v41, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22C59161C();
        v35 = v43;
      }

      v42 = *(v35 + 16);
      if (v42 >= *(v35 + 24) >> 1)
      {
        sub_22C59161C();
        v35 = v44;
      }

      *(v35 + 16) = v42 + 1;
      sub_22C4B86BC(v54, v35 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42);
      a2 = v53;
    }

    v34 += 40;
    ++v32;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_22C4B4038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v130 = a3;
  v131 = a1;
  v111 = sub_22C908A7C();
  v109 = *(v111 - 8);
  v4 = MEMORY[0x28223BE20](v111);
  v110 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v108 = &v103 - v6;
  v107 = sub_22C908DAC();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22C9063DC();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v129 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BC0B0, &unk_22C912AD0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v128 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v126 = &v103 - v12;
  v123 = sub_22C908ABC();
  v119 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v112 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22C9036EC();
  v118 = *(v117 - 8);
  v14 = MEMORY[0x28223BE20](v117);
  v104 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v113 = &v103 - v17;
  MEMORY[0x28223BE20](v16);
  v114 = &v103 - v18;
  v19 = sub_22C9037EC();
  v124 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v122 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v125 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v121 = &v103 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v120 = &v103 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v103 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v103 - v32;
  MEMORY[0x28223BE20](v31);
  v127 = &v103 - v34;
  v35 = a2;
  v36 = sub_22C9087DC();
  v37 = *(v36 + 16);

  for (i = 0; v37 != i; ++i)
  {
    v39 = *(sub_22C908A0C() - 8);
    v40 = v36;
    sub_22C4B62F8(v36 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * i, v131, v35, v33);
    v41 = v19;
    v42 = sub_22C370B74(v33, 1, v19);
    sub_22C36DD28(v33, &qword_27D9BD2A8, &qword_22C920540);
    if (v42 != 1)
    {
      v37 = i;
      v19 = v41;
      v36 = v40;
      break;
    }

    v19 = v41;
    v36 = v40;
  }

  v43 = *(v36 + 16);
  v44 = v128;
  v45 = v129;
  v46 = v130;
  if (v37 == v43)
  {
    v47 = v127;
    sub_22C36C640(v127, 1, 1, v19);

    v48 = v126;
  }

  else
  {
    if (!v43)
    {
LABEL_33:
      __break(1u);
LABEL_34:

      __break(1u);
      goto LABEL_35;
    }

    v49 = v35;
    v50 = *(sub_22C908A0C() - 8);
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v103 = v36;
    v52 = v36 + v51;
    v53 = v43 - 1;
    do
    {
      if (v53 >= v43)
      {
        __break(1u);
        goto LABEL_33;
      }

      v54 = v52 + *(v50 + 72) * v53;
      sub_22C4B62F8(v54, v131, v49, v30);
      v55 = sub_22C370B74(v30, 1, v19);
      sub_22C36DD28(v30, &qword_27D9BD2A8, &qword_22C920540);
      --v53;
    }

    while (v55 == 1);
    v56 = v120;
    v35 = v49;
    sub_22C4B62F8(v54, v131, v49, v120);
    v57 = v121;
    sub_22C379DF8(v56, v121, &qword_27D9BD2A8, &qword_22C920540);
    if (sub_22C370B74(v57, 1, v19) == 1)
    {
      goto LABEL_34;
    }

    v47 = v127;
    (*(v124 + 32))(v127, v57, v19);
    sub_22C36DD28(v56, &qword_27D9BD2A8, &qword_22C920540);
    sub_22C36C640(v47, 0, 1, v19);

    v45 = v129;
    v46 = v130;
    v48 = v126;
    v44 = v128;
  }

  v58 = v125;
  sub_22C379DF8(v47, v125, &qword_27D9BD2A8, &qword_22C920540);
  if (sub_22C370B74(v58, 1, v19) != 1)
  {
    v77 = v124;
    v78 = v122;
    (*(v124 + 32))(v122, v58, v19);
    sub_22C90371C();
    v79 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    sub_22C90379C();
    (*(v77 + 8))(v78, v19);
    sub_22C36DD28(v47, &qword_27D9BD2A8, &qword_22C920540);
    *(v46 + *(v79 + 20)) = 0;
    v75 = v46;
    v76 = 0;
    v74 = v79;
    return sub_22C36C640(v75, v76, 1, v74);
  }

  sub_22C36DD28(v58, &qword_27D9BD2A8, &qword_22C920540);
  type metadata accessor for ToolFetcher(0);
  v59 = v35;
  sub_22C908ACC();
  sub_22C379DF8(v48, v44, &qword_27D9BC0B0, &unk_22C912AD0);
  v60 = v123;
  if (sub_22C370B74(v44, 1, v123) == 1)
  {
    v61 = v48;
    sub_22C36DD28(v44, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C90735C();
    sub_22C3A5F00();
    v62 = swift_allocError();
    v63 = v135;
    v64 = v134;
    *v65 = v133;
    *(v65 + 16) = v64;
    *(v65 + 32) = v63;
    swift_willThrow();
    sub_22C36DD28(v61, &qword_27D9BC0B0, &unk_22C912AD0);
    sub_22C903F7C();

    v66 = v62;
    v67 = sub_22C9063CC();
    v68 = sub_22C90AADC();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v132 = v71;
      *v69 = 136315394;
      *(v69 + 4) = sub_22C36F9F4(v131, v59, &v132);
      *(v69 + 12) = 2112;
      v72 = v62;
      v73 = _swift_stdlib_bridgeErrorToNSError();
      *(v69 + 14) = v73;
      *v70 = v73;
      _os_log_impl(&dword_22C366000, v67, v68, "Error reading tool definition for %s from toolbox. %@", v69, 0x16u);
      sub_22C36DD28(v70, &qword_27D9BB158, qword_22C910FD0);
      MEMORY[0x2318B9880](v70, -1, -1);
      sub_22C36FF94(v71);
      MEMORY[0x2318B9880](v71, -1, -1);
      MEMORY[0x2318B9880](v69, -1, -1);
    }

    (*(v115 + 8))(v45, v116);
    sub_22C36DD28(v47, &qword_27D9BD2A8, &qword_22C920540);
    v74 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    v75 = v46;
    v76 = 1;
    return sub_22C36C640(v75, v76, 1, v74);
  }

  sub_22C36DD28(v48, &qword_27D9BC0B0, &unk_22C912AD0);
  v80 = v119;
  v81 = v112;
  (*(v119 + 32))(v112, v44, v60);
  v82 = (*(v80 + 88))(v81, v60);
  if (v82 == *MEMORY[0x277D1E8E0])
  {
    v83 = v46;
    (*(v80 + 96))(v81, v60);
    v84 = sub_22C908EAC();
    v85 = v113;
    (*(*(v84 - 8) + 32))(v113, v81, v84);
    v86 = v118;
    v87 = v117;
    (*(v118 + 104))(v85, *MEMORY[0x277D1ECE0], v117);
LABEL_27:
    v93 = v114;
    (*(v86 + 32))(v114, v85, v87);
    (*(v86 + 16))(v83, v93, v87);
    sub_22C9037DC();
    *&v133 = MEMORY[0x277D84F90];
    v94 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
    v131 = *(v94 + 24);
    sub_22C4B1ACC(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
    sub_22C90AE4C();
    (*(v86 + 8))(v93, v87);
    sub_22C36DD28(v127, &qword_27D9BD2A8, &qword_22C920540);
    *(v83 + *(v94 + 20)) = 0;
    v75 = v83;
    v76 = 0;
    v74 = v94;
    return sub_22C36C640(v75, v76, 1, v74);
  }

  v87 = v117;
  v86 = v118;
  if (v82 == *MEMORY[0x277D1E8C8])
  {
    v83 = v46;
    (*(v119 + 96))(v81, v60);
    v88 = sub_22C908EAC();
    v85 = v113;
    (*(*(v88 - 8) + 32))(v113, v81, v88);
    v89 = MEMORY[0x277D1ECD0];
LABEL_26:
    (*(v86 + 104))(v85, *v89, v87);
    goto LABEL_27;
  }

  if (v82 == *MEMORY[0x277D1E8D0])
  {
    v83 = v46;
    (*(v119 + 96))(v81, v60);
    v90 = v106;
    v91 = v105;
    v92 = v107;
    (*(v106 + 32))(v105, v81, v107);
    v85 = v113;
    sub_22C908D7C();
    v86 = v118;
    (*(v90 + 8))(v91, v92);
    v89 = MEMORY[0x277D1ECE8];
    goto LABEL_26;
  }

  if (v82 == *MEMORY[0x277D1E8D8])
  {
    (*(v119 + 96))(v81, v60);
    v96 = v109;
    v97 = v81;
    v98 = v108;
    v99 = v111;
    (*(v109 + 32))(v108, v97, v111);
    v100 = v110;
    (*(v96 + 16))(v110, v98, v99);
    if ((*(v96 + 88))(v100, v99) == *MEMORY[0x277D1E8B8])
    {
      v83 = v46;
      (*(v96 + 8))(v98, v99);
      (*(v96 + 96))(v100, v99);
      v101 = sub_22C908EAC();
      v102 = v104;
      (*(*(v101 - 8) + 32))(v104, v100, v101);
      (*(v86 + 104))(v102, *MEMORY[0x277D1ECE0], v87);
      v85 = v113;
      (*(v86 + 32))(v113, v102, v87);
      goto LABEL_27;
    }
  }

LABEL_35:
  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C4B5130@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _OWORD *a3@<X8>)
{
  v54 = a1;
  v55 = a3;
  v4 = sub_22C90384C();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v48 - v7;
  v8 = sub_22C9099FC();
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C9036EC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22C908EAC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v48 - v20;
  (*(v12 + 16))(v14, v54, v11);
  v22 = (*(v12 + 88))(v14, v11);
  if (v22 == *MEMORY[0x277D1ECE0])
  {
    goto LABEL_2;
  }

  if (v22 == *MEMORY[0x277D1ECE8])
  {
    (*(v12 + 96))(v14, v11);
    v29 = v52;
    (*(v52 + 32))(v10, v14, v8);
    v30 = a2[3];
    v31 = a2[4];
    sub_22C374168(a2, v30);
    (*(v31 + 16))(v56, v10, v30, v31);
    result = (*(v29 + 8))(v10, v8);
LABEL_6:
    v32 = v57;
    v33 = v56[1];
    v34 = v55;
    *v55 = v56[0];
    v34[1] = v33;
    *(v34 + 32) = v32;
    return result;
  }

  if (v22 == *MEMORY[0x277D1ECD8])
  {
LABEL_2:
    (*(v12 + 96))(v14, v11);
    (*(v16 + 32))(v21, v14, v15);
    v23 = a2[3];
    v24 = a2[4];
    sub_22C374168(a2, v23);
    v25 = sub_22C906D3C();
    v26 = v53;
    sub_22C36C640(v53, 1, 1, v25);
    type metadata accessor for RenderingState(0);
    swift_allocObject();
    v27 = sub_22C480800(v26);
    (*(v24 + 8))(v56, v21, 0, v27, v23, v24);

    result = (*(v16 + 8))(v21, v15);
    goto LABEL_6;
  }

  if (v22 == *MEMORY[0x277D1ECD0])
  {
    (*(v12 + 96))(v14, v11);
    (*(v16 + 32))(v19, v14, v15);
    v35 = a2[3];
    v36 = a2[4];
    sub_22C374168(a2, v35);
    v37 = sub_22C906D3C();
    v38 = v53;
    sub_22C36C640(v53, 1, 1, v37);
    type metadata accessor for RenderingState(0);
    swift_allocObject();
    v39 = sub_22C480800(v38);
    (*(v36 + 8))(v56, v19, 1, v39, v35, v36);

    result = (*(v16 + 8))(v19, v15);
    goto LABEL_6;
  }

  if (v22 == *MEMORY[0x277D1ECF8])
  {
    (*(v12 + 96))(v14, v11);
    v41 = v49;
    v40 = v50;
    v42 = v51;
    (*(v50 + 32))(v49, v14, v51);
    v43 = a2[3];
    v44 = a2[4];
    sub_22C374168(a2, v43);
    v45 = sub_22C906D3C();
    v46 = v53;
    sub_22C36C640(v53, 1, 1, v45);
    type metadata accessor for RenderingState(0);
    swift_allocObject();
    v47 = sub_22C480800(v46);
    (*(v44 + 24))(v56, v41, v47, v43, v44);

    result = (*(v40 + 8))(v41, v42);
    goto LABEL_6;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C4B57C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v118 = a3;
  v119 = a5;
  v110 = sub_22C9036EC();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v108 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v111 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v117 = &v94 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v106 = &v94 - v15;
  MEMORY[0x28223BE20](v14);
  v112 = &v94 - v16;
  v114 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v17 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v19 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22C9063DC();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v113 = &v94 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = *a1;
  v29 = a1[1];
  v30 = *(a1 + 32);
  v31 = *(a2 + 16);
  v116 = a2;
  if (v31 >= 2)
  {
    v100 = v17;
    v32 = v20;
    v103 = v30;
    v104 = v29;
    v105 = v28;
    v33 = &v94 - v27;
    sub_22C903F7C();

    v34 = sub_22C9063CC();
    v35 = sub_22C90AADC();

    v101 = v35;
    if (os_log_type_enabled(v34, v35))
    {
      v97 = v34;
      v98 = v33;
      v107 = v24;
      v102 = a4;
      v115 = v21;
      v99 = v32;
      v36 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v122[0] = v95;
      v96 = v36;
      *v36 = 136315138;
      *&v120[0] = MEMORY[0x277D84F90];
      sub_22C3B5E2C(0, v31, 0, v37, v38, v39, v40);
      v41 = *&v120[0];
      v42 = a2 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
      v43 = *(v100 + 72);
      do
      {
        sub_22C4B7E50(v42, v19);
        v44 = sub_22C434DCC();
        v46 = v45;
        sub_22C4B7EA8(v19, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        *&v120[0] = v41;
        v52 = *(v41 + 16);
        v51 = *(v41 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_22C3B5E2C(v51 > 1, v52 + 1, 1, v47, v48, v49, v50);
          v41 = *&v120[0];
        }

        *(v41 + 16) = v52 + 1;
        v53 = v41 + 16 * v52;
        *(v53 + 32) = v44;
        *(v53 + 40) = v46;
        v42 += v43;
        --v31;
      }

      while (v31);
      v54 = MEMORY[0x2318B7AD0](v41, MEMORY[0x277D837D0]);
      v56 = v55;

      v57 = sub_22C36F9F4(v54, v56, v122);

      v58 = v96;
      *(v96 + 1) = v57;
      v59 = v97;
      _os_log_impl(&dword_22C366000, v97, v101, "We have multiple tools with the same rendered name! %s", v58, 0xCu);
      v60 = v95;
      sub_22C36FF94(v95);
      MEMORY[0x2318B9880](v60, -1, -1);
      MEMORY[0x2318B9880](v58, -1, -1);

      v21 = v115;
      v20 = v99;
      (*(v115 + 8))(v98, v99);
      a4 = v102;
      v24 = v107;
    }

    else
    {

      v20 = v32;
      (*(v21 + 8))(v33, v32);
    }

    v28 = v105;
    v29 = v104;
    LOBYTE(v30) = v103;
  }

  v61 = *(v118 + 32);
  if (v61 == 255 || (v62 = *(v118 + 16), v120[0] = *v118, v120[1] = v62, v122[0] = v28, v122[1] = v29, v123 = v30, v121 = v61, (static FullPlannerRenderableToolName.== infix(_:_:)(v122, v120) & 1) == 0))
  {
    sub_22C903F7C();
    v72 = v117;
    sub_22C379DF8(a4, v117, &qword_27D9BD288, &qword_22C917EB8);
    v73 = v24;
    v74 = sub_22C9063CC();
    v75 = sub_22C90AACC();
    if (os_log_type_enabled(v74, v75))
    {
      v107 = v73;
      v115 = v21;
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *&v122[0] = v77;
      *v76 = 136315394;
      *(v76 + 4) = sub_22C36F9F4(0xD000000000000018, 0x800000022C930E80, v122);
      *(v76 + 12) = 2080;
      v78 = v111;
      sub_22C379DF8(v72, v111, &qword_27D9BD288, &qword_22C917EB8);
      if (sub_22C370B74(v78, 1, v114) == 1)
      {
        v79 = 0x6E776F6E6B6E753CLL;
        sub_22C36DD28(v78, &qword_27D9BD288, &qword_22C917EB8);
        v80 = 0xE90000000000003ELL;
      }

      else
      {
        v81 = v109;
        v82 = v108;
        v83 = v110;
        (*(v109 + 16))(v108, v78, v110);
        sub_22C4B7EA8(v78, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        v79 = sub_22C434DCC();
        v80 = v84;
        v85 = v83;
        v72 = v117;
        (*(v81 + 8))(v82, v85);
      }

      sub_22C36DD28(v72, &qword_27D9BD288, &qword_22C917EB8);
      v86 = sub_22C36F9F4(v79, v80, v122);

      *(v76 + 14) = v86;
      _os_log_impl(&dword_22C366000, v74, v75, "[%s] Choosing first tool, which has ID: %s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v77, -1, -1);
      MEMORY[0x2318B9880](v76, -1, -1);

      (*(v115 + 8))(v107, v20);
    }

    else
    {

      sub_22C36DD28(v72, &qword_27D9BD288, &qword_22C917EB8);
      (*(v21 + 8))(v73, v20);
    }

    return sub_22C58B32C(v116, v119);
  }

  else
  {
    v63 = v113;
    sub_22C903F7C();
    v64 = v112;
    sub_22C379DF8(a4, v112, &qword_27D9BD288, &qword_22C917EB8);
    v65 = sub_22C9063CC();
    v66 = sub_22C90AACC();
    if (os_log_type_enabled(v65, v66))
    {
      v102 = a4;
      v115 = v21;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v122[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_22C36F9F4(0xD000000000000018, 0x800000022C930E80, v122);
      *(v67 + 12) = 2080;
      v69 = v106;
      sub_22C379DF8(v64, v106, &qword_27D9BD288, &qword_22C917EB8);
      if (sub_22C370B74(v69, 1, v114) == 1)
      {
        v70 = 0x6E776F6E6B6E753CLL;
        sub_22C36DD28(v69, &qword_27D9BD288, &qword_22C917EB8);
        v71 = 0xE90000000000003ELL;
      }

      else
      {
        v88 = v109;
        v89 = v108;
        v90 = v110;
        (*(v109 + 16))(v108, v69, v110);
        sub_22C4B7EA8(v69, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
        v70 = sub_22C434DCC();
        v71 = v91;
        v92 = v90;
        v63 = v113;
        (*(v88 + 8))(v89, v92);
        v64 = v112;
      }

      sub_22C36DD28(v64, &qword_27D9BD288, &qword_22C917EB8);
      v93 = sub_22C36F9F4(v70, v71, v122);

      *(v67 + 14) = v93;
      _os_log_impl(&dword_22C366000, v65, v66, "[%s] Choosing prioritised tool, which has ID: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318B9880](v68, -1, -1);
      MEMORY[0x2318B9880](v67, -1, -1);

      (*(v115 + 8))(v63, v20);
      a4 = v102;
    }

    else
    {

      sub_22C36DD28(v64, &qword_27D9BD288, &qword_22C917EB8);
      (*(v21 + 8))(v63, v20);
    }

    return sub_22C379DF8(a4, v119, &qword_27D9BD288, &qword_22C917EB8);
  }
}

uint64_t sub_22C4B62F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a2;
  v146 = a3;
  v136 = a4;
  v5 = sub_22C3A5908(&qword_27D9BD290, &qword_22C917EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v132 = &v112 - v6;
  v7 = sub_22C3A5908(&qword_27D9BD2A8, &qword_22C920540);
  MEMORY[0x28223BE20](v7 - 8);
  v135 = &v112 - v8;
  v133 = sub_22C9079FC();
  v134 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v123 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_22C9037DC();
  MEMORY[0x28223BE20](v122);
  v121 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_22C90377C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v120 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_22C908EAC();
  v12 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v124 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_22C906CAC();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_22C9036EC();
  v140 = *(v152 - 8);
  v15 = MEMORY[0x28223BE20](v152);
  v142 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v117 = &v112 - v18;
  MEMORY[0x28223BE20](v17);
  v150 = &v112 - v19;
  v20 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v141 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v149 = &v112 - v23;
  v154 = sub_22C9037EC();
  v24 = *(v154 - 8);
  v25 = MEMORY[0x28223BE20](v154);
  v144 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v113 = &v112 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v155 = &v112 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v116 = &v112 - v32;
  MEMORY[0x28223BE20](v31);
  v115 = &v112 - v33;
  v34 = sub_22C9089DC();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v125 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v127 = &v112 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v112 - v40;
  v42 = sub_22C907C8C();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = a1;
  sub_22C9089EC();
  v137 = *(v35 + 88);
  v138 = v35 + 88;
  v67 = v137(v41, v34) == *MEMORY[0x277D1E740];
  v151 = v24;
  v126 = v12;
  v139 = v35;
  if (v67)
  {
    v46 = v12;
    v47 = *(v35 + 96);
    v114 = v34;
    v47(v41, v34);
    v48 = v42;
    (*(v43 + 32))(v45, v41, v42);
    result = sub_22C907C6C();
    v50 = result;
    v51 = 0;
    v52 = *(result + 16);
    v147 = v24 + 16;
    v148 = v52;
    v53 = (v140 + 8);
    v143 = (v46 + 8);
    v54 = (v24 + 8);
    v55 = v154;
    v56 = v24;
    while (v148 != v51)
    {
      if (v51 >= *(v50 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return result;
      }

      v57 = v45;
      v58 = v48;
      (*(v56 + 16))(v155, v50 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v51, v55);
      v59 = v150;
      sub_22C90371C();
      v60 = v149;
      sub_22C9036BC();
      (*v53)(v59, v152);
      v61 = v153;
      if (sub_22C370B74(v60, 1, v153) == 1)
      {
        sub_22C36DD28(v60, &qword_27D9BC1E8, &qword_22C9123B0);
        v48 = v58;
      }

      else
      {
        v62 = sub_22C908E7C();
        v63 = v60;
        v64 = v62;
        v66 = v65;
        (*v143)(v63, v61);
        v67 = v64 == v145 && v66 == v146;
        if (v67)
        {

          v89 = v154;
          v48 = v58;
          goto LABEL_32;
        }

        v68 = sub_22C90B4FC();

        v48 = v58;
        if (v68)
        {

          v89 = v154;
LABEL_32:
          (*(v43 + 8))(v57, v48);
          v93 = *(v151 + 32);
          v94 = v116;
          v93(v116, v155, v89);
          v95 = v115;
          v93(v115, v94, v89);
          v71 = v136;
LABEL_33:
          v93(v71, v95, v89);
          v90 = 0;
          return sub_22C36C640(v71, v90, 1, v89);
        }
      }

      v55 = v154;
      result = (*v54)(v155, v154);
      ++v51;
      v56 = v151;
      v45 = v57;
    }

    (*(v43 + 8))(v45, v48);
    v71 = v136;
    v73 = v135;
    v69 = v133;
    v72 = v134;
    v70 = v140;
    v34 = v114;
  }

  else
  {
    v69 = v133;
    (*(v35 + 8))(v41, v34);
    v70 = v140;
    v71 = v136;
    v72 = v134;
    v73 = v135;
  }

  v74 = v127;
  sub_22C9089EC();
  v75 = v74;
  v76 = v137(v74, v34);
  v77 = v153;
  v78 = v132;
  if (v76 == *MEMORY[0x277D1E738])
  {
    v79 = *(v139 + 96);
    v114 = v34;
    v79(v75, v34);
    (*(v129 + 32))(v128, v75, v130);
    v80 = v124;
    sub_22C906C8C();
    v81 = sub_22C908E7C();
    v83 = v82;
    (*(v126 + 8))(v80, v77);
    if (v81 == v145 && v83 == v146)
    {
    }

    else
    {
      v85 = sub_22C90B4FC();

      if ((v85 & 1) == 0)
      {
        (*(v129 + 8))(v128, v130);
        v72 = v134;
        v73 = v135;
        v34 = v114;
        goto LABEL_23;
      }
    }

    v91 = v117;
    v92 = v128;
    sub_22C906C8C();
    (*(v70 + 104))(v91, *MEMORY[0x277D1ECE0], v152);
    (*(v118 + 104))(v120, *MEMORY[0x277D1ED28], v119);
    v156 = MEMORY[0x277D84F90];
    sub_22C4B1ACC(&qword_27D9BB820, MEMORY[0x277D1ED48], MEMORY[0x277D1ED78]);
    sub_22C3A5908(&qword_27D9BB828, &unk_22C912AE0);
    sub_22C3D32C8(&qword_27D9BB830, &qword_27D9BB828, &unk_22C912AE0, MEMORY[0x277D83970]);
    sub_22C90AE4C();
    sub_22C9036FC();
    (*(v129 + 8))(v92, v130);
    v90 = 0;
    goto LABEL_29;
  }

  (*(v139 + 8))(v75, v34);
LABEL_23:
  v86 = v125;
  sub_22C9089EC();
  if (v137(v86, v34) != *MEMORY[0x277D1E808])
  {
    (*(v139 + 8))(v86, v34);
    v90 = 1;
LABEL_29:
    v89 = v154;
    return sub_22C36C640(v71, v90, 1, v89);
  }

  (*(v139 + 96))(v86, v34);
  v87 = v123;
  (*(v72 + 32))();
  sub_22C90798C();
  v88 = sub_22C903F4C();
  if (sub_22C370B74(v78, 1, v88) == 1)
  {
    (*(v72 + 8))(v87, v69);
    sub_22C36DD28(v78, &qword_27D9BD290, &qword_22C917EC0);
    v89 = v154;
    sub_22C36C640(v73, 1, 1, v154);
    goto LABEL_49;
  }

  v96 = sub_22C903F1C();
  result = (*(*(v88 - 8) + 8))(v78, v88);
  v97 = 0;
  v98 = *(v96 + 16);
  v99 = v151;
  v155 = (v151 + 16);
  v100 = (v70 + 8);
  v101 = (v126 + 8);
  v102 = (v151 + 8);
  v89 = v154;
  while (1)
  {
    if (v98 == v97)
    {

      (*(v134 + 8))(v123, v133);
      v111 = 1;
      v71 = v136;
      v73 = v135;
      goto LABEL_48;
    }

    if (v97 >= *(v96 + 16))
    {
      goto LABEL_53;
    }

    (*(v99 + 16))(v144, v96 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v97, v89);
    v103 = v142;
    sub_22C90371C();
    v104 = v141;
    sub_22C9036BC();
    (*v100)(v103, v152);
    if (sub_22C370B74(v104, 1, v77) == 1)
    {
      sub_22C36DD28(v104, &qword_27D9BC1E8, &qword_22C9123B0);
      goto LABEL_44;
    }

    v105 = v77;
    v106 = sub_22C908E7C();
    v108 = v107;
    (*v101)(v104, v105);
    if (v106 == v145 && v108 == v146)
    {
      break;
    }

    v110 = sub_22C90B4FC();

    if (v110)
    {
      goto LABEL_47;
    }

LABEL_44:
    v89 = v154;
    result = (*v102)(v144, v154);
    ++v97;
    v99 = v151;
    v77 = v153;
  }

LABEL_47:

  v89 = v154;
  (*(v134 + 8))(v123, v133);
  v73 = v135;
  (*(v151 + 32))(v135, v144, v89);
  v111 = 0;
  v71 = v136;
LABEL_48:
  sub_22C36C640(v73, v111, 1, v89);
  if (sub_22C370B74(v73, 1, v89) != 1)
  {
    v93 = *(v151 + 32);
    v95 = v113;
    v93(v113, v73, v89);
    goto LABEL_33;
  }

LABEL_49:
  sub_22C36DD28(v73, &qword_27D9BD2A8, &qword_22C920540);
  v90 = 1;
  return sub_22C36C640(v71, v90, 1, v89);
}