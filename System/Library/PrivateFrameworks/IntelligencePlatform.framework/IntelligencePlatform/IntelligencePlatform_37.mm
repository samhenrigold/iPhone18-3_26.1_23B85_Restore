void *sub_1ABD5B340@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v9 = a1[5];
  v11 = *(a1 + 48);
  if (a2)
  {
    v27 = *a1;
    v28 = v6;
    v29 = v7;
    v30 = v8;
    v31 = v10;
    v32 = v9;
    v33 = v11;
    result = sub_1ABD5AA34(&v27);
    if (v4)
    {
      return result;
    }

    v13 = result;
  }

  else
  {
    sub_1ABB668FC();
    v13 = sub_1ABF239C4();
  }

  v27 = v5;
  v28 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v10;
  v32 = v9;
  v33 = v11;
  v14 = v3[7];
  v15 = v3[8];
  v16 = v3[9];
  v17 = v3[10];
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = v17;

  v18 = v15;
  v19 = v16;
  v20 = v17;
  sub_1ABD62C00(&v27, v13, &v23, v34);

  v21 = v24;
  v22 = v25;
}

void sub_1ABD5B45C(uint64_t *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v8 = *a1;
  v9 = *(v3 + 40);
  v10 = *(v5 + 48);
  v11 = sub_1ABA93E20((v5 + 16), v9);
  GraphObjectBareContextProtocol.entity(for:)(&v30, v9, v10, v11, v12, v13, v14, v15, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v8);
  if (!v4)
  {
    v16 = v23;
    if (v23)
    {
      v17 = v22;
      sub_1ABD5B340(&v22, a2 & 1, a3);
      sub_1ABD5B81C(v17, v16);
    }

    else
    {
      sub_1ABD5B7C8();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_1ABD5B590(uint64_t *a1)
{
  v6 = *a1;
  sub_1ABD5B45C(&v6, 0, v7);
  if (!v2)
  {
    v3 = v8;
    v4 = v9;
    sub_1ABA93E20(v7, v8);
    v1 = (*(v4 + 16))(v3, v4);
    sub_1ABA84B54(v7);
  }

  return v1;
}

uint64_t sub_1ABD5B62C(void *a1, uint64_t a2)
{
  sub_1ABA8F688(a1, a2);
  if (!v3)
  {
    v5 = v9;
    v6 = v10;
    sub_1ABA93E20(v8, v9);
    v2 = (*(v6 + 24))(a2, v5, v6);
    sub_1ABA84B54(v8);
  }

  return v2;
}

void sub_1ABD5B6BC(void *a1, uint64_t a2)
{
  sub_1ABA8F688(a1, a2);
  if (!v2)
  {
    v3 = v6;
    v4 = v7;
    sub_1ABA93E20(v5, v6);
    (*(v4 + 32))(v3, v4);
    sub_1ABA84B54(v5);
  }
}

uint64_t sub_1ABD5B740()
{
  sub_1ABA84B54((v0 + 16));
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return swift_deallocClassInstance();
}

unint64_t sub_1ABD5B7C8()
{
  result = qword_1EB4D90E8;
  if (!qword_1EB4D90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D90E8);
  }

  return result;
}

uint64_t sub_1ABD5B81C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1ABD5B86C()
{
  result = qword_1EB4CF830;
  if (!qword_1EB4CF830)
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF830);
  }

  return result;
}

uint64_t sub_1ABD5B8D0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1AC5AB8B0);
  }

  return result;
}

uint64_t sub_1ABD5B920(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D90F8, &qword_1ABF5E7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1ABD5B988(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE1(a7) != 255)
  {
    return sub_1ABD5B9A0(result, a2, a3, a4, a5, a6, a7, BYTE1(a7) & 1);
  }

  return result;
}

id sub_1ABD5B9A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1ABD5B9FC(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v8 = sub_1ABA93DC0(&v12);
  (*(*(a4 - 8) + 32))(v8, a1, a4);
  v9 = swift_allocObject();
  sub_1ABA946C0(&v12, v9 + 16);
  v10 = a2[1];
  *(v9 + 56) = *a2;
  *(v9 + 72) = v10;
  return v9;
}

uint64_t sub_1ABD5BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v6 = sub_1ABA93DC0(v39);
  (*(*(a3 - 8) + 16))(v6, a1, a3);
  v7 = sub_1ABA93E20(v39, v40);
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v10 + 16))(v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA93DC0(v36);
  sub_1ABF23F04();
  v32 = MEMORY[0x1E69E7CC8];
  *&v11 = 136315138;
  v33 = v11;
  while (1)
  {
    do
    {
      sub_1ABA94E50(v36, AssociatedTypeWitness);
      sub_1ABF24864();
      if (v35)
      {
        sub_1ABA84B54(v36);
        sub_1ABA84B54(v39);
        return v32;
      }

      v12 = v34;
      v13 = sub_1ABD5B590(&v34);
      v15 = v14;
    }

    while (!v14);
    v16 = v13;
    v17 = v32;
    v31[1] = swift_isUniquelyReferenced_nonNull_native();
    v34 = v17;
    v18 = sub_1ABAF81A8();
    if (__OFADD__(*(v17 + 16), (v19 & 1) == 0))
    {
      break;
    }

    v20 = v18;
    LODWORD(v32) = v19;
    sub_1ABAD219C(&qword_1EB4D90F0, &qword_1ABF5E7D0);
    if (sub_1ABF24C64())
    {
      v21 = sub_1ABAF81A8();
      v23 = v32;
      if ((v32 & 1) != (v22 & 1))
      {
        goto LABEL_16;
      }

      v20 = v21;
    }

    else
    {
      v23 = v32;
    }

    v24 = v34;
    v32 = v34;
    if (v23)
    {
      v25 = (v34[7] + 16 * v20);
      *v25 = v16;
      v25[1] = v15;
    }

    else
    {
      v34[(v20 >> 6) + 8] |= 1 << v20;
      *(v24[6] + 8 * v20) = v12;
      v26 = (v24[7] + 16 * v20);
      *v26 = v16;
      v26[1] = v15;
      v27 = v24[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_15;
      }

      v24[2] = v29;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABD5BF1C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2CC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABD5FB9C(v6);
  *a1 = v2;
  return result;
}

void sub_1ABD5BF88(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6, void *a7)
{
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *(a4 + 3);
  v17 = *(a4 + 16);
  *(v7 + 112) = *a1;
  v18 = *(a1 + 24);
  *(v7 + 128) = *(a1 + 16);
  *(v7 + 136) = v18;
  *(v7 + 144) = v10;
  *(v7 + 152) = v11;
  *(v7 + 160) = v12;
  *(v7 + 168) = v13;
  *(v7 + 176) = a2;
  *(v7 + 184) = a3;
  *(v7 + 192) = v14;
  *(v7 + 208) = v15;
  *(v7 + 216) = v16;
  *(v7 + 224) = v17;
  v21[0] = v18;
  v21[1] = v10;
  v21[2] = v11;
  v21[3] = v12;
  v22 = v13;
  v19 = a6[1];
  v20[0] = *a6;
  v20[1] = v19;

  sub_1ABD4F784(v21, a5, v20, a7);
}

void sub_1ABD5C038()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v47 = type metadata accessor for K2TTextualization(0);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  v51 = *(v10 + 16);
  if (!v51)
  {
LABEL_36:
    sub_1ABA7BC1C();
    return;
  }

  v45 = v9;
  v50 = v10 + 32;

  v12 = 0;
  v53 = 0;
  v48 = v11;
  v46 = v3;
  v52 = v7;
  v49 = v10;
  while (v12 < *(v10 + 16))
  {
    sub_1ABA7DB18(v50 + (v12 << 6));
    if (*(v3 + 24))
    {
      sub_1ABAA35B0();
    }

    else
    {
      v13 = *(v1 + 16);
      v14 = *(v13 + 16);
      if (v14)
      {
        v7 = v1;
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v60 = MEMORY[0x1E69E7CC0];

        sub_1ABADDC4C(0, v14, 0);
        v15 = v60;
        v16 = v14 - 1;
        for (i = 32; ; i += 64)
        {
          v18 = sub_1ABA7F5F0(v13 + i);
          sub_1ABA96D40(v18, v19, v20, v21);
          v60 = v15;
          v23 = v15[2];
          v22 = v15[3];
          if (v23 >= v22 >> 1)
          {
            v25 = sub_1ABA7BBEC(v22);
            sub_1ABADDC4C(v25, v23 + 1, 1);
            v15 = v60;
          }

          v24 = sub_1ABA90984(&type metadata for Subfact);
          sub_1ABAA53F8(v24);
          v15[2] = v23 + 1;
          sub_1ABA946C0(&v54, &v15[5 * v23 + 4]);
          if (!v16)
          {
            break;
          }

          --v16;
        }

        v1 = v7;
        v3 = v46;
        sub_1ABAB551C();
      }

      else
      {
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v15 = MEMORY[0x1E69E7CC0];
      }

      v10 = v49;
      v26 = sub_1ABD605E0(v61, v15);

      sub_1ABB6DBB8(v61);
      if (v26)
      {
        sub_1ABB6DBB8(v61);
        goto LABEL_34;
      }
    }

    if (*(v3 + 24))
    {
      sub_1ABA93E64(v3, &v54);
    }

    else
    {
      v27 = *(v3 + 16);
      v54 = *v3;
      v55 = v27;
      v56 = *(v3 + 32);
    }

    if (*(&v55 + 1))
    {
      sub_1ABA946C0(&v54, v57);
      sub_1ABA93E20(v57, v58);
      sub_1ABAA31A8();
      MEMORY[0x1EEE9AC00](v28);
      sub_1ABA7E918();
      *(v29 - 16) = v1;
      *(v29 - 8) = v61;
      v7 = v53;
      v30 = sub_1ABF23FE4();
      v53 = v7;
      if ((v30 & 1) == 0)
      {
        sub_1ABB6DBB8(v61);
        sub_1ABA84B54(v57);
LABEL_28:
        sub_1ABAB551C();
        goto LABEL_34;
      }

      sub_1ABA84B54(v57);
      sub_1ABAB551C();
    }

    v58 = &type metadata for Subfact;
    v59 = &protocol witness table for Subfact;
    sub_1ABA97C54();
    v57[0] = swift_allocObject();
    sub_1ABA81984(v57[0]);

    sub_1ABD51B4C();

    sub_1ABA84B54(v57);
    sub_1ABA886B8(v7, 1, &v62);
    if (!v31)
    {
      v32 = v45;
      v33 = sub_1ABD51E70(v7, v45);
      v34 = v32[1];
      v44 = *v32;
      v57[0] = v44;
      v57[1] = v34;
      MEMORY[0x1EEE9AC00](v33);
      sub_1ABA7E918();
      *(v35 - 16) = v57;
      v7 = v53;
      v36 = sub_1ABB2F764();
      v53 = v7;
      v10 = v49;
      if (!v36)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7C494();
          sub_1ABAAA4F4();
        }

        sub_1ABAB551C();
        v48 = v37;
        v39 = *(v37 + 16);
        v38 = *(v37 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1ABA7BBEC(v38);
          sub_1ABAAA4F4();
          v48 = v42;
        }

        sub_1ABD51F38(v45);
        v40 = v48;
        *(v48 + 16) = v39 + 1;
        v41 = v40 + 16 * v39;
        *(v41 + 32) = v44;
        *(v41 + 40) = v34;
        v3 = v46;
        goto LABEL_34;
      }

      sub_1ABD51F38(v32);
      v3 = v46;
      goto LABEL_28;
    }

    sub_1ABD5FB34(v7);
    v10 = v49;
LABEL_34:
    if (++v12 == v51)
    {

      goto LABEL_36;
    }
  }

  __break(1u);
}

void sub_1ABD5C5B0()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v79 - v6;
  v8 = type metadata accessor for K2TTextualization(0);
  v9 = sub_1ABA8E5AC(v8, &v99[24]);
  v82 = v10;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v79 - v13);
  v97.n128_u64[0] = *(v0 + 128);
  swift_bridgeObjectRetain_n();
  sub_1ABD5BF1C(&v97);

  v15 = MEMORY[0x1E69E7CC0];
  if (*(v97.n128_u64[0] + 16))
  {
    v84 = 0;
    v85 = v14;
    v80 = v3;
    v16 = 0;
    v90 = v97.n128_u64[0] + 32;
    v87 = MEMORY[0x1E69E7CC0];
    v89 = v7;
    v17 = v97.n128_u64[0];
    v88 = v97.n128_u64[0];
    while (v16 < v17[2])
    {
      v92 = v16;
      sub_1ABAA1158();
      v20 = sub_1ABA7F5F0(v18 + (v19 << 6));
      *&v99[9] = v21;
      v98 = v22;
      *v99 = v23;
      v97 = v20;
      v24 = *(v1 + 128);
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v1;
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v96 = v15;

        sub_1ABADDC4C(0, v25, 0);
        v27 = v96;
        v7 = (v25 - 1);
        for (i = 32; ; i += 64)
        {
          v29 = sub_1ABA7F5F0(v24 + i);
          sub_1ABA96D40(v29, v30, v31, v32);
          v96 = v27;
          v34 = v27[2];
          v33 = v27[3];
          if (v34 >= v33 >> 1)
          {
            v36 = sub_1ABA7BBEC(v33);
            sub_1ABADDC4C(v36, v34 + 1, 1);
            v27 = v96;
          }

          v35 = sub_1ABA90984(&type metadata for Subfact);
          sub_1ABAA53F8(v35);
          v27[2] = v34 + 1;
          sub_1ABA946C0(v93, &v27[5 * v34 + 4]);
          if (!v7)
          {
            break;
          }

          --v7;
        }

        v1 = v26;
        sub_1ABA958E4();
        v15 = MEMORY[0x1E69E7CC0];
        v17 = v88;
      }

      else
      {
        sub_1ABAA35B0();
        sub_1ABAA35B0();
        v27 = v15;
      }

      v37 = sub_1ABD605E0(&v97, v27);

      sub_1ABB6DBB8(&v97);
      if (v37)
      {
        sub_1ABB6DBB8(&v97);
      }

      else
      {
        v38 = sub_1ABA90984(&type metadata for Subfact);
        *&v93[0] = v38;
        v39 = v98;
        v38[1] = v97;
        v38[2] = v39;
        v38[3] = *v99;
        *(v38 + 57) = *&v99[9];
        sub_1ABAA35B0();
        sub_1ABD515A4();
        sub_1ABA84B54(v93);
        sub_1ABA886B8(v7, 1, &v99[24]);
        if (v40)
        {
          sub_1ABB6DBB8(&v97);
          sub_1ABD5FB34(v7);
        }

        else
        {
          v41 = v98;
          v42 = v85;
          sub_1ABD51E70(v7, v85);
          v7 = v42[1];
          v94 = *v42;
          v95 = v7;

          MEMORY[0x1AC5A9410](10272, 0xE200000000000000);

          MEMORY[0x1AC5A9410](v41, *(&v41 + 1));
          sub_1ABB6DBB8(&v97);

          sub_1ABA97C60();

          v44 = v95;
          *v42 = v94;
          v42[1] = v44;
          MEMORY[0x1EEE9AC00](v43);
          sub_1ABA7E918();
          *(v45 - 16) = v42;
          v46 = v84;
          v48 = sub_1ABB2FA20(sub_1ABD5A9C0, v47, v87);
          v84 = v46;
          if (v48)
          {
            sub_1ABA958E4();
            v15 = MEMORY[0x1E69E7CC0];
            v17 = v88;
          }

          else
          {
            sub_1ABD51ED4(v42, v83);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABADB500();
              v87 = v55;
            }

            sub_1ABA958E4();
            v15 = MEMORY[0x1E69E7CC0];
            v17 = v88;
            v50 = *(v87 + 16);
            v49 = *(v87 + 24);
            if (v50 >= v49 >> 1)
            {
              sub_1ABA7BBEC(v49);
              sub_1ABADB500();
              v87 = v56;
            }

            *(v87 + 16) = v50 + 1;
            sub_1ABA935AC();
            sub_1ABD51E70(v83, v52 + v51 + *(v53 + 72) * v50);
          }

          sub_1ABD51F38(v85);
        }
      }

      sub_1ABAA3CF0();
      if (v16 == v54)
      {

        v3 = v80;
        v57 = v87;
        goto LABEL_28;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    v57 = MEMORY[0x1E69E7CC0];
LABEL_28:
    v58 = *(v57 + 16);
    if (v58)
    {
      v92 = v1;
      v94 = v15;

      sub_1ABADDBD4(0, v58, 0);
      v59 = v94;
      sub_1ABA935AC();
      v87 = v57;
      v61 = v57 + v60;
      v63 = *(v62 + 72);
      v64 = v81;
      do
      {
        v65 = sub_1ABA8B14C();
        sub_1ABD51ED4(v65, v66);
        v68 = *v64;
        v67 = v64[1];

        sub_1ABD51F38(v64);
        v94 = v59;
        v70 = *(v59 + 16);
        v69 = *(v59 + 24);
        if (v70 >= v69 >> 1)
        {
          v72 = sub_1ABA7BBEC(v69);
          sub_1ABADDBD4(v72, v70 + 1, 1);
          v64 = v81;
          v59 = v94;
        }

        *(v59 + 16) = v70 + 1;
        v71 = v59 + 16 * v70;
        *(v71 + 32) = v68;
        *(v71 + 40) = v67;
        v61 += v63;
        --v58;
      }

      while (v58);
      v94 = v59;
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAAA5C0();
      v73 = sub_1ABF23B54();
      v75 = v74;

      v94 = 40;
      v95 = 0xE100000000000000;
      sub_1ABA8A034();
      v76 = sub_1ABF23C84();
      MEMORY[0x1AC5A9410](v76);

      MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
      MEMORY[0x1AC5A9410](v73, v75);

      sub_1ABA97C60();
      v77 = v87;

      sub_1ABD63788(v94, v95, v77, MEMORY[0x1E69E7CC0], v3);
      v78 = 0;
    }

    else
    {

      v78 = 1;
    }

    sub_1ABA7B9B4(v3, v78, 1, v86);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD5CCE4()
{
}

uint64_t sub_1ABD5CD50()
{
  v0 = sub_1ABD51DA8();

  return v0;
}

uint64_t sub_1ABD5CDBC()
{
  sub_1ABD5CD50();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABD5CEA8()
{
  sub_1ABD4FAC8();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v1 = sub_1ABA91D48(_Records_GDEntityPredicate_records[396], *(_Records_GDEntityPredicate_records + 100), *(_Records_GDEntityPredicate_records + 101), &v9);
    sub_1ABAA4F20(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD5CF50()
{
  sub_1ABA7E2A8();
  v110 = v1;
  v2 = 0;
  v3 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  v4 = sub_1ABA7AB80(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  v105 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v104 - v7;
  v108 = type metadata accessor for K2TTextualization(0);
  MEMORY[0x1EEE9AC00](v108);
  sub_1ABA7C068();
  v104 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v106 = &v104 - v11;
  v120 = v0;
  v12 = sub_1ABAA15AC();
  v118 = v13;
  v119 = 279;
  v123 = 3481;
  v121 = v12;
  v122 = 4281;

  v14 = 32;
  v113 = 0;
  for (i = v8; ; v8 = i)
  {
    if (v118 == v2)
    {

      v30 = 0;
      v31 = 0;
      goto LABEL_22;
    }

    if (v2 >= *(v121 + 16))
    {
      goto LABEL_105;
    }

    v15 = sub_1ABA7F5F0(v121 + v14);
    *(v131 + 1) = v16;
    sub_1ABA960E0(v15, v17, v18);
    if (v119 < 34)
    {
      break;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_116;
    }

    if (*(_Records_GDEntityPredicate_records + 100) >= v123)
    {
      goto LABEL_107;
    }

    if (*(_Records_GDEntityPredicate_records + 101) >= v122)
    {
      goto LABEL_108;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_117;
    }

    v20 = v19;
    v21 = v130[0];
    v22 = v130[1];
    sub_1ABD1927C(v130, &v127);

    v23 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_118;
    }

    v25 = v23;
    v26 = v24;
    v27 = v131[0];
    v116 = v131[1];
    LODWORD(v115) = LOBYTE(v131[2]);
    sub_1ABF23DD4();
    v28 = v21 == v25 && v22 == v26;
    if (v28)
    {

LABEL_18:

      v32 = v116;
      v33 = v115;
      sub_1ABD5A830(v27, v116, v115);
      sub_1ABB6DBB8(v130);
      if (v33)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v30 = sub_1ABF23C84();
        v31 = v34;
        sub_1ABD5A840(v27, v32, 0);
      }

      v8 = i;
LABEL_22:
      v35 = swift_allocObject();
      v35[2] = v30;
      v35[3] = v31;
      v36 = v120;
      v107 = v35;
      v35[4] = v120;
      v37 = v36[16];
      v38 = *(v37 + 16);
      v114 = v37 + 32;
      v115 = v38;

      v116 = v37;

      v39 = 0;
      v109 = MEMORY[0x1E69E7CC0];
LABEL_23:
      if (v39 == v115)
      {

        sub_1ABA7BC1C();
        return;
      }

      if (v39 >= *(v116 + 16))
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
        break;
      }

      v40 = sub_1ABA7F5F0(v114 + (v39 << 6));
      *(v131 + 1) = v41;
      sub_1ABA960E0(v40, v42, v43);
      if (v119 < 34)
      {
        goto LABEL_102;
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_113;
      }

      if (*(_Records_GDEntityPredicate_records + 100) >= v123)
      {
        goto LABEL_103;
      }

      if (*(_Records_GDEntityPredicate_records + 101) >= v122)
      {
        goto LABEL_104;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_114;
      }

      v45 = sub_1ABAA235C(v44);
      sub_1ABD1927C(v45, &v127);
      sub_1ABAFF1DC(v132, &v127);
      sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_115;
      }

      v47 = v46;
      ++v39;
      v48 = v132[0];
      v49 = v132[1];
      sub_1ABF23DD4();
      sub_1ABA82EB0();
      if (v28 && v49 == v47)
      {
        sub_1ABAE4478(v132);

LABEL_38:
        v111 = v49;
        v112 = v48;
        v118 = v39;
        v52 = v120[16];
        v121 = *(v52 + 16);

        v53 = 0;
        for (j = 32; ; j += 64)
        {
          if (v121 == v53)
          {

            v8 = i;
            v39 = v118;
            v49 = v111;
            goto LABEL_56;
          }

          if (v53 >= *(v52 + 16))
          {
            break;
          }

          v55 = sub_1ABA7F5F0(v52 + j);
          *(v129 + 9) = v56;
          v128 = v57;
          v129[0] = v58;
          v127 = v55;
          if (!_Records_GDEntityPredicate_records)
          {
            goto LABEL_110;
          }

          if (*(_Records_GDEntityPredicate_records + 97) >= v123 || *(_Records_GDEntityPredicate_records + 98) >= v122)
          {
            goto LABEL_100;
          }

          if (!_Records_GDEntityPredicate_predicateIds)
          {
            goto LABEL_112;
          }

          v60 = v127;
          sub_1ABD1927C(&v127, &v124);

          v61 = sub_1ABF23DD4();
          if (!_Records_GDEntityPredicate_labels)
          {
            goto LABEL_111;
          }

          v63 = v61;
          v64 = v62;
          sub_1ABF23DD4();
          if (v60.n128_u64[0] == v63 && v60.n128_u64[1] == v64)
          {
            sub_1ABB6DBB8(&v127);

LABEL_59:

            sub_1ABB6DBB8(v130);
            v8 = i;
            v39 = v118;
            goto LABEL_23;
          }

          v66 = sub_1ABF25054();
          sub_1ABB6DBB8(&v127);

          if (v66)
          {
            goto LABEL_59;
          }

          ++v53;
        }

        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      sub_1ABAA5934();
      v51 = sub_1ABF25054();
      sub_1ABAE4478(v132);

      if (v51)
      {
        goto LABEL_38;
      }

LABEL_56:
      if (*(v110 + 24))
      {
        sub_1ABA93E64(v110, &v124);
      }

      else
      {
        v67 = *(v110 + 16);
        v124 = *v110;
        v125 = v67;
        v126 = *(v110 + 32);
      }

      if (*(&v125 + 1))
      {
        sub_1ABA946C0(&v124, &v127);
        sub_1ABA93E20(&v127, *(&v128 + 1));
        sub_1ABAA31A8();
        MEMORY[0x1EEE9AC00](v68);
        sub_1ABA7E918();
        *(v69 - 16) = v120;
        *(v69 - 8) = v130;
        sub_1ABAA1A28();
        v70 = v113;
        v71 = sub_1ABF23FE4();
        v113 = v70;
        if ((v71 & 1) == 0)
        {
          sub_1ABB6DBB8(v130);
          sub_1ABA84B54(&v127);
          goto LABEL_23;
        }

        sub_1ABA84B54(&v127);
      }

      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_119;
      }

      v72 = *(_Records_GDEntityPredicate_records + 98);
      if (*(_Records_GDEntityPredicate_records + 97) >= v123 || v72 >= v122)
      {
        goto LABEL_109;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_121;
      }

      sub_1ABAFF1DC(v132, &v127);
      sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_120;
      }

      v75 = v74;
      sub_1ABF23DD4();
      sub_1ABA82EB0();
      if (v28 && v49 == v75)
      {
        sub_1ABAE4478(v132);
      }

      else
      {
        sub_1ABAA5934();
        v77 = sub_1ABF25054();
        sub_1ABAE4478(v132);

        if ((v77 & 1) == 0)
        {
          v78 = v120;
          v80 = v120[22];
          v79 = v120[23];
          *(&v128 + 1) = &type metadata for Subfact;
          *&v129[0] = &protocol witness table for Subfact;
          sub_1ABA97C54();
          v127.n128_u64[0] = swift_allocObject();
          sub_1ABA83A24(v127.n128_i64[0]);
          sub_1ABAA1FC4();
          v81 = v105;
          sub_1ABA95340();
          sub_1ABD51B4C();

          sub_1ABA84B54(&v127);
          if (sub_1ABA7E1E0(v81, 1, v108) == 1)
          {
            sub_1ABD5FB34(v81);
            goto LABEL_23;
          }

          v93 = v81;
          v82 = v104;
          sub_1ABD51E70(v93, v104);
          sub_1ABAA1370();
          MEMORY[0x1EEE9AC00](v94);
          sub_1ABA7E918();
          *(v95 - 16) = &v127;
          v98 = sub_1ABAA0F0C(v96, v97);
          v113 = v79;
          if (v98)
          {
            goto LABEL_90;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v99 = v109;
          }

          else
          {
            sub_1ABA7C494();
            sub_1ABAAA4F4();
          }

          sub_1ABAA1CEC(v99);
          v90 = v104;
          if (v91)
          {
            sub_1ABA7BBEC(v100);
            sub_1ABAAA4F4();
            v109 = v103;
            v90 = v104;
          }

LABEL_95:
          sub_1ABD51F38(v90);
          v101 = v109;
          *(v109 + 16) = v79;
          v102 = v101 + 16 * v80;
          *(v102 + 32) = v72;
          *(v102 + 40) = v78;
          goto LABEL_23;
        }
      }

      v78 = v120;
      v80 = v120[22];
      v79 = v120[23];
      *(&v128 + 1) = &type metadata for Subfact;
      *&v129[0] = &protocol witness table for Subfact;
      sub_1ABA97C54();
      v127.n128_u64[0] = swift_allocObject();
      sub_1ABA83A24(v127.n128_i64[0]);
      sub_1ABAA1FC4();

      sub_1ABD51B4C();

      sub_1ABA84B54(&v127);
      if (sub_1ABA7E1E0(v8, 1, v108) == 1)
      {
        sub_1ABD5FB34(v8);
        goto LABEL_23;
      }

      v82 = v106;
      sub_1ABD51E70(v8, v106);
      sub_1ABAA1370();
      MEMORY[0x1EEE9AC00](v83);
      sub_1ABA7E918();
      *(v84 - 16) = &v127;
      v87 = sub_1ABAA0F0C(v85, v86);
      v113 = v79;
      if (v87)
      {
LABEL_90:
        sub_1ABD51F38(v82);
        goto LABEL_23;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v88 = v109;
      }

      else
      {
        sub_1ABA7C494();
        sub_1ABAAA4F4();
      }

      sub_1ABAA1CEC(v88);
      v90 = v106;
      if (v91)
      {
        sub_1ABA7BBEC(v89);
        sub_1ABAAA4F4();
        v109 = v92;
        v90 = v106;
      }

      goto LABEL_95;
    }

    v29 = sub_1ABF25054();

    if (v29)
    {
      goto LABEL_18;
    }

    sub_1ABB6DBB8(v130);
    v14 = v20 + 64;
    ++v2;
  }

  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
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
}

