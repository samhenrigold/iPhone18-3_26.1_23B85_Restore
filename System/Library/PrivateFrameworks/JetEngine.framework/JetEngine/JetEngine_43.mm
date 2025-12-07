unint64_t sub_1AB3AF484()
{
  result = qword_1EB433B18;
  if (!qword_1EB433B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B18);
  }

  return result;
}

unint64_t sub_1AB3AF4DC()
{
  result = qword_1EB4325C0;
  if (!qword_1EB4325C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4325C0);
  }

  return result;
}

unint64_t sub_1AB3AF530()
{
  result = qword_1EB43BE78;
  if (!qword_1EB43BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE78);
  }

  return result;
}

unint64_t sub_1AB3AF598()
{
  result = qword_1EB43BE88;
  if (!qword_1EB43BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE88);
  }

  return result;
}

unint64_t sub_1AB3AF5F0()
{
  result = qword_1EB433B58;
  if (!qword_1EB433B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B58);
  }

  return result;
}

unint64_t sub_1AB3AF648()
{
  result = qword_1EB433B60;
  if (!qword_1EB433B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433B60);
  }

  return result;
}

uint64_t AsyncObjectGraphError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    v4 = *(v1 + 32);
    swift_getErrorValue();
    v5 = v4;
    v3 = sub_1AB462024();
  }

  else if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1AB03BD38(0, v2, 0);
    v6 = (v1 + 32);
    do
    {
      v7 = *v6;
      swift_getErrorValue();
      v8 = v7;
      v9 = sub_1AB462024();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1AB03BD38((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      ++v6;
      --v2;
    }

    while (v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
    sub_1AB04E498();
    v3 = sub_1AB460484();
  }

  else
  {
    return 0xD000000000000036;
  }

  return v3;
}

unint64_t AsyncObjectGraphError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_0);
LABEL_8:
    v10 = sub_1AB01B220(inited);
    swift_setDeallocating();
    sub_1AB1BA43C(v6);
    return v10;
  }

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = sub_1AB460544();
    v6 = inited + 32;
    *(inited + 40) = v9;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437EF0, &unk_1AB4F2600);
    *(inited + 48) = v1;

    goto LABEL_8;
  }

  v3 = MEMORY[0x1E69E7CC0];

  return sub_1AB01B220(v3);
}

