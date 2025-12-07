uint64_t SIMD<>.formSquareRoot()(Class *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v5 = *(a2 + 48);
  swift_getAssociatedTypeWitness(0, v5, a1, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v7 = v6;
  v44 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v35 - v14;
  v16 = *(a1 - 1);
  v18 = MEMORY[0x1EEE9AC00](v13, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v35 - v22;
  v38 = *(v16 + 32);
  v39 = v16 + 32;
  v38();
  (*(v5 + 48))(a1, v5);
  v24 = (*(v5 + 40))(a1, v5);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v36 = v16;
  v37 = v3;
  v25 = a1;
  v45 = v7;
  v46 = v15;
  v48 = v20;
  if (v24)
  {
    v26 = v11;
    v27 = v5;
    v28 = 0;
    v29 = *(v5 + 56);
    v30 = v46;
    v42 = v47 + 240;
    v43 = v29;
    v31 = (v44 + 8);
    v44 = v5 + 56;
    v40 = v5 + 64;
    v41 = v31;
    do
    {
      v32 = v24;
      v43(v28, v25, v27);
      v33 = v45;
      (*(v47 + 240))(v45);
      (*v41)(v26, v33);
      (*(v27 + 64))(v30, v28, v25, v27);
      v24 = v32;
      ++v28;
    }

    while (v32 != v28);
  }

  (*(v36 + 8))(v23, v25);
  return (v38)(v37, v48, v25);
}

uint64_t SIMD<>.round(_:)(uint64_t a1, Class *a2, uint64_t a3, uint64_t a4)
{
  v50 = a1;
  v51 = a4;
  v6 = *(a3 + 48);
  swift_getAssociatedTypeWitness(0, v6, a2, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v49 = v7;
  v47 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = &v39 - v14;
  v16 = *(a2 - 1);
  v18 = MEMORY[0x1EEE9AC00](v13, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v39 - v22;
  v41 = *(v16 + 32);
  v42 = v16 + 32;
  v41();
  (*(v6 + 48))(a2, v6);
  v24 = (*(v6 + 40))(a2, v6);
  if (v24 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v39 = v16;
  v40 = v4;
  v25 = a2;
  v48 = v15;
  v52 = v20;
  v26 = v23;
  if (v24)
  {
    v27 = v11;
    v28 = v6;
    v29 = 0;
    v30 = *(v6 + 56);
    v45 = v51 + 304;
    v46 = v30;
    v31 = v48;
    v32 = (v47 + 8);
    v47 = v6 + 56;
    v43 = v6 + 64;
    v44 = v32;
    do
    {
      v33 = v24;
      v34 = v25;
      v46(v29, v25, v28);
      v35 = v49;
      (*(v51 + 304))(v50, v49);
      (*v44)(v27, v35);
      (*(v28 + 64))(v31, v29, v34, v28);
      v25 = v34;
      v24 = v33;
      ++v29;
    }

    while (v33 != v29);
  }

  v36 = v26;
  v37 = v25;
  (*(v39 + 8))(v36, v25);
  return (v41)(v40, v52, v37);
}

uint64_t static SIMDMask..& infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v9 = a3;
  v101 = a2;
  LODWORD(v107) = a1;
  v95 = a7;
  v103 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v115 = &v89 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v114 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v89 - v20;
  v112 = *(v22 + 8);
  v23 = *(*(v112 + 24) + 16);
  v25 = *(v24 + 48);
  swift_getAssociatedTypeWitness(255, v25, v26, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v28 = v27;
  v110 = v23;
  swift_getAssociatedTypeWitness(0, v23, v27, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v105 = &v89 - v31;
  v32 = swift_checkMetadataState(0, v28);
  v91 = *(v32 - 1);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v89 - v39;
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v111 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v102 = &v89 - v45;
  v116[0] = v9;
  v116[1] = a4;
  v116[2] = a5;
  v116[3] = v109;
  v46 = type metadata accessor for SIMDMask(0, v116);
  v99 = *(v46 - 8);
  v100 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v51);
  v98 = &v89 - v52;
  v53 = *(v25 + 48);
  v97 = v25 + 48;
  v96 = v53;
  v53(v9, v25);
  v108 = *(v25 + 40);
  v109 = v25 + 40;
  v54 = v108(v9, v25);
  if (v54 < 0)
  {
    goto LABEL_16;
  }

  v55 = v54;
  v93 = v40;
  v104 = v32;
  v92 = v36;
  v94 = v21;
  v113 = v12;
  if (v54)
  {
    v56 = 0;
    v57 = v25 + 64;
    v58 = v102;
    while (1)
    {
      v59 = v108(v9, v25);
      if (v59 < 0)
      {
        break;
      }

      if (v56 >= v59)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v60 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v104, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v62 = *(AssociatedConformanceWitness + 8);
      v90 = v57;
      v63 = v105;
      if (v107)
      {
        v64 = &unk_18071E0B0;
        v65 = 257;
      }

      else
      {
        v64 = &qword_18071E0A8;
        v65 = 256;
      }

      v62(v64, v65, v60, AssociatedConformanceWitness);
      (*(v110 + 3))(v63);
      v57 = v90;
      (*(v25 + 64))(v58, v56++, v9, v25);
      if (v55 == v56)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v67 = v99;
  v66 = v100;
  v68 = v98;
  (*(v99 + 32))(v98, v50, v100);
  v69 = *(v103 + 16);
  v69(v114, v68, v9);
  v69(v115, v101, v9);
  v96(v9, v25);
  v70 = v108(v9, v25);
  if (v70 < 0)
  {
    goto LABEL_16;
  }

  v71 = v70;
  (*(v67 + 8))(v68, v66);
  v72 = v92;
  v73 = v104;
  v74 = v93;
  if (v71)
  {
    v75 = 0;
    v76 = *(v25 + 56);
    v107 = v112 + 192;
    v108 = v76;
    v109 = v25 + 56;
    v110 = v71;
    v105 = (v25 + 64);
    v106 = (v91 + 8);
    do
    {
      v77 = v74;
      v78 = v72;
      v79 = v108;
      (v108)(v75, v9, v25);
      v79(v75, v9, v25);
      v72 = v78;
      v74 = v77;
      v80 = v9;
      v81 = v111;
      (*(v112 + 192))(v77, v72, v73);
      v82 = *v106;
      (*v106)(v72, v73);
      v82(v77, v73);
      v83 = v81;
      v9 = v80;
      (*(v25 + 64))(v83, v75, v80, v25);
      v75 = (v75 + 1);
    }

    while (v110 != v75);
  }

  v84 = v103;
  v85 = *(v103 + 8);
  v85(v115, v9);
  v85(v114, v9);
  v86 = *(v84 + 32);
  v87 = v94;
  v86(v94, v113, v9);
  return (v86)(v95, v87, v9);
}

uint64_t static SIMDMask..^ infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v9 = a3;
  v101 = a2;
  LODWORD(v107) = a1;
  v95 = a7;
  v103 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v115 = &v89 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v114 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v89 - v20;
  v112 = *(v22 + 8);
  v23 = *(*(v112 + 24) + 16);
  v25 = *(v24 + 48);
  swift_getAssociatedTypeWitness(255, v25, v26, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v28 = v27;
  v110 = v23;
  swift_getAssociatedTypeWitness(0, v23, v27, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v105 = &v89 - v31;
  v32 = swift_checkMetadataState(0, v28);
  v91 = *(v32 - 1);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v89 - v39;
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v111 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v102 = &v89 - v45;
  v116[0] = v9;
  v116[1] = a4;
  v116[2] = a5;
  v116[3] = v109;
  v46 = type metadata accessor for SIMDMask(0, v116);
  v99 = *(v46 - 8);
  v100 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v51);
  v98 = &v89 - v52;
  v53 = *(v25 + 48);
  v97 = v25 + 48;
  v96 = v53;
  v53(v9, v25);
  v108 = *(v25 + 40);
  v109 = v25 + 40;
  v54 = v108(v9, v25);
  if (v54 < 0)
  {
    goto LABEL_16;
  }

  v55 = v54;
  v93 = v40;
  v104 = v32;
  v92 = v36;
  v94 = v21;
  v113 = v12;
  if (v54)
  {
    v56 = 0;
    v57 = v25 + 64;
    v58 = v102;
    while (1)
    {
      v59 = v108(v9, v25);
      if (v59 < 0)
      {
        break;
      }

      if (v56 >= v59)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v60 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v104, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v62 = *(AssociatedConformanceWitness + 8);
      v90 = v57;
      v63 = v105;
      if (v107)
      {
        v64 = &unk_18071E0B0;
        v65 = 257;
      }

      else
      {
        v64 = &qword_18071E0A8;
        v65 = 256;
      }

      v62(v64, v65, v60, AssociatedConformanceWitness);
      (*(v110 + 3))(v63);
      v57 = v90;
      (*(v25 + 64))(v58, v56++, v9, v25);
      if (v55 == v56)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v67 = v99;
  v66 = v100;
  v68 = v98;
  (*(v99 + 32))(v98, v50, v100);
  v69 = *(v103 + 16);
  v69(v114, v68, v9);
  v69(v115, v101, v9);
  v96(v9, v25);
  v70 = v108(v9, v25);
  if (v70 < 0)
  {
    goto LABEL_16;
  }

  v71 = v70;
  (*(v67 + 8))(v68, v66);
  v72 = v92;
  v73 = v104;
  v74 = v93;
  if (v71)
  {
    v75 = 0;
    v76 = *(v25 + 56);
    v107 = v112 + 224;
    v108 = v76;
    v109 = v25 + 56;
    v110 = v71;
    v105 = (v25 + 64);
    v106 = (v91 + 8);
    do
    {
      v77 = v74;
      v78 = v72;
      v79 = v108;
      (v108)(v75, v9, v25);
      v79(v75, v9, v25);
      v72 = v78;
      v74 = v77;
      v80 = v9;
      v81 = v111;
      (*(v112 + 224))(v77, v72, v73);
      v82 = *v106;
      (*v106)(v72, v73);
      v82(v77, v73);
      v83 = v81;
      v9 = v80;
      (*(v25 + 64))(v83, v75, v80, v25);
      v75 = (v75 + 1);
    }

    while (v110 != v75);
  }

  v84 = v103;
  v85 = *(v103 + 8);
  v85(v115, v9);
  v85(v114, v9);
  v86 = *(v84 + 32);
  v87 = v94;
  v86(v94, v113, v9);
  return (v86)(v95, v87, v9);
}

uint64_t static SIMDMask..| infix(_:_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v9 = a3;
  v101 = a2;
  LODWORD(v107) = a1;
  v95 = a7;
  v103 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v115 = &v89 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v114 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v89 - v20;
  v112 = *(v22 + 8);
  v23 = *(*(v112 + 24) + 16);
  v25 = *(v24 + 48);
  swift_getAssociatedTypeWitness(255, v25, v26, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v28 = v27;
  v110 = v23;
  swift_getAssociatedTypeWitness(0, v23, v27, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v105 = &v89 - v31;
  v32 = swift_checkMetadataState(0, v28);
  v91 = *(v32 - 1);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v89 - v39;
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v111 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v102 = &v89 - v45;
  v116[0] = v9;
  v116[1] = a4;
  v116[2] = a5;
  v116[3] = v109;
  v46 = type metadata accessor for SIMDMask(0, v116);
  v99 = *(v46 - 8);
  v100 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v51);
  v98 = &v89 - v52;
  v53 = *(v25 + 48);
  v97 = v25 + 48;
  v96 = v53;
  v53(v9, v25);
  v108 = *(v25 + 40);
  v109 = v25 + 40;
  v54 = v108(v9, v25);
  if (v54 < 0)
  {
    goto LABEL_16;
  }

  v55 = v54;
  v93 = v40;
  v104 = v32;
  v92 = v36;
  v94 = v21;
  v113 = v12;
  if (v54)
  {
    v56 = 0;
    v57 = v25 + 64;
    v58 = v102;
    while (1)
    {
      v59 = v108(v9, v25);
      if (v59 < 0)
      {
        break;
      }

      if (v56 >= v59)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v60 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v104, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v62 = *(AssociatedConformanceWitness + 8);
      v90 = v57;
      v63 = v105;
      if (v107)
      {
        v64 = &unk_18071E0B0;
        v65 = 257;
      }

      else
      {
        v64 = &qword_18071E0A8;
        v65 = 256;
      }

      v62(v64, v65, v60, AssociatedConformanceWitness);
      (*(v110 + 3))(v63);
      v57 = v90;
      (*(v25 + 64))(v58, v56++, v9, v25);
      if (v55 == v56)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v67 = v99;
  v66 = v100;
  v68 = v98;
  (*(v99 + 32))(v98, v50, v100);
  v69 = *(v103 + 16);
  v69(v114, v68, v9);
  v69(v115, v101, v9);
  v96(v9, v25);
  v70 = v108(v9, v25);
  if (v70 < 0)
  {
    goto LABEL_16;
  }

  v71 = v70;
  (*(v67 + 8))(v68, v66);
  v72 = v92;
  v73 = v104;
  v74 = v93;
  if (v71)
  {
    v75 = 0;
    v76 = *(v25 + 56);
    v107 = v112 + 208;
    v108 = v76;
    v109 = v25 + 56;
    v110 = v71;
    v105 = (v25 + 64);
    v106 = (v91 + 8);
    do
    {
      v77 = v74;
      v78 = v72;
      v79 = v108;
      (v108)(v75, v9, v25);
      v79(v75, v9, v25);
      v72 = v78;
      v74 = v77;
      v80 = v9;
      v81 = v111;
      (*(v112 + 208))(v77, v72, v73);
      v82 = *v106;
      (*v106)(v72, v73);
      v82(v77, v73);
      v83 = v81;
      v9 = v80;
      (*(v25 + 64))(v83, v75, v80, v25);
      v75 = (v75 + 1);
    }

    while (v110 != v75);
  }

  v84 = v103;
  v85 = *(v103 + 8);
  v85(v115, v9);
  v85(v114, v9);
  v86 = *(v84 + 32);
  v87 = v94;
  v86(v94, v113, v9);
  return (v86)(v95, v87, v9);
}

uint64_t static SIMDMask..& infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v9 = a3;
  LODWORD(v107) = a2;
  v101 = a1;
  v95 = a7;
  v103 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v115 = &v89 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v114 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v89 - v20;
  v112 = *(v22 + 8);
  v23 = *(*(v112 + 24) + 16);
  v25 = *(v24 + 48);
  swift_getAssociatedTypeWitness(255, v25, v26, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v28 = v27;
  v110 = v23;
  swift_getAssociatedTypeWitness(0, v23, v27, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v105 = &v89 - v31;
  v32 = swift_checkMetadataState(0, v28);
  v91 = *(v32 - 1);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v89 - v39;
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v111 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v102 = &v89 - v45;
  v116[0] = v9;
  v116[1] = a4;
  v116[2] = a5;
  v116[3] = v109;
  v46 = type metadata accessor for SIMDMask(0, v116);
  v99 = *(v46 - 8);
  v100 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v51);
  v98 = &v89 - v52;
  v53 = *(v25 + 48);
  v97 = v25 + 48;
  v96 = v53;
  v53(v9, v25);
  v108 = *(v25 + 40);
  v109 = v25 + 40;
  v54 = v108(v9, v25);
  if (v54 < 0)
  {
    goto LABEL_16;
  }

  v55 = v54;
  v93 = v40;
  v104 = v32;
  v92 = v36;
  v94 = v21;
  v113 = v12;
  if (v54)
  {
    v56 = 0;
    v57 = v25 + 64;
    v58 = v102;
    while (1)
    {
      v59 = v108(v9, v25);
      if (v59 < 0)
      {
        break;
      }

      if (v56 >= v59)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v60 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v104, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v62 = *(AssociatedConformanceWitness + 8);
      v90 = v57;
      v63 = v105;
      if (v107)
      {
        v64 = &unk_18071E0B0;
        v65 = 257;
      }

      else
      {
        v64 = &qword_18071E0A8;
        v65 = 256;
      }

      v62(v64, v65, v60, AssociatedConformanceWitness);
      (*(v110 + 3))(v63);
      v57 = v90;
      (*(v25 + 64))(v58, v56++, v9, v25);
      if (v55 == v56)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v67 = v99;
  v66 = v100;
  v68 = v98;
  (*(v99 + 32))(v98, v50, v100);
  v69 = *(v103 + 16);
  v69(v114, v101, v9);
  v69(v115, v68, v9);
  v96(v9, v25);
  v70 = v108(v9, v25);
  if (v70 < 0)
  {
    goto LABEL_16;
  }

  v71 = v70;
  (*(v67 + 8))(v68, v66);
  v72 = v92;
  v73 = v104;
  v74 = v93;
  if (v71)
  {
    v75 = 0;
    v76 = *(v25 + 56);
    v107 = v112 + 192;
    v108 = v76;
    v109 = v25 + 56;
    v110 = v71;
    v105 = (v25 + 64);
    v106 = (v91 + 8);
    do
    {
      v77 = v74;
      v78 = v72;
      v79 = v108;
      (v108)(v75, v9, v25);
      v79(v75, v9, v25);
      v72 = v78;
      v74 = v77;
      v80 = v9;
      v81 = v111;
      (*(v112 + 192))(v77, v72, v73);
      v82 = *v106;
      (*v106)(v72, v73);
      v82(v77, v73);
      v83 = v81;
      v9 = v80;
      (*(v25 + 64))(v83, v75, v80, v25);
      v75 = (v75 + 1);
    }

    while (v110 != v75);
  }

  v84 = v103;
  v85 = *(v103 + 8);
  v85(v115, v9);
  v85(v114, v9);
  v86 = *(v84 + 32);
  v87 = v94;
  v86(v94, v113, v9);
  return (v86)(v95, v87, v9);
}

uint64_t static SIMDMask..^ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v9 = a3;
  LODWORD(v107) = a2;
  v101 = a1;
  v95 = a7;
  v103 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v115 = &v89 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v114 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v89 - v20;
  v112 = *(v22 + 8);
  v23 = *(*(v112 + 24) + 16);
  v25 = *(v24 + 48);
  swift_getAssociatedTypeWitness(255, v25, v26, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v28 = v27;
  v110 = v23;
  swift_getAssociatedTypeWitness(0, v23, v27, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v105 = &v89 - v31;
  v32 = swift_checkMetadataState(0, v28);
  v91 = *(v32 - 1);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v89 - v39;
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v111 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v102 = &v89 - v45;
  v116[0] = v9;
  v116[1] = a4;
  v116[2] = a5;
  v116[3] = v109;
  v46 = type metadata accessor for SIMDMask(0, v116);
  v99 = *(v46 - 8);
  v100 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v51);
  v98 = &v89 - v52;
  v53 = *(v25 + 48);
  v97 = v25 + 48;
  v96 = v53;
  v53(v9, v25);
  v108 = *(v25 + 40);
  v109 = v25 + 40;
  v54 = v108(v9, v25);
  if (v54 < 0)
  {
    goto LABEL_16;
  }

  v55 = v54;
  v93 = v40;
  v104 = v32;
  v92 = v36;
  v94 = v21;
  v113 = v12;
  if (v54)
  {
    v56 = 0;
    v57 = v25 + 64;
    v58 = v102;
    while (1)
    {
      v59 = v108(v9, v25);
      if (v59 < 0)
      {
        break;
      }

      if (v56 >= v59)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v60 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v104, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v62 = *(AssociatedConformanceWitness + 8);
      v90 = v57;
      v63 = v105;
      if (v107)
      {
        v64 = &unk_18071E0B0;
        v65 = 257;
      }

      else
      {
        v64 = &qword_18071E0A8;
        v65 = 256;
      }

      v62(v64, v65, v60, AssociatedConformanceWitness);
      (*(v110 + 3))(v63);
      v57 = v90;
      (*(v25 + 64))(v58, v56++, v9, v25);
      if (v55 == v56)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v67 = v99;
  v66 = v100;
  v68 = v98;
  (*(v99 + 32))(v98, v50, v100);
  v69 = *(v103 + 16);
  v69(v114, v101, v9);
  v69(v115, v68, v9);
  v96(v9, v25);
  v70 = v108(v9, v25);
  if (v70 < 0)
  {
    goto LABEL_16;
  }

  v71 = v70;
  (*(v67 + 8))(v68, v66);
  v72 = v92;
  v73 = v104;
  v74 = v93;
  if (v71)
  {
    v75 = 0;
    v76 = *(v25 + 56);
    v107 = v112 + 224;
    v108 = v76;
    v109 = v25 + 56;
    v110 = v71;
    v105 = (v25 + 64);
    v106 = (v91 + 8);
    do
    {
      v77 = v74;
      v78 = v72;
      v79 = v108;
      (v108)(v75, v9, v25);
      v79(v75, v9, v25);
      v72 = v78;
      v74 = v77;
      v80 = v9;
      v81 = v111;
      (*(v112 + 224))(v77, v72, v73);
      v82 = *v106;
      (*v106)(v72, v73);
      v82(v77, v73);
      v83 = v81;
      v9 = v80;
      (*(v25 + 64))(v83, v75, v80, v25);
      v75 = (v75 + 1);
    }

    while (v110 != v75);
  }

  v84 = v103;
  v85 = *(v103 + 8);
  v85(v115, v9);
  v85(v114, v9);
  v86 = *(v84 + 32);
  v87 = v94;
  v86(v94, v113, v9);
  return (v86)(v95, v87, v9);
}

uint64_t static SIMDMask..| infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v109 = a6;
  v9 = a3;
  LODWORD(v107) = a2;
  v101 = a1;
  v95 = a7;
  v103 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v115 = &v89 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v114 = &v89 - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v89 - v20;
  v112 = *(v22 + 8);
  v23 = *(*(v112 + 24) + 16);
  v25 = *(v24 + 48);
  swift_getAssociatedTypeWitness(255, v25, v26, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v28 = v27;
  v110 = v23;
  swift_getAssociatedTypeWitness(0, v23, v27, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29, v30);
  v105 = &v89 - v31;
  v32 = swift_checkMetadataState(0, v28);
  v91 = *(v32 - 1);
  v34 = MEMORY[0x1EEE9AC00](v32, v33);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v34, v37);
  v40 = &v89 - v39;
  v42 = MEMORY[0x1EEE9AC00](v38, v41);
  v111 = &v89 - v43;
  MEMORY[0x1EEE9AC00](v42, v44);
  v102 = &v89 - v45;
  v116[0] = v9;
  v116[1] = a4;
  v116[2] = a5;
  v116[3] = v109;
  v46 = type metadata accessor for SIMDMask(0, v116);
  v99 = *(v46 - 8);
  v100 = v46;
  v48 = MEMORY[0x1EEE9AC00](v46, v47);
  v50 = &v89 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48, v51);
  v98 = &v89 - v52;
  v53 = *(v25 + 48);
  v97 = v25 + 48;
  v96 = v53;
  v53(v9, v25);
  v108 = *(v25 + 40);
  v109 = v25 + 40;
  v54 = v108(v9, v25);
  if (v54 < 0)
  {
    goto LABEL_16;
  }

  v55 = v54;
  v93 = v40;
  v104 = v32;
  v92 = v36;
  v94 = v21;
  v113 = v12;
  if (v54)
  {
    v56 = 0;
    v57 = v25 + 64;
    v58 = v102;
    while (1)
    {
      v59 = v108(v9, v25);
      if (v59 < 0)
      {
        break;
      }

      if (v56 >= v59)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v60 = v106;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v110, v104, v106, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v62 = *(AssociatedConformanceWitness + 8);
      v90 = v57;
      v63 = v105;
      if (v107)
      {
        v64 = &unk_18071E0B0;
        v65 = 257;
      }

      else
      {
        v64 = &qword_18071E0A8;
        v65 = 256;
      }

      v62(v64, v65, v60, AssociatedConformanceWitness);
      (*(v110 + 3))(v63);
      v57 = v90;
      (*(v25 + 64))(v58, v56++, v9, v25);
      if (v55 == v56)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v67 = v99;
  v66 = v100;
  v68 = v98;
  (*(v99 + 32))(v98, v50, v100);
  v69 = *(v103 + 16);
  v69(v114, v101, v9);
  v69(v115, v68, v9);
  v96(v9, v25);
  v70 = v108(v9, v25);
  if (v70 < 0)
  {
    goto LABEL_16;
  }

  v71 = v70;
  (*(v67 + 8))(v68, v66);
  v72 = v92;
  v73 = v104;
  v74 = v93;
  if (v71)
  {
    v75 = 0;
    v76 = *(v25 + 56);
    v107 = v112 + 208;
    v108 = v76;
    v109 = v25 + 56;
    v110 = v71;
    v105 = (v25 + 64);
    v106 = (v91 + 8);
    do
    {
      v77 = v74;
      v78 = v72;
      v79 = v108;
      (v108)(v75, v9, v25);
      v79(v75, v9, v25);
      v72 = v78;
      v74 = v77;
      v80 = v9;
      v81 = v111;
      (*(v112 + 208))(v77, v72, v73);
      v82 = *v106;
      (*v106)(v72, v73);
      v82(v77, v73);
      v83 = v81;
      v9 = v80;
      (*(v25 + 64))(v83, v75, v80, v25);
      v75 = (v75 + 1);
    }

    while (v110 != v75);
  }

  v84 = v103;
  v85 = *(v103 + 8);
  v85(v115, v9);
  v85(v114, v9);
  v86 = *(v84 + 32);
  v87 = v94;
  v86(v94, v113, v9);
  return (v86)(v95, v87, v9);
}

uint64_t static SIMDMask..&= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v71 = a6;
  v72 = a2;
  v63 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v63, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v59 = v10;
  v67 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v61 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v57 - v19;
  v20 = *(a3 - 1);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v57 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v32 = MEMORY[0x1EEE9AC00](&v57 - v30, v31);
  v60 = &v57 - v33;
  v34 = *(v20 + 16);
  v73 = v32;
  v34(v32, a1, a3);
  v74[0] = a3;
  v74[1] = a4;
  v74[2] = a5;
  v74[3] = v71;
  v35 = type metadata accessor for SIMDMask(0, v74);
  (*(*(v35 - 8) + 8))(a1, v35);
  v34(v28, v72, a3);
  v36 = v24;
  v37 = v63;
  (v63[6])(a3, v63);
  v38 = (v37[5])(a3, v37);
  if (v38 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v20;
  v58 = a1;
  v39 = a3;
  v69 = a5;
  v40 = v61;
  v41 = v62;
  v42 = v59;
  v71 = v28;
  v72 = v36;
  if (v38)
  {
    v43 = 0;
    v44 = v37[7];
    v65 = (v67 + 1);
    v66 = v44;
    v67 = v37 + 7;
    v68 = v38;
    v64 = v37 + 8;
    do
    {
      v45 = v40;
      v46 = v41;
      v47 = v66;
      (v66)(v43, v39, v37);
      (v47)(v43, v39, v37);
      v41 = v46;
      v40 = v45;
      v48 = v39;
      v49 = v70;
      (*(*(v69 + 8) + 192))(v45, v41, v42);
      v50 = *v65;
      (*v65)(v41, v42);
      v50(v45, v42);
      v51 = v49;
      v39 = v48;
      (v37[8])(v51, v43++, v48, v37);
    }

    while (v68 != v43);
  }

  v52 = v57;
  v53 = *(v57 + 8);
  v53(v71, v39);
  v53(v73, v39);
  v54 = *(v52 + 32);
  v55 = v60;
  v54(v60, v72, v39);
  return (v54)(v58, v55, v39);
}

uint64_t static SIMDMask..^= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v71 = a6;
  v72 = a2;
  v63 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v63, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v59 = v10;
  v67 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v61 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v57 - v19;
  v20 = *(a3 - 1);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v57 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v32 = MEMORY[0x1EEE9AC00](&v57 - v30, v31);
  v60 = &v57 - v33;
  v34 = *(v20 + 16);
  v73 = v32;
  v34(v32, a1, a3);
  v74[0] = a3;
  v74[1] = a4;
  v74[2] = a5;
  v74[3] = v71;
  v35 = type metadata accessor for SIMDMask(0, v74);
  (*(*(v35 - 8) + 8))(a1, v35);
  v34(v28, v72, a3);
  v36 = v24;
  v37 = v63;
  (v63[6])(a3, v63);
  v38 = (v37[5])(a3, v37);
  if (v38 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v20;
  v58 = a1;
  v39 = a3;
  v69 = a5;
  v40 = v61;
  v41 = v62;
  v42 = v59;
  v71 = v28;
  v72 = v36;
  if (v38)
  {
    v43 = 0;
    v44 = v37[7];
    v65 = (v67 + 1);
    v66 = v44;
    v67 = v37 + 7;
    v68 = v38;
    v64 = v37 + 8;
    do
    {
      v45 = v40;
      v46 = v41;
      v47 = v66;
      (v66)(v43, v39, v37);
      (v47)(v43, v39, v37);
      v41 = v46;
      v40 = v45;
      v48 = v39;
      v49 = v70;
      (*(*(v69 + 8) + 224))(v45, v41, v42);
      v50 = *v65;
      (*v65)(v41, v42);
      v50(v45, v42);
      v51 = v49;
      v39 = v48;
      (v37[8])(v51, v43++, v48, v37);
    }

    while (v68 != v43);
  }

  v52 = v57;
  v53 = *(v57 + 8);
  v53(v71, v39);
  v53(v73, v39);
  v54 = *(v52 + 32);
  v55 = v60;
  v54(v60, v72, v39);
  return (v54)(v58, v55, v39);
}

uint64_t static SIMDMask..|= infix(_:_:)(uint64_t a1, char *a2, Class *a3, uint64_t a4, uint64_t a5, char *a6)
{
  v71 = a6;
  v72 = a2;
  v63 = *(a4 + 48);
  swift_getAssociatedTypeWitness(0, v63, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v59 = v10;
  v67 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v61 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v70 = &v57 - v19;
  v20 = *(a3 - 1);
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v57 - v27;
  MEMORY[0x1EEE9AC00](v26, v29);
  v32 = MEMORY[0x1EEE9AC00](&v57 - v30, v31);
  v60 = &v57 - v33;
  v34 = *(v20 + 16);
  v73 = v32;
  v34(v32, a1, a3);
  v74[0] = a3;
  v74[1] = a4;
  v74[2] = a5;
  v74[3] = v71;
  v35 = type metadata accessor for SIMDMask(0, v74);
  (*(*(v35 - 8) + 8))(a1, v35);
  v34(v28, v72, a3);
  v36 = v24;
  v37 = v63;
  (v63[6])(a3, v63);
  v38 = (v37[5])(a3, v37);
  if (v38 < 0)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v57 = v20;
  v58 = a1;
  v39 = a3;
  v69 = a5;
  v40 = v61;
  v41 = v62;
  v42 = v59;
  v71 = v28;
  v72 = v36;
  if (v38)
  {
    v43 = 0;
    v44 = v37[7];
    v65 = (v67 + 1);
    v66 = v44;
    v67 = v37 + 7;
    v68 = v38;
    v64 = v37 + 8;
    do
    {
      v45 = v40;
      v46 = v41;
      v47 = v66;
      (v66)(v43, v39, v37);
      (v47)(v43, v39, v37);
      v41 = v46;
      v40 = v45;
      v48 = v39;
      v49 = v70;
      (*(*(v69 + 8) + 208))(v45, v41, v42);
      v50 = *v65;
      (*v65)(v41, v42);
      v50(v45, v42);
      v51 = v49;
      v39 = v48;
      (v37[8])(v51, v43++, v48, v37);
    }

    while (v68 != v43);
  }

  v52 = v57;
  v53 = *(v57 + 8);
  v53(v71, v39);
  v53(v73, v39);
  v54 = *(v52 + 32);
  v55 = v60;
  v54(v60, v72, v39);
  return (v54)(v58, v55, v39);
}

uint64_t static SIMDMask..&= infix(_:_:)(uint64_t a1, int a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  LODWORD(v113) = a2;
  v11 = *(a5 + 8);
  v12 = *(*(v11 + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v116 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v112 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = &v93 - v18;
  v110 = swift_checkMetadataState(0, v15);
  v97 = *(v110 - 1);
  v20 = MEMORY[0x1EEE9AC00](v110, v19);
  v100 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v93 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v93 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v108 = &v93 - v32;
  v109 = *(v9 - 1);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v121 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v120 = &v93 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v119 = &v93 - v41;
  MEMORY[0x1EEE9AC00](v40, v42);
  v101 = &v93 - v43;
  v122[0] = v9;
  v122[1] = a4;
  v122[2] = a5;
  v122[3] = a6;
  v44 = type metadata accessor for SIMDMask(0, v122);
  v45 = *(v44 - 8);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v49 = &v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v47, v50);
  v107 = &v93 - v52;
  MEMORY[0x1EEE9AC00](v51, v53);
  v54 = *(v45 + 32);
  v106 = &v93 - v55;
  v103 = v45 + 32;
  v102 = v54;
  v54();
  v56 = *(v13 + 48);
  v105 = v13 + 48;
  v104 = v56;
  v56(v9, v13);
  v114 = *(v13 + 40);
  v115 = v13 + 40;
  v57 = v114(v9, v13);
  if (v57 < 0)
  {
    goto LABEL_16;
  }

  v99 = a1;
  v117 = v29;
  v118 = v11;
  v98 = v25;
  if (v57)
  {
    v58 = 0;
    v96 = v116 + 24;
    v59 = v13 + 64;
    while (1)
    {
      v60 = v57;
      v61 = v114(v9, v13);
      if (v61 < 0)
      {
        break;
      }

      if (v58 >= v61)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v95 = v45;
      v94 = v44;
      v62 = v112;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v116, v110, v112, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v64 = v59;
      v65 = v111;
      if (v113)
      {
        v66 = &unk_18071E0B0;
        v67 = 257;
      }

      else
      {
        v66 = &qword_18071E0A8;
        v67 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v66, v67, v62, AssociatedConformanceWitness);
      v68 = v108;
      (*(v116 + 3))(v65);
      v69 = v68;
      v59 = v64;
      (*(v13 + 64))(v69, v58++, v9, v13);
      v57 = v60;
      v44 = v94;
      v45 = v95;
      if (v60 == v58)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v70 = v107;
  (v102)(v107, v49, v44);
  v71 = *(v109 + 16);
  v72 = v106;
  v71(v119, v106, v9);
  v71(v120, v70, v9);
  v104(v9, v13);
  v73 = v114(v9, v13);
  if (v73 < 0)
  {
    goto LABEL_16;
  }

  v74 = v73;
  v75 = *(v45 + 8);
  v75(v70, v44);
  v75(v72, v44);
  v76 = v110;
  v77 = v100;
  v78 = v98;
  if (v74)
  {
    v79 = 0;
    v80 = *(v13 + 56);
    v113 = v118 + 192;
    v114 = v80;
    v115 = v13 + 56;
    v116 = v74;
    v111 = (v13 + 64);
    v112 = (v97 + 8);
    do
    {
      v81 = v78;
      v82 = v77;
      v83 = v114;
      (v114)(v79, v9, v13);
      v83(v79, v9, v13);
      v77 = v82;
      v78 = v81;
      v84 = v9;
      v85 = v117;
      (*(v118 + 192))(v81, v77, v76);
      v86 = *v112;
      (*v112)(v77, v76);
      v86(v81, v76);
      v87 = v85;
      v9 = v84;
      (*(v13 + 64))(v87, v79, v84, v13);
      v79 = (v79 + 1);
    }

    while (v116 != v79);
  }

  v88 = v109;
  v89 = *(v109 + 8);
  v89(v120, v9);
  v89(v119, v9);
  v90 = *(v88 + 32);
  v91 = v101;
  v90(v101, v121, v9);
  return (v90)(v99, v91, v9);
}

uint64_t static SIMDMask..^= infix(_:_:)(uint64_t a1, int a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  LODWORD(v113) = a2;
  v11 = *(a5 + 8);
  v12 = *(*(v11 + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v116 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v112 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = &v93 - v18;
  v110 = swift_checkMetadataState(0, v15);
  v97 = *(v110 - 1);
  v20 = MEMORY[0x1EEE9AC00](v110, v19);
  v100 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v93 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v93 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v108 = &v93 - v32;
  v109 = *(v9 - 1);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v121 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v120 = &v93 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v119 = &v93 - v41;
  MEMORY[0x1EEE9AC00](v40, v42);
  v101 = &v93 - v43;
  v122[0] = v9;
  v122[1] = a4;
  v122[2] = a5;
  v122[3] = a6;
  v44 = type metadata accessor for SIMDMask(0, v122);
  v45 = *(v44 - 8);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v49 = &v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v47, v50);
  v107 = &v93 - v52;
  MEMORY[0x1EEE9AC00](v51, v53);
  v54 = *(v45 + 32);
  v106 = &v93 - v55;
  v103 = v45 + 32;
  v102 = v54;
  v54();
  v56 = *(v13 + 48);
  v105 = v13 + 48;
  v104 = v56;
  v56(v9, v13);
  v114 = *(v13 + 40);
  v115 = v13 + 40;
  v57 = v114(v9, v13);
  if (v57 < 0)
  {
    goto LABEL_16;
  }

  v99 = a1;
  v117 = v29;
  v118 = v11;
  v98 = v25;
  if (v57)
  {
    v58 = 0;
    v96 = v116 + 24;
    v59 = v13 + 64;
    while (1)
    {
      v60 = v57;
      v61 = v114(v9, v13);
      if (v61 < 0)
      {
        break;
      }

      if (v58 >= v61)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v95 = v45;
      v94 = v44;
      v62 = v112;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v116, v110, v112, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v64 = v59;
      v65 = v111;
      if (v113)
      {
        v66 = &unk_18071E0B0;
        v67 = 257;
      }

      else
      {
        v66 = &qword_18071E0A8;
        v67 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v66, v67, v62, AssociatedConformanceWitness);
      v68 = v108;
      (*(v116 + 3))(v65);
      v69 = v68;
      v59 = v64;
      (*(v13 + 64))(v69, v58++, v9, v13);
      v57 = v60;
      v44 = v94;
      v45 = v95;
      if (v60 == v58)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v70 = v107;
  (v102)(v107, v49, v44);
  v71 = *(v109 + 16);
  v72 = v106;
  v71(v119, v106, v9);
  v71(v120, v70, v9);
  v104(v9, v13);
  v73 = v114(v9, v13);
  if (v73 < 0)
  {
    goto LABEL_16;
  }

  v74 = v73;
  v75 = *(v45 + 8);
  v75(v70, v44);
  v75(v72, v44);
  v76 = v110;
  v77 = v100;
  v78 = v98;
  if (v74)
  {
    v79 = 0;
    v80 = *(v13 + 56);
    v113 = v118 + 224;
    v114 = v80;
    v115 = v13 + 56;
    v116 = v74;
    v111 = (v13 + 64);
    v112 = (v97 + 8);
    do
    {
      v81 = v78;
      v82 = v77;
      v83 = v114;
      (v114)(v79, v9, v13);
      v83(v79, v9, v13);
      v77 = v82;
      v78 = v81;
      v84 = v9;
      v85 = v117;
      (*(v118 + 224))(v81, v77, v76);
      v86 = *v112;
      (*v112)(v77, v76);
      v86(v81, v76);
      v87 = v85;
      v9 = v84;
      (*(v13 + 64))(v87, v79, v84, v13);
      v79 = (v79 + 1);
    }

    while (v116 != v79);
  }

  v88 = v109;
  v89 = *(v109 + 8);
  v89(v120, v9);
  v89(v119, v9);
  v90 = *(v88 + 32);
  v91 = v101;
  v90(v101, v121, v9);
  return (v90)(v99, v91, v9);
}

uint64_t static SIMDMask..|= infix(_:_:)(uint64_t a1, int a2, Class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  LODWORD(v113) = a2;
  v11 = *(a5 + 8);
  v12 = *(*(v11 + 24) + 16);
  v13 = *(a4 + 48);
  swift_getAssociatedTypeWitness(255, v13, a3, &protocol requirements base descriptor for SIMDStorage, associated type descriptor for SIMDStorage.Scalar);
  v15 = v14;
  v116 = v12;
  swift_getAssociatedTypeWitness(0, v12, v14, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated type descriptor for ExpressibleByIntegerLiteral.IntegerLiteralType);
  v112 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v111 = &v93 - v18;
  v110 = swift_checkMetadataState(0, v15);
  v97 = *(v110 - 1);
  v20 = MEMORY[0x1EEE9AC00](v110, v19);
  v100 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v25 = &v93 - v24;
  v27 = MEMORY[0x1EEE9AC00](v23, v26);
  v29 = &v93 - v28;
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v108 = &v93 - v32;
  v109 = *(v9 - 1);
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v121 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v120 = &v93 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v119 = &v93 - v41;
  MEMORY[0x1EEE9AC00](v40, v42);
  v101 = &v93 - v43;
  v122[0] = v9;
  v122[1] = a4;
  v122[2] = a5;
  v122[3] = a6;
  v44 = type metadata accessor for SIMDMask(0, v122);
  v45 = *(v44 - 8);
  v47 = MEMORY[0x1EEE9AC00](v44, v46);
  v49 = &v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v47, v50);
  v107 = &v93 - v52;
  MEMORY[0x1EEE9AC00](v51, v53);
  v54 = *(v45 + 32);
  v106 = &v93 - v55;
  v103 = v45 + 32;
  v102 = v54;
  v54();
  v56 = *(v13 + 48);
  v105 = v13 + 48;
  v104 = v56;
  v56(v9, v13);
  v114 = *(v13 + 40);
  v115 = v13 + 40;
  v57 = v114(v9, v13);
  if (v57 < 0)
  {
    goto LABEL_16;
  }

  v99 = a1;
  v117 = v29;
  v118 = v11;
  v98 = v25;
  if (v57)
  {
    v58 = 0;
    v96 = v116 + 24;
    v59 = v13 + 64;
    while (1)
    {
      v60 = v57;
      v61 = v114(v9, v13);
      if (v61 < 0)
      {
        break;
      }

      if (v58 >= v61)
      {
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
      }

      v95 = v45;
      v94 = v44;
      v62 = v112;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v116, v110, v112, &protocol requirements base descriptor for ExpressibleByIntegerLiteral, associated conformance descriptor for ExpressibleByIntegerLiteral.ExpressibleByIntegerLiteral.IntegerLiteralType: _ExpressibleByBuiltinIntegerLiteral);
      v64 = v59;
      v65 = v111;
      if (v113)
      {
        v66 = &unk_18071E0B0;
        v67 = 257;
      }

      else
      {
        v66 = &qword_18071E0A8;
        v67 = 256;
      }

      (*(AssociatedConformanceWitness + 8))(v66, v67, v62, AssociatedConformanceWitness);
      v68 = v108;
      (*(v116 + 3))(v65);
      v69 = v68;
      v59 = v64;
      (*(v13 + 64))(v69, v58++, v9, v13);
      v57 = v60;
      v44 = v94;
      v45 = v95;
      if (v60 == v58)
      {
        goto LABEL_10;
      }
    }

LABEL_16:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

LABEL_10:
  v70 = v107;
  (v102)(v107, v49, v44);
  v71 = *(v109 + 16);
  v72 = v106;
  v71(v119, v106, v9);
  v71(v120, v70, v9);
  v104(v9, v13);
  v73 = v114(v9, v13);
  if (v73 < 0)
  {
    goto LABEL_16;
  }

  v74 = v73;
  v75 = *(v45 + 8);
  v75(v70, v44);
  v75(v72, v44);
  v76 = v110;
  v77 = v100;
  v78 = v98;
  if (v74)
  {
    v79 = 0;
    v80 = *(v13 + 56);
    v113 = v118 + 208;
    v114 = v80;
    v115 = v13 + 56;
    v116 = v74;
    v111 = (v13 + 64);
    v112 = (v97 + 8);
    do
    {
      v81 = v78;
      v82 = v77;
      v83 = v114;
      (v114)(v79, v9, v13);
      v83(v79, v9, v13);
      v77 = v82;
      v78 = v81;
      v84 = v9;
      v85 = v117;
      (*(v118 + 208))(v81, v77, v76);
      v86 = *v112;
      (*v112)(v77, v76);
      v86(v81, v76);
      v87 = v85;
      v9 = v84;
      (*(v13 + 64))(v87, v79, v84, v13);
      v79 = (v79 + 1);
    }

    while (v116 != v79);
  }

  v88 = v109;
  v89 = *(v109 + 8);
  v89(v120, v9);
  v89(v119, v9);
  v90 = *(v88 + 32);
  v91 = v101;
  v90(v101, v121, v9);
  return (v90)(v99, v91, v9);
}

uint64_t key path getter for SIMD2.subscript(_:) : <A>SIMD2<A>A(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD2.subscript(_:) : <A>SIMD2<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD2.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xB1E7uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0xB1E7uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xB1E7uLL);
    v11 = swift_coroFrameAlloc(v10, 0xB1E7uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD2.subscript.modify;
}

uint64_t SIMD2.init(_:_:)(const void *a1, const void *a2, const char *a3, swift *a4)
{
  v8 = *(*(a3 - 1) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  swift_getAssociatedTypeWitness(0, v10, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v12, AssociatedConformanceWitness);
  memcpy(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = *(AssociatedConformanceWitness + 64);
  v14(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v12, AssociatedConformanceWitness);
  memcpy(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  return v14(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v12, AssociatedConformanceWitness);
}

void (*SIMD2.x.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xF6C1uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0xF6C1uLL);
    v9 = swift_coroFrameAlloc(v8, 0xF6C1uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(0, v15, AssociatedConformanceWitness);
  return SIMD2.x.modify;
}

void (*SIMD2.y.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xF338uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0xF338uLL);
    v9 = swift_coroFrameAlloc(v8, 0xF338uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(1, v15, AssociatedConformanceWitness);
  return SIMD2.y.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD2<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD2<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD2<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x668CuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x668CuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x668CuLL);
    v11 = swift_coroFrameAlloc(v10, 0x668CuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 2)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD2.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD2<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD2<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD2<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD2<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD2<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD2<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD2<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33[1] = a2;
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v33 - v9;
  v12 = *(v11 + 24);
  swift_getAssociatedTypeWitness(255, v12, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v33[0] = a1;
  v16(0, v17, AssociatedConformanceWitness);
  v16(0, v17, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v12, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v19 = v18;
  v20 = swift_getAssociatedConformanceWitness(v12, v4, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v21 = swift_getAssociatedConformanceWitness(v20, v19, v4, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
  if ((*(*(v21 + 8) + 8))(v10, v7, v4))
  {
    swift_getAssociatedTypeWitness(255, v12, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
    v23 = v22;
    v24 = swift_getAssociatedConformanceWitness(v12, v4, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
    v25 = *(v24 + 56);
    v26 = swift_checkMetadataState(0, v23);
    v25(1, v26, v24);
    v25(1, v26, v24);
    swift_getAssociatedTypeWitness(255, v12, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
    v28 = v27;
    v29 = swift_getAssociatedConformanceWitness(v12, v4, v27, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
    v30 = swift_getAssociatedConformanceWitness(v29, v28, v4, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
    v31 = (*(*(v30 + 8) + 8))(v10, v7, v4);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t SIMD2<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a4;
  v44 = a6;
  v39 = a1;
  v47 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v46 = v19;
  (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
  v42 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v37 = a3;
  v38 = v20;
  v22 = swift_getAssociatedConformanceWitness(a7, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v40 = *(v22 + 56);
  v23 = v40;
  v24 = swift_checkMetadataState(0, v21);
  v25 = v14;
  v23(0, v24, v22);
  v26 = *(v43 + 8);
  v27 = *(v44 + 8);
  v43 = *(v26 + 96);
  v44 = v27;
  v28 = v14;
  v29 = v41;
  (v43)(v28, a3);
  v36 = *(AssociatedConformanceWitness + 64);
  (v36)(v17, 0, v46);
  v30 = swift_checkMetadataState(0, v38);
  v31 = v39;
  v40(1, v30, v22);
  v32 = v37;
  (v43)(v25, v37, v44, v29, v26);
  v36(v17, 1, v46, AssociatedConformanceWitness);
  v34 = type metadata accessor for SIMD2(0, v32, v42, v33);
  return (*(*(v34 - 8) + 8))(v31, v34);
}

uint64_t SIMD2<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a4;
  v44 = a6;
  v39 = a1;
  v47 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v46 = v19;
  (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
  v42 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v37 = a3;
  v38 = v20;
  v22 = swift_getAssociatedConformanceWitness(a7, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v40 = *(v22 + 56);
  v23 = v40;
  v24 = swift_checkMetadataState(0, v21);
  v25 = v14;
  v23(0, v24, v22);
  v26 = *(v43 + 8);
  v27 = *(v44 + 8);
  v43 = *(v26 + 104);
  v44 = v27;
  v28 = v14;
  v29 = v41;
  (v43)(v28, a3);
  v36 = *(AssociatedConformanceWitness + 64);
  (v36)(v17, 0, v46);
  v30 = swift_checkMetadataState(0, v38);
  v31 = v39;
  v40(1, v30, v22);
  v32 = v37;
  (v43)(v25, v37, v44, v29, v26);
  v36(v17, 1, v46, AssociatedConformanceWitness);
  v34 = type metadata accessor for SIMD2(0, v32, v42, v33);
  return (*(*(v34 - 8) + 8))(v31, v34);
}

uint64_t SIMD2<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v59 = a7;
  v50 = a5;
  v51 = a1;
  v52 = a2;
  v55 = a9;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v57 = &v44 - v16;
  v54 = v17;
  MEMORY[0x1EEE9AC00](v15, v18);
  v56 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v21, v20, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v23 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v24 = *(AssociatedConformanceWitness + 48);
  v58 = v23;
  v24(v23, AssociatedConformanceWitness);
  v49 = a8;
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v26 = v25;
  v27 = a8;
  v28 = v26;
  v46 = v26;
  v29 = swift_getAssociatedConformanceWitness(v27, a4, v26, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v30 = *(v29 + 56);
  v47 = v29;
  v48 = v30;
  v31 = swift_checkMetadataState(0, v28);
  v30(0, v31, v29);
  v32 = v59;
  v33 = *(v59 + 16);
  v34 = *(v33 + 304);
  v44 = v33 + 304;
  v45 = v34;
  v35 = v57;
  v34(v52, a4, v33);
  v50 = *(*(v50 + 8) + 80);
  v36 = v56;
  (v50)(v35, a4, v32);
  v37 = *(AssociatedConformanceWitness + 64);
  (v37)(v36, 0, v58);
  v38 = swift_checkMetadataState(0, v46);
  v48(1, v38, v47);
  v39 = v57;
  v45(v52, a4, v33);
  v40 = v56;
  (v50)(v39, a4, v59);
  v37(v40, 1, v58, AssociatedConformanceWitness);
  v42 = type metadata accessor for SIMD2(0, a4, v49, v41);
  return (*(*(v42 - 8) + 8))(v51, v42);
}

unint64_t SIMD2.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v372 = a1;
  v377 = *(a1 + 16);
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = &v361 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v3, v6);
  v9 = &v361 - v8;
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v361 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v361 - v16;
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v375 = &v361 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v363 = &v361 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v365 = &v361 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v367 = &v361 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v370 = &v361 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v374 = &v361 - v35;
  v376 = v36;
  MEMORY[0x1EEE9AC00](v34, v37);
  v373 = &v361 - v38;
  v39 = _StringGuts.init(_initialCapacity:)(17);
  v41 = v39;
  v42 = v40;
  v384 = v39;
  v385 = v40;
  object = HIBYTE(v40) & 0xF;
  v44 = v39 & 0xFFFFFFFFFFFFLL;
  if ((v40 & 0x2000000000000000) != 0)
  {
    v45 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v45 = v39 & 0xFFFFFFFFFFFFLL;
  }

  v364 = v5;
  v366 = v9;
  v368 = v13;
  v371 = v17;
  if (v45 || (v39 & ~v40 & 0x2000000000000000) != 0)
  {
    if ((v40 & 0x2000000000000000) == 0 || object > 9)
    {
      0xE600000000000000;
      if ((v42 & 0x1000000000000000) == 0)
      {
        v53 = __OFADD__(v45, 6);
        countAndFlagsBits = v45 + 6;
        if (!v53)
        {
          goto LABEL_13;
        }

        goto LABEL_288;
      }

      goto LABEL_286;
    }

    v46 = 8 * HIBYTE(v40);
    v47 = (-255 << (v46 & 0x38)) - 1;
    v48 = 83 << (v46 & 0x38);
    v49 = object + 1;
    if (object >= 8)
    {
      v51 = v47 & v40 | v48;
      v50 = 8 * (v49 & 7);
    }

    else
    {
      v41 = v47 & v39 | v48;
      if (object != 7)
      {
        v41 = ((-255 << (8 * (v49 & 7u))) - 1) & v41 | (73 << (8 * (v49 & 7u)));
        if (object < 6)
        {
          v41 = ((-255 << ((v46 + 16) & 0x38)) - 1) & v41 | (77 << ((v46 + 16) & 0x38));
          if (object != 5)
          {
            v41 = ((-255 << ((v46 + 24) & 0x38)) - 1) & v41 | (68 << ((v46 + 24) & 0x38));
            if (object < 4)
            {
              v41 = ((0xFFFFFF0100000000 << (8 * object)) - 1) & v41 | (0x3200000000 << (8 * object));
              if (object != 3)
              {
                v41 = ((-255 << ((v46 + 40) & 0x38)) - 1) & v41 | (60 << ((v46 + 40) & 0x38));
                v44 = v40;
                v5 = 0;
                goto LABEL_33;
              }

              v65 = 0;
              v64 = v40;
LABEL_32:
              v5 = 0;
              v44 = ((-255 << v65) - 1) & v64 | (60 << v65);
LABEL_33:
              v2 = v377;
              v40;
              0xE600000000000000;
              v66 = 0xA000000000000000;
              if (!(v41 & 0x8080808080808080 | v44 & 0x80808080808080))
              {
                v66 = 0xE000000000000000;
              }

              v384 = v41;
              v385 = (v66 & 0xFF00000000000000 | (object << 56) | v44 & 0xFFFFFFFFFFFFFFLL) + 0x600000000000000;
              goto LABEL_49;
            }

            v63 = 0;
            v62 = v40;
LABEL_31:
            v64 = ((-255 << v63) - 1) & v62 | (50 << v63);
            v65 = (v46 + 40) & 0x38;
            goto LABEL_32;
          }

          v61 = 0;
          v60 = v40;
LABEL_30:
          v62 = ((-255 << v61) - 1) & v60 | (68 << v61);
          v63 = v46 & 0x38 ^ 0x20;
          goto LABEL_31;
        }

        v59 = 0;
        v58 = v40;
LABEL_29:
        v60 = ((-255 << v59) - 1) & v58 | (77 << v59);
        v61 = (v46 + 24) & 0x38;
        goto LABEL_30;
      }

      v50 = 0;
      v51 = v40;
    }

    v58 = ((-255 << v50) - 1) & v51 | (73 << v50);
    v59 = (v46 + 16) & 0x38;
    goto LABEL_29;
  }

  v40;
  v384 = 0x3C32444D4953;
  v385 = 0xE600000000000000;
LABEL_48:
  v5 = v2;
  v2 = v377;
LABEL_49:
  TypeName = swift_getTypeName(v2, 0);
  if (v78 < 0)
  {
LABEL_278:
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v17 = TypeName;
  v41 = v78;
  if (_allASCII(_:)(TypeName, v78))
  {
    v80 = 1;
LABEL_52:
    if (!v41)
    {
LABEL_98:
      v2 = 0;
      v41 = 0xE000000000000000;
      goto LABEL_133;
    }

    if (v41 > 15)
    {
      v41 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v17, v41, v41, v80 & 1);
      v2 = *(v41 + 24);
      goto LABEL_133;
    }

    v114 = v41 - 8;
    v115 = 8;
    if (v41 < 8)
    {
      v115 = v41;
    }

    if (v41 >= 4)
    {
      v117 = v115 & 0xC;
      v79.i32[0] = *v17;
      v118 = vmovl_u16(*&vmovl_u8(v79));
      v119.i64[0] = v118.u32[0];
      v119.i64[1] = v118.u32[1];
      v120.i64[0] = 255;
      v120.i64[1] = 255;
      v121 = vandq_s8(v119, v120);
      v119.i64[0] = v118.u32[2];
      v119.i64[1] = v118.u32[3];
      v122 = vshlq_u64(vandq_s8(v119, v120), xmmword_18071DBA0);
      v123.i32[1] = 0;
      v124 = vshlq_u64(v121, xmmword_18071DBB0);
      if (v117 != 4)
      {
        v123.i32[0] = *(v17 + 4);
        v125 = vmovl_u16(*&vmovl_u8(v123));
        v126.i64[0] = v125.u32[2];
        v126.i64[1] = v125.u32[3];
        v127 = vandq_s8(v126, v120);
        v126.i64[0] = v125.u32[0];
        v126.i64[1] = v125.u32[1];
        v122 = vorrq_s8(vshlq_u64(v127, xmmword_18071DBD0), v122);
        v124 = vorrq_s8(vshlq_u64(vandq_s8(v126, v120), xmmword_18071DBC0), v124);
      }

      v128 = vorrq_s8(v124, v122);
      v2 = vorr_s8(*v128.i8, *&vextq_s8(v128, v128, 8uLL));
      if (v115 != v117)
      {
        v116 = 8 * v117;
        goto LABEL_123;
      }
    }

    else
    {
      v2 = 0;
      v116 = 0;
      v117 = 0;
LABEL_123:
      v129 = v115 - v117;
      v130 = (v17 + v117);
      do
      {
        v131 = *v130++;
        v2 |= v131 << (v116 & 0x38);
        v116 += 8;
        --v129;
      }

      while (v129);
    }

    if (v41 < 9)
    {
      v132 = 0;
    }

    else
    {
      v132 = 0;
      v133 = 0;
      v134 = (v17 + 8);
      do
      {
        v135 = *v134++;
        v132 |= v135 << v133;
        v133 += 8;
        --v114;
      }

      while (v114);
    }

    v136 = 0xA000000000000000;
    if (((v132 | v2) & 0x8080808080808080) == 0)
    {
      v136 = 0xE000000000000000;
    }

    v41 = v136 | (v41 << 56) | v132;
    goto LABEL_133;
  }

  if (!v41)
  {
    goto LABEL_98;
  }

  v42 = 0;
  v81 = (v17 + v41);
  v80 = 1;
  v82 = v17;
  v83 = v17;
  while (1)
  {
    v85 = *v83++;
    v84 = v85;
    if ((v85 & 0x80000000) == 0)
    {
      v86 = 1;
      goto LABEL_59;
    }

    if ((v84 + 11) <= 0xCCu)
    {
      LOBYTE(v378._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v84);
      goto LABEL_100;
    }

    if (v84 > 0xDFu)
    {
      break;
    }

    if (v83 == v81 || (*v83 & 0xC0) != 0x80)
    {
LABEL_269:
      v339 = 4;
      goto LABEL_270;
    }

    v80 = 0;
    v83 = v82 + 2;
    v86 = 2;
LABEL_59:
    v42 += v86;
    v82 = v83;
    if (v83 == v81)
    {
      goto LABEL_52;
    }
  }

  if (v84 == 224)
  {
    if (v83 == v81)
    {
      goto LABEL_269;
    }

    if (v82[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_277;
    }

    goto LABEL_83;
  }

  if (v84 <= 0xECu)
  {
    goto LABEL_81;
  }

  if (v84 == 237)
  {
    if (v83 == v81)
    {
      goto LABEL_269;
    }

    v87 = v82[1];
    if (v87 > 0x9F || (v87 & 0xC0) != 0x80)
    {
      v339 = 1;
      goto LABEL_270;
    }

    goto LABEL_83;
  }

  if (v84 <= 0xEFu)
  {
LABEL_81:
    if (v83 == v81 || (v82[1] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

LABEL_83:
    if (v82 + 2 == v81 || (v82[2] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

    v80 = 0;
    v83 = v82 + 3;
    v86 = 3;
    goto LABEL_59;
  }

  if (v84 == 240)
  {
    if (v83 == v81)
    {
      goto LABEL_269;
    }

    if (v82[1] - 192 < 0xFFFFFFD0)
    {
LABEL_277:
      v339 = 3;
      goto LABEL_270;
    }

    goto LABEL_93;
  }

  if (v84 <= 0xF3u)
  {
    if (v83 == v81 || (v82[1] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

    goto LABEL_93;
  }

  if (v83 == v81)
  {
    goto LABEL_269;
  }

  v88 = v82[1];
  if (v88 <= 0x8F && (v88 & 0xC0) == 0x80)
  {
LABEL_93:
    if (v82 + 2 == v81 || (v82[2] & 0xC0) != 0x80 || v82 + 3 == v81 || (v82[3] & 0xC0) != 0x80)
    {
      goto LABEL_269;
    }

    v80 = 0;
    v83 = v82 + 4;
    v86 = 4;
    goto LABEL_59;
  }

  v339 = 2;
LABEL_270:
  LOBYTE(v378._countAndFlagsBits) = v339;
LABEL_100:
  swift_willThrowTypedImpl(&v378, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v89 = specialized Collection.subscript.getter(v42, v17, v41);
  countAndFlagsBits = findInvalidRange #1 (_:) in validateUTF8(_:)(v89, v90, v91, v92);
  v378._countAndFlagsBits = 0;
  v378._object = 0xE000000000000000;
  if (__OFADD__(v41, 15))
  {
    __break(1u);
    while (1)
    {
      if ((object & 0x1000000000000000) != 0)
      {
        countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, object);
        v360 = v359;
        object;
        object = v360;
LABEL_45:
        v73 = specialized _SmallString.init(_:appending:)(v41, v44, countAndFlagsBits, object);
        if (v75)
        {
          goto LABEL_309;
        }

        v44 = v73;
        v76 = v74;
        v42;
        swift_bridgeObjectRelease_n(0xE600000000000000, 2);
        v384 = v44;
        v385 = v76;
        goto LABEL_48;
      }

      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v350 = ((object & 0xFFFFFFFFFFFFFFFLL) + 32);
        v351 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v350 = _StringObject.sharedUTF8.getter(countAndFlagsBits, object);
      }

      closure #1 in _StringGuts._convertedToSmall()(v350, v351, &v378, v71);
      if (!v2)
      {
        object;
        object = v378._object;
        countAndFlagsBits = v378._countAndFlagsBits;
        goto LABEL_45;
      }

      while (2)
      {
        v171 = v2;
LABEL_317:
        v171;
        __break(1u);
LABEL_318:
        v5;
        __break(1u);
LABEL_319:
        v152 = v352;
        v154 = v353;
        v44 = v369;
        v153 = v362;
        while (1)
        {
          v155 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(0, v153, v152, v154);
          closure #1 in _StringGuts.append(_:)(v155, v156, &v384, v2 < 0);
          if (!v44)
          {
            goto LABEL_190;
          }

          v44;
          __break(1u);
LABEL_171:
          v157 = v137 + v44;
          if (v137 + v44 < 0x10)
          {
            if (v44)
            {
              v163 = 0;
              v164 = 0;
              v165 = 8 * v137;
              v166 = 8 * v44;
              v167 = v42;
              do
              {
                v168 = v41 >> (v163 & 0x38);
                if (v164 < 8)
                {
                  v168 = v2 >> v163;
                }

                v169 = (v168 << (v165 & 0x38)) | ((-255 << (v165 & 0x38)) - 1) & v167;
                v170 = (v168 << v165) | ((-255 << v165) - 1) & v17;
                if (v137 <= 7)
                {
                  v17 = v170;
                }

                else
                {
                  v167 = v169;
                }

                ++v137;
                v165 += 8;
                v163 += 8;
                ++v164;
              }

              while (v166 != v163);
            }

            else
            {
              v167 = v42;
            }

            v42;
            v41;
            v172 = 0xA000000000000000;
            if (!(v17 & 0x8080808080808080 | v167 & 0x80808080808080))
            {
              v172 = 0xE000000000000000;
            }

            v384 = v17;
            v385 = v172 & 0xFF00000000000000 | (v157 << 56) | v167 & 0xFFFFFFFFFFFFFFLL;
            goto LABEL_196;
          }

          v5 = 0;
          v138 = v2 & 0xFFFFFFFFFFFFLL;
          v13 = v44;
LABEL_143:
          v362 = v138;
          if ((v41 & 0x1000000000000000) != 0)
          {
            break;
          }

          v41;
          v139 = v13;
          if ((v42 & 0x1000000000000000) != 0)
          {
            goto LABEL_283;
          }

LABEL_145:
          v53 = __OFADD__(countAndFlagsBits, v139);
          countAndFlagsBits += v139;
          if (v53)
          {
            goto LABEL_285;
          }

LABEL_146:
          if ((v17 & ~v42 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v42 & 0xFFFFFFFFFFFFFFFLL))
          {
            v140 = _StringGuts.nativeUnusedCapacity.getter(v17, v42);
            if (v141)
            {
              goto LABEL_309;
            }

            v142 = (v42 >> 61) & 1;
            if (v140 < v139)
            {
              LODWORD(v142) = 1;
            }

            if (countAndFlagsBits <= 15 && v142 != 0)
            {
LABEL_155:
              if ((v42 & 0x2000000000000000) != 0)
              {
                v144 = v42;
                v5 = v369;
                goto LABEL_157;
              }

LABEL_289:
              v5 = v369;
              if ((v42 & 0x1000000000000000) != 0)
              {
                v17 = _StringGuts._foreignConvertedToSmall()(v17, v42);
                v144 = v355;
LABEL_157:
                v41;
                v145._rawBits = 1;
                v146._rawBits = (v13 << 16) | 1;
                v147._rawBits = _StringGuts.validateScalarRange(_:)(v145, v146, v2, v41)._rawBits;
                if (v147._rawBits < 0x10000)
                {
                  v147._rawBits |= 3;
                }

                if (v147._rawBits >> 16)
                {
                  v150 = 0;
                }

                else
                {
                  v150 = v148._rawBits >> 16 == v13;
                }

                if (v150)
                {
                  countAndFlagsBits = v41;
                }

                else
                {
                  v2 = specialized static String._copying(_:)(v147._rawBits, v148, v2, v41);
                  countAndFlagsBits = v151;
                  v41;
                }

                if ((countAndFlagsBits & 0x2000000000000000) != 0)
                {
                  countAndFlagsBits;
LABEL_177:
                  v158 = specialized _SmallString.init(_:appending:)(v17, v144, v2, countAndFlagsBits);
                  if ((v160 & 1) == 0)
                  {
                    v161 = v158;
                    v162 = v159;
                    v42;
                    swift_bridgeObjectRelease_n(v41, 2);
                    v384 = v161;
                    v385 = v162;
                    goto LABEL_196;
                  }

LABEL_309:
                  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
                }

                if ((countAndFlagsBits & 0x1000000000000000) != 0)
                {
                  v2 = _StringGuts._foreignConvertedToSmall()(v2, countAndFlagsBits);
                  v357 = v356;
                  countAndFlagsBits;
                  countAndFlagsBits = v357;
                  goto LABEL_177;
                }

                if ((v2 & 0x1000000000000000) != 0)
                {
                  v348 = ((countAndFlagsBits & 0xFFFFFFFFFFFFFFFLL) + 32);
                  v349 = v2 & 0xFFFFFFFFFFFFLL;
                }

                else
                {
                  v348 = _StringObject.sharedUTF8.getter(v2, countAndFlagsBits);
                }

                closure #1 in _StringGuts._convertedToSmall()(v348, v349, &v378, v149);
                if (!v5)
                {
                  countAndFlagsBits;
                  countAndFlagsBits = v378._object;
                  v2 = v378._countAndFlagsBits;
                  goto LABEL_177;
                }
              }

              else
              {
                if ((v17 & 0x1000000000000000) != 0)
                {
                  v347 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
                }

                else
                {
                  v347 = _StringObject.sharedUTF8.getter(v17, v42);
                  object = v358;
                }

                closure #1 in _StringGuts._convertedToSmall()(v347, object, &v378, v52);
                if (!v5)
                {
                  v144 = v378._object;
                  v17 = v378._countAndFlagsBits;
                  goto LABEL_157;
                }
              }

              goto LABEL_318;
            }
          }

          else if (countAndFlagsBits <= 15)
          {
            goto LABEL_155;
          }

          v42 = &v384;
          _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(countAndFlagsBits, v139);
          if ((v41 & 0x1000000000000000) != 0)
          {
            _StringGuts._foreignAppendInPlace(_:)(v2, v41, 0, v13);
LABEL_190:
            swift_bridgeObjectRelease_n(v41, 2);
            goto LABEL_196;
          }

          if (!v5)
          {
            v378._countAndFlagsBits = v2;
            v378._object = (v41 & 0xFFFFFFFFFFFFFFLL);
            closure #1 in _StringGuts.append(_:)(&v378, v44, &v384, (v41 & 0x4000000000000000) != 0);
            v171 = v369;
            if (!v369)
            {
              goto LABEL_190;
            }

            goto LABEL_317;
          }

          if ((v2 & 0x1000000000000000) == 0)
          {
            v352 = _StringObject.sharedUTF8.getter(v2, v41);
            if (v353 < v362)
            {
              goto LABEL_278;
            }

            goto LABEL_319;
          }

          v152 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v153 = v362;
          v154 = v362;
          v44 = v369;
        }

        swift_bridgeObjectRetain_n(v41, 2);
        v341._rawBits = 1;
        v342._rawBits = (v13 << 16) | 1;
        v343._rawBits = _StringGuts.validateScalarRange(_:)(v341, v342, v2, v41)._rawBits;
        if (v343._rawBits < 0x10000)
        {
          v343._rawBits |= 3;
        }

        v139 = String.UTF8View.distance(from:to:)(v343, v344);
        v41;
        if ((v42 & 0x1000000000000000) == 0)
        {
          goto LABEL_145;
        }

LABEL_283:
        v345 = String.UTF8View._foreignCount()();
        countAndFlagsBits = v345 + v139;
        if (!__OFADD__(v345, v139))
        {
          goto LABEL_146;
        }

LABEL_285:
        __break(1u);
LABEL_286:
        v346 = String.UTF8View._foreignCount()();
        countAndFlagsBits = v346 + 6;
        if (__OFADD__(v346, 6))
        {
LABEL_288:
          __break(1u);
          goto LABEL_289;
        }

LABEL_13:
        if ((v41 & ~v42 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v42 & 0xFFFFFFFFFFFFFFFLL))
        {
          v55 = _StringGuts.nativeUnusedCapacity.getter(v41, v42);
          if (v56)
          {
            goto LABEL_309;
          }

          if (countAndFlagsBits > 15)
          {
            goto LABEL_25;
          }

          if ((v42 & 0x2000000000000000) == 0)
          {
            if (v55 < 6)
            {
              goto LABEL_19;
            }

LABEL_25:
            v42 = &v384;
            _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(countAndFlagsBits, 6);
            v378 = xmmword_18071DFD0;
            closure #1 in _StringGuts.append(_:)(&v378, 6uLL, &v384, 1);
            if (!v2)
            {
              swift_bridgeObjectRelease_n(0xE600000000000000, 2);
              goto LABEL_48;
            }

            continue;
          }

LABEL_37:
          v44 = v42;
        }

        else
        {
          if (countAndFlagsBits > 15)
          {
            goto LABEL_25;
          }

          if ((v42 & 0x2000000000000000) != 0)
          {
            goto LABEL_37;
          }

LABEL_19:
          if ((v42 & 0x1000000000000000) == 0)
          {
            if ((v41 & 0x1000000000000000) != 0)
            {
              v57 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v57 = _StringObject.sharedUTF8.getter(v41, v42);
              v44 = v354;
            }

            closure #1 in _StringGuts._convertedToSmall()(v57, v44, &v378, v52);
            if (!v2)
            {
              v44 = v378._object;
              v41 = v378._countAndFlagsBits;
              break;
            }

            continue;
          }

          v41 = _StringGuts._foreignConvertedToSmall()(v41, v42);
          v44 = v340;
        }

        break;
      }

      countAndFlagsBits = 0x3C32444D4953;
      object = 0xE600000000000000;
      0xE600000000000000;
      v67._rawBits = 1;
      v68._rawBits = 393217;
      v69._rawBits = _StringGuts.validateScalarRange(_:)(v67, v68, 0x3C32444D4953uLL, 0xE600000000000000)._rawBits;
      if (v69._rawBits < 0x10000)
      {
        v69._rawBits |= 3;
      }

      if (v69._rawBits >> 16 || (v70._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
      {
        countAndFlagsBits = specialized static String._copying(_:)(v69._rawBits, v70, 0x3C32444D4953uLL, 0xE600000000000000);
        object = v72;
        0xE600000000000000;
      }

      if ((object & 0x2000000000000000) != 0)
      {
        object;
        goto LABEL_45;
      }
    }
  }

  v44 = v93;
  v42 = &v378;
  _StringGuts.reserveCapacity(_:)(v41 + 15);
  v94 = countAndFlagsBits;
  while (1)
  {
    v95 = specialized Collection.subscript.getter(v94, v17, v41);
    v99 = v378._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v378._object & 0x2000000000000000) != 0)
    {
      v99 = (v378._object >> 56) & 0xF;
    }

    v53 = __OFADD__(v99, v41);
    v100 = v99 + v41;
    if (v53)
    {
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
      goto LABEL_277;
    }

    v101 = v95;
    if (__OFADD__(v100, 3))
    {
      goto LABEL_275;
    }

    object = v96;
    v102 = v97;
    v103 = v98;
    _StringGuts.reserveCapacity(_:)(v100 + 3);
    v104 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v101, object, v102, v103);
    v106 = v105;
    v42 = v378._object & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v104, v105, ((v378._object & 0xFFFFFFFFFFFFFFFLL) + (*((v378._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL) + 32));
    v107 = *(v42 + 24) & 0xFFFFFFFFFFFFLL;
    if (__OFADD__(v107, v106))
    {
      goto LABEL_276;
    }

    __StringStorage._updateCountAndFlags(newCount:newIsASCII:)(v107 + v106, 0);
    v378._countAndFlagsBits = *(v42 + 24);
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v378._countAndFlagsBits);
    v108 = specialized Collection.subscript.getter(v44, v17, v41);
    v17 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v108, v109, v110, v111);
    v41 = v112;
    if ((validateUTF8(_:)(v17, v112) & 0x8000000000000000) == 0)
    {
      break;
    }

    v44 = v113;
    if (!v41)
    {
      goto LABEL_115;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(v17, v41, 0);
LABEL_115:
  v41 = v378._object;
  v2 = v378._countAndFlagsBits;
LABEL_133:
  v17 = v384;
  v42 = v385;
  v137 = HIBYTE(v385) & 0xF;
  object = v384 & 0xFFFFFFFFFFFFLL;
  if ((v385 & 0x2000000000000000) != 0)
  {
    countAndFlagsBits = HIBYTE(v385) & 0xF;
  }

  else
  {
    countAndFlagsBits = v384 & 0xFFFFFFFFFFFFLL;
  }

  if (countAndFlagsBits || (v384 & ~v385 & 0x2000000000000000) != 0)
  {
    v369 = v5;
    v5 = (v41 & 0x2000000000000000) == 0;
    v44 = HIBYTE(v41) & 0xF;
    if ((v385 & 0x2000000000000000) != 0)
    {
      if ((v41 & 0x2000000000000000) != 0)
      {
        goto LABEL_171;
      }

      v138 = v2 & 0xFFFFFFFFFFFFLL;
      v5 = 1;
    }

    else
    {
      v138 = v2 & 0xFFFFFFFFFFFFLL;
      v13 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) != 0)
      {
        goto LABEL_143;
      }
    }

    v13 = v138;
    goto LABEL_143;
  }

  v385;
  v384 = v2;
  v385 = v41;
LABEL_196:
  v173 = v377;
  v175 = v375;
  v174 = v376;
  v176 = v385;
  v177 = HIBYTE(v385) & 0xF;
  if ((v385 & 0x2000000000000000) == 0)
  {
    v177 = v384 & 0xFFFFFFFFFFFFLL;
  }

  if (v177 || (v384 & ~v385 & 0x2000000000000000) != 0)
  {
    if ((v385 & 0x2000000000000000) != 0 && (v178 = specialized _SmallString.init(_:appending:)(v384, v385, 0x283EuLL, 0xE200000000000000), (v180 & 1) == 0))
    {
      v189 = v178;
      v190 = v179;
      v176;
      0xE200000000000000;
      v384 = v189;
      v385 = v190;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v181, v182, v183, v184, v185, v186, v187, v188);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v385;
    v384 = 10302;
    v385 = 0xE200000000000000;
  }

  v191 = *(v372 + 24);
  swift_getAssociatedTypeWitness(255, v191, v173, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v193 = v192;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v191, v173, v192, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v195 = *(AssociatedConformanceWitness + 56);
  v196 = swift_checkMetadataState(0, v193);
  v197 = v373;
  v195(0, v196, AssociatedConformanceWitness);
  v379 = v173;
  v198 = __swift_allocate_boxed_opaque_existential_0Tm(&v378);
  memcpy(v198, v197, v174);
  v199 = v379;
  v200 = __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
  DynamicType = swift_getDynamicType(v200, v199, 1);
  LODWORD(v199) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v378._countAndFlagsBits);
  if (v199)
  {
    v202 = v374;
    memcpy(v374, v197, v174);
    v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v378, v202, v173, v203, 7uLL, v204, v205, v206, v361);
    goto LABEL_207;
  }

  v221 = v370;
  memcpy(v370, v197, v174);
  if ((swift_dynamicCast(&v378, v221, v173, &type metadata for String, 6uLL, v222, v223, v224, v361) & 1) == 0)
  {
    v248 = v367;
    memcpy(v367, v197, v174);
    v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v381, v248, v173, v249, 6uLL, v250, v251, v252, v361))
    {
      _ss9CodingKey_pWOb_0(&v381, &v378);
      v253 = v379;
      v254 = v380;
      __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
      (*(v254 + 8))(&v384, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v253, v254);
    }

    else
    {
      v383 = 0;
      v381 = 0u;
      v382 = 0u;
      outlined destroy of _HasContiguousBytes?(&v381, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v306 = v365;
      memcpy(v365, v197, v174);
      v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v381, v306, v173, v307, 6uLL, v308, v309, v310, v361))
      {
        _ss9CodingKey_pWOb_0(&v381, &v378);
        v311 = v379;
        v312 = v380;
        __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
        v209 = (*(v312 + 8))(v311, v312);
      }

      else
      {
        v383 = 0;
        v381 = 0u;
        v382 = 0u;
        outlined destroy of _HasContiguousBytes?(&v381, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v322 = v363;
        memcpy(v363, v197, v174);
        v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v381, v322, v173, v323, 6uLL, v324, v325, v326, v361))
        {
          v383 = 0;
          v381 = 0u;
          v382 = 0u;
          outlined destroy of _HasContiguousBytes?(&v381, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v382 + 1) = v173;
          v333 = __swift_allocate_boxed_opaque_existential_0Tm(&v381);
          memcpy(v333, v197, v174);
          Mirror.init(reflecting:)(&v381, &v378);
          v334 = v378._object;
          v335 = v380;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v197, &v378, &v384, 0, v173, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v335;
          v334;
          goto LABEL_220;
        }

        _ss9CodingKey_pWOb_0(&v381, &v378);
LABEL_207:
        v207 = v379;
        v208 = v380;
        __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
        v209 = (*(v208 + 8))(v207, v208);
      }

      v219 = v210;
      v220 = HIBYTE(v385) & 0xF;
      if ((v385 & 0x2000000000000000) == 0)
      {
        v220 = v384 & 0xFFFFFFFFFFFFLL;
      }

      if (v220 || (v384 & ~v385 & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v209, v210, v211, v212, v213, v214, v215, v216, v217, v218);
        v219;
      }

      else
      {
        v320 = v209;
        v385;
        v384 = v320;
        v385 = v219;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v378._countAndFlagsBits);
    goto LABEL_220;
  }

  v233 = v378._object;
  v234 = HIBYTE(v385) & 0xF;
  if ((v385 & 0x2000000000000000) == 0)
  {
    v234 = v384 & 0xFFFFFFFFFFFFLL;
  }

  if (v234 || (v384 & ~v385 & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v378._countAndFlagsBits, v378._object, v225, v226, v227, v228, v229, v230, v231, v232);
    v233;
  }

  else
  {
    v332 = v378._countAndFlagsBits;
    v385;
    v384 = v332;
    v385 = v233;
  }

LABEL_220:
  v235 = v385;
  v236 = HIBYTE(v385) & 0xF;
  if ((v385 & 0x2000000000000000) == 0)
  {
    v236 = v384 & 0xFFFFFFFFFFFFLL;
  }

  if (v236 || (v384 & ~v385 & 0x2000000000000000) != 0)
  {
    if ((v385 & 0x2000000000000000) != 0 && (v237 = specialized _SmallString.init(_:appending:)(v384, v385, 0x202CuLL, 0xE200000000000000), (v239 & 1) == 0))
    {
      v255 = v237;
      v256 = v238;
      v235;
      0xE200000000000000;
      v384 = v255;
      v385 = v256;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v240, v241, v242, v243, v244, v245, v246, v247);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v385;
    v384 = 8236;
    v385 = 0xE200000000000000;
  }

  v195(1, v196, AssociatedConformanceWitness);
  v379 = v173;
  v257 = __swift_allocate_boxed_opaque_existential_0Tm(&v378);
  memcpy(v257, v175, v174);
  v258 = v379;
  v259 = __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
  v260 = swift_getDynamicType(v259, v258, 1);
  LODWORD(v258) = swift_isOptionalType(v260);
  __swift_destroy_boxed_opaque_existential_1Tm(&v378._countAndFlagsBits);
  if (v258)
  {
    v261 = v374;
    memcpy(v374, v175, v174);
    v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v378, v261, v173, v262, 7uLL, v263, v264, v265, v361);
    goto LABEL_233;
  }

  v280 = v371;
  memcpy(v371, v175, v174);
  if (swift_dynamicCast(&v378, v280, v173, &type metadata for String, 6uLL, v281, v282, v283, v361))
  {
    v284 = v378._object;
    String.write(_:)(v378);
    v284;
    goto LABEL_242;
  }

  v298 = v368;
  memcpy(v368, v175, v174);
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v381, v298, v173, v299, 6uLL, v300, v301, v302, v361))
  {
    _ss9CodingKey_pWOb_0(&v381, &v378);
    v303 = v379;
    v304 = v380;
    __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
    (*(v304 + 8))(&v384, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v303, v304);
LABEL_239:
    __swift_destroy_boxed_opaque_existential_1Tm(&v378._countAndFlagsBits);
    goto LABEL_242;
  }

  v383 = 0;
  v381 = 0u;
  v382 = 0u;
  outlined destroy of _HasContiguousBytes?(&v381, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v313 = v366;
  memcpy(v366, v175, v174);
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v381, v313, v173, v314, 6uLL, v315, v316, v317, v361))
  {
    _ss9CodingKey_pWOb_0(&v381, &v378);
    v318 = v379;
    v319 = v380;
    __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
    v268 = (*(v319 + 8))(v318, v319);
LABEL_234:
    v278 = v269;
    v279 = HIBYTE(v385) & 0xF;
    if ((v385 & 0x2000000000000000) == 0)
    {
      v279 = v384 & 0xFFFFFFFFFFFFLL;
    }

    if (v279 || (v384 & ~v385 & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v268, v269, v270, v271, v272, v273, v274, v275, v276, v277);
      v278;
    }

    else
    {
      v321 = v268;
      v385;
      v384 = v321;
      v385 = v278;
    }

    goto LABEL_239;
  }

  v383 = 0;
  v381 = 0u;
  v382 = 0u;
  outlined destroy of _HasContiguousBytes?(&v381, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v327 = v364;
  memcpy(v364, v175, v174);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v381, v327, v173, v328, 6uLL, v329, v330, v331, v361))
  {
    _ss9CodingKey_pWOb_0(&v381, &v378);
LABEL_233:
    v266 = v379;
    v267 = v380;
    __swift_project_boxed_opaque_existential_0Tm(&v378, v379);
    v268 = (*(v267 + 8))(v266, v267);
    goto LABEL_234;
  }

  v383 = 0;
  v381 = 0u;
  v382 = 0u;
  outlined destroy of _HasContiguousBytes?(&v381, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v382 + 1) = v173;
  v336 = __swift_allocate_boxed_opaque_existential_0Tm(&v381);
  memcpy(v336, v175, v174);
  Mirror.init(reflecting:)(&v381, &v378);
  v337 = v378._object;
  v338 = v380;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v175, &v378, &v384, 0, v173, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v338;
  v337;
LABEL_242:
  v285 = v385;
  v286 = HIBYTE(v385) & 0xF;
  if ((v385 & 0x2000000000000000) == 0)
  {
    v286 = v384 & 0xFFFFFFFFFFFFLL;
  }

  if (v286 || (v384 & ~v385 & 0x2000000000000000) != 0)
  {
    if ((v385 & 0x2000000000000000) != 0 && (v287 = specialized _SmallString.init(_:appending:)(v384, v385, 0x29uLL, 0xE100000000000000), (v288 & 1) == 0))
    {
      v305 = v287;
      v285;
      0xE100000000000000;
      return v305;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v289, v290, v291, v292, v293, v294, v295, v296);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
      return v384;
    }
  }

  else
  {
    v385;
    return 41;
  }
}

uint64_t SIMD2<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v43 = a4;
  v44 = a6;
  v39 = a1;
  v47 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v15;
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v19 = v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v46 = v19;
  (*(AssociatedConformanceWitness + 48))(v19, AssociatedConformanceWitness);
  v42 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v37 = a3;
  v38 = v20;
  v22 = swift_getAssociatedConformanceWitness(a7, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v40 = *(v22 + 56);
  v23 = v40;
  v24 = swift_checkMetadataState(0, v21);
  v25 = v14;
  v23(0, v24, v22);
  v26 = *(v43 + 16);
  v27 = *(v44 + 8);
  v43 = *(v26 + 72);
  v44 = v27;
  v28 = v14;
  v29 = v41;
  (v43)(v28, a3);
  v36 = *(AssociatedConformanceWitness + 64);
  (v36)(v17, 0, v46);
  v30 = swift_checkMetadataState(0, v38);
  v31 = v39;
  v40(1, v30, v22);
  v32 = v37;
  (v43)(v25, v37, v44, v29, v26);
  v36(v17, 1, v46, AssociatedConformanceWitness);
  v34 = type metadata accessor for SIMD2(0, v32, v42, v33);
  return (*(*(v34 - 8) + 8))(v31, v34);
}

{
  v43 = a4;
  v44 = a6;
  v35 = a1;
  v37 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v15;
  MEMORY[0x1EEE9AC00](v12, v15);
  v39 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v42 = v18;
  (*(AssociatedConformanceWitness + 48))(v18, AssociatedConformanceWitness);
  v19 = a7;
  v38 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v21 = v20;
  v33 = a3;
  v22 = swift_getAssociatedConformanceWitness(v19, a3, v20, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  v36 = *(v22 + 56);
  v23 = v36;
  v24 = swift_checkMetadataState(0, v21);
  v23(0, v24, v22);
  v34 = *(v43 + 80);
  v25 = v39;
  v34(v14, a3, v44);
  v26 = *(AssociatedConformanceWitness + 64);
  (v26)(v25, 0, v42);
  v27 = swift_checkMetadataState(0, v21);
  v28 = v35;
  v36(1, v27, v22);
  v29 = v33;
  v34(v14, v33, v44);
  v26(v25, 1, v42, AssociatedConformanceWitness);
  v31 = type metadata accessor for SIMD2(0, v29, v38, v30);
  return (*(*(v31 - 8) + 8))(v28, v31);
}

uint64_t key path getter for SIMD4.subscript(_:) : <A>SIMD4<A>A(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD4.subscript(_:) : <A>SIMD4<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD4.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x9317uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x9317uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x9317uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9317uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD4.init(_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, Class *a5, swift *a6)
{
  v19 = a4;
  v11 = *(*(a5 - 1) + 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  swift_getAssociatedTypeWitness(0, v12, a5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a5, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v16 = *(AssociatedConformanceWitness + 64);
  v16(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  v16(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  v16(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v14, AssociatedConformanceWitness);
  memcpy(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v11);
  return (v16)(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), 3, v14, AssociatedConformanceWitness);
}

uint64_t (*SIMD4.x.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xDF93uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0xDF93uLL);
    v9 = swift_coroFrameAlloc(v8, 0xDF93uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(0, v15, AssociatedConformanceWitness);
  return SIMD4.x.modify;
}

uint64_t (*SIMD4.y.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x7F58uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x7F58uLL);
    v9 = swift_coroFrameAlloc(v8, 0x7F58uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(1, v15, AssociatedConformanceWitness);
  return SIMD4.y.modify;
}

uint64_t (*SIMD4.z.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xDD9uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0xDD9uLL);
    v9 = swift_coroFrameAlloc(v8, 0xDD9uLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(2, v15, AssociatedConformanceWitness);
  return SIMD4.z.modify;
}

void (*SIMD4.w.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x597BuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = *(a2 + 16);
  v8 = *(*(v7 - 1) + 8);
  v5[1] = v8;
  if (swift_coroFrameAlloc)
  {
    v5[2] = swift_coroFrameAlloc(v8, 0x597BuLL);
    v9 = swift_coroFrameAlloc(v8, 0x597BuLL);
  }

  else
  {
    v5[2] = malloc(v8);
    v9 = malloc(v8);
  }

  v6[3] = v9;
  v10 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v10, v7, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v12 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v10, v7, v11, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v6[4] = AssociatedConformanceWitness;
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_checkMetadataState(0, v12);
  v6[5] = v15;
  v14(3, v15, AssociatedConformanceWitness);
  return SIMD4.w.modify;
}

uint64_t SIMD4.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD4(0, a3, a4, v11);
  specialized SIMD4.lowHalf.setter(a1, v12, 0, 1);
  v14 = type metadata accessor for SIMD2(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD4.lowHalf.setter(a2, v12, 2, 3);

  return v16(a2, v14);
}

uint64_t SIMD4.lowHalf.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  specialized SIMD4.lowHalf.setter(a1, a2, a3, a4);
  v7 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void (*SIMD4.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x9195uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x9195uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9195uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.lowHalf.getter(a2, v11);
  return SIMD4.lowHalf.modify;
}

void (*SIMD4.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x4492uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x4492uLL);
    v11 = swift_coroFrameAlloc(v10, 0x4492uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.highHalf.getter(a2, v11);
  return SIMD4.highHalf.modify;
}

void SIMD4.lowHalf.modify(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    specialized SIMD4.lowHalf.setter(v5, v9, a3, a4);
    v12 = *(v8 + 8);
    v12(v5, v7);
    v12(v6, v7);
  }

  else
  {
    specialized SIMD4.lowHalf.setter((*a1)[5], v9, a3, a4);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

void (*SIMD4.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x9242uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x9242uLL);
    v11 = swift_coroFrameAlloc(v10, 0x9242uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.evenHalf.getter(a2, v11);
  return SIMD4.evenHalf.modify;
}

uint64_t SIMD4.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a2;
  v24 = a3;
  v22 = a4;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD2Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD2Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v13 = v12;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v21 = *(v14 + 56);
  v15 = v21;
  v16 = swift_checkMetadataState(0, v13);
  v15(v23, v16, v14);
  v17 = *(AssociatedConformanceWitness + 64);
  v17(v7, 0, v10, AssociatedConformanceWitness);
  v18 = swift_checkMetadataState(0, v13);
  v21(v24, v18, v14);
  return v17(v7, 1, v10, AssociatedConformanceWitness);
}

void (*SIMD4.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x3B85uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD2(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x3B85uLL);
    v11 = swift_coroFrameAlloc(v10, 0x3B85uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD4.oddHalf.getter(a2, v11);
  return SIMD4.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD4<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD4<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD4<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x76D3uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x76D3uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x76D3uLL);
    v11 = swift_coroFrameAlloc(v10, 0x76D3uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 4)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD4<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD4<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD4<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD4<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD4<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD4<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD4<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v23[1] = v23 - v7;
  v8 = 0;
  v9 = 1;
  v10 = v23 - v7;
  do
  {
    if (v9)
    {
      v11 = *(v27 + 24);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
      v13 = v12;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
      v15 = *(AssociatedConformanceWitness + 56);
      v16 = swift_checkMetadataState(0, v13);
      v15(v8, v16, AssociatedConformanceWitness);
      v17 = v24;
      v15(v8, v16, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v19 = v18;
      v20 = swift_getAssociatedConformanceWitness(v11, v3, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v21 = swift_getAssociatedConformanceWitness(v20, v19, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v9 = (*(*(v21 + 8) + 8))(v10, v17, v3);
    }

    else
    {
      v9 = 0;
    }

    ++v8;
  }

  while (v8 != 4);
  return v9 & 1;
}

uint64_t SIMD4<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a6;
  v69 = a4;
  v62 = a1;
  v71 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v70 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v20 = *(AssociatedConformanceWitness + 48);
  v72 = v18;
  v21 = AssociatedConformanceWitness;
  v20(v18);
  v57 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v23 = v22;
  v61 = v22;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v63 = *(v24 + 56);
  v25 = v63;
  v64 = v24 + 56;
  v26 = swift_checkMetadataState(0, v23);
  v27 = v70;
  v67 = v24;
  v25(0, v26, v24);
  v28 = *(v69 + 8);
  v59 = a2;
  v60 = v28;
  v68 = *(v28 + 96);
  v69 = v28 + 96;
  v30 = v27;
  v56 = *(v66 + 8);
  v29 = v56;
  v68(v27, a3, v56, a2, v28);
  v58 = v21;
  v65 = *(v21 + 64);
  v66 = v21 + 64;
  v31 = v16;
  v65(v16, 0, v72, v21);
  v32 = v61;
  v33 = swift_checkMetadataState(0, v61);
  v34 = v24;
  v35 = v63;
  v63(1, v33, v34);
  v55 = a3;
  v36 = v29;
  v37 = v60;
  (v68)(v30, a3, v36);
  v38 = v72;
  v39 = v58;
  v65(v31, 1, v72, v58);
  v40 = swift_checkMetadataState(0, v32);
  v41 = v70;
  v35(2, v40, v67);
  v42 = a3;
  v43 = v56;
  v44 = v59;
  v45 = v68;
  v68(v41, v42, v56, v59, v37);
  v46 = v39;
  v47 = v65;
  v65(v31, 2, v38, v46);
  v48 = swift_checkMetadataState(0, v61);
  v49 = v62;
  v63(3, v48, v67);
  v50 = v41;
  v51 = v55;
  v45(v50, v55, v43, v44, v60);
  v47(v31, 3, v72, v58);
  v53 = type metadata accessor for SIMD4(0, v51, v57, v52);
  return (*(*(v53 - 8) + 8))(v49, v53);
}

uint64_t SIMD4<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a6;
  v69 = a4;
  v62 = a1;
  v71 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v70 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v20 = *(AssociatedConformanceWitness + 48);
  v72 = v18;
  v21 = AssociatedConformanceWitness;
  v20(v18);
  v57 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v23 = v22;
  v61 = v22;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v63 = *(v24 + 56);
  v25 = v63;
  v64 = v24 + 56;
  v26 = swift_checkMetadataState(0, v23);
  v27 = v70;
  v67 = v24;
  v25(0, v26, v24);
  v28 = *(v69 + 8);
  v59 = a2;
  v60 = v28;
  v68 = *(v28 + 104);
  v69 = v28 + 104;
  v30 = v27;
  v56 = *(v66 + 8);
  v29 = v56;
  v68(v27, a3, v56, a2, v28);
  v58 = v21;
  v65 = *(v21 + 64);
  v66 = v21 + 64;
  v31 = v16;
  v65(v16, 0, v72, v21);
  v32 = v61;
  v33 = swift_checkMetadataState(0, v61);
  v34 = v24;
  v35 = v63;
  v63(1, v33, v34);
  v55 = a3;
  v36 = v29;
  v37 = v60;
  (v68)(v30, a3, v36);
  v38 = v72;
  v39 = v58;
  v65(v31, 1, v72, v58);
  v40 = swift_checkMetadataState(0, v32);
  v41 = v70;
  v35(2, v40, v67);
  v42 = a3;
  v43 = v56;
  v44 = v59;
  v45 = v68;
  v68(v41, v42, v56, v59, v37);
  v46 = v39;
  v47 = v65;
  v65(v31, 2, v38, v46);
  v48 = swift_checkMetadataState(0, v61);
  v49 = v62;
  v63(3, v48, v67);
  v50 = v41;
  v51 = v55;
  v45(v50, v55, v43, v44, v60);
  v47(v31, 3, v72, v58);
  v53 = type metadata accessor for SIMD4(0, v51, v57, v52);
  return (*(*(v53 - 8) + 8))(v49, v53);
}

uint64_t SIMD4<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a5;
  v49 = a7;
  v46 = a2;
  v51 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v24, v23, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v26 = v25;
  v47 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v25, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v28 = *(AssociatedConformanceWitness + 48);
  v45 = a9;
  v43 = v26;
  v28(v26, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v39 = a8;
  v50 = a4;
  v42 = v29;
  v30 = swift_getAssociatedConformanceWitness(a8, a4, v29, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v31 = 0;
  v40 = *(v30 + 56);
  v41 = v30;
  do
  {
    v32 = swift_checkMetadataState(0, v42);
    v40(v31, v32, v41);
    v33 = v49;
    v34 = v50;
    (*(*(v49 + 16) + 304))(v46, v50);
    (*(*(v48 + 8) + 80))(v19, v34, v33);
    (*(AssociatedConformanceWitness + 64))(v22, v31++, v43, AssociatedConformanceWitness);
  }

  while (v31 != 4);
  v36 = type metadata accessor for SIMD4(0, v50, v39, v35);
  return (*(*(v36 - 8) + 8))(v51, v36);
}

uint64_t SIMD4.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v505 = a1;
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 1) + 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v496 = &v488 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v500 = &v488 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v504 = &v488 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v509 = &v488 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v491 = &v488 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v495 = &v488 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v499 = &v488 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v503 = &v488 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v508 = &v488 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v490 = &v488 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v494 = &v488 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v498 = &v488 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v502 = &v488 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v507 = &v488 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v489 = &v488 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v493 = &v488 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v497 = &v488 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54, v56);
  v501 = &v488 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v510 = &v488 - v61;
  MEMORY[0x1EEE9AC00](v60, v62);
  v506 = &v488 - v63;
  v64 = _StringGuts.init(_initialCapacity:)(25);
  countAndFlagsBits = v64;
  v67 = v65;
  v517._countAndFlagsBits = v64;
  v517._object = v65;
  v68 = HIBYTE(v65) & 0xF;
  v69 = v64 & 0xFFFFFFFFFFFFLL;
  if ((v65 & 0x2000000000000000) != 0)
  {
    v70 = HIBYTE(v65) & 0xF;
  }

  else
  {
    v70 = v64 & 0xFFFFFFFFFFFFLL;
  }

  v492 = &v488 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v70 && (v64 & ~v65 & 0x2000000000000000) == 0)
  {
    v517._countAndFlagsBits = 0x3C34444D4953;
    v517._object = 0xE600000000000000;
    goto LABEL_35;
  }

  if ((v65 & 0x2000000000000000) != 0)
  {
    v71 = specialized _SmallString.init(_:appending:)(v64, v65, 0x3C34444D4953uLL, 0xE600000000000000);
    if ((v91 & 1) == 0)
    {
LABEL_33:
      v93 = v71;
      v94 = v72;
      v67;
      0xE600000000000000;
      v517._countAndFlagsBits = v93;
      v517._object = v94;
      goto LABEL_36;
    }

    v71 = 0xE600000000000000;
    if ((v67 & 0x1000000000000000) == 0)
    {
      LOBYTE(v74) = 1;
      v92 = __OFADD__(v68, 6);
      v75 = v68 + 6;
      if (!v92)
      {
        goto LABEL_9;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

  else
  {
    v71 = 0xE600000000000000;
    if ((v67 & 0x1000000000000000) == 0)
    {
      LOBYTE(v74) = 1;
      v75 = v69 + 6;
      if (!__OFADD__(v69, 6))
      {
        goto LABEL_9;
      }

      goto LABEL_32;
    }
  }

  v71 = String.UTF8View._foreignCount()();
  LOBYTE(v74) = 0;
  v75 = v71 + 6;
  if (__OFADD__(v71, 6))
  {
    goto LABEL_32;
  }

LABEL_9:
  if ((countAndFlagsBits & ~v67 & 0x2000000000000000) != 0 && swift_isUniquelyReferenced_nonNull_native(v67 & 0xFFFFFFFFFFFFFFFLL))
  {
    v76 = _StringGuts.nativeUnusedCapacity.getter(countAndFlagsBits, v67);
    if (v77)
    {
LABEL_286:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    if (v75 > 15 || (v67 & 0x2000000000000000) == 0 && v76 > 5)
    {
LABEL_15:
      _StringGuts.prepareForAppendInPlace(totalCount:otherUTF8Count:)(v75, 6);
      v511 = xmmword_18071DFE0;
      closure #1 in _StringGuts.append(_:)(&v511, 6uLL, &v517, 1);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
      goto LABEL_36;
    }
  }

  else if (v75 > 15)
  {
    goto LABEL_15;
  }

  if ((v67 & 0x2000000000000000) != 0)
  {
    object = v67;
    goto LABEL_19;
  }

  while (2)
  {
    if (v74)
    {
      if ((countAndFlagsBits & 0x1000000000000000) != 0)
      {
        v481 = ((v67 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v481 = _StringObject.sharedUTF8.getter(countAndFlagsBits, v67);
        v69 = v487;
      }

      closure #1 in _StringGuts._convertedToSmall()(v481, v69, &v511, v73);
      object = v511._object;
      countAndFlagsBits = v511._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = _StringGuts._foreignConvertedToSmall()(countAndFlagsBits, v67);
      object = v484;
    }

LABEL_19:
    v79 = 0x3C34444D4953;
    v69 = 0xE600000000000000;
    0xE600000000000000;
    v80._rawBits = 1;
    v81._rawBits = 393217;
    v82._rawBits = _StringGuts.validateScalarRange(_:)(v80, v81, 0x3C34444D4953uLL, 0xE600000000000000)._rawBits;
    if (v82._rawBits < 0x10000)
    {
      v82._rawBits |= 3;
    }

    if (v82._rawBits >> 16 || (v83._rawBits & 0xFFFFFFFFFFFF0000) != 0x60000)
    {
      v79 = specialized static String._copying(_:)(v82._rawBits, v83, 0x3C34444D4953uLL, 0xE600000000000000);
      v69 = v85;
      0xE600000000000000;
    }

    if ((v69 & 0x2000000000000000) != 0)
    {
      v69;
    }

    else if ((v69 & 0x1000000000000000) != 0)
    {
      v79 = _StringGuts._foreignConvertedToSmall()(v79, v69);
      v486 = v485;
      v69;
      v69 = v486;
    }

    else
    {
      if ((v79 & 0x1000000000000000) != 0)
      {
        v482 = ((v69 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v483 = v79 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v482 = _StringObject.sharedUTF8.getter(v79, v69);
      }

      closure #1 in _StringGuts._convertedToSmall()(v482, v483, &v511, v84);
      v69;
      v69 = v511._object;
      v79 = v511._countAndFlagsBits;
    }

    v86 = specialized _SmallString.init(_:appending:)(countAndFlagsBits, object, v79, v69);
    if (v88)
    {
      goto LABEL_286;
    }

    v89 = v86;
    v90 = v87;
    swift_bridgeObjectRelease_n(0xE600000000000000, 2);
    v517._countAndFlagsBits = v89;
    v517._object = v90;
LABEL_35:
    v67;
LABEL_36:
    TypeName = swift_getTypeName(v2, 0);
    if (v96 < 0)
    {
      _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
    }

    countAndFlagsBits = TypeName;
    v97 = v96;
    if (_allASCII(_:)(TypeName, v96))
    {
      v99 = 1;
LABEL_39:
      if (!v97)
      {
LABEL_85:
        v101 = 0;
        v100 = 0xE000000000000000;
        goto LABEL_119;
      }

      if (v97 > 15)
      {
        v100 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(countAndFlagsBits, v97, v97, v99 & 1);
        v101 = *(v100 + 24);
        goto LABEL_119;
      }

      v139 = v97 - 8;
      v140 = 8;
      if (v97 < 8)
      {
        v140 = v97;
      }

      if (v97 >= 4)
      {
        v142 = v140 & 0xC;
        v98.i32[0] = *countAndFlagsBits;
        v143 = vmovl_u16(*&vmovl_u8(v98));
        v144.i64[0] = v143.u32[0];
        v144.i64[1] = v143.u32[1];
        v145.i64[0] = 255;
        v145.i64[1] = 255;
        v146 = vandq_s8(v144, v145);
        v144.i64[0] = v143.u32[2];
        v144.i64[1] = v143.u32[3];
        v147 = vshlq_u64(vandq_s8(v144, v145), xmmword_18071DBA0);
        v148.i32[1] = 0;
        v149 = vshlq_u64(v146, xmmword_18071DBB0);
        if (v142 != 4)
        {
          v148.i32[0] = *(countAndFlagsBits + 4);
          v150 = vmovl_u16(*&vmovl_u8(v148));
          v151.i64[0] = v150.u32[2];
          v151.i64[1] = v150.u32[3];
          v152 = vandq_s8(v151, v145);
          v151.i64[0] = v150.u32[0];
          v151.i64[1] = v150.u32[1];
          v147 = vorrq_s8(vshlq_u64(v152, xmmword_18071DBD0), v147);
          v149 = vorrq_s8(vshlq_u64(vandq_s8(v151, v145), xmmword_18071DBC0), v149);
        }

        v153 = vorrq_s8(v149, v147);
        v101 = vorr_s8(*v153.i8, *&vextq_s8(v153, v153, 8uLL));
        if (v140 != v142)
        {
          v141 = 8 * v142;
          goto LABEL_109;
        }
      }

      else
      {
        v101 = 0;
        v141 = 0;
        v142 = 0;
LABEL_109:
        v154 = v140 - v142;
        v155 = (countAndFlagsBits + v142);
        do
        {
          v156 = *v155++;
          v101 |= v156 << (v141 & 0x38);
          v141 += 8;
          --v154;
        }

        while (v154);
      }

      if (v97 < 9)
      {
        v157 = 0;
      }

      else
      {
        v157 = 0;
        v158 = 0;
        v159 = (countAndFlagsBits + 8);
        do
        {
          v160 = *v159++;
          v157 |= v160 << v158;
          v158 += 8;
          --v139;
        }

        while (v139);
      }

      v161 = 0xA000000000000000;
      if (((v157 | v101) & 0x8080808080808080) == 0)
      {
        v161 = 0xE000000000000000;
      }

      v100 = v161 | (v97 << 56) | v157;
      goto LABEL_119;
    }

    if (!v97)
    {
      goto LABEL_85;
    }

    v67 = 0;
    v102 = (countAndFlagsBits + v97);
    v99 = 1;
    v103 = countAndFlagsBits;
    v104 = countAndFlagsBits;
    while (1)
    {
      v106 = *v104++;
      v105 = v106;
      if ((v106 & 0x80000000) == 0)
      {
        v107 = 1;
        goto LABEL_46;
      }

      if ((v105 + 11) <= 0xCCu)
      {
        LOBYTE(v511._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v105);
        goto LABEL_87;
      }

      if (v105 > 0xDFu)
      {
        break;
      }

      if (v104 == v102 || (*v104 & 0xC0) != 0x80)
      {
LABEL_265:
        v480 = 4;
        goto LABEL_266;
      }

      v99 = 0;
      v104 = v103 + 2;
      v107 = 2;
LABEL_46:
      v67 += v107;
      v103 = v104;
      if (v104 == v102)
      {
        goto LABEL_39;
      }
    }

    if (v105 == 224)
    {
      if (v104 == v102)
      {
        goto LABEL_265;
      }

      if (v103[1] - 192 < 0xFFFFFFE0)
      {
        goto LABEL_270;
      }

      goto LABEL_70;
    }

    if (v105 <= 0xECu)
    {
      goto LABEL_68;
    }

    if (v105 == 237)
    {
      if (v104 == v102)
      {
        goto LABEL_265;
      }

      v108 = v103[1];
      if (v108 > 0x9F || (v108 & 0xC0) != 0x80)
      {
        v480 = 1;
        goto LABEL_266;
      }

      goto LABEL_70;
    }

    if (v105 <= 0xEFu)
    {
LABEL_68:
      if (v104 == v102 || (v103[1] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

LABEL_70:
      if (v103 + 2 == v102 || (v103[2] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

      v99 = 0;
      v104 = v103 + 3;
      v107 = 3;
      goto LABEL_46;
    }

    if (v105 == 240)
    {
      if (v104 == v102)
      {
        goto LABEL_265;
      }

      if (v103[1] - 192 < 0xFFFFFFD0)
      {
LABEL_270:
        v480 = 3;
        goto LABEL_266;
      }

      goto LABEL_80;
    }

    if (v105 <= 0xF3u)
    {
      if (v104 == v102 || (v103[1] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

      goto LABEL_80;
    }

    if (v104 == v102)
    {
      goto LABEL_265;
    }

    v109 = v103[1];
    if (v109 <= 0x8F && (v109 & 0xC0) == 0x80)
    {
LABEL_80:
      if (v103 + 2 == v102 || (v103[2] & 0xC0) != 0x80 || v103 + 3 == v102 || (v103[3] & 0xC0) != 0x80)
      {
        goto LABEL_265;
      }

      v99 = 0;
      v104 = v103 + 4;
      v107 = 4;
      goto LABEL_46;
    }

    v480 = 2;
LABEL_266:
    LOBYTE(v511._countAndFlagsBits) = v480;
LABEL_87:
    swift_willThrowTypedImpl(&v511, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
    v110 = specialized Collection.subscript.getter(v67, countAndFlagsBits, v97);
    v74 = findInvalidRange #1 (_:) in validateUTF8(_:)(v110, v111, v112, v113);
    v511._countAndFlagsBits = 0;
    v511._object = 0xE000000000000000;
    if (__OFADD__(v97, 15))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v69 = v114;
  v488 = v3;
  v67 = &v511;
  _StringGuts.reserveCapacity(_:)(v97 + 15);
  v115 = v74;
  while (1)
  {
    v3 = v2;
    v116 = specialized Collection.subscript.getter(v115, countAndFlagsBits, v97);
    v120 = v511._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    if ((v511._object & 0x2000000000000000) != 0)
    {
      v120 = (v511._object >> 56) & 0xF;
    }

    v92 = __OFADD__(v120, v97);
    v121 = v120 + v97;
    if (v92)
    {
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
      goto LABEL_270;
    }

    v122 = v116;
    if (__OFADD__(v121, 3))
    {
      goto LABEL_268;
    }

    v2 = v117;
    v123 = v118;
    v124 = v119;
    _StringGuts.reserveCapacity(_:)(v121 + 3);
    v125 = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v122, v2, v123, v124);
    v127 = v126;
    v67 = v511._object & 0xFFFFFFFFFFFFFFFLL;
    specialized UnsafeMutablePointer.initialize(from:count:)(v125, v126, ((v511._object & 0xFFFFFFFFFFFFFFFLL) + 32 + (*((v511._object & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0xFFFFFFFFFFFFLL)));
    v128 = *(v67 + 24) & 0xFFFFFFFFFFFFLL;
    v129 = v128 + v127;
    if (__OFADD__(v128, v127))
    {
      goto LABEL_269;
    }

    v130 = v129 | 0x3000000000000000;
    *(v67 + 24) = v129 | 0x3000000000000000;
    *(v67 + 32 + (v129 & 0xFFFFFFFFFFFFLL)) = 0;
    if ((*(v67 + 16) & 0x8000000000000000) != 0)
    {
      v131 = __StringStorage._breadcrumbsAddress.getter();
      v132 = *v131;
      *v131 = 0;
      v132;
      v130 = *(v67 + 24);
    }

    v511._countAndFlagsBits = v130;
    specialized Unicode.Scalar.withUTF8CodeUnits<A>(_:)(0xFFFDu, &v511._countAndFlagsBits);
    v133 = specialized Collection.subscript.getter(v69, countAndFlagsBits, v97);
    countAndFlagsBits = _sSR8rebasingSRyxGs5SliceVyABG_tcfCs5UInt8V_Tt0g5Tm(v133, v134, v135, v136);
    v97 = v137;
    v2 = v3;
    if ((validateUTF8(_:)(countAndFlagsBits, v137) & 0x8000000000000000) == 0)
    {
      break;
    }

    v69 = v138;
    if (!v97)
    {
      goto LABEL_104;
    }
  }

  _StringGuts.appendInPlace(_:isASCII:)(countAndFlagsBits, v97, 0);
LABEL_104:
  v100 = v511._object;
  v101 = v511._countAndFlagsBits;
  v3 = v488;
LABEL_119:
  v162 = v505;
  v163 = v517._object;
  v164 = (v517._object >> 56) & 0xF;
  if ((v517._object & 0x2000000000000000) == 0)
  {
    v164 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v164 && (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) == 0)
  {
    v517._countAndFlagsBits = v101;
    v517._object = v100;
    v163;
    goto LABEL_131;
  }

  if ((v517._object & 0x2000000000000000) != 0)
  {
    if ((v100 & 0x2000000000000000) != 0)
    {
      v166 = specialized _SmallString.init(_:appending:)(v517._countAndFlagsBits, v517._object, v101, v100);
      if (v168)
      {
        goto LABEL_129;
      }

      v446 = v166;
      v447 = v167;
      v163;
      v100;
      v517._countAndFlagsBits = v446;
      v517._object = v447;
      goto LABEL_131;
    }

LABEL_127:
    v165 = v101 & 0xFFFFFFFFFFFFLL;
    goto LABEL_130;
  }

  if ((v100 & 0x2000000000000000) == 0)
  {
    goto LABEL_127;
  }

LABEL_129:
  v165 = HIBYTE(v100) & 0xF;
LABEL_130:
  v100;
  _StringGuts.append(_:)(v101, v100, 0, v165, v169, v170, v171, v172, v173, v174, v175, v176);
  swift_bridgeObjectRelease_n(v100, 2);
LABEL_131:
  v177 = v517._object;
  v178 = (v517._object >> 56) & 0xF;
  if ((v517._object & 0x2000000000000000) == 0)
  {
    v178 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v178 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
  {
    if ((v517._object & 0x2000000000000000) != 0 && (v179 = specialized _SmallString.init(_:appending:)(v517._countAndFlagsBits, v517._object, 0x283EuLL, 0xE200000000000000), (v181 & 1) == 0))
    {
      v190 = v179;
      v191 = v180;
      v177;
      0xE200000000000000;
      v517._countAndFlagsBits = v190;
      v517._object = v191;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v182, v183, v184, v185, v186, v187, v188, v189);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v517._countAndFlagsBits = 10302;
    v517._object = 0xE200000000000000;
    v177;
  }

  v192 = *(v162 + 24);
  swift_getAssociatedTypeWitness(255, v192, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v194 = v193;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v192, v2, v193, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v196 = *(AssociatedConformanceWitness + 56);
  v197 = swift_checkMetadataState(0, v194);
  v198 = v506;
  v196(0, v197, AssociatedConformanceWitness);
  v512 = v2;
  v199 = __swift_allocate_boxed_opaque_existential_0Tm(&v511);
  memcpy(v199, v198, v3);
  v200 = v512;
  v201 = __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
  DynamicType = swift_getDynamicType(v201, v200, 1);
  LODWORD(v200) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
  if (v200)
  {
    v203 = v510;
    memcpy(v510, v198, v3);
    v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v511, v203, v2, v204, 7uLL, v205, v206, v207, v488);
    goto LABEL_143;
  }

  v223 = v501;
  memcpy(v501, v198, v3);
  if ((swift_dynamicCast(&v511, v223, v2, &type metadata for String, 6uLL, v224, v225, v226, v488) & 1) == 0)
  {
    v252 = v497;
    memcpy(v497, v198, v3);
    v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v514, v252, v2, v253, 6uLL, v254, v255, v256, v488))
    {
      _ss9CodingKey_pWOb_0(&v514, &v511);
      v257 = v512;
      v258 = v513;
      __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
      (*(v258 + 8))(&v517, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v257, v258);
    }

    else
    {
      v516 = 0;
      v514 = 0u;
      v515 = 0u;
      outlined destroy of _HasContiguousBytes?(&v514, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v418 = v493;
      memcpy(v493, v198, v3);
      v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v514, v418, v2, v419, 6uLL, v420, v421, v422, v488))
      {
        _ss9CodingKey_pWOb_0(&v514, &v511);
        v423 = v512;
        v424 = v513;
        __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
        v210 = (*(v424 + 8))(v423, v424);
      }

      else
      {
        v516 = 0;
        v514 = 0u;
        v515 = 0u;
        outlined destroy of _HasContiguousBytes?(&v514, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v448 = v489;
        memcpy(v489, v198, v3);
        v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v514, v448, v2, v449, 6uLL, v450, v451, v452, v488))
        {
          v516 = 0;
          v514 = 0u;
          v515 = 0u;
          outlined destroy of _HasContiguousBytes?(&v514, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v515 + 1) = v2;
          v468 = __swift_allocate_boxed_opaque_existential_0Tm(&v514);
          memcpy(v468, v198, v3);
          Mirror.init(reflecting:)(&v514, &v511);
          v469 = v511._object;
          v470 = v513;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v198, &v511, &v517, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v470;
          v469;
          goto LABEL_158;
        }

        _ss9CodingKey_pWOb_0(&v514, &v511);
LABEL_143:
        v208 = v512;
        v209 = v513;
        __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
        v210 = (*(v209 + 8))(v208, v209);
      }

      v220 = v211;
      v221 = v517._object;
      v222 = (v517._object >> 56) & 0xF;
      if ((v517._object & 0x2000000000000000) == 0)
      {
        v222 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v222 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v210, v211, v212, v213, v214, v215, v216, v217, v218, v219);
      }

      else
      {
        v517._countAndFlagsBits = v210;
        v517._object = v211;
        v220 = v221;
      }

      v220;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
    goto LABEL_158;
  }

  v235 = v511._object;
  v236 = v517._object;
  v237 = (v517._object >> 56) & 0xF;
  if ((v517._object & 0x2000000000000000) == 0)
  {
    v237 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v237 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v511._countAndFlagsBits, v511._object, v227, v228, v229, v230, v231, v232, v233, v234);
    v238 = v235;
  }

  else
  {
    v517 = v511;
    v238 = v236;
  }

  v238;
LABEL_158:
  v239 = v517._object;
  v240 = (v517._object >> 56) & 0xF;
  if ((v517._object & 0x2000000000000000) == 0)
  {
    v240 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v240 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
  {
    if ((v517._object & 0x2000000000000000) != 0 && (v241 = specialized _SmallString.init(_:appending:)(v517._countAndFlagsBits, v517._object, 0x202CuLL, 0xE200000000000000), (v243 & 1) == 0))
    {
      v259 = v241;
      v260 = v242;
      v239;
      0xE200000000000000;
      v517._countAndFlagsBits = v259;
      v517._object = v260;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v244, v245, v246, v247, v248, v249, v250, v251);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v517._countAndFlagsBits = 8236;
    v517._object = 0xE200000000000000;
    v239;
  }

  v261 = v507;
  v196(1, v197, AssociatedConformanceWitness);
  v512 = v2;
  v262 = __swift_allocate_boxed_opaque_existential_0Tm(&v511);
  memcpy(v262, v261, v3);
  v263 = v512;
  v264 = __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
  v265 = swift_getDynamicType(v264, v263, 1);
  LODWORD(v263) = swift_isOptionalType(v265);
  __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
  if (v263)
  {
    v266 = v510;
    memcpy(v510, v261, v3);
    v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v511, v266, v2, v267, 7uLL, v268, v269, v270, v488);
    goto LABEL_171;
  }

  v286 = v502;
  memcpy(v502, v261, v3);
  if (swift_dynamicCast(&v511, v286, v2, &type metadata for String, 6uLL, v287, v288, v289, v488))
  {
    v290 = v511._object;
    String.write(_:)(v511);
    v290;
    goto LABEL_181;
  }

  v304 = v498;
  memcpy(v498, v261, v3);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v514, v304, v2, v305, 6uLL, v306, v307, v308, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
    v309 = v512;
    v310 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    (*(v310 + 8))(&v517, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v309, v310);
LABEL_178:
    __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
    goto LABEL_181;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v425 = v494;
  memcpy(v494, v261, v3);
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v514, v425, v2, v426, 6uLL, v427, v428, v429, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
    v430 = v512;
    v431 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    v273 = (*(v431 + 8))(v430, v431);
LABEL_172:
    v283 = v274;
    v284 = v517._object;
    v285 = (v517._object >> 56) & 0xF;
    if ((v517._object & 0x2000000000000000) == 0)
    {
      v285 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v285 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
    }

    else
    {
      v517._countAndFlagsBits = v273;
      v517._object = v274;
      v283 = v284;
    }

    v283;
    goto LABEL_178;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v453 = v490;
  memcpy(v490, v261, v3);
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v514, v453, v2, v454, 6uLL, v455, v456, v457, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
LABEL_171:
    v271 = v512;
    v272 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    v273 = (*(v272 + 8))(v271, v272);
    goto LABEL_172;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v515 + 1) = v2;
  v471 = __swift_allocate_boxed_opaque_existential_0Tm(&v514);
  memcpy(v471, v261, v3);
  Mirror.init(reflecting:)(&v514, &v511);
  v472 = v511._object;
  v473 = v513;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v261, &v511, &v517, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v473;
  v472;
LABEL_181:
  v291 = v517._object;
  v292 = (v517._object >> 56) & 0xF;
  if ((v517._object & 0x2000000000000000) == 0)
  {
    v292 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v292 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
  {
    if ((v517._object & 0x2000000000000000) != 0 && (v293 = specialized _SmallString.init(_:appending:)(v517._countAndFlagsBits, v517._object, 0x202CuLL, 0xE200000000000000), (v295 & 1) == 0))
    {
      v311 = v293;
      v312 = v294;
      v291;
      0xE200000000000000;
      v517._countAndFlagsBits = v311;
      v517._object = v312;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v296, v297, v298, v299, v300, v301, v302, v303);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v517._countAndFlagsBits = 8236;
    v517._object = 0xE200000000000000;
    v291;
  }

  v313 = v508;
  v196(2, v197, AssociatedConformanceWitness);
  v512 = v2;
  v314 = __swift_allocate_boxed_opaque_existential_0Tm(&v511);
  memcpy(v314, v313, v3);
  v315 = v512;
  v316 = __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
  v317 = swift_getDynamicType(v316, v315, 1);
  LODWORD(v315) = swift_isOptionalType(v317);
  __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
  if (v315)
  {
    v318 = v510;
    memcpy(v510, v313, v3);
    v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v511, v318, v2, v319, 7uLL, v320, v321, v322, v488);
    goto LABEL_194;
  }

  v338 = v503;
  memcpy(v503, v313, v3);
  if (swift_dynamicCast(&v511, v338, v2, &type metadata for String, 6uLL, v339, v340, v341, v488))
  {
    v342 = v511._object;
    String.write(_:)(v511);
    v342;
    goto LABEL_204;
  }

  v356 = v499;
  memcpy(v499, v313, v3);
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v514, v356, v2, v357, 6uLL, v358, v359, v360, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
    v361 = v512;
    v362 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    (*(v362 + 8))(&v517, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v361, v362);
LABEL_201:
    __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
    goto LABEL_204;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v432 = v495;
  memcpy(v495, v313, v3);
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v514, v432, v2, v433, 6uLL, v434, v435, v436, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
    v437 = v512;
    v438 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    v325 = (*(v438 + 8))(v437, v438);
LABEL_195:
    v335 = v326;
    v336 = v517._object;
    v337 = (v517._object >> 56) & 0xF;
    if ((v517._object & 0x2000000000000000) == 0)
    {
      v337 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v337 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v325, v326, v327, v328, v329, v330, v331, v332, v333, v334);
    }

    else
    {
      v517._countAndFlagsBits = v325;
      v517._object = v326;
      v335 = v336;
    }

    v335;
    goto LABEL_201;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v458 = v491;
  memcpy(v491, v313, v3);
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v514, v458, v2, v459, 6uLL, v460, v461, v462, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
LABEL_194:
    v323 = v512;
    v324 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    v325 = (*(v324 + 8))(v323, v324);
    goto LABEL_195;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v515 + 1) = v2;
  v474 = __swift_allocate_boxed_opaque_existential_0Tm(&v514);
  memcpy(v474, v313, v3);
  Mirror.init(reflecting:)(&v514, &v511);
  v475 = v511._object;
  v476 = v513;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v313, &v511, &v517, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v476;
  v475;
LABEL_204:
  v343 = v517._object;
  v344 = (v517._object >> 56) & 0xF;
  if ((v517._object & 0x2000000000000000) == 0)
  {
    v344 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v344 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
  {
    if ((v517._object & 0x2000000000000000) != 0 && (v345 = specialized _SmallString.init(_:appending:)(v517._countAndFlagsBits, v517._object, 0x202CuLL, 0xE200000000000000), (v347 & 1) == 0))
    {
      v363 = v345;
      v364 = v346;
      v343;
      0xE200000000000000;
      v517._countAndFlagsBits = v363;
      v517._object = v364;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v348, v349, v350, v351, v352, v353, v354, v355);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v517._countAndFlagsBits = 8236;
    v517._object = 0xE200000000000000;
    v343;
  }

  v365 = v509;
  v196(3, v197, AssociatedConformanceWitness);
  v512 = v2;
  v366 = __swift_allocate_boxed_opaque_existential_0Tm(&v511);
  memcpy(v366, v365, v3);
  v367 = v512;
  v368 = __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
  v369 = swift_getDynamicType(v368, v367, 1);
  LODWORD(v367) = swift_isOptionalType(v369);
  __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
  if (v367)
  {
    v370 = v510;
    memcpy(v510, v365, v3);
    v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v511, v370, v2, v371, 7uLL, v372, v373, v374, v488);
    goto LABEL_217;
  }

  v390 = v504;
  memcpy(v504, v365, v3);
  if (swift_dynamicCast(&v511, v390, v2, &type metadata for String, 6uLL, v391, v392, v393, v488))
  {
    v394 = v511._object;
    String.write(_:)(v511);
    v394;
    goto LABEL_227;
  }

  v408 = v500;
  memcpy(v500, v365, v3);
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v514, v408, v2, v409, 6uLL, v410, v411, v412, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
    v413 = v512;
    v414 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    (*(v414 + 8))(&v517, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v413, v414);
LABEL_224:
    __swift_destroy_boxed_opaque_existential_1Tm(&v511._countAndFlagsBits);
    goto LABEL_227;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v439 = v496;
  memcpy(v496, v365, v3);
  v440 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v514, v439, v2, v440, 6uLL, v441, v442, v443, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
    v444 = v512;
    v445 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    v377 = (*(v445 + 8))(v444, v445);
LABEL_218:
    v387 = v378;
    v388 = v517._object;
    v389 = (v517._object >> 56) & 0xF;
    if ((v517._object & 0x2000000000000000) == 0)
    {
      v389 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v389 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v377, v378, v379, v380, v381, v382, v383, v384, v385, v386);
    }

    else
    {
      v517._countAndFlagsBits = v377;
      v517._object = v378;
      v387 = v388;
    }

    v387;
    goto LABEL_224;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v463 = v492;
  memcpy(v492, v365, v3);
  v464 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v514, v463, v2, v464, 6uLL, v465, v466, v467, v488))
  {
    _ss9CodingKey_pWOb_0(&v514, &v511);
LABEL_217:
    v375 = v512;
    v376 = v513;
    __swift_project_boxed_opaque_existential_0Tm(&v511, v512);
    v377 = (*(v376 + 8))(v375, v376);
    goto LABEL_218;
  }

  v516 = 0;
  v514 = 0u;
  v515 = 0u;
  outlined destroy of _HasContiguousBytes?(&v514, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v515 + 1) = v2;
  v477 = __swift_allocate_boxed_opaque_existential_0Tm(&v514);
  memcpy(v477, v365, v3);
  Mirror.init(reflecting:)(&v514, &v511);
  v478 = v511._object;
  v479 = v513;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v365, &v511, &v517, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v479;
  v478;
LABEL_227:
  v395 = v517._object;
  v396 = (v517._object >> 56) & 0xF;
  if ((v517._object & 0x2000000000000000) == 0)
  {
    v396 = v517._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v396 || (v517._countAndFlagsBits & ~v517._object & 0x2000000000000000) != 0)
  {
    if ((v517._object & 0x2000000000000000) != 0 && (v397 = specialized _SmallString.init(_:appending:)(v517._countAndFlagsBits, v517._object, 0x29uLL, 0xE100000000000000), (v399 & 1) == 0))
    {
      v415 = v397;
      v416 = v398;
      v395;
      0xE100000000000000;
      v517._countAndFlagsBits = v415;
      v517._object = v416;
    }

    else
    {
      0xE100000000000000;
      _StringGuts.append(_:)(41, 0xE100000000000000, 0, 1, v400, v401, v402, v403, v404, v405, v406, v407);
      swift_bridgeObjectRelease_n(0xE100000000000000, 2);
    }
  }

  else
  {
    v517._countAndFlagsBits = 41;
    v517._object = 0xE100000000000000;
    v395;
  }

  return v517._countAndFlagsBits;
}

uint64_t SIMD4<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v66 = a6;
  v69 = a4;
  v62 = a1;
  v71 = a8;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v70 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v17, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v20 = *(AssociatedConformanceWitness + 48);
  v72 = v18;
  v21 = AssociatedConformanceWitness;
  v20(v18);
  v57 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v23 = v22;
  v61 = v22;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v63 = *(v24 + 56);
  v25 = v63;
  v64 = v24 + 56;
  v26 = swift_checkMetadataState(0, v23);
  v27 = v70;
  v67 = v24;
  v25(0, v26, v24);
  v28 = *(v69 + 16);
  v59 = a2;
  v60 = v28;
  v68 = *(v28 + 72);
  v69 = v28 + 72;
  v30 = v27;
  v56 = *(v66 + 8);
  v29 = v56;
  v68(v27, a3, v56, a2, v28);
  v58 = v21;
  v65 = *(v21 + 64);
  v66 = v21 + 64;
  v31 = v16;
  v65(v16, 0, v72, v21);
  v32 = v61;
  v33 = swift_checkMetadataState(0, v61);
  v34 = v24;
  v35 = v63;
  v63(1, v33, v34);
  v55 = a3;
  v36 = v29;
  v37 = v60;
  (v68)(v30, a3, v36);
  v38 = v72;
  v39 = v58;
  v65(v31, 1, v72, v58);
  v40 = swift_checkMetadataState(0, v32);
  v41 = v70;
  v35(2, v40, v67);
  v42 = a3;
  v43 = v56;
  v44 = v59;
  v45 = v68;
  v68(v41, v42, v56, v59, v37);
  v46 = v39;
  v47 = v65;
  v65(v31, 2, v38, v46);
  v48 = swift_checkMetadataState(0, v61);
  v49 = v62;
  v63(3, v48, v67);
  v50 = v41;
  v51 = v55;
  v45(v50, v55, v43, v44, v60);
  v47(v31, 3, v72, v58);
  v53 = type metadata accessor for SIMD4(0, v51, v57, v52);
  return (*(*(v53 - 8) + 8))(v49, v53);
}

{
  v63 = a6;
  v64 = a4;
  v56 = a8;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v16;
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v20 = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v62 = v20;
  (*(AssociatedConformanceWitness + 48))(v20, AssociatedConformanceWitness);
  v50 = a7;
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v22 = v21;
  v52 = v21;
  v53 = a3;
  v23 = swift_getAssociatedConformanceWitness(a7, a3, v21, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v54 = *(v23 + 56);
  v24 = v54;
  v55 = v23 + 56;
  v25 = swift_checkMetadataState(0, v22);
  v48 = a1;
  v57 = v23;
  v24(0, v25, v23);
  v26 = v63;
  v58 = *(v64 + 80);
  v59 = v64 + 80;
  v58(v15, a3, v63);
  v27 = v62;
  v49 = *(AssociatedConformanceWitness + 64);
  v51 = AssociatedConformanceWitness + 64;
  (v49)(v18, 0, v62);
  v28 = v52;
  v29 = swift_checkMetadataState(0, v52);
  v47 = v15;
  v30 = v54;
  v54(1, v29, v23);
  v31 = v53;
  v58(v15, v53, v26);
  v32 = v49;
  v49(v18, 1, v27, AssociatedConformanceWitness);
  v33 = swift_checkMetadataState(0, v28);
  v34 = v47;
  v35 = v48;
  v30(2, v33, v57);
  v36 = v34;
  v37 = v34;
  v38 = v31;
  v39 = v60;
  v40 = v58;
  (v58)(v36, v38, v63, v60, v64);
  v41 = AssociatedConformanceWitness;
  v32(v18, 2, v62, AssociatedConformanceWitness);
  v42 = swift_checkMetadataState(0, v52);
  v54(3, v42, v57);
  v43 = v53;
  v40(v37, v53, v63, v39, v64);
  v32(v18, 3, v62, v41);
  v45 = type metadata accessor for SIMD4(0, v43, v50, v44);
  return (*(*(v45 - 8) + 8))(v35, v45);
}

uint64_t key path getter for SIMD8.subscript(_:) : <A>SIMD8<A>A(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD8.subscript(_:) : <A>SIMD8<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD8.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0xE4uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0xE4uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0xE4uLL);
    v11 = swift_coroFrameAlloc(v10, 0xE4uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD8.init(_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, Class *a9, int **a10)
{
  v23 = a7;
  v24 = a8;
  v21 = a5;
  v22 = a6;
  v20 = a4;
  v13 = *(*(a9 - 1) + 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  swift_getAssociatedTypeWitness(0, a10, a9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a10, a9, v14, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v13);
  v17 = *(AssociatedConformanceWitness + 64);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 3, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 4, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 5, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v13);
  v17(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 6, v15, AssociatedConformanceWitness);
  memcpy(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v13);
  return (v17)(&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), 7, v15, AssociatedConformanceWitness);
}

uint64_t SIMD8.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD8(0, a3, a4, v11);
  specialized SIMD8.lowHalf.setter(a1, v12, 0, 1, 2, 3);
  v14 = type metadata accessor for SIMD4(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD8.lowHalf.setter(a2, v12, 4, 5, 6, 7);

  return v16(a2, v14);
}

uint64_t SIMD8.oddHalf.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  specialized SIMD8.lowHalf.setter(a1, a2, a3, a4, a5, a6);
  v9 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v8);
  v10 = *(*(v9 - 8) + 8);

  return v10(a1, v9);
}

void (*SIMD8.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x2603uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x2603uLL);
    v11 = swift_coroFrameAlloc(v10, 0x2603uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.lowHalf.getter(a2, v11);
  return SIMD8.lowHalf.modify;
}

void SIMD8.oddHalf.modify(uint64_t **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  v9 = (*a1)[2];
  v10 = (*a1)[3];
  v11 = **a1;
  if (a2)
  {
    (*(v10 + 16))((*a1)[4], v8, v9);
    specialized SIMD8.lowHalf.setter(v7, v11, a3, a4, a5, a6);
    v15 = *(v10 + 8);
    v15(v7, v9);
    v15(v8, v9);
  }

  else
  {
    specialized SIMD8.lowHalf.setter((*a1)[5], v11, a3, a4, a5, a6);
    (*(v10 + 8))(v8, v9);
  }

  free(v8);
  free(v7);

  free(v6);
}

void (*SIMD8.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xB26CuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xB26CuLL);
    v11 = swift_coroFrameAlloc(v10, 0xB26CuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.highHalf.getter(a2, v11);
  return SIMD8.highHalf.modify;
}

void (*SIMD8.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xA9B9uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xA9B9uLL);
    v11 = swift_coroFrameAlloc(v10, 0xA9B9uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.evenHalf.getter(a2, v11);
  return SIMD8.evenHalf.modify;
}

uint64_t SIMD8.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v41 = a6;
  v42 = a3;
  v8 = v6;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  swift_getAssociatedTypeWitness(0, v13, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD4Storage);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v13, v9, v14, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD4Storage: SIMDStorage);
  v17 = *(AssociatedConformanceWitness + 48);
  v47 = v15;
  v18 = AssociatedConformanceWitness;
  v17(v15);
  swift_getAssociatedTypeWitness(255, v13, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v20 = v19;
  v21 = swift_getAssociatedConformanceWitness(v13, v9, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v22 = *(v21 + 56);
  v45 = v21;
  v46 = v22;
  v23 = swift_checkMetadataState(0, v20);
  v22(a2, v23, v21);
  v38 = *(v18 + 64);
  v39 = v18;
  v24 = v12;
  v25 = v47;
  v38(v12, 0, v47, v18);
  v26 = v20;
  v27 = swift_checkMetadataState(0, v20);
  v40 = v8;
  v28 = v45;
  v46(v42, v27, v45);
  v29 = v25;
  v30 = v38;
  v31 = v39;
  v38(v24, 1, v29, v39);
  v32 = swift_checkMetadataState(0, v20);
  v33 = v28;
  v34 = v46;
  v46(v43, v32, v33);
  v35 = v47;
  v30(v24, 2, v47, v31);
  v36 = swift_checkMetadataState(0, v26);
  v34(v44, v36, v45);
  return (v30)(v24, 3, v35, v31);
}

void (*SIMD8.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0xD816uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD4(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0xD816uLL);
    v11 = swift_coroFrameAlloc(v10, 0xD816uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD8.oddHalf.getter(a2, v11);
  return SIMD8.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD8<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD8<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD8<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x53AuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x53AuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x53AuLL);
    v11 = swift_coroFrameAlloc(v10, 0x53AuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 8)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD8<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD8<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD8<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD8<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD8<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD8<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD8<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v27 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v24 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v23[1] = v23 - v7;
  v8 = 0;
  v9 = 1;
  v10 = v23 - v7;
  do
  {
    if (v9)
    {
      v11 = *(v27 + 24);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
      v13 = v12;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v11, v3, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
      v15 = *(AssociatedConformanceWitness + 56);
      v16 = swift_checkMetadataState(0, v13);
      v15(v8, v16, AssociatedConformanceWitness);
      v17 = v24;
      v15(v8, v16, AssociatedConformanceWitness);
      swift_getAssociatedTypeWitness(255, v11, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v19 = v18;
      v20 = swift_getAssociatedConformanceWitness(v11, v3, v18, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v21 = swift_getAssociatedConformanceWitness(v20, v19, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v9 = (*(*(v21 + 8) + 8))(v10, v17, v3);
    }

    else
    {
      v9 = 0;
    }

    ++v8;
  }

  while (v8 != 8);
  return v9 & 1;
}

uint64_t SIMD8<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 96))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 8);
  v29 = type metadata accessor for SIMD8(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD8<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 104))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 8);
  v29 = type metadata accessor for SIMD8(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD8<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a5;
  v49 = a7;
  v46 = a2;
  v51 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v24, v23, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v26 = v25;
  v47 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v25, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v28 = *(AssociatedConformanceWitness + 48);
  v45 = a9;
  v43 = v26;
  v28(v26, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v39 = a8;
  v50 = a4;
  v42 = v29;
  v30 = swift_getAssociatedConformanceWitness(a8, a4, v29, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v31 = 0;
  v40 = *(v30 + 56);
  v41 = v30;
  do
  {
    v32 = swift_checkMetadataState(0, v42);
    v40(v31, v32, v41);
    v33 = v49;
    v34 = v50;
    (*(*(v49 + 16) + 304))(v46, v50);
    (*(*(v48 + 8) + 80))(v19, v34, v33);
    (*(AssociatedConformanceWitness + 64))(v22, v31++, v43, AssociatedConformanceWitness);
  }

  while (v31 != 8);
  v36 = type metadata accessor for SIMD8(0, v50, v39, v35);
  return (*(*(v36 - 8) + 8))(v51, v36);
}

uint64_t SIMD8.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v848 = a1;
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 1) + 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v817 = &v810 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v825 = &v810 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v833 = &v810 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v840 = &v810 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v846 = &v810 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v816 = &v810 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v824 = &v810 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v832 = &v810 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v839 = &v810 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27, v29);
  v845 = &v810 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30, v32);
  v815 = &v810 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33, v35);
  v823 = &v810 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36, v38);
  v831 = &v810 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v838 = &v810 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v844 = &v810 - v46;
  v48 = MEMORY[0x1EEE9AC00](v45, v47);
  v814 = &v810 - v49;
  v51 = MEMORY[0x1EEE9AC00](v48, v50);
  v822 = &v810 - v52;
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v830 = &v810 - v55;
  v57 = MEMORY[0x1EEE9AC00](v54, v56);
  v837 = &v810 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57, v59);
  v843 = &v810 - v61;
  v63 = MEMORY[0x1EEE9AC00](v60, v62);
  v813 = &v810 - v64;
  v66 = MEMORY[0x1EEE9AC00](v63, v65);
  v821 = &v810 - v67;
  v69 = MEMORY[0x1EEE9AC00](v66, v68);
  v829 = &v810 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69, v71);
  v836 = &v810 - v73;
  v75 = MEMORY[0x1EEE9AC00](v72, v74);
  v842 = &v810 - v76;
  v78 = MEMORY[0x1EEE9AC00](v75, v77);
  v80 = &v810 - v79;
  v82 = MEMORY[0x1EEE9AC00](v78, v81);
  v820 = &v810 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v828 = &v810 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v835 = &v810 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88, v90);
  v93 = &v810 - v92;
  v95 = MEMORY[0x1EEE9AC00](v91, v94);
  v812 = &v810 - v96;
  v98 = MEMORY[0x1EEE9AC00](v95, v97);
  v819 = &v810 - v99;
  v101 = MEMORY[0x1EEE9AC00](v98, v100);
  v827 = &v810 - v102;
  v104 = MEMORY[0x1EEE9AC00](v101, v103);
  v834 = &v810 - v105;
  v107 = MEMORY[0x1EEE9AC00](v104, v106);
  v841 = &v810 - v108;
  v110 = MEMORY[0x1EEE9AC00](v107, v109);
  v811 = &v810 - v111;
  v113 = MEMORY[0x1EEE9AC00](v110, v112);
  v818 = &v810 - v114;
  v116 = MEMORY[0x1EEE9AC00](v113, v115);
  v826 = &v810 - v117;
  v119 = MEMORY[0x1EEE9AC00](v116, v118);
  v121 = &v810 - v120;
  v123 = MEMORY[0x1EEE9AC00](v119, v122);
  v847 = &v810 - v124;
  MEMORY[0x1EEE9AC00](v123, v125);
  v127 = &v810 - v126;
  v128 = _StringGuts.init(_initialCapacity:)(41);
  v130 = v129;
  v855._countAndFlagsBits = v128;
  v855._object = v129;
  v131 = HIBYTE(v129) & 0xF;
  if ((v129 & 0x2000000000000000) == 0)
  {
    v131 = v128 & 0xFFFFFFFFFFFFLL;
  }

  if (v131 || (v128 & ~v129 & 0x2000000000000000) != 0)
  {
    if ((v129 & 0x2000000000000000) != 0 && (v132 = specialized _SmallString.init(_:appending:)(v128, v129, 0x3C38444D4953uLL, 0xE600000000000000), (v134 & 1) == 0))
    {
      v143 = v132;
      v144 = v133;
      v130;
      0xE600000000000000;
      v855._countAndFlagsBits = v143;
      v855._object = v144;
    }

    else
    {
      0xE600000000000000;
      _StringGuts.append(_:)(0x3C38444D4953, 0xE600000000000000, 0, 6, v135, v136, v137, v138, v139, v140, v141, v142);
      swift_bridgeObjectRelease_n(0xE600000000000000, 2);
    }
  }

  else
  {
    v855._countAndFlagsBits = 0x3C38444D4953;
    v855._object = 0xE600000000000000;
    v129;
  }

  TypeName = swift_getTypeName(v2, 0);
  if (v146 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v147 = TypeName;
  v148 = v146;
  if (_allASCII(_:)(TypeName, v146))
  {
    v150 = 1;
LABEL_13:
    if (v148)
    {
      if (v148 > 15)
      {
        v151 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v147, v148, v148, v150 & 1);
        v152 = *(v151 + 24);
        goto LABEL_80;
      }

      v169 = v148 - 8;
      v170 = 8;
      if (v148 < 8)
      {
        v170 = v148;
      }

      if (v148 >= 4)
      {
        v172 = v170 & 0xC;
        v149.i32[0] = *v147;
        v173 = vmovl_u16(*&vmovl_u8(v149));
        v174.i64[0] = v173.u32[0];
        v174.i64[1] = v173.u32[1];
        v175.i64[0] = 255;
        v175.i64[1] = 255;
        v176 = vandq_s8(v174, v175);
        v174.i64[0] = v173.u32[2];
        v174.i64[1] = v173.u32[3];
        v177 = vshlq_u64(vandq_s8(v174, v175), xmmword_18071DBA0);
        v178.i32[1] = 0;
        v179 = vshlq_u64(v176, xmmword_18071DBB0);
        if (v172 != 4)
        {
          v178.i32[0] = *(v147 + 4);
          v180 = vmovl_u16(*&vmovl_u8(v178));
          v181.i64[0] = v180.u32[2];
          v181.i64[1] = v180.u32[3];
          v182 = vandq_s8(v181, v175);
          v181.i64[0] = v180.u32[0];
          v181.i64[1] = v180.u32[1];
          v177 = vorrq_s8(vshlq_u64(v182, xmmword_18071DBD0), v177);
          v179 = vorrq_s8(vshlq_u64(vandq_s8(v181, v175), xmmword_18071DBC0), v179);
        }

        v183 = vorrq_s8(v179, v177);
        v152 = vorr_s8(*v183.i8, *&vextq_s8(v183, v183, 8uLL));
        if (v170 == v172)
        {
          goto LABEL_72;
        }

        v171 = 8 * v172;
      }

      else
      {
        v152 = 0;
        v171 = 0;
        v172 = 0;
      }

      v184 = v170 - v172;
      v185 = (v147 + v172);
      do
      {
        v186 = *v185++;
        v152 |= v186 << (v171 & 0x38);
        v171 += 8;
        --v184;
      }

      while (v184);
LABEL_72:
      if (v148 < 9)
      {
        v187 = 0;
      }

      else
      {
        v187 = 0;
        v188 = 0;
        v189 = (v147 + 8);
        do
        {
          v190 = *v189++;
          v187 |= v190 << v188;
          v188 += 8;
          --v169;
        }

        while (v169);
      }

      v191 = 0xA000000000000000;
      if (((v187 | v152) & 0x8080808080808080) == 0)
      {
        v191 = 0xE000000000000000;
      }

      v151 = v191 | (v148 << 56) | v187;
      goto LABEL_80;
    }

LABEL_59:
    v152 = 0;
    v151 = 0xE000000000000000;
    goto LABEL_80;
  }

  if (!v148)
  {
    goto LABEL_59;
  }

  v153 = 0;
  v154 = (v147 + v148);
  v150 = 1;
  v155 = v147;
  v156 = v147;
  while (1)
  {
    v158 = *v156++;
    v157 = v158;
    if ((v158 & 0x80000000) == 0)
    {
      v159 = 1;
      goto LABEL_20;
    }

    if ((v157 + 11) <= 0xCCu)
    {
      LOBYTE(v849._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v157);
      goto LABEL_61;
    }

    if (v157 > 0xDFu)
    {
      break;
    }

    if (v156 == v154 || (*v156 & 0xC0) != 0x80)
    {
LABEL_324:
      LOBYTE(v849._countAndFlagsBits) = 4;
      goto LABEL_61;
    }

    v150 = 0;
    v156 = v155 + 2;
    v159 = 2;
LABEL_20:
    v153 += v159;
    v155 = v156;
    if (v156 == v154)
    {
      goto LABEL_13;
    }
  }

  if (v157 == 224)
  {
    if (v156 == v154)
    {
      goto LABEL_324;
    }

    if (v155[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_326;
    }

    goto LABEL_44;
  }

  if (v157 <= 0xECu)
  {
    goto LABEL_42;
  }

  if (v157 == 237)
  {
    if (v156 == v154)
    {
      goto LABEL_324;
    }

    v160 = v155[1];
    if (v160 > 0x9F || (v160 & 0xC0) != 0x80)
    {
      LOBYTE(v849._countAndFlagsBits) = 1;
      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v157 <= 0xEFu)
  {
LABEL_42:
    if (v156 == v154 || (v155[1] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

LABEL_44:
    if (v155 + 2 == v154 || (v155[2] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

    v150 = 0;
    v156 = v155 + 3;
    v159 = 3;
    goto LABEL_20;
  }

  if (v157 == 240)
  {
    if (v156 == v154)
    {
      goto LABEL_324;
    }

    if (v155[1] - 192 < 0xFFFFFFD0)
    {
LABEL_326:
      LOBYTE(v849._countAndFlagsBits) = 3;
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v157 <= 0xF3u)
  {
    if (v156 == v154 || (v155[1] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

    goto LABEL_54;
  }

  if (v156 == v154)
  {
    goto LABEL_324;
  }

  v161 = v155[1];
  if (v161 <= 0x8F && (v161 & 0xC0) == 0x80)
  {
LABEL_54:
    if (v155 + 2 == v154 || (v155[2] & 0xC0) != 0x80 || v155 + 3 == v154 || (v155[3] & 0xC0) != 0x80)
    {
      goto LABEL_324;
    }

    v150 = 0;
    v156 = v155 + 4;
    v159 = 4;
    goto LABEL_20;
  }

  LOBYTE(v849._countAndFlagsBits) = 2;
LABEL_61:
  swift_willThrowTypedImpl(&v849, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v162 = specialized Collection.subscript.getter(v153, v147, v148);
  v166 = findInvalidRange #1 (_:) in validateUTF8(_:)(v162, v163, v164, v165);
  v152 = repairUTF8(_:firstKnownBrokenRange:)(v147, v148, v166, v167);
  v151 = v168;
LABEL_80:
  object = v855._object;
  v193 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v193 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v193 && (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) == 0)
  {
    v855._countAndFlagsBits = v152;
    v855._object = v151;
    object;
    goto LABEL_92;
  }

  if ((v855._object & 0x2000000000000000) != 0)
  {
    if ((v151 & 0x2000000000000000) != 0)
    {
      v195 = specialized _SmallString.init(_:appending:)(v855._countAndFlagsBits, v855._object, v152, v151);
      if (v197)
      {
        goto LABEL_90;
      }

      v295 = v195;
      v296 = v196;
      v151;
      v855._object;
      v855._countAndFlagsBits = v295;
      v855._object = v296;
      goto LABEL_92;
    }

LABEL_88:
    v194 = v152 & 0xFFFFFFFFFFFFLL;
    goto LABEL_91;
  }

  if ((v151 & 0x2000000000000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_90:
  v194 = HIBYTE(v151) & 0xF;
LABEL_91:
  v151;
  _StringGuts.append(_:)(v152, v151, 0, v194, v198, v199, v200, v201, v202, v203, v204, v205);
  swift_bridgeObjectRelease_n(v151, 2);
LABEL_92:
  v206 = v855._object;
  v207 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v207 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v810 = v80;
  if (v207 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    if ((v855._object & 0x2000000000000000) != 0 && (v208 = specialized _SmallString.init(_:appending:)(v855._countAndFlagsBits, v855._object, 0x283EuLL, 0xE200000000000000), (v210 & 1) == 0))
    {
      v220 = v208;
      v221 = v209;
      v211 = v93;
      0xE200000000000000;
      v855._object;
      v855._countAndFlagsBits = v220;
      v855._object = v221;
    }

    else
    {
      v211 = v93;
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v212, v213, v214, v215, v216, v217, v218, v219);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v211 = v93;
    v855._countAndFlagsBits = 10302;
    v855._object = 0xE200000000000000;
    v206;
  }

  v222 = *(v848 + 24);
  swift_getAssociatedTypeWitness(255, v222, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v224 = v223;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v222, v2, v223, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v226 = *(AssociatedConformanceWitness + 56);
  v227 = swift_checkMetadataState(0, v224);
  v848 = v226;
  v226(0, v227, AssociatedConformanceWitness);
  v850 = v2;
  v228 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v228, v127, v3);
  v229 = v850;
  v230 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  DynamicType = swift_getDynamicType(v230, v229, 1);
  LODWORD(v229) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (!v229)
  {
    memcpy(v121, v127, v3);
    v252 = v211;
    if (swift_dynamicCast(&v849, v121, v2, &type metadata for String, 6uLL, v254, v255, v256, v810))
    {
      v265 = v849._object;
      v266 = v855._object;
      v267 = (v855._object >> 56) & 0xF;
      if ((v855._object & 0x2000000000000000) == 0)
      {
        v267 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      v253 = v841;
      if (v267 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v849._countAndFlagsBits, v849._object, v257, v258, v259, v260, v261, v262, v263, v264);
        v265;
      }

      else
      {
        v855 = v849;
        v266;
      }

      goto LABEL_134;
    }

    v268 = v826;
    memcpy(v826, v127, v3);
    v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    v273 = swift_dynamicCast(&v852, v268, v2, v269, 6uLL, v270, v271, v272, v810);
    v253 = v841;
    if (v273)
    {
      _ss9CodingKey_pWOb_0(&v852, &v849);
      v274 = v850;
      v275 = v851;
      __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
      (*(v275 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v274, v275);
      __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
      goto LABEL_134;
    }

    v854 = 0;
    v852 = 0u;
    v853 = 0u;
    outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v276 = v818;
    memcpy(v818, v127, v3);
    v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v852, v276, v2, v277, 6uLL, v278, v279, v280, v810))
    {
      _ss9CodingKey_pWOb_0(&v852, &v849);
      v281 = v850;
      v282 = v851;
      __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
      v283 = (*(v282 + 8))(v281, v282);
      v249 = v292;
      v293 = v855._object;
      v294 = (v855._object >> 56) & 0xF;
      if ((v855._object & 0x2000000000000000) == 0)
      {
        v294 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v294 && (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) == 0)
      {
        goto LABEL_325;
      }
    }

    else
    {
      v854 = 0;
      v852 = 0u;
      v853 = 0u;
      outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
      v297 = v811;
      memcpy(v811, v127, v3);
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
      if (!swift_dynamicCast(&v852, v297, v2, v298, 6uLL, v299, v300, v301, v810))
      {
        v854 = 0;
        v852 = 0u;
        v853 = 0u;
        outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
        *(&v853 + 1) = v2;
        v306 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
        memcpy(v306, v127, v3);
        Mirror.init(reflecting:)(&v852, &v849);
        v307 = v849._object;
        v308 = v851;
        _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v127, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v308;
        v307;
        goto LABEL_134;
      }

      _ss9CodingKey_pWOb_0(&v852, &v849);
      v302 = v850;
      v303 = v851;
      __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
      v283 = (*(v303 + 8))(v302, v303);
      v249 = v304;
      v293 = v855._object;
      v305 = (v855._object >> 56) & 0xF;
      if ((v855._object & 0x2000000000000000) == 0)
      {
        v305 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (!v305 && (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) == 0)
      {
LABEL_325:
        v855._countAndFlagsBits = v283;
        v855._object = v249;
        v249 = v293;
        goto LABEL_109;
      }
    }

    _StringGuts.append(_:)(v283, v249, v284, v285, v286, v287, v288, v289, v290, v291);
    goto LABEL_109;
  }

  v232 = v847;
  memcpy(v847, v127, v3);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  swift_dynamicCast(&v849, v232, v2, v233, 7uLL, v234, v235, v236, v810);
  v237 = v850;
  v238 = v851;
  __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v239 = (*(v238 + 8))(v237, v238);
  v249 = v240;
  v250 = v855._object;
  v251 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v251 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v252 = v211;
  if (v251 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v239, v240, v241, v242, v243, v244, v245, v246, v247, v248);
  }

  else
  {
    v855._countAndFlagsBits = v239;
    v855._object = v240;
    v249 = v250;
  }

  v253 = v841;
LABEL_109:
  v249;
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
LABEL_134:
  v309 = v855._object;
  v310 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v310 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v310 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    if ((v855._object & 0x2000000000000000) != 0 && (v311 = specialized _SmallString.init(_:appending:)(v855._countAndFlagsBits, v855._object, 0x202CuLL, 0xE200000000000000), (v313 & 1) == 0))
    {
      v322 = v311;
      v323 = v312;
      0xE200000000000000;
      v855._object;
      v855._countAndFlagsBits = v322;
      v855._object = v323;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v314, v315, v316, v317, v318, v319, v320, v321);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v855._countAndFlagsBits = 8236;
    v855._object = 0xE200000000000000;
    v309;
  }

  (v848)(1, v227, AssociatedConformanceWitness);
  v850 = v2;
  v324 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v324, v253, v3);
  v325 = v850;
  v326 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v327 = swift_getDynamicType(v326, v325, 1);
  LODWORD(v325) = swift_isOptionalType(v327);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (v325)
  {
    v328 = v847;
    memcpy(v847, v253, v3);
    v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v849, v328, v2, v329, 7uLL, v330, v331, v332, v810);
    goto LABEL_145;
  }

  v349 = v834;
  memcpy(v834, v253, v3);
  if (swift_dynamicCast(&v849, v349, v2, &type metadata for String, 6uLL, v350, v351, v352, v810))
  {
    v361 = v849._object;
    v362 = v855._object;
    v363 = (v855._object >> 56) & 0xF;
    if ((v855._object & 0x2000000000000000) == 0)
    {
      v363 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v363 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v849._countAndFlagsBits, v849._object, v353, v354, v355, v356, v357, v358, v359, v360);
      v361;
    }

    else
    {
      v855 = v849;
      v362;
    }

LABEL_167:
    v348 = v846;
  }

  else
  {
    v364 = v827;
    memcpy(v827, v253, v3);
    v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v852, v364, v2, v365, 6uLL, v366, v367, v368, v810))
    {
      _ss9CodingKey_pWOb_0(&v852, &v849);
      v369 = v850;
      v370 = v851;
      __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
      (*(v370 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v369, v370);
      __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
      goto LABEL_167;
    }

    v854 = 0;
    v852 = 0u;
    v853 = 0u;
    outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
    v371 = v819;
    memcpy(v819, v253, v3);
    v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
    if (swift_dynamicCast(&v852, v371, v2, v372, 6uLL, v373, v374, v375, v810))
    {
      _ss9CodingKey_pWOb_0(&v852, &v849);
      v376 = v850;
      v377 = v851;
      __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
      v335 = (*(v377 + 8))(v376, v377);
    }

    else
    {
      v854 = 0;
      v852 = 0u;
      v853 = 0u;
      outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
      v378 = v812;
      memcpy(v812, v253, v3);
      v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
      if (!swift_dynamicCast(&v852, v378, v2, v379, 6uLL, v380, v381, v382, v810))
      {
        v854 = 0;
        v852 = 0u;
        v853 = 0u;
        outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
        *(&v853 + 1) = v2;
        v383 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
        memcpy(v383, v253, v3);
        Mirror.init(reflecting:)(&v852, &v849);
        v384 = v849._object;
        v385 = v851;
        _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v253, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
        v385;
        v384;
        goto LABEL_167;
      }

      _ss9CodingKey_pWOb_0(&v852, &v849);
LABEL_145:
      v333 = v850;
      v334 = v851;
      __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
      v335 = (*(v334 + 8))(v333, v334);
    }

    v345 = v336;
    v346 = v855._object;
    v347 = (v855._object >> 56) & 0xF;
    if ((v855._object & 0x2000000000000000) == 0)
    {
      v347 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v347 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    }

    else
    {
      v855._countAndFlagsBits = v335;
      v855._object = v336;
      v345 = v346;
    }

    v348 = v846;
    v345;
    __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  }

  v386 = v855._object;
  v387 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v387 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v387 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    if ((v855._object & 0x2000000000000000) != 0 && (v388 = specialized _SmallString.init(_:appending:)(v855._countAndFlagsBits, v855._object, 0x202CuLL, 0xE200000000000000), (v390 & 1) == 0))
    {
      v399 = v388;
      v400 = v389;
      0xE200000000000000;
      v855._object;
      v855._countAndFlagsBits = v399;
      v855._object = v400;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v391, v392, v393, v394, v395, v396, v397, v398);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v855._countAndFlagsBits = 8236;
    v855._object = 0xE200000000000000;
    v386;
  }

  (v848)(2, v227, AssociatedConformanceWitness);
  v850 = v2;
  v401 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v401, v252, v3);
  v402 = v850;
  v403 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v404 = swift_getDynamicType(v403, v402, 1);
  LODWORD(v402) = swift_isOptionalType(v404);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (v402)
  {
    v405 = v847;
    memcpy(v847, v252, v3);
    v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v849, v405, v2, v406, 7uLL, v407, v408, v409, v810);
    goto LABEL_179;
  }

  v425 = v835;
  memcpy(v835, v252, v3);
  if (swift_dynamicCast(&v849, v425, v2, &type metadata for String, 6uLL, v426, v427, v428, v810))
  {
    v429 = v849._object;
    String.write(_:)(v849);
    v429;
    goto LABEL_189;
  }

  v443 = v828;
  memcpy(v828, v252, v3);
  v444 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v852, v443, v2, v444, 6uLL, v445, v446, v447, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v448 = v850;
    v449 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    (*(v449 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v448, v449);
LABEL_186:
    __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
    goto LABEL_189;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v693 = v820;
  memcpy(v820, v252, v3);
  v694 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v693, v2, v694, 6uLL, v695, v696, v697, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v698 = v850;
    v699 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v412 = (*(v699 + 8))(v698, v699);
LABEL_180:
    v422 = v413;
    v423 = v855._object;
    v424 = (v855._object >> 56) & 0xF;
    if ((v855._object & 0x2000000000000000) == 0)
    {
      v424 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v424 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v412, v413, v414, v415, v416, v417, v418, v419, v420, v421);
    }

    else
    {
      v855._countAndFlagsBits = v412;
      v855._object = v413;
      v422 = v423;
    }

    v422;
    goto LABEL_186;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v733 = v810;
  memcpy(v810, v252, v3);
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v733, v2, v734, 6uLL, v735, v736, v737, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
LABEL_179:
    v410 = v850;
    v411 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v412 = (*(v411 + 8))(v410, v411);
    goto LABEL_180;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v853 + 1) = v2;
  v789 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
  memcpy(v789, v252, v3);
  Mirror.init(reflecting:)(&v852, &v849);
  v790 = v849._object;
  v791 = v851;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v252, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v791;
  v790;
LABEL_189:
  v430 = v855._object;
  v431 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v431 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v431 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    if ((v855._object & 0x2000000000000000) != 0 && (v432 = specialized _SmallString.init(_:appending:)(v855._countAndFlagsBits, v855._object, 0x202CuLL, 0xE200000000000000), (v434 & 1) == 0))
    {
      v450 = v432;
      v451 = v433;
      0xE200000000000000;
      v855._object;
      v855._countAndFlagsBits = v450;
      v855._object = v451;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v435, v436, v437, v438, v439, v440, v441, v442);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v855._countAndFlagsBits = 8236;
    v855._object = 0xE200000000000000;
    v430;
  }

  v452 = v842;
  (v848)(3, v227, AssociatedConformanceWitness);
  v850 = v2;
  v453 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v453, v452, v3);
  v454 = v850;
  v455 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v456 = swift_getDynamicType(v455, v454, 1);
  LODWORD(v454) = swift_isOptionalType(v456);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (v454)
  {
    v457 = v847;
    memcpy(v847, v452, v3);
    v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v849, v457, v2, v458, 7uLL, v459, v460, v461, v810);
    v462 = v850;
    v463 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v464 = (*(v463 + 8))(v462, v463);
    goto LABEL_202;
  }

  v478 = v836;
  memcpy(v836, v452, v3);
  if (swift_dynamicCast(&v849, v478, v2, &type metadata for String, 6uLL, v479, v480, v481, v810))
  {
    v482 = v849._object;
    String.write(_:)(v849);
    v482;
    goto LABEL_212;
  }

  v496 = v829;
  memcpy(v829, v452, v3);
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v852, v496, v2, v497, 6uLL, v498, v499, v500, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v501 = v850;
    v502 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    (*(v502 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v501, v502);
    goto LABEL_209;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v700 = v821;
  memcpy(v821, v452, v3);
  v701 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v700, v2, v701, 6uLL, v702, v703, v704, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v705 = v850;
    v706 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v464 = (*(v706 + 8))(v705, v706);
LABEL_202:
    v474 = v465;
    v475 = v855._object;
    v476 = (v855._object >> 56) & 0xF;
    if ((v855._object & 0x2000000000000000) == 0)
    {
      v476 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v476 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v464, v465, v466, v467, v468, v469, v470, v471, v472, v473);
    }

    else
    {
      v855._countAndFlagsBits = v464;
      v855._object = v465;
      v474 = v475;
    }

    v477 = v474;
    goto LABEL_208;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v738 = v813;
  memcpy(v813, v452, v3);
  v739 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v738, v2, v739, 6uLL, v740, v741, v742, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v743 = v850;
    v744 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v745 = (*(v744 + 8))(v743, v744);
    v747 = v746;
    static String.+= infix(_:_:)(&v855, v745, v746, v748, v749, v750, v751, v752, v753, v754, v755);
    v477 = v747;
LABEL_208:
    v477;
LABEL_209:
    __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
    goto LABEL_212;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v853 + 1) = v2;
  v792 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
  memcpy(v792, v452, v3);
  Mirror.init(reflecting:)(&v852, &v849);
  v793 = v849._object;
  v794 = v452;
  v795 = v851;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v794, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v795;
  v793;
LABEL_212:
  v483 = v855._object;
  v484 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v484 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v484 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    if ((v855._object & 0x2000000000000000) != 0 && (v485 = specialized _SmallString.init(_:appending:)(v855._countAndFlagsBits, v855._object, 0x202CuLL, 0xE200000000000000), (v487 & 1) == 0))
    {
      v503 = v485;
      v504 = v486;
      0xE200000000000000;
      v855._object;
      v855._countAndFlagsBits = v503;
      v855._object = v504;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v488, v489, v490, v491, v492, v493, v494, v495);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v855._countAndFlagsBits = 8236;
    v855._object = 0xE200000000000000;
    v483;
  }

  v505 = v843;
  (v848)(4, v227, AssociatedConformanceWitness);
  v850 = v2;
  v506 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v506, v505, v3);
  v507 = v850;
  v508 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v509 = swift_getDynamicType(v508, v507, 1);
  LODWORD(v507) = swift_isOptionalType(v509);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (v507)
  {
    v510 = v847;
    memcpy(v847, v505, v3);
    v511 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v849, v510, v2, v511, 7uLL, v512, v513, v514, v810);
    v515 = v850;
    v516 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v517 = (*(v516 + 8))(v515, v516);
    v527 = v518;
    v528 = v855._object;
    v529 = (v855._object >> 56) & 0xF;
    if ((v855._object & 0x2000000000000000) == 0)
    {
      v529 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v529 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v517, v518, v519, v520, v521, v522, v523, v524, v525, v526);
    }

    else
    {
      v855._countAndFlagsBits = v517;
      v855._object = v518;
      v527 = v528;
    }

    v530 = v527;
LABEL_230:
    v530;
LABEL_231:
    __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  }

  else
  {
    v531 = v837;
    memcpy(v837, v505, v3);
    if (swift_dynamicCast(&v849, v531, v2, &type metadata for String, 6uLL, v532, v533, v534, v810))
    {
      v535 = v849._object;
      String.write(_:)(v849);
      v535;
    }

    else
    {
      v549 = v830;
      memcpy(v830, v505, v3);
      v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v852, v549, v2, v550, 6uLL, v551, v552, v553, v810))
      {
        _ss9CodingKey_pWOb_0(&v852, &v849);
        v554 = v850;
        v555 = v851;
        __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
        (*(v555 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v554, v555);
        goto LABEL_231;
      }

      v854 = 0;
      v852 = 0u;
      v853 = 0u;
      outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v707 = v822;
      memcpy(v822, v505, v3);
      v708 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v852, v707, v2, v708, 6uLL, v709, v710, v711, v810) || (v854 = 0, v852 = 0u, v853 = 0u, outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v756 = v814, memcpy(v814, v505, v3), v757 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v852, v756, v2, v757, 6uLL, v758, v759, v760, v810)))
      {
        _ss9CodingKey_pWOb_0(&v852, &v849);
        v761 = v850;
        v762 = v851;
        __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
        v763 = (*(v762 + 8))(v761, v762);
        v765 = v764;
        static String.+= infix(_:_:)(&v855, v763, v764, v766, v767, v768, v769, v770, v771, v772, v773);
        v530 = v765;
        goto LABEL_230;
      }

      v854 = 0;
      v852 = 0u;
      v853 = 0u;
      outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v853 + 1) = v2;
      v796 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
      memcpy(v796, v505, v3);
      Mirror.init(reflecting:)(&v852, &v849);
      v797 = v849._object;
      v798 = v505;
      v799 = v851;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v798, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v799;
      v797;
    }
  }

  v536 = v855._object;
  v537 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v537 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v537 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    if ((v855._object & 0x2000000000000000) != 0 && (v538 = specialized _SmallString.init(_:appending:)(v855._countAndFlagsBits, v855._object, 0x202CuLL, 0xE200000000000000), (v540 & 1) == 0))
    {
      v556 = v538;
      v557 = v539;
      0xE200000000000000;
      v855._object;
      v855._countAndFlagsBits = v556;
      v855._object = v557;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v541, v542, v543, v544, v545, v546, v547, v548);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v855._countAndFlagsBits = 8236;
    v855._object = 0xE200000000000000;
    v536;
  }

  v558 = v844;
  (v848)(5, v227, AssociatedConformanceWitness);
  v850 = v2;
  v559 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v559, v558, v3);
  v560 = v850;
  v561 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v562 = swift_getDynamicType(v561, v560, 1);
  LODWORD(v560) = swift_isOptionalType(v562);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (v560)
  {
    v563 = v847;
    memcpy(v847, v558, v3);
    v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v849, v563, v2, v564, 7uLL, v565, v566, v567, v810);
    goto LABEL_247;
  }

  v589 = v838;
  memcpy(v838, v558, v3);
  if (swift_dynamicCast(&v849, v589, v2, &type metadata for String, 6uLL, v590, v591, v592, v810))
  {
    v593 = v849._object;
    String.write(_:)(v849);
    v593;
    goto LABEL_252;
  }

  v672 = v831;
  memcpy(v831, v558, v3);
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v852, v672, v2, v673, 6uLL, v674, v675, v676, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v677 = v850;
    v678 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    (*(v678 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v677, v678);
    goto LABEL_249;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v712 = v823;
  memcpy(v823, v558, v3);
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v712, v2, v713, 6uLL, v714, v715, v716, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v717 = v850;
    v718 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v570 = (*(v718 + 8))(v717, v718);
LABEL_248:
    v580 = v571;
    static String.+= infix(_:_:)(&v855, v570, v571, v572, v573, v574, v575, v576, v577, v578, v579);
    v580;
LABEL_249:
    __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
    goto LABEL_252;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v774 = v815;
  memcpy(v815, v558, v3);
  v775 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v774, v2, v775, 6uLL, v776, v777, v778, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
LABEL_247:
    v568 = v850;
    v569 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v570 = (*(v569 + 8))(v568, v569);
    goto LABEL_248;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v853 + 1) = v2;
  v800 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
  memcpy(v800, v558, v3);
  Mirror.init(reflecting:)(&v852, &v849);
  v801 = v849._object;
  v802 = v558;
  v803 = v851;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v802, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v803;
  v801;
LABEL_252:
  v594 = v845;
  v595 = v855._object;
  v596 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v596 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v596 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v581, v582, v583, v584, v585, v586, v587, v588);
    v595 = 0xE200000000000000;
  }

  else
  {
    v855._countAndFlagsBits = 8236;
    v855._object = 0xE200000000000000;
  }

  v595;
  (v848)(6, v227, AssociatedConformanceWitness);
  v850 = v2;
  v597 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v597, v594, v3);
  v598 = v850;
  v599 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v600 = swift_getDynamicType(v599, v598, 1);
  LODWORD(v598) = swift_isOptionalType(v600);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (v598)
  {
    v601 = v847;
    memcpy(v847, v594, v3);
    v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v849, v601, v2, v602, 7uLL, v603, v604, v605, v810);
    goto LABEL_259;
  }

  v627 = v839;
  memcpy(v839, v594, v3);
  if (swift_dynamicCast(&v849, v627, v2, &type metadata for String, 6uLL, v628, v629, v630, v810))
  {
    v631 = v849._object;
    String.write(_:)(v849);
    v631;
    goto LABEL_264;
  }

  v679 = v832;
  memcpy(v832, v594, v3);
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v852, v679, v2, v680, 6uLL, v681, v682, v683, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v684 = v850;
    v685 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    (*(v685 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v684, v685);
    goto LABEL_261;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v719 = v824;
  memcpy(v824, v594, v3);
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v719, v2, v720, 6uLL, v721, v722, v723, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v724 = v850;
    v725 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v608 = (*(v725 + 8))(v724, v725);
LABEL_260:
    v618 = v609;
    static String.+= infix(_:_:)(&v855, v608, v609, v610, v611, v612, v613, v614, v615, v616, v617);
    v618;
LABEL_261:
    __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
    goto LABEL_264;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v779 = v816;
  memcpy(v816, v594, v3);
  v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v779, v2, v780, 6uLL, v781, v782, v783, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
LABEL_259:
    v606 = v850;
    v607 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v608 = (*(v607 + 8))(v606, v607);
    goto LABEL_260;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v853 + 1) = v2;
  v804 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
  memcpy(v804, v594, v3);
  Mirror.init(reflecting:)(&v852, &v849);
  v805 = v849._object;
  v806 = v851;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v594, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v806;
  v805;
LABEL_264:
  v632 = v855._object;
  v633 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v633 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v633 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v619, v620, v621, v622, v623, v624, v625, v626);
    v632 = 0xE200000000000000;
  }

  else
  {
    v855._countAndFlagsBits = 8236;
    v855._object = 0xE200000000000000;
  }

  v632;
  (v848)(7, v227, AssociatedConformanceWitness);
  v850 = v2;
  v634 = __swift_allocate_boxed_opaque_existential_0Tm(&v849);
  memcpy(v634, v348, v3);
  v635 = v850;
  v636 = __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
  v637 = swift_getDynamicType(v636, v635, 1);
  LODWORD(v635) = swift_isOptionalType(v637);
  __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
  if (v635)
  {
    v638 = v847;
    memcpy(v847, v348, v3);
    v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v849, v638, v2, v639, 7uLL, v640, v641, v642, v810);
    goto LABEL_271;
  }

  v664 = v840;
  memcpy(v840, v348, v3);
  if (swift_dynamicCast(&v849, v664, v2, &type metadata for String, 6uLL, v665, v666, v667, v810))
  {
    v668 = v849._object;
    String.write(_:)(v849);
    v668;
    goto LABEL_276;
  }

  v686 = v833;
  memcpy(v833, v348, v3);
  v687 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v852, v686, v2, v687, 6uLL, v688, v689, v690, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v691 = v850;
    v692 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    (*(v692 + 8))(&v855, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v691, v692);
    goto LABEL_273;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v726 = v825;
  memcpy(v825, v348, v3);
  v727 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v726, v2, v727, 6uLL, v728, v729, v730, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
    v731 = v850;
    v732 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v645 = (*(v732 + 8))(v731, v732);
LABEL_272:
    v655 = v646;
    static String.+= infix(_:_:)(&v855, v645, v646, v647, v648, v649, v650, v651, v652, v653, v654);
    v655;
LABEL_273:
    __swift_destroy_boxed_opaque_existential_1Tm(&v849._countAndFlagsBits);
    goto LABEL_276;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v784 = v817;
  memcpy(v817, v348, v3);
  v785 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v852, v784, v2, v785, 6uLL, v786, v787, v788, v810))
  {
    _ss9CodingKey_pWOb_0(&v852, &v849);
LABEL_271:
    v643 = v850;
    v644 = v851;
    __swift_project_boxed_opaque_existential_0Tm(&v849, v850);
    v645 = (*(v644 + 8))(v643, v644);
    goto LABEL_272;
  }

  v854 = 0;
  v852 = 0u;
  v853 = 0u;
  outlined destroy of _HasContiguousBytes?(&v852, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v853 + 1) = v2;
  v807 = __swift_allocate_boxed_opaque_existential_0Tm(&v852);
  memcpy(v807, v348, v3);
  Mirror.init(reflecting:)(&v852, &v849);
  v808 = v849._object;
  v809 = v851;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v348, &v849, &v855, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v809;
  v808;
LABEL_276:
  v669 = v855._object;
  v670 = (v855._object >> 56) & 0xF;
  if ((v855._object & 0x2000000000000000) == 0)
  {
    v670 = v855._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v670 || (v855._countAndFlagsBits & ~v855._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x29uLL, 0xE100000000000000, v656, v657, v658, v659, v660, v661, v662, v663);
    v669 = 0xE100000000000000;
  }

  else
  {
    v855._countAndFlagsBits = 41;
    v855._object = 0xE100000000000000;
  }

  v669;
  return v855._countAndFlagsBits;
}

uint64_t SIMD8<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 16) + 72))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 8);
  v29 = type metadata accessor for SIMD8(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

{
  v40 = a6;
  v42 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v37 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v20 = v19;
  v39 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v38 = a8;
  v36 = v20;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v32 = a7;
  v41 = a3;
  v35 = v23;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v25 = 0;
  v33 = *(v24 + 56);
  v34 = v24;
  do
  {
    v26 = swift_checkMetadataState(0, v35);
    v27 = v37;
    v33(v25, v26, v34);
    (*(a4 + 80))(v27, v41, v40);
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v36, AssociatedConformanceWitness);
  }

  while (v25 != 8);
  v29 = type metadata accessor for SIMD8(0, v41, v32, v28);
  return (*(*(v29 - 8) + 8))(v42, v29);
}