void sub_1ABD5DA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {

    MEMORY[0x1AC5A9410](2126631, 0xE300000000000000);
    MEMORY[0x1AC5A9410](a5, a6);
    v11 = 544434464;
    v12 = 0xE400000000000000;
  }

  else
  {

    MEMORY[0x1AC5A9410](32, 0xE100000000000000);
    v14 = *(a7 + 208);
    v15 = *(a7 + 216);

    MEMORY[0x1AC5A9410](v14, v15);

    v11 = 0x206874697720;
    v12 = 0xE600000000000000;
  }

  MEMORY[0x1AC5A9410](v11, v12);
  MEMORY[0x1AC5A9410](a3, a4);
}

void sub_1ABD5DB24()
{
  sub_1ABA7E2A8();
  v100 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA8147C(&v97 - v6);
  v7 = type metadata accessor for K2TTextualization(0);
  v8 = sub_1ABA8E5AC(v7, v121);
  v99 = v9;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA8147C(&v97 - v12);
  v107 = v0;
  sub_1ABAA15AC();
  v111 = v13;
  v112 = 279;
  v114 = 3481;
  v113 = 4281;
  v14 = 0;
  v15 = 32;

  while (1)
  {
    sub_1ABAA1158();
    if (v17 == v14)
    {

      sub_1ABAB58A4();
      sub_1ABA994FC();
      goto LABEL_22;
    }

    v18 = *(v16 + 16);
    if (v14 >= v18)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);

      __break(1u);
      return;
    }

    sub_1ABA7DB18(v16 + v15);
    sub_1ABAA3CF0();
    if (v18 < 34)
    {
      goto LABEL_85;
    }

    v18 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_94;
    }

    v19 = *(_Records_GDEntityPredicate_records + 100);
    sub_1ABAB5738();
    if (v19 >= v20)
    {
      goto LABEL_86;
    }

    v21 = *(v18 + 808);
    sub_1ABA8A034();
    if (v21 >= v18)
    {
      goto LABEL_87;
    }

    v18 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_95;
    }

    v1 = v119;
    v22 = v120;
    sub_1ABA97898();

    v23 = sub_1ABF23DD4();
    v18 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_96;
    }

    i = v23;
    v25 = v24;
    v26 = v121[0];
    v27 = v121[1];
    LODWORD(v109) = v122;
    sub_1ABF23DD4();
    v28 = v1 == i && v22 == v25;
    if (v28)
    {
      sub_1ABAA2168();

      goto LABEL_19;
    }

    v1 = sub_1ABAB532C(v1);

    if (v1)
    {
      break;
    }

    sub_1ABB6DBB8(&v119);
    v15 += 64;
    ++v14;
    sub_1ABAA2168();
  }

  sub_1ABAA2168();
LABEL_19:

  v29 = v26;
  v30 = v109;
  sub_1ABD5A830(v29, v27, v109);
  sub_1ABB6DBB8(&v119);
  sub_1ABA994FC();
  if (v30)
  {
    sub_1ABAB58A4();
  }

  else
  {
    sub_1ABA8B14C();
    v97 = sub_1ABF23C84();
    v103 = v31;
    v32 = sub_1ABA8B14C();
    sub_1ABD5A840(v32, v33, 0);
  }

LABEL_22:
  v119 = *(v1 + 128);
  swift_bridgeObjectRetain_n();
  sub_1ABD5BF1C(&v119);
  v101 = 0;

  v34 = 0;
  v109 = *(v119 + 16);
  v110 = v119;
  v108 = v119 + 32;
  v104 = MEMORY[0x1E69E7CC0];
LABEL_23:
  while (v34 != v109)
  {
    v18 = *(v110 + 16);
    if (v34 >= v18)
    {
      goto LABEL_80;
    }

    sub_1ABA7DB18(v108 + (v34 << 6));
    sub_1ABAA3CF0();
    if (v18 < 34)
    {
      goto LABEL_81;
    }

    v18 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_91;
    }

    v35 = *(_Records_GDEntityPredicate_records + 100);
    sub_1ABAB5738();
    if (v35 >= v36)
    {
      goto LABEL_82;
    }

    v37 = *(v18 + 808);
    sub_1ABA8A034();
    if (v37 >= v18)
    {
      goto LABEL_83;
    }

    v18 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_92;
    }

    v38 = v119;
    v39 = v120;
    sub_1ABA97898();

    v40 = sub_1ABF23DD4();
    v18 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_93;
    }

    v42 = v40;
    v43 = v41;
    ++v34;
    sub_1ABF23DD4();
    if (v38 == v42 && v39 == v43)
    {

LABEL_38:
      v111 = v34;
      v46 = *(v1 + 128);
      v47 = *(v46 + 16);

      v48 = 0;
      for (i = 32; ; i += 64)
      {
        if (v47 == v48)
        {

          sub_1ABA994FC();
          v34 = v111;
          goto LABEL_58;
        }

        v18 = *(v46 + 16);
        if (v48 >= v18)
        {
          break;
        }

        v49 = sub_1ABA7F5F0(v46 + i);
        *&v118[9] = v50;
        v117 = v51;
        *v118 = v52;
        v116 = v49;
        v18 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_88;
        }

        v18 = v113;
        if (*(_Records_GDEntityPredicate_records + 100) >= v114 || *(_Records_GDEntityPredicate_records + 101) >= v113)
        {
          goto LABEL_79;
        }

        v18 = &_Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_89;
        }

        v54 = v116.n128_u64[1];
        v1 = v116.n128_u64[0];
        sub_1ABD1927C(&v116, &v115);

        v55 = sub_1ABF23DD4();
        v18 = _Records_GDEntityPredicate_labels;
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_90;
        }

        v57 = v55;
        v58 = v56;
        sub_1ABF23DD4();
        if (v1 == v57 && v54 == v58)
        {
          sub_1ABB6DBB8(&v116);
        }

        else
        {
          v60 = sub_1ABF25054();
          sub_1ABB6DBB8(&v116);

          if ((v60 & 1) == 0)
          {

            sub_1ABB6DBB8(&v119);
            sub_1ABA994FC();
            v34 = v111;
            goto LABEL_23;
          }
        }

        ++v48;
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v45 = sub_1ABF25054();

    if (v45)
    {
      goto LABEL_38;
    }

LABEL_58:
    *(&v117 + 1) = &type metadata for Subfact;
    *v118 = &protocol witness table for Subfact;
    sub_1ABA97C54();
    v116.n128_u64[0] = swift_allocObject();
    sub_1ABA81984(v116.n128_i64[0]);
    sub_1ABD515A4();
    sub_1ABA84B54(&v116);
    sub_1ABA886B8(i, 1, v121);
    if (v28)
    {
      sub_1ABD5FB34(i);
    }

    else
    {
      v61 = v102;
      sub_1ABD51E70(i, v102);
      v62 = v97;
      v63 = v103;
      if (!v103)
      {
        v62 = sub_1ABF23C84();
      }

      v116.n128_u64[0] = v62;
      v116.n128_u64[1] = v63;

      MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
      MEMORY[0x1AC5A9410](*v61, v61[1]);

      v65 = v116.n128_u64[1];
      *v61 = v116.n128_u64[0];
      v61[1] = v65;
      MEMORY[0x1EEE9AC00](v64);
      sub_1ABA7E918();
      *(v66 - 16) = v61;
      v67 = v101;
      v69 = sub_1ABB2FA20(sub_1ABD5A9C0, v68, v104);
      v101 = v67;
      if (!v69)
      {
        sub_1ABD51ED4(v61, v98);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7C494();
          sub_1ABADB500();
          v104 = v75;
        }

        v71 = *(v104 + 16);
        v70 = *(v104 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1ABA7BBEC(v70);
          sub_1ABADB500();
          v104 = v76;
        }

        *(v104 + 16) = v71 + 1;
        sub_1ABA935AC();
        sub_1ABD51E70(v98, v73 + v72 + *(v74 + 72) * v71);
      }

      sub_1ABD51F38(v102);
    }
  }

  sub_1ABAA2168();

  v77 = v104;
  v78 = *(v104 + 16);
  if (v78)
  {
    v119 = MEMORY[0x1E69E7CC0];

    sub_1ABADDBD4(0, v78, 0);
    v79 = v119;
    sub_1ABA935AC();
    v81 = v77 + v80;
    v83 = *(v82 + 72);
    do
    {
      v84 = v105;
      sub_1ABD51ED4(v81, v105);
      v86 = *v84;
      v85 = v84[1];

      sub_1ABD51F38(v84);
      v119 = v79;
      v88 = *(v79 + 16);
      v87 = *(v79 + 24);
      if (v88 >= v87 >> 1)
      {
        v90 = sub_1ABA7BBEC(v87);
        sub_1ABADDBD4(v90, v88 + 1, 1);
        v79 = v119;
      }

      *(v79 + 16) = v88 + 1;
      v89 = v79 + 16 * v88;
      *(v89 + 32) = v86;
      *(v89 + 40) = v85;
      v81 += v83;
      --v78;
    }

    while (v78);
    v119 = v79;
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAAA5C0();
    v91 = sub_1ABF23B54();
    v93 = v92;

    v119 = 40;
    v120 = 0xE100000000000000;
    MEMORY[0x1AC5A9410](v91, v93);

    sub_1ABA97C60();
    v94 = v104;

    v95 = v100;
    sub_1ABD63788(v119, v120, v94, MEMORY[0x1E69E7CC0], v100);
    v96 = 0;
  }

  else
  {

    v96 = 1;
    v95 = v100;
  }

  sub_1ABA7B9B4(v95, v96, 1, v106);
  sub_1ABA7BC1C();
}

uint64_t sub_1ABD5E5B4()
{
  sub_1ABD4FAC8();
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v1 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), &v9);
    sub_1ABAA4F20(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1ABD5E65C()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = 0;
  v4 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v78 - v6;
  v82 = v0;
  sub_1ABAA15AC();
  v91 = v7;
  v89 = 279;
  v93 = 3481;
  v92 = 4281;

  v9 = 32;
  v87 = v2;
  v88 = 0;
  while (1)
  {
    if (v91 == v3)
    {

      v79 = 0;
      v24 = 0;
      goto LABEL_24;
    }

    if (v3 >= *(v8 + 16))
    {
      goto LABEL_87;
    }

    v10 = sub_1ABA7F5F0(v8 + v9);
    *(v101 + 1) = v11;
    sub_1ABA960E0(v10, v12, v13);
    if (v89 < 94)
    {
      break;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_97;
    }

    if (*(_Records_GDEntityPredicate_records + 280) >= v93)
    {
      goto LABEL_89;
    }

    if (*(_Records_GDEntityPredicate_records + 281) >= v92)
    {
      goto LABEL_90;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_98;
    }

    v15 = v14;
    v16 = v100[0];
    v17 = v100[1];
    sub_1ABD1927C(v100, &v97);

    v18 = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_99;
    }

    v20 = v18;
    v21 = v19;
    v86 = v101[0];
    v90 = v101[1];
    LODWORD(v85) = LOBYTE(v101[2]);
    sub_1ABF23DD4();
    v22 = v16 == v20 && v17 == v21;
    if (v22)
    {

LABEL_18:

      v25 = v86;
      v2 = v87;
      v26 = v90;
      v27 = v85;
      sub_1ABD5A830(v86, v90, v85);
      sub_1ABB6DBB8(v100);
      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = v25;
      }

      v79 = v28;
      if (v27)
      {
        v24 = 0;
      }

      else
      {
        v24 = v26;
      }

LABEL_24:
      v29 = v82;
      v30 = *(v82 + 128);
      v31 = *(v30 + 16);
      v84 = v30 + 32;
      v85 = v31;
      v86 = v30;

      v32 = 0;
      v80 = MEMORY[0x1E69E7CC0];
      v83 = v24;
      while (1)
      {
        if (v32 == v85)
        {

          sub_1ABA7BC1C();
          return;
        }

        if (v32 >= *(v86 + 16))
        {
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v33 = sub_1ABA7F5F0(v84 + (v32 << 6));
        *(v101 + 1) = v34;
        sub_1ABA960E0(v33, v35, v36);
        if (v89 < 94)
        {
          goto LABEL_84;
        }

        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_94;
        }

        if (*(_Records_GDEntityPredicate_records + 280) >= v93)
        {
          goto LABEL_85;
        }

        if (*(_Records_GDEntityPredicate_records + 281) >= v92)
        {
          goto LABEL_86;
        }

        v90 = v38;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_95;
        }

        v39 = sub_1ABAA235C(v37);
        sub_1ABD1927C(v39, &v97);
        sub_1ABAFF1DC(v102, &v97);
        sub_1ABF23DD4();
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_96;
        }

        v41 = v40;
        ++v90;
        v42 = v102[1];
        sub_1ABF23DD4();
        sub_1ABA82EB0();
        if (v22 && v42 == v41)
        {
          sub_1ABAE4478(v102);

LABEL_40:
          v45 = *(v29 + 128);
          v91 = *(v45 + 16);

          v46 = 0;
          for (i = 32; ; i += 64)
          {
            if (v91 == v46)
            {

              v29 = v82;
              v2 = v87;
              goto LABEL_60;
            }

            if (v46 >= *(v45 + 16))
            {
              break;
            }

            v48 = sub_1ABA7F5F0(v45 + i);
            *(v99 + 9) = v49;
            v98 = v50;
            v99[0] = v51;
            v97 = v48;
            if (!_Records_GDEntityPredicate_records)
            {
              goto LABEL_91;
            }

            if (*(_Records_GDEntityPredicate_records + 280) >= v93 || *(_Records_GDEntityPredicate_records + 281) >= v92)
            {
              goto LABEL_82;
            }

            if (!_Records_GDEntityPredicate_predicateIds)
            {
              goto LABEL_92;
            }

            v53 = v97.n128_u64[1];
            sub_1ABD1927C(&v97, &v94);

            sub_1ABF23DD4();
            if (!_Records_GDEntityPredicate_labels)
            {
              goto LABEL_93;
            }

            v55 = v54;
            sub_1ABF23DD4();
            sub_1ABA82EB0();
            if (v22 && v53 == v55)
            {
              sub_1ABB6DBB8(&v97);
            }

            else
            {
              sub_1ABAA5934();
              v57 = sub_1ABF25054();
              sub_1ABB6DBB8(&v97);

              if ((v57 & 1) == 0)
              {

                sub_1ABB6DBB8(v100);
                v29 = v82;
                v2 = v87;
                goto LABEL_71;
              }
            }

            ++v46;
          }

          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        sub_1ABAA5934();
        v44 = sub_1ABF25054();
        sub_1ABAE4478(v102);

        if (v44)
        {
          goto LABEL_40;
        }

LABEL_60:
        if (*(v2 + 24))
        {
          sub_1ABA93E64(v2, &v94);
        }

        else
        {
          v58 = *(v2 + 16);
          v94 = *v2;
          v95 = v58;
          v96 = *(v2 + 32);
        }

        if (*(&v95 + 1))
        {
          sub_1ABA946C0(&v94, &v97);
          sub_1ABA93E20(&v97, *(&v98 + 1));
          sub_1ABAA31A8();
          MEMORY[0x1EEE9AC00](v59);
          sub_1ABA7E918();
          *(v60 - 16) = v29;
          *(v60 - 8) = v100;
          sub_1ABAA1A28();
          v61 = v88;
          v62 = sub_1ABF23FE4();
          v88 = v61;
          if ((v62 & 1) == 0)
          {
            sub_1ABB6DBB8(v100);
            sub_1ABA84B54(&v97);
            goto LABEL_71;
          }

          sub_1ABA84B54(&v97);
        }

        *(&v95 + 1) = &type metadata for Subfact;
        v96 = &protocol witness table for Subfact;
        sub_1ABA97C54();
        *&v94 = swift_allocObject();
        sub_1ABA83A24(v94);
        sub_1ABD1927C(v100, &v97);

        v63 = v81;
        sub_1ABA95340();
        sub_1ABD51B4C();

        sub_1ABA84B54(&v94);
        v64 = type metadata accessor for K2TTextualization(0);
        if (sub_1ABA7E1E0(v63, 1, v64) == 1)
        {
          sub_1ABB6DBB8(v100);
          sub_1ABD5FB34(v63);
LABEL_71:
          v32 = v90;
          continue;
        }

        v65 = *v63;
        v66 = v63[1];

        sub_1ABD51F38(v63);
        v67 = v83;
        if (v83)
        {
          v97.n128_u64[0] = v65;
          v97.n128_u64[1] = v66;

          MEMORY[0x1AC5A9410](10272, 0xE200000000000000);

          sub_1ABB6DBB8(v100);
          MEMORY[0x1AC5A9410](v79, v67);

          sub_1ABA97C60();
          v66 = v97.n128_u64[1];
          v65 = v97.n128_u64[0];
        }

        else
        {
          v68 = sub_1ABB6DBB8(v100);
        }

        v97.n128_u64[0] = v65;
        v97.n128_u64[1] = v66;
        MEMORY[0x1EEE9AC00](v68);
        sub_1ABA7E918();
        *(v69 - 16) = &v97;
        v70 = v88;
        v71 = sub_1ABB2F764();
        v88 = v70;
        if (v71)
        {

          v32 = v90;
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7C494();
            sub_1ABAAA4F4();
            v80 = v76;
          }

          v73 = *(v80 + 16);
          v72 = *(v80 + 24);
          if (v73 >= v72 >> 1)
          {
            sub_1ABA7BBEC(v72);
            sub_1ABAAA4F4();
            v80 = v77;
          }

          v74 = v80;
          *(v80 + 16) = v73 + 1;
          v75 = v74 + 16 * v73;
          *(v75 + 32) = v65;
          *(v75 + 40) = v66;
          v32 = v90;
        }
      }
    }

    v23 = sub_1ABF25054();

    if (v23)
    {
      goto LABEL_18;
    }

    sub_1ABB6DBB8(v100);
    v9 += 64;
    ++v3;
    v2 = v87;
    v8 = v15;
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
}