uint64_t sub_1AB3AF9F8(uint64_t a1)
{
  v2 = sub_1AB3AFA80();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1AB3AFA34(uint64_t a1)
{
  v2 = sub_1AB3AFA80();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_1AB3AFA80()
{
  result = qword_1EB433740;
  if (!qword_1EB433740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433740);
  }

  return result;
}

unint64_t JetPackageWriterError.errorDescription.getter()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

unint64_t sub_1AB3AFB30()
{
  v1 = 0xD000000000000020;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t JetPackageWriter.init(encryption:compression:serialization:versionIdentifier:keyIdentifier:keyURL:)@<X0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v8 = *a2;
  *a7 = *a1;
  *(a7 + 1) = v8;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5;
  *(a7 + 26) = BYTE2(a5) & 1;
  v9 = a7 + *(type metadata accessor for JetPackageWriter(0) + 36);

  return sub_1AB2D0A88(a6, v9);
}

uint64_t type metadata accessor for JetPackageWriter(uint64_t a1)
{
  result = qword_1EB43BEA8;
  if (!qword_1EB43BEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *JetPackageWriter.writePackage(to:source:artifactStoreURL:progressCallback:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), void (*a4)(__int128 *, double), uint64_t a5)
{
  v11 = sub_1AB45F764();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1, v12);
  v16 = type metadata accessor for FileOutputStream(0);
  swift_allocObject();
  result = sub_1AB2516A4(v14);
  if (!v5)
  {
    v19[3] = v16;
    v19[4] = &off_1F2001F78;
    v19[0] = result;

    sub_1AB3AFDE8(v19, a2, a3, a4, a5);

    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  return result;
}

uint64_t sub_1AB3AFDE8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), void (*a4)(__int128 *, double), uint64_t a5)
{
  v132 = a5;
  v134 = a4;
  v139 = a3;
  v131 = a2;
  v125 = a1;
  v154 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v124 = &v118 - v6;
  v7 = type metadata accessor for FileArtifact(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v121 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v118 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v118 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v118 - v14;
  v15 = sub_1AB45F9E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1AB45F764();
  v19 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v122 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v123 = &v118 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v118 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v118 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v118 - v29;
  sub_1AB45F9D4();
  sub_1AB45F9C4();
  v32 = *(v16 + 8);
  v31 = v16 + 8;
  v137 = v15;
  v135 = v32;
  v32(v18, v15);
  sub_1AB45F664();

  v33 = [objc_opt_self() defaultManager];
  v34 = sub_1AB45F654();
  *&v143 = 0;
  LODWORD(v15) = [v33 createDirectoryAtURL:v34 withIntermediateDirectories:0 attributes:0 error:&v143];

  v35 = v143;
  if (v15)
  {
    v120 = v25;
    v37 = v19 + 16;
    v36 = *(v19 + 16);
    v38 = v136;
    v127 = v30;
    v39 = v30;
    v40 = v31;
    v41 = v19;
    v42 = v140;
    v139 = v36;
    v36(v136, v39, v140);
    v43 = v35;
    sub_1AB45F9D4();
    sub_1AB45F9C4();
    v119 = v18;
    v135(v18, v137);
    v44 = v40;
    v45 = v138;
    sub_1AB45F664();

    v118 = v41;
    v46 = (v41 + 8);
    v126 = *(v41 + 8);
    v126(v38, v42);
    v47 = v134;
    v48 = v44;
    if (v134)
    {
      LOBYTE(v143) = 0;
      v134(&v143, 0.0);
    }

    v49 = v120;
    v139(v120, v45, v42);
    v50 = v37;
    v51 = type metadata accessor for FileOutputStream(0);
    swift_allocObject();
    v52 = v133;
    v53 = sub_1AB2516A4(v49);
    if (v52)
    {
      goto LABEL_5;
    }

    v133 = v50;
    *(&v144 + 1) = v51;
    *&v145 = &off_1F2001F78;
    *&v143 = v53;
    sub_1AB2D29F8(v131, &v143, 0x19000uLL);
    v131 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(&v143);
    if (v47)
    {
      LOBYTE(v143) = 0;
      v58 = (v47)(&v143, 1.0);
    }

    v59 = v130;
    sub_1AB3B1134(v45, v130, v58);
    v60 = v129;
    if ((*(v129 + 1) & 1) == 0)
    {
      v69 = v136;
      v70 = v140;
      v139(v136, v127, v140);
      v71 = v119;
      sub_1AB45F9D4();
      sub_1AB45F9C4();
      v72 = v46;
      v135(v71, v137);
      sub_1AB45F664();

      v126(v69, v70);
      v73 = sub_1AB45F6F4();
      v75 = v74;
      v76 = type metadata accessor for FileInputStream();
      swift_allocObject();
      v77 = sub_1AB251E1C(v73, v75);
      v120 = v72;
      *(&v148 + 1) = v76;
      *&v149 = &off_1F2001F90;
      *&v147 = v77;
      v83 = v123;
      v84 = v128;
      v139(v123, v128, v140);
      swift_allocObject();
      v85 = sub_1AB2516A4(v83);
      v152 = v51;
      v153 = &off_1F2001F78;
      *&v151 = v85;
      sub_1AB0149B0(&v147, &v143);
      sub_1AB0149B0(&v151, &v145 + 8);
      v92 = swift_allocObject();
      v93 = v134;
      v94 = v132;
      *(v92 + 16) = v134;
      *(v92 + 24) = v94;
      sub_1AB04B604(v93, v94);
      sub_1AB1DF9CC(sub_1AB3B141C);
      v45 = v138;

      sub_1AB2BB230(&v143);
      v113 = v84;
      v59 = v130;
      sub_1AB2BB1D4(v130, v114);
      sub_1AB3B13B8(v113, v59, v115);
      v46 = v120;
      v60 = v129;
    }

    if (*v60)
    {
      v61 = 1;
      v62 = v127;
    }

    else
    {
      v78 = v60 + *(type metadata accessor for JetPackageWriter(0) + 36);
      v79 = v124;
      sub_1AB03BC60(v78, v124);
      v80 = v118;
      if ((*(v118 + 48))(v79, 1, v140) == 1)
      {
        sub_1AB03BCD0(v79);
        sub_1AB3B0D44();
        swift_allocError();
        *v81 = 2;
        swift_willThrow();
        sub_1AB2BB1D4(v59, v82);
LABEL_5:
        sub_1AB2BB1D4(v45, v54);
        v56 = v127;
        sub_1AB3B0F4C();
        return (v126)(v56, v140);
      }

      (*(v80 + 32))(v122, v79, v140);
      v86 = sub_1AB45F784();
      *(&v148 + 1) = &type metadata for CommonCryptoPackageEncryption;
      *&v149 = &off_1F20152C8;
      *&v147 = v86;
      *(&v147 + 1) = v95;
      *&v148 = 0x20000;
      sub_1AB0149B0(&v147, &v143);
      v96 = v136;
      v139(v136, v127, v140);
      v97 = v119;
      sub_1AB45F9D4();
      sub_1AB45F9C4();
      v135(v97, v137);
      v98 = v121;
      sub_1AB45F664();
      v99 = v134;

      v100 = v126;
      v126(v96, v140);
      if (v99)
      {
        LOBYTE(v147) = 2;
        v99(&v147, 0.0);
        sub_1AB3B1198(&v143, v59, v98);
        LOBYTE(v147) = 2;
        v99(&v147, 1.0);
        __swift_destroy_boxed_opaque_existential_1Tm(&v143);
        v101 = v100(v122, v140);
        sub_1AB2BB1D4(v59, v101);
        v60 = v129;
      }

      else
      {
        sub_1AB3B1198(&v143, v59, v98);
        v60 = v129;
        __swift_destroy_boxed_opaque_existential_1Tm(&v143);
        v116 = v100(v122, v140);
        sub_1AB2BB1D4(v59, v116);
      }

      v62 = v127;
      sub_1AB3B13B8(v121, v59, v102);
      v61 = *v60;
    }

    v63 = *(v60 + 1);
    v64 = v60;
    v65 = *(v60 + 8);
    v66 = *(v60 + 16);
    v67 = *(v64 + 24);
    if (*(v64 + 26))
    {
      v67 = 0;
    }

    v142 = v63;
    v141 = v61;
    LOBYTE(v143) = 0;
    *(&v143 + 1) = v63;
    *(&v143 + 3) = v61;
    *(&v143 + 1) = v65;
    *&v144 = v66;
    WORD4(v144) = v67;
    v145 = 0uLL;
    v146 = 0xF000000000000000;
    sub_1AB01494C(v125, &v151);
    type metadata accessor for JetPackageFormatWriter();
    inited = swift_initStackObject();
    *(inited + 56) = 0;
    sub_1AB0149B0(&v151, inited + 16);
    v147 = v143;
    v148 = v144;
    v149 = v145;
    v150 = v146;

    sub_1AB23B1A8(&v147);
    v120 = v46;
    v87 = sub_1AB45F6F4();
    v89 = v88;
    v90 = type metadata accessor for FileInputStream();
    swift_allocObject();
    v91 = sub_1AB251E1C(v87, v89);
    *(&v148 + 1) = v90;
    *&v149 = &off_1F2001F90;
    *&v147 = v91;
    __swift_project_boxed_opaque_existential_1Tm(&v147, v90);
    if (off_1F2001F98())
    {
      while (1)
      {
        v103 = *(&v148 + 1);
        v104 = v149;
        __swift_project_boxed_opaque_existential_1Tm(&v147, *(&v148 + 1));
        v105 = (*(v104 + 24))(0x20000, v103, v104);
        v107 = v106;
        if ((*(inited + 56) & 1) == 0)
        {
          break;
        }

        v108 = *(inited + 40);
        v109 = *(inited + 48);
        __swift_project_boxed_opaque_existential_1Tm((inited + 16), v108);
        (*(v109 + 8))(v105, v107, v108, v109);
        sub_1AB017254(v105, v107);
        v110 = *(&v148 + 1);
        v111 = v149;
        __swift_project_boxed_opaque_existential_1Tm(&v147, *(&v148 + 1));
        if (((*(v111 + 8))(v110, v111) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_1AB23B534();
      swift_allocError();
      swift_willThrow();
      sub_1AB2BB180(&v143);
      sub_1AB017254(v105, v107);
    }

    else
    {
LABEL_23:
      sub_1AB2BB180(&v143);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
    }

    sub_1AB2BB1D4(v130, v112);
    sub_1AB2BB1D4(v138, v117);
    __swift_destroy_boxed_opaque_existential_1Tm(&v147);
    sub_1AB3B0F4C();
    return (v126)(v62, v140);
  }

  else
  {
    v55 = v143;
    sub_1AB45F594();

    swift_willThrow();
    return (*(v19 + 8))(v30, v140);
  }
}

unint64_t sub_1AB3B0CEC()
{
  result = qword_1EB43BE90;
  if (!qword_1EB43BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE90);
  }

  return result;
}

unint64_t sub_1AB3B0D44()
{
  result = qword_1EB43BE98;
  if (!qword_1EB43BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BE98);
  }

  return result;
}

unint64_t sub_1AB3B0D9C()
{
  result = qword_1EB43BEA0;
  if (!qword_1EB43BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43BEA0);
  }

  return result;
}

void sub_1AB3B0E28(uint64_t a1)
{
  sub_1AB0559D8(319, &qword_1EB43BEB8, &type metadata for JetPackageEncryptionAlgorithm);
  if (v1 <= 0x3F)
  {
    sub_1AB0559D8(319, &qword_1EB43BEC0, &type metadata for JetPackageCompressionAlgorithm);
    if (v2 <= 0x3F)
    {
      sub_1AB0559D8(319, &qword_1EB4359F0, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1AB0559D8(319, &qword_1EB43BEC8, MEMORY[0x1E69E75F8]);
        if (v4 <= 0x3F)
        {
          sub_1AB018E60(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1AB3B0F4C()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1AB45F654();
  v9 = 0;
  v2 = [v0 removeItemAtURL:v1 error:&v9];

  v3 = v9;
  if (v2)
  {

    v4 = v3;
  }

  else
  {
    v5 = v9;
    v6 = sub_1AB45F594();

    swift_willThrow();
    v9 = 0;
    v10 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000039, 0x80000001AB50C7D0);
    sub_1AB45F764();
    sub_1AB2BB128();
    v7 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v7);

    MEMORY[0x1AC59BA20](8250, 0xE200000000000000);
    swift_getErrorValue();
    v8 = sub_1AB462024();
    MEMORY[0x1AC59BA20](v8);

    sub_1AB31D6E0(v9, v10);
  }
}

uint64_t sub_1AB3B1134(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for FileArtifact(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB3B1198(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FileArtifact(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3B1134(a2, v12, v13);
  v14 = sub_1AB45F6F4();
  v16 = v15;
  v17 = type metadata accessor for FileInputStream();
  swift_allocObject();
  v18 = sub_1AB251E1C(v14, v16);
  if (v3)
  {
    return sub_1AB2BB1D4(v12, v19);
  }

  v24[3] = v17;
  v24[4] = &off_1F2001F90;
  v24[0] = v18;
  sub_1AB2BB1D4(v12, v19);
  (*(v7 + 16))(v9, v25, v6);
  v21 = type metadata accessor for FileOutputStream(0);
  swift_allocObject();
  v22 = sub_1AB2516A4(v9);
  v23[3] = v21;
  v23[4] = &off_1F2001F78;
  v23[0] = v22;
  sub_1AB3C9F80(v24, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t sub_1AB3B13B8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for FileArtifact(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB3B141C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = 1;
    return v1(&v3);
  }

  return result;
}

uint64_t sub_1AB3B147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB02B4BC(a1, a2);

  return sub_1AB0165C4(a1 + 40, a2 + 40);
}

void sub_1AB3B14C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v53 = a1;
  v54 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v55 = v8;
  v56 = 0;
  v57 = v11 & v9;
  v58 = a2;
  v59 = a3;

  sub_1AB35CA08(&v49);
  if (!*(&v50 + 1))
  {
    goto LABEL_25;
  }

  v46 = v49;
  v47 = v50;
  v48 = v51;
  sub_1AB014B78(v52, v45);
  v12 = *a5;
  v13 = sub_1AB02B1D8(&v46);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v19 = v14;
  if (v12[3] < v18)
  {
    sub_1AB0C03C8(v18, a4 & 1);
    v13 = sub_1AB02B1D8(&v46);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v13 = sub_1AB461FC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = v13;
    sub_1AB1D76C0();
    v13 = v24;
    v21 = *a5;
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v21 = *a5;
  if (v19)
  {
LABEL_11:
    v22 = v13;
    sub_1AB02B2E4(&v46);
    v23 = (v21[7] + 32 * v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    sub_1AB014B78(v45, v23);
    goto LABEL_15;
  }

LABEL_13:
  v21[(v13 >> 6) + 8] |= 1 << v13;
  v25 = v21[6] + 40 * v13;
  v26 = v46;
  v27 = v47;
  *(v25 + 32) = v48;
  *v25 = v26;
  *(v25 + 16) = v27;
  sub_1AB014B78(v45, (v21[7] + 32 * v13));
  v28 = v21[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v17)
  {
    v21[2] = v29;
LABEL_15:
    sub_1AB35CA08(&v49);
    if (*(&v50 + 1))
    {
      v19 = 1;
      do
      {
        v46 = v49;
        v47 = v50;
        v48 = v51;
        sub_1AB014B78(v52, v45);
        v32 = *a5;
        v33 = sub_1AB02B1D8(&v46);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v17 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v17)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_1AB0C03C8(v37, 1);
          v33 = sub_1AB02B1D8(&v46);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;
          sub_1AB02B2E4(&v46);
          v31 = (v39[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          sub_1AB014B78(v45, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = v39[6] + 40 * v33;
          v41 = v46;
          v42 = v47;
          *(v40 + 32) = v48;
          *v40 = v41;
          *(v40 + 16) = v42;
          sub_1AB014B78(v45, (v39[7] + 32 * v33));
          v43 = v39[2];
          v17 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v17)
          {
            goto LABEL_27;
          }

          v39[2] = v44;
        }

        sub_1AB35CA08(&v49);
      }

      while (*(&v50 + 1));
    }

LABEL_25:
    sub_1AB0309A4(v53);

    return;
  }

LABEL_27:
  __break(1u);
}

Swift::Void __swiftcall IntervalSignpost.emitEndTrace(_:)(Swift::String a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = v1[2];
  v7 = 0;
  v8[0] = 0;
  v5 = 0;
  v6 = 0;
  v4 = sub_1AB460514();
  JESignpostArgumentsFromString(v4, v8, &v7, &v6, &v5);

  JESignpostEmitTrace(v2, v3, v8[0], v7, v6, v5);
}

uint64_t IntervalSignpost.init(component:beginEvent:endEvent:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ImpulseSignpost.init(component:event:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::Void __swiftcall ImpulseSignpost.emitTrace(_:)(Swift::String a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = v1[1];
  v7 = 0;
  v8[0] = 0;
  v5 = 0;
  v6 = 0;
  v4 = sub_1AB460514();
  JESignpostArgumentsFromString(v4, v8, &v7, &v6, &v5);

  JESignpostEmitTrace(v2, v3, v8[0], v7, v6, v5);
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntervalSignpost(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntervalSignpost(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

uint64_t sub_1AB3B1A34(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return !a2;
  }

  if (!a2 || (sub_1AB3C7A90(a2, a1) & 1) == 0)
  {
    return 0;
  }

  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v25 = a3;
  while (v10)
  {
    v14 = a4;
    v15 = a2;
LABEL_14:
    v17 = __clz(__rbit64(v10)) | (v13 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v20 = *v18;
    v19 = v18[1];
    sub_1AB0165C4(*(a1 + 56) + 32 * v17, v30);
    v29[0] = v20;
    v29[1] = v19;
    sub_1AB0165C4(v30, v28);
    if (*(v15 + 16))
    {

      v21 = sub_1AB014DB4(v20, v19);
      if (v22)
      {
        sub_1AB0165C4(*(v15 + 56) + 32 * v21, &v26);
      }

      else
      {
        v26 = 0u;
        v27 = 0u;
      }
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    a4 = v14;
    v10 &= v10 - 1;
    v23 = sub_1AB3B1C48(v28, &v26, v25, v14);
    sub_1AB014AC0(&v26, &unk_1EB437E60, &qword_1AB4D4730);
    sub_1AB014AC0(v28, &unk_1EB437E60, &qword_1AB4D4730);
    result = sub_1AB014AC0(v29, &qword_1EB43A620, &qword_1AB4D6B68);
    if ((v23 & 1) == 0)
    {
      v24 = 0;
LABEL_24:

      return v24;
    }
  }

  v15 = a2;
  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      v24 = 1;
      goto LABEL_24;
    }

    v10 = *(a1 + 64 + 8 * v16);
    ++v13;
    if (v10)
    {
      v14 = a4;
      v13 = v16;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB3B1C48(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_1AB01522C(a1, &v53);
  if (!v54)
  {
    goto LABEL_7;
  }

  sub_1AB014B78(&v53, &v57);
  sub_1AB01522C(a2, &v53);
  if (!v54)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
LABEL_7:
    sub_1AB014AC0(&v53, &unk_1EB437E60, &qword_1AB4D4730);
    v7 = 0;
    return v7 & 1;
  }

  sub_1AB014B78(&v53, v56);
  sub_1AB0165C4(&v57, &v53);
  sub_1AB0165C4(v56, v55);
  sub_1AB016760(0, &qword_1ED4D1940, 0x1E696AD98);
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1AB016760(0, &qword_1ED4D1048, 0x1E69E58C0);
      v7 = sub_1AB4612C4();

LABEL_58:
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      __swift_destroy_boxed_opaque_existential_1Tm(&v57);
      goto LABEL_59;
    }
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v7 = v43 ^ v50 ^ 1;
LABEL_59:
    __swift_destroy_boxed_opaque_existential_1Tm(v55);
    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    return v7 & 1;
  }

  if (swift_dynamicCast() && swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    __swift_destroy_boxed_opaque_existential_1Tm(&v57);
    v7 = *&v43 == *&v50;
    goto LABEL_59;
  }

  v8 = MEMORY[0x1E69E6158];
  if (swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      if (v43 == v50)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_1AB461DA4();
      }

      goto LABEL_57;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8, &qword_1AB4EAC30);
  if (!swift_dynamicCast())
  {
LABEL_38:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
    if (swift_dynamicCast())
    {
      if (swift_dynamicCast())
      {
        if (a4 < a3)
        {
          v7 = sub_1AB3B1A34(v43, v50, a3, a4 + 1);

LABEL_57:

          goto LABEL_58;
        }

LABEL_61:

        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        __swift_destroy_boxed_opaque_existential_1Tm(&v57);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        __swift_destroy_boxed_opaque_existential_1Tm(&v53);
        v7 = 0;
        return v7 & 1;
      }
    }

    if (qword_1ED4D1FC0 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_44;
  }

  v9 = v52;
  if (!swift_dynamicCast())
  {

    goto LABEL_38;
  }

  if (a4 >= a3)
  {
    goto LABEL_61;
  }

  v8 = 0;
  v10 = 0;
  v11 = *(v52 + 16);
  v12 = *(v47 + 16);
  v38 = v47;
  v36 = v47 + 32;
  v37 = v52 + 32;
  while (1)
  {
    if (v10 == v11)
    {
      v50 = 0u;
      v51 = 0u;
      v10 = v11;
      if (v8 == v12)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v9 + 16))
    {
      goto LABEL_69;
    }

    sub_1AB0165C4(v37 + 32 * v10++, &v50);
    if (v8 == v12)
    {
LABEL_26:
      v48 = 0u;
      v49 = 0u;
      v8 = v12;
      goto LABEL_33;
    }

LABEL_30:
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    if (v8 >= *(v38 + 16))
    {
      goto LABEL_70;
    }

    sub_1AB0165C4(v36 + 32 * v8++, &v48);
LABEL_33:
    v43 = v50;
    v44 = v51;
    v45 = v48;
    v46 = v49;
    if (!*(&v51 + 1))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      __swift_destroy_boxed_opaque_existential_1Tm(&v57);
      if (*(&v46 + 1))
      {
        sub_1AB014AC0(&v45, &unk_1EB437E60, &qword_1AB4D4730);
        v7 = 0;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_59;
    }

    if (!*(&v46 + 1))
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      __swift_destroy_boxed_opaque_existential_1Tm(&v57);
      v14 = &v43;
      goto LABEL_65;
    }

    sub_1AB014B78(&v43, v42);
    sub_1AB014B78(&v45, v41);
    sub_1AB0165C4(v42, v40);
    sub_1AB0165C4(v41, v39);
    v13 = sub_1AB3B1C48(v40, v39, a3, a4 + 1);
    sub_1AB014AC0(v39, &unk_1EB437E60, &qword_1AB4D4730);
    sub_1AB014AC0(v40, &unk_1EB437E60, &qword_1AB4D4730);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    if ((v13 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      v14 = &v57;
LABEL_65:
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      v7 = 0;
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  swift_once();
LABEL_44:
  v15 = qword_1ED4D1FC8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D47F0;
  *&v42[0] = sub_1AB0168A8(0, 64, 0, MEMORY[0x1E69E7CC0]);
  v17._object = 0x80000001AB50C830;
  v17._countAndFlagsBits = 0xD000000000000034;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  __swift_project_boxed_opaque_existential_1Tm(&v57, v58);
  DynamicType = swift_getDynamicType();
  *(&v51 + 1) = swift_getMetatypeMetadata();
  *&v50 = DynamicType;
  sub_1AB01522C(&v50, &v48);
  v43 = 0u;
  v44 = 0u;
  sub_1AB0169C4(&v48, &v43);
  LOBYTE(v45) = 0;
  v19 = *&v42[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_1AB0168A8(0, *(v19 + 2) + 1, 1, v19);
  }

  v21 = *(v19 + 2);
  v20 = *(v19 + 3);
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1AB0168A8((v20 > 1), v21 + 1, 1, v19);
  }

  *(v19 + 2) = v21 + 1;
  v22 = &v19[40 * v21];
  v23 = v43;
  v24 = v44;
  v22[64] = v45;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  *&v42[0] = v19;
  sub_1AB014AC0(&v50, &unk_1EB437E60, &qword_1AB4D4730);
  v25._countAndFlagsBits = 0x756F662073617720;
  v25._object = 0xEB000000002E646ELL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v25);
  *(v16 + 32) = *&v42[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1AB4D4720;
  *(&v44 + 1) = v8;
  *&v43 = 0xD000000000000059;
  *(&v43 + 1) = 0x80000001AB50C870;
  *(v26 + 48) = 0u;
  *(v26 + 32) = 0u;
  sub_1AB0169C4(&v43, v26 + 32);
  *(v26 + 64) = 0;
  *(v16 + 40) = v26;
  v27 = sub_1AB461094();
  if (os_log_type_enabled(v15, v27))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v28 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v28[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v28 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v43 = v16;
    *(&v43 + 1) = sub_1AB01A8D8;
    *&v44 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
    sub_1AB016A34();
    v31 = sub_1AB460484();
    v33 = v32;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1AB4D4720;
    *(v34 + 56) = v8;
    *(v34 + 64) = sub_1AB016854();
    *(v34 + 32) = v31;
    *(v34 + 40) = v33;
    sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v15, v27, v34);
  }

  v7 = _isStructurallyEqual(_:to:with:at:)(&v57, v56, a3, 0);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  __swift_destroy_boxed_opaque_existential_1Tm(&v57);
  sub_1AB014AC0(&v53, &qword_1EB43BA60, &qword_1AB4EF878);
  return v7 & 1;
}

void *StateRef.init(pointingTo:in:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = *result;
  a3[1] = a2;
  return result;
}

__n128 StateRef.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t StateRef<>.current.getter(void *a1, uint64_t a2)
{
  v9 = *v2;
  v5 = a1[3];
  v4 = a1[4];
  v6 = *(v4 + 24);
  v7 = a1[2];

  v6(&v9, v5, a2, v7, v4);
}

uint64_t sub_1AB3B2748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB3B27AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  sub_1AB1778DC(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1AB0165C4(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AB1778DC((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1AB3B28D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1AB03BD38(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1AB0165C4(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AB03BD38((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id Net.jsExport.getter()
{
  sub_1AB01494C(v0, v6);
  v1 = type metadata accessor for JSNetObject();
  v2 = objc_allocWithZone(v1);
  sub_1AB01494C(v6, v2 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v3;
}

uint64_t sub_1AB3B2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AB014A58(a3, v22 - v9, &qword_1EB4384A0, &qword_1AB4D8DD0);
  v11 = sub_1AB460BE4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AB014AC0(v10, &qword_1EB4384A0, &qword_1AB4D8DD0);
  }

  else
  {
    sub_1AB460BD4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AB460AE4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1AB460614() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1AB014AC0(a3, &qword_1EB4384A0, &qword_1AB4D8DD0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AB014AC0(a3, &qword_1EB4384A0, &qword_1AB4D8DD0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1AB3B2D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1AB014A58(a3, v22 - v9, &qword_1EB4384A0, &qword_1AB4D8DD0);
  v11 = sub_1AB460BE4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1AB014AC0(v10, &qword_1EB4384A0, &qword_1AB4D8DD0);
  }

  else
  {
    sub_1AB460BD4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AB460AE4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = sub_1AB460614() + 32;
      type metadata accessor for JetPackAsset(0);

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1AB014AC0(a3, &qword_1EB4384A0, &qword_1AB4D8DD0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1AB014AC0(a3, &qword_1EB4384A0, &qword_1AB4D8DD0);
  type metadata accessor for JetPackAsset(0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

double Net.Configuration.withPreconnectHosts(_:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

void Net.Configuration.withPreconnectHosts(bag:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  *a2 = *v2;
  v6 = v4;

  v5 = sub_1AB09562C(&v6);

  *a2 = v5;
}

uint64_t Net.init<A, B>(encoder:fetcher:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v28 = a1;
  v29 = a6;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v21;
  (*(v16 + 16))(v20, v18);
  (*(v12 + 16))(v14, a2, a4);
  v30[0] = a3;
  v30[1] = a4;
  v22 = v29;
  v30[2] = a5;
  v30[3] = v29;
  a7[3] = type metadata accessor for _NetGuts(0, v30);
  a7[4] = &off_1F1FF5A70;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7);
  sub_1AB0AC224(v20, v14, a3, a4, a5, v22, boxed_opaque_existential_0);
  a7[5] = v27;
  v24 = sub_1AB3B3244();
  (*(v12 + 8))(a2, a4, v24);
  return (*(v16 + 8))(v28, a3);
}

double sub_1AB3B3244()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_1AB45FF84();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  v13 = *(v0 + 40);
  if (v13)
  {
    v14 = qword_1EB435488;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1AB45FFC4();
    __swift_project_value_buffer(v15, qword_1EB435490);
    sub_1AB45FFA4();
    sub_1AB45FF54();
    v16 = sub_1AB45FFA4();
    v17 = sub_1AB461234();
    if (sub_1AB461314())
    {
      v18 = swift_slowAlloc();
      v28 = v4;
      v19 = v1;
      v20 = v18;
      *v18 = 0;
      v21 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v16, v17, v21, "PreconnectNet", "", v20, 2u);
      v22 = v20;
      v1 = v19;
      v4 = v28;
      MEMORY[0x1AC59F020](v22, -1, -1);
    }

    (*(v6 + 16))(v8, v12, v5);
    sub_1AB460014();
    swift_allocObject();
    v23 = sub_1AB460004();
    (*(v6 + 8))(v12, v5);
    v24 = sub_1AB460BE4();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    sub_1AB0936D0(v1, v29);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v13;
    v26 = v29[1];
    *(v25 + 40) = v29[0];
    *(v25 + 56) = v26;
    *(v25 + 72) = v29[2];
    *(v25 + 88) = v23;
    sub_1AB3B2A60(0, 0, v4, &unk_1AB4F2B80, v25);
  }

  return result;
}

uint64_t Net.fetch(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B359C, 0, 0);
}

uint64_t sub_1AB3B359C()
{
  v24 = v0;
  if (qword_1EB435688 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  sub_1AB4622E4();
  v2 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AB4D4720;
  v22 = sub_1AB0168A8(0, 19, 0, MEMORY[0x1E69E7CC0]);
  v4._object = 0x80000001AB50C8D0;
  v4._countAndFlagsBits = 0xD000000000000012;
  LogMessage.StringInterpolation.appendLiteral(_:)(v4);
  v5 = sub_1AB45F764();
  *(v0 + 80) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v1, v5);
  sub_1AB014A58(v0 + 56, v0 + 88, &unk_1EB437E60, &qword_1AB4D4730);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  sub_1AB0169C4(v0 + 88, v0 + 16);
  *(v0 + 48) = 0;
  v7 = v22;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1AB0168A8(0, *(v22 + 2) + 1, 1, v22);
  }

  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1AB0168A8((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 144);
  *(v7 + 2) = v9 + 1;
  v11 = &v7[40 * v9];
  v12 = *(v0 + 16);
  v13 = *(v0 + 32);
  v11[64] = *(v0 + 48);
  *(v11 + 2) = v12;
  *(v11 + 3) = v13;
  sub_1AB014AC0(v0 + 56, &unk_1EB437E60, &qword_1AB4D4730);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  *(v3 + 32) = v7;
  v23 = 3;
  OSLogger.log(contentsOf:withLevel:)(v3, &v23);

  v15 = v10[3];
  v16 = v10[4];
  __swift_project_boxed_opaque_existential_1Tm(v10, v15);
  v21 = (*(v16 + 16) + **(v16 + 16));
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_1AB3B38E4;
  v18 = *(v0 + 128);
  v19 = *(v0 + 136);

  return v21(v18, v19, v15, v16);
}

uint64_t sub_1AB3B38E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Net.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1AB01494C(v2, v9);
  v4 = type metadata accessor for JSNetObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v9, v5 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  a1[3] = v4;
  a1[4] = &off_1F2013DC8;
  *a1 = v6;
  return result;
}

uint64_t sub_1AB3B3A70@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1AB01494C(v2, v9);
  v4 = type metadata accessor for JSNetObject();
  v5 = objc_allocWithZone(v4);
  sub_1AB01494C(v9, v5 + OBJC_IVAR____TtC9JetEngine11JSNetObject_guts);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v9);
  a1[3] = v4;
  a1[4] = &off_1F2013DC8;
  *a1 = v6;
  return result;
}

uint64_t sub_1AB3B3B08(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1AB45FFC4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1AB45FFB4();
}

void sub_1AB3B3B7C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v46 = a5;
  v47 = a4;
  v7 = sub_1AB45FFD4();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v45 = sub_1AB45FF84();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for NetRequest(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = a1;
  sub_1AB1E1568(a1, v53);
  if (qword_1EB435330 != -1)
  {
    swift_once();
  }

  v17 = sub_1AB45FFC4();
  __swift_project_value_buffer(v17, qword_1EB435338);
  sub_1AB0B72A8(a3, v15);
  v18 = sub_1AB45FFA4();
  sub_1AB45FFF4();
  v19 = sub_1AB461224();
  if (sub_1AB461314())
  {
    v43 = v19;

    sub_1AB460024();

    v20 = v44;
    if ((*(v44 + 11))(v9, v7) == *MEMORY[0x1E69E93E8])
    {
      v21 = 0;
      v22 = 0;
      v44 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 1))(v9, v7);
      v44 = "success=false,url=%s";
      v22 = 2;
      v21 = 1;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v51[0] = v29;
    *v28 = v22;
    *(v28 + 1) = v21;
    *(v28 + 2) = 2080;
    v30 = sub_1AB45F654();
    v31 = AMSLogableURL();

    v32 = sub_1AB460544();
    v34 = v33;

    sub_1AB0B730C(v15);
    v35 = sub_1AB030D2C(v32, v34, v51);

    *(v28 + 4) = v35;
    v36 = sub_1AB45FF64();
    _os_signpost_emit_with_name_impl(&dword_1AB012000, v18, v43, v36, "NetFetch", v44, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1AC59F020](v29, -1, -1);
    MEMORY[0x1AC59F020](v28, -1, -1);

    (*(v10 + 8))(v12, v45);
    v24 = v46;
    v23 = v47;
    if (!v47)
    {
      goto LABEL_10;
    }

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
    v25 = swift_allocObject();
    v26 = v53[2];
    v51[3] = v53[3];
    v51[4] = v53[4];
    v51[5] = v53[5];
    v27 = v53[1];
    v51[0] = v53[0];
    v45 = xmmword_1AB4D4720;
    *(v25 + 16) = xmmword_1AB4D4720;
    v52 = v54;
    v51[1] = v27;
    v51[2] = v26;
    JSError.jsRepresentation(in:)(v24, v48);
    v37 = v49;
    v38 = v50;
    __swift_project_boxed_opaque_existential_1Tm(v48, v49);
    v39 = (*(v38 + 16))(v24, v37, v38);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    *(v25 + 56) = sub_1AB016760(0, &qword_1ED4D1B98, 0x1E696EB58);
    *(v25 + 32) = v39;
    v40 = sub_1AB460934();

    v41 = [v23 callWithArguments_];
    sub_1AB1A9E68(v53);

    return;
  }

  (*(v10 + 8))(v12, v45);
  sub_1AB0B730C(v15);
  v24 = v46;
  v23 = v47;
  if (v47)
  {
    goto LABEL_7;
  }

LABEL_10:
  sub_1AB1A9E68(v53);
}

void sub_1AB3B44C8(void *a1)
{
  v3 = *(type metadata accessor for NetRequest(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + v5);
  v8 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1AB3B3B7C(a1, v6, v1 + v4, v7, v8);
}

uint64_t sub_1AB3B4630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1AB3B4684@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = result[1];
  v4 = *a2;
  v5 = a2[1];
  *a3 = *result;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  return result;
}

uint64_t sub_1AB3B4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a3;
  v7 = *(a5 + 16);
  v8 = sub_1AB461354();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v5;
  v18 = v5[1];
  v19 = v5[3];
  v29 = v5[2];
  v30 = v19;
  ObjectType = swift_getObjectType();
  v31 = v17;
  v39 = v17;
  v40 = v18;

  v32 = ObjectType;
  v36 = a2;
  Preferences.subscript.getter(&v39, ObjectType, v7, a2, v13);

  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    return (*(v37 + 8))(v13, v38);
  }

  v22 = v33;
  (*(v14 + 32))(v33, v13, v7);
  v23 = swift_getObjectType();
  (*(v14 + 16))(v10, v22, v7);
  (*(v14 + 56))(v10, 0, 1, v7);
  v39 = v29;
  v40 = v30;

  sub_1AB2B1D98(v10, &v39, v23, v7, v34);
  (*(v37 + 8))(v10, v38);
  v41 = type metadata accessor for PreferenceKey(0, v7, v24, v25);
  v42 = &protocol witness table for PreferenceKey<A>;
  v39 = v31;
  v40 = v18;
  v26 = v36;
  v27 = *(v36 + 32);

  v27(&v39, v32, v26);
  (*(v14 + 8))(v22, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v39);
}

BOOL sub_1AB3B49D4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong != 0;
}

uint64_t sub_1AB3B4A10(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v1 + 7);
  v7 = &v15 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = v1[6];
    v16 = v1[5];
    v15 = __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v16);
    v11 = v1[8];
    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = *(v3 + 80);
    *(v13 + 3) = v4;
    *(v13 + 4) = v9;
    *(v13 + 5) = v11;
    (*(v5 + 32))(&v13[v12], v7, v4);
    v14 = *(v10 + 8);
    swift_unknownObjectRetain();

    v14(sub_1AB3B4FBC, v13, v16, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AB3B4BEC(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(v8 - v5, v6, v3);
  v8[1] = a1;
  swift_unknownObjectRetain();
  swift_setAtReferenceWritableKeyPath();
  return swift_unknownObjectRelease();
}

uint64_t sub_1AB3B4D00()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  MEMORY[0x1AC59F150](v0 + 56);

  return v0;
}

uint64_t sub_1AB3B4D30()
{
  sub_1AB3B4D00();

  return swift_deallocClassInstance();
}

double EventEmitter.addObserver<A>(on:target:property:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PropertyEventObserver(0, *(*a3 + *MEMORY[0x1E69E6F98]), *(*a3 + *MEMORY[0x1E69E6F98] + 8), a4);
  sub_1AB01494C(a1, v14);
  swift_allocObject();
  *&v14[0] = sub_1AB3B4F04(v14, a2, a3);
  v11 = *(a5 + 24);

  WitnessTable = swift_getWitnessTable();
  v11(v14, v10, WitnessTable, a4, a5);

  return result;
}

uint64_t sub_1AB3B4F04(__int128 *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  sub_1AB0149B0(a1, v3 + 16);
  swift_unknownObjectWeakAssign();
  *(v3 + 64) = a3;
  return v3;
}

id static PipelinePhase<>.fetchJSIndex(urlSession:urlEncoder:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437658, qword_1AB4D89A0);
  swift_allocObject();
  v5 = sub_1AB03356C();
  type metadata accessor for JSRemoteIndexFetcher();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = 4;
  *(v6 + 56) = 1;
  *(v6 + 64) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1AB3B512C;
  *(v7 + 24) = v6;
  *a3 = sub_1AB3B5568;
  a3[1] = v7;
  v8 = a1;

  return a2;
}

void *sub_1AB3B5130(uint64_t a1)
{
  v2 = v1;
  v26 = a1;
  v30 = sub_1AB45F764();
  v28 = *(v30 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v31 = &v25 - v5;
  sub_1AB45F664();
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v33[0] = *(v1 + 57);
  *(v33 + 3) = *(v1 + 60);
  v13 = *(v1 + 64);
  sub_1AB29D8B8(v6, v8, v10, v11, v12 & 1);
  v34 = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = v7;
  *(v14 + 24) = v8;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  *(v14 + 48) = v11;
  *(v14 + 56) = v12;
  *(v14 + 57) = v33[0];
  *(v14 + 60) = *(v33 + 3);
  *(v14 + 64) = v13;
  v15 = v7;
  v16 = v8;
  sub_1AB014A58(&v34, v32, &qword_1EB437668, &qword_1AB4DD7C0);

  sub_1AB3B53F0(sub_1AB193998, v14);

  v18 = v27;
  v17 = v28;
  v19 = v30;
  (*(v28 + 16))(v27, v26, v30);
  v20 = v17;
  v21 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v2;
  (*(v20 + 32))(v22 + v21, v18, v19);

  v23 = sub_1AB3B5570(sub_1AB3B5768, v22);

  (*(v20 + 8))(v31, v19);
  return v23;
}

uint64_t sub_1AB3B53F0(uint64_t a1, uint64_t a2)
{
  v12[3] = &type metadata for SyncTaskScheduler;
  v12[4] = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AC8, &unk_1AB4F2D20);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = v5;
  *(v4 + 24) = v6;
  *(v4 + 32) = 0;
  sub_1AB01494C(v12, v11);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v4;
  sub_1AB0149B0(v11, (v7 + 5));
  v9[0] = sub_1AB3B6144;
  v9[1] = v7;
  v9[2] = sub_1AB3B6154;
  v9[3] = v4;
  sub_1AB01494C(v12, v10);
  v10[40] = 0;
  swift_retain_n();

  sub_1AB1949F0(v9);

  sub_1AB014AC0(v9, &qword_1EB439E20, &unk_1AB4D8CA0);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v4;
}

void *sub_1AB3B5570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810, &unk_1AB4F2D10);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v14[3] = &type metadata for SyncTaskScheduler;
  v14[4] = &protocol witness table for SyncTaskScheduler;
  *(v11 - v5) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439660, &unk_1AB4E39F0);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v7[2] = v8;
  sub_1AB3B57D8(v6, v7 + *(*v7 + 96));
  sub_1AB01494C(v14, v13);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  sub_1AB0149B0(v13, (v9 + 5));
  v11[0] = sub_1AB3B5848;
  v11[1] = v9;
  v11[2] = sub_1AB292370;
  v11[3] = v7;
  sub_1AB01494C(v14, v12);
  v12[40] = 0;
  swift_retain_n();

  sub_1AB09CF00(v11);

  sub_1AB014AC0(v11, &unk_1EB439880, &qword_1AB4D8A10);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v7;
}

void *sub_1AB3B5768(void **a1)
{
  v3 = *(sub_1AB45F764() - 8);
  v4 = *a1;
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1AB3B585C(v4, v5);
}

uint64_t sub_1AB3B57D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810, &unk_1AB4F2D10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1AB3B585C(void *a1, uint64_t a2)
{
  v63[5] = *MEMORY[0x1E69E9840];
  v4 = sub_1AB45F764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for JSPackageIndex(0);
  MEMORY[0x1EEE9AC00](v52);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810, &unk_1AB4F2D10);
  v13 = MEMORY[0x1EEE9AC00](v50);
  v51 = (&v48 - v14);
  v15 = [a1 data];
  v16 = sub_1AB45F854();
  v18 = v17;

  if (qword_1EB4356D0 != -1)
  {
    swift_once();
  }

  v19 = sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, v16, v18);
  v49 = v12;
  if (v19)
  {
    v20 = 0x1E695DF20;
    v21 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
    v22 = qword_1ED4D1BA0;
LABEL_9:
    *(&v60 + 1) = sub_1AB016760(0, v22, v20);
    *&v59 = v21;
    goto LABEL_10;
  }

  if (qword_1EB4356D8 != -1)
  {
    swift_once();
  }

  if (sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, v16, v18))
  {
    v20 = 0x1E695DEC8;
    v21 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
    v22 = &qword_1ED4D0BE0;
    goto LABEL_9;
  }

  v48 = a2;
  v40 = objc_opt_self();
  v41 = sub_1AB45F834();
  v56[0] = 0;
  v42 = [v40 JSONObjectWithData:v41 options:4 error:v56];

  v43 = v56[0];
  if (!v42)
  {
    v44 = v43;
    v45 = sub_1AB45F594();

    swift_willThrow();
    sub_1AB017254(v16, v18);
    v46 = v51;
    *v51 = v45;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439660, &unk_1AB4E39F0);
    v37 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    v37[2] = v47;
    sub_1AB3B57D8(v46, v37 + *(*v37 + 96));
    return v37;
  }

  sub_1AB461494();
  swift_unknownObjectRelease();
  a2 = v48;
LABEL_10:
  sub_1AB014B78(&v59, v62);
  sub_1AB0165C4(v62, &v59);
  v63[3] = &type metadata for FoundationValue;
  v63[4] = &off_1F1FFB5A8;
  v63[0] = swift_allocObject();
  sub_1AB014B78(&v59, (v63[0] + 16));
  sub_1AB017254(v16, v18);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  sub_1AB0B9254(v63, v62);

  v23 = *(v5 + 16);
  v23(v7, a2, v4);
  JSONObject.subscript.getter(29546, 0xE200000000000000, &v59);
  sub_1AB014A58(&v59, v56, &qword_1EB436BA0, &qword_1AB4D4F40);
  v24 = v57;
  if (v57)
  {
    v25 = v58;
    __swift_project_boxed_opaque_existential_1Tm(v56, v57);
    v26 = (*(v25 + 24))(v24, v25);
    v28 = v27;
    sub_1AB066D84(&v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
  }

  else
  {
    sub_1AB066D84(&v59);
    sub_1AB014AC0(v56, &qword_1EB436BA0, &qword_1AB4D4F40);
    v26 = 0;
    v28 = 0;
  }

  v29 = &v9[*(v52 + 20)];
  *v29 = v26;
  v29[1] = v28;
  v23(v9, v7, v4);
  JSONObject.subscript.getter(0x69747265706F7270, 0xEA00000000007365, v56);
  sub_1AB014A58(v56, v53, &qword_1EB436BA0, &qword_1AB4D4F40);
  v30 = v54;
  if (!v54)
  {
    sub_1AB066D84(v56);
    sub_1AB014AC0(v53, &qword_1EB436BA0, &qword_1AB4D4F40);
    v59 = 0u;
    v60 = 0u;
    v61 = 0;
    v33 = v49;
    goto LABEL_18;
  }

  v31 = v55;
  __swift_project_boxed_opaque_existential_1Tm(v53, v54);
  (*(v31 + 160))(&v59, v30, v31);
  sub_1AB066D84(v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v32 = *(&v60 + 1);
  v33 = v49;
  if (!*(&v60 + 1))
  {
LABEL_18:
    sub_1AB014AC0(&v59, &qword_1EB436BC0, &qword_1AB4D52B0);
    goto LABEL_19;
  }

  v34 = v61;
  __swift_project_boxed_opaque_existential_1Tm(&v59, *(&v60 + 1));
  v35 = (*(v34 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v32, v34);
  sub_1AB07CDB0(&v59);
  if (!v35)
  {
LABEL_19:
    v35 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    (*(v5 + 8))(v7, v4);
    sub_1AB066D84(v62);

    goto LABEL_20;
  }

  (*(v5 + 8))(v7, v4);
  sub_1AB066D84(v62);
LABEL_20:
  *&v9[*(v52 + 24)] = v35;
  sub_1AB3B6084(v9, v33);
  v36 = v51;
  sub_1AB2922B4(v33, v51);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439660, &unk_1AB4E39F0);
  v37 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  sub_1AB3B60E8(v33);
  v37[2] = v38;
  sub_1AB3B57D8(v36, v37 + *(*v37 + 96));
  sub_1AB066D84(v63);
  return v37;
}

uint64_t sub_1AB3B6084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSPackageIndex(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB3B60E8(uint64_t a1)
{
  v2 = type metadata accessor for JSPackageIndex(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB3B615C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v8[0] = sub_1AB3B9354;
  v8[1] = a4;
  v8[2] = sub_1AB3B935C;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB09CF00(v8);

  return sub_1AB014AC0(v8, &unk_1EB439880, &qword_1AB4D8A10);
}

uint64_t sub_1AB3B621C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v8[0] = sub_1AB3B9374;
  v8[1] = a4;
  v8[2] = sub_1AB315758;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB017894(v8);

  return sub_1AB014AC0(v8, &unk_1EB437870, &unk_1AB4E35C0);
}

uint64_t sub_1AB3B62DC(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a1;
  v11[1] = a2;
  a3(v11);
  v9[0] = sub_1AB3B936C;
  v9[1] = a5;
  v9[2] = sub_1AB3B9370;
  v9[3] = a5;
  sub_1AB01494C(a6, v10);
  v10[40] = 0;
  swift_retain_n();
  sub_1AB1953D0(v9);

  return sub_1AB014AC0(v9, &qword_1EB439D20, &unk_1AB4D8C30);
}

uint64_t sub_1AB3B63A4(char a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1 & 1;
  a2(&v10);
  v8[0] = sub_1AB3B9364;
  v8[1] = a4;
  v8[2] = sub_1AB2E4B10;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB1965A4(v8);

  return sub_1AB014AC0(v8, &unk_1EB437930, &unk_1AB4E4610);
}

uint64_t sub_1AB3B6470(__int128 *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 64);
  v10 = *(a1 + 11);
  v15 = *a1;
  v16 = v7;
  v17 = v8;
  v11 = a1[3];
  v18 = a1[2];
  v19 = v11;
  v20 = v9;
  v21 = *(a1 + 72);
  v22 = v10;
  a2(&v15);
  v13[0] = sub_1AB3B93A4;
  v13[1] = a4;
  v13[2] = sub_1AB3B9394;
  v13[3] = a4;
  sub_1AB01494C(a5, v14);
  v14[40] = 0;
  swift_retain_n();
  sub_1AB0800FC(v13);

  return sub_1AB014AC0(v13, &unk_1EB437970, &unk_1AB4D8E00);
}

uint64_t sub_1AB3B6564(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v8[0] = sub_1AB3B9360;
  v8[1] = a4;
  v8[2] = sub_1AB315518;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB194D18(v8);

  return sub_1AB014AC0(v8, &unk_1EB439840, &unk_1AB4D8C40);
}

uint64_t sub_1AB3B6624(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v8[0] = sub_1AB3B9350;
  v8[1] = a4;
  v8[2] = sub_1AB3156AC;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB197F6C(v8);

  return sub_1AB014AC0(v8, &qword_1EB439E10, &unk_1AB4D8C90);
}

uint64_t sub_1AB3B66E4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a1;
  v11[1] = a2;
  a3(v11);
  v9[0] = sub_1AB3B9340;
  v9[1] = a5;
  v9[2] = sub_1AB3B934C;
  v9[3] = a5;
  sub_1AB01494C(a6, v10);
  v10[40] = 0;
  swift_retain_n();
  sub_1AB19520C(v9);

  return sub_1AB014AC0(v9, &unk_1EB439CC0, &unk_1AB4D8BE0);
}

uint64_t sub_1AB3B67AC(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v8[0] = sub_1AB3B93A8;
  v8[1] = a4;
  v8[2] = sub_1AB3B9398;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB198248(v8);

  return sub_1AB014AC0(v8, &unk_1EB4377D0, &unk_1AB4E4600);
}

uint64_t sub_1AB3B686C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  a2(&v10);
  v8[0] = sub_1AB3B93A4;
  v8[1] = a4;
  v8[2] = sub_1AB3B9394;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB0800FC(v8);

  return sub_1AB014AC0(v8, &unk_1EB437970, &unk_1AB4D8E00);
}

uint64_t sub_1AB3B6934(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12[0] = a1;
  v12[1] = a2;
  v12[2] = a3;
  a4(v12);
  v10[0] = sub_1AB1606CC;
  v10[1] = a6;
  v10[2] = sub_1AB3B933C;
  v10[3] = a6;
  sub_1AB01494C(a7, v11);
  v11[40] = 0;
  swift_retain_n();
  sub_1AB0800FC(v10);

  return sub_1AB014AC0(v10, &unk_1EB437970, &unk_1AB4D8E00);
}

uint64_t sub_1AB3B6A00(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v8[0] = sub_1AB3B9330;
  v8[1] = a4;
  v8[2] = sub_1AB3B9338;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB198460(v8);

  return sub_1AB014AC0(v8, &unk_1EB439850, &unk_1AB4D8C50);
}

uint64_t sub_1AB3B6AC0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(a1);
  v8[0] = sub_1AB3B9324;
  v8[1] = a4;
  v8[2] = sub_1AB3155B8;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB198248(v8);

  return sub_1AB014AC0(v8, &unk_1EB4377D0, &unk_1AB4E4600);
}

uint64_t sub_1AB3B6B80(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  a2(&v10);
  v8[0] = sub_1AB3B939C;
  v8[1] = a4;
  v8[2] = sub_1AB3B93A0;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB197F6C(v8);

  return sub_1AB014AC0(v8, &qword_1EB439E10, &unk_1AB4D8C90);
}

uint64_t sub_1AB3B6C48(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1;
  a2(&v10);
  v8[0] = sub_1AB3B9320;
  v8[1] = a4;
  v8[2] = sub_1AB3B9390;
  v8[3] = a4;
  sub_1AB01494C(a5, v9);
  v9[40] = 0;
  swift_retain_n();
  sub_1AB0CFD84(v8);

  return sub_1AB014AC0(v8, &unk_1EB4397D0, &qword_1AB4D8D60);
}

uint64_t sub_1AB3B6DC4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B6DE8, 0, 0);
}

uint64_t sub_1AB3B6DE8(double a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  swift_defaultActor_initialize();
  *(v3 + 112) = v4;
  *(v3 + 120) = v2;

  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_1AB3B6EF4;

  return v7();
}

uint64_t sub_1AB3B6EF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_1AB3B70A8;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1AB3B701C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB3B701C()
{
  v1 = *(v0 + 32);
  *(v1 + 128) = *(v0 + 56);
  return MEMORY[0x1EEE6DFA0](sub_1AB3B7040, v1, 0);
}

uint64_t sub_1AB3B7040()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 32);

  return v1(v2);
}

