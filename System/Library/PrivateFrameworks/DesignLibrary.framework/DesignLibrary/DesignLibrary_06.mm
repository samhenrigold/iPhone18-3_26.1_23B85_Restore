void sub_18AF00544(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 24);
  v7 = *(*(a4 + 16) - 8);
  v34 = v7;
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  v33 = *(v7 + 84);
  if (v33 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
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

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v8 + 80);
  v17 = *(v12 + 80) & 0xF8 | 7;
  v18 = v13 + ((((v15 + v16 + ((v14 + 18) & ~v14)) & ~v16) + *(v8 + 64) + v17) & ~v17) + 1;
  if (a3 <= v11)
  {
    v20 = 0;
    v19 = a1;
  }

  else
  {
    v19 = a1;
    if (v18 <= 3)
    {
      v23 = ((a3 - v11 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v23))
      {
        v20 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v20 = v24;
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  if (v11 < a2)
  {
    v21 = ~v11 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> (8 * v18)) + 1;
      if (v18)
      {
        v25 = v21 & ~(-1 << (8 * v18));
        bzero(v19, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v19 = v25;
            if (v20 > 1)
            {
LABEL_57:
              if (v20 == 2)
              {
                *&v19[v18] = v22;
              }

              else
              {
                *&v19[v18] = v22;
              }

              return;
            }
          }

          else
          {
            *v19 = v21;
            if (v20 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *v19 = v25;
        v19[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(v19, v18);
      *v19 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v20)
    {
      v19[v18] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&v19[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&v19[v18] = 0;
  }

  else if (v20)
  {
    v19[v18] = 0;
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
  v26 = ((v19 + 10) & 0xFFFFFFFFFFFFFFF8);
  if ((v10 & 0x80000000) != 0)
  {
    v28 = (v26 + v14 + 10) & ~v14;
    if (v33 == v11)
    {
      v29 = *(v34 + 56);

      v29(v28, a2);
    }

    else
    {
      v30 = *(v8 + 56);
      v31 = (v28 + v15 + v16) & ~v16;

      v30(v31, a2, v9, v32);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v27 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v27 = (a2 - 1);
    }

    *v26 = v27;
  }
}

double sub_18AF00968()
{
  v1 = *v0;
  result = 4.0;
  if (v1 > 3)
  {
    if (*v0 > 5u)
    {
      if (v1 != 6)
      {
        return 5.0;
      }
    }

    else if (v1 == 4)
    {
      return 9.0;
    }

    else
    {
      return 3.25;
    }
  }

  else if (*v0 > 1u)
  {
    result = 7.0;
    if (v1 == 2)
    {
      return 6.0;
    }
  }

  else if (*v0)
  {
    return 5.0;
  }

  return result;
}

uint64_t sub_18AF009D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999E60, &unk_18AFD6DD0);
  v4 = *(a1 + 16);
  sub_18AFCC044();
  type metadata accessor for MacColorWellButtonEngineering(255);
  v5 = *(a1 + 24);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  sub_18AFCD134();
  sub_18AFCC044();
  WitnessTable = swift_getWitnessTable();
  v19 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  v6 = sub_18AFCD1F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v15[4] = v4;
  v15[5] = v5;
  v16 = *(a1 + 32);
  v17 = v2;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_18AEADA5C();
  return (v13)(v12, v6);
}

uint64_t sub_18AF00C74@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v22 = a4;
  v26 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999E60, &unk_18AFD6DD0);
  sub_18AFCC044();
  type metadata accessor for MacColorWellButtonEngineering(255);
  sub_18AFCC044();
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v9 = sub_18AFCD134();
  v23 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = sub_18AFCC044();
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v27 = a2;
  v28 = a3;
  v29 = v22;
  v30 = v24;
  v31 = a1;
  sub_18AFCC504();
  sub_18AFCD124();
  sub_18AFCDB44();
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCBC4();
  (*(v23 + 8))(v11, v9);
  v32 = WitnessTable;
  v33 = MEMORY[0x1E697EBF8];
  swift_getWitnessTable();
  sub_18AEADA5C();
  v18 = *(v25 + 8);
  v18(v14, v12);
  sub_18AEADA5C();
  return (v18)(v17, v12);
}

uint64_t sub_18AF00FF8@<X0>(char *a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a6;
  v60 = type metadata accessor for MacColorWellButtonEngineering(0);
  MEMORY[0x1EEE9AC00](v60);
  v12 = (&v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_18AFCC044();
  v14 = *(v13 - 8);
  v63 = v13;
  v64 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999E60, &unk_18AFD6DD0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v53 - v19);
  v56 = a2;
  v21 = sub_18AFCC044();
  v67 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v66 = &v53 - v25;
  *v20 = sub_18AFCDB44();
  v20[1] = v26;
  v27 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999E68, &qword_18AFD7020) + 44));
  v58 = a3;
  v57 = a4;
  v59 = a5;
  sub_18AF015FC(a1, a2, a3, a4, a5, v27);
  v71 = a2;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v28 = type metadata accessor for MacColorWellExpandedEngineering(0, &v71);
  v29 = sub_18AF00968();
  v30 = (v20 + *(v18 + 36));
  v31 = *(sub_18AFCC184() + 20);
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_18AFCC534();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = v29;
  v30[1] = v29;
  *(v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999E70, &unk_18AFD6DE0) + 36)) = 256;
  v34 = *(v28 + 72);
  v35 = sub_18AF02098();
  MEMORY[0x18CFEBFA0](&a1[v34], v18, v56, v35);
  sub_18AE7BA80(v20, &qword_1EA999E60, &unk_18AFD6DD0);
  v70[4] = v35;
  v70[5] = v57;
  v54 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C();
  v56 = *(v67 + 8);
  v57 = v67 + 8;
  v56(v23, v21);
  LOBYTE(v31) = *a1;
  LOBYTE(v35) = a1[16];
  LOBYTE(v18) = a1[2];
  v36 = sub_18AF00968();
  *v12 = v31;
  *(v12 + 1) = v35;
  *(v12 + 2) = v18;
  v12[1] = v36;
  v37 = v60;
  v38 = *(v60 + 32);
  *(v12 + v38) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v39 = v12 + *(v37 + 36);
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  v40 = *(v28 + 76);
  v41 = sub_18AF0217C();
  v42 = &a1[v40];
  v43 = v61;
  MEMORY[0x18CFEBFA0](v42, v37, v58, v41);
  sub_18AF021D4(v12);
  v70[2] = v41;
  v70[3] = v59;
  v44 = v63;
  v45 = swift_getWitnessTable();
  v46 = v62;
  sub_18AEADA5C();
  v47 = v64;
  v48 = *(v64 + 8);
  v48(v43, v44);
  v49 = v66;
  v50 = v54;
  (*(v67 + 16))(v23, v66, v54);
  v71 = v23;
  (*(v47 + 16))(v43, v46, v44);
  v72 = v43;
  v70[0] = v50;
  v70[1] = v44;
  v68 = WitnessTable;
  v69 = v45;
  sub_18AEB70B8(&v71, 2uLL, v70);
  v48(v46, v44);
  v51 = v56;
  v56(v49, v50);
  v48(v43, v44);
  return (v51)(v23, v50);
}

uint64_t sub_18AF015FC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v94 = a6;
  *&v95 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EA0, &qword_18AFD6E58);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v82 = &v78 - v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EA8, &qword_18AFD6E60) - 8;
  MEMORY[0x1EEE9AC00](v85);
  v81 = &v78 - v13;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EB0, &qword_18AFD6E68);
  MEMORY[0x1EEE9AC00](v90);
  v91 = &v78 - v14;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EB8, &qword_18AFD6E70);
  MEMORY[0x1EEE9AC00](v88);
  v93 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v78 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EC0, &qword_18AFD6E78);
  v21 = (v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v78 - v22);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EC8, &qword_18AFD6E80) - 8;
  MEMORY[0x1EEE9AC00](v80);
  v89 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v79 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v78 - v28;
  v29 = *(a1 + 1);
  v84 = a1[17];
  *&v96 = a2;
  *&v108 = a2;
  *(&v108 + 1) = a3;
  v30 = a4;
  *&v109 = a4;
  *(&v109 + 1) = a5;
  type metadata accessor for MacColorWellExpandedEngineering(0, &v108);
  v31 = sub_18AF00968();
  v83 = a1[1];
  v32 = sub_18AF00968();
  v33 = *(sub_18AFCC184() + 20);
  v34 = *MEMORY[0x1E697F468];
  v35 = sub_18AFCC534();
  (*(*(v35 - 8) + 104))(v23 + v33, v34, v35);
  *v23 = v32;
  v23[1] = v32;
  v87 = v29;
  v36 = a1;

  v37 = a2;
  v38 = v30;
  v39 = sub_18AEFEC88(a1, v37, v95);
  v40 = 1.0;
  sub_18AFCBB94();
  *(v23 + v21[20]) = v39;
  *(v23 + v21[19]) = 0;
  v41 = v23 + v21[21];
  v42 = v99;
  *v41 = v98;
  *(v41 + 1) = v42;
  *(v41 + 4) = v100;
  *(v23 + v21[22]) = 1;
  sub_18AFCDB44();
  sub_18AFCC194();
  v43 = v79;
  sub_18AE9A768(v23, v79, &qword_1EA999EC0, &qword_18AFD6E78);
  v44 = (v43 + *(v80 + 44));
  v45 = v106;
  v44[4] = v105;
  v44[5] = v45;
  v44[6] = v107;
  v46 = v102;
  *v44 = v101;
  v44[1] = v46;
  v47 = v104;
  v44[2] = v103;
  v44[3] = v47;
  sub_18AE9A768(v43, v97, &qword_1EA999EC8, &qword_18AFD6E80);
  v48 = sub_18AFCCFA4();
  v78 = v38;
  v49 = sub_18AF01E48(a1);
  KeyPath = swift_getKeyPath();
  *&v108 = v48;
  *(&v108 + 1) = KeyPath;
  *&v109 = v49;
  sub_18AF01FF8(v36, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C90, &unk_18AFD35F8);
  sub_18AED9BF8();
  v52 = v82;
  sub_18AFCCA74();

  v53 = v81;

  sub_18AFCDB64();
  sub_18AFCC194();
  sub_18AE9A768(v52, v53, &qword_1EA999EA0, &qword_18AFD6E58);
  v54 = (v53 + *(v85 + 44));
  v55 = v113;
  v54[4] = v112;
  v54[5] = v55;
  v54[6] = v114;
  v56 = v109;
  *v54 = v108;
  v54[1] = v56;
  v57 = v111;
  v54[2] = v110;
  v54[3] = v57;
  v58 = sub_18AFCC844();
  sub_18AF02034(v36);
  v60 = v59;
  v61 = 0uLL;
  v62 = 0uLL;
  if ((v59 & 1) == 0)
  {
    sub_18AFCBAA4();
    *(&v62 + 1) = v63;
    *(&v61 + 1) = v64;
  }

  v95 = v62;
  v96 = v61;
  v65 = v53;
  v66 = v91;
  sub_18AE9A768(v65, v91, &qword_1EA999EA8, &qword_18AFD6E60);
  v67 = v66 + *(v90 + 36);
  *v67 = v58;
  v68 = v96;
  *(v67 + 24) = v95;
  *(v67 + 8) = v68;
  *(v67 + 40) = v60 & 1;
  if (v36[1] < 2u)
  {
    v40 = 0.0;
  }

  v69 = v86;
  sub_18AE9A768(v66, v86, &qword_1EA999EB0, &qword_18AFD6E68);
  *(v69 + *(v88 + 36)) = v40;
  v70 = v92;
  sub_18AE9A768(v69, v92, &qword_1EA999EB8, &qword_18AFD6E70);
  v71 = v97;
  v72 = v89;
  sub_18AF02288(v97, v89);
  v73 = v93;
  sub_18AEA23F8(v70, v93);
  v74 = v94;
  *v94 = v87;
  v75 = v83;
  *(v74 + 8) = v84;
  *(v74 + 2) = v31;
  *(v74 + 24) = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA999ED0, &qword_18AFD6EB8);
  sub_18AF02288(v72, v74 + *(v76 + 48));
  sub_18AEA23F8(v73, v74 + *(v76 + 64));

  sub_18AE7BA80(v70, &qword_1EA999EB8, &qword_18AFD6E70);
  sub_18AE7BA80(v71, &qword_1EA999EC8, &qword_18AFD6E80);
  sub_18AE7BA80(v73, &qword_1EA999EB8, &qword_18AFD6E70);
  sub_18AE7BA80(v72, &qword_1EA999EC8, &qword_18AFD6E80);
}

uint64_t sub_18AF01E48(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = *a1;
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      goto LABEL_6;
    }

    return sub_18AFCC964();
  }

  if (v5 == 3)
  {
    return sub_18AFCC964();
  }

LABEL_6:
  v7 = sub_18AFCC8F4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_18AFCC954();
  sub_18AE7BA80(v4, &qword_1EA998930, &qword_18AFD35E0);
  return v8;
}

double sub_18AF01FF8(unsigned __int8 *a1, __n128 a2)
{
  v2 = *a1;
  if (v2 == 3 || v2 == 4)
  {
    sub_18AFCC904();
  }

  else
  {
    sub_18AFCC914();
  }

  return result;
}

unint64_t sub_18AF02098()
{
  result = qword_1EA999E78;
  if (!qword_1EA999E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999E60, &unk_18AFD6DD0);
    sub_18AE95F54(&qword_1EA999E80, &qword_1EA999E88, &unk_18AFD7010, MEMORY[0x1E6981880]);
    sub_18AE95F54(&qword_1EA999E90, &qword_1EA999E70, &unk_18AFD6DE0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999E78);
  }

  return result;
}

unint64_t sub_18AF0217C()
{
  result = qword_1EA999E98;
  if (!qword_1EA999E98)
  {
    type metadata accessor for MacColorWellButtonEngineering(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999E98);
  }

  return result;
}

uint64_t sub_18AF021D4(uint64_t a1)
{
  v2 = type metadata accessor for MacColorWellButtonEngineering(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF02230@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AFCC374();
  *a1 = result;
  return result;
}

uint64_t sub_18AF02288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EC8, &qword_18AFD6E80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18AF022F8(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AED5A58(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18AF023AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCC5C4() - 8);
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

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 17) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      v19 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v21 = *(v6 + 48);

        return v21((v19 + v11 + 9) & ~v11, v7, v5);
      }

      else
      {
        v20 = *v19;
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        return (v20 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_18AF02618(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCC5C4() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((((v13 + 17) & ~v13) + *(v8 + 64) + v14) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
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

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
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
LABEL_49:
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
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
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
  }

  else if (v16)
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
  v22 = ((a1 + 9) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) != 0)
  {
    v24 = *(v25 + 56);

    v24((v22 + v13 + 9) & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v23 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v23 = (a2 - 1);
    }

    *v22 = v23;
  }
}

uint64_t sub_18AF02968(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999F58, &qword_18AFD7000);
  v3 = *(a1 + 16);
  sub_18AFCC044();
  v4 = sub_18AF03A64();
  v5 = *(a1 + 24);
  v19 = v4;
  v20 = v5;
  swift_getWitnessTable();
  v6 = sub_18AFCD1F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15[-v11];
  v16 = v3;
  v17 = v5;
  v18 = v1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v13 = *(v7 + 8);
  v13(v9, v6);
  sub_18AEADA5C();
  return (v13)(v12, v6);
}

uint64_t sub_18AF02B58@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA999F70, &qword_18AFD7008);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999F58, &qword_18AFD7000);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v39 = a2;
  v14 = sub_18AFCC044();
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  *v10 = sub_18AFCDB44();
  v10[1] = v20;
  v21 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999E68, &qword_18AFD7020) + 44));
  v38 = a1;
  v22 = a2;
  v23 = a3;
  sub_18AF02F2C(a1, v22, a3, v21);
  v24 = v10 + *(v8 + 44);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  (*(*(v26 - 8) + 104))(v24, v25, v26);
  *&v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998A38, &qword_18AFD2BE0) + 36)] = 256;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v10, v13, qword_1EA999F70, &qword_18AFD7008);
  v27 = &v13[*(v11 + 36)];
  v28 = v49;
  *(v27 + 4) = v48;
  *(v27 + 5) = v28;
  *(v27 + 6) = v50;
  v29 = v45;
  *v27 = v44;
  *(v27 + 1) = v29;
  v30 = v47;
  *(v27 + 2) = v46;
  *(v27 + 3) = v30;
  v31 = v39;
  v33 = *(type metadata accessor for MacColorWellMinimalEngineering(0, v39, v23, v32) + 48);
  v34 = sub_18AF03A64();
  MEMORY[0x18CFEBFA0](&v38[v33], v11, v31, v34);
  sub_18AE7BA80(v13, &qword_1EA999F58, &qword_18AFD7000);
  v42 = v34;
  v43 = v23;
  swift_getWitnessTable();
  sub_18AEADA5C();
  v35 = *(v40 + 8);
  v35(v16, v14);
  sub_18AEADA5C();
  return (v35)(v19, v14);
}