uint64_t sub_1ABD5EED4(void *a1, void *a2, void *a3)
{
  if (*a1 != a2[14])
  {
    return 0;
  }

  v6 = a1[6];
  v5 = a1[7];
  v7 = a1[8];
  v8 = a1[1] == a2[24] && a1[2] == a2[25];
  if (!v8 && (sub_1ABF25054() & 1) == 0 || v6 != a2[15])
  {
    return 0;
  }

  if (v5 == *a3 && v7 == a3[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

void sub_1ABD5EF90()
{
  sub_1ABA7E2A8();
  v105 = v1;
  v2 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8147C(&v101 - v4);
  v5 = type metadata accessor for K2TTextualization(0);
  v6 = sub_1ABA8E5AC(v5, v129);
  v103 = v7;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8147C(&v101 - v10);
  v119 = v0;
  sub_1ABAA15AC();
  v117 = v11;
  v118 = 279;
  v121 = 3481;
  v120 = 4281;

  v13 = 0;
  v14 = 32;
  for (i = v12; ; v12 = i)
  {
    if (v117 == v13)
    {

      v101 = 0;
      v104 = 0;
      goto LABEL_25;
    }

    v15 = *(v12 + 16);
    if (v13 >= v15)
    {
      goto LABEL_91;
    }

    sub_1ABA7DB18(v12 + v14);
    sub_1ABAA1158();
    if (v15 < 94)
    {
      goto LABEL_92;
    }

    v15 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_101;
    }

    v16 = *(_Records_GDEntityPredicate_records + 280);
    sub_1ABAB5738();
    if (v16 >= v17)
    {
      goto LABEL_93;
    }

    v18 = *(v15 + 2248);
    sub_1ABA8A034();
    if (v18 >= v15)
    {
      goto LABEL_94;
    }

    v15 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_102;
    }

    v19 = v125;
    v20 = v126;
    sub_1ABA97898();

    v21 = sub_1ABF23DD4();
    v15 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_103;
    }

    v23 = v21;
    v24 = v22;
    v25 = v129[1];
    v26 = v129[2];
    LODWORD(v115) = v130;
    sub_1ABF23DD4();
    v27 = v19 == v23 && v20 == v24;
    if (v27)
    {
      break;
    }

    v28 = sub_1ABF25054();

    if (v28)
    {
      goto LABEL_18;
    }

    sub_1ABB6DBB8(&v125);
    v14 += 64;
    ++v13;
  }

LABEL_18:

  v29 = v25;
  v30 = v25;
  v31 = v115;
  sub_1ABD5A830(v30, v26, v115);
  sub_1ABB6DBB8(&v125);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  v101 = v32;
  if (v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v26;
  }

  v104 = v33;
LABEL_25:
  sub_1ABAA3CF0();
  v125 = *(v34 + 128);
  swift_bridgeObjectRetain_n();
  sub_1ABD5BF1C(&v125);
  v106 = 0;

  v35 = 0;
  v114 = *(v125 + 16);
  v115 = v125;
  v113 = v125 + 32;
  v108 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_26:
    if (v35 == v114)
    {

      if (*(v108 + 16))
      {
        sub_1ABAA3CF0();
        v125 = sub_1ABF23C84();
        v126 = v79;
        if (v104)
        {
          *&v123[0] = 10272;
          *(&v123[0] + 1) = 0xE200000000000000;
          MEMORY[0x1AC5A9410](v101, v104);

          sub_1ABA97C60();
          MEMORY[0x1AC5A9410](*&v123[0], *(&v123[0] + 1));
        }

        v51 = v108;
        v80 = *(v108 + 16);
        if (!v80)
        {
          goto LABEL_84;
        }

        *&v123[0] = MEMORY[0x1E69E7CC0];
        v81 = v108;

        sub_1ABADDBD4(0, v80, 0);
        v82 = *&v123[0];
        sub_1ABA935AC();
        v84 = v81 + v83;
        v86 = *(v85 + 72);
        do
        {
          v87 = v109;
          sub_1ABD51ED4(v84, v109);
          v89 = *v87;
          v88 = v87[1];

          sub_1ABD51F38(v87);
          *&v123[0] = v82;
          v91 = *(v82 + 16);
          v90 = *(v82 + 24);
          if (v91 >= v90 >> 1)
          {
            v93 = sub_1ABA7BBEC(v90);
            sub_1ABADDBD4(v93, v91 + 1, 1);
            v82 = *&v123[0];
          }

          *(v82 + 16) = v91 + 1;
          v92 = v82 + 16 * v91;
          *(v92 + 32) = v89;
          *(v92 + 40) = v88;
          v84 += v86;
          --v80;
        }

        while (v80);
        v94 = v108;
LABEL_85:
        *&v123[0] = v82;
        sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
        sub_1ABAAA5C0();
        v97 = sub_1ABF23B54();
        v99 = v98;

        *&v123[0] = 40;
        *(&v123[0] + 1) = 0xE100000000000000;
        MEMORY[0x1AC5A9410](v125, v126);

        MEMORY[0x1AC5A9410](8250, 0xE200000000000000);
        MEMORY[0x1AC5A9410](v97, v99);

        sub_1ABA97C60();

        v100 = v105;
        sub_1ABD63788(*&v123[0], *(&v123[0] + 1), v94, MEMORY[0x1E69E7CC0], v105);
        v95 = v100;
        v96 = 0;
      }

      else
      {

        v95 = v105;
        v96 = 1;
      }

      sub_1ABA7B9B4(v95, v96, 1, v111);
      sub_1ABA7BC1C();
      return;
    }

    v15 = *(v115 + 16);
    if (v35 >= v15)
    {
      break;
    }

    sub_1ABA7DB18(v113 + (v35 << 6));
    sub_1ABAA1158();
    if (v15 < 94)
    {
      goto LABEL_88;
    }

    v15 = _Records_GDEntityPredicate_records;
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_98;
    }

    v36 = *(_Records_GDEntityPredicate_records + 280);
    sub_1ABAB5738();
    if (v36 >= v37)
    {
      goto LABEL_89;
    }

    v38 = *(v15 + 2248);
    sub_1ABA8A034();
    if (v38 >= v15)
    {
      goto LABEL_90;
    }

    v15 = &_Records_GDEntityPredicate_predicateIds;
    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_99;
    }

    v40 = v125;
    v39 = v126;
    v41 = v128;
    v112 = v127;
    sub_1ABD1927C(&v125, v123);

    v42 = sub_1ABF23DD4();
    v15 = _Records_GDEntityPredicate_labels;
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_100;
    }

    v44 = v42;
    v45 = v43;
    ++v35;
    sub_1ABF23DD4();
    if (v40 == v44 && v39 == v45)
    {

LABEL_41:
      i = v41;
      v117 = v35;
      sub_1ABAA3CF0();
      v49 = *(v48 + 128);
      v50 = *(v49 + 16);

      v52 = 0;
      for (j = 32; ; j += 64)
      {
        if (v50 == v52)
        {

          sub_1ABA958E4();
          v41 = i;
          goto LABEL_61;
        }

        if (v52 >= *(v49 + 16))
        {
          break;
        }

        v54 = sub_1ABA7F5F0(v49 + j);
        *&v124[9] = v55;
        v123[1] = v56;
        *v124 = v57;
        v123[0] = v54;
        v15 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_95;
        }

        if (*(_Records_GDEntityPredicate_records + 280) >= v121 || *(_Records_GDEntityPredicate_records + 281) >= v120)
        {
          goto LABEL_83;
        }

        v15 = &_Records_GDEntityPredicate_predicateIds;
        if (!_Records_GDEntityPredicate_predicateIds)
        {
          goto LABEL_96;
        }

        v59 = v123[0];
        sub_1ABD1927C(v123, v122);

        v60 = sub_1ABF23DD4();
        v15 = _Records_GDEntityPredicate_labels;
        if (!_Records_GDEntityPredicate_labels)
        {
          goto LABEL_97;
        }

        v35 = v60;
        v62 = v61;
        sub_1ABF23DD4();
        if (v59 == v35 && *(&v59 + 1) == v62)
        {
          sub_1ABB6DBB8(v123);
        }

        else
        {
          v35 = sub_1ABAB532C(v59);
          sub_1ABB6DBB8(v123);

          if ((v35 & 1) == 0)
          {

            sub_1ABB6DBB8(&v125);
            sub_1ABA958E4();
            goto LABEL_26;
          }
        }

        ++v52;
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      v94 = v51;

      v82 = MEMORY[0x1E69E7CC0];
      goto LABEL_85;
    }

    sub_1ABA8B14C();
    v47 = sub_1ABF25054();

    if (v47)
    {
      goto LABEL_41;
    }

LABEL_61:
    v122[3] = &type metadata for Subfact;
    v122[4] = &protocol witness table for Subfact;
    sub_1ABA97C54();
    v122[0] = swift_allocObject();
    sub_1ABA81984(v122[0]);
    sub_1ABD1927C(&v125, v123);
    v64 = v110;
    sub_1ABD515A4();
    sub_1ABA84B54(v122);
    sub_1ABA886B8(v64, 1, v129);
    if (v27)
    {
      sub_1ABB6DBB8(&v125);
      sub_1ABD5FB34(v64);
    }

    else
    {
      v65 = v107;
      sub_1ABD51E70(v64, v107);
      v66 = v65[1];
      *&v123[0] = *v65;
      *(&v123[0] + 1) = v66;

      MEMORY[0x1AC5A9410](10272, 0xE200000000000000);

      MEMORY[0x1AC5A9410](v112, v41);
      sub_1ABB6DBB8(&v125);

      sub_1ABA97C60();

      v68 = *(&v123[0] + 1);
      *v65 = *&v123[0];
      v65[1] = v68;
      MEMORY[0x1EEE9AC00](v67);
      sub_1ABA7E918();
      *(v69 - 16) = v65;
      v70 = v106;
      v72 = sub_1ABB2FA20(sub_1ABD5A95C, v71, v108);
      v106 = v70;
      if (!v72)
      {
        sub_1ABD51ED4(v65, v102);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v73 = v108;
        }

        else
        {
          sub_1ABA7C494();
          sub_1ABADB500();
        }

        v75 = *(v73 + 16);
        v74 = *(v73 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_1ABA7BBEC(v74);
          sub_1ABADB500();
        }

        *(v73 + 16) = v75 + 1;
        sub_1ABA935AC();
        v108 = v76;
        sub_1ABD51E70(v102, v76 + v77 + *(v78 + 72) * v75);
      }

      sub_1ABD51F38(v107);
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);

  __break(1u);
}

void sub_1ABD5FAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, void *a7)
{
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(a4 + 32);
  v12 = *a4;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = a6[1];
  v11[0] = *a6;
  v11[1] = v10;
  sub_1ABD5BF88(a1, a2, a3, &v12, a5, v11, a7);
}

uint64_t sub_1ABD5FB34(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D90D0, &unk_1ABF5E890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABD5FB9C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABD5FD8C(v7, v8, a1, v4);
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
    return sub_1ABD5FC90(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABD5FC90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + (a3 << 6);
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *v10;
        v11 = (v10 - 64);
        if (*v10 == *(v10 - 64) && *(v10 + 8) == *(v10 - 56))
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 16);
        *v18 = *(v10 + 32);
        *&v18[9] = *(v10 + 41);
        v14 = *v10;
        v15 = *(v10 - 48);
        *v10 = *v11;
        *(v10 + 16) = v15;
        v16 = *(v10 - 16);
        *(v10 + 32) = *(v10 - 32);
        *(v10 + 48) = v16;
        *(v10 - 23) = *&v18[9];
        *(v10 - 48) = v13;
        *(v10 - 32) = *v18;
        v10 -= 64;
        *v11 = v14;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 64;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABD5FD8C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = (*a3 + (i << 6));
        v10 = (*a3 + (v8 << 6));
        if (*v9 == *v10 && v9[1] == v10[1])
        {
          v12 = 0;
        }

        else
        {
          v12 = sub_1ABF25054();
        }

        v13 = v8 << 6;
        v14 = v10 + 17;
        for (i = v8 + 2; i < v5; ++i)
        {
          if (*(v14 - 1) == *(v14 - 9) && *v14 == *(v14 - 8))
          {
            if (v12)
            {
              goto LABEL_21;
            }
          }

          else if ((v12 ^ sub_1ABF25054()))
          {
            break;
          }

          v14 += 8;
        }

        if ((v12 & 1) == 0)
        {
          goto LABEL_34;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_128;
        }

        if (v8 < i)
        {
          v16 = (i << 6) - 64;
          v17 = i;
          v18 = v8;
          do
          {
            if (v18 != --v17)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v20 = (v19 + v13);
              v21 = (v19 + v16);
              v88 = *v20;
              v89 = v20[1];
              *v90 = v20[2];
              *&v90[9] = *(v20 + 41);
              v22 = v13 != v16 || v20 >= v21 + 4;
              if (v22)
              {
                v23 = *v21;
                v24 = v21[1];
                v25 = v21[3];
                v20[2] = v21[2];
                v20[3] = v25;
                *v20 = v23;
                v20[1] = v24;
              }

              *v21 = v88;
              v21[1] = v89;
              v21[2] = *v90;
              *(v21 + 41) = *&v90[9];
            }

            ++v18;
            v16 -= 64;
            v13 += 64;
          }

          while (v18 < v17);
        }
      }

LABEL_34:
      v26 = a3[1];
      if (i < v26)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_127;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_129;
          }

          if (v8 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v8 + a4;
          }

          if (v27 < v8)
          {
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
            return;
          }

          if (i != v27)
          {
            v28 = *a3;
            v29 = *a3 + (i << 6);
            v85 = v8;
            v30 = v8 - i;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                v33 = (v32 - 64);
                v34 = *v32 == *(v32 - 64) && *(v32 + 8) == *(v32 - 56);
                if (v34 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_131;
                }

                v35 = *(v32 + 16);
                *v91 = *(v32 + 32);
                *&v91[9] = *(v32 + 41);
                v36 = *v32;
                v37 = *(v32 - 48);
                *v32 = *v33;
                *(v32 + 16) = v37;
                v38 = *(v32 - 16);
                *(v32 + 32) = *(v32 - 32);
                *(v32 + 48) = v38;
                *(v32 - 23) = *&v91[9];
                *(v32 - 48) = v35;
                *(v32 - 32) = *v91;
                v32 -= 64;
                *v33 = v36;
                v22 = __CFADD__(v31++, 1);
              }

              while (!v22);
              ++i;
              v29 += 64;
              --v30;
            }

            while (i != v27);
            i = v27;
            v8 = v85;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_126;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v7 = v81;
      }

      v39 = v7[2];
      v40 = v39 + 1;
      if (v39 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v82;
      }

      v7[2] = v40;
      v41 = v7 + 4;
      v42 = &v7[2 * v39 + 4];
      *v42 = v8;
      v42[1] = i;
      v86 = *a1;
      if (!*a1)
      {
        goto LABEL_134;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v7[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v7[4];
            v47 = v7[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_75:
            if (v49)
            {
              goto LABEL_116;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_119;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_122;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_124;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_97;
            }

            goto LABEL_90;
          }

          if (v40 < 2)
          {
            goto LABEL_118;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_90:
          if (v64)
          {
            goto LABEL_121;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_123;
          }

          if (v71 < v63)
          {
            goto LABEL_104;
          }

LABEL_97:
          if (v43 - 1 >= v40)
          {
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
            goto LABEL_130;
          }

          if (!*a3)
          {
            goto LABEL_132;
          }

          v75 = v7;
          v76 = &v41[2 * v43 - 2];
          v77 = *v76;
          v78 = &v41[2 * v43];
          v79 = v78[1];
          sub_1ABD6041C((*a3 + (*v76 << 6)), (*a3 + (*v78 << 6)), (*a3 + (v79 << 6)), v86);
          if (v4)
          {
            goto LABEL_109;
          }

          if (v79 < v77)
          {
            goto LABEL_111;
          }

          v80 = v75[2];
          if (v43 > v80)
          {
            goto LABEL_112;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v43 >= v80)
          {
            goto LABEL_113;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v78 + 2, 16 * (v80 - 1 - v43));
          v7 = v75;
          v75[2] = v80 - 1;
          if (v80 <= 2)
          {
            goto LABEL_104;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_114;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_115;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_117;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_120;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_125;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_97;
        }

        goto LABEL_75;
      }

LABEL_104:
      v5 = a3[1];
      if (i >= v5)
      {
        v92 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_135;
  }

  sub_1ABD602F0(&v92, *a1, a3);
LABEL_109:
}

uint64_t sub_1ABD602F0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1ABD6041C((*a3 + (*v9 << 6)), (*a3 + (*v11 << 6)), (*a3 + (v12 << 6)), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1ABD6041C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 64;
  v9 = (a3 - a2) / 64;
  if (v8 < v9)
  {
    sub_1ABADD3F8(a1, (a2 - a1) / 64, a4);
    v10 = &v4[64 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 64;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 64;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 64;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 3);
    *(v7 + 2) = *(v13 + 2);
    *(v7 + 3) = v16;
    *v7 = v14;
    *(v7 + 1) = v15;
    goto LABEL_17;
  }

  sub_1ABADD3F8(a2, (a3 - a2) / 64, a4);
  v10 = &v4[64 * v9];
LABEL_19:
  v17 = v6 - 64;
  for (v5 -= 64; v10 > v4 && v6 > v7; v5 -= 64)
  {
    v19 = *(v10 - 8) == *(v6 - 8) && *(v10 - 7) == *(v6 - 7);
    if (!v19 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 64 == v6;
      v6 -= 64;
      if (!v12)
      {
        v23 = *v17;
        v24 = *(v17 + 1);
        v25 = *(v17 + 3);
        *(v5 + 2) = *(v17 + 2);
        *(v5 + 3) = v25;
        *v5 = v23;
        *(v5 + 1) = v24;
        v6 = v17;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 64)
    {
      v20 = *(v10 - 4);
      v21 = *(v10 - 3);
      v22 = *(v10 - 1);
      *(v5 + 2) = *(v10 - 2);
      *(v5 + 3) = v22;
      *v5 = v20;
      *(v5 + 1) = v21;
    }

    v10 -= 64;
  }

LABEL_36:
  if (v6 != v4 || v6 >= &v4[64 * ((v10 - v4) / 64)])
  {
    v27 = sub_1ABA8B14C();
    memmove(v27, v28, v29);
  }

  return 1;
}

void *sub_1ABD605E0(void *result, void *a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v3 = *result;
  v4 = result[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_45:
    v19 = a2 + 4;
    v20 = a2[2] + 1;
    while (1)
    {
      v21 = --v20 != 0;
      if (!v20)
      {
        return v21;
      }

      sub_1ABA93E64(v19, &v100);
      v22 = v102;
      v23 = v103;
      a2 = sub_1ABA93E20(&v100, v102);
      result = (*(v23 + 24))(&v98, v22, v23);
      if (!_Records_GDEntityPredicate_records)
      {
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      if (*(_Records_GDEntityPredicate_records + 175) >= 3481)
      {
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (*(_Records_GDEntityPredicate_records + 176) >= 4281)
      {
        goto LABEL_101;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_158;
      }

      v25 = v98;
      v24 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_159;
      }

      v27 = result;
      v28 = v26;
      sub_1ABF23DD4();
      if (v25 == v27 && v24 == v28)
      {
LABEL_150:

        sub_1ABA84B54(&v100);
        return v21;
      }

      v19 += 5;
      v30 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v30)
      {
        return v21;
      }
    }
  }

  v6 = sub_1ABF25054();

  if (v6)
  {
    goto LABEL_45;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1884], *(_Records_GDEntityPredicate_records + 472), *(_Records_GDEntityPredicate_records + 473), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_59:
    v31 = a2 + 4;
    v32 = a2[2] + 1;
    while (1)
    {
      v21 = --v32 != 0;
      if (!v32)
      {
        return v21;
      }

      sub_1ABA93E64(v31, &v100);
      v33 = v102;
      v34 = v103;
      a2 = sub_1ABA93E20(&v100, v102);
      result = (*(v34 + 24))(&v98, v33, v34);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_162;
      }

      if (*(_Records_GDEntityPredicate_records + 220) >= 3481)
      {
        __break(1u);
LABEL_117:
        __break(1u);
        __break(1u);
        goto LABEL_118;
      }

      if (*(_Records_GDEntityPredicate_records + 221) >= 4281)
      {
        goto LABEL_117;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_164;
      }

      v36 = v98;
      v35 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_163;
      }

      v38 = result;
      v39 = v37;
      sub_1ABF23DD4();
      if (v36 == v38 && v35 == v39)
      {
        goto LABEL_150;
      }

      v31 += 5;
      v41 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v41)
      {
        return v21;
      }
    }
  }

  v8 = sub_1ABF25054();

  if (v8)
  {
    goto LABEL_59;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_73:
    v42 = a2 + 4;
    v43 = a2[2] + 1;
    while (1)
    {
      v44 = --v43 != 0;
      if (!v43)
      {
        return v44;
      }

      sub_1ABA93E64(v42, &v100);
      v45 = v102;
      v46 = v103;
      a2 = sub_1ABA93E20(&v100, v102);
      result = (*(v46 + 24))(&v98, v45, v46);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_168;
      }

      if (*(_Records_GDEntityPredicate_records + 469) >= 3481)
      {
        __break(1u);
LABEL_135:
        __break(1u);
        __break(1u);
        goto LABEL_136;
      }

      if (*(_Records_GDEntityPredicate_records + 470) >= 4281)
      {
        goto LABEL_135;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_169;
      }

      v48 = v98;
      v47 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_170;
      }

      v50 = result;
      v51 = v49;
      sub_1ABF23DD4();
      if (v48 == v50 && v47 == v51)
      {
LABEL_132:

        sub_1ABA84B54(&v100);
        return v44;
      }

      v42 += 5;
      v53 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v53)
      {
        return v44;
      }
    }
  }

  v10 = sub_1ABF25054();

  if (v10)
  {
    goto LABEL_73;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2160], *(_Records_GDEntityPredicate_records + 541), *(_Records_GDEntityPredicate_records + 542), &v100);
  if (v100 == v3 && v101 == v4)
  {

LABEL_87:
    v54 = a2 + 4;
    v55 = a2[2] + 1;
    while (1)
    {
      v44 = --v55 != 0;
      if (!v55)
      {
        return v44;
      }

      sub_1ABA93E64(v54, &v100);
      v56 = v102;
      v57 = v103;
      sub_1ABA93E20(&v100, v102);
      result = (*(v57 + 24))(&v98, v56, v57);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_172;
      }

      if (*(_Records_GDEntityPredicate_records + 538) >= 3481)
      {
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        __break(1u);
        goto LABEL_157;
      }

      if (*(_Records_GDEntityPredicate_records + 539) >= 4281)
      {
        goto LABEL_154;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_174;
      }

      v59 = v98;
      v58 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_173;
      }

      v61 = result;
      v62 = v60;
      sub_1ABF23DD4();
      if (v59 == v61 && v58 == v62)
      {
        goto LABEL_132;
      }

      v54 += 5;
      v64 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v64)
      {
        return v44;
      }
    }
  }

  v12 = sub_1ABF25054();

  if (v12)
  {
    goto LABEL_87;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), &v100);
  if (v100 == v3 && v101 == v4)
  {
LABEL_102:

LABEL_103:
    v65 = a2 + 4;
    v66 = a2[2] + 1;
    while (1)
    {
      v44 = --v66 != 0;
      if (!v66)
      {
        return v44;
      }

      sub_1ABA93E64(v65, &v100);
      v67 = v102;
      v68 = v103;
      sub_1ABA93E20(&v100, v102);
      result = (*(v68 + 24))(&v98, v67, v68);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_176;
      }

      if (*(_Records_GDEntityPredicate_records + 7) >= 3481)
      {
        goto LABEL_155;
      }

      if (*(_Records_GDEntityPredicate_records + 8) >= 4281)
      {
        goto LABEL_156;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_178;
      }

      v70 = v98;
      v69 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_177;
      }

      v72 = result;
      v73 = v71;
      sub_1ABF23DD4();
      if (v70 == v72 && v69 == v73)
      {
        goto LABEL_132;
      }

      v65 += 5;
      v75 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
      if (v75)
      {
        return v44;
      }
    }
  }

  v14 = sub_1ABF25054();

  if (v14)
  {
    goto LABEL_103;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), &v100);
  if (v100 == v3 && v101 == v4)
  {
LABEL_118:

LABEL_119:
    v76 = a2 + 4;
    v77 = a2[2] + 1;
    do
    {
      v44 = --v77 != 0;
      if (!v77)
      {
        break;
      }

      sub_1ABA93E64(v76, &v100);
      v78 = v102;
      v79 = v103;
      sub_1ABA93E20(&v100, v102);
      result = (*(v79 + 24))(&v98, v78, v79);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_180;
      }

      if (*(_Records_GDEntityPredicate_records + 388) >= 3481)
      {
        goto LABEL_160;
      }

      if (*(_Records_GDEntityPredicate_records + 389) >= 4281)
      {
        goto LABEL_161;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_182;
      }

      v81 = v98;
      v80 = v99;
      result = sub_1ABF23DD4();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_181;
      }

      v83 = result;
      v84 = v82;
      sub_1ABF23DD4();
      if (v81 == v83 && v80 == v84)
      {
        goto LABEL_132;
      }

      v76 += 5;
      v86 = sub_1ABF25054();

      sub_1ABA84B54(&v100);
    }

    while ((v86 & 1) == 0);
    return v44;
  }

  v16 = sub_1ABF25054();

  if (v16)
  {
    goto LABEL_119;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_188:
    __break(1u);
    return result;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1848], *(_Records_GDEntityPredicate_records + 463), *(_Records_GDEntityPredicate_records + 464), &v100);
  if (v100 == v3 && v101 == v4)
  {
LABEL_136:
  }

  else
  {
    v18 = sub_1ABF25054();

    result = 0;
    if ((v18 & 1) == 0)
    {
      return result;
    }
  }

  v87 = a2 + 4;
  v88 = a2[2] + 1;
  do
  {
    v21 = --v88 != 0;
    if (!v88)
    {
      break;
    }

    sub_1ABA93E64(v87, &v100);
    v89 = v102;
    v90 = v103;
    sub_1ABA93E20(&v100, v102);
    result = (*(v90 + 24))(&v98, v89, v90);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_184;
    }

    if (*(_Records_GDEntityPredicate_records + 334) >= 3481)
    {
      goto LABEL_165;
    }

    if (*(_Records_GDEntityPredicate_records + 335) >= 4281)
    {
      goto LABEL_166;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_186;
    }

    v92 = v98;
    v91 = v99;
    result = sub_1ABF23DD4();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_185;
    }

    v94 = result;
    v95 = v93;
    sub_1ABF23DD4();
    if (v92 == v94 && v91 == v95)
    {
      goto LABEL_150;
    }

    v87 += 5;
    v97 = sub_1ABF25054();

    sub_1ABA84B54(&v100);
  }

  while ((v97 & 1) == 0);
  return v21;
}

