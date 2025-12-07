void sub_2174137EC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB28038, &qword_21776BFD0);
    sub_217751DE8();
    v6 = 0;
    v7 = &unk_27CB2AF60;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_217283C68(v50 + 56 * v6, v61);
      sub_217283C68(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_217283CC4(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &qword_217758C00);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_217492458();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &qword_217758C00);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &qword_217758C00);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2172769F4(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_2172769F4(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &qword_217758C00);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB28010, &unk_21776BFA8);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB28038, &qword_21776BFD0);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &unk_27CB2AF60, &qword_217758C00);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B0F14(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B0F14(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &unk_27CB2AF60, &qword_217758C00);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_217413DD8(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB278A0, &qword_21776B390);
    sub_217751DE8();
    v6 = 0;
    v7 = &qword_27CB277F0;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_217283AFC(v50 + 56 * v6, v61);
      sub_217283AFC(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_217283B58(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &unk_21775A2B0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_217492480();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &unk_21775A2B0);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &unk_21775A2B0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276A34(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276A34(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &unk_21775A2B0);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &qword_27CB27878, &qword_21776B368);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB278A0, &qword_21776B390);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &qword_27CB277F0, &unk_21775A2B0);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B0E30(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B0E30(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &qword_27CB277F0, &unk_21775A2B0);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_2174143C4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB27798, &qword_21776B200);
    sub_217751DE8();
    v6 = 0;
    v7 = &unk_27CB275E0;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_21725CF0C(v50 + 56 * v6, v61);
      sub_21725CF0C(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_21725CE44(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &qword_2177589D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2174924A8();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &qword_2177589D0);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &qword_2177589D0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276A74(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276A74(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &qword_2177589D0);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB27730, &unk_21776B198);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB27798, &qword_21776B200);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &unk_27CB275E0, &qword_2177589D0);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B146C(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B146C(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &unk_27CB275E0, &qword_2177589D0);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_2174149B0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB27CF8, &qword_21776BAA0);
    sub_217751DE8();
    v6 = 0;
    v7 = &unk_27CB27760;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_217284130(v50 + 56 * v6, v61);
      sub_217284130(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_21728418C(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &unk_21775A2D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2174924D0();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &unk_21775A2D0);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &unk_21775A2D0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276AB4(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276AB4(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &unk_21775A2D0);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB27CD0, &qword_21776BA78);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB27CF8, &qword_21776BAA0);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &unk_27CB27760, &unk_21775A2D0);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2848(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B2848(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &unk_27CB27760, &unk_21775A2D0);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_217414F9C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v75 = v2[13];
  v76[0] = v3;
  v73 = v75;
  v74 = v4;
  v72 = v3;
  v5 = a1[2];
  v60 = *(v5 + 16);
  if (v60)
  {
    v58 = v5 + 32;
    sub_2171F0688(v76, v69, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v75, v69, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v74, v69, &qword_27CB27E88, &qword_21776BD40);
    sub_217751DE8();
    v6 = 0;
    v7 = &unk_27CB28AA0;
    v56 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_47;
      }

      v8 = v7;
      sub_217275710(v58 + (v6 << 6), v69);
      sub_217275710(v69, v65);
      sub_217275710(v69, &v66);
      v9 = &type metadata for Song;
      if (v68[24])
      {
        v9 = &type metadata for MusicVideo;
      }

      v10 = &protocol witness table for Song;
      if (v68[24])
      {
        v10 = &protocol witness table for MusicVideo;
      }

      v63 = v9;
      v64 = v10;
      v11 = swift_allocObject();
      v12 = v67;
      *(v11 + 16) = v66;
      *(v11 + 32) = v12;
      *(v11 + 48) = *v68;
      *(v11 + 64) = *&v68[16];
      *&v62 = v11;
      sub_2171F3F0C(&v62, &v66);
      v13 = *(&v67 + 1);
      v14 = *v68;
      __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      v15 = (*(v14 + 8))(v13, v14);
      v17 = v16;
      sub_21727576C(v69);
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v18 = v72;
      v19 = v73;
      v20 = *(v73 + 16);
      if (v72)
      {

        sub_2172CA228(v15, v17, v19 + 32, v20, (v18 + 16));
        v22 = v21;
        v24 = v23;

        if ((v24 & 1) == 0)
        {

          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

LABEL_21:
          if (v22 >= *(v4 + 16))
          {
            goto LABEL_49;
          }

          v7 = v8;
          sub_2171F0688(v4 + (v22 << 6) + 32, &v66, v8, &qword_21775A020);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2174924F8();
            v4 = v27;
          }

          v5 = v56;
          if (v22 >= *(v4 + 16))
          {
            goto LABEL_50;
          }

          sub_21749A584(v65, v4 + (v22 << 6) + 32, v8, &qword_21775A020);
          goto LABEL_31;
        }
      }

      else
      {
        v22 = 0;
        v25 = (v73 + 40);
        while (v20 != v22)
        {
          v26 = *(v25 - 1) == v15 && *v25 == v17;
          if (v26 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_21;
          }

          ++v22;
          v25 += 2;
        }
      }

      sub_2172C98F0(v15, v17);

      v7 = v8;
      sub_2171F0688(v65, &v66, v8, &qword_21775A020);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276AF4(0, *(v4 + 16) + 1, 1);
        v4 = v71;
      }

      v30 = *(v4 + 16);
      v29 = *(v4 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_217276AF4(v29 > 1, v30 + 1, 1);
        v4 = v71;
      }

      sub_2171F0790(v65, v8, &qword_21775A020);
      *(v4 + 16) = v30 + 1;
      v31 = (v4 + (v30 << 6));
      v32 = v66;
      v33 = v67;
      v34 = *v68;
      *(v31 + 73) = *&v68[9];
      v31[3] = v33;
      v31[4] = v34;
      v31[2] = v32;
      memset(v68, 0, 24);
      v66 = 0u;
      v67 = 0u;
      v68[24] = -2;
      v5 = v56;
LABEL_31:
      ++v6;
      sub_2171F0790(&v66, &unk_27CB27E60, &qword_21776BD18);
      if (v6 == v60)
      {

        goto LABEL_34;
      }
    }
  }

  sub_2171F0688(v76, v69, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v75, v69, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v74, v69, &qword_27CB27E88, &qword_21776BD40);
LABEL_34:
  v35 = *(v4 + 16);

  v36 = 0;
  v61 = MEMORY[0x277D84F90];