uint64_t key path getter for SIMD16.subscript(_:) : <A>SIMD16<A>A(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v5 = *(a2 + a3 - 16);
  v4 = *(a2 + a3 - 8);
  swift_getAssociatedTypeWitness(255, v4, v5, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v7 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v4, v5, v6, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v9 = *(AssociatedConformanceWitness + 56);
  v10 = swift_checkMetadataState(0, v7);
  return v9(v3, v10, AssociatedConformanceWitness);
}

uint64_t key path setter for SIMD16.subscript(_:) : <A>SIMD16<A>A(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v18 - v6;
  v9 = *v8;
  memcpy(&v18 - v6, v10, v11);
  if (v9 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  swift_getAssociatedTypeWitness(255, v5, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v13 = v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v5, v4, v12, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v15 = *(AssociatedConformanceWitness + 64);
  v16 = swift_checkMetadataState(0, v13);
  return v15(v7, v9, v16, AssociatedConformanceWitness);
}

uint64_t (*SIMD16.subscript.modify(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x66FCuLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x66FCuLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x66FCuLL);
    v11 = swift_coroFrameAlloc(v10, 0x66FCuLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t SIMD16.init(_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, const void *a9, const void *a10, const void *a11, const void *a12, const void *a13, const void *a14, const void *a15, const void *a16, Class *a17, int **a18)
{
  v32 = a8;
  v29 = a6;
  v30 = a7;
  v27 = a4;
  v28 = a5;
  v38 = a15;
  v39 = a16;
  v36 = a13;
  v37 = a14;
  v34 = a11;
  v35 = a12;
  v21 = *(*(a17 - 1) + 8);
  v33 = a10;
  v31 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  swift_getAssociatedTypeWitness(0, a18, a17, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v23 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a18, a17, v22, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21);
  v25 = *(AssociatedConformanceWitness + 64);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 0, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 2, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 3, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 4, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 5, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 6, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 7, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 8, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 9, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 10, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 11, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 12, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v37, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 13, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v21);
  v25(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 14, v23, AssociatedConformanceWitness);
  memcpy(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v21);
  return (v25)(&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), 15, v23, AssociatedConformanceWitness);
}

uint64_t SIMD16.init(lowHalf:highHalf:)(uint64_t a1, uint64_t a2, Class *a3, int **a4)
{
  swift_getAssociatedTypeWitness(0, a4, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v9 = v8;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a4, a3, v8, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  (*(AssociatedConformanceWitness + 48))(v9, AssociatedConformanceWitness);
  v12 = type metadata accessor for SIMD16(0, a3, a4, v11);
  specialized SIMD16.lowHalf.setter(a1, v12);
  v14 = type metadata accessor for SIMD8(0, a3, a4, v13);
  v16 = *(*(v14 - 8) + 8);
  (v16)((v14 - 8), a1, v14);
  specialized SIMD16.highHalf.setter(a2, v12);

  return v16(a2, v14);
}

uint64_t SIMD64.oddHalf.setter(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void, void, void))
{
  a3();
  v7 = a4(0, *(a2 + 16), *(a2 + 24));
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

uint64_t SIMD16.lowHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v12 = v10;
  (*(AssociatedConformanceWitness + 48))(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v14 = v13;
  v15 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v48 = *(v15 + 56);
  v16 = v48;
  v17 = swift_checkMetadataState(0, v14);
  v16(0, v17, v15);
  v46 = AssociatedConformanceWitness;
  v18 = (AssociatedConformanceWitness + 64);
  v42 = *(AssociatedConformanceWitness + 64);
  v42(v7, 0, v12, AssociatedConformanceWitness);
  v19 = swift_checkMetadataState(0, v14);
  v47 = v3;
  v48(1, v19, v15);
  v45 = v12;
  v20 = v12;
  v21 = v46;
  v22 = v42;
  v42(v7, 1, v20, v46);
  v23 = swift_checkMetadataState(0, v14);
  v24 = v48;
  v48(2, v23, v15);
  v43 = v15 + 56;
  v22(v7, 2, v45, v21);
  v41[0] = v14;
  v25 = swift_checkMetadataState(0, v14);
  v44 = v15;
  v24(3, v25, v15);
  v26 = v45;
  v27 = v42;
  v42(v7, 3, v45, v21);
  v41[1] = v18;
  v28 = swift_checkMetadataState(0, v14);
  v24(4, v28, v15);
  v29 = v26;
  v30 = v26;
  v31 = v46;
  v32 = v27;
  v27(v7, 4, v29, v46);
  v33 = v41[0];
  v34 = swift_checkMetadataState(0, v41[0]);
  v35 = v44;
  v36 = v48;
  v48(5, v34, v44);
  v32(v7, 5, v30, v31);
  v37 = swift_checkMetadataState(0, v33);
  v36(6, v37, v35);
  v38 = v46;
  v32(v7, 6, v30, v46);
  v39 = swift_checkMetadataState(0, v33);
  v36(7, v39, v44);
  return (v32)(v7, 7, v30, v38);
}

void (*SIMD16.lowHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x5F85uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x5F85uLL);
    v11 = swift_coroFrameAlloc(v10, 0x5F85uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.lowHalf.getter(a2, v12, v11);
  return SIMD16.lowHalf.modify;
}

void SIMD64.oddHalf.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v7 = (*a1)[2];
  v8 = (*a1)[3];
  v9 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v6, v7);
    a3(v5, v9);
    v10 = *(v8 + 8);
    v10(v5, v7);
    v10(v6, v7);
  }

  else
  {
    a3((*a1)[5], v9);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t SIMD16.highHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v14 = v13;
  v15 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v16 = 0;
  v17 = *(v15 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v14);
    v17(v16 + 8, v18, v15);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16++, v21, AssociatedConformanceWitness);
  }

  while (v16 != 8);
  return result;
}

