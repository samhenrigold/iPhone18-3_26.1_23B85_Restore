void sub_1B0D911A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v4)
  {
    return;
  }

  sub_1B0E00124(a1, a2, v5);
  v10 = v9;
  v11 = 0;
  v71 = a2 + 1;
  v12 = __OFADD__(a2, 1);
  v99 = v12;
  v68 = 1;
  v73 = a2;
  while (1)
  {

    v13 = *(a1 + 8);
    if (*(a1 + 12) == v13)
    {
LABEL_60:
      sub_1B0D3EA30();
      swift_allocError();
LABEL_58:
      swift_willThrow();
      return;
    }

    v14 = a4;
    v15 = v11;
    v16 = *(a1 + 22);
    v17 = *(a1 + 20);
    v18 = *a1;
    swift_beginAccess();
    if (v13 == -1)
    {
      goto LABEL_80;
    }

    v19 = v15 + (HIDWORD(v10) - v10) + 1;
    LODWORD(v16) = *(*(v18 + 24) + (v16 | (v17 << 8)) + v13);
    *(a1 + 8) = v13 + 1;
    if (v16 > 40)
    {
      a4 = v14;
      if (v16 == 41)
      {
        v26 = v68 - 1;
        if (__OFSUB__(v68, 1))
        {
          goto LABEL_82;
        }

        --v68;
        v22 = v73;
        if (v26 <= 0)
        {
          sub_1B0ACEC60(&v77);
          v57 = v86;
          *(v14 + 128) = v85;
          *(v14 + 144) = v57;
          *(v14 + 160) = v87;
          *(v14 + 176) = v88;
          v58 = v82;
          *(v14 + 64) = v81;
          *(v14 + 80) = v58;
          v59 = v84;
          *(v14 + 96) = v83;
          *(v14 + 112) = v59;
          v60 = v78;
          *v14 = v77;
          *(v14 + 16) = v60;
          v61 = v80;
          *(v14 + 32) = v79;
          *(v14 + 48) = v61;
          return;
        }

        v11 = v19;
        v21 = 0;
      }

      else
      {
        if (v16 != 123)
        {
LABEL_67:
          *&v77 = 0;
          *(&v77 + 1) = 0xE000000000000000;
          sub_1B0E46298();

          *&v77 = 0xD000000000000010;
          *(&v77 + 1) = 0x80000001B0F2FE20;
          LOBYTE(v91) = v16;
          v54 = sub_1B0E469C8();
          MEMORY[0x1B2726E80](v54);

          MEMORY[0x1B2726E80](0xD000000000000012, 0x80000001B0F2FE40);
          v55 = v77;
          sub_1B0436554();
          swift_allocError();
          *v56 = v55;
          *(v56 + 16) = 0xD000000000000020;
          *(v56 + 24) = 0x80000001B0F2FA10;
          *(v56 + 32) = 130;
          goto LABEL_58;
        }

        v11 = v19;
        v22 = v73;
        v23 = sub_1B0DFF3DC(a1, v73, v5, 1);
        v24 = v23;
        if ((v23 & 0x8000000000000000) != 0)
        {
          sub_1B0436554();
          v62 = swift_allocError();
          *v63 = 0xD000000000000011;
          v63[1] = 0x80000001B0F2FEE0;
          v63[2] = 0xD000000000000020;
          v63[3] = 0x80000001B0F2FA10;
          v63[4] = 202;
LABEL_71:
          v65 = v62;
          swift_willThrow();
          sub_1B0436554();
          swift_allocError();
          *v66 = 0xD000000000000022;
          v66[1] = 0x80000001B0F2FEB0;
          v66[2] = 0xD000000000000020;
          v66[3] = 0x80000001B0F2FA10;
          v66[4] = 115;
          swift_willThrow();

          return;
        }

        v25 = (200000 - v11) & ~((200000 - v11) >> 63);
        if (v25 < v23)
        {
          sub_1B0D98DC0();
          v62 = swift_allocError();
          *v64 = v24;
          v64[1] = v25;
          goto LABEL_71;
        }

        sub_1B0DFE880(0x7DuLL, 0xE100000000000000, 0, 0, a1, v73, v5);
        sub_1B0448078(a1, v73, v5);
        if (!ByteBuffer.readSlice(length:)(v24))
        {
          goto LABEL_60;
        }

        v21 = 0;
      }
    }

    else
    {
      a4 = v14;
      if (v16 == 34)
      {
        v21 = 1;
        v22 = v73;
        v11 = v19;
      }

      else
      {
        if (v16 != 40)
        {
          goto LABEL_67;
        }

        v20 = __OFADD__(v68++, 1);
        if (v20)
        {
          goto LABEL_83;
        }

        v11 = v19;
        v21 = 0;
        v22 = v73;
      }
    }

    v69 = v5;
    v70 = a4;
    if (v11 >= 200000)
    {
      goto LABEL_61;
    }

LABEL_24:
    if (v21)
    {
      break;
    }

    sub_1B0E00124(a1, v22, v5);
    v10 = v47;
  }

  if (v99)
  {
    __break(1u);
    goto LABEL_73;
  }

  if (v71 >= v5)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v49 = v5;
    goto LABEL_58;
  }

  v28 = *(a1 + 8);
  v27 = *(a1 + 12);
  if (v27 < v28)
  {
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
    goto LABEL_78;
  }

  v72 = v11;
  v16 = *(a1 + 16);
  v29 = *(a1 + 20);
  v30 = *(a1 + 22);
  v75 = v30 | (v29 << 8);
  if (v16 - v75 < v27)
  {
    goto LABEL_74;
  }

  v31 = *a1;
  *&v77 = *a1;
  *(&v77 + 1) = __PAIR64__(v27, v28);
  LODWORD(v78) = v16;
  v76 = v29;
  WORD2(v78) = v29;
  v74 = v30;
  BYTE6(v78) = v30;
  *(&v78 + 1) = v28;
  *&v79 = v27;
  v32 = v28;
  while (1)
  {
    if (v27 == v32)
    {
      swift_retain_n();
      sub_1B04394F4(&v77);
      sub_1B0D3EA30();
      swift_allocError();
      swift_willThrow();

      *a1 = v31;
      *(a1 + 8) = v28;
      *(a1 + 12) = v27;
      *(a1 + 16) = v16;
      *(a1 + 20) = v76;
      *(a1 + 22) = v74;
      goto LABEL_58;
    }

    if (v32 < DWORD2(v77))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if ((v32 - DWORD2(v77)) >= (HIDWORD(v77) - DWORD2(v77)))
    {
      goto LABEL_65;
    }

    v33 = v77;
    v34 = WORD2(v78);
    v35 = BYTE6(v78);
    swift_beginAccess();
    v36 = *(*(v33 + 24) + (v35 | (v34 << 8)) + v32);
    if (v36 == 34 || v36 == 92)
    {
      break;
    }

    v20 = __OFADD__(v32++, 1);
    if (v20)
    {
      goto LABEL_66;
    }
  }

  v37 = v31;
  swift_retain_n();
  sub_1B04394F4(&v77);
  v91 = v31;
  v92 = v28;
  v93 = v27;
  v94 = v16;
  v95 = v76;
  v96 = v74;
  v97 = v28;
  v98 = v27;

  sub_1B04394F4(&v91);
  v20 = __OFSUB__(v32, v97);
  v38 = v32 - v97;
  if (v20)
  {
    goto LABEL_75;
  }

  if (v27 < v38 || (v27 - v38) < v28)
  {
    goto LABEL_76;
  }

  if (__CFADD__(v75, v28))
  {
    goto LABEL_77;
  }

  if ((v75 + v28) >> 24)
  {
    v67 = v67 & 0xFF00000000000000 | v16 | (v76 << 32) | (v74 << 48);
    ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v28, v38, v31);
    v40 = v39;

    v41 = HIDWORD(v40);
  }

  else
  {

    LODWORD(v40) = 0;
    LODWORD(v41) = v38;
  }

  v42 = v28 + v38;
  if (__CFADD__(v28, v38))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  *(a1 + 8) = v42;
  v5 = v69;
  a4 = v70;
  if (v27 == v42)
  {
    goto LABEL_60;
  }

  swift_beginAccess();
  v43 = v42 + 1;
  if (v42 == -1)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v11 = v72 + (v41 - v40) + 1;
  v44 = *(*(v37 + 24) + v75 + v42);
  *(a1 + 8) = v43;
  if (v44 == 34)
  {
    v21 = 0;
LABEL_54:
    v22 = v73;
    if (v11 < 200000)
    {
      goto LABEL_24;
    }

LABEL_61:
    sub_1B0436554();
    swift_allocError();
    *v48 = 0xD000000000000017;
    v48[1] = 0x80000001B0F2FE60;
    v48[2] = 0xD000000000000020;
    v48[3] = 0x80000001B0F2FA10;
    v48[4] = 89;
    swift_willThrow();
  }

  else
  {
    if (v44 != 92)
    {
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_1B0E46298();

      v89 = 0xD000000000000010;
      v90 = 0x80000001B0F2FE20;
      v100 = v44;
      v50 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v50);

      MEMORY[0x1B2726E80](0xD000000000000020, 0x80000001B0F2FE80);
      v51 = v89;
      v52 = v90;
      sub_1B0436554();
      swift_allocError();
      *v53 = v51;
      v53[1] = v52;
      v53[2] = 0xD000000000000020;
      v53[3] = 0x80000001B0F2FA10;
      v53[4] = 152;
      swift_willThrow();
      return;
    }

    if (v27 == v43)
    {
      goto LABEL_60;
    }

    v45 = __CFADD__(v43, 1);
    v46 = v43 + 1;
    if (!v45)
    {
      *(a1 + 8) = v46;
      ++v11;
      v21 = 1;
      goto LABEL_54;
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
  }
}

void sub_1B0D91AD0(uint64_t *a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v14 >= a3)
  {
    sub_1B0439BCC();
    v27 = swift_allocError();
    *v28 = a3;
  }

  else
  {
    v21 = *a1;
    v22 = a1[1];
    v23 = *(a1 + 4);
    v42 = *(a1 + 22);
    v43 = *(a1 + 10);

    sub_1B0DB3F50(a1, v14, a3, a5, a6, a7, a8);
    v27 = v8;
    if (!v8)
    {
      v11 = v25;
      v10 = v26;
      v14 = v24;

      v12 = 0;
      goto LABEL_17;
    }

    *a1 = v21;
    a1[1] = v22;
    *(a1 + 4) = v23;
    *(a1 + 10) = v43;
    *(a1 + 22) = v42;
  }

  swift_willThrow();
  v45 = v27;
  v29 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (swift_dynamicCast())
  {
  }

  else
  {

    v45 = v27;
    v30 = v27;
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }
  }

  if (v14 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v37 = a3;
    swift_willThrow();
    return;
  }

  v31 = *a1;
  v32 = a1[1];
  v33 = *(a1 + 4);
  v34 = *(a1 + 10);
  v35 = *(a1 + 22);

  v36 = sub_1B0DFF3DC(a1, v14, a3, 1);
  if (v36 < 0)
  {
    sub_1B0436554();
    swift_allocError();
    *v41 = 0xD000000000000011;
    v41[1] = 0x80000001B0F2FEE0;
    v41[2] = 0xD000000000000020;
    v41[3] = 0x80000001B0F2FA10;
    v41[4] = 202;
    swift_willThrow();

    *a1 = v31;
    a1[1] = v32;
    *(a1 + 4) = v33;
    *(a1 + 10) = v34;
    *(a1 + 22) = v35;
    swift_willThrow();
    return;
  }

  v14 = v36;

  v11 = 0;
  v10 = 0;
  v12 = 1;
LABEL_17:
  v13 = a4;
  v9 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_23:
    v9 = sub_1B0DF5760(0, *(v9 + 2) + 1, 1, v9);
  }

  v39 = *(v9 + 2);
  v38 = *(v9 + 3);
  if (v39 >= v38 >> 1)
  {
    v9 = sub_1B0DF5760((v38 > 1), v39 + 1, 1, v9);
  }

  *(v9 + 2) = v39 + 1;
  v40 = &v9[24 * v39];
  *(v40 + 4) = v14;
  *(v40 + 5) = v11;
  v40[54] = BYTE6(v10);
  *(v40 + 26) = WORD2(v10);
  *(v40 + 12) = v10;
  v40[55] = v12;
  *v13 = v9;
}

void sub_1B0D91E7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    sub_1B0D92288(a1, a2, a3, a4, a5, a6, a7, a8);
    v25 = a8;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v17 = *a1;
      v18 = a1[1];
      v19 = *(a1 + 4);
      v23 = *(a1 + 22);
      v24 = *(a1 + 10);
      if (a2 + 1 < a3)
      {
        swift_retain_n();
        sub_1B0436204(a1);
        while (1)
        {

          sub_1B0D91AD0(a1, a2, a3, a4, a5, a6, a7, v25);

          swift_retain_n();
          sub_1B0436204(a1);
        }
      }

      sub_1B0439BCC();
      v20 = swift_allocError();
      *v21 = a3;

      swift_willThrow();
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        *a1 = v17;
        a1[1] = v18;
        *(a1 + 4) = v19;
        *(a1 + 10) = v24;
        *(a1 + 22) = v23;

        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      }

      else
      {
      }
    }
  }
}

void sub_1B0D92288(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *a1;
  v18 = *(a1 + 8);
  v21 = *(a1 + 20);
  v22 = *(a1 + 16);
  v20 = *(a1 + 22);

  sub_1B0D91AD0(a1, a2, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

      *a1 = v17;
      *(a1 + 8) = v18;
      *(a1 + 16) = v22;
      *(a1 + 20) = v21;
      *(a1 + 22) = v20;

      sub_1B0D91E7C(a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  else
  {
  }
}

uint64_t *sub_1B0D9241C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v23 = *(result + 22);
    v24 = *(result + 10);

    sub_1B0D92570(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[3];
    *(a8 + 32) = v25[2];
    *(a8 + 48) = v20;
    *(a8 + 64) = v25[4];
    *(a8 + 80) = v26;
    v21 = v25[1];
    *a8 = v25[0];
    *(a8 + 16) = v21;
  }

  return result;
}

void sub_1B0D92570(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a5;
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    v61 = a8;
    if (v17)
    {
      v59 = v11;
      v20 = v18;
      v21 = v19;

      sub_1B0DFF2E8(v22, v20, v21 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 231);
      v24 = v23;
      v26 = v25;

      v58 = v24;
      v11 = v59;
    }

    else
    {
      v58 = 0;
      v26 = 0;
    }

    v27 = __OFADD__(a2, 1);
    v28 = a2 + 1;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v60 = v26;
      if (v28 >= a3)
      {
        sub_1B0439BCC();
        v30 = swift_allocError();
        *v31 = a3;
      }

      else
      {
        v29 = *(a1 + 8);
        v55 = *(a1 + 20);
        v56 = *(a1 + 16);
        v54 = *(a1 + 22);
        v57 = *a1;
        if (v28 + 1 < a3)
        {

          sub_1B0436204(a1);

          sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, a1, v28 + 1, a3);
          v82 = 0;

          sub_1B0E027D8(a1, v28, a3, a4, v11, a6, a7);
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v65[0] = 0;
          v65[1] = 0;
          v66 = 0uLL;
          *&v67 = 0;
          *(&v67 + 1) = v38;
          *&v68 = v40;
          *(&v68 + 1) = v42;
          *&v69 = v44;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = v38;
          v77 = v40;
          v78 = v42;
          v79 = v44;
          sub_1B0D7AEF8(v65, v62);
          sub_1B0D7AF30(&v71);
          v45 = v65[0];
          v46 = v65[1];
          v48 = *(&v66 + 1);
          v47 = v66;
          v50 = *(&v67 + 1);
          v49 = v67;
          v52 = *(&v68 + 1);
          v51 = v68;
          v53 = v69;
LABEL_13:
          v63[0] = xmmword_1B0EA4610;
          memset(&v63[1], 0, 48);
          v64 = 0;
          sub_1B0398EFC(v63, &qword_1EB6E6F88, &qword_1B0EEEB30);
          v65[0] = v58;
          v65[1] = v60;
          *&v66 = v45;
          *(&v66 + 1) = v46;
          *&v67 = v47;
          *(&v67 + 1) = v48;
          *&v68 = v49;
          *(&v68 + 1) = v50;
          *&v69 = v51;
          *(&v69 + 1) = v52;
          v70 = v53;
          v71 = v58;
          v72 = v60;
          v73 = v45;
          v74 = v46;
          v75 = v47;
          v76 = v48;
          v77 = v49;
          v78 = v50;
          v79 = v51;
          v80 = v52;
          v81 = v53;
          sub_1B0D98E14(v65, v62);
          sub_1B0D98E70(&v71);
          v35 = v68;
          *(v61 + 32) = v67;
          *(v61 + 48) = v35;
          *(v61 + 64) = v69;
          *(v61 + 80) = v70;
          v36 = v66;
          *v61 = *v65;
          *(v61 + 16) = v36;
          return;
        }

        sub_1B0439BCC();
        v32 = swift_allocError();
        *v33 = a3;
        v82 = v32;
        swift_willThrow();
        *a1 = v57;
        *(a1 + 8) = v29;
        *(a1 + 16) = v56;
        *(a1 + 20) = v55;
        *(a1 + 22) = v54;
        v30 = v82;
      }

      swift_willThrow();
      v65[0] = v30;
      v34 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        v45 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v82 = 0;
        v46 = 1;
        goto LABEL_13;
      }
    }
  }
}

uint64_t *sub_1B0D92B7C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v10 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v19 = swift_allocError();
      *v20 = a3;
    }

    else
    {
      v11 = *result;
      v12 = result[1];
      v13 = *(result + 4);
      v25 = *(result + 22);
      v26 = *(result + 10);

      sub_1B0D95C08(v10, v8, a3, a4, a5, a6, a7);
      v19 = v7;
      if (!v7)
      {
LABEL_14:
        v22 = v18;

        return v22;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v26;
      *(v10 + 22) = v25;
    }

    swift_willThrow();
    v28 = v19;
    v21 = v19;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v28 = v19;
      v23 = v19;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return v22;
      }

      v22 = v27;
    }

    if (v8 < a3)
    {

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v10, v8, a3);
      sub_1B0C740DC(MEMORY[0x1E69E7CC0]);
      goto LABEL_14;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v24 = a3;
    swift_willThrow();
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B0D92E2C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v23 = *(result + 22);
    v24 = *(result + 10);

    sub_1B0D92F70(v11, v9, a3, a4, a5, a6, a7, v25);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
      return swift_willThrow();
    }

    v20 = v25[3];
    a8[2] = v25[2];
    a8[3] = v20;
    a8[4] = v25[4];
    v21 = v25[1];
    *a8 = v25[0];
    a8[1] = v21;
  }

  return result;
}

void sub_1B0D92F70(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v17 = sub_1B0D92B7C(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v52 = v19;
      v53 = v18;
      v54 = v17;
      if (a2 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v20 = a3;
LABEL_6:
        swift_willThrow();

        return;
      }

      v49 = a8;
      sub_1B0436204(a1);
      sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v24 = v22;
        v25 = v23;

        sub_1B0DFF2E8(v26, v24, v25 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 264);
        v28 = v27;
        v46 = v29;

        v30 = v28;
      }

      else
      {
        v46 = 0;
        v30 = 0;
      }

      sub_1B0436204(a1);

      v50 = v30;
      sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
      if (v33)
      {
        v34 = v31;
        v35 = v32;

        sub_1B0DFF2E8(v36, v34, v35 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 269);
        v45 = v37;
        v39 = v38;
      }

      else
      {
        v45 = 0;
        v39 = 0;
      }

      sub_1B0436204(a1);

      v48 = v39;
      v47 = sub_1B0D93570(a1, a2, a3, a4, a5, a6, a7);
      v51 = v40;

      sub_1B0436204(a1);
      a8 = 0;
    }

    v41 = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (a8)
    {

      return;
    }

    if ((v41 & 0x8000000000000000) == 0)
    {
      *&v56 = v54;
      *(&v56 + 1) = v53;
      *&v57 = v52;
      *(&v57 + 1) = v46;
      *&v58 = v50;
      *(&v58 + 1) = v45;
      *&v59 = v48;
      *(&v59 + 1) = v47;
      *&v60 = v51;
      *(&v60 + 1) = v41;
      v61 = v54;
      v62 = v53;
      v63 = v52;
      v64 = v46;
      v65 = v50;
      v66 = v45;
      v67 = v48;
      v68 = v47;
      v69 = v51;
      v70 = v41;
      sub_1B0717138(&v56, v55);
      sub_1B0717224();
      v42 = v59;
      v49[2] = v58;
      v49[3] = v42;
      v49[4] = v60;
      v43 = v57;
      *v49 = v56;
      v49[1] = v43;
      return;
    }

    sub_1B0436554();
    swift_allocError();
    *v44 = 0xD000000000000011;
    v44[1] = 0x80000001B0F2FEE0;
    v44[2] = 0xD000000000000020;
    v44[3] = 0x80000001B0F2FA10;
    v44[4] = 202;
    goto LABEL_6;
  }
}

uint64_t sub_1B0D93570(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7538, "4/\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC42E0;
  *(inited + 32) = sub_1B0D93ADC;
  *(inited + 40) = 0;
  *(inited + 48) = sub_1B0D93B00;
  *(inited + 56) = 0;
  *(inited + 64) = sub_1B0D93B24;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1B0D93B4C;
  *(inited + 88) = 0;
  *(inited + 96) = sub_1B0D93C64;
  *(inited + 104) = 0;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0D994BC;
  *(v15 + 24) = v14;
  *(inited + 112) = sub_1B0D994DC;
  *(inited + 120) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0D994F4;
  *(v17 + 24) = v16;
  *(inited + 128) = sub_1B0D998B4;
  *(inited + 136) = v17;
  swift_retain_n();
  sub_1B0D93D58(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 381);
  v19 = v18;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
  swift_arrayDestroy();
  return v19;
}