uint64_t sub_1AB3B70A8()
{

  type metadata accessor for StackContainer();
  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3B7144()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AB3B7184()
{
  result = sub_1AB460514();
  qword_1EB43BFF8 = result;
  return result;
}

id static ReloadableJSStack.didReloadJSStackNotification.getter()
{
  if (qword_1EB435DD8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB43BFF8;

  return v1;
}

uint64_t ReloadableJSStack.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_allocObject();

  return MEMORY[0x1EEE6DFA0](sub_1AB3B7294, 0, 0);
}

uint64_t sub_1AB3B7294(__n128 a1)
{
  *(v1[5] + 24) = -1;
  type metadata accessor for StackContainer();
  swift_allocObject();

  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1AB3B7364;
  v4 = v1[2];
  v3 = v1[3];

  return sub_1AB3B6DC4(v4, v3);
}

uint64_t sub_1AB3B7364(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1AB3B7500;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1AB3B748C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB3B748C()
{
  v1 = v0[8];
  v2 = v0[5];

  *(v2 + 16) = v1;
  v3 = v0[1];
  v4 = v0[5];

  return v3(v4);
}

uint64_t sub_1AB3B7500()
{

  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ReloadableJSStack.init(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B75C8, 0, 0);
}

uint64_t sub_1AB3B75C8(__n128 a1)
{
  *(v1[4] + 24) = -1;
  type metadata accessor for StackContainer();
  swift_allocObject();

  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1AB3B7694;
  v4 = v1[2];
  v3 = v1[3];

  return sub_1AB3B6DC4(v4, v3);
}

uint64_t sub_1AB3B7694(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1AB3B782C;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_1AB3B77BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1AB3B77BC()
{
  v1 = v0[8];
  v2 = v0[4];

  *(v2 + 16) = v1;
  v3 = v0[1];
  v4 = v0[4];

  return v3(v4);
}

uint64_t sub_1AB3B782C()
{

  swift_deallocPartialClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ReloadableJSStack.deinit()
{
  v1 = *(v0 + 24);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  return v0;
}

uint64_t ReloadableJSStack.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  return swift_deallocClassInstance();
}

uint64_t ReloadableJSStack.dispatcher<A, B>(for:asPartOf:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B798C, 0, 0);
}

uint64_t sub_1AB3B798C()
{
  v1 = v0[3];
  v2 = v0[2];
  v2[3] = v0[4];
  v2[4] = &protocol witness table for ReloadableJSStack;
  *v2 = v1;
  v4 = v0[1];

  return v4();
}

char *ReloadableJSStack.dispatch<A>(intent:jsonContext:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31[-1] - v11;
  v13 = *a2;
  v14 = *(v4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C000, &unk_1AB4F2D68);
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = MEMORY[0x1E69E7CC0];
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = 0;
  v18 = sub_1AB460BE4();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1AB4F2D60;
  v19[5] = v14;
  v19[6] = v15;
  swift_retain_n();

  sub_1AB39BBA8(0, 0, v12, &unk_1AB4F2D78, v19);

  (*(v8 + 16))(&v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  v22 = v30;
  *(v21 + 16) = a3;
  *(v21 + 24) = v22;
  (*(v8 + 32))(v21 + v20, &v31[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  *(v21 + ((v9 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v13;
  type metadata accessor for JSStack();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v26 = type metadata accessor for Promise(0, AssociatedTypeWitness, v24, v25);
  WitnessTable = swift_getWitnessTable();
  v31[3] = &type metadata for SyncTaskScheduler;
  v31[4] = &protocol witness table for SyncTaskScheduler;

  v28 = Promise.flatMap<A>(on:_:)(v31, sub_1AB3B8C2C, v21, v26, WitnessTable);

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v28;
}

uint64_t sub_1AB3B7D74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B7D90, a2, 0);
}

uint64_t sub_1AB3B7D90()
{
  *(v0 + 32) = *(*(v0 + 24) + 128);

  return MEMORY[0x1EEE6DFA0](sub_1AB3B9384, 0, 0);
}

uint64_t sub_1AB3B7E04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB3B7D74(a1, v1);
}

uint64_t sub_1AB3B7EA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027554;

  return sub_1AB399DF4(a1, v4, v5, v6, v7, v8);
}

uint64_t ReloadableJSStack.dispatch<A>(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B7FA4, 0, 0);
}

uint64_t sub_1AB3B7FA4()
{
  v1 = *(*(v0 + 56) + 16);
  *(v0 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B7FC8, v1, 0);
}

uint64_t sub_1AB3B7FC8()
{
  v0[9] = *(v0[8] + 128);

  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_1AB3B8080;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return JSStack.dispatch<A>(_:objectGraph:)(v6, v4, v5, v2, v3);
}

uint64_t sub_1AB3B8080()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3B81BC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1AB3B81BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *ReloadableJSStack.performRequest(_:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0, &qword_1AB4D8DD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18[-v4 - 8];
  v6 = a1[1];
  v19 = *a1;
  v20 = v6;
  v21 = a1[2];
  v22 = *(a1 + 6);
  v7 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C000, &unk_1AB4F2D68);
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = v9;
  *(v8 + 24) = v10;
  *(v8 + 32) = 0;
  v11 = sub_1AB460BE4();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1AB4F2D90;
  v12[5] = v7;
  v12[6] = v8;
  swift_retain_n();

  sub_1AB39BBA8(0, 0, v5, &unk_1AB4F2D98, v12);

  v13 = swift_allocObject();
  v14 = v20;
  *(v13 + 16) = v19;
  *(v13 + 32) = v14;
  *(v13 + 48) = v21;
  *(v13 + 64) = v22;
  sub_1AB3B9084(&v19, v18);
  v15 = sub_1AB3B8E8C(sub_1AB3B8E40, v13);

  return v15;
}

uint64_t sub_1AB3B8448(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B8464, a2, 0);
}

uint64_t sub_1AB3B8464()
{
  *(v0 + 32) = *(*(v0 + 24) + 128);

  return MEMORY[0x1EEE6DFA0](sub_1AB3B84D8, 0, 0);
}

uint64_t ReloadableJSStack.performRequest(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  type metadata accessor for JSResponse(0);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = *a2;
  *(v3 + 256) = *(a2 + 16);
  *(v3 + 264) = *(a2 + 24);
  *(v3 + 153) = *(a2 + 40);
  *(v3 + 280) = *(a2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1AB3B85BC, 0, 0);
}

uint64_t sub_1AB3B85BC()
{
  v1 = *(*(v0 + 224) + 16);
  *(v0 + 288) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3B85E0, v1, 0);
}

uint64_t sub_1AB3B85E0()
{
  *(v0 + 296) = *(*(v0 + 288) + 128);

  return MEMORY[0x1EEE6DFA0](sub_1AB3B8654, 0, 0);
}

uint64_t sub_1AB3B8654()
{
  v1 = *(v0 + 153);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 256);
  *(v0 + 160) = *(v0 + 240);
  *(v0 + 176) = v4;
  *(v0 + 192) = v3;
  *(v0 + 200) = v1;
  *(v0 + 208) = v2;
  *(v0 + 304) = JSStack.performRequest(_:)((v0 + 160));

  return MEMORY[0x1EEE6DFA0](sub_1AB3B86E4, 0, 0);
}

uint64_t sub_1AB3B86E4()
{
  v1 = v0 + 2;
  v2 = v0[29];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB3B87B0;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB0CFD84(v3);
  sub_1AB014AC0(v3, &unk_1EB4397D0, &qword_1AB4D8D60);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB3B87B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 312) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1AB3B8958;
  }

  else
  {
    v5 = *(v2 + 232);
    v6 = *(v2 + 216);

    sub_1AB3B90E0(v5, v6);
    v4 = sub_1AB3B88E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB3B88E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3B8958()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB3B89D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return ReloadableJSStack.dispatcher<A, B>(for:asPartOf:)(a1);
}

uint64_t sub_1AB3B8A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027554;

  return ReloadableJSStack.dispatch<A>(_:objectGraph:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB3B8B80(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return ReloadableJSStack.performRequest(_:)(a1, a2);
}

char *sub_1AB3B8C2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = *(v0 + ((*(*(v1 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  return JSStack.dispatch<A>(intent:jsonContext:)(v0 + v3, &v5, v1, v2);
}

uint64_t sub_1AB3B8CC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027460;

  return sub_1AB3B8448(a1, v1);
}

uint64_t sub_1AB3B8D64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1AB027460;

  return sub_1AB399DF4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1AB3B8E40()
{
  v1 = *(v0 + 32);
  v3[0] = *(v0 + 16);
  v3[1] = v1;
  v3[2] = *(v0 + 48);
  v4 = *(v0 + 64);
  return JSStack.performRequest(_:)(v3);
}

void *sub_1AB3B8E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0, &unk_1AB4DEF70);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v11 - v5;
  v14[3] = &type metadata for SyncTaskScheduler;
  v14[4] = &protocol witness table for SyncTaskScheduler;
  *(v11 - v5) = MEMORY[0x1E69E7CC0];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A08, &unk_1AB4F2E90);
  v7 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v7[2] = v8;
  sub_1AB3B9298(v6, v7 + *(*v7 + 96));
  sub_1AB01494C(v14, v13);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  sub_1AB0149B0(v13, (v9 + 5));
  v11[0] = sub_1AB3B9308;
  v11[1] = v9;
  v11[2] = sub_1AB3B931C;
  v11[3] = v7;
  sub_1AB01494C(v14, v12);
  v12[40] = 0;
  swift_retain_n();

  sub_1AB198FE0(v11);

  sub_1AB014AC0(v11, &unk_1EB437710, &unk_1AB4D8B80);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return v7;
}

uint64_t sub_1AB3B90E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ReloadableJSStack.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 96) + **(v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1AB2231A8;

  return v8(a1, a2);
}

uint64_t sub_1AB3B9298(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0, &unk_1AB4DEF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OperationID.init(_:)(uint64_t a1)
{
  v2 = sub_1AB45F614();
  v3 = sub_1AB45F764();
  (*(*(v3 - 8) + 8))(a1, v3);
  return v2;
}

uint64_t OperationID.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB4608B4();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

JetEngine::OperationID __swiftcall OperationID.init(uniqueForOperation:)(Swift::String uniqueForOperation)
{
  MEMORY[0x1AC59BA20](35, 0xE100000000000000);
  if (qword_1ED4D0078 != -1)
  {
    swift_once();
  }

  [qword_1ED4D0080 increment];
  v1 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v1);

  countAndFlagsBits = uniqueForOperation._countAndFlagsBits;
  object = uniqueForOperation._object;
  result.rawValue._object = object;
  result.rawValue._countAndFlagsBits = countAndFlagsBits;
  return result;
}

void *OperationID.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v5, v5[3]);
    v3 = sub_1AB461DB4();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

uint64_t OperationID.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1AB461E34();
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1AB3B96D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  v5 = sub_1AB461DB4();
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

JetEngine::OperationID __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OperationID.init(_:)(JSValue a1)
{
  if ([(objc_class *)a1.super.isa isString]&& (v2 = [(objc_class *)a1.super.isa toString]) != 0)
  {
    v3 = v2;
    v4 = sub_1AB460544();
    v6 = v5;

    v7 = v4;
    v8 = v6;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v10 = v9;
    v11 = a1.super.isa;
    JSError.init(badValue:expected:)(v11, 0x676E69727473, 0xE600000000000000, v10);
    swift_willThrow();
  }

  result.rawValue._object = v8;
  result.rawValue._countAndFlagsBits = v7;
  return result;
}

void sub_1AB3B987C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isString] && (v4 = objc_msgSend(a1, sel_toString)) != 0)
  {
    v5 = v4;
    v6 = sub_1AB460544();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v10 = v9;
    v11 = a1;
    JSError.init(badValue:expected:)(v11, 0x676E69727473, 0xE600000000000000, v10);
    swift_willThrow();
  }
}

unint64_t OperationID.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{

  v6 = sub_1AB461F94();
  v7 = [objc_opt_self() valueWithObject:v6 inContext:{a1, a2, a3}];
  swift_unknownObjectRelease();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58, &qword_1AB4D5810);
  result = sub_1AB0547A8();
  a4[4] = result;
  *a4 = v7;
  return result;
}