void (*SIMD16.highHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x668AuLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x668AuLL);
    v11 = swift_coroFrameAlloc(v10, 0x668AuLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.highHalf.getter(a2, v12, v11);
  return SIMD16.highHalf.modify;
}

uint64_t SIMD16.evenHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v20 = v13;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v15 = 0;
  v16 = 0;
  v17 = *(v14 + 56);
  do
  {
    v18 = swift_checkMetadataState(0, v20);
    v17(v15, v18, v14);
    result = (*(AssociatedConformanceWitness + 64))(v7, v16, v21, AssociatedConformanceWitness);
    v15 += 2;
    ++v16;
  }

  while (v15 != 16);
  return result;
}

void (*SIMD16.evenHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x1234uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x1234uLL);
    v11 = swift_coroFrameAlloc(v10, 0x1234uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.evenHalf.getter(a2, v12, v11);
  return SIMD16.evenHalf.modify;
}

uint64_t SIMD16.oddHalf.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 24);
  swift_getAssociatedTypeWitness(0, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD8Storage);
  v10 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v8, v4, v9, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD8Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 48);
  v21 = v10;
  v22 = a3;
  v12(v10, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, v8, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v20 = v13;
  v14 = swift_getAssociatedConformanceWitness(v8, v4, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v15 = 0;
  v16 = *(v14 + 56);
  for (i = 1; i != 17; i += 2)
  {
    v18 = swift_checkMetadataState(0, v20);
    v16(i, v18, v14);
    result = (*(AssociatedConformanceWitness + 64))(v7, v15++, v21, AssociatedConformanceWitness);
  }

  return result;
}

void (*SIMD16.oddHalf.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc(0x30, 0x39F3uLL);
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v7 = v5;
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v8 = type metadata accessor for SIMD8(0, *(a2 + 16), *(a2 + 24), v6);
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (swift_coroFrameAlloc)
  {
    v7[4] = swift_coroFrameAlloc(v10, 0x39F3uLL);
    v11 = swift_coroFrameAlloc(v10, 0x39F3uLL);
  }

  else
  {
    v7[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  SIMD16.oddHalf.getter(a2, v12, v11);
  return SIMD16.oddHalf.modify;
}

uint64_t protocol witness for SIMDStorage.subscript.getter in conformance SIMD16<A>(unint64_t a1, uint64_t a2)
{
  if (a1 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  swift_getAssociatedTypeWitness(255, v2, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v6 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v2, v3, v5, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v10 = *(AssociatedConformanceWitness + 56);
  v8 = swift_checkMetadataState(0, v6);

  return v10(a1, v8, AssociatedConformanceWitness);
}

uint64_t protocol witness for SIMDStorage.subscript.setter in conformance SIMD16<A>(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v3, v4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v8 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v3, v4, v7, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v12 = *(AssociatedConformanceWitness + 64);
  v10 = swift_checkMetadataState(0, v8);

  return v12(a1, a2, v10, AssociatedConformanceWitness);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance SIMD16<A>(void *a1, unint64_t a2, uint64_t a3))()
{
  if (swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc(0x40, 0x7D46uLL);
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a3 + 16);
  v10 = *(*(v9 - 1) + 8);
  v7[2] = v10;
  if (swift_coroFrameAlloc)
  {
    v7[3] = swift_coroFrameAlloc(v10, 0x7D46uLL);
    v8[4] = swift_coroFrameAlloc(v10, 0x7D46uLL);
    v11 = swift_coroFrameAlloc(v10, 0x7D46uLL);
  }

  else
  {
    v7[3] = malloc(v10);
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v8[5] = v11;
  if (a2 >= 0x10)
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v12 = *(a3 + 24);
  swift_getAssociatedTypeWitness(255, v12, v9, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v9, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v8[6] = AssociatedConformanceWitness;
  v16 = *(AssociatedConformanceWitness + 56);
  v17 = swift_checkMetadataState(0, v14);
  v8[7] = v17;
  v16(a2, v17, AssociatedConformanceWitness);
  return SIMD4.subscript.modify;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SIMD16<A>(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD16<A>, a2, a3);

  return SIMD.hash(into:)(a1, a2, WitnessTable);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SIMD16<A>(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD16<A>, a1, a3);

  return SIMD.description.getter(a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance SIMD16<A>@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SIMD16<A>, a2, a3);

  return SIMD.init(arrayLiteral:)(a1, a2, WitnessTable, a4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SIMD16<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a1;
  v20[2] = a2;
  v21 = a3;
  v3 = *(a3 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v20 - v8;
  v10 = 0;
  v11 = 1;
  do
  {
    if (v11)
    {
      v12 = *(v21 + 24);
      swift_getAssociatedTypeWitness(255, v12, v3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
      v14 = v13;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v12, v3, v13, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
      v16 = *(AssociatedConformanceWitness + 7);
      v17 = swift_checkMetadataState(0, v14);
      v16(v10, v17, AssociatedConformanceWitness);
      v16(v10, v17, AssociatedConformanceWitness);
      v18 = swift_getAssociatedConformanceWitness(AssociatedConformanceWitness, v17, v3, &protocol requirements base descriptor for SIMDStorage, associated conformance descriptor for SIMDStorage.SIMDStorage.Scalar: Hashable);
      v11 = (*(*(v18 + 8) + 8))(v9, v6, v3);
    }

    else
    {
      v11 = 0;
    }

    ++v10;
  }

  while (v10 != 16);
  return v11 & 1;
}

uint64_t SIMD16<>.init<A>(truncatingIfNeeded:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 96))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 16);
  v29 = type metadata accessor for SIMD16(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD16<>.init<A>(clamping:)@<X0>(uint64_t a1@<X0>, Class *a2@<X1>, Class *a3@<X2>, uint64_t a4@<X3>, int **a5@<X4>, uint64_t a6@<X5>, int **a7@<X6>, uint64_t a8@<X8>)
{
  v37 = a4;
  v38 = a6;
  v40 = a1;
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, a5, a2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v20 = v19;
  v36 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a5, a2, v19, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v22 = *(AssociatedConformanceWitness + 48);
  v34 = v20;
  v35 = a8;
  v22(v20, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a7, a3, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v32 = a7;
  v33 = v23;
  v39 = a3;
  v24 = swift_getAssociatedConformanceWitness(a7, a3, v23, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v25 = 0;
  v26 = *(v24 + 56);
  do
  {
    v27 = swift_checkMetadataState(0, v33);
    v26(v25, v27, v24);
    (*(*(v37 + 8) + 104))(v15, v39, *(v38 + 8));
    (*(AssociatedConformanceWitness + 64))(v18, v25++, v34, AssociatedConformanceWitness);
  }

  while (v25 != 16);
  v29 = type metadata accessor for SIMD16(0, v39, v32, v28);
  return (*(*(v29 - 8) + 8))(v40, v29);
}

uint64_t SIMD16<>.init<A>(_:rounding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, Class *a4@<X3>, uint64_t a5@<X4>, swift *a6@<X5>, uint64_t a7@<X6>, int **a8@<X7>, uint64_t a9@<X8>)
{
  v48 = a5;
  v49 = a7;
  v46 = a2;
  v51 = a1;
  v14 = MEMORY[0x1EEE9AC00](a1, a2);
  v44 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness(0, v24, v23, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v26 = v25;
  v47 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(a6, a3, v25, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v28 = *(AssociatedConformanceWitness + 48);
  v45 = a9;
  v43 = v26;
  v28(v26, AssociatedConformanceWitness);
  swift_getAssociatedTypeWitness(255, a8, a4, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v39 = a8;
  v50 = a4;
  v42 = v29;
  v30 = swift_getAssociatedConformanceWitness(a8, a4, v29, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v31 = 0;
  v40 = *(v30 + 56);
  v41 = v30;
  do
  {
    v32 = swift_checkMetadataState(0, v42);
    v40(v31, v32, v41);
    v33 = v49;
    v34 = v50;
    (*(*(v49 + 16) + 304))(v46, v50);
    (*(*(v48 + 8) + 80))(v19, v34, v33);
    (*(AssociatedConformanceWitness + 64))(v22, v31++, v43, AssociatedConformanceWitness);
  }

  while (v31 != 16);
  v36 = type metadata accessor for SIMD16(0, v50, v39, v35);
  return (*(*(v36 - 8) + 8))(v51, v36);
}

uint64_t SIMD16.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  v994 = a1;
  v2 = *(a1 + 16);
  v3 = *(*(v2 - 1) + 8);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v953 - v7;
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v983 = &v953 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v993 = &v953 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v1003 = &v953 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v963 = &v953 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v973 = &v953 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22, v24);
  v982 = &v953 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v992 = &v953 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v1002 = &v953 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31, v33);
  v962 = &v953 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34, v36);
  v972 = &v953 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37, v39);
  v981 = &v953 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40, v42);
  v991 = &v953 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43, v45);
  v1001 = &v953 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46, v48);
  v961 = &v953 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49, v51);
  v971 = &v953 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v980 = &v953 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55, v57);
  v990 = &v953 - v59;
  v61 = MEMORY[0x1EEE9AC00](v58, v60);
  v1000 = &v953 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61, v63);
  v960 = &v953 - v65;
  v67 = MEMORY[0x1EEE9AC00](v64, v66);
  v970 = &v953 - v68;
  v70 = MEMORY[0x1EEE9AC00](v67, v69);
  v979 = &v953 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70, v72);
  v989 = &v953 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73, v75);
  v999 = &v953 - v77;
  v79 = MEMORY[0x1EEE9AC00](v76, v78);
  v959 = &v953 - v80;
  v82 = MEMORY[0x1EEE9AC00](v79, v81);
  v969 = &v953 - v83;
  v85 = MEMORY[0x1EEE9AC00](v82, v84);
  v978 = &v953 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85, v87);
  v988 = &v953 - v89;
  v91 = MEMORY[0x1EEE9AC00](v88, v90);
  v998 = &v953 - v92;
  v94 = MEMORY[0x1EEE9AC00](v91, v93);
  v958 = &v953 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94, v96);
  v968 = &v953 - v98;
  v100 = MEMORY[0x1EEE9AC00](v97, v99);
  v977 = &v953 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100, v102);
  v987 = &v953 - v104;
  v106 = MEMORY[0x1EEE9AC00](v103, v105);
  v997 = &v953 - v107;
  v109 = MEMORY[0x1EEE9AC00](v106, v108);
  v957 = &v953 - v110;
  v112 = MEMORY[0x1EEE9AC00](v109, v111);
  v967 = &v953 - v113;
  v115 = MEMORY[0x1EEE9AC00](v112, v114);
  v976 = &v953 - v116;
  v118 = MEMORY[0x1EEE9AC00](v115, v117);
  v986 = &v953 - v119;
  v121 = MEMORY[0x1EEE9AC00](v118, v120);
  v996 = &v953 - v122;
  v124 = MEMORY[0x1EEE9AC00](v121, v123);
  v956 = &v953 - v125;
  v127 = MEMORY[0x1EEE9AC00](v124, v126);
  v966 = &v953 - v128;
  v130 = MEMORY[0x1EEE9AC00](v127, v129);
  v975 = &v953 - v131;
  v133 = MEMORY[0x1EEE9AC00](v130, v132);
  v985 = &v953 - v134;
  v136 = MEMORY[0x1EEE9AC00](v133, v135);
  v995 = &v953 - v137;
  v139 = MEMORY[0x1EEE9AC00](v136, v138);
  v955 = &v953 - v140;
  v142 = MEMORY[0x1EEE9AC00](v139, v141);
  v965 = &v953 - v143;
  v145 = MEMORY[0x1EEE9AC00](v142, v144);
  v974 = &v953 - v146;
  v148 = MEMORY[0x1EEE9AC00](v145, v147);
  v984 = &v953 - v149;
  v151 = MEMORY[0x1EEE9AC00](v148, v150);
  v153 = &v953 - v152;
  MEMORY[0x1EEE9AC00](v151, v154);
  v156 = &v953 - v155;
  v157 = _StringGuts.init(_initialCapacity:)(74);
  v159 = v158;
  v1010._countAndFlagsBits = v157;
  v1010._object = v158;
  v160 = HIBYTE(v158) & 0xF;
  if ((v158 & 0x2000000000000000) == 0)
  {
    v160 = v157 & 0xFFFFFFFFFFFFLL;
  }

  if (v160 || (v157 & ~v158 & 0x2000000000000000) != 0)
  {
    if ((v158 & 0x2000000000000000) != 0 && (v161 = specialized _SmallString.init(_:appending:)(v157, v158, 0x3C3631444D4953uLL, 0xE700000000000000), (v163 & 1) == 0))
    {
      v172 = v161;
      v173 = v162;
      v159;
      0xE700000000000000;
      v1010._countAndFlagsBits = v172;
      v1010._object = v173;
    }

    else
    {
      0xE700000000000000;
      _StringGuts.append(_:)(0x3C3631444D4953, 0xE700000000000000, 0, 7, v164, v165, v166, v167, v168, v169, v170, v171);
      swift_bridgeObjectRelease_n(0xE700000000000000, 2);
    }
  }

  else
  {
    v1010._countAndFlagsBits = 0x3C3631444D4953;
    v1010._object = 0xE700000000000000;
    v158;
  }

  TypeName = swift_getTypeName(v2, 0);
  if (v175 < 0)
  {
    _fatalErrorMessage(_:_:file:line:flags:)("Fatal error", 11, 2);
  }

  v176 = TypeName;
  v177 = v175;
  if (_allASCII(_:)(TypeName, v175))
  {
    v179 = 1;
LABEL_13:
    if (v177)
    {
      if (v177 > 15)
      {
        v180 = specialized static __StringStorage.create(initializingFrom:codeUnitCapacity:isASCII:)(v176, v177, v177, v179 & 1);
        v181 = *(v180 + 24);
        goto LABEL_80;
      }

      v198 = v177 - 8;
      v199 = 8;
      if (v177 < 8)
      {
        v199 = v177;
      }

      if (v177 >= 4)
      {
        v201 = v199 & 0xC;
        v178.i32[0] = *v176;
        v202 = vmovl_u16(*&vmovl_u8(v178));
        v203.i64[0] = v202.u32[0];
        v203.i64[1] = v202.u32[1];
        v204.i64[0] = 255;
        v204.i64[1] = 255;
        v205 = vandq_s8(v203, v204);
        v203.i64[0] = v202.u32[2];
        v203.i64[1] = v202.u32[3];
        v206 = vshlq_u64(vandq_s8(v203, v204), xmmword_18071DBA0);
        v207.i32[1] = 0;
        v208 = vshlq_u64(v205, xmmword_18071DBB0);
        if (v201 != 4)
        {
          v207.i32[0] = *(v176 + 4);
          v209 = vmovl_u16(*&vmovl_u8(v207));
          v210.i64[0] = v209.u32[2];
          v210.i64[1] = v209.u32[3];
          v211 = vandq_s8(v210, v204);
          v210.i64[0] = v209.u32[0];
          v210.i64[1] = v209.u32[1];
          v206 = vorrq_s8(vshlq_u64(v211, xmmword_18071DBD0), v206);
          v208 = vorrq_s8(vshlq_u64(vandq_s8(v210, v204), xmmword_18071DBC0), v208);
        }

        v212 = vorrq_s8(v208, v206);
        v181 = vorr_s8(*v212.i8, *&vextq_s8(v212, v212, 8uLL));
        if (v199 == v201)
        {
          goto LABEL_72;
        }

        v200 = 8 * v201;
      }

      else
      {
        v181 = 0;
        v200 = 0;
        v201 = 0;
      }

      v213 = v199 - v201;
      v214 = (v176 + v201);
      do
      {
        v215 = *v214++;
        v181 |= v215 << (v200 & 0x38);
        v200 += 8;
        --v213;
      }

      while (v213);
LABEL_72:
      if (v177 < 9)
      {
        v216 = 0;
      }

      else
      {
        v216 = 0;
        v217 = 0;
        v218 = (v176 + 8);
        do
        {
          v219 = *v218++;
          v216 |= v219 << v217;
          v217 += 8;
          --v198;
        }

        while (v198);
      }

      v220 = 0xA000000000000000;
      if (((v216 | v181) & 0x8080808080808080) == 0)
      {
        v220 = 0xE000000000000000;
      }

      v180 = v220 | (v177 << 56) | v216;
      goto LABEL_80;
    }

LABEL_59:
    v181 = 0;
    v180 = 0xE000000000000000;
    goto LABEL_80;
  }

  if (!v177)
  {
    goto LABEL_59;
  }

  v182 = 0;
  v183 = (v176 + v177);
  v179 = 1;
  v184 = v176;
  v185 = v176;
  while (1)
  {
    v187 = *v185++;
    v186 = v187;
    if ((v187 & 0x80000000) == 0)
    {
      v188 = 1;
      goto LABEL_20;
    }

    if ((v186 + 11) <= 0xCCu)
    {
      LOBYTE(v1004._countAndFlagsBits) = _diagnoseInvalidUTF8MultiByteLeading(_:)(v186);
      goto LABEL_61;
    }

    if (v186 > 0xDFu)
    {
      break;
    }

    if (v185 == v183 || (*v185 & 0xC0) != 0x80)
    {
LABEL_339:
      LOBYTE(v1004._countAndFlagsBits) = 4;
      goto LABEL_61;
    }

    v179 = 0;
    v185 = v184 + 2;
    v188 = 2;
LABEL_20:
    v182 += v188;
    v184 = v185;
    if (v185 == v183)
    {
      goto LABEL_13;
    }
  }

  if (v186 == 224)
  {
    if (v185 == v183)
    {
      goto LABEL_339;
    }

    if (v184[1] - 192 < 0xFFFFFFE0)
    {
      goto LABEL_340;
    }

    goto LABEL_44;
  }

  if (v186 <= 0xECu)
  {
    goto LABEL_42;
  }

  if (v186 == 237)
  {
    if (v185 == v183)
    {
      goto LABEL_339;
    }

    v189 = v184[1];
    if (v189 > 0x9F || (v189 & 0xC0) != 0x80)
    {
      LOBYTE(v1004._countAndFlagsBits) = 1;
      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v186 <= 0xEFu)
  {
LABEL_42:
    if (v185 == v183 || (v184[1] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

LABEL_44:
    if (v184 + 2 == v183 || (v184[2] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

    v179 = 0;
    v185 = v184 + 3;
    v188 = 3;
    goto LABEL_20;
  }

  if (v186 == 240)
  {
    if (v185 == v183)
    {
      goto LABEL_339;
    }

    if (v184[1] - 192 < 0xFFFFFFD0)
    {
LABEL_340:
      LOBYTE(v1004._countAndFlagsBits) = 3;
      goto LABEL_61;
    }

    goto LABEL_54;
  }

  if (v186 <= 0xF3u)
  {
    if (v185 == v183 || (v184[1] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

    goto LABEL_54;
  }

  if (v185 == v183)
  {
    goto LABEL_339;
  }

  v190 = v184[1];
  if (v190 <= 0x8F && (v190 & 0xC0) == 0x80)
  {
LABEL_54:
    if (v184 + 2 == v183 || (v184[2] & 0xC0) != 0x80 || v184 + 3 == v183 || (v184[3] & 0xC0) != 0x80)
    {
      goto LABEL_339;
    }

    v179 = 0;
    v185 = v184 + 4;
    v188 = 4;
    goto LABEL_20;
  }

  LOBYTE(v1004._countAndFlagsBits) = 2;
LABEL_61:
  swift_willThrowTypedImpl(&v1004, &type metadata for _UTF8EncodingErrorKind, &protocol witness table for _UTF8EncodingErrorKind);
  v191 = specialized Collection.subscript.getter(v182, v176, v177);
  v195 = findInvalidRange #1 (_:) in validateUTF8(_:)(v191, v192, v193, v194);
  v181 = repairUTF8(_:firstKnownBrokenRange:)(v176, v177, v195, v196);
  v180 = v197;
LABEL_80:
  v221 = v1010;
  v222 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v222 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v222 && (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) == 0)
  {
    v1010._countAndFlagsBits = v181;
    v1010._object = v180;
    v221._object;
    goto LABEL_92;
  }

  if ((v1010._object & 0x2000000000000000) != 0)
  {
    if ((v180 & 0x2000000000000000) != 0)
    {
      v224 = specialized _SmallString.init(_:appending:)(v1010._countAndFlagsBits, v1010._object, v181, v180);
      if (v226)
      {
        goto LABEL_90;
      }

      v850 = v224;
      v851 = v225;
      v180;
      v1010._object;
      v1010._countAndFlagsBits = v850;
      v1010._object = v851;
      goto LABEL_92;
    }

LABEL_88:
    v223 = v181 & 0xFFFFFFFFFFFFLL;
    goto LABEL_91;
  }

  if ((v180 & 0x2000000000000000) == 0)
  {
    goto LABEL_88;
  }

LABEL_90:
  v223 = HIBYTE(v180) & 0xF;
LABEL_91:
  v180;
  _StringGuts.append(_:)(v181, v180, 0, v223, v227, v228, v229, v230, v231, v232, v233, v234);
  swift_bridgeObjectRelease_n(v180, 2);
LABEL_92:
  v235 = v1010;
  v236 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v236 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v954 = &v953 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v964 = v8;
  if (v236 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    if ((v1010._object & 0x2000000000000000) != 0 && (v237 = specialized _SmallString.init(_:appending:)(v1010._countAndFlagsBits, v1010._object, 0x283EuLL, 0xE200000000000000), (v239 & 1) == 0))
    {
      v248 = v237;
      v249 = v238;
      0xE200000000000000;
      v1010._object;
      v1010._countAndFlagsBits = v248;
      v1010._object = v249;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(10302, 0xE200000000000000, 0, 2, v240, v241, v242, v243, v244, v245, v246, v247);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1010._countAndFlagsBits = 10302;
    v1010._object = 0xE200000000000000;
    v235._object;
  }

  v250 = *(v994 + 24);
  swift_getAssociatedTypeWitness(255, v250, v2, &protocol requirements base descriptor for SIMDScalar, associated type descriptor for SIMDScalar.SIMD16Storage);
  v252 = v251;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness(v250, v2, v251, &protocol requirements base descriptor for SIMDScalar, associated conformance descriptor for SIMDScalar.SIMDScalar.SIMD16Storage: SIMDStorage);
  v254 = *(AssociatedConformanceWitness + 56);
  v255 = swift_checkMetadataState(0, v252);
  v254(0, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v256 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v256, v156, v3);
  v257 = v1005;
  v258 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  DynamicType = swift_getDynamicType(v258, v257, 1);
  LODWORD(v257) = swift_isOptionalType(DynamicType);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v257)
  {
    memcpy(v153, v156, v3);
    v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v260, 7uLL, v261, v262, v263, v953);
    goto LABEL_104;
  }

  v279 = v984;
  memcpy(v984, v156, v3);
  if ((swift_dynamicCast(&v1004, v279, v2, &type metadata for String, 6uLL, v280, v281, v282, v953) & 1) == 0)
  {
    v308 = v974;
    memcpy(v974, v156, v3);
    v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v1007, v308, v2, v309, 6uLL, v310, v311, v312, v953))
    {
      _ss9CodingKey_pWOb_0(&v1007, &v1004);
      v313 = v1005;
      v314 = v1006;
      __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
      (*(v314 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v313, v314);
    }

    else
    {
      v1009 = 0;
      v1007 = 0u;
      v1008 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v782 = v965;
      memcpy(v965, v156, v3);
      v783 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v1007, v782, v2, v783, 6uLL, v784, v785, v786, v953))
      {
        _ss9CodingKey_pWOb_0(&v1007, &v1004);
        v787 = v1005;
        v788 = v1006;
        __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
        v266 = (*(v788 + 8))(v787, v788);
      }

      else
      {
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v852 = v955;
        memcpy(v955, v156, v3);
        v853 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v1007, v852, v2, v853, 6uLL, v854, v855, v856, v953))
        {
          v1009 = 0;
          v1007 = 0u;
          v1008 = 0u;
          outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v1008 + 1) = v2;
          v915 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
          memcpy(v915, v156, v3);
          Mirror.init(reflecting:)(&v1007, &v1004);
          object = v1004._object;
          v917 = v1006;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v156, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v917;
          object;
          goto LABEL_119;
        }

        _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_104:
        v264 = v1005;
        v265 = v1006;
        __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
        v266 = (*(v265 + 8))(v264, v265);
      }

      v276 = v267;
      v277 = v1010;
      v278 = (v1010._object >> 56) & 0xF;
      if ((v1010._object & 0x2000000000000000) == 0)
      {
        v278 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v278 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
      {
        _StringGuts.append(_:)(v266, v267, v268, v269, v270, v271, v272, v273, v274, v275);
      }

      else
      {
        v1010._countAndFlagsBits = v266;
        v1010._object = v267;
        v276 = v277._object;
      }

      v276;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_119;
  }

  v291 = v1004._object;
  v292 = v1010;
  v293 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v293 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v293 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(v1004._countAndFlagsBits, v1004._object, v283, v284, v285, v286, v287, v288, v289, v290);
    v294 = v291;
  }

  else
  {
    v1010 = v1004;
    v294 = v292._object;
  }

  v294;