uint64_t sub_18AF02F2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v91 = a4;
  *&v92 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EA0, &qword_18AFD6E58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v84 = &v75 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EA8, &qword_18AFD6E60);
  MEMORY[0x1EEE9AC00](v83);
  v90 = &v75 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EB0, &qword_18AFD6E68);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v75 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EB8, &qword_18AFD6E70);
  MEMORY[0x1EEE9AC00](v87);
  v94 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v75 - v14;
  v15 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EC0, &qword_18AFD6E78);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA999EC8, &qword_18AFD6E80);
  MEMORY[0x1EEE9AC00](v78);
  v85 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v75 - v26;
  v96 = *(a1 + 1);
  v82 = a1[16];
  v27 = *a1;
  v79 = v27;
  if (v27 > 3)
  {
    if (v27 <= 5)
    {
      if (v27 != 4)
      {
        v31 = a1[1];
        v80 = a1 + 1;
        v81 = v31;
        v32 = 4.0;
        v30 = 3.25;
        goto LABEL_23;
      }

      v29 = a1 + 1;
      v28 = a1[1];
      v30 = 9.0;
      goto LABEL_16;
    }

    if (v27 != 6)
    {
      v33 = a1[1];
      v80 = a1 + 1;
      v81 = v33;
      v32 = 6.0;
      v30 = 5.0;
      goto LABEL_23;
    }
  }

  else
  {
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        v29 = a1 + 1;
        v28 = a1[1];
        v30 = 7.0;
LABEL_16:
        v80 = v29;
        v81 = v28;
        v32 = 999.0;
        goto LABEL_23;
      }

      v29 = a1 + 1;
      v28 = a1[1];
      v30 = 6.0;
      goto LABEL_22;
    }

    if (v27)
    {
      v29 = a1 + 1;
      v28 = a1[1];
      v30 = 5.0;
LABEL_20:
      v80 = v29;
      v81 = v28;
LABEL_21:
      v32 = 5.0;
      goto LABEL_23;
    }
  }

  v29 = a1 + 1;
  v28 = a1[1];
  v30 = 4.0;
  if (v27 <= 2u)
  {
    if (!v27)
    {
      v80 = a1 + 1;
      v81 = v28;
      v32 = 4.0;
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      goto LABEL_20;
    }

LABEL_22:
    v80 = v29;
    v81 = v28;
    v32 = 6.0;
    goto LABEL_23;
  }

  if (v27 <= 4u)
  {
    goto LABEL_16;
  }

  v81 = a1[1];
  v80 = a1 + 1;
  if (v27 != 5)
  {
    goto LABEL_21;
  }

  v32 = 4.0;
LABEL_23:
  v34 = *(v15 + 20);
  v35 = *MEMORY[0x1E697F468];
  v36 = sub_18AFCC534();
  (*(*(v36 - 8) + 104))(v17 + v34, v35, v36);
  *v17 = v32;
  v17[1] = v32;

  v37 = sub_18AEFEC88(a1, a2, v92);
  v38 = 1.0;
  sub_18AFCBB94();
  sub_18AEE10E8(v17, v20, v39);
  *&v20[v18[18]] = v37;
  v20[v18[17]] = 0;
  v40 = &v20[v18[19]];
  v41 = v98;
  *v40 = v97;
  *(v40 + 1) = v41;
  *(v40 + 4) = v99;
  v20[v18[20]] = 1;
  sub_18AFCDB44();
  sub_18AFCC194();
  sub_18AE9A768(v20, v24, &qword_1EA999EC0, &qword_18AFD6E78);
  v42 = &v24[*(v78 + 36)];
  v43 = v105;
  *(v42 + 4) = v104;
  *(v42 + 5) = v43;
  *(v42 + 6) = v106;
  v44 = v101;
  *v42 = v100;
  *(v42 + 1) = v44;
  v45 = v103;
  *(v42 + 2) = v102;
  *(v42 + 3) = v45;
  sub_18AE9A768(v24, v95, &qword_1EA999EC8, &qword_18AFD6E80);
  v46 = sub_18AFCCFA4();
  v76 = a1;
  v77 = a2;
  v47 = sub_18AF03898(a1);
  KeyPath = swift_getKeyPath();
  *&v107 = v46;
  *(&v107 + 1) = KeyPath;
  *&v108 = v47;
  sub_18AF01FF8(a1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C90, &unk_18AFD35F8);
  sub_18AED9BF8();
  v50 = v84;
  sub_18AFCCA74();

  sub_18AFCDB64();
  sub_18AFCC194();
  v51 = v90;
  sub_18AE9A768(v50, v90, &qword_1EA999EA0, &qword_18AFD6E58);
  v52 = (v51 + *(v83 + 36));
  v53 = v112;
  v52[4] = v111;
  v52[5] = v53;
  v52[6] = v113;
  v54 = v108;
  *v52 = v107;
  v52[1] = v54;
  v55 = v110;
  v52[2] = v109;
  v52[3] = v55;
  v56 = sub_18AFCC844();
  sub_18AF03A48(v76);
  v58 = v57;
  v59 = 0uLL;
  v60 = 0uLL;
  if ((v57 & 1) == 0)
  {
    sub_18AFCBAA4();
    *(&v60 + 1) = v61;
    *(&v59 + 1) = v62;
  }

  v84 = v60;
  v92 = v59;
  v63 = v89;
  sub_18AE9A768(v51, v89, &qword_1EA999EA8, &qword_18AFD6E60);
  v64 = v63 + *(v88 + 36);
  *v64 = v56;
  *(v64 + 24) = v84;
  *(v64 + 8) = v92;
  *(v64 + 40) = v58 & 1;
  if (*v80 < 2u)
  {
    v38 = 0.0;
  }

  v65 = v63;
  v66 = v86;
  sub_18AE9A768(v65, v86, &qword_1EA999EB0, &qword_18AFD6E68);
  *(v66 + *(v87 + 36)) = v38;
  v67 = v93;
  sub_18AE9A768(v66, v93, &qword_1EA999EB8, &qword_18AFD6E70);
  v68 = v95;
  v69 = v85;
  sub_18AF02288(v95, v85);
  v70 = v94;
  sub_18AEA23F8(v67, v94);
  v71 = v91;
  *v91 = v96;
  v72 = v81;
  *(v71 + 8) = v82;
  *(v71 + 2) = v30;
  *(v71 + 24) = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA999ED0, &qword_18AFD6EB8);
  sub_18AF02288(v69, v71 + *(v73 + 48));
  sub_18AEA23F8(v70, v71 + *(v73 + 64));

  sub_18AE7BA80(v67, &qword_1EA999EB8, &qword_18AFD6E70);
  sub_18AE7BA80(v68, &qword_1EA999EC8, &qword_18AFD6E80);
  sub_18AE7BA80(v70, &qword_1EA999EB8, &qword_18AFD6E70);
  sub_18AE7BA80(v69, &qword_1EA999EC8, &qword_18AFD6E80);
}

uint64_t sub_18AF03898(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = *a1;
  if (v5 > 3)
  {
    if (v5 != 4)
    {
      goto LABEL_6;
    }

    return sub_18AFCC964();
  }

  if (v5 == 3)
  {
    return sub_18AFCC964();
  }

LABEL_6:
  v7 = sub_18AFCC8F4();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_18AFCC954();
  sub_18AE7BA80(v4, &qword_1EA998930, &qword_18AFD35E0);
  return v8;
}

unint64_t sub_18AF03A64()
{
  result = qword_1EA999F60;
  if (!qword_1EA999F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999F58, &qword_18AFD7000);
    sub_18AF03AF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999F60);
  }

  return result;
}

unint64_t sub_18AF03AF0()
{
  result = qword_1EA999F68;
  if (!qword_1EA999F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA999F70, &qword_18AFD7008);
    sub_18AE95F54(&qword_1EA999E80, &qword_1EA999E88, &unk_18AFD7010, MEMORY[0x1E6981880]);
    sub_18AE95F54(&qword_1EA998A50, &qword_1EA998A38, &qword_18AFD2BE0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA999F68);
  }

  return result;
}

uint64_t sub_18AF03BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_18AF03C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18AF03C7C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AF04CAC(319, &qword_1EA997C40, &type metadata for MacSizeClass, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_18AEEC0EC(319, &qword_1EA998418, MEMORY[0x1E697F610]);
      if (v3 <= 0x3F)
      {
        sub_18AF04CAC(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AF03DBC(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v9 = *(sub_18AFCC5C4() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  v12 = *(v6 + 64) + 7;
  if (v8 >= a2)
  {
    goto LABEL_34;
  }

  v13 = *(v9 + 80) & 0xF8 | 7;
  v14 = ((v10 + ((v13 + ((v12 + ((v11 + 32) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v13) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 <= 3)
  {
    v15 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v14];
      if (!*&a1[v14])
      {
        goto LABEL_34;
      }
    }

    else
    {
      v18 = *&a1[v14];
      if (!v18)
      {
        goto LABEL_34;
      }
    }
  }

  else if (!v17 || (v18 = a1[v14]) == 0)
  {
LABEL_34:
    v22 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 24) & ~v11;
    if (v7 < 0xFE)
    {
      v24 = *(((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v24 > 1)
      {
        return (v24 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v23 = *(v6 + 48);

      return v23(v22, v7, v5);
    }
  }

  v20 = v14 > 3;
  if (v14 <= 3)
  {
    v21 = (v18 - 1) << (8 * v14);
  }

  else
  {
    v21 = 0;
  }

  if (v20)
  {
    v25 = *a1;
  }

  else
  {
    v25 = *a1;
  }

  return v8 + (v25 | v21) + 1;
}

void sub_18AF04014(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v25 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCC5C4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64) + 7;
  v15 = *(v11 + 80) & 0xF8 | 7;
  v16 = ((v12 + ((v15 + ((v14 + ((v13 + 32) & ~v13)) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v19 = 0;
    if (v10 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v16 <= 3)
    {
      v17 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v10 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v16] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v16] = 0;
      }

      else if (v19)
      {
        a1[v16] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v22 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 24) & ~v13;
      if (v9 < 0xFE)
      {
        v24 = (v14 + v22) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v24 + 8) = 0;
          *v24 = (a2 - 255);
        }

        else
        {
          *(v24 + 8) = -a2;
        }
      }

      else
      {
        v23 = *(v25 + 56);

        v23(v22, a2, v9, v7);
      }

      return;
    }
  }

  v20 = ~v10 + a2;
  bzero(a1, v16);
  if (v16 <= 3)
  {
    v21 = (v20 >> 8) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v16 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v16] = v21;
      }

      else
      {
        *&a1[v16] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v16] = v21;
  }
}

void sub_18AF042E0(void *a1)
{
  sub_18AF04CAC(319, &qword_1EA99A078, &type metadata for Slider.TickMark, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_18AEEC0EC(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
          if (v5 <= 0x3F)
          {
            sub_18AF04CAC(319, &qword_1EA997C40, &type metadata for MacSizeClass, MEMORY[0x1E697DCC0]);
            if (v6 <= 0x3F)
            {
              sub_18AF04CAC(319, &qword_1EA9996B0, &type metadata for GlassGroupContext, MEMORY[0x1E697DCC0]);
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

uint64_t sub_18AF0449C(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v39 = a3[3];
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[4] - 8);
  v7 = *(v6 + 84);
  v38 = v7;
  if (v5 > v7)
  {
    v7 = *(v4 + 84);
  }

  v37 = a3[2];
  v8 = *(v37 - 8);
  v36 = *(v8 + 84);
  if (v7 <= v36)
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_18AFCBB34();
  v12 = *(*(v11 - 8) + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 64);
  v15 = *(v6 + 80);
  v16 = *(v8 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v16;
  if (v10 >= a2)
  {
    goto LABEL_38;
  }

  v18 = *(*(v11 - 8) + 80) & 0xF8 | 7;
  v19 = ((v12 + ((*(v8 + 64) + v18 + ((v17 + ((v14 + v15 + ((v13 + 32) & ~v13)) & ~v15)) & ~v16)) & ~v18) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v10 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      goto LABEL_38;
    }

    v23 = a1[v19];
    if (!a1[v19])
    {
      goto LABEL_38;
    }

LABEL_31:
    v25 = v19 > 3;
    if (v19 <= 3)
    {
      v26 = (v23 - 1) << (8 * v19);
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v35 = *a1;
    }

    else
    {
      v35 = *a1;
    }

    return v10 + (v35 | v26) + 1;
  }

  if (v22 == 2)
  {
    v23 = *&a1[v19];
    if (*&a1[v19])
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = *&a1[v19];
    if (v23)
    {
      goto LABEL_31;
    }
  }

LABEL_38:
  v27 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) == 0)
  {
    v28 = *v27;
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }

  v29 = (v27 + v13 + 8) & ~v13;
  if (v5 == v10)
  {
    v30 = *(v4 + 48);
    v31 = v5;
    v32 = v39;

    return v30(v29, v31, v32);
  }

  v33 = (v29 + v14 + v15) & ~v15;
  if (v38 != v10)
  {
    v30 = *(v8 + 48);
    v29 = (v17 + v33) & ~v16;
    v31 = v36;
    v32 = v37;

    return v30(v29, v31, v32);
  }

  v34 = *(v6 + 48);

  return v34(v33);
}

void sub_18AF04878(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[3] - 8);
  v31 = v5;
  v6 = *(v5 + 84);
  v7 = *(a4[4] - 8);
  v30 = v6;
  v29 = *(v7 + 84);
  if (v6 <= v29)
  {
    v6 = *(v7 + 84);
  }

  v8 = *(a4[2] - 8);
  if (v6 <= *(v8 + 84))
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v6;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_18AFCBB34() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  v16 = *(v8 + 80);
  v17 = *(v7 + 64) + v16;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = ((v12 + ((*(v8 + 64) + v18 + ((v17 + ((v14 + v15 + ((v13 + 32) & ~v13)) & ~v15)) & ~v16)) & ~v18) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_43;
      }

      *&a1[v19] = 0;
    }

    else if (v22)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

LABEL_43:
      v25 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v27 = (v25 + v13 + 8) & ~v13;
        if (v30 == v10)
        {
          v28 = *(v31 + 56);
        }

        else
        {
          v27 = (v27 + v14 + v15) & ~v15;
          if (v29 == v10)
          {
            v28 = *(v7 + 56);
          }

          else
          {
            v28 = *(v8 + 56);
            v27 = (v17 + v27) & ~v16;
          }
        }

        v28(v27);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v26 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v26 = a2 - 1;
        }

        *v25 = v26;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  v23 = ~v10 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_31:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_18AF04CAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AF04D18@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v11 = *a1;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = v11;
  *(a5 + 24) = a8;
  v12 = type metadata accessor for MacLinearSliderTrack(0, a3, a4, a4);
  (*(*(a3 - 8) + 32))(a5 + v12[12], a2, a3);
  v13 = a5 + v12[13];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v12[14];
  *(a5 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v15 = a5 + v12[15];
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_18AF04E14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0E8, &unk_18AFD73B0);
  v3 = *(a1 + 16);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0F0, &unk_18AFD7980);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_18AFCDB44();
  sub_18AFCD1E4();
  swift_getWitnessTable();
  sub_18AEADA5C();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_18AEADA5C();
  return (v12)(v10, v4);
}

uint64_t sub_18AF05034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0F0, &unk_18AFD7980);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v82 = (&v67 - v9);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0F8, &unk_18AFD73C0);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v67 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A100, &unk_18AFD7990);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v67 - v12;
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A108, &unk_18AFD73D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v85 = (&v67 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0E8, &unk_18AFD73B0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67 - v23;
  v73 = v25;
  v76 = sub_18AFCC044();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v67 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v74 = &v67 - v30;
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_18AFCC534();
  (*(*(v32 - 8) + 104))(v19, v31, v32);
  v79 = a2;
  v80 = a3;
  v34 = type metadata accessor for MacLinearSliderTrack(0, a2, a3, v33);
  v35 = v34[15];
  v78 = a1;
  v36 = a1 + v35;
  if ((*(v36 + 8) & 1) == 0)
  {
    v37 = *v36;

    sub_18AFCE024();
    v38 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v39 = v71;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v37, 0);
    (*(v15 + 8))(v39, v14);
  }

  v68 = v14;
  sub_18AF1CAB8(0, 0, v13);
  sub_18AE83A40(v13, v11, &qword_1EA99A100, &unk_18AFD7990);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A110, &unk_18AFD79A0);
  sub_18AF08ED8();
  sub_18AF08F90();
  sub_18AFCC614();
  sub_18AE7BA80(v13, &qword_1EA99A100, &unk_18AFD7990);
  sub_18AEF0D88(v19, v40);
  v41 = v78;
  v42 = v78 + v34[13];
  v43 = *v42;
  if (*(v42 + 8) != 1)
  {

    sub_18AFCE024();
    v44 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v45 = v71;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v43, 0);
    (*(v15 + 8))(v45, v68);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v85, v24, &qword_1EA99A108, &unk_18AFD73D0);
  v46 = v73;
  v47 = &v24[*(v73 + 36)];
  v48 = v91;
  *v47 = v90;
  *(v47 + 1) = v48;
  *(v47 + 2) = v92;
  v49 = v34[12];
  v50 = sub_18AF09330(&qword_1EA99A148, &qword_1EA99A0E8, &unk_18AFD73B0, sub_18AF09048);
  v51 = v72;
  v52 = v46;
  v53 = v79;
  MEMORY[0x18CFEBFA0](v41 + v49, v52, v79, v50);
  sub_18AE7BA80(v24, &qword_1EA99A0E8, &unk_18AFD73B0);
  v54 = v80;
  v89[2] = v50;
  v89[3] = v80;
  v55 = v76;
  WitnessTable = swift_getWitnessTable();
  v57 = v74;
  sub_18AEADA5C();
  v58 = v75;
  v85 = *(v75 + 8);
  v85(v51, v55);
  v59 = *(v41 + 24);
  v61 = v81;
  v60 = v82;
  *v82 = *v41;
  *(v60 + 16) = v59;
  *(v60 + 24) = 0;
  v62 = sub_18AF058CC(v41, v53, v54, v60 + *(v61 + 44));
  v63 = v77;
  (*(v58 + 16))(v77, v57, v55, v62);
  v89[0] = v63;
  v64 = v83;
  sub_18AE83A40(v60, v83, &qword_1EA99A0F0, &unk_18AFD7980);
  v89[1] = v64;
  v88[0] = v55;
  v88[1] = v61;
  v86 = WitnessTable;
  v87 = sub_18AF090D4();
  sub_18AEB70B8(v89, 2uLL, v88);
  sub_18AE7BA80(v60, &qword_1EA99A0F0, &unk_18AFD7980);
  v65 = v85;
  v85(v57, v55);
  sub_18AE7BA80(v64, &qword_1EA99A0F0, &unk_18AFD7980);
  return v65(v63, v55);
}

double sub_18AF058CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A108, &unk_18AFD73D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v38 = &v37 - v16;
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_18AFCC534();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  v19 = *(a1 + 16);
  v21 = type metadata accessor for MacLinearSliderTrack(0, a2, a3, v20);
  v22 = a1 + *(v21 + 60);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_18AFCE024();
    v24 = sub_18AFCC7D4();
    v37 = v11;
    v25 = a1;
    v26 = v19;
    v27 = v24;
    sub_18AFCBA64();

    v19 = v26;
    a1 = v25;
    v11 = v37;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v23, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v23) = v39;
  }

  v28 = v23 & 1;
  v29 = v38;
  sub_18AF0B938(v19, v28);
  sub_18AEF0D88(v14, v30);
  v31 = a1 + *(v21 + 52);
  v32 = *v31;
  if (*(v31 + 8) != 1)
  {

    sub_18AFCE024();
    v33 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v32, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v29, a4, &qword_1EA99A108, &unk_18AFD73D0);
  v34 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0E8, &unk_18AFD73B0) + 36));
  v35 = v40;
  *v34 = v39;
  v34[1] = v35;
  result = *&v41;
  v34[2] = v41;
  return result;
}