JSValue __swiftcall OperationID.makeValue(in:)(JSContext in)
{
  v7 = v1;
  v8 = v2;

  v4 = sub_1AB461F94();
  v5 = [objc_opt_self() valueWithObject:v4 inContext:{in.super.isa, v7, v8}];
  result.super.isa = swift_unknownObjectRelease();
  if (v5)
  {
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB3B9A90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = *v2;
  v9 = v2[1];

  v5 = sub_1AB461F94();
  v6 = [objc_opt_self() valueWithObject:v5 inContext:{a1, v8, v9}];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436C58, &qword_1AB4D5810);
  result = sub_1AB0547A8();
  a2[4] = result;
  *a2 = v6;
  return result;
}

id sub_1AB3B9B44(uint64_t a1)
{
  v6 = *v1;
  v7 = v1[1];

  v3 = sub_1AB461F94();
  v4 = [objc_opt_self() valueWithObject:v3 inContext:{a1, v6, v7}];
  result = swift_unknownObjectRelease();
  if (v4)
  {
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t EmptyActionImplementation.perform(_:asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400, &unk_1AB4E81F0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t sub_1AB3B9C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB438400, &unk_1AB4E81F0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  return v0;
}

uint64_t JSONTypeCluster.tryToMakeInstance(ofKind:byDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  sub_1AB014A58(a2, v20, &qword_1EB436BA0, &qword_1AB4D4F40);
  v12 = v21;
  if (!v21)
  {
    sub_1AB014AC0(v20, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_5;
  }

  v13 = v22;
  __swift_project_boxed_opaque_existential_1Tm(v20, v21);
  v14 = (*(v13 + 128))(v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  if (v14)
  {
LABEL_5:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = *(*(AssociatedTypeWitness - 8) + 56);
    v18 = a6;
    v19 = 1;
    return v17(v18, v19, 1, AssociatedTypeWitness);
  }

  v20[0] = v11;
  (*(a5 + 24))(a1, a2, v20, a4, a5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(*(AssociatedTypeWitness - 8) + 56);
  v18 = a6;
  v19 = 0;
  return v17(v18, v19, 1, AssociatedTypeWitness);
}

uint64_t JSONTypeCluster.makeInstances(ofKind:byDeserializing:using:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a1;
  v8[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return JSONArray.map<A>(_:)(sub_1AB3BA058, v8, AssociatedTypeWitness);
}

uint64_t sub_1AB3BA058(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v7 = v1[6];
  return (*(v4 + 24))(v5, a1, &v7, v3);
}

uint64_t JSONTypeCluster.tryToMakeInstances(ofKind:byDeserializing:using:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  v8[2] = a4;
  v8[3] = a5;
  v8[5] = a1;
  v8[6] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return JSONArray.compactMap<A>(_:)(sub_1AB3BA470, v8, AssociatedTypeWitness);
}

uint64_t sub_1AB3BA130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_1AB014A58(a1, v27, &qword_1EB436BA0, &qword_1AB4D4F40);
  v13 = v28;
  if (!v28)
  {
    sub_1AB014AC0(v27, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_7;
  }

  v30 = a6;
  v14 = v29;
  __swift_project_boxed_opaque_existential_1Tm(v27, v28);
  v15 = *(v14 + 128);
  v16 = v14;
  a6 = v30;
  v17 = v15(v13, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  if (v17)
  {
LABEL_7:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(a6, 1, 1, AssociatedTypeWitness);
  }

  v27[0] = a3;
  (*(a5 + 24))(a2, a1, v27, a4, a5);
  if (v6)
  {
    sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a3, v27);
    sub_1AB014A58(v27, v24, &qword_1EB436EC0, &qword_1AB4D6B20);
    v18 = v25;
    if (v25)
    {
      v19 = v26;
      __swift_project_boxed_opaque_existential_1Tm(v24, v25);
      v20 = swift_getAssociatedTypeWitness();
      (*(v19 + 8))(v20, v6, v18, v19);

      sub_1AB014AC0(v27, &qword_1EB436EC0, &qword_1AB4D6B20);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    else
    {
      sub_1AB014AC0(v27, &qword_1EB436EC0, &qword_1AB4D6B20);

      sub_1AB014AC0(v24, &qword_1EB436EC0, &qword_1AB4D6B20);
      v20 = swift_getAssociatedTypeWitness();
    }

    return (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  }

  else
  {
    v23 = swift_getAssociatedTypeWitness();
    return (*(*(v23 - 8) + 56))(a6, 0, 1, v23);
  }
}

uint64_t sub_1AB3BA4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 8) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_1AB3BA504(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = xmmword_1AB4F30D0;
    }
  }

  return result;
}

uint64_t *JSBoundReference.init(value:ownedBy:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1AB45F9E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for JSWeakReference();
  swift_allocObject();
  v10 = a2;
  v11 = JSWeakReference.init(_:)(v10);
  if (v11)
  {
    v12 = v11;
    sub_1AB45F9D4();
    v13 = sub_1AB45F9C4();
    v15 = v14;
    (*(v7 + 8))(v9, v6);
    v3[2] = v13;
    v3[3] = v15;
    v3[4] = v12;

    v16 = sub_1AB460514();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D9850;
    *(inited + 32) = sub_1AB460544();
    v18 = MEMORY[0x1E69E6370];
    *(inited + 40) = v19;
    *(inited + 72) = v18;
    *(inited + 48) = 0;
    *(inited + 80) = sub_1AB460544();
    *(inited + 88) = v20;
    *(inited + 120) = v18;
    *(inited + 96) = 0;
    *(inited + 128) = sub_1AB460544();
    *(inited + 136) = v21;
    *(inited + 168) = v18;
    *(inited + 144) = 1;
    *(inited + 176) = sub_1AB460544();
    *(inited + 184) = v22;
    *(inited + 216) = sub_1AB054C38();
    *(inited + 192) = a1;
    v23 = a1;
    sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
    swift_arrayDestroy();
    v24 = sub_1AB4602D4();

    [v10 defineProperty:v16 descriptor:v24];
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v3;
}

void *JSBoundReference.deinit()
{
  v1 = *(v0 + 32);
  Object = JSWeakGetObject();
  if (Object)
  {
    v3 = [objc_opt_self() valueWithJSValueRef:Object inContext:*(v1 + 16)];
    if (v3)
    {
      v4 = v3;

      v5 = sub_1AB460514();

      [v4 deleteProperty_];
    }
  }

  return v0;
}

id JSBoundReference.owner.getter()
{
  v1 = *(v0 + 32);
  result = JSWeakGetObject();
  if (result)
  {
    return [objc_opt_self() valueWithJSValueRef:result inContext:*(v1 + 16)];
  }

  return result;
}

uint64_t JSBoundReference.__deallocating_deinit()
{
  JSBoundReference.deinit();

  return swift_deallocClassInstance();
}

void JSBoundReference.referent.getter()
{
  v1 = *(v0 + 32);
  Object = JSWeakGetObject();
  if (Object)
  {
    v3 = [objc_opt_self() valueWithJSValueRef:Object inContext:*(v1 + 16)];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1AB460514();
      v6 = [v4 valueForProperty_];

      if (v6)
      {
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1AB3BAB18(void *a1, void *a2, void *a3)
{
  v7 = [objc_opt_self() currentContext];
  if (v7)
  {
    v8 = v7;
    if ([a1 isString] && (v9 = objc_msgSend(a1, sel_toString)) != 0)
    {
      v10 = v9;
      v11 = sub_1AB460544();
      v13 = v12;

      v23 = sub_1AB3BD2A0(a2);
      __swift_project_boxed_opaque_existential_1Tm((v3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer), *(v3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24));
      if (([a3 isString] & 1) != 0 && (v24 = objc_msgSend(a3, sel_toString)) != 0)
      {
        v25 = v24;
        v26 = sub_1AB460544();
        v28 = v27;

        v29 = v26;
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      LOBYTE(v34[0]) = 0;
      v30 = sub_1AB2044F8(v11, v13, v23, v29, v28, v34);
      v32 = v31;

      v34[0] = v30;
      v34[1] = v32;
      v33 = sub_1AB461F94();
      v21 = [objc_opt_self() valueWithObject:v33 inContext:v8];
      swift_unknownObjectRelease();
      if (v21)
      {

        return v21;
      }
    }

    else
    {
      sub_1AB0C3EF0();
      v14 = swift_allocError();
      JSError.init(badValue:expected:)(a1, 0x676E69727473, 0xE600000000000000, v15);
      swift_willThrow();
      v16 = v14;
      v17 = [v8 exceptionHandler];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1AB23E418(v14, v8);
        (v18)[2](v18, v8, v19);
        _Block_release(v18);
      }

      v20 = [objc_opt_self() valueWithUndefinedInContext_];
      if (v20)
      {
        v21 = v20;

        return v21;
      }

      __break(1u);
    }

    __break(1u);
  }

  result = sub_1AB461884();
  __break(1u);
  return result;
}

id sub_1AB3BAE48(uint64_t a1, id a2, void *a3, void *a4, void *a5, uint64_t a6, id a7)
{
  if (![a2 isNumber] || (v15 = objc_msgSend(a2, sel_toNumber)) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a2, 0x7265626D756ELL, 0xE600000000000000, v17);
    swift_willThrow();
    return a7;
  }

  v34 = v15;
  v32 = [a3 isUndefined];
  if (v32)
  {
    v16 = [a4 isUndefined];
  }

  else
  {
    if (([a3 isNumber] & 1) == 0)
    {
      sub_1AB0C3EF0();
      swift_allocError();
      a7 = v28;
      v29 = a3;
LABEL_17:
      JSError.init(badValue:expected:)(v29, 7630441, 0xE300000000000000, a7);
      swift_willThrow();
      goto LABEL_18;
    }

    v16 = [a4 isUndefined];
  }

  v18 = v16;
  if (v16)
  {
    v19 = 0;
    goto LABEL_12;
  }

  if (([a4 isNumber] & 1) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    a7 = v30;
    v29 = a4;
    goto LABEL_17;
  }

  v19 = [a4 toInt32];
LABEL_12:
  sub_1AB3BB108(a5, v33);
  if (v7)
  {
LABEL_18:

    return a7;
  }

  v20 = v33[0];
  v21 = (a6 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v22 = *(a6 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24);
  v23 = v21[5];
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  LOBYTE(v33[0]) = v20;
  v24 = v34;
  v33[0] = (*(v23 + 64))(v34, v31, v32, v19, v18, v33, v22, v23);
  v33[1] = v25;
  v26 = sub_1AB461F94();
  a7 = [objc_opt_self() valueWithObject:v26 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a7)
  {

    return a7;
  }

  __break(1u);
  return result;
}

char sub_1AB3BB108@<W0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [a1 isUndefined];
  if (v4)
  {
    *a2 = 0;
  }

  else if ([a1 isString] && (v5 = objc_msgSend(a1, sel_toString)) != 0 && (v6 = v5, v7 = sub_1AB460544(), v9 = v8, v6, v10._countAndFlagsBits = v7, v10._object = v9, LOBYTE(v4) = LocalizerContext.init(rawValue:)(v10), v13 != 6))
  {
    *a2 = v13;
  }

  else
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a1, 0xD000000000000011, 0x80000001AB50CD10, v11);
    LOBYTE(v4) = swift_willThrow();
  }

  return v4;
}

uint64_t sub_1AB3BB234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = [objc_opt_self() currentContext];
  if (v12)
  {
    v13 = v12;
    v14 = a5(v12, a1, a2, a3, a4, v5, ObjectType);

    return v14;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB3BB3DC(uint64_t a1, id a2, void *a3, void *a4, void *a5, uint64_t a6, id a7)
{
  if (![a2 isNumber] || (v15 = objc_msgSend(a2, sel_toNumber)) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a2, 0x7265626D756ELL, 0xE600000000000000, v17);
    swift_willThrow();
    return a7;
  }

  v34 = v15;
  v32 = [a3 isUndefined];
  if (v32)
  {
    v16 = [a4 isUndefined];
  }

  else
  {
    if (([a3 isNumber] & 1) == 0)
    {
      sub_1AB0C3EF0();
      swift_allocError();
      a7 = v28;
      v29 = a3;
LABEL_17:
      JSError.init(badValue:expected:)(v29, 7630441, 0xE300000000000000, a7);
      swift_willThrow();
      goto LABEL_18;
    }

    v16 = [a4 isUndefined];
  }

  v18 = v16;
  if (v16)
  {
    v19 = 0;
    goto LABEL_12;
  }

  if (([a4 isNumber] & 1) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    a7 = v30;
    v29 = a4;
    goto LABEL_17;
  }

  v19 = [a4 toInt32];
LABEL_12:
  sub_1AB3BB108(a5, v33);
  if (v7)
  {
LABEL_18:

    return a7;
  }

  v20 = v33[0];
  v21 = (a6 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v22 = *(a6 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24);
  v23 = v21[5];
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  LOBYTE(v33[0]) = v20;
  v24 = v34;
  v33[0] = (*(v23 + 72))(v34, v31, v32, v19, v18, v33, v22, v23);
  v33[1] = v25;
  v26 = sub_1AB461F94();
  a7 = [objc_opt_self() valueWithObject:v26 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a7)
  {

    return a7;
  }

  __break(1u);
  return result;
}

id sub_1AB3BB6B4(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t (*a7)(id, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a1;
  v17 = sub_1AB3BB234(v12, v13, v14, v15, a7);

  return v17;
}

id sub_1AB3BB768(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() currentContext];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1AB3BB8F0(v6, a1, a2, v2, ObjectType);

    return v8;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB3BB8F0(uint64_t a1, id a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  if (([a2 isNumber] & 1) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(v9, 0x72656765746E69, 0xE700000000000000, v12);
    swift_willThrow();
    return v9;
  }

  v11 = [v9 toInt32];
  v9 = a5;
  sub_1AB3BB108(a3, v20);
  if (v5)
  {
    return v9;
  }

  v13 = v20[0];
  v14 = (a4 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v15 = *(a4 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24);
  v16 = v14[5];
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  LOBYTE(v20[0]) = v13;
  v20[0] = (*(v16 + 80))(v11, v20, v15, v16);
  v20[1] = v17;
  v18 = sub_1AB461F94();
  v9 = [objc_opt_self() valueWithObject:v18 inContext:a1];
  result = swift_unknownObjectRelease();
  if (v9)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB3BBB00(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = [objc_opt_self() currentContext];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1AB3BD3B0(v10, a1, a2, a3, v5, a4);

    return v12;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB3BBD30(uint64_t a1, id a2, uint64_t a3)
{
  v4 = a2;
  if ([a2 isNumber])
  {
    v6 = [v4 toInt32];
    v7 = (a3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
    v8 = *(a3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24);
    v9 = v7[5];
    __swift_project_boxed_opaque_existential_1Tm(v7, v8);
    v14 = (*(v9 + 104))(v6, v8, v9);
    v15 = v10;
    v4 = sub_1AB461F94();
    v11 = [objc_opt_self() valueWithObject:v4 inContext:{a1, v14, v15}];
    swift_unknownObjectRelease();
    result = v11;
    if (v11)
    {
      return result;
    }

    __break(1u);
  }

  sub_1AB0C3EF0();
  swift_allocError();
  JSError.init(badValue:expected:)(v4, 7630441, 0xE300000000000000, v13);
  return swift_willThrow();
}

id sub_1AB3BBEF4(uint64_t a1, id a2, uint64_t a3)
{
  v4 = a2;
  if ([a2 isNumber])
  {
    [v4 toDouble];
    v7 = v6;
    v8 = (a3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
    v9 = *(a3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24);
    v10 = v8[5];
    __swift_project_boxed_opaque_existential_1Tm(v8, v9);
    v15 = (*(v10 + 112))(v9, v10, v7);
    v16 = v11;
    v4 = sub_1AB461F94();
    v12 = [objc_opt_self() valueWithObject:v4 inContext:{a1, v15, v16}];
    swift_unknownObjectRelease();
    result = v12;
    if (v12)
    {
      return result;
    }

    __break(1u);
  }

  sub_1AB0C3EF0();
  swift_allocError();
  JSError.init(badValue:expected:)(v4, 0x656C62756F64, 0xE600000000000000, v14);
  return swift_willThrow();
}

id sub_1AB3BC0C0(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = [objc_opt_self() currentContext];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1AB3BC250(v8, a1, a2, a3, v3, ObjectType);

    return v10;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB3BC250(uint64_t a1, void *a2, id a3, void *a4, uint64_t a5, void *a6)
{
  v45 = a1;
  v46 = a6;
  v44 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v15 = sub_1AB45F9B4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a2 isString] || (v20 = objc_msgSend(a2, sel_toString)) == 0)
  {
    sub_1AB0C3EF0();
    swift_allocError();
    v28 = v27;
    v29 = a2;
    v30 = 0x676E69727473;
    v31 = v28;
    v32 = 0xE600000000000000;
LABEL_11:
    JSError.init(badValue:expected:)(v29, v30, v32, v31);
    swift_willThrow();
    return a3;
  }

  v21 = v20;
  v43 = sub_1AB460544();
  v23 = v22;

  if (![a3 isDate])
  {
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_10:

    sub_1AB19C1DC(v14);
    sub_1AB0C3EF0();
    swift_allocError();
    v34 = v33;
    v29 = a3;
    v31 = v34;
    v30 = 1702125892;
    v32 = 0xE400000000000000;
    goto LABEL_11;
  }

  v24 = [a3 toDate];
  if (v24)
  {
    v25 = v23;
    v26 = v24;
    sub_1AB45F984();

    v23 = v25;
    (*(v16 + 56))(v11, 0, 1, v15);
  }

  else
  {
    (*(v16 + 56))(v11, 1, 1, v15);
  }

  sub_1AB167244(v11, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_10;
  }

  (*(v16 + 32))(v19, v14, v15);
  a3 = v46;
  v36 = v47[3];
  sub_1AB3BB108(a4, v47);
  if (v36 || (v37 = v47[0], v38 = *(v44 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24), v39 = v23, v40 = *(v44 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 40), __swift_project_boxed_opaque_existential_1Tm((v44 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer), v38), LOBYTE(v47[0]) = v37, v47[0] = (*(v40 + 120))(v43, v39, v19, v47, v38, v40), v47[1] = v41, v42 = sub_1AB461F94(), a3 = [objc_opt_self() valueWithObject:v42 inContext:v45], result = swift_unknownObjectRelease(), a3))
  {
    (*(v16 + 8))(v19, v15);

    return a3;
  }

  __break(1u);
  return result;
}

id sub_1AB3BC698(void *a1, void *a2, void *a3)
{
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = sub_1AB45F9B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() currentContext];
  if (!v15)
  {
    goto LABEL_25;
  }

  v16 = v15;
  if (![a1 isString] || (v17 = objc_msgSend(a1, sel_toString)) == 0)
  {
    sub_1AB0C3EF0();
    v25 = swift_allocError();
    v27 = v26;
    v28 = a1;
    v29 = 0x676E69727473;
    v30 = v27;
    v31 = 0xE600000000000000;
LABEL_12:
    JSError.init(badValue:expected:)(v28, v29, v31, v30);
    swift_willThrow();
    goto LABEL_13;
  }

  v18 = v17;
  v53 = sub_1AB460544();
  v20 = v19;

  v21 = v55;
  if (![v55 isDate])
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_11:

    sub_1AB19C1DC(v10);
    sub_1AB0C3EF0();
    v25 = swift_allocError();
    v33 = v32;
    v28 = v55;
    v30 = v33;
    v29 = 1702125892;
    v31 = 0xE400000000000000;
    goto LABEL_12;
  }

  v22 = [v21 toDate];
  if (v22)
  {
    v23 = v22;
    sub_1AB45F984();

    v24 = v12;
    (*(v12 + 56))(v7, 0, 1, v11);
  }

  else
  {
    v24 = v12;
    (*(v12 + 56))(v7, 1, 1, v11);
  }

  sub_1AB167244(v7, v10);
  if ((*(v24 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_11;
  }

  v41 = v14;
  (*(v24 + 32))(v14, v10, v11);
  v42 = a3;
  if ([a3 isString])
  {
    v43 = [a3 toString];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1AB460544();
      v47 = v46;

      v48 = *(v54 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24);
      v49 = *(v54 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 40);
      __swift_project_boxed_opaque_existential_1Tm((v54 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer), v48);
      v56 = (*(v49 + 128))(v53, v20, v41, v45, v47, v48, v49);
      v57 = v50;
      v51 = sub_1AB461F94();
      v39 = [objc_opt_self() valueWithObject:v51 inContext:v16];
      swift_unknownObjectRelease();
      if (v39)
      {

        (*(v24 + 8))(v41, v11);
        return v39;
      }

      goto LABEL_24;
    }
  }

  sub_1AB0C3EF0();
  v25 = swift_allocError();
  JSError.init(badValue:expected:)(v42, 0x676E69727473, 0xE600000000000000, v52);
  swift_willThrow();
  (*(v24 + 8))(v14, v11);
LABEL_13:
  v34 = v25;
  v35 = [v16 exceptionHandler];
  if (v35)
  {
    v36 = v35;
    v37 = sub_1AB23E418(v25, v16);
    (v36)[2](v36, v16, v37);
    _Block_release(v36);
  }

  v38 = [objc_opt_self() valueWithUndefinedInContext_];
  if (v38)
  {
    v39 = v38;

    return v39;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1AB461884();
  __break(1u);
  return result;
}

id sub_1AB3BCC70(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id, id, id))
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a1;
  v14 = a6(v10, v11, v12);

  return v14;
}

uint64_t sub_1AB3BCD08(uint64_t a1, uint64_t (*a2)(id, uint64_t, uint64_t))
{
  v5 = [objc_opt_self() currentContext];
  if (v5)
  {
    v6 = v5;
    v7 = a2(v5, a1, v2);

    return v7;
  }

  else
  {
    result = sub_1AB461884();
    __break(1u);
  }

  return result;
}

id sub_1AB3BCE78(uint64_t a1, id a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = sub_1AB45F9B4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a2 isDate])
  {
    (*(v14 + 56))(v12, 1, 1, v13);
LABEL_7:
    sub_1AB19C1DC(v12);
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a2, 1702125892, 0xE400000000000000, v22);
    swift_willThrow();
    return a2;
  }

  v29[3] = v3;
  v18 = [a2 toDate];
  if (v18)
  {
    v19 = a3;
    v20 = a1;
    v21 = v18;
    sub_1AB45F984();

    a1 = v20;
    a3 = v19;
    (*(v14 + 56))(v9, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v9, 1, 1, v13);
  }

  sub_1AB167244(v9, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_7;
  }

  (*(v14 + 32))(v17, v12, v13);
  v23 = (a3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer);
  v24 = *(a3 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24);
  v25 = v23[5];
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  LOBYTE(v29[0]) = 0;
  v29[0] = (*(v25 + 136))(v17, v29, v24, v25);
  v29[1] = v26;
  v27 = sub_1AB461F94();
  a2 = [objc_opt_self() valueWithObject:v27 inContext:a1];
  result = swift_unknownObjectRelease();
  if (a2)
  {
    (*(v14 + 8))(v17, v13);
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1AB3BD2A0(void *a1)
{
  if ([a1 isNull] & 1) != 0 || (objc_msgSend(a1, sel_isUndefined))
  {
    return 0;
  }

  v3 = [a1 toDictionary];
  if (!v3 || (v4 = v3, v5 = sub_1AB4602F4(), v4, v6 = sub_1AB23B150(v5), , (result = v6) == 0))
  {
    sub_1AB0C3EF0();
    swift_allocError();
    JSError.init(badValue:expected:)(a1, 0xD00000000000001ALL, 0x80000001AB50CD30, v7);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AB3BD3B0(uint64_t a1, id a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  if ([a2 isString] && (v12 = objc_msgSend(a2, sel_toString)) != 0 || objc_msgSend(a3, sel_isString) && (v12 = objc_msgSend(a3, sel_toString)) != 0)
  {
    v13 = v12;
    v69 = sub_1AB460544();
    v15 = v14;
  }

  else
  {
    v69 = 0;
    v15 = 0;
  }

  v16 = [a3 isNumber];
  v17 = a3;
  if ((v16 & 1) == 0)
  {
    if (![a2 isNumber])
    {
      if (v15)
      {

        sub_1AB0C3EF0();
        swift_allocError();
        v19 = v21;
        v22 = a2;
        v23 = v19;
        v24 = 7630441;
        v25 = 0xE300000000000000;
LABEL_16:
        JSError.init(badValue:expected:)(v22, v24, v25, v23);
        swift_willThrow();
        return v19;
      }

LABEL_15:
      sub_1AB0C3EF0();
      swift_allocError();
      v19 = v26;
      v22 = a3;
      v24 = 0x676E69727473;
      v23 = v19;
      v25 = 0xE600000000000000;
      goto LABEL_16;
    }

    v17 = a2;
  }

  v18 = [v17 toInt32];
  if (!v15)
  {
    goto LABEL_15;
  }

  v19 = v18;
  v20 = sub_1AB3BD2A0(a4);
  if (v6)
  {

    return v19;
  }

  v28 = v20;
  v19 = v19;
  v29 = __swift_project_boxed_opaque_existential_1Tm((a5 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer), *(a5 + OBJC_IVAR____TtC9JetEngine17JSLocalizerObject_localizer + 24));
  v64 = v19;
  if (([a6 isString] & 1) != 0 && (v30 = objc_msgSend(a6, sel_toString)) != 0)
  {
    v31 = v30;
    v63 = sub_1AB460544();
    v33 = v32;

    v19 = v64;
  }

  else
  {
    v63 = 0;
    v33 = 0;
  }

  v34 = sub_1AB20B934(v19, *v29 + OBJC_IVAR____TtC9JetEngine22AppleServicesLocalizer_locale);
  if (v34 == 5)
  {
LABEL_27:

    v40 = v15;
    if (!v28)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v35 = v34;
  v36 = sub_1AB460514();
  v37 = JEPluralCategoryPluralFormKeyFromBaseKey(v35, v36);

  v38 = sub_1AB460544();
  v40 = v39;

  LOBYTE(v66) = 0;
  if ((sub_1AB203C1C(v38, v40, &v66) & 1) == 0)
  {

    v19 = v64;
    goto LABEL_27;
  }

  v69 = v38;
  v19 = v64;
  if (!v28)
  {
LABEL_25:
    v41 = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
    goto LABEL_29;
  }

LABEL_28:
  v41 = v28;
LABEL_29:
  v62 = v40;
  v42 = *(v41 + 16);

  if (v42)
  {
    sub_1AB014DB4(0x746E756F63, 0xE500000000000000);
    if (v43)
    {
      if (qword_1ED4CFEF8 != -1)
      {
        swift_once();
      }

      v44 = qword_1EB4347E8;
      v60 = unk_1EB4347F0;
      __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1AB4D4720;
      v68 = MEMORY[0x1E69E6158];
      v66 = 0xD000000000000044;
      v67 = 0x80000001AB503970;
      *(v46 + 48) = 0u;
      *(v46 + 32) = 0u;
      sub_1AB0169C4(&v66, v46 + 32);
      *(v46 + 64) = 0;
      *(v45 + 32) = v46;
      Logger.warning(_:)(v45, v44, v60);

      v19 = v64;
    }

    if (*(v41 + 16))
    {
      sub_1AB014DB4(0x7265626D756ELL, 0xE600000000000000);
      if (v47)
      {
        if (qword_1ED4CFEF8 != -1)
        {
          swift_once();
        }

        v48 = qword_1EB4347E8;
        v61 = unk_1EB4347F0;
        __swift_project_boxed_opaque_existential_1Tm(qword_1EB4347D0, qword_1EB4347E8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
        v49 = swift_allocObject();
        *(v49 + 16) = xmmword_1AB4D4720;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1AB4D4720;
        v68 = MEMORY[0x1E69E6158];
        v66 = 0xD000000000000045;
        v67 = 0x80000001AB503920;
        *(v50 + 48) = 0u;
        *(v50 + 32) = 0u;
        sub_1AB0169C4(&v66, v50 + 32);
        *(v50 + 64) = 0;
        *(v49 + 32) = v50;
        Logger.warning(_:)(v49, v48, v61);

        v19 = v64;
      }
    }
  }

  v51 = AppleServicesLocalizer.formattedCount(_:)(v19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = v41;
  sub_1AB1D5C74(v51._countAndFlagsBits, v51._object, 0x746E756F63, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v53 = v66;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v66 = v53;
  sub_1AB1D5C74(v51._countAndFlagsBits, v51._object, 0x7265626D756ELL, 0xE600000000000000, v54);
  v55 = v66;
  LOBYTE(v66) = 0;
  v56 = sub_1AB2044F8(v69, v62, v55, v63, v33, &v66);
  v58 = v57;

  v66 = v56;
  v67 = v58;
  v59 = sub_1AB461F94();
  v19 = [objc_opt_self() valueWithObject:v59 inContext:a1];
  result = swift_unknownObjectRelease();
  if (v19)
  {

    return v19;
  }

  __break(1u);
  return result;
}

uint64_t DiscardOnError<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1AB4620A4();
  sub_1AB460454();
  return sub_1AB462104();
}

uint64_t sub_1AB3BDC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AB4620A4();
  DiscardOnError<A>.hash(into:)(v6, a2, v4);
  return sub_1AB462104();
}

Swift::Void __swiftcall DiscardOnErrorLogUnsupportedDecoderError()()
{
  if (qword_1EB4324F0 != -1)
  {
    swift_once();
  }

  if ([qword_1EB4324F8 compareWithValue:0 andExchangeWithValue:1])
  {
    if (qword_1EB435660 != -1)
    {
      swift_once();
    }

    v0 = qword_1EB435668;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1AB4D4190;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v3 = MEMORY[0x1E69E6158];
    v17 = MEMORY[0x1E69E6158];
    v14 = 0xD00000000000004FLL;
    v15 = 0x80000001AB50CE30;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1AB0169C4(&v14, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    v17 = v3;
    v14 = 0xD000000000000051;
    v15 = 0x80000001AB50CE80;
    *(v4 + 48) = 0u;
    *(v4 + 32) = 0u;
    sub_1AB0169C4(&v14, v4 + 32);
    *(v4 + 64) = 0;
    *(v1 + 40) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1AB4D4720;
    v17 = v3;
    v14 = 0xD000000000000048;
    v15 = 0x80000001AB50CEE0;
    *(v5 + 48) = 0u;
    *(v5 + 32) = 0u;
    sub_1AB0169C4(&v14, v5 + 32);
    *(v5 + 64) = 0;
    *(v1 + 48) = v5;
    v6 = sub_1AB461094();
    if (os_log_type_enabled(v0, v6))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v7 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v7[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v7 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v9 = swift_allocObject();
      *(v9 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v14 = v1;
      v15 = sub_1AB01A8D8;
      v16 = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v10 = sub_1AB460484();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1AB4D4720;
      *(v13 + 56) = v3;
      *(v13 + 64) = sub_1AB016854();
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v0, v6, v13);
    }
  }
}

id sub_1AB3BE094()
{
  result = [objc_allocWithZone(_JEAtomicFlag) initWithInitialValue_];
  qword_1EB4324F8 = result;
  return result;
}

void *SendableWrapper.__allocating_init(_:)(uint64_t a1)
{
  v3 = swift_allocObject();
  v3[2] = sub_1AB02FFC0(a1, *(*v3 + 80));
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

void *SendableWrapper.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AB3BE2D0(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

void SendableWrapper.withValue<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[2];
  v6[2] = *(*v3 + 80);
  v6[3] = a3;
  v6[4] = a1;
  v6[5] = a2;
  sub_1AB1AA5AC(sub_1AB3BE304, v6, v5);
}

uint64_t SendableWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1AB3BE37C@<X0>(char **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, char **a4@<X8>)
{
  v8 = *a1;
  v9 = *(*a1 + 2);

  v10 = v8;
  if (v9 >= 5)
  {
    sub_1AB3BE5A8(0, 1, sub_1AB020904, sub_1AB2351F0);
    v10 = *a1;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AB020904(0, *(v10 + 2) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    result = sub_1AB020904((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[16 * v13];
  *(v14 + 4) = a2;
  *(v14 + 5) = a3;
  *a1 = v10;
  *a4 = v8;
  return result;
}

uint64_t PageHistoryFieldProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB3BE5A8(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

double XPCJetAsset.makeJetPackAsset()@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v27 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v28 = v5;
  v26 = v1[5];
  v7 = *(v1 + 48);
  v8 = type metadata accessor for XPCJetAsset(0);
  v9 = (v1 + v8[7]);
  v10 = *v9;
  v11 = v9[1];
  a1[3] = &type metadata for JetPackSandboxExtensionFileStreamSource;
  a1[4] = &protocol witness table for JetPackSandboxExtensionFileStreamSource;
  v12 = swift_allocObject();
  *a1 = v12;
  *(v12 + 40) = &type metadata for JetPackAssetDaemonClient;
  *(v12 + 48) = &off_1F20096A0;
  *(v12 + 56) = v27;
  *(v12 + 64) = v3;
  *(v12 + 72) = v4;
  *(v12 + 80) = v5;
  v13 = v4;
  *(v12 + 88) = v6;
  *(v12 + 96) = v26;
  v14 = v7;
  *(v12 + 104) = v7;
  *(v12 + 112) = v10;
  *(v12 + 120) = v11;
  v15 = v8[5];
  v16 = type metadata accessor for JetPackAsset(0);
  sub_1AB3BF884(v1 + v15, a1 + v16[5], type metadata accessor for JetPackAsset.Metadata);
  v17 = (v1 + v8[6]);
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 4);
  v19 = *(v1 + v8[8]);
  v20 = *(v1 + v8[9]);
  v21 = *(v1 + v8[10]);
  v22 = a1 + v16[6];
  *v22 = v18;
  v22[4] = v17;
  v23 = (a1 + v16[7]);
  *v23 = v10;
  v23[1] = v11;
  *(a1 + v16[8]) = v19;
  *(a1 + v16[9]) = v20;
  *(a1 + v16[10]) = v21;
  v24 = (a1 + v16[11]);
  *v24 = 0;
  v24[1] = 0;
  swift_bridgeObjectRetain_n();

  return sub_1AB18D714(v13, v28, v6, v26, v14);
}

uint64_t type metadata accessor for XPCJetAsset(uint64_t a1)
{
  result = qword_1EB4341B8;
  if (!qword_1EB4341B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double XPCJetAsset.fileAsset.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + 48);
  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;

  return sub_1AB18D714(v4, v5, v6, v7, v8);
}

uint64_t XPCJetAsset.cacheKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for XPCJetAsset(0) + 28));

  return v1;
}

uint64_t XPCJetAsset.init(_:auditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1AB01494C(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436CC8, &qword_1AB4D5A98);
  if (swift_dynamicCast())
  {
    v32 = v29;
    v27 = a4;
    v28 = a5;
    v12 = type metadata accessor for JetPackAsset(0);
    v13 = v12[5];
    v14 = type metadata accessor for XPCJetAsset(0);
    sub_1AB3BF884(a1 + v13, a6 + v14[5], type metadata accessor for JetPackAsset.Metadata);
    v15 = (a1 + v12[6]);
    v25 = *(v15 + 4);
    v26 = *v15;
    v16 = (a1 + v12[7]);
    v17 = v16[1];
    v22 = *v16;
    v23 = *(a1 + v12[9]);
    v24 = *(a1 + v12[8]);
    LOBYTE(v12) = *(a1 + v12[10]);

    sub_1AB3BF8EC(a1, type metadata accessor for JetPackAsset);

    *a6 = v32;
    *(a6 + 8) = v30;
    *(a6 + 16) = a2;
    *(a6 + 24) = a3;
    *(a6 + 32) = v27;
    *(a6 + 40) = v28;
    *(a6 + 48) = 0;
    v19 = a6 + v14[6];
    *v19 = v26;
    *(v19 + 4) = v25;
    v20 = (a6 + v14[7]);
    *v20 = v22;
    v20[1] = v17;
    *(a6 + v14[8]) = v24;
    *(a6 + v14[9]) = v23;
    *(a6 + v14[10]) = v12;
  }

  else
  {
    sub_1AB22E7BC();
    swift_allocError();
    *v21 = 0;
    swift_willThrow();
    return sub_1AB3BF8EC(a1, type metadata accessor for JetPackAsset);
  }

  return result;
}

uint64_t XPCJetAsset.init(filePath:metadata:cacheID:cacheKey:wasReadFromCache:wasRevalidated:willBeRevalidated:auditToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a11;
  *(a9 + 32) = a12;
  *(a9 + 40) = a13;
  *(a9 + 48) = 0;
  v20 = type metadata accessor for XPCJetAsset(0);
  result = sub_1AB3BECFC(a3, a9 + v20[5]);
  v22 = a9 + v20[6];
  *v22 = a4;
  *(v22 + 4) = BYTE4(a4) & 1;
  v23 = (a9 + v20[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + v20[8]) = a7;
  *(a9 + v20[9]) = a8;
  *(a9 + v20[10]) = a10;
  return result;
}

uint64_t sub_1AB3BECFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB3BED60()
{
  v1 = *v0;
  v2 = 0x65737341656C6966;
  v3 = 0x6C61766552736177;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x79654B6568636163;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x617461646174656DLL;
  if (v1 != 1)
  {
    v5 = 0x44496568636163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB3BEE58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AB3BFBBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AB3BEE8C(uint64_t a1)
{
  v2 = sub_1AB3BF290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB3BEEC8(uint64_t a1)
{
  v2 = sub_1AB3BF290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t XPCJetAsset.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C0A8, &qword_1AB4F34A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB3BF290();
  sub_1AB462274();
  v10 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  v13 = v4[4];
  v14 = v4[5];
  v15 = *(v4 + 48);
  v32 = *v4;
  v33 = v10;
  v34 = v12;
  v35 = v11;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39[0] = 0;

  sub_1AB18D714(v12, v11, v13, v14, v15);
  sub_1AB3BF2E4();
  sub_1AB461BF4();
  if (v3)
  {
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v19 = v37;
    v20 = v38;

    v21 = sub_1AB18CF34(v16, v17, v18, v19, v20);
    return (*(v7 + 8))(v9, v6, v21);
  }

  else
  {
    v31 = v7;
    v23 = v34;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;

    sub_1AB18CF34(v23, v24, v25, v26, v27);
    v28 = type metadata accessor for XPCJetAsset(0);
    LOBYTE(v32) = 1;
    type metadata accessor for JetPackAsset.Metadata(0);
    sub_1AB05C2A4(&qword_1ED4D0A90, &protocol conformance descriptor for JetPackAsset.Metadata);
    sub_1AB461BF4();
    v29 = *(v4 + *(v28 + 24) + 4);
    LOBYTE(v32) = 2;
    v39[0] = v29;
    sub_1AB461B94();
    v30 = v31;
    LOBYTE(v32) = 3;
    sub_1AB461BB4();
    LOBYTE(v32) = 4;
    sub_1AB461BC4();
    LOBYTE(v32) = 5;
    sub_1AB461BC4();
    LOBYTE(v32) = 6;
    sub_1AB461BC4();
    return (*(v30 + 8))(v9, v6);
  }
}

unint64_t sub_1AB3BF290()
{
  result = qword_1EB4341E0;
  if (!qword_1EB4341E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4341E0);
  }

  return result;
}

unint64_t sub_1AB3BF2E4()
{
  result = qword_1EB43C0B0;
  if (!qword_1EB43C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C0B0);
  }

  return result;
}

void XPCJetAsset.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C0B8, &qword_1AB4F34A8);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for XPCJetAsset(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v13);
  sub_1AB3BF290();
  v29 = v9;
  sub_1AB462224();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    v14 = v27;
    v36 = 0;
    sub_1AB3BF830();
    sub_1AB461AC4();
    v15 = v32;
    v16 = v35;
    v17 = v12;
    *v12 = v31;
    *(v12 + 1) = v15;
    v18 = v34;
    *(v12 + 1) = v33;
    *(v12 + 2) = v18;
    v12[48] = v16;
    LOBYTE(v31) = 1;
    sub_1AB05C2A4(&qword_1ED4D06B0, &protocol conformance descriptor for JetPackAsset.Metadata);
    sub_1AB461AC4();
    sub_1AB3BECFC(v6, &v12[v10[5]]);
    LOBYTE(v31) = 2;
    v19 = v29;
    v20 = sub_1AB461A64();
    v21 = &v12[v10[6]];
    *v21 = v20;
    v21[4] = BYTE4(v20) & 1;
    LOBYTE(v31) = 3;
    v22 = sub_1AB461A84();
    v23 = &v12[v10[7]];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v31) = 4;
    v12[v10[8]] = sub_1AB461A94() & 1;
    LOBYTE(v31) = 5;
    v12[v10[9]] = sub_1AB461A94() & 1;
    LOBYTE(v31) = 6;
    v25 = sub_1AB461A94();
    (*(v14 + 8))(v19, v28);
    *(v17 + v10[10]) = v25 & 1;
    sub_1AB3BF884(v17, v26, type metadata accessor for XPCJetAsset);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    sub_1AB3BF8EC(v17, type metadata accessor for XPCJetAsset);
  }
}

unint64_t sub_1AB3BF830()
{
  result = qword_1EB433AE8;
  if (!qword_1EB433AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB433AE8);
  }

  return result;
}

uint64_t sub_1AB3BF884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AB3BF8EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AB3BF9A4(uint64_t a1)
{
  type metadata accessor for JetPackAsset.Metadata(319);
  if (v1 <= 0x3F)
  {
    sub_1AB3BFA54();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1AB3BFA54()
{
  if (!qword_1EB435618)
  {
    v0 = sub_1AB461354();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB435618);
    }
  }
}

unint64_t sub_1AB3BFAB8()
{
  result = qword_1EB43C0C0;
  if (!qword_1EB43C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C0C0);
  }

  return result;
}

unint64_t sub_1AB3BFB10()
{
  result = qword_1EB4341D0;
  if (!qword_1EB4341D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4341D0);
  }

  return result;
}

unint64_t sub_1AB3BFB68()
{
  result = qword_1EB4341D8;
  if (!qword_1EB4341D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4341D8);
  }

  return result;
}

uint64_t sub_1AB3BFBBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65737341656C6966 && a2 == 0xE900000000000074;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496568636163 && a2 == 0xE700000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AB50CF70 == a2 || (sub_1AB461DA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C61766552736177 && a2 == 0xEE00646574616469 || (sub_1AB461DA4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AB50CF90 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t _isStructurallyEqual(_:to:with:at:)(void *a1, void *a2, unint64_t a3, unint64_t a4)
{
  v87 = a4;
  v86 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C0C8, &unk_1AB4F3660);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v77 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v77 - v13;
  v15 = sub_1AB462174();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v77 - v20;
  sub_1AB0165C4(a1, &v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A590, &qword_1AB4E79C0);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(&v91, &v94);
    v22 = *(&v95 + 1);
    v23 = v96;
    v24 = __swift_project_boxed_opaque_existential_1Tm(&v94, *(&v95 + 1));
    v25 = a2[3];
    v26 = __swift_project_boxed_opaque_existential_1Tm(a2, v25);
    v27 = sub_1AB3C0F14(v24, v26, v22, v25, v23);
LABEL_5:
    v33 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(&v94);
    return v33;
  }

  *&v93 = 0;
  v91 = 0u;
  v92 = 0u;
  sub_1AB014AC0(&v91, &qword_1EB43A998, &qword_1AB4F3670);
  sub_1AB0165C4(a1, &v88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C0D0, &qword_1AB4F3678);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(&v91, &v94);
    v28 = *(&v95 + 1);
    v29 = v96;
    v30 = __swift_project_boxed_opaque_existential_1Tm(&v94, *(&v95 + 1));
    v31 = a2[3];
    v32 = __swift_project_boxed_opaque_existential_1Tm(a2, v31);
    v27 = sub_1AB3C11A8(v30, v32, v28, v31, v29);
    goto LABEL_5;
  }

  *&v93 = 0;
  v91 = 0u;
  v92 = 0u;
  sub_1AB014AC0(&v91, &qword_1EB43C0D8, &qword_1AB4F3680);
  if (v87 >= v86)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1Tm(a2, a2[3]);
    return DynamicType == swift_getDynamicType();
  }

  v83 = v11;
  v84 = v16;
  v85 = v15;
  sub_1AB0165C4(a1, &v94);
  sub_1AB462124();
  sub_1AB0165C4(a2, &v94);
  sub_1AB462124();
  v35 = sub_1AB462134();
  if (v35 != sub_1AB462134() || (sub_1AB462164(), v36 = sub_1AB461874(), , sub_1AB462164(), v37 = sub_1AB461874(), , v36 != v37))
  {
LABEL_17:
    v53 = *(v84 + 8);
    v54 = v85;
    v53(v18, v85);
    v53(v21, v54);
    return 0;
  }

  v38 = sub_1AB462164();
  v39 = v38[2];
  v82 = v38[3];
  v78 = v38;
  v40 = v38[4];
  v81 = v38[5];
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v79 = v39;
  v77[1] = ObjectType;
  v42 = sub_1AB461624();
  swift_getObjectType();
  v80 = v40;
  result = sub_1AB461624();
  if (v42 == result)
  {
    v43 = sub_1AB461634();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v43 & 1) == 0)
    {
      goto LABEL_14;
    }

    v44 = sub_1AB462164();
    v45 = v44[2];
    v82 = v44[3];
    v79 = v44;
    v81 = v44[5];
    v46 = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v80 = v45;
    v78 = v46;
    v47 = sub_1AB461624();
    swift_getObjectType();
    result = sub_1AB461624();
    if (v47 == result)
    {
      v48 = sub_1AB461634();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v48)
      {
        goto LABEL_19;
      }

LABEL_14:
      sub_1AB462154();
      v49 = sub_1AB462144();
      v81 = *(v49 - 8);
      v82 = *(v81 + 48);
      v50 = v82(v14, 1, v49);
      sub_1AB014AC0(v14, &qword_1EB43C0C8, &unk_1AB4F3660);
      if (v50 == 1)
      {
        v51 = a1[3];
        v52 = __swift_project_boxed_opaque_existential_1Tm(a1, v51);
        if (*(*(v51 - 8) + 64))
        {
          MEMORY[0x1EEE9AC00](v52);
          v77[-2] = v21;
          requirementFailure(_:file:line:)(sub_1AB3C1A10, &v77[-4], "JetEngine/StructuralEquality.swift", 34, 2, 67);
          goto LABEL_17;
        }

LABEL_19:
        v56 = *(v84 + 8);
        v57 = v85;
        v56(v18, v85);
        v56(v21, v57);
        return 1;
      }

      v58 = v83;
      sub_1AB462154();
      if (v82(v58, 1, v49) != 1)
      {
        v59 = v83;
        sub_1AB3C1A18(v83, v8);
        v60 = v81;
        if ((*(v81 + 88))(v8, v49) == *MEMORY[0x1E69E7598])
        {
          sub_1AB0165C4(a1, &v94);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0, &qword_1AB4F3D10);
          if (swift_dynamicCast())
          {
            sub_1AB0165C4(a2, &v94);
            if (swift_dynamicCast())
            {
              v61 = objc_allocWithZone(MEMORY[0x1E695DF20]);
              v62 = sub_1AB4602D4();

              v63 = [v61 initWithDictionary_];

              v59 = v83;
              v64 = sub_1AB4602D4();

              v65 = [v63 isEqualToDictionary_];

              v66 = *(v84 + 8);
              v67 = v85;
              v66(v18, v85);
              if ((v65 & 1) == 0)
              {
                goto LABEL_45;
              }

LABEL_42:
              sub_1AB014AC0(v59, &qword_1EB43C0C8, &unk_1AB4F3660);
              v66(v21, v67);
              return 1;
            }

            v66 = *(v84 + 8);
            v76 = v85;
            v66(v18, v85);
            v67 = v76;
          }

          else
          {
            v66 = *(v84 + 8);
            v67 = v85;
            v66(v18, v85);
          }

LABEL_45:
          sub_1AB014AC0(v59, &qword_1EB43C0C8, &unk_1AB4F3660);
          v66(v21, v67);
          return 0;
        }

        (*(v60 + 8))(v8, v49);
      }

      sub_1AB462164();
      sub_1AB462164();
      sub_1AB461814();

      v82 = sub_1AB461814();

      sub_1AB461944();
      if (*(&v90 + 1))
      {
        while (1)
        {
          v91 = v88;
          v92 = v89;
          v93 = v90;
          sub_1AB461944();
          if (!*(&v90 + 1))
          {

            sub_1AB014AC0(&v91, &qword_1EB43AE98, &unk_1AB4F3690);
            goto LABEL_41;
          }

          v97 = v88;
          v98[0] = v89;
          v98[1] = v90;
          v94 = v91;
          v95 = v92;
          v96 = v93;
          v68 = v91;
          v69 = v88;
          sub_1AB014B78(&v95, &v92);
          v88 = v69;
          sub_1AB014B78(v98, &v89);
          if (*(&v68 + 1))
          {
            if (!*(&v69 + 1) || v68 != v69 && (sub_1AB461DA4() & 1) == 0)
            {
LABEL_38:

              v70 = *(v84 + 8);
              v71 = v18;
              v72 = v85;
              v70(v71, v85);
              sub_1AB014AC0(&v88, &qword_1EB43AE98, &unk_1AB4F3690);
              sub_1AB014AC0(&v91, &qword_1EB43AE98, &unk_1AB4F3690);
              sub_1AB014AC0(v83, &qword_1EB43C0C8, &unk_1AB4F3660);
              v70(v21, v72);
              return 0;
            }
          }

          else if (*(&v69 + 1))
          {
            goto LABEL_38;
          }

          if ((_isStructurallyEqual(_:to:with:at:)(&v92, &v89, v86, v87 + 1) & 1) == 0)
          {
            break;
          }

          sub_1AB014AC0(&v88, &qword_1EB43AE98, &unk_1AB4F3690);
          sub_1AB014AC0(&v91, &qword_1EB43AE98, &unk_1AB4F3690);
          sub_1AB461944();
          if (!*(&v90 + 1))
          {
            goto LABEL_37;
          }
        }

        v73 = *(v84 + 8);
        v74 = v18;
        v75 = v85;
        v73(v74, v85);

        sub_1AB014AC0(&v88, &qword_1EB43AE98, &unk_1AB4F3690);
        sub_1AB014AC0(&v91, &qword_1EB43AE98, &unk_1AB4F3690);
        sub_1AB014AC0(v83, &qword_1EB43C0C8, &unk_1AB4F3660);
        v73(v21, v75);
        return 0;
      }

LABEL_37:

LABEL_41:
      sub_1AB014AC0(&v88, &qword_1EB43C0E0, &qword_1AB4F3688);
      v66 = *(v84 + 8);
      v67 = v85;
      v66(v18, v85);
      v59 = v83;
      goto LABEL_42;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Array<A>._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v36 = sub_1AB461354();
  v32 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = sub_1AB4609F4();
  v34 = a1;
  if (v19 != sub_1AB4609F4())
  {
    return 0;
  }

  v37 = a2;
  v20 = sub_1AB460A64();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1AC59BB60](&v38, v20, WitnessTable);
  v37 = v38;
  sub_1AB4618D4();
  sub_1AB4618A4();
  v22 = sub_1AB4618C4();
  v23 = (v32 + 32);
  v32 = TupleTypeMetadata2 - 8;
  v33 = v22;
  v24 = (v8 + 32);
  v30 = a4 + 8;
  v31 = a4;
  v25 = (v8 + 8);
  while (1)
  {
    v26 = v35;
    sub_1AB4618B4();
    (*v23)(v18, v26, v36);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    (*v24)(v13, &v18[*(TupleTypeMetadata2 + 48)], a3);
    sub_1AB460AC4();
    v27 = (*(v31 + 8))(v10, a3);
    v28 = *v25;
    (*v25)(v10, a3);
    v28(v13, a3);
    if ((v27 & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1AB3C0F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a5;
  v8 = sub_1AB461354();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v14, a2, a4, v17);
  v21 = swift_dynamicCast();
  v22 = *(v15 + 56);
  if (v21)
  {
    v22(v11, 0, 1, a3);
    (*(v15 + 32))(v19, v11, a3);
    v23 = sub_1AB460504();
    (*(v15 + 8))(v19, a3);
  }

  else
  {
    v22(v11, 1, 1, a3);
    (*(v9 + 8))(v11, v8);
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_1AB3C11A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a1;
  v9 = sub_1AB461354();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v26 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v15, a2, a4, v18);
  v22 = swift_dynamicCast();
  v23 = *(v16 + 56);
  if (v22)
  {
    v23(v12, 0, 1, a3);
    (*(v16 + 32))(v20, v12, a3);
    v24 = (*(a5 + 8))(v20, a3, a5);
    (*(v16 + 8))(v20, a3);
  }

  else
  {
    v23(v12, 1, 1, a3);
    (*(v10 + 8))(v12, v9);
    v24 = 0;
  }

  return v24 & 1;
}

unint64_t sub_1AB3C144C()
{
  sub_1AB4615D4();

  sub_1AB462134();
  v0 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](62, 0xE100000000000000);
  return 0xD000000000000021;
}

uint64_t Optional<A>._isEqual(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v3 = a2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v30 - v9;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v30 - v17;
  v20 = *(v19 + 48);
  v33 = v11;
  v21 = *(v11 + 16);
  v21(&v30 - v17, v34, v3, v16);
  (v21)(&v18[v20], a1, v3);
  v34 = v6;
  v22 = *(v6 + 48);
  if (v22(v18, 1, v5) == 1)
  {
    v23 = 1;
    if (v22(&v18[v20], 1, v5) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    (v21)(v35, v18, v3);
    if (v22(&v18[v20], 1, v5) != 1)
    {
      v24 = v34;
      v25 = *(v34 + 32);
      v26 = v30;
      v25(v30, v35, v5);
      v27 = v31;
      v25(v31, &v18[v20], v5);
      v23 = (*(v32 + 8))(v27, v5);
      v28 = *(v24 + 8);
      v28(v27, v5);
      v28(v26, v5);
LABEL_8:
      v15 = v33;
      goto LABEL_9;
    }

    (*(v34 + 8))(v35, v5);
  }

  v23 = 0;
  v3 = TupleTypeMetadata2;
LABEL_9:
  (*(v15 + 8))(v18, v3);
  return v23 & 1;
}

uint64_t _EquatableForJetOnly._equatable.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t sub_1AB3C1A18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C0C8, &unk_1AB4F3660);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB3C1AB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1AB3C4A80(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1AB3C1B5C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AB3C4B34(v3);
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
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1AB3C1C30@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v7);
    v7 = result;
  }

  v9 = *(v7 + 16);
  if (v9 <= a1)
  {
    __break(1u);
  }

  else
  {
    v10 = v9 - 1;
    v11 = v7 + 8 * a1;
    *a3 = *(v11 + 32);
    result = memmove((v11 + 32), (v11 + 40), 8 * (v9 - 1 - a1));
    *(v7 + 16) = v10;
    *v3 = v7;
  }

  return result;
}

uint64_t sub_1AB3C1CC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AB3C4BAC(v5);
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
    v9 = v5 + 40 * a1;
    v10 = *(v9 + 48);
    *a2 = *(v9 + 32);
    *(a2 + 16) = v10;
    *(a2 + 32) = *(v9 + 64);
    result = memmove((v9 + 32), (v9 + 72), 40 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

id sub_1AB3C1D64(void *a1)
{
  v2 = a1;
  result = [a1 toString];
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = sub_1AB460544();
  v7 = v6;

  v8 = OBJC_IVAR____TtC9JetEngine14JSNotifyObject_observersByName;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {

    return swift_endAccess();
  }

  v10 = sub_1AB014DB4(v5, v7);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    return swift_endAccess();
  }

  v13 = *(*(v9 + 56) + 8 * v10);
  result = swift_endAccess();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + 32;

    v46 = v2;
    while (1)
    {
      sub_1AB1A9DF4(v15, v54);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AB4D4720;
      *(v16 + 56) = sub_1AB054C38();
      *(v16 + 32) = v2;
      __swift_project_boxed_opaque_existential_1Tm(v54, v54[3]);
      v17 = v2;
      v18.super.isa = JSReference.unwrap()().super.isa;
      if (v19.super.isa)
      {
        break;
      }

      isa = v18.super.isa;
      result = [(objc_class *)v18.super.isa context];
      if (!result)
      {
        __break(1u);
        goto LABEL_29;
      }

      v37 = result;
      v38 = sub_1AB460934();
      v39 = [(objc_class *)isa callWithArguments:v38];

      if (!v39)
      {
        sub_1AB0C3EF0();
        v20 = swift_allocError();
        LOBYTE(v50) = 1;
        v47[0] = 1;
        *v45 = 0xD000000000000017;
        *(v45 + 8) = 0x80000001AB5058E0;
        *(v45 + 16) = 0;
        *(v45 + 24) = 1;
        *(v45 + 32) = 0;
        *(v45 + 40) = 1;
        *(v45 + 48) = 0u;
        *(v45 + 64) = 0u;
        *(v45 + 80) = 0u;
        *(v45 + 96) = 0;
        swift_willThrow();

        goto LABEL_10;
      }

      v40 = [v37 exception];
      if (v40)
      {
        v41 = v40;
        [v37 setException_];
        sub_1AB0C3EF0();
        v20 = swift_allocError();
        v43 = v42;
        v44 = v41;
        JSError.init(_:)(v44, v43);
        swift_willThrow();

        goto LABEL_10;
      }

LABEL_7:
      sub_1AB087F9C(v54);
      v15 += 40;
      if (!--v14)
      {
      }
    }

    v20 = v19.super.isa;
LABEL_10:
    if (qword_1EB433A58 != -1)
    {
      swift_once();
    }

    v21 = qword_1EB46C108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1AB4D47F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AB4D4720;
    v53 = MEMORY[0x1E69E6158];
    v50 = 0xD000000000000028;
    v51 = 0x80000001AB50D060;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1AB0169C4(&v50, v23 + 32);
    *(v23 + 64) = 0;
    *(v22 + 32) = v23;
    swift_getErrorValue();
    v24 = v48;
    v25 = v49;
    v53 = v49;
    v26 = __swift_allocate_boxed_opaque_existential_0(&v50);
    (*(*(v25 - 8) + 16))(v26, v24, v25);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1AB4D4720;
    sub_1AB01522C(&v50, v47);
    *(v27 + 48) = 0u;
    *(v27 + 32) = 0u;
    sub_1AB0169C4(v47, v27 + 32);
    *(v27 + 64) = 0;
    *(v22 + 40) = v27;
    sub_1AB014AC0(&v50, &unk_1EB437E60, &qword_1AB4D4730);
    v28 = sub_1AB461074();
    if (os_log_type_enabled(v21, v28))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v29 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v29[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v29 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v31 = swift_allocObject();
      *(v31 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      v50 = v22;
      v51 = sub_1AB01A8D8;
      v52 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v32 = sub_1AB460484();
      v34 = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1AB4D4720;
      *(v35 + 56) = MEMORY[0x1E69E6158];
      *(v35 + 64) = sub_1AB016854();
      *(v35 + 32) = v32;
      *(v35 + 40) = v34;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v21, v28, v35);

      v2 = v46;
    }

    else
    {
    }

    goto LABEL_7;
  }

  return result;
}

void sub_1AB3C23E8(void *a1, void *a2)
{
  v5 = [objc_opt_self() currentContext];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1AB3C2588(v5, a2, v2, a1);
  }

  else
  {
    sub_1AB461884();
    __break(1u);
  }
}

id sub_1AB3C2588(uint64_t a1, void *a2, void *a3, void *a4)
{
  v43 = type metadata accessor for JSNotifyObject();
  v42[0] = a3;
  v8 = type metadata accessor for JSConditionalReference();
  v9 = swift_allocObject();
  sub_1AB0165C4(v42, &v41);
  sub_1AB054C38();
  v10 = a3;
  v11 = a2;
  if (swift_dynamicCast())
  {

    sub_1AB40EE18("JetEngine/JSConditionalReference.swift", 0x26uLL, 2, 0x1AuLL);
  }

  v12 = [objc_opt_self() managedValueWithValue:v11 andOwner:v10];
  if (!v12)
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v9 + 16) = v12;
  __swift_destroy_boxed_opaque_existential_1Tm(v42);

  v43 = v8;
  v44 = &protocol witness table for JSConditionalReference;
  v42[0] = v9;
  JSCallable.init(_:)(v42, &v45);
  if (!*(&v46 + 1))
  {
    sub_1AB014AC0(&v45, &qword_1EB438A30, &unk_1AB4DEFC0);
    sub_1AB0C3EF0();
    swift_allocError();
    v31 = v30;
    JSError.init(badValue:expected:)(v11, 0x6E6F6974636E7546, 0xE800000000000000, v30);
    swift_willThrow();
    return v31;
  }

  v13 = a1;
  v48[0] = v45;
  v48[1] = v46;
  v49 = v47;
  v14 = [a4 toString];
  if (!v14)
  {
    goto LABEL_24;
  }

  v15 = v14;
  v16 = sub_1AB460544();
  v18 = v17;

  sub_1AB1A9DF4(v48, &v45);
  v19 = OBJC_IVAR____TtC9JetEngine14JSNotifyObject_observersByName;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *&v10[v19];
  v21 = v41;
  *&v10[v19] = 0x8000000000000000;
  v23 = sub_1AB014DB4(v16, v18);
  v24 = *(v21 + 2);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_22;
  }

  v27 = v22;
  if (*(v21 + 3) >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1AB1D9EDC();
    }