LABEL_35:
  for (i = v4 + 32 + (v36 << 6); ; i += 64)
  {
    if (v35 == v36)
    {

      v46 = *a1;
      v47 = a1[1];
      v48 = a1[4];
      v49 = a1[6];
      v57 = a1[5];
      v59 = a1[3];
      v50 = a1[8];
      v53 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v52 = a1[14];
      v51 = a1[15];
      sub_2171FB568(v46, v47);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v46;
      a2[1] = v47;
      a2[2] = v61;
      a2[3] = v59;
      a2[4] = v48;
      a2[5] = v57;
      a2[6] = v49;
      a2[7] = v53;
      a2[8] = v50;
      a2[14] = v52;
      a2[15] = v51;
      return;
    }

    if (v36 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v69, &unk_27CB28AA0, &qword_21775A020);
    if (v70[24] != 255)
    {
      v66 = v69[0];
      v67 = v69[1];
      *v68 = *v70;
      *&v68[9] = *&v70[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B196C(0, *(v61 + 16) + 1, 1, v61);
        v61 = v44;
      }

      v39 = *(v61 + 16);
      v38 = *(v61 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2172B196C(v38 > 1, v39 + 1, 1, v61);
        v61 = v45;
      }

      ++v36;
      *(v61 + 16) = v39 + 1;
      v40 = (v61 + (v39 << 6));
      v41 = v66;
      v42 = v67;
      v43 = *v68;
      *(v40 + 73) = *&v68[9];
      v40[3] = v42;
      v40[4] = v43;
      v40[2] = v41;
      goto LABEL_35;
    }

    sub_2171F0790(v69, &unk_27CB28AA0, &qword_21775A020);
    ++v36;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_21741562C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB27C38, &qword_21776B950);
    sub_217751DE8();
    v6 = 0;
    v7 = &qword_27CB2CD90;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_21725CF68(v50 + 56 * v6, v61);
      sub_21725CF68(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_217284498(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &unk_21775A2C0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_217492520();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &unk_21775A2C0);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &unk_21775A2C0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276B34(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276B34(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &unk_21775A2C0);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB27C10, &qword_21776B928);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB27C38, &qword_21776B950);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &qword_27CB2CD90, &unk_21775A2C0);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B1388(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B1388(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &qword_27CB2CD90, &unk_21775A2C0);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_217415C18(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB281B8, &qword_21776C230);
    sub_217751DE8();
    v6 = 0;
    v7 = &qword_27CB246E8;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_217284288(v50 + 56 * v6, v61);
      sub_217284288(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_2172842E4(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &qword_21776C140);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_217492548();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &qword_21776C140);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &qword_21776C140);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276B74(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276B74(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &qword_21776C140);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB28190, &qword_21776C208);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB281B8, &qword_21776C230);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &qword_27CB246E8, &qword_21776C140);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B12A4(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B12A4(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &qword_27CB246E8, &qword_21776C140);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_217416204(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB280F8, &qword_21776C100);
    sub_217751DE8();
    v6 = 0;
    v7 = &unk_27CB2AF80;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_217283D6C(v50 + 56 * v6, v61);
      sub_217283D6C(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_217283DC8(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &qword_217758C30);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_217492570();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &qword_217758C30);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &qword_217758C30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276BB4(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276BB4(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &qword_217758C30);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB280D0, &unk_21776C0D8);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB280F8, &qword_21776C100);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &unk_27CB2AF80, &qword_217758C30);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2878(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B2878(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &unk_27CB2AF80, &qword_217758C30);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_2174167F0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v75 = v2[13];
  v76[0] = v3;
  v73 = v75;
  v74 = v4;
  v72 = v3;
  v5 = a1[2];
  v60 = *(v5 + 16);
  if (v60)
  {
    v58 = v5 + 32;
    sub_2171F0688(v76, v69, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v75, v69, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v74, v69, &qword_27CB27DC0, &qword_21776BBE8);
    sub_217751DE8();
    v6 = 0;
    v7 = &qword_27CB27D20;
    v56 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_47;
      }

      v8 = v7;
      sub_21729C79C(v58 + (v6 << 6), v69);
      sub_21729C79C(v69, v65);
      sub_21729C79C(v69, &v66);
      v9 = &type metadata for MusicVideo;
      if (v68[24])
      {
        v9 = &type metadata for Song;
      }

      v10 = &protocol witness table for MusicVideo;
      if (v68[24])
      {
        v10 = &protocol witness table for Song;
      }

      v63 = v9;
      v64 = v10;
      v11 = swift_allocObject();
      v12 = v67;
      *(v11 + 16) = v66;
      *(v11 + 32) = v12;
      *(v11 + 48) = *v68;
      *(v11 + 64) = *&v68[16];
      *&v62 = v11;
      sub_2171F3F0C(&v62, &v66);
      v13 = *(&v67 + 1);
      v14 = *v68;
      __swift_project_boxed_opaque_existential_1(&v66, *(&v67 + 1));
      v15 = (*(v14 + 8))(v13, v14);
      v17 = v16;
      sub_21729C7F8(v69);
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v18 = v72;
      v19 = v73;
      v20 = *(v73 + 16);
      if (v72)
      {

        sub_2172CA228(v15, v17, v19 + 32, v20, (v18 + 16));
        v22 = v21;
        v24 = v23;

        if ((v24 & 1) == 0)
        {

          if ((v22 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

LABEL_21:
          if (v22 >= *(v4 + 16))
          {
            goto LABEL_49;
          }

          v7 = v8;
          sub_2171F0688(v4 + (v22 << 6) + 32, &v66, v8, &qword_217758B80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_217492598();
            v4 = v27;
          }

          v5 = v56;
          if (v22 >= *(v4 + 16))
          {
            goto LABEL_50;
          }

          sub_21749A584(v65, v4 + (v22 << 6) + 32, v8, &qword_217758B80);
          goto LABEL_31;
        }
      }

      else
      {
        v22 = 0;
        v25 = (v73 + 40);
        while (v20 != v22)
        {
          v26 = *(v25 - 1) == v15 && *v25 == v17;
          if (v26 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_21;
          }

          ++v22;
          v25 += 2;
        }
      }

      sub_2172C98F0(v15, v17);

      v7 = v8;
      sub_2171F0688(v65, &v66, v8, &qword_217758B80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276C60(0, *(v4 + 16) + 1, 1);
        v4 = v71;
      }

      v30 = *(v4 + 16);
      v29 = *(v4 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_217276C60(v29 > 1, v30 + 1, 1);
        v4 = v71;
      }

      sub_2171F0790(v65, v8, &qword_217758B80);
      *(v4 + 16) = v30 + 1;
      v31 = (v4 + (v30 << 6));
      v32 = v66;
      v33 = v67;
      v34 = *v68;
      *(v31 + 73) = *&v68[9];
      v31[3] = v33;
      v31[4] = v34;
      v31[2] = v32;
      memset(v68, 0, 24);
      v66 = 0u;
      v67 = 0u;
      v68[24] = -2;
      v5 = v56;
LABEL_31:
      ++v6;
      sub_2171F0790(&v66, &qword_27CB27D98, &unk_21776BBC0);
      if (v6 == v60)
      {

        goto LABEL_34;
      }
    }
  }

  sub_2171F0688(v76, v69, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v75, v69, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v74, v69, &qword_27CB27DC0, &qword_21776BBE8);
LABEL_34:
  v35 = *(v4 + 16);

  v36 = 0;
  v61 = MEMORY[0x277D84F90];
LABEL_35:
  for (i = v4 + 32 + (v36 << 6); ; i += 64)
  {
    if (v35 == v36)
    {

      v46 = *a1;
      v47 = a1[1];
      v48 = a1[4];
      v49 = a1[6];
      v57 = a1[5];
      v59 = a1[3];
      v50 = a1[8];
      v53 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v52 = a1[14];
      v51 = a1[15];
      sub_2171FB568(v46, v47);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v46;
      a2[1] = v47;
      a2[2] = v61;
      a2[3] = v59;
      a2[4] = v48;
      a2[5] = v57;
      a2[6] = v49;
      a2[7] = v53;
      a2[8] = v50;
      a2[14] = v52;
      a2[15] = v51;
      return;
    }

    if (v36 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v69, &qword_27CB27D20, &qword_217758B80);
    if (v70[24] != 255)
    {
      v66 = v69[0];
      v67 = v69[1];
      *v68 = *v70;
      *&v68[9] = *&v70[9];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2A10(0, *(v61 + 16) + 1, 1, v61);
        v61 = v44;
      }

      v39 = *(v61 + 16);
      v38 = *(v61 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_2172B2A10(v38 > 1, v39 + 1, 1, v61);
        v61 = v45;
      }

      ++v36;
      *(v61 + 16) = v39 + 1;
      v40 = (v61 + (v39 << 6));
      v41 = v66;
      v42 = v67;
      v43 = *v68;
      *(v40 + 73) = *&v68[9];
      v40[3] = v42;
      v40[4] = v43;
      v40[2] = v41;
      goto LABEL_35;
    }

    sub_2171F0790(v69, &qword_27CB27D20, &qword_217758B80);
    ++v36;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_217416E80(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB27A48, &qword_21776B648);
    sub_217751DE8();
    v6 = 0;
    v7 = &unk_27CB2ACC0;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_217275858(v50 + 56 * v6, v61);
      sub_217275858(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_2172758B4(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &qword_217758AA8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2174925C0();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &qword_217758AA8);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &qword_217758AA8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276CA0(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276CA0(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &qword_217758AA8);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB27A20, &unk_21776B620);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB27A48, &qword_21776B648);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &unk_27CB2ACC0, &qword_217758AA8);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B2A40(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B2A40(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &unk_27CB2ACC0, &qword_217758AA8);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_21741746C(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB282B0, &qword_21776C398);
    sub_217751DE8();
    v6 = 0;
    v7 = &unk_27CB28A90;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_2172757C0(v50 + 56 * v6, v61);
      sub_2172757C0(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_21726B8C4(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &qword_217758F90);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2174925E8();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &qword_217758F90);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &qword_217758F90);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276CE0(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276CE0(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &qword_217758F90);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &qword_27CB28288, &unk_21776C370);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB282B0, &qword_21776C398);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &unk_27CB28A90, &qword_217758F90);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B10DC(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B10DC(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &unk_27CB28A90, &qword_217758F90);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_217417A58(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[12];
  v4 = v2[14];
  v67 = v2[13];
  v68[0] = v3;
  v65 = v67;
  v66 = v4;
  v64 = v3;
  v5 = a1[2];
  v52 = *(v5 + 16);
  if (v52)
  {
    v50 = v5 + 32;
    sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
    sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
    sub_2171F0688(&v66, v61, &qword_27CB27F48, &qword_21776BE70);
    sub_217751DE8();
    v6 = 0;
    v7 = &qword_27CB24678;
    v48 = v5;
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        goto LABEL_43;
      }

      v8 = v7;
      sub_217284338(v50 + 56 * v6, v61);
      sub_217284338(v61, v56);
      v9 = v61[0];
      sub_217751DE8();
      sub_217284394(v61);
      v10 = v64;
      v11 = v65;
      v12 = *(v65 + 16);
      if (v64)
      {

        sub_2172CA228(v9, *(&v9 + 1), v11 + 32, v12, (v10 + 16));
        v14 = v13;
        v16 = v15;

        if ((v16 & 1) == 0)
        {

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

LABEL_17:
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_45;
          }

          v7 = v8;
          sub_2171F0688(v4 + 56 * v14 + 32, &v57, v8, &qword_217758BD0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_217492610();
            v4 = v19;
          }

          v5 = v48;
          if (v14 >= *(v4 + 16))
          {
            goto LABEL_46;
          }

          sub_21749A584(v56, v4 + 56 * v14 + 32, v8, &qword_217758BD0);
          goto LABEL_27;
        }
      }

      else
      {
        v14 = 0;
        v17 = (v65 + 40);
        while (v12 != v14)
        {
          v18 = *(v17 - 1) == v9 && *v17 == *(&v9 + 1);
          if (v18 || (sub_217753058() & 1) != 0)
          {

            goto LABEL_17;
          }

          ++v14;
          v17 += 2;
        }
      }

      sub_2172C98F0(v9, *(&v9 + 1));

      v7 = v8;
      sub_2171F0688(v56, v54, v8, &qword_217758BD0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276D20(0, *(v4 + 16) + 1, 1);
        v4 = v63;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_217276D20(v21 > 1, v22 + 1, 1);
        v4 = v63;
      }

      sub_2171F0790(v56, v8, &qword_217758BD0);
      *(v4 + 16) = v22 + 1;
      v23 = v4 + 56 * v22;
      v24 = v54[0];
      v25 = v54[1];
      v26 = v54[2];
      *(v23 + 80) = v55;
      *(v23 + 48) = v25;
      *(v23 + 64) = v26;
      *(v23 + 32) = v24;
      v57 = xmmword_2177586D0;
      v58 = 0u;
      v59 = 0u;
      v60 = 0;
      v5 = v48;
LABEL_27:
      ++v6;
      sub_2171F0790(&v57, &unk_27CB27F20, &unk_21776BE48);
      if (v6 == v52)
      {

        goto LABEL_30;
      }
    }
  }

  sub_2171F0688(v68, v61, &qword_27CB27788, &qword_21776B1F0);
  sub_2171F0688(&v67, v61, &qword_27CB27790, &qword_21776B1F8);
  sub_2171F0688(&v66, v61, &qword_27CB27F48, &qword_21776BE70);
LABEL_30:
  v27 = *(v4 + 16);

  v28 = 0;
  v53 = MEMORY[0x277D84F90];
LABEL_31:
  for (i = v4 + 32 + 56 * v28; ; i += 56)
  {
    if (v27 == v28)
    {

      v38 = *a1;
      v39 = a1[1];
      v40 = a1[4];
      v41 = a1[6];
      v49 = a1[5];
      v51 = a1[3];
      v42 = a1[8];
      v47 = a1[7];
      sub_2171F0688((a1 + 9), (a2 + 9), &qword_27CB24188, &dword_217758930);
      v44 = a1[14];
      v43 = a1[15];
      sub_2171FB568(v38, v39);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();

      *a2 = v38;
      a2[1] = v39;
      a2[2] = v53;
      a2[3] = v51;
      a2[4] = v40;
      a2[5] = v49;
      a2[6] = v41;
      a2[7] = v47;
      a2[8] = v42;
      a2[14] = v44;
      a2[15] = v43;
      return;
    }

    if (v28 >= *(v4 + 16))
    {
      break;
    }

    sub_2171F0688(i, v61, &qword_27CB24678, &qword_217758BD0);
    if (*(&v61[0] + 1))
    {
      v57 = v61[0];
      v58 = v61[1];
      v59 = v61[2];
      v60 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2172B0FF8(0, *(v53 + 16) + 1, 1, v53);
        v53 = v36;
      }

      v31 = *(v53 + 16);
      v30 = *(v53 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_2172B0FF8(v30 > 1, v31 + 1, 1, v53);
        v53 = v37;
      }

      ++v28;
      *(v53 + 16) = v31 + 1;
      v32 = v53 + 56 * v31;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      *(v32 + 80) = v60;
      *(v32 + 48) = v34;
      *(v32 + 64) = v35;
      *(v32 + 32) = v33;
      goto LABEL_31;
    }

    sub_2171F0790(v61, &qword_27CB24678, &qword_217758BD0);
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t sub_217418044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27908, &qword_21776B460);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27908, &qword_21776B460);
}

uint64_t sub_217418128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27AA8, &qword_21776B700);
  sub_2172CA838(a3, v6);
  sub_2174507E0();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27AA8, &qword_21776B700);
}

uint64_t sub_21741820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27FD8, &qword_21776BF58);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27FD8, &qword_21776BF58);
}

uint64_t sub_2174182F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27840, &qword_21776B318);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27840, &qword_21776B318);
}

uint64_t sub_2174183D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB276D8, &qword_21776B140);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB276D8, &qword_21776B140);
}

uint64_t sub_2174184B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27748, &qword_21776B1B0);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27748, &qword_21776B1B0);
}

uint64_t sub_21741859C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &unk_27CB27E28, &qword_21776BCC8);
  sub_2172CA838(a3, v6);
  sub_2174507E0();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &unk_27CB27E28, &qword_21776BCC8);
}

uint64_t sub_217418680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27BD8, &qword_21776B8D8);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27BD8, &qword_21776B8D8);
}

uint64_t sub_217418764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB28158, &qword_21776C1B8);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB28158, &qword_21776C1B8);
}

uint64_t sub_217418848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB28098, &qword_21776C088);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB28098, &qword_21776C088);
}

uint64_t sub_21741892C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27D60, &qword_21776BB70);
  sub_2172CA838(a3, v6);
  sub_2174507E0();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27D60, &qword_21776BB70);
}

uint64_t sub_217418A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB279E8, &qword_21776B5D0);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB279E8, &qword_21776B5D0);
}

uint64_t sub_217418AF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB28250, &qword_21776C320);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB28250, &qword_21776C320);
}

uint64_t sub_217418BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2171F0688(a1, v7, &qword_27CB27EE8, &qword_21776BDF8);
  sub_2172CA838(a3, v6);
  sub_2174509EC();
  sub_21733AB9C(a3);
  return sub_2171F0790(a1, &qword_27CB27EE8, &qword_21776BDF8);
}

uint64_t sub_217418CBC(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217418CE0, 0, 0);
}

uint64_t sub_217418CE0()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778800);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB278F8, &unk_21776B440);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217418DCC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217418EC4()
{
  OUTLINED_FUNCTION_10();
  memcpy(*(v0 + 120), (v0 + 16), 0x68uLL);
  OUTLINED_FUNCTION_0_2();

  return v1();
}

uint64_t sub_217418F48(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217418F6C, 0, 0);
}

uint64_t sub_217418F6C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778748);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB27A98, &unk_21776B6E0);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419058()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217419150(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217419174, 0, 0);
}

uint64_t sub_217419174()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_2177787D0);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB27FC8, &unk_21776BF38);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419260(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217419284, 0, 0);
}

uint64_t sub_217419284()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_2177787B8);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &unk_27CB27830, &qword_21776B2F8);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419370(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217419394, 0, 0);
}

uint64_t sub_217419394()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778860);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB276B8, &unk_21776B120);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419480(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2174194A4, 0, 0);
}

uint64_t sub_2174194A4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778758);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &unk_27CB27C90, &unk_21776BA10);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419590(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2174195B4, 0, 0);
}

uint64_t sub_2174195B4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_194_5(v4);

    return sub_21750A9D8(v6, v7);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB27E18, &qword_217791F10);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419698(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2174196BC, 0, 0);
}