uint64_t sub_18AF05C9C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_18AFCC474();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A170, &qword_18AFD73F8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v33 - v7);
  v9 = v1[1];
  v40 = *v1;
  v41 = v9;
  v42 = *(v1 + 32);
  *v8 = sub_18AFCDB44();
  v8[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A178, &unk_18AFD7400);
  v43 = v41;
  v39 = v41;
  swift_getKeyPath();
  v11 = swift_allocObject();
  v12 = v1[1];
  *(v11 + 16) = *v1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v1 + 32);
  sub_18AE83A40(&v43, &v37, &qword_1EA99A180, &qword_18AFD7428);
  sub_18AF091C0(&v40, &v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A180, &qword_18AFD7428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A188, &qword_18AFD7430);
  sub_18AE95F54(&qword_1EA99A190, &qword_1EA99A180, &qword_18AFD7428, MEMORY[0x1E69E6338]);
  sub_18AF091F8();
  sub_18AF0924C();
  sub_18AFCD4B4();
  v13 = sub_18AFCC844();
  sub_18AFCBAA4();
  v14 = v8 + *(v6 + 44);
  *v14 = v13;
  *(v14 + 1) = v15;
  *(v14 + 2) = v16;
  *(v14 + 3) = v17;
  *(v14 + 4) = v18;
  v14[40] = 0;
  v38 = v42;
  v19 = BYTE8(v41);
  v37 = *(&v41 + 1);
  v20 = v42;
  if (v42 == 1)
  {
    v21 = BYTE8(v41);
    v23 = v34;
    v22 = v35;
  }

  else
  {

    sub_18AFCE024();
    v24 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE7BA80(&v37, &qword_1EA99A1C0, &unk_18AFD7440);
    v23 = v34;
    v22 = v35;
    (*(v34 + 8))(v4, v35);
    v21 = v39;
  }

  v25 = dbl_18AFD74A0[v21];
  if (v20)
  {
    v26 = v19;
  }

  else
  {

    sub_18AFCE024();
    v27 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE7BA80(&v37, &qword_1EA99A1C0, &unk_18AFD7440);
    (*(v23 + 8))(v4, v22);
    v26 = v39;
  }

  v28 = dbl_18AFD74E0[v26];
  if ((v20 & 1) == 0)
  {

    sub_18AFCE024();
    v29 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE7BA80(&v37, &qword_1EA99A1C0, &unk_18AFD7440);
    (*(v23 + 8))(v4, v22);
  }

  v30 = v36;
  sub_18AE9A768(v8, v36, &qword_1EA99A170, &qword_18AFD73F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A1C8, &qword_18AFD7A80);
  v32 = v30 + *(result + 36);
  *v32 = 0;
  *(v32 + 8) = v25 + v28 + 1.0;
  return result;
}

__n128 sub_18AF06190@<Q0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_18AFCC474();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v26 = a2[32];
  v10 = *(a2 + 3);
  v25 = v10;
  v11 = v26;
  if (v26 == 1)
  {
    v12 = v10;
  }

  else
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE7BA80(&v25, &qword_1EA99A1C0, &unk_18AFD7440);
    (*(v7 + 8))(v9, v6);
    v12 = v22;
  }

  v14 = *a2;
  sub_18AF0644C();
  if ((v11 & 1) == 0)
  {

    sub_18AFCE024();
    v15 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE7BA80(&v25, &qword_1EA99A1C0, &unk_18AFD7440);
    (*(v7 + 8))(v9, v6);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v21[6] = v22;
  *&v21[22] = v23;
  *&v21[38] = v24;
  *a3 = v20;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = v14;
  *(a3 + 33) = v12;
  result = *v21;
  v17 = *&v21[16];
  v18 = *&v21[32];
  *(a3 + 80) = *&v21[46];
  *(a3 + 66) = v18;
  *(a3 + 50) = v17;
  *(a3 + 34) = result;
  return result;
}

double sub_18AF0644C()
{
  v1 = sub_18AFCC474();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v6 = *(v0 + 24);
  }

  else
  {

    sub_18AFCE024();
    v7 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v5, 0);
    (*(v2 + 8))(v4, v1);
    v6 = v9[15];
  }

  result = 2.0;
  if (v6 == 5)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_18AF0663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v80 = sub_18AFCC474();
  v68 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A080, &qword_18AFD72E8);
  v63 = *(a1 + 16);
  v77 = *(a1 + 40);
  type metadata accessor for MacLinearSliderTrack(255, v63, v77, v4);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A088, &qword_18AFD72F0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A090, &qword_18AFD72F8);
  v61 = *(a1 + 24);
  v62 = *(a1 + 48);
  type metadata accessor for MacLinearSliderKnob(255, v61, v62, v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A098, &unk_18AFD7300);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA99A0A0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  v60 = *(a1 + 32);
  sub_18AFCC044();
  sub_18AFCE074();
  swift_getTupleTypeMetadata3();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v6 = sub_18AFCD1F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18, &qword_18AFD5EB0);
  v10 = sub_18AFCC044();
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v59 - v11;
  v13 = sub_18AFCC044();
  v67 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v59 - v14;
  v15 = sub_18AFCC044();
  v69 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v59 - v16;
  v70 = v17;
  v18 = sub_18AFCC044();
  v73 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v59 - v19;
  v74 = v20;
  v76 = sub_18AFCC044();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v71 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v72 = &v59 - v23;
  *&v24 = v63;
  *(&v24 + 1) = v61;
  *&v25 = v60;
  *(&v25 + 1) = v77;
  v83 = v24;
  v84 = v25;
  v26 = *(a1 + 56);
  v85 = v62;
  v86 = v26;
  v27 = v64;
  v87 = v64;
  sub_18AFCDB44();
  v28 = v27;
  v29 = sub_18AFCD1E4();
  MEMORY[0x18CFECEE0](v29, 0.25, 0.75, 0.0);
  v94 = *(v27 + 16);
  WitnessTable = swift_getWitnessTable();
  sub_18AF08D54();
  sub_18AFCCC64();

  (*(v7 + 8))(v9, v6);
  sub_18AFCC4C4();
  v77 = a1;
  v31 = v27 + *(a1 + 108);
  v32 = *v31;
  if (*(v31 + 8) == 1)
  {
    v33 = v68;
  }

  else
  {

    sub_18AFCE024();
    v34 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v35 = v79;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v32, 0);
    v33 = v68;
    (*(v68 + 8))(v35, v80);
    LOBYTE(v32) = v94;
  }

  *(swift_allocObject() + 16) = v32;
  v36 = sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18, &qword_18AFD5EB0, MEMORY[0x1E697F548]);
  v98 = WitnessTable;
  v99 = v36;
  v37 = swift_getWitnessTable();
  v38 = v65;
  sub_18AFCCB14();

  (*(v66 + 8))(v12, v10);
  sub_18AFCC4B4();
  v96 = v37;
  v97 = MEMORY[0x1E69805A0];
  v39 = swift_getWitnessTable();
  sub_18AFCCB14();
  (*(v67 + 8))(v38, v13);
  sub_18AFCC884();
  v40 = v77;
  v41 = v28 + *(v77 + 112);
  v42 = *v41;
  if (*(v41 + 8) == 1)
  {
    v43 = v79;
    if ((v42 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_18AF08B18(v40);
    goto LABEL_9;
  }

  sub_18AFCE024();
  v44 = sub_18AFCC7D4();
  sub_18AFCBA64();

  v43 = v79;
  sub_18AFCC464();
  swift_getAtKeyPath();
  sub_18AE9B234(v42, 0);
  (*(v33 + 8))(v43, v80);
  if (v94 == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v92 = v39;
  v93 = MEMORY[0x1E69805A0];
  v45 = v70;
  v46 = swift_getWitnessTable();
  v47 = v81;
  sub_18AFCCC24();
  (*(v69 + 8))(v47, v45);
  sub_18AFCC8A4();
  v48 = *v41;
  if (*(v41 + 8) != 1)
  {

    sub_18AFCE024();
    v49 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v48, 0);
    (*(v33 + 8))(v43, v80);
    if (v95 != 1)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((v48 & 0x100) != 0)
  {
LABEL_11:
    sub_18AF08B18(v40);
  }

LABEL_13:
  v50 = MEMORY[0x1E697E5D8];
  v90 = v46;
  v91 = MEMORY[0x1E697E5D8];
  v51 = v74;
  v52 = swift_getWitnessTable();
  v53 = v71;
  v54 = v82;
  sub_18AFCCC24();
  (*(v73 + 8))(v54, v51);
  v88 = v52;
  v89 = v50;
  v55 = v76;
  swift_getWitnessTable();
  v56 = v72;
  sub_18AEADA5C();
  v57 = *(v75 + 8);
  v57(v53, v55);
  sub_18AEADA5C();
  return (v57)(v56, v55);
}

uint64_t sub_18AF07294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, void (*a6)(void, void)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v178 = a7;
  v165 = a6;
  v162 = a5;
  v163 = a1;
  v161 = a8;
  v13 = sub_18AFCC1B4();
  v148 = *(v13 - 8);
  v149 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v144 = &v129[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v136 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v129[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for MacLinearSliderKnob(0, a3, a6, v17);
  v138 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v137 = &v129[-v19];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A098, &unk_18AFD7300);
  v174 = v18;
  v20 = sub_18AFCC044();
  v141 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v129[-v21];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A090, &qword_18AFD72F8);
  sub_18AE95F54(&qword_1EA99A0A0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDC8]);
  v173 = v20;
  v22 = sub_18AFCBDC4();
  v146 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v129[-v23];
  v172 = v24;
  v25 = sub_18AFCC044();
  v147 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v143 = &v129[-v26];
  v175 = v27;
  v28 = a4;
  v29 = sub_18AFCC044();
  v159 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v150 = &v129[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v31);
  v145 = &v129[-v32];
  v169 = v33;
  v171 = sub_18AFCE074();
  v160 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v129[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v35);
  v168 = &v129[-v36];
  v164 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v164);
  v38 = &v129[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0B0, &qword_18AFD7310);
  MEMORY[0x1EEE9AC00](v158);
  v40 = &v129[-v39];
  v41 = a2;
  v42 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v129[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = v162;
  v48 = type metadata accessor for MacLinearSliderTrack(0, v41, v162, v47);
  v49 = *(v48 - 8);
  v156 = v48;
  v157 = v49;
  MEMORY[0x1EEE9AC00](v48);
  v155 = &v129[-v50];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A080, &qword_18AFD72E8);
  v51 = sub_18AFCC044();
  v166 = *(v51 - 8);
  v167 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v176 = &v129[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v53);
  v177 = &v129[-v54];
  v55 = v163;
  v56 = *v163;
  v57 = *(v163 + 8);
  LOBYTE(v200[0]) = *(v163 + 16);
  v201 = v41;
  v202 = a3;
  v140 = a3;
  v151 = v28;
  v203 = v28;
  v204 = v46;
  v205 = v165;
  v206 = v178;
  v58 = type metadata accessor for MacLinearSlider(0, &v201);
  v59 = sub_18AF084AC(v58);
  (*(v42 + 16))(v45, v55 + *(v58 + 100), v41);
  v60 = v155;
  sub_18AF04D18(v200, v45, v41, v46, v155, *&v56, v57, v59);
  v61 = *MEMORY[0x1E697F468];
  v62 = sub_18AFCC534();
  v63 = *(v62 - 8);
  v64 = *(v63 + 104);
  v130 = v61;
  v132 = v63 + 104;
  v133 = v64;
  v64(v38, v61, v62);
  sub_18AF084AC(v58);
  v65.n128_f64[0] = sub_18AF08790(v58);
  v131 = sub_18AEDC310(v65);
  sub_18AFCD084();
  v134 = v38;
  sub_18AEF0D88(v38, v66);
  v162 = v58;
  LOBYTE(v61) = sub_18AF08964();
  v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0B8, &qword_18AFD7318) + 36)] = v61 & 1;
  v40[*(v158 + 56)] = 0;
  v67 = v156;
  WitnessTable = swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA99A0C0, &qword_1EA99A0B0, &qword_18AFD7310, MEMORY[0x1E697F368]);
  v69 = v176;
  sub_18AFCCC74();
  v70 = v55;
  sub_18AEA2670(v40);
  (*(v157 + 8))(v60, v67);
  v71 = sub_18AE95F54(&qword_1EA99A0C8, &qword_1EA99A080, &qword_18AFD72E8, MEMORY[0x1E697DDB0]);
  v200[11] = WitnessTable;
  v200[12] = v71;
  v72 = v167;
  v152 = swift_getWitnessTable();
  sub_18AEADA5C();
  v157 = *(v166 + 8);
  v158 = v166 + 8;
  (v157)(v69, v72);
  if (*(*(v55 + 24) + 16))
  {
    v156 = *(v55 + 16);
    v73 = sub_18AF084AC(v162);
    v74 = *(v55 + 24);
    KeyPath = swift_getKeyPath();
    v155 = v74;
    v153 = *&v73;
  }

  else
  {
    v155 = 0;
    v156 = 0;
    v153 = 0;
    KeyPath = 0;
  }

  v75 = v174;
  if (*(v55 + 19) == 1)
  {
    LOBYTE(v201) = *(v55 + 16);
    v76 = v162;
    v77 = sub_18AF084AC(v162);
    v78 = sub_18AF08790(v76);
    v79 = v135;
    v80 = v140;
    (*(v136 + 16))(v135, v70 + *(v76 + 92), v140);
    v81 = v137;
    sub_18AF09A10(&v201, v79, v80, v165, v137, v77, v78);
    v82 = v144;
    sub_18AFCC1A4();
    v83 = v62;
    v84 = v134;
    v133(v134, v130, v83);
    v85 = swift_getWitnessTable();
    v86 = v139;
    sub_18AFCCAD4();
    sub_18AEF0D88(v84, v87);
    (*(v148 + 8))(v82, v149);
    (*(v138 + 8))(v81, v75);
    v88 = sub_18AE95F54(&qword_1EA99A0D8, &qword_1EA99A098, &unk_18AFD7300, MEMORY[0x1E69805E8]);
    v185 = v85;
    v186 = v88;
    v89 = v173;
    v90 = swift_getWitnessTable();
    v91 = v142;
    v92 = sub_18AFCA11C(v56, 0, 0, 1, v89, v90, v142);
    (*(v141 + 8))(v86, v89, v92);
    sub_18AFCC844();
    v93 = v163;
    sub_18AF084AC(v76);
    v183 = sub_18AE95F54(&qword_1EA99A0D0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDD0]);
    v184 = v90;
    v94 = v172;
    v95 = swift_getWitnessTable();
    v96 = v143;
    sub_18AFCCC24();
    (*(v146 + 8))(v91, v94);
    v97 = *(v76 + 96);
    v181 = v95;
    v182 = MEMORY[0x1E697E5D8];
    v98 = v175;
    v99 = swift_getWitnessTable();
    v100 = v93 + v97;
    v101 = v150;
    MEMORY[0x18CFEBFA0](v100, v98, v151, v99);
    (*(v147 + 8))(v96, v98);
    v179 = v99;
    v180 = v178;
    v102 = v169;
    swift_getWitnessTable();
    v103 = v145;
    sub_18AEADA5C();
    v104 = v159;
    v105 = *(v159 + 8);
    v105(v101, v102);
    sub_18AEADA5C();
    v105(v103, v102);
    v106 = v170;
    (*(v104 + 32))(v170, v101, v102);
    (*(v104 + 56))(v106, 0, 1, v102);
  }

  else
  {
    v106 = v170;
    (*(v159 + 56))(v170, 1, 1, v169);
    v107 = sub_18AE95F54(&qword_1EA99A0D0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDD0]);
    v108 = swift_getWitnessTable();
    v109 = sub_18AE95F54(&qword_1EA99A0D8, &qword_1EA99A098, &unk_18AFD7300, MEMORY[0x1E69805E8]);
    v200[9] = v108;
    v200[10] = v109;
    v110 = swift_getWitnessTable();
    v200[7] = v107;
    v200[8] = v110;
    v200[5] = swift_getWitnessTable();
    v200[6] = MEMORY[0x1E697E5D8];
    v200[3] = swift_getWitnessTable();
    v200[4] = v178;
    swift_getWitnessTable();
  }

  v111 = v168;
  sub_18AF1FC5C(v106, v168);
  v112 = v160;
  v113 = *(v160 + 8);
  v164 = v160 + 8;
  v165 = v113;
  v113(v106, v171);
  v114 = v167;
  v115 = v176;
  (*(v166 + 16))();
  v116 = v155;
  v117 = v156;
  v119 = v153;
  v118 = KeyPath;
  v201 = v156;
  v202 = v153;
  v203 = v155;
  v204 = KeyPath;
  LOBYTE(v205) = 0;
  v200[0] = v115;
  v200[1] = &v201;
  v120 = v111;
  v121 = v171;
  (*(v112 + 16))(v106, v120, v171);
  v200[2] = v106;
  sub_18AF08DB0(v117, v119, v116, v118, 0);
  v199[0] = v114;
  v199[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A088, &qword_18AFD72F0);
  v199[2] = v121;
  v196 = v152;
  v197 = sub_18AF08DFC();
  v122 = sub_18AE95F54(&qword_1EA99A0D0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDD0]);
  v123 = swift_getWitnessTable();
  v124 = sub_18AE95F54(&qword_1EA99A0D8, &qword_1EA99A098, &unk_18AFD7300, MEMORY[0x1E69805E8]);
  v194 = v123;
  v195 = v124;
  v125 = swift_getWitnessTable();
  v192 = v122;
  v193 = v125;
  v190 = swift_getWitnessTable();
  v191 = MEMORY[0x1E697E5D8];
  v188 = swift_getWitnessTable();
  v189 = v178;
  v187 = swift_getWitnessTable();
  v198 = swift_getWitnessTable();
  sub_18AEB70B8(v200, 3uLL, v199);
  sub_18AF08E80(v117, v119, v116, v118, 0);
  v126 = v165;
  v165(v168, v121);
  v127 = v157;
  (v157)(v177, v114);
  v126(v170, v121);
  sub_18AF08E80(v201, v202, v203, v204, v205);
  return v127(v176, v114);
}