uint64_t sub_1B0D937A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v18 = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
    sub_1B0DFF2E8(v18, v20, v19 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 301);
    v29 = sub_1B0E44B98();
    v30 = v21;

    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v22 = a3;
      swift_willThrow();
    }

    else
    {

      sub_1B0436204(a1);

      v23 = sub_1B0D92B7C(a1, a2, a3, a4, a5, a6, a7);
      v25 = v24;
      v27 = v26;
      v28 = v23;
      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);

      *a8 = v29;
      a8[1] = v30;
      a8[2] = v28;
      a8[3] = v25;
      a8[4] = v27;
    }
  }

  return result;
}

uint64_t sub_1B0D93A3C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    sub_1B0DFF2E8(v9, v10, v11 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 325);
    v7 = sub_1B0E44BB8();
  }

  return v7;
}

uint64_t sub_1B0D93B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = sub_1B0E44BB8();
  v14 = v13;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  if (v5)
  {
  }

  sub_1B0DFE880(a3, a4, 0, 0, a1, v10, v11);
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v10, v11);
  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t sub_1B0D93C64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = sub_1B0E44BB8();
  v10 = v9;
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  if (v3)
  {
  }

  sub_1B0DFE880(0xD000000000000010, 0x80000001B0F2E8B0, 0, 0, a1, v6, v7);
  result = sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, v6, v7);
  *a3 = v8;
  a3[1] = v10;
  return result;
}

void sub_1B0D93D58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D99570(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1B0D9402C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D9966C(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1B0D94304(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D9973C(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1B0D945E0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998E4(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1B0D948B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998CC(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1B0D94B8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998CC(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void sub_1B0D94E60(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_13:
    sub_1B0436554();
    swift_allocError();
    *v22 = 0xD000000000000019;
    v22[1] = 0x80000001B0F2FF00;
    v22[2] = a5;
    v22[3] = a6;
    v22[4] = a7;
    swift_willThrow();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return;
  }

  v28 = a3 + 1;
  if (!__OFADD__(a3, 1))
  {
    v9 = v7;
    v12 = (a1 + 32);
    while (1)
    {
      *(swift_allocObject() + 16) = *v12;
      if (v28 >= a4)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v19 = a4;
      }

      else
      {
        v26 = v12;
        v27 = v8;
        v13 = *a2;
        v14 = a2[1];
        v15 = *(a2 + 4);
        v16 = *(a2 + 10);
        v17 = a4;
        v18 = *(a2 + 22);

        sub_1B0D998FC(a2, v28, v17, &v29);
        if (!v9)
        {

          return;
        }

        *a2 = v13;
        a2[1] = v14;
        *(a2 + 4) = v15;
        *(a2 + 10) = v16;
        *(a2 + 22) = v18;
        a4 = v17;
        v12 = v26;
        v8 = v27;
      }

      swift_willThrow();
      v30 = v9;
      v20 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v30 = v9;
        v21 = v9;
        if (!swift_dynamicCast())
        {

          return;
        }
      }

      v9 = 0;
      ++v12;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

uint64_t *sub_1B0D95138(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v13 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v14 = *result;
      v15 = result[1];
      v16 = *(result + 4);
      v31 = *(result + 22);
      v32 = *(result + 10);

      sub_1B0D954C4(v13, v8, a3, a4, a5, a6, a7);
      v18 = v7;
      if (!v7)
      {
        a6 = v17;
LABEL_15:

        return a6;
      }

      *v13 = v14;
      *(v13 + 8) = v15;
      *(v13 + 16) = v16;
      *(v13 + 20) = v32;
      *(v13 + 22) = v31;
    }

    swift_willThrow();
    v34 = v18;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v34 = v18;
      v21 = v18;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return a6;
      }
    }

    if (v8 < a3)
    {

      sub_1B0DB3F50(v13, v8, a3, a4, a5, a6, a7);
      v26 = v22;
      if (!v22)
      {

        return MEMORY[0x1E69E7CC0];
      }

      v27 = v23;
      v28 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
      a6 = swift_allocObject();
      *(a6 + 16) = xmmword_1B0EC1E70;
      sub_1B0DFF2E8(v26, v27, v28 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 402);
      *(a6 + 32) = v29;
      *(a6 + 40) = v30;

      goto LABEL_15;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v25 = a3;
    swift_willThrow();
    return a6;
  }

  __break(1u);
  return result;
}

void sub_1B0D954C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    v15 = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
    v17 = v16;
    v53 = a5;
    v54 = a6;
    v55 = a7;
    v56 = a2;
    v18 = v15;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E37F8, &qword_1B0EA2E00);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1B0EC1E70;
    sub_1B0DFF2E8(v18, v20, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 409);
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
    }

    else
    {
      if (v56 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v39 = a3;
      }

      else
      {
        v24 = *(a1 + 8);
        v47 = *(a1 + 20);
        v48 = *(a1 + 16);
        v46 = *(a1 + 22);
        v49 = *a1;

        if (v56 + 2 >= a3)
        {
          sub_1B0439BCC();
          v40 = swift_allocError();
          *v41 = a3;
          v42 = v49;
        }

        else
        {
          v25 = *a1;
          v26 = *(a1 + 8);
          v27 = *(a1 + 16);
          v28 = *(a1 + 20);
          v50 = *(a1 + 22);
          if (v56 + 3 < a3)
          {
            v29 = v21;
            do
            {
              v52 = v29;
              swift_retain_n();
              sub_1B0436204(a1);

              v30 = sub_1B0DB4210(a1, v56 + 2, a3, a4, v53, v54, v55);
              sub_1B0DFF2E8(v30, v32, v31 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 415);
              v51 = v33;
              v35 = v34;

              v29 = v52;
              v37 = *(v52 + 2);
              v36 = *(v52 + 3);
              if (v37 >= v36 >> 1)
              {
                v29 = sub_1B0AFF0E8((v36 > 1), v37 + 1, 1, v52);
              }

              *(v29 + 2) = v37 + 1;
              v38 = &v29[16 * v37];
              *(v38 + 4) = v35;
              *(v38 + 5) = v51;
              v25 = *a1;
              v26 = *(a1 + 8);
              v27 = *(a1 + 16);
              v28 = *(a1 + 20);
              v50 = *(a1 + 22);
            }

            while (v56 + 3 < a3);
          }

          sub_1B0439BCC();
          v43 = swift_allocError();
          *v44 = a3;

          swift_willThrow();
          v42 = v49;

          *a1 = v25;
          *(a1 + 8) = v26;
          *(a1 + 16) = v27;
          *(a1 + 20) = v28;
          v40 = v43;
          *(a1 + 22) = v50;
        }

        swift_willThrow();
        v45 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
        if (swift_dynamicCast())
        {

          sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, v56, a3);

          return;
        }

        *a1 = v42;
        *(a1 + 8) = v24;
        *(a1 + 16) = v48;
        *(a1 + 20) = v47;
        *(a1 + 22) = v46;
      }

      swift_willThrow();
    }
  }
}

void sub_1B0D959A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = sub_1B0DB4210(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    sub_1B0DFF2E8(v15, v16, v17 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 445);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
      goto LABEL_11;
    }

    if (a2 + 1 < a3)
    {

      sub_1B0436204(a1);

      v19 = sub_1B0DB423C(a1, a2, a3, a4, a5, a6, a7);
      v22 = HIDWORD(v20) - v20;
      if (HIDWORD(v20) >= v20)
      {
        if (v21 - (BYTE6(v21) | (WORD2(v21) << 8)) >= HIDWORD(v20))
        {
          v24[1] = v20;
          v25 = v21;
          v26 = WORD2(v21);
          v27 = BYTE6(v21);
          v28 = v20;
          v29 = HIDWORD(v20);
          v23[0] = 0;
          v23[1] = 0xE000000000000000;
          v24[0] = v19;

          MEMORY[0x1B2726D20](v22);
          sub_1B0D547AC(v24, v23);

          sub_1B04394F4(v24);
          return;
        }

        goto LABEL_12;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v18 = a3;
    swift_willThrow();
  }
}

void sub_1B0D95C08(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v7)
  {
    v20[0] = 0;
    v20[1] = MEMORY[0x1E69E7CC0];
    v20[2] = MEMORY[0x1E69E7CC0];
    sub_1B0D959A0(a1, a2, a3, a4, a5, a6, a7);
    sub_1B0C6FCDC(v17, v18, v15, v16);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;

      swift_willThrow();
    }

    else
    {
      swift_retain_n();

      sub_1B0DFB088(a1, a2 + 1, a3, v20, a4, a5, a6, a7);

      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    }
  }
}

uint64_t sub_1B0D95E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v7 = a6;
  v8 = a5;
  v10 = v6[1];
  v11 = *(v10 + 16);
  if (!*v6)
  {
    if (v11)
    {
      v51 = v6;
      v52 = a1;
      v49 = a2;
      v50 = a3;
      v20 = HIDWORD(a6);
      v55 = WORD2(a6);
      v21 = BYTE6(a6);
      v22 = HIDWORD(a5) - a5;
      swift_beginAccess();
      v16 = 0;
      v48 = v8;
      v23 = (v10 + 54);
      v53 = (v21 & 0xFFFFFFFFFF0000FFLL | (v20 << 8)) + v8;
      v54 = v21;
      do
      {
        v24 = *(v23 - 14);
        v25 = *(v23 - 10);
        if (v25 - v24 == v22)
        {
          v26 = *(v23 - 22);
          v27 = *(v23 - 1);
          v28 = *v23;
          v29 = *(v23 - 6) == a6 && v27 == v55;
          v30 = v29 && v28 == v54;
          v31 = v30 && v26 == a4;
          if (v31 || (swift_beginAccess(), !memcmp((*(v26 + 24) + (v28 | (v27 << 8)) + v24), (*(a4 + 24) + v53), v25 - v24)))
          {

            v11 = 0;
            v32 = v50;
            v6 = v51;
            v13 = v49;
            goto LABEL_21;
          }
        }

        v23 += 24;
        ++v16;
      }

      while (v11 != v16);
      v11 = 0;
      a3 = v50;
      v6 = v51;
      v8 = v48;
      a2 = v49;
      a1 = v52;
      v7 = a6;
    }

    goto LABEL_29;
  }

  v52 = a1;
  v12 = a3;
  v13 = a2;

  v14 = v7;
  v15 = v8;
  v16 = sub_1B0E0873C();
  v18 = v17;
  v11 = v19;

  if (v18)
  {
    v8 = v15;
    v7 = v14;
    a2 = v13;
    a3 = v12;
    a1 = v52;
LABEL_29:
    if (a1 == 1)
    {
    }

    v36 = a1;
    v37 = a3;
    v38 = a2;
    sub_1B0DFDA68(a4, v8, v7 & 0xFFFFFFFFFFFFFFLL, v11);

    v41 = v6[2];
    v39 = v6 + 2;
    v40 = v41;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v39 = v41;
    v42 = v36;
    if ((result & 1) == 0)
    {
      result = sub_1B0D7DF3C(0, *(v40 + 16) + 1, 1);
      v40 = *v39;
    }

    v43 = v38;
    v44 = v37;
    v46 = *(v40 + 16);
    v45 = *(v40 + 24);
    if (v46 >= v45 >> 1)
    {
      result = sub_1B0D7DF3C((v45 > 1), v46 + 1, 1);
      v44 = v37;
      v43 = v38;
      v40 = *v39;
    }

    *(v40 + 16) = v46 + 1;
    v47 = v40 + 24 * v46;
    *(v47 + 32) = v42;
    *(v47 + 40) = v43;
    *(v47 + 54) = BYTE6(v44);
    *(v47 + 52) = WORD2(v44);
    *(v47 + 48) = v44;
    *v39 = v40;
    return result;
  }

  v32 = v12;
LABEL_21:
  if (v52 == 1)
  {
    sub_1B0D97F94(v16, v11, sub_1B0DFE754, sub_1B0E08738, sub_1B0D983A8);

    sub_1B0D98224(v16);
  }

  v33 = v6[2];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0DFE794(v33);
    v33 = result;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(v33 + 16))
  {
    v35 = v33 + 24 * v16;
    *(v35 + 32) = v52;
    *(v35 + 40) = v13;
    *(v35 + 54) = BYTE6(v32);
    *(v35 + 52) = WORD2(v32);
    *(v35 + 48) = v32;

    v6[2] = v33;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D961D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v80 = type metadata accessor for ParameterValue(0);
  v10 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v73 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v75 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v76 = &v73 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7548, &unk_1B0EFA5D0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v73 - v20;
  v23 = *v5;
  v24 = v5[1];
  v25 = *(v24 + 16);
  v81 = v10;
  v78 = v12;
  v79 = a3;
  v87 = a4;
  if (v23)
  {
    v26 = v21;
    v27 = &v73 - v20;

    v28 = sub_1B0E0873C();
    v29 = a1;
    v31 = v30;
    v33 = v32;

    v34 = &v27[*(v26 + 48)];
    sub_1B03B5C80(v29, v34, &qword_1EB6E6440, &unk_1B0EF3530);
    if (v31)
    {
      v35 = v29;
      v36 = v80;
      v37 = v81;
      v38 = v78;
      goto LABEL_24;
    }

    v54 = v29;
    v55 = v80;
    v56 = v81;
  }

  else
  {
    v39 = a2;
    v73 = a1;
    v74 = v5;
    if (!v25)
    {
LABEL_23:
      v34 = &v22[*(v21 + 48)];
      v35 = v73;
      sub_1B03B5C80(v73, v34, &qword_1EB6E6440, &unk_1B0EF3530);
      v33 = 0;
      v5 = v74;
      v36 = v80;
      v37 = v81;
      v38 = v78;
      a2 = v39;
LABEL_24:
      v59 = (*(v37 + 48))(v34, 1, v36);
      v60 = v79;
      v61 = v87;
      if (v59 == 1)
      {
        sub_1B0398EFC(v35, &qword_1EB6E6440, &unk_1B0EF3530);
      }

      else
      {
        v62 = v34;
        v63 = v77;
        sub_1B0D06280(v62, v77);
        sub_1B0DFDA80(a2, v60, v61 & 0xFFFFFFFFFFFFFFLL, v33);

        sub_1B0D062E4(v63, v38);
        v66 = v5[2];
        v65 = v5 + 2;
        v64 = v66;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v65 = v66;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1B0CEF664(0, *(v64 + 16) + 1, 1);
          v64 = *v65;
        }

        v69 = *(v64 + 16);
        v68 = *(v64 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1B0CEF664((v68 > 1), v69 + 1, 1);
        }

        sub_1B0398EFC(v35, &qword_1EB6E6440, &unk_1B0EF3530);
        sub_1B0D06348(v63);
        v70 = *v65;
        *(v70 + 16) = v69 + 1;
        result = sub_1B0D06280(v38, v70 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v69);
        *v65 = v70;
      }

      return result;
    }

    v40 = v79;
    v41 = HIDWORD(v87);
    v84 = WORD2(v87);
    v85 = &v73 - v20;
    v42 = BYTE6(v87);
    v43 = HIDWORD(v79) - v79;
    v86 = v21;
    swift_beginAccess();
    v22 = v85;
    v21 = v86;
    v28 = 0;
    v44 = (v24 + 54);
    v82 = (v42 & 0xFFFFFFFFFF0000FFLL | (v41 << 8)) + v40;
    v83 = v42;
    while (1)
    {
      v45 = *(v44 - 14);
      v46 = *(v44 - 10);
      if (v46 - v45 == v43)
      {
        v47 = *(v44 - 22);
        v48 = *(v44 - 1);
        v49 = *v44;
        v50 = *(v44 - 6) == v87 && v48 == v84;
        v51 = v50 && v49 == v83;
        if (v51 && v47 == v39)
        {
          break;
        }

        swift_beginAccess();
        v53 = memcmp((*(v47 + 24) + (v49 | (v48 << 8)) + v45), (*(v39 + 24) + v82), v46 - v45);
        v22 = v85;
        v21 = v86;
        if (!v53)
        {
          break;
        }
      }

      v44 += 24;
      if (v25 == ++v28)
      {
        goto LABEL_23;
      }
    }

    v34 = &v22[*(v21 + 48)];
    v54 = v73;
    sub_1B03B5C80(v73, v34, &qword_1EB6E6440, &unk_1B0EF3530);
    v33 = 0;
    v5 = v74;
    v55 = v80;
    v56 = v81;
  }

  if ((*(v56 + 48))(v34, 1, v55) == 1)
  {
    sub_1B0D97F94(v28, v33, sub_1B0DFE7D4, sub_1B0E08738, sub_1B0D983A8);

    v57 = v75;
    sub_1B0D98108(v28, v75);
    sub_1B0398EFC(v54, &qword_1EB6E6440, &unk_1B0EF3530);
    return sub_1B0D06348(v57);
  }

  v71 = v76;
  sub_1B0D06280(v34, v76);
  v72 = v5[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_1B0DFE72C(v72);
  }

  result = sub_1B0398EFC(v54, &qword_1EB6E6440, &unk_1B0EF3530);
  if ((v28 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v28 < v72[2])
  {
    result = sub_1B0D996D8(v71, v72 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v28);
    v5[2] = v72;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B0D967E4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      v18 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v13 = *a1;
      v14 = *(a1 + 8);
      v15 = *(a1 + 16);
      v16 = *(a1 + 20);
      v17 = *(a1 + 22);
      if (a2 + 2 >= a3)
      {
        sub_1B0439BCC();
        v18 = swift_allocError();
        *v20 = a3;
      }

      else
      {

        sub_1B0436204(a1);
        v18 = v8;
        if (!v8)
        {
          sub_1B0D9241C(a1, v9, a3, a4, a5, a6, a7, v37);
          v34 = v37[0];
          v36 = v37[1];
          v30 = v37[2];
          v32 = v37[3];
          v22 = v38;
          v23 = v39;
          v24 = v40;

          v27 = v30;
          v28 = v32;
          v25 = v34;
          v26 = v36;
          goto LABEL_11;
        }
      }

      swift_willThrow();
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
    }

    swift_willThrow();
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {

      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = xmmword_1B0EA4610;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
LABEL_11:
      *a8 = v25;
      *(a8 + 16) = v26;
      *(a8 + 32) = v27;
      *(a8 + 48) = v28;
      *(a8 + 64) = v22;
      *(a8 + 72) = v23;
      *(a8 + 80) = v24;
      return;
    }
  }
}

uint64_t *sub_1B0D96A2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  result = sub_1B0DB4538(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      v32 = v18;
      if (a2 + 1 >= a3)
      {

        sub_1B0439BCC();
        swift_allocError();
        *v21 = a3;
        return swift_willThrow();
      }

      else
      {
        v29 = result;
        v30 = v19;
        v31 = v20;

        sub_1B0436204(a1);

        sub_1B0D92E2C(a1, a2, a3, a4, a5, a6, a7, v47);
        sub_1B0D967E4(a1, a2, a3, a4, a5, a6, a7, v48);
        v22 = swift_allocObject();
        *&v34[88] = xmmword_1B0EA4610;
        memset(&v34[104], 0, 64);
        v23 = v47[0];
        *&v34[24] = v47[1];
        *&v34[40] = v47[2];
        *&v34[56] = v47[3];
        *&v34[72] = v47[4];
        v22[2] = v29;
        v22[3] = v32;
        v22[4] = v30;
        v22[5] = v31;
        *&v34[168] = 0;
        *v34 = v22;
        *&v34[8] = v23;
        sub_1B0C8C870(v48, &v34[88], &qword_1EB6E6F98, &qword_1B0EEEB40);
        v43 = *&v34[128];
        v44 = *&v34[144];
        v45 = *&v34[160];
        v39 = *&v34[64];
        v40 = *&v34[80];
        v41 = *&v34[96];
        v42 = *&v34[112];
        v35 = *v34;
        v36 = *&v34[16];
        v37 = *&v34[32];
        v38 = *&v34[48];
        v46[8] = *&v34[128];
        v46[9] = *&v34[144];
        v46[10] = *&v34[160];
        v46[4] = *&v34[64];
        v46[5] = *&v34[80];
        v46[6] = *&v34[96];
        v46[7] = *&v34[112];
        v46[0] = *v34;
        v46[1] = *&v34[16];
        v46[2] = *&v34[32];
        v46[3] = *&v34[48];
        sub_1B07AD43C(&v35, v33);
        result = sub_1B071728C(v46);
        v24 = v44;
        a8[8] = v43;
        a8[9] = v24;
        a8[10] = v45;
        v25 = v40;
        a8[4] = v39;
        a8[5] = v25;
        v26 = v42;
        a8[6] = v41;
        a8[7] = v26;
        v27 = v36;
        *a8 = v35;
        a8[1] = v27;
        v28 = v38;
        a8[2] = v37;
        a8[3] = v28;
      }
    }
  }

  return result;
}