uint64_t sub_2174196BC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778830);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB27BC8, &qword_21776B8B8);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_2174197A8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2174197CC, 0, 0);
}

uint64_t sub_2174197CC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778818);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB28148, &qword_21776C198);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_2174198B8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2174198DC, 0, 0);
}

uint64_t sub_2174198DC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778798);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB28088, &unk_21776C068);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_2174199C8(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_2174199EC, 0, 0);
}

uint64_t sub_2174199EC()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_194_5(v4);

    return sub_21750AFAC(v6, v7);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &unk_27CB27D50, &unk_21776BB50);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419AD0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217419AF4, 0, 0);
}

uint64_t sub_217419AF4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778708);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB279D8, &unk_21776B5B0);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419BE0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217419C04, 0, 0);
}

uint64_t sub_217419C04()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_217778858);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &unk_27CB28240, &unk_21776C300);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419CF0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x2822009F8](sub_217419D14, 0, 0);
}

uint64_t sub_217419D14()
{
  OUTLINED_FUNCTION_30_0();
  v1 = OUTLINED_FUNCTION_59_6();
  if (v2(v1))
  {
    OUTLINED_FUNCTION_9_14(&unk_2177787E8);
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_525(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_149_6(v4);

    return v7(v6);
  }

  else
  {
    sub_2171F0688(*(v0 + 128), *(v0 + 120), &qword_27CB27ED8, &unk_21776BDD8);
    OUTLINED_FUNCTION_0_2();

    return v9();
  }
}

uint64_t sub_217419E00()
{
  OUTLINED_FUNCTION_10();
  v3 = OUTLINED_FUNCTION_1499(v1, v2);
  v0[32] = v3;
  OUTLINED_FUNCTION_15_3(v3);
  v0[33] = v4;
  v0[34] = OUTLINED_FUNCTION_1514();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v5 = sub_217751908();
  OUTLINED_FUNCTION_45_0(v5);
  v0[43] = OUTLINED_FUNCTION_28_7();
  v6 = sub_217751928();
  v0[44] = v6;
  OUTLINED_FUNCTION_15_3(v6);
  v0[45] = v7;
  v0[46] = OUTLINED_FUNCTION_28_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  OUTLINED_FUNCTION_45_0(v8);
  v0[47] = OUTLINED_FUNCTION_28_7();
  v9 = type metadata accessor for MusicAPI.Endpoint(0);
  v0[48] = v9;
  OUTLINED_FUNCTION_45_0(v9);
  v0[49] = OUTLINED_FUNCTION_1514();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21741A600()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741A6F8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741AC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v19 = *(v18 + 408);

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C(v19, v20);
  OUTLINED_FUNCTION_154_6();
  OUTLINED_FUNCTION_1267();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_21741B2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_154_6();
  OUTLINED_FUNCTION_1267();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_172_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_21741B384()
{
  OUTLINED_FUNCTION_10();
  v3 = OUTLINED_FUNCTION_1499(v1, v2);
  v0[32] = v3;
  OUTLINED_FUNCTION_15_3(v3);
  v0[33] = v4;
  v0[34] = OUTLINED_FUNCTION_1514();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v0[38] = swift_task_alloc();
  v0[39] = swift_task_alloc();
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v0[42] = swift_task_alloc();
  v5 = sub_217751908();
  OUTLINED_FUNCTION_45_0(v5);
  v0[43] = OUTLINED_FUNCTION_28_7();
  v6 = sub_217751928();
  v0[44] = v6;
  OUTLINED_FUNCTION_15_3(v6);
  v0[45] = v7;
  v0[46] = OUTLINED_FUNCTION_28_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  OUTLINED_FUNCTION_45_0(v8);
  v0[47] = OUTLINED_FUNCTION_28_7();
  v9 = type metadata accessor for MusicAPI.Endpoint(0);
  v0[48] = v9;
  OUTLINED_FUNCTION_45_0(v9);
  v0[49] = OUTLINED_FUNCTION_1514();
  v0[50] = swift_task_alloc();
  v0[51] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_21741B558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_1250();
  OUTLINED_FUNCTION_1389();
  OUTLINED_FUNCTION_472();
  if ((v29 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_623();
    sub_217751DE8();
    OUTLINED_FUNCTION_622();
    OUTLINED_FUNCTION_159_7();
    if (v60)
    {
      v30 = OUTLINED_FUNCTION_474();
      sub_2171F0790(v30, &qword_27CB277B0, &qword_2177684B0);
      sub_2177518E8();
      sub_2176D46F4(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_6_37();
      v33 = sub_2171FF280(v31, v32);
      OUTLINED_FUNCTION_268(v33);
      v156 = sub_217751918();
      v34 = OUTLINED_FUNCTION_20_6();
      v35(v34);
      swift_willThrow();
      OUTLINED_FUNCTION_80_9();
      v150 = v36;
      v151 = v37;
      v152 = v38;
      v153 = v24[35];
      v155 = v24[34];

      OUTLINED_FUNCTION_20_0();
LABEL_46:
      OUTLINED_FUNCTION_998();

      return v117(v116, v117, v118, v119, v120, v121, v122, v123, a9, a10, a11, a12, v150, v151, v152, v153, v155, v156, a19, a20, a21, a22);
    }

    OUTLINED_FUNCTION_884();
    v46 = OUTLINED_FUNCTION_93();
    sub_2172CB2E8(v46, v47);
    OUTLINED_FUNCTION_18_23();
    if (v48)
    {
      OUTLINED_FUNCTION_1186();
      OUTLINED_FUNCTION_443(v23 + 16);
      v157 = *(v25 + 40) + **(v25 + 40);
      v49 = swift_task_alloc();
      v50 = OUTLINED_FUNCTION_826(v49);
      *v50 = v51;
      OUTLINED_FUNCTION_207_3(v50);
      OUTLINED_FUNCTION_998();

      return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, v25 + 40, v157, a19, a20, a21, a22);
    }

    OUTLINED_FUNCTION_1185();
    v60 = v23 == 1 || v23 == 4;
    if (v60)
    {
      OUTLINED_FUNCTION_72_4();
    }

    else
    {
      if (v23 != 3)
      {
LABEL_26:
        OUTLINED_FUNCTION_793();
        if ((v73 & 1) == 0)
        {
          OUTLINED_FUNCTION_173_7(v72);
          v23 = v24 + 27;
          v74 = sub_217752FC8();
          OUTLINED_FUNCTION_48_6(v74, v75);

          v76 = OUTLINED_FUNCTION_146_6();
          v158 = v77;
          v77(v76);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = OUTLINED_FUNCTION_72_10();
            sub_2172B1A50(v137, v138, v139, v140);
            v22 = v141;
          }

          OUTLINED_FUNCTION_162_0();
          if (v67)
          {
            v142 = OUTLINED_FUNCTION_11_1(v78);
            sub_2172B1A50(v142, v143, v144, v22);
            v22 = v145;
          }

          v79 = OUTLINED_FUNCTION_9_29();
          v26(v79);
          OUTLINED_FUNCTION_794();
          if (v80 != v81 || (v23 = [objc_opt_self() mainBundle], v82 = NSBundle.isMusicApp.getter(), v23, !v82))
          {
            v88 = OUTLINED_FUNCTION_353();
            v89(v88);
          }

          else
          {
            OUTLINED_FUNCTION_22_23();
            v83 = OUTLINED_FUNCTION_345();
            v158(v83);
            OUTLINED_FUNCTION_356();
            v159 = v85;
            if (v67)
            {
              v146 = OUTLINED_FUNCTION_341(v84);
              sub_2172B1A50(v146, v147, v148, v22);
              v22 = v149;
            }

            v154 = v24[35];
            OUTLINED_FUNCTION_355();
            v27();
            v86 = OUTLINED_FUNCTION_148();
            (v27)(v86);
            v87 = OUTLINED_FUNCTION_354(v159);
            (v26)(v87, v154, v26);
            v24[26] = v22;
          }
        }

LABEL_37:
        OUTLINED_FUNCTION_27_23();
        OUTLINED_FUNCTION_51_13();
        sub_217441930(v90, v91, v92, v93, v94, v95, v96, v97);

        v98 = OUTLINED_FUNCTION_351();
        sub_2172CB1C4(v98, v99, v100);
        v101 = type metadata accessor for MusicPersonalRecommendation(0);
        if (dynamic_cast_existential_1_conditional(v101, v101, &protocol descriptor for CloudRequestable))
        {
          OUTLINED_FUNCTION_224_3();
          v103 = OUTLINED_FUNCTION_1032(v102);
          v105 = v104(v103);
          v23 = v24 + 26;
          sub_21754383C(v105);
        }

        if (qword_280BE7420 != -1)
        {
          OUTLINED_FUNCTION_45_15(&qword_280BE7420);
        }

        OUTLINED_FUNCTION_792();
        v107 = OUTLINED_FUNCTION_66_10(v106, qword_280BE7428);
        v108(v107);
        if ((OUTLINED_FUNCTION_1157() & 1) == 0)
        {
          v124 = OUTLINED_FUNCTION_87_11();
          sub_2172B1A50(v124, v125, v126, v127);
        }

        OUTLINED_FUNCTION_159_0();
        if (v67)
        {
          OUTLINED_FUNCTION_381(v109);
        }

        OUTLINED_FUNCTION_172_6();
        a9 = v110;
        a10 = v111;
        a11 = v112;
        a12 = v24[41];
        v150 = v24[40];
        v151 = v24[39];
        v152 = v24[38];
        v153 = v24[37];
        v155 = v24[36];
        v156 = v24[35];
        v113 = OUTLINED_FUNCTION_5_41();
        v114(v113);
        OUTLINED_FUNCTION_1168();

        OUTLINED_FUNCTION_1_17();
        sub_217498E7C(v23, v115);

        OUTLINED_FUNCTION_0_2();
        goto LABEL_46;
      }

      OUTLINED_FUNCTION_46_7();
    }

    OUTLINED_FUNCTION_110_7(v61, v62, v63);

    v64 = OUTLINED_FUNCTION_146_6();
    v65(v64);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v128, v129, v130, v131);
      v22 = v132;
    }

    OUTLINED_FUNCTION_103();
    if (v67)
    {
      v133 = OUTLINED_FUNCTION_11_1(v66);
      sub_2172B1A50(v133, v134, v135, v22);
      v22 = v136;
    }

    v68 = OUTLINED_FUNCTION_92_9();
    v69(v68);
    v70 = OUTLINED_FUNCTION_87_0();
    v71(v70);
    OUTLINED_FUNCTION_471();
    if (!v60)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_19_18(v28);
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_481(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_170_4(v40);
  OUTLINED_FUNCTION_998();

  return sub_2174367F4(v42, v43);
}

uint64_t sub_21741BBDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741BCD4()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741BDDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_1250();
  OUTLINED_FUNCTION_1389();
  v25 = v22[62];
  if (v25)
  {
    OUTLINED_FUNCTION_186_4();

    v26 = OUTLINED_FUNCTION_146_6();
    v27(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v22[59];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v115 = OUTLINED_FUNCTION_72_10();
      sub_2172B1A50(v115, v116, v117, v118);
      v29 = v119;
    }

    OUTLINED_FUNCTION_103();
    if (v30)
    {
      OUTLINED_FUNCTION_705();
      sub_2172B1A50(v120, v121, v122, v123);
      v29 = v124;
    }

    OUTLINED_FUNCTION_155_8();
    v31();
    v32 = OUTLINED_FUNCTION_87_0();
    v33(v32);
    v22[26] = v29;
  }

  else
  {
    v29 = v22[59];
  }

  OUTLINED_FUNCTION_470();
  v35 = v35 || v34 == 4;
  if (v35)
  {
    OUTLINED_FUNCTION_72_4();
  }

  else
  {
    if (v34 != 3)
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_110_7(v36, v37, v38);

  v39 = OUTLINED_FUNCTION_146_6();
  v40(v39);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v106 = OUTLINED_FUNCTION_72_10();
    sub_2172B1A50(v106, v107, v108, v109);
    v29 = v110;
  }

  OUTLINED_FUNCTION_103();
  if (v30)
  {
    v111 = OUTLINED_FUNCTION_11_1(v41);
    sub_2172B1A50(v111, v112, v113, v29);
    v29 = v114;
  }

  v42 = OUTLINED_FUNCTION_92_9();
  v43(v42);
  v44 = OUTLINED_FUNCTION_87_0();
  v45(v44);
  v22[26] = v29;
LABEL_21:
  OUTLINED_FUNCTION_835();
  if (v35)
  {
    OUTLINED_FUNCTION_793();
    if ((v47 & 1) == 0)
    {
      OUTLINED_FUNCTION_173_7(v46);
      v25 = v22 + 27;
      v48 = sub_217752FC8();
      OUTLINED_FUNCTION_48_6(v48, v49);

      v50 = OUTLINED_FUNCTION_146_6();
      v148 = v51;
      v51(v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = OUTLINED_FUNCTION_72_10();
        sub_2172B1A50(v125, v126, v127, v128);
        v29 = v129;
      }

      OUTLINED_FUNCTION_162_0();
      if (v30)
      {
        v130 = OUTLINED_FUNCTION_11_1(v52);
        sub_2172B1A50(v130, v131, v132, v29);
        v29 = v133;
      }

      v53 = OUTLINED_FUNCTION_9_29();
      v23(v53);
      OUTLINED_FUNCTION_794();
      if (v54 != v55 || (v25 = [objc_opt_self() mainBundle], v56 = NSBundle.isMusicApp.getter(), v25, !v56))
      {
        v62 = OUTLINED_FUNCTION_353();
        v63(v62);
      }

      else
      {
        OUTLINED_FUNCTION_22_23();
        v57 = OUTLINED_FUNCTION_345();
        v148(v57);
        OUTLINED_FUNCTION_356();
        v149 = v59;
        if (v30)
        {
          v134 = OUTLINED_FUNCTION_341(v58);
          sub_2172B1A50(v134, v135, v136, v29);
          v29 = v137;
        }

        v145 = v22[35];
        OUTLINED_FUNCTION_355();
        v24();
        v60 = OUTLINED_FUNCTION_148();
        (v24)(v60);
        v61 = OUTLINED_FUNCTION_354(v149);
        (v23)(v61, v145, v23);
        v22[26] = v29;
      }
    }
  }

  OUTLINED_FUNCTION_27_23();
  OUTLINED_FUNCTION_51_13();
  sub_217441930(v64, v65, v66, v67, v68, v69, v70, v71);

  v72 = OUTLINED_FUNCTION_351();
  sub_2172CB1C4(v72, v73, v74);
  v75 = type metadata accessor for MusicPersonalRecommendation(0);
  if (dynamic_cast_existential_1_conditional(v75, v75, &protocol descriptor for CloudRequestable))
  {
    OUTLINED_FUNCTION_224_3();
    v77 = OUTLINED_FUNCTION_1032(v76);
    v79 = v78(v77);
    v25 = v22 + 26;
    sub_21754383C(v79);
  }

  if (qword_280BE7420 != -1)
  {
    OUTLINED_FUNCTION_45_15(&qword_280BE7420);
  }

  OUTLINED_FUNCTION_792();
  v81 = OUTLINED_FUNCTION_66_10(v80, qword_280BE7428);
  v82(v81);
  if ((OUTLINED_FUNCTION_1157() & 1) == 0)
  {
    v98 = OUTLINED_FUNCTION_87_11();
    sub_2172B1A50(v98, v99, v100, v101);
  }

  OUTLINED_FUNCTION_159_0();
  if (v30)
  {
    OUTLINED_FUNCTION_722();
    sub_2172B1A50(v102, v103, v104, v105);
  }

  OUTLINED_FUNCTION_172_6();
  v138 = v83;
  v139 = v84;
  v140 = v85;
  v141 = v22[41];
  v142 = v22[40];
  v143 = v22[39];
  v144 = v22[38];
  v146 = v22[37];
  v147 = v22[36];
  v150 = v22[35];
  v86 = OUTLINED_FUNCTION_5_41();
  v87(v86);
  OUTLINED_FUNCTION_1168();

  OUTLINED_FUNCTION_1_17();
  sub_217498E7C(v25, v88);

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_998();

  return v90(v89, v90, v91, v92, v93, v94, v95, v96, a9, v138, v139, v140, v141, v142, v143, v144, v146, v147, v150, a20, a21, a22);
}

uint64_t sub_21741C7F4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21741CA24, 0, 0);
}

