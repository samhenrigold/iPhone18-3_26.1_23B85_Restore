void FlatBufferBuilder.endVector(len:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *(v2 + 40) = 0;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a1;
  if (a1 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v2;
  if (*(v2 + 64) <= 3)
  {
    *(v2 + 64) = 4;
    *(v2 + 24) = 4;
  }

  v6 = *(v2 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (HIDWORD(v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = -*(v2 + 16) & 3;
  v8 = v7 + v6;
  v9 = *(v2 + 8);
  if (*(v9 + 32) < (v7 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v6, *(v5 + 24));
  }

  *(v5 + 16) = v8;
  v10 = v8 + 4;
  v11 = *(v9 + 32);
  if (v11 < (v8 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v8, *(v5 + 24));
    v11 = *(v9 + 32);
  }

  *(*(v9 + 24) + v11 - v8 - 4) = v4;
  *(v5 + 16) = v10;
  if (v8 > 0xFFFFFFFB)
  {
LABEL_17:
    __break(1u);
  }

  *a2 = v10;
}

void FlatBufferBuilder.createVector<A>(_:)(uint64_t a2@<X1>, _DWORD *a4@<X8>)
{
  v5 = v4;
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = sub_244312DD8();
  v9 = *(*(a2 - 8) + 64);
  *(v4 + 40) = 1;
  v10 = *(v4 + 64);
  if (v10 <= 3)
  {
    v10 = 4;
    *(v4 + 64) = 4;
    *(v4 + 24) = 4;
  }

  v11 = *(v4 + 16);
  if (v11 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = v9 * v8;
  if ((v11 | (v9 * v8)) < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 0xFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v28 = v8;
  v13 = (v4 + 8);
  v14 = (-v11 - v12) & 3;
  v15 = v14 + v11;
  v16 = *(v4 + 8);
  if (*(v16 + 32) < v14 + v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v11, *(v5 + 24));
  }

  *(v5 + 16) = v15;
  if (v10 < v9)
  {
    *(v5 + 64) = v9;
    *(v5 + 24) = v9;
  }

  if (v15 > 0xFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if ((v15 | v9) < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v9 > 0xFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v17 = (v9 - 1) & -(v12 + v15);
  v18 = v15 + v17;
  if (*(v16 + 32) < v15 + v17)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v15, *(v5 + 24));
  }

  *(v5 + 16) = v18;
  if (*(v16 + 32) < v18 + v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v18, *(v5 + 24));
  }

  v19 = sub_244312DF8();

  WitnessTable = swift_getWitnessTable();
  v21 = MEMORY[0x245D5E890](v29, v19, WitnessTable);
  MEMORY[0x28223BE20](v21);
  sub_244312F58();
  swift_getWitnessTable();
  sub_244312D98();

  *(v5 + 40) = 0;
  if (v28 < 0xFFFFFFFF80000000)
  {
    goto LABEL_35;
  }

  if (v28 > 0x7FFFFFFF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v22 = *(v5 + 16);
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v22))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v23 = -*(v5 + 16) & 3;
  v24 = v23 + v22;
  v25 = *v13;
  if (*(*v13 + 32) < (v23 + v22))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v23, v22, *(v5 + 24));
  }

  *(v5 + 16) = v24;
  v26 = v24 + 4;
  v27 = *(v25 + 32);
  if (v27 < (v24 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v24, *(v5 + 24));
    v27 = *(v25 + 32);
  }

  *(*(v25 + 24) + v27 - v24 - 4) = v28;
  *(v5 + 16) = v26;
  if (v24 > 0xFFFFFFFB)
  {
LABEL_39:
    __break(1u);
  }

  *a4 = v26;
}

void FlatBufferBuilder.createVector<A>(_:size:)(uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a5@<X8>)
{
  v6 = v5;
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = *(*(a3 - 8) + 64);
  *(v5 + 40) = 1;
  v10 = *(v5 + 64);
  if (v10 <= 3)
  {
    v10 = 4;
    *(v5 + 64) = 4;
    *(v5 + 24) = 4;
  }

  v11 = *(v5 + 16);
  if (v11 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  v12 = v9 * a2;
  if ((v11 | (v9 * a2)) < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 0xFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v29 = a2;
  v13 = (v5 + 8);
  v14 = (-v11 - v12) & 3;
  v15 = v14 + v11;
  v16 = *(v5 + 8);
  if (*(v16 + 32) < v14 + v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v11, *(v6 + 24));
  }

  *(v6 + 16) = v15;
  if (v10 < v9)
  {
    *(v6 + 64) = v9;
    *(v6 + 24) = v9;
  }

  if (v15 > 0xFFFFFFFFLL)
  {
    goto LABEL_31;
  }

  if ((v15 | v9) < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v9 > 0xFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v9)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v17 = (v9 - 1) & -(v12 + v15);
  v18 = v15 + v17;
  if (*(v16 + 32) < v15 + v17)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v15, *(v6 + 24));
  }

  *(v6 + 16) = v18;
  v19 = sub_244312DD8() * v9;
  if (*(v16 + 32) < v19 + v18)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v18, *(v6 + 24));
  }

  v20 = sub_244312DF8();

  WitnessTable = swift_getWitnessTable();
  v22 = MEMORY[0x245D5E890](v30, v20, WitnessTable);
  MEMORY[0x28223BE20](v22);
  sub_244312F58();
  swift_getWitnessTable();
  sub_244312D98();

  *(v6 + 40) = 0;
  if (v29 < 0xFFFFFFFF80000000)
  {
    goto LABEL_35;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = *(v6 + 16);
  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(v23))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v24 = -*(v6 + 16) & 3;
  v25 = v24 + v23;
  v26 = *v13;
  if (*(*v13 + 32) < (v24 + v23))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v24, v23, *(v6 + 24));
  }

  *(v6 + 16) = v25;
  v27 = v25 + 4;
  v28 = *(v26 + 32);
  if (v28 < (v25 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v25, *(v6 + 24));
    v28 = *(v26 + 32);
  }

  *(*(v26 + 24) + v28 - v25 - 4) = v29;
  *(v6 + 16) = v27;
  if (v25 > 0xFFFFFFFB)
  {
LABEL_39:
    __break(1u);
  }

  *a5 = v27;
}

void FlatBufferBuilder.createVector<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v5 = v4;
  v75[4] = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v67 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v55 - v14;
  v15 = *(a2 - 8);
  MEMORY[0x28223BE20](v13);
  v66 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_244312DD8();
  v18 = *(a3 + 32);
  v69 = a3;
  v70 = a2;
  v64 = v18;
  v65 = a3 + 32;
  v19 = v18(a2, a3);
  v20 = v19;
  *(v5 + 40) = 1;
  v21 = *(v5 + 64);
  if (v21 <= 3)
  {
    v21 = 4;
    *(v5 + 64) = 4;
    *(v5 + 24) = 4;
  }

  v22 = *(v5 + 16);
  if (v22 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  v23 = v19 * v17;
  if ((v22 | (v19 * v17)) < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v23 > 0xFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v58 = v10;
  v10 = a4;
  v24 = a1;
  v25 = (-v22 - v23) & 3;
  v26 = v25 + v22;
  v27 = *(v5 + 8);
  v28 = *(v27 + 32);
  v72 = v27;
  if (v28 < v25 + v22)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v25, v22, *(v5 + 24));
    v27 = v72;
  }

  *(v5 + 16) = v26;
  if (v21 < v20)
  {
    *(v5 + 64) = v20;
    *(v5 + 24) = v20;
  }

  if (v26 > 0xFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if ((v26 | v20) < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v20 > 0xFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v20)
  {
LABEL_40:
    __break(1u);
LABEL_41:

    goto LABEL_24;
  }

  v29 = (v20 - 1) & -(v23 + v26);
  v20 = v26 + v29;
  if (*(v27 + 32) < v26 + v29)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v29, v26, *(v5 + 24));
  }

  *(v5 + 16) = v20;
  v74 = v24;
  v30 = sub_244312DF8();

  WitnessTable = swift_getWitnessTable();
  v63 = v30;
  MEMORY[0x245D5E890](v75, v30, WitnessTable);
  v32 = v75[0];
  v74 = v75[0];

  v33 = sub_244312DD8();

  if (!v33)
  {
    goto LABEL_41;
  }

  v55 = v32;
  v56 = v17;
  v59 = v5;
  v57 = v10;
  v61 = *(v69 + 40);
  v62 = v69 + 40;
  v60 = (v15 + 16);
  v34 = (v15 + 8);
  v35 = (v58 + 4);
  v36 = (v58 + 2);
  v37 = v71;
  while (!__OFSUB__(v33--, 1))
  {
    v73 = v33;
    v42 = v63;
    swift_getWitnessTable();
    v43 = sub_2442DD13C(v75, &v73, v42);
    v44 = v66;
    v45 = v70;
    (*v60)(v66);
    (v43)(v75, 0);
    v46 = v69;
    v61(v45, v69);
    (*v34)(v44, v45);
    v47 = v64(v45, v46);
    v48 = v47;
    v30 = v47 + v20;
    v49 = v72;
    if (*(v72 + 32) < v47 + v20)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v47, v20, *(v59 + 24));
      v49 = v72;
    }

    v39 = v67;
    v38 = AssociatedTypeWitness;
    (*v35)(v67, v37, AssociatedTypeWitness);
    memcpy((*(v49 + 24) + *(v49 + 32) - v30), v39, v48);
    v40 = *v36;
    (*v36)(v37, v38);
    v40(v39, v38);
    v20 = v30;
    if (!v33)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:

  v5 = v59;
  *(v59 + 16) = v30;
  v20 = v30;
  v10 = v57;
  v17 = v56;
LABEL_24:
  *(v5 + 40) = 0;
  v50 = v72;
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v20 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (HIDWORD(v20))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v51 = -v20 & 3;
  v52 = v51 + v20;
  if (*(v72 + 32) < v51 + v20)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v51, v20, *(v5 + 24));
    v50 = v72;
  }

  *(v5 + 16) = v52;
  v53 = v52 + 4;
  v54 = *(v50 + 32);
  if (v54 < (v52 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v52, *(v5 + 24));
    v50 = v72;
    v54 = *(v72 + 32);
  }

  *(*(v50 + 24) + v54 - v52 - 4) = v17;
  *(v5 + 16) = v53;
  if (v52 > 0xFFFFFFFB)
  {
LABEL_46:
    __break(1u);
  }

  *v10 = v53;
}

void FlatBufferBuilder.createVector<A>(_:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v6 = v5;
  v76[4] = *MEMORY[0x277D85DE8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v68 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v56 - v16;
  v17 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v67 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a4 + 32);
  v70 = a4;
  v71 = a3;
  v65 = v19;
  v66 = a4 + 32;
  v20 = v19(a3, a4);
  v21 = v20;
  *(v6 + 40) = 1;
  v22 = *(v6 + 64);
  if (v22 <= 3)
  {
    v22 = 4;
    *(v6 + 64) = 4;
    *(v6 + 24) = 4;
  }

  v23 = *(v6 + 16);
  if (v23 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  v24 = v20 * a2;
  if ((v23 | (v20 * a2)) < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v24 > 0xFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v59 = v12;
  v12 = a5;
  v25 = a1;
  v26 = (-v23 - v24) & 3;
  v27 = v26 + v23;
  v28 = *(v6 + 8);
  v29 = *(v28 + 32);
  v73 = v28;
  if (v29 < v26 + v23)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v26, v23, *(v6 + 24));
    v28 = v73;
  }

  *(v6 + 16) = v27;
  if (v22 < v21)
  {
    *(v6 + 64) = v21;
    *(v6 + 24) = v21;
  }

  if (v27 > 0xFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if ((v27 | v21) < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v21 > 0xFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v21)
  {
LABEL_40:
    __break(1u);
LABEL_41:

    goto LABEL_24;
  }

  v30 = (v21 - 1) & -(v24 + v27);
  v21 = v27 + v30;
  if (*(v28 + 32) < v27 + v30)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v30, v27, *(v6 + 24));
  }

  *(v6 + 16) = v21;
  v75 = v25;
  v31 = sub_244312DF8();

  WitnessTable = swift_getWitnessTable();
  v64 = v31;
  MEMORY[0x245D5E890](v76, v31, WitnessTable);
  v33 = v76[0];
  v75 = v76[0];

  v34 = sub_244312DD8();

  if (!v34)
  {
    goto LABEL_41;
  }

  v56 = v33;
  v57 = a2;
  v60 = v6;
  v58 = v12;
  v62 = *(v70 + 40);
  v63 = v70 + 40;
  v61 = (v17 + 16);
  v35 = (v17 + 8);
  v36 = (v59 + 4);
  v37 = (v59 + 2);
  v38 = v72;
  while (!__OFSUB__(v34--, 1))
  {
    v74 = v34;
    v43 = v64;
    swift_getWitnessTable();
    v44 = sub_2442DD13C(v76, &v74, v43);
    v45 = v67;
    v46 = v71;
    (*v61)(v67);
    (v44)(v76, 0);
    v47 = v70;
    v62(v46, v70);
    (*v35)(v45, v46);
    v48 = v65(v46, v47);
    v49 = v48;
    v31 = v48 + v21;
    v50 = v73;
    if (*(v73 + 32) < v48 + v21)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v48, v21, *(v60 + 24));
      v50 = v73;
    }

    v40 = v68;
    v39 = AssociatedTypeWitness;
    (*v36)(v68, v38, AssociatedTypeWitness);
    memcpy((*(v50 + 24) + *(v50 + 32) - v31), v40, v49);
    v41 = *v37;
    (*v37)(v38, v39);
    v41(v40, v39);
    v21 = v31;
    if (!v34)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_23:

  v6 = v60;
  *(v60 + 16) = v31;
  v21 = v31;
  v12 = v58;
  a2 = v57;
LABEL_24:
  *(v6 + 40) = 0;
  v51 = v73;
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v21 < 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (HIDWORD(v21))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v52 = -v21 & 3;
  v53 = v52 + v21;
  if (*(v73 + 32) < v52 + v21)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v52, v21, *(v6 + 24));
    v51 = v73;
  }

  *(v6 + 16) = v53;
  v54 = v53 + 4;
  v55 = *(v51 + 32);
  if (v55 < (v53 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v53, *(v6 + 24));
    v51 = v73;
    v55 = *(v73 + 32);
  }

  *(*(v51 + 24) + v55 - v53 - 4) = a2;
  *(v6 + 16) = v54;
  if (v53 > 0xFFFFFFFB)
  {
LABEL_46:
    __break(1u);
  }

  *v12 = v54;
}

void FlatBufferBuilder.createVector(ofOffsets:)(uint64_t a1@<X0>, int64_t a2@<X8>)
{
  v5 = v2;
  v8 = *(a1 + 16);
  *(v2 + 40) = 1;
  if (*(v2 + 64) <= 3)
  {
    *(v2 + 64) = 4;
    *(v2 + 24) = 4;
  }

  v9 = *(v2 + 16);
  if (v9 > 0xFFFFFFFFLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v9 | (4 * v8)) < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (4 * v8 > 0xFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v10 = -*(v2 + 16) & 3;
  v11 = v10 + v9;
  v2 = *(v2 + 8);
  if (*(v2 + 32) < v10 + v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v9, *(v5 + 24));
  }

  *(v5 + 16) = v11;
  if ((v11 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  if (HIDWORD(v11))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v12 = -v11 & 3;
  v3 = v12 + v11;
  if (*(v2 + 32) < (v12 + v11))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v11, *(v5 + 24));
  }

  v4 = 4294967291;
  *(v5 + 16) = v3;
  if (v8)
  {
    v25 = v8;
    v26 = a2;
    a2 = v8;
    v13 = a1 + 28;
    while (v3 <= 0xFFFFFFFFLL)
    {
      v14 = *(v13 + 4 * a2);
      v15 = -v3 & 3;
      v16 = v15 + v3;
      if (*(v2 + 32) < v15 + v3)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v15, v3, *(v5 + 24));
      }

      if (v16 > 0xFFFFFFFFLL)
      {
        goto LABEL_32;
      }

      v17 = -v16 & 3;
      v18 = v17 + v16;
      v19 = *(v2 + 32);
      if (v19 < v17 + v16)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v16, *(v5 + 24));
        v19 = *(v2 + 32);
      }

      v3 = v18 + 4;
      if (v19 < v18 + 4)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v18, *(v5 + 24));
        v19 = *(v2 + 32);
      }

      *(*(v2 + 24) + v19 - v18 - 4) = v16 - v14 + 4;
      if (v18 > 4294967291)
      {
        goto LABEL_33;
      }

      if (!--a2)
      {
        *(v5 + 16) = v3;
        *(v5 + 40) = 0;
        v20 = v25;
        a2 = v26;
        if (!(v25 >> 31))
        {
          goto LABEL_25;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_39:
  v20 = 0;
  *(v5 + 40) = 0;
  if (HIDWORD(v3))
  {
    __break(1u);
    goto LABEL_41;
  }

LABEL_25:
  v21 = -v3 & 3;
  v22 = v21 + v3;
  if (*(v2 + 32) < v21 + v3)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v3, *(v5 + 24));
  }

  *(v5 + 16) = v22;
  v23 = v22 + 4;
  v24 = *(v2 + 32);
  if (v24 < v22 + 4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v22, *(v5 + 24));
    v24 = *(v2 + 32);
  }

  *(*(v2 + 24) + v24 - v22 - 4) = v20;
  *(v5 + 16) = v23;
  if (v22 > v4)
  {
LABEL_42:
    __break(1u);
  }

  *a2 = v23;
}