void sub_1B0D96D48(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v17 = sub_1B0DB4664(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (a2 + 1 >= a3)
      {

        sub_1B0439BCC();
        swift_allocError();
        *v19 = a3;
        swift_willThrow();
        return;
      }

      v27 = a8;
      v28 = v17;
      v29 = v18;

      sub_1B0436204(a1);

      sub_1B0D92E2C(a1, a2, a3, a4, a5, a6, a7, v45);

      sub_1B0436204(a1);

      sub_1B0D9B748(a1, a2, a3, a4, a5, a6, a7, v46);

      sub_1B0436204(a1);

      sub_1B0D8FADC(a1, a2, a3, a4, a5, a6, a7, v48);

      sub_1B0436204(a1);

      v17 = sub_1B0DFF3DC(a1, a2, a3, 1);
      a8 = 0;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {

      sub_1B0436554();
      swift_allocError();
      *v20 = 0xD000000000000011;
      v20[1] = 0x80000001B0F2FEE0;
      v20[2] = 0xD000000000000020;
      v20[3] = 0x80000001B0F2FA10;
      v20[4] = 202;
      swift_willThrow();
      sub_1B0717224();
      sub_1B075E648(v48);
      sub_1B0D80C80(v46);
    }

    else
    {
      *&__src[80] = v46[4];
      *&__src[96] = v46[5];
      *&__src[112] = v46[6];
      *&__src[128] = v47;
      *&__src[16] = v46[0];
      *&__src[32] = v46[1];
      *&__src[48] = v46[2];
      *&__src[64] = v46[3];
      *&__src[280] = v48[9];
      *&__src[296] = v48[10];
      *&__src[264] = v48[8];
      *&__src[184] = v48[3];
      *&__src[168] = v48[2];
      *&__src[152] = v48[1];
      *&__src[136] = v48[0];
      *&__src[248] = v48[7];
      *&__src[232] = v48[6];
      *&__src[216] = v48[5];
      *&__src[200] = v48[4];
      __src[312] = v49;
      *__src = v28;
      *&__src[8] = v29;
      *&__src[320] = v17;
      sub_1B0D0486C(v46, v43);
      sub_1B07169CC(v48, v43);
      sub_1B0D967E4(a1, a2, a3, a4, a5, a6, a7, v50);
      if (a8)
      {
        sub_1B0C67068(__src);
        sub_1B075E648(v48);
        sub_1B0D80C80(v46);
        sub_1B0717224();
      }

      else
      {
        sub_1B075E648(v48);
        sub_1B0D80C80(v46);
        v21 = swift_allocObject();
        memcpy((v21 + 16), __src, 0x148uLL);
        *&v31[88] = xmmword_1B0EA4610;
        memset(&v31[104], 0, 72);
        *&v31[24] = v45[1];
        *&v31[40] = v45[2];
        *&v31[56] = v45[3];
        *&v31[72] = v45[4];
        *v31 = v21 | 0x4000000000000000;
        *&v31[8] = v45[0];
        sub_1B0C8C870(v50, &v31[88], &qword_1EB6E6F98, &qword_1B0EEEB40);
        v40 = *&v31[128];
        v41 = *&v31[144];
        v42 = *&v31[160];
        v36 = *&v31[64];
        v37 = *&v31[80];
        v38 = *&v31[96];
        v39 = *&v31[112];
        v32 = *v31;
        v33 = *&v31[16];
        v34 = *&v31[32];
        v35 = *&v31[48];
        v43[8] = *&v31[128];
        v43[9] = *&v31[144];
        v43[10] = *&v31[160];
        v43[4] = *&v31[64];
        v43[5] = *&v31[80];
        v43[6] = *&v31[96];
        v43[7] = *&v31[112];
        v43[0] = *v31;
        v43[1] = *&v31[16];
        v43[2] = *&v31[32];
        v43[3] = *&v31[48];
        sub_1B07AD43C(&v32, v30);
        sub_1B071728C(v43);
        v22 = v41;
        v27[8] = v40;
        v27[9] = v22;
        v27[10] = v42;
        v23 = v37;
        v27[4] = v36;
        v27[5] = v23;
        v24 = v39;
        v27[6] = v38;
        v27[7] = v24;
        v25 = v33;
        *v27 = v32;
        v27[1] = v25;
        v26 = v35;
        v27[2] = v34;
        v27[3] = v26;
      }
    }
  }
}

void sub_1B0D97420(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v17 = sub_1B0DB4810(a1, a2, a3, a4, a5, a6, a7);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      swift_willThrow();
    }

    else
    {
      v30 = v17;
      v31 = v18;

      sub_1B0436204(a1);

      sub_1B0D92E2C(a1, a2, a3, a4, a5, a6, a7, v46);

      sub_1B0436204(a1);

      v20 = sub_1B0DFF3DC(a1, a2, a3, 1);
      v21 = v20;
      if ((v20 & 0x8000000000000000) != 0)
      {

        sub_1B0436554();
        swift_allocError();
        *v22 = 0xD000000000000011;
        v22[1] = 0x80000001B0F2FEE0;
        v22[2] = 0xD000000000000020;
        v22[3] = 0x80000001B0F2FA10;
        v22[4] = 202;
        swift_willThrow();
        sub_1B0717224();
      }

      else
      {
        sub_1B0D967E4(a1, a2, a3, a4, a5, a6, a7, v47);
        v23 = swift_allocObject();
        *&v33[88] = xmmword_1B0EA4610;
        memset(&v33[104], 0, 64);
        v24 = v46[0];
        *&v33[24] = v46[1];
        *&v33[40] = v46[2];
        *&v33[56] = v46[3];
        *&v33[72] = v46[4];
        *(v23 + 16) = v30;
        *(v23 + 24) = v31;
        *(v23 + 32) = v21;
        *&v33[168] = 0;
        *v33 = v23 | 0x8000000000000000;
        *&v33[8] = v24;
        sub_1B0C8C870(v47, &v33[88], &qword_1EB6E6F98, &qword_1B0EEEB40);
        v42 = *&v33[128];
        v43 = *&v33[144];
        v44 = *&v33[160];
        v38 = *&v33[64];
        v39 = *&v33[80];
        v40 = *&v33[96];
        v41 = *&v33[112];
        v34 = *v33;
        v35 = *&v33[16];
        v36 = *&v33[32];
        v37 = *&v33[48];
        v45[8] = *&v33[128];
        v45[9] = *&v33[144];
        v45[10] = *&v33[160];
        v45[4] = *&v33[64];
        v45[5] = *&v33[80];
        v45[6] = *&v33[96];
        v45[7] = *&v33[112];
        v45[0] = *v33;
        v45[1] = *&v33[16];
        v45[2] = *&v33[32];
        v45[3] = *&v33[48];
        sub_1B07AD43C(&v34, v32);
        sub_1B071728C(v45);
        v25 = v43;
        a8[8] = v42;
        a8[9] = v25;
        a8[10] = v44;
        v26 = v39;
        a8[4] = v38;
        a8[5] = v26;
        v27 = v41;
        a8[6] = v40;
        a8[7] = v27;
        v28 = v35;
        *a8 = v34;
        a8[1] = v28;
        v29 = v37;
        a8[2] = v36;
        a8[3] = v29;
      }
    }
  }
}

void sub_1B0D9784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v63 = a6;
    v64 = a7;
    v17 = v15;
    v18 = v16;

    sub_1B0DFF2E8(v19, v17, v18 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 572);

    v20 = __OFADD__(a2, 1);
    v21 = a2 + 1;
    if (v20)
    {
LABEL_43:
      __break(1u);
      return;
    }

    if (v21 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v37 = a3;
    }

    else
    {
      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v24 = *(a1 + 20);
      v57 = *(a1 + 22);
      v62 = v21 + 1;

      v58 = v24;
      v59 = v23;
      if (v21 + 1 >= a3)
      {
        sub_1B0439BCC();
        v38 = swift_allocError();
        *v39 = a3;
        v40 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v25 = v21 + 2;
        v26 = *a1;
        v27 = *(a1 + 8);
        v61 = *(a1 + 16);
        v28 = *(a1 + 20);
        v29 = *(a1 + 22);
        if (v25 < a3)
        {
          v30 = MEMORY[0x1E69E7CC0];
          do
          {
            swift_retain_n();
            sub_1B0436204(a1);

            v65 = MEMORY[0x1E69E7CC0];
            sub_1B0D92288(a1, v62, a3, &v65, a4, a5, v63, v64);

            v31 = v65;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_1B0DF577C(0, v30[2] + 1, 1, v30);
            }

            v32 = v30;
            v33 = v30[2];
            v34 = v32;
            v35 = v32[3];
            if (v33 >= v35 >> 1)
            {
              v34 = sub_1B0DF577C((v35 > 1), v33 + 1, 1, v34);
            }

            v34[2] = v33 + 1;
            v36 = &v34[v33];
            v30 = v34;
            v36[4] = v31;
            v26 = *a1;
            v27 = *(a1 + 8);
            v61 = *(a1 + 16);
            v28 = *(a1 + 20);
            v29 = *(a1 + 22);
          }

          while (v25 < a3);
        }

        sub_1B0439BCC();
        v41 = swift_allocError();
        *v42 = a3;

        v40 = MEMORY[0x1E69E7CC0];
        swift_willThrow();

        *a1 = v26;
        *(a1 + 8) = v27;
        *(a1 + 16) = v61;
        *(a1 + 20) = v28;
        *(a1 + 22) = v29;
        v38 = v41;
      }

      swift_willThrow();
      v66 = v38;
      v43 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

        v44 = *(v40 + 16);
        if (!v44)
        {
LABEL_37:

          return;
        }

        v45 = 0;
        v46 = v40 + 32;
        v47 = MEMORY[0x1E69E7CC0];
        while (v45 < *(v40 + 16))
        {
          v48 = v40;
          v49 = *(v46 + 8 * v45);
          v50 = *(v49 + 16);
          v51 = *(v47 + 2);
          v52 = v51 + v50;
          if (__OFADD__(v51, v50))
          {
            goto LABEL_39;
          }

          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v52 > *(v47 + 3) >> 1)
          {
            if (v51 <= v52)
            {
              v54 = v51 + v50;
            }

            else
            {
              v54 = v51;
            }

            v47 = sub_1B0DF5760(isUniquelyReferenced_nonNull_native, v54, 1, v47);
          }

          v40 = v48;
          if (*(v49 + 16))
          {
            if ((*(v47 + 3) >> 1) - *(v47 + 2) < v50)
            {
              goto LABEL_41;
            }

            swift_arrayInitWithCopy();

            if (v50)
            {
              v55 = *(v47 + 2);
              v20 = __OFADD__(v55, v50);
              v56 = v55 + v50;
              if (v20)
              {
                goto LABEL_42;
              }

              *(v47 + 2) = v56;
            }
          }

          else
          {

            if (v50)
            {
              goto LABEL_40;
            }
          }

          if (v44 == ++v45)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      *a1 = v60;
      *(a1 + 8) = v22;
      *(a1 + 16) = v59;
      *(a1 + 20) = v58;
      *(a1 + 22) = v57;
    }

    swift_willThrow();
  }
}

void sub_1B0D97D9C(unint64_t a1, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, uint64_t))
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v7 = v4;
  v12 = v4[1];
  v10 = v4 + 1;
  v11 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v12;
  if (isUniquelyReferenced_nonNull_native && a1 <= *(v11 + 24) >> 1)
  {
    v14 = *v7;
    if (*v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a3();
    v11 = *v10;
    v14 = *v7;
    if (*v7)
    {
LABEL_5:
      swift_beginAccess();
      v15 = *(v14 + 16) & 0x3FLL;
      v16 = MEMORY[0x1B27256A0](a1);
      if (a2)
      {
        v17 = v16;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v19 = v16;
        swift_beginAccess();
        v16 = v19;
        v17 = *(v14 + 24) & 0x3FLL;
        if (v15 >= v16)
        {
          goto LABEL_17;
        }
      }

LABEL_13:
      if (v17 <= v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      goto LABEL_27;
    }
  }

  v16 = MEMORY[0x1B27256A0](a1);
  v15 = 0;
  if (a2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v16 > 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v17 <= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v17;
  }

  v21 = MEMORY[0x1B27256A0](*(v11 + 16));
  if (v21 <= v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  if (v22 < v15)
  {
    if (v17 <= v22)
    {
      v18 = v22;
    }

    else
    {
      v18 = v17;
    }

LABEL_27:
    v23 = a4(v11, v18, 0, v17);

    *v7 = v23;
    return;
  }

  if (!v14 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v24 = *v7;
    if (*v7)
    {
      goto LABEL_32;
    }

LABEL_36:
    if (!v17)
    {
      return;
    }

    __break(1u);
    goto LABEL_38;
  }

  if (!*v7)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v24 = sub_1B0E43578();

  *v7 = v24;
  if (!v24)
  {
    goto LABEL_36;
  }

LABEL_32:
  swift_beginAccess();
  if ((*(v24 + 24) & 0x3FLL) != v17)
  {
    *(v24 + 24) = *(v24 + 24) & 0xFFFFFFFFFFFFFFC0 | v17 & 0x3F;
  }
}

uint64_t sub_1B0D97F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t *))
{
  v9 = v5[1];
  v10 = *(v9 + 16);
  v11 = *v5;
  if (!*v5)
  {
    if (!v10)
    {
      goto LABEL_16;
    }

    return sub_1B0D982EC(a1, a3);
  }

  swift_beginAccess();
  if ((*(v11 + 16) & 0x3FLL) == (*(v11 + 24) & 0x3FLL))
  {
    if (!v10)
    {
      goto LABEL_16;
    }
  }

  else if (v10 <= MEMORY[0x1B2725680]())
  {
LABEL_16:
    v18 = sub_1B0D982EC(a1, a3);
    a4();
    return v18;
  }

  result = swift_isUniquelyReferenced_native();
  v15 = *v5;
  if ((result & 1) == 0)
  {
    if (!v15)
    {
      goto LABEL_20;
    }

    v16 = sub_1B0E43578();

    *v5 = v16;
    v15 = v16;
  }

  if (v15)
  {
    result = a5(a2, v15 + 16, v15 + 32, v5);
    v17 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v17 >= a1)
    {
      sub_1B0D985F4(a1, v17, v9, (v15 + 16), v15 + 32);
      return sub_1B0D982EC(a1, a3);
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0D98108@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0DFE72C(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for ParameterValue(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_1B0D06280(v11, a2);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B0D98224(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0DFE794(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 24 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1B0D982EC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 24 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 56), 24 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

unint64_t sub_1B0D983A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v13 = sub_1B0E434F8();
  sub_1B0E43548();
  if (v13)
  {
    v6 = sub_1B0E43508();
    while (1)
    {
      result = sub_1B0E43528();
      if (v8)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_18;
      }

      sub_1B0E46C28();
      swift_beginAccess();
      sub_1B0E46C38();
      result = sub_1B0E46CB8();
      v9 = 1 << *a2;
      if (__OFSUB__(v9, 1))
      {
        goto LABEL_19;
      }

      v10 = (v9 - 1) & result;
      if (v5 >= v6)
      {
        break;
      }

      if (v10 < v6)
      {
        goto LABEL_12;
      }

LABEL_13:
      sub_1B0E43528();
      v5 = a1;
      sub_1B0E43518();
LABEL_3:
      sub_1B0E43548();
    }

    if (v10 < v6)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v5 < v10)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return sub_1B0E43518();
}

uint64_t sub_1B0D985F4(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v6 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    v25 = a2 - result;
    if (result < (v9 - v6) / 2)
    {
      result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v9 < v8)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (v8)
        {
          v10 = 0;
          while (1)
          {
            sub_1B0E46C28();
            swift_beginAccess();
            sub_1B0E46C38();
            result = sub_1B0E46CB8();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1B0E434F8())
            {
              while (1)
              {
                v11 = sub_1B0E43528();
                if ((v12 & 1) == 0 && v11 == v10)
                {
                  break;
                }

                sub_1B0E43548();
              }
            }

            v6 = v25;
            result = v10 + v25;
            if (__OFADD__(v10, v25))
            {
              goto LABEL_51;
            }

            ++v10;
            result = sub_1B0E43538();
            if (v10 == v8)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1B0E434F8();
      v19 = sub_1B0E43528();
      if ((v20 & 1) != 0 || v19 >= v8)
      {
LABEL_29:
        result = sub_1B0E43548();
LABEL_17:
        v13 = a4[1];
        if (__OFSUB__(v13 >> 6, v6))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v14 = 1 << *a4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v17 = (v16 & (((v13 >> 6) - v6) >> 63)) + (v13 >> 6) - v6;
        if (v17 < v16)
        {
          v16 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v17 - v16) << 6);
        return result;
      }

      if (!__OFADD__(v19, v6))
      {
        sub_1B0E43538();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1B0E434F8();
      v21 = sub_1B0E43528();
      if ((v22 & 1) == 0 && v21 >= v5)
      {
        v15 = __OFSUB__(v21, v6);
        result = v21 - v6;
        if (v15)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1B0E43538();
      }

      return sub_1B0E43548();
    }

    v5 = a2;
    v18 = v9 - a2;
    if (__OFSUB__(v9, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    result = MEMORY[0x1B2725670](*a4 & 0x3FLL);
    if (v18 >= result / 3)
    {
      goto LABEL_35;
    }

    if (v9 < v5)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v5 < 0)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    if (v9 != v5)
    {
      while (1)
      {
        sub_1B0E46C28();
        swift_beginAccess();
        sub_1B0E46C38();
        result = sub_1B0E46CB8();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1B0E434F8())
        {
          while (1)
          {
            v23 = sub_1B0E43528();
            if ((v24 & 1) == 0 && v23 == v5)
            {
              break;
            }

            sub_1B0E43548();
          }
        }

        result = sub_1B0E43538();
        if (++v5 == v9)
        {
          return result;
        }
      }

      goto LABEL_53;
    }
  }

  return result;
}

uint64_t sub_1B0D98A6C(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = (&v28 - v9);
  v11 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  sub_1B0D97D9C(v12, 0, sub_1B0A18B88, sub_1B0E0871C);
  v33 = v11;
  sub_1B0D7DF1C();
  v13 = v33;
  v30 = v12;
  if (!v12)
  {
    return v34;
  }

  v14 = 0;
  v29 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v28 = *(v8 + 72);
  while (1)
  {
    sub_1B03B5C80(v29 + v28 * v14, v10, &qword_1EB6E6568, &qword_1B0EE7F08);
    v16 = *v10;
    v15 = v10[1];
    sub_1B0D06280(v10 + *(v32 + 48), v7);
    v17 = v34;
    v18 = v35;
    v19 = *(v35 + 16);
    if (!v34)
    {
      break;
    }

    sub_1B0E08740(v16, v15, v18 + 32, v19, v17 + 16, v17 + 32);
    v21 = v20;
    v23 = v22;

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_1B0DFD8B0(v16, v15, v23);
    sub_1B0D062E4(v7, v4);
    v33 = v13;
    v27 = *(v13 + 16);
    if (v27 >= *(v13 + 24) >> 1)
    {
      sub_1B0D7DF1C();

      v13 = v33;
    }

    else
    {
    }

    ++v14;
    sub_1B0D06348(v7);
    *(v13 + 16) = v27 + 1;
    sub_1B0D06280(v4, v13 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27);
    if (v14 == v30)
    {
      return v34;
    }
  }

  if (!v19)
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v25 = (v35 + 40);
  while (1)
  {
    result = *(v25 - 1);
    if (result == v16 && *v25 == v15)
    {
      break;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      break;
    }

    v25 += 2;
    if (!--v19)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B0D98DC0()
{
  result = qword_1EB6E7530;
  if (!qword_1EB6E7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7530);
  }

  return result;
}

void sub_1B0D98EC4(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  v75 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v69 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6EF8, " |\a");
  v8 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v69 - v9;
  v10 = MEMORY[0x1E69E7CC0];
  v92 = 0;
  v93 = MEMORY[0x1E69E7CC0];
  v11 = *(a1 + 16);
  sub_1B0D97D9C(v11, 0, sub_1B0D7DF7C, sub_1B0DFE2D8);
  v91 = v10;
  sub_1B0CEF664(0, v11, 0);
  v12 = v91;
  v74 = v11;
  if (!v11)
  {
    return;
  }

  v13 = 0;
  v73 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v14 = *(v8 + 72);
  v71 = v4;
  v72 = v14;
  v70 = v7;
  while (1)
  {
    v80 = v12;
    v15 = v76;
    sub_1B03B5C80(v73 + v72 * v13, v76, &qword_1EB6E6EF8, " |\a");
    v16 = *(v77 + 48);
    v17 = *v15;
    v19 = *(v15 + 8);
    v18 = *(v15 + 12);
    v84 = *(v15 + 16);
    v20 = *(v15 + 20);
    v21 = v7;
    v22 = *(v15 + 22);
    sub_1B0D06280(v15 + v16, v21);
    v23 = v92;
    v85 = v22;
    v86 = v20;
    v82 = v18;
    if (v92)
    {
      v69 = v93;
      v79 = v8;
      sub_1B0E46C28();
      swift_beginAccess();
      v24 = v22 | (v20 << 8);
      sub_1B0E46C38();
      v25 = sub_1B0E46CB8();
      v26 = 1 << *(v23 + 16);
      v27 = __OFSUB__(v26, 1);
      v28 = v26 - 1;
      if (v27)
      {
        __break(1u);
      }

      else
      {
        v81 = v19;
        v29 = v28 & v25;
        v30 = sub_1B0E434F8();
        *&v98 = v23 + 16;
        *(&v98 + 1) = v23 + 32;
        *&v99 = v29;
        *(&v99 + 1) = v30;
        *&v100 = v31;
        *(&v100 + 1) = v32;
        v101 = 0;
        v33 = sub_1B0E43528();
        LOBYTE(v29) = v34;
        v35 = v99;
        v87 = v98;
        v88 = v99;
        v89 = v100;
        v90 = v101;
        v83 = v23;

        if (v29)
        {
          v7 = v70;
          v36 = v71;
LABEL_39:
          v12 = v80;

          v8 = v79;
          v19 = v81;
          v41 = v85;
          v40 = v86;
          goto LABEL_42;
        }

        v78 = v13;
        v53 = v69 + 32;
        v54 = v82 - v81;
        v55 = v24 + v81;
        v56 = v33;
        while (1)
        {
          v58 = (v53 + 24 * v56);
          v59 = *(v58 + 2);
          v60 = *(v58 + 3);
          if (v60 - v59 == v54)
          {
            v61 = *v58;
            v62 = *(v58 + 10);
            v63 = *(v58 + 22);
            v64 = *(v58 + 4) == v84 && v62 == v86;
            v65 = v64 && v63 == v85;
            if (v65 && v61 == v17)
            {
              break;
            }

            swift_beginAccess();
            if (!memcmp((*(v61 + 24) + (v63 | (v62 << 8)) + v59), (*(v17 + 24) + v55), v60 - v59))
            {
              break;
            }
          }

          sub_1B0E43548();
          v94 = v87;
          v95 = v88;
          v96 = v89;
          v97 = v90;
          v35 = v88;
          v56 = sub_1B0E43528();
          if (v57)
          {
            v7 = v70;
            v36 = v71;
            v13 = v78;
            goto LABEL_39;
          }
        }
      }

      goto LABEL_50;
    }

    v37 = *(v93 + 16);
    if (v37)
    {
      break;
    }

    v35 = 0;
    v41 = v85;
    v40 = v86;
    v7 = v70;
    v36 = v71;
    v12 = v80;
LABEL_42:
    v8 = v8 & 0xFF00000000000000 | v84 | (v40 << 32) | (v41 << 48);
    sub_1B0DFDA80(v17, v19 | (v82 << 32), v8, v35);
    sub_1B0D062E4(v7, v36);
    v91 = v12;
    v68 = *(v12 + 16);
    v67 = *(v12 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_1B0CEF664((v67 > 1), v68 + 1, 1);

      v12 = v91;
    }

    else
    {
    }

    ++v13;
    sub_1B0D06348(v7);
    *(v12 + 16) = v68 + 1;
    sub_1B0D06280(v36, v12 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v68);
    if (v13 == v74)
    {
      return;
    }
  }

  v78 = v13;
  v79 = v8;
  v38 = v18 - v19;
  v39 = v93;
  swift_beginAccess();
  v41 = v85;
  v40 = v86;
  v42 = v19;
  v43 = (v39 + 54);
  v81 = v42;
  v83 = (v85 | (v86 << 8)) + v42;
  while (1)
  {
    v44 = *(v43 - 14);
    v45 = *(v43 - 10);
    if (v45 - v44 == v38)
    {
      v46 = *(v43 - 22);
      v47 = *(v43 - 1);
      v48 = *v43;
      v49 = *(v43 - 6) == v84 && v47 == v40;
      v50 = v49 && v48 == v41;
      if (v50 && v46 == v17)
      {
        break;
      }

      swift_beginAccess();
      v52 = memcmp((*(v46 + 24) + (v48 | (v47 << 8)) + v44), (*(v17 + 24) + v83), v45 - v44);
      v41 = v85;
      v40 = v86;
      if (!v52)
      {
        break;
      }
    }

    v43 += 24;
    if (!--v37)
    {
      v35 = 0;
      v7 = v70;
      v36 = v71;
      v13 = v78;
      v8 = v79;
      v12 = v80;
      v19 = v81;
      goto LABEL_42;
    }
  }

LABEL_50:
  __break(1u);
}

uint64_t sub_1B0D99534@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2, a2[1]);
  if (!v4)
  {
    *a3 = result;
    a3[1] = v7;
  }

  return result;
}

