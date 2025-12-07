uint64_t sub_1BD6C3E44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF48, &qword_1BE0EFA60);
  MEMORY[0x1EEE9AC00](v66);
  v4 = (&v66 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF50, &qword_1BE0EFA68);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF58, &qword_1BE0EFA70);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  *v4 = sub_1BE051CD4();
  v4[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF60, &qword_1BE0EFA78);
  sub_1BD6C42B4(v2, v4 + *(v12 + 44));
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  sub_1BE04D8B4(&v70);
  KeyPath, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  v72 = v70;
  v73 = v71;
  v29 = swift_allocObject();
  v30 = *(v2 + 208);
  *(v29 + 208) = *(v2 + 192);
  *(v29 + 224) = v30;
  *(v29 + 240) = *(v2 + 224);
  *(v29 + 256) = *(v2 + 240);
  v31 = *(v2 + 144);
  *(v29 + 144) = *(v2 + 128);
  *(v29 + 160) = v31;
  v32 = *(v2 + 176);
  *(v29 + 176) = *(v2 + 160);
  *(v29 + 192) = v32;
  v33 = *(v2 + 80);
  *(v29 + 80) = *(v2 + 64);
  *(v29 + 96) = v33;
  v34 = *(v2 + 112);
  *(v29 + 112) = *(v2 + 96);
  *(v29 + 128) = v34;
  v35 = *(v2 + 16);
  *(v29 + 16) = *v2;
  *(v29 + 32) = v35;
  v36 = *(v2 + 48);
  *(v29 + 48) = *(v2 + 32);
  *(v29 + 64) = v36;
  sub_1BD6C82A0(v2, &v70);
  sub_1BD0DE4F4(&qword_1EBD4FF68, &qword_1EBD4FF48, &qword_1BE0EFA60, MEMORY[0x1E6981880]);
  sub_1BD6C82D8();
  sub_1BE051074();
  v29, v37, v38, v39, v40, v41, v42, v43;
  sub_1BD0DE53C(v4, &qword_1EBD4FF48, &qword_1BE0EFA60);
  v44 = *(v2 + 16);
  if (v44)
  {
    sub_1BE048964();
    sub_1BE04CD04();
    v44, v45, v46, v47, v48, v49, v50, v51;
    v52 = swift_allocObject();
    v53 = *(v2 + 208);
    *(v52 + 208) = *(v2 + 192);
    *(v52 + 224) = v53;
    *(v52 + 240) = *(v2 + 224);
    *(v52 + 256) = *(v2 + 240);
    v54 = *(v2 + 144);
    *(v52 + 144) = *(v2 + 128);
    *(v52 + 160) = v54;
    v55 = *(v2 + 176);
    *(v52 + 176) = *(v2 + 160);
    *(v52 + 192) = v55;
    v56 = *(v2 + 80);
    *(v52 + 80) = *(v2 + 64);
    *(v52 + 96) = v56;
    v57 = *(v2 + 112);
    *(v52 + 112) = *(v2 + 96);
    *(v52 + 128) = v57;
    v58 = *(v2 + 16);
    *(v52 + 16) = *v2;
    *(v52 + 32) = v58;
    v59 = *(v2 + 48);
    *(v52 + 48) = *(v2 + 32);
    *(v52 + 64) = v59;
    (*(v67 + 32))(v10, v7, v68);
    v60 = &v10[*(v8 + 56)];
    *v60 = sub_1BD6C832C;
    *(v60 + 1) = v52;
    sub_1BD6C82A0(v2, &v70);
    v61 = sub_1BE04EC54();
    v62 = sub_1BE0501D4();
    v63 = v69;
    sub_1BD0DE204(v10, v69, &qword_1EBD4FF58, &qword_1BE0EFA70);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF78, &unk_1BE0EFAC8);
    v65 = v63 + *(result + 36);
    *v65 = v61;
    *(v65 + 8) = v62;
  }

  else
  {
    sub_1BE04CDA4();
    sub_1BD6C8F0C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD6C42B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v84 = sub_1BE04E8A4();
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v78 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF98, &qword_1BE0EFAF0);
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v79 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v76 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFA0, &qword_1BE0EFAF8);
  v89 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v77 = (&v76 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFA8, &qword_1BE0EFB00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v76 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFB0, &qword_1BE0EFB08);
  v85 = *(v87 - 1);
  MEMORY[0x1EEE9AC00](v87);
  v14 = &v76 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFB8, &qword_1BE0EFB10);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v76 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v76 - v22;
  v24 = sub_1BE051294();
  *&v94 = v24;
  v25 = swift_allocObject();
  v26 = *(a1 + 208);
  *(v25 + 208) = *(a1 + 192);
  *(v25 + 224) = v26;
  *(v25 + 240) = *(a1 + 224);
  *(v25 + 256) = *(a1 + 240);
  v27 = *(a1 + 144);
  *(v25 + 144) = *(a1 + 128);
  *(v25 + 160) = v27;
  v28 = *(a1 + 176);
  *(v25 + 176) = *(a1 + 160);
  *(v25 + 192) = v28;
  v29 = *(a1 + 80);
  *(v25 + 80) = *(a1 + 64);
  *(v25 + 96) = v29;
  v30 = *(a1 + 112);
  *(v25 + 112) = *(a1 + 96);
  *(v25 + 128) = v30;
  v31 = *(a1 + 16);
  *(v25 + 16) = *a1;
  *(v25 + 32) = v31;
  v32 = *(a1 + 48);
  *(v25 + 48) = *(a1 + 32);
  *(v25 + 64) = v32;
  sub_1BD6C82A0(a1, v95);
  v33 = 1;
  sub_1BE0509D4();
  v24, v34, v35, v36, v37, v38, v39, v40;
  v25, v41, v42, v43, v44, v45, v46, v47;
  v94 = *(a1 + 168);
  v95[0] = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v93)
  {
    v48 = 1.0;
  }

  else
  {
    v48 = 0.0;
  }

  (*(v85 + 32))(v20, v14, v87);
  v49 = v86;
  *&v20[*(v16 + 44)] = v48;
  v87 = v23;
  sub_1BD0DE204(v20, v23, &qword_1EBD4FFB8, &qword_1BE0EFB10);
  v94 = v95[0];
  sub_1BE0516A4();
  if (v93 == 1)
  {
    v50 = sub_1BE04F7B4();
    v51 = v77;
    *v77 = v50;
    *(v51 + 8) = 0;
    *(v51 + 16) = 1;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFC8, &qword_1BE0EFB20);
    sub_1BD6C4B08(a1, v51 + *(v52 + 44));
    *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFD0, &qword_1BE0EFB28) + 36)) = 0x3FF0000000000000;
    v53 = v78;
    sub_1BE04E894();
    v54 = sub_1BE051DA4();
    v55 = sub_1BD6C8F0C(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
    v56 = v80;
    v57 = v84;
    sub_1BE04E324();
    v54, v58, v59, v60, v61, v62, v63, v64;
    (*(v81 + 8))(v53, v57);
    v66 = v82;
    v65 = v83;
    (*(v82 + 16))(v79, v56, v83);
    *&v94 = v57;
    *(&v94 + 1) = v55;
    swift_getOpaqueTypeConformance2();
    v67 = sub_1BE04E644();
    (*(v66 + 8))(v56, v65);
    *(v51 + *(v92 + 36)) = v67;
    sub_1BD0DE204(v51, v49, &qword_1EBD4FFA0, &qword_1BE0EFAF8);
    v33 = 0;
  }

  v68 = v49;
  (*(v89 + 56))(v49, v33, 1, v92);
  v70 = v87;
  v69 = v88;
  sub_1BD0DE19C(v87, v88, &qword_1EBD4FFB8, &qword_1BE0EFB10);
  v71 = v49;
  v72 = v90;
  sub_1BD0DE19C(v71, v90, &qword_1EBD4FFA8, &qword_1BE0EFB00);
  v73 = v91;
  sub_1BD0DE19C(v69, v91, &qword_1EBD4FFB8, &qword_1BE0EFB10);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFC0, &qword_1BE0EFB18);
  sub_1BD0DE19C(v72, v73 + *(v74 + 48), &qword_1EBD4FFA8, &qword_1BE0EFB00);
  sub_1BD0DE53C(v68, &qword_1EBD4FFA8, &qword_1BE0EFB00);
  sub_1BD0DE53C(v70, &qword_1EBD4FFB8, &qword_1BE0EFB10);
  sub_1BD0DE53C(v72, &qword_1EBD4FFA8, &qword_1BE0EFB00);
  return sub_1BD0DE53C(v69, &qword_1EBD4FFB8, &qword_1BE0EFB10);
}

uint64_t sub_1BD6C4A40()
{
  LOBYTE(v2) = 5;
  sub_1BD6BB890(&v2, 0, 1);
  v2 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  swift_getKeyPath();
  swift_getKeyPath();
  *&v2 = 3;
  BYTE8(v2) = 1;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6C4B08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFD8, &unk_1BE0EFB30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_1BD6C4DD8();
  v25 = *(a1 + 8);
  v15 = *a1;
  v24 = v15;
  if (v25 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v22 = v4;
    v16 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v24, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v5 + 8))(v7, v22);
    LOBYTE(v15) = v23;
  }

  v17 = *(v9 + 16);
  v17(v11, v14, v8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFE0, &qword_1BE0EFB40);
  v17((a2 + *(v18 + 48)), v11, v8);
  v19 = a2 + *(v18 + 64);
  *v19 = 0;
  *(v19 + 8) = v15 & 1;
  *(v19 + 9) = (v15 & 1) == 0;
  v20 = *(v9 + 8);
  v20(v14, v8);
  return (v20)(v11, v8);
}

uint64_t sub_1BD6C4DD8()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFE8, &qword_1BE0EFB48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFF0, &qword_1BE0EFB50);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  *v7 = sub_1BE04F7B4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FFF8, &qword_1BE0EFB58);
  sub_1BD6C5B60(v0, &v7[*(v11 + 44)]);
  v31 = *(v0 + 8);
  v30 = *v0;
  if (v31 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v12 = sub_1BE050174();
    v22 = v1;
    v13 = v12;
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v30, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v2 + 8))(v4, v22);
  }

  sub_1BE051CD4();
  sub_1BE04EE54();
  sub_1BD0DE204(v7, v10, &qword_1EBD4FFE8, &qword_1BE0EFB48);
  v14 = &v10[*(v8 + 36)];
  v15 = v28;
  *(v14 + 4) = v27;
  *(v14 + 5) = v15;
  *(v14 + 6) = v29;
  v16 = v24;
  *v14 = v23;
  *(v14 + 1) = v16;
  v17 = v26;
  *(v14 + 2) = v25;
  *(v14 + 3) = v17;
  v18 = sub_1BE051C64();
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50000, &qword_1BE0EFB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50008, &qword_1BE0EFB68);
  sub_1BD6C83A8();
  sub_1BD6C8460();
  sub_1BD6C8774();
  sub_1BE0510B4();
  return sub_1BD0DE53C(v10, &qword_1EBD4FFF0, &qword_1BE0EFB50);
}

uint64_t sub_1BD6C524C(uint64_t a1)
{
  v2 = sub_1BE04FFA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[2] = a1;
  v6 = swift_allocObject();
  v7 = *(a1 + 208);
  *(v6 + 208) = *(a1 + 192);
  *(v6 + 224) = v7;
  *(v6 + 240) = *(a1 + 224);
  *(v6 + 256) = *(a1 + 240);
  v8 = *(a1 + 144);
  *(v6 + 144) = *(a1 + 128);
  *(v6 + 160) = v8;
  v9 = *(a1 + 176);
  *(v6 + 176) = *(a1 + 160);
  *(v6 + 192) = v9;
  v10 = *(a1 + 80);
  *(v6 + 80) = *(a1 + 64);
  *(v6 + 96) = v10;
  v11 = *(a1 + 112);
  *(v6 + 112) = *(a1 + 96);
  *(v6 + 128) = v11;
  v12 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v12;
  v13 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v13;
  sub_1BD6C82A0(a1, &v31);
  v14 = sub_1BE051D74();
  sub_1BE04FF94();
  sub_1BE04E7C4();
  v6, v15, v16, v17, v18, v19, v20, v21;
  v14, v22, v23, v24, v25, v26, v27, v28;
  return (*(v3 + 8))(v5, v2);
}