double sub_18AF084AC(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v1 + 18) == 1)
  {
    if (!v9)
    {

      sub_18AFCE024();
      v10 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v8, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v8) = v17[14];
    }

    v11 = *(*(v1 + 24) + 16);
    if (v8 > 3u)
    {
      if (v8 > 5u)
      {
        if (v8 == 6)
        {
          goto LABEL_7;
        }

LABEL_25:
        v12 = v11 == 0;
        result = 18.0;
        v14 = 14.0;
        goto LABEL_28;
      }

      if (v8 != 4)
      {
        v12 = v11 == 0;
        result = 13.0;
        v14 = 11.0;
        goto LABEL_28;
      }
    }

    else
    {
      if (v8 <= 1u)
      {
        if (!v8)
        {
LABEL_7:
          v12 = v11 == 0;
          result = 16.0;
          v14 = 12.0;
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      result = 16.0;
      if (v8 == 2)
      {
        return result;
      }
    }

    return 20.0;
  }

  if (!v9)
  {

    sub_18AFCE024();
    v15 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v17[15];
  }

  v16 = *(*(v1 + 24) + 16);
  if (v8 > 3u)
  {
    if (v8 > 5u)
    {
      if (v8 == 6)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

    if (v8 != 4)
    {
      v12 = v16 == 0;
      result = 7.0;
      v14 = 13.0;
      goto LABEL_28;
    }

    return 24.0;
  }

  if (v8 > 1u)
  {
    result = 20.0;
    if (v8 == 2)
    {
      return result;
    }

    return 24.0;
  }

  if (!v8)
  {
LABEL_13:
    v12 = v16 == 0;
    result = 8.0;
    v14 = 16.0;
    goto LABEL_28;
  }

LABEL_27:
  v12 = v16 == 0;
  result = 10.0;
  v14 = 18.0;
LABEL_28:
  if (v12)
  {
    return v14;
  }

  return result;
}

double sub_18AF08790(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v14[15];
  }

  v10 = *(*(v1 + 24) + 16);
  if (v8 <= 3u)
  {
    if (v8 <= 1u)
    {
      if (!v8)
      {
LABEL_6:
        v11 = v10 == 0;
        result = 16.0;
        v13 = 12.0;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    result = 16.0;
    if (v8 == 2)
    {
      return result;
    }

    return 20.0;
  }

  if (v8 <= 5u)
  {
    if (v8 != 4)
    {
      v11 = v10 == 0;
      result = 13.0;
      v13 = 11.0;
      goto LABEL_14;
    }

    return 20.0;
  }

  if (v8 == 6)
  {
    goto LABEL_6;
  }

LABEL_13:
  v11 = v10 == 0;
  result = 18.0;
  v13 = 14.0;
LABEL_14:
  if (v11)
  {
    return v13;
  }

  return result;
}

BOOL sub_18AF08964()
{
  v1 = v0;
  v2 = sub_18AFCBB34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  if (*(v0 + 19) == 1 && (sub_18AED2E48((&v12 - v7)), (*(v3 + 104))(v5, *MEMORY[0x1E697DBA8], v2), v9 = sub_18AFCBB24(), v10 = *(v3 + 8), v10(v5, v2), v10(v8, v2), (v9 & 1) != 0))
  {
    return *(v1 + 16) - 5 < 0xFFFFFFFE;
  }

  else
  {
    return 0;
  }
}

double sub_18AF08B18(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (v9 == 1)
  {
    v10 = *v7;
  }

  else
  {

    sub_18AFCE024();
    v11 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v10) = v15[15];
  }

  v12 = dbl_18AFD7520[v10];
  if (!v9)
  {

    sub_18AFCE024();
    v13 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v15[14];
  }

  return (v12 - dbl_18AFD7560[v8]) * 0.5;
}

unint64_t sub_18AF08D54()
{
  result = qword_1EA99A0A8;
  if (!qword_1EA99A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A0A8);
  }

  return result;
}

void sub_18AF08DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {

    sub_18AECDBC0(a4, a5 & 1);
  }
}

unint64_t sub_18AF08DFC()
{
  result = qword_1EA99A0E0;
  if (!qword_1EA99A0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A088, &qword_18AFD72F0);
    sub_18AEC84D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A0E0);
  }

  return result;
}

void sub_18AF08E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a3)
  {

    sub_18AE9B234(a4, a5 & 1);
  }
}

unint64_t sub_18AF08ED8()
{
  result = qword_1EA99A118;
  if (!qword_1EA99A118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A100, &unk_18AFD7990);
    sub_18AE95F54(&qword_1EA99A120, &qword_1EA99A128, &unk_18AFD73E0, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A118);
  }

  return result;
}

unint64_t sub_18AF08F90()
{
  result = qword_1EA99A130;
  if (!qword_1EA99A130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A110, &unk_18AFD79A0);
    sub_18AE95F54(&qword_1EA99A138, &qword_1EA99A140, &unk_18AFD79B0, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A130);
  }

  return result;
}

unint64_t sub_18AF09048()
{
  result = qword_1EA99A150;
  if (!qword_1EA99A150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A108, &unk_18AFD73D0);
    sub_18AF08ED8();
    sub_18AF08F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A150);
  }

  return result;
}

unint64_t sub_18AF090D4()
{
  result = qword_1EA99A158;
  if (!qword_1EA99A158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0F0, &unk_18AFD7980);
    sub_18AE95F54(&qword_1EA99A160, &qword_1EA99A168, &qword_18AFD73F0, MEMORY[0x1E697DDD0]);
    sub_18AF09330(&qword_1EA99A148, &qword_1EA99A0E8, &unk_18AFD73B0, sub_18AF09048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A158);
  }

  return result;
}

unint64_t sub_18AF091F8()
{
  result = qword_1EA99A198;
  if (!qword_1EA99A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A198);
  }

  return result;
}

unint64_t sub_18AF0924C()
{
  result = qword_1EA99A1A0;
  if (!qword_1EA99A1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A188, &qword_18AFD7430);
    sub_18AE95F54(&qword_1EA99A0D0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDD0]);
    sub_18AF09330(&qword_1EA99A1A8, &qword_1EA99A1B0, &qword_18AFD7438, sub_18AF093B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A1A0);
  }

  return result;
}

uint64_t sub_18AF09330(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_18AF093B4()
{
  result = qword_1EA99A1B8;
  if (!qword_1EA99A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A1B8);
  }

  return result;
}

unint64_t sub_18AF09408()
{
  result = qword_1EA99A1D0;
  if (!qword_1EA99A1D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A1C8, &qword_18AFD7A80);
    sub_18AF09494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A1D0);
  }

  return result;
}

unint64_t sub_18AF09494()
{
  result = qword_1EA99A1D8;
  if (!qword_1EA99A1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A170, &qword_18AFD73F8);
    sub_18AE95F54(&qword_1EA99A1E0, qword_1EA99A1E8, &unk_18AFD7450, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A1D8);
  }

  return result;
}

void sub_18AF0954C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18AF095E4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFB)
  {
    v7 = 251;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFB)
      {
        return (*(v4 + 48))(((a1 & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6);
      }

      v15 = *a1;
      if (v15 >= 5)
      {
        return v15 - 4;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_18AF0976C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFB)
  {
    v8 = 251;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFB)
  {
    v19 = *(v6 + 56);
    v20 = ((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 24) & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 4;
  }
}

uint64_t sub_18AF09A10@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  *a5 = *a1;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  v10 = type metadata accessor for MacLinearSliderKnob(0, a3, a4, a4);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 40);

  return v11(v12, a2, a3);
}

uint64_t sub_18AF09AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A270, &qword_18AFD7618);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v26 = *(a1 + 16);
  v7 = sub_18AFCC044();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = *v2;
  *v6 = v14;
  v6[1] = v14 == 3;
  v6[2] = 0;
  v15 = *(type metadata accessor for MacSwitchSliderKnob(0) + 28);
  *&v6[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v16 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A278, &qword_18AFD7658) + 36)];
  v17 = v31;
  *v16 = v30;
  *(v16 + 1) = v17;
  *(v16 + 2) = v32;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v18 = &v6[*(v4 + 36)];
  v19 = v34;
  *v18 = v33;
  *(v18 + 1) = v19;
  *(v18 + 2) = v35;
  v20 = *(a1 + 40);
  v21 = sub_18AF09E18(&qword_1EA99A280, &qword_1EA99A270, &qword_18AFD7618, sub_18AF09DE8);
  MEMORY[0x18CFEBFA0](&v2[v20], v4, v26, v21);
  sub_18AF09EF4(v6);
  v22 = *(a1 + 24);
  v28 = v21;
  v29 = v22;
  swift_getWitnessTable();
  sub_18AEADA5C();
  v23 = *(v8 + 8);
  v23(v10, v7);
  sub_18AEADA5C();
  return (v23)(v13, v7);
}

uint64_t sub_18AF09E18(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_18AF09E9C()
{
  result = qword_1EA99A290;
  if (!qword_1EA99A290)
  {
    type metadata accessor for MacSwitchSliderKnob(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A290);
  }

  return result;
}

uint64_t sub_18AF09EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A270, &qword_18AFD7618);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF09F88@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *MEMORY[0x1E697F468];
  v9 = sub_18AFCC534();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  if (v7 == 1)
  {
    v10 = sub_18AFCC6B4();
  }

  else
  {
    v10 = sub_18AFCC6E4();
  }

  v12 = v10;
  sub_18AEE00B8(v6, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68, &qword_18AFD86F0);
  *(a1 + *(result + 52)) = v12;
  *(a1 + *(result + 56)) = 256;
  return result;
}

unint64_t sub_18AF0A090()
{
  result = qword_1EA99A298;
  if (!qword_1EA99A298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998F68, &qword_18AFD86F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A298);
  }

  return result;
}

uint64_t sub_18AF0A0F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AF0A148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_18AF0A1A0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_18AFC3BAC(&v12[-v7]);
  v9 = sub_18AFCBD64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_18AF0A900(v8);
  }

  v12[8] = a2 & 1;
  v12[0] = a4 & 1;
  sub_18AFCBD44();
  return (*(v10 + 8))(v8, v9);
}

void (*sub_18AF0A444(uint64_t *a1))(void *a1)
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

unint64_t sub_18AF0A4D0()
{
  result = qword_1EA99A2A0;
  if (!qword_1EA99A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A2A0);
  }

  return result;
}