uint64_t sub_21741D018()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741D110()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741DB64(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21741DD94, 0, 0);
}

uint64_t sub_21741E388()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741E480()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741EED4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21741F104, 0, 0);
}

uint64_t sub_21741F6F8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21741F7F0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217420244(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217420474, 0, 0);
}

uint64_t sub_217420A68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217420B60()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174215B4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174217E4, 0, 0);
}

uint64_t sub_217421DD8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217421ED0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217422924(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217422B54, 0, 0);
}

uint64_t sub_217423148()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217423240()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217423C94(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217423EC4, 0, 0);
}

uint64_t sub_2174244B8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174245B0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217425004(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217425234, 0, 0);
}

uint64_t sub_217425828()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217425920()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217426374(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2174265A4, 0, 0);
}

uint64_t sub_217426B98()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217426C90()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174276E4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217427914, 0, 0);
}

uint64_t sub_217427F08()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217428000()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217428A54(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_217428C84, 0, 0);
}

uint64_t sub_2174292B0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174293A8()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217429E6C(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21742A09C, 0, 0);
}

uint64_t sub_21742A6C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742A7C0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742B284(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21742B4B4, 0, 0);
}

uint64_t sub_21742BAA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742BBA0()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742C5F4(uint64_t a1, uint64_t a2)
{
  v3[28] = a1;
  v3[29] = a2;
  v4 = *(a2 + 8);
  v3[30] = v2;
  v3[31] = v4;
  v5 = sub_217751428();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  sub_217751908();
  v3[43] = swift_task_alloc();
  v6 = sub_217751928();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B0, &qword_2177684B0);
  v3[47] = swift_task_alloc();
  v3[48] = type metadata accessor for MusicAPI.Endpoint(0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21742C824, 0, 0);
}

uint64_t sub_21742CE18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 424) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742CF10()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_883(v5, v6);
  if (v0)
  {
    OUTLINED_FUNCTION_882();
    OUTLINED_FUNCTION_624();
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742D964(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742DA98;

  return sub_2173EE194((v1 + 2));
}

uint64_t sub_21742DA98()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742DB90()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEA34();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB278F8, &unk_21776B440);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &qword_27CB24550, &qword_217758A58);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB278F8, &unk_21776B440);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742DCC8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1266();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21742DD28(uint64_t a1)
{
  v1[23] = a1;
  sub_217751908();
  v1[24] = swift_task_alloc();
  v2 = sub_217751928();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[28] = v3;
  *v3 = v1;
  v3[1] = sub_21742DE5C;

  return sub_2173EE608((v1 + 2));
}

uint64_t sub_21742DE5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742DF54()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEA70();
  OUTLINED_FUNCTION_1339();
  if (v1)
  {
    sub_2171F0790(v0 + 120, &qword_27CB245B8, &qword_217758AE0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB27A98, &unk_21776B6E0);
    OUTLINED_FUNCTION_1512();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    sub_2171F0790(v0 + 16, &qword_27CB27A98, &unk_21776B6E0);
    OUTLINED_FUNCTION_857();

    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742E090()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1512();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21742E0F0(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742E224;

  return sub_2173EE9F8((v1 + 2));
}

uint64_t sub_21742E224()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742E31C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEAAC();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB27FC8, &unk_21776BF38);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB2AF60, &qword_217758C00);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB27FC8, &unk_21776BF38);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742E454(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742E588;

  return sub_2173EEDE8((v1 + 2));
}

uint64_t sub_21742E588()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742E680()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEAE8();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &unk_27CB27830, &qword_21776B2F8);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &qword_27CB277F0, &unk_21775A2B0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &unk_27CB27830, &qword_21776B2F8);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742E7B8(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742E8EC;

  return sub_2173EF1D8((v1 + 2));
}

uint64_t sub_21742E8EC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742E9E4()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CE9F8();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB276B8, &unk_21776B120);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB275E0, &qword_2177589D0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB276B8, &unk_21776B120);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742EB1C(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742EC50;

  return sub_2173EF5C8((v1 + 2));
}

uint64_t sub_21742EC50()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742ED48()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CE898();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &unk_27CB27C90, &unk_21776BA10);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB27760, &unk_21775A2D0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &unk_27CB27C90, &unk_21776BA10);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742EE80(uint64_t a1)
{
  v1[23] = a1;
  sub_217751908();
  v1[24] = swift_task_alloc();
  v2 = sub_217751928();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[28] = v3;
  *v3 = v1;
  v3[1] = sub_21742EFB4;

  return sub_2173EF9B8();
}

uint64_t sub_21742EFB4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742F0AC()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEB24();
  OUTLINED_FUNCTION_1339();
  if (v1)
  {
    sub_2171F0790(v0 + 120, &unk_27CB28AA0, &qword_21775A020);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB27E18, &qword_217791F10);
    OUTLINED_FUNCTION_1512();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    sub_2171F0790(v0 + 16, &qword_27CB27E18, &qword_217791F10);
    OUTLINED_FUNCTION_857();

    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742F1E8(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742F31C;

  return sub_2173EFD90((v1 + 2));
}

uint64_t sub_21742F31C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742F414()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CE9BC();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB27BC8, &qword_21776B8B8);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &qword_27CB2CD90, &unk_21775A2C0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB27BC8, &qword_21776B8B8);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742F54C(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742F680;

  return sub_2173F0180((v1 + 2));
}

uint64_t sub_21742F680()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742F778()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEC4C();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB28148, &qword_21776C198);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &qword_27CB246E8, &qword_21776C140);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB28148, &qword_21776C198);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742F8B0(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_21742F9E4;

  return sub_2173F0570((v1 + 2));
}

uint64_t sub_21742F9E4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742FADC()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CE39C();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB28088, &unk_21776C068);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB2AF80, &qword_217758C30);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB28088, &unk_21776C068);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742FC14(uint64_t a1)
{
  v1[23] = a1;
  sub_217751908();
  v1[24] = swift_task_alloc();
  v2 = sub_217751928();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[28] = v3;
  *v3 = v1;
  v3[1] = sub_21742FD48;

  return sub_2173F0960((v1 + 2));
}

uint64_t sub_21742FD48()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21742FE40()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CEC88();
  OUTLINED_FUNCTION_1339();
  if (v1)
  {
    sub_2171F0790(v0 + 120, &qword_27CB27D20, &qword_217758B80);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &unk_27CB27D50, &unk_21776BB50);
    OUTLINED_FUNCTION_1512();

    OUTLINED_FUNCTION_20_0();
  }

  else
  {
    sub_2171F0790(v0 + 16, &unk_27CB27D50, &unk_21776BB50);
    OUTLINED_FUNCTION_857();

    OUTLINED_FUNCTION_0_2();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_21742FF7C(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_2174300B0;

  return sub_2173F0D50((v1 + 2));
}

uint64_t sub_2174300B0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174301A8()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CECC4();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB279D8, &unk_21776B5B0);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB2ACC0, &qword_217758AA8);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB279D8, &unk_21776B5B0);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_2174302E0(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_217430414;

  return sub_2173F1140((v1 + 2));
}

uint64_t sub_217430414()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21743050C()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CED00();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &unk_27CB28240, &unk_21776C300);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &unk_27CB28A90, &qword_217758F90);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &unk_27CB28240, &unk_21776C300);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_217430644(uint64_t a1)
{
  v1[22] = a1;
  sub_217751908();
  v1[23] = swift_task_alloc();
  v2 = sub_217751928();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[27] = v3;
  *v3 = v1;
  v3[1] = sub_217430778;

  return sub_2173F1530((v1 + 2));
}

uint64_t sub_217430778()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217430870()
{
  OUTLINED_FUNCTION_1330();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_1013();
  sub_2172CED3C();
  OUTLINED_FUNCTION_1056();
  if (v1)
  {
    sub_2171F0790(v0 + 16, &qword_27CB27ED8, &unk_21776BDD8);
    OUTLINED_FUNCTION_259();

    OUTLINED_FUNCTION_0_2();
  }

  else
  {
    OUTLINED_FUNCTION_1055();
    sub_2171F0790(v0 + 120, &qword_27CB24678, &qword_217758BD0);
    sub_2177518C8();
    sub_2176D46F4(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_6_37();
    v4 = sub_2171FF280(v2, v3);
    OUTLINED_FUNCTION_268(v4);
    sub_217751918();
    v5 = OUTLINED_FUNCTION_324();
    v6(v5);
    swift_willThrow();
    sub_2171F0790(v0 + 16, &qword_27CB27ED8, &unk_21776BDD8);
    OUTLINED_FUNCTION_1266();

    OUTLINED_FUNCTION_20_0();
  }

  OUTLINED_FUNCTION_1322();

  return v8(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_2174309A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217430A5C;

  return sub_2173EE194((v3 + 61));
}

uint64_t sub_217430A5C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217430B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB25380;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21775DAA0);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21775DAA0);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &unk_21775DAA0;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_2172945BC();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB278F0, &unk_217793B40);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_217292EF4(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &unk_21775DAA0, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_217771CE0);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_217771CE0);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&unk_21775DAA0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&unk_21775DAA0)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for MusicVideo;
    *(v12 + 1080) = &protocol witness table for MusicVideo;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_217283BAC(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_217283C08(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB278F0, &unk_217793B40);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &qword_27CB24550, &qword_217758A58, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &qword_27CB24550, &qword_217758A58);
    sub_2171F0790(v12 + 488, &qword_27CB278F8, &unk_21776B440);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CEA34();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &qword_27CB278F8, &unk_21776B440);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &qword_27CB24550, &qword_217758A58);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_217430E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[177] = a3;
  v3[176] = a2;
  v3[175] = a1;
  v4 = swift_task_alloc();
  v3[178] = v4;
  *v4 = v3;
  v4[1] = sub_217430F3C;

  return sub_2173EE608((v3 + 61));
}