LABEL_13:
    v32 = v41;
    *&v10[v19] = v41;
    if ((v27 & 1) == 0)
    {
      sub_1AB1D6E78(v23, v16, v18, MEMORY[0x1E69E7CC0], v32);
    }

    v19 = *(v32 + 7);
    v21 = *(v19 + 8 * v23);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 8 * v23) = v21;
    if (v33)
    {
LABEL_16:
      v35 = *(v21 + 2);
      v34 = *(v21 + 3);
      if (v35 >= v34 >> 1)
      {
        v21 = sub_1AB2B19F0((v34 > 1), v35 + 1, 1, v21);
        *(v19 + 8 * v23) = v21;
      }

      *(v21 + 2) = v35 + 1;
      v36 = &v21[40 * v35];
      v37 = v45;
      v38 = v46;
      *(v36 + 8) = v47;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      swift_endAccess();

      v39 = [objc_opt_self() valueWithUndefinedInContext_];
      if (v39)
      {
        v31 = v39;
        sub_1AB087F9C(v48);
        return v31;
      }

      goto LABEL_25;
    }

LABEL_22:
    v21 = sub_1AB2B19F0(0, *(v21 + 2) + 1, 1, v21);
    *(v19 + 8 * v23) = v21;
    goto LABEL_16;
  }

  sub_1AB1D4BDC(v26, isUniquelyReferenced_nonNull_native);
  v28 = sub_1AB014DB4(v16, v18);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    goto LABEL_13;
  }