double sub_1B0D99570@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v7 = *(v4 + 16);
  v9[0] = a2;
  v9[1] = a3;
  v7(&v10, a1, v9);
  if (!v5)
  {
    result = *&v10;
    *a4 = v10;
  }

  return result;
}

double sub_1B0D99684@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v10[0] = a2;
  v10[1] = a3;
  v7(&v11, a1, v10);
  if (!v5)
  {
    v9 = v12;
    result = *&v11;
    *a4 = v11;
    *(a4 + 16) = v9;
  }

  return result;
}

uint64_t sub_1B0D996D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1B0D9973C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v11[0] = a2;
  v11[1] = a3;
  v7(&v12, a1, v11);
  if (!v5)
  {
    v9 = v13;
    v10 = v14;
    result = *&v12;
    *a4 = v12;
    *(a4 + 16) = v9;
    *(a4 + 24) = v10;
  }

  return result;
}

void *sub_1B0D997B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v10[0] = a2;
  v10[1] = a3;
  result = v7(v11, a1, v10);
  if (!v5)
  {
    v9 = v11[1];
    *a4 = v11[0];
    a4[1] = v9;
  }

  return result;
}

void *sub_1B0D997FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *(v4 + 16);
  v9[0] = a2;
  v9[1] = a3;
  result = v7(&v10, a1, v9);
  if (!v5)
  {
    *a4 = v10;
  }

  return result;
}

void *sub_1B0D99860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(v4 + 16);
  v10[0] = a2;
  v10[1] = a3;
  result = v7(&v11, a1, v10);
  if (!v5)
  {
    v9 = v12;
    *a4 = v11;
    *(a4 + 8) = v9;
  }

  return result;
}

uint64_t sub_1B0D99914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Command(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t *sub_1B0D99978(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v15 = *(result + 22);
    v16 = *(result + 10);

    sub_1B0D99D1C(v10, v8, a3, &v17);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v16;
      *(v10 + 22) = v15;
      return swift_willThrow();
    }

    return v17;
  }

  return result;
}

uint64_t *sub_1B0D99AA0(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v14 = a3;
    }

    else
    {
      v7 = *result;
      v8 = result[1];
      v9 = *(result + 4);
      v10 = *(result + 10);
      v11 = *(result + 22);

      sub_1B0D9A274(v6, v4, a3);
      v13 = v3;
      if (!v3)
      {
LABEL_13:
        v18 = v12;

        return v18;
      }

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
    }

    swift_willThrow();
    v19 = v13;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v19 = v13;
      v16 = v13;
      if ((swift_dynamicCast() & 1) == 0)
      {
      }
    }

    if (v4 < a3)
    {

      v12 = sub_1B0D9A40C(v6, v4, a3);
      goto LABEL_13;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v17 = a3;
    swift_willThrow();
  }

  __break(1u);
  return result;
}

void sub_1B0D99D1C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t **a4@<X8>)
{
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v9 = sub_1B0D99AA0(a1, a2, a3);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v10 = sub_1B0D9A508(a1, a2, a3);
    sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v11 = sub_1B0DC0BA8(a1, a2, a3);
    sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v12 = sub_1B0DC0BC4(a1, a2, a3);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v13 = sub_1B0DC0BC4(a1, a2, a3);
    sub_1B0DFE880(0x3AuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v22 = sub_1B0DC0BC4(a1, a2, a3);
    sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v20 = a2 + 1;
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else
    {
      if (v20 < a3)
      {

        v19 = sub_1B0D9A704(a1, v20, a3, v12);
        goto LABEL_15;
      }

      sub_1B0439BCC();
      v21 = swift_allocError();
      *v14 = a3;
      swift_willThrow();
      v23 = v21;
      v15 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {

LABEL_11:

        if (v20 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v17 = a3;
          goto LABEL_14;
        }

        v19 = sub_1B0D9A8C0(a1, v20, a3, v12);
LABEL_15:

        sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
        if ((v9 - 4) >= 0xFFFFFFFFFFFFFFE1 && (v10 - 13) >= 0xFFFFFFFFFFFFFFF4 && v12 <= 0x17 && v13 <= 0x3B && v22 <= 0x3C && v19 - 1441 >= 0xFFFFFFFFFFFFF4BFLL && (v11 - 0x2000) >= 0xFFFFFFFFFFFF0001)
        {
          v24[0] = v11;
          v24[1] = v10;
          v24[2] = v9;
          v24[3] = v12;
          v24[4] = v13;
          v24[5] = v22;
          v24[6] = v19;
          *a4 = _s12NIOIMAPCore217ServerMessageDateVyA2C10ComponentsVcfC_0(v24);
          return;
        }

        sub_1B0436554();
        swift_allocError();
        *v18 = 0xD000000000000016;
        v18[1] = 0x80000001B0F2FF40;
        v18[2] = 0xD000000000000020;
        v18[3] = 0x80000001B0F2FA10;
        v18[4] = 167;
LABEL_14:
        swift_willThrow();
        return;
      }

      v23 = v21;
      v16 = v21;
      if (swift_dynamicCast())
      {

        goto LABEL_11;
      }
    }
  }
}

void sub_1B0D9A274(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      v13 = swift_allocError();
      *v14 = a3;
    }

    else
    {
      v8 = *a1;
      v9 = a1[1];
      v10 = *(a1 + 4);
      v11 = *(a1 + 10);
      v12 = *(a1 + 22);

      sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, v4, a3);
      v13 = v3;
      if (!v3)
      {

LABEL_10:
        sub_1B0DC0AB0(a1, a2, a3, 1);
        return;
      }

      *a1 = v8;
      a1[1] = v9;
      *(a1 + 4) = v10;
      *(a1 + 10) = v11;
      *(a1 + 22) = v12;
    }

    swift_willThrow();
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t *sub_1B0D9A40C(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v12 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 4);
    v10 = *(result + 10);
    v11 = *(result + 22);

    sub_1B0DC08C4(v6, v4, a3, 2, &v13);
    if (v3)
    {

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v13;
  }

  return result;
}

uint64_t sub_1B0D9A508(uint64_t result, uint64_t a2, uint64_t a3)
{
  v8 = __OFADD__(a2, 1);
  v9 = a2 + 1;
  if (!v8)
  {
    v33 = v7;
    v34 = v4;
    v35 = v5;
    v36 = v6;
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v16 = a3;
    }

    else
    {
      v10 = result;
      v11 = *result;
      v12 = *(result + 8);
      v13 = *(result + 16);
      v14 = *(result + 20);
      v4 = *(result + 22);
      sub_1B0DFA170(result, &v28);
      if (!v3)
      {
        sub_1B0DFF2E8(v28, v29, v30 | (v31 << 32) | (v32 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 78);
        v18 = v17;
        v20 = v19;
        v21 = sub_1B0E44B98();
        v4 = sub_1B0DC4804(v21, v22);
        v24 = v23;

        if (v24)
        {
          v28 = 0;
          v29 = 0xE000000000000000;
          sub_1B0E46298();

          v28 = 0xD000000000000013;
          v29 = 0x80000001B0F2FF80;
          MEMORY[0x1B2726E80](v20, v18);

          v25 = v28;
          v26 = v29;
          sub_1B0436554();
          swift_allocError();
          *v27 = v25;
          v27[1] = v26;
          v27[2] = 0xD000000000000020;
          v27[3] = 0x80000001B0F2FA10;
          v27[4] = 80;
          swift_willThrow();
        }

        else
        {
        }

        return v4;
      }

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v14;
      *(v10 + 22) = v4;
    }

    swift_willThrow();
    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0D9A704(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0DFE880(0x2BuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_1B0DC0BA8(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return v10 % 0x64 + 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1B0E46298();

      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](0x64656C69616620, 0xE700000000000000);
      sub_1B0436554();
      swift_allocError();
      *v13 = 0xD000000000000017;
      v13[1] = 0x80000001B0F2FF60;
      v13[2] = 0xD000000000000020;
      v13[3] = 0x80000001B0F2FA10;
      v13[4] = 134;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0D9A8C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B0DFE880(0x2DuLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v10 = sub_1B0DC0BA8(a1, a2, a3);
    if ((v10 & 0x8000000000000000) == 0 && (v10 % 0x64 <= 0x3C ? (v11 = a4 <= 24) : (v11 = 0), v11))
    {
      return -(v10 % 0x64) - 60 * ((v10 - v10 % 0x64) / 100);
    }

    else
    {
      sub_1B0E46298();

      v12 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v12);

      MEMORY[0x1B2726E80](0x64656C69616620, 0xE700000000000000);
      sub_1B0436554();
      swift_allocError();
      *v13 = 0xD000000000000017;
      v13[1] = 0x80000001B0F2FF60;
      v13[2] = 0xD000000000000020;
      v13[3] = 0x80000001B0F2FA10;
      v13[4] = 143;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t *sub_1B0D9AA80(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      return swift_willThrow();
    }

    v10 = result;
    v11 = *result;
    v12 = result[1];
    v13 = *(result + 4);
    v19 = *(result + 22);
    v20 = *(result + 10);

    sub_1B0D9AF4C(v10, v8, a3, a4, a5, a6, a7, &v21);
    if (v7)
    {

      *v10 = v11;
      *(v10 + 8) = v12;
      *(v10 + 16) = v13;
      *(v10 + 20) = v20;
      *(v10 + 22) = v19;
      return swift_willThrow();
    }

    return v21;
  }

  return result;
}

uint64_t *sub_1B0D9ABAC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
    }

    else
    {
      v15 = result;
      v16 = *result;
      v17 = result[1];
      v34 = *(result + 10);
      v35 = *(result + 4);
      v33 = *(result + 22);

      v18 = sub_1B0DB3AC0(v15, v9, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v31 = v18;
        if (v9 + 1 < a3)
        {
          v29 = v19;
          v30 = v20;
          sub_1B0436204(v15);

          sub_1B0DB3F50(v15, v9 + 1, a3, a4, a5, a6, a7);
          v24 = v23;
          v26 = v25;
          v28 = v27;

          *a8 = v31;
          *(a8 + 8) = v29;
          *(a8 + 16) = v30;
          *(a8 + 20) = WORD2(v30);
          *(a8 + 22) = BYTE6(v30);
          *(a8 + 24) = v26;
          *(a8 + 32) = v24;
          *(a8 + 40) = v28;
          *(a8 + 46) = BYTE6(v28);
          *(a8 + 44) = WORD2(v28);
          return result;
        }

        sub_1B0439BCC();
        swift_allocError();
        *v22 = a3;
        swift_willThrow();
      }

      *v15 = v16;
      *(v15 + 8) = v17;
      *(v15 + 16) = v35;
      *(v15 + 20) = v34;
      *(v15 + 22) = v33;
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B0D9AF4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v25 = 0;
    *&v26 = MEMORY[0x1E69E7CC0];
    *(&v26 + 1) = MEMORY[0x1E69E7CC0];
    sub_1B0D9ABAC(a1, a2, a3, a4, a5, a6, a7, v27);
    v18 = v27[0];
    v24 = v27[1];
    v23 = v31;
    v21 = v32 | ((v33 | (v34 << 16)) << 32);
    v22 = v28 | (v29 << 32) | (v30 << 48);

    result = sub_1B0D95E4C(v19, v23, v21, v18, v24, v22);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v20 = a3;

      swift_willThrow();

      sub_1B0D9B6E0(v27);
    }

    else
    {
      swift_retain_n();

      sub_1B0DFB8D8(a1, a2 + 1, a3, &v25, a4, a5, a6, a7);

      sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
      result = sub_1B0D9B6E0(v27);
      *a8 = v25;
      *(a8 + 8) = v26;
    }
  }

  return result;
}

uint64_t *sub_1B0D9B208(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v23 = a3;
    }

    else
    {
      v11 = result;
      v12 = *result;
      v13 = result[1];
      v59 = *(result + 10);
      v60 = *(result + 4);
      v58 = *(result + 22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7560, &qword_1B0EF9F20);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B0EC1E70;
      v16 = v12;

      v17 = sub_1B0DB3AC0(v11, v9, a3, a4, a5, a6, a7);
      if (v7)
      {

        *(v8 + 16) = 0;

        v20 = v59;
        v21 = v60;
        v22 = v58;
      }

      else
      {
        v53 = a6;
        v54 = a7;
        *(v8 + 32) = v17;
        *(v8 + 40) = v18;
        *(v8 + 48) = v19;
        *(v8 + 52) = WORD2(v19);
        *(v8 + 54) = BYTE6(v19);
        if (v9 + 1 >= a3)
        {
          sub_1B0439BCC();
          swift_allocError();
          *v37 = a3;
          v20 = v59;
          v21 = v60;
          v22 = v58;
        }

        else
        {
          v24 = *(v11 + 8);
          v44 = *(v11 + 20);
          v45 = *(v11 + 16);
          v43 = *(v11 + 22);
          v46 = *v11;

          v50 = v9 + 2;
          v21 = v60;
          if (v9 + 2 >= a3)
          {
            sub_1B0439BCC();
            v38 = swift_allocError();
            *v39 = a3;
            v40 = v46;
            v22 = v58;
            v20 = v59;
          }

          else
          {
            v25 = v9 + 3;
            v26 = *v11;
            v27 = *(v11 + 8);
            v49 = *(v11 + 16);
            v51 = *(v11 + 22);
            v52 = *(v11 + 20);
            v20 = v59;
            if (v25 >= a3)
            {
              v22 = v58;
            }

            else
            {
              v28 = v8;
              v47 = v8;
              v48 = v12;
              do
              {
                v55 = v28;
                swift_retain_n();
                sub_1B0436204(v11);

                v29 = sub_1B0DB3AC0(v11, v50, a3, a4, a5, v53, v54);
                v31 = v30;
                v33 = v32;

                v28 = v55;
                v35 = *(v55 + 2);
                v34 = *(v55 + 3);
                if (v35 >= v34 >> 1)
                {
                  v28 = sub_1B0DF57D0((v34 > 1), v35 + 1, 1, v55);
                }

                *(v28 + 2) = v35 + 1;
                v36 = &v28[24 * v35];
                *(v36 + 4) = v29;
                *(v36 + 5) = v31;
                *(v36 + 12) = v33;
                *(v36 + 26) = WORD2(v33);
                v36[54] = BYTE6(v33);
                v26 = *v11;
                v27 = *(v11 + 8);
                v49 = *(v11 + 16);
                v51 = *(v11 + 22);
                v52 = *(v11 + 20);
                v8 = v47;
                v16 = v48;
                v20 = v59;
                v21 = v60;
                v22 = v58;
              }

              while (v25 < a3);
            }

            sub_1B0439BCC();
            v38 = swift_allocError();
            *v41 = a3;

            swift_willThrow();
            v40 = v46;

            *v11 = v26;
            *(v11 + 8) = v27;
            *(v11 + 16) = v49;
            *(v11 + 20) = v52;
            *(v11 + 22) = v51;
          }

          swift_willThrow();
          v42 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
          if (swift_dynamicCast())
          {

            return v8;
          }

          *v11 = v40;
          *(v11 + 8) = v24;
          *(v11 + 16) = v45;
          *(v11 + 20) = v44;
          *(v11 + 22) = v43;
        }

        swift_willThrow();
      }

      *v11 = v16;
      *(v11 + 8) = v13;
      *(v11 + 16) = v21;
      *(v11 + 20) = v20;
      *(v11 + 22) = v22;
    }

    swift_willThrow();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D9B6E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7558, &qword_1B0EF4670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1B0D9B748@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v24 = *(result + 22);
    v25 = *(result + 10);

    sub_1B0D9C06C(v11, v9, a3, a4, a5, a6, a7, v26);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v25;
      *(v11 + 22) = v24;
      return swift_willThrow();
    }

    v20 = v26[5];
    *(a8 + 64) = v26[4];
    *(a8 + 80) = v20;
    *(a8 + 96) = v26[6];
    *(a8 + 112) = v27;
    v21 = v26[1];
    *a8 = v26[0];
    *(a8 + 16) = v21;
    v22 = v26[3];
    *(a8 + 32) = v26[2];
    *(a8 + 48) = v22;
  }

  return result;
}

uint64_t *sub_1B0D9B8A8(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    v11 = result;
    if (v8 >= a3)
    {
      sub_1B0439BCC();
      v17 = swift_allocError();
      *v19 = a3;
    }

    else
    {
      v15 = *result;
      v16 = result[1];
      v24 = *(result + 10);
      v25 = *(result + 4);
      v23 = *(result + 22);

      sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v11, v8, a3);
      v17 = v7;
      if (!v7)
      {
        v26 = MEMORY[0x1E69E7CC0];

        sub_1B0E0469C(v11, &v26, v8, a3, a4, a5, a6, a7);

        v18 = v26;
        sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v11, v8, a3);

LABEL_17:
        a5 = sub_1B0D9CB44(v18);

        return a5;
      }

      *v11 = v15;
      *(v11 + 8) = v16;
      *(v11 + 16) = v25;
      *(v11 + 20) = v24;
      *(v11 + 22) = v23;
    }

    swift_willThrow();
    v27 = v17;
    v20 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v27 = v17;
      v21 = v17;
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    if (v8 < a3)
    {

      sub_1B0DFE880(0x6C696EuLL, 0xE300000000000000, 0, 0, v11, v8, a3);

      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_17;
    }

    sub_1B0439BCC();
    swift_allocError();
    *v22 = a3;
    swift_willThrow();
LABEL_15:

    return a5;
  }

  __break(1u);
  return result;
}

void sub_1B0D9BC14(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v63 = v17;
  v64 = v12;
  v65 = v8;
  v66[0] = v15;
  v66[1] = v16;
  v15 = v66;
  v51 = a8;
  if (a2 + 1 >= a3)
  {
    sub_1B0439BCC();
    v27 = swift_allocError();
    *v28 = a3;
LABEL_9:
    swift_willThrow();
    v58[0] = v27;
    v30 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (!swift_dynamicCast())
    {

      return;
    }

    goto LABEL_11;
  }

  v22 = *a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v25 = *(a1 + 20);
  v26 = *(a1 + 22);
  if (a2 + 2 >= a3)
  {
    sub_1B0439BCC();
    v27 = swift_allocError();
    *v29 = a3;
    goto LABEL_8;
  }

  sub_1B0436204(a1);
  v27 = v10;
  if (v10)
  {
LABEL_8:
    swift_willThrow();
    *a1 = v22;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 20) = v25;
    *(a1 + 22) = v26;
    goto LABEL_9;
  }

LABEL_11:
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v12 = v31;
  v33 = v32;
  v9 = v34;
  sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v49 = v36;
  v50 = v35;
  v13 = v37;
  sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v46 = v39;
  v47 = v38;
  v48 = v40;
  sub_1B0DFE880(0x20uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v14 = v33;
  v53 = v41;
  v55 = v42;
  v11 = v43;
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
LABEL_14:
  v58[0] = v9;
  v58[1] = v14;
  LODWORD(v59) = v12;
  BYTE6(v59) = BYTE6(v12);
  WORD2(v59) = WORD2(v12);
  *(&v59 + 1) = v13;
  *&v60 = v50;
  DWORD2(v60) = v49;
  BYTE14(v60) = BYTE6(v49);
  WORD6(v60) = WORD2(v49);
  *&v61 = v48;
  *(&v61 + 1) = v47;
  *v62 = v46;
  v62[6] = BYTE6(v46);
  *&v62[4] = WORD2(v46);
  *&v62[8] = v11;
  *&v62[16] = v53;
  *&v62[24] = v55;
  v62[30] = BYTE6(v55);
  *&v62[28] = WORD2(v55);
  *(v15 - 23) = v9;
  *(v15 - 22) = v14;
  *(v15 - 42) = v12;
  *(v15 - 162) = BYTE6(v12);
  *(v15 - 82) = WORD2(v12);
  *(v15 - 20) = v13;
  *(v15 - 19) = v50;
  *(v15 - 36) = v49;
  *(v15 - 138) = BYTE6(v49);
  *(v15 - 70) = WORD2(v49);
  *(v15 - 17) = v48;
  *(v15 - 16) = v47;
  *(v15 - 30) = v46;
  *(v15 - 114) = BYTE6(v46);
  *(v15 - 58) = WORD2(v46);
  *(v15 - 14) = v11;
  *(v15 - 13) = v53;
  *(v15 - 24) = v55;
  *(v15 - 90) = BYTE6(v55);
  *(v15 - 46) = WORD2(v55);
  sub_1B0D3CA68(v58, v57);
  sub_1B0D3CAC4((v15 - 23));
  v44 = v61;
  v51[2] = v60;
  v51[3] = v44;
  v51[4] = *v62;
  *(v51 + 79) = *&v62[15];
  v45 = v59;
  *v51 = *v58;
  v51[1] = v45;
}

