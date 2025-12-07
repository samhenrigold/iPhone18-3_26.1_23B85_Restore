unint64_t sub_18AEE7DB4()
{
  result = qword_1EA999440;
  if (!qword_1EA999440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999440);
  }

  return result;
}

unint64_t sub_18AEE7E0C()
{
  result = qword_1EA999448;
  if (!qword_1EA999448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999448);
  }

  return result;
}

unint64_t sub_18AEE7E64()
{
  result = qword_1EA999450;
  if (!qword_1EA999450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999450);
  }

  return result;
}

unint64_t sub_18AEE7EBC()
{
  result = qword_1EA999458;
  if (!qword_1EA999458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999458);
  }

  return result;
}

unint64_t sub_18AEE7F14()
{
  result = qword_1EA999460[0];
  if (!qword_1EA999460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA999460);
  }

  return result;
}

uint64_t sub_18AEE7F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_18AEE7FD8(uint64_t a1)
{
  sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
      if (v3 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA997C40, &type metadata for MacSizeClass);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18AEE8128(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_18AFCC5C4() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(sub_18AFCBB54() - 8);
  v9 = *(v8 + 64);
  if ((v9 + 1) > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v13 & 0xF8 | 7;
  v19 = v7 + v18 + 1;
  v20 = v10 + 8;
  v21 = v14 + 15;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v22 = ((v21 + ((v20 + ((v19 + ((v16 + 16) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v11 + 64);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v12 > 0xFE)
      {
        v31 = *(v11 + 48);

        return v31((v21 + ((v20 + ((v19 + ((a1 + v17 + 9) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(a1 + 8);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_18AEE840C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_18AFCC5C4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_18AFCBB54() - 8);
  v11 = *(v10 + 64);
  if ((v11 + 1) > 8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v15 & 0xF8 | 7;
  v20 = v16 & 0xF8 | 7;
  v21 = v9 + v20 + 1;
  v22 = v12 + 8;
  v23 = ((v17 + 15 + ((v22 + ((v21 + (((v15 & 0xF8) + 16) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v23] = 0;
  }

  else if (v24)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 > 0xFE)
  {
    v30 = *(v13 + 56);

    v30((v17 + 15 + ((v22 + ((v21 + (&a1[v19 + 9] & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

uint64_t sub_18AEE87E4@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v16 = *a1;
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  v18 = type metadata accessor for MacPushButton(0, a9, a10, v17);
  v19 = v18[9];
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v20 = v18[10];
  *(a8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  swift_storeEnumTagMultiPayload();
  v21 = a8 + v18[11];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(a8 + v18[12]) = v16;
  *(a8 + v18[13]) = a2;
  *(a8 + v18[14]) = a3;
  *(a8 + v18[15]) = a4;
  *(a8 + v18[16]) = a5;
  *(a8 + v18[17]) = a6;
  return a7();
}

double sub_18AEE8948(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ResolvedButtonBorderShape(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AED2E98(v10);
  LODWORD(v8) = *(v10 + *(v8 + 28));
  sub_18AED8AD4(v10);
  v11 = v1 + *(a1 + 44);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v8 == 2)
  {
    if (!v13)
    {

      sub_18AFCE024();
      v14 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[14];
    }

    v15 = &unk_18AFD4F70;
  }

  else
  {
    if (!v13)
    {

      sub_18AFCE024();
      v16 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[15];
    }

    v15 = &unk_18AFD4EF0;
  }

  return v15[v12];
}

double sub_18AEE8BB8(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ResolvedButtonBorderShape(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AED2E98(v10);
  LODWORD(v8) = *(v10 + *(v8 + 28));
  sub_18AED8AD4(v10);
  v11 = v1 + *(a1 + 44);
  v12 = *v11;
  v13 = *(v11 + 8);
  if (v8 == 2)
  {
    if (!v13)
    {

      sub_18AFCE024();
      v14 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[14];
    }

    v15 = &unk_18AFD4F70;
  }

  else
  {
    if (!v13)
    {

      sub_18AFCE024();
      v16 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v12, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v12) = v18[15];
    }

    v15 = &unk_18AFD4F30;
  }

  return v15[v12];
}

uint64_t sub_18AEE8E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v104 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v104);
  v103 = (&v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v79 - v5;
  v108 = sub_18AFCC474();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v111 = v9;
  v10 = sub_18AFCC044();
  v82 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v81 = &v79 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998CA0, &unk_18AFD3608);
  v12 = sub_18AFCC044();
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v79 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  v14 = MEMORY[0x1E697DDC8];
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v15 = sub_18AFCBDC4();
  v86 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v79 - v16;
  v87 = v17;
  v18 = sub_18AFCC044();
  v88 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v79 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58, &qword_18AFDA3C0, v14);
  v90 = sub_18AFCBDC4();
  v89 = v18;
  v20 = sub_18AFCC624();
  v93 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v79 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998C48, &unk_18AFD49D0);
  v95 = v20;
  v22 = sub_18AFCC044();
  v98 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v96 = &v79 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  v100 = v22;
  v102 = sub_18AFCC044();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v97 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v99 = &v79 - v26;
  v27 = v112 + *(a1 + 44);
  v28 = *v27;
  v106 = *(v27 + 8);
  v91 = v8;
  v80 = v28;
  if (v106 != 1)
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v28, 0);
    (*(v107 + 8))(v8, v108);
  }

  sub_18AFCC934();
  v30 = sub_18AFCC8F4();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  sub_18AFCC954();
  sub_18AED2A4C(v6);
  sub_18AFCC8E4();

  v31 = *(a1 + 24);
  v32 = v112;
  v33 = v81;
  sub_18AFCCBA4();

  v34 = *(v32 + *(a1 + 52));
  v35 = *(v32 + *(a1 + 56));
  v129 = *(v32 + *(a1 + 48));
  v130 = v34;
  v131 = v35;
  v36 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v85 = v31;
  v127 = v31;
  v128 = v36;
  WitnessTable = swift_getWitnessTable();
  sub_18AEE9FBC();
  v38 = v83;
  sub_18AFCCB44();
  (*(v82 + 8))(v33, v10);
  v39 = sub_18AEE8948(a1);
  v40 = sub_18AEE8BB8(a1);
  v41 = *(v32 + *(a1 + 68));
  v42 = sub_18AE95F54(&qword_1EA998C98, &qword_1EA998CA0, &unk_18AFD3608, MEMORY[0x1E6980490]);
  v125 = WitnessTable;
  v126 = v42;
  v43 = swift_getWitnessTable();
  sub_18AFC385C(0, v41, v12, v43, v39, v40, v109);
  (*(v84 + 8))(v38, v12);
  sub_18AFCC8B4();
  v44 = *(v32 + *(a1 + 60));
  v45 = v108;
  v46 = v107;
  v47 = v91;
  v48 = v80;
  if ((v44 & 1) == 0 && !v106)
  {

    sub_18AFCE024();
    v49 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v48, 0);
    (*(v46 + 8))(v47, v45);
  }

  v123 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v124 = v43;
  v50 = v87;
  v51 = swift_getWitnessTable();
  v52 = v109;
  sub_18AFCCC24();
  (*(v86 + 8))(v52, v50);
  v94 = a1;
  if (v44)
  {
    if (v106)
    {
      v53 = v48;
    }

    else
    {

      sub_18AFCE024();
      v77 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v48, 0);
      (*(v46 + 8))(v47, v45);
      v53 = v129;
    }

    v55 = qword_18AFD5030[v53];
    if (!v106)
    {

      sub_18AFCE024();
      v78 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v48, 0);
      (*(v46 + 8))(v47, v45);
      LOBYTE(v48) = v129;
    }

    v54 = 0x4010000000000000;
    if (v48 > 3u)
    {
      if (v48 - 5 >= 2)
      {
        if (v48 != 4)
        {
LABEL_23:
          v54 = 0x4018000000000000;
          goto LABEL_10;
        }

        v54 = 0x402A000000000000;
      }
    }

    else if (v48 > 1u)
    {
      if (v48 == 2)
      {
        v54 = 0x401C000000000000;
      }

      else
      {
        v54 = 0x4022000000000000;
      }
    }

    else if (v48)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v54 = 0;
    v55 = 0;
  }

LABEL_10:
  v121 = v51;
  v122 = MEMORY[0x1E697E5D8];
  v109 = MEMORY[0x1E697E858];
  v56 = v89;
  v57 = swift_getWitnessTable();
  v58 = v92;
  v59 = v55;
  v60 = v110;
  sub_18AFC2B18(v59, v44 ^ 1, v54, v44 ^ 1, v56, v57, v92);
  v61 = (*(v88 + 8))(v60, v56);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v112;
  v63 = v85;
  *(&v79 - 4) = v111;
  *(&v79 - 3) = v63;
  *(&v79 - 2) = v62;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40, &unk_18AFD35C0);
  v119 = sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58, &qword_18AFDA3C0, MEMORY[0x1E697DDD0]);
  v120 = v57;
  v117 = swift_getWitnessTable();
  v118 = v57;
  v64 = v95;
  v65 = swift_getWitnessTable();
  sub_18AEE7560();
  v66 = v96;
  sub_18AFCCA64();
  (*(v93 + 8))(v58, v64);
  v67 = v103;
  sub_18AED2E98(v103);
  v68 = sub_18AE95F54(&qword_1EA998CA8, &qword_1EA998C48, &unk_18AFD49D0, MEMORY[0x1E697F940]);
  v115 = v65;
  v116 = v68;
  v69 = v100;
  v70 = swift_getWitnessTable();
  sub_18AED8A7C();
  v71 = v97;
  sub_18AFCCAC4();
  sub_18AED8AD4(v67);
  (*(v98 + 8))(v66, v69);
  v72 = sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  v113 = v70;
  v114 = v72;
  v73 = v102;
  swift_getWitnessTable();
  v74 = v99;
  sub_18AEADA5C();
  v75 = *(v101 + 8);
  v75(v71, v73);
  sub_18AEADA5C();
  return (v75)(v74, v73);
}

uint64_t sub_18AEE9E74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30, &qword_18AFD3550);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v19 - v10);
  v13 = type metadata accessor for MacPushButton(0, a2, a3, v12);
  sub_18AED2E98(v11);
  v14 = *(a1 + v13[13]);
  v15 = *(a1 + v13[16]);
  *(v11 + v9[11]) = *(a1 + v13[12]);
  *(v11 + v9[12]) = v14;
  *(v11 + v9[13]) = v15;
  v16 = v11 + v9[14];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  if (*(a1 + v13[14]))
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  sub_18AEE79C8(v11, a4);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C40, &unk_18AFD35C0);
  *(a4 + *(result + 36)) = v17;
  return result;
}

unint64_t sub_18AEE9FBC()
{
  result = qword_1EA9994E8;
  if (!qword_1EA9994E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9994E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacSizeClass(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MacSizeClass(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18AEEA170()
{
  result = qword_1EA9994F0[0];
  if (!qword_1EA9994F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9994F0);
  }

  return result;
}

uint64_t sub_18AEEA1C4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18AEEA278(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  v12 = *(v7 + 64);
  if (v5 <= v8)
  {
    v13 = *(v7 + 84);
  }

  else
  {
    v13 = *(v4 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_29;
  }

  v15 = v12 + ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) + 2;
  v16 = 8 * v15;
  if (v15 > 3)
  {
    goto LABEL_9;
  }

  v18 = ((v14 + ~(-1 << v16)) >> v16) + 1;
  if (HIWORD(v18))
  {
    v17 = *(a1 + v15);
    if (v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v18 <= 0xFF)
    {
      if (v18 < 2)
      {
        goto LABEL_29;
      }

LABEL_9:
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_29;
      }

LABEL_16:
      v19 = (v17 - 1) << v16;
      if (v15 > 3)
      {
        v19 = 0;
      }

      if (v12 + ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) == -2)
      {
        v21 = 0;
      }

      else
      {
        if (v15 <= 3)
        {
          v20 = v12 + ((v10 + v11 + ((v9 + 2) & ~v9)) & ~v11) + 2;
        }

        else
        {
          v20 = 4;
        }

        if (v20 > 2)
        {
          if (v20 == 3)
          {
            v21 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v21 = *a1;
          }
        }

        else if (v20 == 1)
        {
          v21 = *a1;
        }

        else
        {
          v21 = *a1;
        }
      }

      return v13 + (v21 | v19) + 1;
    }

    v17 = *(a1 + v15);
    if (*(a1 + v15))
    {
      goto LABEL_16;
    }
  }

LABEL_29:
  v22 = (a1 + v9 + 2) & ~v9;
  if (v5 == v13)
  {
    return (*(v4 + 48))(v22);
  }

  v24 = (v22 + v10 + v11) & ~v11;
  if (v8 == v13)
  {
    return (*(v7 + 48))(v24, v8, v6);
  }

  v25 = *(v12 + v24 + 1);
  if (v25 < 2)
  {
    return 0;
  }

  return ((v25 + 2147483646) & 0x7FFFFFFF) + 1;
}

void sub_18AEEA4B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (v7 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v6 + 84);
  }

  if (v14 <= 0xFE)
  {
    v14 = 254;
  }

  v15 = v13 + ((v11 + v12 + ((v10 + 2) & ~v10)) & ~v12) + 2;
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v13 + ((v11 + v12 + ((v10 + 2) & ~v10)) & ~v12) != -2)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_50:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  v24 = &a1[v10 + 2] & ~v10;
  if (v7 == v14)
  {
    v25 = *(v6 + 56);

    v25(v24);
  }

  else
  {
    v26 = (v24 + v11 + v12) & ~v12;
    if (v9 == v14)
    {
      v27 = *(v8 + 56);

      v27(v26);
    }

    else
    {
      *(v26 + v13 + 1) = a2 + 1;
    }
  }
}

void sub_18AEEA820(void *a2@<X8>)
{
  v3 = *(sub_18AFCC704() + 20);
  v4 = *MEMORY[0x1E697F468];
  v5 = sub_18AFCC534();
  (*(*(v5 - 8) + 104))(a2 + v3, v4, v5);
  sub_18AFCC674();
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
}

uint64_t sub_18AEEA91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v28 = a2;
  v27 = sub_18AFCC704();
  MEMORY[0x1EEE9AC00](v27);
  v26 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MacStepperButton(255);
  v4 = *(a1 + 16);
  sub_18AFCC044();
  v23 = *(a1 + 24);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578, &qword_18AFD5160);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  v21 = MEMORY[0x1E6981880];
  swift_getWitnessTable();
  v5 = sub_18AFCD1F4();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999580, &qword_18AFD5168);
  v8 = sub_18AFCC044();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v29 = v4;
  v30 = v23;
  v31 = *(v24 + 32);
  v32 = v25;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  v15 = v26;
  sub_18AEEA820(v26);
  WitnessTable = swift_getWitnessTable();
  v17 = MEMORY[0x1E697FF20];
  sub_18AEEBE90(&qword_1EA999588, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
  sub_18AFCCAC4();
  sub_18AEEBED8(v15, v17);
  (*(v22 + 8))(v7, v5);
  v18 = sub_18AE95F54(&qword_1EA999590, &qword_1EA999580, &qword_18AFD5168, MEMORY[0x1E697FD58]);
  v33 = WitnessTable;
  v34 = v18;
  swift_getWitnessTable();
  sub_18AEADA5C();
  v19 = *(v9 + 8);
  v19(v11, v8);
  sub_18AEADA5C();
  return (v19)(v14, v8);
}

uint64_t sub_18AEEAD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19[0] = a5;
  v19[1] = a6;
  type metadata accessor for MacStepperButton(255);
  sub_18AFCC044();
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578, &qword_18AFD5160);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v10 = sub_18AFCD1F4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v19 - v15;
  v19[4] = a2;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = v19[0];
  v19[8] = a1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_18AEADA5C();
  return (v17)(v16, v10);
}

uint64_t sub_18AEEB014@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v45 = a4;
  v47 = a1;
  v54 = a6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999598, &qword_18AFD5170) - 8;
  MEMORY[0x1EEE9AC00](v49);
  v11 = &v43 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999578, &qword_18AFD5160);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v50 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v43 - v16;
  type metadata accessor for MacStepperButton(255);
  v44 = a2;
  sub_18AFCC044();
  v43 = a3;
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v17 = sub_18AFCD1D4();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v55 = a2;
  v56 = a3;
  v23 = &v43 - v22;
  v57 = a4;
  v58 = a5;
  v24 = v47;
  v59 = v47;
  sub_18AFCC5D4();
  sub_18AFCD1C4();
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C();
  v25 = *(v18 + 8);
  v25(v20, v17);
  v26 = *(sub_18AFCC184() + 20);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_18AFCC534();
  (*(*(v28 - 8) + 104))(&v11[v26], v27, v28);
  __asm { FMOV            V0.2D, #8.0 }

  *v11 = _Q0;
  LODWORD(v27) = sub_18AFCC6B4();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995A0, &qword_18AFD5178);
  *&v11[*(v34 + 52)] = v27;
  *&v11[*(v34 + 56)] = 256;
  sub_18AEEBBBC(v24, v44, v43, v45, v46);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v35 = &v11[*(v49 + 44)];
  v36 = v65;
  *v35 = v64;
  *(v35 + 1) = v36;
  *(v35 + 2) = v66;
  v37 = 0.0;
  if (*v24 != 3)
  {
    if (v24[1] == 3)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = 1.0;
    }
  }

  v38 = v50;
  sub_18AE9A768(v11, v50, &qword_1EA999598, &qword_18AFD5170);
  v39 = v52;
  *(v38 + *(v52 + 36)) = v37;
  v40 = v51;
  sub_18AE9A768(v38, v51, &qword_1EA999578, &qword_18AFD5160);
  (*(v18 + 16))(v20, v23, v17);
  v63[0] = v20;
  v41 = v53;
  sub_18AEEBC74(v40, v53);
  v63[1] = v41;
  v62[0] = v17;
  v62[1] = v39;
  v60 = WitnessTable;
  v61 = sub_18AEEBCE4();
  sub_18AEB70B8(v63, 2uLL, v62);
  sub_18AEEBE28(v40);
  v25(v23, v17);
  sub_18AEEBE28(v41);
  return (v25)(v20, v17);
}

uint64_t sub_18AEEB584@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v72 = a6;
  v11 = type metadata accessor for MacStepperButton(255);
  v73 = sub_18AFCC044();
  v69 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18AFCC044();
  v66 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v74 = &v58 - v22;
  v23 = *a1;
  v65 = a2;
  v78 = a2;
  v79 = a3;
  v67 = a3;
  v64 = a4;
  v80 = a4;
  v81 = a5;
  v68 = a5;
  v24 = type metadata accessor for MacStepper(0, &v78);
  v25 = a1[v24[16]];
  v26 = a1[v24[17]];
  v27 = 1;
  if (v23 != 2)
  {
    v27 = a1[1] == 2;
  }

  *v17 = 0;
  v17[1] = v23;
  v17[2] = v25;
  v17[3] = v26;
  v17[4] = v27;
  v28 = v11[9];
  v63 = v25;
  v29 = v26;
  *&v17[v28] = swift_getKeyPath();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v30 = &v17[v11[10]];
  *v30 = swift_getKeyPath();
  v30[8] = 0;
  v31 = &v17[v11[11]];
  *v31 = swift_getKeyPath();
  v31[8] = 0;
  v32 = v11[12];
  *&v17[v32] = swift_getKeyPath();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v33 = v24[14];
  v34 = sub_18AEEBE90(&qword_1EA9995C0, type metadata accessor for MacStepperButton, &unk_18AFD5384);
  MEMORY[0x18CFEBFA0](&a1[v33], v11, v65, v34);
  sub_18AEEBED8(v17, type metadata accessor for MacStepperButton);
  v77[4] = v34;
  v77[5] = v64;
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C();
  v35 = v18;
  v59 = v18;
  v36 = v66;
  v37 = *(v66 + 8);
  v64 = v66 + 8;
  v65 = v37;
  v37(v20, v35);
  v38 = a1[1];
  v40 = *a1 == 2 || a1[1] == 2;
  *v17 = 1;
  v17[1] = v38;
  v17[2] = v63;
  v17[3] = v29;
  v17[4] = v40;
  v41 = v24;
  v42 = v11[9];
  *&v17[v42] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v43 = &v17[v11[10]];
  *v43 = swift_getKeyPath();
  v43[8] = 0;
  v44 = &v17[v11[11]];
  *v44 = swift_getKeyPath();
  v44[8] = 0;
  v45 = v11[12];
  *&v17[v45] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v46 = &a1[v41[15]];
  v47 = v71;
  MEMORY[0x18CFEBFA0](v46, v11, v67, v34);
  sub_18AEEBED8(v17, type metadata accessor for MacStepperButton);
  v77[2] = v34;
  v77[3] = v68;
  v48 = v73;
  v49 = swift_getWitnessTable();
  v50 = v70;
  sub_18AEADA5C();
  v51 = v69;
  v52 = *(v69 + 8);
  v52(v47, v48);
  v53 = *(v36 + 16);
  v54 = v74;
  v55 = v59;
  v53(v20, v74, v59);
  v78 = v20;
  (*(v51 + 16))(v47, v50, v48);
  v79 = v47;
  v77[0] = v55;
  v77[1] = v48;
  v75 = WitnessTable;
  v76 = v49;
  sub_18AEB70B8(&v78, 2uLL, v77);
  v52(v50, v48);
  v56 = v65;
  v65(v54, v55);
  v52(v47, v48);
  return v56(v20, v55);
}

uint64_t sub_18AEEBBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return qword_18AFD52B8[*(a1 + *(type metadata accessor for MacStepper(0, v6) + 64))];
}

uint64_t sub_18AEEBC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999578, &qword_18AFD5160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEEBCE4()
{
  result = qword_1EA9995A8;
  if (!qword_1EA9995A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999578, &qword_18AFD5160);
    sub_18AEEBD70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9995A8);
  }

  return result;
}