LABEL_119:
  v295 = v1010;
  v296 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v296 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v296 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    if ((v1010._object & 0x2000000000000000) != 0 && (v297 = specialized _SmallString.init(_:appending:)(v1010._countAndFlagsBits, v1010._object, 0x202CuLL, 0xE200000000000000), (v299 & 1) == 0))
    {
      v315 = v297;
      v316 = v298;
      0xE200000000000000;
      v1010._object;
      v1010._countAndFlagsBits = v315;
      v1010._object = v316;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v300, v301, v302, v303, v304, v305, v306, v307);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
    v295._object;
  }

  v317 = v995;
  v254(1, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v318 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v318, v317, v3);
  v319 = v1005;
  v320 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v321 = swift_getDynamicType(v320, v319, 1);
  LODWORD(v319) = swift_isOptionalType(v321);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v319)
  {
    memcpy(v153, v317, v3);
    v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v322, 7uLL, v323, v324, v325, v953);
    goto LABEL_132;
  }

  v341 = v985;
  memcpy(v985, v317, v3);
  if (swift_dynamicCast(&v1004, v341, v2, &type metadata for String, 6uLL, v342, v343, v344, v953))
  {
    v345 = v1004._object;
    String.write(_:)(v1004);
    v345;
    goto LABEL_142;
  }

  v359 = v975;
  memcpy(v975, v317, v3);
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1007, v359, v2, v360, 6uLL, v361, v362, v363, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v364 = v1005;
    v365 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    (*(v365 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v364, v365);
LABEL_139:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_142;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v789 = v966;
  memcpy(v966, v317, v3);
  v790 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v789, v2, v790, 6uLL, v791, v792, v793, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v794 = v1005;
    v795 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v328 = (*(v795 + 8))(v794, v795);
LABEL_133:
    v338 = v329;
    v339 = v1010;
    v340 = (v1010._object >> 56) & 0xF;
    if ((v1010._object & 0x2000000000000000) == 0)
    {
      v340 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v340 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v328, v329, v330, v331, v332, v333, v334, v335, v336, v337);
    }

    else
    {
      v1010._countAndFlagsBits = v328;
      v1010._object = v329;
      v338 = v339._object;
    }

    v338;
    goto LABEL_139;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v857 = v956;
  memcpy(v956, v317, v3);
  v858 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v857, v2, v858, 6uLL, v859, v860, v861, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_132:
    v326 = v1005;
    v327 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v328 = (*(v327 + 8))(v326, v327);
    goto LABEL_133;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1008 + 1) = v2;
  v918 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
  memcpy(v918, v317, v3);
  Mirror.init(reflecting:)(&v1007, &v1004);
  v919 = v1004._object;
  v920 = v317;
  v921 = v1006;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v920, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v921;
  v919;