uint64_t sub_217430F3C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1432) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217431034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_486();
  v17 = &qword_27CB27A88;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &qword_21776B6D0);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &qword_21776B6D0);
  v24 = *(v13 + 592);
  LOBYTE(v25) = *(v13 + 600);
  v26 = OUTLINED_FUNCTION_1295();
  sub_217283C5C(v26, v27);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0790(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_1295();
  sub_21725CF00(v31, v32);
  OUTLINED_FUNCTION_661();
  v33 = &qword_27CB27AA0;
  v159 = v16;
  v147 = v15;
  while (1)
  {
    v173 = v14;
    if (HIDWORD(v176))
    {
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_1337();
      if (v34)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_1336();
      sub_21729467C();
    }

    else
    {
      v35 = v24[2];
      if (&qword_21776B6D0 == v35)
      {
LABEL_21:
        v92 = sub_2171F0790(v13 + 376, &qword_27CB27A90, &qword_21776B6D8);
        OUTLINED_FUNCTION_765(v92, v93, v94, v95, v96, v97, v98, v99, v138);
        goto LABEL_23;
      }

      if ((&qword_21776B6D0 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      if (&qword_21776B6D0 >= v35)
      {
        goto LABEL_35;
      }

      v36 = OUTLINED_FUNCTION_1107();
      v24 = &qword_217758AD0;
      sub_2171F0688(v36, v37, v38, &qword_217758AD0);
      OUTLINED_FUNCTION_149_0();
      sub_2171F0688(v39, v40, v41, &qword_217758AD0);
      if (*(v13 + 817))
      {
        OUTLINED_FUNCTION_1106();
        v42 = OUTLINED_FUNCTION_150_0();
        sub_217293AC4(v42, v43, v44, v45, v46, v47, v48, v49, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v14, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0], __src[1]);

        sub_2171F0790(v13 + 696, &qword_27CB27AA0, &qword_217758AD0);
        v16 = v159;
      }

      else
      {
        sub_217751DE8();
        OUTLINED_FUNCTION_206_2();
        sub_2171F0790(v58, v59, v60);
        OUTLINED_FUNCTION_752();
      }

      OUTLINED_FUNCTION_658(v50, v51, v52, v53, v54, v55, v56, v57, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v173, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7]);
    }

    OUTLINED_FUNCTION_657();
    if (v61)
    {
      v70.n128_f64[0] = sub_21725CF00(v24, 1);
      if (v25)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v72 = OUTLINED_FUNCTION_1479();
      v70.n128_f64[0] = sub_21725CF00(v72, v73);
      if (v25)
      {
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_627(v62, v63, v64, v65, v66, v67, v68, v69, v70, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v71, v161, v164, v167, v169, v171);
    *(v13 + 1280) = &type metadata for MusicPlayer.Queue.Entry.Item;
    *(v13 + 1288) = &protocol witness table for MusicPlayer.Queue.Entry.Item;
    OUTLINED_FUNCTION_203_0();
    *(v13 + 1256) = swift_allocObject();
    v74 = OUTLINED_FUNCTION_740();
    sub_21729C6EC(v74, v75);
    v76 = OUTLINED_FUNCTION_1508();
    sub_21729C6EC(v76, v77);
    if (*(v13 + 1008))
    {
      v17 = v152;
      OUTLINED_FUNCTION_445(*v15, v15[1]);
      sub_21729C5E8(v13 + 1160, v16);
      sub_217283C08(v152);
    }

    else
    {
      v17 = v150;
      OUTLINED_FUNCTION_445(*v15, v15[1]);
      sub_21729C5E8(v13 + 1216, v16);
      sub_217283B58(v150);
    }

    v33 = *(v13 + 1416);
    v25 = *(v13 + 1408);
    *(v12 + 32) = *(v16 + 32);
    v78 = *(v16 + 16);
    *v12 = *v16;
    *(v12 + 16) = v78;
    v16 = *(v13 + 1320);
    v14 = *(v13 + 1328);
    v79 = OUTLINED_FUNCTION_1487();
    OUTLINED_FUNCTION_491(v79, v80);
    v81 = OUTLINED_FUNCTION_1105();
    v82(v81);
    sub_21729C644(v12);
    v83 = __swift_destroy_boxed_opaque_existential_1((v13 + 1256));
    OUTLINED_FUNCTION_1414(v83, v84, v85, v86, v87, v88, v89, v90, v139, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v163, v165, v166, v168, v170, v172, v173, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0]);
    v91 = OUTLINED_FUNCTION_1011();
    memcpy(v91, __src, 0x161uLL);
    sub_217269F50(v13 + 16);
    if (v17)
    {
      break;
    }

    sub_21729C748(v175);
    OUTLINED_FUNCTION_1104();
    v33 = &qword_27CB27AA0;
  }

  v106 = sub_2171F0790(v13 + 376, &qword_27CB27A90, &qword_21776B6D8);
  OUTLINED_FUNCTION_678(v106, v107, v108, v109, v110, v111, v112, v113, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v174, v175);
LABEL_23:
  OUTLINED_FUNCTION_1431(v100, v101, &qword_27CB245B8, &qword_217758AE0, v102, v103, v104, v105, v140, v142);
  if (*(v13 + 1072) == 255)
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v124, v125, v126);
    OUTLINED_FUNCTION_1012();
    sub_2172CEA70();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v127, v128, v129);
    sub_2171F0790(v13 + 488, &qword_27CB27A98, &unk_21776B6E0);
    OUTLINED_FUNCTION_1335();
    if (v34)
    {
      sub_2171F0790(v145, &qword_27CB245B8, &qword_217758AE0);
      OUTLINED_FUNCTION_227_4();
      *(v17 + 56) = -1;
      goto LABEL_28;
    }

    v122 = OUTLINED_FUNCTION_854();
  }

  else
  {
    sub_2171F0790(v33, &qword_27CB245B8, &qword_217758AE0);
    sub_2171F0790(v13 + 488, &qword_27CB27A98, &unk_21776B6E0);
    v122 = OUTLINED_FUNCTION_855();
  }

  OUTLINED_FUNCTION_853(v122, v123, v114, v115, v116, v117, v118, v119, v120, v121, v141, v144, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v173, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0], __src[1], __src[2], __src[3], *&__src[4], __src[6], __src[7]);
LABEL_28:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v131(v130, v131, v132, v133, v134, v135, v136, v137, a9, a10, a11, a12);
}

uint64_t sub_217431458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_21743150C;

  return sub_2173EE9F8((v3 + 61));
}

uint64_t sub_21743150C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217431604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB25390;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &qword_217771CA0);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &qword_217771CA0);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &qword_217771CA0;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_2172945EC();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB27FC0, &qword_21776BF30);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_2172931EC(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &qword_217771CA0, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_217758C20);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_217758C20);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&qword_217771CA0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&qword_217771CA0)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for RecordLabel;
    *(v12 + 1080) = &protocol witness table for RecordLabel;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_217283C68(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_217283CC4(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB27FC0, &qword_21776BF30);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &unk_27CB2AF60, &qword_217758C00, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &unk_27CB2AF60, &qword_217758C00);
    sub_2171F0790(v12 + 488, &qword_27CB27FC8, &unk_21776BF38);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CEAAC();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &qword_27CB27FC8, &unk_21776BF38);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &unk_27CB2AF60, &qword_217758C00);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_217431914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_2174319C8;

  return sub_2173EEDE8((v3 + 61));
}

uint64_t sub_2174319C8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217431AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB27820;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &qword_21775DAB0);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &qword_21775DAB0);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &qword_21775DAB0;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_2172945A4();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB27828, &qword_21776B2F0);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_217292D80(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &qword_21775DAB0, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_21776B300);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_21776B300);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&qword_21775DAB0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&qword_21775DAB0)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for Song;
    *(v12 + 1080) = &protocol witness table for Song;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_217283AFC(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_217283B58(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB27828, &qword_21776B2F0);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &qword_27CB277F0, &unk_21775A2B0, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &qword_27CB277F0, &unk_21775A2B0);
    sub_2171F0790(v12 + 488, &unk_27CB27830, &qword_21776B2F8);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CEAE8();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &unk_27CB27830, &qword_21776B2F8);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &qword_27CB277F0, &unk_21775A2B0);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_217431DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217431E84;

  return sub_2173EF1D8((v3 + 61));
}

uint64_t sub_217431E84()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217431F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB25388;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21775D410);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21775D410);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &unk_21775D410;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_217294574();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB276B0, &unk_21777D6C0);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_217292A88(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &unk_21775D410, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_217758A00);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_217758A00);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&unk_21775D410)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&unk_21775D410)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for Album;
    *(v12 + 1080) = &protocol witness table for Album;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_21725CF0C(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_21725CE44(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB276B0, &unk_21777D6C0);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &unk_27CB275E0, &qword_2177589D0, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &unk_27CB275E0, &qword_2177589D0);
    sub_2171F0790(v12 + 488, &qword_27CB276B8, &unk_21776B120);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CE9F8();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &qword_27CB276B8, &unk_21776B120);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &unk_27CB275E0, &qword_2177589D0);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_21743228C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217432340;

  return sub_2173EF5C8((v3 + 61));
}

uint64_t sub_217432340()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217432438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB27C80;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21775D420);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21775D420);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &unk_21775D420;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_21729464C();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB27C88, &qword_21779F250);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_2172937E4(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &unk_21775D420, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_217778790);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_217778790);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&unk_21775D420)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&unk_21775D420)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for Genre;
    *(v12 + 1080) = &protocol witness table for Genre;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_217284130(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_21728418C(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB27C88, &qword_21779F250);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &unk_27CB27760, &unk_21775A2D0, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &unk_27CB27760, &unk_21775A2D0);
    sub_2171F0790(v12 + 488, &unk_27CB27C90, &unk_21776BA10);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CE898();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &unk_27CB27C90, &unk_21776BA10);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &unk_27CB27760, &unk_21775A2D0);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_217432748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[177] = a3;
  v3[176] = a2;
  v3[175] = a1;
  v4 = swift_task_alloc();
  v3[178] = v4;
  *v4 = v3;
  v4[1] = sub_2174327FC;

  return sub_2173EF9B8();
}