void FlatBufferBuilder.createVector(ofOffsets:len:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = v3;
  *(v3 + 40) = 1;
  if (*(v3 + 64) <= 3)
  {
    *(v3 + 64) = 4;
    *(v3 + 24) = 4;
  }

  v8 = *(v3 + 16);
  if (v8 > 0xFFFFFFFFLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v8 | (4 * a2)) < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (4 * a2 > 0xFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v9 = -*(v3 + 16) & 3;
  v10 = v9 + v8;
  v11 = *(v3 + 8);
  if (*(v11 + 32) < v9 + v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v8, *(v4 + 24));
  }

  *(v4 + 16) = v10;
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  if (HIDWORD(v10))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v12 = -v10 & 3;
  v13 = v12 + v10;
  if (*(v11 + 32) < (v12 + v10))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v10, *(v4 + 24));
  }

  *(v4 + 16) = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v26 = a2;
    v27 = a3;
    v15 = a1 + 28;
    while (v13 <= 0xFFFFFFFFLL)
    {
      v16 = *(v15 + 4 * v14);
      v17 = -v13 & 3;
      v18 = v17 + v13;
      if (*(v11 + 32) < v17 + v13)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v13, *(v4 + 24));
      }

      if (v18 > 0xFFFFFFFFLL)
      {
        goto LABEL_35;
      }

      v19 = -v18 & 3;
      v20 = v19 + v18;
      v21 = *(v11 + 32);
      if (v21 < v19 + v18)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v18, *(v4 + 24));
        v21 = *(v11 + 32);
      }

      v13 = v20 + 4;
      if (v21 < v20 + 4)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v20, *(v4 + 24));
        v21 = *(v11 + 32);
      }

      *(*(v11 + 24) + v21 - v20 - 4) = v18 - v16 + 4;
      if (v20 > 4294967291)
      {
        goto LABEL_36;
      }

      if (!--v14)
      {
        *(v4 + 16) = v13;
        a2 = v26;
        a3 = v27;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_25:
  *(v4 + 40) = 0;
  if (a2 < 0xFFFFFFFF80000000)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v13 > 0xFFFFFFFFLL)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v22 = -v13 & 3;
  v23 = v22 + v13;
  if (*(v11 + 32) < v22 + v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v22, v13, *(v4 + 24));
  }

  *(v4 + 16) = v23;
  v24 = v23 + 4;
  v25 = *(v11 + 32);
  if (v25 < v23 + 4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v23, *(v4 + 24));
    v25 = *(v11 + 32);
  }

  *(*(v11 + 24) + v25 - v23 - 4) = a2;
  *(v4 + 16) = v24;
  if (v23 > 4294967291)
  {
LABEL_45:
    __break(1u);
  }

  *a3 = v24;
}

unint64_t FlatBufferBuilder.push(element:)(int *a1)
{
  v2 = v1;
  if (v1[8] <= 3)
  {
    v1[8] = 4;
    v1[3] = 4;
  }

  v3 = v1[2];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (HIDWORD(v3))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = *a1;
  v5 = -*(v1 + 16) & 3;
  v6 = v5 + v3;
  v7 = v1[1];
  if (*(v7 + 32) < (v5 + v3))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v3, v2[3]);
  }

  v2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_16;
  }

  v8 = v6 - v4 + 4;
  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, v2[3]);
  }

  v2[2] = v10;
  v11 = *(v7 + 32);
  if (v11 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, v2[3]);
    v11 = *(v7 + 32);
  }

  *(*(v7 + 24) + v11 - v10 - 4) = v8;
  v2[2] = v10 + 4;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_17:
    __break(1u);
  }

  return v10 + 4;
}

void FlatBufferBuilder.createVector(ofStrings:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = v3;
  v107[3] = *MEMORY[0x277D85DE8];
  v100 = *(a1 + 16);
  if (v100)
  {
    v4 = 0;
    v6 = 0;
    v7 = a1 + 32;
    v8 = MEMORY[0x277D84F90];
    v105 = v3;
    v99 = a1 + 32;
    while (1)
    {
      v9 = (v7 + 16 * v6);
      v10 = *v9;
      v3 = v9[1];
      v11 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x1000000000000000) != 0)
      {
        v2 = HIBYTE(v3) & 0xF;
        v80 = sub_244312D28();
        v11 = v2;
        v12 = v80;
      }

      else if ((v3 & 0x2000000000000000) != 0)
      {
        v12 = HIBYTE(v3) & 0xF;
      }

      else
      {
        v12 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (*(v5 + 64) <= 3)
      {
        *(v5 + 64) = 4;
        *(v5 + 24) = 4;
      }

      v13 = *(v5 + 16);
      if (v13 > 0xFFFFFFFFLL)
      {
        goto LABEL_152;
      }

      if (((v13 | (v12 + 1)) & 0x8000000000000000) != 0)
      {
        break;
      }

      if ((v12 + 1) > 0xFFFFFFFFLL)
      {
        goto LABEL_154;
      }

      v103 = v6;
      v101 = v8;
      v14 = (~(v13 + v12) & 3) + v13;
      v15 = *(v5 + 8);
      v16 = *(v15 + 32);
      v106 = v10;
      v104 = v11;
      if (v16 >= v14)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v17 = *(v15 + 32);
        do
        {
          v17 *= 2;
        }

        while (v14 >= v17);
        if (v17 < 1)
        {
          v23 = 1;
        }

        else
        {
          if (HIDWORD(v17))
          {
            goto LABEL_162;
          }

          v18 = (v17 - 1) | ((v17 - 1) >> 1) | (((v17 - 1) | ((v17 - 1) >> 1)) >> 2);
          v19 = v18 | (v18 >> 4) | ((v18 | (v18 >> 4)) >> 8);
          v20 = v19 | HIWORD(v19);
          v21 = __CFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            v23 = 0xFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }
        }

        v24 = v16 - v13;
        *(v15 + 32) = v23;
        swift_bridgeObjectRetain_n();
        v2 = swift_slowAlloc();
        bzero(v2, *(v15 + 32) - v13);
        memcpy((v2 + *(v15 + 32) - v13), (*(v15 + 24) + v24), v13);
        MEMORY[0x245D5F2C0](*(v15 + 24), -1, -1);
        *(v15 + 24) = v2;
      }

      *(v5 + 16) = v14;
      v25 = v14 + 1;
      v26 = *(v15 + 32);
      v27 = v26 - v14;
      if (v26 <= v14)
      {
        do
        {
          v26 *= 2;
        }

        while (v25 >= v26);
        if (v26 < 1)
        {
          v32 = 1;
        }

        else
        {
          if (HIDWORD(v26))
          {
            goto LABEL_163;
          }

          v28 = (v26 - 1) | ((v26 - 1) >> 1) | (((v26 - 1) | ((v26 - 1) >> 1)) >> 2);
          v29 = v28 | (v28 >> 4) | ((v28 | (v28 >> 4)) >> 8);
          v30 = v29 | HIWORD(v29);
          v21 = __CFADD__(v30, 1);
          v31 = v30 + 1;
          if (v21)
          {
            v32 = 0xFFFFFFFFLL;
          }

          else
          {
            v32 = v31;
          }
        }

        *(v15 + 32) = v32;
        v2 = swift_slowAlloc();
        bzero(v2, *(v15 + 32) - v14);
        memcpy((v2 + *(v15 + 32) - v14), (*(v15 + 24) + v27), v14);
        MEMORY[0x245D5F2C0](*(v15 + 24), -1, -1);
        *(v15 + 24) = v2;
      }

      *(v5 + 16) = v25;
      v33 = *(v15 + 32);
      if (v33 < (v25 + v12))
      {
        v34 = *(v15 + 32);
        do
        {
          v34 *= 2;
        }

        while ((v25 + v12) >= v34);
        if (v34 < 1)
        {
          v39 = 1;
        }

        else
        {
          if (HIDWORD(v34))
          {
            goto LABEL_164;
          }

          v35 = (v34 - 1) | ((v34 - 1) >> 1) | (((v34 - 1) | ((v34 - 1) >> 1)) >> 2);
          v36 = v35 | (v35 >> 4) | ((v35 | (v35 >> 4)) >> 8);
          v37 = v36 | HIWORD(v36);
          v21 = __CFADD__(v37, 1);
          v38 = v37 + 1;
          if (v21)
          {
            v39 = 0xFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }
        }

        v40 = v33 - v25;
        *(v15 + 32) = v39;
        v2 = swift_slowAlloc();
        bzero(v2, *(v15 + 32) - v25);
        memcpy((v2 + *(v15 + 32) - v25), (*(v15 + 24) + v40), v14 + 1);
        MEMORY[0x245D5F2C0](*(v15 + 24), -1, -1);
        *(v15 + 24) = v2;
      }

      v102 = v4;
      if (sub_2442D4EBC(v10, v3, (v5 + 8), v12) == 2)
      {
        v41 = (v3 & 0x2000000000000000) != 0 ? v104 : v10 & 0xFFFFFFFFFFFFLL;
        if (v41)
        {
          v97 = v12;
          v42 = (v10 >> 59) & 1;
          if ((v3 & 0x1000000000000000) == 0)
          {
            LODWORD(v42) = 1;
          }

          v43 = 11;
          if (v42)
          {
            v43 = 7;
          }

          v44 = v43 | (v41 << 16);
          v45 = 4 << v42;
          swift_bridgeObjectRetain_n();
          while (1)
          {
            if ((v44 & 0xC) == v45)
            {
              v46 = sub_2442D5AFC(v44, v10, v3);
              if (v46 < 0x4000)
              {
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                __break(1u);
                goto LABEL_153;
              }

              v44 = v46;
              if ((v3 & 0x1000000000000000) == 0)
              {
LABEL_56:
                v44 = (v44 & 0xFFFFFFFFFFFF0000) - 65532;
                goto LABEL_61;
              }
            }

            else if ((v3 & 0x1000000000000000) == 0)
            {
              goto LABEL_56;
            }

            if (v41 < v44 >> 16)
            {
              goto LABEL_146;
            }

            v44 = sub_244312D38();
LABEL_61:
            v47 = v44;
            if ((v44 & 0xC) == v45)
            {
              v47 = sub_2442D5AFC(v44, v10, v3);
            }

            v2 = v47 >> 16;
            if (v47 >> 16 >= v41)
            {
              goto LABEL_145;
            }

            if ((v3 & 0x1000000000000000) != 0)
            {
              v49 = sub_244312D58();
            }

            else if ((v3 & 0x2000000000000000) != 0)
            {
              v107[0] = v10;
              v107[1] = v3 & 0xFFFFFFFFFFFFFFLL;
              v49 = *(v107 + v2);
            }

            else
            {
              v48 = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((v10 & 0x1000000000000000) == 0)
              {
                v48 = sub_244312EF8();
              }

              v49 = *(v48 + v2);
            }

            v50 = *(v5 + 16);
            v4 = v50 + 1;
            v51 = *(v15 + 32);
            if (v51 >= (v50 + 1))
            {
              v2 = *(v15 + 24);
            }

            else
            {
              v52 = *(v15 + 32);
              do
              {
                v52 *= 2;
              }

              while (v4 >= v52);
              if (v52 < 1)
              {
                v57 = 1;
              }

              else
              {
                if (HIDWORD(v52))
                {
                  goto LABEL_151;
                }

                v53 = (v52 - 1) | ((v52 - 1) >> 1) | (((v52 - 1) | ((v52 - 1) >> 1)) >> 2);
                v54 = v53 | (v53 >> 4) | ((v53 | (v53 >> 4)) >> 8);
                v55 = v54 | HIWORD(v54);
                v21 = __CFADD__(v55, 1);
                v56 = v55 + 1;
                if (v21)
                {
                  v57 = 0xFFFFFFFFLL;
                }

                else
                {
                  v57 = v56;
                }
              }

              v58 = v51 - v50;
              *(v15 + 32) = v57;
              v2 = swift_slowAlloc();
              bzero(v2, *(v15 + 32) - v50);
              memcpy((v2 + *(v15 + 32) - v50), (*(v15 + 24) + v58), v50);
              MEMORY[0x245D5F2C0](*(v15 + 24), -1, -1);
              *(v15 + 24) = v2;
              v51 = *(v15 + 32);
              v5 = v105;
            }

            *(v2 + v51 + ~v50) = v49;
            *(v5 + 16) = v4;
            v10 = v106;
            if (!(v44 >> 14))
            {
              swift_bridgeObjectRelease_n();
              v12 = v97;
              break;
            }
          }
        }
      }

      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_155;
      }

      if (HIDWORD(v12))
      {
        goto LABEL_156;
      }

      v59 = *(v5 + 16);
      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_157;
      }

      if (HIDWORD(v59))
      {
        goto LABEL_158;
      }

      v60 = v12;
      v61 = (-*(v5 + 16) & 3) + *(v5 + 16);
      v62 = *(v15 + 32);
      v4 = v102;
      if (v62 < v61)
      {
        v63 = *(v15 + 32);
        do
        {
          v63 *= 2;
        }

        while (v61 >= v63);
        if (v63 > 0xFFFFFFFFLL)
        {
          goto LABEL_160;
        }

        v64 = v62 - v59;
        v65 = (v63 - 1) | ((v63 - 1) >> 1) | (((v63 - 1) | ((v63 - 1) >> 1)) >> 2);
        v66 = v65 | (v65 >> 4) | ((v65 | (v65 >> 4)) >> 8);
        v67 = v66 | HIWORD(v66);
        v21 = __CFADD__(v67, 1);
        v68 = v67 + 1;
        if (v21)
        {
          v69 = 0xFFFFFFFFLL;
        }

        else
        {
          v69 = v68;
        }

        *(v15 + 32) = v69;
        v2 = swift_slowAlloc();
        bzero(v2, *(v15 + 32) - v59);
        memcpy((v2 + *(v15 + 32) - v59), (*(v15 + 24) + v64), v59);
        MEMORY[0x245D5F2C0](*(v15 + 24), -1, -1);
        *(v15 + 24) = v2;
      }

      *(v5 + 16) = v61;
      v70 = v61 + 4;
      v71 = *(v15 + 32);
      if (v71 >= v61 + 4)
      {
        v78 = *(v15 + 24);
      }

      else
      {
        v72 = *(v15 + 32);
        do
        {
          v72 *= 2;
        }

        while (v70 >= v72);
        if (v72 > 0xFFFFFFFFLL)
        {
          goto LABEL_161;
        }

        v2 = v71 - v61;
        v73 = (v72 - 1) | ((v72 - 1) >> 1) | (((v72 - 1) | ((v72 - 1) >> 1)) >> 2);
        v74 = v73 | (v73 >> 4) | ((v73 | (v73 >> 4)) >> 8);
        v75 = v74 | HIWORD(v74);
        v21 = __CFADD__(v75, 1);
        v76 = v75 + 1;
        if (v21)
        {
          v77 = 0xFFFFFFFFLL;
        }

        else
        {
          v77 = v76;
        }

        *(v15 + 32) = v77;
        v78 = swift_slowAlloc();
        bzero(v78, *(v15 + 32) - v61);
        memcpy(&v78[*(v15 + 32) - v61], (*(v15 + 24) + v2), v61);
        MEMORY[0x245D5F2C0](*(v15 + 24), -1, -1);
        *(v15 + 24) = v78;
        v71 = *(v15 + 32);
      }

      *&v78[v71 - v61 - 4] = v60;

      *(v5 + 16) = v70;
      if (v61 > 4294967291)
      {
        goto LABEL_159;
      }

      v8 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_2442DBF1C(0, *(v101 + 2) + 1, 1, v101);
      }

      v3 = *(v8 + 2);
      v79 = *(v8 + 3);
      v2 = v3 + 1;
      if (v3 >= v79 >> 1)
      {
        v8 = sub_2442DBF1C((v79 > 1), v3 + 1, 1, v8);
      }

      v6 = v103 + 1;
      *(v8 + 2) = v2;
      *&v8[4 * v3 + 32] = v70;
      v7 = v99;
      if (v103 + 1 == v100)
      {
        goto LABEL_112;
      }
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
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
    goto LABEL_165;
  }

  v8 = MEMORY[0x277D84F90];
  v2 = *(MEMORY[0x277D84F90] + 16);