unint64_t sub_18AEEBD70()
{
  result = qword_1EA9995B0;
  if (!qword_1EA9995B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999598, &qword_18AFD5170);
    sub_18AE95F54(&qword_1EA9995B8, &qword_1EA9995A0, &qword_18AFD5178, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9995B0);
  }

  return result;
}

uint64_t sub_18AEEBE28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999578, &qword_18AFD5160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AEEBE90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AEEBED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for MacStepperButton(uint64_t a1)
{
  result = qword_1EA9995C8;
  if (!qword_1EA9995C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEEBFAC(uint64_t a1)
{
  sub_18AEEC0EC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
  if (v1 <= 0x3F)
  {
    sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C28, &type metadata for ControlContext);
      if (v3 <= 0x3F)
      {
        sub_18AEEC0EC(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18AEEC0EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_18AEEC154()
{
  result = qword_1EA9995D8;
  if (!qword_1EA9995D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9995D8);
  }

  return result;
}

void sub_18AEEC1A8(void *a1@<X8>)
{
  v2 = *(sub_18AFCC704() + 20);
  v3 = *MEMORY[0x1E697F468];
  v4 = sub_18AFCC534();
  (*(*(v4 - 8) + 104))(a1 + v2, v3, v4);
  sub_18AFCC674();
  *a1 = v5;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
}

uint64_t sub_18AEEC2CC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v32 = sub_18AFCC474();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995F8, &qword_18AFD53F8);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v32 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999600, &qword_18AFD5400);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  if ((a1[3] & 1) != 0 || a1[4] == 1)
  {
    sub_18AEEC1A8(v12);
    *(v12 + v9[9]) = a1[1];
    *(v12 + v9[10]) = 0;
    *(v12 + v9[11]) = 0;
    v19 = v12 + v9[12];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    sub_18AEECDEC(v12, v18);
    (*(v10 + 56))(v18, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(&v32 - v17, 1, 1, v9);
  }

  v20 = sub_18AFCCFA4();
  v21 = &a1[*(type metadata accessor for MacStepperButton(0) + 40)];
  v22 = *v21;
  if (v21[8] != 1)
  {

    sub_18AFCE024();
    v23 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v22, 0);
    (*(v6 + 8))(v8, v32);
    if (v38 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    v34 = a1[1];
    v35 = 512;
    v36 = 0;
    sub_18AEECD98();
    goto LABEL_10;
  }

  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v37 = sub_18AFCC6F4();
LABEL_10:
  v24 = sub_18AFCBCD4();
  sub_18AEEC7F0(a1, v25);
  v26 = sub_18AFCC8F4();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  v27 = sub_18AFCC954();
  sub_18AE7BA80(v5, &qword_1EA998930, &qword_18AFD35E0);
  KeyPath = swift_getKeyPath();
  sub_18AEECD28(v18, v15);
  v29 = v33;
  sub_18AEECD28(v15, v33);
  v30 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999608, &qword_18AFD5438) + 48));
  *v30 = v20;
  v30[1] = v24;
  v30[2] = KeyPath;
  v30[3] = v27;

  sub_18AE7BA80(v18, &qword_1EA999600, &qword_18AFD5400);

  return sub_18AE7BA80(v15, &qword_1EA999600, &qword_18AFD5400);
}

double sub_18AEEC7F0(uint64_t a1, __n128 a2)
{
  if (*(a1 + 2) > 3u)
  {
    if (*(a1 + 2) == 4)
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 2) > 1u)
  {
LABEL_3:
    sub_18AFCC944();
    return result;
  }

  sub_18AFCC904();
  return result;
}

uint64_t sub_18AEEC84C(uint64_t a1)
{
  v2 = sub_18AFCC474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + 3) & 1) == 0)
  {
    v6 = a1 + *(type metadata accessor for MacStepperButton(0) + 44);
    v7 = *v6;
    if ((*(v6 + 8) & 1) == 0)
    {

      sub_18AFCE024();
      v8 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v7, 0);
      (*(v3 + 8))(v5, v2);
      v7 = v11[1];
    }

    if (v7 == 4)
    {
      v9 = &unk_18AFD5540 + 8 * *(a1 + 2);
      return *v9;
    }
  }

  if ((*(a1 + 2) - 1) <= 3u)
  {
    v9 = &unk_18AFD5580 + 8 * (*(a1 + 2) - 1);
    return *v9;
  }

  return 0x402A000000000000;
}

double sub_18AEEC9FC(uint64_t a1)
{
  v2 = sub_18AFCC474();
  v3 = *(v2 - 8);
  *&result = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 3);
  if (v7)
  {
    goto LABEL_19;
  }

  v8 = a1 + *(type metadata accessor for MacStepperButton(0) + 44);
  v9 = *v8;
  if ((*(v8 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v10 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v9, 0);
    (*(v3 + 8))(v6, v2);
    v9 = v14[1];
  }

  if (v9 != 4)
  {
LABEL_19:
    v11 = *(a1 + 2);
    if (v11 > 3)
    {
      if (*(a1 + 2) > 5u)
      {
        if (v11 == 6)
        {
          v12 = 8.0;
          v13 = 0.0;
          if (v7)
          {
            return v12 - v13;
          }
        }

        else
        {
          v12 = 10.0;
          v13 = 0.0;
          if (v7)
          {
            return v12 - v13;
          }
        }
      }

      else
      {
        if (v11 == 4)
        {
          return result;
        }

        v12 = 6.5;
        v13 = 0.0;
        if (v7)
        {
          return v12 - v13;
        }
      }

      v13 = 2.0;
      return v12 - v13;
    }
  }

  return result;
}

double sub_18AEECC30@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_18AFCDB44();
  a2[1] = v4;
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995E0, &qword_18AFD53D8) + 44));
  *v5 = sub_18AFCDB44();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995E8, &qword_18AFD53E0);
  sub_18AEEC2CC(v2, v5 + *(v7 + 44));
  sub_18AEEC84C(v2);
  sub_18AEEC9FC(v2);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995F0, &unk_18AFD53E8) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_18AEECD28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999600, &qword_18AFD5400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEECD98()
{
  result = qword_1EA999610;
  if (!qword_1EA999610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999610);
  }

  return result;
}

uint64_t sub_18AEECDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9995F8, &qword_18AFD53F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEECE5C()
{
  result = qword_1EA999618;
  if (!qword_1EA999618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9995F0, &unk_18AFD53E8);
    sub_18AEECEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999618);
  }

  return result;
}

unint64_t sub_18AEECEE8()
{
  result = qword_1EA999620;
  if (!qword_1EA999620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA999628, &unk_18AFD5470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999620);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacToolbarButtonForegroundStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MacToolbarButtonForegroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_18AEED068(uint64_t a1)
{
  sub_18AEB316C(319);
  if (v1 <= 0x3F)
  {
    sub_18AEED708(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_18AEED708(319, &qword_1EA9996B0, &type metadata for GlassGroupContext, MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_18AEED708(319, &qword_1ED56ADC0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18AEED1D8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_18AFCBB54() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0xFE)
  {
    v11 = 254;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_30;
  }

  v12 = (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 57) & ~v9) + v10;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v16 < 2)
    {
LABEL_30:
      if (v8 > 0xFE)
      {
        v21 = *(*(*(a3 + 16) - 8) + 48);

        return v21((((a1 + v6 + 24) & 0xFFFFFFFFFFFFFFF8) + v9 + 33) & ~v9);
      }

      else
      {
        v20 = *(a1 + v6);
        if (v20 >= 2)
        {
          return (v20 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_30;
  }

LABEL_17:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 <= 3)
    {
      v18 = v12;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v11 + (v19 | v17) + 1;
}

void sub_18AEED3E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_18AFCBB54() - 8) + 64);
  v9 = *(*(a4 + 16) - 8);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v9 + 84);
  v12 = *(v9 + 80);
  v13 = *(v9 + 64);
  if (v11 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = (((v8 & 0xFFFFFFFFFFFFFFF8) + v12 + 57) & ~v12) + v13;
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v16)
  {
    goto LABEL_32;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  v22 = v8 + 1;
  if (v11 > 0xFE)
  {
    v23 = *(v10 + 56);

    v23(((&a1[v22 + 23] & 0xFFFFFFFFFFFFFFF8) + v12 + 33) & ~v12, a2);
  }

  else if (a2 > 0xFE)
  {
    if (v22 <= 3)
    {
      v24 = ~(-1 << (8 * v22));
    }

    else
    {
      v24 = -1;
    }

    if (v8 != -1)
    {
      v25 = v24 & (a2 - 255);
      if (v22 <= 3)
      {
        v26 = v8 + 1;
      }

      else
      {
        v26 = 4;
      }

      bzero(a1, v22);
      if (v26 > 2)
      {
        if (v26 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else
        {
          *a1 = v25;
        }
      }

      else if (v26 == 1)
      {
        *a1 = v25;
      }

      else
      {
        *a1 = v25;
      }
    }
  }

  else
  {
    a1[v8] = -a2;
  }
}

void sub_18AEED708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AEED774@<X0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t *a9@<X8>, uint64_t a10, char a11, uint64_t (*a12)(void), uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = *a1;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for MacToolbarButton(0, a14, a15, v21);
  v23 = a9 + v22[9];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = a9 + v22[10];
  *v24 = swift_getKeyPath();
  v24[8] = 0;
  *(a9 + v22[11]) = v20;
  *(a9 + v22[12]) = a2;
  *(a9 + v22[13]) = a3;
  *(a9 + v22[14]) = a4;
  *(a9 + v22[15]) = a5;
  *(a9 + v22[16]) = a6;
  *(a9 + v22[17]) = a7;
  *(a9 + v22[18]) = a8;
  v25 = a9 + v22[19];
  *v25 = a10;
  v25[8] = a11 & 1;
  return a12();
}

double sub_18AEED8E4(uint64_t a1)
{
  v2 = v1 + *(a1 + 76);
  if (*(v2 + 8))
  {
    return dbl_18AFD5830[*(v1 + *(a1 + 48))];
  }

  result = *v2;
  if (*v2 < dbl_18AFD5830[*(v1 + *(a1 + 48))])
  {
    return dbl_18AFD5830[*(v1 + *(a1 + 48))];
  }

  return result;
}

uint64_t sub_18AEED91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v92 = sub_18AFCC474();
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = &v89 - v5;
  v109 = sub_18AFCCFF4();
  v95 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0, &qword_18AFD4A00);
  v9 = sub_18AFCC044();
  v96 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8, &qword_18AFD5A00);
  v99 = sub_18AFCC044();
  v103 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v94 = &v89 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v102 = sub_18AFCC044();
  v104 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v98 = &v89 - v13;
  v101 = sub_18AFCC044();
  v106 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v89 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v15 = sub_18AFCBDC4();
  v107 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v89 - v16;
  v108 = v17;
  v18 = sub_18AFCC044();
  v111 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v110 = &v89 - v19;
  v113 = v20;
  v21 = sub_18AFCC044();
  v114 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v89 - v22;
  v115 = v23;
  v24 = sub_18AFCC044();
  v117 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v89 - v25;
  v118 = v26;
  v27 = sub_18AFCC044();
  v121 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v119 = &v89 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996C0, &qword_18AFD56F0);
  v123 = v27;
  v125 = sub_18AFCC044();
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v120 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v122 = &v89 - v31;
  v32 = *(a1 + 24);
  v33 = v128;
  sub_18AEEEBC0(v128, v7);
  v126 = v8;
  sub_18AFCCA84();
  (*(v95 + 8))(v7, v109);
  v34 = v33;
  v35 = *(v33 + *(a1 + 44));
  v37 = *(a1 + 52);
  v36 = *(a1 + 56);
  v38 = a1;
  v93 = a1;
  LOBYTE(v36) = *(v34 + v36);
  LOBYTE(v37) = *(v34 + v37);
  LOBYTE(v149) = v35;
  HIBYTE(v149) = v36;
  v150 = v37;
  v39 = MEMORY[0x1E6980A18];
  v40 = sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0, &qword_18AFD4A00, MEMORY[0x1E6980A18]);
  v109 = v32;
  v147 = v32;
  v148 = v40;
  WitnessTable = swift_getWitnessTable();
  sub_18AEB12A0();
  v42 = v94;
  sub_18AFCCB44();
  (*(v96 + 8))(v11, v9);
  v43 = *(v34 + *(v38 + 48));
  sub_18AFCC924();
  v44 = sub_18AFCC8F4();
  v45 = v105;
  (*(*(v44 - 8) + 56))(v105, 1, 1, v44);
  sub_18AFCC954();
  sub_18AE7BA80(v45, &qword_1EA998930, &qword_18AFD35E0);
  sub_18AFCC8E4();

  v46 = sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8, &qword_18AFD5A00, MEMORY[0x1E6980490]);
  v145 = WitnessTable;
  v146 = v46;
  v47 = v99;
  v48 = swift_getWitnessTable();
  v49 = v98;
  sub_18AFCCBA4();

  (*(v103 + 8))(v42, v47);
  sub_18AFCC8B4();
  v50 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, v39);
  v143 = v48;
  v144 = v50;
  v51 = v102;
  v52 = swift_getWitnessTable();
  v53 = v100;
  sub_18AFCCC24();
  (*(v104 + 8))(v49, v51);
  v141 = v52;
  v142 = MEMORY[0x1E697E5D8];
  v54 = v93;
  v55 = v97;
  v56 = v101;
  v57 = swift_getWitnessTable();
  sub_18AFC385C(0, 0, v56, v57, 0.0, 5.0, v55);
  (*(v106 + 8))(v53, v56);
  sub_18AFCC884();
  if (*(v34 + v54[16]) == 1)
  {
    v58 = v128 + v54[10];
    v59 = *v58;
    if (*(v58 + 8) == 1)
    {
      v149 = v59 & 0x101;
      v150 = BYTE2(v59) & 1;
    }

    else
    {

      sub_18AFCE024();
      v61 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v62 = v90;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v59, 0);
      (*(v91 + 8))(v62, v92);
    }

    v60 = v110;
  }

  else
  {
    v60 = v110;
  }

  v139 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v140 = v57;
  v63 = v108;
  v64 = swift_getWitnessTable();
  sub_18AFCCC24();
  (*(v107 + 8))(v55, v63);
  sub_18AFCC8A4();
  v65 = *(v128 + v54[17]) == 1;
  v96 = v43;
  if (v65)
  {
    v66 = v128 + v54[10];
    v67 = *v66;
    if (*(v66 + 8) == 1)
    {
      v149 = v67 & 0x101;
      v150 = BYTE2(v67) & 1;
    }

    else
    {

      sub_18AFCE024();
      v68 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v69 = v90;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v67, 0);
      (*(v91 + 8))(v69, v92);
    }
  }

  v137 = v64;
  v70 = MEMORY[0x1E697E5D8];
  v138 = MEMORY[0x1E697E5D8];
  v110 = MEMORY[0x1E697E858];
  v71 = v113;
  v72 = swift_getWitnessTable();
  v73 = v112;
  sub_18AFCCC24();
  (*(v111 + 8))(v60, v71);
  sub_18AFCDB44();
  v135 = v72;
  v136 = v70;
  v74 = v115;
  v75 = swift_getWitnessTable();
  v76 = v116;
  sub_18AFCCBB4();
  (*(v114 + 8))(v73, v74);
  sub_18AEED8E4(v54);
  sub_18AFCDB44();
  v133 = v75;
  v134 = MEMORY[0x1E697E040];
  v77 = v118;
  v88 = swift_getWitnessTable();
  v78 = v119;
  sub_18AFCCBC4();
  v79 = (*(v117 + 8))(v76, v77);
  v118 = &v89;
  MEMORY[0x1EEE9AC00](v79);
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996D0, &qword_18AFD56F8);
  v131 = v88;
  v132 = MEMORY[0x1E697EBF8];
  v80 = v123;
  v81 = swift_getWitnessTable();
  sub_18AEF09EC();
  v82 = v120;
  sub_18AFCCA64();
  (*(v121 + 8))(v78, v80);
  v83 = sub_18AE95F54(&qword_1EA999760, &qword_1EA9996C0, &qword_18AFD56F0, MEMORY[0x1E697F940]);
  v129 = v81;
  v130 = v83;
  v84 = v125;
  swift_getWitnessTable();
  v85 = v122;
  sub_18AEADA5C();
  v86 = *(v124 + 8);
  v86(v82, v84);
  sub_18AEADA5C();
  return (v86)(v85, v84);
}

uint64_t sub_18AEEEBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_18AFCC474();
  v3 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_18AFCBB54();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(a1, v8, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v25);
  }

  v14 = v10;
  v15 = (*(v10 + 88))(v12, v9);
  if (v15 == *MEMORY[0x1E697DC08] || v15 == *MEMORY[0x1E697DC20] || v15 == *MEMORY[0x1E697DC28])
  {
    v16 = MEMORY[0x1E69816E0];
LABEL_8:
    v17 = *v16;
    v18 = sub_18AFCCFF4();
    v19 = *(*(v18 - 8) + 104);
    v20 = v26;
    v21 = v17;
    return v19(v20, v21, v18);
  }

  if (v15 == *MEMORY[0x1E697DC10])
  {
    v16 = MEMORY[0x1E69816C0];
    goto LABEL_8;
  }

  v23 = *MEMORY[0x1E697DC00];
  v24 = v15;
  v18 = sub_18AFCCFF4();
  v19 = *(*(v18 - 8) + 104);
  if (v24 != v23)
  {
    v19(v26, *MEMORY[0x1E69816C8], v18);
    return (*(v14 + 8))(v12, v9);
  }

  v21 = *MEMORY[0x1E69816C0];
  v20 = v26;
  return v19(v20, v21, v18);
}