LABEL_142:
  v346 = v1010;
  v347 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v347 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v347 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    if ((v1010._object & 0x2000000000000000) != 0 && (v348 = specialized _SmallString.init(_:appending:)(v1010._countAndFlagsBits, v1010._object, 0x202CuLL, 0xE200000000000000), (v350 & 1) == 0))
    {
      v366 = v348;
      v367 = v349;
      0xE200000000000000;
      v1010._object;
      v1010._countAndFlagsBits = v366;
      v1010._object = v367;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v351, v352, v353, v354, v355, v356, v357, v358);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
    v346._object;
  }

  v368 = v996;
  v254(2, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v369 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v369, v368, v3);
  v370 = v1005;
  v371 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v372 = swift_getDynamicType(v371, v370, 1);
  LODWORD(v370) = swift_isOptionalType(v372);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v370)
  {
    memcpy(v153, v368, v3);
    v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v373, 7uLL, v374, v375, v376, v953);
    goto LABEL_155;
  }

  v392 = v986;
  memcpy(v986, v368, v3);
  if (swift_dynamicCast(&v1004, v392, v2, &type metadata for String, 6uLL, v393, v394, v395, v953))
  {
    v396 = v1004._object;
    String.write(_:)(v1004);
    v396;
    goto LABEL_165;
  }

  v410 = v976;
  memcpy(v976, v368, v3);
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1007, v410, v2, v411, 6uLL, v412, v413, v414, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v415 = v1005;
    v416 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    (*(v416 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v415, v416);
LABEL_162:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_165;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v796 = v967;
  memcpy(v967, v368, v3);
  v797 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v796, v2, v797, 6uLL, v798, v799, v800, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v801 = v1005;
    v802 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v379 = (*(v802 + 8))(v801, v802);
LABEL_156:
    v389 = v380;
    v390 = v1010;
    v391 = (v1010._object >> 56) & 0xF;
    if ((v1010._object & 0x2000000000000000) == 0)
    {
      v391 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v391 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v379, v380, v381, v382, v383, v384, v385, v386, v387, v388);
    }

    else
    {
      v1010._countAndFlagsBits = v379;
      v1010._object = v380;
      v389 = v390._object;
    }

    v389;
    goto LABEL_162;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v862 = v957;
  memcpy(v957, v368, v3);
  v863 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v862, v2, v863, 6uLL, v864, v865, v866, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_155:
    v377 = v1005;
    v378 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v379 = (*(v378 + 8))(v377, v378);
    goto LABEL_156;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1008 + 1) = v2;
  v922 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
  memcpy(v922, v368, v3);
  Mirror.init(reflecting:)(&v1007, &v1004);
  v923 = v1004._object;
  v924 = v368;
  v925 = v1006;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v924, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v925;
  v923;