LABEL_112:
  *(v5 + 40) = 1;
  if (*(v5 + 64) <= 3)
  {
    *(v5 + 64) = 4;
    *(v5 + 24) = 4;
  }

  v81 = *(v5 + 16);
  if (v81 > 0xFFFFFFFFLL)
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  if (((v81 | (4 * v2)) & 0x8000000000000000) != 0)
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if ((4 * v2) > 0xFFFFFFFFLL)
  {
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v82 = -*(v5 + 16) & 3;
  v83 = v82 + v81;
  v3 = *(v5 + 8);
  if (*(v3 + 32) < v82 + v81)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v82, v81, *(v5 + 24));
  }

  *(v5 + 16) = v83;
  if ((v83 & 0x8000000000000000) != 0)
  {
    goto LABEL_168;
  }

  if (HIDWORD(v83))
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v84 = -v83 & 3;
  v4 = v84 + v83;
  if (*(v3 + 32) < (v84 + v83))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v84, v83, *(v5 + 24));
  }

  *(v5 + 16) = v4;
  v85 = *(v8 + 2);
  if (v85)
  {
    while (v85 <= *(v8 + 2))
    {
      if (v4 > 0xFFFFFFFFLL)
      {
        goto LABEL_148;
      }

      v86 = *&v8[4 * v85 + 28];
      v87 = -v4 & 3;
      v88 = v87 + v4;
      if (*(v3 + 32) < v87 + v4)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v87, v4, *(v5 + 24));
      }

      if (v88 > 0xFFFFFFFFLL)
      {
        goto LABEL_149;
      }

      v89 = v8;
      v90 = -v88 & 3;
      v91 = v90 + v88;
      v92 = *(v3 + 32);
      if (v92 < v90 + v88)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v90, v88, *(v5 + 24));
        v92 = *(v3 + 32);
      }

      v4 = v91 + 4;
      if (v92 < v91 + 4)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v91, *(v5 + 24));
        v92 = *(v3 + 32);
      }

      *(*(v3 + 24) + v92 - v91 - 4) = v88 - v86 + 4;
      if (v91 > 4294967291)
      {
        goto LABEL_150;
      }

      --v85;
      v8 = v89;
      if (!v85)
      {

        *(v5 + 16) = v4;
        goto LABEL_136;
      }
    }

    goto LABEL_147;
  }

LABEL_170:

LABEL_136:
  *(v5 + 40) = 0;
  if (v2 >> 31)
  {
    __break(1u);
    goto LABEL_172;
  }

  if (v4 > 0xFFFFFFFFLL)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v93 = -v4 & 3;
  v94 = v93 + v4;
  if (*(v3 + 32) < v93 + v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v93, v4, *(v5 + 24));
  }

  *(v5 + 16) = v94;
  v95 = v94 + 4;
  v96 = *(v3 + 32);
  if (v96 < v94 + 4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v94, *(v5 + 24));
    v96 = *(v3 + 32);
  }

  *(*(v3 + 24) + v96 - v94 - 4) = v2;
  *(v5 + 16) = v95;
  if (v94 > 4294967291)
  {
LABEL_173:
    __break(1u);
  }

  *a2 = v95;
}

void FlatBufferBuilder.create(string:)(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v45[3] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    LODWORD(v14) = 0;
    goto LABEL_69;
  }

  v5 = a1;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_6:
  if (v43[8] <= 3)
  {
    v43[8] = 4;
    v43[3] = 4;
  }

  v8 = v43[2];
  if (v8 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (((v8 | (v7 + 1)) & 0x8000000000000000) != 0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if ((v7 + 1) > 0xFFFFFFFFLL)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  _ = v7;
  v9 = ~(v8 + v7) & 3;
  v10 = v9 + v8;
  v11 = v43[1];
  v44 = v5;
  if (*(v11 + 32) >= v9 + v8)
  {
  }

  else
  {
    v12 = v43[3];

    v13 = v12;
    v5 = v44;
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v8, v13);
  }

  v43[2] = v10;
  v15 = v10 + 1;
  if (*(v11 + 32) <= v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v10, v43[3]);
  }

  v43[2] = v15;
  if (*(v11 + 32) < (v15 + _))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(_, v15, v43[3]);
  }

  if (sub_2442D4EBC(v5, a2, v43 + 1, _) != 2)
  {
    goto LABEL_60;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_60;
  }

  v41 = a3;
  v16 = (v5 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LODWORD(v16) = 1;
  }

  v17 = 11;
  if (v16)
  {
    v17 = 7;
  }

  v18 = v17 | (v6 << 16);
  v19 = 4 << v16;

  a3 = v43;
  while (1)
  {
    if ((v18 & 0xC) != v19)
    {
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_35;
    }

    v21 = sub_2442D5AFC(v18, v5, a2);
    if (v21 < 0x4000)
    {
      break;
    }

    v18 = v21;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_32:
      v18 = (v18 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_37;
    }

LABEL_35:
    if (v6 < v18 >> 16)
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      v7 = sub_244312D28();
      goto LABEL_6;
    }

    v18 = sub_244312D38();
LABEL_37:
    v22 = v18;
    if ((v18 & 0xC) == v19)
    {
      v22 = sub_2442D5AFC(v18, v5, a2);
    }

    v23 = v22 >> 16;
    if (v22 >> 16 >= v6)
    {
      goto LABEL_58;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v25 = sub_244312D58();
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v45[0] = v5;
      v45[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v25 = *(v45 + v23);
    }

    else
    {
      v24 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v24 = sub_244312EF8();
      }

      v25 = *(v24 + v23);
    }

    v26 = a3[2];
    v27 = v26 + 1;
    v28 = *(v11 + 32);
    if (v28 >= (v26 + 1))
    {
      v20 = *(v11 + 24);
    }

    else
    {
      v29 = *(v11 + 32);
      do
      {
        v29 *= 2;
      }

      while (v27 >= v29);
      if (v29 < 1)
      {
        v35 = 1;
      }

      else
      {
        if (HIDWORD(v29))
        {
          goto LABEL_71;
        }

        v30 = (v29 - 1) | ((v29 - 1) >> 1) | (((v29 - 1) | ((v29 - 1) >> 1)) >> 2);
        v31 = v30 | (v30 >> 4) | ((v30 | (v30 >> 4)) >> 8);
        v32 = v31 | HIWORD(v31);
        v33 = __CFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          v35 = 0xFFFFFFFFLL;
        }

        else
        {
          v35 = v34;
        }
      }

      v36 = v28 - v26;
      *(v11 + 32) = v35;
      v20 = swift_slowAlloc();
      bzero(v20, *(v11 + 32) - v26);
      memcpy(&v20[*(v11 + 32) - v26], (*(v11 + 24) + v36), v26);
      MEMORY[0x245D5F2C0](*(v11 + 24), -1, -1);
      *(v11 + 24) = v20;
      v28 = *(v11 + 32);
      a3 = v43;
    }

    v20[v28 + ~v26] = v25;
    a3[2] = v27;
    v5 = v44;
    if (!(v18 >> 14))
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:

  a3 = v41;
LABEL_60:

  if ((_ & 0x8000000000000000) != 0)
  {
    goto LABEL_76;
  }

  if (HIDWORD(_))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v37 = v43[2];
  if ((v37 & 0x8000000000000000) != 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (HIDWORD(v37))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v38 = -*(v43 + 16) & 3;
  v39 = v38 + v37;
  if (*(v11 + 32) < (v38 + v37))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v38, v37, v43[3]);
  }

  v43[2] = v39;
  v14 = v39 + 4;
  v40 = *(v11 + 32);
  if (v40 < (v39 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v39, v43[3]);
    v40 = *(v11 + 32);
  }

  *(*(v11 + 24) + v40 - v39 - 4) = _;
  v43[2] = v14;
  if (v39 > 0xFFFFFFFB)
  {
LABEL_80:
    __break(1u);
  }

LABEL_69:
  *a3 = v14;
}

void FlatBufferBuilder.createVector<A>(ofStructs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v7 = v4;
  v60[4] = *MEMORY[0x277D85DE8];
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v57 = &v46 - v15;
  MEMORY[0x28223BE20](v14);
  v52 = &v46 - v16;
  v17 = sub_244312DD8();
  if ((v17 * v12) >> 64 != (v17 * v12) >> 63)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v6 = v17;
  v53 = *(v11 + 80);
  *(v4 + 40) = 1;
  v56 = *(v4 + 64);
  if (v56 <= 3)
  {
    *(v4 + 64) = 4;
    v56 = 4;
    *(v4 + 24) = 4;
  }

  v18 = *(v4 + 16);
  if (v18 > 0xFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  v55 = v53 + 1;
  v3 = v17 * v12 * (v53 + 1);
  if ((v18 | v3) < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v3 > 0xFFFFFFFFLL)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v48 = a3;
  v19 = (-v18 - v3) & 3;
  v20 = v19 + v18;
  v5 = *(v4 + 8);
  if (*(v5 + 4) < v19 + v18)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v18, *(v4 + 24));
  }

  *(v4 + 16) = v20;
  if (v56 < v55)
  {
    v21 = v55;
    *(v4 + 64) = v55;
    *(v4 + 24) = v21;
    v56 = v21;
  }

  if (v20 > 0xFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if ((v20 & 0x8000000000000000) == 0)
  {
    v22 = v53 & (-v3 - v20);
    v3 = v20 + v22;
    if (*(v5 + 4) < v20 + v22)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v22, v20, *(v4 + 24));
    }

    *(v4 + 16) = v3;
    v59 = a1;
    v23 = sub_244312DF8();

    WitnessTable = swift_getWitnessTable();
    v51 = v23;
    MEMORY[0x245D5E890](v60, v23, WitnessTable);
    v25 = v60[0];
    v59 = v60[0];

    v26 = sub_244312DD8();

    if (!v26)
    {
      goto LABEL_50;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v12))
    {
      v46 = v25;
      v47 = v6;
      v54 = v7;
      v7 = (v11 + 16);
      v50 = (v11 + 32);
      v27 = (v11 + 8);
      while (!__OFSUB__(v26--, 1))
      {
        v58 = v26;
        v29 = v51;
        swift_getWitnessTable();
        v30 = sub_2442DD13C(v60, &v58, v29);
        v31 = *v7;
        v6 = v52;
        (*v7)(v52);
        (v30)(v60, 0);
        (*v50)(v57, v6, a2);
        if (v56 < v55)
        {
          v32 = v54;
          v33 = v55;
          v54[8] = v55;
          v32[3] = v33;
          v56 = v33;
        }

        if (v3 < 0)
        {
          goto LABEL_41;
        }

        if (HIDWORD(v3))
        {
          goto LABEL_42;
        }

        v6 = v12;
        v34 = v53 & -(v12 + v3);
        v35 = v3 + v34;
        v36 = *(v5 + 4);
        if (v36 < v3 + v34)
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v34, v3, v54[3]);
          v36 = *(v5 + 4);
        }

        v3 = v35 + v6;
        if (v36 < v35 + v6)
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v35, v54[3]);
        }

        v37 = v49;
        v38 = v5;
        v5 = v57;
        v31(v49, v57, a2);
        v39 = v38;
        memcpy((*(v38 + 3) + *(v38 + 4) - v3), v37, v6);
        v40 = *v27;
        (*v27)(v5, a2);
        v40(v37, a2);
        if (v3 > 0xFFFFFFFFLL)
        {
          goto LABEL_43;
        }

        v12 = v6;
        v5 = v39;
        if (!v26)
        {

          v7 = v54;
          v54[2] = v3;
          v6 = v47;
          v41 = v48;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_49:
  __break(1u);
LABEL_50:

  v41 = v48;
LABEL_31:
  *(v7 + 40) = 0;
  if (v6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_53;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (HIDWORD(v3))
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v42 = -v3 & 3;
  v43 = v42 + v3;
  if (*(v5 + 4) < v42 + v3)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v42, v3, v7[3]);
  }

  v7[2] = v43;
  v44 = v43 + 4;
  v45 = *(v5 + 4);
  if (v45 < (v43 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v43, v7[3]);
    v45 = *(v5 + 4);
  }

  *(*(v5 + 3) + v45 - v43 - 4) = v6;
  v7[2] = v44;
  if (v43 > 0xFFFFFFFB)
  {
LABEL_56:
    __break(1u);
  }

  *v41 = v44;
}

uint64_t FlatBufferBuilder.create<A>(struct:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = *(v8 + 80);
  v11 = v10 + 1;
  if (v3[8] < v10 + 1)
  {
    v3[8] = v11;
    v3[3] = v11;
  }

  v12 = v3[2];
  if (v12 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v9 > 0xFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v12 | v9) < 0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v13 = v10 & (-v12 - v9);
  v14 = v12 + v13;
  v15 = v3[1];
  if (*(v15 + 32) < v12 + v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v12, v4[3]);
  }

  v4[2] = v14;
  v16 = v14 + v9;
  if (*(v15 + 32) < v14 + v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v14, v4[3]);
  }

  (*(v8 + 16))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  memcpy((*(v15 + 24) + *(v15 + 32) - v16), v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v4[2] = v16;
  result = (*(v8 + 8))(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(v16))
  {
    goto LABEL_17;
  }

  *a3 = v16;
  return result;
}

uint64_t FlatBufferBuilder.create<A>(struct:position:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v28 = *MEMORY[0x277D85DE8];
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v11 = *(v6 + 80);
  v12 = v11 + 1;
  if (v3[8] < v11 + 1)
  {
    v3[8] = v12;
    v3[3] = v12;
  }

  v13 = v3[2];
  if (v13 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v13 | v7) < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = v8;
  v27 = v10;
  v15 = v9;
  v16 = v11 & (-v13 - v7);
  v17 = v13 + v16;
  v18 = v3[1];
  if (*(v18 + 32) < v13 + v16)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v16, v13, v4[3]);
  }

  v4[2] = v17;
  v19 = v17 + v7;
  if (*(v18 + 32) < v17 + v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v17, v4[3]);
  }

  (*(v6 + 16))(&v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v14, a3);
  memcpy((*(v18 + 24) + *(v18 + 32) - v19), &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v7);
  v4[2] = v19;
  result = (*(v6 + 8))(&v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a3);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (HIDWORD(v19))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v21 = *v4;
  if (*(*v4 + 48))
  {
    goto LABEL_23;
  }

  v22 = *(v21 + 32);
  v23 = v27;
  if (v22)
  {
    v24 = v22 + *(v21 + 80);
    *v24 = v19;
    *(v24 + 4) = v23;
  }

  *(v21 + 72) = vaddq_s64(*(v21 + 72), xmmword_244316360);
  v25 = *(v21 + 64);
  if (v25 <= v23)
  {
    LOWORD(v25) = v23;
  }

  *(v21 + 64) = v25;
  *v15 = v19;
  return result;
}