void sub_1B0D9C06C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (v8)
  {
    return;
  }

  sub_1B0DB3F50(a1, a2, a3, a4, a5, a6, a7);
  v51 = a5;
  v53 = a7;
  v50 = a8;
  if (v17)
  {
    swift_beginAccess();
    v18 = sub_1B0E44C68();
    v20 = v19;

    v21 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
LABEL_4:
      if (v21 >= a3)
      {

        sub_1B0439BCC();
        swift_allocError();
        *v22 = a3;
        swift_willThrow();
        return;
      }

      sub_1B0436204(a1);
      goto LABEL_11;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v21 = a2 + 1;
    if (!__OFADD__(a2, 1))
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_11:
  sub_1B0DB3F50(a1, a2, a3, a4, v51, a6, v53);
  v46 = v23;
  v25 = v24;
  v49 = v26;
  sub_1B0436204(a1);
  v48 = sub_1B0D9B8A8(a1, a2, a3, a4, v51, a6, v53);
  sub_1B0436204(a1);
  v47 = sub_1B0D9B8A8(a1, a2, a3, a4, v51, a6, v53);
  sub_1B0436204(a1);
  v45 = sub_1B0D9B8A8(a1, a2, a3, a4, v51, a6, v53);
  sub_1B0436204(a1);
  v44 = sub_1B0D9B8A8(a1, a2, a3, a4, v51, a6, v53);
  sub_1B0436204(a1);
  v43 = sub_1B0D9B8A8(a1, a2, a3, a4, v51, a6, v53);
  sub_1B0436204(a1);
  v42 = sub_1B0D9B8A8(a1, a2, a3, a4, v51, a6, v53);
  sub_1B0436204(a1);
  sub_1B0DB3F50(a1, a2, a3, a4, v51, a6, v53);
  if (v27)
  {
    sub_1B0DFF2E8(v27, v28, v29 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 103);
    v40 = v30;
    v41 = v31;
  }

  else
  {
    v40 = 0;
    v41 = 0;
  }

  sub_1B0436204(a1);
  sub_1B0DB3F50(a1, a2, a3, a4, v51, a6, v53);
  if (v32)
  {
    sub_1B0DFF2E8(v32, v33, v34 & 0xFFFFFFFFFFFFFFLL, 0xD000000000000020, 0x80000001B0F2FA10, 103);
    v52 = v35;
    v54 = v36;
  }

  else
  {
    v52 = 0;
    v54 = 0;
  }

  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  *&v56 = v18;
  *(&v56 + 1) = v20;
  *&v57 = v49;
  *(&v57 + 1) = v25;
  LODWORD(v58) = v46;
  BYTE6(v58) = BYTE6(v46);
  WORD2(v58) = WORD2(v46);
  *(&v58 + 1) = v48;
  *&v59 = v47;
  *(&v59 + 1) = v45;
  *&v60 = v44;
  *(&v60 + 1) = v43;
  *&v61 = v42;
  *(&v61 + 1) = v40;
  *&v62 = v41;
  *(&v62 + 1) = v52;
  v63 = v54;
  v64[0] = v18;
  v64[1] = v20;
  v64[2] = v49;
  v64[3] = v25;
  v65 = v46;
  v67 = BYTE6(v46);
  v66 = WORD2(v46);
  v68 = v48;
  v69 = v47;
  v70 = v45;
  v71 = v44;
  v72 = v43;
  v73 = v42;
  v74 = v40;
  v75 = v41;
  v76 = v52;
  v77 = v54;
  sub_1B0D0486C(&v56, v55);
  sub_1B0D80C80(v64);
  v37 = v61;
  *(v50 + 64) = v60;
  *(v50 + 80) = v37;
  *(v50 + 96) = v62;
  *(v50 + 112) = v63;
  v38 = v57;
  *v50 = v56;
  *(v50 + 16) = v38;
  v39 = v59;
  *(v50 + 32) = v58;
  *(v50 + 48) = v39;
}

uint64_t sub_1B0D9CB44(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = (a1 + 32);
  v4 = v1 - 1;
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *&v71[15] = *(v3 + 79);
    v6 = v3[4];
    v70 = v3[3];
    *v71 = v6;
    v7 = v3[2];
    v68 = v3[1];
    v69 = v7;
    v67 = *v3;
    if (*&v71[8])
    {
      break;
    }

    if (v70)
    {
      v49 = v70;
      LODWORD(v50) = *v71;
      WORD2(v50) = *&v71[4];
      BYTE6(v50) = v71[6];
      *(&v50 + 1) = *(&v68 + 1);
      *&v51 = v69;
      DWORD2(v51) = DWORD2(v69);
      BYTE14(v51) = BYTE14(v69);
      WORD6(v51) = WORD6(v69);
      v52 = MEMORY[0x1E69E7CC0];
      v53 = v70;
      v54 = *v71;
      v55 = *&v71[4];
      v56 = v71[6];
      v57 = *(&v68 + 1);
      v58 = v69;
      v59 = DWORD2(v69);
      v61 = BYTE14(v69);
      v60 = WORD6(v69);
      v62 = MEMORY[0x1E69E7CC0];
      swift_retain_n();
      sub_1B0D3CA68(&v67, &v63);

      sub_1B0D3C9B8(&v49, &v63);
      sub_1B0D3CA14(&v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1B0DF57EC(0, *(v2 + 2) + 1, 1, v2);
      }

      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = sub_1B0DF57EC((v21 > 1), v22 + 1, 1, v2);
      }

      sub_1B0D3CAC4(&v67);
      *(v2 + 2) = v22 + 1;
      v23 = &v2[56 * v22];
      v25 = v50;
      v24 = v51;
      v26 = v49;
      *(v23 + 10) = v52;
      *(v23 + 3) = v25;
      *(v23 + 4) = v24;
      *(v23 + 2) = v26;
      if (!v4)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (!*(v2 + 2))
      {
        goto LABEL_30;
      }

      sub_1B0D3CA68(&v67, &v63);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v27 = *(v2 + 2);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      else
      {
        result = sub_1B0D9CB30(v2);
        v2 = result;
        v27 = *(result + 16);
        if (!v27)
        {
          goto LABEL_49;
        }
      }

      v28 = &v2[56 * v27 - 24];
      v29 = *v28;
      v30 = *(v28 + 16);
      v31 = *(v28 + 32);
      v66 = *(v28 + 48);
      v64 = v30;
      v65 = v31;
      v63 = v29;
      *(v2 + 2) = v27 - 1;
      v32 = swift_allocObject();
      v33 = v64;
      *(v32 + 16) = v63;
      *(v32 + 32) = v33;
      *(v32 + 48) = v65;
      *(v32 + 64) = v66;
      if (v27 == 1)
      {
        sub_1B0D3C9B8(&v63, &v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1B0DF5914(0, *(v5 + 2) + 1, 1, v5);
        }

        v48 = *(v5 + 2);
        v47 = *(v5 + 3);
        if (v48 >= v47 >> 1)
        {
          v5 = sub_1B0DF5914((v47 > 1), v48 + 1, 1, v5);
        }

        sub_1B0D3CA14(&v63);
        sub_1B0D3CAC4(&v67);
        v39 = v32 | 0x8000000000000000;
        *(v5 + 2) = v48 + 1;
        v41 = &v5[8 * v48];
      }

      else
      {
        sub_1B0D3C9B8(&v63, &v53);
        v34 = &v2[56 * v27 + 32];
        v35 = *(v34 - 64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 - 64) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_1B0DF5914(0, *(v35 + 2) + 1, 1, v35);
          *(v34 - 64) = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          *(v34 - 64) = sub_1B0DF5914((v37 > 1), v38 + 1, 1, v35);
        }

        sub_1B0D3CA14(&v63);
        sub_1B0D3CAC4(&v67);
        v39 = v32 | 0x8000000000000000;
        v40 = *(v34 - 64);
        *(v40 + 16) = v38 + 1;
        v41 = (v40 + 8 * v38);
      }

      *(v41 + 4) = v39;
      if (!v4)
      {
LABEL_45:

        return v5;
      }
    }

LABEL_42:
    --v4;
    v3 += 6;
  }

  v8 = *(v2 + 2);
  if (!v8)
  {
LABEL_30:
    v42 = swift_allocObject();
    v43 = v3[3];
    v42[3] = v3[2];
    v42[4] = v43;
    v42[5] = v3[4];
    *(v42 + 95) = *(v3 + 79);
    v44 = v3[1];
    v42[1] = *v3;
    v42[2] = v44;
    sub_1B0D3CA68(&v67, &v63);
    sub_1B0D3CA68(&v67, &v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_1B0DF5914(0, *(v5 + 2) + 1, 1, v5);
    }

    v46 = *(v5 + 2);
    v45 = *(v5 + 3);
    if (v46 >= v45 >> 1)
    {
      v5 = sub_1B0DF5914((v45 > 1), v46 + 1, 1, v5);
    }

    sub_1B0D3CAC4(&v67);
    *(v5 + 2) = v46 + 1;
    *&v5[8 * v46 + 32] = v42;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v9 = swift_allocObject();
  v10 = v3[3];
  v9[3] = v3[2];
  v9[4] = v10;
  v9[5] = v3[4];
  *(v9 + 95) = *(v3 + 79);
  v11 = v3[1];
  v9[1] = *v3;
  v9[2] = v11;
  sub_1B0D3CA68(&v67, &v63);
  sub_1B0D3CA68(&v67, &v63);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0D9CB30(v2);
    v2 = result;
  }

  if (v8 <= *(v2 + 2))
  {
    v13 = &v2[56 * v8];
    v16 = *(v13 + 3);
    v15 = (v13 + 24);
    v14 = v16;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *v15 = v16;
    if ((v17 & 1) == 0)
    {
      v14 = sub_1B0DF5914(0, *(v14 + 2) + 1, 1, v14);
      *v15 = v14;
    }

    v19 = *(v14 + 2);
    v18 = *(v14 + 3);
    if (v19 >= v18 >> 1)
    {
      *v15 = sub_1B0DF5914((v18 > 1), v19 + 1, 1, v14);
    }

    sub_1B0D3CAC4(&v67);
    v20 = *v15;
    *(v20 + 2) = v19 + 1;
    *&v20[8 * v19 + 32] = v9;
    if (!v4)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

double sub_1B0D9D0E8@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7568, &qword_1B0EF4678);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC4E20;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1B0D9EC8C;
  *(v16 + 24) = v15;
  *(inited + 32) = 0x542E323238434652;
  *(inited + 40) = 0xEB00000000545845;
  *(inited + 48) = sub_1B0D9ECA4;
  *(inited + 56) = v16;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0D9ECBC;
  *(v18 + 24) = v17;
  strcpy((inited + 64), "RFC822.HEADER");
  *(inited + 78) = -4864;
  *(inited + 80) = sub_1B0D9F3EC;
  *(inited + 88) = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B0D9ECD4;
  *(v20 + 24) = v19;
  *(inited + 96) = 1497648962;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_1B0D9F3EC;
  *(inited + 120) = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B0D9ECF4;
  *(v22 + 24) = v21;
  *(inited + 128) = 0x5952414E4942;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = sub_1B0D9F3EC;
  *(inited + 152) = v22;
  swift_retain_n();
  v24 = sub_1B0DA9094(inited, v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
  swift_arrayDestroy();
  v25 = v32;
  sub_1B0D9ED6C(a1, a2, a3, v24, v30);

  if (!v25)
  {
    result = *v30;
    v27 = v30[1];
    *a8 = v30[0];
    *(a8 + 16) = v27;
    *(a8 + 32) = v31;
  }

  return result;
}

void sub_1B0D9D3E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{

  sub_1B0E02CB4(a1, a2, a3, a4, a5, a6, a7);
  v18 = v17;
  v20 = v19;
  v22 = v21;

  if (!v8)
  {
    if (!v18)
    {
      v18 = MEMORY[0x1E69E7CC0];
      v20 = 0;
      v22 = 2;
    }

    sub_1B0E08720(a1, a2, a3);
    *a8 = v18;
    *(a8 + 8) = v20;
    *(a8 + 16) = v22;
    *(a8 + 24) = v24;
    *(a8 + 32) = v23 & 1 | 0x40;
  }
}

void sub_1B0D9D4EC(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return;
  }

  if (v9 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v20 = a3;
    goto LABEL_7;
  }

  v16 = *result;
  v17 = *(result + 8);
  v27 = *(result + 20);
  v28 = *(result + 16);
  v26 = *(result + 22);

  sub_1B0DFE880(0x5BuLL, 0xE100000000000000, 0, 0, result, v9, a3);
  if (v8)
  {

    *result = v16;
    *(result + 8) = v17;
    *(result + 16) = v28;
    *(result + 20) = v27;
    *(result + 22) = v26;
LABEL_7:
    swift_willThrow();
    return;
  }

  sub_1B0E0407C(result, v9, a3, a4, a5, a6, a7);
  v19 = v18;

  sub_1B0DFE880(0x5DuLL, 0xE100000000000000, 0, 0, result, v9, a3);

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1B0E08720(result, a2, a3);
  *a8 = v21;
  *(a8 + 8) = v23;
  *(a8 + 16) = v22 & 1;
  *(a8 + 24) = 0;
  *(a8 + 32) = 0;
}

uint64_t sub_1B0D9D6D8(uint64_t a1)
{
  v3 = *(v1 + 144);
  v26[8] = *(v1 + 128);
  v26[9] = v3;
  v26[10] = *(v1 + 160);
  v27 = *(v1 + 176);
  v4 = *(v1 + 80);
  v26[4] = *(v1 + 64);
  v26[5] = v4;
  v5 = *(v1 + 112);
  v26[6] = *(v1 + 96);
  v26[7] = v5;
  v6 = *(v1 + 16);
  v26[0] = *v1;
  v26[1] = v6;
  v7 = *(v1 + 48);
  v26[2] = *(v1 + 32);
  v26[3] = v7;
  v8 = sub_1B0D0CBC8(v26);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v16 = sub_1B041BA38(v26);
      v17 = *(v16 + 32);
      v12 = *(v16 + 40);
      v18 = *(v16 + 16);
      v28 = *v16;
      v29 = v18;
      LOBYTE(v30) = v17;
      v14 = 3;
    }

    else
    {
      if (v8 != 4)
      {
        v19 = 5;
        return MEMORY[0x1B2728D70](v19);
      }

      v10 = sub_1B041BA38(v26);
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      v13 = *(v10 + 16);
      v28 = *v10;
      v29 = v13;
      LOBYTE(v30) = v11;
      v14 = 4;
    }

    MEMORY[0x1B2728D70](v14);
    StreamingKind.hash(into:)(a1);
    v19 = v12;
    return MEMORY[0x1B2728D70](v19);
  }

  if (!v8)
  {
    sub_1B041BA38(v26);
    v9 = 0;
    goto LABEL_9;
  }

  if (v8 == 1)
  {
    sub_1B041BA38(v26);
    v9 = 1;
LABEL_9:
    MEMORY[0x1B2728D70](v9);
    return sub_1B0E46C88();
  }

  v20 = sub_1B041BA38(v26);
  v21 = *(v20 + 144);
  v36 = *(v20 + 128);
  v37 = v21;
  v38 = *(v20 + 160);
  v39 = *(v20 + 176);
  v22 = *(v20 + 80);
  v32 = *(v20 + 64);
  v33 = v22;
  v23 = *(v20 + 112);
  v34 = *(v20 + 96);
  v35 = v23;
  v24 = *(v20 + 16);
  v28 = *v20;
  v29 = v24;
  v25 = *(v20 + 48);
  v30 = *(v20 + 32);
  v31 = v25;
  MEMORY[0x1B2728D70](2);
  return MessageAttribute.hash(into:)(a1);
}

uint64_t sub_1B0D9D86C()
{
  sub_1B0E46C28();
  v1 = *(v0 + 144);
  v25[8] = *(v0 + 128);
  v25[9] = v1;
  v25[10] = *(v0 + 160);
  v26 = *(v0 + 176);
  v2 = *(v0 + 80);
  v25[4] = *(v0 + 64);
  v25[5] = v2;
  v3 = *(v0 + 112);
  v25[6] = *(v0 + 96);
  v25[7] = v3;
  v4 = *(v0 + 16);
  v25[0] = *v0;
  v25[1] = v4;
  v5 = *(v0 + 48);
  v25[2] = *(v0 + 32);
  v25[3] = v5;
  v6 = sub_1B0D0CBC8(v25);
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v13 = sub_1B041BA38(v25);
      v14 = *(v13 + 32);
      v10 = *(v13 + 40);
      v15 = *(v13 + 16);
      v27 = *v13;
      v28 = v15;
      LOBYTE(v29) = v14;
      v12 = 3;
    }

    else
    {
      if (v6 != 4)
      {
        v16 = 5;
        goto LABEL_14;
      }

      v8 = sub_1B041BA38(v25);
      v9 = *(v8 + 32);
      v10 = *(v8 + 40);
      v11 = *(v8 + 16);
      v27 = *v8;
      v28 = v11;
      LOBYTE(v29) = v9;
      v12 = 4;
    }

    MEMORY[0x1B2728D70](v12);
    StreamingKind.hash(into:)(v24);
    v16 = v10;
LABEL_14:
    MEMORY[0x1B2728D70](v16);
    return sub_1B0E46CB8();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      v17 = sub_1B041BA38(v25);
      v18 = *(v17 + 144);
      v35 = *(v17 + 128);
      v36 = v18;
      v37 = *(v17 + 160);
      v38 = *(v17 + 176);
      v19 = *(v17 + 80);
      v31 = *(v17 + 64);
      v32 = v19;
      v20 = *(v17 + 112);
      v33 = *(v17 + 96);
      v34 = v20;
      v21 = *(v17 + 16);
      v27 = *v17;
      v28 = v21;
      v22 = *(v17 + 48);
      v29 = *(v17 + 32);
      v30 = v22;
      MEMORY[0x1B2728D70](2);
      MessageAttribute.hash(into:)(v24);
      return sub_1B0E46CB8();
    }

    sub_1B041BA38(v25);
    v7 = 1;
  }

  else
  {
    sub_1B041BA38(v25);
    v7 = 0;
  }

  MEMORY[0x1B2728D70](v7);
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

double sub_1B0D9DA24@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, *a2, v7);
  if (!v3)
  {
    sub_1B0448078(a1, v6, v7);
    sub_1B0D047BC(v14);
    v9 = v22;
    *(a3 + 128) = v21;
    *(a3 + 144) = v9;
    *(a3 + 160) = v23;
    *(a3 + 176) = v24;
    v10 = v18;
    *(a3 + 64) = v17;
    *(a3 + 80) = v10;
    v11 = v20;
    *(a3 + 96) = v19;
    *(a3 + 112) = v11;
    v12 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v12;
    result = *&v15;
    v13 = v16;
    *(a3 + 32) = v15;
    *(a3 + 48) = v13;
  }

  return result;
}

uint64_t sub_1B0D9DAF8(uint64_t a1)
{
  sub_1B0E46C28();
  v2 = *(v1 + 144);
  v38[8] = *(v1 + 128);
  v38[9] = v2;
  v38[10] = *(v1 + 160);
  v39 = *(v1 + 176);
  v3 = *(v1 + 80);
  v38[4] = *(v1 + 64);
  v38[5] = v3;
  v4 = *(v1 + 112);
  v38[6] = *(v1 + 96);
  v38[7] = v4;
  v5 = *(v1 + 16);
  v38[0] = *v1;
  v38[1] = v5;
  v6 = *(v1 + 48);
  v38[2] = *(v1 + 32);
  v38[3] = v6;
  v7 = sub_1B0D0CBC8(v38);
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v14 = sub_1B041BA38(v38);
      v15 = *(v14 + 32);
      v11 = *(v14 + 40);
      v16 = *(v14 + 16);
      v26 = *v14;
      v27 = v16;
      LOBYTE(v28) = v15;
      v13 = 3;
    }

    else
    {
      if (v7 != 4)
      {
        v17 = 5;
        goto LABEL_14;
      }

      v9 = sub_1B041BA38(v38);
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 16);
      v26 = *v9;
      v27 = v12;
      LOBYTE(v28) = v10;
      v13 = 4;
    }

    MEMORY[0x1B2728D70](v13);
    StreamingKind.hash(into:)(v25);
    v17 = v11;
LABEL_14:
    MEMORY[0x1B2728D70](v17);
    return sub_1B0E46CB8();
  }

  if (v7)
  {
    if (v7 != 1)
    {
      v18 = sub_1B041BA38(v38);
      v19 = *(v18 + 144);
      v34 = *(v18 + 128);
      v35 = v19;
      v36 = *(v18 + 160);
      v37 = *(v18 + 176);
      v20 = *(v18 + 80);
      v30 = *(v18 + 64);
      v31 = v20;
      v21 = *(v18 + 112);
      v32 = *(v18 + 96);
      v33 = v21;
      v22 = *(v18 + 16);
      v26 = *v18;
      v27 = v22;
      v23 = *(v18 + 48);
      v28 = *(v18 + 32);
      v29 = v23;
      MEMORY[0x1B2728D70](2);
      MessageAttribute.hash(into:)(v25);
      return sub_1B0E46CB8();
    }

    sub_1B041BA38(v38);
    v8 = 1;
  }

  else
  {
    sub_1B041BA38(v38);
    v8 = 0;
  }

  MEMORY[0x1B2728D70](v8);
  sub_1B0E46C88();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D9DCAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return sub_1B0D9E6BC(v13, v15) & 1;
}