uint64_t sub_18AEEEF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a4;
  v105 = sub_18AFCC474();
  v97 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v96 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999718, &qword_18AFD5718);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v96 - v10);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999708, &qword_18AFD5710);
  MEMORY[0x1EEE9AC00](v98);
  v104 = &v96 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996F8, &qword_18AFD5708);
  MEMORY[0x1EEE9AC00](v99);
  v103 = &v96 - v13;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996E8, &qword_18AFD5700);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v96 - v14;
  *v11 = sub_18AFCDB44();
  v11[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999768, &qword_18AFD5740);
  sub_18AEEFCDC(a1, a2, a3, v11 + *(v16 + 44));
  v17 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999728, &qword_18AFD5720) + 36);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_18AFCC534();
  v20 = *(*(v19 - 8) + 104);
  v20(v17, v18, v19);
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999748, &qword_18AFD5730) + 36)] = 0;
  v21 = v11 + *(v9 + 44);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999758, &qword_18AFD5738);
  sub_18AFCC1A4();
  v20(v21, v18, v19);
  v23 = a2;
  v24 = v96;
  v26 = type metadata accessor for MacToolbarButton(0, v23, a3, v25);
  LOBYTE(v19) = *(a1 + *(v26 + 72));
  v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999770, &qword_18AFD5748) + 36)] = v19;
  v21[*(v22 + 36)] = 0;
  v27 = v26;
  v28 = *(v26 + 40);
  v106 = a1;
  v29 = a1 + v28;
  v30 = *(a1 + v28);
  LODWORD(v28) = *(a1 + v28 + 8);
  v31 = v24;
  if (v28 == 1)
  {
    v107 = v30 & 0x101;
    v32 = v105;
    v33 = v97;
    if ((v30 & 1) == 0)
    {
LABEL_3:
      v34 = v103;
      goto LABEL_7;
    }
  }

  else
  {

    sub_18AFCE024();
    v35 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v30, 0);
    v33 = v97;
    v32 = v105;
    (*(v97 + 8))(v24, v105);
    if ((v107 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v34 = v103;
  if (HIBYTE(v107) == 1)
  {
    v36 = sub_18AFCC894();
    goto LABEL_8;
  }

LABEL_7:
  v36 = sub_18AFCC8B4();
LABEL_8:
  v37 = v36;
  v38 = *(v106 + v27[12]);
  v39 = *v29;
  v40 = *(v29 + 8);
  LODWORD(v103) = v38;
  if (v40 != 1)
  {

    sub_18AFCE024();
    v41 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v32 = v105;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v39, 0);
    (*(v33 + 8))(v31, v32);
  }

  sub_18AFCBAA4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v11;
  v51 = v104;
  sub_18AE9A768(v50, v104, &qword_1EA999718, &qword_18AFD5718);
  v52 = v51 + *(v98 + 36);
  *v52 = v37;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  v53 = *v29;
  if (*(v29 + 8) == 1)
  {
    v107 = v53 & 0x101;
    v54 = v33;
    v55 = v31;
    if ((v53 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {

    sub_18AFCE024();
    v56 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v53, 0);
    v54 = v33;
    v55 = v31;
    (*(v54 + 8))(v31, v32);
    if ((v107 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (HIBYTE(v107) == 1)
  {
    v57 = sub_18AFCC894();
    goto LABEL_17;
  }

LABEL_16:
  v57 = sub_18AFCC884();
LABEL_17:
  v58 = v57;
  v59 = *v29;
  if (*(v29 + 8) == 1)
  {
    v107 = v59 & 0x101;
    v60 = v59 >> 8;
    v108 = BYTE2(v59) & 1;
    if ((v59 & 1) == 0)
    {
LABEL_22:
      if (v108)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }
  }

  else
  {

    sub_18AFCE024();
    v61 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v32 = v105;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v59, 0);
    (*(v54 + 8))(v55, v32);
    LOBYTE(v60) = HIBYTE(v107);
    if ((v107 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ((v60 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_23:
  if (*(v106 + v27[16]) == 1)
  {
    v62 = *v29;
    if (*(v29 + 8) != 1)
    {

      sub_18AFCE024();
      v63 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v32 = v105;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v62, 0);
      (*(v54 + 8))(v55, v32);
    }
  }

LABEL_26:
  sub_18AFCBAA4();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_18AE9A768(v104, v34, &qword_1EA999708, &qword_18AFD5710);
  v72 = v34 + *(v99 + 36);
  *v72 = v58;
  *(v72 + 8) = v65;
  *(v72 + 16) = v67;
  *(v72 + 24) = v69;
  *(v72 + 32) = v71;
  *(v72 + 40) = 0;
  v73 = *v29;
  if (*(v29 + 8) == 1)
  {
    v107 = v73 & 0x101;
    if ((v73 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {

    sub_18AFCE024();
    v74 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v73, 0);
    (*(v54 + 8))(v55, v32);
    if ((v107 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (HIBYTE(v107) == 1)
  {
    v75 = sub_18AFCC894();
    goto LABEL_33;
  }

LABEL_32:
  v75 = sub_18AFCC8A4();
LABEL_33:
  v76 = v75;
  v77 = *v29;
  if (*(v29 + 8) == 1)
  {
    v107 = v77 & 0x101;
    v78 = v77 >> 8;
    v108 = BYTE2(v77) & 1;
    if ((v77 & 1) == 0)
    {
LABEL_38:
      if (v108)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }
  }

  else
  {

    sub_18AFCE024();
    v79 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v32 = v105;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v77, 0);
    (*(v54 + 8))(v55, v32);
    LOBYTE(v78) = HIBYTE(v107);
    if ((v107 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  if ((v78 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (*(v106 + v27[17]) == 1)
  {
    v80 = *v29;
    if (*(v29 + 8) != 1)
    {

      sub_18AFCE024();
      v81 = v32;
      v82 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v80, 0);
      (*(v54 + 8))(v55, v81);
    }
  }

LABEL_42:
  sub_18AFCBAA4();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v101;
  sub_18AE9A768(v34, v101, &qword_1EA9996F8, &qword_18AFD5708);
  v92 = v91 + *(v100 + 36);
  *v92 = v76;
  *(v92 + 8) = v84;
  *(v92 + 16) = v86;
  *(v92 + 24) = v88;
  *(v92 + 32) = v90;
  *(v92 + 40) = 0;
  if (*(v106 + v27[15]))
  {
    v93 = 0.0;
  }

  else
  {
    v93 = 1.0;
  }

  v94 = v102;
  sub_18AE9A768(v91, v102, &qword_1EA9996E8, &qword_18AFD5700);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9996D0, &qword_18AFD56F8);
  *(v94 + *(result + 36)) = v93;
  return result;
}

uint64_t sub_18AEEFCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v118 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  MEMORY[0x1EEE9AC00](v7);
  v117 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v94 - v10;
  v12 = sub_18AFCC474();
  v109 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v113 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780, &unk_18AFD5A20);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v111 = &v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - v23;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999788, &unk_18AFD5760);
  MEMORY[0x1EEE9AC00](v119);
  v115 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v114 = &v94 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v94 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v112 = &v94 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v106 = &v94 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v120 = &v94 - v35;
  v36 = *MEMORY[0x1E697F468];
  v37 = sub_18AFCC534();
  v38 = *(v37 - 8);
  v39 = *(v38 + 104);
  v107 = v19;
  v105 = v36;
  v103 = v39;
  v104 = v37;
  v102 = v38 + 104;
  (v39)(v19, v36);
  v41 = type metadata accessor for MacToolbarButton(0, a2, a3, v40);
  v101 = v41[11];
  LODWORD(v116) = *(a1 + v101);
  v42 = *(a1 + v41[13]);
  v43 = v41[9];
  v108 = a1;
  v44 = a1 + v43;
  v45 = *v44;
  v100 = *(v44 + 8);
  v95 = v45;
  if (v100 == 1)
  {
    v47 = v45;
  }

  else
  {

    sub_18AFCE024();
    v46 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v45, 0);
    (*(v109 + 8))(v14, v12);
    v47 = v121[0];
  }

  v99 = v42 - 1;
  v97 = v12;
  v96 = v14;
  if ((v42 - 1) > 1)
  {
    v121[0] = sub_18AFCCD74();
LABEL_11:
    v50 = sub_18AFCBCD4();
    v48 = v116;
    goto LABEL_12;
  }

  if ((v47 & 1) == 0)
  {
    LODWORD(v121[0]) = sub_18AFCC6B4();
    goto LABEL_11;
  }

  v48 = v116;
  v49 = 1.0;
  if (v116 == 1)
  {
    v49 = 0.5;
  }

  *v121 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997B0, &unk_18AFD5788);
  sub_18AE95F54(&qword_1EA9997B8, &qword_1EA9997B0, &unk_18AFD5788, MEMORY[0x1E697F5B8]);
  v50 = sub_18AFCBCD4();
LABEL_12:
  v52 = v107;
  sub_18AEF0D24(v107, v11, v51);
  *&v11[*(v7 + 52)] = v50;
  v116 = v7;
  *&v11[*(v7 + 56)] = 256;
  sub_18AEF0D24(v11, v24, v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999790, &unk_18AFD5A30);
  v24[*(v54 + 52)] = v48;
  *&v24[*(v54 + 56)] = 256;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999798, &unk_18AFD5770);
  v55 = &v24[*(v98 + 36)];
  sub_18AE83A40(v11, v55, &qword_1EA999778, &unk_18AFD5750);
  v56 = sub_18AFCDB44();
  v58 = v57;
  sub_18AE7BA80(v11, &qword_1EA999778, &unk_18AFD5750);
  sub_18AEF0D88(v52, v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0, &qword_18AFD5A40);
  v61 = (v55 + *(v60 + 36));
  *v61 = v56;
  v61[1] = v58;
  v62 = v41[14];
  v63 = v108;
  v64 = *(v108 + v62);
  if (*(v108 + v62))
  {
    v65 = 0.0;
  }

  else
  {
    v65 = 1.0;
  }

  v66 = v106;
  sub_18AE9A768(v24, v106, &qword_1EA999780, &unk_18AFD5A20);
  v67 = v120;
  *(v66 + *(v119 + 36)) = v65;
  sub_18AE9A768(v66, v67, &qword_1EA999788, &unk_18AFD5760);
  v68 = v113;
  v103(v113, v105, v104);
  v69 = *(v63 + v101);
  if ((v100 & 1) == 0)
  {
    v70 = v95;

    sub_18AFCE024();
    v71 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v72 = v96;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v70, 0);
    (*(v109 + 8))(v72, v97);
  }

  if (v99 > 1)
  {
    v121[0] = sub_18AFCCD74();
  }

  else
  {
    LODWORD(v121[0]) = sub_18AFCC6B4();
  }

  v73 = sub_18AFCBCD4();
  v74 = v117;
  sub_18AEF0D24(v68, v117, v75);
  v76 = v116;
  *(v74 + *(v116 + 52)) = v73;
  *(v74 + *(v76 + 56)) = 256;
  v77 = v111;
  sub_18AEF0D24(v74, v111, v78);
  *(v77 + *(v54 + 52)) = v69;
  *(v77 + *(v54 + 56)) = 256;
  v79 = v77 + *(v98 + 36);
  sub_18AE83A40(v74, v79, &qword_1EA999778, &unk_18AFD5750);
  v80 = sub_18AFCDB44();
  v82 = v81;
  sub_18AE7BA80(v74, &qword_1EA999778, &unk_18AFD5750);
  sub_18AEF0D88(v68, v83);
  v84 = (v79 + *(v60 + 36));
  *v84 = v80;
  v84[1] = v82;
  if (v64)
  {
    v85 = 1.0;
  }

  else
  {
    v85 = 0.0;
  }

  v86 = v110;
  sub_18AE9A768(v77, v110, &qword_1EA999780, &unk_18AFD5A20);
  *(v86 + *(v119 + 36)) = v85;
  v87 = v112;
  sub_18AE9A768(v86, v112, &qword_1EA999788, &unk_18AFD5760);
  v88 = v120;
  v89 = v114;
  sub_18AE83A40(v120, v114, &qword_1EA999788, &unk_18AFD5760);
  v90 = v115;
  sub_18AE83A40(v87, v115, &qword_1EA999788, &unk_18AFD5760);
  v91 = v118;
  sub_18AE83A40(v89, v118, &qword_1EA999788, &unk_18AFD5760);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A8, &qword_18AFD5780);
  sub_18AE83A40(v90, v91 + *(v92 + 48), &qword_1EA999788, &unk_18AFD5760);
  sub_18AE7BA80(v87, &qword_1EA999788, &unk_18AFD5760);
  sub_18AE7BA80(v88, &qword_1EA999788, &unk_18AFD5760);
  sub_18AE7BA80(v90, &qword_1EA999788, &unk_18AFD5760);
  return sub_18AE7BA80(v89, &qword_1EA999788, &unk_18AFD5760);
}

uint64_t sub_18AEF0688@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997C0, &qword_18AFD5798);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v23[-v2];
  v4 = sub_18AFCC664();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-v12];
  v14 = *v1;
  v25 = v1[1];
  v26 = v14;
  v24 = v1[2];
  v15 = sub_18AFCC274();
  sub_18AFCC314();
  sub_18AFCC654();
  v16 = sub_18AFCC634();
  v17 = *(v5 + 8);
  v17(v7, v4);
  v17(v10, v4);
  if (v16)
  {
    goto LABEL_6;
  }

  v18 = v25;
  if ((v24 - 3) < 0xFFFFFFFE)
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
LABEL_6:
    sub_18AFCC654();
  }

  else
  {
    sub_18AFCC644();
  }

  v19 = *(v27 + 48);
  (*(v5 + 16))(v3, v13, v4);
  v3[v19] = v15 & 1;
  if (v15 & 1) != 0 && (sub_18AFCC654(), sub_18AEF0E38(), v20 = sub_18AFCDDF4(), v17(v10, v4), (v20))
  {
    v29 = v26;
    sub_18AEF0E90();
    v21 = sub_18AFCBCD4();
    v17(v13, v4);
    result = (v17)(v3, v4);
  }

  else
  {
    v30 = v26;
    sub_18AEF0DE4();
    v21 = sub_18AFCBCD4();
    v17(v13, v4);
    result = sub_18AE7BA80(v3, &qword_1EA9997C0, &qword_18AFD5798);
  }

  *v28 = v21;
  return result;
}

unint64_t sub_18AEF09EC()
{
  result = qword_1EA9996D8;
  if (!qword_1EA9996D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996D0, &qword_18AFD56F8);
    sub_18AEF0AD4(&qword_1EA9996E0, &qword_1EA9996E8, &qword_18AFD5700, sub_18AEF0AA4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9996D8);
  }

  return result;
}

uint64_t sub_18AEF0AD4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18AEF0B88()
{
  result = qword_1EA999710;
  if (!qword_1EA999710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999718, &qword_18AFD5718);
    sub_18AEF0C40();
    sub_18AE95F54(&qword_1EA999750, &qword_1EA999758, &qword_18AFD5738, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999710);
  }

  return result;
}

unint64_t sub_18AEF0C40()
{
  result = qword_1EA999720;
  if (!qword_1EA999720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999728, &qword_18AFD5720);
    sub_18AE95F54(&qword_1EA999730, &qword_1EA999738, &qword_18AFD5728, MEMORY[0x1E6981880]);
    sub_18AE95F54(&qword_1EA999740, &qword_1EA999748, &qword_18AFD5730, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999720);
  }

  return result;
}

uint64_t sub_18AEF0D24(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_18AFCD4A4();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AEF0D88(uint64_t a1, __n128 a2)
{
  v3 = sub_18AFCD4A4();
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_18AEF0DE4()
{
  result = qword_1EA9997C8;
  if (!qword_1EA9997C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9997C8);
  }

  return result;
}

unint64_t sub_18AEF0E38()
{
  result = qword_1EA9997D0;
  if (!qword_1EA9997D0)
  {
    sub_18AFCC664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9997D0);
  }

  return result;
}

unint64_t sub_18AEF0E90()
{
  result = qword_1EA9997D8[0];
  if (!qword_1EA9997D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9997D8);
  }

  return result;
}

uint64_t sub_18AEF0EE4@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char a3@<W2>, void (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, _BYTE *a7@<X8>)
{
  *a7 = *a1;
  a7[1] = a2;
  a7[2] = a3;
  v9 = type metadata accessor for MacToolbarPopUpButton(0, a5, a6, a4);
  a4();
  v10 = v9[12];
  *&a7[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v11 = &a7[v9[13]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = &a7[v9[14]];
  result = swift_getKeyPath();
  *v12 = result;
  v12[8] = 0;
  return result;
}

void sub_18AEF0FD0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AEB316C(319);
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA9996B0, &type metadata for GlassGroupContext);
      if (v3 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEF10D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCBB54() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((v11 + 3) & ~v11) + *(v6 + 64) + v12) & ~v12) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }

    return v8 + (v25 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if (v7 > 0xFE)
  {
    v24 = *(v6 + 48);

    return v24(&a1[v11 + 3] & ~v11, v7, v5);
  }

  else
  {
    v21 = a1[1];
    v22 = v21 >= 2;
    v23 = (v21 + 2147483646) & 0x7FFFFFFF;
    if (v22)
    {
      return (v23 + 1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_18AEF1314(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCBB54() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 3) & ~v13) + *(v8 + 64) + v14) & ~v14) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 > 0xFE)
      {
        v21 = *(v22 + 56);

        v21(&a1[v13 + 3] & ~v13, a2, v9, v7);
      }

      else
      {
        a1[1] = a2 + 1;
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

uint64_t sub_18AEF15D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a1;
  v94 = a2;
  v93 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v93);
  v92 = v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = v65 - v6;
  v96 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0, &qword_18AFD4A00);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999860, &qword_18AFD59F8);
  swift_getTupleTypeMetadata2();
  v65[2] = sub_18AFCDBF4();
  v65[1] = swift_getWitnessTable();
  v7 = sub_18AFCD134();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v65 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9996B8, &qword_18AFD5A00);
  v11 = sub_18AFCC044();
  v73 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v65[0] = v65 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v13 = sub_18AFCC044();
  v76 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v66 = v65 - v14;
  v15 = sub_18AFCC044();
  v78 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v69 = v65 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v72 = sub_18AFCBDC4();
  v80 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = v65 - v17;
  v74 = sub_18AFCC044();
  v81 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = v65 - v18;
  v77 = sub_18AFCC044();
  v84 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v71 = v65 - v19;
  v83 = sub_18AFCC044();
  v87 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v75 = v65 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999868, &unk_18AFD5A08);
  v86 = sub_18AFCC044();
  v90 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = v65 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999748, &qword_18AFD5730);
  v89 = sub_18AFCC044();
  v91 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v88 = v65 - v24;
  v68 = *(v68 + 24);
  v100 = v96;
  v101 = v68;
  v25 = v95;
  v102 = v95;
  sub_18AFCC504();
  sub_18AFCD124();
  v121 = *v25;
  v122 = 0;
  WitnessTable = swift_getWitnessTable();
  sub_18AEB12A0();
  v27 = v65[0];
  sub_18AFCCB44();
  (*(v8 + 8))(v10, v7);
  sub_18AFCC924();
  v28 = sub_18AFCC8F4();
  v29 = v79;
  (*(*(v28 - 8) + 56))(v79, 1, 1, v28);
  sub_18AFCC954();
  sub_18AE7BA80(v29, &qword_1EA998930, &qword_18AFD35E0);
  sub_18AFCC8E4();

  v30 = sub_18AE95F54(&qword_1EA9996C8, &qword_1EA9996B8, &qword_18AFD5A00, MEMORY[0x1E6980490]);
  v119 = WitnessTable;
  v120 = v30;
  v31 = swift_getWitnessTable();
  v32 = v66;
  sub_18AFCCBA4();

  (*(v73 + 8))(v27, v11);
  sub_18AFCC8B4();
  v33 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v117 = v31;
  v118 = v33;
  v34 = swift_getWitnessTable();
  v35 = v69;
  sub_18AFCCC24();
  (*(v76 + 8))(v32, v13);
  v36 = MEMORY[0x1E697E5D8];
  v115 = v34;
  v116 = MEMORY[0x1E697E5D8];
  v37 = swift_getWitnessTable();
  v38 = v67;
  sub_18AFC385C(0, 0, v15, v37, 0.0, 5.0, v67);
  (*(v78 + 8))(v35, v15);
  sub_18AFCC884();
  v113 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v114 = v37;
  v39 = v72;
  v40 = swift_getWitnessTable();
  v41 = v70;
  sub_18AFCCC24();
  (*(v80 + 8))(v38, v39);
  sub_18AFCC8A4();
  v111 = v40;
  v112 = v36;
  v42 = v74;
  v43 = swift_getWitnessTable();
  v44 = v71;
  sub_18AFCCC24();
  (*(v81 + 8))(v41, v42);
  sub_18AFCDB44();
  v109 = v43;
  v110 = v36;
  v63 = v77;
  v64 = swift_getWitnessTable();
  v45 = v75;
  sub_18AFCCBC4();
  (*(v84 + 8))(v44, v63);
  v97 = v96;
  v98 = v68;
  v99 = v95;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999870, &qword_18AFD5A18);
  v107 = v64;
  v108 = MEMORY[0x1E697EBF8];
  v46 = v83;
  v47 = swift_getWitnessTable();
  sub_18AEF3608();
  v48 = v82;
  sub_18AFCCA64();
  (*(v87 + 8))(v45, v46);
  v49 = *MEMORY[0x1E697F468];
  v50 = sub_18AFCC534();
  v51 = v92;
  (*(*(v50 - 8) + 104))(v92, v49, v50);
  v52 = sub_18AE95F54(&qword_1EA999888, &qword_1EA999868, &unk_18AFD5A08, MEMORY[0x1E697F940]);
  v105 = v47;
  v106 = v52;
  v53 = v86;
  v54 = swift_getWitnessTable();
  sub_18AEDC310(v55);
  v56 = v85;
  sub_18AFCCAC4();
  sub_18AEF0D88(v51, v57);
  (*(v90 + 8))(v48, v53);
  v58 = sub_18AE95F54(&qword_1EA999740, &qword_1EA999748, &qword_18AFD5730, MEMORY[0x1E697FD58]);
  v103 = v54;
  v104 = v58;
  v59 = v89;
  swift_getWitnessTable();
  v60 = v88;
  sub_18AEADA5C();
  v61 = *(v91 + 8);
  v61(v56, v59);
  sub_18AEADA5C();
  return (v61)(v60, v59);
}