LABEL_165:
  v397 = v1010;
  v398 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v398 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v398 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    if ((v1010._object & 0x2000000000000000) != 0 && (v399 = specialized _SmallString.init(_:appending:)(v1010._countAndFlagsBits, v1010._object, 0x202CuLL, 0xE200000000000000), (v401 & 1) == 0))
    {
      v417 = v399;
      v418 = v400;
      0xE200000000000000;
      v1010._object;
      v1010._countAndFlagsBits = v417;
      v1010._object = v418;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v402, v403, v404, v405, v406, v407, v408, v409);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
    v397._object;
  }

  v419 = v997;
  v254(3, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v420 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v420, v419, v3);
  v421 = v1005;
  v422 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v423 = swift_getDynamicType(v422, v421, 1);
  LODWORD(v421) = swift_isOptionalType(v423);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v421)
  {
    memcpy(v153, v419, v3);
    v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v424, 7uLL, v425, v426, v427, v953);
    v428 = v1005;
    v429 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v430 = (*(v429 + 8))(v428, v429);
    v440 = v431;
    v441 = v1010;
    v442 = (v1010._object >> 56) & 0xF;
    if ((v1010._object & 0x2000000000000000) == 0)
    {
      v442 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
    }

    if (v442 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
    {
      _StringGuts.append(_:)(v430, v431, v432, v433, v434, v435, v436, v437, v438, v439);
    }

    else
    {
      v1010._countAndFlagsBits = v430;
      v1010._object = v431;
      v440 = v441._object;
    }

    v443 = v440;
LABEL_183:
    v443;
LABEL_184:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  }

  else
  {
    v444 = v987;
    memcpy(v987, v419, v3);
    if (swift_dynamicCast(&v1004, v444, v2, &type metadata for String, 6uLL, v445, v446, v447, v953))
    {
      v448 = v1004._object;
      String.write(_:)(v1004);
      v448;
    }

    else
    {
      v462 = v977;
      memcpy(v977, v419, v3);
      v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
      if (swift_dynamicCast(&v1007, v462, v2, v463, 6uLL, v464, v465, v466, v953))
      {
        _ss9CodingKey_pWOb_0(&v1007, &v1004);
        v467 = v1005;
        v468 = v1006;
        __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
        (*(v468 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v467, v468);
        goto LABEL_184;
      }

      v1009 = 0;
      v1007 = 0u;
      v1008 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v803 = v968;
      memcpy(v968, v419, v3);
      v804 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v1007, v803, v2, v804, 6uLL, v805, v806, v807, v953) || (v1009 = 0, v1007 = 0u, v1008 = 0u, outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR), v867 = v958, memcpy(v958, v419, v3), v868 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR), swift_dynamicCast(&v1007, v867, v2, v868, 6uLL, v869, v870, v871, v953)))
      {
        _ss9CodingKey_pWOb_0(&v1007, &v1004);
        v872 = v1005;
        v873 = v1006;
        __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
        v874 = (*(v873 + 8))(v872, v873);
        v876 = v875;
        static String.+= infix(_:_:)(&v1010, v874, v875, v877, v878, v879, v880, v881, v882, v883, v884);
        v443 = v876;
        goto LABEL_183;
      }

      v1009 = 0;
      v1007 = 0u;
      v1008 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
      *(&v1008 + 1) = v2;
      v926 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
      memcpy(v926, v419, v3);
      Mirror.init(reflecting:)(&v1007, &v1004);
      v927 = v1004._object;
      v928 = v419;
      v929 = v1006;
      _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v928, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
      v929;
      v927;
    }
  }

  v449 = v1010;
  v450 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v450 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v450 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    if ((v1010._object & 0x2000000000000000) != 0 && (v451 = specialized _SmallString.init(_:appending:)(v1010._countAndFlagsBits, v1010._object, 0x202CuLL, 0xE200000000000000), (v453 & 1) == 0))
    {
      v469 = v451;
      v470 = v452;
      0xE200000000000000;
      v1010._object;
      v1010._countAndFlagsBits = v469;
      v1010._object = v470;
    }

    else
    {
      0xE200000000000000;
      _StringGuts.append(_:)(8236, 0xE200000000000000, 0, 2, v454, v455, v456, v457, v458, v459, v460, v461);
      swift_bridgeObjectRelease_n(0xE200000000000000, 2);
    }
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
    v449._object;
  }

  v471 = v998;
  v254(4, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v472 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v472, v471, v3);
  v473 = v1005;
  v474 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v475 = swift_getDynamicType(v474, v473, 1);
  LODWORD(v473) = swift_isOptionalType(v475);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v473)
  {
    memcpy(v153, v471, v3);
    v476 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v476, 7uLL, v477, v478, v479, v953);
    goto LABEL_200;
  }

  v501 = v988;
  memcpy(v988, v471, v3);
  if (swift_dynamicCast(&v1004, v501, v2, &type metadata for String, 6uLL, v502, v503, v504, v953))
  {
    v505 = v1004._object;
    String.write(_:)(v1004);
    v505;
    goto LABEL_205;
  }

  v740 = v978;
  memcpy(v978, v471, v3);
  v741 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1007, v740, v2, v741, 6uLL, v742, v743, v744, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v745 = v1005;
    v746 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    (*(v746 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v745, v746);
    goto LABEL_202;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v808 = v969;
  memcpy(v969, v471, v3);
  v809 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v808, v2, v809, 6uLL, v810, v811, v812, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v813 = v1005;
    v814 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v482 = (*(v814 + 8))(v813, v814);
LABEL_201:
    v492 = v483;
    static String.+= infix(_:_:)(&v1010, v482, v483, v484, v485, v486, v487, v488, v489, v490, v491);
    v492;
LABEL_202:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_205;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v885 = v959;
  memcpy(v959, v471, v3);
  v886 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v885, v2, v886, 6uLL, v887, v888, v889, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_200:
    v480 = v1005;
    v481 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v482 = (*(v481 + 8))(v480, v481);
    goto LABEL_201;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1008 + 1) = v2;
  v930 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
  memcpy(v930, v471, v3);
  Mirror.init(reflecting:)(&v1007, &v1004);
  v931 = v1004._object;
  v932 = v471;
  v933 = v1006;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v932, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v933;
  v931;