uint64_t sub_1B0D9DD50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1B0D9EB48;
  *(v18 + 24) = v17;
  v43 = sub_1B0442378;
  v44 = v18;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = a6;
  v19[5] = a7;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B0D9EB68;
  *(v20 + 24) = v19;
  v45 = sub_1B0442378;
  v46 = v20;
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  result = swift_allocObject();
  *(result + 16) = sub_1B0D9EB88;
  *(result + 24) = v21;
  v47 = sub_1B0442378;
  v48 = result;
  v49 = sub_1B0D9DA24;
  v50 = 0;
  v23 = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    swift_retain_n();
    v24 = 32;
    while (1)
    {
      *(swift_allocObject() + 16) = *&v42[v24];
      if (v23 >= a3)
      {
        sub_1B0439BCC();
        v9 = swift_allocError();
        *v30 = a3;
      }

      else
      {
        v25 = *a1;
        v26 = a1[1];
        v40 = *(a1 + 4);
        v27 = a3;
        v28 = *(a1 + 10);
        v29 = *(a1 + 22);

        sub_1B0D9F434(a1, v23, v27);
        if (!v9)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          result = swift_arrayDestroy();
          v34 = v60;
          *(a8 + 128) = v59;
          *(a8 + 144) = v34;
          *(a8 + 160) = v61;
          *(a8 + 176) = v62;
          v35 = v56;
          *(a8 + 64) = v55;
          *(a8 + 80) = v35;
          v36 = v58;
          *(a8 + 96) = v57;
          *(a8 + 112) = v36;
          v37 = v52;
          *a8 = v51;
          *(a8 + 16) = v37;
          v38 = v54;
          *(a8 + 32) = v53;
          *(a8 + 48) = v38;
          return result;
        }

        *a1 = v25;
        a1[1] = v26;
        *(a1 + 4) = v40;
        *(a1 + 10) = v28;
        *(a1 + 22) = v29;
        a3 = v27;
      }

      swift_willThrow();
      v41 = v9;
      v31 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
      if (swift_dynamicCast())
      {
      }

      else
      {

        v41 = v9;
        v32 = v9;
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
          swift_arrayDestroy();
        }
      }

      v9 = 0;
      v24 += 16;
      if (v24 == 96)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
        swift_arrayDestroy();
        sub_1B0436554();
        swift_allocError();
        *v33 = 0xD000000000000019;
        v33[1] = 0x80000001B0F2FF00;
        v33[2] = 0xD000000000000020;
        v33[3] = 0x80000001B0F2FA10;
        v33[4] = 356;
        return swift_willThrow();
      }
    }
  }

  __break(1u);
  return result;
}

double sub_1B0D9E210@<D0>(uint64_t a1@<X8>, uint64_t *a2@<X0>, uint64_t a3@<X1>, int64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>)
{
  sub_1B0DA4E90(a2, a3, a4, a5, a6, a7, a8, v28);
  if (!v8)
  {
    v24 = v28[8];
    v25 = v28[9];
    v26 = v28[10];
    v27 = v29;
    v20 = v28[4];
    v21 = v28[5];
    v22 = v28[6];
    v23 = v28[7];
    v16 = v28[0];
    v17 = v28[1];
    v18 = v28[2];
    v19 = v28[3];
    sub_1B0D046AC(&v16);
    v11 = v25;
    *(a1 + 128) = v24;
    *(a1 + 144) = v11;
    *(a1 + 160) = v26;
    *(a1 + 176) = v27;
    v12 = v21;
    *(a1 + 64) = v20;
    *(a1 + 80) = v12;
    v13 = v23;
    *(a1 + 96) = v22;
    *(a1 + 112) = v13;
    v14 = v17;
    *a1 = v16;
    *(a1 + 16) = v14;
    result = *&v18;
    v15 = v19;
    *(a1 + 32) = v18;
    *(a1 + 48) = v15;
  }

  return result;
}

void sub_1B0D9E2D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0D9D0E8(a1, a2, a3, a4, a5, a6, a7, v35);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0D9EC38(v35);
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
      swift_willThrow();
    }

    else
    {
      v20 = v35[1];
      v21 = v35[0];
      v22 = v36;

      sub_1B0436204(a1);

      v23 = v21;
      v24 = v20;
      LOBYTE(v25) = v22;
      *(&v25 + 1) = sub_1B0DC19BC(a1, a2, a3, a7);
      sub_1B0D04794(&v23);
      v15 = v32;
      *(a8 + 128) = v31;
      *(a8 + 144) = v15;
      *(a8 + 160) = v33;
      *(a8 + 176) = v34;
      v16 = v28;
      *(a8 + 64) = v27;
      *(a8 + 80) = v16;
      v17 = v30;
      *(a8 + 96) = v29;
      *(a8 + 112) = v17;
      v18 = v24;
      *a8 = v23;
      *(a8 + 16) = v18;
      v19 = v26;
      *(a8 + 32) = v25;
      *(a8 + 48) = v19;
    }
  }
}

void sub_1B0D9E490(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0D9D0E8(a1, a2, a3, a4, a5, a6, a7, v42);
  if (!v8)
  {
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {
      sub_1B0D9EC38(v42);
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
      swift_willThrow();
    }

    else
    {
      v28 = v42[1];
      v29 = v42[0];
      v27 = v43;

      sub_1B0436204(a1);

      v14 = *a1;
      v15 = *(a1 + 8);
      v16 = *(a1 + 16);
      v17 = *(a1 + 20);
      v18 = *(a1 + 22);

      sub_1B0DC0BE0(a1, a2, a3);
      v26 = HIDWORD(v19);
      v20 = v19;

      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      *(a1 + 20) = v17;
      *(a1 + 22) = v18;
      v31 = v28;
      v30 = v29;
      LOBYTE(v32) = v27;
      *(&v32 + 1) = (v26 - v20);
      sub_1B0D047A8(&v30);
      v21 = v39;
      *(a8 + 128) = v38;
      *(a8 + 144) = v21;
      *(a8 + 160) = v40;
      *(a8 + 176) = v41;
      v22 = v35;
      *(a8 + 64) = v34;
      *(a8 + 80) = v22;
      v23 = v37;
      *(a8 + 96) = v36;
      *(a8 + 112) = v23;
      v24 = v31;
      *a8 = v30;
      *(a8 + 16) = v24;
      v25 = v33;
      *(a8 + 32) = v32;
      *(a8 + 48) = v25;
    }
  }
}

uint64_t sub_1B0D9E6BC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 144);
  v83[8] = *(a1 + 128);
  v83[9] = v3;
  v83[10] = *(a1 + 160);
  v84 = *(a1 + 176);
  v4 = *(a1 + 80);
  v83[4] = *(a1 + 64);
  v83[5] = v4;
  v5 = *(a1 + 112);
  v83[6] = *(a1 + 96);
  v83[7] = v5;
  v6 = *(a1 + 16);
  v83[0] = *a1;
  v83[1] = v6;
  v7 = *(a1 + 48);
  v83[2] = *(a1 + 32);
  v83[3] = v7;
  v8 = sub_1B0D0CBC8(v83);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v29 = sub_1B041BA38(v83);
      v57 = *(v29 + 16);
      v58 = *v29;
      v16 = *(v29 + 32);
      v17 = *(v29 + 40);
      v30 = a2[3];
      v87 = a2[2];
      v88 = v30;
      v31 = a2[1];
      v85 = *a2;
      v86 = v31;
      v32 = a2[7];
      v91 = a2[6];
      v92 = v32;
      v33 = a2[5];
      v89 = a2[4];
      v90 = v33;
      v96 = *(a2 + 88);
      v34 = a2[10];
      v94 = a2[9];
      v95 = v34;
      v93 = a2[8];
      if (sub_1B0D0CBC8(&v85) != 3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v8 != 4)
      {
        v51 = a2[9];
        v93 = a2[8];
        v94 = v51;
        v95 = a2[10];
        v96 = *(a2 + 88);
        v52 = a2[5];
        v89 = a2[4];
        v90 = v52;
        v53 = a2[7];
        v91 = a2[6];
        v92 = v53;
        v54 = a2[1];
        v85 = *a2;
        v86 = v54;
        v55 = a2[3];
        v87 = a2[2];
        v88 = v55;
        if (sub_1B0D0CBC8(&v85) == 5)
        {
          v28 = 1;
          return v28 & 1;
        }

        goto LABEL_19;
      }

      v15 = sub_1B041BA38(v83);
      v57 = *(v15 + 16);
      v58 = *v15;
      v16 = *(v15 + 32);
      v17 = *(v15 + 40);
      v18 = a2[3];
      v87 = a2[2];
      v88 = v18;
      v19 = a2[1];
      v85 = *a2;
      v86 = v19;
      v20 = a2[7];
      v91 = a2[6];
      v92 = v20;
      v21 = a2[5];
      v89 = a2[4];
      v90 = v21;
      v96 = *(a2 + 88);
      v22 = a2[10];
      v94 = a2[9];
      v95 = v22;
      v93 = a2[8];
      if (sub_1B0D0CBC8(&v85) != 4)
      {
        goto LABEL_19;
      }
    }

    v35 = sub_1B041BA38(&v85);
    v36 = *(v35 + 32);
    v37 = *(v35 + 40);
    v59 = v58;
    v60 = v57;
    LOBYTE(v61) = v16;
    v38 = *(v35 + 16);
    v71 = *v35;
    v72 = v38;
    LOBYTE(v73) = v36;
    if (_s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(&v59, &v71))
    {
      v28 = v17 == v37;
      return v28 & 1;
    }

LABEL_19:
    v28 = 0;
    return v28 & 1;
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v9 = *sub_1B041BA38(v83);
      v10 = a2[3];
      v87 = a2[2];
      v88 = v10;
      v11 = a2[1];
      v85 = *a2;
      v86 = v11;
      v12 = a2[7];
      v91 = a2[6];
      v92 = v12;
      v13 = a2[5];
      v89 = a2[4];
      v90 = v13;
      v96 = *(a2 + 88);
      v14 = a2[10];
      v94 = a2[9];
      v95 = v14;
      v93 = a2[8];
      if (sub_1B0D0CBC8(&v85) != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    v39 = sub_1B041BA38(v83);
    v93 = *(v39 + 128);
    v94 = *(v39 + 144);
    v95 = *(v39 + 160);
    v96 = *(v39 + 176);
    v89 = *(v39 + 64);
    v90 = *(v39 + 80);
    v91 = *(v39 + 96);
    v92 = *(v39 + 112);
    v85 = *v39;
    v86 = *(v39 + 16);
    v87 = *(v39 + 32);
    v88 = *(v39 + 48);
    v40 = a2[1];
    v59 = *a2;
    v60 = v40;
    v41 = a2[3];
    v61 = a2[2];
    v62 = v41;
    v42 = a2[5];
    v63 = a2[4];
    v64 = v42;
    v43 = a2[7];
    v65 = a2[6];
    v66 = v43;
    v44 = a2[9];
    v67 = a2[8];
    v68 = v44;
    v69 = a2[10];
    v70 = *(a2 + 88);
    if (sub_1B0D0CBC8(&v59) == 2)
    {
      v45 = sub_1B041BA38(&v59);
      v46 = *(v45 + 144);
      v79 = *(v45 + 128);
      v80 = v46;
      v81 = *(v45 + 160);
      v82 = *(v45 + 176);
      v47 = *(v45 + 80);
      v75 = *(v45 + 64);
      v76 = v47;
      v48 = *(v45 + 112);
      v77 = *(v45 + 96);
      v78 = v48;
      v49 = *(v45 + 16);
      v71 = *v45;
      v72 = v49;
      v50 = *(v45 + 48);
      v73 = *(v45 + 32);
      v74 = v50;
      v28 = _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(&v85, v71.i8);
      return v28 & 1;
    }

    goto LABEL_19;
  }

  v9 = *sub_1B041BA38(v83);
  v23 = a2[3];
  v87 = a2[2];
  v88 = v23;
  v24 = a2[1];
  v85 = *a2;
  v86 = v24;
  v25 = a2[7];
  v91 = a2[6];
  v92 = v25;
  v26 = a2[5];
  v89 = a2[4];
  v90 = v26;
  v96 = *(a2 + 88);
  v27 = a2[10];
  v94 = a2[9];
  v95 = v27;
  v93 = a2[8];
  if (sub_1B0D0CBC8(&v85))
  {
    goto LABEL_19;
  }

LABEL_11:
  v28 = *sub_1B041BA38(&v85) == v9;
  return v28 & 1;
}

uint64_t sub_1B0D9EA70(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 0);
  if (!v3)
  {
    if (result < 0)
    {
      v5 = " in body structure";
      v7 = 202;
      v6 = 0xD000000000000011;
    }

    else
    {
      if ((result - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        return result;
      }

      v5 = "No month match for ";
      v6 = 0xD00000000000001DLL;
      v7 = 87;
    }

    v8 = v5 | 0x8000000000000000;
    sub_1B0436554();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    v9[2] = 0xD000000000000020;
    v9[3] = 0x80000001B0F2FA10;
    v9[4] = v7;
    return swift_willThrow();
  }

  return result;
}

double sub_1B0D9EBA8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(v3 + 16))(v12, a1, *a2, a2[1]);
  if (!v4)
  {
    v7 = v20;
    *(a3 + 128) = v19;
    *(a3 + 144) = v7;
    *(a3 + 160) = v21;
    *(a3 + 176) = v22;
    v8 = v16;
    *(a3 + 64) = v15;
    *(a3 + 80) = v8;
    v9 = v18;
    *(a3 + 96) = v17;
    *(a3 + 112) = v9;
    v10 = v12[1];
    *a3 = v12[0];
    *(a3 + 16) = v10;
    result = *&v13;
    v11 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v11;
  }

  return result;
}

void sub_1B0D9EC8C(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

void sub_1B0D9ECBC(uint64_t a1@<X8>)
{
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x80;
}

double sub_1B0D9ED14@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(v3 + 16))(v8, a1, *a2, a2[1]);
  if (!v4)
  {
    result = *v8;
    v7 = v8[1];
    *a3 = v8[0];
    *(a3 + 16) = v7;
    *(a3 + 32) = v9;
  }

  return result;
}

unint64_t sub_1B0D9ED6C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!__OFADD__(a2, 1))
  {
    v7 = result;
    v8 = *result;
    v9 = *(result + 8);
    v10 = *(result + 16);
    v11 = *(result + 20);
    v12 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v14 = a3;
    }

    else
    {

      sub_1B0440440(v7, &v30);
      if (!v5)
      {
        v26 = v11;
        sub_1B0DFF2E8(v30, *(&v30 + 1), v31 | (WORD2(v31) << 32) | (BYTE6(v31) << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v25 = sub_1B0E44BB8();
        v16 = v15;

        if (*(a4 + 16))
        {
          v17 = sub_1B0441038(v25, v16);
          if (v18)
          {
            v19 = v17;

            v20 = *(*(a4 + 56) + 16 * v19);
            v29[0] = a2;
            v29[1] = a3;

            v20(&v30, v7, v29);

            v23 = v32;
            v24 = v31;
            *a5 = v30;
            *(a5 + 16) = v24;
            *(a5 + 32) = v23;
            return result;
          }
        }

        *&v30 = 0;
        *(&v30 + 1) = 0xE000000000000000;
        sub_1B0E46298();

        *&v30 = 0xD000000000000017;
        *(&v30 + 1) = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v25, v16);

        v21 = v30;
        sub_1B0436554();
        swift_allocError();
        *v22 = v21;
        *(v22 + 16) = 0xD000000000000020;
        *(v22 + 24) = 0x80000001B0F2FA10;
        *(v22 + 32) = 86;
        swift_willThrow();

        v11 = v26;
LABEL_7:
        *v7 = v8;
        *(v7 + 8) = v9;
        *(v7 + 16) = v10;
        *(v7 + 20) = v11;
        *(v7 + 22) = v12;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B0D9F044(unint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (!__OFADD__(a2, 1))
  {
    v6 = result;
    v7 = *result;
    v8 = *(result + 8);
    v9 = *(result + 16);
    v10 = *(result + 20);
    v11 = *(result + 22);
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v13 = a3;
    }

    else
    {

      sub_1B0440440(v6, &v27);
      if (!v4)
      {
        v24 = v10;
        sub_1B0DFF2E8(v27, v28, v29 | (v30 << 32) | (v31 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v23 = sub_1B0E44BB8();
        v15 = v14;

        if (*(a4 + 16))
        {
          v16 = sub_1B0441038(v23, v15);
          if (v17)
          {
            v18 = v16;

            v19 = *(*(a4 + 56) + 16 * v18);
            v27 = a2;
            v28 = a3;

            v19(&v26, v6, &v27);

            return v26;
          }
        }

        v27 = 0;
        v28 = 0xE000000000000000;
        sub_1B0E46298();

        v27 = 0xD000000000000017;
        v28 = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v23, v15);

        v20 = v27;
        v21 = v28;
        sub_1B0436554();
        swift_allocError();
        *v22 = v20;
        v22[1] = v21;
        v22[2] = 0xD000000000000020;
        v22[3] = 0x80000001B0F2FA10;
        v22[4] = 86;
        swift_willThrow();

        v10 = v24;
LABEL_7:
        *v6 = v7;
        *(v6 + 8) = v8;
        *(v6 + 16) = v9;
        *(v6 + 20) = v10;
        *(v6 + 22) = v11;
        return swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213GrammarParserV14_FetchResponseO(uint64_t a1)
{
  v1 = (*(a1 + 176) >> 9) & 7;
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1B0D9F328(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 176) = *(result + 176) & 0xF1FF | (a2 << 9);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0;
    *(result + 176) = 2560;
  }

  return result;
}

unint64_t sub_1B0D9F398()
{
  result = qword_1EB6E7570;
  if (!qword_1EB6E7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7570);
  }

  return result;
}

uint64_t sub_1B0D9F44C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7578, &qword_1B0EF4E30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EDF670;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DA43D8;
  *(v15 + 24) = v14;
  *(inited + 32) = 0x5347414C46;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = sub_1B043DC28;
  *(inited + 56) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA43F8;
  *(v17 + 24) = v16;
  *(inited + 64) = 1414744396;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = sub_1B043DC28;
  *(inited + 88) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DA442C;
  *(v19 + 24) = v18;
  *(inited + 96) = 1112888140;
  *(inited + 104) = 0xE400000000000000;
  *(inited + 112) = sub_1B043DC28;
  *(inited + 120) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DA4460;
  *(v21 + 24) = v20;
  *(inited + 128) = 0x48435241455345;
  *(inited + 136) = 0xE700000000000000;
  *(inited + 144) = sub_1B043DC28;
  *(inited + 152) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DA4480;
  *(v23 + 24) = v22;
  *(inited + 160) = 0x484352414553;
  *(inited + 168) = 0xE600000000000000;
  *(inited + 176) = sub_1B043DC28;
  *(inited + 184) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DA44A0;
  *(v25 + 24) = v24;
  *(inited + 192) = 0x535554415453;
  *(inited + 200) = 0xE600000000000000;
  *(inited + 208) = sub_1B043DC28;
  *(inited + 216) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DA44C0;
  *(v27 + 24) = v26;
  *(inited + 224) = 0x43415053454D414ELL;
  *(inited + 232) = 0xE900000000000045;
  *(inited + 240) = sub_1B043DC28;
  *(inited + 248) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DA44E0;
  *(v29 + 24) = v28;
  *(inited + 256) = 0x4843544142444955;
  *(inited + 264) = 0xEA00000000005345;
  *(inited + 272) = sub_1B043DC28;
  *(inited + 280) = v29;
  swift_retain_n();
  v31 = sub_1B0DA9110(inited, v30);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7550, &qword_1B0EF4668);
  result = swift_arrayDestroy();
  if (!__OFADD__(a2, 1))
  {
    v33 = *a1;
    v34 = a1[1];
    v35 = *(a1 + 4);
    v36 = *(a1 + 10);
    v37 = *(a1 + 22);
    if (a2 + 1 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v38 = a3;
    }

    else
    {

      sub_1B0440440(a1, &v60);
      if (!v56)
      {
        v57 = v36;
        sub_1B0DFF2E8(v60, v61, v62 | (v63 << 32) | (v64 << 48), 0xD000000000000020, 0x80000001B0F2FA10, 84);
        v53 = v35;
        v54 = sub_1B0E44BB8();
        v40 = v39;

        if (*(v31 + 16))
        {
          v41 = sub_1B0441038(v54, v40);
          if (v42)
          {
            v43 = v41;

            v44 = *(*(v31 + 56) + 16 * v43);
            v60 = a2;
            v61 = a3;

            v44(v65, a1, &v60);

            v48 = v65[7];
            v49 = v65[8];
            a8[6] = v65[6];
            a8[7] = v48;
            a8[8] = v49;
            v50 = v65[3];
            a8[2] = v65[2];
            a8[3] = v50;
            v51 = v65[5];
            a8[4] = v65[4];
            a8[5] = v51;
            v52 = v65[1];
            *a8 = v65[0];
            a8[1] = v52;
            return result;
          }
        }

        v60 = 0;
        v61 = 0xE000000000000000;
        sub_1B0E46298();

        v60 = 0xD000000000000017;
        v61 = 0x80000001B0F2FF20;
        MEMORY[0x1B2726E80](v54, v40);

        v45 = v60;
        v46 = v61;
        sub_1B0436554();
        swift_allocError();
        *v47 = v45;
        v47[1] = v46;
        v47[2] = 0xD000000000000020;
        v47[3] = 0x80000001B0F2FA10;
        v47[4] = 86;
        swift_willThrow();

        v35 = v53;
        v36 = v57;
LABEL_7:
        *a1 = v33;
        a1[1] = v34;
        *(a1 + 4) = v35;
        *(a1 + 10) = v36;
        *(a1 + 22) = v37;
        swift_willThrow();
      }
    }

    swift_willThrow();

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1B0D9FBC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int8x16_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      goto LABEL_9;
    }

    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = *(a1 + 22);
    sub_1B0436204(a1);
    if (v8)
    {
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
LABEL_9:
      swift_willThrow();
      return;
    }

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, v9, a3);

    sub_1B0E00B4C(a1, v9, a3, a4, a5, a6, a7, v9, a3);
    v20 = v19;

    if (!v20)
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 1, a1, v9, a3);

    v29[0].i64[0] = v20;
    sub_1B0D04488(v29);
    v21 = v29[7];
    a8[6] = v29[6];
    a8[7] = v21;
    a8[8] = v29[8];
    v22 = v29[3];
    a8[2] = v29[2];
    a8[3] = v22;
    v23 = v29[5];
    a8[4] = v29[4];
    a8[5] = v23;
    v24 = v29[1];
    *a8 = v29[0];
    a8[1] = v24;
  }
}