uint64_t sub_18AF0A524(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = sub_18AFCBD64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF0A8A8(v22);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = sub_18AFCDFD4();
  if (result)
  {
    if (a6 >= a5)
    {
      v24 = a5;
    }

    else
    {
      v24 = a6;
    }

    if (a5 > a6)
    {
      a6 = a5;
    }

    v25 = a1;
    v26 = a2;
    v27 = a3;
    v28 = a4;
    if (a10)
    {
      Height = CGRectGetHeight(*&v25);
    }

    else
    {
      Height = CGRectGetWidth(*&v25);
    }

    if (v24 <= 0.02)
    {
      v31 = v24 * a7;
    }

    else
    {
      v30 = a7;
      if (v24 < 0.98)
      {
        goto LABEL_15;
      }

      v31 = (1.0 - v24) * a7;
    }

    v30 = v31 / 0.02;
LABEL_15:
    v32 = v30 * 0.5;
    v33 = v24 * (Height - v30);
    if (a6 <= 0.02)
    {
      v34 = a6 * a7;
    }

    else
    {
      if (a6 < 0.98)
      {
        goto LABEL_20;
      }

      v34 = (1.0 - a6) * a7;
    }

    a7 = v34 / 0.02;
LABEL_20:
    v35 = a7 * 0.5 + a6 * (Height - a7);
    if (a10)
    {
      v43.origin.x = a1;
      v43.origin.y = a2;
      v43.size.width = a3;
      v43.size.height = a4;
      Width = CGRectGetWidth(v43);
      v44.origin.x = a1;
      v44.origin.y = a2;
      v44.size.width = a3;
      v44.size.height = a4;
      CGRectGetWidth(v44);
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      CGRectGetHeight(v45);
    }

    else
    {
      Width = v35 - (v32 + v33);
      v46.origin.x = a1;
      v46.origin.y = a2;
      v46.size.width = a3;
      v46.size.height = a4;
      CGRectGetHeight(v46);
      v47.origin.x = a1;
      v47.origin.y = a2;
      v47.size.width = a3;
      v47.size.height = a4;
      CGRectGetHeight(v47);
    }

    sub_18AFCDFC4();
    sub_18AFCDFE4();
    v36 = v41;
    result = v42;
    if (v41 < v42)
    {
      __break(1u);
    }

    else
    {
      if (v42 == v41)
      {
        return result;
      }

      if (v42 < v41)
      {
        v37 = (v19 + 8);
        do
        {
          v38 = result + 1;
          sub_18AFCBE94();
          sub_18AFCDD04();
          LOBYTE(v42) = 0;
          LOBYTE(v41) = 0;
          sub_18AFCBD54();
          (*v37)(v21, v18);
          result = v38;
        }

        while (v36 != v38);
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_18AF0A8A8(__n128 a1)
{
  result = qword_1EA99A2A8;
  if (!qword_1EA99A2A8)
  {
    sub_18AFCBE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A2A8);
  }

  return result;
}

uint64_t sub_18AF0A900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_18AF0A968(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AF0B788(319, &qword_1EA997C40, &type metadata for MacSizeClass, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_18AF0B788(319, &qword_1EA997C38, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18AF0AA74(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v7 + ((v6 + 32) & ~v6) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v10 = (a2 - v8 + 255) >> 8;
  if (v9 <= 3)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v9];
      if (*&a1[v9])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v14 = *&a1[v9];
      if (v14)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    v18 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 24) & ~v6;
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *(((v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 > 1)
    {
      return (v19 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v13)
  {
    goto LABEL_28;
  }

  v14 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_28;
  }

LABEL_24:
  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v8 + (v17 | v16) + 1;
}

void sub_18AF0ABE8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = ((v10 + ((v9 + 32) & ~v9) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 24) & ~v9;
      if (v7 < 0xFE)
      {
        v20 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v20 + 8) = 0;
          *v20 = a2 - 255;
        }

        else
        {
          *(v20 + 8) = -a2;
        }
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((v10 + ((v9 + 32) & ~v9) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v11 <= 3)
  {
    v17 = (v16 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

void sub_18AF0AE14(void *a1)
{
  sub_18AF0B788(319, &qword_1EA99A078, &type metadata for Slider.TickMark, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_18AF0B7D8(319);
          if (v5 <= 0x3F)
          {
            sub_18AF0B788(319, &qword_1EA997C40, &type metadata for MacSizeClass, MEMORY[0x1E697DCC0]);
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

uint64_t sub_18AF0AF78(unsigned __int8 *a1, unsigned int a2, void *a3)
{
  v39 = a3[4];
  v4 = *(v39 - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  v38 = v7;
  if (v5 > v7)
  {
    v7 = *(v4 + 84);
  }

  v37 = a3[2];
  v8 = *(v37 - 8);
  v36 = *(v8 + 84);
  if (v7 <= v36)
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = sub_18AFCBB34();
  v12 = *(*(v11 - 8) + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 64);
  v15 = *(v6 + 80);
  v16 = *(v8 + 80);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = *(v6 + 64) + v16;
  if (v10 >= a2)
  {
    goto LABEL_38;
  }

  v18 = *(*(v11 - 8) + 80) & 0xF8 | 7;
  v19 = ((v12 + ((*(v8 + 64) + v18 + ((v17 + ((v14 + v15 + ((v13 + 32) & ~v13)) & ~v15)) & ~v16)) & ~v18) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v10 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      goto LABEL_38;
    }

    v23 = a1[v19];
    if (!a1[v19])
    {
      goto LABEL_38;
    }

LABEL_31:
    v25 = v19 > 3;
    if (v19 <= 3)
    {
      v26 = (v23 - 1) << (8 * v19);
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v35 = *a1;
    }

    else
    {
      v35 = *a1;
    }

    return v10 + (v35 | v26) + 1;
  }

  if (v22 == 2)
  {
    v23 = *&a1[v19];
    if (*&a1[v19])
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = *&a1[v19];
    if (v23)
    {
      goto LABEL_31;
    }
  }

LABEL_38:
  v27 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
  if ((v9 & 0x80000000) == 0)
  {
    v28 = *v27;
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }

  v29 = (v27 + v13 + 8) & ~v13;
  if (v5 == v10)
  {
    v30 = *(v4 + 48);
    v31 = v5;
    v32 = v39;

    return v30(v29, v31, v32);
  }

  v33 = (v29 + v14 + v15) & ~v15;
  if (v38 != v10)
  {
    v30 = *(v8 + 48);
    v29 = (v17 + v33) & ~v16;
    v31 = v36;
    v32 = v37;

    return v30(v29, v31, v32);
  }

  v34 = *(v6 + 48);

  return v34(v33);
}

void sub_18AF0B354(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[4] - 8);
  v31 = v5;
  v6 = *(v5 + 84);
  v7 = *(a4[3] - 8);
  v30 = v6;
  v29 = *(v7 + 84);
  if (v6 <= v29)
  {
    v6 = *(v7 + 84);
  }

  v8 = *(a4[2] - 8);
  if (v6 <= *(v8 + 84))
  {
    v9 = *(v8 + 84);
  }

  else
  {
    v9 = v6;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(sub_18AFCBB34() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v7 + 80);
  v16 = *(v8 + 80);
  v17 = *(v7 + 64) + v16;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = ((v12 + ((*(v8 + 64) + v18 + ((v17 + ((v14 + v15 + ((v13 + 32) & ~v13)) & ~v15)) & ~v16)) & ~v18) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_43;
      }

      *&a1[v19] = 0;
    }

    else if (v22)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

LABEL_43:
      v25 = ((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
      if ((v9 & 0x80000000) != 0)
      {
        v27 = (v25 + v13 + 8) & ~v13;
        if (v30 == v10)
        {
          v28 = *(v31 + 56);
        }

        else
        {
          v27 = (v27 + v14 + v15) & ~v15;
          if (v29 == v10)
          {
            v28 = *(v7 + 56);
          }

          else
          {
            v28 = *(v8 + 56);
            v27 = (v17 + v27) & ~v16;
          }
        }

        v28(v27);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v26 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v26 = a2 - 1;
        }

        *v25 = v26;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  v23 = ~v10 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_31:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_18AF0B788(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_18AF0B7D8(uint64_t a1)
{
  if (!qword_1EA9986F8)
  {
    sub_18AFCBB34();
    v1 = sub_18AFCBB64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA9986F8);
    }
  }
}

uint64_t sub_18AF0B874@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v11 = *a1;
  *a5 = a6;
  *(a5 + 8) = a7;
  *(a5 + 16) = v11;
  *(a5 + 24) = a8;
  v12 = type metadata accessor for MacLinearSliderTrackVertical(0, a3, a4, a4);
  (*(*(a3 - 8) + 32))(a5 + v12[12], a2, a3);
  v13 = a5 + v12[13];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = a5 + v12[14];
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  return result;
}

uint64_t sub_18AF0B938(uint64_t a1, char a2)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A100, &unk_18AFD7990);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0F8, &unk_18AFD73C0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A110, &unk_18AFD79A0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  if (a2)
  {
    sub_18AF1B058(v4, 1, &v18 - v12);
    sub_18AE83A40(v13, v10, &qword_1EA99A110, &unk_18AFD79A0);
    swift_storeEnumTagMultiPayload();
    sub_18AF08ED8();
    sub_18AF08F90();
    sub_18AFCC614();
    v14 = v13;
    v15 = &qword_1EA99A110;
    v16 = &unk_18AFD79A0;
  }

  else
  {
    sub_18AF1CAB8(v4, 1, v7);
    sub_18AE83A40(v7, v10, &qword_1EA99A100, &unk_18AFD7990);
    swift_storeEnumTagMultiPayload();
    sub_18AF08ED8();
    sub_18AF08F90();
    sub_18AFCC614();
    v14 = v7;
    v15 = &qword_1EA99A100;
    v16 = &unk_18AFD7990;
  }

  return sub_18AE7BA80(v14, v15, v16);
}

uint64_t sub_18AF0BB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v25 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0E8, &unk_18AFD73B0);
  v3 = *(a1 + 16);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A0F0, &unk_18AFD7980);
  swift_getTupleTypeMetadata2();
  sub_18AFCDBF4();
  swift_getWitnessTable();
  v4 = sub_18AFCD1F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18, &qword_18AFD5EB0);
  v8 = sub_18AFCC044();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = *(v23 + 24);
  v26 = v3;
  v27 = v15;
  v16 = v24;
  v28 = v24;
  sub_18AFCDB44();
  v17 = sub_18AFCD1E4();
  MEMORY[0x18CFECEE0](v17, 0.25, 0.75, 0.0);
  v31 = *(v16 + 16);
  WitnessTable = swift_getWitnessTable();
  sub_18AF08D54();
  sub_18AFCCC64();

  (*(v5 + 8))(v7, v4);
  v19 = sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18, &qword_18AFD5EB0, MEMORY[0x1E697F548]);
  v29 = WitnessTable;
  v30 = v19;
  swift_getWitnessTable();
  sub_18AEADA5C();
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_18AEADA5C();
  return (v20)(v14, v8);
}

uint64_t sub_18AF0BEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v82 = a4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0F0, &unk_18AFD7980);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = (&v66 - v9);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0F8, &unk_18AFD73C0);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v66 - v10;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A100, &unk_18AFD7990);
  MEMORY[0x1EEE9AC00](v68);
  v13 = &v66 - v12;
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A108, &unk_18AFD73D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v83 = (&v66 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0E8, &unk_18AFD73B0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v66 - v23;
  v72 = v25;
  v75 = sub_18AFCC044();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v71 = &v66 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v73 = &v66 - v30;
  v31 = *MEMORY[0x1E697F468];
  v32 = sub_18AFCC534();
  (*(*(v32 - 8) + 104))(v19, v31, v32);
  v77 = a2;
  v78 = a3;
  v34 = type metadata accessor for MacLinearSliderTrackVertical(0, a2, a3, v33);
  v35 = v34[14];
  v84 = a1;
  v36 = a1 + v35;
  if ((*(v36 + 8) & 1) == 0)
  {
    v37 = *v36;

    sub_18AFCE024();
    v38 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v39 = v70;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v37, 0);
    (*(v15 + 8))(v39, v14);
  }

  v67 = v14;
  sub_18AF1CAB8(0, 0, v13);
  sub_18AE83A40(v13, v11, &qword_1EA99A100, &unk_18AFD7990);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A110, &unk_18AFD79A0);
  sub_18AF08ED8();
  sub_18AF08F90();
  sub_18AFCC614();
  sub_18AE7BA80(v13, &qword_1EA99A100, &unk_18AFD7990);
  sub_18AEF0D88(v19, v40);
  v41 = v84 + v34[13];
  v42 = *v41;
  if (*(v41 + 8) != 1)
  {

    sub_18AFCE024();
    v43 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v44 = v70;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v42, 0);
    (*(v15 + 8))(v44, v67);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v83, v24, &qword_1EA99A108, &unk_18AFD73D0);
  v45 = v72;
  v46 = &v24[*(v72 + 36)];
  v47 = v90;
  *v46 = v89;
  *(v46 + 1) = v47;
  *(v46 + 2) = v91;
  v48 = v34[12];
  v49 = sub_18AF09330(&qword_1EA99A148, &qword_1EA99A0E8, &unk_18AFD73B0, sub_18AF09048);
  v50 = v84;
  v51 = v71;
  v52 = v77;
  MEMORY[0x18CFEBFA0](v84 + v48, v45, v77, v49);
  sub_18AE7BA80(v24, &qword_1EA99A0E8, &unk_18AFD73B0);
  v53 = v78;
  v88[2] = v49;
  v88[3] = v78;
  v54 = v75;
  WitnessTable = swift_getWitnessTable();
  v56 = v73;
  sub_18AEADA5C();
  v57 = v74;
  v83 = *(v74 + 8);
  v83(v51, v54);
  v58 = *(v50 + 24);
  v60 = v79;
  v59 = v80;
  *v80 = *v50;
  *(v59 + 16) = v58;
  *(v59 + 24) = 1;
  v61 = sub_18AF0C79C(v50, v52, v53, v59 + *(v60 + 44));
  v62 = v76;
  (*(v57 + 16))(v76, v56, v54, v61);
  v88[0] = v62;
  v63 = v81;
  sub_18AE83A40(v59, v81, &qword_1EA99A0F0, &unk_18AFD7980);
  v88[1] = v63;
  v87[0] = v54;
  v87[1] = v60;
  v85 = WitnessTable;
  v86 = sub_18AF090D4();
  sub_18AEB70B8(v88, 2uLL, v87);
  sub_18AE7BA80(v59, &qword_1EA99A0F0, &unk_18AFD7980);
  v64 = v83;
  v83(v56, v54);
  sub_18AE7BA80(v63, &qword_1EA99A0F0, &unk_18AFD7980);
  return v64(v62, v54);
}

double sub_18AF0C79C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_18AFCC474();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A108, &unk_18AFD73D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v38 = &v37 - v16;
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_18AFCC534();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  v19 = *(a1 + 16);
  v21 = type metadata accessor for MacLinearSliderTrackVertical(0, a2, a3, v20);
  v22 = a1 + *(v21 + 56);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_18AFCE024();
    v24 = sub_18AFCC7D4();
    v37 = v11;
    v25 = a1;
    v26 = v19;
    v27 = v24;
    sub_18AFCBA64();

    v19 = v26;
    a1 = v25;
    v11 = v37;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v23, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(v23) = v39;
  }

  v28 = v23 & 1;
  v29 = v38;
  sub_18AF0B938(v19, v28);
  sub_18AEF0D88(v14, v30);
  v31 = a1 + *(v21 + 52);
  v32 = *v31;
  if (*(v31 + 8) != 1)
  {

    sub_18AFCE024();
    v33 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v32, 0);
    (*(v9 + 8))(v11, v8);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v29, a4, &qword_1EA99A108, &unk_18AFD73D0);
  v34 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0E8, &unk_18AFD73B0) + 36));
  v35 = v40;
  *v34 = v39;
  v34[1] = v35;
  result = *&v41;
  v34[2] = v41;
  return result;
}

uint64_t sub_18AF0CBB8@<X0>(uint64_t a1@<X8>)
{
  v22[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A170, &qword_18AFD73F8);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = (v22 - v4);
  v6 = *v1;
  v7 = v1[1];
  v8 = *(v1 + 1);
  v9 = *(v1 + 2);
  *v5 = sub_18AFCDB44();
  v5[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A178, &unk_18AFD7400);
  v22[1] = v9;
  swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 17) = v7;
  *(v11 + 24) = v8;
  *(v11 + 32) = v9;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A180, &qword_18AFD7428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A188, &qword_18AFD7430);
  sub_18AE95F54(&qword_1EA99A190, &qword_1EA99A180, &qword_18AFD7428, MEMORY[0x1E69E6338]);
  sub_18AF091F8();
  sub_18AF0924C();
  sub_18AFCD4B4();
  LOBYTE(v9) = sub_18AFCC8B4();
  sub_18AFCBAA4();
  v12 = v5 + *(v3 + 44);
  *v12 = v9;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v17 = dbl_18AFD7AC8[v7];
  v12[40] = 0;
  v18 = v17 + dbl_18AFD7B08[v7] + 1.0;
  v19 = v22[0];
  sub_18AE9A768(v5, v22[0], &qword_1EA99A170, &qword_18AFD73F8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A1C8, &qword_18AFD7A80);
  v21 = v19 + *(result + 36);
  *v21 = v18;
  *(v21 + 8) = 0;
  return result;
}

__n128 sub_18AF0CE14@<Q0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = a2 >> 8;
  v6 = *a1;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  *&v8[6] = v9;
  *&v8[22] = v10;
  *&v8[38] = v11;
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v6;
  *(a3 + 24) = 0;
  *(a3 + 32) = v3;
  *(a3 + 33) = v5;
  result = *v8;
  *(a3 + 80) = *(&v11 + 1);
  *(a3 + 66) = *&v8[32];
  *(a3 + 50) = *&v8[16];
  *(a3 + 34) = *v8;
  return result;
}

uint64_t sub_18AF0CEE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A080, &qword_18AFD72E8);
  v3 = a1[5];
  v30 = a1[2];
  v31 = v3;
  type metadata accessor for MacLinearSliderTrackVertical(255, v30, v3, v4);
  sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A3B8, &unk_18AFD7910);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A090, &qword_18AFD72F8);
  v5 = a1[7];
  v28 = a1[4];
  v29 = v5;
  type metadata accessor for MacLinearSliderKnob(255, v28, v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A098, &unk_18AFD7300);
  sub_18AFCC044();
  sub_18AE95F54(&qword_1EA99A0A0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDC8]);
  sub_18AFCBDC4();
  sub_18AFCC044();
  v7 = a1[3];
  sub_18AFCC044();
  sub_18AFCE074();
  swift_getTupleTypeMetadata3();
  sub_18AFCDBF4();
  v27[1] = swift_getWitnessTable();
  v8 = sub_18AFCD1F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA999A18, &qword_18AFD5EB0);
  v12 = sub_18AFCC044();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v27 - v17;
  *&v19 = v30;
  *(&v19 + 1) = v7;
  *&v20 = v28;
  v21 = v32;
  *(&v20 + 1) = v31;
  v34 = v19;
  v35 = v20;
  v36 = a1[6];
  v37 = v29;
  v38 = v32;
  sub_18AFCDB44();
  v22 = sub_18AFCD1E4();
  MEMORY[0x18CFECEE0](v22, 0.25, 0.75, 0.0);
  v41[0] = *(v21 + 16);
  WitnessTable = swift_getWitnessTable();
  sub_18AF08D54();
  sub_18AFCCC64();

  (*(v9 + 8))(v11, v8);
  v24 = sub_18AE95F54(&qword_1EA9977A8, &qword_1EA999A18, &qword_18AFD5EB0, MEMORY[0x1E697F548]);
  v39 = WitnessTable;
  v40 = v24;
  swift_getWitnessTable();
  sub_18AEADA5C();
  v25 = *(v13 + 8);
  v25(v15, v12);
  sub_18AEADA5C();
  return (v25)(v18, v12);
}

uint64_t sub_18AF0D35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v165 = a7;
  v175 = a6;
  v151 = a1;
  v162 = a8;
  v14 = sub_18AFCC1B4();
  v147 = *(v14 - 8);
  v148 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v143 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = a4;
  v136 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v135 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MacLinearSliderKnob(0, a4, a7, v18);
  v138 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v137 = &v127 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A098, &unk_18AFD7300);
  v173 = v19;
  v21 = sub_18AFCC044();
  v140 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v127 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A090, &qword_18AFD72F8);
  sub_18AE95F54(&qword_1EA99A0A0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDC8]);
  v172 = v21;
  v23 = sub_18AFCBDC4();
  v145 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v127 - v24;
  v171 = v25;
  v26 = sub_18AFCC044();
  v146 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v142 = &v127 - v27;
  v170 = v28;
  v29 = a3;
  v30 = sub_18AFCC044();
  v157 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v149 = &v127 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v144 = &v127 - v33;
  v169 = v34;
  v161 = sub_18AFCE074();
  v158 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v160 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v159 = &v127 - v37;
  v152 = sub_18AFCC474();
  v128 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v127 = &v127 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v163);
  v40 = &v127 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0B0, &qword_18AFD7310);
  MEMORY[0x1EEE9AC00](v156);
  v42 = &v127 - v41;
  v43 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v127 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a5;
  v49 = type metadata accessor for MacLinearSliderTrackVertical(0, a2, a5, v48);
  v50 = *(v49 - 8);
  v154 = v49;
  v155 = v50;
  MEMORY[0x1EEE9AC00](v49);
  v153 = &v127 - v51;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A080, &qword_18AFD72E8);
  v168 = sub_18AFCC044();
  v166 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v174 = &v127 - v54;
  v55 = v151;
  v56 = *v151;
  v57 = *(v151 + 8);
  LOBYTE(v197[0]) = *(v151 + 16);
  v198 = a2;
  v199 = v29;
  v150 = v29;
  v200 = v164;
  v201 = v47;
  v202 = v175;
  v203 = v165;
  v58 = type metadata accessor for MacLinearSliderVertical(0, &v198);
  v59 = sub_18AF0E664(v58);
  (*(v43 + 16))(v46, v55 + v58[25], a2);
  v60 = v153;
  sub_18AF0B874(v197, v46, a2, v47, v153, v56, v57, v59);
  v61 = *MEMORY[0x1E697F468];
  v62 = sub_18AFCC534();
  v63 = *(v62 - 8);
  v64 = *(v63 + 104);
  v134 = v61;
  v132 = v64;
  v133 = v62;
  v131 = v63 + 104;
  (v64)(v40, v61);
  sub_18AF0E948(v58);
  sub_18AF0E664(v58);
  v65.n128_u64[0] = 1.0;
  v66 = 1.0 - v56;
  v130 = sub_18AEDC310(v65);
  sub_18AFCD084();
  v129 = v40;
  sub_18AEF0D88(v40, v67);
  LOBYTE(v61) = sub_18AF0EB1C();
  v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A0B8, &qword_18AFD7318) + 36)] = v61 & 1;
  v42[*(v156 + 56)] = 0;
  v68 = v154;
  WitnessTable = swift_getWitnessTable();
  sub_18AE95F54(&qword_1EA99A0C0, &qword_1EA99A0B0, &qword_18AFD7310, MEMORY[0x1E697F368]);
  v70 = v167;
  sub_18AFCCC74();
  sub_18AEA2670(v42);
  (*(v155 + 8))(v60, v68);
  v71 = sub_18AE95F54(&qword_1EA99A0C8, &qword_1EA99A080, &qword_18AFD72E8, MEMORY[0x1E697DDB0]);
  v197[11] = WitnessTable;
  v197[12] = v71;
  v72 = v168;
  v154 = swift_getWitnessTable();
  sub_18AEADA5C();
  v155 = *(v166 + 8);
  v156 = v166 + 8;
  (v155)(v70, v72);
  if (*(*(v55 + 24) + 16))
  {
    v73 = *(v55 + 16);
    v74 = v55 + v58[27];
    v75 = *v74;
    if (*(v74 + 8) == 1)
    {
      v76 = *v74;
    }

    else
    {

      sub_18AFCE024();
      v79 = v58;
      v80 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v58 = v79;
      v81 = v127;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v75, 0);
      (*(v128 + 8))(v81, v152);
      v76 = v198;
    }

    v78 = sub_18AF0E664(v58);
    v77 = v73 & 0xFFFFFFFFFFFF00FFLL | (v76 << 8);
    v152 = *(v55 + 24);
  }

  else
  {
    v77 = 0;
    v152 = 0;
    v78 = 0.0;
  }

  v153 = v77;
  if (*(v55 + 19) == 1)
  {
    LOBYTE(v198) = *(v55 + 16);
    v82 = sub_18AF0E948(v58);
    v83 = sub_18AF0E664(v58);
    v84 = v135;
    v85 = v164;
    (*(v136 + 16))(v135, v55 + v58[23], v164);
    v86 = v137;
    sub_18AF09A10(&v198, v84, v85, v165, v137, v82, v83);
    v87 = v143;
    sub_18AFCC1A4();
    v88 = v129;
    v132(v129, v134, v133);
    v89 = v173;
    v90 = swift_getWitnessTable();
    v91 = v58;
    v92 = v139;
    sub_18AFCCAD4();
    sub_18AEF0D88(v88, v93);
    (*(v147 + 8))(v87, v148);
    (*(v138 + 8))(v86, v89);
    v94 = sub_18AE95F54(&qword_1EA99A0D8, &qword_1EA99A098, &unk_18AFD7300, MEMORY[0x1E69805E8]);
    v182 = v90;
    v183 = v94;
    v95 = v172;
    v96 = swift_getWitnessTable();
    v97 = v141;
    v98 = sub_18AFCA11C(0, 1, *&v66, 0, v95, v96, v141);
    (*(v140 + 8))(v92, v95, v98);
    sub_18AFCC8B4();
    sub_18AF0E664(v91);
    v180 = sub_18AE95F54(&qword_1EA99A0D0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDD0]);
    v181 = v96;
    v99 = v171;
    v100 = swift_getWitnessTable();
    v101 = v142;
    sub_18AFCCC24();
    (*(v145 + 8))(v97, v99);
    v102 = *(v91 + 96);
    v178 = v100;
    v179 = MEMORY[0x1E697E5D8];
    v103 = v170;
    v104 = swift_getWitnessTable();
    v105 = v149;
    MEMORY[0x18CFEBFA0](v55 + v102, v103, v150, v104);
    (*(v146 + 8))(v101, v103);
    v176 = v104;
    v177 = v175;
    v106 = v169;
    swift_getWitnessTable();
    v107 = v144;
    sub_18AEADA5C();
    v108 = v157;
    v109 = *(v157 + 8);
    v109(v105, v106);
    sub_18AEADA5C();
    v109(v107, v106);
    v110 = v160;
    (*(v108 + 32))(v160, v105, v106);
    (*(v108 + 56))(v110, 0, 1, v106);
  }

  else
  {
    v110 = v160;
    (*(v157 + 56))(v160, 1, 1, v169);
    v111 = sub_18AE95F54(&qword_1EA99A0D0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDD0]);
    v112 = swift_getWitnessTable();
    v113 = sub_18AE95F54(&qword_1EA99A0D8, &qword_1EA99A098, &unk_18AFD7300, MEMORY[0x1E69805E8]);
    v197[9] = v112;
    v197[10] = v113;
    v114 = swift_getWitnessTable();
    v197[7] = v111;
    v197[8] = v114;
    v197[5] = swift_getWitnessTable();
    v197[6] = MEMORY[0x1E697E5D8];
    v197[3] = swift_getWitnessTable();
    v197[4] = v175;
    swift_getWitnessTable();
  }

  v115 = v159;
  sub_18AF1FC5C(v110, v159);
  v116 = v158;
  v117 = *(v158 + 8);
  v118 = v161;
  v117(v110, v161);
  v119 = v167;
  v120 = v168;
  (*(v166 + 16))(v167, v174, v168);
  v197[0] = v153;
  *&v197[1] = v78;
  v197[2] = v152;
  v198 = v119;
  v199 = v197;
  (*(v116 + 16))(v110, v115, v118);
  v200 = v110;
  v196[0] = v120;
  v196[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A3B8, &unk_18AFD7910);
  v196[2] = v118;
  v193 = v154;
  v194 = sub_18AF0ECA8();
  v121 = sub_18AE95F54(&qword_1EA99A0D0, &qword_1EA99A090, &qword_18AFD72F8, MEMORY[0x1E697DDD0]);
  v122 = swift_getWitnessTable();
  v123 = sub_18AE95F54(&qword_1EA99A0D8, &qword_1EA99A098, &unk_18AFD7300, MEMORY[0x1E69805E8]);
  v191 = v122;
  v192 = v123;
  v124 = swift_getWitnessTable();
  v189 = v121;
  v190 = v124;
  v187 = swift_getWitnessTable();
  v188 = MEMORY[0x1E697E5D8];
  v185 = swift_getWitnessTable();
  v186 = v175;
  v184 = swift_getWitnessTable();
  v195 = swift_getWitnessTable();
  sub_18AEB70B8(&v198, 3uLL, v196);
  v117(v115, v118);
  v125 = v155;
  (v155)(v174, v120);
  v117(v110, v118);

  return v125(v119, v120);
}