void sub_1ABD61374(uint64_t a1, uint64_t a2)
{
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v5 = *(a1 + 8);
  v6 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), v230);
  v14 = sub_1ABA94B50(v6, v7, v8, v9, v10, v11, v12, v13, v184, v189, v203, v208, v213, v218, v223, v230[0]);
  v15 = v15 && v2 == v5;
  if (v15)
  {

LABEL_45:
    sub_1ABAA4A64();
    v196 = 3481;
    v86 = v85 + 1;
    while (--v86)
    {
      sub_1ABA7ADA0(v77, v78, v79, v80, v81, v82, v83, v84, v185, v196, v204, v209, v214, v219);
      v87 = v232;
      sub_1ABA93E20(v230, v231);
      v88 = sub_1ABA8F6AC();
      v89(v88);
      if (!_Records_GDEntityPredicate_records)
      {
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      sub_1ABAA4160();
      if (v91 == v92)
      {
        __break(1u);
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      if (*(v90 + 1408) >= 4281)
      {
        goto LABEL_104;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_160;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_161;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v87)
      {
LABEL_154:

        sub_1ABA84B54(v230);
        return;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      v77 = sub_1ABA84B54(v230);
      if (v3)
      {
        return;
      }
    }

    return;
  }

  sub_1ABA90228(v14);
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_45;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v16 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1884], *(_Records_GDEntityPredicate_records + 472), *(_Records_GDEntityPredicate_records + 473), v230);
  v24 = sub_1ABA94B50(v16, v17, v18, v19, v20, v21, v22, v23, v185, v190, v204, v209, v214, v219, v224, v230[0]);
  if (v15 && v2 == v5)
  {

LABEL_60:
    sub_1ABAA4A64();
    v197 = 3481;
    v103 = v102 + 1;
    while (--v103)
    {
      sub_1ABA7ADA0(v94, v95, v96, v97, v98, v99, v100, v101, v186, v197, v205, v210, v215, v220);
      v104 = v232;
      sub_1ABA93E20(v230, v231);
      v105 = sub_1ABA8F6AC();
      v106(v105);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_164;
      }

      sub_1ABAA4160();
      if (v91 == v92)
      {
        __break(1u);
LABEL_120:
        __break(1u);
        __break(1u);
        goto LABEL_121;
      }

      if (*(v107 + 1768) >= 4281)
      {
        goto LABEL_120;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_166;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_165;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v104)
      {
        goto LABEL_154;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      v94 = sub_1ABA84B54(v230);
      if (v3)
      {
        return;
      }
    }

    return;
  }

  sub_1ABA90228(v24);
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_60;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v26 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), v230);
  v34 = sub_1ABA94B50(v26, v27, v28, v29, v30, v31, v32, v33, v186, v191, v205, v210, v215, v220, v225, v230[0]);
  if (v15 && v2 == v5)
  {

LABEL_75:
    sub_1ABAA4A64();
    v198 = 3481;
    v110 = v109 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v110)
      {
        return;
      }

      sub_1ABA7ADA0(v111, v112, v113, v114, v115, v116, v117, v118, v187, v198, v206, v211, v216, v221);
      v119 = v232;
      sub_1ABA93E20(v230, v231);
      v120 = sub_1ABA8F6AC();
      v121(v120);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_170;
      }

      sub_1ABAA4160();
      if (v91 == v92)
      {
        __break(1u);
LABEL_138:
        __break(1u);
        __break(1u);
        goto LABEL_139;
      }

      if (*(v122 + 3760) >= 4281)
      {
        goto LABEL_138;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_171;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_172;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v119)
      {
LABEL_136:

        sub_1ABA84B54(v230);
        return;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v230);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228(v34);
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_75;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
    goto LABEL_185;
  }

  v36 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2160], *(_Records_GDEntityPredicate_records + 541), *(_Records_GDEntityPredicate_records + 542), v230);
  v44 = sub_1ABA94B50(v36, v37, v38, v39, v40, v41, v42, v43, v187, v192, v206, v211, v216, v221, v226, v230[0]);
  if (v15 && v2 == v5)
  {

LABEL_90:
    sub_1ABAA4A64();
    v199 = 3481;
    v125 = v124 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v125)
      {
        return;
      }

      sub_1ABA7ADA0(v126, v127, v128, v129, v130, v131, v132, v133, v188, v199, v207, v212, v217, v222);
      v134 = v232;
      sub_1ABA93E20(v230, v231);
      v135 = sub_1ABA8F6AC();
      v136(v135);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_174;
      }

      sub_1ABAA4160();
      if (v91 == v92)
      {
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        __break(1u);
        goto LABEL_159;
      }

      if (*(v137 + 4312) >= 4281)
      {
        goto LABEL_156;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_176;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_175;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v134)
      {
        goto LABEL_136;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v230);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228(v44);
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_90;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
    goto LABEL_189;
  }

  v46 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), v230);
  v54 = sub_1ABA94B50(v46, v47, v48, v49, v50, v51, v52, v53, v188, v193, v207, v212, v217, v222, v227, v230[0]);
  if (v15 && v2 == v5)
  {
LABEL_105:

LABEL_106:
    sub_1ABAA4A64();
    v200 = 3481;
    v140 = v139 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v140)
      {
        return;
      }

      sub_1ABA7ADA0(v141, v142, v143, v144, v145, v146, v147, v148, v185, v200, v204, v209, v214, v219);
      v149 = v232;
      sub_1ABA93E20(v230, v231);
      v150 = sub_1ABA8F6AC();
      v151(v150);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_178;
      }

      sub_1ABAA4160();
      if (v91 == v92)
      {
        goto LABEL_157;
      }

      if (*(v152 + 64) >= 4281)
      {
        goto LABEL_158;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_180;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_179;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v149)
      {
        goto LABEL_136;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v230);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228(v54);
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_106;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_189:
    __break(1u);
    goto LABEL_190;
  }

  v56 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), v230);
  v64 = sub_1ABA94B50(v56, v57, v58, v59, v60, v61, v62, v63, v185, v194, v204, v209, v214, v219, v228, v230[0]);
  if (v15 && v2 == v5)
  {
LABEL_121:

LABEL_122:
    sub_1ABAA4A64();
    v201 = 3481;
    v155 = v154 + 1;
    while (1)
    {
      sub_1ABAA17D8();
      if (!v155)
      {
        return;
      }

      sub_1ABA7ADA0(v156, v157, v158, v159, v160, v161, v162, v163, v186, v201, v205, v210, v215, v220);
      v164 = v232;
      sub_1ABA93E20(v230, v231);
      v165 = sub_1ABA8F6AC();
      v166(v165);
      if (!_Records_GDEntityPredicate_records)
      {
        goto LABEL_182;
      }

      sub_1ABAA4160();
      if (v91 == v92)
      {
        goto LABEL_162;
      }

      if (*(v167 + 3112) >= 4281)
      {
        goto LABEL_163;
      }

      if (!_Records_GDEntityPredicate_predicateIds)
      {
        goto LABEL_184;
      }

      sub_1ABA8E334();
      if (!_Records_GDEntityPredicate_labels)
      {
        goto LABEL_183;
      }

      sub_1ABA84224();
      sub_1ABAA4614();
      if (v15 && a2 == v164)
      {
        goto LABEL_136;
      }

      sub_1ABA80DD0();
      sub_1ABA8288C();

      sub_1ABA84B54(v230);
      if (v3)
      {
        return;
      }
    }
  }

  sub_1ABA90228(v64);
  sub_1ABA7C014();

  if (v3)
  {
    goto LABEL_122;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_190:
    __break(1u);
    return;
  }

  v66 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1848], *(_Records_GDEntityPredicate_records + 463), *(_Records_GDEntityPredicate_records + 464), v230);
  v74 = sub_1ABA94B50(v66, v67, v68, v69, v70, v71, v72, v73, v186, v195, v205, v210, v215, v220, v229, v230[0]);
  if (v15 && v2 == v5)
  {
LABEL_139:
  }

  else
  {
    v76 = sub_1ABA90228(v74);

    if ((v76 & 1) == 0)
    {
      return;
    }
  }

  sub_1ABAA4A64();
  v202 = 3481;
  v178 = v177 + 1;
  do
  {
    if (!--v178)
    {
      break;
    }

    sub_1ABA7ADA0(v169, v170, v171, v172, v173, v174, v175, v176, v187, v202, v206, v211, v216, v221);
    v179 = v232;
    sub_1ABA93E20(v230, v231);
    v180 = sub_1ABA8F6AC();
    v181(v180);
    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_186;
    }

    sub_1ABAA4160();
    if (v91 == v92)
    {
      goto LABEL_167;
    }

    if (*(v182 + 2680) >= 4281)
    {
      goto LABEL_168;
    }

    if (!_Records_GDEntityPredicate_predicateIds)
    {
      goto LABEL_188;
    }

    sub_1ABA8E334();
    if (!_Records_GDEntityPredicate_labels)
    {
      goto LABEL_187;
    }

    sub_1ABA84224();
    sub_1ABAA4614();
    if (v15 && a2 == v179)
    {
      goto LABEL_154;
    }

    sub_1ABA80DD0();
    sub_1ABA8288C();

    v169 = sub_1ABA84B54(v230);
  }

  while ((v3 & 1) == 0);
}

uint64_t sub_1ABD61D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v221 = a3;
  v222 = a4;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_106;
  }

  v7 = *(v4 + 24);
  v8 = *(_Records_GDEntityPredicate_records + 4);
  v9 = *(_Records_GDEntityPredicate_records + 5);
  v10 = _Records_GDEntityPredicate_records[12];

  v11 = sub_1ABA91D48(v10, v8, v9, &v223);
  v19 = sub_1ABA8F6C8(v11, v12, v13, v14, v15, v16, v17, v18, v208, v221, v222, v223);
  v20 = v20 && v8 == v7;
  if (v20)
  {

LABEL_9:

    sub_1ABA936CC();
    v21 = 0x20656D616E207327;
    v22 = 0xEB00000000207369;
LABEL_10:
    MEMORY[0x1AC5A9410](v21, v22);
    v23 = v221;
    v24 = v222;
LABEL_11:
    MEMORY[0x1AC5A9410](v23, v24);
    return v223;
  }

  sub_1ABA7DB38(v19);
  sub_1ABA7F600();

  if (v10)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_109:
    __break(1u);
    __break(1u);
    goto LABEL_110;
  }

  v26 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1056], *(_Records_GDEntityPredicate_records + 265), *(_Records_GDEntityPredicate_records + 266), &v223);
  v34 = sub_1ABA8F6C8(v26, v27, v28, v29, v30, v31, v32, v33, v209, v221, v222, v223);
  if (v20 && v8 == v7)
  {

LABEL_20:

    sub_1ABA80DF8();
    sub_1ABF24AB4();

    v223 = a1;
    v224 = a2;
    v21 = 0x6974696320736920;
    v22 = 0xEF20666F206E657ALL;
    goto LABEL_10;
  }

  sub_1ABA7DB38(v34);
  sub_1ABA7F600();

  if (v10)
  {
    goto LABEL_20;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_109;
  }

  v36 = sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), &v223);
  v44 = sub_1ABA8F6C8(v36, v37, v38, v39, v40, v41, v42, v43, v210, v221, v222, v223);
  if (v20 && v8 == v7)
  {

LABEL_29:

    sub_1ABA80DF8();
    sub_1ABF24AB4();

    v223 = a1;
    v224 = a2;
    v22 = 0x80000001ABF8ED30;
LABEL_30:
    v21 = 0xD000000000000011;
    goto LABEL_10;
  }

  sub_1ABA7DB38(v44);
  sub_1ABA7F600();

  if (v10)
  {
    goto LABEL_29;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_113;
  }

  v46 = sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), &v223);
  v54 = sub_1ABA8F6C8(v46, v47, v48, v49, v50, v51, v52, v53, v211, v221, v222, v223);
  if (v20 && v8 == v7)
  {

LABEL_39:

    sub_1ABA80DF8();
    sub_1ABF24AB4();

    v223 = a1;
    v224 = a2;
    v21 = 0xD000000000000012;
    v22 = 0x80000001ABF8ED10;
    goto LABEL_10;
  }

  sub_1ABA7DB38(v54);
  sub_1ABA7F600();

  if (v10)
  {
    goto LABEL_39;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_123;
  }

  v56 = sub_1ABA91D48(_Records_GDEntityPredicate_records[696], *(_Records_GDEntityPredicate_records + 175), *(_Records_GDEntityPredicate_records + 176), &v223);
  v64 = sub_1ABA8F6C8(v56, v57, v58, v59, v60, v61, v62, v63, v212, v221, v222, v223);
  if (v20 && v8 == v7)
  {
    goto LABEL_60;
  }

  sub_1ABA7DB38(v64);
  sub_1ABA7F600();

  if (v10)
  {
LABEL_46:
    v67 = v221;
    v66 = v222;
LABEL_61:

    v223 = a1;
    v224 = a2;
    sub_1ABA7E928();
    sub_1ABA7C4A8();
    v89 = v88 + 1;
LABEL_62:
    MEMORY[0x1AC5A9410](v89, 0x80000001EB4DC9C0);
    v23 = v67;
    v24 = v66;
    goto LABEL_11;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_138;
  }

  v68 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1860], *(_Records_GDEntityPredicate_records + 466), *(_Records_GDEntityPredicate_records + 467), &v223);
  v76 = sub_1ABA8F6C8(v68, v69, v70, v71, v72, v73, v74, v75, v213, v221, v222, v223);
  if (v20 && v8 == v7)
  {
LABEL_60:
    v67 = v221;
    v66 = v222;

    goto LABEL_61;
  }

  sub_1ABA7DB38(v76);
  sub_1ABA7F600();

  if (v10)
  {
    goto LABEL_46;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_151;
  }

  v78 = sub_1ABA91D48(_Records_GDEntityPredicate_records[960], *(_Records_GDEntityPredicate_records + 241), *(_Records_GDEntityPredicate_records + 242), &v223);
  v86 = sub_1ABA8F6C8(v78, v79, v80, v81, v82, v83, v84, v85, v214, v221, v222, v223);
  if (v20 && v8 == v7)
  {
    goto LABEL_100;
  }

  sub_1ABA7DB38(v86);
  sub_1ABA7F600();

  if (v10)
  {
LABEL_59:
    v67 = v221;
    v66 = v222;
LABEL_101:

    v223 = a1;
    v224 = a2;
    sub_1ABA7E928();
    sub_1ABA7C4A8();
    v89 = v150 | 4;
    goto LABEL_62;
  }

  if (_Records_GDEntityPredicate_records)
  {
    v90 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1872], *(_Records_GDEntityPredicate_records + 469), *(_Records_GDEntityPredicate_records + 470), &v223);
    v98 = sub_1ABA8F6C8(v90, v91, v92, v93, v94, v95, v96, v97, v215, v221, v222, v223);
    if (!v20 || v8 != v7)
    {
      sub_1ABA7DB38(v98);
      sub_1ABA7F600();

      if (v10)
      {
        goto LABEL_59;
      }

      if (_Records_GDEntityPredicate_records)
      {
        v100 = sub_1ABA91D48(_Records_GDEntityPredicate_records[24], *(_Records_GDEntityPredicate_records + 7), *(_Records_GDEntityPredicate_records + 8), &v223);
        v108 = sub_1ABA8F6C8(v100, v101, v102, v103, v104, v105, v106, v107, v216, v221, v222, v223);
        if (v20 && v8 == v7)
        {
          goto LABEL_102;
        }

        sub_1ABA7DB38(v108);
        sub_1ABA7F600();

        if (v10)
        {
          goto LABEL_103;
        }

        if (_Records_GDEntityPredicate_records)
        {
          v110 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1824], *(_Records_GDEntityPredicate_records + 457), *(_Records_GDEntityPredicate_records + 458), &v223);
          v118 = sub_1ABA8F6C8(v110, v111, v112, v113, v114, v115, v116, v117, v217, v221, v222, v223);
          if (!v20 || v8 != v7)
          {
            sub_1ABA7DB38(v118);
            sub_1ABA7F600();

            if ((v10 & 1) == 0)
            {
              if (_Records_GDEntityPredicate_records)
              {
                v120 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1548], *(_Records_GDEntityPredicate_records + 388), *(_Records_GDEntityPredicate_records + 389), &v223);
                v128 = sub_1ABA8F6C8(v120, v121, v122, v123, v124, v125, v126, v127, v218, v221, v222, v223);
                if (v20 && v8 == v7)
                {
                  goto LABEL_106;
                }

                sub_1ABA7DB38(v128);
                sub_1ABA7F600();

                if (v10)
                {
                  goto LABEL_107;
                }

                if (_Records_GDEntityPredicate_records)
                {
                  v130 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1836], *(_Records_GDEntityPredicate_records + 460), *(_Records_GDEntityPredicate_records + 461), &v223);
                  v138 = sub_1ABA8F6C8(v130, v131, v132, v133, v134, v135, v136, v137, v219, v221, v222, v223);
                  if (!v20 || v8 != v7)
                  {
                    sub_1ABA7DB38(v138);
                    sub_1ABA7F600();

                    if ((v10 & 1) == 0)
                    {
                      if (_Records_GDEntityPredicate_records)
                      {
                        v140 = sub_1ABA91D48(_Records_GDEntityPredicate_records[324], *(_Records_GDEntityPredicate_records + 82), *(_Records_GDEntityPredicate_records + 83), &v223);
                        v148 = sub_1ABA8F6C8(v140, v141, v142, v143, v144, v145, v146, v147, v220, v221, v222, v223);
                        if (!v20 || v8 != v7)
                        {
                          sub_1ABA7DB38(v148);
                          sub_1ABA7F600();

                          if (v10)
                          {
                            goto LABEL_111;
                          }

LABEL_113:
                          if (_Records_GDEntityPredicate_records)
                          {
                            v152 = sub_1ABA91D48(_Records_GDEntityPredicate_records[2172], *(_Records_GDEntityPredicate_records + 544), *(_Records_GDEntityPredicate_records + 545), &v223);
                            v160 = sub_1ABA8F6C8(v152, v153, v154, v155, v156, v157, v158, v159, v211, v221, v222, v223);
                            if (v20 && v8 == v7)
                            {

LABEL_121:

                              v223 = a1;
                              v224 = a2;
                              sub_1ABA7E928();
                              v22 = 0x80000001EB4DC9C0;
                              goto LABEL_30;
                            }

                            sub_1ABA7DB38(v160);
                            sub_1ABA7F600();

                            if (v10)
                            {
                              goto LABEL_121;
                            }

LABEL_123:
                            if (_Records_GDEntityPredicate_records)
                            {
                              v162 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1320], *(_Records_GDEntityPredicate_records + 331), *(_Records_GDEntityPredicate_records + 332), &v223);
                              v170 = sub_1ABA8F6C8(v162, v163, v164, v165, v166, v167, v168, v169, v212, v221, v222, v223);
                              if (v20 && v8 == v7)
                              {

LABEL_131:

                                v172 = v221 == 49 && v222 == 0xE100000000000000;
                                if (v172 || (sub_1ABF25054() & 1) != 0)
                                {
                                  sub_1ABA936CC();
                                  v23 = 0x206C6C6120736920;
                                  v24 = 0xEB00000000796164;
                                }

                                else
                                {
                                  sub_1ABA936CC();
                                  v23 = 0x20746F6E20736920;
                                  v24 = 0xEF796164206C6C61;
                                }

                                goto LABEL_11;
                              }

                              sub_1ABA7DB38(v170);
                              sub_1ABA7F600();

                              if (v10)
                              {
                                goto LABEL_131;
                              }

LABEL_138:
                              if (_Records_GDEntityPredicate_records)
                              {
                                v173 = sub_1ABA91D48(_Records_GDEntityPredicate_records[408], *(_Records_GDEntityPredicate_records + 103), *(_Records_GDEntityPredicate_records + 104), &v223);
                                v181 = sub_1ABA8F6C8(v173, v174, v175, v176, v177, v178, v179, v180, v213, v221, v222, v223);
                                if (v20 && v8 == v7)
                                {

LABEL_148:

                                  v223 = a1;
                                  v224 = a2;
                                  sub_1ABA7E928();
                                  sub_1ABA7C4A8();
                                  v21 = v183 | 2;
LABEL_149:
                                  v22 = 0x80000001EB4DC9C0;
                                  goto LABEL_10;
                                }

                                sub_1ABA7DB38(v181);
                                sub_1ABA7F600();

                                if (v10)
                                {
                                  goto LABEL_148;
                                }

LABEL_151:
                                if (_Records_GDEntityPredicate_records)
                                {
                                  v184 = sub_1ABA91D48(_Records_GDEntityPredicate_records[1116], *(_Records_GDEntityPredicate_records + 280), *(_Records_GDEntityPredicate_records + 281), &v223);
                                  v192 = sub_1ABA8F6C8(v184, v185, v186, v187, v188, v189, v190, v191, v214, v221, v222, v223);
                                  if (v20 && v8 == v7)
                                  {

LABEL_159:

                                    v223 = a1;
                                    v224 = a2;
                                    sub_1ABA7E928();
                                    sub_1ABA7C4A8();
                                    v21 = v194 + 21;
                                    goto LABEL_149;
                                  }

                                  sub_1ABA7DB38(v192);
                                  sub_1ABA7F600();

                                  if (v10)
                                  {
                                    goto LABEL_159;
                                  }

                                  goto LABEL_161;
                                }

LABEL_178:
                                __break(1u);
                                goto LABEL_179;
                              }

LABEL_177:
                              __break(1u);
                              goto LABEL_178;
                            }

LABEL_176:
                            __break(1u);
                            goto LABEL_177;
                          }

LABEL_175:
                          __break(1u);
                          goto LABEL_176;
                        }

LABEL_110:

LABEL_111:

                        sub_1ABA936CC();
                        v21 = 0x7474612073616820;
                        v151 = 0x206565646E65;
                        goto LABEL_104;
                      }

LABEL_174:
                      __break(1u);
                      goto LABEL_175;
                    }