uint64_t sub_18AEF2580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v66 = a4;
  v7 = sub_18AFCBA54();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999890, &qword_18AFD5A48);
  MEMORY[0x1EEE9AC00](v58);
  v56 = (&v48 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999860, &qword_18AFD59F8);
  v64 = *(v10 - 8);
  v65 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v48 - v13;
  v50 = sub_18AFCCFF4();
  v14 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9993F0, &qword_18AFD4A00);
  v17 = sub_18AFCC044();
  v49 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  type metadata accessor for MacToolbarPopUpButton(0, a2, a3, v23);
  sub_18AEF2C00(a1, a2, a3, v16);
  sub_18AFCCA84();
  v55 = v14;
  v24 = *(v14 + 8);
  v25 = v16;
  v26 = v50;
  v27 = v49;
  v24(v25, v50);
  v28 = sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0, &qword_18AFD4A00, MEMORY[0x1E6980A18]);
  v72[2] = a3;
  v72[3] = v28;
  WitnessTable = swift_getWitnessTable();
  v57 = v22;
  v51 = WitnessTable;
  sub_18AEADA5C();
  v30 = *(v27 + 8);
  v31 = v19;
  v54 = v27 + 8;
  v53 = v30;
  v30(v19, v17);
  if (*(a1 + 1) == 1)
  {
    if (qword_1EA997998 != -1)
    {
      swift_once();
    }

    v32 = qword_1EA9B0160;
  }

  else
  {
    if (qword_1EA997990 != -1)
    {
      swift_once();
    }

    v32 = qword_1EA9B0148;
  }

  v33 = v61;
  v34 = __swift_project_value_buffer(v61, v32);
  (*(v60 + 16))(v59, v34, v33);
  v35 = sub_18AFCD014();
  v36 = v58;
  v37 = v56;
  v38 = (v56 + *(v58 + 36));
  (*(v55 + 104))(v38 + *(v52 + 28), *MEMORY[0x1E69816C8], v26);
  *v38 = swift_getKeyPath();
  *v37 = v35;
  sub_18AFCC944();
  v39 = sub_18AEF381C();
  v40 = v62;
  sub_18AFCCA74();
  sub_18AE7BA80(v37, &qword_1EA999890, &qword_18AFD5A48);
  v41 = v57;
  (*(v27 + 16))(v31, v57, v17);
  v72[0] = v31;
  v43 = v63;
  v42 = v64;
  v44 = v65;
  (*(v64 + 16))(v63, v40, v65);
  v72[1] = v43;
  v71[0] = v17;
  v71[1] = v44;
  v68 = v39;
  v69 = v51;
  v67 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_18AEB70B8(v72, 2uLL, v71);
  v45 = *(v42 + 8);
  v45(v40, v44);
  v46 = v53;
  v53(v41, v17);
  v45(v43, v44);
  return v46(v31, v17);
}

uint64_t sub_18AEF2C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v7 = sub_18AFCC474();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = sub_18AFCBB54();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MacToolbarPopUpButton(0, a2, a3, v17);
  sub_18AE83A40(a1 + *(v18 + 48), v12, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  else
  {
    sub_18AFCE024();
    v19 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v31 + 8))(v9, v32);
  }

  v20 = (*(v14 + 88))(v16, v13);
  if (v20 == *MEMORY[0x1E697DC08] || v20 == *MEMORY[0x1E697DC20] || v20 == *MEMORY[0x1E697DC28])
  {
    v21 = MEMORY[0x1E69816E0];
LABEL_8:
    v22 = *v21;
    v23 = sub_18AFCCFF4();
    v24 = *(*(v23 - 8) + 104);
    v25 = v33;
    v26 = v22;
    return v24(v25, v26, v23);
  }

  if (v20 == *MEMORY[0x1E697DC10])
  {
    v21 = MEMORY[0x1E69816C0];
    goto LABEL_8;
  }

  v28 = *MEMORY[0x1E697DC00];
  v29 = v20;
  v23 = sub_18AFCCFF4();
  v24 = *(*(v23 - 8) + 104);
  if (v29 != v28)
  {
    v24(v33, *MEMORY[0x1E69816E0], v23);
    return (*(v14 + 8))(v16, v13);
  }

  v26 = *MEMORY[0x1E69816C0];
  v25 = v33;
  return v24(v25, v26, v23);
}

uint64_t sub_18AEF2FC4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = sub_18AFCC474();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780, &unk_18AFD5A20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v56 - v17;
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_18AFCC534();
  (*(*(v20 - 8) + 104))(v15, v19, v20);
  v21 = *a1;
  v23 = type metadata accessor for MacToolbarPopUpButton(0, a2, a3, v22);
  v24 = *(v23 + 56);
  v57 = a1;
  v25 = &a1[v24];
  if ((v25[8] & 1) == 0)
  {
    v26 = *v25;

    sub_18AFCE024();
    v27 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v26, 0);
    (*(v59 + 8))(v12, v60);
  }

  v62 = sub_18AFCCD74();
  v28 = sub_18AFCBCD4();
  sub_18AEF0D24(v15, v9, v29);
  *&v9[*(v7 + 52)] = v28;
  *&v9[*(v7 + 56)] = 256;
  sub_18AEF0D24(v9, v18, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999790, &unk_18AFD5A30);
  v18[*(v31 + 52)] = v21;
  *&v18[*(v31 + 56)] = 256;
  v32 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999798, &unk_18AFD5770) + 36)];
  sub_18AE83A40(v9, v32, &qword_1EA999778, &unk_18AFD5750);
  v33 = sub_18AFCDB44();
  v35 = v34;
  sub_18AE7BA80(v9, &qword_1EA999778, &unk_18AFD5750);
  sub_18AEF0D88(v15, v36);
  v37 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997A0, &qword_18AFD5A40) + 36));
  *v37 = v33;
  v37[1] = v35;
  v38 = &v57[*(v23 + 52)];
  v39 = *v38;
  if (v38[8] == 1)
  {
    v61 = v39 & 0x101;
    if ((v39 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {

    sub_18AFCE024();
    v40 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v39, 0);
    (*(v59 + 8))(v12, v60);
    if ((v61 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (HIBYTE(v61) == 1)
  {
    v41 = sub_18AFCC894();
    goto LABEL_10;
  }

LABEL_9:
  v41 = sub_18AFCC854();
LABEL_10:
  v42 = v41;
  v43 = *v38;
  if (v38[8] != 1)
  {

    sub_18AFCE024();
    v44 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v43, 0);
    (*(v59 + 8))(v12, v60);
  }

  sub_18AFCBAA4();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v58;
  sub_18AEF36C0(v18, v58);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999870, &qword_18AFD5A18);
  v55 = v53 + *(result + 36);
  *v55 = v42;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  return result;
}

unint64_t sub_18AEF3608()
{
  result = qword_1EA999878;
  if (!qword_1EA999878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999870, &qword_18AFD5A18);
    sub_18AE95F54(&qword_1EA999880, &qword_1EA999780, &unk_18AFD5A20, MEMORY[0x1E697E130]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999878);
  }

  return result;
}

uint64_t sub_18AEF36C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999780, &unk_18AFD5A20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AEF3754(uint64_t a1)
{
  v2 = sub_18AFCCFF4();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_18AFCC1F4();
}

unint64_t sub_18AEF381C()
{
  result = qword_1EA999898;
  if (!qword_1EA999898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999890, &qword_18AFD5A48);
    sub_18AE95F54(&qword_1EA999420, &qword_1EA9993F0, &qword_18AFD4A00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999898);
  }

  return result;
}

uint64_t sub_18AEF38D4(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E0, &qword_18AFD5B30);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - v4);
  if (a1 <= 2u)
  {
    v14 = sub_18AFCCD74();
  }

  else if (a1 == 3)
  {
    v6 = v3;
    v7 = sub_18AFCCD64();
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50) + 36);
    v9 = *MEMORY[0x1E6981DA0];
    v10 = sub_18AFCDBC4();
    (*(*(v10 - 8) + 104))(v5 + v8, v9, v10);
    *v5 = v7;
    *(v5 + *(v6 + 36)) = 1034147594;
    sub_18AE95F54(&qword_1EA9998F0, &qword_1EA9998E0, &qword_18AFD5B30, MEMORY[0x1E697F5B8]);
  }

  else
  {
    sub_18AFCCD64();
    v11 = sub_18AFCCDA4();

    v14 = v11;
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF3A80(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998D0, &qword_18AFD5B28);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  if (a2)
  {
    v6 = sub_18AFCC6C4();
    v7 = *(v3 + 36);
    v8 = *MEMORY[0x1E6981DA0];
    v9 = sub_18AFCDBC4();
    (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
    *v5 = v6;
    *(v5 + 1) = 1059481190;
    sub_18AE95F54(&qword_1EA9998D8, &qword_1EA9998D0, &qword_18AFD5B28, MEMORY[0x1E697FAF0]);
  }

  else
  {
    v11[1] = sub_18AFCCD74();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF3BD4(uint64_t a1, char a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  if ((*(v5 + 88))(v8, v4) == *MEMORY[0x1E697DBB8])
  {
    if (a2 == 1)
    {
      v11[3] = 1056964608;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998C0, &qword_18AFD5B20);
      sub_18AE95F54(&qword_1EA9998C8, &qword_1EA9998C0, &qword_18AFD5B20, MEMORY[0x1E697F5B8]);
    }

    return sub_18AFCBCD4();
  }

  else
  {
    v9 = sub_18AFCBCD4();
    (*(v5 + 8))(v8, v4);
    return v9;
  }
}

uint64_t sub_18AEF3D90(char a1, uint64_t a2)
{
  v4 = sub_18AFCBB34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v9;
  v12 = (v5 + 88);
  v13 = *(v5 + 16);
  if (a1)
  {
    v13(v7, a2, v4, v10);
    if ((*v12)(v7, v4) == *MEMORY[0x1E697DBB8])
    {
      v14 = sub_18AFCC6D4();
      v15 = 1036831949;
LABEL_6:
      v21 = __PAIR64__(v15, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998B0, &unk_18AFDA330);
      sub_18AE95F54(&qword_1EA9998B8, &qword_1EA9998B0, &unk_18AFDA330, MEMORY[0x1E697F5B8]);
      return sub_18AFCBCD4();
    }

    sub_18AFCCD64();
    v17 = sub_18AFCCDA4();

    v21 = v17;
    v18 = sub_18AFCBCD4();
    (*(v5 + 8))(v7, v4);
    return v18;
  }

  else
  {
    v13(&v20 - v9, a2, v4, v10);
    if ((*v12)(v11, v4) == *MEMORY[0x1E697DBB8])
    {
      v14 = sub_18AFCC6D4();
      v15 = 1065353216;
      goto LABEL_6;
    }

    LODWORD(v21) = 1028443341;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998A0, &qword_18AFD5B18);
    sub_18AE95F54(&qword_1EA9998A8, &qword_1EA9998A0, &qword_18AFD5B18, MEMORY[0x1E697F5B8]);
    v19 = sub_18AFCBCD4();
    (*(v5 + 8))(v11, v4);
    return v19;
  }
}

uint64_t sub_18AEF4060(uint64_t a1)
{
  sub_18AFCCD24();
  sub_18AFCCDA4();

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF40E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 1u)
  {
    sub_18AFCCD74();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998A0, &qword_18AFD5B18);
    sub_18AE95F54(&qword_1EA9998A8, &qword_1EA9998A0, &qword_18AFD5B18, MEMORY[0x1E697F5B8]);
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AEF41CC(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998990, &qword_18AFD2B48);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18AFD2A70;
  v7 = *MEMORY[0x1E69814D8];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  sub_18AFCCF44();
  *(v6 + 32) = sub_18AFCD4F4();
  *(v6 + 40) = v9;
  sub_18AFCCD14();
  *(v6 + 48) = sub_18AFCD4F4();
  *(v6 + 56) = v10;
  sub_18AFCCD14();
  *(v6 + 64) = sub_18AFCD4F4();
  *(v6 + 72) = v11;
  sub_18AFCCD14();
  *(v6 + 80) = sub_18AFCD4F4();
  *(v6 + 88) = v12;
  sub_18AFCCD14();
  *(v6 + 96) = sub_18AFCD4F4();
  *(v6 + 104) = v13;
  v8(v5, v7, v2);
  sub_18AFCCF44();
  *(v6 + 112) = sub_18AFCD4F4();
  *(v6 + 120) = v14;
  sub_18AFCD504();
  sub_18AFCDD04();
  sub_18AFCBEB4();
  if (v1 == 1)
  {
    v16[1] = v20;
    v17 = v21;
    v18 = v22;
    v19 = 1056964608;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998F8, &qword_18AFD5B38);
    sub_18AE95F54(&qword_1EA999900, &qword_1EA9998F8, &qword_18AFD5B38, MEMORY[0x1E697F5B8]);
  }

  return sub_18AFCBCD4();
}

unint64_t sub_18AEF44D4()
{
  result = qword_1EA999908;
  if (!qword_1EA999908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999908);
  }

  return result;
}

unint64_t sub_18AEF453C()
{
  result = qword_1EA999910;
  if (!qword_1EA999910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999910);
  }

  return result;
}

unint64_t sub_18AEF45A4()
{
  result = qword_1EA999918;
  if (!qword_1EA999918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999918);
  }

  return result;
}

uint64_t type metadata accessor for iOSProgressView(uint64_t a1)
{
  result = qword_1EA999920;
  if (!qword_1EA999920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEF466C(uint64_t a1)
{
  sub_18AECE088(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_18AECE088(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_18AE7C05C(319, &qword_1EA999930, MEMORY[0x1E697E0B8]);
      if (v3 <= 0x3F)
      {
        sub_18AE7C05C(319, &qword_1EA999938, MEMORY[0x1E6981748]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEF479C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a1;
  v82 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999958, &qword_18AFD5D50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = (&v69 - v3);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999960, &qword_18AFD5D58);
  MEMORY[0x1EEE9AC00](v73);
  v78 = &v69 - v4;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999968, &qword_18AFD5D60);
  MEMORY[0x1EEE9AC00](v76);
  v6 = &v69 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999970, &qword_18AFD5D68);
  MEMORY[0x1EEE9AC00](v77);
  v81 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v69 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v69 - v11;
  v12 = sub_18AFCCFB4();
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999978, &qword_18AFD5D70);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v69 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999980, &qword_18AFD5D78);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v69 - v24;
  sub_18AFCDF14();
  v79 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  (*(*(v26 - 8) + 104))(v17, v25, v26);
  v27 = v93;
  v28 = sub_18AEF513C();
  v29 = sub_18AEF5504(v28);

  *&v17[*(v15 + 52)] = v29;
  *&v17[*(v15 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v17, v22, &qword_1EA999978, &qword_18AFD5D70);
  v30 = &v22[*(v18 + 36)];
  v31 = v110;
  *(v30 + 4) = v109;
  *(v30 + 5) = v31;
  *(v30 + 6) = v111;
  v32 = v106;
  *v30 = v105;
  *(v30 + 1) = v32;
  v33 = v108;
  *(v30 + 2) = v107;
  *(v30 + 3) = v33;
  sub_18AE9A768(v22, v95, &qword_1EA999980, &qword_18AFD5D78);
  v34 = type metadata accessor for iOSProgressView(0);
  if (*(v27 + *(v34 + 40)))
  {
    v36 = v91;
    v35 = v92;
    (*(v91 + 104))(v14, *MEMORY[0x1E6981630], v92);
    v37 = sub_18AFCD004();
    (*(v36 + 8))(v14, v35);
    sub_18AFCDB44();
    sub_18AFCC194();
    v71 = v114;
    v72 = v113;
    v91 = v115;
    v92 = v112;
    v89 = v118;
    v90 = v117;
    v87 = v120;
    v88 = v119;
    v85 = v122;
    v86 = v121;
    v83 = v124;
    v84 = v123;
    v69 = v125;
    v70 = v116;
  }

  else
  {
    v37 = 0;
    v91 = 0;
    v92 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v85 = 0;
    v86 = 0;
    v83 = 0;
    v84 = 0;
  }

  v38 = sub_18AFCDB44();
  v39 = v75;
  *v75 = v38;
  v39[1] = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999988, &qword_18AFD5D80);
  v42 = v93;
  sub_18AEF5770(v93, v39 + *(v41 + 44));
  sub_18AFCDB44();
  sub_18AFCC194();
  v43 = v39;
  v44 = v78;
  sub_18AE9A768(v43, v78, &qword_1EA999958, &qword_18AFD5D50);
  v45 = (v44 + *(v73 + 36));
  v46 = v131;
  v45[4] = v130;
  v45[5] = v46;
  v45[6] = v132;
  v47 = v127;
  *v45 = v126;
  v45[1] = v47;
  v48 = v129;
  v45[2] = v128;
  v45[3] = v48;
  v49 = *(v42 + *(v34 + 24));
  sub_18AFCDD14();
  *v6 = v49;
  v6[8] = 0;
  *(v6 + 2) = 0;
  v6[24] = 1;
  *(v6 + 4) = v50;
  *(v6 + 5) = v51;
  sub_18AE9A768(v44, &v6[*(v76 + 44)], &qword_1EA999960, &qword_18AFD5D58);
  if (v49 == 0.0)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = 1.0;
  }

  v53 = v74;
  sub_18AE9A768(v6, v74, &qword_1EA999968, &qword_18AFD5D60);
  *(v53 + *(v77 + 36)) = v52;
  v54 = v80;
  sub_18AE9A768(v53, v80, &qword_1EA999970, &qword_18AFD5D68);
  v55 = v94;
  sub_18AE83A40(v95, v94, &qword_1EA999980, &qword_18AFD5D78);
  v56 = v81;
  sub_18AE83A40(v54, v81, &qword_1EA999970, &qword_18AFD5D68);
  v57 = v82;
  sub_18AE83A40(v55, v82, &qword_1EA999980, &qword_18AFD5D78);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999990, &qword_18AFD5D88);
  v59 = v57 + *(v58 + 48);
  *&v96 = v37;
  *(&v96 + 1) = v92;
  v61 = v71;
  v60 = v72;
  *&v97 = v72;
  *(&v97 + 1) = v71;
  v62 = v69;
  v63 = v70;
  *&v98 = v91;
  *(&v98 + 1) = v70;
  *&v99 = v90;
  *(&v99 + 1) = v89;
  *&v100 = v88;
  *(&v100 + 1) = v87;
  *&v101 = v86;
  *(&v101 + 1) = v85;
  *&v102 = v84;
  *(&v102 + 1) = v83;
  v103 = v69;
  *(v59 + 112) = v69;
  v64 = v101;
  *(v59 + 64) = v100;
  *(v59 + 80) = v64;
  *(v59 + 96) = v102;
  v65 = v96;
  v66 = v97;
  v67 = v99;
  *(v59 + 32) = v98;
  *(v59 + 48) = v67;
  *v59 = v65;
  *(v59 + 16) = v66;
  sub_18AE83A40(v56, v57 + *(v58 + 64), &qword_1EA999970, &qword_18AFD5D68);
  sub_18AE83A40(&v96, v104, &qword_1EA999998, &qword_18AFD5D90);
  sub_18AE7BA80(v54, &qword_1EA999970, &qword_18AFD5D68);
  sub_18AE7BA80(v95, &qword_1EA999980, &qword_18AFD5D78);
  sub_18AE7BA80(v56, &qword_1EA999970, &qword_18AFD5D68);
  v104[0] = v37;
  v104[1] = v92;
  v104[2] = v60;
  v104[3] = v61;
  v104[4] = v91;
  v104[5] = v63;
  v104[6] = v90;
  v104[7] = v89;
  v104[8] = v88;
  v104[9] = v87;
  v104[10] = v86;
  v104[11] = v85;
  v104[12] = v84;
  v104[13] = v83;
  v104[14] = v62;
  sub_18AE7BA80(v104, &qword_1EA999998, &qword_18AFD5D90);
  sub_18AE7BA80(v94, &qword_1EA999980, &qword_18AFD5D78);
}