uint64_t sub_2174327FC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1432) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2174328F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_486();
  v17 = &qword_27CB240D0;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21775D400);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21775D400);
  v24 = *(v13 + 592);
  LOBYTE(v25) = *(v13 + 600);
  v26 = OUTLINED_FUNCTION_1295();
  sub_217283C5C(v26, v27);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0790(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_1295();
  sub_21725CF00(v31, v32);
  OUTLINED_FUNCTION_661();
  v33 = &dword_27CB27E20;
  v153 = v16;
  v141 = v15;
  while (1)
  {
    v167 = v14;
    if (HIDWORD(v170))
    {
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_1337();
      if (v34)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_1336();
      sub_217294634();
    }

    else
    {
      v35 = v24[2];
      if (&unk_21775D400 == v35)
      {
LABEL_21:
        v86 = sub_2171F0790(v13 + 376, &qword_27CB27E10, &qword_21776BCB0);
        OUTLINED_FUNCTION_765(v86, v87, v88, v89, v90, v91, v92, v93, v132);
        goto LABEL_23;
      }

      if ((&unk_21775D400 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      if (&unk_21775D400 >= v35)
      {
        goto LABEL_35;
      }

      v36 = OUTLINED_FUNCTION_1107();
      v24 = &unk_2177589C0;
      sub_2171F0688(v36, v37, v38, &unk_2177589C0);
      OUTLINED_FUNCTION_149_0();
      sub_2171F0688(v39, v40, v41, &unk_2177589C0);
      if (*(v13 + 817))
      {
        OUTLINED_FUNCTION_1106();
        v42 = OUTLINED_FUNCTION_150_0();
        sub_21729366C(v42, v43);

        sub_2171F0790(v13 + 696, &dword_27CB27E20, &unk_2177589C0);
        v16 = v153;
      }

      else
      {
        sub_217751DE8();
        OUTLINED_FUNCTION_206_2();
        sub_2171F0790(v52, v53, v54);
        OUTLINED_FUNCTION_752();
      }

      OUTLINED_FUNCTION_658(v44, v45, v46, v47, v48, v49, v50, v51, v132, v136, v139, v141, v143, v145, v147, v149, v151, v153, v155, *(&v155 + 1), v158, *(&v158 + 1), v161, v163, v165, v14, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], SBYTE8(__src[3]));
    }

    OUTLINED_FUNCTION_657();
    if (v55)
    {
      v64.n128_f64[0] = sub_21725CF00(v24, 1);
      if (v25)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v66 = OUTLINED_FUNCTION_1479();
      v64.n128_f64[0] = sub_21725CF00(v66, v67);
      if (v25)
      {
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_627(v56, v57, v58, v59, v60, v61, v62, v63, v64, v132, v136, v139, v141, v143, v145, v147, v149, v151, v153, v65, v155, v158, v161, v163, v165);
    *(v13 + 1280) = &type metadata for Track;
    *(v13 + 1288) = &protocol witness table for Track;
    OUTLINED_FUNCTION_203_0();
    *(v13 + 1256) = swift_allocObject();
    v68 = OUTLINED_FUNCTION_740();
    sub_217275710(v68, v69);
    v70 = OUTLINED_FUNCTION_1508();
    sub_217275710(v70, v71);
    if (*(v13 + 1008))
    {
      v17 = v146;
      OUTLINED_FUNCTION_445(*v15, v15[1]);
      sub_21729C5E8(v13 + 1160, v16);
      sub_217283C08(v146);
    }

    else
    {
      v17 = v144;
      OUTLINED_FUNCTION_445(*v15, v15[1]);
      sub_21729C5E8(v13 + 1216, v16);
      sub_217283B58(v144);
    }

    v33 = *(v13 + 1416);
    v25 = *(v13 + 1408);
    *(v12 + 32) = *(v16 + 32);
    v72 = *(v16 + 16);
    *v12 = *v16;
    *(v12 + 16) = v72;
    v16 = *(v13 + 1320);
    v14 = *(v13 + 1328);
    v73 = OUTLINED_FUNCTION_1487();
    OUTLINED_FUNCTION_491(v73, v74);
    v75 = OUTLINED_FUNCTION_1105();
    v76(v75);
    sub_21729C644(v12);
    v77 = __swift_destroy_boxed_opaque_existential_1((v13 + 1256));
    OUTLINED_FUNCTION_1414(v77, v78, v79, v80, v81, v82, v83, v84, v133, v137, v140, v142, v144, v146, v148, v150, v152, v154, v156, v157, v159, v160, v162, v164, v166, v167, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, __src[0]);
    v85 = OUTLINED_FUNCTION_1011();
    memcpy(v85, __src, 0x161uLL);
    sub_217269F50(v13 + 16);
    if (v17)
    {
      break;
    }

    sub_21727576C(v169);
    OUTLINED_FUNCTION_1104();
    v33 = &dword_27CB27E20;
  }

  v100 = sub_2171F0790(v13 + 376, &qword_27CB27E10, &qword_21776BCB0);
  OUTLINED_FUNCTION_678(v100, v101, v102, v103, v104, v105, v106, v107, v132, v136, v139, v141, v143, v145, v147, v149, v151, v153, v155, *(&v155 + 1), v158, *(&v158 + 1), v161, v163, v165, v168, v169);
LABEL_23:
  OUTLINED_FUNCTION_1431(v94, v95, &unk_27CB28AA0, &qword_21775A020, v96, v97, v98, v99, v134, v136);
  if (*(v13 + 1072) == 255)
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v118, v119, v120);
    OUTLINED_FUNCTION_1012();
    sub_2172CEB24();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v121, v122, v123);
    sub_2171F0790(v13 + 488, &qword_27CB27E18, &qword_217791F10);
    OUTLINED_FUNCTION_1335();
    if (v34)
    {
      sub_2171F0790(v139, &unk_27CB28AA0, &qword_21775A020);
      OUTLINED_FUNCTION_227_4();
      *(v17 + 56) = -1;
      goto LABEL_28;
    }

    v116 = OUTLINED_FUNCTION_854();
  }

  else
  {
    sub_2171F0790(v33, &unk_27CB28AA0, &qword_21775A020);
    sub_2171F0790(v13 + 488, &qword_27CB27E18, &qword_217791F10);
    v116 = OUTLINED_FUNCTION_855();
  }

  OUTLINED_FUNCTION_853(v116, v117, v108, v109, v110, v111, v112, v113, v114, v115, v135, v138, v139, v141, v143, v145, v147, v149, v151, v153, v155, *(&v155 + 1), v158, *(&v158 + 1), v161, v163, v165, v167, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), __src[2], *&__src[3], SBYTE8(__src[3]));
LABEL_28:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v125(v124, v125, v126, v127, v128, v129, v130, v131, a9, a10, a11, a12);
}

uint64_t sub_217432CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217432DA8;

  return sub_2173EFD90((v3 + 61));
}

uint64_t sub_217432DA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217432EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB25398;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21776C4F0);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21776C4F0);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &unk_21776C4F0;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_2172945D4();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB27BC0, &qword_21776B8B0);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_217293074(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &unk_21776C4F0, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_21776B8C0);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_21776B8C0);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&unk_21776C4F0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&unk_21776C4F0)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for Artist;
    *(v12 + 1080) = &protocol witness table for Artist;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_21725CF68(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_217284498(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB27BC0, &qword_21776B8B0);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &qword_27CB2CD90, &unk_21775A2C0, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &qword_27CB2CD90, &unk_21775A2C0);
    sub_2171F0790(v12 + 488, &qword_27CB27BC8, &qword_21776B8B8);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CE9BC();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &qword_27CB27BC8, &qword_21776B8B8);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &qword_27CB2CD90, &unk_21775A2C0);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_2174331B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217433264;

  return sub_2173F0180((v3 + 61));
}

uint64_t sub_217433264()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21743335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB25638;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21775EA10);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21775EA10);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &unk_21775EA10;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_21729461C();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB28140, &qword_21776C190);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_2172934F0(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &unk_21775EA10, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_21776C1A0);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_21776C1A0);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&unk_21775EA10)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&unk_21775EA10)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for Curator;
    *(v12 + 1080) = &protocol witness table for Curator;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_217284288(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_2172842E4(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB28140, &qword_21776C190);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &qword_27CB246E8, &qword_21776C140, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &qword_27CB246E8, &qword_21776C140);
    sub_2171F0790(v12 + 488, &qword_27CB28148, &qword_21776C198);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CEC4C();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &qword_27CB28148, &qword_21776C198);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &qword_27CB246E8, &qword_21776C140);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_21743366C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217433720;

  return sub_2173F0570((v3 + 61));
}

uint64_t sub_217433720()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217433818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB255B8;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21775D470);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21775D470);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v157 = &unk_21775D470;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      v25 = OUTLINED_FUNCTION_577();
      sub_2172944CC(v25);
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v79 = sub_2171F0790(v12 + 376, &qword_27CB28080, &qword_21776C060);
        OUTLINED_FUNCTION_245_0(v79, v80, v81, v82, v83, v84, v85, v86, v121, v125);
        goto LABEL_20;
      }

      LOBYTE(v17) = v135;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v26)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v27 = OUTLINED_FUNCTION_364();
        sub_217292790(v27, v28, v29, v30, v31, v32, v33, v34, v121, v125, v129, v132, v135, v138, v141, *(&v141 + 1), v146, *(&v146 + 1), v151, v153, v155, &unk_21775D470, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178, v179, v180, *(&v180 + 1), v181, v182);
        OUTLINED_FUNCTION_1321();
        v35 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v35, v36, &qword_217758C50);
      }

      else
      {
        sub_217751DE8();
        v45 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v45, v46, &qword_217758C50);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v37, v38, v39, v40, v41, v42, v43, v44, v121, v125, v129, v132, v135, v138, v141, *(&v141 + 1), v146, *(&v146 + 1), v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178, v179, v180);
    }

    v47 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v56.n128_f64[0] = sub_21725CF00(v47, 1);
      if (&unk_21775D470)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v56.n128_f64[0] = sub_21725CF00(v47, 0);
      if (&unk_21775D470)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v48, v49, v50, v51, v52, v53, v54, v55, v56, v121, v125, v129, v132, v135, v138, v57, v141, v146);
    *(v12 + 1072) = &type metadata for Station;
    *(v12 + 1080) = &protocol witness table for Station;
    OUTLINED_FUNCTION_197();
    v58 = swift_allocObject();
    v59 = OUTLINED_FUNCTION_576(v58);
    sub_217283D6C(v59, v60);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v61 = OUTLINED_FUNCTION_160_6();
    v62(v61);
    sub_21729C644(v12 + 1088);
    v63 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v71 = OUTLINED_FUNCTION_981(v63, v64, v65, v66, v67, v68, v69, v70, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    OUTLINED_FUNCTION_676(v71, v72, v73, v74, v75, v76, v77, v78, v123, v127, v131, v134, v137, v140, v143, v145, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_217283DC8(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v93 = sub_2171F0790(v12 + 376, &qword_27CB28080, &qword_21776C060);
  OUTLINED_FUNCTION_117_11(v93, v94, v95, v96, v97, v98, v99, v100, v121, v125);
LABEL_20:
  OUTLINED_FUNCTION_982(v87, v88, &unk_27CB2AF80, &qword_217758C30, v89, v90, v91, v92, v124, v128, v129);
  OUTLINED_FUNCTION_1054();
  if (v101)
  {
    sub_2171F0790(v16, &unk_27CB2AF80, &qword_217758C30);
    sub_2171F0790(v12 + 488, &qword_27CB28088, &unk_21776C068);
    v103 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v106, v107, v108);
    OUTLINED_FUNCTION_1012();
    sub_2172CE39C();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v109, v110, v111);
    sub_2171F0790(v12 + 488, &qword_27CB28088, &unk_21776C068);
    OUTLINED_FUNCTION_1053();
    if (!v112)
    {
      sub_2171F0790(v13, &unk_27CB2AF80, &qword_217758C30);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v103 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v102, v103, v104, v105);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v114(v113, v114, v115, v116, v117, v118, v119, v120, a9, a10, a11, a12);
}

uint64_t sub_217433B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[177] = a3;
  v3[176] = a2;
  v3[175] = a1;
  v4 = swift_task_alloc();
  v3[178] = v4;
  *v4 = v3;
  v4[1] = sub_217433BDC;

  return sub_2173F0960((v3 + 61));
}