double sub_18AF0E664(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  v9 = *(v7 + 8);
  if (*(v1 + 18) == 1)
  {
    if (!v9)
    {

      sub_18AFCE024();
      v10 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v8, 0);
      (*(v4 + 8))(v6, v3);
      LOBYTE(v8) = v17[14];
    }

    v11 = *(*(v1 + 24) + 16);
    if (v8 > 3u)
    {
      if (v8 > 5u)
      {
        if (v8 == 6)
        {
          goto LABEL_7;
        }

LABEL_25:
        v12 = v11 == 0;
        result = 18.0;
        v14 = 14.0;
        goto LABEL_28;
      }

      if (v8 != 4)
      {
        v12 = v11 == 0;
        result = 13.0;
        v14 = 11.0;
        goto LABEL_28;
      }
    }

    else
    {
      if (v8 <= 1u)
      {
        if (!v8)
        {
LABEL_7:
          v12 = v11 == 0;
          result = 16.0;
          v14 = 12.0;
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      result = 16.0;
      if (v8 == 2)
      {
        return result;
      }
    }

    return 20.0;
  }

  if (!v9)
  {

    sub_18AFCE024();
    v15 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v17[15];
  }

  v16 = *(*(v1 + 24) + 16);
  if (v8 > 3u)
  {
    if (v8 > 5u)
    {
      if (v8 == 6)
      {
        goto LABEL_13;
      }

      goto LABEL_27;
    }

    if (v8 != 4)
    {
      v12 = v16 == 0;
      result = 7.0;
      v14 = 13.0;
      goto LABEL_28;
    }

    return 24.0;
  }

  if (v8 > 1u)
  {
    result = 20.0;
    if (v8 == 2)
    {
      return result;
    }

    return 24.0;
  }

  if (!v8)
  {
LABEL_13:
    v12 = v16 == 0;
    result = 8.0;
    v14 = 16.0;
    goto LABEL_28;
  }

LABEL_27:
  v12 = v16 == 0;
  result = 10.0;
  v14 = 18.0;
LABEL_28:
  if (v12)
  {
    return v14;
  }

  return result;
}

double sub_18AF0E948(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 108);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v14[15];
  }

  v10 = *(*(v1 + 24) + 16);
  if (v8 <= 3u)
  {
    if (v8 <= 1u)
    {
      if (!v8)
      {
LABEL_6:
        v11 = v10 == 0;
        result = 16.0;
        v13 = 12.0;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    result = 16.0;
    if (v8 == 2)
    {
      return result;
    }

    return 20.0;
  }

  if (v8 <= 5u)
  {
    if (v8 != 4)
    {
      v11 = v10 == 0;
      result = 13.0;
      v13 = 11.0;
      goto LABEL_14;
    }

    return 20.0;
  }

  if (v8 == 6)
  {
    goto LABEL_6;
  }

LABEL_13:
  v11 = v10 == 0;
  result = 18.0;
  v13 = 14.0;
LABEL_14:
  if (v11)
  {
    return v13;
  }

  return result;
}

BOOL sub_18AF0EB1C()
{
  v1 = v0;
  v2 = sub_18AFCBB34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  if (*(v0 + 19) == 1 && (sub_18AED2E48((&v12 - v7)), (*(v3 + 104))(v5, *MEMORY[0x1E697DBA8], v2), v9 = sub_18AFCBB24(), v10 = *(v3 + 8), v10(v5, v2), v10(v8, v2), (v9 & 1) != 0))
  {
    return *(v1 + 16) - 5 < 0xFFFFFFFE;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18AF0ECA8()
{
  result = qword_1EA99A3C0;
  if (!qword_1EA99A3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A3B8, &unk_18AFD7910);
    sub_18AF0ED2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A3C0);
  }

  return result;
}

unint64_t sub_18AF0ED2C()
{
  result = qword_1EA99A3C8[0];
  if (!qword_1EA99A3C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99A3C8);
  }

  return result;
}

uint64_t sub_18AF0EDC8@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>, uint64_t a7@<X3>)
{
  *a6 = *a1;
  a6[1] = a2;
  type metadata accessor for MacSegmentedControlLayout(0, a4, a5, a7);
  return a3();
}

uint64_t sub_18AF0EE3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AF0EEC4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFC)
  {
    v7 = 252;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFC)
      {
        return (*(v4 + 48))(&a1[v6 + 2] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 4)
      {
        return v15 - 3;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_18AF0F048(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFC)
  {
    v8 = 252;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFC)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 3;
  }
}

uint64_t sub_18AF0F2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A450, &qword_18AFD7BD0);
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E697DDC8];
  sub_18AE95F54(&qword_1EA99A458, &qword_1EA99A450, &qword_18AFD7BD0, MEMORY[0x1E697DDC8]);
  v6 = sub_18AFCBDC4();
  v114 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v102 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A460, &qword_18AFD7BD8);
  sub_18AE95F54(&qword_1EA99A468, &qword_1EA99A460, &qword_18AFD7BD8, v5);
  v10 = sub_18AFCBDC4();
  v124 = v6;
  v11 = sub_18AFCC624();
  v111 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v102 - v12;
  v123 = v10;
  v113 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v102 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A470, &qword_18AFD7BE0);
  sub_18AE95F54(&qword_1EA99A478, &qword_1EA99A470, &qword_18AFD7BE0, v5);
  v17 = sub_18AFCBDC4();
  v112 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v102 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A480, &qword_18AFD7BE8);
  sub_18AE95F54(&qword_1EA99A488, &qword_1EA99A480, &qword_18AFD7BE8, v5);
  v21 = sub_18AFCBDC4();
  v120 = v17;
  v22 = sub_18AFCC624();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v116 = &v102 - v24;
  v102 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v104 = &v102 - v29;
  v121 = v11;
  v30 = sub_18AFCC624();
  v118 = *(v30 - 8);
  v119 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v102 - v31;
  v33 = *v2;
  v34 = v2[1];
  v35 = *(a1 + 24);
  v117 = v32;
  if (v33 > 1)
  {
    v116 = v22;
    v103 = v21;
    if (v33 == 2)
    {
      v50 = swift_allocObject();
      *(v50 + 16) = v4;
      *(v50 + 24) = v35;
      *(v50 + 32) = v34;
      MEMORY[0x1EEE9AC00](v50);
      *(&v102 - 4) = v4;
      *(&v102 - 3) = v35;
      *(&v102 - 2) = v2;
      v51 = v108;
      sub_18AF10868(sub_18AF10700, (&v102 - 6), sub_18AF10814, &type metadata for MacSegmentedControlLayoutFillEqually, v108);

      v52 = MEMORY[0x1E697DDD0];
      v159 = sub_18AE95F54(&qword_1EA99A498, &qword_1EA99A460, &qword_18AFD7BD8, MEMORY[0x1E697DDD0]);
      v160 = v35;
      v53 = v123;
      WitnessTable = swift_getWitnessTable();
      sub_18AEADA5C();
      v55 = *(v113 + 8);
      v113 += 8;
      v114 = v55;
      (v55)(v51, v53);
      v56 = WitnessTable;
      sub_18AEADA5C();
      v157 = sub_18AE95F54(&qword_1EA99A490, &qword_1EA99A450, &qword_18AFD7BD0, v52);
      v158 = v35;
      v112 = swift_getWitnessTable();
      v57 = v115;
      v58 = v51;
      v59 = v56;
      sub_18AEB5268(v58, v53);
      v155 = sub_18AE95F54(&qword_1EA99A4A0, &qword_1EA99A480, &qword_18AFD7BE8, v52);
      v156 = v35;
      v60 = swift_getWitnessTable();
      v153 = sub_18AE95F54(&qword_1EA99A4A8, &qword_1EA99A470, &qword_18AFD7BE0, v52);
      v154 = v35;
      v61 = swift_getWitnessTable();
      v151 = v60;
      v152 = v61;
      v62 = v53;
      v63 = v116;
      swift_getWitnessTable();
      v149 = v59;
      v150 = v112;
      v64 = v121;
      swift_getWitnessTable();
      v45 = v117;
      sub_18AEB5360(v57, v63, v64);
      (*(v111 + 8))(v57, v64);
      v65 = v114;
      (v114)(v108, v62);
      v65(v107, v62);
    }

    else
    {
      v78 = swift_allocObject();
      *(v78 + 16) = v4;
      *(v78 + 24) = v35;
      *(v78 + 32) = v34;
      MEMORY[0x1EEE9AC00](v78);
      *(&v102 - 4) = v4;
      *(&v102 - 3) = v35;
      *(&v102 - 2) = v2;
      v79 = v110;
      sub_18AF10868(sub_18AF106DC, (&v102 - 6), sub_18AF108EC, &type metadata for MacSegmentedControlLayoutFillProportionally, v110);

      v80 = MEMORY[0x1E697DDD0];
      v185 = sub_18AE95F54(&qword_1EA99A490, &qword_1EA99A450, &qword_18AFD7BD0, MEMORY[0x1E697DDD0]);
      v186 = v35;
      v81 = v124;
      v82 = swift_getWitnessTable();
      sub_18AEADA5C();
      v113 = *(v114 + 1);
      v114 += 8;
      (v113)(v79, v81);
      v83 = v82;
      sub_18AEADA5C();
      v183 = sub_18AE95F54(&qword_1EA99A498, &qword_1EA99A460, &qword_18AFD7BD8, v80);
      v184 = v35;
      v84 = v123;
      v85 = swift_getWitnessTable();
      sub_18AEB5360(v79, v84, v81);
      v181 = sub_18AE95F54(&qword_1EA99A4A0, &qword_1EA99A480, &qword_18AFD7BE8, v80);
      v182 = v35;
      v86 = swift_getWitnessTable();
      v179 = sub_18AE95F54(&qword_1EA99A4A8, &qword_1EA99A470, &qword_18AFD7BE0, v80);
      v180 = v35;
      v87 = swift_getWitnessTable();
      v177 = v86;
      v178 = v87;
      v88 = v116;
      swift_getWitnessTable();
      v175 = v85;
      v176 = v83;
      v89 = v121;
      swift_getWitnessTable();
      v90 = v117;
      v91 = v115;
      sub_18AEB5360(v115, v88, v89);
      (*(v111 + 8))(v91, v89);
      v92 = v113;
      (v113)(v110, v81);
      v92(v109, v81);
      v45 = v90;
    }
  }

  else
  {
    v115 = v23;
    if (v33)
    {
      v66 = swift_allocObject();
      *(v66 + 16) = v4;
      *(v66 + 24) = v35;
      *(v66 + 32) = v34;
      MEMORY[0x1EEE9AC00](v66);
      *(&v102 - 4) = v4;
      *(&v102 - 3) = v35;
      *(&v102 - 2) = v2;
      v67 = v106;
      sub_18AF10868(sub_18AF10724, (&v102 - 6), sub_18AF107C0, &type metadata for MacSegmentedControlLayoutFill, v106);

      v110 = MEMORY[0x1E697DDD0];
      v147 = sub_18AE95F54(&qword_1EA99A4A8, &qword_1EA99A470, &qword_18AFD7BE0, MEMORY[0x1E697DDD0]);
      v148 = v35;
      v68 = v120;
      v69 = swift_getWitnessTable();
      sub_18AEADA5C();
      v70 = *(v112 + 8);
      v112 += 8;
      v114 = v70;
      (v70)(v67, v68);
      sub_18AEADA5C();
      v71 = v110;
      v145 = sub_18AE95F54(&qword_1EA99A4A0, &qword_1EA99A480, &qword_18AFD7BE8, v110);
      v146 = v35;
      v72 = swift_getWitnessTable();
      sub_18AEB5360(v67, v21, v68);
      v143 = v72;
      v144 = v69;
      v111 = MEMORY[0x1E697F968];
      v113 = swift_getWitnessTable();
      v141 = sub_18AE95F54(&qword_1EA99A498, &qword_1EA99A460, &qword_18AFD7BD8, v71);
      v142 = v35;
      v73 = swift_getWitnessTable();
      v139 = sub_18AE95F54(&qword_1EA99A490, &qword_1EA99A450, &qword_18AFD7BD0, v71);
      v140 = v35;
      v74 = swift_getWitnessTable();
      v137 = v73;
      v138 = v74;
      v75 = v68;
      swift_getWitnessTable();
      v76 = v116;
      v45 = v117;
      sub_18AEB5268(v116, v22);
      (*(v115 + 8))(v76, v22);
      v77 = v114;
      (v114)(v106, v75);
      v77(v105, v75);
    }

    else
    {
      v36 = swift_allocObject();
      *(v36 + 16) = v4;
      *(v36 + 24) = v35;
      *(v36 + 32) = v34;
      MEMORY[0x1EEE9AC00](v36);
      *(&v102 - 4) = v4;
      *(&v102 - 3) = v35;
      *(&v102 - 2) = v2;
      sub_18AF10868(sub_18AF10748, (&v102 - 6), sub_18AF1076C, &type metadata for MacSegmentedControlLayoutFit, v27);

      v37 = MEMORY[0x1E697DDD0];
      v111 = MEMORY[0x1E697DDD0];
      v135 = sub_18AE95F54(&qword_1EA99A4A0, &qword_1EA99A480, &qword_18AFD7BE8, MEMORY[0x1E697DDD0]);
      v136 = v35;
      v38 = swift_getWitnessTable();
      sub_18AEADA5C();
      v114 = *(v102 + 8);
      (v114)(v27, v21);
      sub_18AEADA5C();
      v133 = sub_18AE95F54(&qword_1EA99A4A8, &qword_1EA99A470, &qword_18AFD7BE0, v37);
      v134 = v35;
      v39 = v21;
      v103 = v21;
      v40 = v22;
      v41 = swift_getWitnessTable();
      sub_18AEB5268(v27, v39);
      v131 = v38;
      v132 = v41;
      v112 = MEMORY[0x1E697F968];
      v113 = swift_getWitnessTable();
      v42 = v111;
      v129 = sub_18AE95F54(&qword_1EA99A498, &qword_1EA99A460, &qword_18AFD7BD8, v111);
      v130 = v35;
      v43 = swift_getWitnessTable();
      v127 = sub_18AE95F54(&qword_1EA99A490, &qword_1EA99A450, &qword_18AFD7BD0, v42);
      v128 = v35;
      v44 = swift_getWitnessTable();
      v125 = v43;
      v126 = v44;
      swift_getWitnessTable();
      v46 = v116;
      v45 = v117;
      sub_18AEB5268(v116, v40);
      (*(v115 + 8))(v46, v40);
      v47 = v27;
      v48 = v103;
      v49 = v114;
      (v114)(v47, v103);
      v49(v104, v48);
    }
  }

  v93 = MEMORY[0x1E697DDD0];
  v173 = sub_18AE95F54(&qword_1EA99A4A0, &qword_1EA99A480, &qword_18AFD7BE8, MEMORY[0x1E697DDD0]);
  v174 = v35;
  v94 = swift_getWitnessTable();
  v171 = sub_18AE95F54(&qword_1EA99A4A8, &qword_1EA99A470, &qword_18AFD7BE0, v93);
  v172 = v35;
  v95 = swift_getWitnessTable();
  v169 = v94;
  v170 = v95;
  v96 = swift_getWitnessTable();
  v167 = sub_18AE95F54(&qword_1EA99A498, &qword_1EA99A460, &qword_18AFD7BD8, v93);
  v168 = v35;
  v97 = swift_getWitnessTable();
  v165 = sub_18AE95F54(&qword_1EA99A490, &qword_1EA99A450, &qword_18AFD7BD0, v93);
  v166 = v35;
  v98 = swift_getWitnessTable();
  v163 = v97;
  v164 = v98;
  v99 = swift_getWitnessTable();
  v161 = v96;
  v162 = v99;
  v100 = v119;
  swift_getWitnessTable();
  sub_18AEADA5C();
  return (*(v118 + 8))(v45, v100);
}