LABEL_26:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

id sub_1AB3C29F0(void *a1, uint64_t a2)
{
  v3 = v2;
  result = [a1 toString];
  if (!result)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = sub_1AB460544();
  v10 = v9;

  v11 = OBJC_IVAR____TtC9JetEngine14JSNotifyObject_observersByName;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (!*(v12 + 16))
  {

    return swift_endAccess();
  }

  v13 = sub_1AB014DB4(v8, v10);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    return swift_endAccess();
  }

  v36 = *(*(v12 + 56) + 8 * v13);
  v16 = v36;
  result = swift_endAccess();
  v17 = *(v36 + 16);
  if (v17)
  {
    v31 = a1;
    v18 = v36 + 32;
    result = swift_bridgeObjectRetain_n();
    v19 = 0;
    while (1)
    {
      if (v19 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_18;
      }

      sub_1AB1A9DF4(v18, v33);
      v20 = v34;
      v21 = v35;
      __swift_project_boxed_opaque_existential_1Tm(v33, v34);
      v22 = (*(v21 + 8))(v20, v21);
      if (v22)
      {
        v23 = v22;
        v24 = [v22 isEqualToObject_];

        result = sub_1AB087F9C(v33);
        if (v24)
        {

          sub_1AB3C1CC4(v19, v33);
          sub_1AB087F9C(v33);
          result = [v31 toString];
          if (!result)
          {
            goto LABEL_19;
          }

          v25 = result;
          v26 = sub_1AB460544();
          v28 = v27;

          v29 = v36;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = *(v3 + v11);
          *(v3 + v11) = 0x8000000000000000;
          sub_1AB1D6968(v29, v26, v28, isUniquelyReferenced_nonNull_native);

          *(v3 + v11) = v32;
          return swift_endAccess();
        }
      }

      else
      {
        result = sub_1AB087F9C(v33);
      }

      ++v19;
      v18 += 40;
      if (v17 == v19)
      {
        return swift_bridgeObjectRelease_n();
      }
    }
  }

  return result;
}

uint64_t DeferredLazy.__allocating_init()()
{
  v0 = swift_allocObject();
  DeferredLazy.init()();
  return v0;
}

uint64_t DeferredLazy.value(or:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return DeferredLazy.value(or:)(a1, a2, a3);
}

{
  return sub_1AB3C2FE4((v3[2] + *(*v3[2] + *MEMORY[0x1E69E6B68] + 16)), v3[2] + ((*(*v3[2] + 48) + 3) & 0x1FFFFFFFCLL), a1, a2, *(*v3 + 80), &v5, a3);
}

uint64_t sub_1AB3C2EB0@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = sub_1AB461354();
  (*(*(v6 - 8) + 16))(a4, a1, v6);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1AB3C2FE4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a6;
  v26 = a4;
  v27 = a3;
  v28 = a7;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB461354();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  os_unfair_recursive_lock_lock_with_options();
  v18 = *(v15 + 16);
  v24 = a1;
  v18(v17, a1, v14);
  if ((*(v11 + 48))(v17, 1, a5) == 1)
  {
    v23[1] = a2;
    v19 = *(v15 + 8);
    v20 = v19(v17, v14);
    v27(v20);
    if (v7)
    {
      result = os_unfair_recursive_lock_unlock();
      *v25 = v7;
      return result;
    }

    v22 = v24;
    v19(v24, v14);
    (*(v11 + 16))(v22, v13, a5);
    (*(v11 + 56))(v22, 0, 1, a5);
  }

  else
  {
    v13 = v17;
  }

  (*(v11 + 32))(v28, v13, a5);
  return os_unfair_recursive_lock_unlock();
}

uint64_t sub_1AB3C3260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AB461354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  os_unfair_recursive_lock_lock_with_options();
  (*(*(a3 - 8) + 56))(v8, 1, 1, a3);
  (*(v6 + 40))(a1, v8, v5);
  return os_unfair_recursive_lock_unlock();
}

uint64_t DeferredLazy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AB3C3410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439B88, &qword_1AB4E4D30);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  (*(v7 + 16))(v9, a1, a2);
  v11 = sub_1AB461D54();
  if (v11)
  {
    v12 = v11;
    (*(v7 + 8))(v9, a2);
  }

  else
  {
    v12 = swift_allocError();
    (*(v7 + 32))(v13, v9, a2);
  }

  *(v10 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43C0F8, qword_1AB4F3908);
  *(v10 + 64) = sub_1AB01561C(&qword_1EB433448, qword_1EB43C0F8, qword_1AB4F3908, MEMORY[0x1E69E6BB8]);
  *(v10 + 32) = v12;
  result = (*(v7 + 8))(a1, a2);
  *a4 = v10;
  return result;
}