uint64_t sub_18AEF513C()
{
  v0 = sub_18AFCCCF4();
  v23 = *(v0 - 8);
  v24 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v22 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768, &qword_18AFD2100);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18AED2E48(v13);
  type metadata accessor for iOSProgressView(0);
  sub_18AED2E70(v9);
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  LODWORD(v3) = (*(v11 + 88))(v5, v10);
  LODWORD(v13) = *MEMORY[0x1E697DBA8];
  v20 = v7;
  v21 = v6;
  v15 = (*(v7 + 88))(&v5[v14], v6);
  v16 = *MEMORY[0x1E697F608];
  (*(v23 + 104))();
  if (v3 == v13)
  {
    if (v15 == v16)
    {
      return sub_18AFCCF44();
    }

    else
    {
      v17 = sub_18AFCCF44();
      (*(v20 + 8))(&v5[v14], v21);
    }
  }

  else
  {
    if (v15 == v16)
    {
      v17 = sub_18AFCCF44();
    }

    else
    {
      v17 = sub_18AFCCF44();
      (*(v20 + 8))(&v5[v14], v21);
    }

    (*(v11 + 8))(v5, v10);
  }

  return v17;
}

uint64_t sub_18AEF5504(uint64_t a1)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC464();
  sub_18AFCCDC4();
  (*(v7 + 8))(v9, v6);
  sub_18AFCCE24();
  sub_18AFCCE54();
  sub_18AFCCE34();
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  v10 = sub_18AFCCF44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997A48, &qword_18AFCED98);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18AFCEB10;
  *(v11 + 32) = v10;
  *(v11 + 40) = a1;

  return MEMORY[0x18CFEC880](v11);
}

uint64_t sub_18AEF5770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v57 = a2;
  v3 = sub_18AFCCFB4();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999A0, &qword_18AFD5D98);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999A8, &qword_18AFD5DA0);
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v50 - v13;
  sub_18AFCDF14();
  v56 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *MEMORY[0x1E697F468];
  v15 = sub_18AFCC534();
  v16 = *(*(v15 - 8) + 104);
  v16(v7, v14, v15);
  v17 = sub_18AFCCD64();
  v18 = sub_18AEF5504(v17);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999978, &qword_18AFD5D70);
  *&v7[*(v19 + 52)] = v18;
  *&v7[*(v19 + 56)] = 256;
  v20 = &v7[*(v5 + 36)];
  v16(v20, v14, v15);
  *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A38, &qword_18AFD2BE0) + 36)] = 256;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v7, v11, &qword_1EA9999A0, &qword_18AFD5D98);
  v21 = &v11[*(v61 + 36)];
  v22 = v79;
  *(v21 + 4) = v78;
  *(v21 + 5) = v22;
  *(v21 + 6) = v80;
  v23 = v75;
  *v21 = v74;
  *(v21 + 1) = v23;
  v24 = v77;
  *(v21 + 2) = v76;
  *(v21 + 3) = v24;
  sub_18AE9A768(v11, v64, &qword_1EA9999A8, &qword_18AFD5DA0);
  if (*(v62 + *(type metadata accessor for iOSProgressView(0) + 36)))
  {
    v26 = v58;
    v25 = v59;
    v27 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x1E6981630], v60);
    v52 = sub_18AFCD004();
    (*(v25 + 8))(v26, v27);
    sub_18AFCDB44();
    sub_18AFCC194();
    v28 = v81;
    v29 = v82;
    v30 = v83;
    v31 = v84;
    v54 = v87;
    v55 = v86;
    v53 = v88;
    v61 = v89;
    v62 = v85;
    v59 = v91;
    v60 = v90;
    v58 = v92;
    v33 = v93;
    v32 = v94;
  }

  else
  {
    v52 = 0;
    v53 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v61 = 0;
    v62 = 0;
    v54 = 0;
    v55 = 0;
    v59 = 0;
    v60 = 0;
    v58 = 0;
    v33 = 0;
    v32 = 0;
  }

  v34 = v63;
  sub_18AE83A40(v64, v63, &qword_1EA9999A8, &qword_18AFD5DA0);
  v35 = v34;
  v36 = v57;
  sub_18AE83A40(v35, v57, &qword_1EA9999A8, &qword_18AFD5DA0);
  v37 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999B0, &qword_18AFD5DA8) + 48);
  v38 = v52;
  *&v65 = v52;
  *(&v65 + 1) = v28;
  v39 = v28;
  v40 = v29;
  *&v66 = v29;
  *(&v66 + 1) = v30;
  *&v67 = v31;
  *(&v67 + 1) = v62;
  v41 = v54;
  v42 = v55;
  *&v68 = v55;
  *(&v68 + 1) = v54;
  v43 = v53;
  *&v69 = v53;
  *(&v69 + 1) = v61;
  *&v70 = v60;
  *(&v70 + 1) = v59;
  *&v71 = v58;
  *(&v71 + 1) = v33;
  v51 = v33;
  v72 = v32;
  *(v37 + 112) = v32;
  v44 = v70;
  *(v37 + 64) = v69;
  *(v37 + 80) = v44;
  *(v37 + 96) = v71;
  v45 = v65;
  v46 = v66;
  v47 = v68;
  *(v37 + 32) = v67;
  *(v37 + 48) = v47;
  *v37 = v45;
  *(v37 + 16) = v46;
  v48 = v40;
  sub_18AE83A40(&v65, v73, &qword_1EA999998, &qword_18AFD5D90);
  sub_18AE7BA80(v64, &qword_1EA9999A8, &qword_18AFD5DA0);
  v73[0] = v38;
  v73[1] = v39;
  v73[2] = v48;
  v73[3] = v30;
  v73[4] = v31;
  v73[5] = v62;
  v73[6] = v42;
  v73[7] = v41;
  v73[8] = v43;
  v73[9] = v61;
  v73[10] = v60;
  v73[11] = v59;
  v73[12] = v58;
  v73[13] = v51;
  v73[14] = v32;
  sub_18AE7BA80(v73, &qword_1EA999998, &qword_18AFD5D90);
  sub_18AE7BA80(v63, &qword_1EA9999A8, &qword_18AFD5DA0);
}

double sub_18AEF5DC0@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_18AFCDB44();
  a2[1] = v4;
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999940, &qword_18AFD5D38) + 44));
  *v5 = sub_18AFCDB44();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999948, &qword_18AFD5D40);
  sub_18AEF479C(v2, v5 + *(v7 + 44));
  sub_18AFCDB44();
  sub_18AFCBCC4();

  v8 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999950, &qword_18AFD5D48) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

unint64_t sub_18AEF5EFC()
{
  result = qword_1EA9999B8;
  if (!qword_1EA9999B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999C0, &qword_18AFD5DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9999B8);
  }

  return result;
}

void sub_18AEF5FA8(uint64_t a1)
{
  sub_18AEF6188(319, &qword_1EA9999C8, MEMORY[0x1E69E63B0], MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_18AEF6188(319, &qword_1EA9999D0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SwitchSpecs(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v4 <= 0x3F)
        {
          sub_18AEF6188(319, &qword_1EA999930, MEMORY[0x1E697E0B8], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_18AEF6188(319, &qword_1EA999938, MEMORY[0x1E6981748], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_18AEF6188(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
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

void sub_18AEF6188(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AEF61F4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for iOSSwitchEngineering(0);
  v33 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v34 = v3;
  v35 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999D8, &qword_18AFD5E88);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v32 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999E0, &qword_18AFD5E90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999E8, &qword_18AFD5E98);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *(v1 + v2[10]);
  if (v13 == 1)
  {
    v14 = sub_18AFCDB64();
  }

  else
  {
    v14 = sub_18AFCDB54();
  }

  *v6 = v14;
  v6[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9999F0, &unk_18AFD5EA0);
  v17 = sub_18AEF6578(v1, v6 + *(v16 + 44));
  v18 = v2[9];
  v19.n128_u64[0] = 0x3FDE147AE147AE14;
  if (*(v1 + v18) == 3)
  {
    v19.n128_f64[0] = 0.3;
  }

  v20 = MEMORY[0x18CFECEE0](v17, v19, 1.0, 0.0);
  v21 = sub_18AE9A768(v6, v9, &qword_1EA9999D8, &qword_18AFD5E88);
  v22 = &v9[*(v7 + 36)];
  *v22 = v20;
  v23 = *(v1 + v18);
  v22[8] = v13;
  v24.n128_u64[0] = 0x3FC999999999999ALL;
  if (v23 != 3)
  {
    v24.n128_f64[0] = 0.25;
  }

  v25 = MEMORY[0x18CFECEE0](v21, v24, 1.0, 0.0);
  v26 = *(v1 + v18);
  sub_18AE9A768(v9, v12, &qword_1EA9999E0, &qword_18AFD5E90);
  v27 = &v12[*(v10 + 36)];
  *v27 = v25;
  v27[8] = v26;
  v37 = *(v1 + v2[11]);
  v28 = v35;
  sub_18AEF93C4(v1, v35, type metadata accessor for iOSSwitchEngineering);
  v29 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v30 = swift_allocObject();
  sub_18AEF8CE8(v28, v30 + v29);
  sub_18AEF8D64();
  sub_18AFCCC44();

  return sub_18AE7BA80(v12, &qword_1EA9999E8, &qword_18AFD5E98);
}

uint64_t sub_18AEF6578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A30, &qword_18AFD5EC8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A38, &unk_18AFD5ED0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31[-v14 - 8];
  sub_18AFCDF14();
  v30 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = *MEMORY[0x1E697F468];
  v17 = sub_18AFCC534();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  v18 = type metadata accessor for iOSSwitchEngineering(0);
  v19 = sub_18AECB380(*(a1 + *(v18 + 40)));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999778, &unk_18AFD5750);
  *&v15[*(v20 + 52)] = v19;
  *&v15[*(v20 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v21 = &v15[*(v10 + 36)];
  v22 = v36;
  *v21 = v35;
  v21[1] = v22;
  v21[2] = v37;
  sub_18AEF696C(v32);
  sub_18AEF6E78(v9);
  sub_18AE83A40(v15, v12, &qword_1EA999A38, &unk_18AFD5ED0);
  memcpy(v31, v32, sizeof(v31));
  sub_18AE83A40(v9, v6, &qword_1EA999A30, &qword_18AFD5EC8);
  sub_18AE83A40(v12, a2, &qword_1EA999A38, &unk_18AFD5ED0);
  v23 = v9;
  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A40, &qword_18AFD5EE0);
  v26 = v12;
  v27 = v6;
  v28 = *(v25 + 48);
  memcpy(v33, v31, 0x111uLL);
  memcpy((v24 + v28), v31, 0x111uLL);
  sub_18AE83A40(v27, v24 + *(v25 + 64), &qword_1EA999A30, &qword_18AFD5EC8);
  sub_18AE83A40(v33, v34, &qword_1EA999A48, &qword_18AFD5EE8);
  sub_18AE7BA80(v23, &qword_1EA999A30, &qword_18AFD5EC8);
  sub_18AE7BA80(v15, &qword_1EA999A38, &unk_18AFD5ED0);
  sub_18AE7BA80(v27, &qword_1EA999A30, &qword_18AFD5EC8);
  memcpy(v34, v31, 0x111uLL);
  sub_18AE7BA80(v34, &qword_1EA999A48, &qword_18AFD5EE8);
  sub_18AE7BA80(v26, &qword_1EA999A38, &unk_18AFD5ED0);
}

void *sub_18AEF696C@<X0>(void *a1@<X8>)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = type metadata accessor for iOSSwitchEngineering(0);
  v8 = v1 + v7[17];
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v9, 0);
    (*(v4 + 8))(v6, v3);
    if ((v46[0] & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v10 = *(v1 + v7[15]);
    v11 = 1;
    if (v10)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = *(v1 + v7[15]);
  if (v10)
  {
    v11 = *(v1 + v7[16]) != 0;
LABEL_7:
    v13 = v10;
    goto LABEL_10;
  }

  v11 = 0;
LABEL_9:
  v13 = sub_18AFCCFA4();
LABEL_10:
  v14 = *(v1 + v7[16]);
  if (v14)
  {

    v15 = v14;
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {

    v15 = sub_18AFCCFA4();
    if (!v11)
    {
      goto LABEL_15;
    }
  }

  if (*(v1 + v7[9]) - 3 >= 2)
  {

    v16 = sub_18AFCC504();
    v30 = 1;
    sub_18AEF7738(v13, v1, v15, v46);
    v41 = v46[10];
    v42 = v46[11];
    v37 = v46[6];
    v38 = v46[7];
    v39 = v46[8];
    v40 = v46[9];
    v33 = v46[2];
    v34 = v46[3];
    v35 = v46[4];
    v36 = v46[5];
    v31 = v46[0];
    v32 = v46[1];
    v44[9] = v46[9];
    v44[10] = v46[10];
    v44[11] = v46[11];
    v44[12] = v46[12];
    v44[5] = v46[5];
    v44[6] = v46[6];
    v44[7] = v46[7];
    v44[8] = v46[8];
    v44[1] = v46[1];
    v44[2] = v46[2];
    v44[3] = v46[3];
    v44[4] = v46[4];
    v43 = v46[12];
    v44[0] = v46[0];
    sub_18AE83A40(&v31, v45, &qword_1EA999A68, &qword_18AFD5F10);
    sub_18AE7BA80(v44, &qword_1EA999A68, &qword_18AFD5F10);
    *&v29[151] = v40;
    *&v29[167] = v41;
    *&v29[183] = v42;
    *&v29[199] = v43;
    *&v29[87] = v36;
    *&v29[103] = v37;
    *&v29[119] = v38;
    *&v29[135] = v39;
    *&v29[23] = v32;
    *&v29[39] = v33;
    *&v29[55] = v34;
    *&v29[71] = v35;
    *&v29[7] = v31;
    v17 = v30;
    v18 = sub_18AFCC844();
    sub_18AFCBAA4();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    *(&v45[22] + 1) = *&v29[160];
    *(&v45[24] + 1) = *&v29[176];
    *(&v45[26] + 1) = *&v29[192];
    *(&v45[14] + 1) = *&v29[96];
    *(&v45[16] + 1) = *&v29[112];
    *(&v45[18] + 1) = *&v29[128];
    *(&v45[20] + 1) = *&v29[144];
    *(&v45[6] + 1) = *&v29[32];
    *(&v45[8] + 1) = *&v29[48];
    *(&v45[10] + 1) = *&v29[64];
    *(&v45[12] + 1) = *&v29[80];
    *(&v45[2] + 1) = *v29;
    v45[0] = v16;
    v45[1] = 0;
    LOBYTE(v45[2]) = v17;
    v45[28] = *&v29[207];
    *(&v45[4] + 1) = *&v29[16];
    LOBYTE(v45[29]) = v18;
    v45[30] = v20;
    v45[31] = v22;
    v45[32] = v24;
    v45[33] = v26;
    LOBYTE(v45[34]) = 0;
    CGPointMake();
    memcpy(v46, v45, 0x111uLL);
    return memcpy(a1, v46, 0x111uLL);
  }

LABEL_15:

  sub_18AEF9270(v46);
  return memcpy(a1, v46, 0x111uLL);
}

uint64_t sub_18AEF6E78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A50, &qword_18AFD5EF0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v42 - v5);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A58, &qword_18AFD5EF8);
  MEMORY[0x1EEE9AC00](v44);
  v8 = v42 - v7;
  v9 = type metadata accessor for iOSSwitchEngineering(0);
  v10 = v1 + v9[8];
  v12 = *v10;
  v11 = *(v10 + 8);
  v13 = v1[3];
  v14 = *(v10 + 16);
  LOBYTE(v49) = *(v1 + 16);
  *(&v49 + 1) = v13;
  sub_18AEF9238(v12, v11, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28, &qword_18AFD5EC0);
  sub_18AFCD0C4();
  v15 = v47;
  v16 = *v1;
  v17 = v1[1];
  *&v49 = *v1;
  v43 = v17;
  *(&v49 + 1) = v17;
  v42[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
  sub_18AFCD0C4();
  v18 = v47;
  sub_18AECC260(v6);
  v19 = type metadata accessor for iOSSwitchEngineering.KnobBase(0);
  v20 = v6 + v19[5];
  *v20 = v12;
  *(v20 + 1) = v11;
  v20[16] = v14;
  *(v6 + v19[6]) = v15;
  *(v6 + v19[7]) = v18;
  sub_18AECB204();
  sub_18AECB204();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v21 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A60, &unk_18AFD5F00) + 36));
  v22 = v50;
  *v21 = v49;
  v21[1] = v22;
  v21[2] = v51;
  type metadata accessor for SwitchSpecs(0);
  LOBYTE(v11) = sub_18AFCC854();
  sub_18AFCBAA4();
  v23 = v6 + *(v4 + 44);
  *v23 = v11;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v28 = v9[9];
  v29 = *(v1 + v28);
  if (*(v2 + v9[10]) == 1)
  {
    sub_18AFCDD14();
  }

  else
  {
    sub_18AFCDD24();
  }

  v32 = v30;
  v33 = v31;
  if (v29 == 3)
  {
    v34 = 1.55;
  }

  else
  {
    v34 = 1.0;
  }

  sub_18AE9A768(v6, v8, &qword_1EA999A50, &qword_18AFD5EF0);
  v35 = &v8[*(v44 + 36)];
  *v35 = v34;
  *(v35 + 1) = v34;
  *(v35 + 2) = v32;
  *(v35 + 3) = v33;
  v47 = v16;
  v48 = v43;
  sub_18AFCD0C4();
  v36 = v46;
  v37 = *(v2 + v28);
  v47 = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A30, &qword_18AFD5EC8);
  v39 = v45;
  v40 = v45 + *(v38 + 36);
  type metadata accessor for SwitchKnobKeyframeAnimationModifier(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998720, &qword_18AFD20A0);
  sub_18AE95F54(&qword_1EA9977F0, &qword_1EA998720, &qword_18AFD20A0, MEMORY[0x1E697E160]);
  sub_18AFCC074();
  *v40 = v36;
  *(v40 + 8) = v37;
  return sub_18AE9A768(v8, v39, &qword_1EA999A58, &qword_18AFD5EF8);
}

uint64_t sub_18AEF723C(uint64_t *a1)
{
  v2 = type metadata accessor for iOSSwitchEngineering(0);
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_18AFCC764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a1[1];
  v17 = *a1;
  v18 = v8;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
  sub_18AFCD0D4();
  v9 = a1[3];
  LOBYTE(v17) = *(a1 + 16);
  v18 = v9;
  LOBYTE(v16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28, &qword_18AFD5EC0);
  sub_18AFCD0D4();
  type metadata accessor for SwitchSpecs(0);
  v10 = sub_18AFCC754();
  MEMORY[0x1EEE9AC00](v10);
  *(&v14 - 2) = a1;
  sub_18AEF93C4(a1, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for iOSSwitchEngineering);
  v11 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v12 = swift_allocObject();
  sub_18AEF8CE8(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_18AFCBDE4();

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_18AEF7554(__n128 a1)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
  sub_18AFCD0D4();
}

uint64_t sub_18AEF7634(uint64_t *a1, __n128 a2)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A28, &qword_18AFD5EC0);
  sub_18AFCD0D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A20, &qword_18AFD5EB8);
  sub_18AFCD0D4();
}