unint64_t FlatBufferBuilder.createShared(string:)@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v48[3] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    LODWORD(v9) = 0;
    goto LABEL_73;
  }

  v6 = result;
  v7 = *(v3 + 48);
  if (!*(v7 + 16) || (result = sub_2442DC8A4(result, a2), (v8 & 1) == 0))
  {
    v10 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFLL;
    }

LABEL_9:
    if (v46[8] <= 3)
    {
      v46[8] = 4;
      v46[3] = 4;
    }

    v12 = v46[2];
    if (v12 > 0xFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (((v12 | (v11 + 1)) & 0x8000000000000000) == 0)
    {
      if ((v11 + 1) <= 0xFFFFFFFFLL)
      {
        v13 = (~(v12 + v11) & 3) + v12;
        v14 = v46[1];
        v47 = v6;
        if (*(v14 + 32) >= v13)
        {
        }

        else
        {
          v15 = v46[3];

          v16 = v15;
          v6 = v47;
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(~(v12 + v11) & 3, v12, v16);
        }

        v46[2] = v13;
        v17 = v13 + 1;
        if (*(v14 + 32) <= v13)
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v13, v46[3]);
        }

        v46[2] = v17;
        if (*(v14 + 32) < (v17 + v11))
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v13 + 1, v46[3]);
        }

        if (sub_2442D4EBC(v6, a2, v46 + 1, v11) != 2)
        {
          goto LABEL_63;
        }

        if ((a2 & 0x2000000000000000) == 0)
        {
          v10 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (!v10)
        {
          goto LABEL_63;
        }

        v44 = v11;
        v45 = a3;
        v18 = (v6 >> 59) & 1;
        if ((a2 & 0x1000000000000000) == 0)
        {
          LODWORD(v18) = 1;
        }

        v19 = 11;
        if (v18)
        {
          v19 = 7;
        }

        v20 = v19 | (v10 << 16);
        v21 = 4 << v18;

        a3 = v46;
        while (1)
        {
          if ((v20 & 0xC) == v21)
          {
            v23 = sub_2442D5AFC(v20, v6, a2);
            if (v23 < 0x4000)
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:

              v11 = v44;
              a3 = v45;
LABEL_63:

              if ((v11 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v11))
                {
                  v39 = v46[2];
                  if ((v39 & 0x8000000000000000) == 0)
                  {
                    if (!HIDWORD(v39))
                    {
                      v40 = -*(v46 + 16) & 3;
                      v41 = v40 + v39;
                      if (*(v14 + 32) < (v40 + v39))
                      {
                        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v40, v39, v46[3]);
                      }

                      v46[2] = v41;
                      v9 = v41 + 4;
                      v42 = *(v14 + 32);
                      if (v42 < (v41 + 4))
                      {
                        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v41, v46[3]);
                        v42 = *(v14 + 32);
                      }

                      *(*(v14 + 24) + v42 - v41 - 4) = v11;
                      v46[2] = v9;
                      if (v41 <= 0xFFFFFFFB)
                      {
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v48[0] = v46[6];
                        result = sub_2442DCE70(v41 + 4, v6, a2, isUniquelyReferenced_nonNull_native);
                        v46[6] = v48[0];
                        goto LABEL_73;
                      }

LABEL_84:
                      __break(1u);
                    }

LABEL_83:
                    __break(1u);
                    goto LABEL_84;
                  }

LABEL_82:
                  __break(1u);
                  goto LABEL_83;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

LABEL_80:
              __break(1u);
              goto LABEL_81;
            }

            v20 = v23;
            if ((a2 & 0x1000000000000000) == 0)
            {
LABEL_35:
              v20 = (v20 & 0xFFFFFFFFFFFF0000) - 65532;
              goto LABEL_40;
            }
          }

          else if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_35;
          }

          if (v10 < v20 >> 16)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            v11 = sub_244312D28();
            goto LABEL_9;
          }

          v20 = sub_244312D38();
LABEL_40:
          v24 = v20;
          if ((v20 & 0xC) == v21)
          {
            v24 = sub_2442D5AFC(v20, v6, a2);
          }

          v25 = v24 >> 16;
          if (v24 >> 16 >= v10)
          {
            goto LABEL_61;
          }

          if ((a2 & 0x1000000000000000) != 0)
          {
            v27 = sub_244312D58();
          }

          else if ((a2 & 0x2000000000000000) != 0)
          {
            v48[0] = v6;
            v48[1] = a2 & 0xFFFFFFFFFFFFFFLL;
            v27 = *(v48 + v25);
          }

          else
          {
            v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
            if ((v6 & 0x1000000000000000) == 0)
            {
              v26 = sub_244312EF8();
            }

            v27 = *(v26 + v25);
          }

          v28 = a3[2];
          v29 = v28 + 1;
          v30 = *(v14 + 32);
          if (v30 >= (v28 + 1))
          {
            v22 = *(v14 + 24);
          }

          else
          {
            v31 = *(v14 + 32);
            do
            {
              v31 *= 2;
            }

            while (v29 >= v31);
            if (v31 < 1)
            {
              v37 = 1;
            }

            else
            {
              if (HIDWORD(v31))
              {
                goto LABEL_75;
              }

              v32 = (v31 - 1) | ((v31 - 1) >> 1) | (((v31 - 1) | ((v31 - 1) >> 1)) >> 2);
              v33 = v32 | (v32 >> 4) | ((v32 | (v32 >> 4)) >> 8);
              v34 = v33 | HIWORD(v33);
              v35 = __CFADD__(v34, 1);
              v36 = v34 + 1;
              if (v35)
              {
                v37 = 0xFFFFFFFFLL;
              }

              else
              {
                v37 = v36;
              }
            }

            v38 = v30 - v28;
            *(v14 + 32) = v37;
            v22 = swift_slowAlloc();
            bzero(v22, *(v14 + 32) - v28);
            memcpy(&v22[*(v14 + 32) - v28], (*(v14 + 24) + v38), v28);
            MEMORY[0x245D5F2C0](*(v14 + 24), -1, -1);
            *(v14 + 24) = v22;
            v30 = *(v14 + 32);
            a3 = v46;
          }

          v22[v30 + ~v28] = v27;
          a3[2] = v29;
          v6 = v47;
          if (!(v20 >> 14))
          {
            goto LABEL_62;
          }
        }
      }

LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    __break(1u);
    goto LABEL_79;
  }

  LODWORD(v9) = *(*(v7 + 56) + 4 * result);
LABEL_73:
  *a3 = v9;
  return result;
}

void FlatBufferBuilder.add(offset:at:)(int *a1, unsigned __int16 a2)
{
  v3 = *a1;
  if (!*a1)
  {
    return;
  }

  v4 = v2;
  if (v2[8] <= 3)
  {
    v2[8] = 4;
    v2[3] = 4;
  }

  v6 = v2[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v6))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = -*(v2 + 16) & 3;
  v8 = v7 + v6;
  v9 = v2[1];
  if (*(v9 + 32) < (v7 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v6, v4[3]);
  }

  v4[2] = v8;
  if (HIDWORD(v8))
  {
    goto LABEL_25;
  }

  v10 = v8 - v3 + 4;
  if (v8 - v3 == -4 && *(v4 + 57) != 1)
  {
    return;
  }

  v11 = -v8 & 3;
  v12 = v11 + v8;
  if (*(v9 + 32) < (v11 + v8))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v8, v4[3]);
  }

  v4[2] = v12;
  v13 = v12 + 4;
  v14 = *(v9 + 32);
  if (v14 < (v12 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v12, v4[3]);
    v14 = *(v9 + 32);
  }

  *(*(v9 + 24) + v14 - v12 - 4) = v10;
  v4[2] = v13;
  if (v12 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v15 = *v4;
  if (*(*v4 + 48))
  {
    __break(1u);
  }

  else
  {
    v16 = *(v15 + 32);
    if (v16)
    {
      v17 = v16 + *(v15 + 80);
      *v17 = v13;
      *(v17 + 4) = a2;
    }

    *(v15 + 72) = vaddq_s64(*(v15 + 72), xmmword_244316360);
    v18 = *(v15 + 64);
    if (v18 <= a2)
    {
      LOWORD(v18) = a2;
    }

    *(v15 + 64) = v18;
  }
}

uint64_t FlatBufferBuilder.add<A>(element:def:at:)(uint64_t a1, uint64_t a2, unsigned __int16 a3, uint64_t a4)
{
  v5 = v4;
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  result = sub_244312C68();
  if ((result & 1) != 0 && *(v4 + 57) != 1)
  {
    return result;
  }

  if (*(v4 + 64) < v10)
  {
    *(v4 + 64) = v10;
    *(v4 + 24) = v10;
  }

  v12 = *(v4 + 16);
  if (v12 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if ((v12 | v10) < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v10 > 0xFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  v13 = (v10 - 1) & (-v12 - v10);
  v14 = v12 + v13;
  v15 = *(v4 + 8);
  if (*(v15 + 32) < v12 + v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v12, v5[3]);
  }

  v5[2] = v14;
  v16 = v14 + v10;
  if (*(v15 + 32) < v14 + v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v14, v5[3]);
  }

  (*(v9 + 16))(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  memcpy((*(v15 + 24) + *(v15 + 32) - v16), v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v5[2] = v16;
  result = (*(v9 + 8))(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  if (HIDWORD(v16))
  {
    goto LABEL_27;
  }

  v17 = *v5;
  if (*(*v5 + 48))
  {
    __break(1u);
  }

  else
  {
    v18 = *(v17 + 32);
    if (v18)
    {
      v19 = v18 + *(v17 + 80);
      *v19 = v16;
      *(v19 + 4) = a3;
    }

    *(v17 + 72) = vaddq_s64(*(v17 + 72), xmmword_244316360);
    v20 = *(v17 + 64);
    if (v20 <= a3)
    {
      LOWORD(v20) = a3;
    }

    *(v17 + 64) = v20;
  }

  return result;
}

uint64_t FlatBufferBuilder.add<A>(element:at:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = *MEMORY[0x277D85DE8];
  v7 = sub_244312E58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v30[-v10];
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v15 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v17 = &v30[-v16];
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, a3) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v17, v11, a3);
  if (v4[8] < v13)
  {
    v4[8] = v13;
    v4[3] = v13;
  }

  v19 = v4[2];
  if (v19 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v19 | v13) < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v13 > 0xFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v20 = (v13 - 1) & (-v19 - v13);
  v21 = v19 + v20;
  v22 = v4[1];
  if (*(v22 + 32) < v19 + v20)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v20, v19, v4[3]);
  }

  v4[2] = v21;
  v23 = v21 + v13;
  if (*(v22 + 32) < v21 + v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v21, v4[3]);
  }

  (*(v12 + 16))(v15, v17, a3);
  memcpy((*(v22 + 24) + *(v22 + 32) - v23), v15, v13);
  v4[2] = v23;
  v24 = *(v12 + 8);
  result = v24(v15, a3);
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  if (HIDWORD(v23))
  {
    goto LABEL_26;
  }

  v25 = *v4;
  if (*(v25 + 48))
  {
    __break(1u);
  }

  else
  {
    v26 = *(v25 + 32);
    v27 = v31;
    if (v26)
    {
      v28 = v26 + *(v25 + 80);
      *v28 = v23;
      *(v28 + 4) = v27;
    }

    result = v24(v17, a3);
    *(v25 + 72) = vaddq_s64(*(v25 + 72), xmmword_244316360);
    v29 = *(v25 + 64);
    if (v29 <= v27)
    {
      LOWORD(v29) = v27;
    }

    *(v25 + 64) = v29;
  }

  return result;
}

uint64_t FlatBufferBuilder.debugDescription.getter()
{
  sub_244312E98();
  MEMORY[0x245D5E950](0x6420726566667562, 0xEE000A3A67756265);
  sub_244312F08();
  MEMORY[0x245D5E950](0xD00000000000001CLL, 0x800000024431C300);
  if (v0[56])
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v0[56])
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x245D5E950](v1, v2);

  MEMORY[0x245D5E950](0xD000000000000015, 0x800000024431C320);
  if (v0[57])
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v0[57])
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x245D5E950](v3, v4);

  MEMORY[0x245D5E950](0x7473654E7369202CLL, 0xEC000000203A6465);
  if (v0[40])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[40])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x245D5E950](v5, v6);

  MEMORY[0x245D5E950](32032, 0xE200000000000000);
  return 0;
}

uint64_t FlatBufferBuilder.VTableStorage.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 8;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v1 = swift_slowAlloc();
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  return v0;
}

void FlatBufferBuilder.VTableStorage.deinit()
{
  if (*(v0 + 48))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);
    if (v1)
    {
      MEMORY[0x245D5F2C0](v1, -1, -1);
    }
  }
}

void FlatBufferBuilder.VTableStorage.__deallocating_deinit()
{
  if (*(v0 + 48))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);
    if (v1)
    {
      MEMORY[0x245D5F2C0](v1, -1, -1);
    }

    swift_deallocClassInstance();
  }
}