LABEL_107:

                    sub_1ABA936CC();
                    v21 = 0x646E652073616820;
                    v22 = 0xEC000000206E6F20;
                    goto LABEL_10;
                  }

LABEL_106:

                  goto LABEL_107;
                }

LABEL_173:
                __break(1u);
                goto LABEL_174;
              }

LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

LABEL_103:

            sub_1ABA936CC();
            v21 = 0x6174732073616820;
            v151 = 0x206E6F207472;
LABEL_104:
            v22 = v151 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            goto LABEL_10;
          }

LABEL_102:

          goto LABEL_103;
        }
      }

      else
      {
        __break(1u);
        __break(1u);
      }

      __break(1u);
      goto LABEL_172;
    }

LABEL_100:
    v67 = v221;
    v66 = v222;

    goto LABEL_101;
  }

  __break(1u);
LABEL_161:
  if (_Records_GDEntityPredicate_records)
  {
    v195 = sub_1ABA91D48(_Records_GDEntityPredicate_records[396], *(_Records_GDEntityPredicate_records + 100), *(_Records_GDEntityPredicate_records + 101), &v223);
    v203 = sub_1ABA8F6C8(v195, v196, v197, v198, v199, v200, v201, v202, v215, v221, v222, v223);
    if (v20 && v8 == v7)
    {
    }

    else
    {
      v205 = sub_1ABA7DB38(v203);

      if ((v205 & 1) == 0)
      {
        sub_1ABA936CC();
        MEMORY[0x1AC5A9410](32, 0xE100000000000000);
        v206 = sub_1ABF23C84();
        MEMORY[0x1AC5A9410](v206);

        v21 = 32;
        v22 = 0xE100000000000000;
        goto LABEL_10;
      }
    }

    v223 = a1;
    v224 = a2;
    sub_1ABA7E928();
    sub_1ABA7C4A8();
    v21 = v207 | 0xC;
    goto LABEL_149;
  }

LABEL_179:
  __break(1u);
  return result;
}

uint64_t sub_1ABD6277C()
{

  return swift_deallocClassInstance();
}

void sub_1ABD627EC(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v8 = a1[1];
  v198 = *a1;
  v199 = v8;
  *v200 = a1[2];
  *&v200[9] = *(a1 + 41);
  v121 = a7;
  v148 = a8;
  v152 = a2;
  v155 = a3;
  v158 = a5;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v130 = *a4;
  v133 = *(a4 + 16);
  v124 = *(a4 + 24);
  HIDWORD(v136) = *(a4 + 32);
  v127 = *a6;
  v139 = a6[1];
  v142 = a6[2];
  v145 = a6[3];
  v9 = *(&v199 + 1);
  v10 = *v200;
  v11 = *&v200[8];
  v12 = *&v200[16];
  v13 = *(_Records_GDEntityClass_records + 0x4D0);
  v14 = *(_Records_GDEntityClass_records + 0x4D8);
  v15 = *(_Records_GDEntityClass_records + 0x4C8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1ABA8882C(v15, v13, v14, v195);
  v16 = v196 == v11 && v197 == v12;
  if (v16 || (v17 = sub_1ABA83A44(v196, v197), (v17 & 1) != 0))
  {
    sub_1ABA88934(v195);

LABEL_8:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_1ABA8F6D8();
    v192[0] = v9;
    v192[1] = v10;
    v22 = v145;
    v193 = &v187;
    v194 = v145;
    v23 = type metadata accessor for K2TAgentAffiliationRelationshipTextualizer();
    v24 = sub_1ABA819A4(v23);
    sub_1ABA8EAC0(v24, v25, v26, v27, v28, v29, v30, v31, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v152, v155, v158);

    v32 = v10;
    v33 = &v187;
    v34 = v22;
    v35 = sub_1ABD5E58C();
LABEL_9:
    v149[3] = v12;
    v149[4] = &off_1F209BD18;
    *v149 = v35;
    return;
  }

  v187 = v9;
  v188 = v10;
  sub_1ABA7E940(v17, v18, v19, v20, v21);
  sub_1ABAA6788(v195, v36, v37, v38, v39, v40, v41, v42, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v152, v155, v158, v161, v163, v165, v167, v169, v171, v173, v175, v177);
  v44 = v43;

  sub_1ABA88934(v195);

  if (v44)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_31;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x198), *(_Records_GDEntityClass_records + 0x1A0), *(_Records_GDEntityClass_records + 0x1A0 + 8), v192);
  v45 = v193 == v11 && v194 == v12;
  if (v45 || (v46 = sub_1ABA83A44(v193, v194), (v46 & 1) != 0))
  {
    sub_1ABA88934(v192);

    goto LABEL_18;
  }

  v187 = v9;
  v188 = v10;
  sub_1ABA7E940(v46, v47, v48, v49, v50);
  sub_1ABAA6788(v192, v70, v71, v72, v73, v74, v75, v76, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v152, v155, v158, v162, v164, v166, v168, v170, v172, v174, v176, v178);
  v78 = v77;

  sub_1ABA88934(v192);

  if (v78)
  {
    goto LABEL_18;
  }

  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x210), *(_Records_GDEntityClass_records + 0x218), *(_Records_GDEntityClass_records + 0x220), v189);
    if (v190 != v11 || v191 != v12)
    {
      v80 = sub_1ABA83A44(v190, v191);
      if ((v80 & 1) == 0)
      {
        v187 = v9;
        v188 = v10;
        sub_1ABA7E940(v80, v81, v82, v83, v84);
        sub_1ABAA6788(v189, v85, v86, v87, v88, v89, v90, v91, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v152, v155, v158, v162, v164, v166, v168, v170, v172, v174, v176, v178);
        v93 = v92;

        sub_1ABA88934(v189);

        if ((v93 & 1) == 0)
        {
          sub_1ABA8F6D8();
          sub_1ABA94B60();
          v94 = type metadata accessor for K2TSubEntityTextualizer();
          v95 = sub_1ABA819A4(v94);
          sub_1ABA8EAC0(v95, v96, v97, v98, v99, v100, v101, v102, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v152, v155, v158);

          v103 = v10;
          v104 = &v187;
          v105 = v11;
          v106 = v123;
          v107 = v123;
          v115 = sub_1ABA80E08(v107, v108, v109, v110, v111, v112, v113, v114, v123, v126, v129, v132, v135, v138, v141, v144, v147, v151, v154, v157, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
          sub_1ABD5BF88(v115, v116, v117, v118, v119, v120, v106);
          goto LABEL_9;
        }

        goto LABEL_19;
      }
    }

    sub_1ABA88934(v189);
LABEL_18:

LABEL_19:
    sub_1ABA8F6D8();
    sub_1ABA94B60();
    v51 = type metadata accessor for K2TAddressAndLocationRelationshipTextualizer();
    v52 = sub_1ABA819A4(v51);
    sub_1ABA8EAC0(v52, v53, v54, v55, v56, v57, v58, v59, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v152, v155, v158);

    v60 = v10;
    v61 = &v187;
    v62 = v11;
    sub_1ABA80E08(v62, v63, v64, v65, v66, v67, v68, v69, v122, v125, v128, v131, v134, v137, v140, v143, v146, v150, v153, v156, v159, v162, v164, v166, v168, v170, v172, v174, v176, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187);
    v35 = sub_1ABD61D7C();
    goto LABEL_9;
  }

LABEL_32:
  __break(1u);
}

void sub_1ABD62C00(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v109 = a2;
  v110 = a4;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = *(a1 + 16);
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v104 = *a1;
  v105 = *a3;
  v106 = a3[1];
  v107 = a3[2];
  v108 = a3[3];
  v8 = *(_Records_GDEntityClass_records + 0xB0);
  v9 = *(_Records_GDEntityClass_records + 0xB0 + 8);
  v10 = *(_Records_GDEntityClass_records + 0xA8);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1ABA8882C(v10, v8, v9, v126);
  v11 = v127 == v6 && v128 == v5;
  if (v11 || (v12 = sub_1ABA936E4(v127, v128), (v12 & 1) != 0))
  {
    sub_1ABA88934(v126);

LABEL_8:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_1ABA7DB58();
    *&v123 = v10;
    *(&v123 + 1) = v9;
    v17 = v108;
    v124 = v4;
    v125 = v108;
    v18 = type metadata accessor for K2TLocationTextualizer();
    sub_1ABA7C4B4(v18);
    sub_1ABA8C258();

    sub_1ABA99510(v19, v20, v21, v22, v23, v24, v25, v26, v104, v105, v106, v107, v108, v109);

    v27 = v9;
    v28 = v4;
    v29 = v17;
    sub_1ABD56610(&v114, 181, &v123, 0);
    goto LABEL_9;
  }

  sub_1ABA7F618(v12, v13, v14, v15, v16);
  sub_1ABAA6788(v126, v31, v32, v33, v34, v35, v36, v37, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, v113, v114, *(&v114 + 1), v115, v116, v117, v118, v119, v120, *(&v120 + 1), v121, v122);
  v9 = v38;

  sub_1ABA88934(v126);

  if (v9)
  {
    goto LABEL_8;
  }

  if (!_Records_GDEntityClass_records)
  {
    goto LABEL_31;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v123);
  v39 = v124 == v6 && v125 == v5;
  if (v39 || (v40 = sub_1ABA936E4(v124, v125), (v40 & 1) != 0))
  {
    sub_1ABA88934(&v123);

LABEL_18:

    sub_1ABA7DB58();
    *&v120 = &_Records_GDEntityClass_records;
    *(&v120 + 1) = v9;
    v45 = v108;
    v121 = v4;
    v122 = v108;
    v46 = type metadata accessor for K2TPersonTextualizer();
    sub_1ABA7C4B4(v46);
    sub_1ABA8C258();

    sub_1ABA99510(v47, v48, v49, v50, v51, v52, v53, v54, v104, v105, v106, v107, v108, v109);

    v55 = v9;
    v56 = v4;
    v57 = v45;
    v30 = sub_1ABD54AF0(&v114, 181, &v120, 0);
    goto LABEL_9;
  }

  sub_1ABA7F618(v40, v41, v42, v43, v44);
  sub_1ABAA6788(&v123, v58, v59, v60, v61, v62, v63, v64, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, v113, v114, *(&v114 + 1), v115, v116, v117, v118, v119, v120, *(&v120 + 1), v121, v122);
  v9 = v65;

  sub_1ABA88934(&v123);

  if (v9)
  {
    goto LABEL_18;
  }

  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x378), *(_Records_GDEntityClass_records + 0x380), *(_Records_GDEntityClass_records + 0x388), &v120);
    v66 = v121 == v6 && v122 == v5;
    if (v66 || (v67 = sub_1ABA936E4(v121, v122), (v67 & 1) != 0))
    {
      sub_1ABA88934(&v120);
    }

    else
    {
      sub_1ABA7F618(v67, v68, v69, v70, v71);
      sub_1ABAA6788(&v120, v84, v85, v86, v87, v88, v89, v90, v104, v105, v106, v107, v108, v109, v110, v111, *(&v111 + 1), v112, v113, v114, *(&v114 + 1), v115, v116, v117, v118, v119, v120, *(&v120 + 1), v121, v122);
      v9 = v91;

      sub_1ABA88934(&v120);

      if ((v9 & 1) == 0)
      {
        sub_1ABA7DB58();
        sub_1ABA90248();
        v92 = type metadata accessor for K2TEntityTextualizer();
        sub_1ABA7C4B4(v92);
        sub_1ABA8C258();

        sub_1ABA99510(v93, v94, v95, v96, v97, v98, v99, v100, v104, v105, v106, v107, v108, v109);

        v101 = v9;
        v102 = v4;
        v103 = v7;
        sub_1ABD52CBC(&v114, 181, &v111, 0);
        goto LABEL_9;
      }
    }

    sub_1ABA7DB58();
    sub_1ABA90248();
    v72 = type metadata accessor for K2TEventTextualizer();
    sub_1ABA7C4B4(v72);
    sub_1ABA8C258();

    sub_1ABA99510(v73, v74, v75, v76, v77, v78, v79, v80, v104, v105, v106, v107, v108, v109);

    v81 = v9;
    v82 = v4;
    v83 = v7;
    sub_1ABD56680(&v114, 181, &v111);
LABEL_9:
    v110[3] = v6;
    v110[4] = &off_1F209BCA0;
    *v110 = v30;
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_1ABD6300C()
{
  sub_1ABD632CC();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1ABF39090;
  *(v0 + 32) = type metadata accessor for K2TEntityTextualizer();
  *(v0 + 40) = type metadata accessor for K2TPersonTextualizer();
  *(v0 + 48) = type metadata accessor for K2TLocationTextualizer();
  *(v0 + 56) = type metadata accessor for K2TEventTextualizer();
  *(v0 + 64) = type metadata accessor for K2TSubEntityTextualizer();
  *(v0 + 72) = type metadata accessor for K2TAgentAffiliationRelationshipTextualizer();
  result = type metadata accessor for K2TAddressAndLocationRelationshipTextualizer();
  *(v0 + 80) = result;
  qword_1EB549890 = v0;
  return result;
}

void sub_1ABD630B4()
{
  if (qword_1EB4D03C0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v0 = *(qword_1EB549890 + 16);
    if (!v0)
    {
      break;
    }

    v1 = qword_1EB549890 + 32;
    v2 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v3 = (*(*v1 + 152))();
      v4 = *(v3 + 16);
      v5 = *(v2 + 16);
      v6 = v5 + v4;
      if (__OFADD__(v5, v4))
      {
        break;
      }

      v7 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v6 > *(v2 + 24) >> 1)
      {
        if (v5 <= v6)
        {
          v9 = v5 + v4;
        }

        else
        {
          v9 = v5;
        }

        sub_1ABAD8B6C(isUniquelyReferenced_nonNull_native, v9, 1, v2);
        v2 = v10;
      }

      if (*(v7 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v4)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v4)
        {
          v11 = *(v2 + 16);
          v12 = __OFADD__(v11, v4);
          v13 = v11 + v4;
          if (v12)
          {
            goto LABEL_25;
          }

          *(v2 + 16) = v13;
        }
      }

      else
      {

        if (v4)
        {
          goto LABEL_23;
        }
      }

      v1 += 8;
      if (!--v0)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_20:
  sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34740;
  if (_Records_GDEntityPredicate_records)
  {
    v15 = inited;
    sub_1ABA91D48(*_Records_GDEntityPredicate_records, *(_Records_GDEntityPredicate_records + 1), *(_Records_GDEntityPredicate_records + 2), &v19);
    v16 = v20;
    v17 = v21;
    v18 = v22;
    *(v15 + 32) = v19;
    *(v15 + 48) = v16;
    *(v15 + 56) = v17;
    *(v15 + 64) = v18;
    *&v19 = v2;
    sub_1ABD7DC38(v15);
    sub_1ABE8ACC8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABD632CC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D9100, &qword_1ABF5E968);
  if (sub_1ABAACC8C(v0, v0))
  {
    v1 = &qword_1EB4D1910;
    v2 = &qword_1ABF33AA0;
  }

  else
  {
    v1 = &unk_1EB4D9108;
    v2 = &unk_1ABF5E970;
  }

  return sub_1ABAD219C(v1, v2);
}

uint64_t K2TClient.init(context:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v4 setTimeStyle_];
  [v4 setDateStyle_];
  v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v5 setTimeStyle_];
  [v5 setDateStyle_];
  v6 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v6 setUnitsStyle_];
  [v6 setMaximumUnitCount_];
  sub_1ABF217F4();
  swift_allocObject();
  v7 = sub_1ABF217E4();
  v8 = type metadata accessor for K2TInProcessService();
  sub_1ABA93E64(a1, v28);
  *&v25 = v7;
  *(&v25 + 1) = v4;
  v26 = v5;
  v27 = v6;
  v9 = v29;
  v10 = v30;
  v11 = sub_1ABA94E50(v28, v29);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1ABD5B9FC(v14, &v25, v8, v9, v10);
  v17 = v4;
  v18 = v5;
  v19 = v6;

  v20 = v17;
  v21 = v18;
  v22 = v19;
  sub_1ABA84B54(v28);
  a2[3] = v8;
  a2[4] = &off_1F209BCF0;

  *a2 = v16;
  return sub_1ABA84B54(a1);
}

uint64_t K2TClient.entityName(subjectId:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1ABA8F710();
  sub_1ABA93E20(v2, v3);
  v5 = v1;
  return sub_1ABD5B590(&v5);
}

uint64_t K2TClient.entityNames(subjectIds:)(void *a1)
{
  v2 = sub_1ABA8F710();
  v4 = *sub_1ABA93E20(v2, v3);
  v5 = a1[3];
  v6 = a1[4];
  v7 = sub_1ABA93E20(a1, v5);

  return sub_1ABD5BAA4(v7, v4, v5, v6);
}

uint64_t K2TClient.factLevelSummaries(subjectId:renderTriples:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1ABA8F710();
  sub_1ABA93E20(v4, v5);
  v7 = v3;
  return sub_1ABD5B62C(&v7, a2);
}

void K2TClient.entityLevelSummary(subjectId:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1ABA8F710();
  sub_1ABA93E20(v2, v3);
  v5 = v1;
  sub_1ABD5B6BC(&v5, v4);
}

uint64_t sub_1ABD636F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1ABD63730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABD63788(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v87 = a4;
  v88 = a1;
  v89 = a2;
  v7 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7C068();
  v100 = v11;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v84 - v13;
  v14 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1ABA7C068();
  v101 = v15;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v84 - v17;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  type metadata accessor for K2TTextualization(0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA7C068();
  v95 = v25;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v26);
  v99 = &v84 - v27;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v84 - v30;
  v32 = *(a3 + 16);
  v90 = v23;
  v91 = a3;
  v93 = v29;
  v86 = v33;
  if (v32)
  {
    v85 = a5;
    v96 = v29[5];
    sub_1ABA7AB74();
    v35 = a3 + v34;
    v37 = *(v36 + 72);
    v94 = v9;
    v102 = (v9 + 32);
    v103 = v37;
    v38 = MEMORY[0x1E69E7CC0];
    v39 = a3 + v34;
    v40 = v32;
    v97 = v7;
    v41 = v101;
    do
    {
      sub_1ABD51ED4(v39, v31);
      sub_1ABAE6A34(&v31[v96], v20);
      sub_1ABD51F38(v31);
      if (sub_1ABA7E1E0(v20, 1, v7) == 1)
      {
        sub_1ABC28C50(v20);
      }

      else
      {
        v42 = *v102;
        (*v102)(v98, v20, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD96B8();
          v38 = v48;
        }

        v44 = *(v38 + 16);
        v43 = *(v38 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1ABA7C480(v43);
          sub_1ABAD96B8();
          v38 = v49;
        }

        *(v38 + 16) = v44 + 1;
        sub_1ABA7AB74();
        v47 = v38 + v45 + *(v46 + 72) * v44;
        v7 = v97;
        v42(v47, v98, v97);
        v41 = v101;
      }

      v39 += v103;
      --v40;
    }

    while (v40);
    sub_1ABB2BAE0(v38);

    v50 = v94;
    v51 = v93[6];
    v52 = MEMORY[0x1E69E7CC0];
    v53 = v32;
    a5 = v85;
    do
    {
      v54 = v99;
      sub_1ABD51ED4(v35, v99);
      sub_1ABAE6A34(v54 + v51, v41);
      sub_1ABD51F38(v54);
      if (sub_1ABA7E1E0(v41, 1, v7) == 1)
      {
        sub_1ABC28C50(v41);
      }

      else
      {
        v55 = *v102;
        (*v102)(v100, v41, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD96B8();
          v52 = v60;
        }

        v57 = *(v52 + 16);
        v56 = *(v52 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1ABA7C480(v56);
          sub_1ABAD96B8();
          v52 = v61;
        }

        *(v52 + 16) = v57 + 1;
        sub_1ABA7AB74();
        v59 = v52 + v58 + *(v50 + 72) * v57;
        v7 = v97;
        v55(v59, v100, v97);
        v41 = v101;
      }

      v35 += v103;
      --v53;
    }

    while (v53);
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1ABB2BAE0(MEMORY[0x1E69E7CC0]);
  }

  sub_1ABB2BAE0(v52);

  if (v32)
  {
    v62 = v93[7];
    sub_1ABA7AB74();
    v64 = v91 + v63;
    v66 = *(v65 + 72);
    v67 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v68 = v95;
      sub_1ABD51ED4(v64, v95);
      v69 = *(v68 + v62);

      sub_1ABD51F38(v68);
      v70 = *(v69 + 16);
      v71 = *(v67 + 16);
      v72 = v71 + v70;
      if (__OFADD__(v71, v70))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v72 > *(v67 + 24) >> 1)
      {
        if (v71 <= v72)
        {
          v74 = v71 + v70;
        }

        else
        {
          v74 = v71;
        }

        sub_1ABAD89C8(isUniquelyReferenced_nonNull_native, v74, 1, v67);
        v67 = v75;
      }

      if (*(v69 + 16))
      {
        v76 = *(v67 + 16);
        if ((*(v67 + 24) >> 1) - v76 < v70)
        {
          goto LABEL_43;
        }

        memcpy((v67 + 8 * v76 + 32), (v69 + 32), 8 * v70);

        if (v70)
        {
          v77 = *(v67 + 16);
          v78 = __OFADD__(v77, v70);
          v79 = v77 + v70;
          if (v78)
          {
            goto LABEL_44;
          }

          *(v67 + 16) = v79;
        }
      }

      else
      {

        if (v70)
        {
          goto LABEL_42;
        }
      }

      v64 += v66;
      if (!--v32)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
    v67 = MEMORY[0x1E69E7CC0];
LABEL_40:

    v104 = v67;
    sub_1ABD7DAF4(v87);
    v80 = sub_1ABE8AC38();
    v81 = sub_1ABB45610(v80);
    v82 = v89;
    *a5 = v88;
    a5[1] = v82;
    v83 = v93;
    sub_1ABAE84E0(v90, a5 + v93[5]);
    sub_1ABAE84E0(v92, a5 + v83[6]);
    *(a5 + v83[7]) = v81;
  }
}