uint64_t *sub_1B0D9FDFC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v25 = *(result + 22);
    v26 = *(result + 10);

    sub_1B0DA17D0(v11, v9, a3, a4, a5, a6, a7, &v27);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v26;
      *(v11 + 22) = v25;
      return swift_willThrow();
    }

    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    *a8 = v27;
    *(a8 + 16) = v20;
    *(a8 + 20) = v21;
    *(a8 + 24) = v22;
    *(a8 + 32) = v23;
  }

  return result;
}

uint64_t sub_1B0D9FF50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (*a8)(__int128 *)@<X7>, _OWORD *a9@<X8>)
{
  v11 = __OFADD__(a2, 1);
  v12 = a2 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    if (v12 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v21 = a3;
      return swift_willThrow();
    }

    v14 = result;
    v16 = *result;
    v17 = *(result + 8);
    v18 = *(result + 16);
    v19 = *(result + 20);
    v20 = *(result + 22);
    sub_1B0436204(result);
    if (v9)
    {
      *v14 = v16;
      *(v14 + 8) = v17;
      *(v14 + 16) = v18;
      *(v14 + 20) = v19;
      *(v14 + 22) = v20;
      return swift_willThrow();
    }

    sub_1B0D9FDFC(v14, a2, a3, a4, a5, a6, a7, &v40);
    v31 = v40;
    LODWORD(v32) = v41;
    BYTE4(v32) = v42;
    *(&v32 + 1) = v43;
    v33 = v44;
    result = a8(&v31);
    v22 = v38;
    a9[6] = v37;
    a9[7] = v22;
    a9[8] = v39;
    v23 = v34;
    a9[2] = v33;
    a9[3] = v23;
    v24 = v36;
    a9[4] = v35;
    a9[5] = v24;
    v25 = v32;
    *a9 = v31;
    a9[1] = v25;
  }

  return result;
}

void sub_1B0DA00CC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
    }

    else
    {
      v16 = *a1;
      v17 = a1[1];
      v33 = *(a1 + 10);
      v34 = *(a1 + 4);
      v32 = *(a1 + 22);

      sub_1B0E036A4(a1, v9, a3, &v45);
      if (!v8)
      {

        sub_1B0DF8B28(a1, v9, a3);
        v30 = v19;
        v44 = MEMORY[0x1E69E7CC0];

        sub_1B0E052C4(a1, &v44, v9, a3, a4, a5, a6, a7);

        v20 = v44;
        v21 = v45;
        v22 = v46;
        v23 = v47;
        v24 = v48;
        v25 = v49;
        sub_1B0D82F64(v45, v46);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0AEF11C(v21, v22);

        v35.i64[0] = v21;
        v35.i64[1] = v22;
        *&v36 = v23;
        *(&v36 + 1) = v24;
        LOBYTE(v37) = v25;
        BYTE1(v37) = v30 & 1;
        *(&v37 + 1) = v20;
        sub_1B0D044D0(&v35);
        v26 = v42;
        *(a8 + 96) = v41;
        *(a8 + 112) = v26;
        *(a8 + 128) = v43;
        v27 = v38;
        *(a8 + 32) = v37;
        *(a8 + 48) = v27;
        v28 = v40;
        *(a8 + 64) = v39;
        *(a8 + 80) = v28;
        v29 = v36;
        *a8 = v35;
        *(a8 + 16) = v29;
        return;
      }

      *a1 = v16;
      a1[1] = v17;
      *(a1 + 4) = v34;
      *(a1 + 10) = v33;
      *(a1 + 22) = v32;
    }

    swift_willThrow();
  }
}

void sub_1B0DA0374(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int8x16_t *a4@<X8>)
{
  v5 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v5 >= a3)
    {
      sub_1B0439BCC();
      v14 = swift_allocError();
      *v15 = a3;
    }

    else
    {
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = *(a1 + 20);
      v13 = *(a1 + 22);

      sub_1B0DA46E8(a1, v5, a3, v61);
      v14 = v4;
      if (!v4)
      {
        v68 = v61[6];
        v69 = v61[7];
        v70 = v61[8];
        v64 = v61[2];
        v65 = v61[3];
        v66 = v61[4];
        v67 = v61[5];
        v62 = v61[0];
        v63 = v61[1];

LABEL_35:
        v41 = v69;
        a4[6] = v68;
        a4[7] = v41;
        a4[8] = v70;
        v42 = v65;
        a4[2] = v64;
        a4[3] = v42;
        v43 = v67;
        a4[4] = v66;
        a4[5] = v43;
        v44 = v63;
        *a4 = v62;
        a4[1] = v44;
        return;
      }

      *a1 = v9;
      *(a1 + 8) = v10;
      *(a1 + 16) = v11;
      *(a1 + 20) = v12;
      *(a1 + 22) = v13;
    }

    swift_willThrow();
    v60 = v14;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast())
    {
    }

    else
    {

      v60 = v14;
      v17 = v14;
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }
    }

    if (v5 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v31 = a3;
    }

    else
    {
      v18 = *a1;
      v19 = *(a1 + 8);
      v20 = *(a1 + 16);
      v21 = *(a1 + 20);
      v22 = *(a1 + 22);
      if (v5 + 1 >= a3)
      {
        sub_1B0439BCC();
        swift_allocError();
        *v32 = a3;
      }

      else
      {
        swift_retain_n();
        if (v5 + 2 >= a3)
        {
          sub_1B0439BCC();
          v33 = swift_allocError();
          *v34 = a3;
          v35 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v45 = v20;
          v46 = v18;
          v23 = *a1;
          v24 = *(a1 + 8);
          v25 = *(a1 + 16);
          v48 = *(a1 + 22);
          v49 = *(a1 + 20);
          if (v5 + 3 >= a3)
          {
LABEL_28:
            sub_1B0439BCC();
            v33 = swift_allocError();
            *v36 = a3;

            v35 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            v50 = MEMORY[0x1E69E7CC0];
            v47 = v22;
            while (1)
            {
              swift_retain_n();
              sub_1B0436204(a1);

              v26 = v21;
              v27 = sub_1B0DFF3DC(a1, v5 + 2, a3, 0);
              v28 = v27;
              if ((v27 & 0x8000000000000000) != 0)
              {
                sub_1B0436554();
                v33 = swift_allocError();
                v37->i64[0] = 0xD000000000000011;
                v37->i64[1] = 0x80000001B0F2FEE0;
                v37[1].i64[0] = 0xD000000000000020;
                v37[1].i64[1] = 0x80000001B0F2FA10;
                v38 = 202;
                goto LABEL_31;
              }

              if ((v27 - 0x20000000) < 0xFFFFFFFF00000001)
              {
                break;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v50 = sub_1B0DF5A4C(0, *(v50 + 2) + 1, 1, v50);
              }

              v30 = *(v50 + 2);
              v29 = *(v50 + 3);
              if (v30 >= v29 >> 1)
              {
                v50 = sub_1B0DF5A4C((v29 > 1), v30 + 1, 1, v50);
              }

              *(v50 + 2) = v30 + 1;
              *&v50[4 * v30 + 32] = v28;
              v23 = *a1;
              v24 = *(a1 + 8);
              v25 = *(a1 + 16);
              v48 = *(a1 + 22);
              v49 = *(a1 + 20);
              v21 = v26;
              v22 = v47;
              if (v5 + 3 >= a3)
              {
                goto LABEL_28;
              }
            }

            sub_1B0E46298();

            v51.i64[0] = 0xD00000000000002BLL;
            v51.i64[1] = 0x80000001B0F2FFE0;
            v60 = v28;
            v39 = sub_1B0E469C8();
            MEMORY[0x1B2726E80](v39);

            sub_1B0436554();
            v33 = swift_allocError();
            *v37 = v51;
            v37[1].i64[0] = 0xD000000000000020;
            v37[1].i64[1] = 0x80000001B0F2FA10;
            v38 = 69;
LABEL_31:
            v37[2].i64[0] = v38;
            LOWORD(v21) = v26;
            v22 = v47;
            v35 = v50;
          }

          swift_willThrow();

          *a1 = v23;
          *(a1 + 8) = v24;
          *(a1 + 16) = v25;
          *(a1 + 20) = v49;
          *(a1 + 22) = v48;
          v18 = v46;
          v20 = v45;
        }

        swift_willThrow();
        v71 = v33;
        v40 = v33;
        if (swift_dynamicCast())
        {

          v51 = v35;
          v52.i8[0] = 1;
          sub_1B0D0451C(&v51);
          v68 = v57;
          v69 = v58;
          v70 = v59;
          v64 = v53;
          v65 = v54;
          v66 = v55;
          v67 = v56;
          v62 = v51;
          v63 = v52;
          goto LABEL_35;
        }
      }

      swift_willThrow();

      *a1 = v18;
      *(a1 + 8) = v19;
      *(a1 + 16) = v20;
      *(a1 + 20) = v21;
      *(a1 + 22) = v22;
    }

    swift_willThrow();
  }
}

void sub_1B0DA0A84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v18 = a3;
      goto LABEL_6;
    }

    v13 = *a1;
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    v16 = *(a1 + 20);
    v17 = *(a1 + 22);
    sub_1B0436204(a1);
    if (v8)
    {
      *a1 = v13;
      *(a1 + 8) = v14;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      *(a1 + 22) = v17;
LABEL_6:
      swift_willThrow();
      return;
    }

    v19 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
    v21 = v20;
    v23 = HIDWORD(v22);
    v24 = v22;
    swift_beginAccess();
    v25 = v23 - v24;
    if (v25)
    {
      v27 = v24;
      v28 = v19[3];
      v39 = ((v21 >> 24) & 0xFFFF00 | BYTE6(v21)) + v27;
      v29 = sub_1B0C0C9F0(v25, 0);
      memcpy(v29 + 32, (v28 + v39), v25);
      v26 = v29;
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    v30 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v26);
    v38 = v31;

    sub_1B0436204(a1);

    sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);

    sub_1B0DA10BC(a1, v9, a3, a4, a5, a6, a7, v72);

    *&v46[64] = v72[4];
    *&v46[80] = v72[5];
    *&v46[96] = v72[6];
    *&v46[112] = v72[7];
    *v46 = v72[0];
    *&v46[16] = v72[1];
    *&v46[32] = v72[2];
    *&v46[48] = v72[3];
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v68 = *&v46[64];
    v69 = *&v46[80];
    v70 = *&v46[96];
    v71 = *&v46[112];
    v64 = *v46;
    v65 = *&v46[16];
    v66 = *&v46[32];
    v67 = *&v46[48];
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    v63[4] = v68;
    v63[5] = v69;
    v63[6] = v70;
    v63[7] = v71;
    v63[0] = v64;
    v63[1] = v65;
    v63[2] = v66;
    v63[3] = v67;
    if (sub_1B0DA458C(v63) == 1)
    {
      v54 = 1;
      v53 = 1;
      v52 = 1;
      v51 = 1;
      v50 = 1;
      v49 = 1;
      v48 = 1;
      v47 = 1;
      *v45 = 0;
      v45[8] = 1;
      *&v45[16] = 0;
      v45[24] = 1;
      *&v45[28] = 0;
      v45[32] = 1;
      *&v45[36] = 0;
      v45[40] = 1;
      *&v45[48] = 0;
      v45[56] = 1;
      *&v45[64] = 0;
      v45[72] = 1;
      *&v45[80] = 0;
      v45[88] = 1;
      *&v45[96] = 0;
      v45[104] = 1;
      *&v45[112] = 0uLL;
      *v46 = 0;
      v46[8] = 1;
      *&v46[16] = 0;
      v46[24] = 1;
      *&v46[28] = 0;
      v46[32] = 1;
      *&v46[36] = 0;
      v46[40] = 1;
      *&v46[48] = 0;
      v46[56] = 1;
      *&v46[64] = 0;
      v46[72] = 1;
      *&v46[80] = 0;
      v46[88] = 1;
      *&v46[96] = 0;
      v46[104] = 1;
      *&v46[112] = 0;
      *&v46[120] = 0;
      sub_1B0B379C4(v45, &v55);
      sub_1B0B11B9C(v46);
      v59 = *&v45[64];
      v60 = *&v45[80];
      v61 = *&v45[96];
      v62 = *&v45[112];
      v55 = *v45;
      v56 = *&v45[16];
      v32 = *&v45[32];
      v33 = *&v45[48];
    }

    else
    {
      v59 = v68;
      v60 = v69;
      v61 = v70;
      v62 = v71;
      v55 = v64;
      v56 = v65;
      v32 = v66;
      v33 = v67;
    }

    v57 = v32;
    v58 = v33;
    *&v45[36] = v32;
    *&v45[20] = v56;
    *&v45[4] = v55;
    *&v45[116] = v62;
    *&v45[100] = v61;
    *&v45[84] = v60;
    *&v45[68] = v59;
    *&v45[52] = v33;
    *v46 = v30;
    *&v46[12] = *v45;
    *&v46[76] = *&v45[64];
    *&v46[60] = *&v45[48];
    *&v46[44] = *&v45[32];
    *&v46[28] = *&v45[16];
    *&v46[8] = v38;
    *&v46[140] = HIDWORD(v62);
    *&v46[124] = *&v45[112];
    *&v46[108] = *&v45[96];
    *&v46[92] = *&v45[80];
    sub_1B0D045B4(v46);
    v34 = *&v46[112];
    a8[6] = *&v46[96];
    a8[7] = v34;
    a8[8] = *&v46[128];
    v35 = *&v46[48];
    a8[2] = *&v46[32];
    a8[3] = v35;
    v36 = *&v46[80];
    a8[4] = *&v46[64];
    a8[5] = v36;
    v37 = *&v46[16];
    *a8 = *v46;
    a8[1] = v37;
  }
}

uint64_t *sub_1B0DA10BC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      return swift_willThrow();
    }

    v11 = result;
    v12 = *result;
    v13 = result[1];
    v14 = *(result + 4);
    v25 = *(result + 22);
    v26 = *(result + 10);

    sub_1B0DA38BC(v11, v9, a3, a4, a5, a6, a7, v27);
    if (v8)
    {

      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 20) = v26;
      *(v11 + 22) = v25;
      return swift_willThrow();
    }

    v20 = v27[5];
    a8[4] = v27[4];
    a8[5] = v20;
    v21 = v27[7];
    a8[6] = v27[6];
    a8[7] = v21;
    v22 = v27[1];
    *a8 = v27[0];
    a8[1] = v22;
    v23 = v27[3];
    a8[2] = v27[2];
    a8[3] = v23;
  }

  return result;
}

__n128 sub_1B0DA1208@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1B043E71C(a1, a2, a3);
  if (!v4)
  {
    v13.i64[0] = v6;
    v13.i64[1] = v7;
    v14.n128_u64[0] = v8;
    sub_1B0D04568(&v13);
    v10 = v20;
    *(a4 + 96) = v19;
    *(a4 + 112) = v10;
    *(a4 + 128) = v21;
    v11 = v16;
    *(a4 + 32) = v15;
    *(a4 + 48) = v11;
    v12 = v18;
    *(a4 + 64) = v17;
    *(a4 + 80) = v12;
    result = v14;
    *a4 = v13;
    *(a4 + 16) = result;
  }

  return result;
}

void sub_1B0DA1278(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v9 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      goto LABEL_7;
    }

    v16 = *a1;
    v17 = a1[1];
    v18 = *(a1 + 4);
    v46 = *(a1 + 10);
    v47 = v18;
    v34 = *(a1 + 22);

    sub_1B0DAFDD8(a1, v9, a3, v44);
    if (v8)
    {

      *a1 = v16;
      a1[1] = v17;
      v22 = v46;
      *(a1 + 4) = v47;
      *(a1 + 10) = v22;
      *(a1 + 22) = v34;
LABEL_7:
      swift_willThrow();
      return;
    }

    v31 = v44[1];
    v32 = v44[0];
    v30 = v44[2];
    v20 = v44[3];
    v29 = v45;

    sub_1B0E031CC(a1, v9, a3, a4, a5, a6, a7);
    v23 = v21;

    v24 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      v24 = v23;
    }

    v35.i64[0] = v32;
    v35.i64[1] = v31;
    *&v36 = v30;
    *(&v36 + 1) = v20;
    LOBYTE(v37) = v29;
    *(&v37 + 1) = v24;
    sub_1B0D04390(&v35);
    v25 = v42;
    *(a8 + 96) = v41;
    *(a8 + 112) = v25;
    *(a8 + 128) = v43;
    v26 = v38;
    *(a8 + 32) = v37;
    *(a8 + 48) = v26;
    v27 = v40;
    *(a8 + 64) = v39;
    *(a8 + 80) = v27;
    v28 = v36;
    *a8 = v35;
    *(a8 + 16) = v28;
  }
}

uint64_t *sub_1B0DA14C8(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    if (v4 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v12 = a3;
      return swift_willThrow();
    }

    v6 = result;
    v7 = *result;
    v8 = result[1];
    v9 = *(result + 4);
    v10 = *(result + 10);
    v11 = *(result + 22);

    sub_1B0DA15C0(v6, v4, a3, &v13);
    if (v3)
    {

      *v6 = v7;
      *(v6 + 8) = v8;
      *(v6 + 16) = v9;
      *(v6 + 20) = v10;
      *(v6 + 22) = v11;
      return swift_willThrow();
    }

    return v13;
  }

  return result;
}

void sub_1B0DA15C0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v4)
  {
    v9 = *(a1 + 2);
    if (*(a1 + 3) == v9)
    {
      sub_1B0D3EA30();
      swift_allocError();
LABEL_11:
      swift_willThrow();
      return;
    }

    v10 = *(a1 + 22);
    v11 = *(a1 + 10);
    v12 = *a1;
    swift_beginAccess();
    if (v9 == -1)
    {
      __break(1u);
      return;
    }

    v13 = *(*(v12 + 24) + (v10 | (v11 << 8)) + v9);
    *(a1 + 2) = v9 + 1;
    v14 = v13 == 10 || v13 == 13;
    if (v14 || v13 < 0 || !v13 || v13 == 34 || v13 == 92)
    {
      sub_1B0E46298();

      v15 = sub_1B0E44C68();
      MEMORY[0x1B2726E80](v15);

      sub_1B0436554();
      swift_allocError();
      *v16 = 0xD00000000000001BLL;
      v16[1] = 0x80000001B0F30010;
      v16[2] = 0xD000000000000020;
      v16[3] = 0x80000001B0F2FA10;
      v16[4] = 174;
      goto LABEL_11;
    }

    sub_1B0DFE880(0x22uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    *a4 = sub_1B0E44C78();
    a4[1] = v17;
  }
}

void sub_1B0DA17D0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  if (!v8)
  {
    v54 = a8;

    sub_1B0E03214(a1, a2, a3, a4, a5, a6, a7);
    v18 = v17;

    if (!v18)
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
    if (__OFADD__(a2, 1))
    {
      __break(1u);
    }

    else if (a2 + 1 >= a3)
    {

      sub_1B0439BCC();
      swift_allocError();
      *v19 = a3;
      swift_willThrow();
    }

    else
    {
      v53 = v18;

      sub_1B0436204(a1);

      sub_1B0DA14C8(a1, a2 + 1, a3);
      v51 = v20;

      sub_1B0436204(a1);

      v21 = sub_1B0DB3AC0(a1, a2, a3, a4, a5, a6, a7);
      v23 = v22;
      v47 = HIDWORD(v24);
      v50 = v21;
      v25 = v24;
      swift_beginAccess();
      v26 = v47 - v25;
      if (v47 == v25)
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v46 = ((v23 >> 24) & 0xFFFF00 | BYTE6(v23)) + v25;
        v48 = v50[3];
        v28 = v26;
        v29 = sub_1B0C0C9F0(v26, 0);
        memcpy(v29 + 32, (v48 + v46), v28);
        v27 = v29;
      }

      v30 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v27);
      v49 = v31;

      sub_1B0E03240(a1, a2, a3, a4, a5, a6, a7);
      v32 = v53;
      v34 = v33;
      v36 = v35;
      v52 = v37;

      if (!v34)
      {
        sub_1B0D98EC4(MEMORY[0x1E69E7CC0]);
        v52 = v38;
        v34 = v39;
        v36 = v40;
      }

      v41 = v30;
      v42 = v49;
      if (!v51)
      {
        goto LABEL_17;
      }

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v43 = sub_1B0E447F8();

      if ((v43 & 0x100) == 0)
      {
        v44 = sub_1B0E447F8();

        v32 = v53;
        v42 = v49;
        if ((v44 & 0x100) == 0)
        {
LABEL_18:
          *v54 = v32;
          *(v54 + 8) = v41;
          *(v54 + 16) = v42;
          *(v54 + 20) = v44;
          *(v54 + 24) = v52;
          *(v54 + 32) = v34;
          *(v54 + 40) = v36;
          return;
        }

LABEL_17:
        LOBYTE(v44) = 0;
        goto LABEL_18;
      }

      sub_1B0CF9928();
      swift_allocError();
      *v45 = 0xD000000000000029;
      v45[1] = 0x80000001B0F2F3D0;
      swift_willThrow();
    }
  }
}