char *sub_2442DB888(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDE930, &qword_244313BF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DB9A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDE928, &qword_244313BF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DBAC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDE938, &unk_244316490);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DBBD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDF008, &qword_244316488);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DBCE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDF010, &qword_2443164A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DBE18(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDEFD8, &qword_2443161A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2442DBF1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDF040, &qword_2443164D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2442DC020(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_2442C6564(&qword_27EDDF018, &qword_2443164A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2442C6564(&qword_27EDDF020, &qword_2443164B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2442DC154(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2442C6564(&qword_27EDDF030, &qword_2443164C0);
  v10 = *(sub_244312BB8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_244312BB8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2442DC32C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDF028, &qword_2443164B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DC44C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2442C6564(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_2442DC538(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDEFF0, &qword_244316470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DC660(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDEFE8, &unk_244316460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2442DC77C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2442C6564(&qword_27EDDF000, &qword_244316480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2442DC8A4(uint64_t a1, uint64_t a2)
{
  sub_2443131A8();
  sub_244312CF8();
  v4 = sub_2443131D8();

  return sub_2442DC980(a1, a2, v4);
}

unint64_t sub_2442DC91C(uint64_t a1)
{
  sub_244312F28();
  v2 = sub_244312C48();

  return sub_2442DCA38(a1, v2);
}

unint64_t sub_2442DC980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_244313108())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2442DCA38(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_244312F28();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_244312C68();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_2442DCBD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2442C6564(&qword_27EDDF038, &qword_2443164C8);
  v34 = v4;
  result = sub_244312F78();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_2443131A8();
      sub_244312CF8();
      result = sub_2443131D8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2442DCE70(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2442DC8A4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2442DCBD0(v16, a4 & 1);
      result = sub_2442DC8A4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_244313148();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2442DCFD4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_2442DCFD4()
{
  v1 = v0;
  sub_2442C6564(&qword_27EDDF038, &qword_2443164C8);
  v2 = *v0;
  v3 = sub_244312F68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t (*sub_2442DD13C(uint64_t *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  *a1 = v7;
  *(v7 + 32) = sub_2442DD210(v7, *a2, *v3, *(a3 + 16));
  return sub_2442DD1C8;
}

void sub_2442DD1C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_2442DD210(uint64_t (**a1)(), uint64_t a2, uint64_t a3, uint64_t (*a4)()))()
{
  v8 = *(a4 - 1);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  a1[3] = v11;
  v13 = sub_244312DC8();
  sub_244312DB8();
  if (v13)
  {
    (*(v9 + 16))(v12, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_2442DD384;
  }

  result = sub_244312EA8();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v12, a1, a4);
    swift_unknownObjectRelease();
    return sub_2442DD384;
  }

  __break(1u);
  return result;
}

void sub_2442DD384(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

unint64_t sub_2442DD3D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2442C6564(&qword_27EDDF038, &qword_2443164C8);
    v3 = sub_244312F88();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2442DC8A4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_2442DD4CC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

double sub_2442DD584@<D0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for FlatBufferBuilder.VTableStorage();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 8;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  v7 = swift_slowAlloc();
  *(v6 + 32) = v7;
  *(v6 + 40) = v7;
  *(v6 + 48) = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = sub_2442DD3D0(MEMORY[0x277D84F90]);
  v10 = sub_2442DDD90(a1);
  type metadata accessor for ByteBuffer.Storage();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 24) = v12;
  *(v11 + 32) = v10;
  *(v11 + 16) = 0;
  bzero(v12, v10);
  *a3 = v6;
  *(a3 + 8) = v11;
  result = 0.0;
  *(a3 + 16) = xmmword_2443160F0;
  *(a3 + 32) = v8;
  *(a3 + 40) = 0;
  *(a3 + 48) = v9;
  *(a3 + 56) = 0;
  *(a3 + 57) = a2;
  *(a3 + 64) = 0;
  return result;
}

unint64_t sub_2442DD680(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 4 * result + 4 * a3;
  v10 = (v6 + 32 + 4 * a2);
  if (result != v10 || result >= v10 + 4 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 4 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_2442DD728(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_2442DBE18(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_2442DD680(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t *sub_2442DD7F4(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *(a2 + 64) = *result;
  *(a2 + 24) = v2;
  return result;
}

__n128 sub_2442DD804(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2442DD828(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2442DD870(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of static ObjectAPIPacker.pack(_:obj:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 16))(a1, a2, a3);
}

{
  return (*(a4 + 24))(a1, a2, a3);
}

uint64_t sub_2442DD9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2442DDB84();
  v3 = sub_244313158();
  v5 = v4;
  if (v3 == sub_244313158() && v5 == v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_244313108();
  }

  return v7 & 1;
}

uint64_t static FlatbuffersErrors.== infix(_:_:)()
{
  sub_2442DDB84();
  v0 = sub_244313158();
  v2 = v1;
  if (v0 == sub_244313158() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_244313108();
  }

  return v4 & 1;
}

unint64_t sub_2442DDB84()
{
  result = qword_27EDDF048[0];
  if (!qword_27EDDF048[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EDDF048);
  }

  return result;
}

uint64_t sub_2442DDBD8(uint64_t a1)
{
  if ((*(a1 + 64) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 64) & 7;
  }
}

__n128 sub_2442DDBF4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2442DDC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 65))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 64);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2442DDC60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_2442DDCB8(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 64) = a2;
  return result;
}

void *static FlatBuffersUtils.removeSizePrefix(bb:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  type metadata accessor for ByteBuffer.Storage();
  v3 = swift_allocObject();
  result = swift_slowAlloc();
  *(v3 + 24) = result;
  *(v3 + 32) = v2;
  *(v3 + 16) = 0;
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    memmove(result, v1, v2);
    return v3;
  }

  return result;
}

unint64_t sub_2442DDD90(unint64_t result)
{
  if (result < 1)
  {
    return 1;
  }

  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v1 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
    v3 = v2 | HIWORD(v2);
    v4 = __CFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t Message.object.getter(uint64_t a1)
{
  result = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 32) - v4;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v6 = *(*(result + 24) + v5);
  if (v6 < 0)
  {
    goto LABEL_7;
  }

  v7 = (v6 + v5);
  if (!__OFADD__(v6, v5))
  {
    v8 = v1[2];
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 24) + 8);
    v11 = *(v10 + 8);

    return v11(v12, v4, v8, v7, v9, v10);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t Message.size.getter()
{
  result = *(v0 + 8);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Message.init(byteBuffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void Message.init(builder:)(void *a1@<X8>)
{
  FlatBufferBuilder.sizedBuffer.getter();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  FlatBufferBuilder.clear()();
}

uint64_t sub_2442DDF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2442DE008(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return a2 != 0;
  }

  result = (*(a5 + 8))(a3, a5);
  v9 = *(*(a4 - 8) + 64);
  if ((v9 & 0x8000000000000000) == 0)
  {
    memcpy((*(result + 24) + a2), a1, v9);

    return a2 != 0;
  }

  __break(1u);
  return result;
}

const void *Mutable<>.mutate<A>(_:index:)(const void *result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (!a2)
  {
    v9 = 0;
    return (v9 & 1);
  }

  v7 = __OFADD__(a2, a6);
  v8 = a2 + a6;
  if (!v7)
  {
    v9 = sub_2442DE008(result, v8, &type metadata for Table, a7, &protocol witness table for Table);
    return (v9 & 1);
  }

  __break(1u);
  return result;
}

{
  v7 = __OFADD__(a2, a6);
  v8 = a2 + a6;
  if (!v7)
  {
    return (sub_2442DE008(result, v8, &type metadata for Struct, a7, &protocol witness table for Struct) & 1);
  }

  __break(1u);
  return result;
}

uint64_t Mutable<>.directMutate<A>(_:index:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return sub_2442DE1D0(a1, a2, a3, a4, a5, a6, a7, a8, &type metadata for Table, &protocol witness table for Table) & 1;
}

{
  return sub_2442DE1D0(a1, a2, a3, a4, a5, a6, a7, a8, &type metadata for Struct, &protocol witness table for Struct) & 1;
}

uint64_t NativeObject.serialize<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2442DD584(1024, 0, v12);
  v10 = NativeObject.serialize<A>(builder:type:)(v12, a1, a2, a3, v9, a5);
  v14[2] = v12[2];
  v14[3] = v12[3];
  v15 = v13;
  v14[0] = v12[0];
  v14[1] = v12[1];
  sub_2442DE454(v14);
  return v10;
}

uint64_t NativeObject.serialize<A>(builder:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v6);
  (*(a6 + 24))(v19, a1, v13, a4, a6);
  FlatBufferBuilder.finish(offset:addPrefix:)(v19, 0);
  v14 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v14;
  v20 = *(a1 + 64);
  v15 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v15;
  FlatBufferBuilder.sizedBuffer.getter();
  v17 = v16;
  (*(v11 + 8))(v13, a3);
  return v17;
}

uint64_t getEnumTagSinglePayload for Offset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Offset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void getPrefixedSizeCheckedRoot<A>(byteBuffer:fileId:options:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = *(a4 + 2);
  v9 = *(a4 + 12);
  a1[1] -= 4;
  v10 = *a4;
  v11 = v8;
  v12 = v9;
  getCheckedRoot<A>(byteBuffer:fileId:options:)(a1, a2, a3, &v10, a5, a6, a7, a8);
}

void getCheckedRoot<A>(byteBuffer:fileId:options:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a1;
  v10 = *(*a1 + 32);
  if (v10 > 3221225471)
  {
    sub_2442DDB84();
    swift_allocError();
    *v21 = 2;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0;
    *(v21 + 64) = 7;
    swift_willThrow();
    return;
  }

  v36 = a8;
  v14 = *a4;
  v15 = *(a4 + 2);
  v16 = *(a4 + 12);
  v17 = a1[1];
  v18 = a1[2];
  LOBYTE(v32) = 1;
  *(&v32 + 1) = v10;
  LODWORD(v33) = 0;
  *(&v33 + 1) = 0;
  *&v34 = 0;
  *(&v34 + 1) = v9;
  *v35 = v17;
  *&v35[8] = v18;
  *&v35[16] = v14;
  *&v35[24] = v15;
  v35[28] = v16;
  if (a3)
  {

    sub_2442E13BC(a2, a3);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  static ForwardOffset.verify<A>(_:at:of:)(&v32, 0, a5, a5, a5, a7);
  if (v8)
  {
    v30 = v34;
    v31[0] = *v35;
    v22 = *&v35[13];
LABEL_15:
    *(v31 + 13) = v22;
    v29[0] = v32;
    v29[1] = v33;
    sub_2442DE954(v29);
    return;
  }

  v23 = *(v9 + 32) - v17;
  if (v23 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v23 > 0x7FFFFFFF)
  {
    goto LABEL_17;
  }

  v24 = *(*(v9 + 24) + v23);
  if (v24 < 0)
  {
    goto LABEL_17;
  }

  v25 = (v24 + v23);
  if (!__OFADD__(v24, v23))
  {
    v26 = *(a6 + 8);
    v27 = *(v26 + 8);

    v27(v28, v17, v18, v25, a5, v26);
LABEL_14:
    v30 = v34;
    v31[0] = *v35;
    v22 = *&v35[13];
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

void getCheckedPrefixedSizeRoot<A>(byteBuffer:fileId:options:)(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = *(a4 + 12);
  v13 = result[1] - 4;
  result[1] = v13;
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(v13))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v19 = v8;
  v20 = v9;
  v14 = **(*result + 24);
  if (v14 < 0 || v14 != v13)
  {
    sub_2442DDB84();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 56) = 0;
    *(v15 + 64) = 7;
    swift_willThrow();
  }

  else
  {
    v16 = v10;
    v17 = v11;
    v18 = v12;
    getCheckedRoot<A>(byteBuffer:fileId:options:)(result, a2, a3, &v16, a5, a6, a7, a8);
  }
}

uint64_t getRoot<A>(byteBuffer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  v5 = a1[1];
  v6 = *(result + 32) - v5;
  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v7 = *(*(result + 24) + v6);
  if (v7 < 0)
  {
    goto LABEL_7;
  }

  v8 = (v7 + v6);
  if (!__OFADD__(v7, v6))
  {
    v10 = a1[2];
    v11 = *(a3 + 8);
    v12 = *(v11 + 8);

    return v12(v13, v5, v10, v8, a2, v11);
  }

LABEL_8:
  __break(1u);
  return result;
}

void static String.verify<A>(_:at:of:)(uint64_t a1, Swift::Int a2)
{
  v5 = sub_244312CC8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  sub_2442E0FBC(a2);
  if (!v2)
  {
    Verifier.rangeInBuffer(position:size:)(a2, 4);
    if (!v12)
    {
      v13 = *(a1 + 40);
      v14 = *(*(v13 + 24) + a2);
      v15 = a2 + 4;
      if (a2 + 4 < 0)
      {
        v15 = -4 - a2;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v15;
      }

      Verifier.rangeInBuffer(position:size:)(v16, *(*(v13 + 24) + a2));
      if (!v17)
      {
        v18 = v16 + v14;
        v19 = *(a1 + 8);
        if ((v16 + v14) >= v19)
        {
          if (v18 >= 0)
          {
            v22 = v16 + v14;
          }

          else
          {
            v22 = -v18;
          }

          v23 = v19;
          sub_2442DDB84();
          swift_allocError();
          *v24 = v22;
          *(v24 + 8) = v23;
          v26 = v34;
          v25 = v35;
          *(v24 + 16) = v33;
          *(v24 + 32) = v26;
          *(v24 + 48) = v25;
          *(v24 + 64) = 1;
          swift_willThrow();
        }

        else if ((*(a1 + 76) & 1) == 0 && *(*(v13 + 24) + v18))
        {
          sub_244312CB8();
          if (v14)
          {
            v20 = *(v13 + 24);
            v21 = sub_2442D54E0(v14, 0);
            memcpy(v21 + 4, (v20 + v16), v14);
          }

          else
          {
            v21 = MEMORY[0x277D84F90];
          }

          *&v33 = v21;
          (*(v6 + 16))(v9, v11, v5);
          sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
          sub_2442C90F4();
          v27 = sub_244312CA8();
          v29 = v28;
          (*(v6 + 8))(v11, v5);

          sub_2442DDB84();
          swift_allocError();
          *v30 = a2;
          *(v30 + 8) = v27;
          *(v30 + 16) = v29;
          v31 = v35;
          v32 = v34;
          *(v30 + 24) = v33;
          *(v30 + 40) = v32;
          *(v30 + 56) = v31;
          *(v30 + 64) = 4;
          swift_willThrow();
        }
      }
    }
  }
}

uint64_t String.init(_:o:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = sub_2442DF328(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_2442DECCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, int a5@<W3>)
{
  v6 = sub_2442DF328(a1, a3, a4, a5);
  v8 = v7;

  *a2 = v6;
  a2[1] = v8;
  return result;
}

void static String.pack(_:obj:)(void *result@<X0>, unint64_t *a2@<X1>, _DWORD *a3@<X8>)
{
  v3 = a2[1];
  if (v3)
  {
    v4[0] = *a2;
    v4[1] = v3;
    static String.pack(_:obj:)(result, v4, a3);
  }

  else
  {
    *a3 = 0;
  }
}

void static String.pack(_:obj:)(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v45[3] = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v4 = a2[1];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = v5 & 0xFFFFFFFFFFFFLL;
  }

LABEL_5:
  if (a1[8] <= 3)
  {
    a1[8] = 4;
    a1[3] = 4;
  }

  v8 = a1[2];
  if (v8 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_72;
  }

  if ((v8 | (v7 + 1)) < 0)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v7 + 1 > 0xFFFFFFFFLL)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  _ = v7;
  v9 = ~(v8 + v7) & 3;
  v10 = v9 + v8;
  v11 = a1[1];
  v44 = v5;
  if (*(v11 + 32) >= v9 + v8)
  {
  }

  else
  {
    v12 = a1[3];

    v13 = v12;
    v5 = v44;
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v8, v13);
  }

  a1[2] = v10;
  v14 = v10 + 1;
  if (*(v11 + 32) <= v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v10, a1[3]);
  }

  a1[2] = v14;
  if (*(v11 + 32) < (v14 + _))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(_, v14, a1[3]);
  }

  if (sub_2442D4EBC(v5, v4, a1 + 1, _) != 2)
  {
    goto LABEL_58;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_58;
  }

  v41 = a3;
  v15 = (v5 >> 59) & 1;
  if ((v4 & 0x1000000000000000) == 0)
  {
    LODWORD(v15) = 1;
  }

  v16 = 11;
  if (v15)
  {
    v16 = 7;
  }

  v17 = v16 | (v6 << 16);
  v18 = 4 << v15;

  a3 = a1;
  while (1)
  {
    if ((v17 & 0xC) != v18)
    {
      if ((v4 & 0x1000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    v20 = sub_2442D5AFC(v17, v5, v4);
    if (v20 < 0x4000)
    {
      break;
    }

    v17 = v20;
    if ((v4 & 0x1000000000000000) == 0)
    {
LABEL_30:
      v17 = (v17 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_35;
    }

LABEL_33:
    if (v6 < v17 >> 16)
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      v7 = sub_244312D28();
      goto LABEL_5;
    }

    v17 = sub_244312D38();
LABEL_35:
    v21 = v17;
    if ((v17 & 0xC) == v18)
    {
      v21 = sub_2442D5AFC(v17, v5, v4);
    }

    v22 = v21 >> 16;
    if (v21 >> 16 >= v6)
    {
      goto LABEL_56;
    }

    if ((v4 & 0x1000000000000000) != 0)
    {
      v24 = sub_244312D58();
    }

    else if ((v4 & 0x2000000000000000) != 0)
    {
      v45[0] = v5;
      v45[1] = v4 & 0xFFFFFFFFFFFFFFLL;
      v24 = *(v45 + v22);
    }

    else
    {
      v23 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v5 & 0x1000000000000000) == 0)
      {
        v23 = sub_244312EF8();
      }

      v24 = *(v23 + v22);
    }

    v25 = a3[2];
    v26 = v25 + 1;
    v27 = *(v11 + 32);
    if (v27 >= (v25 + 1))
    {
      v19 = *(v11 + 24);
    }

    else
    {
      v28 = *(v11 + 32);
      do
      {
        v28 *= 2;
      }

      while (v26 >= v28);
      if (v28 < 1)
      {
        v34 = 1;
      }

      else
      {
        if (HIDWORD(v28))
        {
          goto LABEL_69;
        }

        v29 = (v28 - 1) | ((v28 - 1) >> 1) | (((v28 - 1) | ((v28 - 1) >> 1)) >> 2);
        v30 = v29 | (v29 >> 4) | ((v29 | (v29 >> 4)) >> 8);
        v31 = v30 | HIWORD(v30);
        v32 = __CFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          v34 = 0xFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }
      }

      v35 = v27 - v25;
      *(v11 + 32) = v34;
      v19 = swift_slowAlloc();
      bzero(v19, *(v11 + 32) - v25);
      memcpy(&v19[*(v11 + 32) - v25], (*(v11 + 24) + v35), v25);
      MEMORY[0x245D5F2C0](*(v11 + 24), -1, -1);
      *(v11 + 24) = v19;
      v27 = *(v11 + 32);
      a3 = a1;
    }

    v19[v27 + ~v25] = v24;
    a3[2] = v26;
    v5 = v44;
    if (!(v17 >> 14))
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:

  a3 = v41;
LABEL_58:

  if ((_ & 0x8000000000000000) != 0)
  {
    goto LABEL_74;
  }

  if (HIDWORD(_))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v36 = a1[2];
  if ((v36 & 0x8000000000000000) != 0)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (HIDWORD(v36))
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v37 = -*(a1 + 16) & 3;
  v38 = v37 + v36;
  if (*(v11 + 32) < (v37 + v36))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v37, v36, a1[3]);
  }

  a1[2] = v38;
  v39 = v38 + 4;
  v40 = *(v11 + 32);
  if (v40 < (v38 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v38, a1[3]);
    v40 = *(v11 + 32);
  }

  *(*(v11 + 24) + v40 - v38 - 4) = _;
  a1[2] = v39;
  if (v38 > 0xFFFFFFFB)
  {
LABEL_78:
    __break(1u);
  }

  *a3 = v39;
}

Swift::String __swiftcall String.unpack()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

void sub_2442DF220(void *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = a2[1];
  if (v3)
  {
    v4[0] = *a2;
    v4[1] = v3;
    static String.pack(_:obj:)(a1, v4, a3);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t sub_2442DF264@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2442DF328(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = sub_244312CC8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v13 = a4;
  v14 = *(*(a1 + 24) + a4);
  sub_244312CB8();
  if (v14)
  {
    v15 = *(a1 + 24) + v13;
    v16 = sub_2442D54E0(v14, 0);
    memcpy(v16 + 4, (v15 + 4), v14);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v21[1] = v16;
  (*(v7 + 16))(v10, v12, v6);
  sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
  sub_2442C90F4();
  v17 = sub_244312CA8();
  v19 = v18;
  (*(v7 + 8))(v12, v6);

  if (v19)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t Struct.readBuffer<A>(of:at:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (!__OFADD__(a2, a6))
  {
    return sub_244312E68();
  }

  __break(1u);
  return result;
}

__n128 sub_2442DF574(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_2442DF588(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 28))
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

uint64_t sub_2442DF5D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int32 __swiftcall Table.offset(_:)(Swift::Int32 result)
{
  v3 = *(v1 + 24);
  v4 = *(v3 + v2);
  v5 = __OFSUB__(v2, v4);
  v6 = v2 - v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    if (*(v3 + v6) <= result)
    {
      return 0;
    }

    v5 = __OFADD__(v6, result);
    v7 = v6 + result;
    if (!v5)
    {
      return *(v3 + v7);
    }
  }

  __break(1u);
  return result;
}

Swift::Int32 __swiftcall Table.indirect(_:)(Swift::Int32 a1)
{
  v2 = *(*(v1 + 24) + a1);
  v3 = __OFADD__(a1, v2);
  result = a1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall Table.string(at:)(Swift::Int32 at)
{
  v2 = __OFADD__(at, v1);
  countAndFlagsBits = (at + v1);
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v5 = Table.directString(at:)(countAndFlagsBits);
    object = v5.value._object;
    countAndFlagsBits = v5.value._countAndFlagsBits;
  }

  result.value._object = object;
  result.value._countAndFlagsBits = countAndFlagsBits;
  return result;
}

Swift::String_optional __swiftcall Table.directString(at:)(Swift::Int32 at)
{
  v2 = v1;
  v4 = sub_244312CC8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v12 = v25 - v11;
  v13 = *(v2 + 24);
  v14 = *(v13 + at);
  v15 = __OFADD__(at, v14);
  v16 = at + v14;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v16;
    v18 = *(v13 + v16);
    sub_244312CB8();
    if (v18)
    {
      v19 = *(v2 + 24) + v17;
      v20 = sub_2442D54E0(v18, 0);
      memcpy(v20 + 4, (v19 + 4), v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v25[1] = v20;
    (*(v5 + 16))(v8, v12, v4);
    sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
    sub_2442C90F4();
    v21 = sub_244312CA8();
    v23 = v22;
    (*(v5 + 8))(v12, v4);

    v9 = v21;
    v10 = v23;
  }

  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t Table.readBuffer<A>(of:at:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (!__OFADD__(a2, a6))
  {
    return sub_244312E68();
  }

  __break(1u);
  return result;
}

uint64_t Table.union<A>(_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = __OFADD__(a1, a5);
  result = (a1 + a5);
  if (!v7)
  {
    return Table.directUnion<A>(_:)(result, a2, a3, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t Table.directUnion<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(*(a2 + 24) + result);
  v8 = (result + v7);
  if (__OFADD__(result, v7))
  {
    __break(1u);
  }

  else
  {
    v13 = *(a7 + 8);

    return v13(v14, a3, a4, v8, a6, a7);
  }

  return result;
}

uint64_t Table.getVector<A>(at:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = *(a2 + 24);
  v7 = *(v6 + a5);
  v8 = __OFSUB__(a5, v7);
  v9 = a5 - v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v6 + v9) <= result)
  {
    return 0;
  }

  v8 = __OFADD__(v9, result);
  v10 = v9 + result;
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(v6 + v10);
  if (!v11)
  {
    return 0;
  }

  v8 = __OFADD__(v11, a5);
  v12 = v11 + a5;
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = *(v6 + v12);
  v8 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (!v8)
  {
    if (!__OFADD__(v14, 4))
    {
      sub_244312C78();
      sub_244312C88();
      swift_getWitnessTable();
      return sub_244312E08();
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

Swift::Int32 __swiftcall Table.vector(at:)(Swift::Int32 at)
{
  v3 = at + v2;
  if (__OFADD__(at, v2))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *(*(v1 + 24) + v3);
  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  at = v6 + 4;
  if (__OFADD__(v6, 4))
  {
LABEL_7:
    __break(1u);
  }

  return at;
}

Swift::Int32 __swiftcall Table.vector(count:)(Swift::Int32 count)
{
  v3 = count + v2;
  if (__OFADD__(count, v2))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    v5 = *(v4 + v3);
    v6 = __OFADD__(v3, v5);
    v7 = v3 + v5;
    if (!v6)
    {
      return *(v4 + v7);
    }
  }

  __break(1u);
  return count;
}

uint64_t static Table.indirect(_:_:)(int a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) + a1);
  v3 = __OFADD__(a1, v2);
  result = (a1 + v2);
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t static Table.offset(_:vOffset:fbb:)(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 32);
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(v3, result);
  v5 = v3 - result;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5 + a2;
  if (__OFADD__(v5, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(a3 + 24);
  v8 = *(v7 + v5);
  v4 = __OFSUB__(v6, v8);
  v9 = v6 - v8;
  if (v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = *(v7 + v9);
  result = (v5 + v10);
  if (__OFADD__(v5, v10))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t static Table.compare(_:_:fbb:)(uint64_t result, int a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + result);
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v6 = *(v3 + a2);
  v7 = a2 + v6;
  if (__OFADD__(a2, v6))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v9 = v7 + 4;
  if (__OFADD__(v7, 4))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v10 = *(v3 + v5);
  v11 = *(v3 + v7);
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v13 = 0;
  while (1)
  {
    if (v13 == v12)
    {
      v14 = 0;
    }

    else
    {
      if (v13 == 0x7FFFFFFF)
      {
        goto LABEL_26;
      }

      v14 = v13 + 1;
    }

    if (__OFADD__(v13, v8))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    result = (v13 + v9);
    if (__OFADD__(v13, v9))
    {
      goto LABEL_25;
    }

    v15 = *(v3 + v13 + v8);
    result = *(v3 + result);
    if (v15 != result)
    {
      break;
    }

    v16 = v13 == v12;
    v13 = v14;
    if (v16)
    {
      result = (v10 - v11);
      if (!__OFSUB__(v10, v11))
      {
        return result;
      }

      __break(1u);
      break;
    }
  }

  v17 = result - v15;
  result = (result - v15);
  if (result != v17)
  {
    goto LABEL_32;
  }

  return result;
}

uint64_t static Table.compare(_:_:fbb:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(v3 + result);
  v5 = result + v4;
  if (__OFADD__(result, v4))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *(a2 + 16);
  if (v6 >> 31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = v5 + 4;
  if (__OFADD__(v5, 4))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LODWORD(v8) = *(v3 + v5);
  if ((v8 & 0x80000000) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  v9 = 0;
  result = (v8 - v6);
  if (v8 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v8;
  }

  while (v8 != v9)
  {
    if (v9 == 0x7FFFFFFF)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v9, v7))
    {
      goto LABEL_18;
    }

    if (v6 == v9)
    {
      goto LABEL_19;
    }

    v10 = *(v3 + v9 + v7);
    v11 = *(a2 + 32 + v9);
    if ((v10 & 0x80000000) == 0)
    {
      ++v9;
      if (v10 == v11)
      {
        continue;
      }
    }

    if (v11 < 0)
    {
      goto LABEL_24;
    }

    result = (v10 - v11);
    if (result != v10 - v11)
    {
      goto LABEL_25;
    }

    return result;
  }

  return result;
}

void TableVerifier.visit<A>(field:fieldName:required:type:)(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (v7[2] <= a1)
  {
LABEL_7:
    if (a4)
    {
      sub_2442DDB84();
      swift_allocError();
      *v17 = a1;
      *(v17 + 6) = v22;
      *(v17 + 2) = v21;
      *(v17 + 8) = a2;
      *(v17 + 16) = a3;
      *(v17 + 24) = v18;
      *(v17 + 40) = v19;
      *(v17 + 56) = v20;
      *(v17 + 64) = 3;
      swift_willThrow();
    }

    return;
  }

  v12 = a4;
  v15 = v7[1] + a1;
  sub_2442E0E9C(v15);
  if (!v8)
  {
    Verifier.rangeInBuffer(position:size:)(v15, 2);
    if (!v16)
    {
      if (*(*(v7[8] + 24) + v15))
      {
        (*(a7 + 8))(v7 + 3, *v7 + *(*(v7[8] + 24) + v15), a6, a6, a7, a6, a7);
        return;
      }

      a4 = v12;
      goto LABEL_7;
    }
  }
}

void TableVerifier.visit<A>(unionKey:unionField:unionKeyName:fieldName:required:completion:)(unsigned __int16 a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void *, char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = v11;
  v55 = a8;
  v59 = a7;
  v60 = a5;
  v61 = a6;
  v62 = a3;
  v57 = a11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v49 - v17;
  v18 = sub_244312E58();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v25 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v13[2];
  if (v26 <= a1)
  {
    v30 = 0;
    v29 = 1;
  }

  else
  {
    v51 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = v23;
    v49 = v24;
    v50 = a4;
    v53 = v20;
    v54 = v22;
    v27 = v13[1] + a1;
    sub_2442E0E9C(v27);
    if (v12)
    {
      return;
    }

    Verifier.rangeInBuffer(position:size:)(v27, 2);
    if (v12)
    {
      return;
    }

    v28 = *(*(v13[8] + 24) + v27);
    if (*(*(v13[8] + 24) + v27))
    {
      v29 = 0;
      v30 = *v13 + v28;
    }

    else
    {
      v30 = 0;
      v29 = 1;
    }

    v24 = v49;
    a4 = v50;
    v20 = v53;
    v22 = v54;
    v25 = v51;
    v23 = v52;
  }

  if (v26 <= a2)
  {
LABEL_16:
    if (v29)
    {
      if ((v59 & 1) == 0)
      {
        return;
      }

      sub_2442DDB84();
      swift_allocError();
      *v37 = a1;
      v38 = v66;
      *(v37 + 6) = v67;
      *(v37 + 2) = v38;
      *(v37 + 8) = v62;
      *(v37 + 16) = a4;
      v39 = v65;
      v40 = v64;
      *(v37 + 24) = v63;
      *(v37 + 40) = v40;
      *(v37 + 56) = v39;
      *(v37 + 64) = 3;
      swift_willThrow();
      goto LABEL_21;
    }

    v50 = v30;
    v32 = a4;
    v35 = 0;
    v36 = 1;
LABEL_20:
    LOBYTE(v63) = v29;
    LOBYTE(v66) = v36;
    sub_2442DDB84();
    swift_allocError();
    *v41 = v50;
    *(v41 + 8) = v29;
    *(v41 + 16) = v62;
    *(v41 + 24) = v32;
    *(v41 + 32) = v35;
    *(v41 + 40) = v36;
    v42 = v61;
    *(v41 + 48) = v60;
    *(v41 + 56) = v42;
    *(v41 + 64) = 5;
    swift_willThrow();

LABEL_21:

    return;
  }

  v50 = v30;
  v51 = v25;
  v31 = v24;
  v52 = v23;
  v53 = v20;
  v54 = v22;
  v32 = a4;
  v33 = v13[1] + a2;
  sub_2442E0E9C(v33);
  if (v12)
  {
    return;
  }

  Verifier.rangeInBuffer(position:size:)(v33, 2);
  if (v34)
  {
    return;
  }

  if (!*(*(v13[8] + 24) + v33))
  {
    v30 = v50;
    goto LABEL_16;
  }

  v35 = *v13 + *(*(v13[8] + 24) + v33);
  if (v29)
  {
    v36 = 0;
    goto LABEL_20;
  }

  v43 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(v13 + 3, v50, v43, v43, AssociatedConformanceWitness, v43, AssociatedConformanceWitness);
  v45 = v56;
  sub_244312E68();
  (*(v57 + 16))(v45, a10);
  v46 = v54;
  if ((*(v54 + 48))(v31, 1, a10) == 1)
  {
    (*(v52 + 8))(v31, v53);
    sub_2442DDB84();
    swift_allocError();
    *v47 = 5;
    *(v47 + 8) = 0u;
    *(v47 + 24) = 0u;
    *(v47 + 40) = 0u;
    *(v47 + 56) = 0;
    *(v47 + 64) = 7;
    swift_willThrow();
  }

  else
  {
    v48 = v51;
    (*(v46 + 32))(v51, v31, a10);
    v55(v13 + 3, v48, v35);
    (*(v46 + 8))(v48, a10);
  }
}

void TableVerifier.visitUnionVector<A>(unionKey:unionField:unionKeyName:fieldName:required:completion:)(unsigned __int16 a1, unsigned __int16 a2, uint64_t a3, uint64_t (**a4)(char *, uint64_t, uint64_t), void (**a5)(char *, char *, uint64_t), uint64_t a6, char a7, void (*a8)(uint64_t, char *, Swift::Int), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = v11[2];
  if (v17 <= a1)
  {
    v27 = a8;
    v21 = 0;
    v20 = 1;
  }

  else
  {
    v28 = a3;
    v30 = a4;
    v19 = v11[1] + a1;
    sub_2442E0E9C(v19);
    if (v12)
    {
      return;
    }

    Verifier.rangeInBuffer(position:size:)(v19, 2);
    if (v12)
    {
      return;
    }

    v27 = a8;
    if (*(*(v11[8] + 24) + v19))
    {
      v20 = 0;
      v21 = *v11 + *(*(v11[8] + 24) + v19);
    }

    else
    {
      v21 = 0;
      v20 = 1;
    }

    a3 = v28;
    a4 = v30;
  }

  if (v17 <= a2)
  {
LABEL_14:
    if (a7)
    {
      sub_2442DDB84();
      swift_allocError();
      *v26 = a2;
      *(v26 + 6) = v36;
      *(v26 + 2) = v35;
      *(v26 + 8) = a5;
      *(v26 + 16) = a6;
      *(v26 + 24) = v32;
      *(v26 + 40) = v33;
      *(v26 + 56) = v34;
      *(v26 + 64) = 3;
      swift_willThrow();
    }

    return;
  }

  v22 = v21;
  v29 = a3;
  v31 = a4;
  v23 = v11[1] + a2;
  sub_2442E0E9C(v23);
  if (!v12)
  {
    Verifier.rangeInBuffer(position:size:)(v23, 2);
    if (!v24)
    {
      if (*(*(v11[8] + 24) + v23))
      {
        v25 = v20;
      }

      else
      {
        v25 = 1;
      }

      if ((v25 & 1) == 0)
      {
        static UnionVector.verify(_:keyPosition:fieldPosition:unionKeyName:fieldName:completion:)((v11 + 3), v22, *v11 + *(*(v11[8] + 24) + v23), v29, v31, a5, a6, v27, a9, a10, a11);
        return;
      }

      goto LABEL_14;
    }
  }
}

Swift::Void __swiftcall TableVerifier.finish()()
{
  v1 = *(v0 + 56);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v3;
  }
}

__n128 sub_2442E0578(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 93) = *(a2 + 93);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2442E05A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 101))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2442E05EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 101) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 101) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t VerifierOptions.init(maxDepth:maxTableCount:maxApparentSize:ignoreMissingNullTerminators:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 4) = a2;
  *(a5 + 8) = result;
  *(a5 + 12) = a4;
  return result;
}

void *initializeBufferWithCopyOfBuffer for VerifierOptions(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VerifierOptions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 13))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VerifierOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

void static ForwardOffset.verify<A>(_:at:of:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2442E0FEC(a2, MEMORY[0x277D84CC0], &qword_27EDDF268, qword_244316998);
  if (!v6)
  {
    Verifier.rangeInBuffer(position:size:)(a2, 4);
    if (!v11)
    {
      v12 = *(*(*(a1 + 40) + 24) + a2) + a2;
      if (v12 < 0)
      {
        v12 = -v12;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v12;
      }

      (*(a6 + 8))(a1, v13, a4, a4, a6, a4, a6);
    }
  }
}

Swift::Int static Verifiable.verifyRange<A>(_:at:of:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  sub_2442E0FEC(a2, MEMORY[0x277D84CC0], &qword_27EDDF268, qword_244316998);
  if (!v5)
  {
    Verifier.rangeInBuffer(position:size:)(v8, 4);
    if (!v10)
    {
      v11 = *(*(*(a1 + 40) + 24) + v8);
      v12 = v8 + 4;
      if (v8 + 4 < 0)
      {
        v12 = -4 - v8;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v12;
      }

      Verifier.isAligned<A>(position:type:)(v8, a3, a5);
      Verifier.rangeInBuffer(position:size:)(v8, v11);
    }
  }

  return v8;
}

void static UnionVector.verify(_:keyPosition:fieldPosition:unionKeyName:fieldName:completion:)(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4, uint64_t (**a5)(char *, uint64_t, uint64_t), void (**a6)(char *, char *, uint64_t), uint64_t a7, void (*a8)(uint64_t, char *, Swift::Int), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v69 = a7;
  v70 = a8;
  v67 = a6;
  v68 = a5;
  v66 = a4;
  v71 = a11;
  v72 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v59 - v14;
  v16 = sub_244312E58();
  v65 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v59 - v18;
  v73 = *(a10 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  v23 = v76;
  sub_2442E0FEC(a2, MEMORY[0x277D84CC0], &qword_27EDDF268, qword_244316998);
  if (!v23)
  {
    v63 = v21;
    v64 = v19;
    v62 = v16;
    v76 = v15;
    v24 = v73;
    v25 = AssociatedTypeWitness;
    Verifier.rangeInBuffer(position:size:)(v22, 4);
    if (!v26)
    {
      v27 = v22;
      v28 = *(a1 + 40);
      v29 = *(*(v28 + 24) + v22);
      v30 = v72;
      sub_2442E0FEC(v72, MEMORY[0x277D84CC0], &qword_27EDDF268, qword_244316998);
      Verifier.rangeInBuffer(position:size:)(v30, 4);
      if (!v32)
      {
        v33 = v27;
        v34 = *(*(v28 + 24) + v30);
        v60 = static Verifiable.verifyRange<A>(_:at:of:)(a1, v29 + v33, v25, v31, v25);
        v61 = v35;
        v36 = v34 + v30;
        sub_2442E0FEC(v36, MEMORY[0x277D84CC0], &qword_27EDDF268, qword_244316998);
        Verifier.rangeInBuffer(position:size:)(v36, 4);
        if (!v37)
        {
          v38 = *(*(v28 + 24) + v36);
          v39 = v36 + 4;
          if (v36 + 4 < 0)
          {
            v39 = -4 - v36;
          }

          v40 = v39 >= 0x7FFFFFFFFFFFFFFFLL ? 0x7FFFFFFFFFFFFFFFLL : v39;
          sub_2442E0FEC(v40, MEMORY[0x277D84CC0], &qword_27EDDF268, qword_244316998);
          Verifier.rangeInBuffer(position:size:)(v40, v38);
          if (!v41)
          {
            v42 = v61;
            if (v61 == v38)
            {
              v72 = v40;
              if (v61)
              {
                v43 = a1;
                v44 = 0;
                v45 = v71;
                v68 = (v24 + 6);
                v69 = v71 + 16;
                v66 = a9;
                v67 = (v24 + 4);
                v73 = v24 + 1;
                v46 = 0;
                v47 = v76;
                while ((v13 * v44) >> 64 == (v13 * v44) >> 63)
                {
                  if (__OFADD__(v60, v13 * v44))
                  {
                    goto LABEL_25;
                  }

                  v48 = v43;
                  v49 = v47;
                  sub_244312E68();
                  v50 = v64;
                  (*(v45 + 16))(v49, a10, v45);
                  v51 = (*v68)(v50, 1, a10);
                  v52 = v50;
                  if (v51 == 1)
                  {
                    (*(v65 + 8))(v50, v62);
                    sub_2442DDB84();
                    swift_allocError();
                    *v58 = 5;
                    *(v58 + 8) = 0u;
                    *(v58 + 24) = 0u;
                    *(v58 + 40) = 0u;
                    *(v58 + 56) = 0;
                    *(v58 + 64) = 7;
                    swift_willThrow();
                    return;
                  }

                  v53 = v63;
                  (*v67)(v63, v52, a10);
                  if (v44 == 0x2000000000000000)
                  {
                    goto LABEL_26;
                  }

                  if (__OFADD__(v72, v46))
                  {
                    goto LABEL_27;
                  }

                  v43 = v48;
                  v70(v48, v53, v72 + v46);
                  (*v73)(v53, a10);
                  ++v44;
                  v46 += 4;
                  v45 = v71;
                  v47 = v76;
                  if (v61 == v44)
                  {
                    return;
                  }
                }

                __break(1u);
LABEL_25:
                __break(1u);
LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
              }
            }

            else
            {
              sub_2442DDB84();
              swift_allocError();
              *v54 = v42;
              *(v54 + 8) = v38;
              v55 = v67;
              v57 = v68;
              v56 = v69;
              *(v54 + 16) = v66;
              *(v54 + 24) = v57;
              *(v54 + 32) = v55;
              *(v54 + 40) = v56;
              *(v54 + 48) = v75;
              *(v54 + 64) = 6;
              swift_willThrow();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2442E0EFC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*v4 == 1 && ((*(*(v4 + 40) + 24) + result) & 1) != 0)
  {
    *&v10 = a2;
    v5 = result;
    sub_2442C6564(a3, a4);
    v6 = sub_244312CD8();
    v8 = v7;
    sub_2442DDB84();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *(v9 + 40) = v11;
    *(v9 + 56) = v12;
    *(v9 + 64) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2442E0FEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (*v4 == 1 && ((*(*(v4 + 40) + 24) + result) & 3) != 0)
  {
    *&v10 = a2;
    v5 = result;
    sub_2442C6564(a3, a4);
    v6 = sub_244312CD8();
    v8 = v7;
    sub_2442DDB84();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    *(v9 + 40) = v11;
    *(v9 + 56) = v12;
    *(v9 + 64) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t static Vector.verify<A>(_:at:of:)(uint64_t a1, Swift::Int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for ForwardOffset(0, a5, a8, a4);
  if (!swift_dynamicCastMetatype())
  {
    return static Verifiable.verifyRange<A>(_:at:of:)(a1, a2, a5, v15, a5);
  }

  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a7;
  v22[3] = a8;
  type metadata accessor for Vector(0, v22);
  result = static Verifiable.verifyRange<A>(_:at:of:)(a1, a2, MEMORY[0x277D84CC0], v16, MEMORY[0x277D84CC0]);
  if (!v8)
  {
    v19 = result;
    v20 = result + v18;
    if (result < result + v18)
    {
      v21 = *(a7 + 8);
      do
      {
        result = v21(a1, v19, a4, a4, a7, a4, a7);
        if (__OFADD__(v19, 4))
        {
          v19 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 += 4;
        }
      }

      while (v19 < v20);
    }
  }

  return result;
}

void Verifier.inBuffer<A>(position:of:)(Swift::Int a1, uint64_t a2, uint64_t a3)
{
  Verifier.isAligned<A>(position:type:)(a1, a2, a3);
  if (!v3)
  {
    Verifier.rangeInBuffer(position:size:)(a1, *(*(a3 - 8) + 64));
  }
}

uint64_t Verifier.init(buffer:options:checkAlignment:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(v5 + 32);
  if (v6 > 3221225471)
  {
    sub_2442DDB84();
    swift_allocError();
    *v10 = 2;
    *(v10 + 8) = 0u;
    *(v10 + 24) = 0u;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0;
    *(v10 + 64) = 7;
    return swift_willThrow();
  }

  else
  {
    v7 = *(a2 + 12);
    v8 = *(a2 + 8);
    *a4 = a3 & 1;
    *(a4 + 8) = v6;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = v5;
    *(a4 + 48) = *(a1 + 1);
    *(a4 + 64) = *a2;
    *(a4 + 72) = v8;
    *(a4 + 76) = v7;
  }
}

uint64_t sub_2442E13BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_244312CC8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v23 - v10;
  v12 = *(v2 + 40);
  sub_244312CB8();
  v13 = *(v12 + 24);
  sub_2442C6564(&qword_27EDDE920, &qword_244316370);
  v14 = swift_allocObject();
  v15 = j__malloc_size(v14);
  *(v14 + 16) = 4;
  *(v14 + 24) = 2 * v15 - 64;
  *(v14 + 32) = *(v13 + 4);
  v23[1] = v14;
  (*(v6 + 16))(v9, v11, v5);
  sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
  sub_2442C90F4();
  v16 = sub_244312CA8();
  v18 = v17;
  (*(v6 + 8))(v11, v5);

  if (!v18)
  {
LABEL_7:
    sub_2442DDB84();
    swift_allocError();
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 7;
    return swift_willThrow();
  }

  if (v16 != a1 || v18 != a2)
  {
    v20 = sub_244313108();

    if (v20)
    {
      return result;
    }

    goto LABEL_7;
  }
}

uint64_t Verifier.isAligned<A>(position:type:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3 == 1 && (*(*(a3 - 8) + 80) & (*(*(v3 + 40) + 24) + result)) != 0)
  {
    *&v9 = a3;
    v4 = result;
    swift_getMetatypeMetadata();
    v5 = sub_244312CD8();
    v7 = v6;
    sub_2442DDB84();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7;
    *(v8 + 24) = v9;
    *(v8 + 40) = v10;
    *(v8 + 56) = v11;
    *(v8 + 64) = 0;
    return swift_willThrow();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Verifier.rangeInBuffer(position:size:)(Swift::Int position, Swift::Int size)
{
  if (size + position >= 0)
  {
    v3 = size + position;
  }

  else
  {
    v3 = -(size + position);
  }

  v4 = *(*(v2 + 40) + 32);
  if ((v4 & 0x8000000000000000) != 0 || v4 < v3)
  {
    v8 = *(v2 + 8);
    sub_2442DDB84();
    swift_allocError();
    *v6 = v3;
    *(v6 + 8) = v8;
    *(v6 + 16) = v9;
    *(v6 + 32) = v10;
    *(v6 + 48) = v11;
    v7 = 1;
    goto LABEL_11;
  }

  if (size < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(size))
  {
LABEL_14:
    __break(1u);
    return;
  }

  v5 = *(v2 + 16) + size;
  *(v2 + 16) = v5;
  if (*(v2 + 64) >= v5)
  {
    return;
  }

  sub_2442DDB84();
  swift_allocError();
  *v6 = 6;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0;
  v7 = 7;
LABEL_11:
  *(v6 + 64) = v7;
  swift_willThrow();
}

void Verifier.visitTable(at:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2442E0E6C(a1);
  if (v3)
  {
    return;
  }

  Verifier.rangeInBuffer(position:size:)(a1, 4);
  if (v6)
  {
    return;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = *(v2 + 5);
  v8 = *(*(v7 + 24) + a1);
  v9 = __CFADD__(a1, -v8);
  v10 = (a1 - v8);
  if (v8 <= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = a1 < v8;
  }

  if (v11 || *(v7 + 32) < v10)
  {
    sub_2442DDB84();
    swift_allocError();
    *v12 = v8;
    *(v12 + 8) = a1;
    v14 = v32;
    v13 = v33;
    *(v12 + 16) = v31;
    *(v12 + 32) = v14;
    *(v12 + 48) = v13;
    *(v12 + 64) = 2;
    swift_willThrow();
    return;
  }

  sub_2442E0E9C(v10);
  Verifier.rangeInBuffer(position:size:)(v10, 2);
  if (!v15)
  {
    v16 = *(*(v7 + 24) + v10);
    sub_2442E0E9C(v16 + v10);
    Verifier.rangeInBuffer(position:size:)(v10, v16);
    if (!v17)
    {
      v18 = *(v2 + 3);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v2 + 3) = v20;
        if (v20 > *(v2 + 17))
        {
          sub_2442DDB84();
          swift_allocError();
          v22 = 3;
          goto LABEL_23;
        }

        v23 = *(v2 + 4);
        v19 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (!v19)
        {
          *(v2 + 4) = v24;
          if (v24 <= *(v2 + 18))
          {
            *a2 = a1;
            *(a2 + 8) = v10;
            *(a2 + 16) = v16;
            v26 = v2[3];
            v33 = v2[2];
            v25 = v33;
            v34[0] = v26;
            *(v34 + 13) = *(v2 + 61);
            v27 = *(v34 + 13);
            v28 = v2[1];
            v31 = *v2;
            v29 = v31;
            v32 = v28;
            *(a2 + 40) = v28;
            *(a2 + 56) = v25;
            *(a2 + 72) = v26;
            *(a2 + 85) = v27;
            *(a2 + 24) = v29;
            sub_2442E1A0C(&v31, &v30);
            return;
          }

          sub_2442DDB84();
          swift_allocError();
          v22 = 4;
LABEL_23:
          *v21 = v22;
          *(v21 + 8) = 0u;
          *(v21 + 24) = 0u;
          *(v21 + 40) = 0u;
          *(v21 + 56) = 0;
          *(v21 + 64) = 7;
          swift_willThrow();
          return;
        }

LABEL_28:
        __break(1u);
        return;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }
}

__n128 sub_2442E1A44(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2442E1A68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2442E1AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t IARFYield.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IARFYield.textMeasurement.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v8[0] = v1[3];
  v3 = v8[0];
  *(v8 + 9) = *(v1 + 57);
  v4 = *(v8 + 9);
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  *(a1 + 41) = v4;
  return sub_2442E1B94(v7, &v6);
}

uint64_t sub_2442E1B94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2442C6564(&qword_27EDDF270, &qword_244316A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2442E1C04()
{
  if (*v0)
  {
    return 0x7361654D74786574;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_2442E1C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v5 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7361654D74786574 && a2 == 0xEF746E656D657275)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

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

uint64_t sub_2442E1D28(uint64_t a1)
{
  v2 = sub_2442E1FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E1D64(uint64_t a1)
{
  v2 = sub_2442E1FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFYield.encode(to:)(void *a1)
{
  v4 = sub_2442C6564(&qword_27EDDF278, &qword_244316A28);
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v10 - v5;
  v7 = v1[2];
  v16 = v1[1];
  v17 = v7;
  v18[0] = v1[3];
  *(v18 + 9) = *(v1 + 57);
  sub_2442C65AC(a1, a1[3]);
  sub_2442E1FB8();
  sub_244313238();
  LOBYTE(v13) = 0;
  sub_244313098();
  if (v2)
  {
    return (*(v19 + 8))(v6, v4);
  }

  v13 = v16;
  v14 = v17;
  v15[0] = v18[0];
  *(v15 + 9) = *(v18 + 9);
  v12 = 1;
  sub_2442E1B94(&v16, v10);
  sub_2442E200C();
  sub_244313088();
  v9 = (v19 + 8);
  v10[0] = v13;
  v10[1] = v14;
  *v11 = v15[0];
  *&v11[9] = *(v15 + 9);
  sub_2442E2060(v10);
  return (*v9)(v6, v4);
}

unint64_t sub_2442E1FB8()
{
  result = qword_27EDDF280;
  if (!qword_27EDDF280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF280);
  }

  return result;
}

unint64_t sub_2442E200C()
{
  result = qword_27EDDF288;
  if (!qword_27EDDF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF288);
  }

  return result;
}

uint64_t sub_2442E2060(uint64_t a1)
{
  v2 = sub_2442C6564(&qword_27EDDF270, &qword_244316A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IARFYield.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v4 = sub_2442C6564(&qword_27EDDF290, &qword_244316A30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  sub_2442C65AC(a1, a1[3]);
  sub_2442E1FB8();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  v8 = v5;
  v9 = v33;
  LOBYTE(v22[0]) = 0;
  v10 = sub_244313008();
  v12 = v11;
  v19 = v10;
  v26 = 1;
  sub_2442E2338();
  sub_244312FF8();
  (*(v8 + 8))(v7, v4);
  v13 = v27;
  v14 = v28;
  v30 = v27;
  v31 = v28;
  v32[0] = v29[0];
  *(v32 + 9) = *(v29 + 9);
  v15 = v19;
  *&v20[0] = v19;
  *(&v20[0] + 1) = v12;
  v20[2] = v28;
  v21[0] = v29[0];
  *(v21 + 9) = *(v29 + 9);
  v20[1] = v27;
  v16 = v21[0];
  *v9 = v20[0];
  v9[1] = v13;
  *(v9 + 57) = *(v21 + 9);
  v9[2] = v14;
  v9[3] = v16;
  sub_2442E238C(v20, v22);
  sub_2442C6908(a1);
  v22[0] = v15;
  v22[1] = v12;
  v23 = v30;
  v24 = v31;
  *v25 = v32[0];
  *&v25[9] = *(v32 + 9);
  return sub_2442E23C4(v22);
}

unint64_t sub_2442E2338()
{
  result = qword_27EDDF298;
  if (!qword_27EDDF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF298);
  }

  return result;
}

uint64_t sub_2442E2424(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 3)
  {
    return 0;
  }

  else
  {
    return v1 ^ 0xFF;
  }
}

__n128 sub_2442E2438(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2442E245C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_2442E24A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2442E251C()
{
  result = qword_27EDDF2A0;
  if (!qword_27EDDF2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF2A0);
  }

  return result;
}

unint64_t sub_2442E2574()
{
  result = qword_27EDDF2A8;
  if (!qword_27EDDF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF2A8);
  }

  return result;
}

unint64_t sub_2442E25CC()
{
  result = qword_27EDDF2B0;
  if (!qword_27EDDF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF2B0);
  }

  return result;
}

double sub_2442E2620@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x6E69767265732034;
  *(a1 + 8) = 0xEA00000000007367;
  *(a1 + 16) = xmmword_2443169D0;
  *(a1 + 32) = xmmword_2443169E0;
  *&result = 1;
  *(a1 + 48) = xmmword_2443169F0;
  *(a1 + 64) = 0xE800000000000000;
  *(a1 + 72) = 0;
  return result;
}

int64x2_t sub_2442E266C@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000022;
  *(a1 + 8) = 0x800000024431C430;
  *(a1 + 16) = xmmword_244316A00;
  *(a1 + 32) = xmmword_244316A10;
  result = vdupq_n_s64(1uLL);
  *(a1 + 48) = result;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  return result;
}

uint64_t sub_2442E26CC(uint64_t a1)
{
  v2 = sub_2442E2D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E2708(uint64_t a1)
{
  v2 = sub_2442E2D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442E2744()
{
  v1 = 0x737569736C6563;
  if (*v0 != 1)
  {
    v1 = 0x65686E6572686166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69766C656BLL;
  }
}

uint64_t sub_2442E27A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2442E37C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2442E27C8(uint64_t a1)
{
  v2 = sub_2442E2C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E2804(uint64_t a1)
{
  v2 = sub_2442E2C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442E2840(uint64_t a1)
{
  v2 = sub_2442E2CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E287C(uint64_t a1)
{
  v2 = sub_2442E2CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442E28B8(uint64_t a1)
{
  v2 = sub_2442E2D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442E28F4(uint64_t a1)
{
  v2 = sub_2442E2D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFTemperatureUnit.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDF2B8, &qword_244316C90);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = sub_2442C6564(&qword_27EDDF2C0, &qword_244316C98);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = sub_2442C6564(&qword_27EDDF2C8, &qword_244316CA0);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = sub_2442C6564(&qword_27EDDF2D0, &qword_244316CA8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  sub_2442C65AC(a1, a1[3]);
  sub_2442E2C9C();
  sub_244313238();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_2442E2D44();
      v9 = v21;
      sub_244313058();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_2442E2CF0();
      v9 = v24;
      sub_244313058();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2442E2D98();
    sub_244313058();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2442E2C9C()
{
  result = qword_27EDDF2D8;
  if (!qword_27EDDF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF2D8);
  }

  return result;
}

unint64_t sub_2442E2CF0()
{
  result = qword_27EDDF2E0;
  if (!qword_27EDDF2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF2E0);
  }

  return result;
}

unint64_t sub_2442E2D44()
{
  result = qword_27EDDF2E8;
  if (!qword_27EDDF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF2E8);
  }

  return result;
}

unint64_t sub_2442E2D98()
{
  result = qword_27EDDF2F0;
  if (!qword_27EDDF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF2F0);
  }

  return result;
}

uint64_t IARFTemperatureUnit.hashValue.getter()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t IARFTemperatureUnit.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2442C6564(&qword_27EDDF2F8, &qword_244316CB0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = sub_2442C6564(&qword_27EDDF300, &qword_244316CB8);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = sub_2442C6564(&qword_27EDDF308, &qword_244316CC0);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_2442C6564(&qword_27EDDF310, &unk_244316CC8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  sub_2442C65AC(a1, v14);
  sub_2442E2C9C();
  v15 = v36;
  sub_244313228();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_244313048();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_2442CEC9C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_244312EE8();
      swift_allocError();
      v24 = v23;
      sub_2442C6564(&qword_27EDDEC40, &qword_244313E00);
      *v24 = &type metadata for IARFTemperatureUnit;
      sub_244312FC8();
      sub_244312EC8();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_2442E2D44();
          sub_244312FB8();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_2442E2CF0();
          v26 = v17;
          sub_244312FB8();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_2442E2D98();
        sub_244312FB8();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return sub_2442C6908(v37);
}

unint64_t sub_2442E33D4()
{
  result = qword_27EDDF318;
  if (!qword_27EDDF318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF318);
  }

  return result;
}

unint64_t sub_2442E34B4()
{
  result = qword_27EDDF320;
  if (!qword_27EDDF320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF320);
  }

  return result;
}

unint64_t sub_2442E350C()
{
  result = qword_27EDDF328;
  if (!qword_27EDDF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF328);
  }

  return result;
}

unint64_t sub_2442E3564()
{
  result = qword_27EDDF330;
  if (!qword_27EDDF330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF330);
  }

  return result;
}

unint64_t sub_2442E35BC()
{
  result = qword_27EDDF338;
  if (!qword_27EDDF338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF338);
  }

  return result;
}

unint64_t sub_2442E3614()
{
  result = qword_27EDDF340;
  if (!qword_27EDDF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF340);
  }

  return result;
}

unint64_t sub_2442E366C()
{
  result = qword_27EDDF348;
  if (!qword_27EDDF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF348);
  }

  return result;
}

unint64_t sub_2442E36C4()
{
  result = qword_27EDDF350;
  if (!qword_27EDDF350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF350);
  }

  return result;
}

unint64_t sub_2442E371C()
{
  result = qword_27EDDF358;
  if (!qword_27EDDF358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF358);
  }

  return result;
}

unint64_t sub_2442E3774()
{
  result = qword_27EDDF360;
  if (!qword_27EDDF360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDF360);
  }

  return result;
}

uint64_t sub_2442E37C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69766C656BLL && a2 == 0xE600000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737569736C6563 && a2 == 0xE700000000000000 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65686E6572686166 && a2 == 0xEA00000000007469)
  {

    return 2;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t InternalJSONLDRecipe.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InternalJSONLDRecipe.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InternalJSONLDRecipe.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.image.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t InternalJSONLDRecipe.publisher.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InternalJSONLDRecipe(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t InternalJSONLDRecipe.publisher.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for InternalJSONLDRecipe(0) + 32));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t InternalJSONLDRecipe.prepTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 40));

  return v1;
}

uint64_t InternalJSONLDRecipe.prepTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.cookTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 44));

  return v1;
}

uint64_t InternalJSONLDRecipe.cookTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.totalTime.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 48));

  return v1;
}