LABEL_205:
  v506 = v1010._object;
  v507 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v507 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v508 = v999;
  if (v507 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v493, v494, v495, v496, v497, v498, v499, v500);
    v506 = 0xE200000000000000;
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
  }

  v506;
  v254(5, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v509 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v509, v508, v3);
  v510 = v1005;
  v511 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v512 = swift_getDynamicType(v511, v510, 1);
  LODWORD(v510) = swift_isOptionalType(v512);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v510)
  {
    memcpy(v153, v508, v3);
    v513 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v513, 7uLL, v514, v515, v516, v953);
    goto LABEL_212;
  }

  v538 = v989;
  memcpy(v989, v508, v3);
  if (swift_dynamicCast(&v1004, v538, v2, &type metadata for String, 6uLL, v539, v540, v541, v953))
  {
    v542 = v1004._object;
    String.write(_:)(v1004);
    v542;
    goto LABEL_217;
  }

  v747 = v979;
  memcpy(v979, v508, v3);
  v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1007, v747, v2, v748, 6uLL, v749, v750, v751, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v752 = v1005;
    v753 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    (*(v753 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v752, v753);
    goto LABEL_214;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v815 = v970;
  memcpy(v970, v508, v3);
  v816 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v815, v2, v816, 6uLL, v817, v818, v819, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v820 = v1005;
    v821 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v519 = (*(v821 + 8))(v820, v821);
LABEL_213:
    v529 = v520;
    static String.+= infix(_:_:)(&v1010, v519, v520, v521, v522, v523, v524, v525, v526, v527, v528);
    v529;
LABEL_214:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_217;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v890 = v960;
  memcpy(v960, v508, v3);
  v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v890, v2, v891, 6uLL, v892, v893, v894, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_212:
    v517 = v1005;
    v518 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v519 = (*(v518 + 8))(v517, v518);
    goto LABEL_213;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1008 + 1) = v2;
  v934 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
  memcpy(v934, v508, v3);
  Mirror.init(reflecting:)(&v1007, &v1004);
  v935 = v1004._object;
  v936 = v508;
  v937 = v1006;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v936, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v937;
  v935;