void sub_1BD6C53FC(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v104);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  if (BYTE8(v104) != 1 || v104)
  {
    v22 = swift_getKeyPath();
    v23 = swift_getKeyPath();
    sub_1BE04D8B4(&v104);
    v22, v24, v25, v26, v27, v28, v29, v30;
    v23, v31, v32, v33, v34, v35, v36, v37;
    if (BYTE8(v104) != 1 || v104 <= 2)
    {
      v38 = swift_getKeyPath();
      v39 = swift_getKeyPath();
      sub_1BE04D8B4(&v104);
      v38, v40, v41, v42, v43, v44, v45, v46;
      v39, v47, v48, v49, v50, v51, v52, v53;
      if (BYTE8(v104) != 1 || v104 != 2)
      {
        v104 = *(a1 + 168);
        LOBYTE(v102[0]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
        sub_1BE0516B4();
      }
    }
  }

  v54 = swift_getKeyPath();
  v55 = swift_getKeyPath();
  sub_1BE04D8B4(&v104);
  v54, v56, v57, v58, v59, v60, v61, v62;
  v55, v63, v64, v65, v66, v67, v68, v69;
  if ((BYTE8(v104) & 1) == 0)
  {
    v70 = v104;
    v104 = *(a1 + 184);
    *&v105 = *(a1 + 200);
    *&v102[0] = v70;
    BYTE8(v102[0]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF88, &qword_1BE0EFAE0);
    sub_1BE0516B4();
    (*(v3 + 104))(v5, *MEMORY[0x1E69B8068], v2);
    v71 = PKPassKitBundle();
    if (v71)
    {
      v72 = v71;
      v73 = sub_1BE04B6F4();
      v75 = v74;

      (*(v3 + 8))(v5, v2);
      v76 = *(a1 + 128);
      v77 = *(a1 + 96);
      v108 = *(a1 + 112);
      v109 = v76;
      v78 = *(a1 + 128);
      v110 = *(a1 + 144);
      v79 = *(a1 + 64);
      v104 = *(a1 + 48);
      v105 = v79;
      v80 = *(a1 + 96);
      v82 = *(a1 + 48);
      v81 = *(a1 + 64);
      v106 = *(a1 + 80);
      v107 = v80;
      v98 = v108;
      v99 = v78;
      v100 = *(a1 + 144);
      v94 = v82;
      v95 = v81;
      v111 = *(a1 + 160);
      v101 = *(a1 + 160);
      v96 = v106;
      v97 = v77;
      v83[0] = 0;
      v83[1] = 0;
      v84 = xmmword_1BE0EF8E0;
      v85 = xmmword_1BE0EF8F0;
      v86 = 0;
      v87 = v73;
      v88 = v75;
      v89 = 0;
      v90 = 1;
      v92 = 0;
      v93 = 0;
      v91 = 0;
      sub_1BD0DE19C(&v104, v102, &qword_1EBD4FF90, &qword_1BE0EFAE8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF90, &qword_1BE0EFAE8);
      sub_1BE0516B4();
      v102[4] = v98;
      v102[5] = v99;
      v102[6] = v100;
      v103 = v101;
      v102[0] = v94;
      v102[1] = v95;
      v102[2] = v96;
      v102[3] = v97;
      sub_1BD0DE53C(v102, &qword_1EBD4FF90, &qword_1BE0EFAE8);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD6C5820(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v21);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  if (BYTE8(v21) == 1 && v21 >= 3)
  {
    v21 = *(a1 + 184);
    v22 = *(a1 + 200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF88, &qword_1BE0EFAE0);
    sub_1BE0516A4();
    if (v20 != 1 || (v21 = *(a1 + 208), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00), sub_1BE0516A4(), v19 == 1))
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1BD960638();
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1BD6C5944(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    v12 = *(a2 + 168);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    v2 = sub_1BE0516A4();
    if (v11 == 1)
    {
      LOBYTE(v12) = 7;
      sub_1BD6BB890(&v12, 0, 1);
    }

    MEMORY[0x1EEE9AC00](v2);
    v3 = sub_1BE051D74();
    sub_1BE04E7D4();
    v3, v4, v5, v6, v7, v8, v9, v10;
  }
}

uint64_t sub_1BD6C5A34(uint64_t a1)
{
  v21 = *(a1 + 168);
  LOBYTE(v19) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  v21 = *(a1 + 32);
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4(&v19);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  if (v20 == 1 && !v19)
  {
    return sub_1BD0DE53C(&v21, &qword_1EBD4FF80, &qword_1BE0EFAD8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = 3;
  v20 = 1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6C5B60@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v145 = a2;
  v3 = sub_1BE04F3D4();
  v139 = *(v3 - 8);
  v140 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v138 = &v136[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v136[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47490, &qword_1BE0EFBC0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v144 = &v136[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v136[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD500A0, &unk_1BE0EFBC8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v146 = &v136[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v136[-v16];
  v18 = swift_allocObject();
  v19 = *(a1 + 13);
  *(v18 + 208) = *(a1 + 12);
  *(v18 + 224) = v19;
  *(v18 + 240) = *(a1 + 14);
  *(v18 + 256) = a1[30];
  v20 = *(a1 + 9);
  *(v18 + 144) = *(a1 + 8);
  *(v18 + 160) = v20;
  v21 = *(a1 + 11);
  *(v18 + 176) = *(a1 + 10);
  *(v18 + 192) = v21;
  v22 = *(a1 + 5);
  *(v18 + 80) = *(a1 + 4);
  *(v18 + 96) = v22;
  v23 = *(a1 + 7);
  *(v18 + 112) = *(a1 + 6);
  *(v18 + 128) = v23;
  v24 = *(a1 + 1);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v24;
  v25 = *(a1 + 3);
  *(v18 + 48) = *(a1 + 2);
  *(v18 + 64) = v25;
  sub_1BD6C82A0(a1, &v232);
  v26 = sub_1BE051C54();
  v27 = 18.0;
  v216 = 0uLL;
  if (v26)
  {
    v27 = 10.0;
  }

  strcpy(&v217, "ApplePayLogo");
  BYTE13(v217) = 0;
  HIWORD(v217) = -5120;
  *&v218 = sub_1BD6C8A7C;
  *(&v218 + 1) = v18;
  LOBYTE(v219) = 0;
  *&v220 = 0;
  *(&v219 + 1) = 0;
  *(&v220 + 1) = 0x4032000000000000;
  *v221 = v27;
  *&v221[8] = xmmword_1BE0B7110;
  v222[1] = 0;
  v222[0] = 0;
  strcpy(v223, "ApplePayLogo");
  HIBYTE(v223[6]) = 0;
  v223[7] = -5120;
  v224 = sub_1BD6C8A7C;
  v225 = v18;
  v226 = 0;
  v228 = 0;
  v227 = 0;
  v229 = 0x4032000000000000;
  v230 = v27;
  v231 = xmmword_1BE0B7110;
  sub_1BD0DE19C(&v216, &v232, &qword_1EBD38AC8, &qword_1BE0EB100);
  sub_1BD0DE53C(v222, &qword_1EBD38AC8, &qword_1BE0EB100);
  v28 = sub_1BE051C54();
  v29 = 1;
  v147 = v17;
  if ((v28 & 1) == 0)
  {
    sub_1BE051984();
    v30 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v31 = &v7[*(v5 + 36)];
    *v31 = v30;
    *(v31 + 1) = v32;
    *(v31 + 2) = v33;
    *(v31 + 3) = v34;
    *(v31 + 4) = v35;
    v31[40] = 0;
    v36 = sub_1BE0501C4();
    v37 = *a1;
    v255 = *a1;
    v256 = *(a1 + 8);
    if (v256 == 1)
    {
      if (v37)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v38 = v36;
      v39 = sub_1BE050174();
      sub_1BE04CF84();

      v36 = v38;
      v40 = v138;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v255, &qword_1EBD5C6E0, &qword_1BE0C3590);
      (*(v139 + 1))(v40, v140);
      if (v232)
      {
LABEL_9:
        sub_1BE04E1F4();
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = v144;
        sub_1BD0DE204(v7, v144, &qword_1EBD390F8, &qword_1BE0BA700);
        v50 = &v49[*(v8 + 36)];
        *v50 = v36;
        *(v50 + 1) = v42;
        *(v50 + 2) = v44;
        *(v50 + 3) = v46;
        *(v50 + 4) = v48;
        v50[40] = 0;
        v51 = v49;
        v52 = v143;
        sub_1BD0DE204(v51, v143, &qword_1EBD47490, &qword_1BE0EFBC0);
        v53 = v52;
        v17 = v147;
        sub_1BD0DE204(v53, v147, &qword_1EBD47490, &qword_1BE0EFBC0);
        v29 = 0;
        goto LABEL_10;
      }
    }

    sub_1BE04C7D4();
    goto LABEL_9;
  }

LABEL_10:
  (*(v9 + 56))(v17, v29, 1, v8);
  v54 = *(a1 + 8);
  v236 = *(a1 + 7);
  v237 = v54;
  v238 = *(a1 + 9);
  v239 = a1[20];
  v55 = *(a1 + 4);
  v232 = *(a1 + 3);
  v233 = v55;
  v56 = *(a1 + 6);
  v234 = *(a1 + 5);
  v235 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF90, &qword_1BE0EFAE8);
  sub_1BE0516A4();
  v213 = *&v208[59];
  v214 = *&v208[67];
  v215 = *&v208[75];
  v209 = *&v208[27];
  v210 = *&v208[35];
  v212 = *&v208[51];
  v211 = *&v208[43];
  LOBYTE(v232) = 1;
  sub_1BE051CD4();
  sub_1BE04E5E4();
  *&v208[3] = v250;
  *&v208[11] = v251;
  *&v208[19] = v252;
  *&v232 = sub_1BD6C67E0();
  *(&v232 + 1) = v57;
  sub_1BD0DDEBC();
  v58 = sub_1BE0506C4();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = sub_1BE050324();
  v66 = sub_1BE0505F4();
  v142 = v67;
  v143 = v66;
  v69 = v68;
  v144 = v70;
  v65, v67, v68, v70, v71, v72, v73, v74;
  sub_1BD0DDF10(v58, v60, (v62 & 1), v75, v76, v77, v78, v79);
  v64, v80, v81, v82, v83, v84, v85, v86;
  KeyPath = swift_getKeyPath();
  v141 = sub_1BE0501F4();
  v253 = *a1;
  v254 = *(a1 + 8);
  if (v254 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v88 = sub_1BE050174();
    sub_1BE04CF84();

    v89 = v138;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v253, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v139 + 1))(v89, v140);
  }

  sub_1BE04E1F4();
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v204 = v69 & 1;
  v98 = v69 & 1;
  v137 = v69 & 1;
  v200 = 0;
  LODWORD(v138) = sub_1BE0501C4();
  sub_1BE04C7D4();
  sub_1BE04E1F4();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v106 = v105;
  v205 = 0;
  v152 = v220;
  v153 = *v221;
  v154 = *&v221[16];
  v148 = v216;
  v149 = v217;
  v150 = v218;
  v151 = v219;
  v107 = v146;
  sub_1BD0DE19C(v147, v146, &qword_1EBD500A0, &unk_1BE0EFBC8);
  v108 = v152;
  v109 = v153;
  v155[4] = v152;
  v155[5] = v153;
  v110 = v154;
  v156 = v154;
  v111 = v149;
  v155[0] = v148;
  v155[1] = v149;
  v113 = v150;
  v112 = v151;
  v155[2] = v150;
  v155[3] = v151;
  v114 = v145;
  *v145 = v148;
  v114[1] = v111;
  *(v114 + 12) = v110;
  v114[2] = v113;
  v114[3] = v112;
  v114[4] = v108;
  v114[5] = v109;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD500A8, &qword_1BE0EFC08);
  sub_1BD0DE19C(v107, v114 + v115[12], &qword_1EBD500A0, &unk_1BE0EFBC8);
  v116 = v114 + v115[16];
  v161 = v213;
  v162 = v214;
  v163 = v215;
  v157 = v209;
  v158 = v210;
  v159 = v211;
  v160 = v212;
  v140 = PKEdgeInsetsMake;
  *&v164 = PKEdgeInsetsMake;
  *(&v164 + 1) = 0;
  v139 = sub_1BD3241D4;
  *(&v165 + 1) = 0;
  *&v166[0] = 0;
  *&v165 = sub_1BD3241D4;
  WORD4(v166[0]) = 1;
  *(&v166[3] + 1) = *&v208[23];
  *(&v166[2] + 10) = *&v208[16];
  *(&v166[1] + 10) = *&v208[8];
  *(v166 + 10) = *v208;
  v167 = 256;
  v117 = v214;
  *(v116 + 4) = v213;
  *(v116 + 5) = v117;
  v118 = v160;
  *(v116 + 2) = v159;
  *(v116 + 3) = v118;
  *(v116 + 104) = 256;
  v119 = v166[3];
  *(v116 + 11) = v166[2];
  *(v116 + 12) = v119;
  v120 = v166[1];
  *(v116 + 9) = v166[0];
  *(v116 + 10) = v120;
  v121 = v158;
  *v116 = v157;
  *(v116 + 1) = v121;
  v122 = v163;
  v123 = v165;
  *(v116 + 7) = v164;
  *(v116 + 8) = v123;
  *(v116 + 6) = v122;
  v124 = (v114 + v115[20]);
  v125 = v142;
  v126 = v143;
  *&v168 = v143;
  *(&v168 + 1) = v142;
  LOBYTE(v169) = v98;
  *(&v169 + 1) = *v203;
  DWORD1(v169) = *&v203[3];
  v127 = v144;
  *(&v169 + 1) = v144;
  *&v170 = KeyPath;
  BYTE8(v170) = 1;
  *(&v170 + 9) = *v202;
  HIDWORD(v170) = *&v202[3];
  v145 = KeyPath;
  v128 = v141;
  LOBYTE(v171) = v141;
  *(&v171 + 1) = *v201;
  DWORD1(v171) = *&v201[3];
  *(&v171 + 1) = v91;
  *&v172 = v93;
  *(&v172 + 1) = v95;
  *&v173 = v97;
  BYTE8(v173) = 0;
  *(&v173 + 9) = *v207;
  HIDWORD(v173) = *&v207[3];
  v129 = v138;
  LOBYTE(v174) = v138;
  DWORD1(v174) = *&v206[3];
  *(&v174 + 1) = *v206;
  *(&v174 + 1) = v100;
  *&v175[0] = v102;
  *(&v175[0] + 1) = v104;
  *&v175[1] = v106;
  BYTE8(v175[1]) = 0;
  v130 = v169;
  *v124 = v168;
  v124[1] = v130;
  v131 = v171;
  v124[2] = v170;
  v124[3] = v131;
  v132 = v172;
  v133 = v173;
  *(v124 + 121) = *(v175 + 9);
  v134 = v175[0];
  v124[6] = v174;
  v124[7] = v134;
  v124[4] = v132;
  v124[5] = v133;
  sub_1BD0DE19C(v155, &v232, &qword_1EBD38AC8, &qword_1BE0EB100);
  sub_1BD0DE19C(&v157, &v232, &qword_1EBD500B0, &qword_1BE0EFC10);
  sub_1BD0DE19C(&v168, &v232, &qword_1EBD500B8, &qword_1BE0EFC18);
  sub_1BD0DE53C(v147, &qword_1EBD500A0, &unk_1BE0EFBC8);
  v176[0] = v126;
  v176[1] = v125;
  v177 = v137;
  *v178 = *v203;
  *&v178[3] = *&v203[3];
  v179 = v127;
  v180 = v145;
  v181 = 1;
  *v182 = *v202;
  *&v182[3] = *&v202[3];
  v183 = v128;
  *v184 = *v201;
  *&v184[3] = *&v201[3];
  v185 = v91;
  v186 = v93;
  v187 = v95;
  v188 = v97;
  v189 = 0;
  *&v190[3] = *&v207[3];
  *v190 = *v207;
  v191 = v129;
  *&v192[3] = *&v206[3];
  *v192 = *v206;
  v193 = v100;
  v194 = v102;
  v195 = v104;
  v196 = v106;
  v197 = 0;
  sub_1BD0DE53C(v176, &qword_1EBD500B8, &qword_1BE0EFC18);
  v236 = v213;
  v237 = v214;
  v238 = v215;
  v232 = v209;
  v233 = v210;
  v235 = v212;
  v234 = v211;
  v239 = v140;
  v240 = 0;
  v243 = 0;
  v241 = v139;
  v242 = 0;
  v244 = 1;
  v245 = 0;
  *&v248[14] = *&v208[23];
  *v248 = *&v208[16];
  v247 = *&v208[8];
  v246 = *v208;
  v249 = 256;
  sub_1BD0DE53C(&v232, &qword_1EBD500B0, &qword_1BE0EFC10);
  sub_1BD0DE53C(v146, &qword_1EBD500A0, &unk_1BE0EFBC8);
  v198[4] = v152;
  v198[5] = v153;
  v199 = v154;
  v198[0] = v148;
  v198[1] = v149;
  v198[2] = v150;
  v198[3] = v151;
  return sub_1BD0DE53C(v198, &qword_1EBD38AC8, &qword_1BE0EB100);
}

id sub_1BD6C67E0()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v39 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v39 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v41 = &v39 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v39 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v39 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v39 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v39 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v39 - v31;
  v49 = *(v0 + 184);
  v50 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FF88, &qword_1BE0EFAE0);
  sub_1BE0516A4();
  v33 = *MEMORY[0x1E69B80A8];
  v45 = v2;
  v46 = v1;
  v34 = *(v2 + 104);
  if (v48)
  {
    v34(v4, v33, v1);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v37 = sub_1BE04B6F4();
      v32 = v4;
LABEL_38:

      (*(v45 + 8))(v32, v46);
      return v37;
    }

    __break(1u);
    goto LABEL_40;
  }

  v38 = v47;
  if (v47 > 4)
  {
    if (v47 <= 6)
    {
      if (v47 == 5)
      {
        v32 = v41;
        v34(v41, v33, v1);
        result = PKPassKitBundle();
        if (result)
        {
          goto LABEL_32;
        }

        __break(1u);
        goto LABEL_27;
      }

      v32 = v42;
      v34(v42, v33, v1);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
LABEL_23:
        (v34)(v29);
        result = PKPassKitBundle();
        if (result)
        {
          v36 = result;
          v37 = sub_1BE04B6F4();
          v32 = v29;
          goto LABEL_38;
        }

        goto LABEL_42;
      }
    }

    else
    {
      if (v47 == 7)
      {
        v34(v20, v33, v1);
        result = PKPassKitBundle();
        if (result)
        {
          v36 = result;
          v37 = sub_1BE04B6F4();
          v32 = v20;
          goto LABEL_38;
        }

        goto LABEL_44;
      }

      if (v47 == 8)
      {
        v34(v17, v33, v1);
        result = PKPassKitBundle();
        if (result)
        {
          v36 = result;
          v37 = sub_1BE04B6F4();
          v32 = v17;
          goto LABEL_38;
        }

        goto LABEL_46;
      }

      if (v47 != 9)
      {
        goto LABEL_35;
      }

      v32 = v43;
      v34(v43, v33, v1);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

LABEL_36:
    v36 = result;
    goto LABEL_37;
  }

  if (v47 > 1)
  {
    if (v47 != 2)
    {
      if (v47 != 3)
      {
        v34(v32, v33, v1);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v36 = result;
LABEL_37:
        v37 = sub_1BE04B6F4();
        goto LABEL_38;
      }

      v32 = v40;
      v34(v40, v33, v1);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_32:
      v36 = result;
      goto LABEL_37;
    }

LABEL_27:
    (v34)(v23);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v37 = sub_1BE04B6F4();
      v32 = v23;
      goto LABEL_38;
    }

    goto LABEL_43;
  }

LABEL_16:
  if (!v38)
  {
    goto LABEL_23;
  }

  if (v38 == 1)
  {
    (v34)(v26);
    result = PKPassKitBundle();
    if (result)
    {
      v36 = result;
      v37 = sub_1BE04B6F4();
      v32 = v26;
      goto LABEL_38;
    }

    goto LABEL_41;
  }

LABEL_35:
  v32 = v44;
  v34(v44, v33, v1);
  result = PKPassKitBundle();
  if (result)
  {
    goto LABEL_36;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t sub_1BD6C6EA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a3;
  v111 = sub_1BE04FCF4();
  MEMORY[0x1EEE9AC00](v111);
  v101 = &v82[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = sub_1BE051B64();
  v6 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v87 = &v82[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_1BE051B94();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v86 = &v82[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v82[-v10];
  v90 = sub_1BE051C44();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v85 = &v82[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v95 = sub_1BE0518C4();
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v84 = &v82[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v82[-v14];
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50038, &qword_1BE0EFB78);
  MEMORY[0x1EEE9AC00](v109);
  v16 = &v82[-v15];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50098, &unk_1BE0EFBB0);
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v110 = &v82[-v17];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50030, &qword_1BE0EFB70);
  MEMORY[0x1EEE9AC00](v98);
  v19 = &v82[-v18];
  v20 = sub_1BE04F3D4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v82[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = *(a2 + 8);
  v115 = *a2;
  v97 = v116;
  v106 = v19;
  v107 = a2;
  v104 = v21;
  v105 = v24;
  v103 = v23;
  v99 = v115;
  if (v116 == 1)
  {
    if (v115)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  sub_1BE048964();
  sub_1BE052C44();
  v25 = v6;
  v26 = sub_1BE050174();
  sub_1BE04CF84();

  v6 = v25;
  sub_1BE04F3C4();
  swift_getAtKeyPath();
  sub_1BD0DE53C(&v115, &qword_1EBD5C6E0, &qword_1BE0C3590);
  (*(v21 + 8))(v23, v20);
  if (v114 != 1)
  {
LABEL_3:
    sub_1BD6C7FBC();
  }

LABEL_5:
  sub_1BE04FA24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50050, &qword_1BE0EFB80);
  sub_1BD6C8930();
  v35 = v16;
  sub_1BE050184();
  sub_1BD0DE19C(a1, v16, &qword_1EBD4FFF0, &qword_1BE0EFB50);
  v36 = &v16[*(v109 + 36)];
  v37 = *(v111 + 20);
  v83 = *MEMORY[0x1E697F468];
  v38 = v83;
  v39 = sub_1BE04F684();
  v40 = *(*(v39 - 8) + 104);
  v40(&v36[v37], v38, v39);
  *v36 = v28;
  *(v36 + 1) = v30;
  *(v36 + 2) = v32;
  *(v36 + 3) = v34;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50060, &qword_1BE0EFB90) + 36)] = 256;
  v41 = v86;
  sub_1BE051B84();
  v42 = v87;
  v43 = v96;
  (*(v6 + 104))(v87, *MEMORY[0x1E697D780], v96);
  v44 = v89;
  sub_1BE051B74();
  (*(v6 + 8))(v42, v43);
  v45 = *(v93 + 8);
  v46 = v94;
  v45(v41, v94);
  v47 = v85;
  sub_1BE051BC4();
  v45(v44, v46);
  v48 = v84;
  sub_1BE0518A4();
  (*(v88 + 8))(v47, v90);
  v49 = v91;
  sub_1BE051884();
  v50 = *(v92 + 8);
  v51 = v95;
  v50(v48, v95);
  v52 = v101;
  v40(&v101[*(v111 + 20)], v83, v39);
  *v52 = v28;
  v52[1] = v30;
  v52[2] = v32;
  v52[3] = v34;
  sub_1BD6C8604();
  sub_1BD6C8F0C(&qword_1EBD50068, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
  sub_1BE050994();
  sub_1BD6C8984(v52);
  v50(v49, v51);
  sub_1BD0DE53C(v35, &qword_1EBD50038, &qword_1BE0EFB78);
  v53 = v97;
  if (v97)
  {
    v54 = 1.0;
    v56 = v106;
    v55 = v107;
    v58 = v104;
    v57 = v105;
    v59 = v103;
    v60 = v99;
    if (v99)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v60 = v99;
    sub_1BE048964();
    sub_1BE052C44();
    v61 = sub_1BE050174();
    sub_1BE04CF84();

    v59 = v103;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v115, &qword_1EBD5C6E0, &qword_1BE0C3590);
    v58 = v104;
    v57 = v105;
    (*(v104 + 8))(v59, v105);
    v54 = 1.0;
    v56 = v106;
    v55 = v107;
    if (v113)
    {
      goto LABEL_12;
    }
  }

  v62 = v55[2];
  if (v62)
  {
    sub_1BE048964();
    v63 = sub_1BE04CD74();
    v62, v64, v65, v66, v67, v68, v69, v70;
    if (v63)
    {
      [v63 bounds];
      Width = CGRectGetWidth(v117);

      v54 = (Width - (*(v55 + 28) + *(v55 + 28))) / Width;
    }

LABEL_12:
    sub_1BE051E94();
    v73 = v72;
    v75 = v74;
    (*(v100 + 32))(v56, v110, v102);
    v76 = v56 + *(v98 + 36);
    *v76 = v54;
    *(v76 + 8) = v54;
    *(v76 + 16) = v73;
    *(v76 + 24) = v75;
    if (v53)
    {
      v77 = 0.0;
      if (v60)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v78 = sub_1BE050174();
      sub_1BE04CF84();

      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0DE53C(&v115, &qword_1EBD5C6E0, &qword_1BE0C3590);
      (*(v58 + 8))(v59, v57);
      v77 = 0.0;
      if (v112)
      {
LABEL_17:
        v79 = v108;
        sub_1BD0DE204(v56, v108, &qword_1EBD50030, &qword_1BE0EFB70);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50000, &qword_1BE0EFB60);
        v81 = v79 + *(result + 36);
        *v81 = 0;
        *(v81 + 8) = v77;
        return result;
      }
    }

    v77 = -*(v55 + 28);
    goto LABEL_17;
  }

  sub_1BE04CDA4();
  sub_1BD6C8F0C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD6C7A24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F3D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE051274();
  v11 = sub_1BE0501D4();
  sub_1BD0DE19C(a1, a3, &qword_1EBD4FFF0, &qword_1BE0EFB50);
  v12 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50080, &unk_1BE0EFB98) + 36);
  *v12 = v10;
  *(v12 + 8) = v11;
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50008, &qword_1BE0EFB68) + 36));
  v14 = type metadata accessor for RemoteNetworkPaymentLoadingView.SheetShape(0);
  v15 = *(v14 + 20);
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1BE04F684();
  (*(*(v17 - 8) + 104))(&v13[v15], v16, v17);
  v23 = *(a2 + 8);
  v18 = *a2;
  v22 = v18;
  if (v23 != 1)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v19 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0DE53C(&v22, &qword_1EBD5C6E0, &qword_1BE0C3590);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v18) = v21[15];
  }

  *v13 = 0x4024000000000000;
  v13[*(v14 + 24)] = v18 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50090, &qword_1BE0EFBA8);
  *&v13[*(result + 36)] = 256;
  return result;
}

double sub_1BD6C7C8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  if (*(v6 + *(a1 + 24)))
  {
    v8 = -1;
  }

  else
  {
    v8 = 3;
  }

  v9 = [objc_opt_self() bezierPathWithRoundedRect:v8 byRoundingCorners:a3 cornerRadii:{a4, a5, a6, *v6, *v6}];
  v10 = [v9 CGPath];
  sub_1BE050524();

  result = *&v12;
  *a2 = v12;
  *(a2 + 16) = v13;
  *(a2 + 32) = v14;
  return result;
}

void (*sub_1BD6C7D90(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1BE04E0F4();
  return sub_1BD122AB4;
}

uint64_t sub_1BD6C7E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6C8F0C(&qword_1EBD50110, type metadata accessor for RemoteNetworkPaymentLoadingView.SheetShape, &unk_1BE0EFD10);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1BD6C7EAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD6C8F0C(&qword_1EBD50110, type metadata accessor for RemoteNetworkPaymentLoadingView.SheetShape, &unk_1BE0EFD10);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1BD6C7F40(uint64_t a1)
{
  v2 = sub_1BD6C8F0C(&qword_1EBD50110, type metadata accessor for RemoteNetworkPaymentLoadingView.SheetShape, &unk_1BE0EFD10);

  return MEMORY[0x1EEDE4410](a1, v2);
}

void sub_1BD6C7FBC()
{
  if (*(v0 + 240) > 0.0)
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      sub_1BE048964();
      v2 = sub_1BE04CD74();
      v1, v3, v4, v5, v6, v7, v8, v9;
      if (v2)
      {
        [v2 bounds];
        CGRectGetWidth(v10);
      }
    }

    else
    {
      sub_1BE04CDA4();
      sub_1BD6C8F0C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
      sub_1BE04EEB4();
      __break(1u);
    }
  }
}

id sub_1BD6C80BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    result = (*(v3 + 8))(v6, v2);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 7;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = v9;
    *(a1 + 64) = v11;
    *(a1 + 72) = 0;
    *(a1 + 80) = 1;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 88) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD6C82D8()
{
  result = qword_1EBD4FF70;
  if (!qword_1EBD4FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FF70);
  }

  return result;
}

unint64_t sub_1BD6C83A8()
{
  result = qword_1EBD50010;
  if (!qword_1EBD50010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FFF0, &qword_1BE0EFB50);
    sub_1BD0DE4F4(&qword_1EBD50018, &qword_1EBD4FFE8, &qword_1BE0EFB48, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50010);
  }

  return result;
}

unint64_t sub_1BD6C8460()
{
  result = qword_1EBD50020;
  if (!qword_1EBD50020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50000, &qword_1BE0EFB60);
    sub_1BD6C84EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50020);
  }

  return result;
}

unint64_t sub_1BD6C84EC()
{
  result = qword_1EBD50028;
  if (!qword_1EBD50028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50030, &qword_1BE0EFB70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50038, &qword_1BE0EFB78);
    sub_1BE04FCF4();
    sub_1BD6C8604();
    sub_1BD6C8F0C(&qword_1EBD50068, MEMORY[0x1E697FF20], MEMORY[0x1E697FF18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50028);
  }

  return result;
}

unint64_t sub_1BD6C8604()
{
  result = qword_1EBD50040;
  if (!qword_1EBD50040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50038, &qword_1BE0EFB78);
    sub_1BD6C86BC();
    sub_1BD0DE4F4(&unk_1EBD596B0, &qword_1EBD50060, &qword_1BE0EFB90, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50040);
  }

  return result;
}

unint64_t sub_1BD6C86BC()
{
  result = qword_1EBD50048;
  if (!qword_1EBD50048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50050, &qword_1BE0EFB80);
    sub_1BD6C83A8();
    sub_1BD0DE4F4(&qword_1EBD50058, &unk_1EBD596A0, &qword_1BE0EFB88, MEMORY[0x1E6980CF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50048);
  }

  return result;
}

unint64_t sub_1BD6C8774()
{
  result = qword_1EBD50070;
  if (!qword_1EBD50070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50008, &qword_1BE0EFB68);
    sub_1BD6C882C();
    sub_1BD0DE4F4(&qword_1EBD50088, &qword_1EBD50090, &qword_1BE0EFBA8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50070);
  }

  return result;
}

unint64_t sub_1BD6C882C()
{
  result = qword_1EBD50078;
  if (!qword_1EBD50078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50080, &unk_1BE0EFB98);
    sub_1BD6C83A8();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0, &unk_1BE0B7C80, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50078);
  }

  return result;
}

uint64_t type metadata accessor for RemoteNetworkPaymentLoadingView.SheetShape(uint64_t a1)
{
  result = qword_1EBD500D0;
  if (!qword_1EBD500D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BD6C8930()
{
  result = qword_1EBD597E0;
  if (!qword_1EBD597E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD597E0);
  }

  return result;
}

uint64_t sub_1BD6C8984(uint64_t a1)
{
  v2 = sub_1BE04FCF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_78(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1BD0D4604(*(v8 + 16), *(v8 + 24), a3, a4, a5, a6, a7, a8);
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 56), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 72), v23, v24, v25, v26, v27, v28, v29;
  *(v8 + 96), v30, v31, v32, v33, v34, v35, v36;
  *(v8 + 128), v37, v38, v39, v40, v41, v42, v43;
  swift_unknownObjectRelease();
  if (*(v8 + 160))
  {
    *(v8 + 168), v44, v45, v46, v47, v48, v49, v50;
  }

  *(v8 + 176), v44, v45, v46, v47, v48, v49, v50;
  *(v8 + 192), v51, v52, v53, v54, v55, v56, v57;
  *(v8 + 216), v58, v59, v60, v61, v62, v63, v64;
  *(v8 + 232), v65, v66, v67, v68, v69, v70, v71;

  return swift_deallocObject();
}

uint64_t sub_1BD6C8A7C()
{
  v1 = 6;
  sub_1BD6BB890(&v1, 0, 1);
  return sub_1BD6C4A40();
}