void *_ErrorTraverser.Iterator.next()()
{
  v4 = v0;
  v5 = *v0;
  v6 = *(*v0 + 16);
  if (!v6)
  {
    return 0;
  }

  while (1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1AB3C47E8(v5);
      *v4 = v5;
    }

    v8 = v5[2];
    if (v6 > v8)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v2 = v5 + 4;
    v9 = &v5[5 * v6 + 4];
    v1 = *(v9 - 16);
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v9 - 40, v1);
    sub_1AB4613F4();
    *v4 = v5;
    if (v14)
    {
      break;
    }

    v8 = v5[2];
    if (!v8)
    {
      goto LABEL_15;
    }

    *v4 = v5;
    v10 = v8 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v8 - 5]);
    v5[2] = v10;
    *v4 = v5;
    v6 = v5[2];
    if (!v6)
    {
      return 0;
    }
  }

  v2 = v14;
  v12 = sub_1AB45F584();
  v13 = [v12 underlyingErrors];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v6 = sub_1AB460954();

  if (*(v6 + 16))
  {
    *v4 = v5;
    v3 = v5[2];
    v8 = v5[3];
    v1 = v3 + 1;
    if (v3 < v8 >> 1)
    {
LABEL_11:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C0F0, &qword_1AB4F37C0);
      v16 = sub_1AB01561C(&qword_1EB432CE8, &qword_1EB43C0F0, &qword_1AB4F37C0, MEMORY[0x1E69E6CF8]);
      v14 = v6;
      v5[2] = v1;
      sub_1AB0149B0(&v14, &v5[5 * v3 + 4]);
      *v4 = v5;
      return v2;
    }

LABEL_16:
    v5 = sub_1AB2AFAC4((v8 > 1), v1, 1, v5);
    *v4 = v5;
    goto LABEL_11;
  }

  return v2;
}

void *sub_1AB3C37F0@<X0>(void *a1@<X8>)
{
  result = _ErrorTraverser.Iterator.next()();
  *a1 = result;
  return result;
}

uint64_t sub_1AB3C38D4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _OWORD *, uint64_t, uint64_t))
{
  v9[1] = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(a3, v9, a2, WitnessTable) & 1;
}

uint64_t _ErrorTraverser.first(_:)(_OWORD *a1, uint64_t a2)
{
  swift_getWitnessTable();
  sub_1AB460864();
  return v3;
}

uint64_t _ErrorTraverser.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return sub_1AB3C3410(v6, v3, a2);
}

uint64_t sub_1AB3C3A9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  _ErrorTraverser.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1AB3C3AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB37669C(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

void *sub_1AB3C3B6C()
{
  v0 = sub_1AB45FBC4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439B80, qword_1AB4E4CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1AB4D4190;
  sub_1AB45FBA4();
  sub_1AB45FBE4();
  sub_1AB3C4C2C(&qword_1EB4339D0, MEMORY[0x1E6969C20], MEMORY[0x1E6969C10]);
  v5 = sub_1AB45F2D4();
  v7 = v6;
  v21[0] = sub_1AB3C4C2C(&qword_1EB4339D8, MEMORY[0x1E6969BF8], MEMORY[0x1E6969C08]);
  sub_1AB4608B4();
  v22 = *(v1 + 8);
  v22(v3, v0);
  v21[1] = v1 + 8;
  v8 = v23;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = v8;
  *(v4 + 32) = sub_1AB3C4C74;
  *(v4 + 40) = v9;
  sub_1AB45FB74();
  v10 = sub_1AB45F2D4();
  v12 = v11;
  sub_1AB4608B4();
  v13 = v22;
  v22(v3, v0);
  v14 = v23;
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = v12;
  v15[4] = v14;
  *(v4 + 48) = sub_1AB3C4C74;
  *(v4 + 56) = v15;
  sub_1AB45FB94();
  v16 = sub_1AB45F2D4();
  v18 = v17;
  sub_1AB4608B4();
  v13(v3, v0);
  v19 = v23;
  result = swift_allocObject();
  result[2] = v16;
  result[3] = v18;
  result[4] = v19;
  *(v4 + 64) = sub_1AB3C4C74;
  *(v4 + 72) = result;
  qword_1EB433880 = v4;
  return result;
}

uint64_t (*_ErrorPredicate.init<A, B>(domain:code:)@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t (**a6)(uint64_t a1)@<X8>))(uint64_t a1)
{
  v9 = sub_1AB45F2D4();
  v11 = v10;
  sub_1AB4608B4();
  (*(*(a3 - 8) + 8))(a1, a3);
  result = swift_allocObject();
  *(result + 2) = v9;
  *(result + 3) = v11;
  *(result + 4) = v13;
  *a6 = sub_1AB3C4834;
  a6[1] = result;
  return result;
}

void *sub_1AB3C3F44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439B80, qword_1AB4E4CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AB4D4190;
  v1 = sub_1AB460544();
  v3 = v2;
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = 206;
  *(v0 + 32) = sub_1AB3C4C74;
  *(v0 + 40) = v4;
  v5 = sub_1AB460544();
  v7 = v6;
  result = swift_allocObject();
  result[2] = v5;
  result[3] = v7;
  result[4] = 1;
  *(v0 + 48) = sub_1AB3C4C74;
  *(v0 + 56) = result;
  *(v0 + 64) = sub_1AB3C4524;
  *(v0 + 72) = 0;
  qword_1EB433868 = v0;
  return result;
}

uint64_t (*_ErrorPredicate.init<A>(domain:code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a6)(uint64_t a1)@<X8>))(uint64_t a1)
{
  sub_1AB4608B4();
  (*(*(a4 - 8) + 8))(a3, a4);
  result = swift_allocObject();
  *(result + 2) = a1;
  *(result + 3) = a2;
  *(result + 4) = v12;
  *a6 = sub_1AB3C4C74;
  a6[1] = result;
  return result;
}

uint64_t (*_ErrorPredicate.init<A>(type:test:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t (**a5)(void *a1)@<X8>))(void *a1)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = sub_1AB3C4840;
  a5[1] = result;
  return result;
}

uint64_t sub_1AB3C4174()
{
  if (qword_1EB433878 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB433880;
  v1 = qword_1EB433860;

  if (v1 != -1)
  {
    swift_once();
  }

  sub_1AB165000(v2);
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_1EB433890 = sub_1AB3C4C24;
  *algn_1EB433898 = result;
  return result;
}

double static _ErrorPredicate.noConnection.getter@<D0>(void *a1@<X8>)
{
  if (qword_1EB433888 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EB433898;
  *a1 = qword_1EB433890;
  a1[1] = v2;

  return result;
}

uint64_t (*_ErrorPredicate.init(domain:code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 2) = a1;
  *(result + 3) = a2;
  *(result + 4) = a3;
  *a4 = sub_1AB3C4C74;
  a4[1] = result;
  return result;
}

uint64_t sub_1AB3C4350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1AB45F584();
  v5 = sub_1AB460514();
  IsEqual = AMSErrorIsEqual();

  return IsEqual;
}

uint64_t sub_1AB3C43D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *(a2 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (*(v11 + 32))(v13 + v12, a1, a2);
  *a6 = a5;
  a6[1] = v13;
  return result;
}

BOOL sub_1AB3C44A8(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 40;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 16;
    v6 = *(v3 - 8);

    LOBYTE(v6) = v6(a1);

    v3 = v5;
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

uint64_t sub_1AB3C4524(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  if (swift_dynamicCast() && v5)
  {

    v2 = v4 ^ 1;
  }

  else
  {

    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1AB3C45B4(void *a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = a1;
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, a4);
    (*(v11 + 32))(v14, v10, a4);
    v18 = a2(v14);
    (*(v11 + 8))(v14, a4);
  }

  else
  {
    v17(v10, 1, 1, a4);
    (*(v8 + 8))(v10, v7);
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t objectdestroy_9Tm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB3C49E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB3C4A80(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1AB4618F4();
  }

  return sub_1AB461664();
}

uint64_t sub_1AB3C4C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AB3C4CB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1AB3D5CE4(a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_1AB3C4CF4@<X0>(unint64_t *a1@<X8>, uint64_t a2@<X0>, id *a3@<X1>)
{
  result = sub_1AB3DAA28(a2, a3);
  if (!v3)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

void ExpressibleByJSON<>.init(deserializing:using:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AB4616B4();
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  JSONObject.decode<A>(_:using:)(a3, a2, a3, a5);
  if (v5)
  {
    v24 = v5;
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
    if (swift_dynamicCast())
    {

      v17 = v23;
      (*(v23 + 32))(v15, v12, v10);
      sub_1AB163664();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439F50, &qword_1AB4D67A0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1AB4D4720;
      *(v20 + 32) = swift_allocError();
      (*(v17 + 16))(v21, v15, v10);
      *v19 = a3;
      v19[1] = v20;
      v19[2] &= 0xFFFFFFFFFFFFFF8uLL;
      swift_willThrow();

      sub_1AB066D84(a1);
      (*(v17 + 8))(v15, v10);
    }

    else
    {

      sub_1AB066D84(a1);
    }
  }

  else
  {

    sub_1AB066D84(a1);
  }
}

unint64_t sub_1AB3C4FA4@<X0>(uint64_t a1@<X0>, void **a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1AB3D8128(a1, *a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1AB3C503C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1AB3D7F00(a1, *a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1AB3C5188(uint64_t a1, uint64_t *a2)
{
  v6 = sub_1AB45F9B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (sub_1AB0CE6D8(0xD000000000000026, 0x80000001AB500E60, *a2))
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    v31 = v10;
    _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
    (*(v12 + 64))(&v28, &v31, v9, ObjectType, v12);
    (*(v7 + 8))(v9, v6);
    v14 = v28;
    v26 = v29;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8, &qword_1AB4EAC30);
    v30 = v25;
    v28 = v14;
    v16 = *(a1 + 24);
    v15 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v16);
    v17 = *(v15 + 16);
    *&v27 = v14;

    v17(&v28, 0x6973736572706D69, 0xEB00000000736E6FLL, v16, v15);
    if (!v3)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v28);
      v30 = v25;
      v28 = v26;
      v22 = *(a1 + 24);
      v23 = *(a1 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a1, v22);
      v24 = *(v23 + 16);

      v24(&v28, 0x4363696D616E7964, 0xEE007365676E6168, v22, v23);
    }

    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  }

  else
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v19 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v20 = swift_allocObject();
    v27 = xmmword_1AB4D4720;
    *(v20 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520, &qword_1AB4D47E0);
    v21 = swift_allocObject();
    *(v21 + 16) = v27;
    v30 = MEMORY[0x1E69E6158];
    v28 = 0xD000000000000037;
    v29 = 0x80000001AB50D120;
    *(v21 + 48) = 0u;
    *(v21 + 32) = 0u;
    sub_1AB0169C4(&v28, v21 + 32);
    *(v21 + 64) = 0;
    *(v20 + 32) = v21;
    v28 = v19;
    v31 = 0;
    OSLogger.log(contentsOf:withLevel:)(v20, &v31);
  }
}

uint64_t sub_1AB3C5558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1AB460C34();
  v6 = sub_1AB461354();
  (*(*(v6 - 8) + 8))(a2, v6);
  v9 = *(v5 - 8);
  (*(v9 + 16))(a2, a1, v5);
  v7 = *(v9 + 56);

  return v7(a2, 0, 1, v5);
}

uint64_t sub_1AB3C5650(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v13 - v5;
  v7 = sub_1AB460BF4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a1, v3, v9);
  sub_1AB460C34();
  sub_1AB460C24();
  return (*(v8 + 8))(v11, v7);
}

uint64_t _AsyncChannel.Receiver.next()(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB3C583C, 0, 0);
}

uint64_t sub_1AB3C583C()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = sub_1AB460C64();
  *v1 = v0;
  v1[1] = sub_1AB3C591C;
  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6D9D0](v3, v2);
}

uint64_t sub_1AB3C591C()
{
  v3 = *v0;

  swift_endAccess();
  v1 = *(v3 + 8);

  return v1();
}

uint64_t _AsyncChannel.Receiver.deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_1AB460C34();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 96);
  v4 = sub_1AB460C64();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1AB3C5B10(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB044F60;

  return _AsyncChannel.Receiver.next()(a1);
}

uint64_t sub_1AB3C5BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB3C5C78;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v12);
}

uint64_t sub_1AB3C5C78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AB3C5D8C@<X0>(uint64_t a1@<X0>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_1AB460C14();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - v10;
  *(&v13 - v10) = a1;
  (*(v8 + 104))(&v13 - v10, *a3, v7, v9);
  return (*(v8 + 32))(a4, v11, v7);
}

uint64_t static _AsyncChannel.BufferingPolicy.unbounded.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1AB460C14();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 104))(&v9 - v6, *MEMORY[0x1E69E8650], v3, v5);
  return (*(v4 + 32))(a2, v7, v3);
}

char *_AsyncChannel.__allocating_init(bufferingPolicy:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = sub_1AB3C6BB4(a1);
  v7 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, *(v2 + 80), v5, v6);
  (*(*(v7 - 8) + 8))(a1, v7);
  return v4;
}

char *_AsyncChannel.init(bufferingPolicy:)(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1AB3C6BB4(a1);
  v7 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, *(v3 + 80), v5, v6);
  (*(*(v7 - 8) + 8))(a1, v7);
  return v4;
}

void _AsyncChannel.yield(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[2];
  os_unfair_lock_lock(v5 + 4);
  v16 = *(v4 + 80);
  v6 = *(*v2 + 112);
  swift_beginAccess();
  v9 = type metadata accessor for _AsyncChannel.WeakReceiver(255, v16, v7, v8);
  sub_1AB460A64();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1AB460FC4();
  swift_endAccess();
  v18[0] = *(v2 + v6);
  swift_getWitnessTable();
  if (sub_1AB460F44())
  {
    swift_beginAccess();

    sub_1AB3C5650(a1);

    os_unfair_lock_unlock(v5 + 4);
    return;
  }

  os_unfair_lock_unlock(v5 + 4);
  v10 = *(v2 + v6);

  if (!sub_1AB4609F4())
  {
    goto LABEL_13;
  }

  v11 = 0;
  v12 = v10 + 32;
  while (1)
  {
    v13 = sub_1AB4609D4();
    sub_1AB460974();
    if ((v13 & 1) == 0)
    {
      break;
    }

    v14 = *(v9 - 8);
    (*(v14 + 16))(v18, v12, v9);
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_12;
    }

LABEL_8:
    (*(v14 + 32))(v17, v18, v9);
    if (swift_weakLoadStrong())
    {
      sub_1AB3C5650(a1);
    }

    (*(v14 + 8))(v17, v9);
    v12 += 8;
    ++v11;
    if (v15 == sub_1AB4609F4())
    {
      goto LABEL_13;
    }
  }

  v17[0] = sub_1AB461644();
  v14 = *(v9 - 8);
  (*(v14 + 16))(v18, v17, v9);
  swift_unknownObjectRelease();
  v15 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
LABEL_13:
}

uint64_t _AsyncChannel.makeAsyncIterator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  type metadata accessor for _AsyncChannel.Receiver(0, *(*v4 + 80), a3, a4);
  sub_1AB01A1F0(sub_1AB3C6D18, v4, v5);
  return v7;
}

uint64_t sub_1AB3C6460@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  type metadata accessor for _AsyncChannel.Receiver(0, v7, a3, a4);
  v8 = *(v6 + 96);
  swift_allocObject();
  *a2 = sub_1AB3C672C(a1 + v8);
  swift_beginAccess();
  sub_1AB461FA4();
  swift_endAccess();

  sub_1AB306510();
  swift_beginAccess();
  type metadata accessor for _AsyncChannel.WeakReceiver(255, v7, v9, v10);
  sub_1AB460A64();
  sub_1AB460A14();
  return swift_endAccess();
}

uint64_t *_AsyncChannel.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 96);
  v5 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 8))(v0 + v2, v5);

  return v0;
}

uint64_t sub_1AB3C6690(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1AB3C66EC(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v6 = _AsyncChannel.makeAsyncIterator()(a2, a3, a4, a5);

  *a1 = v6;
}

uint64_t sub_1AB3C672C(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v3 = *(*v1 + 80);
  v4 = sub_1AB460C64();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v27 - v5;
  v6 = sub_1AB460C34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v27 - v8;
  v29 = sub_1AB460C14();
  v9 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v11 = &v27 - v10;
  v32 = sub_1AB460C74();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v13 = &v27 - v12;
  v14 = sub_1AB461354();
  v28 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  (*(v7 + 56))(&v27 - v19, 1, 1, v6, v18);
  (*(v9 + 16))(v11, v31, v29);
  v37 = v3;
  v38 = v20;
  nullsub_1();
  v21 = v28;
  sub_1AB460C84();
  (*(v21 + 16))(v16, v20, v14);
  if ((*(v7 + 48))(v16, 1, v6) == 1)
  {
    result = (*(v21 + 8))(v16, v14);
    __break(1u);
  }

  else
  {
    v22 = *(v7 + 32);
    v23 = v33;
    v22(v33, v16, v6);
    v22((v2 + *(*v2 + 88)), v23, v6);
    v24 = v34;
    v25 = v32;
    sub_1AB460C44();
    (*(v30 + 8))(v13, v25);
    (*(v35 + 32))(v2 + *(*v2 + 96), v24, v36);
    (*(v21 + 8))(v20, v14);
    return v2;
  }

  return result;
}

char *sub_1AB3C6BB4(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 2) = v5;
  v6 = *(v4 + 96);
  v7 = *(v4 + 80);
  v10 = type metadata accessor for _AsyncChannel.BufferingPolicy(0, v7, v8, v9);
  (*(*(v10 - 8) + 16))(&v2[v6], a1, v10);
  type metadata accessor for _AsyncChannel.Receiver(0, v7, v11, v12);
  swift_allocObject();
  *&v2[*(*v2 + 104)] = sub_1AB3C672C(a1);
  type metadata accessor for _AsyncChannel.WeakReceiver(0, v7, v13, v14);
  *&v2[*(*v2 + 112)] = sub_1AB4609A4();
  return v2;
}

uint64_t sub_1AB3C6D68(uint64_t a1)
{
  result = sub_1AB460C14();
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

uint64_t sub_1AB3C6E60(uint64_t a1)
{
  result = sub_1AB460C34();
  if (v2 <= 0x3F)
  {
    result = sub_1AB460C64();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1AB3C6F50(uint64_t a1)
{
  result = sub_1AB460C14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1AB3C6FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t AppleServicesFetcherInstrumented.init(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 session];
  a2[3] = &type metadata for URLSessionPreconnecter;
  a2[4] = &protocol witness table for URLSessionPreconnecter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C300, &qword_1AB4DF2F0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *a2 = v4;
  a2[1] = result;
  a2[5] = a1;
  return result;
}

uint64_t sub_1AB3C70B4()
{
  v1 = *(v0 + 240);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AppleServicesFetcherInstrumented.preconnect(to:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t static ActionDispatcher.Builder.buildBlock(_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[3] = a1;
  ActionDispatcher.init()(a2, a3, a4, v8);
  type metadata accessor for ActionDispatcher(255, a2, v5, v6);
  sub_1AB460A64();
  swift_getWitnessTable();
  return sub_1AB460874();
}

void static ActionDispatcher.Builder.buildExpression<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  ActionDispatcher.init()(a2, a3, a4, v14);
  v12 = type metadata accessor for ActionDispatcher(0, a2, v10, v11);
  ActionDispatcher.adding<A>(_:)(a1, v12, a3, a4, a5);
  v13 = v14[2];
}

double static ActionDispatcher.Builder.buildOptional(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if (*a1)
  {
    *a5 = v5;
    a5[1] = v6;
    a5[2] = v7;
  }

  else
  {
    ActionDispatcher.init()(a2, a3, a4, a5);
  }

  return sub_1AB1E5EFC(v5, v6, v7);
}

double sub_1AB3C73DC@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  v4 = v3;

  return result;
}

uint64_t sub_1AB3C746C(uint64_t a1)
{
  __linecapp[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1AB45F204();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C3A0, &unk_1AB4F3C40);
  sub_1AB45F6A4();
  v6 = v39;
  if (v39)
  {
    __linecapp[0] = 0;
    __linep[0] = 0;
    if (getline(__linep, __linecapp, v39) != -1)
    {
      do
      {
        v8 = __linep[0];
        if (!__linep[0])
        {
          break;
        }

        v9 = __linecapp[0];
        if (("ceProvider.swift" & 0x1000000000000000) != 0)
        {
          v11 = sub_1AB460734();
          if (v11 >= v9)
          {
            v12 = v9;
          }

          else
          {
            v12 = v11;
          }

          if (sub_1AB3C7CF0(0xD000000000000015, 0x80000001AB50D1E0, v8, v12))
          {
            sub_1AB460734();
LABEL_38:
            *&v39 = sub_1AB460704();
            *(&v39 + 1) = v34;
            sub_1AB45F1F4();
            sub_1AB0273A8();
            v35 = sub_1AB461424();
            (*(v3 + 8))(v5, v2);

            fclose(v6);
            if (__linep[0])
            {
              MEMORY[0x1AC59F020](__linep[0], -1, -1);
            }

            return v35;
          }
        }

        else if (("ceProvider.swift" & 0x2000000000000000) != 0)
        {
          if ((("ceProvider.swift" >> 56) & 0xF) >= __linecapp[0])
          {
            v7 = __linecapp[0];
          }

          else
          {
            v7 = ("ceProvider.swift" >> 56) & 0xF;
          }

          if (sub_1AB3C7CF0(0xD000000000000015, 0x80000001AB50D1E0, __linep[0], v7))
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (__linecapp[0] >= 21)
          {
            v10 = 21;
          }

          else
          {
            v10 = __linecapp[0];
          }

          if (sub_1AB3C7CF0(0xD000000000000015, 0x80000001AB50D1E0, __linep[0], v10))
          {
            goto LABEL_38;
          }
        }
      }

      while (getline(__linep, __linecapp, v6) != -1);
    }

    fclose(v6);
    if (__linep[0])
    {
      MEMORY[0x1AC59F020](__linep[0], -1, -1);
    }
  }

  else
  {
    if (qword_1ED4D1D90 != -1)
    {
      swift_once();
    }

    v13 = qword_1ED4D1D98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v14 = swift_allocObject();
    v36 = xmmword_1AB4D4720;
    *(v14 + 16) = xmmword_1AB4D4720;
    v37 = sub_1AB0168A8(0, 29, 0, MEMORY[0x1E69E7CC0]);
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v15._object = 0x80000001AB50D200;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    v16 = sub_1AB45F764();
    __linecapp[3] = v16;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(__linecapp);
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, a1, v16);
    sub_1AB01522C(__linecapp, __linep);
    v39 = 0u;
    v40 = 0u;
    sub_1AB0169C4(__linep, &v39);
    v41 = 0;
    v18 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1AB0168A8(0, *(v18 + 2) + 1, 1, v18);
    }

    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1AB0168A8((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[40 * v20];
    v22 = v39;
    v23 = v40;
    v21[64] = v41;
    *(v21 + 2) = v22;
    *(v21 + 3) = v23;
    v37 = v18;
    sub_1AB0167A8(__linecapp);
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v24);
    *(v14 + 32) = v37;
    v25 = sub_1AB461094();
    if (os_log_type_enabled(v13, v25))
    {
      if (qword_1EB4359F8 != -1)
      {
        swift_once();
      }

      v26 = off_1EB435A00;
      os_unfair_lock_lock(off_1EB435A00 + 5);
      os_unfair_lock_opaque_low = LOBYTE(v26[4]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v26 + 5);
      if (os_unfair_lock_opaque_low == 2)
      {
        LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
      }

      v28 = swift_allocObject();
      *(v28 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
      *&v39 = v14;
      *(&v39 + 1) = sub_1AB01A8D8;
      *&v40 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
      sub_1AB016A34();
      v29 = sub_1AB460484();
      v31 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
      v32 = swift_allocObject();
      *(v32 + 16) = v36;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1AB016854();
      *(v32 + 32) = v29;
      *(v32 + 40) = v31;
      sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v13, v25, v32);
    }
  }

  return 0;
}

uint64_t sub_1AB3C7A90(uint64_t a1, uint64_t a2)
{
  v27 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 64);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v4 = ~(-1 << v8);
  }

  v9 = v4 & *(a1 + 64);
  v10 = (v3 + 63) >> 6;
  v11 = (v8 + 63) >> 6;

  v28 = a1;

  v13 = 0;
  v14 = 0;
  while (1)
  {
    if (!v6)
    {
      if (v10 <= v13 + 1)
      {
        v16 = v13 + 1;
      }

      else
      {
        v16 = v10;
      }

      v17 = v16 - 1;
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_40;
        }

        if (v15 >= v10)
        {
          break;
        }

        v6 = *(v27 + 8 * v15);
        ++v13;
        if (v6)
        {
          v13 = v15;
          goto LABEL_18;
        }
      }

      v6 = 0;
      v30 = 0;
      v20 = 0;
      v13 = v17;
      if (v9)
      {
        goto LABEL_24;
      }

LABEL_19:
      while (1)
      {
        v21 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v21 >= v11)
        {
          if (v20)
          {
            goto LABEL_33;
          }

          v23 = 0;
          goto LABEL_35;
        }

        v9 = *(v7 + 8 * v21);
        ++v14;
        if (v9)
        {
          v14 = v21;
          goto LABEL_24;
        }
      }