uint64_t K2TError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t K2TTextualization.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t K2TTextualization.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t K2TTextualization.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for K2TTextualization(0) + 20);

  return sub_1ABAE6A34(v3, a1);
}

uint64_t type metadata accessor for K2TTextualization(uint64_t a1)
{
  result = qword_1EB4D9118;
  if (!qword_1EB4D9118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t K2TTextualization.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for K2TTextualization(0) + 24);

  return sub_1ABAE6A34(v3, a1);
}

uint64_t K2TTextualization.entityRelationships.getter()
{
  type metadata accessor for K2TTextualization(0);
}

uint64_t static K2TTextualization.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054();
  }
}

unint64_t sub_1ABD64024()
{
  result = qword_1EB4D9110;
  if (!qword_1EB4D9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D9110);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for K2TError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1ABD64190(uint64_t a1)
{
  sub_1ABAE8794(319);
  if (v1 <= 0x3F)
  {
    sub_1ABD64224();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1ABD64224()
{
  if (!qword_1EB4D9128)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D9128);
    }
  }
}

uint64_t sub_1ABD64274()
{
  v0 = 0;
  v1 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v2 = &unk_1F2090E48 + v0++;
    v3 = 0xE200000000000000;
    v4 = 17741;
    v5 = sub_1ABD646E0;
    switch(v2[32])
    {
      case 1:
        v3 = 0xE300000000000000;
        v5 = sub_1ABD6475C;
        v4 = 4999502;
        break;
      case 2:
        v3 = 0xE300000000000000;
        v5 = sub_1ABD6476C;
        v4 = 5721934;
        break;
      case 3:
        v3 = 0xE900000000000054;
        v5 = sub_1ABD6482C;
        v4 = 0x524154535F594144;
        break;
      case 4:
        v3 = 0xE700000000000000;
        v5 = sub_1ABD649C8;
        v4 = 0x444E455F594144;
        break;
      case 5:
        v5 = sub_1ABD64D44;
        v7 = 1262830935;
        goto LABEL_16;
      case 6:
        v3 = 0xE800000000000000;
        v5 = sub_1ABD64E40;
        v8 = 1262830935;
        goto LABEL_20;
      case 7:
        sub_1ABA84240();
        v4 = 0x545300000000454DLL;
        v6 = 5526081;
        goto LABEL_14;
      case 8:
        sub_1ABA84240();
        v4 = 0x4E4500000000454DLL;
        v3 = 0xE900000000000044;
        break;
      case 9:
        v5 = sub_1ABD65794;
        v7 = 1380009305;
LABEL_16:
        v4 = v7 | 0x4154535F00000000;
        v3 = 0xEA00000000005452;
        break;
      case 10:
        v3 = 0xE800000000000000;
        v5 = sub_1ABD65A70;
        v8 = 1380009305;
LABEL_20:
        v4 = v8 | 0x444E455F00000000;
        break;
      case 11:
        v3 = 0xE500000000000000;
        sub_1ABA8E350();
        v4 = 0x594144454DLL;
        break;
      case 12:
        v3 = 0xE600000000000000;
        sub_1ABA8E350();
        v4 = 0x4B454557454DLL;
        break;
      case 13:
        v3 = 0xE700000000000000;
        sub_1ABA8E350();
        v4 = 0x48544E4F4D454DLL;
        break;
      case 14:
        v3 = 0xE600000000000000;
        sub_1ABA8E350();
        v4 = 0x52414559454DLL;
        break;
      case 15:
        v5 = sub_1ABD65E58;
        v4 = 0x464F5F5452415453;
        v3 = 0xED0000454D49545FLL;
        break;
      case 16:
        v5 = sub_1ABD65EA0;
        v4 = 0x545F464F5F444E45;
        v6 = 4541769;
LABEL_14:
        v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        break;
      default:
        break;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    *(v9 + 24) = 0;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = sub_1ABA94FC8(v4, v3, v10, v11, v12, v13, v14, v15, v33, v1, v35, v36, v37, v38, v39, v40, v41, v42);
    if (__OFADD__(*(v1 + 16), (v17 & 1) == 0))
    {
      break;
    }

    v18 = v16;
    v19 = v17;
    sub_1ABAD219C(&qword_1EB4D9130, &qword_1ABF5EB60);
    if (sub_1ABF24C64())
    {
      v26 = sub_1ABA94FC8(v4, v3, v20, v21, v22, v23, v24, v25, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
      if ((v19 & 1) != (v27 & 1))
      {
        goto LABEL_34;
      }

      v18 = v26;
    }

    if (v19)
    {

      v1 = v34;
      sub_1ABA7E95C((v34[7] + 16 * v18));
    }

    else
    {
      v1 = v34;
      v34[(v18 >> 6) + 8] |= 1 << v18;
      v28 = (v34[6] + 16 * v18);
      *v28 = v4;
      v28[1] = v3;
      sub_1ABA7E95C((v34[7] + 16 * v18));
      v29 = v34[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_33;
      }

      v34[2] = v31;
    }

    if (v0 == 17)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABD646E0()
{
  type metadata accessor for KnosisQueryParam();
  v0 = sub_1ABF239C4();
  type metadata accessor for QueryNode();
  swift_allocObject();
  sub_1ABE73A74(25965, 0xE200000000000000, v0);
  return 0;
}

void sub_1ABD647A4(uint64_t a1, uint64_t a2)
{
  sub_1ABF21E14();
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    sub_1ABF24FF4();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1ABD6482C(uint64_t a1)
{
  v1 = sub_1ABF21FE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1ABF21EB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QueryContext(0);
  sub_1ABF21FC4();
  sub_1ABF21F64();
  v9 = (*(v2 + 8))(v4, v1);
  sub_1ABD647A4(v9, v10);
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  return v12;
}

void sub_1ABD649E0()
{
  sub_1ABA7E2A8();
  v46 = v1;
  v47 = v2;
  sub_1ABA909B0(v3);
  sub_1ABA7BB64();
  v44 = v5;
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v43 = v7 - v6;
  v8 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v17);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7ED98();
  v19 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  sub_1ABA7AB80(v19);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  v21 = sub_1ABAD219C(&qword_1EB4D9140, &unk_1ABF5EB70);
  sub_1ABA7AB80(v21);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  v41 = sub_1ABF21A74();
  sub_1ABA7BB64();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7BC58();
  v28 = v27 - v26;
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v29, v30, v31, v8);
  sub_1ABF22014();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v32, v33, v34, v35);
  sub_1ABA7DB74();
  LOBYTE(v42) = 0;
  v41 = 1;
  sub_1ABF21A64();
  sub_1ABF21FC4();
  sub_1ABF21FC4();
  v36 = v43;
  sub_1ABF21F64();
  v37 = *(v10 + 8);
  v37(v13, v8);
  sub_1ABF21FA4();
  v38 = sub_1ABA80E24();
  v39(v38);
  v37(v16, v8);
  sub_1ABAA4F54(v0);
  if (v40)
  {
    __break(1u);
  }

  else
  {
    (*(v24 + 8))(v28, v41);
    (*(v16 + 4))(v42, v0, v36);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD64D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  type metadata accessor for QueryContext(0);
  sub_1ABD651D0();
  sub_1ABD647A4(v10, v11);
  (*(v5 + 8))(v9, v3);
  return sub_1ABA9A568();
}

uint64_t sub_1ABD64E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  type metadata accessor for QueryContext(0);
  v10 = a2();
  sub_1ABD647A4(v10, v11);
  (*(v5 + 8))(v9, v3);
  return sub_1ABA9A568();
}

void sub_1ABD64F38()
{
  sub_1ABA7E2A8();
  v27 = v0;
  v29 = sub_1ABF21EB4();
  sub_1ABA7BB64();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v6 = v5 - v4;
  v7 = sub_1ABF21FD4();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  v13 = v12 - v11;
  v28 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7BC58();
  v19 = v18 - v17;
  v20 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v20);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v26 - v22;
  sub_1ABF21FC4();
  (*(v9 + 104))(v13, *MEMORY[0x1E6969A10], v7);
  sub_1ABD651D0();
  sub_1ABF21FB4();
  v24 = v29;
  (*(v2 + 8))(v6, v29);
  (*(v9 + 8))(v13, v7);
  (*(v15 + 8))(v19, v28);
  sub_1ABA83568(v23);
  if (v25)
  {
    __break(1u);
  }

  else
  {
    (*(v2 + 32))(v27, v23, v24);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD651D0()
{
  sub_1ABA7E2A8();
  v33 = v3;
  v34 = v2;
  v5 = v4;
  v36 = v0;
  v6 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v31 - v8;
  v9 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  sub_1ABF21A74();
  sub_1ABA7BB64();
  v31 = v14;
  v32 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  sub_1ABF21FC4();
  sub_1ABAD219C(&qword_1EB4D9148, &unk_1ABF6BDF0);
  v18 = sub_1ABF21FD4();
  sub_1ABA7BB64();
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1ABF34060;
  v25 = v24 + v23;
  v26 = *(v20 + 104);
  v26(v25, *v5, v18);
  v26(v25 + v22, *v34, v18);
  sub_1ABB2CB2C(v24);
  sub_1ABF21F84();

  v27 = *(v11 + 8);
  v27(v1, v9);
  sub_1ABF21FC4();
  v28 = v35;
  sub_1ABF21F94();
  v27(v1, v9);
  v29 = sub_1ABF21EB4();
  sub_1ABA83568(v28);
  if (v30)
  {
    __break(1u);
  }

  else
  {
    (*(v31 + 8))(v17, v32);
    (*(*(v29 - 8) + 32))(v33, v28, v29);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD654C8()
{
  sub_1ABA7E2A8();
  sub_1ABA909B0(v2);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v4 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = sub_1ABAD219C(&qword_1EB4D9140, &unk_1ABF5EB70);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v32 = sub_1ABAA5944();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v11 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v18);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA97C78();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v20, v21, v22, v11);
  sub_1ABF22014();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v23, v24, v25, v26);
  sub_1ABA7DB74();
  sub_1ABA8EADC();
  sub_1ABF21A64();
  sub_1ABD651D0();
  sub_1ABA99528();
  v27 = sub_1ABA80E24();
  v28(v27);
  (*(v9 + 8))(v0, v32);
  (*(v13 + 8))(v17, v11);
  sub_1ABAA4F54(v1);
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v30 = sub_1ABAA613C();
    v31(v30);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD657AC()
{
  sub_1ABA7E2A8();
  v29 = v1;
  v30 = v0;
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  v28 = sub_1ABF21A74();
  sub_1ABA7BB64();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7BC58();
  v18 = v17 - v16;
  sub_1ABF21FC4();
  sub_1ABAD219C(&qword_1EB4D9148, &unk_1ABF6BDF0);
  v19 = sub_1ABF21FD4();
  sub_1ABA7BB64();
  v21 = v20;
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF34740;
  (*(v21 + 104))(v23 + v22, *MEMORY[0x1E6969A68], v19);
  sub_1ABB2CB2C(v23);
  sub_1ABF21F84();

  v24 = *(v8 + 8);
  v24(v12, v6);
  sub_1ABF21FC4();
  sub_1ABF21F94();
  v24(v12, v6);
  v25 = sub_1ABF21EB4();
  sub_1ABA83568(v5);
  if (v26)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 8))(v18, v28);
    (*(*(v25 - 8) + 32))(v29, v5, v25);
    sub_1ABA7BC1C();
  }
}

void sub_1ABD65A88()
{
  sub_1ABA7E2A8();
  sub_1ABA909B0(v2);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v4 = sub_1ABAD219C(&qword_1EB4D9138, &qword_1ABF5EB68);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7ED98();
  v6 = sub_1ABAD219C(&qword_1EB4D9140, &unk_1ABF5EB70);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v32 = sub_1ABAA5944();
  sub_1ABA7BB64();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  sub_1ABA819C0();
  v11 = sub_1ABF21FE4();
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v18);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA97C78();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v20, v21, v22, v11);
  sub_1ABF22014();
  sub_1ABA7ED8C();
  sub_1ABA7B9B4(v23, v24, v25, v26);
  sub_1ABA7DB74();
  sub_1ABA8EADC();
  sub_1ABF21A64();
  sub_1ABD657AC();
  sub_1ABA99528();
  v27 = sub_1ABA80E24();
  v28(v27);
  (*(v9 + 8))(v0, v32);
  (*(v13 + 8))(v17, v11);
  sub_1ABAA4F54(v1);
  if (v29)
  {
    __break(1u);
  }

  else
  {
    v30 = sub_1ABAA613C();
    v31(v30);
    sub_1ABA7BC1C();
  }
}

uint64_t sub_1ABD65D68(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a1 < 9.22337204e18)
  {
    return sub_1ABF24FF4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1ABD65E58()
{
  type metadata accessor for QueryContext(0);
  sub_1ABF21E14();
  return sub_1ABF24314();
}

uint64_t sub_1ABD65EA0()
{
  type metadata accessor for QueryContext(0);
  sub_1ABF21E14();
  return sub_1ABF24314();
}

uint64_t sub_1ABD65EE8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id sub_1ABD65F1C(uint64_t a1)
{
  result = sub_1ABAAB7C8(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1AC5AA170](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = [result entityID];
    v7 = [v6 intValue];

    v11 = v7;
    v8 = EntityIdentifier.stringValue.getter();
    sub_1ABB1840C(v10, v8, v9);
  }

  return result;
}

id sub_1ABD6603C(uint64_t a1)
{
  result = sub_1ABAAB7C8(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1AC5AA170](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      result = *(a1 + 8 * i + 32);
    }

    v5 = result;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = [result rankedItems];
    sub_1ABAFF390(0, &qword_1ED86B978, off_1E7960330);
    v7 = sub_1ABF240D4();

    sub_1ABD65F1C(v7);
  }

  return result;
}

uint64_t sub_1ABD66154(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1ABE7A2FC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1ABD6DC84(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1ABD661C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  sub_1ABAD219C(&qword_1EB4D9150, &qword_1ABF5EB98);
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1ABD66260, 0, 0);
}

void sub_1ABD66260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(*(v8 + 112) + 16);
  *(v8 + 144) = v9;
  if (v9)
  {
    v10 = 0;
    *(v8 + 152) = 181;
    v11 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      *(v8 + 160) = v10;
      *(v8 + 168) = v11;
      switch(*(*(v8 + 112) + v10 + 32))
      {
        case 1:
          sub_1ABD686E8(*(v8 + 120), a2, a3, a4, a5, a6, a7, a8, v72, v73);
          v12 = *(v8 + 88);
          goto LABEL_9;
        case 2:
          sub_1ABD6AFF8(*(v8 + 120), a2, a3, a4, a5, a6, a7, a8, v72, v73);
          v12 = *(v8 + 72);
          goto LABEL_9;
        case 3:
          sub_1ABD691F4();
          v12 = *(v8 + 80);
          goto LABEL_9;
        case 4:
          sub_1ABD6C6FC();
          v12 = *(v8 + 56);
          goto LABEL_9;
        case 5:
          sub_1ABD6B768();
          v12 = *(v8 + 64);
LABEL_9:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7E974();
            sub_1ABADB5D8();
            v11 = v15;
          }

          v14 = v11[2];
          v13 = v11[3];
          if (v14 >= v13 >> 1)
          {
            sub_1ABA819D0(v13);
            sub_1ABADB5D8();
            v11 = v16;
          }

          v11[2] = v14 + 1;
          v11[v14 + 4] = v12;
          v10 = *(v8 + 160) + 1;
          if (v10 == *(v8 + 144))
          {
            goto LABEL_16;
          }

          continue;
        default:
          v25 = *(v8 + 152);
          sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
          sub_1ABAA5964();
          v26 = swift_allocObject();
          v27 = "quence AllTripleSequence";
          *(v26 + 16) = xmmword_1ABF34740;
          if (v25 < 27)
          {
            __break(1u);
          }

          else
          {
            if (!_Records_GDEntityClass_records)
            {
              goto LABEL_147;
            }

            sub_1ABA7D028();
            swift_allocObject();
            sub_1ABA9516C();
            sub_1ABA96474();
            sub_1ABA9A57C();
            sub_1ABADB5D8();
            sub_1ABA89A24();
            if (!v32)
            {
LABEL_57:
              sub_1ABA97380(v28, v29, v30, v31);
              v33 = swift_task_alloc();
              *(v8 + 184) = v33;
              *v33 = v8;
              sub_1ABAA2998(v33);
              sub_1ABA7DA50();

              sub_1ABD67318(v34);
              return;
            }
          }

          sub_1ABA7BBEC(v27);
          sub_1ABADB5D8();
          v31 = v28;
          goto LABEL_57;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_16:
  if (v11[2] == 1)
  {
    sub_1ABC43DF0();
    v17 = v11[4];
  }

  else
  {
    sub_1ABA7D028();
    v18 = swift_allocObject();
    *(v18 + 16) = v11;
    v17 = v18 | 0x3000000000000000;
  }

  v19 = *(v8 + 120);
  v20 = *(v19 + 16);
  v21 = v19 + 40;
  if (!v20)
  {
LABEL_53:

    goto LABEL_135;
  }

  while (2)
  {
    v22 = 1701667182;
    switch(*(v21 - 8))
    {
      case 1:
        v22 = sub_1ABA95538();
        goto LABEL_51;
      case 2:
        v22 = sub_1ABAA4F74();
        goto LABEL_51;
      case 3:
        v22 = sub_1ABAB58B8();
        goto LABEL_51;
      case 4:
        v22 = sub_1ABA84278();
        goto LABEL_51;
      case 5:
        v22 = sub_1ABA95354();
        goto LABEL_51;
      case 6:
        v22 = sub_1ABA960EC();
        goto LABEL_51;
      case 7:
        v22 = sub_1ABAA15B8();
        goto LABEL_51;
      case 8:
        v22 = sub_1ABA82EBC();
        goto LABEL_51;
      case 9:
        v22 = sub_1ABA97C98();
        goto LABEL_51;
      case 0xA:
        v23 = 1633906540;
        goto LABEL_50;
      case 0xB:
        v22 = 1836020326;
        goto LABEL_51;
      case 0xC:
        v22 = 28532;
        goto LABEL_51;
      case 0xD:
        v22 = 0xD000000000000010;
        goto LABEL_51;
      case 0xE:
        v22 = sub_1ABAA0F2C();
        goto LABEL_51;
      case 0xF:
        v22 = 0x6E6F73726570;
        goto LABEL_51;
      case 0x10:
        v22 = sub_1ABA8E35C();
        goto LABEL_51;
      case 0x11:
        v22 = sub_1ABAA3988();
        goto LABEL_51;
      case 0x12:
        v22 = sub_1ABAA17E4();
        goto LABEL_51;
      case 0x13:
        v23 = 1634891108;
LABEL_50:
        v22 = v23 | 0x6E6F697400000000;
        goto LABEL_51;
      case 0x14:
        v22 = 1701869940;
        goto LABEL_51;
      case 0x15:

        goto LABEL_61;
      case 0x16:
        v22 = sub_1ABA90D3C();
        goto LABEL_51;
      case 0x17:
        v22 = sub_1ABA886D4();
        goto LABEL_51;
      case 0x18:
        v22 = sub_1ABA8CB60();
        goto LABEL_51;
      case 0x19:
        v22 = sub_1ABA97014();
        goto LABEL_51;
      default:
LABEL_51:
        v24 = sub_1ABA8BCFC(v22);

        if ((v24 & 1) == 0)
        {

          v21 += 24;
          if (!--v20)
          {
            goto LABEL_53;
          }

          continue;
        }

LABEL_61:

        v36 = *(v8 + 136);
        sub_1ABB2BAF8();

        v37 = type metadata accessor for KGQ.Value(0);
        v38 = sub_1ABA7E1E0(v36, 1, v37);
        v39 = *(v8 + 136);
        if (v38 == 1)
        {
          sub_1ABD6DBC0(*(v8 + 136));
          goto LABEL_135;
        }

        v40 = sub_1ABD770AC();
        v42 = v41;
        sub_1ABD6DC28(v39);
        if (!v42)
        {
          goto LABEL_135;
        }

        sub_1ABA89CC4();
        if (!v44)
        {
          goto LABEL_53;
        }

        if ((v42 & 0x1000000000000000) != 0)
        {
          v69 = sub_1ABA7D000();
          sub_1ABB81A68(v69, v70, 10);
          v65 = v71;
          goto LABEL_133;
        }

        if ((v42 & 0x2000000000000000) != 0)
        {
          sub_1ABA89F34();
          if (v47)
          {
            if (!v51)
            {
              goto LABEL_146;
            }

            if (v51 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v47 & v32)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v47 || __OFADD__(v58, v57))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v47)
                {
                  goto LABEL_132;
                }
              }
            }
          }

          else if (v52 == 45)
          {
            if (!v51)
            {
              goto LABEL_144;
            }

            if (v51 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v47 & v32)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v47 || __OFSUB__(v54, v53))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v47)
                {
                  goto LABEL_132;
                }
              }
            }
          }

          else if (v51)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v47 & v32)
              {
                break;
              }

              sub_1ABA80E40();
              if (!v47 || __OFADD__(v64, v63))
              {
                break;
              }

              sub_1ABA7E4F0();
              if (v47)
              {
                goto LABEL_132;
              }
            }
          }