void sub_1BD6C8AC0(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for RemoteNetworkPaymentLoadingViewModel(0);
  sub_1BD6C8F0C(&qword_1EBD500C0, type metadata accessor for RemoteNetworkPaymentLoadingViewModel, &unk_1BE0E0B10);
  v7 = sub_1BE04E954();
  v13 = v8;
  v14 = v7;
  v18 = *a4;
  v19 = a4[1];
  sub_1BE051694();
  sub_1BE051694();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD500C8, &qword_1BE0EFC50);
  sub_1BE051694();
  sub_1BE051694();
  v9 = MobileGestalt_get_current_device();
  if (v9)
  {
    v10 = v9;
    MobileGestalt_get_deviceCornerRadius();
    v12 = v11;

    *a5 = KeyPath;
    *(a5 + 8) = 0;
    *(a5 + 16) = a1;
    *(a5 + 24) = a2;
    *(a5 + 32) = v14;
    *(a5 + 40) = v13;
    *(a5 + 112) = v24;
    *(a5 + 128) = v25;
    *(a5 + 144) = v26;
    *(a5 + 160) = v27;
    *(a5 + 48) = v20;
    *(a5 + 64) = v21;
    *(a5 + 80) = v22;
    *(a5 + 96) = v23;
    *(a5 + 168) = v18;
    *(a5 + 176) = *(&v18 + 1);
    *(a5 + 184) = v18;
    *(a5 + 192) = BYTE8(v18);
    *(a5 + 200) = v19;
    *(a5 + 208) = v18;
    *(a5 + 216) = *(&v18 + 1);
    *(a5 + 224) = xmmword_1BE0EF900;
    *(a5 + 240) = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD6C8CFC(uint64_t a1)
{
  result = sub_1BE04F684();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1BD6C8D80()
{
  result = qword_1EBD500E0;
  if (!qword_1EBD500E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FF78, &unk_1BE0EFAC8);
    sub_1BD0DE4F4(&qword_1EBD500E8, &qword_1EBD4FF58, &qword_1BE0EFA70, MEMORY[0x1E697C278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD500E0);
  }

  return result;
}

uint64_t sub_1BD6C8F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double FlightWidgetDetailsSection.content.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  sub_1BE048C84();
  return result;
}

PassKitUI::FlightWidgetDetailsSection __swiftcall FlightWidgetDetailsSection.init(content:)(PassKitUI::FlightWidgetDetailsSection content)
{
  v2 = *(content.content.details._rawValue + 8);
  *v1 = *content.content.details._rawValue;
  *(v1 + 8) = v2;
  return content;
}

uint64_t FlightWidgetDetailsSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v30 = sub_1BE04FF64();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50118, &qword_1BE0EFD60);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v26 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50120, &qword_1BE0EFD68);
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v26 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  *v5 = sub_1BE04F504();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50128, &qword_1BE0EFD70);
  sub_1BD6CA734(v8);
  v32 = v10;
  swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BD6CA938;
  *(v12 + 24) = v11;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50130, &qword_1BE0EFD98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50138, &qword_1BE0EFDA0);
  sub_1BD0DE4F4(&qword_1EBD50140, &qword_1EBD50130, &qword_1BE0EFD98, MEMORY[0x1E69E6338]);
  sub_1BD6CA974();
  sub_1BE0519C4();
  sub_1BE04FF44();
  v13 = sub_1BD0DE4F4(&qword_1EBD50160, &qword_1EBD50118, &qword_1BE0EFD60, MEMORY[0x1E69817F8]);
  v14 = v26;
  sub_1BE050D14();
  (*(v28 + 8))(v3, v30);
  sub_1BD0DE53C(v5, &qword_1EBD50118, &qword_1BE0EFD60);
  sub_1BE052434();
  v16 = v15;
  v32 = v14;
  v33 = v13;
  swift_getOpaqueTypeConformance2();
  v17 = v27;
  sub_1BE050DE4();
  v16, v18, v19, v20, v21, v22, v23, v24;
  return (*(v29 + 8))(v7, v17);
}

__n128 sub_1BD6C9368@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50158, &qword_1BE0EFDA8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  v13 = a2[1];
  v24[0] = *a2;
  v24[1] = v13;
  v24[2] = a2[2];
  v14 = *(a3 + 16);
  if (v14 <= 2)
  {
LABEL_5:
    LODWORD(a1) = 1;
    v15 = sub_1BE04F7B4();
    goto LABEL_7;
  }

  if (a1)
  {
    if (v14 - 1 == a1)
    {
      LODWORD(a1) = 2;
      v15 = sub_1BE04F7D4();
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v15 = sub_1BE04F7C4();
LABEL_7:
  v16 = 0;
  v17 = 1;
  if (v5 > 2u)
  {
    if (v5 == 3)
    {
      v17 = 0;
      v16 = 0xC008000000000000;
    }
  }

  else if (v5 >= 2u)
  {
    v17 = 0;
    v16 = 0xBFF0000000000000;
  }

  *v12 = v15;
  *(v12 + 1) = v16;
  v12[16] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD501A0, &qword_1BE0EFE90);
  sub_1BD6C9558(a3, v5, v24, a1, &v12[*(v18 + 44)]);
  sub_1BE04F504();
  sub_1BE04EE54();
  sub_1BD0DE204(v12, a5, &qword_1EBD50158, &qword_1BE0EFDA8);
  v19 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50138, &qword_1BE0EFDA0) + 36);
  v20 = v23[5];
  *(v19 + 64) = v23[4];
  *(v19 + 80) = v20;
  *(v19 + 96) = v23[6];
  v21 = v23[1];
  *v19 = v23[0];
  *(v19 + 16) = v21;
  result = v23[3];
  *(v19 + 32) = v23[2];
  *(v19 + 48) = result;
  return result;
}

uint64_t sub_1BD6C9558@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t *a3@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v9 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD501A8, &qword_1BE0EFE98);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v115 - v14;
  v17 = *a3;
  v16 = a3[1];
  LODWORD(v125) = v9;
  v121 = a3;
  v118 = a1;
  if (v9 >= 2)
  {
    if (v9 - 2 >= 2)
    {
      result = sub_1BE053994();
      __break(1u);
      return result;
    }

    *&v137 = v17;
    *(&v137 + 1) = v16;
    sub_1BD0DDEBC();
    v17 = sub_1BE053574();
    v18 = v19;
  }

  else
  {
    v18 = sub_1BE048C84();
  }

  v123 = a5;
  v124 = v12;
  *&v137 = v17;
  *(&v137 + 1) = v18;
  sub_1BD0DDEBC();
  v20 = sub_1BE0506C4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v122 = v15;
  v120 = a4;
  if ((v125 & 0xFE) == 2)
  {
    v28 = sub_1BE050444();
  }

  else
  {
    v27 = sub_1BE050454();
    v28 = sub_1BE050314();
    v27, v29, v30, v31, v32, v33, v34, v35;
  }

  v117 = sub_1BE0505F4();
  v126 = v36;
  v38 = v37;
  v119 = v39;
  sub_1BD0DDF10(v20, v22, (v24 & 1), v39, v40, v41, v42, v43);
  v28, v44, v45, v46, v47, v48, v49, v50;
  v26, v51, v52, v53, v54, v55, v56, v57;
  KeyPath = swift_getKeyPath();
  v115 = sub_1BE0513E4();
  v128 = sub_1BE04F4F4();
  v127 = v38 & 1;
  v144 = v38 & 1;
  v58 = v121;
  v59 = v121[3];
  *&v137 = v121[2];
  *(&v137 + 1) = v59;
  sub_1BE048C84();
  v60 = sub_1BE0506C4();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  *&v131 = v118;
  BYTE8(v131) = v125;
  v67 = *(v58 + 1);
  v137 = *v58;
  v138 = v67;
  v139 = *(v58 + 2);
  v68 = sub_1BD6C9ABC(&v137);
  v69 = sub_1BE0505F4();
  v71 = v70;
  v73 = v72;
  v125 = v74;
  v68, v70, v72, v74, v75, v76, v77, v78;
  sub_1BD0DDF10(v60, v62, (v64 & 1), v79, v80, v81, v82, v83);
  v66, v84, v85, v86, v87, v88, v89, v90;
  v91 = swift_getKeyPath();
  v92 = sub_1BE051424();
  v93 = swift_getKeyPath();
  LOBYTE(v131) = v73 & 1;
  *&v137 = v69;
  *(&v137 + 1) = v71;
  LOBYTE(v138) = v73 & 1;
  *(&v138 + 1) = v125;
  *&v139 = v91;
  *(&v139 + 1) = 0x3FECCCCCCCCCCCCDLL;
  *&v140 = v92;
  *(&v140 + 1) = v93;
  LOBYTE(v141) = v120;
  sub_1BE052434();
  v95 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD501B0, &qword_1BE0EFF00);
  sub_1BD6CBA3C();
  v96 = v122;
  sub_1BE050DE4();
  v95, v97, v98, v99, v100, v101, v102, v103;
  v129[2] = v139;
  v129[3] = v140;
  v130 = v141;
  v129[0] = v137;
  v129[1] = v138;
  sub_1BD0DE53C(v129, &qword_1EBD501B0, &qword_1BE0EFF00);
  v104 = v124;
  sub_1BD0DE19C(v96, v124, &qword_1EBD501A8, &qword_1BE0EFE98);
  v106 = KeyPath;
  v105 = v117;
  *&v131 = v117;
  *(&v131 + 1) = v126;
  LOBYTE(v132) = v127;
  *(&v132 + 1) = *v143;
  DWORD1(v132) = *&v143[3];
  v107 = v119;
  *(&v132 + 1) = v119;
  *&v133 = KeyPath;
  v108 = v115;
  *(&v133 + 1) = 0x3FE3333333333333;
  *&v134 = v115;
  *(&v134 + 1) = v128;
  v135 = sub_1BD6C9A94;
  v136 = 0;
  v109 = v131;
  v110 = v132;
  v111 = v123;
  v123[3] = v134;
  v111[4] = sub_1BD6C9A94;
  v112 = v133;
  v111[1] = v110;
  v111[2] = v112;
  *v111 = v109;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD501D0, &qword_1BE0EFF20);
  sub_1BD0DE19C(v104, v111 + *(v113 + 48), &qword_1EBD501A8, &qword_1BE0EFE98);
  sub_1BD0DE19C(&v131, &v137, &qword_1EBD501D8, &unk_1BE0EFF28);
  sub_1BD0DE53C(v96, &qword_1EBD501A8, &qword_1BE0EFE98);
  sub_1BD0DE53C(v104, &qword_1EBD501A8, &qword_1BE0EFE98);
  *&v137 = v105;
  *(&v137 + 1) = v126;
  LOBYTE(v138) = v127;
  *(&v138 + 1) = *v143;
  DWORD1(v138) = *&v143[3];
  *(&v138 + 1) = v107;
  *&v139 = v106;
  *(&v139 + 1) = 0x3FE3333333333333;
  *&v140 = v108;
  *(&v140 + 1) = v128;
  v141 = sub_1BD6C9A94;
  v142 = 0;
  return sub_1BD0DE53C(&v137, &qword_1EBD501D8, &unk_1BE0EFF28);
}

uint64_t sub_1BD6C9ABC(uint64_t a1)
{
  v3 = sub_1BE050404();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE050474();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130, &qword_1BE0C7180);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - v12;
  v14 = *(v1 + 8);
  if (*(a1 + 32) == 1)
  {
    v15 = *MEMORY[0x1E6980E28];
    v16 = sub_1BE050354();
    v17 = *(v16 - 8);
    v42 = v7;
    v18 = v6;
    v19 = v3;
    v20 = v4;
    v21 = v17;
    (*(v17 + 104))(v13, v15, v16);
    (*(v21 + 56))(v13, 0, 1, v16);
    v4 = v20;
    v3 = v19;
    v6 = v18;
    v7 = v42;
    if (v14 > 1)
    {
      goto LABEL_3;
    }

LABEL_6:
    (*(v8 + 104))(v10, *MEMORY[0x1E6980F08], v7);
    v24 = sub_1BE0503C4();
    (*(v8 + 8))(v10, v7);
    sub_1BE050364();
    v22 = sub_1BE0503F4();
    v24, v25, v26, v27, v28, v29, v30, v31;
    goto LABEL_9;
  }

  v23 = sub_1BE050354();
  (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
  if (v14 <= 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v14 == 2)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E6980EF0], v7);
    v22 = sub_1BE0503C4();
    (*(v8 + 8))(v10, v7);
LABEL_9:
    sub_1BD0DE53C(v13, &qword_1EBD49130, &qword_1BE0C7180);
    return v22;
  }

  if (v14 == 3)
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E6980EF0], v7);
    v32 = sub_1BE0503C4();
    (*(v8 + 8))(v10, v7);
    (*(v4 + 104))(v6, *MEMORY[0x1E6980EA8], v3);
    v22 = sub_1BE050434();
    v32, v33, v34, v35, v36, v37, v38, v39;
    (*(v4 + 8))(v6, v3);
    goto LABEL_9;
  }

  result = sub_1BE053994();
  __break(1u);
  return result;
}

double sub_1BD6C9F5C@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  sub_1BE048C84();
  return result;
}

uint64_t sub_1BD6C9F70@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

void sub_1BD6C9F84(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46830, &unk_1BE0D73C0);
  MEMORY[0x1EEE9AC00](v49);
  v48 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - v5;
  v7 = MEMORY[0x1E69E7CC0];
  v47 = *(a1 + 16);
  if (v47)
  {
    v50 = v4;
    v8 = *(v4 + 80);
    v44 = v8;
    v45 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x1E69E7CC0] + v45;
    v10 = 0;
    v11 = 0;
    v12 = *(type metadata accessor for SEStorageUsageGroup.PassEntry(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v46 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v48;
      v16 = *(v49 + 48);
      *v48 = v10;
      sub_1BD6CBDD0(v13, v15 + v16, type metadata accessor for SEStorageUsageGroup.PassEntry);
      v17 = v6;
      sub_1BD0DE204(v15, v6, &qword_1EBD46830, &unk_1BE0D73C0);
      if (v11)
      {
        v51 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50200, &qword_1BE0EFF68);
        v21 = *(v50 + 72);
        v22 = v45;
        v51 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v51);
        if (!v21)
        {
          goto LABEL_35;
        }

        v31 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v33 = v31 / v21;
        v34 = v51;
        *(v51 + 2) = v20;
        v34[3] = 2 * (v31 / v21);
        v35 = v34 + v22;
        v36 = v14[3] >> 1;
        v37 = v36 * v21;
        if (v14[2])
        {
          v24 = v14 + v45;
          if (v34 < v14 || v35 >= v14 + v45 + v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v35[v37];
        v11 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;
        v14, v24, v25, v26, v27, v28, v29, v30;
      }

      v39 = v50;
      v6 = v17;
      v40 = __OFSUB__(v11--, 1);
      if (v40)
      {
        break;
      }

      ++v10;
      sub_1BD0DE204(v17, v9, &qword_1EBD46830, &unk_1BE0D73C0);
      v9 += *(v39 + 72);
      v13 += v46;
      v7 = v51;
      v14 = v51;
      if (v47 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v41 = v7[3];
  if (v41 >= 2)
  {
    v42 = v41 >> 1;
    v40 = __OFSUB__(v42, v11);
    v43 = v42 - v11;
    if (v40)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v43;
  }
}

void sub_1BD6CA2E0(double a1, double a2, double a3)
{
  v6 = sub_1BD6CBD5C(a1, a2, a3);
  v14 = v6;
  if (v6)
  {
    if (v6 <= 0)
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA0, &qword_1BE0BD170);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v17 = v16 - 32;
      if (v16 < 32)
      {
        v17 = v16 - 25;
      }

      *(v15 + 2) = v14;
      *(v15 + 3) = 2 * (v17 >> 3);
    }

    sub_1BE048964();
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v15 + 3);
  v15, v7, v8, v9, v10, v11, v12, v13;
  if (v14 < 0)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v19 = v15 + 4;
  v20 = v18 >> 1;
  v21 = 0;
  v22 = 0;
  if (v14)
  {
    v20 -= v14;
    i = a1;
    while (1)
    {
      v24 = i;
      v25 = i <= a2;
      if (a3 > 0.0)
      {
        v25 = i >= a2;
      }

      if (v25)
      {
        if (v21 & 1 | (i != a2))
        {
          goto LABEL_50;
        }

        v21 = 1;
      }

      else
      {
        v26 = __OFADD__(v22++, 1);
        if (v26)
        {
          goto LABEL_51;
        }

        i = a1 + v22 * a3;
      }

      *v19++ = v24;
      if (!--v14)
      {
        goto LABEL_21;
      }
    }
  }

  for (i = a1; ; i = v28)
  {
LABEL_21:
    v27 = i <= a2;
    if (a3 > 0.0)
    {
      v27 = i >= a2;
    }

    if (!v27)
    {
      v26 = __OFADD__(v22++, 1);
      if (v26)
      {
        goto LABEL_48;
      }

      v28 = a1 + v22 * a3;
      if (v20)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }

    if ((i != a2) | v21 & 1)
    {
      break;
    }

    v21 = 1;
    v28 = i;
    if (v20)
    {
      v28 = i;
      goto LABEL_41;
    }

LABEL_29:
    v29 = *(v15 + 3);
    if (((v29 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_49;
    }

    v30 = v29 & 0xFFFFFFFFFFFFFFFELL;
    if (v30 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v30;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BBA0, &qword_1BE0BD170);
    v32 = swift_allocObject();
    v33 = _swift_stdlib_malloc_size(v32);
    v41 = v33 - 32;
    if (v33 < 32)
    {
      v41 = v33 - 25;
    }

    v42 = v41 >> 3;
    *(v32 + 2) = v31;
    *(v32 + 3) = 2 * (v41 >> 3);
    v43 = (v32 + 4);
    v44 = *(v15 + 3) >> 1;
    if (*(v15 + 2))
    {
      v34 = v15 + 4;
      if (v32 != v15 || v43 >= v34 + 8 * v44)
      {
        memmove(v32 + 4, v34, 8 * v44);
      }

      v15[2] = 0.0;
    }

    v19 = (v43 + 8 * v44);
    v20 = (v42 & 0x7FFFFFFFFFFFFFFFLL) - v44;
    v15, v34, v35, v36, v37, v38, v39, v40;
    v15 = v32;
LABEL_41:
    v26 = __OFSUB__(v20--, 1);
    if (v26)
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    *v19++ = i;
  }

  v45 = *(v15 + 3);
  if (v45 < 2)
  {
    return;
  }

  v46 = v45 >> 1;
  v26 = __OFSUB__(v46, v20);
  v47 = v46 - v20;
  if (!v26)
  {
    *(v15 + 2) = v47;
    return;
  }

LABEL_53:
  __break(1u);
}

void sub_1BD6CA5A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v3);
      if (v4)
      {
        sub_1BE048C84();
        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD501F0, &qword_1BE0EFF50);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          sub_1BE048C84();
          *(v2 + 2) = 0;
        }

        else
        {
          sub_1BE048C84();
        }

        v2, v20, v21, v22, v23, v24, v25, v26;
        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v27 = *(v2 + 3);
  if (v27 >= 2)
  {
    v28 = v27 >> 1;
    v8 = __OFSUB__(v28, v4);
    v29 = v28 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v29;
  }
}