uint64_t sub_217433BDC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1432) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217433CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_486();
  v17 = &qword_27CB27D40;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &qword_21776BB40);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &qword_21776BB40);
  v24 = *(v13 + 592);
  LOBYTE(v25) = *(v13 + 600);
  v26 = OUTLINED_FUNCTION_1295();
  sub_217283C5C(v26, v27);
  OUTLINED_FUNCTION_80_3();
  sub_2171F0790(v28, v29, v30);
  v31 = OUTLINED_FUNCTION_1295();
  sub_21725CF00(v31, v32);
  OUTLINED_FUNCTION_661();
  v33 = &qword_27CB24630;
  v159 = v16;
  v147 = v15;
  while (1)
  {
    v173 = v14;
    if (HIDWORD(v176))
    {
      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      OUTLINED_FUNCTION_1337();
      if (v34)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_1336();
      sub_217294694();
    }

    else
    {
      v35 = *(v24 + 2);
      if (&qword_21776BB40 == v35)
      {
LABEL_21:
        v92 = sub_2171F0790(v13 + 376, &qword_27CB27D48, &qword_21776BB48);
        OUTLINED_FUNCTION_765(v92, v93, v94, v95, v96, v97, v98, v99, v138);
        goto LABEL_23;
      }

      if ((&qword_21776BB40 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

      if (&qword_21776BB40 >= v35)
      {
        goto LABEL_35;
      }

      v36 = OUTLINED_FUNCTION_1107();
      v24 = &unk_217758B70;
      sub_2171F0688(v36, v37, v38, &unk_217758B70);
      OUTLINED_FUNCTION_149_0();
      sub_2171F0688(v39, v40, v41, &unk_217758B70);
      if (*(v13 + 817))
      {
        OUTLINED_FUNCTION_1106();
        v42 = OUTLINED_FUNCTION_150_0();
        sub_217293C30(v42, v43, v44, v45, v46, v47, v48, v49, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v14, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0], __src[1]);

        sub_2171F0790(v13 + 696, &qword_27CB24630, &unk_217758B70);
        v16 = v159;
      }

      else
      {
        sub_217751DE8();
        OUTLINED_FUNCTION_206_2();
        sub_2171F0790(v58, v59, v60);
        OUTLINED_FUNCTION_752();
      }

      OUTLINED_FUNCTION_658(v50, v51, v52, v53, v54, v55, v56, v57, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v173, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7]);
    }

    OUTLINED_FUNCTION_657();
    if (v61)
    {
      v70.n128_f64[0] = sub_21725CF00(v24, 1);
      if (v25)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v72 = OUTLINED_FUNCTION_1479();
      v70.n128_f64[0] = sub_21725CF00(v72, v73);
      if (v25)
      {
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_627(v62, v63, v64, v65, v66, v67, v68, v69, v70, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v71, v161, v164, v167, v169, v171);
    *(v13 + 1280) = &type metadata for Playlist.Entry.Item;
    *(v13 + 1288) = &protocol witness table for Playlist.Entry.Item;
    OUTLINED_FUNCTION_203_0();
    *(v13 + 1256) = swift_allocObject();
    v74 = OUTLINED_FUNCTION_740();
    sub_21729C79C(v74, v75);
    v76 = OUTLINED_FUNCTION_1508();
    sub_21729C79C(v76, v77);
    if (*(v13 + 1008))
    {
      v17 = v152;
      OUTLINED_FUNCTION_445(*v15, v15[1]);
      sub_21729C5E8(v13 + 1160, v16);
      sub_217283B58(v152);
    }

    else
    {
      v17 = v150;
      OUTLINED_FUNCTION_445(*v15, v15[1]);
      sub_21729C5E8(v13 + 1216, v16);
      sub_217283C08(v150);
    }

    v33 = *(v13 + 1416);
    v25 = *(v13 + 1408);
    *(v12 + 32) = *(v16 + 32);
    v78 = *(v16 + 16);
    *v12 = *v16;
    *(v12 + 16) = v78;
    v16 = *(v13 + 1320);
    v14 = *(v13 + 1328);
    v79 = OUTLINED_FUNCTION_1487();
    OUTLINED_FUNCTION_491(v79, v80);
    v81 = OUTLINED_FUNCTION_1105();
    v82(v81);
    sub_21729C644(v12);
    v83 = __swift_destroy_boxed_opaque_existential_1((v13 + 1256));
    OUTLINED_FUNCTION_1414(v83, v84, v85, v86, v87, v88, v89, v90, v139, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v163, v165, v166, v168, v170, v172, v173, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0]);
    v91 = OUTLINED_FUNCTION_1011();
    memcpy(v91, __src, 0x161uLL);
    sub_217269F50(v13 + 16);
    if (v17)
    {
      break;
    }

    sub_21729C7F8(v175);
    OUTLINED_FUNCTION_1104();
    v33 = &qword_27CB24630;
  }

  v106 = sub_2171F0790(v13 + 376, &qword_27CB27D48, &qword_21776BB48);
  OUTLINED_FUNCTION_678(v106, v107, v108, v109, v110, v111, v112, v113, v138, v142, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v174, v175);
LABEL_23:
  OUTLINED_FUNCTION_1431(v100, v101, &qword_27CB27D20, &qword_217758B80, v102, v103, v104, v105, v140, v142);
  if (*(v13 + 1072) == 255)
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v124, v125, v126);
    OUTLINED_FUNCTION_1012();
    sub_2172CEC88();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v127, v128, v129);
    sub_2171F0790(v13 + 488, &unk_27CB27D50, &unk_21776BB50);
    OUTLINED_FUNCTION_1335();
    if (v34)
    {
      sub_2171F0790(v145, &qword_27CB27D20, &qword_217758B80);
      OUTLINED_FUNCTION_227_4();
      *(v17 + 56) = -1;
      goto LABEL_28;
    }

    v122 = OUTLINED_FUNCTION_854();
  }

  else
  {
    sub_2171F0790(v33, &qword_27CB27D20, &qword_217758B80);
    sub_2171F0790(v13 + 488, &unk_27CB27D50, &unk_21776BB50);
    v122 = OUTLINED_FUNCTION_855();
  }

  OUTLINED_FUNCTION_853(v122, v123, v114, v115, v116, v117, v118, v119, v120, v121, v141, v144, v145, v147, v149, v151, v153, v155, v157, v159, v161, *(&v161 + 1), v164, *(&v164 + 1), v167, v169, v171, v173, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, __src[0], __src[1], __src[2], __src[3], *&__src[4], __src[6], __src[7]);
LABEL_28:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v131(v130, v131, v132, v133, v134, v135, v136, v137, a9, a10, a11, a12);
}

uint64_t sub_2174340D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217434188;

  return sub_2173F0D50((v3 + 61));
}

uint64_t sub_217434188()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217434280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &unk_27CB2ACA0;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_217759C60);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_217759C60);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &unk_217759C60;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_217294664();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB279D0, &qword_217778740);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_217293954(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &unk_217759C60, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &unk_2177881E0);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &unk_2177881E0);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&unk_217759C60)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&unk_217759C60)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for Playlist.Entry;
    *(v12 + 1080) = &protocol witness table for Playlist.Entry;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_217275858(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_2172758B4(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB279D0, &qword_217778740);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &unk_27CB2ACC0, &qword_217758AA8, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &unk_27CB2ACC0, &qword_217758AA8);
    sub_2171F0790(v12 + 488, &qword_27CB279D8, &unk_21776B5B0);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CECC4();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &qword_27CB279D8, &unk_21776B5B0);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &unk_27CB2ACC0, &qword_217758AA8);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

uint64_t sub_217434590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217434644;

  return sub_2173F1140((v3 + 61));
}

uint64_t sub_217434644()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21743473C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &unk_27CB28230;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &unk_21775CD50);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &unk_21775CD50);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v157 = &unk_21775CD50;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      v25 = OUTLINED_FUNCTION_577();
      sub_2172944E4(v25);
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v79 = sub_2171F0790(v12 + 376, &qword_27CB254C0, &unk_21775CD60);
        OUTLINED_FUNCTION_245_0(v79, v80, v81, v82, v83, v84, v85, v86, v121, v125);
        goto LABEL_20;
      }

      LOBYTE(v17) = v135;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v26)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v27 = OUTLINED_FUNCTION_364();
        sub_21729290C(v27, v28, v29, v30, v31, v32, v33, v34, v121, v125, v129, v132, v135, v138, v141, *(&v141 + 1), v146, *(&v146 + 1), v151, v153, v155, &unk_21775CD50, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178, v179, v180, *(&v180 + 1), v181, v182);
        OUTLINED_FUNCTION_1321();
        v35 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v35, v36, &qword_217771D40);
      }

      else
      {
        sub_217751DE8();
        v45 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v45, v46, &qword_217771D40);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v37, v38, v39, v40, v41, v42, v43, v44, v121, v125, v129, v132, v135, v138, v141, *(&v141 + 1), v146, *(&v146 + 1), v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v178, v179, v180);
    }

    v47 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v56.n128_f64[0] = sub_21725CF00(v47, 1);
      if (&unk_21775CD50)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v56.n128_f64[0] = sub_21725CF00(v47, 0);
      if (&unk_21775CD50)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v48, v49, v50, v51, v52, v53, v54, v55, v56, v121, v125, v129, v132, v135, v138, v57, v141, v146);
    *(v12 + 1072) = &type metadata for Playlist;
    *(v12 + 1080) = &protocol witness table for Playlist;
    OUTLINED_FUNCTION_197();
    v58 = swift_allocObject();
    v59 = OUTLINED_FUNCTION_576(v58);
    sub_2172757C0(v59, v60);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v61 = OUTLINED_FUNCTION_160_6();
    v62(v61);
    sub_21729C644(v12 + 1088);
    v63 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v71 = OUTLINED_FUNCTION_981(v63, v64, v65, v66, v67, v68, v69, v70, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    OUTLINED_FUNCTION_676(v71, v72, v73, v74, v75, v76, v77, v78, v123, v127, v131, v134, v137, v140, v143, v145, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_21726B8C4(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v93 = sub_2171F0790(v12 + 376, &qword_27CB254C0, &unk_21775CD60);
  OUTLINED_FUNCTION_117_11(v93, v94, v95, v96, v97, v98, v99, v100, v121, v125);
LABEL_20:
  OUTLINED_FUNCTION_982(v87, v88, &unk_27CB28A90, &qword_217758F90, v89, v90, v91, v92, v124, v128, v129);
  OUTLINED_FUNCTION_1054();
  if (v101)
  {
    sub_2171F0790(v16, &unk_27CB28A90, &qword_217758F90);
    sub_2171F0790(v12 + 488, &unk_27CB28240, &unk_21776C300);
    v103 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v106, v107, v108);
    OUTLINED_FUNCTION_1012();
    sub_2172CED00();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v109, v110, v111);
    sub_2171F0790(v12 + 488, &unk_27CB28240, &unk_21776C300);
    OUTLINED_FUNCTION_1053();
    if (!v112)
    {
      sub_2171F0790(v13, &unk_27CB28A90, &qword_217758F90);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v103 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v102, v103, v104, v105);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v114(v113, v114, v115, v116, v117, v118, v119, v120, a9, a10, a11, a12);
}

uint64_t sub_217434A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[146] = a3;
  v3[145] = a2;
  v3[144] = a1;
  v4 = swift_task_alloc();
  v3[147] = v4;
  *v4 = v3;
  v4[1] = sub_217434B00;

  return sub_2173F1530((v3 + 61));
}

uint64_t sub_217434B00()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 1184) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_217434BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_870();
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_119_9();
  v17 = &qword_27CB25630;
  v18 = OUTLINED_FUNCTION_500();
  sub_2171F0688(v18, v19, v20, &qword_21775D568);
  v21 = OUTLINED_FUNCTION_499();
  sub_2171F0688(v21, v22, v23, &qword_21775D568);
  OUTLINED_FUNCTION_296();
  OUTLINED_FUNCTION_147_5();
  while (1)
  {
    v156 = &qword_21775D568;
    if (v14)
    {
      OUTLINED_FUNCTION_669();
      OUTLINED_FUNCTION_578();
      if (v24)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_577();
      sub_217294604();
    }

    else
    {
      OUTLINED_FUNCTION_827();
      if (v24)
      {
LABEL_18:
        v78 = sub_2171F0790(v12 + 376, &qword_27CB27ED0, &qword_21776BDD0);
        OUTLINED_FUNCTION_245_0(v78, v79, v80, v81, v82, v83, v84, v85, v120, v124);
        goto LABEL_20;
      }

      LOBYTE(v17) = v134;
      if ((v13 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      if (v13 >= v25)
      {
        goto LABEL_32;
      }

      OUTLINED_FUNCTION_668();
      OUTLINED_FUNCTION_667();
      if (*(v12 + 816))
      {
        OUTLINED_FUNCTION_295();
        v26 = OUTLINED_FUNCTION_364();
        sub_217293370(v26, v27, v28, v29, v30, v31, v32, v33, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, &qword_21775D568, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179, *(&v179 + 1), v180, v181);
        OUTLINED_FUNCTION_1321();
        v34 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v34, v35, &qword_217758BF0);
      }

      else
      {
        sub_217751DE8();
        v44 = OUTLINED_FUNCTION_912();
        sub_2171F0790(v44, v45, &qword_217758BF0);
        OUTLINED_FUNCTION_163_4();
      }

      OUTLINED_FUNCTION_161_6(v36, v37, v38, v39, v40, v41, v42, v43, v120, v124, v128, v131, v134, v137, v140, *(&v140 + 1), v145, *(&v145 + 1), v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v177, v178, v179);
    }

    v46 = OUTLINED_FUNCTION_94_7();
    if (v14)
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 1);
      if (&qword_21775D568)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v55.n128_f64[0] = sub_21725CF00(v46, 0);
      if (&qword_21775D568)
      {
        goto LABEL_30;
      }
    }

    OUTLINED_FUNCTION_42_14(v47, v48, v49, v50, v51, v52, v53, v54, v55, v120, v124, v128, v131, v134, v137, v56, v140, v145);
    *(v12 + 1072) = &type metadata for RadioShow;
    *(v12 + 1080) = &protocol witness table for RadioShow;
    OUTLINED_FUNCTION_197();
    v57 = swift_allocObject();
    v58 = OUTLINED_FUNCTION_576(v57);
    sub_217284338(v58, v59);
    OUTLINED_FUNCTION_575();
    v14 = v15;
    v15 = *(v12 + 1120);
    __swift_project_boxed_opaque_existential_1((v12 + 1088), *(v12 + 1112));
    v60 = OUTLINED_FUNCTION_160_6();
    v61(v60);
    sub_21729C644(v12 + 1088);
    v62 = __swift_destroy_boxed_opaque_existential_1((v12 + 1048));
    v70 = OUTLINED_FUNCTION_981(v62, v63, v64, v65, v66, v67, v68, v69, v121, v125, v129, v132, v135, v138, v141, v143, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174);
    OUTLINED_FUNCTION_676(v70, v71, v72, v73, v74, v75, v76, v77, v122, v126, v130, v133, v136, v139, v142, v144, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175);
    sub_217269F50(v12 + 16);
    if (v17)
    {
      break;
    }

    sub_217284394(v14);
    OUTLINED_FUNCTION_118_8();
  }

  v92 = sub_2171F0790(v12 + 376, &qword_27CB27ED0, &qword_21776BDD0);
  OUTLINED_FUNCTION_117_11(v92, v93, v94, v95, v96, v97, v98, v99, v120, v124);