LABEL_131:
          v50 = 1;
          goto LABEL_132;
        }

        if ((v40 & 0x1000000000000000) != 0)
        {
          v45 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_1ABA7D000();
          v45 = sub_1ABF24B74();
        }

        v46 = *v45;
        if (v46 == 43)
        {
          if (v43 < 1)
          {
            goto LABEL_145;
          }

          if (v43 == 1)
          {
            goto LABEL_131;
          }

          if (!v45)
          {
            goto LABEL_122;
          }

          sub_1ABA9932C();
          while (1)
          {
            sub_1ABA7D44C();
            if (!v47 & v32)
            {
              goto LABEL_131;
            }

            sub_1ABA80E40();
            if (!v47 || __OFADD__(v56, v55))
            {
              goto LABEL_131;
            }

            sub_1ABA7E4F0();
            if (v47)
            {
              goto LABEL_132;
            }
          }
        }

        if (v46 != 45)
        {
          if (!v43)
          {
            goto LABEL_131;
          }

          if (!v45)
          {
            goto LABEL_122;
          }

          while (*v45 - 48 <= 9)
          {
            sub_1ABA9F60C();
            if (!v47 || __OFADD__(v62, v61))
            {
              break;
            }

            v45 = (v59 + 1);
            if (v60 == 1)
            {
              goto LABEL_122;
            }
          }

          goto LABEL_131;
        }

        if (v43 >= 1)
        {
          if (v43 == 1)
          {
            goto LABEL_131;
          }

          if (v45)
          {
            sub_1ABA9932C();
            while (1)
            {
              sub_1ABA7D44C();
              if (!v47 & v32)
              {
                goto LABEL_131;
              }

              sub_1ABA80E40();
              if (!v47 || __OFSUB__(v49, v48))
              {
                goto LABEL_131;
              }

              sub_1ABA7E4F0();
              if (v47)
              {
                goto LABEL_132;
              }
            }
          }

LABEL_122:
          v50 = 0;
LABEL_132:
          v65 = v50;
LABEL_133:

          if ((v65 & 1) == 0)
          {
            sub_1ABA7D9B8();
            v66 = swift_allocObject();
            sub_1ABA9F6FC(v66);
          }

LABEL_135:
          **(v8 + 104) = v17;

          sub_1ABA80A84();
          sub_1ABA7DA50();

          __asm { BRAA            X1, X16 }
        }

        __break(1u);
LABEL_144:
        __break(1u);
LABEL_145:
        __break(1u);
LABEL_146:
        __break(1u);
LABEL_147:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_1ABD669C4()
{
  sub_1ABA7BC04();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v4 + 192) = v0;

  if (v0)
  {

    v7 = sub_1ABD672B8;
  }

  else
  {
    *(v4 + 200) = v3;
    v7 = sub_1ABD66AF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1ABD66AF0()
{
  sub_1ABD7E680(*(v0 + 200));
  sub_1ABA7D028();
  v1 = swift_allocObject();
  *(v1 + 16) = *(v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1ABA7E974();
    sub_1ABADB5D8();
    v3 = v77;
  }

  v4 = v3[2];
  if (v4 >= v3[3] >> 1)
  {
    sub_1ABADB5D8();
    v3 = v78;
  }

  sub_1ABA96A50();
  v3[2] = v4 + 1;
  v3[v4 + 4] = v1 | v12;
  v13 = *(v0 + 192);
  while (2)
  {
    v14 = *(v0 + 160) + 1;
    if (v14 != *(v0 + 144))
    {
      *(v0 + 160) = v14;
      *(v0 + 168) = v3;
      switch(*(*(v0 + 112) + v14 + 32))
      {
        case 1:
          v15 = v13;
          sub_1ABD686E8(*(v0 + 120), v5, v6, v7, v8, v9, v10, v11, v82, v83);
          if (v15)
          {
            goto LABEL_25;
          }

          v16 = *(v0 + 88);
          goto LABEL_18;
        case 2:
          v18 = v13;
          sub_1ABD6AFF8(*(v0 + 120), v5, v6, v7, v8, v9, v10, v11, v82, v83);
          if (v18)
          {
            goto LABEL_25;
          }

          v16 = *(v0 + 72);
          goto LABEL_18;
        case 3:
          v19 = v13;
          sub_1ABD691F4();
          if (v19)
          {
            goto LABEL_25;
          }

          v16 = *(v0 + 80);
          goto LABEL_18;
        case 4:
          v17 = v13;
          sub_1ABD6C6FC();
          if (v17)
          {
            goto LABEL_25;
          }

          v16 = *(v0 + 56);
          goto LABEL_18;
        case 5:
          v20 = v13;
          sub_1ABD6B768();
          if (v20)
          {
LABEL_25:

            sub_1ABA7BBE0();
            goto LABEL_144;
          }

          v16 = *(v0 + 64);
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABA7E974();
            sub_1ABADB5D8();
            v3 = v23;
          }

          v22 = v3[2];
          v21 = v3[3];
          if (v22 >= v21 >> 1)
          {
            sub_1ABA819D0(v21);
            sub_1ABADB5D8();
            v3 = v24;
          }

          v13 = 0;
          v3[2] = v22 + 1;
          v3[v22 + 4] = v16;
          continue;
        default:
          v33 = *(v0 + 152);
          sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
          sub_1ABAA5964();
          v34 = swift_allocObject();
          v35 = "quence AllTripleSequence";
          *(v34 + 16) = xmmword_1ABF34740;
          if (v33 < 27)
          {
            __break(1u);
          }

          else
          {
            if (!_Records_GDEntityClass_records)
            {
              goto LABEL_156;
            }

            sub_1ABA7D028();
            swift_allocObject();
            sub_1ABA9516C();
            sub_1ABA96474();
            sub_1ABA9A57C();
            sub_1ABADB5D8();
            sub_1ABA89A24();
            if (!v40)
            {
LABEL_65:
              sub_1ABA97380(v36, v37, v38, v39);
              v41 = swift_task_alloc();
              *(v0 + 184) = v41;
              *v41 = v0;
              sub_1ABAA2998(v41);
              sub_1ABA7DA50();

              sub_1ABD67318(v42);
              return;
            }
          }

          sub_1ABA7BBEC(v35);
          sub_1ABADB5D8();
          v39 = v36;
          goto LABEL_65;
      }
    }

    break;
  }

  if (v3[2] == 1)
  {
    sub_1ABC43DF0();
    v25 = v3[4];
  }

  else
  {
    sub_1ABA7D028();
    v26 = swift_allocObject();
    *(v26 + 16) = v3;
    v25 = v26 | 0x3000000000000000;
  }

  v27 = *(v0 + 120);
  v28 = *(v27 + 16);
  v29 = v27 + 40;
  if (!v28)
  {
LABEL_61:

    goto LABEL_143;
  }

  while (2)
  {
    v30 = 1701667182;
    switch(*(v29 - 8))
    {
      case 1:
        v30 = sub_1ABA95538();
        goto LABEL_59;
      case 2:
        v30 = sub_1ABAA4F74();
        goto LABEL_59;
      case 3:
        v30 = sub_1ABAB58B8();
        goto LABEL_59;
      case 4:
        v30 = sub_1ABA84278();
        goto LABEL_59;
      case 5:
        v30 = sub_1ABA95354();
        goto LABEL_59;
      case 6:
        v30 = sub_1ABA960EC();
        goto LABEL_59;
      case 7:
        v30 = sub_1ABAA15B8();
        goto LABEL_59;
      case 8:
        v30 = sub_1ABA82EBC();
        goto LABEL_59;
      case 9:
        v30 = sub_1ABA97C98();
        goto LABEL_59;
      case 0xA:
        v31 = 1633906540;
        goto LABEL_58;
      case 0xB:
        v30 = 1836020326;
        goto LABEL_59;
      case 0xC:
        v30 = 28532;
        goto LABEL_59;
      case 0xD:
        v30 = 0xD000000000000010;
        goto LABEL_59;
      case 0xE:
        v30 = sub_1ABAA0F2C();
        goto LABEL_59;
      case 0xF:
        v30 = 0x6E6F73726570;
        goto LABEL_59;
      case 0x10:
        v30 = sub_1ABA8E35C();
        goto LABEL_59;
      case 0x11:
        v30 = sub_1ABAA3988();
        goto LABEL_59;
      case 0x12:
        v30 = sub_1ABAA17E4();
        goto LABEL_59;
      case 0x13:
        v31 = 1634891108;
LABEL_58:
        v30 = v31 | 0x6E6F697400000000;
        goto LABEL_59;
      case 0x14:
        v30 = 1701869940;
        goto LABEL_59;
      case 0x15:

        goto LABEL_69;
      case 0x16:
        v30 = sub_1ABA90D3C();
        goto LABEL_59;
      case 0x17:
        v30 = sub_1ABA886D4();
        goto LABEL_59;
      case 0x18:
        v30 = sub_1ABA8CB60();
        goto LABEL_59;
      case 0x19:
        v30 = sub_1ABA97014();
        goto LABEL_59;
      default:
LABEL_59:
        v32 = sub_1ABA8BCFC(v30);

        if ((v32 & 1) == 0)
        {

          v29 += 24;
          if (!--v28)
          {
            goto LABEL_61;
          }

          continue;
        }

LABEL_69:

        v44 = *(v0 + 136);
        sub_1ABB2BAF8();

        v45 = type metadata accessor for KGQ.Value(0);
        v46 = sub_1ABA7E1E0(v44, 1, v45);
        v47 = *(v0 + 136);
        if (v46 == 1)
        {
          sub_1ABD6DBC0(*(v0 + 136));
          goto LABEL_143;
        }

        v48 = sub_1ABD770AC();
        v50 = v49;
        sub_1ABD6DC28(v47);
        if (!v50)
        {
          goto LABEL_143;
        }

        sub_1ABA89CC4();
        if (!v52)
        {
          goto LABEL_61;
        }

        if ((v50 & 0x1000000000000000) != 0)
        {
          v79 = sub_1ABA7D000();
          sub_1ABB81A68(v79, v80, 10);
          v73 = v81;
          goto LABEL_141;
        }

        if ((v50 & 0x2000000000000000) != 0)
        {
          sub_1ABA89F34();
          if (v55)
          {
            if (!v59)
            {
              goto LABEL_155;
            }

            if (v59 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v55 & v40)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v55 || __OFADD__(v66, v65))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v55)
                {
                  goto LABEL_140;
                }
              }
            }
          }

          else if (v60 == 45)
          {
            if (!v59)
            {
              goto LABEL_153;
            }

            if (v59 != 1)
            {
              sub_1ABAA3974();
              while (1)
              {
                sub_1ABA7D44C();
                if (!v55 & v40)
                {
                  break;
                }

                sub_1ABA80E40();
                if (!v55 || __OFSUB__(v62, v61))
                {
                  break;
                }

                sub_1ABA7E4F0();
                if (v55)
                {
                  goto LABEL_140;
                }
              }
            }
          }

          else if (v59)
          {
            while (1)
            {
              sub_1ABA7D44C();
              if (!v55 & v40)
              {
                break;
              }

              sub_1ABA80E40();
              if (!v55 || __OFADD__(v72, v71))
              {
                break;
              }

              sub_1ABA7E4F0();
              if (v55)
              {
                goto LABEL_140;
              }
            }
          }

LABEL_139:
          v58 = 1;
          goto LABEL_140;
        }

        if ((v48 & 0x1000000000000000) != 0)
        {
          v53 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          sub_1ABA7D000();
          v53 = sub_1ABF24B74();
        }

        v54 = *v53;
        if (v54 == 43)
        {
          if (v51 < 1)
          {
            goto LABEL_154;
          }

          if (v51 == 1)
          {
            goto LABEL_139;
          }

          if (!v53)
          {
            goto LABEL_130;
          }

          sub_1ABA9932C();
          while (1)
          {
            sub_1ABA7D44C();
            if (!v55 & v40)
            {
              goto LABEL_139;
            }

            sub_1ABA80E40();
            if (!v55 || __OFADD__(v64, v63))
            {
              goto LABEL_139;
            }

            sub_1ABA7E4F0();
            if (v55)
            {
              goto LABEL_140;
            }
          }
        }

        if (v54 != 45)
        {
          if (!v51)
          {
            goto LABEL_139;
          }

          if (!v53)
          {
            goto LABEL_130;
          }

          while (*v53 - 48 <= 9)
          {
            sub_1ABA9F60C();
            if (!v55 || __OFADD__(v70, v69))
            {
              break;
            }

            v53 = (v67 + 1);
            if (v68 == 1)
            {
              goto LABEL_130;
            }
          }

          goto LABEL_139;
        }

        if (v51 >= 1)
        {
          if (v51 == 1)
          {
            goto LABEL_139;
          }

          if (v53)
          {
            sub_1ABA9932C();
            while (1)
            {
              sub_1ABA7D44C();
              if (!v55 & v40)
              {
                goto LABEL_139;
              }

              sub_1ABA80E40();
              if (!v55 || __OFSUB__(v57, v56))
              {
                goto LABEL_139;
              }

              sub_1ABA7E4F0();
              if (v55)
              {
                goto LABEL_140;
              }
            }
          }

LABEL_130:
          v58 = 0;
LABEL_140:
          v73 = v58;
LABEL_141:

          if ((v73 & 1) == 0)
          {
            sub_1ABA7D9B8();
            v74 = swift_allocObject();
            sub_1ABA9F6FC(v74);
          }

LABEL_143:
          **(v0 + 104) = v25;

          sub_1ABA80A84();
LABEL_144:
          sub_1ABA7DA50();

          __asm { BRAA            X1, X16 }
        }

        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        return;
    }
  }
}

uint64_t sub_1ABD672B8()
{

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABD67318(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_1ABA8C014();
}

void sub_1ABD6732C()
{
  v518 = v1;
  *(v1 + 56) = MEMORY[0x1E69E7CC0];
  v516 = *(v1 + 72);

  sub_1ABD66154(&v516);
  v2 = 0;
  v360 = v1 + 16;
  v374 = v1 + 40;
  v3 = (v516 + 48);
  v388 = (v1 + 56);
  v4 = MEMORY[0x1E69E7CC0];
  v500 = v516;
  v492 = *(v516 + 16);
  v454 = 181;
  v476 = 279;
  v439 = xmmword_1ABF34060;
  v484 = v1;
  while (1)
  {
    *(v1 + 88) = v4;
    if (v492 == v2)
    {

      *(v1 + 96) = *(v1 + 56);
      v332 = swift_task_alloc();
      *(v1 + 104) = v332;
      *v332 = v1;
      v332[1] = sub_1ABD684C0;
      sub_1ABA898DC();

      sub_1ABD6D534(v333, v334);
      return;
    }

    if (v2 >= *(v500 + 16))
    {
      break;
    }

    v5 = *(v3 - 16);
    v6 = *(v3 - 1);
    switch(v5)
    {
      case 0:
        v0 = v1;
        v7 = *(v1 + 80);
        v8 = swift_task_alloc();
        *(v8 + 16) = v7;
        sub_1ABAA1A3C();
        swift_bridgeObjectRetain_n();
        sub_1ABE0F568(sub_1ABD71928, v8, v6);
        sub_1ABA9FC50();

        sub_1ABD7DA50(v1);

        goto LABEL_69;
      case 1:
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        sub_1ABAA5964();
        v140 = swift_allocObject();
        sub_1ABA828A4(v140, v141, v142, v143, v144, v145, v146, v147, v148, v360, v374, v388, v402, v414, v426, v439, *(&v439 + 1), v454, v462, v468, v476, v484, v492, v500, v508, v149);
        if (v476 < 62)
        {
          goto LABEL_87;
        }

        v508 = v3;
        v0 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_100;
        }

        v151 = v150;
        sub_1ABAA0910();
        sub_1ABAA4EC8();
        v92 = swift_allocObject();
        v93 = *(v0 + 0x5C0);
        v94 = *(v0 + 0x5C8);

        sub_1ABA9EC20();
        v152 = sub_1ABA9954C();
        sub_1ABA8C5C8(v153, v152);
        *(v92 + 16) = v151;
        v154 = swift_task_alloc();
        sub_1ABA8B32C(v154);
        goto LABEL_23;
      case 2:
        sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
        sub_1ABAA5964();
        v80 = swift_allocObject();
        sub_1ABA828A4(v80, v81, v82, v83, v84, v85, v86, v87, v88, v360, v374, v388, v402, v414, v426, v439, *(&v439 + 1), v454, v462, v468, v476, v484, v492, v500, v508, v89);
        if (v476 < 64)
        {
          goto LABEL_86;
        }

        v508 = v3;
        v0 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_97;
        }

        v91 = v90;
        sub_1ABAA0910();
        sub_1ABAA4EC8();
        v92 = swift_allocObject();
        v93 = *(v0 + 0x5F0);
        v94 = *(v0 + 0x5F8);

        sub_1ABA9EC20();
        v95 = sub_1ABA9954C();
        sub_1ABA8C5C8(v96, v95);
        *(v92 + 16) = v91;
        v97 = swift_task_alloc();
        sub_1ABA8B32C(v97);
LABEL_23:
        sub_1ABA8B520(sub_1ABD71A60);
        if (v94)
        {
          sub_1ABA8AF8C(v155, v156, v157, v158, v159, v160, v161, v162, v360, v374, v388, v402, v414, v426, v439, *(&v439 + 1), v454, v462, v468, v476, v484, v492, v500);
          sub_1ABAA1A3C();
          swift_bridgeObjectRelease_n();

          sub_1ABA8B718(v336, v337, v338, v339, v340, v341, v342, v343, v372, v386, v400);

          goto LABEL_80;
        }

        sub_1ABA9FC50();

        v163 = sub_1ABD7343C(v93);
        v165 = v164;

        *(v92 + 24) = v163;
        *(v92 + 32) = v165;
        v4 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v324;
        }

        v2 = v3;
        sub_1ABAABCE8();
        v3 = v508;
        if (v167)
        {
          sub_1ABA819D0(v166);
          sub_1ABADB5D8();
          v4 = v325;
        }

        sub_1ABA8C990(v92 | 0x5000000000000004);
        goto LABEL_36;
      case 4:
        if (v476 < 59)
        {
          goto LABEL_88;
        }

        v508 = v3;
        v0 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_98;
        }

        sub_1ABAA0910();
        sub_1ABA8913C();
        v170 = swift_allocObject();
        v184 = *(v0 + 0x578);
        v172 = *(v0 + 0x580);
        v185 = *(v0 + 0x570);

        sub_1ABA91D48(v185, v184, v172, &v516);
        v186 = sub_1ABA9954C();
        sub_1ABA8CD40(v187, v186);
        v188 = swift_task_alloc();
        sub_1ABA8B32C(v188);
        sub_1ABA8B520(sub_1ABD71A60);
        if (v185)
        {
          goto LABEL_79;
        }

        sub_1ABA9FC50();

        v171 = sub_1ABD7343C(v172);
        v190 = v189;

        *(v170 + 56) = v171;
        *(v170 + 64) = v190;
        *(v170 + 72) = 0;
        *(v170 + 80) = 0;
        *(v170 + 87) = 0;
        v4 = v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v329;
        }

        v2 = v3;
        sub_1ABAABCE8();
        if (!v167)
        {
          goto LABEL_35;
        }

        goto LABEL_44;
      case 7:
        sub_1ABAA1A3C();
        swift_bridgeObjectRetain_n();
        v9 = sub_1ABD77144(v6);

        if (!v9)
        {
          sub_1ABA8B718(v10, v11, v12, v13, v14, v15, v16, v17, v360, v374, v388);

          sub_1ABA89B1C();
          sub_1ABD718B8();
          sub_1ABA7D104();
          swift_allocError();
          v349 = 39;
          goto LABEL_77;
        }

        if (v476 < 140)
        {
          goto LABEL_91;
        }

        v18 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_102;
        }

        sub_1ABA807B4();
        v19 = swift_allocObject();
        sub_1ABA91D48(v18[1668], *(v18 + 418), *(v18 + 419), &v516);
        v20 = sub_1ABA9954C();
        sub_1ABAA416C(v21, v20);
        sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA4EC8();
        v22 = swift_allocObject();
        sub_1ABA828A4(v22, v23, v24, v25, v26, v27, v28, v29, v30, v360, v374, v388, v402, v414, v426, v439, *(&v439 + 1), v454, v462, v4, v476, v484, v492, v500, v3, v31);
        sub_1ABAA267C();
        v32 = swift_allocObject();
        sub_1ABD71A78(v32, v33, v34, v35, v36, v37, v38, v39, v40, v361, v375, v389, v403, v415, v427, v41);
        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        sub_1ABAA5964();
        v42 = swift_allocObject();
        sub_1ABA828A4(v42, v43, v44, v45, v46, v47, v48, v49, v50, v362, v376, v390, v404, v416, v428, v440, v447, v455, v463, v469, v477, v485, v493, v501, v509, v51);
        if (v456 < 52)
        {
          goto LABEL_94;
        }

        v53 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_104;
        }

        v54 = v52;
        sub_1ABA7D028();
        v55 = swift_allocObject();
        sub_1ABA8882C(*(v53 + 0x4C8), *(v53 + 0x4D0), *(v53 + 0x4D8), &v516);
        v56 = sub_1ABAA2374();
        sub_1ABAA4620(v57, v56);
        *(v55 + 16) = v54;
        v4[4] = v55 | 0x4000000000000000;
        v58 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_103;
        }

        sub_1ABA7D028();
        v59 = swift_allocObject();
        sub_1ABA807B4();
        v60 = swift_allocObject();
        sub_1ABA91D48(v58[384], *(v58 + 97), *(v58 + 98), &v516);
        *(v60 + 16) = sub_1ABA9954C();
        *(v60 + 32) = v61;
        *(v60 + 40) = v62;
        *(v60 + 48) = v63;
        sub_1ABAA4EC8();
        v64 = swift_allocObject();
        sub_1ABA828A4(v64, v65, v66, v67, v68, v69, v70, v71, v72, v363, v377, v391, v405, v417, v429, v441, v448, v456, v2, v470, v478, v486, v494, v502, v510, v73);
        sub_1ABA7D9B8();
        v74 = swift_allocObject();
        v75 = sub_1ABD7343C(v9);
        v77 = v76;

        *(v74 + 16) = v75;
        *(v74 + 24) = v77;
        sub_1ABAB1154();
        v64[2].n128_u64[0] = v74 | v78;
        *(v60 + 56) = v64;
        v4[5] = v60 | 4;
        *(v59 + 16) = v4;
        v79 = v59 | 0x1000000000000004;
        break;
      case 9:
        if (v476 < 143)
        {
          goto LABEL_89;
        }

        v168 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_96;
        }

        v169 = *(v1 + 80);
        sub_1ABA8913C();
        v170 = swift_allocObject();
        v171 = *(v168 + 427);
        v172 = *(v168 + 428);
        v0 = v168[1704];

        sub_1ABA91D48(v0, v171, v172, &v516);
        v173 = sub_1ABA9954C();
        sub_1ABA8CD40(v174, v173);
        *(swift_task_alloc() + 16) = v169;

        sub_1ABA8B520(sub_1ABD71A60);
        if (v169)
        {
LABEL_79:
          sub_1ABA8AF8C(v175, v176, v177, v178, v179, v180, v181, v182, v360, v374, v388, v402, v414, v426, v439, *(&v439 + 1), v454, v462, v468, v476, v484, v492, v500);
          sub_1ABAA1A3C();
          swift_bridgeObjectRelease_n();

          sub_1ABA8B718(v350, v351, v352, v353, v354, v355, v356, v357, v373, v387, v401);

LABEL_80:
          swift_deallocUninitializedObject();
LABEL_81:
          sub_1ABA7BBE0();
          sub_1ABA898DC();

          __asm { BRAA            X1, X16 }
        }

        sub_1ABA9FC50();

        sub_1ABD7343C(v172);
        sub_1ABA9F0D4();

        *(v170 + 56) = v171;
        *(v170 + 64) = v0;
        *(v170 + 72) = 0;
        *(v170 + 80) = 0;
        *(v170 + 87) = 0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v328;
        }

        sub_1ABAABCE8();
        if (v167)
        {
LABEL_44:
          sub_1ABA819D0(v183);
          sub_1ABADB5D8();
          v4 = v191;
        }