uint64_t InternalJSONLDRecipe.totalTime.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.cookingMethod.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 52));

  return v1;
}

uint64_t InternalJSONLDRecipe.cookingMethod.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2442E40C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2442C6564(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t InternalJSONLDRecipe.recipeCuisine.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 60));

  return v1;
}

uint64_t InternalJSONLDRecipe.recipeCuisine.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.keywords.getter()
{
  type metadata accessor for InternalJSONLDRecipe(0);
}

uint64_t InternalJSONLDRecipe.keywords.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalJSONLDRecipe(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t InternalJSONLDRecipe.recipeYield.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 68));

  return v1;
}

uint64_t InternalJSONLDRecipe.recipeYield.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 68));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.recipeCategory.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 72));

  return v1;
}

uint64_t InternalJSONLDRecipe.recipeCategory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 72));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.recipeIngredient.getter()
{
  type metadata accessor for InternalJSONLDRecipe(0);
}

uint64_t InternalJSONLDRecipe.recipeIngredient.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalJSONLDRecipe(0) + 76);

  *(v1 + v3) = a1;
  return result;
}

uint64_t InternalJSONLDRecipe.recipeInstructions.getter()
{
  type metadata accessor for InternalJSONLDRecipe(0);
}

uint64_t InternalJSONLDRecipe.recipeInstructions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for InternalJSONLDRecipe(0) + 80);

  *(v1 + v3) = a1;
  return result;
}