LABEL_217:
  v543 = v1010._object;
  v544 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v544 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v545 = v1000;
  if (v544 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v530, v531, v532, v533, v534, v535, v536, v537);
    v543 = 0xE200000000000000;
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
  }

  v543;
  v254(6, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v546 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v546, v545, v3);
  v547 = v1005;
  v548 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v549 = swift_getDynamicType(v548, v547, 1);
  LODWORD(v547) = swift_isOptionalType(v549);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v547)
  {
    memcpy(v153, v545, v3);
    v550 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v550, 7uLL, v551, v552, v553, v953);
    goto LABEL_224;
  }

  v575 = v990;
  memcpy(v990, v545, v3);
  if (swift_dynamicCast(&v1004, v575, v2, &type metadata for String, 6uLL, v576, v577, v578, v953))
  {
    v579 = v1004._object;
    String.write(_:)(v1004);
    v579;
    goto LABEL_229;
  }

  v754 = v980;
  memcpy(v980, v545, v3);
  v755 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1007, v754, v2, v755, 6uLL, v756, v757, v758, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v759 = v1005;
    v760 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    (*(v760 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v759, v760);
    goto LABEL_226;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v822 = v971;
  memcpy(v971, v545, v3);
  v823 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v822, v2, v823, 6uLL, v824, v825, v826, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v827 = v1005;
    v828 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v556 = (*(v828 + 8))(v827, v828);
LABEL_225:
    v566 = v557;
    static String.+= infix(_:_:)(&v1010, v556, v557, v558, v559, v560, v561, v562, v563, v564, v565);
    v566;
LABEL_226:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_229;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v895 = v961;
  memcpy(v961, v545, v3);
  v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v895, v2, v896, 6uLL, v897, v898, v899, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_224:
    v554 = v1005;
    v555 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v556 = (*(v555 + 8))(v554, v555);
    goto LABEL_225;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1008 + 1) = v2;
  v938 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
  memcpy(v938, v545, v3);
  Mirror.init(reflecting:)(&v1007, &v1004);
  v939 = v1004._object;
  v940 = v545;
  v941 = v1006;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v940, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v941;
  v939;
LABEL_229:
  v580 = v1010._object;
  v581 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v581 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v582 = v1001;
  if (v581 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v567, v568, v569, v570, v571, v572, v573, v574);
    v580 = 0xE200000000000000;
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
  }

  v580;
  v254(7, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v583 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v583, v582, v3);
  v584 = v1005;
  v585 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v586 = swift_getDynamicType(v585, v584, 1);
  LODWORD(v584) = swift_isOptionalType(v586);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v584)
  {
    memcpy(v153, v582, v3);
    v587 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v587, 7uLL, v588, v589, v590, v953);
    goto LABEL_236;
  }

  v612 = v991;
  memcpy(v991, v582, v3);
  if (swift_dynamicCast(&v1004, v612, v2, &type metadata for String, 6uLL, v613, v614, v615, v953))
  {
    v616 = v1004._object;
    String.write(_:)(v1004);
    v616;
    goto LABEL_241;
  }

  v761 = v981;
  memcpy(v981, v582, v3);
  v762 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1007, v761, v2, v762, 6uLL, v763, v764, v765, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v766 = v1005;
    v767 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    (*(v767 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v766, v767);
    goto LABEL_238;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v829 = v972;
  memcpy(v972, v582, v3);
  v830 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v829, v2, v830, 6uLL, v831, v832, v833, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v834 = v1005;
    v835 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v593 = (*(v835 + 8))(v834, v835);
LABEL_237:
    v603 = v594;
    static String.+= infix(_:_:)(&v1010, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602);
    v603;
LABEL_238:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_241;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v900 = v962;
  memcpy(v962, v582, v3);
  v901 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v900, v2, v901, 6uLL, v902, v903, v904, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_236:
    v591 = v1005;
    v592 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v593 = (*(v592 + 8))(v591, v592);
    goto LABEL_237;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1008 + 1) = v2;
  v942 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
  memcpy(v942, v582, v3);
  Mirror.init(reflecting:)(&v1007, &v1004);
  v943 = v1004._object;
  v944 = v582;
  v945 = v1006;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v944, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v945;
  v943;
LABEL_241:
  v617 = v1010._object;
  v618 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v618 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v619 = v1002;
  if (v618 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v604, v605, v606, v607, v608, v609, v610, v611);
    v617 = 0xE200000000000000;
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
  }

  v617;
  v254(8, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v620 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v620, v619, v3);
  v621 = v1005;
  v622 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v623 = swift_getDynamicType(v622, v621, 1);
  LODWORD(v621) = swift_isOptionalType(v623);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v621)
  {
    memcpy(v153, v619, v3);
    v624 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v624, 7uLL, v625, v626, v627, v953);
    goto LABEL_248;
  }

  v649 = v992;
  memcpy(v992, v619, v3);
  if (swift_dynamicCast(&v1004, v649, v2, &type metadata for String, 6uLL, v650, v651, v652, v953))
  {
    v653 = v1004._object;
    String.write(_:)(v1004);
    v653;
    goto LABEL_253;
  }

  v768 = v982;
  memcpy(v982, v619, v3);
  v769 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
  if (swift_dynamicCast(&v1007, v768, v2, v769, 6uLL, v770, v771, v772, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v773 = v1005;
    v774 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    (*(v774 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v773, v774);
    goto LABEL_250;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
  v836 = v973;
  memcpy(v973, v619, v3);
  v837 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v836, v2, v837, 6uLL, v838, v839, v840, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
    v841 = v1005;
    v842 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v630 = (*(v842 + 8))(v841, v842);
LABEL_249:
    v640 = v631;
    static String.+= infix(_:_:)(&v1010, v630, v631, v632, v633, v634, v635, v636, v637, v638, v639);
    v640;
LABEL_250:
    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
    goto LABEL_253;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
  v905 = v963;
  memcpy(v963, v619, v3);
  v906 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
  if (swift_dynamicCast(&v1007, v905, v2, v906, 6uLL, v907, v908, v909, v953))
  {
    _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_248:
    v628 = v1005;
    v629 = v1006;
    __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
    v630 = (*(v629 + 8))(v628, v629);
    goto LABEL_249;
  }

  v1009 = 0;
  v1007 = 0u;
  v1008 = 0u;
  outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
  *(&v1008 + 1) = v2;
  v946 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
  memcpy(v946, v619, v3);
  Mirror.init(reflecting:)(&v1007, &v1004);
  v947 = v1004._object;
  v948 = v619;
  v949 = v1006;
  _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v948, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  v949;
  v947;
LABEL_253:
  v654 = v1010._object;
  v655 = (v1010._object >> 56) & 0xF;
  if ((v1010._object & 0x2000000000000000) == 0)
  {
    v655 = v1010._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v656 = v1003;
  if (v655 || (v1010._countAndFlagsBits & ~v1010._object & 0x2000000000000000) != 0)
  {
    _StringGuts.append(_:)(0x202CuLL, 0xE200000000000000, v641, v642, v643, v644, v645, v646, v647, v648);
    v654 = 0xE200000000000000;
  }

  else
  {
    v1010._countAndFlagsBits = 8236;
    v1010._object = 0xE200000000000000;
  }

  v654;
  v254(9, v255, AssociatedConformanceWitness);
  v1005 = v2;
  v657 = __swift_allocate_boxed_opaque_existential_0Tm(&v1004);
  memcpy(v657, v656, v3);
  v658 = v1005;
  v659 = __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
  v660 = swift_getDynamicType(v659, v658, 1);
  LODWORD(v658) = swift_isOptionalType(v660);
  __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  if (v658)
  {
    memcpy(v153, v656, v3);
    v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
    swift_dynamicCast(&v1004, v153, v2, v661, 7uLL, v662, v663, v664, v953);
    goto LABEL_260;
  }

  v686 = v993;
  memcpy(v993, v656, v3);
  if (swift_dynamicCast(&v1004, v686, v2, &type metadata for String, 6uLL, v687, v688, v689, v953))
  {
    v690 = v1004._object;
    String.write(_:)(v1004);
    v690;
  }

  else
  {
    v775 = v983;
    memcpy(v983, v656, v3);
    v776 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20TextOutputStreamable_pMd, _ss20TextOutputStreamable_pMR);
    if (swift_dynamicCast(&v1007, v775, v2, v776, 6uLL, v777, v778, v779, v953))
    {
      _ss9CodingKey_pWOb_0(&v1007, &v1004);
      v780 = v1005;
      v781 = v1006;
      __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
      (*(v781 + 8))(&v1010, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation, v780, v781);
    }

    else
    {
      v1009 = 0;
      v1007 = 0u;
      v1008 = 0u;
      outlined destroy of _HasContiguousBytes?(&v1007, &_ss20TextOutputStreamable_pSgMd, _ss20TextOutputStreamable_pSgMR);
      v843 = v964;
      memcpy(v964, v656, v3);
      v844 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23CustomStringConvertible_pMd, _ss23CustomStringConvertible_pMR);
      if (swift_dynamicCast(&v1007, v843, v2, v844, 6uLL, v845, v846, v847, v953))
      {
        _ss9CodingKey_pWOb_0(&v1007, &v1004);
        v848 = v1005;
        v849 = v1006;
        __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
        v667 = (*(v849 + 8))(v848, v849);
      }

      else
      {
        v1009 = 0;
        v1007 = 0u;
        v1008 = 0u;
        outlined destroy of _HasContiguousBytes?(&v1007, &_ss23CustomStringConvertible_pSgMd, _ss23CustomStringConvertible_pSgMR);
        v910 = v954;
        memcpy(v954, v656, v3);
        v911 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss28CustomDebugStringConvertible_pMd, _ss28CustomDebugStringConvertible_pMR);
        if (!swift_dynamicCast(&v1007, v910, v2, v911, 6uLL, v912, v913, v914, v953))
        {
          v1009 = 0;
          v1007 = 0u;
          v1008 = 0u;
          outlined destroy of _HasContiguousBytes?(&v1007, &_ss28CustomDebugStringConvertible_pSgMd, _ss28CustomDebugStringConvertible_pSgMR);
          *(&v1008 + 1) = v2;
          v950 = __swift_allocate_boxed_opaque_existential_0Tm(&v1007);
          memcpy(v950, v656, v3);
          Mirror.init(reflecting:)(&v1007, &v1004);
          v951 = v1004._object;
          v952 = v1006;
          _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)(v656, &v1004, &v1010, 0, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
          v952;
          v951;
          goto LABEL_265;
        }

        _ss9CodingKey_pWOb_0(&v1007, &v1004);
LABEL_260:
        v665 = v1005;
        v666 = v1006;
        __swift_project_boxed_opaque_existential_0Tm(&v1004, v1005);
        v667 = (*(v666 + 8))(v665, v666);
      }

      v677 = v668;
      static String.+= infix(_:_:)(&v1010, v667, v668, v669, v670, v671, v672, v673, v674, v675, v676);
      v677;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v1004._countAndFlagsBits);
  }

LABEL_265:
  static String.+= infix(_:_:)(&v1010, 0x202CuLL, 0xE200000000000000, v678, v679, v680, v681, v682, v683, v684, v685);
  0xE200000000000000;
  v254(10, v255, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v153, &v1010, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1010, 0x202CuLL, 0xE200000000000000, v691, v692, v693, v694, v695, v696, v697, v698);
  0xE200000000000000;
  v254(11, v255, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v153, &v1010, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1010, 0x202CuLL, 0xE200000000000000, v699, v700, v701, v702, v703, v704, v705, v706);
  0xE200000000000000;
  v254(12, v255, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v153, &v1010, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1010, 0x202CuLL, 0xE200000000000000, v707, v708, v709, v710, v711, v712, v713, v714);
  0xE200000000000000;
  v254(13, v255, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v153, &v1010, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1010, 0x202CuLL, 0xE200000000000000, v715, v716, v717, v718, v719, v720, v721, v722);
  0xE200000000000000;
  v254(14, v255, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v153, &v1010, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1010, 0x202CuLL, 0xE200000000000000, v723, v724, v725, v726, v727, v728, v729, v730);
  0xE200000000000000;
  v254(15, v255, AssociatedConformanceWitness);
  _print_unlocked<A, B>(_:_:)(v153, &v1010, v2, &type metadata for DefaultStringInterpolation, &protocol witness table for DefaultStringInterpolation);
  static String.+= infix(_:_:)(&v1010, 0x29uLL, 0xE100000000000000, v731, v732, v733, v734, v735, v736, v737, v738);
  0xE100000000000000;
  return v1010._countAndFlagsBits;
}