uint64_t sub_18AF10564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MacSegmentedControlLayout(0, a2, a3, v9);
  sub_18AEADA5C();
  sub_18AEADA5C();
  (*(v6 + 8))(v8, a2);
}

unint64_t sub_18AF1076C()
{
  result = qword_1EA99A4B0;
  if (!qword_1EA99A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A4B0);
  }

  return result;
}

unint64_t sub_18AF107C0()
{
  result = qword_1EA99A4B8;
  if (!qword_1EA99A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A4B8);
  }

  return result;
}

unint64_t sub_18AF10814()
{
  result = qword_1EA99A4C0;
  if (!qword_1EA99A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A4C0);
  }

  return result;
}

uint64_t sub_18AF10868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = a3();
  return sub_18AFC3A04(a1, a2, a4, v10, v12, v11, a5);
}

unint64_t sub_18AF108EC()
{
  result = qword_1EA99A4C8;
  if (!qword_1EA99A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A4C8);
  }

  return result;
}

void sub_18AF1097C(double *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_18AF144A4(a2);
  *a1 = v4;
  a1[1] = v3;
  *(a1 + 2) = MEMORY[0x1E69E7CC0];
}

void (*sub_18AF10A38(uint64_t *a1))(void *a1)
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

unint64_t sub_18AF10AC4()
{
  result = qword_1EA99A4D0;
  if (!qword_1EA99A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A4D0);
  }

  return result;
}

uint64_t sub_18AF10B40(uint64_t a1, int a2, uint64_t a3)
{
  v37 = a2;
  v33 = *&a1;
  v4 = sub_18AFCB934();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A4D8, &qword_18AFD7E70);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v33 - v7;
  v9 = sub_18AFCB994();
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC0];
  v39[0] = MEMORY[0x1E69E7CC0];
  sub_18AF11584(&qword_1EA99A4E0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A4E8, &unk_18AFD7D00);
  sub_18AF11520();
  v38 = v11;
  sub_18AFCE0F4();
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a3 + 48);
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v19 = *(v15 - 2);
      v18 = *(v15 - 1);
      v20 = *v15;
      if (v18 >= INFINITY)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = *(v15 - 1);
      }

      if (v18 <= INFINITY)
      {
        v22 = v21;
      }

      else
      {
        v22 = *(v15 - 1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_18AF4AC48(0, *(v12 + 2) + 1, 1, v12);
      }

      v24 = *(v12 + 2);
      v23 = *(v12 + 3);
      if (v24 >= v23 >> 1)
      {
        v12 = sub_18AF4AC48((v23 > 1), v24 + 1, 1, v12);
      }

      *(v12 + 2) = v24 + 1;
      *&v12[8 * v24 + 32] = v22;
      if (v19 == v20)
      {
        v17 = v17 + v22;
      }

      else
      {
        sub_18AFCB974();
        v16 = v16 + v22;
      }

      ++v14;
      v15 += 3;
    }

    while (v13 != v14);
  }

  else
  {
    v16 = 0.0;
    v17 = 0.0;
  }

  if (v37)
  {
LABEL_33:
    (*(v36 + 8))(v38, v9);
    return v12;
  }

  else
  {
    if (sub_18AFCB964() < 1)
    {
      v26 = 0.0;
    }

    else
    {
      v25 = v33;
      if (v33 < 0.0)
      {
        v25 = 0.0;
      }

      v26 = (v25 - v17 - v16) / sub_18AFCB964();
    }

    sub_18AFCB944();
    sub_18AF11584(&qword_1EA99A4F8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v27 = (v35 + 8);
    while (1)
    {
      sub_18AFCDFE4();
      sub_18AF11584(&qword_1EA99A500, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v28 = sub_18AFCDDF4();
      (*v27)(v6, v4);
      if (v28)
      {
        goto LABEL_32;
      }

      v29 = sub_18AFCE004();
      v31 = *v30;
      v29(v39, 0);
      sub_18AFCDFF4();
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        result = sub_18AF10B18(v12);
        v12 = result;
        if ((v31 & 0x8000000000000000) != 0)
        {
LABEL_31:
          __break(1u);
LABEL_32:
          sub_18AF115CC(v8);
          goto LABEL_33;
        }
      }

      if (v31 >= *(v12 + 2))
      {
        break;
      }

      *&v12[8 * v31 + 32] = v26 + *&v12[8 * v31 + 32];
    }

    __break(1u);
  }

  return result;
}