uint64_t sub_18AEF7738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  KeyPath = a2;
  v62 = a3;
  v60 = a1;
  v69 = a4;
  v71 = sub_18AFCCCF4();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCC5C4();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v49 - v8;
  v9 = sub_18AFCCFB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A70, &qword_18AFD5F18);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - v14;
  sub_18AFCDF14();
  v70 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v56 = *MEMORY[0x1E6981698];
  v16 = v56;
  v17 = sub_18AFCCFD4();
  v18 = *(v17 - 8);
  v19 = v18;
  v55 = *(v18 + 104);
  v57 = v18 + 104;
  v55(v15, v16, v17);
  v54 = *(v19 + 56);
  (v54)(v15, 0, 1, v17);
  sub_18AFCCFC4();
  sub_18AE7BA80(v15, &qword_1EA999A70, &qword_18AFD5F18);
  v53 = *MEMORY[0x1E6981630];
  v52 = *(v10 + 104);
  v52(v12);
  v60 = sub_18AFCD004();

  v51 = *(v10 + 8);
  v51(v12, v9);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  LOBYTE(v88[0]) = 1;
  *&v98[3] = *&v98[27];
  *&v98[11] = *&v98[35];
  *&v98[19] = *&v98[43];
  v20 = KeyPath + *(type metadata accessor for iOSSwitchEngineering(0) + 24);
  v21 = type metadata accessor for SwitchSpecs(0);
  v49 = v20;
  v50 = v21;
  v22 = *(v20 + *(v21 + 52));
  KeyPath = swift_getKeyPath();
  v59 = v22;
  v88[0] = v22;
  swift_retain_n();
  v58 = sub_18AFCBCD4();
  v55(v15, v56, v17);
  (v54)(v15, 0, 1, v17);
  sub_18AFCCFC4();
  sub_18AE7BA80(v15, &qword_1EA999A70, &qword_18AFD5F18);
  (v52)(v12, v53, v9);
  v62 = sub_18AFCD004();

  v51(v12, v9);
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v97 = 1;
  *&v96[22] = *&v98[59];
  *&v96[38] = *&v98[67];
  *&v96[6] = *&v98[51];
  v57 = *(v50 + 24);
  v23 = v63;
  sub_18AED2E70(v63);
  v56 = *MEMORY[0x1E697F608];
  v24 = v64;
  v25 = v65;
  v55 = *(v65 + 104);
  v26 = v66;
  (v55)(v64);
  sub_18AFCBB24();
  v27 = *(v25 + 8);
  v27(v24, v26);
  v27(v23, v26);
  LODWORD(v65) = *MEMORY[0x1E69814D8];
  v28 = v68;
  v54 = *(v67 + 104);
  v54(v68);
  v67 = sub_18AFCCF54();
  sub_18AED2E70(v23);
  v55(v24, v56, v26);
  sub_18AFCBB24();
  v27(v24, v26);
  v27(v23, v26);
  (v54)(v28, v65, v71);
  v29 = sub_18AFCCF54();
  v30 = swift_getKeyPath();
  v88[0] = v29;
  v31 = sub_18AFCBCD4();
  v33 = v59;
  v32 = v60;
  v74[0] = v60;
  v74[1] = 0;
  LOWORD(v75[0]) = 1;
  *(v75 + 2) = *v98;
  *(&v75[1] + 2) = *&v98[8];
  *(&v75[2] + 2) = *&v98[16];
  *&v75[3] = *&v98[23];
  *(&v75[3] + 1) = v59;
  v35 = KeyPath;
  v34 = v62;
  v36 = v58;
  *&v76 = KeyPath;
  *(&v76 + 1) = v58;
  v73 = 1;
  v77[0] = v62;
  v77[1] = 0;
  LOWORD(v78[0]) = 1;
  *&v78[3] = *&v96[46];
  *(&v78[2] + 2) = *&v96[32];
  *(&v78[1] + 2) = *&v96[16];
  *(v78 + 2) = *v96;
  v37 = v67;
  *(&v78[3] + 1) = v67;
  *&v79 = v30;
  *(&v79 + 1) = v31;
  *&v72[23] = v78[0];
  *&v72[7] = v62;
  *&v72[87] = v79;
  *&v72[71] = v78[3];
  *&v72[55] = v78[2];
  *&v72[39] = v78[1];
  v38 = v75[0];
  v39 = v69;
  *v69 = v60;
  v39[1] = v38;
  v40 = v75[1];
  v41 = v75[2];
  v42 = v76;
  v39[4] = v75[3];
  v39[5] = v42;
  v39[2] = v40;
  v39[3] = v41;
  *(v39 + 12) = 0;
  *(v39 + 104) = 1;
  v43 = *v72;
  v44 = *&v72[16];
  v45 = *&v72[48];
  *(v39 + 137) = *&v72[32];
  *(v39 + 121) = v44;
  *(v39 + 105) = v43;
  v46 = *&v72[64];
  v47 = *&v72[80];
  *(v39 + 25) = *&v72[95];
  *(v39 + 185) = v47;
  *(v39 + 169) = v46;
  *(v39 + 153) = v45;
  v80[0] = v34;
  v80[1] = 0;
  v81 = 1;
  *&v84[14] = *&v96[46];
  *v84 = *&v96[32];
  v83 = *&v96[16];
  v82 = *v96;
  v85 = v37;
  v86 = v30;
  v87 = v31;
  sub_18AE83A40(v74, v88, &qword_1EA999A78, &qword_18AFD5F50);
  sub_18AE83A40(v77, v88, &qword_1EA999A78, &qword_18AFD5F50);
  sub_18AE7BA80(v80, &qword_1EA999A78, &qword_18AFD5F50);
  v88[0] = v32;
  v88[1] = 0;
  v89 = 1;
  v90 = *v98;
  v91 = *&v98[8];
  *v92 = *&v98[16];
  *&v92[14] = *&v98[23];
  v93 = v33;
  v94 = v35;
  v95 = v36;
  sub_18AE7BA80(v88, &qword_1EA999A78, &qword_18AFD5F50);
}

uint64_t sub_18AEF80B8@<X0>(void *a1@<X8>)
{
  v69 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A80, &qword_18AFD5FC0);
  MEMORY[0x1EEE9AC00](v67);
  v68 = (&v57 - v2);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A88, &qword_18AFD5FC8);
  MEMORY[0x1EEE9AC00](v58);
  v59 = (&v57 - v3);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A90, &qword_18AFD5FD0);
  MEMORY[0x1EEE9AC00](v66);
  v60 = &v57 - v4;
  v61 = sub_18AFCCCF4();
  v5 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999A98, &qword_18AFD5FD8);
  MEMORY[0x1EEE9AC00](v62);
  v9 = &v57 - v8;
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA0, &qword_18AFD5FE0);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v57 - v19;
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_18AFCC534();
  v22 = *(*(v21 - 8) + 104);
  v70 = v16;
  v22(v16, v20, v21);
  sub_18AFCCD94();
  v23 = *(type metadata accessor for SwitchSpecs(0) + 20);
  v64 = v1;
  v24 = v1 + v23;
  v25 = *v24;
  if (*(v24 + 8) != 1)
  {

    sub_18AFCE024();
    v26 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v25, 0);
    (*(v11 + 8))(v13, v10);
  }

  v27 = sub_18AFCCDA4();

  v28 = *MEMORY[0x1E69814D8];
  v29 = *(v5 + 104);
  v30 = v61;
  v29(v7, v28, v61);
  sub_18AFCCF54();
  v31 = v62;
  v32 = &v9[*(v62 + 52)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AA8, &qword_18AFD5FE8);
  sub_18AFCBB74();

  *v32 = v27;
  v33 = MEMORY[0x1E6981998];
  sub_18AEF93C4(v70, v9, MEMORY[0x1E6981998]);
  *&v9[*(v31 + 56)] = 256;
  v29(v7, v28, v30);

  v34 = sub_18AFCCF44();
  sub_18AFCBB94();
  v35 = v65;
  sub_18AEF93C4(v9, v65, v33);
  v36 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AB0, &qword_18AFD5FF0) + 36);
  v37 = v72;
  *v36 = v71;
  *(v36 + 16) = v37;
  *(v36 + 32) = v73;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AB8, &qword_18AFD5FF8);
  *(v35 + *(v38 + 52)) = v34;
  *(v35 + *(v38 + 56)) = 256;
  v39 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AC0, &qword_18AFD6000) + 36);
  sub_18AE83A40(v9, v39, &qword_1EA999A98, &qword_18AFD5FD8);
  v40 = sub_18AFCDB44();
  v42 = v41;

  sub_18AE7BA80(v9, &qword_1EA999A98, &qword_18AFD5FD8);
  sub_18AEF0D88(v70, v43);
  v44 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999AC8, &qword_18AFD6008) + 36));
  *v44 = v40;
  v44[1] = v42;
  v45 = type metadata accessor for iOSSwitchEngineering.KnobBase(0);
  v46 = 0;
  if (*(v64 + v45[6]) == 1)
  {
    v46 = *(v64 + v45[7]) < 0.75;
  }

  v47 = v64 + v45[5];
  v48 = *v47;
  v49 = *(v47 + 8);
  v50 = *(v47 + 16);
  if (!v50)
  {

    v52 = (v48)(v46);
    *v59 = v52;
    swift_storeEnumTagMultiPayload();
    sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0, &qword_18AFD5FE0, MEMORY[0x1E697E8C0]);

    v53 = v60;
    sub_18AFCC614();
    sub_18AE83A40(v53, v68, &qword_1EA999A90, &qword_18AFD5FD0);
    swift_storeEnumTagMultiPayload();
    sub_18AEF942C();
    sub_18AFCC614();
    sub_18AEF8CD0(v48, v49, 0);

    v54 = v53;
LABEL_10:
    sub_18AE7BA80(v54, &qword_1EA999A90, &qword_18AFD5FD0);
    return sub_18AE7BA80(v35, &qword_1EA999AA0, &qword_18AFD5FE0);
  }

  if (v50 != 1)
  {
    sub_18AE83A40(v35, v59, &qword_1EA999AA0, &qword_18AFD5FE0);
    swift_storeEnumTagMultiPayload();
    sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0, &qword_18AFD5FE0, MEMORY[0x1E697E8C0]);
    v55 = v60;
    sub_18AFCC614();
    sub_18AE83A40(v55, v68, &qword_1EA999A90, &qword_18AFD5FD0);
    swift_storeEnumTagMultiPayload();
    sub_18AEF942C();
    sub_18AFCC614();
    v54 = v55;
    goto LABEL_10;
  }

  sub_18AE83A40(v35, v57, &qword_1EA999AA0, &qword_18AFD5FE0);
  sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0, &qword_18AFD5FE0, MEMORY[0x1E697E8C0]);

  sub_18AFCD464();
  v51 = v48();

  *v68 = v51;
  swift_storeEnumTagMultiPayload();
  sub_18AEF942C();

  sub_18AFCC614();
  sub_18AEF8CD0(v48, v49, 1u);

  return sub_18AE7BA80(v35, &qword_1EA999AA0, &qword_18AFD5FE0);
}

uint64_t sub_18AEF8AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AEF94E4();

  return MEMORY[0x1EEDE3690](a1, a2, a3, v8, a4);
}

uint64_t sub_18AEF8B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AEF94E4();

  return MEMORY[0x1EEDE3698](a1, a2, a3, v8, a4);
}

uint64_t sub_18AEF8B90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *(v2 + *(a1 + 28));
  v4 = v6;
  result = (*(*(MEMORY[0x1E69E63B0] - 8) + 8))(&v6);
  *a2 = v4;
  return result;
}

double sub_18AEF8C04(double *a1, uint64_t a2)
{
  result = *a1;
  *(v2 + *(a2 + 28)) = *a1;
  return result;
}

double (*sub_18AEF8C14(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *(a1 + 16) = v2;
  v4 = *(a2 + 28);
  *(a1 + 24) = v4;
  v5 = *(v2 + v4);
  *a1 = v5;
  (*(*(MEMORY[0x1E69E63B0] - 8) + 8))();
  *(a1 + 8) = v5;
  return sub_18AEF8CA0;
}

double sub_18AEF8CA0(uint64_t a1)
{
  result = *(a1 + 8);
  *(*(a1 + 16) + *(a1 + 24)) = result;
  return result;
}

uint64_t sub_18AEF8CD0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_18AEF8CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iOSSwitchEngineering(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEF8D64()
{
  result = qword_1EA9999F8;
  if (!qword_1EA9999F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999E8, &qword_18AFD5E98);
    sub_18AEF8E1C();
    sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18, &qword_18AFD5EB0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9999F8);
  }

  return result;
}