LABEL_20:
  OUTLINED_FUNCTION_982(v86, v87, &qword_27CB24678, &qword_217758BD0, v88, v89, v90, v91, v123, v127, v128);
  OUTLINED_FUNCTION_1054();
  if (v100)
  {
    sub_2171F0790(v16, &qword_27CB24678, &qword_217758BD0);
    sub_2171F0790(v12 + 488, &qword_27CB27ED8, &unk_21776BDD8);
    v102 = OUTLINED_FUNCTION_574();
  }

  else
  {
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v105, v106, v107);
    OUTLINED_FUNCTION_1012();
    sub_2172CED3C();
    OUTLINED_FUNCTION_6_32();
    sub_2171F0790(v108, v109, v110);
    sub_2171F0790(v12 + 488, &qword_27CB27ED8, &unk_21776BDD8);
    OUTLINED_FUNCTION_1053();
    if (!v111)
    {
      sub_2171F0790(v13, &qword_27CB24678, &qword_217758BD0);
      OUTLINED_FUNCTION_227_4();
      goto LABEL_25;
    }

    v102 = OUTLINED_FUNCTION_573();
  }

  OUTLINED_FUNCTION_572(v101, v102, v103, v104);
LABEL_25:
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_46_2();

  v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12);
}

void sub_217434F08()
{
  OUTLINED_FUNCTION_12();
  v1 = v0;
  v38 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB277B8, &unk_21776B220);
  v4 = OUTLINED_FUNCTION_45_0(v3);
  MEMORY[0x28223BE20](v4);
  v6 = v37 - v5;
  v7 = sub_217751518();
  OUTLINED_FUNCTION_0_0();
  v37[1] = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v11 = OUTLINED_FUNCTION_45_0(v10);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  v14 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  OUTLINED_FUNCTION_178_0();
  sub_2177516C8();

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_21733AB9C(v1);
    v21 = &unk_27CB277C0;
    v22 = &qword_217758DC0;
    v23 = v13;
LABEL_5:
    sub_2171F0790(v23, v21, v22);
    v26 = 1;
    v27 = v38;
    goto LABEL_10;
  }

  v24 = OUTLINED_FUNCTION_19_1();
  v25(v24);
  OUTLINED_FUNCTION_1479();
  sub_217751478();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_21733AB9C(v1);
    (*(v16 + 8))(v20, v14);
    v21 = &qword_27CB277B8;
    v22 = &unk_21776B220;
    v23 = v6;
    goto LABEL_5;
  }

  v28 = OUTLINED_FUNCTION_1_5();
  v29(v28);
  v30 = sub_2177514A8();
  v37[0] = v31;
  v32 = sub_217751448();
  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  sub_2172CA838(v1, v39);
  v27 = v38;
  sub_2173B6DA4(v30, v37[0], v33, 1, v39, v38);
  sub_21733AB9C(v1);
  v34 = OUTLINED_FUNCTION_154();
  v35(v34);
  (*(v16 + 8))(v20, v14);
  v26 = 0;
LABEL_10:
  v36 = type metadata accessor for MusicAPI.Endpoint(0);
  __swift_storeEnumTagSinglePayload(v27, v26, 1, v36);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_217435234(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &unk_27CB282F0, &qword_21776C408);

  return MEMORY[0x2822009F8](sub_2174353A0, 0, 0);
}

uint64_t sub_217435DBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_874(v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217435EBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_614(v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217435FBC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_613(v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2174360BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  v19 = *(v18 + 360);
  v20 = OUTLINED_FUNCTION_25_0();
  sub_2177188E8(v20, v21);
  __swift_project_boxed_opaque_existential_1((v19 + 128), *(v19 + 152));
  v22 = OUTLINED_FUNCTION_16_1();
  v23(v22);

  sub_21754383C(a13);
  v24 = *(v18 + 344);
  OUTLINED_FUNCTION_1437();
  v41 = v25 | 0x6174616300000000;
  v26 = OUTLINED_FUNCTION_25_0();
  MEMORY[0x21CEA23B0](v26);
  OUTLINED_FUNCTION_140_2();
  if (v27)
  {
    OUTLINED_FUNCTION_1358();
    MEMORY[0x21CEA23B0](v41, 0xEC0000002F676F6CLL);
  }

  sub_2172CA838(*(v18 + 360) + 128, v18 + 208);
  sub_217751DE8();
  v28 = OUTLINED_FUNCTION_1_5();
  sub_2173B6DA4(v28, v29, v24, 1, v30, v31);

  OUTLINED_FUNCTION_418();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_172_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, 0xEC0000002F676F6CLL, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_217436288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_959();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21743633C()
{
  OUTLINED_FUNCTION_904();
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  v1 = v0[45];
  v2 = OUTLINED_FUNCTION_132();
  sub_2177188E8(v2, v3);
  __swift_project_boxed_opaque_existential_1((v1 + 128), *(v1 + 152));
  v4 = OUTLINED_FUNCTION_15();
  v5(v4);

  sub_21754383C(v14);
  v6 = v0[32];
  v7 = v0[43];
  v8 = OUTLINED_FUNCTION_132();
  sub_217441DD4(v8, v9, v10, v6, v7, v11);

  OUTLINED_FUNCTION_418();

  OUTLINED_FUNCTION_0_2();

  return v12();
}

uint64_t sub_2174364BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_959();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_217436570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  if (qword_280BE8078 != -1)
  {
    OUTLINED_FUNCTION_30(&qword_280BE8078);
  }

  v19 = *(v18 + 360);
  v20 = OUTLINED_FUNCTION_25_0();
  sub_2177188E8(v20, v21);
  __swift_project_boxed_opaque_existential_1((v19 + 128), *(v19 + 152));
  v22 = OUTLINED_FUNCTION_16_1();
  v23(v22);

  sub_21754383C(a13);
  v24 = *(v18 + 344);
  OUTLINED_FUNCTION_1437();
  v41 = v25 | 0x69636F7300000000;
  v26 = OUTLINED_FUNCTION_25_0();
  MEMORY[0x21CEA23B0](v26);
  OUTLINED_FUNCTION_140_2();
  if (v27)
  {
    OUTLINED_FUNCTION_1358();
    MEMORY[0x21CEA23B0](v41, 0xEB000000002F6C61);
  }

  sub_2172CA838(*(v18 + 360) + 128, v18 + 168);
  sub_217751DE8();
  v28 = OUTLINED_FUNCTION_1_5();
  sub_2173B6DA4(v28, v29, v24, 1, v30, v31);

  OUTLINED_FUNCTION_418();

  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_172_1();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, v41, 0xEB000000002F6C61, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_217436740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_959();

  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_120_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2174367F4(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB282E8, &qword_21776C3F0);

  return MEMORY[0x2822009F8](sub_217436960, 0, 0);
}

uint64_t sub_21743737C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_874(v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21743747C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_614(v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21743757C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_10_2();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_613(v5, v6);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21743767C(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27930, &qword_21776B498);

  return MEMORY[0x2822009F8](sub_2174377E8, 0, 0);
}

uint64_t sub_217438204(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27AD0, &qword_21776B738);

  return MEMORY[0x2822009F8](sub_217438370, 0, 0);
}

uint64_t sub_217438D8C(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB28000, &qword_21776BF90);

  return MEMORY[0x2822009F8](sub_217438EF8, 0, 0);
}

uint64_t sub_217439914(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27868, &qword_21776B350);

  return MEMORY[0x2822009F8](sub_217439A80, 0, 0);
}

uint64_t sub_21743A49C(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27710, &qword_21776B178);

  return MEMORY[0x2822009F8](sub_21743A608, 0, 0);
}

uint64_t sub_21743B024(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27CC0, &qword_21776BA60);

  return MEMORY[0x2822009F8](sub_21743B190, 0, 0);
}

uint64_t sub_21743BBAC(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27E50, &qword_21776BD00);

  return MEMORY[0x2822009F8](sub_21743BD18, 0, 0);
}

uint64_t sub_21743C734(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27C00, &qword_21776B910);

  return MEMORY[0x2822009F8](sub_21743C8A0, 0, 0);
}

uint64_t sub_21743D2BC(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB28180, &qword_21776C1F0);

  return MEMORY[0x2822009F8](sub_21743D428, 0, 0);
}

uint64_t sub_21743DE44(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB280C0, &qword_21776C0C0);

  return MEMORY[0x2822009F8](sub_21743DFB0, 0, 0);
}

uint64_t sub_21743E9CC(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27D88, &qword_21776BBA8);

  return MEMORY[0x2822009F8](sub_21743EB38, 0, 0);
}

uint64_t sub_21743F554(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27A10, &qword_21776B608);

  return MEMORY[0x2822009F8](sub_21743F6C0, 0, 0);
}

uint64_t sub_2174400DC(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB28278, &qword_21776C358);

  return MEMORY[0x2822009F8](sub_217440248, 0, 0);
}

uint64_t sub_217440C64(uint64_t a1, uint64_t a2)
{
  *(v3 + 352) = a1;
  *(v3 + 360) = v2;
  v5 = sub_217751428();
  *(v3 + 368) = v5;
  *(v3 + 376) = *(v5 - 8);
  *(v3 + 384) = swift_task_alloc();
  *(v3 + 392) = swift_task_alloc();
  *(v3 + 400) = swift_task_alloc();
  *(v3 + 408) = swift_task_alloc();
  *(v3 + 416) = swift_task_alloc();
  *(v3 + 424) = swift_task_alloc();
  *(v3 + 432) = swift_task_alloc();
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  v6 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v6;
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = *(a2 + 48);
  *(v3 + 568) = *(a2 + 56);
  sub_2171F0688(v3 + 16, v3 + 72, &qword_27CB27F10, &qword_21776BE30);

  return MEMORY[0x2822009F8](sub_217440DD0, 0, 0);
}

void sub_2174417EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_133_7();
  v27 = v26[2];
  switch(v26[6] >> 62)
  {
    case 1uLL:
      goto LABEL_7;
    case 2uLL:
      v32 = *v26;
      v31 = v26[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      OUTLINED_FUNCTION_207_2();
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_2177586E0;
      *(v33 + 32) = v32;
      *(v33 + 40) = v31;
      *(v33 + 48) = v27;
      goto LABEL_4;
    case 3uLL:
      v34 = *(v27 + 16);
      if (!v34)
      {
        goto LABEL_7;
      }

      sub_2176F7758();
      OUTLINED_FUNCTION_784();
      sub_2176F8378();
      v36 = v35;
      sub_217751DE8();
      v37 = OUTLINED_FUNCTION_104_3();
      sub_2172303F0(v37);
      if (v36 == v34)
      {
        goto LABEL_7;
      }

      __break(1u);
      break;
    default:
      v28 = *(v26 + 32);
      v29 = v26[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
      OUTLINED_FUNCTION_207_2();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_2177586E0;
      *(v30 + 32) = v27;
      *(v30 + 40) = v29;
      *(v30 + 48) = v28 & 1;
LABEL_4:
      sub_217751DE8();
LABEL_7:
      OUTLINED_FUNCTION_132_5();
      break;
  }
}