LABEL_35:

        v4[2] = v171;
        v4[v172 + 4] = v170;
LABEL_36:
        v1 = v484;
        goto LABEL_69;
      case 10:
        sub_1ABAA1A3C();
        swift_bridgeObjectRetain_n();
        v192 = sub_1ABD77144(v6);

        if (!v192)
        {
          sub_1ABA8B718(v193, v194, v195, v196, v197, v198, v199, v200, v360, v374, v388);

          sub_1ABA89B1C();
          sub_1ABD718B8();
          sub_1ABA7D104();
          swift_allocError();
          v349 = 34;
LABEL_77:
          *v348 = v349 | 0xD000000000000010;
LABEL_78:
          v348[1] = v0;
          swift_willThrow();

          goto LABEL_81;
        }

        if (v476 < 91)
        {
          goto LABEL_90;
        }

        v201 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_101;
        }

        v202 = v192;
        sub_1ABA807B4();
        v19 = swift_allocObject();
        sub_1ABA91D48(v201[1080], *(v201 + 271), *(v201 + 272), &v516);
        v203 = sub_1ABA9954C();
        sub_1ABAA416C(v204, v203);
        sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA4EC8();
        v22 = swift_allocObject();
        sub_1ABA828A4(v22, v205, v206, v207, v208, v209, v210, v211, v212, v360, v374, v388, v402, v414, v426, v439, *(&v439 + 1), v454, v462, v4, v476, v484, v492, v500, v3, v213);
        sub_1ABAA267C();
        v214 = swift_allocObject();
        sub_1ABD71A78(v214, v215, v216, v217, v218, v219, v220, v221, v222, v366, v380, v394, v408, v419, v433, v223);
        sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        sub_1ABAA5964();
        v224 = swift_allocObject();
        sub_1ABA828A4(v224, v225, v226, v227, v228, v229, v230, v231, v232, v367, v381, v395, v409, v420, v434, v443, v450, v458, v465, v472, v480, v488, v496, v504, v512, v233);
        if (v459 < 23)
        {
          goto LABEL_93;
        }

        v235 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_106;
        }

        v236 = v234;
        sub_1ABA7D028();
        v237 = swift_allocObject();
        sub_1ABA8882C(*(v235 + 0x210), *(v235 + 0x218), *(v235 + 0x220), &v516);
        v238 = sub_1ABAA2374();
        sub_1ABAA4620(v239, v238);
        *(v237 + 16) = v236;
        v4[4] = v237 | 0x4000000000000000;
        v240 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_105;
        }

        sub_1ABA7D028();
        v435 = swift_allocObject();
        sub_1ABA807B4();
        v241 = swift_allocObject();
        sub_1ABA91D48(v240[612], *(v240 + 154), *(v240 + 155), &v516);
        *(v241 + 16) = sub_1ABA9954C();
        *(v241 + 32) = v242;
        *(v241 + 40) = v243;
        *(v241 + 48) = v244;
        sub_1ABAA4EC8();
        v245 = swift_allocObject();
        sub_1ABA828A4(v245, v246, v247, v248, v249, v250, v251, v252, v253, v368, v382, v396, v410, v421, v435, v444, v451, v459, v2, v473, v481, v489, v497, v505, v513, v254);
        sub_1ABA7D9B8();
        v255 = swift_allocObject();
        v256 = sub_1ABD7343C(v202);
        v258 = v257;

        *(v255 + 16) = v256;
        *(v255 + 24) = v258;
        sub_1ABAB1154();
        v245[2].n128_u64[0] = v255 | v259;
        *(v241 + 56) = v245;
        v4[5] = v241 | 4;
        *(v426 + 16) = v4;
        v79 = v426 | 0x1000000000000004;
        break;
      case 14:
        v430 = sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA267C();
        v98 = swift_allocObject();
        sub_1ABD71A78(v98, v99, v100, v101, v102, v103, v104, v105, v106, v360, v374, v388, v402, v414, v430, v107);
        v108 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
        sub_1ABAA5964();
        v109 = swift_allocObject();
        sub_1ABA828A4(v109, v110, v111, v112, v113, v114, v115, v116, v117, v364, v378, v392, v406, v418, v431, v439, *(&v439 + 1), v454, v462, v4, v476, v484, v492, v500, v508, v118);
        if (v457 < 10)
        {
          goto LABEL_85;
        }

        v407 = v108;
        v511 = v3;
        v464 = v2;
        v120 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_99;
        }

        v121 = v119;
        v122 = *(v1 + 80);
        sub_1ABA7D028();
        v123 = swift_allocObject();
        sub_1ABA7D028();
        v124 = swift_allocObject();
        v125 = *(v120 + 0xE0);
        v126 = *(v120 + 0xE0 + 8);
        v127 = *(v120 + 0xD8);

        sub_1ABA8882C(v127, v125, v126, &v516);
        v128 = sub_1ABAA2374();
        sub_1ABA975B0(v129, v128);
        *(v124 + 16) = v121;
        v4[4] = v124 | 0x4000000000000000;
        sub_1ABA7D9B8();
        v130 = swift_allocObject();
        v131 = swift_task_alloc();
        *(v131 + 16) = v122;

        sub_1ABE0F568(sub_1ABD7190C, v131, v6);
        sub_1ABA9FC50();

        sub_1ABD7343C(v124);
        sub_1ABA9F0D4();

        *(v130 + 16) = v121;
        *(v130 + 24) = v125;
        v4[5] = v130 | 0x5000000000000000;
        *(v123 + 16) = v4;

        v133 = sub_1ABD77144(v132);

        if (v133)
        {
          sub_1ABA7D9B8();
          v134 = swift_allocObject();
          v135 = sub_1ABD7343C(v133);
          v137 = v136;

          *(v134 + 16) = v135;
          *(v134 + 24) = v137;
          sub_1ABAB1154();
          v139 = v134 | v138;
        }

        else
        {
          sub_1ABA96A50();
          v139 = v123 | v263;
        }

        v422 = v139;
        v264 = v487;
        v2 = v464;
        v3 = v511;
        if (v479 < 92)
        {
          goto LABEL_92;
        }

        v265 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_107;
        }

        sub_1ABA807B4();
        v266 = swift_allocObject();
        sub_1ABA91D48(v265[1092], *(v265 + 274), *(v265 + 275), &v516);
        v267 = sub_1ABA9954C();
        sub_1ABAA416C(v268, v267);
        sub_1ABAA4EC8();
        v269 = swift_allocObject();
        sub_1ABA828A4(v269, v270, v271, v272, v273, v274, v275, v276, v277, v365, v379, v393, v407, v422, v432, v442, v449, v457, v464, v471, v479, v487, v495, v503, v511, v278);
        sub_1ABAA267C();
        v279 = swift_allocObject();
        sub_1ABD71A78(v279, v280, v281, v282, v283, v284, v285, v286, v287, v369, v383, v397, v411, v423, v436, v288);
        sub_1ABAA5964();
        v289 = swift_allocObject();
        sub_1ABA828A4(v289, v290, v291, v292, v293, v294, v295, v296, v297, v370, v384, v398, v412, v424, v437, v445, v452, v460, v466, v474, v482, v490, v498, v506, v514, v298);
        if (v461 < 0xE)
        {
          goto LABEL_95;
        }

        v300 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_109;
        }

        v301 = v299;
        sub_1ABA7D028();
        v302 = swift_allocObject();
        sub_1ABA8882C(*(v300 + 0x138), *(v300 + 0x140), *(v300 + 0x140 + 8), &v516);
        v303 = sub_1ABAA2374();
        sub_1ABA8A560(v304, v303);
        *(v301 + 64) = v305;
        *(v302 + 16) = v301;
        v4[4] = v302 | 0x4000000000000000;
        v306 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_108;
        }

        sub_1ABA7D028();
        v307 = swift_allocObject();
        sub_1ABA807B4();
        v308 = swift_allocObject();
        sub_1ABA91D48(v306[204], *(v306 + 52), *(v306 + 53), &v516);
        v309 = sub_1ABA9954C();
        sub_1ABAB67D0(v310, v309);
        sub_1ABAA4EC8();
        v311 = swift_allocObject();
        sub_1ABA828A4(v311, v312, v313, v314, v315, v316, v317, v318, v319, v371, v385, v399, v413, v425, v438, v446, v453, v461, v467, v475, v483, v491, v499, v507, v515, v320);
        *(v321 + 32) = v414;
        *(v308 + 56) = v321;
        v4[5] = v308 | 4;
        *(v307 + 16) = v4;
        v269[2].n128_u64[0] = v307 | 0x1000000000000004;
        v0 = 0xFFFFFFFFFFFFFFBLL;
        *(v266 + 56) = v269;

        v4 = v468;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA93700();
          sub_1ABADB5D8();
          v4 = v330;
        }

        v1 = v264;
        v323 = v4[2];
        v322 = v4[3];
        if (v323 >= v322 >> 1)
        {
          sub_1ABA9025C(v322);
          sub_1ABADB5D8();
          v4 = v331;
        }

        v261 = v266 | 4;
        v4[2] = v323 + 1;
        v262 = &v4[v323];
        goto LABEL_68;
      case 21:
        goto LABEL_69;
      default:
        v344 = *v3;

        v516 = 0;
        v517 = 0xE000000000000000;
        sub_1ABF24AB4();
        v345 = v517;
        *(v1 + 40) = v516;
        *(v1 + 48) = v345;
        v346 = sub_1ABA8F71C();
        MEMORY[0x1AC5A9410](v346);
        *(v1 + 16) = v5;
        *(v1 + 24) = v6;
        *(v1 + 32) = v344;
        sub_1ABF24C54();
        sub_1ABA7F0D0();
        MEMORY[0x1AC5A9410](0xD000000000000010);
        v347 = *(v1 + 40);
        v0 = *(v1 + 48);
        sub_1ABD718B8();
        sub_1ABA7D104();
        swift_allocError();
        *v348 = v347;
        goto LABEL_78;
    }

    v22[2].n128_u64[0] = v79;
    *(v19 + 56) = v22;
    v4 = v468;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1ABA93700();
      sub_1ABADB5D8();
      v4 = v326;
    }

    v1 = v484;
    v2 = v462;
    v3 = v508;
    v0 = v4[2];
    v260 = v4[3];
    if (v0 >= v260 >> 1)
    {
      sub_1ABA7BBEC(v260);
      sub_1ABADB5D8();
      v4 = v327;
    }

    v261 = v19 | 4;
    v4[2] = v0 + 1;
    v262 = &v4[v0];
LABEL_68:
    v262[4] = v261;
LABEL_69:
    v3 += 24;
    ++v2;
  }

  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
}

uint64_t sub_1ABD684C0()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7BBC0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    v4 = sub_1ABD686C4;
  }

  else
  {
    v4 = sub_1ABD685FC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1ABD685FC()
{
  sub_1ABA7BC04();
  v1 = v0[8];
  v2 = v0[11];
  if ((~v1 & 0xF000000000000007) != 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = v0[11];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1ABA7BEF0();
      sub_1ABADB5D8();
      v2 = v8;
    }

    v5 = *(v2 + 16);
    v4 = *(v2 + 24);
    if (v5 >= v4 >> 1)
    {
      sub_1ABA819D0(v4);
      sub_1ABADB5D8();
      v2 = v9;
    }

    *(v2 + 16) = v5 + 1;
    *(v2 + 8 * v5 + 32) = v1;
  }

  v6 = v0[1];

  return v6(v2);
}

void sub_1ABD686E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v146 = v10;
  type metadata accessor for KGQ.Value(0);
  sub_1ABA7BB64();
  v139 = v14;
  v140 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C068();
  v136 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v135 = (&v131 - v17);
  v142 = sub_1ABAD219C(&qword_1EB4D11A0, &qword_1ABF33328);
  sub_1ABAA5964();
  v18 = swift_allocObject();
  v147 = xmmword_1ABF34740;
  *(v18 + 16) = xmmword_1ABF34740;
  v19 = _Records_GDEntityClass_records;
  if (!_Records_GDEntityClass_records)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_1ABA7D028();
  v20 = swift_allocObject();
  sub_1ABA8882C(*(v19 + 0x4C8), *(v19 + 0x4D0), *(v19 + 0x4D8), v149);
  v21 = sub_1ABA7F638();
  sub_1ABA8A2A4(v22, v21);
  sub_1ABA9A57C();
  sub_1ABADB5D8();
  v24 = v23;
  v26 = *(v23 + 16);
  v25 = *(v23 + 24);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    goto LABEL_52;
  }

LABEL_3:
  sub_1ABA8AB2C();
  *(v24 + 16) = v27;
  sub_1ABAA003C(v20 | 0x4000000000000000);
  sub_1ABA9EAD4();
  v12 = v11;
  if (v11)
  {
    goto LABEL_60;
  }

  v28 = 0;
  v29 = v149[0];
  v20 = v149[0] + 16;
  v27 = *(v149[0] + 16);
  v30 = 0xF000000000000007;
  v143 = 279;
  v141 = xmmword_1ABF34060;
  v145 = v149[0] + 16;
  while (2)
  {
    while (2)
    {
      v31 = v20 + 24 * v28;
      do
      {
        if (v27 == v28)
        {

          if ((~v30 & 0xF000000000000007) != 0)
          {
            sub_1ABA7D9B8();
            v120 = swift_allocObject();
            v121 = (v120 + 24);
            *(v120 + 16) = v30;
            v123 = 0x2000000000000000;
          }

          else
          {
            sub_1ABA7D028();
            swift_allocObject();
            sub_1ABA9F290();
            v123 = v122 + 9;
          }

          v129 = v138;
          *v121 = v24;
          *v129 = v123 | v120;
          goto LABEL_47;
        }

        v25 = *(v29 + 16);
        if (v28 >= v25)
        {
          __break(1u);
          __break(1u);
LABEL_52:
          sub_1ABA7BBEC(v25);
          sub_1ABADB5D8();
          v24 = v130;
          goto LABEL_3;
        }

        ++v28;
        v32 = (v31 + 24);
        v33 = *(v31 + 16);
        v31 += 24;
      }

      while (v33 == 21);
      if (v33 == 11)
      {
        v66 = *v32;
        if (*(*v32 + 16))
        {
          sub_1ABAA1384();
          v68 = v136;
          sub_1ABB2D38C(v66 + v67, v136);
          if (swift_getEnumCaseMultiPayload() == 7)
          {
            sub_1ABAB1154();
            v137 = v69;
            sub_1ABD71944(v30);
            v70 = v68;
            v71 = *v68;
            v72 = v70[1];
            sub_1ABA7D9B8();
            v73 = swift_allocObject();
            *(v73 + 16) = v71;
            *(v73 + 24) = v72;
            goto LABEL_41;
          }

          sub_1ABA9FA88();
          v74 = v12;

          sub_1ABD6DC28(v68);
        }

        else
        {
          sub_1ABA9FA88();
          v74 = v12;
        }

        sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
        sub_1ABAA267C();
        v12 = swift_allocObject();
        v101 = sub_1ABA84254(v12);
        sub_1ABD71A88(v101);
        v103 = _Records_GDEntityClass_records;
        if (!_Records_GDEntityClass_records)
        {
          goto LABEL_59;
        }

        v104 = v102;
        sub_1ABA7D028();
        v134 = swift_allocObject();
        sub_1ABA7D028();
        v105 = swift_allocObject();
        sub_1ABA8882C(*(v103 + 0x270), *(v103 + 0x278), *(v103 + 0x280), v149);
        v106 = sub_1ABA7F638();
        sub_1ABAA4620(v107, v106);
        *(v105 + 16) = v104;
        v12[4] = v105 | 0x4000000000000000;
        sub_1ABA7D9B8();
        v108 = swift_allocObject();
        MEMORY[0x1EEE9AC00](v108);
        sub_1ABA7DBD0();

        v109 = sub_1ABAA31B8();
        v11 = v74;
        sub_1ABE0F568(v109, v110, v66);
        v144 = v74;
        if (v74)
        {
          sub_1ABD71944(v148);

          swift_bridgeObjectRelease_n();
          sub_1ABA7D9B8();
          swift_deallocUninitializedObject();
          sub_1ABD71A94(v12[4]);

          v12[2] = 0;

          sub_1ABA7D028();
          swift_deallocUninitializedObject();
          goto LABEL_47;
        }

        v112 = v111;
        sub_1ABA96A50();
        v137 = v113;

        v114 = sub_1ABD7343C(v112);
        v116 = v115;

        *(v108 + 16) = v114;
        *(v108 + 24) = v116;
        v12[5] = v108 | 0x5000000000000000;
        sub_1ABD71944(v148);

        v73 = v134;
        v134[1].n128_u64[0] = v12;
        v12 = v144;
        v20 = v145;
        v24 = a10;
LABEL_41:
        v30 = v137 | v73;
        continue;
      }

      break;
    }

    if (v33 == 13)
    {
      v47 = *v32;
      sub_1ABAD219C(&qword_1EB4D10E0, &unk_1ABF5E6C0);
      sub_1ABAA5964();
      v48 = swift_allocObject();
      sub_1ABD71A88(v48);
      if (v143 >= 34)
      {
        sub_1ABA9FA88();
        v50 = _Records_GDEntityPredicate_records;
        if (!_Records_GDEntityPredicate_records)
        {
          goto LABEL_56;
        }

        v51 = v49;
        sub_1ABAA4EC8();
        v43 = swift_allocObject();
        v52 = *(v50 + 100);
        v53 = *(v50 + 101);
        v54 = v50[396];

        sub_1ABA91D48(v54, v52, v53, v149);
        v51[2] = sub_1ABA7C4D0();
        v51[3].n128_u64[0] = v55;
        v51[3].n128_u64[1] = v56;
        v51[4].n128_u16[0] = v57;
        *(v43 + 16) = v51;
        MEMORY[0x1EEE9AC00](v58);
        sub_1ABA7DBD0();

        v59 = sub_1ABAA31B8();
        v11 = v12;
        sub_1ABE0F568(v59, v60, v47);
        if (!v12)
        {
          v44 = v61;

          v62 = sub_1ABD7343C(v44);
          v45 = v63;

          *(v43 + 24) = v62;
          *(v43 + 32) = v45;
          sub_1ABA8ADA4();
          if (v65)
          {
            sub_1ABA7BBEC(v64);
            sub_1ABADB5D8();
            a10 = v117;
          }

          v20 = v145;

          v46 = 0x5000000000000004;
          goto LABEL_36;
        }

        sub_1ABD71944(v148);

        sub_1ABAA4EC8();
        swift_deallocUninitializedObject();
        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_54;
    }

    if (v33 != 12)
    {
      v124 = *v32;
      v125 = v32[8];

      sub_1ABAA3D44();
      sub_1ABF24AB4();
      sub_1ABA8B914();
      v126 = sub_1ABA8F71C();
      MEMORY[0x1AC5A9410](v126);
      LOBYTE(v149[0]) = v33;
      v149[1] = v124;
      v150 = v125;
      sub_1ABA9FDC0();
      sub_1ABA7F0D0();
      MEMORY[0x1AC5A9410](0xD000000000000016);
      sub_1ABD718B8();
      sub_1ABA7D104();
      v127 = swift_allocError();
      sub_1ABA8A654(v127, v128);
      sub_1ABD71944(v30);

      goto LABEL_47;
    }

    v34 = *v32;
    v35 = *(*v32 + 16);
    v137 = v34;
    if (v35)
    {
      sub_1ABAA1384();
      v37 = v135;
      sub_1ABB2D38C(v34 + v36, v135);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v148 = v30;
        v38 = v37;
        v39 = *v37;
        v40 = v38[1];
        sub_1ABA7D9B8();
        v41 = swift_allocObject();
        v42 = v24;
        v43 = v41;
        *(v41 + 16) = v39;
        *(v41 + 24) = v40;
        v44 = *(v42 + 16);
        v11 = *(v42 + 24);
        a10 = v42;
        v45 = v44 + 1;
        sub_1ABA83A08();

        if (v44 >= v11 >> 1)
        {
          sub_1ABAA4A70();
          sub_1ABADB5D8();
          a10 = v119;
        }

        v46 = 0x4000000000000004;
        sub_1ABA83A08();

LABEL_36:
        v100 = v46 | v43;
        v24 = a10;
        *(a10 + 16) = v45;
        *(a10 + 8 * v44 + 32) = v100;
        v30 = v148;
        continue;
      }

      sub_1ABD6DC28(v37);
    }

    else
    {
    }

    break;
  }

  if (v143 < 33)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_1ABA9FA88();
  v75 = _Records_GDEntityPredicate_records;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_58;
  }

  v144 = v12;
  sub_1ABA807B4();
  v43 = swift_allocObject();
  sub_1ABA91D48(v75[384], *(v75 + 97), *(v75 + 98), v149);
  *(v43 + 16) = sub_1ABA7C4D0();
  *(v43 + 32) = v76;
  *(v43 + 40) = v77;
  *(v43 + 48) = v78;
  sub_1ABAD219C(&qword_1EB4D1318, &unk_1ABF334A0);
  sub_1ABAA4EC8();
  v134 = swift_allocObject();
  sub_1ABD71A88(v134);
  sub_1ABAA267C();
  v79 = swift_allocObject();
  v80 = sub_1ABA84254(v79);
  sub_1ABD71A88(v80);
  if (!_Records_GDEntityClass_records)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:

    __break(1u);
    return;
  }

  v82 = v81;
  sub_1ABA7D028();
  v132 = swift_allocObject();
  sub_1ABA7D028();
  v83 = swift_allocObject();
  sub_1ABA9F004();
  v84 = sub_1ABA7F638();
  sub_1ABAA4620(v85, v84);
  *(v83 + 16) = v82;
  v133 = v79;
  *(v79 + 32) = v83 | 0x4000000000000000;
  sub_1ABA7D9B8();
  v86 = swift_allocObject();
  sub_1ABA8BB28();
  MEMORY[0x1EEE9AC00](v87);
  sub_1ABA7DBD0();
  v88 = v137;

  v89 = sub_1ABAA31B8();
  v11 = v144;
  sub_1ABE0F568(v89, v90, v88);
  v45 = v11;
  if (!v11)
  {
    v44 = v91;
    v144 = 0;

    v92 = sub_1ABD7343C(v44);
    v94 = v93;

    *(v86 + 16) = v92;
    *(v86 + 24) = v94;
    v95 = v133;
    *(v133 + 40) = v86 | 0x5000000000000000;
    *(v132 + 16) = v95;
    sub_1ABA96A50();
    v98 = v134;
    v134[2].n128_u64[0] = v97 | v96;
    *(v43 + 56) = v98;
    sub_1ABA8ADA4();
    if (v65)
    {
      sub_1ABA7BBEC(v99);
      sub_1ABADB5D8();
      a10 = v118;
    }

    v20 = v145;
    sub_1ABA83A08();

    v46 = 4;
    v12 = v144;
    goto LABEL_36;
  }

  sub_1ABD71944(v148);

  swift_bridgeObjectRelease_n();
  sub_1ABAB6968();
  sub_1ABA7D9B8();
  swift_deallocUninitializedObject();
  sub_1ABD71A94(*(v133 + 32));

  sub_1ABAA048C();

  sub_1ABA7D028();
  swift_deallocUninitializedObject();
  v134[1].n128_u64[0] = 0;

  sub_1ABA807B4();
  swift_deallocUninitializedObject();
LABEL_47:
  sub_1ABA7BC90();
}