unint64_t sub_18AEF8E1C()
{
  result = qword_1EA999A00;
  if (!qword_1EA999A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9999E0, &qword_18AFD5E90);
    sub_18AE95F54(&qword_1EA999A08, &qword_1EA9999D8, &qword_18AFD5E88, MEMORY[0x1E6981880]);
    sub_18AE95F54(&qword_1EA9977A0, &qword_1EA999A10, qword_18AFD8F40, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999A00);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for iOSSwitchEngineering(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_18AFCBB34();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  else
  {
  }

  v5 = type metadata accessor for SwitchSpecs(0);
  sub_18AE9B234(*(v3 + v5[5]), *(v3 + v5[5] + 8));
  v6 = v5[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_18AFCC5C4();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
  }

  j__swift_release(*(v3 + v5[7]));
  sub_18AE9B234(*(v3 + v5[8]), *(v3 + v5[8] + 8));
  sub_18AECE16C(*(v3 + v5[9]), *(v3 + v5[9] + 8));

  sub_18AEF8CD0(*(v2 + v1[8]), *(v2 + v1[8] + 8), *(v2 + v1[8] + 16));

  sub_18AE9B234(*(v2 + v1[17]), *(v2 + v1[17] + 8));

  return swift_deallocObject();
}

uint64_t sub_18AEF91C4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for iOSSwitchEngineering(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_18AEF9238(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double sub_18AEF9270(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_18AEF92A0@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x18CFEB700]();
  *a1 = result;
  return result;
}

uint64_t sub_18AEF9320(uint64_t a1)
{
  result = type metadata accessor for SwitchSpecs(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AEF93C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_18AEF942C()
{
  result = qword_1EA997790;
  if (!qword_1EA997790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A90, &qword_18AFD5FD0);
    sub_18AE95F54(&qword_1EA9977D0, &qword_1EA999AA0, &qword_18AFD5FE0, MEMORY[0x1E697E8C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997790);
  }

  return result;
}

unint64_t sub_18AEF94E4()
{
  result = qword_1EA997878;
  if (!qword_1EA997878)
  {
    type metadata accessor for iOSSwitchEngineering.KnobBase(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997878);
  }

  return result;
}

unint64_t sub_18AEF953C()
{
  result = qword_1EA997780;
  if (!qword_1EA997780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA999AD0, &qword_18AFD6010);
    sub_18AEF942C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997780);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MacButtonGlassForegroundStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    if ((a2 + 33554178) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776962;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 3;
  v6 = v4 - 3;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MacButtonGlassForegroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554178) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFD)
  {
    v3 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v3)
    {
      v4 = ((a2 - 254) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

void sub_18AEF96D4(uint64_t a1)
{
  sub_18AEB31C4();
  if (v1 <= 0x3F)
  {
    sub_18AED6EAC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_18AED6EAC(319, &qword_1EA998B40, type metadata accessor for ResolvedButtonBorderShape);
      if (v3 <= 0x3F)
      {
        sub_18AEF9E88(319);
        if (v4 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_18AEF9810(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_18AFCC5C4() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(sub_18AFCBB54() - 8);
  v9 = *(v8 + 64);
  if ((v9 + 1) > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 80) & 0xF8;
  v17 = v16 | 7;
  v18 = v13 & 0xF8 | 7;
  v19 = v7 + v18 + 1;
  v20 = v10 + 8;
  v21 = v14 + 14;
  if (a2 <= v15)
  {
    goto LABEL_34;
  }

  v22 = ((v21 + ((v20 + ((v19 + ((v16 + 16) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v11 + 64);
  v23 = 8 * v22;
  if (v22 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v26))
    {
      v24 = *(a1 + v22);
      if (!v24)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 > 0xFF)
    {
      v24 = *(a1 + v22);
      if (!*(a1 + v22))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v26 < 2)
    {
LABEL_34:
      if (v12 > 0xFE)
      {
        v31 = *(v11 + 48);

        return v31((v21 + ((v20 + ((v19 + ((a1 + v17 + 9) & ~v17)) & ~v18)) & 0xFFFFFFFFFFFFFFF8)) & ~v14);
      }

      else
      {
        v30 = *(a1 + 8);
        if (v30 > 1)
        {
          return (v30 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_34;
  }

LABEL_21:
  v27 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v27 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v28 = v22;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_18AEF9AF4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_18AFCC5C4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(sub_18AFCBB54() - 8);
  v11 = *(v10 + 64);
  if ((v11 + 1) > 8)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 8;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v8 + 80);
  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  if (v14 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = *(v13 + 84);
  }

  v19 = v15 & 0xF8 | 7;
  v20 = v16 & 0xF8 | 7;
  v21 = v9 + v20 + 1;
  v22 = v12 + 8;
  v23 = ((v17 + 14 + ((v22 + ((v21 + (((v15 & 0xF8) + 16) & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + *(v13 + 64);
  if (a3 <= v18)
  {
    v24 = 0;
  }

  else if (v23 <= 3)
  {
    v27 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v18 < a2)
  {
    v25 = ~v18 + a2;
    if (v23 < 4)
    {
      v26 = (v25 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v25 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v24 > 1)
            {
LABEL_52:
              if (v24 == 2)
              {
                *&a1[v23] = v26;
              }

              else
              {
                *&a1[v23] = v26;
              }

              return;
            }
          }

          else
          {
            *a1 = v25;
            if (v24 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v25;
      v26 = 1;
      if (v24 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v24)
    {
      a1[v23] = v26;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v23] = 0;
  }

  else if (v24)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v14 > 0xFE)
  {
    v30 = *(v13 + 56);

    v30((v17 + 14 + ((v22 + ((v21 + (&a1[v19 + 9] & ~v19)) & ~v20)) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

void sub_18AEF9E88(uint64_t a1)
{
  if (!qword_1EA998700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998708, qword_18AFD6070);
    v1 = sub_18AFCBB64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA998700);
    }
  }
}

unint64_t sub_18AEF9F00()
{
  result = qword_1EA999B58;
  if (!qword_1EA999B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999B58);
  }

  return result;
}

uint64_t sub_18AEF9F54@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t (*a6)(void)@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v15 = *a1;
  v16 = *a2;
  *a8 = swift_getKeyPath();
  *(a8 + 8) = 0;
  v18 = type metadata accessor for MacGlassButton(0, a7, a9, v17);
  v19 = v18[9];
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v20 = v18[10];
  *(a8 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  swift_storeEnumTagMultiPayload();
  v21 = a8 + v18[11];
  *v21 = swift_getKeyPath();
  *(v21 + 8) = 0;
  *(a8 + v18[12]) = v15;
  *(a8 + v18[13]) = v16;
  *(a8 + v18[14]) = a3;
  *(a8 + v18[15]) = a4;
  *(a8 + v18[16]) = a5;
  return a6();
}

double sub_18AEFA0A4(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(v1 + *(a1 + 40), v8, &qword_1EA998520, &qword_18AFD2FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18AED8B94(v8, v11);
  }

  else
  {
    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v17);
  }

  v13 = v11[*(v9 + 20)];
  sub_18AED8AD4(v11);
  v14 = &unk_18AFD6428;
  if (v13 == 2)
  {
    v14 = &unk_18AFD64A8;
  }

  return v14[*(v1 + *(a1 + 60))];
}

double sub_18AEFA2F8(uint64_t a1)
{
  v17 = sub_18AFCC474();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE83A40(v1 + *(a1 + 40), v8, &qword_1EA998520, &qword_18AFD2FF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18AED8B94(v8, v11);
  }

  else
  {
    sub_18AFCE024();
    v12 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v17);
  }

  v13 = v11[*(v9 + 20)];
  sub_18AED8AD4(v11);
  v14 = &unk_18AFD6468;
  if (v13 == 2)
  {
    v14 = &unk_18AFD64A8;
  }

  return v14[*(v1 + *(a1 + 60))];
}

BOOL sub_18AEFA54C(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + *(a1 + 52));
  v8 = *v1;
  if (*(v1 + 8) != 1)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  result = 0;
  if (v7)
  {
    if (v8)
    {
      return *(v1 + *(a1 + 48)) != 1;
    }
  }

  return result;
}

uint64_t sub_18AEFA6C8()
{
  v0 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_18AFCDAD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56A748 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v8 = __swift_project_value_buffer(v7, qword_1ED56A730);
  sub_18AE7AF04(v8, v2, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AEFBFF0(&qword_1ED56A5E8, type metadata accessor for GlassMaterialProvider, &protocol conformance descriptor for GlassMaterialProvider);
  sub_18AEFBFF0(&qword_1ED56A5E0, type metadata accessor for GlassMaterialProvider.Resolved, &protocol conformance descriptor for GlassMaterialProvider.Resolved);
  sub_18AFCD5E4();
  sub_18AFCD3F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18AEFA8D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCD454();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v16 = *(v2 + *(a1 + 56));
  v30 = v4;
  v31 = v17;
  v29 = v5;
  if (v16)
  {
    if (v16 == 1)
    {
      sub_18AFCD2F4();
    }

    else
    {
      sub_18AEFA6C8();
    }
  }

  else
  {
    sub_18AFCD3B4();
  }

  v18 = *(v9 + 32);
  v19 = v32;
  v18(v32, v15, v8);
  result = sub_18AEFA54C(a1);
  if (result)
  {
    (*(v9 + 16))(v11, v19, v8);
    v21 = v2 + *(a1 + 44);
    v22 = *v21;
    v23 = *(v21 + 8);

    if (v23)
    {
      v24 = v19;
      if (!v22)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_18AFCE024();
      v25 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v24 = v32;
      sub_18AFCC464();
      swift_getAtKeyPath();
      j__swift_release(v22);
      (*(v29 + 8))(v7, v30);
      if (!v33)
      {
LABEL_11:
        sub_18AFCCCD4();
      }
    }

    v26 = v31;
    sub_18AFCD444();

    v27 = *(v9 + 8);
    v27(v11, v8);
    v27(v24, v8);
    return (v18)(v24, v26, v8);
  }

  return result;
}

uint64_t sub_18AEFABF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v101 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v101);
  v96 = (&v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = sub_18AFCD454();
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v88 = &v62 - v6;
  v90 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v7 = sub_18AFCC044();
  v92 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v62 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B60, &unk_18AFD61B0);
  v64 = v7;
  v9 = sub_18AFCC044();
  v91 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v62 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v66 = v9;
  v11 = sub_18AFCBDC4();
  v89 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v83 = &v62 - v12;
  v69 = v11;
  v13 = sub_18AFCC044();
  v93 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v62 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999B68, &unk_18AFD61C0);
  v76 = v13;
  v15 = sub_18AFCC044();
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v62 - v16;
  v17 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v63 = *(a1 + 24);
  v18 = v63;
  v19 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v119 = v18;
  v120 = v19;
  v20 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v62 = WitnessTable;
  v22 = sub_18AE95F54(&qword_1EA999B70, &qword_1EA999B60, &unk_18AFD61B0, MEMORY[0x1E6980490]);
  v117 = WitnessTable;
  v118 = v22;
  v65 = swift_getWitnessTable();
  v115 = v17;
  v116 = v65;
  v68 = swift_getWitnessTable();
  v113 = v68;
  v114 = MEMORY[0x1E697E5D8];
  v87 = v20;
  v23 = swift_getWitnessTable();
  v71 = v23;
  v24 = sub_18AE95F54(&qword_1EA999B78, &qword_1EA999B68, &unk_18AFD61C0, MEMORY[0x1E697F940]);
  v111 = v23;
  v112 = v24;
  v73 = v15;
  v25 = swift_getWitnessTable();
  v72 = v25;
  v74 = sub_18AEFBFF0(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape, &unk_18AFE1DA8);
  v107 = v15;
  v108 = v101;
  v109 = v25;
  v110 = v74;
  v78 = MEMORY[0x1E6981208];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v80 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v67 = &v62 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B70, &qword_18AFD2FA8);
  v79 = sub_18AFCC044();
  v81 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v70 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v77 = &v62 - v29;
  v30 = v100;
  sub_18AFCC934();
  v31 = sub_18AFCC8F4();
  v32 = v88;
  (*(*(v31 - 8) + 56))(v88, 1, 1, v31);
  sub_18AFCC954();
  sub_18AE7BA80(v32, &qword_1EA998930, &qword_18AFD35E0);
  v33 = v86;
  v34 = v90;
  v35 = v63;
  sub_18AFCCBA4();

  v36 = *(v30 + *(a1 + 52));
  LOBYTE(v107) = *(v30 + *(a1 + 48));
  *(&v107 + 1) = v36;
  sub_18AEB10FC();
  v37 = v84;
  v38 = v64;
  sub_18AFCCB44();
  (*(v92 + 8))(v33, v38);
  v39 = sub_18AEFA0A4(a1);
  v40 = sub_18AEFA2F8(a1);
  v41 = v83;
  v42 = v66;
  sub_18AFC385C(0, 0, v66, v65, v39, v40, v83);
  (*(v91 + 8))(v37, v42);
  sub_18AFCC8B4();
  v43 = v82;
  v44 = v69;
  sub_18AFCCC24();
  (*(v89 + 8))(v41, v44);
  v102 = v34;
  v103 = v35;
  v104 = v30;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999B80, &unk_18AFD61D0);
  sub_18AE95F54(&qword_1EA999B88, &qword_1EA999B80, &unk_18AFD61D0, MEMORY[0x1E697E130]);
  v45 = v85;
  v46 = v76;
  sub_18AFCCA64();
  (*(v93 + 8))(v43, v46);
  v47 = v95;
  sub_18AEFA8D0(a1, v95);
  v48 = v96;
  sub_18AED2E98(v96);
  v49 = v67;
  v50 = v73;
  v51 = v101;
  v52 = v72;
  v53 = v74;
  sub_18AFCCAB4();
  sub_18AED8AD4(v48);
  (*(v97 + 8))(v47, v98);
  (*(v94 + 8))(v45, v50);
  sub_18AED2E98(v48);
  v107 = v50;
  v108 = v51;
  v109 = v52;
  v110 = v53;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v55 = v70;
  v56 = OpaqueTypeMetadata2;
  sub_18AFCCAC4();
  sub_18AED8AD4(v48);
  (*(v80 + 8))(v49, v56);
  v57 = sub_18AE95F54(&qword_1EA998BB8, &qword_1EA998B70, &qword_18AFD2FA8, MEMORY[0x1E697FD58]);
  v105 = OpaqueTypeConformance2;
  v106 = v57;
  v58 = v79;
  swift_getWitnessTable();
  v59 = v77;
  sub_18AEADA5C();
  v60 = *(v81 + 8);
  v60(v55, v58);
  sub_18AEADA5C();
  return (v60)(v59, v58);
}

uint64_t sub_18AEFB948@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BC8, &qword_18AFD8610);
  MEMORY[0x1EEE9AC00](v35);
  v9 = &v33[-v8];
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ResolvedButtonBorderShape(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for MacGlassButton(0, a2, a3, v17);
  sub_18AED2E98(v16);
  v34 = *(a1 + *(v18 + 48));
  v19 = *(a1 + *(v18 + 64));
  v20 = *a1;
  if (*(a1 + 8) != 1)
  {

    sub_18AFCE024();
    v21 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v20, 0);
    (*(v11 + 8))(v13, v10);
    LOBYTE(v20) = v36;
  }

  if ((v19 - 1) > 1)
  {
    v36 = sub_18AFCCD74();
    v24 = sub_18AFCBCD4();
    v22 = v34;
  }

  else
  {
    v22 = v34;
    if (v20)
    {
      v23 = 1.0;
      if (v34 == 1)
      {
        v23 = 0.5;
      }

      *&v36 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9997B0, &unk_18AFD5788);
      sub_18AE95F54(&qword_1EA9997B8, &qword_1EA9997B0, &unk_18AFD5788, MEMORY[0x1E697F5B8]);
    }

    else
    {
      LODWORD(v36) = sub_18AFCC6B4();
    }

    v24 = sub_18AFCBCD4();
  }

  sub_18AE7AF04(v16, v9, type metadata accessor for ResolvedButtonBorderShape);
  v25 = v35;
  *&v9[*(v35 + 52)] = v24;
  *&v9[*(v25 + 56)] = 256;
  sub_18AE7AF04(v9, a4, type metadata accessor for ResolvedButtonBorderShape);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999B90, &qword_18AFD61E0);
  *(a4 + *(v26 + 52)) = v22;
  *(a4 + *(v26 + 56)) = 256;
  v27 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999B98, &unk_18AFD61E8) + 36);
  sub_18AE83A40(v9, v27, &qword_1EA998BC8, &qword_18AFD8610);
  v28 = sub_18AFCDB44();
  v30 = v29;
  sub_18AE7BA80(v9, &qword_1EA998BC8, &qword_18AFD8610);
  sub_18AED8AD4(v16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998BE0, &qword_18AFD2FE0);
  v32 = (v27 + *(result + 36));
  *v32 = v28;
  v32[1] = v30;
  return result;
}

uint64_t sub_18AEFBD60@<X0>(uint64_t *a4@<X8>)
{
  v6 = *v4;
  if (v6 < 2)
  {
    sub_18AFCCD74();
  }

  else if (v6 - 3 >= 2)
  {
    sub_18AFCC6D4();
  }

  else
  {
    sub_18AFCC6B4();
  }

  result = sub_18AFCBCD4();
  *a4 = result;
  return result;
}

uint64_t sub_18AEFBDEC@<X0>(_DWORD *a1@<X8>)
{
  v4 = *v2;
  v5 = sub_18AFCC274();
  if ((v4 - 2) < 3)
  {
    goto LABEL_2;
  }

  if (v4)
  {
    if ((v5 & 1) == 0)
    {
      result = sub_18AFCC6B4();
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if ((v5 & 1) == 0)
  {
LABEL_7:
    result = sub_18AFCC6E4();
    goto LABEL_9;
  }

LABEL_2:
  result = sub_18AFCC6C4();
LABEL_9:
  *a1 = result;
  return result;
}

uint64_t sub_18AEFBE54@<X0>(uint64_t *a1@<X8>)
{
  sub_18AEFC1EC();
  sub_18AEFC240();
  sub_18AFCCF74();
  sub_18AFCCDA4();

  v2 = sub_18AFCCF34();

  *a1 = v2;
  return result;
}

uint64_t sub_18AEFBEEC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = (v5 != 0) & sub_18AFCC274();
  if (v4 == 1)
  {
    LOBYTE(v7) = 0;
  }

  if ((v7 & 1) != 0 || (v6 - 1) <= 1)
  {
    sub_18AEF0E90();
  }

  else
  {
    sub_18AEF0DE4();
  }

  result = sub_18AFCBCD4();
  *a1 = result;
  return result;
}

uint64_t sub_18AEFBFF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for InteractionState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for InteractionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_18AEFC1EC()
{
  result = qword_1EA999BA0;
  if (!qword_1EA999BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BA0);
  }

  return result;
}

unint64_t sub_18AEFC240()
{
  result = qword_1EA999BA8;
  if (!qword_1EA999BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BA8);
  }

  return result;
}

uint64_t TextFieldDisclosureButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

uint64_t sub_18AEFC32C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 25) = v3;
  return result;
}

uint64_t sub_18AEFC3C4@<X0>(uint64_t a2@<X8>)
{
  result = sub_18AFCCD24();
  *a2 = 256;
  *(a2 + 8) = 0x4000000000000000;
  *(a2 + 16) = result;
  *(a2 + 24) = 256;
  return result;
}

double sub_18AEFC3FC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_18AFCDB44();
  v5 = v4;
  sub_18AEFC3C4(v12);
  v6 = v12[0];
  v7 = v12[1];
  result = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 17) = v7;
  *(a2 + 24) = result;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 41) = v11;
  return result;
}

uint64_t sub_18AEFC4C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxY(v9);
  sub_18AFCC9D4();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxX(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinY(v11);
  return sub_18AFCC9E4();
}

double sub_18AEFC570@<D0>(uint64_t a1@<X8>)
{
  sub_18AFCCA14();
  sub_18AFCBB94();
  sub_18AFCC9B4();
  sub_18AEFC884(v9);
  sub_18AEACD6C(v8);
  result = *&v10;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  *(a1 + 32) = v12;
  return result;
}

void (*sub_18AEFC62C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AEFC6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFC8D8();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AEFC718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFC8D8();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AEFC77C(uint64_t a1)
{
  v2 = sub_18AEFC8D8();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_18AEFC7CC()
{
  result = qword_1EA999BD0;
  if (!qword_1EA999BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BD0);
  }

  return result;
}

unint64_t sub_18AEFC824()
{
  result = qword_1EA999BD8;
  if (!qword_1EA999BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BD8);
  }

  return result;
}

unint64_t sub_18AEFC8D8()
{
  result = qword_1EA999BE0;
  if (!qword_1EA999BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BE0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_18AEFC940(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_18AEFC988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18AEFC9F8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = sub_18AFCDB44();
  v9 = v8;
  if (v4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 1.0;
  }

  if (v4)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  result = sub_18AFCCDA4();
  v13 = 0.5;
  *a2 = v7;
  *(a2 + 8) = v9;
  if (v6 != 1)
  {
    v13 = 1.0;
  }

  *(a2 + 16) = v5;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = result;
  *(a2 + 48) = v13;
  return result;
}

unint64_t sub_18AEFCA98()
{
  result = qword_1EA999BE8;
  if (!qword_1EA999BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999BF0, &qword_18AFD6890);
    sub_18AEFCB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BE8);
  }

  return result;
}

unint64_t sub_18AEFCB24()
{
  result = qword_1EA999BF8;
  if (!qword_1EA999BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999C00, &qword_18AFD6898);
    sub_18AEFCBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999BF8);
  }

  return result;
}

unint64_t sub_18AEFCBB0()
{
  result = qword_1EA999C08;
  if (!qword_1EA999C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999C10, &unk_18AFD68A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999C08);
  }

  return result;
}

uint64_t sub_18AEFCC40@<X0>(uint64_t a4@<X8>)
{
  v6 = sub_18AFCCD64();
  v7 = sub_18AFCCD94();
  v8 = sub_18AFCC844();
  sub_18AFCBAA4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_18AFCCD94();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v36[3] = *&v36[27];
  *&v36[11] = *&v36[35];
  *&v36[19] = v37;
  *&v38 = v7;
  WORD4(v38) = 256;
  LOBYTE(v39) = v8;
  *(&v39 + 1) = v10;
  *v40 = v12;
  *&v40[8] = v14;
  *&v40[16] = v16;
  v40[24] = 0;
  *(&v35[2] + 15) = *&v40[9];
  *(&v35[2] + 6) = *v40;
  *(&v35[1] + 6) = v39;
  *(v35 + 6) = v38;
  *v41 = v17;
  *&v41[8] = 256;
  v18 = *&v36[8];
  *&v41[10] = *v36;
  *&v41[56] = *(&v37 + 1);
  *&v41[42] = *&v36[16];
  v19 = *v36;
  *&v41[26] = *&v36[8];
  *&v34[55] = *&v41[48];
  *&v34[39] = *&v41[32];
  *&v34[23] = *&v41[16];
  *&v34[7] = *v41;
  v20 = v35[0];
  v21 = v35[1];
  *(a4 + 57) = *(&v35[2] + 15);
  *(a4 + 42) = v35[2];
  *(a4 + 26) = v21;
  *(a4 + 10) = v20;
  v22 = *&v34[16];
  *(a4 + 73) = *v34;
  v23 = *&v34[32];
  v24 = *&v34[48];
  *(a4 + 136) = *&v34[63];
  *(a4 + 121) = v24;
  *a4 = v6;
  *(a4 + 8) = 256;
  *(a4 + 105) = v23;
  *(a4 + 89) = v22;
  v42 = v17;
  v43 = 256;
  *&v46[14] = *&v36[23];
  *v46 = *&v36[16];
  v45 = v18;
  v44 = v19;

  sub_18AE83A40(&v38, &v26, &qword_1EA999C20, &qword_18AFD6958);
  sub_18AE83A40(v41, &v26, &qword_1EA999C28, &qword_18AFD6960);
  sub_18AE7BA80(&v42, &qword_1EA999C28, &qword_18AFD6960);
  v26 = v7;
  v27 = 256;
  v28 = v8;
  v29 = v10;
  v30 = v12;
  v31 = v14;
  v32 = v16;
  v33 = 0;
  sub_18AE7BA80(&v26, &qword_1EA999C20, &qword_18AFD6958);
}

__n128 sub_18AEFCE90@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_18AFCDB64();
  v5 = v4;
  sub_18AEFCC40(&v11);
  v26 = v17;
  v27 = v18;
  v28 = v19;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v20 = v11;
  v21 = v12;
  v29[6] = v17;
  v29[7] = v18;
  v29[8] = v19;
  v29[2] = v13;
  v29[3] = v14;
  v29[4] = v15;
  v29[5] = v16;
  v29[0] = v11;
  v29[1] = v12;
  sub_18AE83A40(&v20, &v10, &qword_1EA999C18, &qword_18AFD6950);
  sub_18AE7BA80(v29, &qword_1EA999C18, &qword_18AFD6950);
  *a1 = v3;
  *(a1 + 8) = v5;
  v6 = v27;
  *(a1 + 112) = v26;
  *(a1 + 128) = v6;
  *(a1 + 144) = v28;
  v7 = v23;
  *(a1 + 48) = v22;
  *(a1 + 64) = v7;
  v8 = v25;
  *(a1 + 80) = v24;
  *(a1 + 96) = v8;
  result = v21;
  *(a1 + 16) = v20;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18AEFCFF0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxY(v9);
  sub_18AFCC9D4();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxX(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMaxY(v11);
  sub_18AFCC9E4();
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxX(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMinY(v13);
  sub_18AFCC9E4();
  return sub_18AFCC9C4();
}

double sub_18AEFD0D4@<D0>(uint64_t a1@<X8>)
{
  sub_18AFCCA14();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_18AEFD138(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AEFD1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFD390();

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AEFD224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AEFD390();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AEFD288(uint64_t a1)
{
  v2 = sub_18AEFD390();

  return MEMORY[0x1EEDE4410](a1, v2);
}

unint64_t sub_18AEFD2D8()
{
  result = qword_1EA999C50;
  if (!qword_1EA999C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999C50);
  }

  return result;
}

unint64_t sub_18AEFD330()
{
  result = qword_1EA999C58;
  if (!qword_1EA999C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999C58);
  }

  return result;
}

unint64_t sub_18AEFD390()
{
  result = qword_1EA999C60[0];
  if (!qword_1EA999C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA999C60);
  }

  return result;
}

void sub_18AEFD3E4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_18AED5A58(319);
      if (v3 <= 0x3F)
      {
        sub_18AEB31C4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AEFD4DC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v32 = *(a3 + 24);
  v33 = *(a3 + 16);
  v5 = *(v33 - 8);
  v6 = *(v5 + 84);
  v7 = *(v32 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_18AFCC5C4();
  v12 = *(*(v11 - 8) + 64);
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v10 >= a2)
  {
    goto LABEL_36;
  }

  v16 = *(*(v11 - 8) + 80) & 0xF8 | 7;
  v17 = ((v12 + ((((v14 + v15 + ((v13 + 18) & ~v13)) & ~v15) + *(v7 + 64) + v16) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v10 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_36;
      }
    }

    else
    {
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_36;
      }
    }

LABEL_29:
    v23 = v17 > 3;
    if (v17 <= 3)
    {
      v24 = (v21 - 1) << (8 * v17);
    }

    else
    {
      v24 = 0;
    }

    if (v23)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }

    return v10 + (v31 | v24) + 1;
  }

  if (v20)
  {
    v21 = a1[v17];
    if (a1[v17])
    {
      goto LABEL_29;
    }
  }

LABEL_36:
  v25 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v27 = (v25 + v13 + 10) & ~v13;
    if (v6 == v10)
    {
      v28 = *(v5 + 48);
      v29 = v6;
      v30 = v33;
    }

    else
    {
      v28 = *(v7 + 48);
      v27 = (v27 + v14 + v15) & ~v15;
      v29 = v8;
      v30 = v32;
    }

    return v28(v27, v29, v30);
  }

  else
  {
    v26 = *v25;
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }
}