uint64_t InternalJSONLDRecipe.language.getter()
{
  v1 = *(v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 84));

  return v1;
}

uint64_t InternalJSONLDRecipe.language.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 84));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.rawJSON.getter()
{
  v1 = v0 + *(type metadata accessor for InternalJSONLDRecipe(0) + 88);
  v2 = *v1;
  sub_2442E472C(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_2442E472C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2442D5D94(result, a2);
  }

  return result;
}

uint64_t InternalJSONLDRecipe.rawJSON.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for InternalJSONLDRecipe(0) + 88);
  result = sub_2442E4788(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t sub_2442E4788(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2442D5DE8(result, a2);
  }

  return result;
}

uint64_t sub_2442E492C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_244313108();
  }
}

uint64_t static InternalJSONLDRecipe.HowToSection.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_244313108() & 1) == 0)
  {
    return 0;
  }

  return sub_2442E4D50(v2, v3);
}

uint64_t InternalJSONLDRecipe.HowToStep.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InternalJSONLDRecipe.HowToStep.text.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.HowToSection.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InternalJSONLDRecipe.HowToSection.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t InternalJSONLDRecipe.HowToSection.steps.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2442E4B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_244312BB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_2442F34CC(&qword_27EDDF768, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v21 = sub_244312C68();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2442E4D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_244313108() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void sub_2442E4DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v3 = 0;
  v34 = a2 + 32;
  v35 = a1 + 32;
  while (1)
  {
    v9 = v35 + 32 * v3;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v14 = v34 + 32 * v3;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v36[0] = *v9;
    v36[1] = v10;
    v36[2] = v12;
    v37 = v13;
    v38 = v16;
    v39 = v15;
    v40 = v17;
    v41 = v18;
    if (!v13)
    {
      if (v18)
      {
        sub_2442F33BC(v16, v15, v17, v18);
        v30 = v11;
        v31 = v10;
        v32 = v12;
        v33 = 0;
        goto LABEL_45;
      }

      if (v11 != v16 || v10 != v15)
      {
        v4 = sub_244313108();
        sub_2442F33BC(v16, v15, v17, 0);
        v5 = v11;
        v6 = v10;
        v7 = v12;
        v8 = 0;
LABEL_6:
        sub_2442F33BC(v5, v6, v7, v8);
        sub_2442F3A40(v36, &qword_27EDDF770, &qword_2443181F0);
        if ((v4 & 1) == 0)
        {
          return;
        }

        goto LABEL_7;
      }

      v19 = v11;
      v20 = v10;
      v21 = v17;
      v22 = 0;
      goto LABEL_29;
    }

    if (v13 != 1)
    {
      break;
    }

    if (v18 != 1)
    {
      sub_2442F33BC(v16, v15, v17, v18);
      v30 = v11;
      v31 = v10;
      v32 = v12;
      v33 = 1;
      goto LABEL_45;
    }

    if (v11 != v16 || v10 != v15)
    {
      v4 = sub_244313108();
      sub_2442F33BC(v16, v15, v17, 1u);
      v5 = v11;
      v6 = v10;
      v7 = v12;
      v8 = 1;
      goto LABEL_6;
    }

    v19 = v11;
    v20 = v10;
    v21 = v17;
    v22 = 1;
LABEL_29:
    sub_2442F33BC(v19, v20, v21, v22);
    sub_2442F33BC(v11, v10, v12, v13);
LABEL_30:
    sub_2442F3A40(v36, &qword_27EDDF770, &qword_2443181F0);
LABEL_7:
    if (++v3 == v2)
    {
      return;
    }
  }

  if (v18 != 2)
  {
    v27 = v16;
    v28 = v15;
    v29 = v17;
LABEL_44:
    sub_2442F33BC(v27, v28, v29, v18);
    v30 = v11;
    v31 = v10;
    v32 = v12;
    v33 = 2;
LABEL_45:
    sub_2442F33BC(v30, v31, v32, v33);
    goto LABEL_46;
  }

  if ((v11 != v16 || v10 != v15) && (sub_244313108() & 1) == 0 || (v23 = *(v12 + 16), v23 != *(v17 + 16)))
  {
    v27 = v16;
    v28 = v15;
    v29 = v17;
    LOBYTE(v18) = 2;
    goto LABEL_44;
  }

  v19 = v16;
  v20 = v15;
  if (!v23)
  {
    v21 = v17;
    goto LABEL_28;
  }

  if (v12 == v17)
  {
    v21 = v12;
LABEL_28:
    v22 = 2;
    goto LABEL_29;
  }

  sub_2442F33BC(v16, v15, v17, 2u);
  sub_2442F33BC(v11, v10, v12, 2u);
  v24 = (v12 + 40);
  v25 = (v17 + 40);
  while (1)
  {
    v26 = *(v24 - 1) == *(v25 - 1) && *v24 == *v25;
    if (!v26 && (sub_244313108() & 1) == 0)
    {
      break;
    }

    v24 += 2;
    v25 += 2;
    if (!--v23)
    {
      goto LABEL_30;
    }
  }

LABEL_46:
  sub_2442F3A40(v36, &qword_27EDDF770, &qword_2443181F0);
}

uint64_t sub_2442E5150(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_244313108() & 1) == 0)
  {
    return 0;
  }

  return sub_2442E4D50(v2, v3);
}