uint64_t *sub_1B0DA1EC8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E75A0, &qword_1B0EF4E58);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B0EC1E70;
  result = sub_1B0DB5660(a1, a2, a3, a4);
  if (v7)
  {
    *(v12 + 16) = 0;
    v12 = v7;

    return v12;
  }

  *(v12 + 32) = result;
  *(v12 + 40) = v14;
  if (!__OFADD__(a2, 1))
  {
    if (a2 + 1 < a3)
    {
      while (1)
      {

        sub_1B0436204(a1);

        v15 = sub_1B0DB5660(a1, a2, a3, a4);
        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          v20 = v15;
          v21 = v16;
          v22 = sub_1B0DF5A60((v17 > 1), v18 + 1, 1, v12);
          v16 = v21;
          v12 = v22;
          v15 = v20;
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + 16 * v18;
        *(v19 + 32) = v15;
        *(v19 + 40) = v16;
      }
    }

    sub_1B0439BCC();
    v23 = swift_allocError();
    *v24 = a3;
    swift_willThrow();

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0DA20E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    return result;
  }

  if (v9 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v27 = a3;
    return swift_willThrow();
  }

  v11 = result;
  v13 = *result;
  v14 = *(result + 8);
  v15 = *(result + 16);
  v16 = *(result + 20);
  v17 = *(result + 22);
  sub_1B0436204(result);
  if (v8)
  {
    *v11 = v13;
    *(v11 + 8) = v14;
    *(v11 + 16) = v15;
    *(v11 + 20) = v16;
    *(v11 + 22) = v17;
    return swift_willThrow();
  }

  sub_1B0DFE880(0x28uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  sub_1B0E01738(v11, v9, a3, a4, a5, a6, a7);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (!v21)
  {
    sub_1B0D98EC4(MEMORY[0x1E69E7CC0]);
    v19 = v24;
    v21 = v25;
    v23 = v26;
  }

  sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, v11, v9, a3);

  *a8 = v19;
  a8[1] = v21;
  a8[2] = v23;
  return result;
}

uint64_t sub_1B0DA22E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v49 = a6;
  v44 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = &v41 - v15;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7598, &qword_1B0EF4E50);
  MEMORY[0x1EEE9AC00](v45);
  v17 = &v41 - v16;
  v50 = 0;
  *&v51 = MEMORY[0x1E69E7CC0];
  *(&v51 + 1) = MEMORY[0x1E69E7CC0];
  v47 = a2;
  v18 = a2;
  v19 = a7;
  v20 = a3;
  v21 = v48;
  sub_1B0DA2640(a1, v18, a3, a4, a5, v49, v19, &v41 - v16);
  v48 = v21;
  if (v21)
  {
    goto LABEL_8;
  }

  v41 = a4;
  v42 = a1;
  v43 = v19;
  v22 = *v17;
  v23 = *(v17 + 1);
  v24 = *(v17 + 4);
  v25 = *(v17 + 10);
  v26 = v17[22];
  v27 = v46;
  sub_1B0D062E4(&v17[*(v45 + 52)], v46);
  v28 = type metadata accessor for ParameterValue(0);
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);

  result = sub_1B0D961D0(v27, v22, v23, v24 | (v25 << 32) | (v26 << 48));
  v30 = v47 + 1;
  if (__OFADD__(v47, 1))
  {
    __break(1u);
  }

  else
  {
    if (v30 >= v20)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v39 = v20;

      goto LABEL_7;
    }

    v31 = v42;
    v32 = *v42;
    v33 = v42[1];
    v34 = *(v42 + 4);
    v35 = *(v42 + 10);
    v36 = *(v42 + 22);
    swift_retain_n();

    v37 = v30;
    v38 = v48;
    sub_1B0DFC004(v31, v37, v20, &v50, v41, a5, v49, v43);
    if (v38)
    {

      *v31 = v32;
      *(v31 + 8) = v33;
      *(v31 + 16) = v34;
      *(v31 + 20) = v35;
      *(v31 + 22) = v36;
LABEL_7:
      swift_willThrow();

      sub_1B0398EFC(v17, &qword_1EB6E7598, &qword_1B0EF4E50);
LABEL_8:
    }

    sub_1B0398EFC(v17, &qword_1EB6E7598, &qword_1B0EF4E50);

    v40 = v44;
    *v44 = v50;
    *(v40 + 1) = v51;
  }

  return result;
}

void sub_1B0DA2640(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v49 = a8;
  v16 = type metadata accessor for ParameterValue(0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __OFADD__(a2, 1);
  v21 = a2 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    if (v21 >= a3)
    {
      sub_1B0439BCC();
      swift_allocError();
      *v28 = a3;
    }

    else
    {
      v44 = v17;
      v22 = *a1;
      v23 = *(a1 + 8);
      v24 = *(a1 + 16);
      v46 = *(a1 + 20);
      v47 = v24;
      v45 = *(a1 + 22);
      v48 = v22;

      v25 = sub_1B0DB3AC0(a1, v21, a3, a4, a5, a6, a7);
      if (!v8)
      {
        v43 = v25;
        if (v21 + 1 < a3)
        {
          v40 = v26;
          v41 = v27;
          v42 = v21 + 1;
          sub_1B0436204(a1);
          v29 = *(a1 + 16);
          v39[2] = *(a1 + 20);
          v39[3] = v29;
          v39[1] = *(a1 + 22);

          sub_1B0DA9710(a1, v42, a3, a4, a5, a6, a7, v19);
          v31 = v40;
          v32 = v41;
          v33 = HIDWORD(v40);
          v34 = HIWORD(v41);
          v35 = HIDWORD(v41);
          swift_storeEnumTagMultiPayload();

          v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7598, &qword_1B0EF4E50);
          v37 = v49;
          sub_1B0D06280(v19, v49 + *(v36 + 52));
          *v37 = v43;
          *(v37 + 8) = v31;
          *(v37 + 12) = v33;
          *(v37 + 16) = v32;
          *(v37 + 20) = v35;
          *(v37 + 22) = v34;
          return;
        }

        sub_1B0439BCC();
        swift_allocError();
        *v30 = a3;
        swift_willThrow();
      }

      *a1 = v48;
      *(a1 + 8) = v23;
      v38 = v46;
      *(a1 + 16) = v47;
      *(a1 + 20) = v38;
      *(a1 + 22) = v45;
    }

    swift_willThrow();
  }
}

uint64_t sub_1B0DA2AF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x534547415353454DuLL, 0xE900000000000020, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DA2BE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x205458454E444955uLL, 0xE800000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0D9EA70(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1B0DA2C6C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x44494C4156444955uLL, 0xEC00000020595449, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0DB39E8(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1B0DA2CF8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x204E4545534E55uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DA2DEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x20455A4953uLL, 0xE500000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t *sub_1B0DA2EDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x4D54534548474948uLL, 0xEE0020514553444FLL, 0, 0, a1, a2, a3);
  if (!v3)
  {
    return sub_1B0DB2720(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1B0DA2F68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE880(0x20544E45434552uLL, 0xE700000000000000, 0, 0, a1, a2, a3);
  if (!v3)
  {
    result = sub_1B0DFF3DC(a1, a2, a3, 1);
    if (result < 0)
    {
      sub_1B0436554();
      swift_allocError();
      *v8 = 0xD000000000000011;
      v8[1] = 0x80000001B0F2FEE0;
      v8[2] = 0xD000000000000020;
      v8[3] = 0x80000001B0F2FA10;
      v8[4] = 202;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1B0DA305C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = a3;
  sub_1B0DFE880(0x494C444E45505041uLL, 0xEC0000002054494DLL, 0, 0, a1, a2, a3);
  if (!v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7590, &qword_1B0EF4E48);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B0EC3500;
    v16 = swift_allocObject();
    v16[2] = a4;
    v16[3] = a5;
    v16[4] = a6;
    v16[5] = a7;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1B0DA4C88;
    *(v17 + 24) = v16;
    *(inited + 32) = sub_1B0DA4E78;
    *(inited + 40) = v17;
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a5;
    v18[4] = a6;
    v18[5] = a7;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1B0DA4CCC;
    *(v19 + 24) = v18;
    *(inited + 48) = sub_1B0DA4E78;
    *(inited + 56) = v19;
    swift_retain_n();
    sub_1B0D9402C(inited, a1, a2, v12, 0xD000000000000020, 0x80000001B0F2FA10, 374);
    v12 = v21;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
  }

  return v12;
}

uint64_t sub_1B0DA32AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFF3DC(a1, a2, a3, 1);
  if (!v3 && result < 0)
  {
    sub_1B0436554();
    swift_allocError();
    *v5 = 0xD000000000000011;
    v5[1] = 0x80000001B0F2FEE0;
    v5[2] = 0xD000000000000020;
    v5[3] = 0x80000001B0F2FA10;
    v5[4] = 202;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1B0DA3358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0DFE880(0x49584F424C49414DuLL, 0xEB00000000282044, 0, 0, a1, a2, a3);
  if (!v3)
  {
    v4 = sub_1B0DC1D1C(a1, a2, a3);
    sub_1B0DFE880(0x29uLL, 0xE100000000000000, 0, 0, a1, a2, a3);
  }

  return v4;
}

uint64_t sub_1B0DA3428(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7590, &qword_1B0EF4E48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EF4E20;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1B0DA45B0;
  *(v15 + 24) = v14;
  *(inited + 32) = sub_1B0DA45D0;
  *(inited + 40) = v15;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B0DA45E8;
  *(v17 + 24) = v16;
  *(inited + 48) = sub_1B0DA4E78;
  *(inited + 56) = v17;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = a6;
  v18[5] = a7;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1B0DA4608;
  *(v19 + 24) = v18;
  *(inited + 64) = sub_1B0DA4E78;
  *(inited + 72) = v19;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B0DA4628;
  *(v21 + 24) = v20;
  *(inited + 80) = sub_1B0DA4E78;
  *(inited + 88) = v21;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B0DA4648;
  *(v23 + 24) = v22;
  *(inited + 96) = sub_1B0DA4E78;
  *(inited + 104) = v23;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = a6;
  v24[5] = a7;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B0DA4668;
  *(v25 + 24) = v24;
  *(inited + 112) = sub_1B0DA4E78;
  *(inited + 120) = v25;
  v26 = swift_allocObject();
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v26[5] = a7;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B0DA4688;
  *(v27 + 24) = v26;
  *(inited + 128) = sub_1B0DA4E78;
  *(inited + 136) = v27;
  v28 = swift_allocObject();
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = a6;
  v28[5] = a7;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B0DA46A8;
  *(v29 + 24) = v28;
  *(inited + 144) = sub_1B0DA4E78;
  *(inited + 152) = v29;
  v30 = swift_allocObject();
  v30[2] = a4;
  v30[3] = a5;
  v30[4] = a6;
  v30[5] = a7;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B0DA46C8;
  *(v31 + 24) = v30;
  *(inited + 160) = sub_1B0DA4E78;
  *(inited + 168) = v31;
  swift_retain_n();
  sub_1B0D9402C(inited, a1, a2, a3, 0xD000000000000020, 0x80000001B0F2FA10, 395);
  if (v36)
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    return swift_arrayDestroy();
  }

  else
  {
    v34 = v32;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7540, &qword_1B0EF5100);
    swift_arrayDestroy();
    return v34;
  }
}

uint64_t sub_1B0DA38BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v140 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7588, &qword_1B0EF4E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B0EC1E70;
  v17 = sub_1B0DA3428(a1, a2, a3, a4, a5, a6, a7);
  if (v8)
  {
    *(inited + 16) = 0;
  }

  v68 = a4;
  v70 = a5;
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v21 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  if (v21 >= a3)
  {
    sub_1B0439BCC();
    swift_allocError();
    *v41 = a3;
LABEL_37:
    swift_willThrow();
  }

  v22 = a1;
  v23 = *(a1 + 8);
  v24 = *(a1 + 16);
  v57 = *(a1 + 22);
  v58 = *(a1 + 20);
  v59 = *a1;

  v65 = v21 + 1;
  if (v21 + 1 >= a3)
  {
    sub_1B0439BCC();
    v42 = swift_allocError();
    *v43 = a3;
  }

  else
  {
    v56 = v24;
    v25 = v21 + 2;
    v26 = *a1;
    v27 = *(a1 + 8);
    v28 = *(a1 + 16);
    v62 = *(v22 + 22);
    v63 = *(v22 + 20);
    if (v25 < a3)
    {
      v29 = inited;
      v60 = a7;
      v61 = v22;
      v67 = inited;
      do
      {
        v74 = v29;
        swift_retain_n();
        sub_1B0436204(v22);

        v30 = a3;
        v31 = a3;
        v32 = a6;
        v33 = sub_1B0DA3428(v22, v65, v31, v68, v70, a6, a7);
        v35 = v34;
        v37 = v36;

        v29 = v74;
        v39 = *(v74 + 2);
        v38 = *(v74 + 3);
        if (v39 >= v38 >> 1)
        {
          v29 = sub_1B0DF5A7C((v38 > 1), v39 + 1, 1, v74);
        }

        *(v29 + 2) = v39 + 1;
        v40 = &v29[24 * v39];
        *(v40 + 4) = v33;
        *(v40 + 5) = v35;
        v40[48] = v37;
        a7 = v60;
        v22 = v61;
        v26 = *v61;
        v27 = *(v61 + 8);
        v28 = *(v61 + 16);
        v62 = *(v61 + 22);
        v63 = *(v61 + 20);
        inited = v67;
        a6 = v32;
        a3 = v30;
      }

      while (v25 < v30);
    }

    sub_1B0439BCC();
    v42 = swift_allocError();
    *v44 = a3;

    swift_willThrow();

    *v22 = v26;
    *(v22 + 8) = v27;
    *(v22 + 16) = v28;
    *(v22 + 20) = v63;
    *(v22 + 22) = v62;
    v24 = v56;
  }

  swift_willThrow();
  v45 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
  if (!swift_dynamicCast())
  {

    *v22 = v59;
    *(v22 + 8) = v23;
    *(v22 + 16) = v24;
    *(v22 + 20) = v58;
    *(v22 + 22) = v57;
    goto LABEL_37;
  }

  v94 = 0;
  v95 = 1;
  v97 = 0;
  v98 = 1;
  v101 = 0;
  v102 = 1;
  v105 = 0;
  v106 = 1;
  v108 = 0;
  v109 = 1;
  v111 = 0;
  v112 = 1;
  v114 = 0;
  v115 = 1;
  v117 = 0;
  v118 = 1;
  v121 = 0;
  v120 = 0;
  v122 = 0;
  v123 = 1;
  v124 = 0;
  v125 = 1;
  v126 = 0;
  v127 = 1;
  v128 = 0;
  v129 = 1;
  v130 = 0;
  v131 = 1;
  v132 = 0;
  v133 = 1;
  v134 = 0;
  v135 = 1;
  v136 = 0;
  v137 = 1;
  v139 = 0;
  v138 = 0;
  sub_1B0B379C4(&v94, v93);
  sub_1B0B11B9C(&v122);
  v75 = v94;
  v93[0] = v95;
  *v92 = *v96;
  *&v92[3] = *&v96[3];
  v72 = v97;
  v82 = v98;
  v91 = v100;
  v90 = v99;
  v71 = v101;
  v81 = v102;
  v89 = v104;
  v88 = v103;
  v69 = v105;
  v80 = v106;
  *&v87[3] = *&v107[3];
  *v87 = *v107;
  v79 = v109;
  *&v86[3] = *&v110[3];
  *v86 = *v110;
  v64 = v111;
  v66 = v108;
  v78 = v112;
  *&v85[3] = *&v113[3];
  *v85 = *v113;
  v46 = v114;
  v77 = v115;
  *&v84[3] = *&v116[3];
  *v84 = *v116;
  v47 = v117;
  v76 = v118;
  *&v83[3] = *&v119[3];
  *v83 = *v119;
  v48 = v120;
  v49 = v121;
  v50 = *(inited + 16);
  if (v50)
  {
    v51 = (inited + 48);
    do
    {
      v52 = *(v51 - 2);
      v53 = *v51;
      if (v53 <= 3)
      {
        if (*v51 > 1u)
        {
          if (v53 == 2)
          {
            v80 = 0;
            v69 = *(v51 - 2);
          }

          else
          {
            v79 = 0;
            v66 = *(v51 - 2);
          }
        }

        else if (*v51)
        {
          v81 = 0;
          v71 = *(v51 - 2);
        }

        else
        {
          v93[0] = 0;
          v75 = v52;
        }
      }

      else if (*v51 <= 5u)
      {
        if (v53 == 4)
        {
          v78 = 0;
          v64 = *(v51 - 2);
        }

        else
        {
          v82 = 0;
          v72 = *(v51 - 2);
        }
      }

      else if (v53 == 6)
      {
        v77 = 0;
        v46 = *(v51 - 2);
      }

      else
      {
        v54 = *(v51 - 1);
        if (v53 == 7)
        {
          v76 = v54 & 1;
          v47 = *(v51 - 2);
        }

        else
        {
          _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

          v48 = v52;
          v49 = v54;
        }
      }

      v51 += 24;
      --v50;
    }

    while (v50);
  }

  v55 = v93[0];
  *a8 = v75;
  *(a8 + 8) = v55;
  *(a8 + 9) = *v92;
  *(a8 + 12) = *&v92[3];
  *(a8 + 16) = v72;
  *(a8 + 24) = v82;
  *(a8 + 27) = v91;
  *(a8 + 25) = v90;
  *(a8 + 28) = v71;
  *(a8 + 32) = v81;
  *(a8 + 33) = v88;
  *(a8 + 35) = v89;
  *(a8 + 36) = v69;
  *(a8 + 40) = v80;
  *(a8 + 41) = *v87;
  *(a8 + 44) = *&v87[3];
  *(a8 + 48) = v66;
  *(a8 + 56) = v79;
  *(a8 + 60) = *&v86[3];
  *(a8 + 57) = *v86;
  *(a8 + 64) = v64;
  *(a8 + 72) = v78;
  *(a8 + 76) = *&v85[3];
  *(a8 + 73) = *v85;
  *(a8 + 80) = v46;
  *(a8 + 88) = v77;
  *(a8 + 92) = *&v84[3];
  *(a8 + 89) = *v84;
  *(a8 + 96) = v47;
  *(a8 + 104) = v76;
  *(a8 + 108) = *&v83[3];
  *(a8 + 105) = *v83;
  *(a8 + 112) = v48;
  *(a8 + 120) = v49;
  return result;
}

uint64_t sub_1B0DA40AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 3u)
  {
    if (a4 > 1u)
    {
      if (a4 != 2)
      {
        v7 = 3;
        goto LABEL_22;
      }

      v8 = 2;
    }

    else
    {
      if (!a4)
      {
        v7 = 0;
LABEL_22:
        MEMORY[0x1B2728D70](v7, a2, a3);
        return MEMORY[0x1B2728D70](a2);
      }

      v8 = 1;
    }

    MEMORY[0x1B2728D70](v8, a2, a3);
    return sub_1B0E46C88();
  }

  if (a4 <= 5u)
  {
    if (a4 == 4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }

    goto LABEL_22;
  }

  if (a4 == 6)
  {
    MEMORY[0x1B2728D70](6, a2, a3);
    return MEMORY[0x1B2728DB0](a2);
  }

  v5 = a3;
  if (a4 == 7)
  {
    MEMORY[0x1B2728D70](7);
    if (v5)
    {
      return sub_1B0E46C68();
    }

    sub_1B0E46C68();
    return MEMORY[0x1B2728D70](a2);
  }

  MEMORY[0x1B2728D70](8);

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0DA41CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1B0E46C28();
  sub_1B0DA40AC(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DA4234(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1B0E46C28();
  sub_1B0DA40AC(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0DA42A8(uint64_t result, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 3u)
  {
    v6 = result == a4;
    if (a6 != 2)
    {
      v6 = 0;
    }

    v8 = a6 == 3 && result == a4;
    if (a3 != 2)
    {
      v6 = v8;
    }

    if (a6)
    {
      v9 = 0;
    }

    else
    {
      v9 = result == a4;
    }

    v10 = v9;
    v11 = a6 == 1 && a4 == result;
    if (!a3)
    {
      v11 = v10;
    }

    if (a3 <= 1u)
    {
      return v11;
    }

    else
    {
      return v6;
    }
  }

  else if (a3 <= 5u)
  {
    v13 = a6 == 4 && result == a4;
    v15 = a6 == 5 && result == a4;
    if (a3 == 4)
    {
      return v13;
    }

    else
    {
      return v15;
    }
  }

  else
  {
    if (a3 != 6)
    {
      if (a3 == 7)
      {
        if (a6 != 7)
        {
          return 0;
        }

        if (a2)
        {
          return (a5 & 1) != 0;
        }

        if (a5 & 1 | (result != a4))
        {
          return 0;
        }
      }

      else
      {
        if (a6 != 8)
        {
          return 0;
        }

        if (result != a4 || a2 != a5)
        {
          return sub_1B0E46A78();
        }
      }

      return 1;
    }

    if (a6 != 6)
    {
      return 0;
    }

    if ((a4 | result) < 0)
    {
      __break(1u);
    }

    else
    {
      return a4 == result;
    }
  }

  return result;
}

__n128 sub_1B0DA4500@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  (*(v3 + 16))(v10, a1, *a2, a2[1]);
  if (!v4)
  {
    v7 = v10[7];
    *(a3 + 96) = v10[6];
    *(a3 + 112) = v7;
    *(a3 + 128) = v10[8];
    v8 = v10[3];
    *(a3 + 32) = v10[2];
    *(a3 + 48) = v8;
    v9 = v10[5];
    *(a3 + 64) = v10[4];
    *(a3 + 80) = v9;
    result = v10[1];
    *a3 = v10[0];
    *(a3 + 16) = result;
  }

  return result;
}

double sub_1B0DA456C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_1B0DA458C(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}