void sub_1BD6CA734(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (a1 + 72);
    v34 = *(a1 + 16);
    while (1)
    {
      v7 = *(v6 - 4);
      v8 = *(v6 - 2);
      v35 = *(v6 - 3);
      v36 = *(v6 - 5);
      v9 = *v6;
      v10 = *(v6 - 8);
      if (v4)
      {
        sub_1BE048C84();
        sub_1BE048C84();
        v11 = v9;
        v12 = __OFSUB__(v4--, 1);
        if (v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v13 = v2[3];
        if (((v13 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
        if (v14 <= 1)
        {
          v15 = 1;
        }

        else
        {
          v15 = v14;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD501E0, &unk_1BE0EFF38);
        v16 = swift_allocObject();
        v17 = (_swift_stdlib_malloc_size(v16) - 32) / 56;
        v16[2] = v15;
        v16[3] = 2 * v17;
        v18 = v16 + 4;
        v19 = v2[3] >> 1;
        v5 = &v16[7 * v19 + 4];
        v20 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - v19;
        if (v2[2])
        {
          if (v16 != v2 || v18 >= &v2[7 * v19 + 4])
          {
            memmove(v18, v2 + 4, 56 * v19);
          }

          sub_1BE048C84();
          sub_1BE048C84();
          v22 = v9;
          v2[2] = 0;
        }

        else
        {
          sub_1BE048C84();
          sub_1BE048C84();
          v30 = v9;
        }

        v2, v23, v24, v25, v26, v27, v28, v29;
        v2 = v16;
        v1 = v34;
        v12 = __OFSUB__(v20, 1);
        v4 = v20 - 1;
        if (v12)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }

      v6 += 6;
      *v5 = v3;
      *(v5 + 8) = v36;
      *(v5 + 16) = v7;
      *(v5 + 24) = v35;
      *(v5 + 32) = v8;
      *(v5 + 40) = v10;
      *(v5 + 48) = v9;
      v5 += 56;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v31 = v2[3];
  if (v31 >= 2)
  {
    v32 = v31 >> 1;
    v12 = __OFSUB__(v32, v4);
    v33 = v32 - v4;
    if (v12)
    {
      goto LABEL_30;
    }

    v2[2] = v33;
  }
}

unint64_t sub_1BD6CA974()
{
  result = qword_1EBD50148;
  if (!qword_1EBD50148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50138, &qword_1BE0EFDA0);
    sub_1BD0DE4F4(&qword_1EBD50150, &qword_1EBD50158, &qword_1BE0EFDA8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50148);
  }

  return result;
}

unint64_t sub_1BD6CAA4C(uint64_t a1)
{
  result = sub_1BD6CAA74();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BD6CAA74()
{
  result = qword_1EBD50168;
  if (!qword_1EBD50168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50168);
  }

  return result;
}

unint64_t sub_1BD6CAAD8()
{
  result = qword_1EBD50170;
  if (!qword_1EBD50170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50178, &unk_1BE0EFE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD50118, &qword_1BE0EFD60);
    sub_1BD0DE4F4(&qword_1EBD50160, &qword_1EBD50118, &qword_1BE0EFD60, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50170);
  }

  return result;
}

void sub_1BD6CABD4(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50180, &qword_1BE0F4750);
  MEMORY[0x1EEE9AC00](v49);
  v48 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - v5;
  v7 = MEMORY[0x1E69E7CC0];
  v47 = *(a1 + 16);
  if (v47)
  {
    v50 = v4;
    v8 = *(v4 + 80);
    v44 = v8;
    v45 = (v8 + 32) & ~v8;
    v9 = MEMORY[0x1E69E7CC0] + v45;
    v10 = 0;
    v11 = 0;
    v12 = *(_s31SpendingSummaryDetailsViewModelVMa(0) - 8);
    v13 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v46 = *(v12 + 72);
    v14 = v7;
    while (1)
    {
      v15 = v48;
      v16 = *(v49 + 48);
      *v48 = v10;
      sub_1BD6CBDD0(v13, v15 + v16, _s31SpendingSummaryDetailsViewModelVMa);
      v17 = v6;
      sub_1BD0DE204(v15, v6, &qword_1EBD50180, &qword_1BE0F4750);
      if (v11)
      {
        v51 = v14;
      }

      else
      {
        v18 = v14[3];
        if (((v18 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50188, &qword_1BE0EFE80);
        v21 = *(v50 + 72);
        v22 = v45;
        v51 = swift_allocObject();
        v23 = _swift_stdlib_malloc_size(v51);
        if (!v21)
        {
          goto LABEL_35;
        }

        v31 = v23 - v22;
        if (v23 - v22 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_36;
        }

        v33 = v31 / v21;
        v34 = v51;
        *(v51 + 2) = v20;
        v34[3] = 2 * (v31 / v21);
        v35 = v34 + v22;
        v36 = v14[3] >> 1;
        v37 = v36 * v21;
        if (v14[2])
        {
          v24 = v14 + v45;
          if (v34 < v14 || v35 >= v14 + v45 + v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v34 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v14[2] = 0;
        }

        v9 = &v35[v37];
        v11 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v36;
        v14, v24, v25, v26, v27, v28, v29, v30;
      }

      v39 = v50;
      v6 = v17;
      v40 = __OFSUB__(v11--, 1);
      if (v40)
      {
        break;
      }

      ++v10;
      sub_1BD0DE204(v17, v9, &qword_1EBD50180, &qword_1BE0F4750);
      v9 += *(v39 + 72);
      v13 += v46;
      v7 = v51;
      v14 = v51;
      if (v47 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v11 = 0;
LABEL_29:
  v41 = v7[3];
  if (v41 >= 2)
  {
    v42 = v41 >> 1;
    v40 = __OFSUB__(v42, v11);
    v43 = v42 - v11;
    if (v40)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v7[2] = v43;
  }
}

void sub_1BD6CAF44(void *a1, void (*a2)(char *), uint64_t a3)
{
  v116 = a3;
  v118 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50190, &qword_1BE106630);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v120 = v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v115 = v113 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v113 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v124 = v113 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v113 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v123 = v113 - v17;
  v132 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  v18 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v117 = v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v127 = v113 - v28;
  v29 = a1[2];
  v119 = v15;
  if (!v29)
  {
    v32 = MEMORY[0x1E69E7CC0];
    v35 = *(MEMORY[0x1E69E7CC0] + 24);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA80, &qword_1BE0BFCC0);
  v30 = *(v18 + 72);
  v31 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v32 = swift_allocObject();
  v33 = _swift_stdlib_malloc_size(v32);
  if (!v30)
  {
    goto LABEL_78;
  }

  if (v33 - v31 != 0x8000000000000000 || v30 != -1)
  {
    v35 = 2 * ((v33 - v31) / v30);
    v32[2] = v29;
    v32[3] = v35;
    sub_1BE048964();
LABEL_9:
    v32, v21, v22, v23, v24, v25, v26, v27;
    v36 = a1 + 8;
    v37 = -1;
    v38 = -1 << *(a1 + 32);
    if (-v38 < 64)
    {
      v37 = ~(-1 << -v38);
    }

    v39 = v37 & a1[8];
    v40 = *(v18 + 80);
    v113[0] = (v40 + 32) & ~v40;
    v113[1] = v40;
    v41 = v32 + v113[0];
    v42 = (63 - v38) >> 6;
    v121 = a1;
    v131 = v18;
    v125 = a1 + 8;
    if (v29)
    {
      v129 = (v18 + 56);
      v130 = v32;
      v126 = (v18 + 48);
      v114 = v29;
      v128 = (v35 >> 1) - v29;
      sub_1BE048C84();
      v43 = 0;
      v29 = 0;
      while (1)
      {
        v122 = v41;
        if (!v39)
        {
          break;
        }

        v44 = v29;
LABEL_23:
        v47 = __clz(__rbit64(v39));
        v39 &= v39 - 1;
        v48 = v115;
        sub_1BD6CBDD0(a1[7] + *(v18 + 72) * (v47 | (v44 << 6)), v115, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
        v49 = 0;
LABEL_24:
        v50 = *v129;
        v51 = 1;
        v52 = v132;
        (*v129)(v48, v49, 1, v132);
        v53 = v48;
        v54 = v120;
        sub_1BD0DE204(v53, v120, &qword_1EBD50190, &qword_1BE106630);
        v55 = *v126;
        if ((*v126)(v54, 1, v52) != 1)
        {
          v56 = v117;
          sub_1BD6CB780(v120, v117);
          v118(v56);
          sub_1BD6CB7E4(v56);
          v51 = 0;
        }

        v57 = v51;
        v58 = v132;
        v50(v10, v57, 1, v132);
        v59 = v55(v10, 1, v58);
        v60 = v122;
        if (v59 == 1)
        {
          goto LABEL_81;
        }

        v43 = (v43 + 1);
        sub_1BD6CB780(v10, v122);
        v18 = v131;
        v41 = v60 + *(v131 + 72);
        a1 = v121;
        v36 = v125;
        if (v43 == v114)
        {
          v32 = v130;
          goto LABEL_31;
        }
      }

      if (v42 <= v29 + 1)
      {
        v45 = v29 + 1;
      }

      else
      {
        v45 = v42;
      }

      v46 = (v45 - 1);
      while (1)
      {
        v44 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v44 >= v42)
        {
          v39 = 0;
          v49 = 1;
          v29 = v46;
          v48 = v115;
          goto LABEL_24;
        }

        v39 = v36[v44];
        v29 = (v29 + 1);
        if (v39)
        {
          v29 = v44;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v128 = v35 >> 1;
      sub_1BE048C84();
LABEL_31:
      v61 = (v18 + 56);
      v129 = (v18 + 48);
      v130 = v32;
      if (v39)
      {
        while (1)
        {
          v62 = v29;
LABEL_40:
          v65 = __clz(__rbit64(v39));
          v39 &= v39 - 1;
          v66 = a1;
          v67 = a1[7] + *(v18 + 72) * (v65 | (v62 << 6));
          v68 = v119;
          sub_1BD6CBDD0(v67, v119, type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection);
          v69 = 0;
          v126 = v62;
LABEL_41:
          v70 = *v61;
          v71 = v132;
          (*v61)(v68, v69, 1, v132);
          v72 = v124;
          sub_1BD0DE204(v68, v124, &qword_1EBD50190, &qword_1BE106630);
          v73 = *v129;
          if ((*v129)(v72, 1, v71) != 1)
          {
            v74 = v117;
            sub_1BD6CB780(v124, v117);
            v118(v74);
            sub_1BD6CB7E4(v74);
          }

          v75 = v123;
          v76 = v132;
          v70();
          a1 = v66;
          if ((v73)(v75, 1, v76) == 1)
          {
            break;
          }

          sub_1BD6CB780(v75, v127);
          v84 = v130;
          if (v128)
          {
            v85 = v130;
            v18 = v131;
            v36 = v125;
            v86 = v128 - 1;
            if (__OFSUB__(v128, 1))
            {
              goto LABEL_74;
            }
          }

          else
          {
            v87 = v130[3];
            v88 = v131;
            v36 = v125;
            if (((v87 >> 1) + 0x4000000000000000) < 0)
            {
              goto LABEL_75;
            }

            v89 = v87 & 0xFFFFFFFFFFFFFFFELL;
            if (v89 <= 1)
            {
              v90 = 1;
            }

            else
            {
              v90 = v89;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CA80, &qword_1BE0BFCC0);
            v91 = *(v88 + 72);
            v92 = v113[0];
            v85 = swift_allocObject();
            v93 = _swift_stdlib_malloc_size(v85);
            if (!v91)
            {
              goto LABEL_76;
            }

            v101 = v93 - v92;
            if (v93 - v92 == 0x8000000000000000 && v91 == -1)
            {
              goto LABEL_77;
            }

            v103 = v92;
            v104 = v101 / v91;
            v85[2] = v90;
            v85[3] = 2 * (v101 / v91);
            v105 = v85 + v103;
            v106 = v84[3] >> 1;
            v107 = v106 * v91;
            if (v84[2])
            {
              v94 = v84 + v103;
              if (v85 < v84 || v105 >= &v94[v107])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v85 != v84)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v84[2] = 0;
            }

            v41 = &v105[v107];
            v108 = (v104 & 0x7FFFFFFFFFFFFFFFLL) - v106;
            v84, v94, v95, v96, v97, v98, v99, v100;
            a1 = v121;
            v18 = v131;
            v109 = __OFSUB__(v108, 1);
            v86 = v108 - 1;
            if (v109)
            {
              goto LABEL_74;
            }
          }

          v128 = v86;
          sub_1BD6CB780(v127, v41);
          v41 += *(v18 + 72);
          v29 = v126;
          v130 = v85;
          if (!v39)
          {
            goto LABEL_33;
          }
        }

        v66, v77, v78, v79, v80, v81, v82, v83;
        sub_1BD0DE53C(v75, &qword_1EBD50190, &qword_1BE106630);
        v110 = v130[3];
        if (v110 < 2)
        {
          return;
        }

        v111 = v110 >> 1;
        v109 = __OFSUB__(v111, v128);
        v112 = v111 - v128;
        if (!v109)
        {
          v130[2] = v112;
          return;
        }

        goto LABEL_79;
      }

LABEL_33:
      if (v42 <= v29 + 1)
      {
        v63 = v29 + 1;
      }

      else
      {
        v63 = v42;
      }

      v64 = (v63 - 1);
      while (1)
      {
        v62 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v62 >= v42)
        {
          v126 = v64;
          v66 = a1;
          v39 = 0;
          v69 = 1;
          v68 = v119;
          goto LABEL_41;
        }

        v39 = v36[v62];
        v29 = (v29 + 1);
        if (v39)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
  }

  __break(1u);
LABEL_81:
  __break(1u);
}

uint64_t sub_1BD6CB780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6CB7E4(uint64_t a1)
{
  v2 = type metadata accessor for MerchantTokenListViewModel.MerchantTokenSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6CB854(unint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = v3 & 0xC000000000000001;
    v9 = (MEMORY[0x1E69E7CC0] + 32);
    v10 = v3 & 0xFFFFFFFFFFFFFF8;
    v35 = v3 & 0xC000000000000001;
    v36 = v3;
    v34 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        result = MEMORY[0x1BFB40900](v6, v3);
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v6 >= *(v10 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1BE053704();
          v4 = result;
          goto LABEL_3;
        }

        result = *(v3 + 8 * v6 + 32);
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v7)
      {
        v12 = v5[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v13 = v4;
        v14 = result;
        v15 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v17 = swift_allocObject();
        v18 = _swift_stdlib_malloc_size(v17);
        v26 = v18 - 32;
        if (v18 < 32)
        {
          v26 = v18 - 17;
        }

        v27 = v26 >> 4;
        v17[2] = v16;
        v17[3] = 2 * (v26 >> 4);
        v28 = (v17 + 4);
        v29 = v5[3] >> 1;
        if (v5[2])
        {
          v19 = v5 + 4;
          if (v17 != v5 || v28 >= v19 + 16 * v29)
          {
            memmove(v17 + 4, v19, 16 * v29);
          }

          v5[2] = 0;
        }

        v9 = (v28 + 16 * v29);
        v7 = (v27 & 0x7FFFFFFFFFFFFFFFLL) - v29;
        v5, v19, v20, v21, v22, v23, v24, v25;
        v5 = v17;
        result = v14;
        v4 = v13;
        v8 = v35;
        v3 = v36;
        v10 = v34;
      }

      v30 = __OFSUB__(v7--, 1);
      if (v30)
      {
        goto LABEL_33;
      }

      *v9 = v6;
      v9[1] = result;
      v9 += 2;
      ++v6;
      if (v11 == v4)
      {
        goto LABEL_28;
      }
    }
  }

  v7 = 0;
LABEL_28:
  v31 = v5[3];
  if (v31 < 2)
  {
    return v5;
  }

  v32 = v31 >> 1;
  v30 = __OFSUB__(v32, v7);
  v33 = v32 - v7;
  if (!v30)
  {
    v5[2] = v33;
    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1BD6CBA3C()
{
  result = qword_1EBD501B8;
  if (!qword_1EBD501B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD501B0, &qword_1BE0EFF00);
    sub_1BD6CBAF4();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD501B8);
  }

  return result;
}

unint64_t sub_1BD6CBAF4()
{
  result = qword_1EBD501C0;
  if (!qword_1EBD501C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD501C8, &qword_1BE0EFF08);
    sub_1BD166FEC();
    sub_1BD0DE4F4(&qword_1EBD386E8, &unk_1EBD51210, &qword_1BE0C5180, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD501C0);
  }

  return result;
}

void sub_1BD6CBBAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (a1 + 32);
    v33 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v6 + 1);
      v10 = *(v6 + 2);
      if (v4)
      {
        sub_1BE048964();
        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v12 = v2[3];
        if (((v12 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_31;
        }

        v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD501F8, &unk_1BE0EFF58);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 1;
        }

        v18 = v17 >> 5;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 5);
        v19 = v15 + 4;
        v20 = v2[3] >> 1;
        v5 = &v15[4 * v20 + 4];
        v21 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;
        if (v2[2])
        {
          if (v15 != v2 || v19 >= &v2[4 * v20 + 4])
          {
            memmove(v19, v2 + 4, 32 * v20);
          }

          sub_1BE048964();
          v2[2] = 0;
        }

        else
        {
          sub_1BE048964();
        }

        v2, v23, v24, v25, v26, v27, v28, v29;
        v2 = v15;
        v1 = v33;
        v11 = __OFSUB__(v21, 1);
        v4 = v21 - 1;
        if (v11)
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      *(v5 + 8) = v7;
      *(v5 + 9) = v8;
      *(v5 + 16) = v9;
      *(v5 + 24) = v10;
      v5 += 32;
      v6 += 24;
      if (v1 == ++v3)
      {
        goto LABEL_26;
      }
    }
  }

  v4 = 0;
LABEL_26:
  v30 = v2[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v11 = __OFSUB__(v31, v4);
    v32 = v31 - v4;
    if (v11)
    {
      goto LABEL_32;
    }

    v2[2] = v32;
  }
}

uint64_t sub_1BD6CBD5C(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1BD6CBDD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI31PaymentOfferSelectorOptionModelV015ExpandedContentH0VSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD6CBE60(unsigned __int8 a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1BE053D04();
    if (a1)
    {
      v4 = (a1 == 1 ? 0xED00006572757470 : 0xEE006E6F69736976);
    }

    else
    {
      v4 = 0xEE007265626D754ELL;
    }

    sub_1BE052524();
    v4, v5, v6, v7, v8, v9, v10, v11;
    v12 = sub_1BE053D64();
    v19 = -1 << *(a2 + 32);
    v20 = v12 & ~v19;
    if ((*(a2 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
    {
      v21 = ~v19;
      while (1)
      {
        if (*(*(a2 + 48) + v20))
        {
          if (*(*(a2 + 48) + v20) == 1)
          {
            v22 = 0x61436172656D6163;
            v23 = 0xED00006572757470;
            v24 = a1;
            if (!a1)
            {
              goto LABEL_12;
            }

            goto LABEL_17;
          }

          v22 = 0x6F72506F54706174;
          v27 = 0x6E6F69736976;
        }

        else
        {
          v22 = 0x6472614365707974;
          v27 = 0x7265626D754ELL;
        }

        v23 = (v27 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000);
        v24 = a1;
        if (!a1)
        {
LABEL_12:
          v25 = 0x6472614365707974;
          v26 = 0xEE007265626D754ELL;
          if (v22 != 0x6472614365707974)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_17:
        if (v24 == 1)
        {
          v25 = 0x61436172656D6163;
        }

        else
        {
          v25 = 0x6F72506F54706174;
        }

        if (v24 == 1)
        {
          v26 = 0xED00006572757470;
        }

        else
        {
          v26 = 0xEE006E6F69736976;
        }

        if (v22 != v25)
        {
          goto LABEL_25;
        }

LABEL_24:
        if (v23 == v26)
        {
          v23, v13, v25, v14, v15, v16, v17, v18;
          v26, v44, v45, v46, v47, v48, v49, v50;
          v28 = 1;
          return v28 & 1;
        }

LABEL_25:
        v28 = sub_1BE053B84();
        v23, v29, v30, v31, v32, v33, v34, v35;
        v26, v36, v37, v38, v39, v40, v41, v42;
        if ((v28 & 1) == 0)
        {
          v20 = (v20 + 1) & v21;
          if ((*(a2 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }
  }

  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1BD6CC0DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1BE052434(), v4 = v3, sub_1BE053D04(), sub_1BE052524(), v5 = sub_1BE053D64(), v4, v6, v7, v8, v9, v10, v11, v12, v13 = -1 << *(a2 + 32), v14 = v5 & ~v13, ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = sub_1BE052434();
      v18 = v17;
      v19 = sub_1BE052434();
      v27 = v20;
      if (v16 == v19 && v18 == v20)
      {
        break;
      }

      v29 = sub_1BE053B84();
      v18, v30, v31, v32, v33, v34, v35, v36;
      v27, v37, v38, v39, v40, v41, v42, v43;
      if ((v29 & 1) == 0)
      {
        v14 = (v14 + 1) & v15;
        if ((*(a2 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          continue;
        }
      }

      return v29 & 1;
    }

    v18, v20, v21, v22, v23, v24, v25, v26;
    v27, v45, v46, v47, v48, v49, v50, v51;
    v29 = 1;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_1BD6CC230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v6 = sub_1BE053D64();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1BE053B84() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1BD6CC328(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_51;
  }

  sub_1BE053D04();
  v4 = 0xE400000000000000;
  v5 = 0xEC000000726F7272;
  v6 = 0xEA0000000000656CLL;
  if (a1 != 3)
  {
    v6 = 0xE800000000000000;
  }

  if (a1 != 2)
  {
    v5 = v6;
  }

  if (a1)
  {
    v4 = 0xE700000000000000;
  }

  v7 = (a1 <= 1u ? v4 : v5);
  sub_1BE052524();
  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1BE053D64();
  v22 = -1 << *(a2 + 32);
  v23 = v15 & ~v22;
  if ((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v58 = ~v22;
    v24 = 0xEA0000000000656CLL;
    v25 = 0x676E6964616F6CLL;
    v26 = 0xE400000000000000;
    while (1)
    {
      v27 = *(*(a2 + 48) + v23);
      if (v27 <= 1)
      {
        if (*(*(a2 + 48) + v23))
        {
          v28 = v25;
        }

        else
        {
          v28 = 1701736302;
        }

        if (*(*(a2 + 48) + v23))
        {
          v29 = 0xE700000000000000;
        }

        else
        {
          v29 = 0xE400000000000000;
        }
      }

      else if (v27 == 2)
      {
        v28 = 0x45676E6964616F6CLL;
        v29 = 0xEC000000726F7272;
      }

      else
      {
        if (v27 == 3)
        {
          v28 = 0x626967696C656E69;
        }

        else
        {
          v28 = 0x656C626967696C65;
        }

        if (v27 == 3)
        {
          v29 = 0xEA0000000000656CLL;
        }

        else
        {
          v29 = 0xE800000000000000;
        }
      }

      if (a1 == 3)
      {
        v30 = 0x626967696C656E69;
      }

      else
      {
        v30 = 0x656C626967696C65;
      }

      if (a1 != 3)
      {
        v24 = 0xE800000000000000;
      }

      if (a1 == 2)
      {
        v30 = 0x45676E6964616F6CLL;
        v24 = 0xEC000000726F7272;
      }

      if (a1)
      {
        v31 = v25;
      }

      else
      {
        v31 = 1701736302;
      }

      if (a1)
      {
        v26 = 0xE700000000000000;
      }

      v32 = (a1 <= 1u ? v31 : v30);
      v33 = (a1 <= 1u ? v26 : v24);
      if (v28 == v32 && v29 == v33)
      {
        break;
      }

      v34 = v25;
      v35 = sub_1BE053B84();
      v29, v36, v37, v38, v39, v40, v41, v42;
      v33, v43, v44, v45, v46, v47, v48, v49;
      if ((v35 & 1) == 0)
      {
        v23 = (v23 + 1) & v58;
        v24 = 0xEA0000000000656CLL;
        v25 = v34;
        v26 = 0xE400000000000000;
        if ((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          continue;
        }
      }

      return v35 & 1;
    }

    v29, v16, v32, v17, v18, v19, v20, v21;
    v33, v51, v52, v53, v54, v55, v56, v57;
    v35 = 1;
  }

  else
  {
LABEL_51:
    v35 = 0;
  }

  return v35 & 1;
}

uint64_t sub_1BD6CC5F8(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_55;
  }

  sub_1BE053D04();
  v4 = 0x80000001BE117FC0;
  v5 = 0x80000001BE117FF0;
  if (a1 != 4)
  {
    v5 = 0x80000001BE118020;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 0x80000001BE117FA0;
  if (a1 == 1)
  {
    v6 = 0xEF73736150656C62;
  }

  if (!a1)
  {
    v6 = 0x80000001BE117F70;
  }

  v7 = (a1 <= 2u ? v6 : v4);
  sub_1BE052524();
  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = sub_1BE053D64();
  v22 = -1 << *(a2 + 32);
  v23 = v15 & ~v22;
  if ((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v58 = ~v22;
    while (1)
    {
      v24 = *(*(a2 + 48) + v23);
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = 0xD00000000000002ALL;
          v26 = 0x80000001BE117FC0;
        }

        else
        {
          if (v24 == 4)
          {
            v25 = 0xD000000000000028;
          }

          else
          {
            v25 = 0xD000000000000017;
          }

          if (v24 == 4)
          {
            v26 = 0x80000001BE117FF0;
          }

          else
          {
            v26 = 0x80000001BE118020;
          }
        }
      }

      else if (*(*(a2 + 48) + v23))
      {
        if (v24 == 1)
        {
          v25 = 0x616C696176616E75;
        }

        else
        {
          v25 = 0xD000000000000016;
        }

        if (v24 == 1)
        {
          v26 = 0xEF73736150656C62;
        }

        else
        {
          v26 = 0x80000001BE117FA0;
        }
      }

      else
      {
        v25 = 0xD000000000000015;
        v26 = 0x80000001BE117F70;
      }

      v27 = 0xD00000000000002ALL;
      v28 = 0xD000000000000028;
      if (a1 == 4)
      {
        v29 = 0x80000001BE117FF0;
      }

      else
      {
        v28 = 0xD000000000000017;
        v29 = 0x80000001BE118020;
      }

      if (a1 == 3)
      {
        v30 = 0x80000001BE117FC0;
      }

      else
      {
        v27 = v28;
        v30 = v29;
      }

      v31 = 0x616C696176616E75;
      if (a1 != 1)
      {
        v31 = 0xD000000000000016;
      }

      v32 = 0xEF73736150656C62;
      if (a1 != 1)
      {
        v32 = 0x80000001BE117FA0;
      }

      if (!a1)
      {
        v31 = 0xD000000000000015;
        v32 = 0x80000001BE117F70;
      }

      v33 = (a1 <= 2u ? v31 : v27);
      v34 = (a1 <= 2u ? v32 : v30);
      if (v25 == v33 && v26 == v34)
      {
        break;
      }

      v35 = sub_1BE053B84();
      v26, v36, v37, v38, v39, v40, v41, v42;
      v34, v43, v44, v45, v46, v47, v48, v49;
      if ((v35 & 1) == 0)
      {
        v23 = (v23 + 1) & v58;
        if ((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          continue;
        }
      }

      return v35 & 1;
    }

    v26, v16, v33, v17, v18, v19, v20, v21;
    v34, v51, v52, v53, v54, v55, v56, v57;
    v35 = 1;
  }

  else
  {
LABEL_55:
    v35 = 0;
  }

  return v35 & 1;
}

BOOL sub_1BD6CC8F4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](a1);
  v4 = sub_1BE053D64();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1BD6CC9D4(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v5 = a1;
    v6 = sub_1BE053754();
  }

  else if (*(a2 + 16) && (sub_1BD0E5E8C(0, a3, a4), v7 = sub_1BE053064(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v9);
      v6 = sub_1BE053074();

      if (v6)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL sub_1BD6CCAE4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_1BD6CCCA4(v12, v14);
}

BOOL sub_1BD6CCB8C(_BOOL8 result, int a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  if (result)
  {
    if (!a4)
    {
      return 0;
    }

    v7 = result;
    v10 = a3;
    v11 = a6;
    sub_1BD0E5E8C(0, &qword_1EBD43D60, 0x1E69B85D0);
    v12 = a4;
    v13 = v7;
    LOBYTE(v7) = sub_1BE053074();

    result = 0;
    if ((v7 & 1) == 0)
    {
      return result;
    }

    a6 = v11;
    a3 = v10;
    if ((a2 ^ a5))
    {
      return result;
    }
  }

  else if (a4 || ((a2 ^ a5) & 1) != 0)
  {
    return result;
  }

  v14 = *(a3 + 16);
  if (v14 != *(a6 + 16))
  {
    return 0;
  }

  if (!v14 || a3 == a6)
  {
    return 1;
  }

  v15 = (a3 + 32);
  v16 = (a6 + 32);
  while (v14)
  {
    v18 = *v15++;
    v17 = v18;
    v19 = *v16++;
    result = v17 == v19;
    if (v17 != v19 || v14-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1BD6CCCA4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  if ((a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_1BE053B84() & 1) == 0 || (sub_1BE051394() & 1) == 0 || (a1[7] != *(a2 + 56) || a1[8] != *(a2 + 64)) && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[10];
  v7 = *(a2 + 80);
  if (v6)
  {
    if (!v7 || (a1[9] != *(a2 + 72) || v6 != v7) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 88) ^ *(a2 + 88)) & 1) != 0 || ((*(a1 + 89) ^ *(a2 + 89)) & 1) != 0 || ((*(a1 + 90) ^ *(a2 + 90)))
  {
    return 0;
  }

  v9 = a1[14];
  v10 = *(a2 + 112);
  if (!v9)
  {
    return !v10;
  }

  if (!v10)
  {
    return 0;
  }

  v11 = a1[12];
  v12 = a1[13];
  v13 = *(a2 + 96);
  v14 = *(a2 + 104);
  v15 = v13;
  sub_1BE048C84();
  LOBYTE(v13) = sub_1BD6CCB8C(v11, v12 & 1, v9, v13, v14 & 1, v10);
  v10, v16, v17, v18, v19, v20, v21, v22;

  return (v13 & 1) != 0;
}

void sub_1BD6CCE5C(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BE051414();
  if (a1)
  {
    v11 = a1;
    v12 = [v11 localizedPayInFullTitleOverride];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1BE052434();
      v16 = v15;

      goto LABEL_8;
    }
  }

  (*(v7 + 104))(v9, *MEMORY[0x1E69B8068], v6);
  v17 = PKPassKitBundle();
  if (v17)
  {
    v18 = v17;
    v14 = sub_1BE04B6F4();
    v16 = v19;

    (*(v7 + 8))(v9, v6);
    if (!a1)
    {
      goto LABEL_11;
    }

    v11 = a1;
LABEL_8:
    v20 = v11;
    v21 = [v20 localizedPayInFullSubtitleOverride];
    if (v21)
    {
      v22 = v21;
      a1 = sub_1BE052434();
      v24 = v23;

LABEL_12:
      v25[8] = 1;
      *a3 = 0x665F6E695F796170;
      *(a3 + 8) = 0xEB000000006C6C75;
      *(a3 + 16) = 0;
      *(a3 + 24) = 1;
      *(a3 + 32) = 0x6163746964657263;
      *(a3 + 40) = 0xEA00000000006472;
      *(a3 + 48) = v10;
      *(a3 + 56) = v14;
      *(a3 + 64) = v16;
      *(a3 + 72) = a1;
      *(a3 + 80) = v24;
      *(a3 + 88) = a2 & 1;
      *(a3 + 89) = 0;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      *(a3 + 96) = 0;
      return;
    }

    a1 = 0;
LABEL_11:
    v24 = 0;
    goto LABEL_12;
  }

  __break(1u);
}

id sub_1BD6CD0B4(void *a1, void *a2, void *a3)
{
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = [a2 selectedInstallmentOffer];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 dynamicContent];
      if (!v13)
      {
        goto LABEL_13;
      }

      v14 = v13;
      v15 = [v13 dynamicContentPageForPageType_];

      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = [v15 title];
      if (v16)
      {
LABEL_6:
        v17 = v16;
        v18 = sub_1BE052434();

LABEL_18:
        return v18;
      }

LABEL_12:

LABEL_13:
    }
  }

  else if (a3)
  {
    v19 = [a3 selectedInstallmentOffer];
    if (v19)
    {
      v12 = v19;
      v20 = [v19 dynamicContent];
      if (!v20)
      {
        goto LABEL_13;
      }

      v21 = v20;
      v15 = [v20 dynamicContentPageForPageType_];

      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = [v15 title];
      if (v16)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  v22 = [a1 dynamicContent];
  if (v22)
  {
    v23 = v22;
    v12 = [v22 dynamicContentPageForPageType_];

    if (v12)
    {
      v24 = [v12 title];
      if (v24)
      {
        v25 = v24;
        v18 = sub_1BE052434();

        goto LABEL_18;
      }
    }
  }

  v26 = [a1 programName];
  if (v26 || (v26 = [a1 localizedTitleOverride]) != 0)
  {
    v27 = v26;
    v18 = sub_1BE052434();

    return v18;
  }

  (*(v7 + 104))(v10, *MEMORY[0x1E69B8068], v6);
  result = PKPassKitBundle();
  if (result)
  {
    v29 = result;
    v30 = sub_1BE04B6F4();

    (*(v7 + 8))(v10, v6);
    return v30;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD6CD3F4(void *a1, uint64_t a2, char a3, void *a4, void *a5, char a6)
{
  v12 = sub_1BE04BD74();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - v20;
  if ((a6 & 1) == 0)
  {
    v30 = v21;
    if (a4)
    {
      v31 = [a4 selectedInstallmentOffer];
      if (v31)
      {
        v32 = v31;
        v33 = [v31 dynamicContent];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 dynamicContentPageForPageType_];

          if (v35)
          {
            v36 = [v35 subtitle];
            if (v36)
            {
              v37 = v36;
              v29 = sub_1BE052434();

              return v29;
            }
          }
        }
      }

      v46 = [a4 installmentSelectedPaymentOffer];
      if (!v46)
      {
        goto LABEL_29;
      }

      v41 = v46;
      if ([v46 selectionType] != 1)
      {
        goto LABEL_28;
      }

      v47 = [a1 dynamicContent];
      if (!v47)
      {
        goto LABEL_28;
      }

      v48 = v47;
      v44 = [v47 dynamicContentPageForPageType_];

      if (!v44)
      {
        goto LABEL_28;
      }

      v45 = [v44 subtitle];
      if (v45)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (!a5)
      {
        goto LABEL_29;
      }

      v40 = [a5 selectedInstallmentOffer];
      if (!v40)
      {
        goto LABEL_29;
      }

      v41 = v40;
      v42 = [v40 dynamicContent];
      if (!v42 || (v43 = v42, v44 = [v42 dynamicContentPageForPageType_], v43, !v44))
      {
LABEL_28:

LABEL_29:
        v50 = [a1 dynamicContent];
        if (v50)
        {
          v51 = v50;
          v52 = [v50 dynamicContentPageForPageType_];

          if (v52)
          {
            v53 = [v52 subtitle];
            if (v53)
            {
              v54 = v53;
              v29 = sub_1BE052434();

              return v29;
            }
          }
        }

        v55 = [a1 localizedSubtitleOverride];
        if (v55)
        {
          v56 = v55;
          v29 = sub_1BE052434();
          v58 = v57;

          if (sub_1BE052534() < 1)
          {
            v58, v59, v60, v61, v62, v63, v64, v65;
            return 0;
          }

          return v29;
        }

        (*(v13 + 104))(v15, *MEMORY[0x1E69B8078], v30);
        result = PKPassKitBundle();
        if (result)
        {
          v66 = result;
          v29 = sub_1BE04B6F4();

          (*(v13 + 8))(v15, v30);
          return v29;
        }

        goto LABEL_42;
      }

      v45 = [v44 subtitle];
      if (v45)
      {
LABEL_27:
        v49 = v45;
        v29 = sub_1BE052434();

        return v29;
      }
    }

    goto LABEL_28;
  }

  v24 = *MEMORY[0x1E69B8078];
  v25 = *(v13 + 104);
  if ((a3 & 1) != 0 || (a2 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    v38 = v21;
    v25(v18, v24, v21, v22);
    result = PKPassKitBundle();
    if (result)
    {
      v39 = result;
      v29 = sub_1BE04B6F4();

      (*(v13 + 8))(v18, v38);
      return v29;
    }

    __break(1u);
  }

  else
  {
    v26 = v21;
    (v25)(&v67 - v20, v24, v21, v22.n128_f64[0]);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      v29 = sub_1BE04B6F4();

      (*(v13 + 8))(v23, v26);
      return v29;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_1BD6CD964(id a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  v3 = a2;
  v4 = [v3 selectedInstallmentOffer];
  v5 = v3;
  if (!v4)
  {
LABEL_5:

    v7 = v3;
    v8 = [v7 selectedInstallmentOffer];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 dynamicContent];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 dynamicContentPageForPageType_];

        v13 = [v12 bodyLinkContent];
        goto LABEL_15;
      }

      goto LABEL_14;
    }

LABEL_9:
    v14 = [a1 dynamicContent];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 dynamicContentPageForPageType_];

      v13 = [v16 bodyLinkContent];
      goto LABEL_15;
    }

LABEL_14:
    v13 = 0;
LABEL_15:
    v3 = v13;
    v20 = [a1 instoreCapabilities];
    if (v20)
    {
      v21 = v20;
      sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
      sub_1BD22CFF8();
      v22 = sub_1BE052A34();

      v23 = sub_1BE053514();
      sub_1BD6CC9D4(v23, v22, &qword_1EBD3D270, 0x1E696AD98);

      v22, v24, v25, v26, v27, v28, v29, v30;
      [a1 requiresInStorePlanSelection];
    }

    else
    {
      [a1 requiresInStorePlanSelection];
    }

    goto LABEL_19;
  }

  v6 = v4;
  if ([v4 type])
  {

    v5 = v6;
    goto LABEL_5;
  }

  v17 = [v6 dynamicContent];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 dynamicContentPageForPageType_];

    v13 = [v19 bodyLinkContent];
  }

  else
  {

    v13 = 0;
  }

LABEL_19:

  return v13;
}

id sub_1BD6CDC54(void *a1, void *a2)
{
  v4 = sub_1BE053304();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v12 = a1;
  v13 = [v12 monetaryValue];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  v70 = v8;
  v71 = v12;
  v69 = v9;
  result = [v13 amount];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v16 = result;
  v17 = sub_1BE0533F4();
  v19 = v18;
  v21 = v20;

  sub_1BD994058(v17, v19, v21);
  v65[1] = v22;
  v24 = v23;
  v66 = [a2 type];
  v25 = [v14 minimalFormattedStringValue];
  if (!v25)
  {

    return 0;
  }

  v26 = v25;
  v67 = sub_1BE052434();
  v68 = v27;

  if ([a2 type] == 3)
  {
    v29 = v69;
    v28 = v70;
    (*(v69 + 104))(v11, *MEMORY[0x1E69B8088], v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1BE0B69E0;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1BD110550();
    v31 = v68;
    *(v30 + 32) = v67;
    *(v30 + 40) = v31;
    v32 = sub_1BE04B714();

    v30, v33, v34, v35, v36, v37, v38, v39;
    (*(v29 + 8))(v11, v28);
    return v32;
  }

  if ((v24 & 0x100000000) == 0)
  {
    MEMORY[0x1BFB37210]();
    sub_1BD154B6C();
    sub_1BE053464();
    (*(v5 + 8))(v7, v4);
    v47 = v72;
    v48 = v73;
    if (v66 == 1)
    {
      v50 = v69;
      v49 = v70;
      (*(v69 + 104))(v11, *MEMORY[0x1E69B8088], v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1BE0B6CA0;
      v55 = MEMORY[0x1E69E6158];
      *(v51 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1BD110550();
      v57 = v68;
      *(v51 + 32) = v67;
      *(v51 + 40) = v57;
      *(v51 + 96) = v55;
      *(v51 + 104) = v56;
      *(v51 + 64) = v56;
      *(v51 + 72) = v47;
      *(v51 + 80) = v48;
      goto LABEL_16;
    }

    v50 = v69;
    v49 = v70;
    if (v66 == 2)
    {
      (*(v69 + 104))(v11, *MEMORY[0x1E69B8088], v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1BE0B6CA0;
      v52 = MEMORY[0x1E69E6158];
      *(v51 + 56) = MEMORY[0x1E69E6158];
      v53 = sub_1BD110550();
      v54 = v68;
      *(v51 + 32) = v67;
      *(v51 + 40) = v54;
      *(v51 + 96) = v52;
      *(v51 + 104) = v53;
      *(v51 + 64) = v53;
      *(v51 + 72) = v47;
      *(v51 + 80) = v48;
LABEL_16:
      v32 = sub_1BE04B714();
      v51, v58, v59, v60, v61, v62, v63, v64;

      (*(v50 + 8))(v11, v49);
      return v32;
    }

    v73, v40, v41, v42, v43, v44, v45, v46;
  }

  return v67;
}

void sub_1BD6CE15C(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, void *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v198 = a8;
  v200 = a7;
  v197 = a6;
  v205 = a4;
  v196 = a2;
  v193 = a9;
  v179 = sub_1BE053304();
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v177 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v202 = &v175 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v183 = &v175 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v182 = &v175 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v181 = &v175 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v188 = &v175 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v184 = &v175 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v185 = &v175 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v175 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v175 - v35;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v40 = &v175 - v39;
  v189 = a1;
  v41 = [a1 identifier];
  v42 = sub_1BE052434();
  v194 = v43;
  v195 = v42;

  v192 = sub_1BE0513C4();
  v201 = v13;
  v187 = a5;
  v186 = v16;
  v180 = v40;
  v199 = a3;
  if (a3)
  {
    v44 = v14;
    v45 = *(v14 + 104);
    v204 = *MEMORY[0x1E69B8088];
    v203 = v45;
    v45(v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1BE0B69E0;
    v47 = a3;
    v48 = [v47 programName];
    v49 = sub_1BE052434();
    v51 = v50;

    *(v46 + 56) = MEMORY[0x1E69E6158];
    *(v46 + 64) = sub_1BD110550();
    *(v46 + 32) = v49;
    *(v46 + 40) = v51;
    v13 = v201;
    v52 = v197;
    v191 = sub_1BE04B714();
    v54 = v53;

    v46, v55, v56, v57, v58, v59, v60, v61;
    v36 = v40;
  }

  else
  {
    v52 = v197;
    v62 = *(v14 + 104);
    v204 = *MEMORY[0x1E69B8088];
    v203 = v62;
    v62(v36);
    v63 = PKPassKitBundle();
    if (!v63)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v64 = v63;
    v191 = sub_1BE04B6F4();
    v54 = v65;

    v44 = v14;
  }

  v66 = v202;
  v202 = *(v44 + 8);
  (v202)(v36, v13);
  v67 = v52;
  v190 = v44;
  if (v52)
  {
    v203(v33, v204, v13);
    v68 = PKPassKitBundle();
    v69 = v196;
    if (!v68)
    {
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v70 = v68;
    v71 = sub_1BE04B6F4();
    v198 = v72;
    v199 = v71;

    (v202)(v33, v13);
    v67 = v52;
    v73 = v200;
    goto LABEL_28;
  }

  v69 = v196;
  v73 = v200;
  v74 = v188;
  if (!v196)
  {
LABEL_11:
    if (v205)
    {
      v76 = v185;
      v203(v185, v204, v13);
      v77 = PKPassKitBundle();
      if (!v77)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v78 = v77;
      v79 = sub_1BE04B6F4();
      v198 = v80;
      v199 = v79;

      (v202)(v76, v13);
      goto LABEL_28;
    }

    if (v199)
    {
      v81 = v199;
      if ([v81 eligibility] == 1)
      {
        v82 = sub_1BD6CDC54(v73, v81);
        if (v83)
        {
          v198 = v83;
          v199 = v82;

LABEL_28:
          v99 = v73 != 0;
          if (!v69)
          {
            goto LABEL_40;
          }

          v75 = v69;
LABEL_37:
          if ([v75 isEligible] && (v205 & 1) == 0 && (v67 & 1) == 0)
          {
            v105 = v67;
            v128 = v187;
            v122 = v187 ^ 1;
            v125 = v192;
            goto LABEL_46;
          }

LABEL_40:
          if (v205)
          {
            v176 = v54;
            v105 = v67;
            v106 = v186;
            v107 = v201;
            v203(v186, v204, v201);
            v108 = PKPassKitBundle();
            if (v108)
            {
              v109 = v108;
              sub_1BE04B6F4();
              v111 = v110;

              (v202)(v106, v107);
              v112 = objc_allocWithZone(MEMORY[0x1E69B85D0]);
              v113 = sub_1BE052404();
              v111, v114, v115, v116, v117, v118, v119, v120;
              v121 = [v112 initWithFooterText:v113 links:0];

              v122 = 1;
              v123 = MEMORY[0x1E69E7CC0];
              v125 = v192;
              v124 = v193;
              v127 = v194;
              v126 = v195;
              v54 = v176;
LABEL_54:
              v132 = v199;
              LOBYTE(v206) = 0;
              *v124 = v126;
              *(v124 + 8) = v127;
              *(v124 + 16) = 2;
              *(v124 + 24) = 0;
              *(v124 + 32) = 1918989427;
              *(v124 + 40) = 0xE400000000000000;
              v133 = v191;
              *(v124 + 48) = v125;
              *(v124 + 56) = v133;
              *(v124 + 64) = v54;
              *(v124 + 72) = v132;
              *(v124 + 80) = v198;
              *(v124 + 88) = v99;
              *(v124 + 89) = v105 & 1;
              *(v124 + 90) = v122 & 1;
              *(v124 + 96) = v121;
              *(v124 + 104) = 1;
              *(v124 + 112) = v123;
              return;
            }

            goto LABEL_77;
          }

          v105 = v67;
          v122 = 1;
          if (!v69)
          {
            v123 = MEMORY[0x1E69E7CC0];
            v125 = v192;
            goto LABEL_50;
          }

          v75 = v69;
          v125 = v192;
          v128 = v187;
LABEL_46:
          if (([v75 isEligible] & v128) != 0)
          {
            v123 = &unk_1F3B8D028;
          }

          else
          {
            v123 = MEMORY[0x1E69E7CC0];
          }

LABEL_50:
          v124 = v193;
          v129 = [v189 dynamicContent];
          if (v129)
          {
            v130 = v129;
            v131 = [v129 dynamicContentPageForPageType_];

            v121 = [v131 bodyLinkContent];
          }

          else
          {
            v121 = 0;
          }

          v127 = v194;
          v126 = v195;
          goto LABEL_54;
        }

        v134 = v67;
        if (v198)
        {
          v135 = [v198 rewardsRedemptionIntent];
        }

        else
        {
          v135 = 0;
        }

        v136 = sub_1BD6CDC54(v135, v81);
        v138 = v137;

        if (v138)
        {
          v198 = v138;
          v199 = v136;

LABEL_60:
          v67 = v134;
          goto LABEL_28;
        }

        v139 = [v81 monetaryValue];
        v140 = [v81 type];
        v141 = [v139 minimalFormattedStringValue];
        if (!v141)
        {

          v198 = 0;
          v199 = 0;
          goto LABEL_60;
        }

        v142 = v141;
        v143 = sub_1BE052434();
        v198 = v144;
        v199 = v143;

        if ([v81 type] == 3)
        {

LABEL_68:
          v67 = v134;
          v73 = v200;
          goto LABEL_28;
        }

        v145 = [v81 value];
        if (!v145 || (v206 = 0, v207 = 0, v208 = 0, v209 = 1, v146 = v145, sub_1BE0533E4(), v146, (v209 & 1) != 0))
        {

          goto LABEL_68;
        }

        v188 = v81;
        v176 = v54;
        v147 = v177;
        MEMORY[0x1BFB37210]();
        sub_1BD154B6C();
        v148 = v179;
        sub_1BE053464();
        (*(v178 + 8))(v147, v148);
        v157 = v206;
        v156 = v207;
        if (v140 == 1)
        {
          v158 = v180;
          v159 = v201;
          v203(v180, v204, v201);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v160 = swift_allocObject();
          *(v160 + 16) = xmmword_1BE0B6CA0;
          v164 = MEMORY[0x1E69E6158];
          *(v160 + 56) = MEMORY[0x1E69E6158];
          v165 = sub_1BD110550();
          v166 = v198;
          *(v160 + 32) = v199;
          *(v160 + 40) = v166;
          *(v160 + 96) = v164;
          *(v160 + 104) = v165;
          v69 = v196;
          *(v160 + 64) = v165;
          *(v160 + 72) = v157;
          *(v160 + 80) = v156;
        }

        else
        {
          v158 = v180;
          if (v140 != 2)
          {
            v207, v149, v150, v151, v152, v153, v154, v155;

            goto LABEL_75;
          }

          v159 = v201;
          v203(v180, v204, v201);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v160 = swift_allocObject();
          *(v160 + 16) = xmmword_1BE0B6CA0;
          v161 = MEMORY[0x1E69E6158];
          *(v160 + 56) = MEMORY[0x1E69E6158];
          v162 = sub_1BD110550();
          v163 = v198;
          *(v160 + 32) = v199;
          *(v160 + 40) = v163;
          *(v160 + 96) = v161;
          *(v160 + 104) = v162;
          v69 = v196;
          *(v160 + 64) = v162;
          *(v160 + 72) = v157;
          *(v160 + 80) = v156;
        }

        v167 = sub_1BE04B714();
        v198 = v168;
        v199 = v167;
        v160, v168, v169, v170, v171, v172, v173, v174;

        (v202)(v158, v159);
LABEL_75:
        v67 = v197;
        v54 = v176;
        v73 = v200;
        goto LABEL_28;
      }

      v88 = v67;
      v203(v74, v204, v13);
      v95 = PKPassKitBundle();
      if (!v95)
      {
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v96 = v95;
      v97 = sub_1BE04B6F4();
      v198 = v98;
      v199 = v97;

      v94 = v74;
    }

    else
    {
      v88 = v67;
      v89 = v184;
      v203(v184, v204, v13);
      v90 = PKPassKitBundle();
      if (!v90)
      {
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v91 = v90;
      v92 = sub_1BE04B6F4();
      v198 = v93;
      v199 = v92;

      v94 = v89;
    }

    (v202)(v94, v13);
    v67 = v88;
    goto LABEL_28;
  }

  v75 = v196;
  if ([v75 isEligible])
  {

    goto LABEL_11;
  }

  v84 = [v75 reason];
  v85 = v67;
  if (v84 == 7)
  {
    v66 = v181;
    v203(v181, v204, v13);
    v101 = PKPassKitBundle();
    if (!v101)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v87 = v101;
    goto LABEL_36;
  }

  if (v84 == 13)
  {
    v66 = v182;
    v203(v182, v204, v13);
    v100 = PKPassKitBundle();
    if (!v100)
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v87 = v100;
    goto LABEL_36;
  }

  if (v84 == 14)
  {
    v66 = v183;
    v203(v183, v204, v13);
    v86 = PKPassKitBundle();
    if (!v86)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v87 = v86;
    goto LABEL_36;
  }

  v203(v66, v204, v13);
  v102 = PKPassKitBundle();
  if (v102)
  {
    v87 = v102;
LABEL_36:
    v103 = sub_1BE04B6F4();
    v198 = v104;
    v199 = v103;

    (v202)(v66, v13);
    v99 = v73 != 0;
    v67 = v85;
    goto LABEL_37;
  }

LABEL_85:
  __break(1u);
}

uint64_t getEnumTagSinglePayload for PaymentOfferSelectorOptionModel.ExpandedContentModel.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentOfferSelectorOptionModel.ExpandedContentModel.Action(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BD6CF1E0()
{
  result = qword_1EBD50208;
  if (!qword_1EBD50208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD50208);
  }

  return result;
}

void sub_1BD6CF238(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  v9[2] = v8;
  sub_1BE048964();
  v25 = a2;
  v10 = a3;
  v7(v25, v10, sub_1BD3B6980, v9);
  v6, v11, v12, v13, v14, v15, v16, v17;
  v9, v18, v19, v20, v21, v22, v23, v24;
}

void sub_1BD6CF30C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v120 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v112 - v9;
  v11 = sub_1BE04AA64();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a2;
  if (!a2)
  {
    goto LABEL_23;
  }

  v16 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID;
  swift_beginAccess();
  v17 = *(v4 + v16);
  if (!v17[2])
  {
    goto LABEL_23;
  }

  sub_1BE048C84();
  v18 = sub_1BD148F70(v120, v121);
  if ((v19 & 1) == 0)
  {
    v17, v19, v20, v21, v22, v23, v24, v25;
LABEL_23:
    (*(v12 + 56))(v10, 1, 1, v11, v13);
    a3(v10);
    sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
    return;
  }

  v115 = v11;
  v116 = a3;
  v117 = a4;
  v26 = v17[7] + 16 * v18;
  v27 = *(v26 + 8);
  v119 = *v26;
  sub_1BE048C84();
  v17, v28, v29, v30, v31, v32, v33, v34;
  v113 = v4;
  v35 = *(v4 + OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts);
  v118 = v12;
  if (v35 >> 62)
  {
LABEL_36:
    v36 = sub_1BE053704();
  }

  else
  {
    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v15;
  sub_1BE048C84();
  if (!v36)
  {
LABEL_22:
    v27, v37, v38, v39, v40, v41, v42, v43;
    v35, v74, v75, v76, v77, v78, v79, v80;
    a3 = v116;
    v11 = v115;
    v12 = v118;
    goto LABEL_23;
  }

  v15 = 0;
  v122 = v35 & 0xFFFFFFFFFFFFFF8;
  v123 = v35 & 0xC000000000000001;
  while (1)
  {
    if (v123)
    {
      v44 = MEMORY[0x1BFB40900](v15, v35);
    }

    else
    {
      if (v15 >= *(v122 + 16))
      {
        goto LABEL_35;
      }

      v44 = *(v35 + 8 * v15 + 32);
    }

    v45 = v44;
    v46 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v47 = [v44 accountIdentifier];
    if (!v47)
    {
      goto LABEL_8;
    }

    v48 = v47;
    v49 = sub_1BE052434();
    v51 = v50;

    if (v49 == v119 && v51 == v27)
    {
      break;
    }

    v59 = sub_1BE053B84();
    v51, v60, v61, v62, v63, v64, v65, v66;
    if (v59)
    {
      v51 = v35;
      goto LABEL_26;
    }

LABEL_8:

    ++v15;
    if (v46 == v36)
    {
      goto LABEL_22;
    }
  }

  v27, v52, v119, v53, v54, v55, v56, v57;
  v27 = v35;
LABEL_26:
  v27, v67, v68, v69, v70, v71, v72, v73;
  v51, v81, v82, v83, v84, v85, v86, v87;
  v88 = v114;
  v89 = *(v113 + OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_exporter);
  v90 = v118;
  if (*(v89 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) == 1)
  {
  }

  else
  {
    *(v89 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) = 1;
    sub_1BD95D644();
    v91 = [objc_allocWithZone(MEMORY[0x1E69B84A0]) init];
    v92 = sub_1BE052404();
    [v91 setDocumentIdentifier_];

    [v91 setAction_];
    v93 = [v45 accountIdentifier];
    [v91 setAccountIdentifier_];

    v94 = [v45 accountBaseURL];
    if (v94)
    {
      v95 = v94;
      sub_1BE04A9F4();

      v96 = sub_1BE04A9C4();
      (*(v90 + 8))(v88, v115);
    }

    else
    {
      v96 = 0;
    }

    v97 = v117;
    [v91 setBaseURL_];

    v98 = *(v89 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_webService);
    if (v98)
    {
      v99 = swift_allocObject();
      swift_weakInit();
      v100 = swift_allocObject();
      v101 = v116;
      v100[2] = v99;
      v100[3] = v101;
      v100[4] = v97;
      aBlock[4] = sub_1BD2F8C4C;
      v125 = v100;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD14E1D8;
      aBlock[3] = &block_descriptor_150_0;
      v102 = _Block_copy(aBlock);
      v103 = v125;
      v104 = v91;
      sub_1BE048964();
      v103, v105, v106, v107, v108, v109, v110, v111;
      [v98 accountDocumentActionWithRequest:v104 completion:v102];

      _Block_release(v102);
    }

    else
    {
    }
  }
}

uint64_t sub_1BD6CF898()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD6CF90C(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD6CF984()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

id sub_1BD6CF9F8(uint64_t a1)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - v3;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416E0, &qword_1BE0CB0E0);
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50290, &unk_1BE0F02C0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel__taxForms;
  v37 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50270, &qword_1BE0D11C0);
  sub_1BE04D874();
  (*(v14 + 32))(&v1[v17], v16, v13);
  v18 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel__displayableError;
  v19 = type metadata accessor for FeatureError(0);
  (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
  sub_1BD23C2BC(v12, v9);
  sub_1BE04D874();
  sub_1BD0DE53C(v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
  (*(v4 + 32))(&v1[v18], v6, v31);
  v20 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel__loading;
  LOBYTE(v37) = 0;
  v21 = v32;
  sub_1BE04D874();
  (*(v33 + 32))(&v1[v20], v21, v34);
  v1[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_loaded] = 0;
  v22 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accountService;
  *&v1[v22] = [objc_opt_self() sharedInstance];
  v23 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID;
  *&v1[v23] = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
  v24 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_exporter;
  type metadata accessor for DocumentExporter(0);
  v25 = swift_allocObject();
  v26 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_contentURL;
  v27 = sub_1BE04AA64();
  (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
  *(v25 + OBJC_IVAR____TtC9PassKitUI16DocumentExporter_loading) = 0;
  v28 = OBJC_IVAR____TtC9PassKitUI16DocumentExporter_webService;
  *(v25 + v28) = [objc_opt_self() sharedService];
  *&v1[v24] = v25;
  *&v1[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts] = v35;
  v29 = type metadata accessor for TaxFormsModel(0);
  v36.receiver = v1;
  v36.super_class = v29;
  return objc_msgSendSuper2(&v36, sel_init);
}

void sub_1BD6CFE84()
{
  if ((*(v0 + OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_loaded) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    v2 = swift_getKeyPath();
    sub_1BE04D8B4(&aBlock);
    KeyPath, v3, v4, v5, v6, v7, v8, v9;
    v2, v10, v11, v12, v13, v14, v15, v16;
    if ((aBlock & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(aBlock) = 1;
      v17 = v0;
      sub_1BE04D8C4();
      v18 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
      v19 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID;
      swift_beginAccess();
      v20 = *&v17[v19];
      *&v17[v19] = v18;
      v20, v21, v22, v23, v24, v25, v26, v27;
      v28 = [objc_allocWithZone(MEMORY[0x1E69B8658]) init];
      v29 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts;
      v30 = *&v17[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts];
      if (v30 >> 62)
      {
        v31 = sub_1BE053704();
        v32 = &off_1BE0B1000;
        if (!v31)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v32 = &off_1BE0B1000;
        if (!v31)
        {
          goto LABEL_12;
        }
      }

      if (v31 < 1)
      {
        __break(1u);
        goto LABEL_28;
      }

      sub_1BE048C84();
      v33 = 0;
      v34 = *(v32 + 42);
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1BFB40900](v33, v30);
        }

        else
        {
          v35 = *(v30 + 8 * v33 + 32);
        }

        v36 = v35;
        ++v33;
        v37 = swift_allocObject();
        *(v37 + 16) = v17;
        *(v37 + 24) = v36;
        v109 = sub_1BD6D3F60;
        v110 = v37;
        aBlock = MEMORY[0x1E69E9820];
        v106 = v34;
        v107 = sub_1BD6CF238;
        v108 = &block_descriptor_161;
        v38 = _Block_copy(&aBlock);
        v39 = v110;
        v40 = v17;
        v41 = v36;
        v39, v42, v43, v44, v45, v46, v47, v48;
        [v28 addOperation_];
        _Block_release(v38);
      }

      while (v31 != v33);
      v30, v49, v50, v51, v52, v53, v54, v55;
      v32 = &off_1BE0B1000;
LABEL_12:
      v56 = swift_allocObject();
      *(v56 + 16) = v17;
      v109 = sub_1BD6D3F68;
      v110 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v57 = *(v32 + 42);
      v106 = v57;
      v107 = sub_1BD6CF238;
      v108 = &block_descriptor_84_0;
      v58 = _Block_copy(&aBlock);
      v59 = v110;
      v60 = v17;
      v59, v61, v62, v63, v64, v65, v66, v67;
      [v28 addOperation_];
      _Block_release(v58);
      v68 = *&v17[v29];
      if (v68 >> 62)
      {
        v69 = sub_1BE053704();
        if (v69)
        {
LABEL_14:
          if (v69 >= 1)
          {
            sub_1BE048C84();
            v70 = 0;
            do
            {
              if ((v68 & 0xC000000000000001) != 0)
              {
                v71 = MEMORY[0x1BFB40900](v70, v68);
              }

              else
              {
                v71 = *(v68 + 8 * v70 + 32);
              }

              v72 = v71;
              ++v70;
              v73 = swift_allocObject();
              *(v73 + 16) = v60;
              *(v73 + 24) = v72;
              v109 = sub_1BD6D3F70;
              v110 = v73;
              aBlock = MEMORY[0x1E69E9820];
              v106 = v57;
              v107 = sub_1BD6CF238;
              v108 = &block_descriptor_90_0;
              v74 = _Block_copy(&aBlock);
              v75 = v110;
              v76 = v60;
              v77 = v72;
              v75, v78, v79, v80, v81, v82, v83, v84;
              [v28 addOperation_];
              _Block_release(v74);
            }

            while (v69 != v70);
            v68, v85, v86, v87, v88, v89, v90, v91;
            goto LABEL_21;
          }

LABEL_28:
          __break(1u);
          return;
        }
      }

      else
      {
        v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v69)
        {
          goto LABEL_14;
        }
      }

LABEL_21:
      v92 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
      v93 = swift_allocObject();
      *(v93 + 16) = v60;
      v109 = sub_1BD6D3F78;
      v110 = v93;
      aBlock = MEMORY[0x1E69E9820];
      v106 = v57;
      v107 = sub_1BD3B21E4;
      v108 = &block_descriptor_96_2;
      v94 = _Block_copy(&aBlock);
      v95 = v110;
      v96 = v60;
      v95, v97, v98, v99, v100, v101, v102, v103;
      v104 = [v28 evaluateWithInput:v92 completion:v94];
      _Block_release(v94);

      swift_unknownObjectRelease();
    }
  }
}

void sub_1BD6D03E0(int a1, void *a2, uint64_t a3, uint64_t a4, char *a5, id a6)
{
  v6 = *&a5[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accountService];
  if (v6)
  {
    v12 = [a6 accountIdentifier];
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a2;
    v13[6] = a6;
    v26[4] = sub_1BD6D3FC0;
    v27 = v13;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 1107296256;
    v26[2] = sub_1BD6D0BD8;
    v26[3] = &block_descriptor_134_1;
    v14 = _Block_copy(v26);
    v15 = v27;
    v16 = a5;
    sub_1BE048964();
    v17 = a2;
    v18 = a6;
    v15, v19, v20, v21, v22, v23, v24, v25;
    [v6 taxFormsForAccountIdentifier:v12 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_1BD6D0524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v34 = a7;
  v11 = sub_1BE051F54();
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BE051FA4();
  v14 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v35 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v19 = a6;
  v20 = v34;
  v18[6] = v17;
  v18[7] = v20;
  aBlock[4] = sub_1BD6D3FF0;
  v39 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_141_0;
  v21 = _Block_copy(aBlock);
  v22 = v39;
  sub_1BE048C84();
  sub_1BE048964();
  v23 = v19;
  v24 = v20;
  v22, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v32 = v35;
  MEMORY[0x1BFB3FDF0](0, v16, v13, v21);
  _Block_release(v21);

  (*(v37 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v36);
}

uint64_t sub_1BD6D0818(unint64_t a1, uint64_t (*a2)(unint64_t, void), uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v6 = a4;
  v7 = a2;
  if (!a1)
  {
    v86 = a4;
    return (v7)(v86, 0, a3);
  }

  v9 = a1;
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
LABEL_38:
    v86 = v6;
    v7 = a2;
    return (v7)(v86, 0, a3);
  }

  while (v10 >= 1)
  {
    v11 = v9 & 0xC000000000000001;
    swift_beginAccess();
    v12 = 0;
    v93 = v9 & 0xC000000000000001;
    v94 = v10;
    v89 = a6;
    v90 = v6;
    v95 = v9;
    while (1)
    {
      if (v11)
      {
        v22 = MEMORY[0x1BFB40900](v12, v9);
      }

      else
      {
        v22 = *(v9 + 8 * v12 + 32);
      }

      v23 = v22;
      v24 = [v22 identifier];
      if (!v24)
      {
        goto LABEL_9;
      }

      v25 = v24;
      v26 = sub_1BE052434();
      v28 = v27;

      [v6 addObject_];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        v28, v30, v31, v32, v33, v34, v35, v36;
        goto LABEL_9;
      }

      v37 = Strong;
      v38 = [a6 accountIdentifier];
      if (!v38)
      {
        v42 = &v37[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID];
        swift_beginAccess();
LABEL_24:
        v56 = sub_1BD148F70(v26, v28);
        v58 = v57;
        v28, v57, v59, v60, v61, v62, v63, v64;
        if (v58)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = *v42;
          v96 = *v42;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1BD5069C0();
            v73 = v96;
          }

          *(*(v73 + 48) + 16 * v56 + 8), v66, v67, v68, v69, v70, v71, v72;
          *(*(v73 + 56) + 16 * v56 + 8), v74, v75, v76, v77, v78, v79, v80;
          sub_1BD50550C(v56, v73);
          *v42 = v73;
        }

        goto LABEL_8;
      }

      v39 = v38;
      v92 = sub_1BE052434();
      v41 = v40;

      v42 = &v37[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID];
      swift_beginAccess();
      if (!v41)
      {
        goto LABEL_24;
      }

      v91 = v41;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v96 = *v42;
      v9 = v96;
      v6 = sub_1BD148F70(v26, v28);
      v51 = *(v9 + 16);
      v52 = (v44 & 1) == 0;
      v53 = v51 + v52;
      if (__OFADD__(v51, v52))
      {
        break;
      }

      a6 = v44;
      if (*(v9 + 24) >= v53)
      {
        if (v43)
        {
          v55 = v96;
          if ((v44 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = &v96;
          sub_1BD5069C0();
          v55 = v96;
          if ((a6 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_1BD501470(v53, v43);
        v9 = v96;
        v54 = sub_1BD148F70(v26, v28);
        if ((a6 & 1) != (v44 & 1))
        {
          goto LABEL_41;
        }

        v6 = v54;
        v55 = v96;
        if ((a6 & 1) == 0)
        {
LABEL_30:
          v55[(v6 >> 6) + 8] |= 1 << v6;
          v81 = (v55[6] + 16 * v6);
          *v81 = v26;
          v81[1] = v28;
          v82 = (v55[7] + 16 * v6);
          *v82 = v92;
          v82[1] = v91;
          v83 = v55[2];
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_36;
          }

          v55[2] = v85;
          goto LABEL_7;
        }
      }

      v13 = (v55[7] + 16 * v6);
      v14 = v13[1];
      *v13 = v92;
      v13[1] = v91;
      v28, v44, v45, v46, v47, v48, v49, v50;
      v14, v15, v16, v17, v18, v19, v20, v21;
LABEL_7:
      *v42 = v55;
      a6 = v89;
      v6 = v90;
LABEL_8:
      swift_endAccess();

      v10 = v94;
      v9 = v95;
      v11 = v93;
LABEL_9:
      ++v12;

      if (v10 == v12)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v10 = sub_1BE053704();
    if (!v10)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_41:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

void sub_1BD6D0BD8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1BD0E5E8C(0, &qword_1EBD43FC8, 0x1E69B8428);
    v4 = sub_1BE052744();
  }

  sub_1BE048964();
  v7 = a3;
  v6(v4, a3);
  v5, v8, v9, v10, v11, v12, v13, v14;

  v4, v15, v16, v17, v18, v19, v20, v21;
}

uint64_t sub_1BD6D0C7C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v6 = sub_1BE051F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1BE051FA4();
  v10 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = v14;
  v15[4] = v27;
  v15[5] = a4;
  aBlock[4] = sub_1BD6D3FB4;
  v30 = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_125_0;
  v16 = _Block_copy(aBlock);
  v17 = v30;
  v18 = a2;
  sub_1BE048964();
  v17, v19, v20, v21, v22, v23, v24, v25;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v16);
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v28);
}

void sub_1BD6D0F50(uint64_t a1, uint64_t a2, void (*a3)(id, void))
{
  v5 = 0;
  sub_1BD0E5E8C(0, &qword_1EBD43FC8, 0x1E69B8428);
  sub_1BE052734();
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  a3(v4, 0);
}

void sub_1BD6D10C0(int a1, void *a2, uint64_t a3, uint64_t a4, char *a5, id a6)
{
  v6 = *&a5[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accountService];
  if (v6)
  {
    v12 = [a6 accountIdentifier];
    v13 = swift_allocObject();
    v13[2] = a5;
    v13[3] = a6;
    v13[4] = a3;
    v13[5] = a4;
    v13[6] = a2;
    v26[4] = sub_1BD6D3F88;
    v27 = v13;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 1107296256;
    v26[2] = sub_1BD6D0BD8;
    v26[3] = &block_descriptor_111_0;
    v14 = _Block_copy(v26);
    v15 = v27;
    v16 = a5;
    v17 = a6;
    sub_1BE048964();
    v18 = a2;
    v15, v19, v20, v21, v22, v23, v24, v25;
    [v6 updateTaxFormsForAccountIdentifier:v12 completion:v14];
    _Block_release(v14);
  }
}

uint64_t sub_1BD6D1204(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v36 = a7;
  v12 = sub_1BE051F54();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE051FA4();
  v38 = *(v15 - 8);
  v39 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v37 = sub_1BE052D54();
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = v18;
  v19[4] = a4;
  v19[5] = a1;
  v19[6] = a5;
  v19[7] = a6;
  v20 = v36;
  v19[8] = v36;
  aBlock[4] = sub_1BD6D3FA0;
  v42 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_118_0;
  v21 = _Block_copy(aBlock);
  v22 = v42;
  v23 = a2;
  sub_1BE048C84();
  sub_1BE048964();
  v24 = v20;
  v25 = a4;
  v22, v26, v27, v28, v29, v30, v31, v32;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  v33 = v37;
  MEMORY[0x1BFB3FDF0](0, v17, v14, v21);
  _Block_release(v21);

  (*(v40 + 8))(v14, v12);
  return (*(v38 + 8))(v17, v39);
}

uint64_t sub_1BD6D1504(void *a1, uint64_t a2, void *a3, unint64_t a4, uint64_t (*a5)(uint64_t, void, __n128), uint64_t a6, uint64_t isUniquelyReferenced_nonNull_native)
{
  v101[1] = a6;
  v102 = a5;
  v110 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = v101 - v16;
  v109 = a2;
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = a1;
      v19 = [v110 feature];
      v20 = a1;
      FeatureError.init(feature:error:)(v19, a1, v17);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1BD23C2BC(v17, v13);
      sub_1BE04D8C4();

      sub_1BD0DE53C(v17, &qword_1EBD416C0, &unk_1BE0BC2A0);
    }
  }

  if (!a4)
  {
    return v102(isUniquelyReferenced_nonNull_native, 0, v15);
  }

  if (a4 >> 62)
  {
    goto LABEL_39;
  }

  v21 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    return v102(isUniquelyReferenced_nonNull_native, 0, v15);
  }

  while (2)
  {
    if (v21 >= 1)
    {
      v22 = a4 & 0xC000000000000001;
      swift_beginAccess();
      v23 = 0;
      v103 = a4;
      v104 = isUniquelyReferenced_nonNull_native;
      v107 = a4 & 0xC000000000000001;
      v108 = v21;
      while (1)
      {
        if (v22)
        {
          v24 = MEMORY[0x1BFB40900](v23, a4);
        }

        else
        {
          v24 = *(a4 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = [v24 identifier];
        if (!v26)
        {
          goto LABEL_10;
        }

        v27 = v26;
        v28 = sub_1BE052434();
        v30 = v29;

        [isUniquelyReferenced_nonNull_native addObject_];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          break;
        }

        v30, v32, v33, v34, v35, v36, v37, v38;
LABEL_10:
        ++v23;

        if (v21 == v23)
        {
          return v102(isUniquelyReferenced_nonNull_native, 0, v15);
        }
      }

      v39 = Strong;
      v40 = [v110 accountIdentifier];
      if (v40)
      {
        v41 = isUniquelyReferenced_nonNull_native;
        v42 = v40;
        v105 = sub_1BE052434();
        v44 = v43;

        v45 = &v39[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID];
        swift_beginAccess();
        v106 = v44;
        if (v44)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111 = *v45;
          v46 = v111;
          a4 = sub_1BD148F70(v28, v30);
          v54 = *(v46 + 16);
          v55 = (v47 & 1) == 0;
          v56 = v54 + v55;
          if (__OFADD__(v54, v55))
          {
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v21 = sub_1BE053704();
            if (!v21)
            {
              return v102(isUniquelyReferenced_nonNull_native, 0, v15);
            }

            continue;
          }

          v57 = v47;
          if (*(v46 + 24) < v56)
          {
            sub_1BD501470(v56, isUniquelyReferenced_nonNull_native);
            v58 = sub_1BD148F70(v28, v30);
            if ((v57 & 1) != (v47 & 1))
            {
              goto LABEL_42;
            }

            a4 = v58;
            isUniquelyReferenced_nonNull_native = v111;
            if ((v57 & 1) == 0)
            {
              goto LABEL_33;
            }

LABEL_31:
            v84 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * a4);
            v85 = v84[1];
            v86 = v106;
            *v84 = v105;
            v84[1] = v86;
            v30, v47, v48, v49, v50, v51, v52, v53;
            v85, v87, v88, v89, v90, v91, v92, v93;
LABEL_35:
            *v45 = isUniquelyReferenced_nonNull_native;
            a4 = v103;
            isUniquelyReferenced_nonNull_native = v104;
LABEL_36:
            swift_endAccess();

            v22 = v107;
            v21 = v108;
            goto LABEL_10;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            isUniquelyReferenced_nonNull_native = v111;
            if (v47)
            {
              goto LABEL_31;
            }
          }

          else
          {
            sub_1BD5069C0();
            isUniquelyReferenced_nonNull_native = v111;
            if (v57)
            {
              goto LABEL_31;
            }
          }

LABEL_33:
          *(isUniquelyReferenced_nonNull_native + 8 * (a4 >> 6) + 64) |= 1 << a4;
          v94 = (*(isUniquelyReferenced_nonNull_native + 48) + 16 * a4);
          *v94 = v28;
          v94[1] = v30;
          v95 = (*(isUniquelyReferenced_nonNull_native + 56) + 16 * a4);
          v96 = v106;
          *v95 = v105;
          v95[1] = v96;
          v97 = *(isUniquelyReferenced_nonNull_native + 16);
          v98 = __OFADD__(v97, 1);
          v99 = v97 + 1;
          if (v98)
          {
            goto LABEL_38;
          }

          *(isUniquelyReferenced_nonNull_native + 16) = v99;
          goto LABEL_35;
        }

        isUniquelyReferenced_nonNull_native = v41;
      }

      else
      {
        v45 = &v39[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID];
        swift_beginAccess();
      }

      v59 = sub_1BD148F70(v28, v30);
      v61 = v60;
      v30, v60, v62, v63, v64, v65, v66, v67;
      if (v61)
      {
        v68 = swift_isUniquelyReferenced_nonNull_native();
        v76 = *v45;
        v111 = *v45;
        if (!v68)
        {
          sub_1BD5069C0();
          v76 = v111;
        }

        *(*(v76 + 48) + 16 * v59 + 8), v69, v70, v71, v72, v73, v74, v75;
        *(*(v76 + 56) + 16 * v59 + 8), v77, v78, v79, v80, v81, v82, v83;
        sub_1BD50550C(v59, v76);
        *v45 = v76;
      }

      goto LABEL_36;
    }

    break;
  }

  __break(1u);
LABEL_42:
  result = sub_1BE053C14();
  __break(1u);
  return result;
}

uint64_t sub_1BD6D19E8(uint64_t a1, void *a2)
{
  v3 = sub_1BE051F54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v11 = sub_1BE052D54();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1BD6D3F80;
  v26 = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_105_1;
  v14 = _Block_copy(aBlock);
  v15 = v26;
  v16 = a2;
  v15, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD14EC84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v10, v6, v14);
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_1BD6D1CA4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  sub_1BD0E5E8C(0, &qword_1EBD43FC8, 0x1E69B8428);
  sub_1BE052734();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8C4();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_loaded] = 1;
  }
}

char *sub_1BD6D1E64(void *a1)
{
  v4 = v1;
  v5 = [a1 identifier];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  v3 = sub_1BE052434();
  v2 = v7;

  v8 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID;
  swift_beginAccess();
  v1 = *&v4[v8];
  if (!*(v1 + 16))
  {
    v2, v9, v10, v11, v12, v13, v14, v15;
    goto LABEL_24;
  }

  sub_1BE048C84();
  v3 = sub_1BD148F70(v3, v2);
  v17 = v16;
  v2, v16, v18, v19, v20, v21, v22, v23;
  if ((v17 & 1) == 0)
  {
    v1, v24, v25, v26, v27, v28, v29, v30;
    goto LABEL_24;
  }

  v31 = (*(v1 + 56) + 16 * v3);
  v3 = *v31;
  v2 = v31[1];
  sub_1BE048C84();
  v1, v32, v33, v34, v35, v36, v37, v38;
  v1 = *&v4[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts];
  v103 = v4;
  if (v1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    sub_1BE048C84();
    if (i)
    {
      v47 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x1BFB40900](v47, v1);
        }

        else
        {
          if (v47 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v48 = *(v1 + 8 * v47 + 32);
        }

        v4 = v48;
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        v50 = [v48 accountIdentifier];
        if (v50)
        {
          v51 = v50;
          v52 = sub_1BE052434();
          v54 = v53;

          if (v52 == v3 && v54 == v2)
          {
            v2, v55, v56, v57, v58, v59, v60, v61;
            v1, v87, v88, v89, v90, v91, v92, v93;
            v101 = v54;
            goto LABEL_32;
          }

          v63 = sub_1BE053B84();
          v54, v64, v65, v66, v67, v68, v69, v70;
          if (v63)
          {
            v2, v71, v72, v73, v74, v75, v76, v77;
            v101 = v1;
            goto LABEL_32;
          }
        }

        ++v47;
        if (v49 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }

    else
    {
LABEL_23:
      v2, v40, v41, v42, v43, v44, v45, v46;
      v1, v78, v79, v80, v81, v82, v83, v84;
      v4 = v103;
LABEL_24:
      i = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts;
      v85 = *&v4[OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts];
      if (!(v85 >> 62))
      {
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          return 0;
        }

        goto LABEL_26;
      }
    }

    if (sub_1BE053704() != 1)
    {
      return 0;
    }

LABEL_26:
    v86 = *&v4[i];
    if (v86 >> 62)
    {
      if (!sub_1BE053704())
      {
        return 0;
      }
    }

    else if (!*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    if ((v86 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v86 + 32);
    }

    __break(1u);
LABEL_42:
    ;
  }

  sub_1BE048C84();
  v4 = MEMORY[0x1BFB40900](0, v86);
  v101 = v86;
LABEL_32:
  v101, v94, v95, v96, v97, v98, v99, v100;
  return v4;
}

uint64_t sub_1BD6D2170(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD416C0, &unk_1BE0BC2A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v37 - v11);
  v13 = type metadata accessor for FeatureError(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  sub_1BE04D8B4(v12);
  KeyPath, v19, v20, v21, v22, v23, v24, v25;
  v18, v26, v27, v28, v29, v30, v31, v32;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1BD0DE53C(v12, &qword_1EBD416C0, &unk_1BE0BC2A0);
  }

  sub_1BD230930(v12, v16);
  sub_1BD2F8B48(a1, v9);
  v34 = *(v14 + 56);
  v34(v9, 0, 1, v13);
  v35 = FeatureError.matches(error:)(v9);
  sub_1BD0DE53C(v9, &qword_1EBD416C0, &unk_1BE0BC2A0);
  if (v35)
  {
    v34(v9, 1, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD23C2BC(v9, v6);
    v36 = v2;
    sub_1BE04D8C4();
    sub_1BD0DE53C(v9, &qword_1EBD416C0, &unk_1BE0BC2A0);
  }

  return sub_1BD230994(v16);
}

void sub_1BD6D25E8(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD50268, &qword_1EBD50270, &qword_1BE0D11C0);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD416B8, &qword_1EBD416C0, &unk_1BE0BC2A0);
    if (v2 <= 0x3F)
    {
      sub_1BD1E1120();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1BD6D274C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TaxFormsModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

void sub_1BD6D278C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v128 = 1;
  v1 = v0;
  sub_1BE04D8C4();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1BD1AB78C(MEMORY[0x1E69E7CC0]);
  v4 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_taxFormIDToAccountID;
  swift_beginAccess();
  v5 = *&v1[v4];
  *&v1[v4] = v3;
  v5, v6, v7, v8, v9, v10, v11, v12;
  v13 = [objc_opt_self() savingsAccountTaxFormsArray];
  v14 = sub_1BE052744();

  v15 = sub_1BD3FD1E4(v14);
  v14, v16, v17, v18, v19, v20, v21, v22;
  if (!v15)
  {
    goto LABEL_30;
  }

  v127 = v2;
  v124 = v15[2];
  if (!v124)
  {
LABEL_29:
    v15, v23, v24, v25, v26, v27, v28, v29;
    v103 = sub_1BE048C84();
    v126[0] = sub_1BD6D3EBC(v103, sub_1BD1DED88, sub_1BDA7DDE8);
    sub_1BD6D2D50(v126);
    v2, v104, v105, v106, v107, v108, v109, v110;
    v111 = v126[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v126[0] = v111;
    v112 = v1;
    sub_1BE04D8C4();
LABEL_30:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v126[0]) = 0;
    v113 = v1;
    sub_1BE04D8C4();
    return;
  }

  v30 = 0;
  v123 = v15 + 4;
  v121 = OBJC_IVAR____TtC9PassKitUI13TaxFormsModel_accounts;
  while (v30 < v15[2])
  {
    v39 = v123[v30];
    v40 = objc_allocWithZone(MEMORY[0x1E69B8428]);
    sub_1BE048C84();
    v41 = sub_1BE052224();
    v42 = [v40 initWithDictionary_];

    v43 = v42;
    MEMORY[0x1BFB3F7A0]();
    if (*((v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BE052774();
    }

    sub_1BE0527C4();
    v122 = v127;
    v44 = [v43 identifier];
    if (!v44)
    {
      v39, v45, v46, v47, v48, v49, v50, v51;
      goto LABEL_6;
    }

    v52 = v15;
    v53 = v44;
    v54 = sub_1BE052434();
    v56 = v55;

    v57 = *&v1[v121];
    if (v57 >> 62)
    {
      if (!sub_1BE053704())
      {
        goto LABEL_32;
      }
    }

    else if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }

    sub_1BE048C84();
    v39, v58, v59, v60, v61, v62, v63, v64;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v65 = MEMORY[0x1BFB40900](0, v57);
    }

    else
    {
      if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v65 = *(v57 + 32);
    }

    v73 = v65;
    v57, v66, v67, v68, v69, v70, v71, v72;
    v74 = [v73 accountIdentifier];

    if (!v74)
    {
      swift_beginAccess();
LABEL_21:
      v78 = sub_1BD148F70(v54, v56);
      v80 = v79;
      v56, v79, v81, v82, v83, v84, v85, v86;
      v15 = v52;
      if (v80)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95 = *&v1[v4];
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BD5069C0();
        }

        *(*(v95 + 48) + 16 * v78 + 8), v88, v89, v90, v91, v92, v93, v94;
        *(*(v95 + 56) + 16 * v78 + 8), v96, v97, v98, v99, v100, v101, v102;
        sub_1BD50550C(v78, v95);
        *&v1[v4] = v95;
      }

      goto LABEL_5;
    }

    v75 = sub_1BE052434();
    v77 = v76;

    swift_beginAccess();
    if (!v77)
    {
      goto LABEL_21;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    v125 = *&v1[v4];
    sub_1BD1DB308(v75, v77, v54, v56, v31);
    v56, v32, v33, v34, v35, v36, v37, v38;
    *&v1[v4] = v125;
    v15 = v52;
LABEL_5:
    swift_endAccess();
LABEL_6:
    ++v30;

    if (v124 == v30)
    {
      v2 = v122;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);

  v126[0], v114, v115, v116, v117, v118, v119, v120;
  __break(1u);
}

id sub_1BD6D2CB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BD6D2D50(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1BD5F0648(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1BD6D2DCC(v6);
  return sub_1BE0538D4();
}

void sub_1BD6D2DCC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1BD0E5E8C(0, &qword_1EBD43FC8, 0x1E69B8428);
        v6 = sub_1BE0527B4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v16[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v16[1] = v5;
      v8 = v6;
      sub_1BD6D3100(v16, v17, a1, v4);
      *(v7 + 16) = 0;
      v8, v9, v10, v11, v12, v13, v14, v15;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD6D2EE0(0, v2, 1, a1);
  }
}

void sub_1BD6D2EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v30 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v36 = *a4;
    v14 = v36 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v32 = v14;
    v33 = a3;
    v16 = *(v36 + 8 * a3);
    v31 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      v19 = v16;
      v20 = v18;
      v21 = [v19 openingDate];
      sub_1BE04AEE4();

      v22 = [v20 openingDate];
      v23 = v34;
      sub_1BE04AEE4();

      LOBYTE(v22) = sub_1BE04AE74();
      v24 = *v13;
      v25 = v23;
      v26 = v35;
      (*v13)(v25, v35);
      v24(v12, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v14 = v32 + 8;
        v15 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v27;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD6D3100(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v130 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v130);
  v129 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v115 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_129;
    }

    a4 = v21;
    v22 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v111 = a4;
    }

    else
    {
LABEL_123:
      v111 = sub_1BD5ED6C8(a4, v11, v12, v21, v13, v14, v15, v16);
    }

    v131 = v111;
    v112 = *(v111 + 2);
    if (v112 >= 2)
    {
      while (*v22)
      {
        a4 = *&v111[16 * v112];
        v109 = v111;
        v113 = *&v111[16 * v112 + 24];
        sub_1BD6D3970((*v22 + 8 * a4), (*v22 + 8 * *&v111[16 * v112 + 16]), (*v22 + 8 * v113), v5);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v113 < a4)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_1BD5ED6C8(v109, v11, v12, v21, v13, v14, v15, v16);
        }

        if (v112 - 2 >= *(v109 + 2))
        {
          goto LABEL_117;
        }

        v114 = &v109[16 * v112];
        *v114 = a4;
        *(v114 + 1) = v113;
        v131 = v109;
        sub_1BD5ED63C(v112 - 1);
        v111 = v131;
        v112 = *(v131 + 2);
        if (v112 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:
    v111, v11, v12, v21, v13, v14, v15, v16;
    return;
  }

  v20 = 0;
  v127 = (v17 + 8);
  v21 = MEMORY[0x1E69E7CC0];
  v120 = a4;
  v116 = a3;
  while (1)
  {
    v22 = v20++;
    if (v20 < v19)
    {
      v125 = v19;
      v118 = v21;
      v119 = v6;
      v23 = *a3;
      v24 = *(*a3 + 8 * v20);
      v124 = 8 * v22;
      v25 = (v23 + 8 * v22);
      v26 = *v25;
      v5 = (v25 + 2);
      v27 = v24;
      v28 = v26;
      v29 = [v27 openingDate];
      v30 = v128;
      sub_1BE04AEE4();

      v31 = [v28 openingDate];
      v32 = v129;
      sub_1BE04AEE4();

      LODWORD(v126) = sub_1BE04AE74();
      v33 = *v127;
      v34 = v130;
      (*v127)(v32, v130);
      v33(v30, v34);

      v117 = v22;
      v35 = (v22 + 2);
      while (1)
      {
        v20 = v125;
        if (v125 == v35)
        {
          break;
        }

        v36 = *(v5 - 8);
        v37 = *v5;
        v38 = v36;
        v39 = [v37 openingDate];
        v40 = v128;
        sub_1BE04AEE4();

        v41 = [v38 openingDate];
        v42 = v129;
        sub_1BE04AEE4();

        LODWORD(v41) = sub_1BE04AE74() & 1;
        v43 = v42;
        v44 = v130;
        v33(v43, v130);
        v33(v40, v44);

        ++v35;
        v5 += 8;
        if ((v126 & 1) != v41)
        {
          v20 = (v35 - 1);
          break;
        }
      }

      v21 = v118;
      v6 = v119;
      a4 = v120;
      v22 = v117;
      v45 = v124;
      if (v126)
      {
        if (v20 < v117)
        {
          goto LABEL_120;
        }

        a3 = v116;
        if (v117 < v20)
        {
          v46 = 8 * v20 - 8;
          v47 = v20;
          v48 = v117;
          do
          {
            if (v48 != --v47)
            {
              v50 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v49 = *(v50 + v45);
              *(v50 + v45) = *(v50 + v46);
              *(v50 + v46) = v49;
            }

            v48 = (v48 + 1);
            v46 -= 8;
            v45 += 8;
          }

          while (v48 < v47);
        }
      }

      else
      {
        a3 = v116;
      }
    }

    v51 = a3[1];
    if (v20 < v51)
    {
      if (__OFSUB__(v20, v22))
      {
        goto LABEL_119;
      }

      if (v20 - v22 < a4)
      {
        v52 = (v22 + a4);
        if (__OFADD__(v22, a4))
        {
          goto LABEL_121;
        }

        if (v52 >= v51)
        {
          v52 = a3[1];
        }

        if (v52 < v22)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v20 != v52)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v20 < v22)
    {
      goto LABEL_118;
    }

    v67 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v67;
    }

    else
    {
      v21 = sub_1BD1D7844(0, *(v67 + 2) + 1, 1, v67, v13, v14, v15, v16);
    }

    a4 = *(v21 + 2);
    v68 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v68 >> 1)
    {
      v21 = sub_1BD1D7844((v68 > 1), a4 + 1, 1, v21, v13, v14, v15, v16);
    }

    *(v21 + 2) = v5;
    v69 = &v21[16 * a4];
    *(v69 + 4) = v22;
    *(v69 + 5) = v20;
    v70 = *v121;
    if (!*v121)
    {
      goto LABEL_128;
    }

    if (a4)
    {
      while (1)
      {
        v71 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v72 = *(v21 + 4);
          v73 = *(v21 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_56:
          if (v75)
          {
            goto LABEL_107;
          }

          v88 = &v21[16 * v5];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_110;
          }

          v94 = &v21[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_114;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v98 = &v21[16 * v5];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_70:
        if (v93)
        {
          goto LABEL_109;
        }

        v101 = &v21[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_112;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v71 - 1;
        if (v71 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v109 = v21;
        v5 = *&v21[16 * a4 + 32];
        v22 = *&v21[16 * v71 + 40];
        sub_1BD6D3970((*a3 + 8 * v5), (*a3 + 8 * *&v21[16 * v71 + 32]), (*a3 + 8 * v22), v70);
        if (v6)
        {
LABEL_100:
          v111 = v109;
          goto LABEL_101;
        }

        if (v22 < v5)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_1BD5ED6C8(v109, v11, v12, v21, v13, v14, v15, v16);
        }

        if (a4 >= *(v109 + 2))
        {
          goto LABEL_104;
        }

        v110 = &v109[16 * a4];
        *(v110 + 4) = v5;
        *(v110 + 5) = v22;
        v131 = v109;
        a4 = &v131;
        sub_1BD5ED63C(v71);
        v21 = v131;
        v5 = *(v131 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v21[16 * v5 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_105;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_106;
      }

      v83 = &v21[16 * v5];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_108;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_111;
      }

      if (v87 >= v79)
      {
        v105 = &v21[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_115;
        }

        if (v74 < v108)
        {
          v71 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v19 = a3[1];
    a4 = v120;
    if (v20 >= v19)
    {
      goto LABEL_88;
    }
  }

  v118 = v21;
  v119 = v6;
  v126 = *a3;
  v53 = v126 + 8 * v20 - 8;
  v117 = v22;
  a4 = v22 - v20;
  v122 = v52;
LABEL_29:
  v124 = v53;
  v125 = v20;
  v54 = *(v126 + 8 * v20);
  v123 = a4;
  v55 = v53;
  while (1)
  {
    v56 = *v55;
    v5 = v54;
    v57 = v56;
    v58 = [v5 openingDate];
    v59 = v128;
    sub_1BE04AEE4();

    v60 = [v57 openingDate];
    v61 = v129;
    sub_1BE04AEE4();

    LOBYTE(v60) = sub_1BE04AE74();
    v62 = *v127;
    v63 = v61;
    v64 = v130;
    (*v127)(v63, v130);
    v62(v59, v64);

    if ((v60 & 1) == 0)
    {
LABEL_28:
      v20 = v125 + 1;
      v53 = v124 + 8;
      a4 = v123 - 1;
      if ((v125 + 1) != v122)
      {
        goto LABEL_29;
      }

      v20 = v122;
      v21 = v118;
      v6 = v119;
      a3 = v116;
      v22 = v117;
      goto LABEL_36;
    }

    if (!v126)
    {
      break;
    }

    v65 = *v55;
    v54 = *(v55 + 8);
    *v55 = v54;
    *(v55 + 8) = v65;
    v55 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1BD6D3970(id *a1, id *a2, id *a3, void **a4)
{
  v56 = sub_1BE04AF64();
  v8 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v49 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v57 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v58 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v57)
    {
      v50 = (v8 + 8);
LABEL_27:
      v49 = a1;
      v30 = a1 - 1;
      v31 = a3 - 1;
      v32 = v58;
      v51 = a1 - 1;
      do
      {
        v33 = a4;
        v34 = v31;
        v35 = v31 + 1;
        v36 = *--v32;
        v37 = *v30;
        v38 = v36;
        v53 = v38;
        v39 = v37;
        v52 = v39;
        v40 = [v38 openingDate];
        v41 = v54;
        sub_1BE04AEE4();

        v42 = [v39 openingDate];
        v43 = v55;
        sub_1BE04AEE4();

        LOBYTE(v42) = sub_1BE04AE74();
        v44 = *v50;
        v45 = v43;
        v46 = v56;
        (*v50)(v45, v56);
        v44(v41, v46);

        if (v42)
        {
          a4 = v33;
          a3 = v34;
          v47 = v51;
          if (v35 != v49)
          {
            *v34 = *v51;
          }

          if (v58 <= v33 || (a1 = v47, v47 <= v57))
          {
            a1 = v47;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v33;
        if (v35 != v58)
        {
          *v34 = *v32;
        }

        v31 = v34 - 1;
        v58 = v32;
        v30 = v51;
      }

      while (v32 > v33);
      v58 = v32;
      a1 = v49;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v58 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v57 = a1;
        v17 = *a4;
        v18 = *a2;
        v19 = v17;
        v20 = [v18 openingDate];
        v21 = v54;
        sub_1BE04AEE4();

        v22 = [v19 openingDate];
        v23 = v55;
        sub_1BE04AEE4();

        LOBYTE(v22) = sub_1BE04AE74();
        v24 = *v16;
        v25 = v23;
        v26 = v56;
        (*v16)(v25, v56);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v57;
        v29 = v57 == a2++;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 1;
        if (a4 >= v58 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v57;
      v29 = v57 == a4++;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v58 - a4 + (v58 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v58 - a4));
  }

  return 1;
}

unint64_t sub_1BD6D3EBC(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, void *, void *))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_1BE053704();
  if (!v7)
  {
LABEL_7:
    v6, v8, v9, v10, v11, v12, v13, v14;
    return MEMORY[0x1E69E7CC0];
  }

  v15 = v7;
  v16 = a2(v7, 0);
  v17 = a3(v16 + 32, v15, v6);
  v6 = v18;
  v17, v19, v18, v20, v21, v22, v23, v24;
  result = v16;
  if (v6 != v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BD6D4050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for BalanceInfo(0);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PeerPaymentModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CashPromotionView(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v15[*(v16 + 20)];
  *v17 = 0;
  v17[8] = 1;
  v18 = *(v16 + 24);
  v19 = sub_1BE0502A4();
  *&v15[v18] = v19;
  v20 = &v15[*(v12 + 28)];
  v21 = sub_1BE051234();
  v22 = MEMORY[0x1E6981568];
  *(v20 + 3) = MEMORY[0x1E69815C0];
  *(v20 + 4) = v22;
  *v20 = v21;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_1BD0DE53C(a1, &qword_1EBD45480, &unk_1BE0B8C30);
  }

  else
  {
    sub_1BD6D44F0(a1, v11, type metadata accessor for PeerPaymentModel);
    v30 = *(v8 + 20);
    v31 = type metadata accessor for AvailablePass(0);
    sub_1BD0DE19C(&v11[v30 + *(v31 + 28)], v5, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    if ((*(v44 + 48))(v5, 1, v45) == 1)
    {
      sub_1BD6D4558(v11, type metadata accessor for PeerPaymentModel);
      sub_1BD0DE53C(v5, &qword_1EBD39FF0, &unk_1BE0B9CA0);
    }

    else
    {
      v32 = v43;
      sub_1BD6D44F0(v5, v43, type metadata accessor for BalanceInfo);
      v33 = v11[*(v8 + 56)];
      sub_1BD6D4558(v11, type metadata accessor for PeerPaymentModel);
      if (v33 == 1)
      {
        sub_1BD6D44F0(v32, v15, type metadata accessor for BalanceInfo);
        v34 = v46;
        sub_1BD6D4CB4(v15, v46, type metadata accessor for CashPromotionView);
        (*(v13 + 56))(v34, 0, 1, v12);
        return sub_1BD6D4558(v15, type metadata accessor for CashPromotionView);
      }

      sub_1BD6D4558(v32, type metadata accessor for BalanceInfo);
    }
  }

  v19, v23, v24, v25, v26, v27, v28, v29;
  __swift_destroy_boxed_opaque_existential_0(v20, v36, v37, v38, v39, v40, v41, v42);
  return (*(v13 + 56))(v46, 1, 1, v12);
}

uint64_t type metadata accessor for CashPromotionView(uint64_t a1)
{
  result = qword_1EBD50298;
  if (!qword_1EBD50298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD6D44F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6D4558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD6D45E0(uint64_t a1)
{
  type metadata accessor for BalanceInfo(319);
  if (v1 <= 0x3F)
  {
    sub_1BD6D4684();
    if (v2 <= 0x3F)
    {
      sub_1BD1BF1B4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD6D4684()
{
  if (!qword_1EBD502A8)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD502A8);
    }
  }
}

id sub_1BD6D46F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39FF0, &unk_1BE0B9CA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v107 = v104 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502B8, &unk_1BE0F0340);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v109 = v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v108 = v104 - v8;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C0E8, &qword_1BE0C4010);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v106 = v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v105 = v104 - v16;
  v17 = (a1 + *(type metadata accessor for CashPromotionView(0) + 28));
  v18 = v17[3];
  v104[2] = v17[4];
  v104[1] = __swift_project_boxed_opaque_existential_1(v17, v18);
  (*(v10 + 104))(v12, *MEMORY[0x1E69B8050], v9);
  result = PKPassKitBundle();
  if (result)
  {
    v20 = result;
    v21 = sub_1BE04B6F4();
    v23 = v22;

    (*(v10 + 8))(v12, v9);
    v111 = v21;
    v112 = v23;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = sub_1BE0505F4();
    v104[0] = a1;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_1BD0DDF10(v24, v26, (v28 & 1), v36, v38, v39, v40, v41);
    v30, v42, v43, v44, v45, v46, v47, v48;
    v49 = sub_1BE050574();
    v51 = v50;
    LOBYTE(v24) = v52;
    v54 = v53;
    sub_1BD0DDF10(v31, v33, (v35 & 1), v53, v55, v56, v57, v58);
    v37, v59, v60, v61, v62, v63, v64, v65;
    KeyPath = swift_getKeyPath();
    v111 = v49;
    v112 = v51;
    v67 = (v24 & 1);
    v113 = v67;
    v114 = v54;
    v115 = KeyPath;
    v116 = 1;
    v117 = 0;
    sub_1BE052434();
    v69 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108, &unk_1BE0C28D0);
    sub_1BD1B9C50();
    v70 = v105;
    sub_1BE050DE4();
    v69, v71, v72, v73, v74, v75, v76, v77;
    sub_1BD0DDF10(v49, v51, v67, v78, v79, v80, v81, v82);
    KeyPath, v83, v84, v85, v86, v87, v88, v89;
    v54, v90, v91, v92, v93, v94, v95, v96;
    v97 = v107;
    sub_1BD6D4CB4(v104[0], v107, type metadata accessor for BalanceInfo);
    v98 = type metadata accessor for BalanceInfo(0);
    (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
    v99 = v108;
    sub_1BD3AEF64(v97, v108);
    v100 = v106;
    sub_1BD0DE19C(v70, v106, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v101 = v109;
    sub_1BD0DE19C(v99, v109, &qword_1EBD502B8, &unk_1BE0F0340);
    v102 = v110;
    sub_1BD0DE19C(v100, v110, &qword_1EBD3C0E8, &qword_1BE0C4010);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502C0, &qword_1BE0F0380);
    sub_1BD0DE19C(v101, v102 + *(v103 + 48), &qword_1EBD502B8, &unk_1BE0F0340);
    sub_1BD0DE53C(v99, &qword_1EBD502B8, &unk_1BE0F0340);
    sub_1BD0DE53C(v70, &qword_1EBD3C0E8, &qword_1BE0C4010);
    sub_1BD0DE53C(v101, &qword_1EBD502B8, &unk_1BE0F0340);
    return sub_1BD0DE53C(v100, &qword_1EBD3C0E8, &qword_1BE0C4010);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD6D4C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 20);
  v5 = *v4;
  v6 = *(v4 + 8);
  *a2 = sub_1BE04F504();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD502B0, &qword_1BE0F0338);
  return sub_1BD6D46F0(v2, a2 + *(v7 + 44));
}

uint64_t sub_1BD6D4CB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6D4D1C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 1;
  }

  for (i = v1 + 32; ; i += 88)
  {
    v4 = *(i + 16);
    v12[0] = *i;
    v12[1] = v4;
    v5 = *(i + 32);
    v6 = *(i + 48);
    v7 = *(i + 64);
    v13 = *(i + 80);
    v12[3] = v6;
    v12[4] = v7;
    v12[2] = v5;
    v8 = *&v12[0];
    sub_1BD40F770(v12, v11);
    sub_1BD40F770(v12, v11);
    v9 = [v8 dateComponentsRange];
    if (!v9)
    {
      break;
    }

    sub_1BD40F7CC(v12);
    sub_1BD40F7CC(v12);
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1BD40F7CC(v12);
  sub_1BD40F7CC(v12);
  return 0;
}

uint64_t sub_1BD6D4DF8(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 56);
  v12[2] = *(a1 + 40);
  v12[3] = v3;
  v12[4] = *(a1 + 72);
  v13 = *(a1 + 88);
  v4 = *(a1 + 24);
  v12[0] = *(a1 + 8);
  v12[1] = v4;
  v5 = *a2;
  v6 = *(a2 + 24);
  v14[0] = *(a2 + 8);
  v14[1] = v6;
  v7 = *(a2 + 40);
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v15 = *(a2 + 88);
  v14[3] = v8;
  v14[4] = v9;
  v14[2] = v7;
  if (sub_1BD3FE0F0(v2, v5))
  {
    v10 = sub_1BD5C795C(v12, v14);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1BD6D4E94(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v122 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v118 - v9;
  v11 = [a1 shippingMethod];
  v125 = a2;
  if (!v11)
  {

    v81 = 0;
    v82 = 0;
    v19 = 0;
    v21 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    v14 = 0;
LABEL_38:
    v90 = 0;
    v91 = 0;
LABEL_49:
    v116 = v125;
    *v125 = v81;
    v116[1] = v82;
    v116[2] = v19;
    v116[3] = v21;
    v116[4] = v83;
    v116[5] = v91;
    v116[6] = v84;
    v116[7] = v85;
    v116[8] = v86;
    v116[9] = v87;
    v116[10] = v14;
    v116[11] = v90;
    return;
  }

  v123 = v11;
  v124 = a1;
  v12 = [a1 paymentRequest];
  if (!v12)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v13 = v12;
  v14 = [v12 availableShippingMethods];

  if (!v14)
  {

    v81 = 0;
    v82 = 0;
    v19 = 0;
    v21 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
    goto LABEL_38;
  }

  v119 = v10;
  v118 = v14;
  v15 = [v14 methods];
  sub_1BD6D56D0();
  v137 = sub_1BE052744();

  v16 = v124;
  v17 = [v124 currencyCode];
  if (!v17)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v18 = v17;
  v19 = sub_1BE052434();
  v21 = v20;

  v22 = [v16 paymentRequest];
  if (!v22)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v23 = v22;
  v24 = [v22 shippingType];

  v32 = v137;
  if (v137 >> 62)
  {
    goto LABEL_51;
  }

  v33 = *((v137 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v120 = 0xEE00454C5449545FLL;
  v121 = 0x474E495050494853;
  v34 = MEMORY[0x1E69B8068];
  v136 = v24;
  if (v33)
  {
    v35 = v32;
    v146 = MEMORY[0x1E69E7CC0];
    v32 = sub_1BD531AA4(0, v33 & ~(v33 >> 63), 0, v27, v28, v29, v30, v31);
    if ((v33 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      v37 = v146;
      v38 = v35;
      v126 = v35 & 0xFFFFFFFFFFFFFF8;
      v134 = 0x80000001BE1359F0;
      v135 = v35 & 0xC000000000000001;
      v133 = 0x80000001BE1359D0;
      v132 = *MEMORY[0x1E69B8068];
      v130 = (v122 + 8);
      v131 = (v122 + 104);
      v128 = v4;
      v129 = v33 - 1;
      v127 = v6;
      while (1)
      {
        v142 = v37;
        if (v135)
        {
          v39 = MEMORY[0x1BFB40900](v36, v38);
        }

        else
        {
          if (v36 >= *(v126 + 16))
          {
            goto LABEL_50;
          }

          v39 = *(v38 + 8 * v36 + 32);
        }

        v40 = v39;
        v145 = 0;
        v41 = 0xEE00454C5449545FLL;
        if (v24 == 2)
        {
          v41 = v134;
        }

        if (v24 == 3)
        {
          v42 = v133;
        }

        else
        {
          v42 = v41;
        }

        (*v131)(v6, v132, v4);
        sub_1BE048C84();
        v43 = v40;
        v44 = PKPassKitBundle();
        if (!v44)
        {
          goto LABEL_53;
        }

        v45 = v44;
        v46 = sub_1BE04B6F4();
        v140 = v47;
        v42, v47, v48, v49, v50, v51, v52, v53;

        (*v130)(v6, v4);
        v54 = [v43 dateComponentsRange];
        v141 = v46;
        if (v54)
        {
          v55 = v54;
          v56 = [objc_allocWithZone(MEMORY[0x1E69B8790]) init];
          v57 = [v56 stringFromDateComponentsRange_];

          if (v57)
          {
            v58 = sub_1BE052434();
            v138 = v59;
            v139 = v58;

            goto LABEL_27;
          }
        }

        v60 = [v43 detail];
        if (!v60)
        {
          v138 = 0;
          v139 = 0;
          goto LABEL_29;
        }

        v55 = v60;
        v61 = sub_1BE052434();
        v138 = v62;
        v139 = v61;
LABEL_27:

LABEL_29:
        sub_1BD5C7B84(v43, v19, v21);
        v64 = v63;
        v66 = v65;

        v74 = v145;
        v143[0] = *v144;
        *(v143 + 3) = *&v144[3];
        v37 = v142;
        v146 = v142;
        v76 = *(v142 + 16);
        v75 = *(v142 + 24);
        if (v76 >= v75 >> 1)
        {
          v32 = sub_1BD531AA4((v75 > 1), v76 + 1, 1, v69, v70, v71, v72, v73);
          v37 = v146;
        }

        *(v37 + 16) = v76 + 1;
        v77 = v37 + 88 * v76;
        *(v77 + 32) = v43;
        *(v77 + 40) = v19;
        v24 = v136;
        *(v77 + 48) = v21;
        *(v77 + 56) = v24;
        *(v77 + 64) = v74;
        v78 = *(v143 + 3);
        *(v77 + 65) = v143[0];
        *(v77 + 68) = v78;
        v79 = v140;
        *(v77 + 72) = v141;
        *(v77 + 80) = v79;
        v80 = v138;
        *(v77 + 88) = v139;
        *(v77 + 96) = v80;
        *(v77 + 104) = v64;
        *(v77 + 112) = v66;
        if (v129 == v36)
        {
          v88 = v37;
          v137, v67, v68, v69, v70, v71, v72, v73;
          v89 = v88;
          v4 = v128;
          v34 = MEMORY[0x1E69B8068];
          goto LABEL_40;
        }

        ++v36;
        v6 = v127;
        v4 = v128;
        v38 = v137;
        if (__OFADD__(v36, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v117 = v32;
          v33 = sub_1BE053704();
          v32 = v117;
          goto LABEL_8;
        }
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v32, v25, v26, v27, v28, v29, v30, v31;
  v89 = MEMORY[0x1E69E7CC0];
LABEL_40:
  LOBYTE(v146) = 0;
  v142 = v89;
  if (v24 == 3)
  {
    v120 = 0x80000001BE1359D0;
    v92 = 0xD000000000000013;
  }

  else if (v24 == 2)
  {
    v120 = 0x80000001BE1359F0;
    v92 = 0xD000000000000011;
  }

  else
  {
    if (v24 != 1)
    {
      goto LABEL_47;
    }

    v92 = 0x59524556494C4544;
  }

  v121 = v92;
LABEL_47:
  v93 = v122;
  v94 = v119;
  (*(v122 + 104))(v119, *v34, v4);
  sub_1BE048C84();
  v95 = v123;
  v96 = PKPassKitBundle();
  if (v96)
  {
    v97 = v96;
    v98 = v120;
    v84 = sub_1BE04B6F4();
    v85 = v99;
    v98, v99, v100, v101, v102, v103, v104, v105;

    (*(v93 + 8))(v94, v4);
    v86 = sub_1BD5C7AA0(v95);
    v87 = v106;
    sub_1BD5C7B84(v95, v19, v21);
    v14 = v107;
    v90 = v108;

    v21, v109, v110, v111, v112, v113, v114, v115;
    v91 = v146;
    v82 = v123;
    v83 = v136;
    v81 = v142;
    goto LABEL_49;
  }

LABEL_57:
  __break(1u);
}

unint64_t sub_1BD6D56D0()
{
  result = qword_1EBD45FC8;
  if (!qword_1EBD45FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD45FC8);
  }

  return result;
}

uint64_t sub_1BD6D571C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1BD6D5764(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD6D57E0()
{
  result = qword_1EBD502D8;
  if (!qword_1EBD502D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD502D8);
  }

  return result;
}

const char *sub_1BD6D5848()
{
  v1 = "Shasta";
  v2 = "Phoenix";
  if (*v0 != 2)
  {
    v2 = "WalletFPANUpdates";
  }

  if (*v0)
  {
    v1 = "ShastaProvisioning";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1BD6D58A8(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(v20);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  v19 = v20[1];
  *a2 = v20[0];
  a2[1] = v19;
}

uint64_t sub_1BD6D5928(unint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1BE048C84();
  sub_1BD6D5A50(v2, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6D59B4()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD6D5A50(unint64_t a1, unint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v70);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v27 = v71;
  if (v70 == a1 && v71 == a2)
  {
    v71, v21, v70, v22, v23, v24, v25, v26;
    return;
  }

  v29 = sub_1BE053B84();
  v27, v30, v31, v32, v33, v34, v35, v36;
  if (v29)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_ignoreNextSearchedText] == 1)
  {
    v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_ignoreNextSearchedText] = 0;
    return;
  }

  v37 = *&v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel];
  [v37 endSearch];
  if (v2[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_emptyResultsForEmptySearchTerm] == 1)
  {
    v38 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v38 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v38)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v64 = MEMORY[0x1E69E7CC0];
      v70 = MEMORY[0x1E69E7CC0];
      v65 = v2;
      sub_1BE04D8C4();
      swift_getKeyPath();
      swift_getKeyPath();
      v70 = v64;
      v66 = v65;
      sub_1BE04D8C4();
      return;
    }
  }

  v39 = objc_allocWithZone(MEMORY[0x1E69B8530]);
  v40 = sub_1BE052404();
  v41 = [v39 initWithFullText_];

  if (!v41)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v41 setOutputKey_];
  v42 = sub_1BE052434();
  v44 = v43;
  v45 = [v41 keysToFetch];
  if (!v45)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = sub_1BE052744();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = sub_1BD03B038(0, *(v47 + 16) + 1, 1, v47, v48, v49, v50, v51);
  }

  v52 = *(v47 + 16);
  v53 = *(v47 + 24);
  v54 = v52 + 1;
  if (v52 >= v53 >> 1)
  {
    v67 = v47;
    v68 = *(v47 + 16);
    v69 = sub_1BD03B038((v53 > 1), v52 + 1, 1, v67, v48, v49, v50, v51);
    v52 = v68;
    v47 = v69;
  }

  *(v47 + 16) = v54;
  v55 = v47 + 16 * v52;
  *(v55 + 32) = v42;
  *(v55 + 40) = v44;
  v56 = sub_1BE052724();
  v47, v57, v58, v59, v60, v61, v62, v63;
  [v41 setKeysToFetch_];

  [v37 beginSearch_];
}

uint64_t sub_1BD6D5D64()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

char *sub_1BD6D5DD8(int a1, int a2, int a3)
{
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0, &qword_1BE0E0130);
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD503B8, &qword_1BE0F0628);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60, &qword_1BE0C7780);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  v15 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__isMatchingContact;
  LOBYTE(v33) = 0;
  sub_1BE04D874();
  (*(v12 + 32))(&v3[v15], v14, v11);
  v16 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x1E69B8528]) init];
  v17 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__contactResults;
  v18 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD50340, &qword_1BE0F0510);
  sub_1BE04D874();
  v19 = *(v8 + 32);
  v19(&v3[v17], v10, v7);
  v20 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__mapsResults;
  v33 = v18;
  sub_1BE04D874();
  v19(&v3[v20], v10, v7);
  v21 = &v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
  *v21 = 0;
  v21[1] = 0;
  v22 = OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel__searchText;
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1BE04D874();
  (*(v4 + 32))(&v3[v22], v6, v28);
  v23 = v30;
  v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_emptyResultsForEmptySearchTerm] = v29;
  v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_ignoreNextSearchedText] = v23;
  v3[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_mapsOnly] = v31;
  v24 = type metadata accessor for AddressSearchingModel(0);
  v32.receiver = v3;
  v32.super_class = v24;
  v25 = objc_msgSendSuper2(&v32, sel_init);
  [*&v25[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel] setDelegate_];
  return v25;
}

id sub_1BD6D614C(void *a1, char a2, uint64_t (*a3)(void *), uint64_t a4)
{
  v5 = v4;
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v49);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  if (v49)
  {
    v26 = 0;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v5;
    sub_1BE04D8C4();
    if (a2)
    {
      v28 = &v27[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
      v29 = *&v27[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler];
      v30 = *&v27[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_contactMatchHandler + 8];
      *v28 = a3;
      *(v28 + 1) = a4;
      sub_1BE048964();
      sub_1BD0D4744(v29, v30, v31, v32, v33, v34, v35, v36);
      return [*&v27[OBJC_IVAR____TtC9PassKitUI21AddressSearchingModel_searchModel] selectMapSearchCompletion_];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v27;
    sub_1BE04D8C4();
    sub_1BE052434();
    v40 = v39;
    v41 = sub_1BE052404();
    v40, v42, v43, v44, v45, v46, v47, v48;
    [a1 setValueSource_];

    v26 = a1;
  }

  return a3(v26);
}

id sub_1BD6D6334()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddressSearchingModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AddressSearchingModel(uint64_t a1)
{
  result = qword_1EBD50320;
  if (!qword_1EBD50320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6D6524(uint64_t a1)
{
  sub_1BD540F14(319, &qword_1EBD368F0, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1BD6D6670(319);
    if (v2 <= 0x3F)
    {
      sub_1BD540F14(319, &unk_1EBD49E00, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1BD6D6670(uint64_t a1)
{
  if (!qword_1EBD50338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD50340, &qword_1BE0F0510);
    v1 = sub_1BE04D8D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD50338);
    }
  }
}

uint64_t sub_1BD6D66D4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AddressSearchingModel(0);
  result = sub_1BE04D814();
  *a2 = result;
  return result;
}

char *sub_1BD6D6714(unint64_t a1, id a2)
{
  result = [a2 contactsSearchResults];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1BD0E5E8C(0, &qword_1EBD406E0, 0x1E695CD58);
  v5 = sub_1BE052744();

  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    while (1)
    {
      v30 = MEMORY[0x1E69E7CC0];
      result = sub_1BD532354(0, v13 & ~(v13 >> 63), 0, v8, v9, v10, v11, v12);
      if (v13 < 0)
      {
        break;
      }

      v14 = 0;
      v29 = a1;
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFB40900](v14, v5);
        }

        else
        {
          if (v14 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v16 = *(v5 + 8 * v14 + 32);
        }

        v17 = v16;
        result = [v16 pkContactWithCleanedUpCountryCode];
        if (!result)
        {
          goto LABEL_22;
        }

        v18 = result;

        a1 = *(v30 + 16);
        v26 = *(v30 + 24);
        if (a1 >= v26 >> 1)
        {
          sub_1BD532354((v26 > 1), a1 + 1, 1, v21, v22, v23, v24, v25);
        }

        *(v30 + 16) = a1 + 1;
        v27 = v30 + 16 * a1;
        *(v27 + 32) = v18;
        *(v27 + 40) = 0;
        ++v14;
        if (v15 == v13)
        {
          v5, v19, v20, v21, v22, v23, v24, v25;
          a1 = v29;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v13 = sub_1BE053704();
      if (!v13)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_19:
  v5, v6, v7, v8, v9, v10, v11, v12;
LABEL_20:
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = a1;
  return sub_1BE04D8C4();
}