double sub_18AF11020(uint64_t a1, char a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  sub_18AFCBE84();
  sub_18AF11584(&qword_1EA99A2A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = 0.0;
  if (v18 != v17)
  {
    v9 = sub_18AF10B40(a1, a2 & 1, *a5);

    a5[2] = v9;
    v10 = *(v9 + 16);
    if (!v10)
    {
      return 0.0;
    }

    if (v10 <= 3)
    {
      v11 = 0;
      result = 0.0;
LABEL_9:
      v14 = v10 - v11;
      v15 = (v9 + 8 * v11 + 32);
      do
      {
        v16 = *v15++;
        result = result + v16;
        --v14;
      }

      while (v14);
      return result;
    }

    v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
    v12 = (v9 + 48);
    result = 0.0;
    v13 = v10 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      result = result + *(v12 - 2) + *(v12 - 1) + *v12 + v12[1];
      v12 += 4;
      v13 -= 4;
    }

    while (v13);
    if (v10 != v11)
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_18AF11180(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v32 = sub_18AFCBD64();
  v15 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF11584(&qword_1EA99A2A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18AFCDFC4();
  v33 = a7;
  result = sub_18AFCDFE4();
  if (v35 != v34 && (a6 & 1) == 0)
  {
    v31 = *(a8 + 16);
    if (*(v31 + 16))
    {
      v19 = *(v31 + 32);
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      MinX = CGRectGetMinX(v36);
      v37.origin.x = a1;
      v37.origin.y = a2;
      v37.size.width = a3;
      v37.size.height = a4;
      CGRectGetMidY(v37);
      sub_18AFCDFC4();
      result = sub_18AFCDFE4();
      v21 = v34;
      v22 = v35;
      if (v34 < v35)
      {
        goto LABEL_19;
      }

      if (v35 != v34)
      {
        if (v35 >= v34)
        {
          goto LABEL_20;
        }

        if (v35 < 0)
        {
LABEL_21:
          __break(1u);
        }

        else
        {
          v23 = *(v31 + 16);
          if (v35 < v23 && v34 - 1 < v23)
          {
            v24 = MinX + v19 * 0.5;
            v25 = v23 - 1;
            v26 = (v15 + 8);
            for (i = (v31 + 8 * v35 + 40); ; ++i)
            {
              v28 = v22++;
              v29 = *(i - 1);
              sub_18AFCBE94();
              sub_18AFCDD04();
              LOBYTE(v35) = 0;
              LOBYTE(v34) = 0;
              sub_18AFCBD54();
              result = (*v26)(v17, v32);
              if (v28 < v25)
              {
                if ((v22 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_18:
                  __break(1u);
LABEL_19:
                  __break(1u);
LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

                if (v22 >= *(v31 + 16))
                {
                  goto LABEL_18;
                }

                v24 = v24 + (v29 + *i) * 0.5;
              }

              if (v21 == v22)
              {
                return result;
              }
            }
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_18AF11478(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_18AFCC4C4();
  if (sub_18AFCC4E4() & 1) != 0 || (sub_18AFCC4B4(), (sub_18AFCC4E4()))
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    *&result = CGRectGetMaxY(v14) - dbl_18AFD7D10[a8];
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

unint64_t sub_18AF11520()
{
  result = qword_1EA99A4F0;
  if (!qword_1EA99A4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A4E8, &unk_18AFD7D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A4F0);
  }

  return result;
}

uint64_t sub_18AF11584(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AF115CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A4D8, &qword_18AFD7E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*sub_18AF1168C(uint64_t *a1))(void *a1)
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

unint64_t sub_18AF11718()
{
  result = qword_1EA99A508;
  if (!qword_1EA99A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A508);
  }

  return result;
}

void sub_18AF1176C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18AF5DC44(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  v4 = sub_18AFCE244();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = *(v12 + 2);
          v15 = *(v12 + 3);
          v16 = *(v12 + 5);
          v17 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v17;
          *(v12 - 2) = v14;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v16;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A520, &unk_18AFD7E80);
      v7 = sub_18AFCDEB4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = (v7 + 32);
    v19[1] = v6;
    sub_18AF118D4(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_18AF118D4(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_18AF5D960(v8);
    }

    v86 = v8 + 16;
    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v8[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_18AF11E78((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 32 * v7 - 8;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v11);
            v23 = (v28 + v19);
            v24 = *v22;
            v25 = v22[3];
            v26 = *(v22 + 1);
            v27 = *(v23 - 1);
            *v22 = *(v23 - 3);
            *(v22 + 1) = v27;
            *(v23 - 3) = v24;
            *(v23 - 1) = v26;
            *v23 = v25;
          }

          ++v21;
          v19 -= 32;
          v11 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_18AF4AE50(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v40 = *(v8 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      v8 = sub_18AF4AE50((v40 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = v8 + 32;
    v43 = &v8[16 * v5 + 32];
    *v43 = v9;
    *(v43 + 1) = v7;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 4);
          v45 = *(v8 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v8[16 * v41];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v42[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = &v8[16 * v41];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = &v42[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = &v42[16 * v5 - 16];
        v82 = *v81;
        v83 = &v42[16 * v5];
        v84 = *(v83 + 1);
        sub_18AF11E78((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *(v8 + 2);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        memmove(&v42[16 * v5], v83 + 16, 16 * (v85 - 1 - v5));
        *(v8 + 2) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v42[16 * v41];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v8[16 * v41];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v42[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 16);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *(v34 - 16))
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 24);
    v38 = *(v34 - 16);
    *v34 = *(v34 - 32);
    *(v34 + 16) = v38;
    *(v34 - 24) = v36;
    *(v34 - 16) = v32;
    *(v34 - 8) = v37;
    *(v34 - 32) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_18AF11E78(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v14 - 2) < *(v6 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

void *sub_18AF1207C(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = result + 6;
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (!v3)
      {
        v9 = v2[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v23 = *(v6 - 1);
        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A518, &qword_18AFD7E78);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 1;
        }

        v15 = v14 >> 5;
        v12[2] = v11;
        v12[3] = 2 * (v14 >> 5);
        v16 = (v12 + 4);
        v17 = v2[3] >> 1;
        if (v2[2])
        {
          if (v12 != v2 || v16 >= &v2[4 * v17 + 4])
          {
            memmove(v12 + 4, v2 + 4, 32 * v17);
          }

          v2[2] = 0;
        }

        v5 = v16 + 32 * v17;
        v3 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;

        v2 = v12;
        v7 = v23;
      }

      v19 = __OFSUB__(v3--, 1);
      if (v19)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 8) = v7;
      *(v5 + 24) = v8;
      v5 += 32;
      v6 += 3;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v20 = v2[3];
  if (v20 < 2)
  {
    return v2;
  }

  v21 = v20 >> 1;
  v19 = __OFSUB__(v21, v3);
  v22 = v21 - v3;
  if (!v19)
  {
    v2[2] = v22;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_18AF12204(uint64_t a1, int a2, void *a3)
{
  v85 = a2;
  v83 = a1;
  v4 = sub_18AFCB934();
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A4D8, &qword_18AFD7E70);
  MEMORY[0x1EEE9AC00](v90);
  v84 = (&v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v83 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - v11;
  v13 = sub_18AFCB994();
  v91 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v83 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v83 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v83 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v83 - v24;
  v87 = a3;
  v26 = a3[2];
  sub_18AF132B8(&qword_1EA99A4E0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_18AFCE0E4();
  v27 = v96;
  v97 = v19;
  v98 = v26;
  v94 = v25;
  if (!v26)
  {
    v35 = v91;
    (*(v91 + 32))(v25, v22, v13);
    sub_18AFCB984();
    sub_18AFCB984();
    v33 = 0.0;
    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_12;
  }

  v28 = 0;
  do
  {
    v29 = v28 + 1;
    v100[4] = v28;
    sub_18AFCE0B4();
    v28 = v29;
  }

  while (v26 != v29);
  (*(v91 + 32))(v94, v22, v13);
  sub_18AFCB984();
  v27 = v96;
  sub_18AFCB984();
  v30 = sub_18AFCDEB4();
  *(v30 + 16) = v26;
  bzero((v30 + 32), 8 * v26);
  v31 = 0;
  v32 = (v87 + 6);
  v33 = 0.0;
  while (1)
  {
    if (*(v32 - 2) != *v32)
    {
      goto LABEL_6;
    }

    if (v31 >= *(v30 + 16))
    {
      break;
    }

    v34 = *(v32 - 1);
    *(v30 + 8 * v31 + 32) = v34;
    sub_18AFCB974();
    v26 = v98;
    v33 = v33 + v34;
LABEL_6:
    ++v31;
    v32 += 3;
    if (v26 == v31)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  v19 = v97;
  v35 = v91;
LABEL_12:
  v92 = *(v35 + 8);
  v93 = v35 + 8;
  v92(v19, v13);
  v37 = *(v35 + 16);
  v36 = v35 + 16;
  v88 = v37;
  v37(v19, v27, v13);
  v99 = v30;
  if (v85)
  {
    v38 = v98;
    if (v98)
    {
      v39 = (v87 + 5);
      v40 = 0.0;
      v41 = v84;
      do
      {
        v42 = *v39;
        v39 += 3;
        v43 = v42;
        if (v40 <= v42)
        {
          v40 = v43;
        }

        --v38;
      }

      while (v38);
    }

    else
    {
LABEL_41:
      v40 = 0.0;
      v41 = v84;
    }

    v61 = v89;
    sub_18AFCB954();
    sub_18AFCB944();
    v92(v61, v13);
    sub_18AF132B8(&qword_1EA99A4F8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v62 = (v86 + 8);
    for (i = v30 + 32; ; *(i + 8 * v67) = v40)
    {
      sub_18AFCDFE4();
      sub_18AF132B8(&qword_1EA99A500, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v64 = sub_18AFCDDF4();
      (*v62)(v6, v4);
      if (v64)
      {
        break;
      }

      v65 = sub_18AFCE004();
      v67 = *v66;
      v65(v100, 0);
      sub_18AFCDFF4();
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      if (v67 >= *(v99 + 16))
      {
        goto LABEL_62;
      }
    }

    v68 = v41;
    v69 = v96;
LABEL_57:
    sub_18AF115CC(v68);
    v19 = v97;
LABEL_58:
    v81 = v92;
    v92(v69, v13);
    v81(v19, v13);
    v81(v94, v13);
    return v99;
  }

  else
  {
    v91 = v36;
    v100[0] = sub_18AF1207C(v87);
    v41 = 0;
    sub_18AF1176C(v100);
    v44 = v100[0];
    if (*&v83 - v33 < 0.0)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = *&v83 - v33;
    }

    if (*(v100[0] + 2))
    {
      v41 = (v86 + 8);
      v30 += 32;
      v46 = v45;
      while (1)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v47 = *(v44 + 2);
          if (!v47)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v44 = sub_18AF10B2C(v44);
          v47 = *(v44 + 2);
          if (!v47)
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        v48 = v47 - 1;
        v49 = &v44[32 * v47];
        v50 = *v49;
        v51 = *(v49 + 2);
        *(v44 + 2) = v48;
        if (v46 <= 0.000000119209)
        {
          v19 = v97;
          goto LABEL_49;
        }

        v52 = sub_18AFCB964();
        v53 = &v98[-v52];
        if (__OFSUB__(v98, v52))
        {
          break;
        }

        v54 = v53;
        if (v46 >= v51 * v53)
        {

          v55 = v46 / v54;
          v56 = v89;
          sub_18AFCB954();
          sub_18AFCB944();
          v92(v56, v13);
          sub_18AF132B8(&qword_1EA99A4F8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
          while (1)
          {
            sub_18AFCDFE4();
            sub_18AF132B8(&qword_1EA99A500, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
            v57 = sub_18AFCDDF4();
            (*v41)(v6, v4);
            if (v57)
            {
              break;
            }

            v58 = sub_18AFCE004();
            v60 = *v59;
            v58(v100, 0);
            sub_18AFCDFF4();
            if ((v60 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            if (v60 >= *(v99 + 16))
            {
              goto LABEL_60;
            }

            *(v30 + 8 * v60) = v55;
          }

          sub_18AF115CC(v12);
          v19 = v97;
          v92(v97, v13);
          v88(v19, v94, v13);
          v46 = 0.0;
          v44 = MEMORY[0x1E69E7CC0];
          if (!*(MEMORY[0x1E69E7CC0] + 16))
          {
            goto LABEL_49;
          }
        }

        else
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }

          if (v50 >= *(v99 + 16))
          {
            goto LABEL_67;
          }

          *(v30 + 8 * v50) = v51;
          v19 = v97;
          sub_18AFCB974();
          v46 = v46 - v51;
          if (!*(v44 + 2))
          {
            goto LABEL_49;
          }
        }
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
    }

    else
    {
LABEL_49:

      sub_18AF132B8(&qword_1EA99A510, MEMORY[0x1E6969B50], MEMORY[0x1E6969B70]);
      v70 = sub_18AFCDDF4();
      v69 = v96;
      if (v70)
      {
        goto LABEL_58;
      }

      v71 = sub_18AFCB964();
      if (!__OFSUB__(v98, v71))
      {
        v72 = v45 / &v98[-v71];
        v73 = v89;
        sub_18AFCB954();
        sub_18AFCB944();
        v92(v73, v13);
        v41 = sub_18AF132B8(&qword_1EA99A4F8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
        v74 = (v86 + 8);
        v75 = v99 + 32;
        while (1)
        {
          v76 = v95;
          sub_18AFCDFE4();
          sub_18AF132B8(&qword_1EA99A500, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
          v77 = sub_18AFCDDF4();
          (*v74)(v6, v4);
          if (v77)
          {
            break;
          }

          v78 = sub_18AFCE004();
          v80 = *v79;
          v78(v100, 0);
          sub_18AFCDFF4();
          if ((v80 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v80 >= *(v99 + 16))
          {
            goto LABEL_64;
          }

          *(v75 + 8 * v80) = v72;
          v69 = v96;
        }

        v68 = v76;
        goto LABEL_57;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

double sub_18AF12DB8(uint64_t a1, char a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  sub_18AFCBE84();
  sub_18AF132B8(&qword_1EA99A2A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = 0.0;
  if (v18 != v17)
  {
    v9 = sub_18AF12204(a1, a2 & 1, *a5);

    a5[2] = v9;
    v10 = *(v9 + 16);
    if (!v10)
    {
      return 0.0;
    }

    if (v10 <= 3)
    {
      v11 = 0;
      result = 0.0;
LABEL_9:
      v14 = v10 - v11;
      v15 = (v9 + 8 * v11 + 32);
      do
      {
        v16 = *v15++;
        result = result + v16;
        --v14;
      }

      while (v14);
      return result;
    }

    v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
    v12 = (v9 + 48);
    result = 0.0;
    v13 = v10 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      result = result + *(v12 - 2) + *(v12 - 1) + *v12 + v12[1];
      v12 += 4;
      v13 -= 4;
    }

    while (v13);
    if (v10 != v11)
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_18AF12F18(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v32 = sub_18AFCBD64();
  v15 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF132B8(&qword_1EA99A2A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18AFCDFC4();
  v33 = a7;
  result = sub_18AFCDFE4();
  if (v35 != v34 && (a6 & 1) == 0)
  {
    v31 = *(a8 + 16);
    if (*(v31 + 16))
    {
      v19 = *(v31 + 32);
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      MinX = CGRectGetMinX(v36);
      v37.origin.x = a1;
      v37.origin.y = a2;
      v37.size.width = a3;
      v37.size.height = a4;
      CGRectGetMidY(v37);
      sub_18AFCDFC4();
      result = sub_18AFCDFE4();
      v21 = v34;
      v22 = v35;
      if (v34 < v35)
      {
        goto LABEL_19;
      }

      if (v35 != v34)
      {
        if (v35 >= v34)
        {
          goto LABEL_20;
        }

        if (v35 < 0)
        {
LABEL_21:
          __break(1u);
        }

        else
        {
          v23 = *(v31 + 16);
          if (v35 < v23 && v34 - 1 < v23)
          {
            v24 = MinX + v19 * 0.5;
            v25 = v23 - 1;
            v26 = (v15 + 8);
            for (i = (v31 + 8 * v35 + 40); ; ++i)
            {
              v28 = v22++;
              v29 = *(i - 1);
              sub_18AFCBE94();
              sub_18AFCDD04();
              LOBYTE(v35) = 0;
              LOBYTE(v34) = 0;
              sub_18AFCBD54();
              result = (*v26)(v17, v32);
              if (v28 < v25)
              {
                if ((v22 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_18:
                  __break(1u);
LABEL_19:
                  __break(1u);
LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

                if (v22 >= *(v31 + 16))
                {
                  goto LABEL_18;
                }

                v24 = v24 + (v29 + *i) * 0.5;
              }

              if (v21 == v22)
              {
                return result;
              }
            }
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_18AF13210(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_18AFCC4C4();
  if (sub_18AFCC4E4() & 1) != 0 || (sub_18AFCC4B4(), (sub_18AFCC4E4()))
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    *&result = CGRectGetMaxY(v14) - dbl_18AFD7E90[a8];
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_18AF132B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_18AF13358(uint64_t *a1))(void *a1)
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

unint64_t sub_18AF133E4()
{
  result = qword_1EA99A528;
  if (!qword_1EA99A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A528);
  }

  return result;
}

char *sub_18AF13438(uint64_t a1, int a2, uint64_t a3)
{
  v38 = a2;
  v35 = *&a1;
  v4 = sub_18AFCB934();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A4D8, &qword_18AFD7E70);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v34 - v7;
  v9 = sub_18AFCB994();
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1E69E7CC0];
  v40[0] = MEMORY[0x1E69E7CC0];
  sub_18AF11584(&qword_1EA99A4E0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A4E8, &unk_18AFD7D00);
  sub_18AF11520();
  v39 = v11;
  sub_18AFCE0F4();
  v13 = *(a3 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a3 + 48);
    v16 = 0.0;
    v17 = 0.0;
    do
    {
      v19 = *(v15 - 2);
      v18 = *(v15 - 1);
      v20 = *v15;
      if (v18 >= INFINITY)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = *(v15 - 1);
      }

      if (v18 <= INFINITY)
      {
        v22 = v21;
      }

      else
      {
        v22 = *(v15 - 1);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_18AF4AC48(0, *(v12 + 2) + 1, 1, v12);
      }

      v24 = *(v12 + 2);
      v23 = *(v12 + 3);
      if (v24 >= v23 >> 1)
      {
        v12 = sub_18AF4AC48((v23 > 1), v24 + 1, 1, v12);
      }

      *(v12 + 2) = v24 + 1;
      *&v12[8 * v24 + 32] = v22;
      if (v19 == v20)
      {
        v17 = v17 + v22;
      }

      else
      {
        sub_18AFCB974();
        v16 = v16 + v22;
      }

      ++v14;
      v15 += 3;
    }

    while (v13 != v14);
  }

  else
  {
    v16 = 0.0;
    v17 = 0.0;
  }

  if (v38)
  {
LABEL_29:
    (*(v37 + 8))(v39, v9);
    return v12;
  }

  else
  {
    v25 = v35;
    if (v35 < 0.0)
    {
      v25 = 0.0;
    }

    v26 = v25 - v17 - v16;
    sub_18AFCB944();
    sub_18AF11584(&qword_1EA99A4F8, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v27 = (v36 + 8);
    while (1)
    {
      sub_18AFCDFE4();
      sub_18AF11584(&qword_1EA99A500, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
      v28 = sub_18AFCDDF4();
      (*v27)(v6, v4);
      if (v28)
      {
        sub_18AF115CC(v8);
        goto LABEL_29;
      }

      v29 = sub_18AFCE004();
      v31 = *v30;
      v29(v40, 0);
      result = sub_18AFCDFF4();
      if ((v31 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v31 >= *(v12 + 2))
      {
        goto LABEL_31;
      }

      v33 = *&v12[8 * v31 + 32];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_18AF10B18(v12);
      }

      *&v12[8 * v31 + 32] = v26 * (v33 / v16) + *&v12[8 * v31 + 32];
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

double sub_18AF13908(uint64_t a1, char a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  sub_18AFCBE84();
  sub_18AF11584(&qword_1EA99A2A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = 0.0;
  if (v18 != v17)
  {
    v9 = sub_18AF13438(a1, a2 & 1, *a5);

    a5[2] = v9;
    v10 = *(v9 + 2);
    if (!v10)
    {
      return 0.0;
    }

    if (v10 <= 3)
    {
      v11 = 0;
      result = 0.0;
LABEL_9:
      v14 = v10 - v11;
      v15 = &v9[8 * v11 + 32];
      do
      {
        v16 = *v15++;
        result = result + v16;
        --v14;
      }

      while (v14);
      return result;
    }

    v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
    v12 = (v9 + 48);
    result = 0.0;
    v13 = v10 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      result = result + *(v12 - 2) + *(v12 - 1) + *v12 + v12[1];
      v12 += 4;
      v13 -= 4;
    }

    while (v13);
    if (v10 != v11)
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_18AF13A68(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v32 = sub_18AFCBD64();
  v15 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF11584(&qword_1EA99A2A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  sub_18AFCDFC4();
  v33 = a7;
  result = sub_18AFCDFE4();
  if (v35 != v34 && (a6 & 1) == 0)
  {
    v31 = *(a8 + 16);
    if (*(v31 + 16))
    {
      v19 = *(v31 + 32);
      v36.origin.x = a1;
      v36.origin.y = a2;
      v36.size.width = a3;
      v36.size.height = a4;
      MinX = CGRectGetMinX(v36);
      v37.origin.x = a1;
      v37.origin.y = a2;
      v37.size.width = a3;
      v37.size.height = a4;
      CGRectGetMidY(v37);
      sub_18AFCDFC4();
      result = sub_18AFCDFE4();
      v21 = v34;
      v22 = v35;
      if (v34 < v35)
      {
        goto LABEL_19;
      }

      if (v35 != v34)
      {
        if (v35 >= v34)
        {
          goto LABEL_20;
        }

        if (v35 < 0)
        {
LABEL_21:
          __break(1u);
        }

        else
        {
          v23 = *(v31 + 16);
          if (v35 < v23 && v34 - 1 < v23)
          {
            v24 = MinX + v19 * 0.5;
            v25 = v23 - 1;
            v26 = (v15 + 8);
            for (i = (v31 + 8 * v35 + 40); ; ++i)
            {
              v28 = v22++;
              v29 = *(i - 1);
              sub_18AFCBE94();
              sub_18AFCDD04();
              LOBYTE(v35) = 0;
              LOBYTE(v34) = 0;
              sub_18AFCBD54();
              result = (*v26)(v17, v32);
              if (v28 < v25)
              {
                if ((v22 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_18:
                  __break(1u);
LABEL_19:
                  __break(1u);
LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

                if (v22 >= *(v31 + 16))
                {
                  goto LABEL_18;
                }

                v24 = v24 + (v29 + *i) * 0.5;
              }

              if (v21 == v22)
              {
                return result;
              }
            }
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_18AF13D60(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_18AFCC4C4();
  if (sub_18AFCC4E4() & 1) != 0 || (sub_18AFCC4B4(), (sub_18AFCC4E4()))
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    *&result = CGRectGetMaxY(v14) - dbl_18AFD7FF0[a8];
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void (*sub_18AF13E5C(uint64_t *a1))(void *a1)
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

unint64_t sub_18AF13EE8()
{
  result = qword_1EA99A530;
  if (!qword_1EA99A530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99A530);
  }

  return result;
}

uint64_t sub_18AF13F3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18AFABA18(0, v2, 0);
    result = v9;
    v4 = *(v9 + 16);
    v5 = (a1 + 40);
    do
    {
      v6 = *(v5 - 1);
      if (*v5 < INFINITY)
      {
        v6 = *v5;
      }

      if (*v5 <= INFINITY)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v5;
      }

      v10 = result;
      v8 = *(result + 24);
      if (v4 >= v8 >> 1)
      {
        sub_18AFABA18((v8 > 1), v4 + 1, 1);
        result = v10;
      }

      *(result + 16) = v4 + 1;
      *(result + 8 * v4 + 32) = v7;
      v5 += 3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return result;
}

double sub_18AF1401C(__n128 a1, uint64_t a2, uint64_t *a3)
{
  sub_18AFCBE84();
  sub_18AF0A8A8(v4);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = 0.0;
  if (v15 != v14)
  {
    v6 = sub_18AF13F3C(*a3);

    a3[2] = v6;
    v7 = *(v6 + 16);
    if (!v7)
    {
      return 0.0;
    }

    if (v7 <= 3)
    {
      v8 = 0;
      result = 0.0;
LABEL_9:
      v11 = v7 - v8;
      v12 = (v6 + 8 * v8 + 32);
      do
      {
        v13 = *v12++;
        result = result + v13;
        --v11;
      }

      while (v11);
      return result;
    }

    v8 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    v9 = (v6 + 48);
    result = 0.0;
    v10 = v7 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      result = result + *(v9 - 2) + *(v9 - 1) + *v9 + v9[1];
      v9 += 4;
      v10 -= 4;
    }

    while (v10);
    if (v7 != v8)
    {
      goto LABEL_9;
    }
  }

  return result;
}

void *sub_18AF14134(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v33 = sub_18AFCBD64();
  v15 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF0A8A8(v18);
  sub_18AFCDFC4();
  v34 = a7;
  result = sub_18AFCDFE4();
  if (v36 != v35 && (a6 & 1) == 0)
  {
    v32 = *(a8 + 16);
    if (*(v32 + 16))
    {
      v20 = *(v32 + 32);
      v37.origin.x = a1;
      v37.origin.y = a2;
      v37.size.width = a3;
      v37.size.height = a4;
      MinX = CGRectGetMinX(v37);
      v38.origin.x = a1;
      v38.origin.y = a2;
      v38.size.width = a3;
      v38.size.height = a4;
      CGRectGetMidY(v38);
      sub_18AFCDFC4();
      result = sub_18AFCDFE4();
      v22 = v35;
      v23 = v36;
      if (v35 < v36)
      {
        goto LABEL_19;
      }

      if (v36 != v35)
      {
        if (v36 >= v35)
        {
          goto LABEL_20;
        }

        if (v36 < 0)
        {
LABEL_21:
          __break(1u);
        }

        else
        {
          v24 = *(v32 + 16);
          if (v36 < v24 && v35 - 1 < v24)
          {
            v25 = MinX + v20 * 0.5;
            v26 = v24 - 1;
            v27 = (v15 + 8);
            for (i = (v32 + 8 * v36 + 40); ; ++i)
            {
              v29 = v23++;
              v30 = *(i - 1);
              sub_18AFCBE94();
              sub_18AFCDD04();
              LOBYTE(v36) = 0;
              LOBYTE(v35) = 0;
              sub_18AFCBD54();
              result = (*v27)(v17, v33);
              if (v29 < v26)
              {
                if ((v23 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_18:
                  __break(1u);
LABEL_19:
                  __break(1u);
LABEL_20:
                  __break(1u);
                  goto LABEL_21;
                }

                if (v23 >= *(v32 + 16))
                {
                  goto LABEL_18;
                }

                v25 = v25 + (v30 + *i) * 0.5;
              }

              if (v22 == v23)
              {
                return result;
              }
            }
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_18AF143FC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, uint64_t a7, char a8)
{
  sub_18AFCC4C4();
  if (sub_18AFCC4E4() & 1) != 0 || (sub_18AFCC4B4(), (sub_18AFCC4E4()))
  {
    v14.origin.x = a2;
    v14.origin.y = a3;
    v14.size.width = a4;
    v14.size.height = a5;
    *&result = CGRectGetMaxY(v14) - dbl_18AFD8140[a8];
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

double sub_18AF144A4(uint64_t a1)
{
  v40 = sub_18AFCBD64();
  v2 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A538, &qword_18AFD8180);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - v7;
  v9 = sub_18AFCBE84();
  v10.n128_f64[0] = (*(*(v9 - 8) + 16))(v8, a1, v9);
  v11 = *(v6 + 44);
  sub_18AF0A8A8(v10);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  if (*&v8[v11] == v42[0])
  {
    v12 = 0.0;
  }

  else
  {
    v14 = (v2 + 16);
    v15 = (v2 + 8);
    v12 = 0.0;
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      v17 = sub_18AFCE004();
      v18 = v40;
      (*v14)(v4);
      v17(v42, 0);
      sub_18AFCDFF4();
      sub_18AFCC134();
      LOBYTE(v42[0]) = v19 & 1;
      v41 = v20 & 1;
      sub_18AFCBD44();
      v22 = v21;
      v24 = v23;
      sub_18AFCC124();
      LOBYTE(v42[0]) = v25 & 1;
      v41 = v26 & 1;
      sub_18AFCBD44();
      v28 = v27;
      v30 = v29;
      sub_18AFCC144();
      LOBYTE(v42[0]) = v31 & 1;
      v41 = v32 & 1;
      sub_18AFCBD44();
      v34 = v33;
      v36 = v35;
      (*v15)(v4, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_18AF4AB2C(0, *(v16 + 2) + 1, 1, v16);
      }

      v38 = *(v16 + 2);
      v37 = *(v16 + 3);
      if (v38 >= v37 >> 1)
      {
        v16 = sub_18AF4AB2C((v37 > 1), v38 + 1, 1, v16);
      }

      *(v16 + 2) = v38 + 1;
      v39 = &v16[24 * v38];
      *(v39 + 4) = v22;
      *(v39 + 5) = v28;
      *(v39 + 6) = v34;
      if (v36 == INFINITY || v12 >= v36)
      {
        if (v30 == INFINITY || v12 >= v30)
        {
          if (v12 < v24)
          {
            v12 = v24;
          }
        }

        else
        {
          v12 = v30;
        }
      }

      else
      {
        v12 = v36;
      }

      sub_18AFCDFE4();
    }

    while (*&v8[v11] != v42[0]);
  }

  sub_18AF14850(v8);
  return v12;
}

uint64_t sub_18AF14850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A538, &qword_18AFD8180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF148D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_18AF14920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for MacSegmentedControlBackground(uint64_t a1)
{
  result = qword_1EA99A540;
  if (!qword_1EA99A540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF149E4(uint64_t a1)
{
  sub_18AF14A50(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18AF14A50(uint64_t a1)
{
  if (!qword_1EA998B40)
  {
    type metadata accessor for ResolvedButtonBorderShape(255);
    v1 = sub_18AFCBB64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA998B40);
    }
  }
}

uint64_t sub_18AF14AC4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_18AFCC474();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_18AF14CC8(v2, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_18AED8B94(v10, a1);
  }

  else
  {
    sub_18AFCE024();
    v11 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998C30, &qword_18AFD3550);
  *(a1 + v12[9]) = 0;
  *(a1 + v12[10]) = 0;
  *(a1 + v12[11]) = 0;
  v13 = a1 + v12[12];
  result = swift_getKeyPath();
  *v13 = result;
  v13[8] = 0;
  return result;
}

uint64_t sub_18AF14CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998520, &qword_18AFD2FF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}