LABEL_40:
      __break(1u);
      return result;
    }

    v15 = v13;
LABEL_18:
    v18 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = (*(a2 + 48) + ((v15 << 10) | (16 * v18)));
    v20 = v19[1];
    v30 = *v19;

    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_24:
    v22 = (*(v28 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v9)))));
    v24 = *v22;
    v23 = v22[1];

    if (!v20)
    {
      break;
    }

    if (!v23)
    {
LABEL_33:

      goto LABEL_36;
    }

    v9 &= v9 - 1;
    if (v30 == v24 && v20 == v23)
    {
    }

    else
    {
      v26 = sub_1AB461DA4();

      if ((v26 & 1) == 0)
      {

        return 0;
      }
    }
  }

LABEL_35:

  if (v23)
  {
LABEL_36:

    return 0;
  }

  return 1;
}

unint64_t sub_1AB3C7CF0(unint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = a3;
  v6 = a1;
  v31 = &a3[a4];
  if (a3)
  {
    v7 = &a3[a4];
  }

  else
  {
    v7 = 0;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v33 = v7;
  v34 = v8;
  v9 = 4 * v8;
  v10 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v30 = a2 & 0xFFFFFFFFFFFFFFLL;
  result = 15;
  while (1)
  {
    if (v4)
    {
      if (v4 == v33)
      {
        v13 = 0;
        v14 = 1;
        v4 = v31;
      }

      else
      {
        v14 = 0;
        v15 = *v4++;
        v13 = v15;
      }
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    v16 = result >> 14;
    v17 = result >> 14 == v9;
    if (result >> 14 == v9)
    {
      v18 = 0;
      if (v14)
      {
        return v17;
      }

      goto LABEL_33;
    }

    v19 = result & 0xC;
    v20 = result;
    if (v19 == v11)
    {
      v24 = result;
      v25 = sub_1AB3FE0FC(result, a1, a2);
      v6 = a1;
      v20 = v25;
      result = v24;
    }

    v21 = v20 >> 16;
    if (v20 >> 16 >= v34)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v28 = result;
      v26 = sub_1AB460764();
      v6 = a1;
      v18 = v26;
      result = v28;
      if (v19 == v11)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v35[0] = v6;
        v35[1] = v30;
        v22 = v35;
      }

      else
      {
        v22 = v29;
        if ((v6 & 0x1000000000000000) == 0)
        {
          v27 = result;
          v23 = sub_1AB461714();
          v6 = a1;
          v22 = v23;
          result = v27;
        }
      }

      v18 = *(v22 + v21);
      if (v19 == v11)
      {
LABEL_30:
        result = sub_1AB3FE0FC(result, a1, a2);
        v6 = a1;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_27:
          result = (result & 0xFFFFFFFFFFFF0000) + 65540;
          if (v14)
          {
            return v17;
          }

          goto LABEL_33;
        }

        goto LABEL_31;
      }
    }

    if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_31:
    if (v34 <= result >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1AB460744();
    v6 = a1;
    if (v14)
    {
      return v17;
    }

LABEL_33:
    v17 = 0;
    if (v16 == v9 || v13 != v18)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

FILE *sub_1AB3C7FBC@<X0>(const char *a1@<X0>, FILE **a2@<X8>)
{
  result = fopen(a1, "r");
  *a2 = result;
  return result;
}

unint64_t sub_1AB3C7FF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AB45F204();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v18 = 0xD000000000000015;
  v19 = 0x80000001AB50D1E0;
  sub_1AB3C81C8();
  sub_1AB3C821C();
  sub_1AB460464();
  result = 0;
  if ((v16 & 1) == 0)
  {
    result = v15;
    v9 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v9 < v15 >> 14)
    {
      __break(1u);
    }

    else
    {
      v14 = sub_1AB4607E4();
      v15 = v10;
      v16 = v11;
      v17 = v12;
      sub_1AB45F1E4();
      sub_1AB3C8270();
      v13 = sub_1AB461424();
      (*(v5 + 8))(v7, v4);

      return v13;
    }
  }

  return result;
}

unint64_t sub_1AB3C81C8()
{
  result = qword_1EB432D50[0];
  if (!qword_1EB432D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB432D50);
  }

  return result;
}

unint64_t sub_1AB3C821C()
{
  result = qword_1EB43C390;
  if (!qword_1EB43C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C390);
  }

  return result;
}

unint64_t sub_1AB3C8270()
{
  result = qword_1EB43C398;
  if (!qword_1EB43C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C398);
  }

  return result;
}

id sub_1AB3C82DC(unint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_1AB4601C4();
  v49 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1AB45F9E4();
  v5 = *(v57 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v57);
  v56 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_37:
    v8 = sub_1AB4618F4();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v58 = a1;
  v59 = v4;
  v50 = v2;
  if (v8)
  {
    v9 = 0;
    v53 = a1 & 0xFFFFFFFFFFFFFF8;
    v54 = (v5 + 8);
    v55 = (a1 & 0xC000000000000001);
    v10 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v55)
      {
        v11 = MEMORY[0x1AC59C990](v9, a1, v6);
      }

      else
      {
        if (v9 >= *(v53 + 16))
        {
          goto LABEL_36;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v5 = v11;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v60 = v9 + 1;
      v12 = v56;
      sub_1AB45F9D4();
      v13 = sub_1AB45F9C4();
      v4 = v14;
      (*v54)(v12, v57);
      v5 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v10;
      v2 = v10;
      a1 = sub_1AB014DB4(v13, v4);
      v17 = v10[2];
      v18 = (v16 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_34;
      }

      v20 = v16;
      if (v10[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v16)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v2 = &v62;
          sub_1AB1DA050();
          if (v20)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        sub_1AB1D4E90(v19, isUniquelyReferenced_nonNull_native);
        v2 = v62;
        v21 = sub_1AB014DB4(v13, v4);
        if ((v20 & 1) != (v22 & 1))
        {
          result = sub_1AB461FC4();
          __break(1u);
          return result;
        }

        a1 = v21;
        if (v20)
        {
LABEL_19:

          v10 = v62;
          v23 = v62[7];
          v24 = *(v23 + 8 * a1);
          *(v23 + 8 * a1) = v5;

          goto LABEL_23;
        }
      }

      v10 = v62;
      v62[(a1 >> 6) + 8] |= 1 << a1;
      v25 = (v10[6] + 16 * a1);
      *v25 = v13;
      v25[1] = v4;
      *(v10[7] + 8 * a1) = v5;
      v26 = v10[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_35;
      }

      v10[2] = v28;
LABEL_23:
      a1 = v58;
      if (qword_1EB435DB0 != -1)
      {
        swift_once();
      }

      if ([(_JEAtomicFlag *)qword_1EB43AE18 currentValue])
      {
        if (qword_1EB435DB8 != -1)
        {
          swift_once();
        }

        sub_1AB234F14(v5, qword_1EB46C318);
      }

      ++v9;
      if (v60 == v8)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_29:
  v53 = sub_1AB18732C();
  v29 = *(v53 + 16);
  v30 = v50;
  v31 = v59;
  if (v29)
  {
    v60 = sub_1AB016760(0, &qword_1ED4D2060, 0x1E69E9610);
    v57 = *&v52[OBJC_IVAR____TtC9JetEngine24AMSMetricsWithInspection_urlSession];
    LODWORD(v56) = *MEMORY[0x1E69E7FA0];
    v54 = (v49 + 8);
    v55 = (v49 + 104);
    v32 = (v53 + 48);
    do
    {
      v34 = *(v32 - 2);
      v33 = *(v32 - 1);
      v35 = *v32;
      v32 += 3;

      v36 = sub_1AB15862C(v10);
      (*v55)(v31, v56, v30);
      v37 = sub_1AB461164();
      (*v54)(v31, v30);
      v38 = v30;
      v39 = swift_allocObject();
      v39[2] = v34;
      v39[3] = v33;
      v39[4] = v35;
      v39[5] = v36;
      v40 = v57;
      v39[6] = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438C08, &unk_1AB4F3C80);
      v41 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v41 + 16) = v42;
      *(v41 + 24) = MEMORY[0x1E69E7CC0];
      *(v41 + 64) = 0;
      v43 = swift_allocObject();
      v43[2] = sub_1AB234E74;
      v43[3] = v39;
      v43[4] = v41;
      v44 = v40;

      OS_dispatch_queue.schedule(task:)(sub_1AB234EA4, v43);

      v30 = v38;
      v31 = v59;

      --v29;
    }

    while (v29);
  }

  sub_1AB016760(0, &qword_1EB434E60, 0x1E698CA08);
  v45 = sub_1AB460934();
  v61.receiver = v52;
  v61.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v61, sel_promiseForEnqueueingEvents_, v45);

  return v46;
}

unint64_t sub_1AB3C8A80()
{
  result = qword_1EB43C3B8;
  if (!qword_1EB43C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43C3B8);
  }

  return result;
}

uint64_t JetPackDataStreamSource.init(data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for JetPackDataStreamSource(0) + 24);
  v7 = sub_1AB45F764();
  result = (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *a3 = a1;
  *(a3 + 1) = a2;
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  return result;
}

uint64_t type metadata accessor for JetPackDataStreamSource(uint64_t a1)
{
  result = qword_1EB4358C0;
  if (!qword_1EB4358C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t JetPackDataStreamSource.init(data:dataSourceURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for JetPackDataStreamSource(0);
  a4[2] = 0;
  a4[3] = 0;
  v7 = a4 + *(v6 + 24);

  return sub_1AB2D0A88(a3, v7);
}

uint64_t JetPackDataStreamSource.makeStream()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB838]);
  v1 = sub_1AB45F834();
  v2 = [v0 initWithData_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0, &unk_1AB4D9550);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v2;
  *(v3 + 32) = 1;
  return v3;
}

uint64_t sub_1AB3C8CC0()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AB838]);
  v1 = sub_1AB45F834();
  v2 = [v0 initWithData_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437AD0, &unk_1AB4D9550);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v2;
  *(v3 + 32) = 1;
  return v3;
}

uint64_t sub_1AB3C8D7C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1ED4D0B80 != -1)
    {
      result = swift_once();
    }

    v6 = v3;
    v7 = v2;
    v4 = *(qword_1ED4D3EB0 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1AB233D50(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

uint64_t sub_1AB3C8E4C(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    if (qword_1ED4D0B80 != -1)
    {
      result = swift_once();
    }

    v5[2] = v3;
    v5[3] = v2;
    v4 = *(qword_1ED4D3EB0 + 16);
    MEMORY[0x1EEE9AC00](result);
    os_unfair_lock_lock(v4 + 6);
    sub_1AB0572A0(v5);
    os_unfair_lock_unlock(v4 + 6);
  }

  return result;
}

void sub_1AB3C8F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  if (*(v4 + 56))
  {
    sub_1AB15B1B8();
    swift_allocError();
    swift_willThrow();
    return;
  }

  sub_1AB45F194();
  swift_allocObject();
  sub_1AB45F184();
  sub_1AB3CA9E4();
  v6 = sub_1AB45F174();
  v8 = v7;

  if (!v5)
  {
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_16;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    else if (!v9)
    {
      LODWORD(v10) = BYTE6(v8);
LABEL_17:
      v20 = v10;
      v14 = *(v4 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v4 + 16), *(v4 + 40));
      v15 = sub_1AB05AF50(&v20, 4uLL);
      v17 = v16;
      (*(v14 + 8))();
      sub_1AB017254(v15, v17);
      v18 = *(v4 + 40);
      v19 = *(v4 + 48);
      __swift_project_boxed_opaque_existential_1Tm((v4 + 16), v18);
      (*(v19 + 8))(v6, v8, v18, v19);
      sub_1AB017254(v6, v8);
      *(v4 + 56) = 1;
      return;
    }

    LODWORD(v10) = HIDWORD(v6) - v6;
    if (__OFSUB__(HIDWORD(v6), v6))
    {
      goto LABEL_20;
    }

    v10 = v10;
LABEL_13:
    if ((v10 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v10))
      {
        goto LABEL_17;
      }

      __break(1u);
LABEL_16:
      LODWORD(v10) = 0;
      goto LABEL_17;
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void sub_1AB3C9190(_OWORD *a1@<X8>)
{
  if (*(v1 + 56))
  {
    sub_1AB3CAE34();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
    return;
  }

  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v5);
  v7 = sub_1AB19B940(v5, v6);
  if (!v2)
  {
    v8 = v7;
    v9 = v7;
    v10 = *(v1 + 40);
    v11 = *(v1 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), v10);
    v12 = (*(v11 + 24))(v9, v10, v11);
    v14 = v13 >> 62;
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        v20 = v12;
        v15 = v13;
        if (!v8)
        {
          goto LABEL_13;
        }

LABEL_15:
        sub_1AB3CAE34();
        swift_allocError();
        *v21 = 2;
        swift_willThrow();
        sub_1AB017254(v20, v15);
        return;
      }

      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      v19 = __OFSUB__(v17, v18);
      v16 = v17 - v18;
      if (!v19)
      {
        v15 = v13;
        goto LABEL_12;
      }

      __break(1u);
    }

    else
    {
      if (!v14)
      {
        v15 = v13;
        v16 = BYTE6(v13);
        goto LABEL_12;
      }

      LODWORD(v16) = HIDWORD(v12) - v12;
      if (!__OFSUB__(HIDWORD(v12), v12))
      {
        v15 = v13;
        v16 = v16;
LABEL_12:
        v20 = v12;
        if (v16 == v9)
        {
LABEL_13:
          sub_1AB45F0D4();
          swift_allocObject();
          sub_1AB45F0C4();
          sub_1AB3CAE88();
          sub_1AB45F0B4();
          sub_1AB017254(v20, v15);

          *(v1 + 56) = 1;
          *a1 = v22;
          a1[1] = v23;
          return;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void sub_1AB3C93A8(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  sub_1AB01494C(a1, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43C3E0, &qword_1AB4F3E40);
  inited = swift_initStackObject();
  sub_1AB0149B0(v58, inited + 16);
  *(inited + 56) = 0;
  sub_1AB3C9190(&v55);
  if (v3)
  {
    goto LABEL_7;
  }

  v50 = v7;
  v9 = v55;
  v10 = v56;
  v11 = v57;
  if (*(inited + 56) != 1)
  {
    sub_1AB3CAE34();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    sub_1AB017254(v9, *(&v9 + 1));
    sub_1AB017254(v10, v11);
LABEL_7:

    return;
  }

  v48 = v57;
  v51 = v55;
  sub_1AB01494C(inited + 16, &v55);
  sub_1AB01494C(a2, v54);
  type metadata accessor for CommonCryptoAESGCMCryptor();
  v12 = swift_allocObject();
  v13 = v12;
  *(v12 + 112) = 0;
  v14 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    v17 = v51;
    if (v14 == 2)
    {
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v21 == 16)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    sub_1AB3CA990();
    swift_allocError();
    *v27 = 0;
    *(v27 + 4) = 2;
    swift_willThrow();
    sub_1AB017254(v17, *(&v51 + 1));
    v28 = v10;
    v29 = v48;
LABEL_33:
    sub_1AB017254(v28, v29);

    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    __swift_destroy_boxed_opaque_existential_1Tm(&v55);
    swift_deallocPartialClassInstance();
    return;
  }

  if (!v14)
  {
    v15 = BYTE6(v5);
    goto LABEL_21;
  }

  LODWORD(v15) = HIDWORD(v6) - v6;
  if (__OFSUB__(HIDWORD(v6), v6))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v15 = v15;
LABEL_21:
  v17 = v51;
  if (v15 != 16)
  {
    goto LABEL_22;
  }

LABEL_11:
  cryptorRef = 0;
  v47 = v10;
  if (v14 == 2)
  {
    v46 = v12;
    v30 = *(v6 + 16);
    v31 = sub_1AB45F414();
    if (v31)
    {
      v32 = sub_1AB45F444();
      if (__OFSUB__(v30, v32))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v31 += v30 - v32;
    }

    sub_1AB45F434();
    v34 = *(v6 + 16);
    v33 = *(v6 + 24);
    if (__OFSUB__(v33, v34))
    {
      goto LABEL_57;
    }

    v24 = CCCryptorCreateWithMode(1u, 0xBu, 0, 1u, 0, v31, v33 - v34, 0, 0, 0, 0, &cryptorRef);
    v13 = v46;
  }

  else
  {
    if (v14 == 1)
    {
      v45 = v12;
      if (v6 <= v6 >> 32)
      {
        v22 = sub_1AB45F414();
        if (v22)
        {
          v23 = sub_1AB45F444();
          if (__OFSUB__(v6, v23))
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          v22 += v6 - v23;
        }

        sub_1AB45F434();
        if (!__OFSUB__(HIDWORD(v6), v6))
        {
          v24 = CCCryptorCreateWithMode(1u, 0xBu, 0, 1u, 0, v22, HIDWORD(v6) - v6, 0, 0, 0, 0, &cryptorRef);
          v25 = v48;
          v13 = v45;
          v26 = *(&v51 + 1);
          goto LABEL_30;
        }

        goto LABEL_58;
      }

      goto LABEL_56;
    }

    key[0] = v6;
    LOWORD(key[1]) = v5;
    BYTE2(key[1]) = BYTE2(v5);
    BYTE3(key[1]) = BYTE3(v5);
    BYTE4(key[1]) = BYTE4(v5);
    BYTE5(key[1]) = BYTE5(v5);
    v24 = CCCryptorCreateWithMode(1u, 0xBu, 0, 1u, 0, key, BYTE6(v5), 0, 0, 0, 0, &cryptorRef);
  }

  v26 = *(&v51 + 1);
  v25 = v48;
LABEL_30:
  if (v24)
  {
LABEL_31:
    sub_1AB3CA990();
    swift_allocError();
    *v35 = v24;
LABEL_32:
    *(v35 + 4) = 1;
    swift_willThrow();
    sub_1AB017254(v17, v26);
    v28 = v47;
    v29 = v25;
    goto LABEL_33;
  }

  v36 = cryptorRef;
  if (!cryptorRef)
  {
    sub_1AB3CA990();
    swift_allocError();
    *v35 = 0;
    goto LABEL_32;
  }

  v37 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v37 != 2)
    {
      memset(key, 0, 14);
LABEL_52:
      v40 = CCCryptorGCMSetIV();
      if (v40)
      {
        goto LABEL_53;
      }

      goto LABEL_50;
    }

    v49 = cryptorRef;
    v38 = v25;
    v39 = *(v17 + 16);
    if (sub_1AB45F414() && __OFSUB__(v39, sub_1AB45F444()))
    {
      goto LABEL_64;
    }

    v26 = *(&v51 + 1);
    v17 = v51;
    sub_1AB45F434();
    if (!__OFSUB__(*(v17 + 24), *(v17 + 16)))
    {
      v40 = CCCryptorGCMSetIV();
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  if (!v37)
  {
    key[0] = v17;
    LOWORD(key[1]) = v26;
    BYTE2(key[1]) = BYTE2(v26);
    BYTE3(key[1]) = BYTE3(v26);
    BYTE4(key[1]) = BYTE4(v26);
    BYTE5(key[1]) = BYTE5(v26);
    goto LABEL_52;
  }

  v49 = cryptorRef;
  if (v17 > v17 >> 32)
  {
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

  v38 = v25;
  if (sub_1AB45F414() && __OFSUB__(v17, sub_1AB45F444()))
  {
LABEL_65:
    __break(1u);
  }

  v17 = v51;
  sub_1AB45F434();
  if (__OFSUB__(DWORD1(v51), v51))
  {
    goto LABEL_63;
  }

  v40 = CCCryptorGCMSetIV();
  v26 = *(&v51 + 1);
LABEL_49:
  v25 = v38;
  v36 = v49;
  if (v40)
  {
LABEL_53:
    v24 = v40;
    goto LABEL_31;
  }

LABEL_50:
  *(v13 + 16) = v36;
  *(v13 + 136) = 0;
  *(v13 + 128) = v50;
  sub_1AB01494C(&v55, v13 + 24);
  sub_1AB01494C(v54, v13 + 64);
  v41 = swift_slowAlloc();
  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  __swift_destroy_boxed_opaque_existential_1Tm(&v55);
  *(v13 + 104) = v41;
  *(v13 + 120) = 0;
  sub_1AB3C9B10();
  v43 = sub_1AB3C9D5C(v47, v25, v42);
  sub_1AB017254(v43, v44);

  sub_1AB017254(v17, *(&v51 + 1));
  sub_1AB017254(v47, v25);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm((inited + 16));
}