void sub_18AEFD7E4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v31 = *(a4 + 24);
  v32 = *(a4 + 16);
  v6 = *(v32 - 8);
  v33 = v6;
  v7 = *(v6 + 84);
  v8 = *(v31 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_18AFCC5C4() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v8 + 80);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = ((v13 + ((((v15 + v16 + ((v14 + 18) & ~v14)) & ~v16) + *(v8 + 64) + v17) & ~v17) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v11 >= a3)
  {
    v21 = 0;
  }

  else
  {
    if (v18 <= 3)
    {
      v19 = ((a3 - v11 + 255) >> 8) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  if (v11 >= a2)
  {
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v18] = 0;
    }

    else if (v21)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_41:
      v24 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v26 = (v24 + v14 + 10) & ~v14;
        if (v7 == v11)
        {
          v27 = *(v33 + 56);
          v28 = a2;
          v29 = v7;
          v30 = v32;
        }

        else
        {
          v27 = *(v8 + 56);
          v26 = (v26 + v15 + v16) & ~v16;
          v28 = a2;
          v29 = v9;
          v30 = v31;
        }

        v27(v26, v28, v29, v30);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v25 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v25 = (a2 - 1);
        }

        *v24 = v25;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  v22 = ~v11 + a2;
  bzero(a1, v18);
  if (v18 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v18 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v18] = v23;
      }

      else
      {
        *&a1[v18] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v18] = v23;
  }
}

uint64_t sub_18AEFDB8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8, &qword_18AFD6B00);
  v18 = a1[2];
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0, &qword_18AFD6B08);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD1F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8, &qword_18AFD6B10);
  v17 = a1[3];
  sub_18AFCC044();
  v3 = sub_18AEFF30C();
  v16 = a1[5];
  v32 = v3;
  v33 = v16;
  swift_getWitnessTable();
  sub_18AFCC5F4();
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D48, &qword_18AFD6B38);
  sub_18AFCC044();
  sub_18AFCC044();
  WitnessTable = swift_getWitnessTable();
  v31 = MEMORY[0x1E697E5D8];
  v28 = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = sub_18AE95F54(&qword_1EA999D50, &qword_1EA999D48, &qword_18AFD6B38, MEMORY[0x1E6980CF8]);
  v24 = swift_getWitnessTable();
  v25 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  *&v11 = a1[4];
  *(&v11 + 1) = v16;
  *&v12 = v18;
  *(&v12 + 1) = v17;
  v21 = v12;
  v22 = v11;
  v23 = v19;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_18AEADA5C();
  return (v13)(v10, v4);
}

uint64_t sub_18AEFDF84@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a4;
  v53 = a1;
  v70 = a6;
  v69 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8, &qword_18AFD6B00);
  v11 = a2;
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0, &qword_18AFD6B08);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_18AFCD1F4();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v49 = sub_18AFCC044();
  v64 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v47 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8, &qword_18AFD6B10);
  v55 = sub_18AFCC044();
  v89 = sub_18AEFF30C();
  v90 = a5;
  v52 = MEMORY[0x1E697E858];
  v56 = swift_getWitnessTable();
  v58 = sub_18AFCC5F4();
  v50 = sub_18AFCC044();
  v63 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D48, &qword_18AFD6B38);
  v62 = sub_18AFCC044();
  v66 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v54 = &v47 - v17;
  v18 = sub_18AFCC044();
  v67 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v47 - v21;
  v22 = v11;
  v76 = v11;
  v77 = a3;
  v23 = a3;
  v24 = v59;
  v78 = v59;
  v79 = a5;
  v25 = v53;
  v80 = v53;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  v26 = swift_getWitnessTable();
  v27 = v51;
  sub_18AFCCC04();
  (*(v60 + 8))(v14, v12);
  v71 = v22;
  v72 = v23;
  v73 = v24;
  v74 = a5;
  v75 = v25;
  sub_18AFCDB44();
  v87 = v26;
  v88 = MEMORY[0x1E697E5D8];
  v28 = v49;
  v29 = swift_getWitnessTable();
  v30 = v48;
  sub_18AFCCA64();
  (*(v64 + 8))(v27, v28);
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_18AFCC534();
  v33 = v68;
  (*(*(v32 - 8) + 104))(v68, v31, v32);
  v34 = swift_getWitnessTable();
  v85 = v29;
  v86 = v34;
  v35 = v50;
  v36 = swift_getWitnessTable();
  sub_18AEFF568(v37);
  v38 = v54;
  sub_18AFCCB24();
  sub_18AEF0D88(v33, v39);
  (*(v63 + 8))(v30, v35);
  sub_18AFCDB44();
  v40 = sub_18AE95F54(&qword_1EA999D50, &qword_1EA999D48, &qword_18AFD6B38, MEMORY[0x1E6980CF8]);
  v83 = v36;
  v84 = v40;
  v45 = v62;
  v46 = swift_getWitnessTable();
  v41 = v61;
  sub_18AFCCBC4();
  (*(v66 + 8))(v38, v45);
  v81 = v46;
  v82 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v42 = v65;
  sub_18AEADA5C();
  v43 = *(v67 + 8);
  v43(v41, v18);
  sub_18AEADA5C();
  return (v43)(v42, v18);
}

uint64_t sub_18AEFE820@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a3;
  v31 = a5;
  v36 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8, &qword_18AFD6B00);
  v12 = sub_18AFCC044();
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v29 = &v29 - v17;
  v18 = a1[17];
  v19 = a1[1];
  *&v52 = *(a1 + 1);
  BYTE8(v52) = v18;
  *&v53 = 0x4008000000000000;
  BYTE8(v53) = v19;
  *(&v53 + 9) = 256;
  *&v56 = a2;
  *(&v56 + 1) = a3;
  *&v57 = a4;
  *(&v57 + 1) = a5;
  v20 = *(type metadata accessor for MacColorWellBasicEngineering(0, &v56) + 68);
  v21 = sub_18AEFF630();

  MEMORY[0x18CFEBFA0](&a1[v20], v11, a2, v21);

  v68 = v21;
  v69 = a4;
  v22 = v32;
  WitnessTable = swift_getWitnessTable();
  v23 = v29;
  sub_18AEADA5C();
  v24 = v33;
  v35 = *(v33 + 8);
  v35(v15, v22);
  v25 = sub_18AEFEC88(a1, a2, v30);
  sub_18AFCBB94();
  sub_18AFCDB44();
  sub_18AFCC194();
  v53 = v72;
  v54 = v73;
  *&v67[55] = v70[3];
  *&v67[71] = v70[4];
  *&v67[87] = v70[5];
  *&v67[103] = v71;
  *&v67[7] = v70[0];
  *&v67[23] = v70[1];
  *&v67[39] = v70[2];
  *(&v55[4] + 9) = *&v67[64];
  *(&v55[5] + 9) = *&v67[80];
  *(&v55[6] + 9) = *&v67[96];
  *(v55 + 9) = *v67;
  *(&v55[1] + 9) = *&v67[16];
  *(&v55[2] + 9) = *&v67[32];
  *&v55[0] = v74;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = v25;
  BYTE8(v55[0]) = 1;
  *(&v55[7] + 1) = *(&v71 + 1);
  *(&v55[3] + 9) = *&v67[48];
  v26 = v15;
  (*(v24 + 16))(v15, v23, v22);
  v48 = v55[5];
  v49 = v55[6];
  v50 = v55[7];
  v44 = v55[1];
  v45 = v55[2];
  v46 = v55[3];
  v47 = v55[4];
  v40 = v52;
  v41 = v53;
  v42 = v54;
  v43 = v55[0];
  v51[0] = v15;
  v51[1] = &v40;
  sub_18AE83A40(&v52, &v56, &qword_1EA999CF0, &qword_18AFD6B08);
  v39[0] = v22;
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999CF0, &qword_18AFD6B08);
  v37 = WitnessTable;
  v38 = sub_18AEFF73C();
  sub_18AEB70B8(v51, 2uLL, v39);
  sub_18AE7BA80(&v52, &qword_1EA999CF0, &qword_18AFD6B08);
  v27 = v35;
  v35(v23, v22);
  v64 = v48;
  v65 = v49;
  v66 = v50;
  v60 = v44;
  v61 = v45;
  v62 = v46;
  v63 = v47;
  v56 = v40;
  v57 = v41;
  v58 = v42;
  v59 = v43;
  sub_18AE7BA80(&v56, &qword_1EA999CF0, &qword_18AFD6B08);
  return v27(v26, v22);
}

uint64_t sub_18AEFEC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18AFCCD64();
  sub_18AFCCDA4();

  return sub_18AFCBCD4();
}

uint64_t sub_18AEFED00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a2;
  v59 = a4;
  v60 = a6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D60, &unk_18AFD6B40);
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v45 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D30, &qword_18AFD87B0);
  MEMORY[0x1EEE9AC00](v55);
  v47 = &v45 - v11;
  v46 = sub_18AFCC474();
  v12 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999CF8, &qword_18AFD6B10);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v51 = &v45 - v18;
  v53 = v19;
  v20 = sub_18AFCC044();
  v56 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v54 = &v45 - v23;
  v24 = *(a1 + 1);
  v25 = *(a1 + 16);
  v26 = v59;
  *&v82 = v58;
  *(&v82 + 1) = a3;
  v58 = a3;
  v59 = a5;
  *&v83 = v26;
  *(&v83 + 1) = a5;
  v48 = type metadata accessor for MacColorWellBasicEngineering(0, &v82);
  v27 = *(v48 + 80);
  v57 = a1;
  v28 = a1 + v27;
  v29 = *v28;
  if (*(v28 + 8) != 1)
  {

    sub_18AFCE024();
    v30 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v29, 0);
    (*(v12 + 8))(v14, v46);
    LOBYTE(v29) = v82;
  }

  v31 = v49;
  if (v25 && (v29 & 1) != 0)
  {
    v32 = v47;
    sub_18AF1B7E4(v24, 1, v47);
    sub_18AE83A40(v32, v10, &qword_1EA999D30, &qword_18AFD87B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D10, &qword_18AFD6B18);
    sub_18AEFF398();
    sub_18AEFF450();
    sub_18AFCC614();
    sub_18AE7BA80(v32, &qword_1EA999D30, &qword_18AFD87B0);
  }

  else
  {
    sub_18AF1CF5C(v24, v25 != 0, &v64);
    v79 = v70;
    v80 = v71;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    v73 = v64;
    v74 = v65;
    v88 = v70;
    v89 = v71;
    v84 = v66;
    v85 = v67;
    v86 = v68;
    v87 = v69;
    v81 = v72;
    v90 = v72;
    v82 = v64;
    v83 = v65;
    sub_18AE83A40(&v73, &v63, &qword_1EA999D10, &qword_18AFD6B18);
    sub_18AE7BA80(&v82, &qword_1EA999D10, &qword_18AFD6B18);
    v33 = v80;
    *(v10 + 6) = v79;
    *(v10 + 7) = v33;
    *(v10 + 16) = v81;
    v34 = v76;
    *(v10 + 2) = v75;
    *(v10 + 3) = v34;
    v35 = v78;
    *(v10 + 4) = v77;
    *(v10 + 5) = v35;
    v36 = v74;
    *v10 = v73;
    *(v10 + 1) = v36;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999D10, &qword_18AFD6B18);
    sub_18AEFF398();
    sub_18AEFF450();
    sub_18AFCC614();
  }

  v37 = v31;
  v38 = v51;
  sub_18AEFF5C0(v37, v51);
  v39 = *(v48 + 72);
  v40 = sub_18AEFF30C();
  v41 = v52;
  MEMORY[0x18CFEBFA0](v57 + v39, v53, v58, v40);
  sub_18AE7BA80(v38, &qword_1EA999CF8, &qword_18AFD6B10);
  v61 = v40;
  v62 = v59;
  swift_getWitnessTable();
  v42 = v54;
  sub_18AEADA5C();
  v43 = *(v56 + 8);
  v43(v41, v20);
  sub_18AEADA5C();
  return (v43)(v42, v20);
}

unint64_t sub_18AEFF30C()
{
  result = qword_1EA999D00;
  if (!qword_1EA999D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF8, &qword_18AFD6B10);
    sub_18AEFF398();
    sub_18AEFF450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D00);
  }

  return result;
}

unint64_t sub_18AEFF398()
{
  result = qword_1EA999D08;
  if (!qword_1EA999D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D10, &qword_18AFD6B18);
    sub_18AE95F54(&qword_1EA999D18, &qword_1EA999D20, &unk_18AFD6B20, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D08);
  }

  return result;
}

unint64_t sub_18AEFF450()
{
  result = qword_1EA999D28;
  if (!qword_1EA999D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999D30, &qword_18AFD87B0);
    sub_18AE95F54(&qword_1EA999D38, &qword_1EA999D40, &qword_18AFD6B30, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D28);
  }

  return result;
}

unint64_t sub_18AEFF568(__n128 a1)
{
  result = qword_1EA999D58;
  if (!qword_1EA999D58)
  {
    sub_18AFCD4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D58);
  }

  return result;
}

uint64_t sub_18AEFF5C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999CF8, &qword_18AFD6B10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AEFF630()
{
  result = qword_1EA999D68;
  if (!qword_1EA999D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CE8, &qword_18AFD6B00);
    sub_18AEFF6E8();
    sub_18AE95F54(&qword_1EA999118, &qword_1EA9990D8, &qword_18AFD42C0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D68);
  }

  return result;
}

unint64_t sub_18AEFF6E8()
{
  result = qword_1EA999D70;
  if (!qword_1EA999D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D70);
  }

  return result;
}

unint64_t sub_18AEFF73C()
{
  result = qword_1EA999D78;
  if (!qword_1EA999D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999CF0, &qword_18AFD6B08);
    sub_18AE95F54(&qword_1EA999D80, &qword_1EA999D88, &unk_18AFD6B50, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999D78);
  }

  return result;
}

uint64_t type metadata accessor for MacColorWellButtonEngineering(uint64_t a1)
{
  result = qword_1EA999D90;
  if (!qword_1EA999D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AEFF868(uint64_t a1)
{
  sub_18AED5A58(319);
  if (v1 <= 0x3F)
  {
    sub_18AEB31C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18AEFF934@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = sub_18AFCCCF4();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v76 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998FF8, &qword_18AFD6C60);
  v6 = (v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DB0, &qword_18AFD6C68);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DB8, &qword_18AFD6C70);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v73 - v20;
  v21 = *(a1 + 1);
  v22 = *(sub_18AFCC184() + 20);
  v23 = *MEMORY[0x1E697F468];
  v24 = sub_18AFCC534();
  (*(*(v24 - 8) + 104))(&v8[v22], v23, v24);
  *v8 = v21;
  *(v8 + 1) = v21;
  v25 = a1[1] == 0;
  v26 = a1[2];
  v8[v6[11]] = v26;
  v8[v6[12]] = 0;
  v27 = !v25;
  v8[v6[13]] = v27;
  v28 = &v8[v6[14]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v8, v12, &qword_1EA998FF8, &qword_18AFD6C60);
  v29 = &v12[*(v10 + 44)];
  v30 = v121;
  *v29 = v120;
  *(v29 + 1) = v30;
  *(v29 + 2) = v122;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v12, v18, &qword_1EA999DB0, &qword_18AFD6C68);
  v31 = &v18[*(v14 + 44)];
  v32 = v128;
  *(v31 + 4) = v127;
  *(v31 + 5) = v32;
  *(v31 + 6) = v129;
  v33 = v124;
  *v31 = v123;
  *(v31 + 1) = v33;
  v34 = v126;
  *(v31 + 2) = v125;
  *(v31 + 3) = v34;
  v35 = v74;
  sub_18AE9A768(v18, v74, &qword_1EA999DB8, &qword_18AFD6C70);
  v75 = sub_18AEF41CC(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998990, &qword_18AFD2B48);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_18AFCEB10;
  v37 = *MEMORY[0x1E69814D8];
  v38 = v76;
  v39 = *(v77 + 104);
  v40 = v78;
  v39(v76, v37, v78);
  sub_18AFCCF44();
  *(v36 + 32) = sub_18AFCD4F4();
  *(v36 + 40) = v41;
  v39(v38, v37, v40);
  sub_18AFCCF44();
  *(v36 + 48) = sub_18AFCD4F4();
  *(v36 + 56) = v42;
  sub_18AFCD504();
  sub_18AFCDD04();
  sub_18AFCBEB4();
  v43 = v130;
  v44 = v131;
  v45 = v132;
  v46 = v133;
  v47 = v134;
  v48 = sub_18AFCDB44();
  v50 = v49;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  LOBYTE(v37) = sub_18AFCC854();
  sub_18AFCBAA4();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v118 = 0;
  v59 = v80;
  sub_18AE83A40(v35, v80, &qword_1EA999DB8, &qword_18AFD6C70);
  v60 = v59;
  v61 = v79;
  sub_18AE83A40(v60, v79, &qword_1EA999DB8, &qword_18AFD6C70);
  v62 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DC0, &qword_18AFD6CB0) + 48));
  *&v84 = v43;
  *(&v84 + 1) = v44;
  *&v85 = v45;
  *(&v85 + 1) = v46;
  *&v86 = v47;
  WORD4(v86) = 256;
  *(&v86 + 10) = v116;
  HIWORD(v86) = v117;
  v63 = v75;
  *&v87 = v75;
  WORD4(v87) = 256;
  *(&v87 + 10) = v114;
  HIWORD(v87) = v115;
  *&v88 = v48;
  *(&v88 + 1) = v50;
  v65 = v82;
  v64 = v83;
  v90 = v82;
  v91 = v83;
  v66 = v81;
  v89 = v81;
  LOBYTE(v92) = v37;
  DWORD1(v92) = *&v119[3];
  *(&v92 + 1) = *v119;
  *(&v92 + 1) = v52;
  *&v93[0] = v54;
  *(&v93[0] + 1) = v56;
  *&v93[1] = v58;
  BYTE8(v93[1]) = 0;
  v67 = v85;
  *v62 = v84;
  v62[1] = v67;
  v68 = v86;
  v69 = v87;
  v62[4] = v88;
  v62[5] = v66;
  v62[2] = v68;
  v62[3] = v69;
  v71 = v92;
  v70 = v93[0];
  *(v62 + 153) = *(v93 + 9);
  v62[8] = v71;
  v62[9] = v70;
  v62[6] = v65;
  v62[7] = v64;
  sub_18AE83A40(&v84, v94, &qword_1EA999DC8, &qword_18AFD6CB8);
  sub_18AE7BA80(v35, &qword_1EA999DB8, &qword_18AFD6C70);
  v94[0] = v43;
  v94[1] = v44;
  v94[2] = v45;
  v94[3] = v46;
  v94[4] = v47;
  v95 = 256;
  v96 = v116;
  v97 = v117;
  v98 = v63;
  v99 = 256;
  v100 = v114;
  v101 = v115;
  v102 = v48;
  v103 = v50;
  v105 = v82;
  v106 = v83;
  v104 = v81;
  v107 = v37;
  *&v108[3] = *&v119[3];
  *v108 = *v119;
  v109 = v52;
  v110 = v54;
  v111 = v56;
  v112 = v58;
  v113 = 0;
  sub_18AE7BA80(v94, &qword_1EA999DC8, &qword_18AFD6CB8);
  return sub_18AE7BA80(v80, &qword_1EA999DB8, &qword_18AFD6C70);
}

uint64_t sub_18AF00060@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_18AFCDB44();
  a2[1] = v4;
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DA0, &qword_18AFD6C50) + 44));
  *v5 = sub_18AFCDB44();
  v5[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999DA8, &qword_18AFD6C58);
  return sub_18AEFF934(v2, v5 + *(v7 + 44));
}

unint64_t sub_18AF000D0()
{
  result = qword_1EA999DD0;
  if (!qword_1EA999DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA999DD8, &unk_18AFD6CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999DD0);
  }

  return result;
}

void sub_18AF00134(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_18AED5A58(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18AF00214(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 24);
  v30 = *(a3 + 16);
  v5 = *(v30 - 8);
  v6 = *(v5 + 84);
  v7 = *(v29 - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_18AFCC5C4();
  v12 = *(*(v11 - 8) + 64);
  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v10)
  {
    goto LABEL_31;
  }

  v16 = *(*(v11 - 8) + 80) & 0xF8 | 7;
  v17 = v12 + ((((v14 + v15 + ((v13 + 18) & ~v13)) & ~v15) + *(v7 + 64) + v16) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v10 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v21 < 2)
    {
LABEL_31:
      v23 = ((a1 + 5) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v25 = (v23 + v13 + 10) & ~v13;
        if (v6 == v10)
        {
          v26 = *(v5 + 48);
          v27 = v6;
          v28 = v30;
        }

        else
        {
          v26 = *(v7 + 48);
          v25 = (v25 + v14 + v15) & ~v15;
          v27 = v8;
          v28 = v29;
        }

        return v26(v25, v27, v28);
      }

      else
      {
        v24 = *v23;
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_31;
  }

LABEL_20:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return v10 + (v17 | v22) + 1;
}