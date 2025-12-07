id sub_1BD747090(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x70));
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(v53);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  v21 = v53[0];
  LOBYTE(v6) = sub_1BE04CA44();
  v21, v22, v23, v24, v25, v26, v27, v28;
  if (v6)
  {
    [*(v4 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    v29 = swift_getKeyPath();
    v30 = swift_getKeyPath();
    sub_1BE04D8B4(v53);
    v29, v31, v32, v33, v34, v35, v36, v37;
    v30, v38, v39, v40, v41, v42, v43, v44;
    v45 = v53[0];
    sub_1BE04CA54();
    v46 = *(v45 + qword_1EBD55580);
    v47 = *(v45 + qword_1EBD55580 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v53[0] = v46;
    v53[1] = v47;
    sub_1BE04D8C4();
  }

  result = [objc_allocWithZone(MEMORY[0x1E69BC748]) initWithPolicy_];
  if (result)
  {
    v49 = result;
    [result setPasscodeOnly_];
    v50 = sub_1BE052404();
    v51 = PKLocalizedIdentityString(v50);

    [v49 setPasscodeTitle_];
    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BE048964();
    sub_1BD7F2940(v49, a2, v52);
  }

  return result;
}

void sub_1BD7472D8(uint64_t (*a1)(void, double))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E40, &unk_1BE0D5BB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v154[-v4 - 8];
  v153 = sub_1BE04C7B4();
  v6 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v8 = &v154[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  KeyPath = swift_getKeyPath();
  v11 = swift_getKeyPath();
  sub_1BE04D8B4(&v155);
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v11, v19, v20, v21, v22, v23, v24, v25;
  v26 = v155;
  LOBYTE(v11) = sub_1BE04CA44();
  v26, v27, v28, v29, v30, v31, v32, v33;
  if (v11)
  {
    [*(v9 + OBJC_IVAR____TtC9PassKitUI20AuthenticatorWrapper_authenticator) cancelEvaluationWithOptions_];
    v35 = swift_getKeyPath();
    v36 = swift_getKeyPath();
    sub_1BE04D8B4(&v155);
    v35, v37, v38, v39, v40, v41, v42, v43;
    v36, v44, v45, v46, v47, v48, v49, v50;
    v51 = v155;
    sub_1BE04CA54();
    v52 = *(v51 + qword_1EBD55580);
    v53 = *(v51 + qword_1EBD55580 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    *&v155 = v52;
    *(&v155 + 1) = v53;
    v34 = sub_1BE04D8C4();
  }

  v54 = MEMORY[0x1EEE9AC00](v34);
  v55 = a1(0, v54);
  *(&v153 - 2) = v55;
  v56 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v56);
  *(&v153 - 2) = v55;
  v57 = swift_getKeyPath();
  sub_1BE04D8B4(&v155);
  v56, v58, v59, v60, v61, v62, v63, v64;
  v57, v65, v66, v67, v68, v69, v70, v71;
  v72 = v155;
  sub_1BE04C994();
  v72, v73, v74, v75, v76, v77, v78, v79;
  MEMORY[0x1EEE9AC00](v80);
  *(&v153 - 2) = v55;
  v81 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v81);
  *(&v153 - 2) = v55;
  v82 = swift_getKeyPath();
  sub_1BE04D8B4(&v155);
  v81, v83, v84, v85, v86, v87, v88, v89;
  v82, v90, v91, v92, v93, v94, v95, v96;
  v97 = v155;
  v98 = v153;
  (*(v6 + 104))(v8, *MEMORY[0x1E69BC980], v153);
  v99 = sub_1BE051F44();
  (*(*(v99 - 8) + 56))(v5, 1, 1, v99);
  sub_1BD83C0A8(v8, 0, 0, v5);
  v97, v100, v101, v102, v103, v104, v105, v106;
  sub_1BD0DE53C(v5, &unk_1EBD45E40, &unk_1BE0D5BB0);
  v107 = (*(v6 + 8))(v8, v98);
  MEMORY[0x1EEE9AC00](v107);
  *(&v153 - 2) = v55;
  v108 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v108);
  *(&v153 - 2) = v55;
  v109 = swift_getKeyPath();
  sub_1BE04D8B4(&v155);
  v108, v110, v111, v112, v113, v114, v115, v116;
  v109, v117, v118, v119, v120, v121, v122, v123;
  v124 = v155;
  v125 = *(v155 + qword_1EBDAADC0);
  v126 = v155 + qword_1EBDAADA8;
  v155 = *(v155 + qword_1EBDAADA8);
  v156 = *(v126 + 16);
  v157 = *(v126 + 32);
  v127 = v155;
  v128 = v157;
  v158 = *(&v155 + 1);
  v159 = *(&v156 + 1);
  v129 = *(&v157 + 1);
  sub_1BE048964();
  v130 = v127;
  sub_1BD0DE19C(&v158, v154, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v159, v154, &qword_1EBD40150, &qword_1BE0C12A0);
  v131 = v128;
  sub_1BE048964();
  sub_1BDA74FEC(&v155, v124, 0, 0);

  sub_1BD0DE53C(&v158, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE53C(&v159, &qword_1EBD40150, &qword_1BE0C12A0);
  v124, v132, v133, v134, v135, v136, v137, v138;
  v125, v139, v140, v141, v142, v143, v144, v145;
  v129, v146, v147, v148, v149, v150, v151, v152;
}

void sub_1BD7478D8()
{
  v1 = sub_1BE04D214();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for AccountServiceAuthorizationModel(0);
  v65 = v14;
  KeyPath = swift_getKeyPath();
  v64 = v14;
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&v66);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = v66;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v13);
  v31, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v33, v48, v49, v50, v51, v52, v53, v54;
  (*(v8 + 104))(v10, *MEMORY[0x1E69BC980], v7);
  LOBYTE(v31) = sub_1BE04C7A4();
  v55 = *(v8 + 8);
  v55(v10, v7);
  v55(v13, v7);
  if (v31)
  {
    sub_1BE04D084();
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v56, v57, "Passcode required, not automatically resuming authentication", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    (*(v62 + 8))(v6, v63);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for AccountServiceAuthorizationModel, type metadata accessor for AccountServiceAuthorizationModel, type metadata accessor for AccountServiceAuthorizationModel, &unk_1F3BB9BD8, sub_1BD753B38);
  }

  else
  {
    sub_1BE04D084();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1BD026000, v59, v60, "Not in authenticate state, not resuming authentication", v61, 2u);
      MEMORY[0x1BFB45F20](v61, -1, -1);
    }

    (*(v62 + 8))(v3, v63);
  }
}

void sub_1BD747D18()
{
  v1 = sub_1BE04D214();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for IdentityAuthorizationModel(0);
  v65 = v14;
  KeyPath = swift_getKeyPath();
  v64 = v14;
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&v66);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = v66;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v13);
  v31, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v33, v48, v49, v50, v51, v52, v53, v54;
  (*(v8 + 104))(v10, *MEMORY[0x1E69BC980], v7);
  LOBYTE(v31) = sub_1BE04C7A4();
  v55 = *(v8 + 8);
  v55(v10, v7);
  v55(v13, v7);
  if (v31)
  {
    sub_1BE04D084();
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v56, v57, "Passcode required, not automatically resuming authentication", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    (*(v62 + 8))(v6, v63);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for IdentityAuthorizationModel, type metadata accessor for IdentityAuthorizationModel, type metadata accessor for IdentityAuthorizationModel, &unk_1F3BB9980, sub_1BD75371C);
  }

  else
  {
    sub_1BE04D084();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1BD026000, v59, v60, "Not in authenticate state, not resuming authentication", v61, 2u);
      MEMORY[0x1BFB45F20](v61, -1, -1);
    }

    (*(v62 + 8))(v3, v63);
  }
}

void sub_1BD748158()
{
  v1 = sub_1BE04D214();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for PaymentAuthorizationModel(0);
  v65 = v14;
  KeyPath = swift_getKeyPath();
  v64 = v14;
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&v66);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = v66;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v13);
  v31, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v33, v48, v49, v50, v51, v52, v53, v54;
  (*(v8 + 104))(v10, *MEMORY[0x1E69BC980], v7);
  LOBYTE(v31) = sub_1BE04C7A4();
  v55 = *(v8 + 8);
  v55(v10, v7);
  v55(v13, v7);
  if (v31)
  {
    sub_1BE04D084();
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v56, v57, "Passcode required, not automatically resuming authentication", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    (*(v62 + 8))(v6, v63);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for PaymentAuthorizationModel, type metadata accessor for PaymentAuthorizationModel, type metadata accessor for PaymentAuthorizationModel, &unk_1F3BB9A48, sub_1BD753878);
  }

  else
  {
    sub_1BE04D084();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1BD026000, v59, v60, "Not in authenticate state, not resuming authentication", v61, 2u);
      MEMORY[0x1BFB45F20](v61, -1, -1);
    }

    (*(v62 + 8))(v3, v63);
  }
}

void sub_1BD748598()
{
  v1 = sub_1BE04D214();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for AMPAuthorizationModel(0);
  v65 = v14;
  KeyPath = swift_getKeyPath();
  v64 = v14;
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&v66);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = v66;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v13);
  v31, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v33, v48, v49, v50, v51, v52, v53, v54;
  (*(v8 + 104))(v10, *MEMORY[0x1E69BC980], v7);
  LOBYTE(v31) = sub_1BE04C7A4();
  v55 = *(v8 + 8);
  v55(v10, v7);
  v55(v13, v7);
  if (v31)
  {
    sub_1BE04D084();
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v56, v57, "Passcode required, not automatically resuming authentication", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    (*(v62 + 8))(v6, v63);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for AMPAuthorizationModel, type metadata accessor for AMPAuthorizationModel, type metadata accessor for AMPAuthorizationModel, &unk_1F3BB9660, sub_1BD752BD4);
  }

  else
  {
    sub_1BE04D084();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1BD026000, v59, v60, "Not in authenticate state, not resuming authentication", v61, 2u);
      MEMORY[0x1BFB45F20](v61, -1, -1);
    }

    (*(v62 + 8))(v3, v63);
  }
}

void sub_1BD7489D8()
{
  v1 = sub_1BE04D214();
  v62 = *(v1 - 8);
  v63 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v62 - v5;
  v7 = sub_1BE04C7B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v62 - v12;
  v14 = type metadata accessor for VirtualCardAuthorizationModel(0);
  v65 = v14;
  KeyPath = swift_getKeyPath();
  v64 = v14;
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&v66);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v31 = v66;
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  sub_1BE04D8B4(v13);
  v31, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  v33, v48, v49, v50, v51, v52, v53, v54;
  (*(v8 + 104))(v10, *MEMORY[0x1E69BC980], v7);
  LOBYTE(v31) = sub_1BE04C7A4();
  v55 = *(v8 + 8);
  v55(v10, v7);
  v55(v13, v7);
  if (v31)
  {
    sub_1BE04D084();
    v56 = sub_1BE04D204();
    v57 = sub_1BE052C54();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1BD026000, v56, v57, "Passcode required, not automatically resuming authentication", v58, 2u);
      MEMORY[0x1BFB45F20](v58, -1, -1);
    }

    (*(v62 + 8))(v6, v63);
  }

  else if ([*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xD8)) state] == 5)
  {
    sub_1BD752338(type metadata accessor for VirtualCardAuthorizationModel, type metadata accessor for VirtualCardAuthorizationModel, type metadata accessor for VirtualCardAuthorizationModel, &unk_1F3BB9B10, sub_1BD753A60);
  }

  else
  {
    sub_1BE04D084();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1BD026000, v59, v60, "Not in authenticate state, not resuming authentication", v61, 2u);
      MEMORY[0x1BFB45F20](v61, -1, -1);
    }

    (*(v62 + 8))(v3, v63);
  }
}

void *sub_1BD748E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v7 = sub_1BE051F54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE051FA4();
  v33 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v30 = sub_1BE052D54();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a1;
    aBlock[4] = v31;
    v35 = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = v32;
    v18 = _Block_copy(aBlock);
    v19 = v35;
    v20 = a1;
    v19, v21, v22, v23, v24, v25, v26, v27;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD751B3C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    v32 = v11;
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    sub_1BE053664();
    v28 = v30;
    MEMORY[0x1BFB3FDF0](0, v13, v10, v18);
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    return (*(v33 + 8))(v13, v32);
  }

  return result;
}

void sub_1BD749150(uint64_t a1, void *a2, uint64_t (*a3)(double), void (*a4)(void))
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([a2 result])
    {
      sub_1BE04D084();
      v13 = sub_1BE04D204();
      v14 = sub_1BE052C54();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1BD026000, v13, v14, "Passcode to clear biolockout pre-empted or failed", v15, 2u);
        MEMORY[0x1BFB45F20](v15, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
      v16 = *(v12 + *((*MEMORY[0x1E69E7D40] & *v12) + 0xD8));
      v17 = *MEMORY[0x1E69BBBC8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B69E0;
      *(inited + 32) = 0xD000000000000015;
      *(inited + 40) = 0x80000001BE128F00;
      v19 = v16;
      v20 = v17;
      v21 = [a2 result];
      *(inited + 72) = MEMORY[0x1E69E6530];
      *(inited + 48) = v21;
      v22 = sub_1BD1AACF8(inited);
      swift_setDeallocating();
      sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
      v23 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v24 = sub_1BE052224();
      v22, v25, v26, v27, v28, v29, v30, v31;
      v32 = [v23 initWithDomain:v20 code:-1 userInfo:v24];

      v33 = sub_1BE04A844();
      [v19 didEncounterFatalError_];

      v12 = v33;
    }

    else
    {
      v107 = a4;
      v34 = MEMORY[0x1EEE9AC00](0);
      v35 = a3(v34);
      *(&v106 - 2) = v35;
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v106 - 2) = v35;
      v37 = swift_getKeyPath();
      sub_1BE04D8B4(&v109);
      KeyPath, v38, v39, v40, v41, v42, v43, v44;
      v37, v45, v46, v47, v48, v49, v50, v51;
      v52 = v109;
      sub_1BE04CA74();
      v52, v53, v54, v55, v56, v57, v58, v59;
      MEMORY[0x1EEE9AC00](v60);
      *(&v106 - 2) = v35;
      v61 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v61);
      *(&v106 - 2) = v35;
      v62 = swift_getKeyPath();
      sub_1BE04D8B4(&v109);
      v61, v63, v64, v65, v66, v67, v68, v69;
      v62, v70, v71, v72, v73, v74, v75, v76;
      v77 = v109;
      v78 = *(v109 + qword_1EBDAADC0);
      v79 = v109 + qword_1EBDAADA8;
      v109 = *(v109 + qword_1EBDAADA8);
      v110 = *(v79 + 16);
      v111 = *(v79 + 32);
      v80 = v109;
      v81 = v111;
      v112 = *(&v109 + 1);
      v113[0] = *(&v110 + 1);
      v82 = *(&v111 + 1);
      sub_1BE048964();
      v83 = v80;
      sub_1BD0DE19C(&v112, v108, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(v113, v108, &qword_1EBD40150, &qword_1BE0C12A0);
      v84 = v81;
      sub_1BE048964();
      sub_1BDA74FEC(&v109, v77, 0, 0);

      sub_1BD0DE53C(&v112, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE53C(v113, &qword_1EBD40150, &qword_1BE0C12A0);
      v77, v85, v86, v87, v88, v89, v90, v91;
      v78, v92, v93, v94, v95, v96, v97, v98;
      v82, v99, v100, v101, v102, v103, v104, v105;

      v107();
    }
  }
}

uint64_t sub_1BD7496DC()
{
  type metadata accessor for ScrollViewManager(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
  v2 = sub_1BE04ECA4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_1BD749760@<X0>(uint64_t a1@<X8>)
{
  v150 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EC8, &qword_1BE0F4BB0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v137 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51ED0, &qword_1BE0F4BB8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v137 - v6;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51ED8, &qword_1BE0F4BC0);
  MEMORY[0x1EEE9AC00](v138);
  v9 = &v137 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EE0, &qword_1BE0F4BC8);
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v137 - v10;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EE8, &qword_1BE0F4BD0);
  MEMORY[0x1EEE9AC00](v151);
  v142 = &v137 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EF0, &qword_1BE0F4BD8);
  v143 = *(v12 - 8);
  v144 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v152 = &v137 - v13;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51EF8, &qword_1BE0F4BE0);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v137 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51F00, &qword_1BE0F4BE8);
  v148 = *(v15 - 8);
  v149 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v147 = &v137 - v16;
  sub_1BD74A210(v4);
  v17 = v1;
  v18 = *(v1 + 32);
  if (v18)
  {
    sub_1BE048964();
    sub_1BE04CD14();
    v18, v19, v20, v21, v22, v23, v24, v25;
    v26 = sub_1BE051D94();
    v27 = *(v1 + 24);
    v28 = &v7[*(v5 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F0A0, &qword_1BE0C5490);
    v139 = v27;
    sub_1BE04CB14();
    *v28 = v26;
    sub_1BD0DE204(v4, v7, &qword_1EBD51EC8, &qword_1BE0F4BB0);
    sub_1BE048964();
    sub_1BE04CD14();
    v18, v29, v30, v31, v32, v33, v34, v35;
    v36 = sub_1BE051D94();
    v37 = sub_1BE04CB54();
    sub_1BD0DE19C(v7, v9, &qword_1EBD51ED0, &qword_1BE0F4BB8);
    v38 = &v9[*(v138 + 36)];
    *v38 = v36;
    v38[8] = v37 & 1;
    sub_1BD0DE53C(v7, &qword_1EBD51ED0, &qword_1BE0F4BB8);
    sub_1BE048964();
    sub_1BE04CD14();
    v18, v39, v40, v41, v42, v43, v44, v45;
    v46 = sub_1BE051D94();
    v47 = v17;
    type metadata accessor for KeyboardObserver(0);
    sub_1BD751B3C(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
    v48 = sub_1BE04E3C4();
    KeyPath = swift_getKeyPath();
    v50 = swift_getKeyPath();
    sub_1BE04D8B4(v156);
    KeyPath, v51, v52, v53, v54, v55, v56, v57;
    v50, v58, v59, v60, v61, v62, v63, v64;
    v48, v65, v66, v67, v68, v69, v70, v71;
    v72 = v156[0];
    LOBYTE(KeyPath) = v156[1];
    v73 = v141;
    sub_1BD0DE204(v9, v141, &qword_1EBD51ED8, &qword_1BE0F4BC0);
    v74 = v73 + *(v140 + 36);
    *v74 = v46;
    *(v74 + 8) = v72;
    *(v74 + 16) = KeyPath;
    sub_1BD394D3C(v47, v156);
    v75 = swift_allocObject();
    memcpy((v75 + 16), v156, 0x128uLL);
    v76 = v73;
    v77 = v142;
    sub_1BD0DE204(v76, v142, &qword_1EBD51EE0, &qword_1BE0F4BC8);
    v78 = (v77 + *(v151 + 36));
    *v78 = sub_1BD751C8C;
    v78[1] = v75;
    v78[2] = 0;
    v78[3] = 0;
    LOBYTE(v78) = *(v47 + 96);
    v79 = *(v47 + 104);
    v137 = v47;
    LOBYTE(v153) = v78;
    v154 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80, &qword_1BE0D0630);
    sub_1BE0516C4();
    v80 = v156[0];
    v81 = v156[1];
    v153 = v156[0];
    v154 = v156[1];
    v155 = v156[2];
    sub_1BD394D3C(v47, v156);
    v82 = swift_allocObject();
    memcpy((v82 + 16), v156, 0x128uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F10, &qword_1BE0F4C38);
    sub_1BD7531A4(&qword_1EBD51F18, &qword_1EBD51EE8, &qword_1BE0F4BD0, sub_1BD751D74);
    sub_1BD752080();
    sub_1BD0DE4F4(&qword_1EBD367B0, &qword_1EBD51F10, &qword_1BE0F4C38, MEMORY[0x1E697C278]);
    sub_1BE051124();
    v81, v83, v84, v85, v86, v87, v88, v89;
    v82, v90, v91, v92, v93, v94, v95, v96;
    v80, v97, v98, v99, v100, v101, v102, v103;
    sub_1BD0DE53C(v77, &qword_1EBD51EE8, &qword_1BE0F4BD0);
    v104 = v137;
    type metadata accessor for AuthenticatorModel(0);
    sub_1BD751B3C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    v105 = sub_1BE04E964();
    v106 = swift_getKeyPath();
    sub_1BE04E974();
    v106, v107, v108, v109, v110, v111, v112, v113;
    v105, v114, v115, v116, v117, v118, v119, v120;
    v151 = v153;
    v142 = v154;
    LOBYTE(v47) = v155;
    sub_1BD394D3C(v104, v156);
    v121 = swift_allocObject();
    memcpy((v121 + 16), v156, 0x128uLL);
    sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
    sub_1BD0EE33C();
    v122 = sub_1BE04EEC4();
    v124 = v123;
    type metadata accessor for PresentationContext(0);
    sub_1BD751B3C(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    v125 = sub_1BE04EEC4();
    v127 = v126;
    v157 = 0;
    v128 = v146;
    (*(v143 + 32))(v146, v152, v144);
    v129 = v128 + *(v145 + 36);
    v130 = v142;
    *v129 = v151;
    *(v129 + 8) = v130;
    *(v129 + 16) = v47;
    *(v129 + 17) = v158[0];
    *(v129 + 20) = *(v158 + 3);
    *(v129 + 24) = sub_1BD7520D4;
    *(v129 + 32) = v121;
    *(v129 + 40) = v122;
    *(v129 + 48) = v124;
    *(v129 + 56) = v125;
    *(v129 + 64) = v127;
    *(v129 + 72) = sub_1BD644BF8;
    *(v129 + 80) = 0;
    *(v129 + 88) = v157;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
    sub_1BE0516C4();
    sub_1BD7520DC();
    v131 = v147;
    sub_1BE050704();
    sub_1BD0DE53C(v156, &qword_1EBD51FA0, &unk_1BE0BA2A0);
    sub_1BD0DE53C(v128, &qword_1EBD51EF8, &qword_1BE0F4BE0);
    v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FA8, &qword_1BE0F4C88);
    v133 = v150;
    sub_1BE04C924();
    sub_1BD394D3C(v104, v156);
    v134 = swift_allocObject();
    memcpy((v134 + 16), v156, 0x128uLL);
    result = (*(v148 + 32))(v133, v131, v149);
    v136 = (v133 + *(v132 + 56));
    *v136 = sub_1BD752278;
    v136[1] = v134;
  }

  else
  {
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD74A210@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v140 = a1;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A8, &qword_1BE0F4F00);
  MEMORY[0x1EEE9AC00](v138);
  v139 = (&v127 - v3);
  v4 = sub_1BE04F3D4();
  v132 = *(v4 - 8);
  v133 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v131 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FB0, &qword_1BE0F4C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v127 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520B0, &qword_1BE0F4F08);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v127 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58, &qword_1BE0F4C48);
  v128 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v130 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v127 - v15;
  v129 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v137 = &v127 - v19;
  sub_1BD74BD48(v146);
  v152 = v146[4];
  v153 = v146[5];
  v154 = v147;
  v148 = v146[0];
  v149 = v146[1];
  v150 = v146[2];
  v151 = v146[3];
  sub_1BD74CBC0(v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520B8, &qword_1BE0F4F10);
  (*(*(v20 - 8) + 56))(v11, 0, 1, v20);
  sub_1BD0DE19C(v1 + 56, v144, &qword_1EBD3D498, &qword_1BE0C12A8);
  v21 = v144[3];
  if (v144[3])
  {
    __swift_project_boxed_opaque_existential_1(v144, v144[3]);
    v21 = sub_1BE04C814();
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(v144, v22, v24, v25, v26, v27, v28, v29);
  }

  else
  {
    sub_1BD0DE53C(v144, &qword_1EBD3D498, &qword_1BE0C12A8);
    v23 = 0;
  }

  sub_1BD74C378(v21, v23, v8);
  sub_1BD0D4744(v21, v23, v30, v31, v32, v33, v34, v35);
  sub_1BD0DE19C(v1 + 56, v144, &qword_1EBD3D498, &qword_1BE0C12A8);
  v135 = v11;
  v136 = v8;
  if (v144[3])
  {
    __swift_project_boxed_opaque_existential_1(v144, v144[3]);
    v36 = sub_1BE04C814();
    v38 = v37;
    __swift_destroy_boxed_opaque_existential_0(v144, v37, v39, v40, v41, v42, v43, v44);
    if (v36)
    {
      sub_1BD0D4744(v36, v38, v45, v46, v47, v48, v49, v50);
      v134 = 1;
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BD0DE53C(v144, &qword_1EBD3D498, &qword_1BE0C12A8);
  }

  v134 = 0;
LABEL_9:
  v51 = *(v2 + 24);
  v52 = *(v2 + 48);
  v145[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0, qword_1BE0C1280);
  v145[4] = sub_1BD0DE4F4(qword_1EBD35F78, &unk_1EBD51FD0, qword_1BE0C1280, &unk_1BE0D59B8);
  v145[0] = v52;
  sub_1BD394D3C(v2, v144);
  v53 = swift_allocObject();
  memcpy((v53 + 16), v144, 0x128uLL);
  v54 = &v16[v12[26]];
  sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
  sub_1BD0EE33C();
  sub_1BE048964();
  v55 = v52;
  *v54 = sub_1BE04EEC4();
  v54[1] = v56;
  v57 = &v16[v12[27]];
  v58 = sub_1BE04CDA4();
  sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  v127 = v58;
  *v57 = sub_1BE04EEC4();
  v57[1] = v59;
  v60 = &v16[v12[28]];
  LOBYTE(v143[0]) = 0;
  sub_1BE051694();
  v61 = v144[1];
  *v60 = v144[0];
  *(v60 + 1) = v61;
  v62 = &v16[v12[29]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  *(v16 + 12) = v154;
  v63 = v153;
  *(v16 + 4) = v152;
  *(v16 + 5) = v63;
  v64 = v149;
  *v16 = v148;
  *(v16 + 1) = v64;
  v65 = v151;
  *(v16 + 2) = v150;
  *(v16 + 3) = v65;
  v66 = v135;
  sub_1BD0DE19C(v135, &v16[v12[17]], &qword_1EBD520B0, &qword_1BE0F4F08);
  v67 = v136;
  sub_1BD0DE19C(v136, &v16[v12[18]], &qword_1EBD51FB0, &qword_1BE0F4C90);
  *&v16[v12[19]] = 0;
  v16[v12[20]] = v134;
  *&v16[v12[21]] = v51;
  sub_1BD0EE8CC(v145, &v16[v12[22]]);
  v16[v12[23]] = 1;
  v68 = &v16[v12[25]];
  *v68 = sub_1BD752D90;
  v68[1] = v53;
  sub_1BD0EE8CC(v145, v143);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v141, v144);
    v69 = v144[3];
    v70 = v144[4];
    __swift_project_boxed_opaque_existential_1(v144, v144[3]);
    v70[7](v143, v69, v70);
    sub_1BD0DE53C(v67, &qword_1EBD51FB0, &qword_1BE0F4C90);
    sub_1BD0DE53C(v66, &qword_1EBD520B0, &qword_1BE0F4F08);
    __swift_destroy_boxed_opaque_existential_0(v145, v71, v72, v73, v74, v75, v76, v77);
    v16[v12[24]] = v143[0];
    __swift_destroy_boxed_opaque_existential_0(v144, v78, v79, v80, v81, v82, v83, v84);
  }

  else
  {
    sub_1BD0DE53C(v67, &qword_1EBD51FB0, &qword_1BE0F4C90);
    sub_1BD0DE53C(v66, &qword_1EBD520B0, &qword_1BE0F4F08);
    __swift_destroy_boxed_opaque_existential_0(v145, v85, v86, v87, v88, v89, v90, v91);
    v142 = 0;
    memset(v141, 0, sizeof(v141));
    sub_1BD0DE53C(v141, &qword_1EBD389A0, &qword_1BE0F7D40);
    v16[v12[24]] = 2;
  }

  v92 = v16;
  v93 = v137;
  sub_1BD0DE204(v92, v137, &qword_1EBD51F58, &qword_1BE0F4C48);
  v94 = *(v2 + 32);
  if (v94)
  {
    sub_1BE048964();
    v95 = sub_1BE04CD54();
    v94, v96, v97, v98, v99, v100, v101, v102;
    if (v95)
    {
      v103 = *(v2 + 208);
      if (*(v2 + 216) == 1)
      {
        if (v103)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1BE048964();
        sub_1BE052C44();
        v104 = sub_1BE050174();
        sub_1BE04CF84();

        v105 = v131;
        sub_1BE04F3C4();
        swift_getAtKeyPath();
        sub_1BD0D4604(v103, 0, v106, v107, v108, v109, v110, v111);
        (*(v132 + 8))(v105, v133);
        if (v144[0])
        {
          goto LABEL_22;
        }
      }

      v112 = *(v2 + 224);
      if (*(v2 + 232) == 1)
      {
        if ((v112 & 1) == 0)
        {
LABEL_20:
          v113 = v130;
          sub_1BD0DE19C(v93, v130, &qword_1EBD51F58, &qword_1BE0F4C48);
          sub_1BD394D3C(v2, v144);
          v114 = (*(v128 + 80) + 16) & ~*(v128 + 80);
          v115 = (v129 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
          v116 = swift_allocObject();
          sub_1BD0DE204(v113, v116 + v114, &qword_1EBD51F58, &qword_1BE0F4C48);
          memcpy((v116 + v115), v144, 0x128uLL);
          v117 = v139;
          *v139 = sub_1BD752DB4;
          v117[1] = v116;
LABEL_23:
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F48, &qword_1BE0F4C40);
          sub_1BD0DE4F4(&qword_1EBD51F40, &qword_1EBD51F48, &qword_1BE0F4C40, MEMORY[0x1E697C268]);
          sub_1BD0DE4F4(&qword_1EBD51F50, &qword_1EBD51F58, &qword_1BE0F4C48, &unk_1BE10CBC8);
          sub_1BE04F9A4();
          return sub_1BD0DE53C(v93, &qword_1EBD51F58, &qword_1BE0F4C48);
        }
      }

      else
      {
        sub_1BE048964();
        sub_1BE052C44();
        v118 = sub_1BE050174();
        sub_1BE04CF84();

        v119 = v131;
        sub_1BE04F3C4();
        swift_getAtKeyPath();
        sub_1BD0D4604(v112, 0, v120, v121, v122, v123, v124, v125);
        (*(v132 + 8))(v119, v133);
        if ((v144[0] & 1) == 0)
        {
          goto LABEL_20;
        }
      }
    }

LABEL_22:
    sub_1BD0DE19C(v93, v139, &qword_1EBD51F58, &qword_1BE0F4C48);
    goto LABEL_23;
  }

  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD74ACFC(uint64_t a1)
{
  v1 = type metadata accessor for Passes(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v37 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  sub_1BD742DF8(type metadata accessor for AMPAuthorizationModel, sub_1BD748598);
  type metadata accessor for BankConnectInterface();
  sub_1BD751B3C(&qword_1EBD3F258, type metadata accessor for BankConnectInterface, &unk_1BE104908);
  v11 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v13 = swift_getKeyPath();
  sub_1BE04D8B4(v7);
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1BD0DE53C(v7, &unk_1EBD43B40, &qword_1BE0D42C0);
    v28 = type metadata accessor for AvailablePass(0);
    (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
  }

  else
  {
    sub_1BD7535C8(v7, v4, type metadata accessor for Passes);
    sub_1BD0DE53C(v7, &unk_1EBD43B40, &qword_1BE0D42C0);
    sub_1BD0DE19C(v4, v10, &qword_1EBD520A0, &qword_1BE0B9840);
    sub_1BD7536BC(v4, type metadata accessor for Passes);
  }

  sub_1BD8FE0E0(v10);
  v11, v29, v30, v31, v32, v33, v34, v35;
  return sub_1BD0DE53C(v10, &qword_1EBD520A0, &qword_1BE0B9840);
}

id sub_1BD74B040@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52088, &qword_1BE0F4E58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52090, &qword_1BE0F4E60);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52098, &qword_1BE0F4E68);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24[-v12];
  result = [*(*(a1 + 48) + *((*MEMORY[0x1E69E7D40] & **(a1 + 48)) + 0xD0)) paymentRequest];
  if (result)
  {
    v15 = result;
    v16 = [result requestType];

    sub_1BD392764(v16, v6);
    sub_1BD394D3C(a1, v24);
    v17 = swift_allocObject();
    memcpy((v17 + 16), v24, 0x128uLL);
    sub_1BD0DE204(v6, v9, &qword_1EBD52088, &qword_1BE0F4E58);
    v18 = &v9[*(v7 + 36)];
    *v18 = sub_1BD752D78;
    v18[1] = v17;
    v18[2] = 0;
    v18[3] = 0;
    sub_1BD394D3C(a1, v24);
    v19 = swift_allocObject();
    memcpy((v19 + 16), v24, 0x128uLL);
    sub_1BD0DE204(v9, v13, &qword_1EBD52090, &qword_1BE0F4E60);
    v20 = &v13[*(v10 + 36)];
    *v20 = 0;
    v20[1] = 0;
    v20[2] = sub_1BD752D80;
    v20[3] = v19;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F10, &qword_1BE0F4C38);
    sub_1BE04CA34();
    sub_1BD394D3C(a1, v24);
    v22 = swift_allocObject();
    memcpy((v22 + 16), v24, 0x128uLL);
    result = sub_1BD0DE204(v13, a2, &qword_1EBD52098, &qword_1BE0F4E68);
    v23 = (a2 + *(v21 + 56));
    *v23 = sub_1BD752D88;
    v23[1] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD74B368(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v50 - v2);
  v4 = type metadata accessor for Passes(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD742A2C(type metadata accessor for AMPAuthorizationModel);
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  sub_1BE04D8B4(v3);
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v9, v17, v18, v19, v20, v21, v22, v23;
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1BD0DE53C(v3, &unk_1EBD43B40, &qword_1BE0D42C0);
  }

  sub_1BD753654(v3, v7, type metadata accessor for Passes);
  type metadata accessor for BankConnectInterface();
  sub_1BD751B3C(&qword_1EBD3F258, type metadata accessor for BankConnectInterface, &unk_1BE104908);
  v25 = sub_1BE04E3C4();
  v26 = *&v7[*(v4 + 28)];
  v27 = sub_1BE048C84();
  v28 = sub_1BD537108(v27);
  v26, v29, v30, v31, v32, v33, v34, v35;
  sub_1BD8FD0E0(v28, v7);
  v25, v36, v37, v38, v39, v40, v41, v42;
  v28, v43, v44, v45, v46, v47, v48, v49;
  return sub_1BD7536BC(v7, type metadata accessor for Passes);
}

void sub_1BD74B5E8(uint64_t a1)
{
  sub_1BD742DF8(type metadata accessor for AMPAuthorizationModel, sub_1BD748598);
  KeyPath = swift_getKeyPath();
  v2 = swift_getKeyPath();
  sub_1BE04D8B4(v27);
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v2, v10, v11, v12, v13, v14, v15, v16;
  v28[4] = v27[4];
  v28[5] = v27[5];
  v28[6] = v27[6];
  v28[0] = v27[0];
  v28[1] = v27[1];
  v28[2] = v27[2];
  v28[3] = v27[3];
  v17 = *(&v27[0] + 1);
  sub_1BE048C84();
  sub_1BD146D0C(v28);
  if (v17)
  {
    v18 = *MEMORY[0x1E69DD888];
    v19 = sub_1BE052404();
    v17, v20, v21, v22, v23, v24, v25, v26;
    UIAccessibilityPostNotification(v18, v19);
  }
}

double sub_1BD74B6FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1BE04CA04();
  if ((*(*(v3 - 8) + 48))(a1, 1, v3) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B80, &qword_1BE0D0630);
    sub_1BE0516B4();
  }

  return result;
}

void sub_1BD74B7B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FB0, &qword_1BE0F4C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FB8, &qword_1BE0F4C98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v67 - v8;
  sub_1BD74BD48(v74);
  v80 = v74[4];
  v81 = v74[5];
  v82 = v75;
  v76 = v74[0];
  v77 = v74[1];
  v78 = v74[2];
  v79 = v74[3];
  sub_1BD74C05C(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FC0, &qword_1BE0F4CA0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1BD0DE19C(a1 + 56, v72, &qword_1EBD3D498, &qword_1BE0C12A8);
  v11 = v72[3];
  v68 = v9;
  if (v72[3])
  {
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    v11 = sub_1BE04C7F4();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0(v72, v12, v14, v15, v16, v17, v18, v19);
  }

  else
  {
    sub_1BD0DE53C(v72, &qword_1EBD3D498, &qword_1BE0C12A8);
    v13 = 0;
  }

  sub_1BD74C378(v11, v13, v6);
  sub_1BD0D4744(v11, v13, v20, v21, v22, v23, v24, v25);
  v26 = *(a1 + 24);
  v27 = *(a1 + 48);
  v73[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FD0, qword_1BE0C1280);
  v73[4] = sub_1BD0DE4F4(qword_1EBD35F78, &unk_1EBD51FD0, qword_1BE0C1280, &unk_1BE0D59B8);
  v73[0] = v27;
  sub_1BD394D3C(a1, v72);
  v28 = swift_allocObject();
  memcpy((v28 + 16), v72, 0x128uLL);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51FE0, &qword_1BE0F4CA8);
  v30 = (a2 + v29[26]);
  sub_1BD0E5E8C(0, &qword_1EBD35E30, 0x1E69B8E80);
  sub_1BD0EE33C();
  sub_1BE048964();
  v31 = v27;
  v32 = v6;
  *v30 = sub_1BE04EEC4();
  v30[1] = v33;
  v34 = (a2 + v29[27]);
  sub_1BE04CDA4();
  sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
  *v34 = sub_1BE04EEC4();
  v34[1] = v35;
  v36 = a2 + v29[28];
  LOBYTE(v71[0]) = 0;
  sub_1BE051694();
  v37 = v72[1];
  *v36 = v72[0];
  *(v36 + 8) = v37;
  v38 = a2 + v29[29];
  *v38 = swift_getKeyPath();
  *(v38 + 8) = 0;
  v39 = v77;
  *a2 = v76;
  *(a2 + 16) = v39;
  *(a2 + 96) = v82;
  v40 = v81;
  *(a2 + 64) = v80;
  *(a2 + 80) = v40;
  v41 = v79;
  *(a2 + 32) = v78;
  *(a2 + 48) = v41;
  v42 = v68;
  sub_1BD0DE19C(v68, a2 + v29[17], &qword_1EBD51FB8, &qword_1BE0F4C98);
  sub_1BD0DE19C(v32, a2 + v29[18], &qword_1EBD51FB0, &qword_1BE0F4C90);
  *(a2 + v29[19]) = 0;
  *(a2 + v29[20]) = 1;
  *(a2 + v29[21]) = v26;
  sub_1BD0EE8CC(v73, a2 + v29[22]);
  *(a2 + v29[23]) = 1;
  v43 = (a2 + v29[25]);
  *v43 = sub_1BD753CBC;
  v43[1] = v28;
  sub_1BD0EE8CC(v73, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38998, &unk_1BE0F7D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF0, &unk_1BE0B74C0);
  if (swift_dynamicCast())
  {
    sub_1BD043990(v69, v72);
    v44 = v72[3];
    v45 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    v45[7](v71, v44, v45);
    sub_1BD0DE53C(v32, &qword_1EBD51FB0, &qword_1BE0F4C90);
    sub_1BD0DE53C(v42, &qword_1EBD51FB8, &qword_1BE0F4C98);
    __swift_destroy_boxed_opaque_existential_0(v73, v46, v47, v48, v49, v50, v51, v52);
    *(a2 + v29[24]) = v71[0];
    __swift_destroy_boxed_opaque_existential_0(v72, v53, v54, v55, v56, v57, v58, v59);
  }

  else
  {
    sub_1BD0DE53C(v32, &qword_1EBD51FB0, &qword_1BE0F4C90);
    sub_1BD0DE53C(v42, &qword_1EBD51FB8, &qword_1BE0F4C98);
    __swift_destroy_boxed_opaque_existential_0(v73, v60, v61, v62, v63, v64, v65, v66);
    v70 = 0;
    memset(v69, 0, sizeof(v69));
    sub_1BD0DE53C(v69, &qword_1EBD389A0, &qword_1BE0F7D40);
    *(a2 + v29[24]) = 2;
  }
}

double sub_1BD74BD48@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - v5;
  sub_1BE04CB14();
  v7 = sub_1BE04CB04();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_1BD0DE53C(v6, &unk_1EBD52000, &qword_1BE0BA2B0);
  sub_1BD394D3C(v2, v46);
  v9 = swift_allocObject();
  memcpy((v9 + 16), v46, 0x128uLL);
  if (v8 == 1)
  {
    v10 = sub_1BD753CBC;
  }

  else
  {
    v10 = sub_1BD752BCC;
  }

  v45 = v10;
  v11 = sub_1BE04C8C4();
  v13 = v12;
  v14 = sub_1BE04CAE4();
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(v46);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  if (v46[0])
  {
    v31 = 0;
  }

  else
  {
    sub_1BD0DE19C(v2 + 56, v46, &qword_1EBD3D498, &qword_1BE0C12A8);
    v31 = v46[3];
    if (v46[3])
    {
      __swift_project_boxed_opaque_existential_1(v46, v46[3]);
      v31 = sub_1BE04C824();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v46, v32, v34, v35, v36, v37, v38, v39);
      if (v31)
      {
        v40 = swift_allocObject();
        *(v40 + 16) = v31;
        *(v40 + 24) = v33;
        v31 = sub_1BD752BC4;
        goto LABEL_11;
      }
    }

    else
    {
      sub_1BD0DE53C(v46, &qword_1EBD3D498, &qword_1BE0C12A8);
    }
  }

  v40 = 0;
LABEL_11:
  v41 = sub_1BE051C54();
  v42 = 18.0;
  if (v41)
  {
    v42 = 10.0;
  }

  *a1 = v11;
  *(a1 + 8) = v13;
  strcpy((a1 + 16), "ApplePayLogo");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  *(a1 + 32) = v45;
  *(a1 + 40) = v9;
  *(a1 + 48) = v14 & 1;
  *(a1 + 56) = v31;
  *(a1 + 64) = v40;
  *(a1 + 72) = 0x4032000000000000;
  *(a1 + 80) = v42;
  result = 68.0;
  *(a1 + 88) = xmmword_1BE0B7110;
  return result;
}

uint64_t sub_1BD74C05C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04E8A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52070, &qword_1BE0F4D78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34[-1] - v12;
  sub_1BD0DE19C(v1 + 56, v34, &qword_1EBD3D498, &qword_1BE0C12A8);
  if (v35)
  {
    v33 = a1;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v14 = sub_1BE04C804();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(v34, v15, v17, v18, v19, v20, v21, v22);
    if (v14)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v14;
      *(v23 + 24) = v16;
      sub_1BE048964();
      sub_1BE04C664();
      sub_1BE04E894();
      (*(v4 + 16))(v6, v9, v3);
      sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
      v24 = sub_1BE04E644();
      sub_1BD0D4744(v14, v16, v25, v26, v27, v28, v29, v30);
      (*(v4 + 8))(v9, v3);
      *&v13[*(v10 + 36)] = v24;
      a1 = v33;
      sub_1BD0DE204(v13, v33, &unk_1EBD52070, &qword_1BE0F4D78);
      v31 = 0;
    }

    else
    {
      v31 = 1;
      a1 = v33;
    }
  }

  else
  {
    sub_1BD0DE53C(v34, &qword_1EBD3D498, &qword_1BE0C12A8);
    v31 = 1;
  }

  return (*(v11 + 56))(a1, v31, 1, v10);
}

uint64_t sub_1BD74C378@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v30 = a1;
  v31 = a2;
  v6 = sub_1BE04E8A4();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51FF8, &qword_1BE0F4D40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  sub_1BE04CB14();
  v17 = sub_1BE04CB04();
  v18 = 1;
  v19 = (*(*(v17 - 8) + 48))(v16, 1, v17);
  sub_1BD0DE53C(v16, &unk_1EBD52000, &qword_1BE0BA2B0);
  v20 = v19 == 1;
  v21 = a3;
  if (v20)
  {
    v22 = *(v4 + 288);
    v37 = *(v4 + 280);
    v38 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516A4();
    if (v36)
    {
      v18 = 1;
    }

    else
    {
      *v13 = sub_1BE04F7B4();
      *(v13 + 1) = 0;
      v13[16] = 0;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52010, &qword_1BE0F4D48);
      sub_1BD750A24(v4, v30, v31, &v13[*(v23 + 44)]);
      v24 = v33;
      sub_1BE04E894();
      v26 = v34;
      v25 = v35;
      (*(v34 + 16))(v32, v24, v35);
      sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
      v27 = sub_1BE04E644();
      (*(v26 + 8))(v24, v25);
      *&v13[*(v10 + 36)] = v27;
      sub_1BD0DE204(v13, v21, &qword_1EBD51FF8, &qword_1BE0F4D40);
      v18 = 0;
    }
  }

  return (*(v11 + 56))(v21, v18, 1, v10);
}

id sub_1BD74C6F8()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(*(v1 + 24) + qword_1EBDAADA8 + 32) paymentRequest];
  if (v7)
  {
    v8 = v7;
    sub_1BD6B50F8(1, v7);
  }

  else
  {
    sub_1BE04D084();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "paymentRequest was nil when trying to call trackButtonTag for dismiss.", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  return sub_1BD7423CC(type metadata accessor for AMPAuthorizationModel);
}

void sub_1BD74C89C(uint64_t a1)
{
  sub_1BD0DE19C(a1, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  if (v17)
  {
    sub_1BD043990(&v16, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    if (sub_1BE04C714())
    {
      sub_1BD0EE8CC(&v18, &v16);
      sub_1BD0DE19C(&v16, &v15, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
      sub_1BE0516B4();
      sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
      __swift_destroy_boxed_opaque_existential_0(&v18, v8, v9, v10, v11, v12, v13, v14);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(&v18, v1, v2, v3, v4, v5, v6, v7);
  }

  else
  {
    sub_1BD0DE53C(&v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  }

  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  sub_1BD0DE19C(&v18, &v16, &qword_1EBD51EC0, &qword_1BE0B7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F80, &unk_1BE0DAEC0);
  sub_1BE0516B4();
  sub_1BD0DE53C(&v18, &qword_1EBD51EC0, &qword_1BE0B7120);
}

uint64_t sub_1BD74CA14()
{
  v0 = sub_1BE04C974();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  v7 = sub_1BE04CB04();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1BE04CB24();
  (*(v1 + 104))(v3, *MEMORY[0x1E69BCA70], v0);
  sub_1BD741B2C(v3);
  (*(v1 + 8))(v3, v0);
  sub_1BD741FBC();
  return sub_1BD74224C(sub_1BD748598);
}

uint64_t sub_1BD74CBC0@<X0>(void *a1@<X8>)
{
  v57 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520F0, &qword_1BE0F4F48);
  MEMORY[0x1EEE9AC00](v56);
  v49 = &v48 - v2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520C0, &qword_1BE0F4F18);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v48 - v3;
  v4 = sub_1BE04E8A4();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520E0, &qword_1BE0F4F38);
  MEMORY[0x1EEE9AC00](v53);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52000, &qword_1BE0BA2B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v48 - v12;
  v14 = sub_1BE04CB04();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1;
  sub_1BE04CB14();
  v19 = v14;
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1BD0DE53C(v13, &unk_1EBD52000, &qword_1BE0BA2B0);
    sub_1BD394D3C(v18, v58);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v58, 0x128uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52110, &qword_1BE0F4F58);
    sub_1BD0DE4F4(&qword_1EBD52118, &qword_1EBD52110, &qword_1BE0F4F58, MEMORY[0x1E6981F48]);
    v21 = v49;
    sub_1BE04C664();
    sub_1BE04E894();
    v23 = v50;
    v22 = v51;
    (*(v50 + 16))(v52, v8, v51);
    sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
    v24 = sub_1BE04E644();
    (*(v23 + 8))(v8, v22);
    v25 = v55;
    *(v21 + *(v56 + 36)) = v24;
    sub_1BD0DE19C(v21, v25, &qword_1EBD520F0, &qword_1BE0F4F48);
    swift_storeEnumTagMultiPayload();
    sub_1BD7531A4(&qword_1EBD52120, &qword_1EBD520E0, &qword_1BE0F4F38, sub_1BD753174);
    sub_1BD7534B4();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v21, &qword_1EBD520F0, &qword_1BE0F4F48);
  }

  else
  {
    v27 = v15;
    v28 = v17;
    v29 = v17;
    v30 = v19;
    (*(v15 + 32))(v29, v13, v19);
    sub_1BD74DCA4(v28);
    v31 = sub_1BE0501F4();
    sub_1BD74DFDC();
    sub_1BE04E1F4();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v40 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52140, &qword_1BE0F4F68) + 36)];
    *v40 = v31;
    *(v40 + 1) = v33;
    *(v40 + 2) = v35;
    *(v40 + 3) = v37;
    *(v40 + 4) = v39;
    v40[40] = 0;
    *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52130, &qword_1BE0F4F60) + 36)] = 256;
    sub_1BE04E894();
    v42 = v50;
    v41 = v51;
    (*(v50 + 16))(v52, v8, v51);
    sub_1BD751B3C(&unk_1EBD36878, MEMORY[0x1E697E410], MEMORY[0x1E697E408]);
    v43 = sub_1BE04E644();
    (*(v42 + 8))(v8, v41);
    *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520D0, &qword_1BE0F4F28) + 36)] = v43;
    sub_1BD394D3C(v18, v58);
    v44 = swift_allocObject();
    memcpy((v44 + 16), v58, 0x128uLL);
    v45 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520D8, &qword_1BE0F4F30) + 36)];
    *v45 = sub_1BD753598;
    v45[1] = v44;
    v45[2] = 0;
    v45[3] = 0;
    sub_1BD394D3C(v18, v58);
    v46 = swift_allocObject();
    memcpy((v46 + 16), v58, 0x128uLL);
    v47 = &v10[*(v53 + 36)];
    *v47 = 0;
    *(v47 + 1) = 0;
    *(v47 + 2) = sub_1BD753598;
    *(v47 + 3) = v46;
    sub_1BD0DE19C(v10, v55, &qword_1EBD520E0, &qword_1BE0F4F38);
    swift_storeEnumTagMultiPayload();
    sub_1BD7531A4(&qword_1EBD52120, &qword_1EBD520E0, &qword_1BE0F4F38, sub_1BD753174);
    sub_1BD7534B4();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v10, &qword_1EBD520E0, &qword_1BE0F4F38);
    return (*(v27 + 8))(v28, v30);
  }
}

uint64_t sub_1BD74D378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v18 = a2;
  v19 = a3;
  v20 = a1;
  v21 = a4;
  v4 = sub_1BE04ECA4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58, &qword_1BE0F4C48);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = &v18 - v10;
  sub_1BD0DE19C(v18, &v18 - v10, &qword_1EBD51F58, &qword_1BE0F4C48);
  sub_1BD394D3C(v19, v22);
  (*(v5 + 16))(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v4);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = (v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (*(v5 + 80) + v13 + 296) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_1BD0DE204(v11, v15 + v12, &qword_1EBD51F58, &qword_1BE0F4C48);
  memcpy((v15 + v13), v22, 0x128uLL);
  result = (*(v5 + 32))(v15 + v14, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v17 = v21;
  *v21 = sub_1BD752E6C;
  v17[1] = v15;
  return result;
}

uint64_t sub_1BD74D5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a4;
  v22 = a1;
  v23 = a5;
  v24 = a2;
  v6 = sub_1BE04E6A4();
  v20 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = sub_1BE04ECA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD394D3C(a3, v25);
  (*(v10 + 16))(v12, v21, v9);
  (*(v7 + 16))(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v6);
  v13 = (*(v10 + 80) + 312) & ~*(v10 + 80);
  v14 = (v11 + *(v7 + 80) + v13) & ~*(v7 + 80);
  v15 = swift_allocObject();
  memcpy((v15 + 16), v25, 0x128uLL);
  (*(v10 + 32))(v15 + v13, v12, v9);
  (*(v7 + 32))(v15 + v14, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
  v16 = v23;
  sub_1BD0DE19C(v24, v23, &qword_1EBD51F58, &qword_1BE0F4C48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520F8, &qword_1BE0F4F50);
  v18 = (v16 + *(result + 36));
  *v18 = sub_1BD752F6C;
  v18[1] = v15;
  v18[2] = 0;
  v18[3] = 0;
  return result;
}

void sub_1BD74D80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100, &unk_1BE0D0290);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  type metadata accessor for ScrollViewManager(0);
  sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager, &unk_1BE0D0254);
  v7 = sub_1BE04E3C4();
  v8 = sub_1BE04ECA4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v10 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
  swift_beginAccess();
  sub_1BD75303C(v6, v7 + v10);
  swift_endAccess();
  v7, v11, v12, v13, v14, v15, v16, v17;
  sub_1BD74D9BC();
}

void sub_1BD74D9BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100, &unk_1BE0D0290);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30[-v3];
  v5 = sub_1BE04ECA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04E684();
  if (v10 < v9)
  {
    v11 = *(v0 + 288);
    v33[0] = *(v0 + 280);
    v34 = v11;
    v30[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
    sub_1BE0516B4();
    type metadata accessor for ScrollViewManager(0);
    sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager, &unk_1BE0D0254);
    v12 = sub_1BE04E3C4();
    v13 = *(v0 + 264);
    v14 = *(v1 + 272);
    sub_1BE051E74();
    sub_1BD394D3C(v1, v33);
    v31 = v13;
    v32 = v14;
    v15 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
    swift_beginAccess();
    sub_1BD0DE19C(v12 + v15, v4, &qword_1EBD52100, &unk_1BE0D0290);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      v12, v16, v17, v18, v19, v20, v21, v22;
      sub_1BD0DE53C(v4, &qword_1EBD52100, &unk_1BE0D0290);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      sub_1BE04EC94();
      sub_1BD751380(v33);
      v12, v23, v24, v25, v26, v27, v28, v29;
      (*(v6 + 8))(v8, v5);
    }

    sub_1BD7530AC(v33);
  }
}

uint64_t sub_1BD74DCA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520C8, &qword_1BE0F4F20);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_1BE04C864();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04CB04();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  if ((*(v11 + 88))(v14, v10) == *MEMORY[0x1E69BCAB8])
  {
    (*(v11 + 96))(v14, v10);
    (*(v7 + 32))(v9, v14, v6);
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_1BD751B3C(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
    sub_1BE04F9A4();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1BD751B3C(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
    sub_1BE04F9A4();
    return (*(v11 + 8))(v14, v10);
  }
}

double sub_1BD74DFDC()
{
  v1 = sub_1BE04F3D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 208);
  if (*(v0 + 216) == 1)
  {
    result = 17.0;
    if (v5)
    {
      return result;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v7 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v5, 0, v8, v9, v10, v11, v12, v13);
    (*(v2 + 8))(v4, v1);
    result = 17.0;
    if (v40)
    {
      return result;
    }
  }

  type metadata accessor for KeyboardObserver(0);
  sub_1BD751B3C(&qword_1EBD36500, type metadata accessor for KeyboardObserver, &unk_1BE0DB430);
  v14 = sub_1BE04E3C4();
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_1BE04D8B4(&v38);
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v16, v24, v25, v26, v27, v28, v29, v30;
  v14, v31, v32, v33, v34, v35, v36, v37;
  result = v38 + 17.0;
  if (v39)
  {
    return 0.0;
  }

  return result;
}

void sub_1BD74E208(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100, &unk_1BE0D0290);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v66 - v4;
  v6 = sub_1BE04ECA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04F3D4();
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 32);
  if (!v13)
  {
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    sub_1BE04EEB4();
    __break(1u);
    return;
  }

  sub_1BE048964();
  v14 = sub_1BE04CD54();
  v13, v15, v16, v17, v18, v19, v20, v21;
  if (v14)
  {
    v22 = *(a1 + 208);
    if (*(a1 + 216) == 1)
    {
      if (v22)
      {
        return;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v23 = sub_1BE050174();
      v66 = v5;
      v24 = v23;
      sub_1BE04CF84();

      v5 = v66;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(v22, 0, v25, v26, v27, v28, v29, v30);
      (*(v67 + 8))(v12, v10);
      if (v68[0])
      {
        return;
      }
    }

    v31 = *(a1 + 224);
    if (*(a1 + 232) == 1)
    {
      if (v31)
      {
        return;
      }
    }

    else
    {
      sub_1BE048964();
      sub_1BE052C44();
      v32 = sub_1BE050174();
      v66 = v5;
      v33 = v32;
      sub_1BE04CF84();

      v5 = v66;
      sub_1BE04F3C4();
      swift_getAtKeyPath();
      sub_1BD0D4604(v31, 0, v34, v35, v36, v37, v38, v39);
      (*(v67 + 8))(v12, v10);
      if (v68[0])
      {
        return;
      }
    }

    type metadata accessor for ScrollViewManager(0);
    sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager, &unk_1BE0D0254);
    v40 = sub_1BE04E3C4();
    v41 = MEMORY[0x1BFB3EDF0](0.5, 1.0, 0.0);
    v42 = v5;
    v43 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
    swift_beginAccess();
    sub_1BD0DE19C(v40 + v43, v42, &qword_1EBD52100, &unk_1BE0D0290);
    if ((*(v7 + 48))(v42, 1, v6) == 1)
    {
      v41, v44, v45, v46, v47, v48, v49, v50;
      v40, v51, v52, v53, v54, v55, v56, v57;
      sub_1BD0DE53C(v42, &qword_1EBD52100, &unk_1BE0D0290);
    }

    else
    {
      v58 = (*(v7 + 32))(v9, v42, v6);
      MEMORY[0x1EEE9AC00](v58);
      *(&v66 - 2) = v9;
      swift_retain_n();
      sub_1BE04E7D4();

      v40, v59, v60, v61, v62, v63, v64, v65;
      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1BD74E764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v222 = a2;
  v3 = sub_1BE04F3D4();
  v214 = *(v3 - 8);
  v215 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v213 = &v196 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52170, &qword_1BE0F4F78);
  v218 = *(v5 - 8);
  v219 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v209 = &v196 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41448, &qword_1BE0CA580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v208 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v207 = &v196 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45480, &unk_1BE0B8C30);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v201 = &v196 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v211 = &v196 - v14;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F1C8, &qword_1BE0C5830);
  MEMORY[0x1EEE9AC00](v200);
  v202 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v205 = &v196 - v17;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52180, &qword_1BE0C5798);
  MEMORY[0x1EEE9AC00](v204);
  v206 = &v196 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v203 = &v196 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v212 = &v196 - v22;
  v23 = type metadata accessor for Passes(0);
  v216 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v210 = &v196 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v199 = (&v196 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v196 - v28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v196 - v31;
  v217 = type metadata accessor for AvailablePass(0);
  v33 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v35 = &v196 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v196 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52188, &qword_1BE0F4F80);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v221 = &v196 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v220 = &v196 - v42;
  v223 = a1;
  v43 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v45 = swift_getKeyPath();
  sub_1BE04D8B4(v29);
  KeyPath, v46, v47, v48, v49, v50, v51, v52;
  v53 = v45;
  v54 = v216;
  v53, v55, v56, v57, v58, v59, v60, v61;
  v62 = *(v54 + 48);
  if (v62(v29, 1, v23))
  {
    sub_1BD0DE53C(v29, &unk_1EBD43B40, &qword_1BE0D42C0);
    (*(v33 + 56))(v32, 1, 1, v217);
LABEL_4:
    sub_1BD0DE53C(v32, &qword_1EBD520A0, &qword_1BE0B9840);
    v64 = v220;
    (*(v218 + 56))(v220, 1, 1, v219);
    v65 = v223;
    goto LABEL_5;
  }

  v197 = v35;
  v198 = v43;
  v216 = v38;
  v63 = v210;
  sub_1BD7535C8(v29, v210, type metadata accessor for Passes);
  sub_1BD0DE53C(v29, &unk_1EBD43B40, &qword_1BE0D42C0);
  sub_1BD0DE19C(v63, v32, &qword_1EBD520A0, &qword_1BE0B9840);
  sub_1BD7536BC(v63, type metadata accessor for Passes);
  if ((*(v33 + 48))(v32, 1, v217) == 1)
  {
    goto LABEL_4;
  }

  v117 = v216;
  sub_1BD753654(v32, v216, type metadata accessor for AvailablePass);
  sub_1BD7535C8(v117, v197, type metadata accessor for AvailablePass);
  v118 = swift_getKeyPath();
  v119 = swift_getKeyPath();
  v120 = v198;
  v121 = v199;
  sub_1BE04D8B4(v199);
  v118, v122, v123, v124, v125, v126, v127, v128;
  v119, v129, v130, v131, v132, v133, v134, v135;
  if (v62(v121, 1, v23))
  {
    sub_1BD0DE53C(v121, &unk_1EBD43B40, &qword_1BE0D42C0);
    v136 = 0;
  }

  else
  {
    sub_1BD7535C8(v121, v63, type metadata accessor for Passes);
    sub_1BD0DE53C(v121, &unk_1EBD43B40, &qword_1BE0D42C0);
    v136 = *(v63 + *(v23 + 20));
    v144 = v136;
    sub_1BD7536BC(v63, type metadata accessor for Passes);
  }

  v145 = v211;
  v146 = v200;
  v147 = type metadata accessor for PeerPaymentModel(0);
  v210 = *(v147 - 8);
  (*(v210 + 56))(v145, 1, 1, v147);
  sub_1BE04C8E4();
  v148 = 0;
  v149 = 0;
  v217 = qword_1EBDAAD80;
  if ((*(v120 + qword_1EBDAAD80) & 1) == 0)
  {
    sub_1BD394D3C(v223, v224);
    v149 = swift_allocObject();
    memcpy((v149 + 16), v224, 0x128uLL);
    v148 = sub_1BD753630;
    if (PKOslo2024UIUpdatesEnabled())
    {
      v149, v150, v151, v152, v153, v154, v155, v156;
      v148 = 0;
      v149 = 0;
    }
  }

  v157 = v202;
  v200 = v146[16];
  v202[v200] = 0;
  v158 = v146[17];
  *(v157 + v158) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  v159 = sub_1BE051C54();
  v160 = 40.0;
  if (v159)
  {
    v160 = 36.0;
  }

  *(v157 + v146[18]) = v160;
  v161 = v146[19];
  *(v157 + v161) = (sub_1BE051C54() & 1) == 0;
  sub_1BD753654(v197, v157, type metadata accessor for AvailablePass);
  *(v157 + v146[9]) = v136;
  v162 = v211;
  sub_1BD0DE19C(v211, v157 + v146[10], &qword_1EBD45480, &unk_1BE0B8C30);
  v163 = (v157 + v146[11]);
  v163[3] = 0u;
  v163[4] = 0u;
  v163[1] = 0u;
  v163[2] = 0u;
  *v163 = 0u;
  *(v157 + v146[12]) = 1;
  v164 = v157 + v146[13];
  v165 = v233;
  *v164 = v232;
  *(v164 + 16) = v165;
  *(v164 + 32) = v234;
  v166 = (v157 + v146[14]);
  *v166 = v148;
  v166[1] = v149;
  v167 = (v157 + v146[15]);
  *v167 = 0;
  v167[1] = 0;
  v168 = v201;
  sub_1BD0DE204(v162, v201, &qword_1EBD45480, &unk_1BE0B8C30);
  if ((*(v210 + 48))(v168, 1, v147) == 1)
  {
    sub_1BD0DE53C(v168, &qword_1EBD45480, &unk_1BE0B8C30);
    v65 = v223;
    v169 = v205;
    v170 = v198;
  }

  else
  {
    v171 = (v168 + *(v147 + 24));
    v172 = v171[3];
    v224[2] = v171[2];
    v224[3] = v172;
    v173 = v171[5];
    v224[4] = v171[4];
    v224[5] = v173;
    v174 = v171[1];
    v224[0] = *v171;
    v224[1] = v174;
    sub_1BD0DE19C(v224, &v239, &unk_1EBD521D0, qword_1BE0BEDC0);
    sub_1BD7536BC(v168, type metadata accessor for PeerPaymentModel);
    v65 = v223;
    v169 = v205;
    v170 = v198;
    if (*&v224[0] != 1)
    {
      v175 = *(&v224[1] + 1);
      v176 = v224[5];
      sub_1BD0DE53C(v224, &unk_1EBD521D0, qword_1BE0BEDC0);
      if (v175 || (v176 & 1) != 0)
      {
        *(v157 + v200) = 1;
      }
    }
  }

  sub_1BD0DE204(v157, v169, &qword_1EBD3F1C8, &qword_1BE0C5830);
  v177 = sub_1BE04CAE4();
  v178 = swift_getKeyPath();
  v179 = swift_allocObject();
  *(v179 + 16) = v177 & 1;
  v180 = v203;
  sub_1BD0DE204(v169, v203, &qword_1EBD3F1C8, &qword_1BE0C5830);
  v181 = (v180 + *(v204 + 36));
  *v181 = v178;
  v181[1] = sub_1BD10DF54;
  v181[2] = v179;
  v182 = v212;
  sub_1BD0DE204(v180, v212, &qword_1EBD52180, &qword_1BE0C5798);
  v64 = v220;
  if (*(v170 + v217))
  {
    v183 = 0;
    v184 = 0;
  }

  else
  {
    sub_1BD394D3C(v65, v224);
    v184 = swift_allocObject();
    memcpy((v184 + 16), v224, 0x128uLL);
    v183 = sub_1BD753CC0;
  }

  v185 = v207;
  v186 = v208;
  v187 = v206;
  sub_1BD74F994(v183, v184, v207);
  sub_1BD0D4744(v183, v184, v188, v189, v190, v191, v192, v193);
  sub_1BD0DE19C(v182, v187, &qword_1EBD52180, &qword_1BE0C5798);
  sub_1BD0DE19C(v185, v186, &qword_1EBD41448, &qword_1BE0CA580);
  v194 = v209;
  sub_1BD0DE19C(v187, v209, &qword_1EBD52180, &qword_1BE0C5798);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C8, &qword_1BE0F5000);
  sub_1BD0DE19C(v186, v194 + *(v195 + 48), &qword_1EBD41448, &qword_1BE0CA580);
  sub_1BD0DE53C(v185, &qword_1EBD41448, &qword_1BE0CA580);
  sub_1BD0DE53C(v212, &qword_1EBD52180, &qword_1BE0C5798);
  sub_1BD7536BC(v216, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v186, &qword_1EBD41448, &qword_1BE0CA580);
  sub_1BD0DE53C(v187, &qword_1EBD52180, &qword_1BE0C5798);
  sub_1BD0DE204(v194, v64, &unk_1EBD52170, &qword_1BE0F4F78);
  (*(v218 + 56))(v64, 0, 1, v219);
LABEL_5:
  v66 = *(v65 + 208);
  if (*(v65 + 216) == 1)
  {
    LOBYTE(v244) = v66 & 1;
    if (v66)
    {
LABEL_13:
      sub_1BD0DE19C(v65 + 56, &v232, &qword_1EBD3D498, &qword_1BE0C12A8);
      if (*(&v233 + 1))
      {
        __swift_project_boxed_opaque_existential_1(&v232, *(&v233 + 1));
        v93 = sub_1BE04C834();
        if (v93)
        {
          v101 = v94;
          v102 = v93;
          v103 = v93();
          sub_1BD0D4744(v102, v101, v104, v105, v106, v107, v108, v109);
          __swift_destroy_boxed_opaque_existential_0(&v232, v110, v111, v112, v113, v114, v115, v116);
LABEL_21:
          LOBYTE(v225) = 1;
          *&v239 = v103;
          v243 = 1;
          goto LABEL_22;
        }

        __swift_destroy_boxed_opaque_existential_0(&v232, v94, v95, v96, v97, v98, v99, v100);
      }

      else
      {
        sub_1BD0DE53C(&v232, &qword_1EBD3D498, &qword_1BE0C12A8);
      }

      v103 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v67 = sub_1BE050174();
    sub_1BE04CF84();

    v68 = v213;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v66, 0, v69, v70, v71, v72, v73, v74);
    (*(v214 + 8))(v68, v215);
    if (v244)
    {
      goto LABEL_13;
    }
  }

  v75 = *(v65 + 224);
  if (*(v65 + 232) == 1)
  {
    if (v75)
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v85 = sub_1BE050174();
    sub_1BE04CF84();

    v86 = v213;
    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v75, 0, v87, v88, v89, v90, v91, v92);
    (*(v214 + 8))(v86, v215);
    if (v239)
    {
      goto LABEL_13;
    }
  }

  v76 = sub_1BE04F7B4();
  LOBYTE(v232) = 1;
  sub_1BD7508E8(v65, &v239);
  v77 = v239;
  v78 = BYTE8(v239);
  v79 = v241[16];
  v80 = v240;
  v81 = *v241;
  LOBYTE(v239) = v241[16];
  v82 = v232;
  v84 = *(v65 + 264);
  v83 = *(v65 + 272);
  LOBYTE(v232) = 0;
  v239 = v76;
  LOBYTE(v240) = v82;
  *(&v240 + 1) = v77;
  v241[0] = v78;
  *&v241[8] = v80;
  *&v241[24] = v81;
  v241[40] = v79;
  *&v242 = v84;
  *(&v242 + 1) = v83;
  v243 = 0;
  sub_1BE048C84();
LABEL_22:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52190, &qword_1BE0F4F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3DD40, &qword_1BE0C27A8);
  sub_1BD0DE4F4(&unk_1EBD521A0, &unk_1EBD52190, &qword_1BE0F4F88, MEMORY[0x1E6981810]);
  sub_1BD2169EC();
  sub_1BE04F9A4();
  v137 = v221;
  sub_1BD0DE19C(v64, v221, &qword_1EBD52188, &qword_1BE0F4F80);
  v229 = v224[4];
  v230 = v224[5];
  v231 = v224[6];
  v225 = v224[0];
  v226 = v224[1];
  v227 = v224[2];
  v228 = v224[3];
  v138 = v222;
  sub_1BD0DE19C(v137, v222, &qword_1EBD52188, &qword_1BE0F4F80);
  v139 = v138 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521B0, &qword_1BE0F4F90) + 48);
  v236 = v229;
  v237 = v230;
  v238 = v231;
  v232 = v225;
  v233 = v226;
  v234 = v227;
  v235 = v228;
  sub_1BD0DE19C(&v232, &v239, &qword_1EBD521B8, &qword_1BE0F4F98);
  sub_1BD0DE53C(v64, &qword_1EBD52188, &qword_1BE0F4F80);
  v140 = v237;
  *(v139 + 64) = v236;
  *(v139 + 80) = v140;
  *(v139 + 96) = v238;
  v141 = v233;
  *v139 = v232;
  *(v139 + 16) = v141;
  v142 = v235;
  *(v139 + 32) = v234;
  *(v139 + 48) = v142;
  v239 = v225;
  v240 = v226;
  v243 = v231;
  *&v241[32] = v229;
  v242 = v230;
  *v241 = v227;
  *&v241[16] = v228;
  sub_1BD0DE53C(&v239, &qword_1EBD521B8, &qword_1BE0F4F98);
  return sub_1BD0DE53C(v137, &qword_1EBD52188, &qword_1BE0F4F80);
}

uint64_t sub_1BD74F994@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v141 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v140 = &v137 - v10;
  v156 = sub_1BE04FB64();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v142 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v137 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v137 - v17;
  v161 = type metadata accessor for Passes(0);
  v149 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v143 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v137 - v21;
  v159 = type metadata accessor for SheetButton(0);
  MEMORY[0x1EEE9AC00](v159);
  v24 = &v137 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v137 - v26;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521E0, &qword_1BE0C5FF0);
  MEMORY[0x1EEE9AC00](v152);
  v153 = &v137 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v157 = &v137 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v137 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v158 = &v137 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v137 - v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F3D0, &qword_1BE0C5FF8);
  MEMORY[0x1EEE9AC00](v41);
  v160 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47.n128_f64[0] = MEMORY[0x1EEE9AC00](v43);
  if (a1)
  {
    v144 = &v137 - v46;
    v145 = v45;
    v146 = v44;
    v147 = a1;
    v148 = a3;
    v139 = *(*(v3 + 8) + qword_1EBDAAED0);
    KeyPath = swift_getKeyPath();
    v49 = a2;
    v50 = swift_getKeyPath();
    sub_1BE048964();
    sub_1BE04D8B4(v40);
    KeyPath, v51, v52, v53, v54, v55, v56, v57;
    v50, v58, v59, v60, v61, v62, v63, v64;
    sub_1BE04C8E4();
    if (!PKOslo2024UIUpdatesEnabled())
    {
      sub_1BD0D4744(v147, v49, v65, v66, v67, v68, v69, v70);
      v79 = 1;
      v80 = v160;
      v81 = v40;
LABEL_36:
      sub_1BD0DE53C(&v166, &qword_1EBD51EC0, &qword_1BE0B7120);
      sub_1BD0DE53C(v81, &unk_1EBD43B40, &qword_1BE0D42C0);
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD521F0, &qword_1BE0C6048);
      (*(*(v129 - 8) + 56))(v80, v79, 1, v129);
      v130 = v144;
      sub_1BD0DE204(v80, v144, &qword_1EBD3F3D0, &qword_1BE0C5FF8);
      v131 = v130;
      v132 = v148;
      sub_1BD0DE204(v131, v148, &qword_1EBD3F3D0, &qword_1BE0C5FF8);
      return (*(v145 + 56))(v132, 0, 1, v146);
    }

    v138 = v49;
    v137 = v40;
    v71 = v40;
    v72 = v158;
    sub_1BD0DE19C(v71, v158, &unk_1EBD43B40, &qword_1BE0D42C0);
    sub_1BD0DE19C(&v166, v165, &qword_1EBD51EC0, &qword_1BE0B7120);
    v73 = *(v159 + 40);
    *&v24[v73] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE19C(v72, v35, &unk_1EBD43B40, &qword_1BE0D42C0);
    v74 = *(v149 + 48);
    v75 = v161;
    if (v74(v35, 1, v161) == 1)
    {
      sub_1BD0DE53C(v35, &unk_1EBD43B40, &qword_1BE0D42C0);
      v76 = v150;
    }

    else
    {
      sub_1BD753654(v35, v22, type metadata accessor for Passes);
      v76 = v150;
      if (v22[*(v75 + 24)])
      {
        sub_1BD0DE19C(v22, v18, &qword_1EBD520A0, &qword_1BE0B9840);
        v82 = type metadata accessor for AvailablePass(0);
        v83 = (*(*(v82 - 8) + 48))(v18, 1, v82);
        v75 = v161;
        sub_1BD0DE53C(v18, &qword_1EBD520A0, &qword_1BE0B9840);
        if (v83 == 1 && !*(*&v22[*(v75 + 28)] + 16))
        {
          v84 = v141;
          sub_1BD4941F8(v141);
          sub_1BD0DE53C(v84, &qword_1EBD3C3F8, &qword_1BE0DB080);
        }
      }

      sub_1BD7536BC(v22, type metadata accessor for Passes);
    }

    sub_1BD0DE19C(v165, &v162, &qword_1EBD51EC0, &qword_1BE0B7120);
    v80 = v160;
    v85 = v158;
    if (v163)
    {
      sub_1BD043990(&v162, v164);
      __swift_project_boxed_opaque_existential_1(v164, v164[3]);
      v75 = v161;
      v86 = sub_1BE04C704();
      __swift_destroy_boxed_opaque_existential_0(v164, v87, v88, v89, v90, v91, v92, v93);
      v94 = v157;
      if (v86)
      {
        v95 = 5;
LABEL_29:
        *v24 = v95;
        sub_1BD0DE19C(v85, v94, &unk_1EBD43B40, &qword_1BE0D42C0);
        if (v74(v94, 1, v75) == 1)
        {
          sub_1BD0DE53C(v165, &qword_1EBD51EC0, &qword_1BE0B7120);
          sub_1BD0DE53C(v85, &unk_1EBD43B40, &qword_1BE0D42C0);
          sub_1BD0DE53C(v94, &unk_1EBD43B40, &qword_1BE0D42C0);
          v102 = 0;
          v103 = 0;
          v104 = v138;
          v105 = v147;
          v81 = v137;
        }

        else
        {
          sub_1BD0DE19C(v94, v76, &qword_1EBD520A0, &qword_1BE0B9840);
          sub_1BD7536BC(v94, type metadata accessor for Passes);
          v106 = type metadata accessor for AvailablePass(0);
          v107 = (*(*(v106 - 8) + 48))(v76, 1, v106);
          v104 = v138;
          v81 = v137;
          if (v107 == 1)
          {
            sub_1BD0DE53C(v165, &qword_1EBD51EC0, &qword_1BE0B7120);
            sub_1BD0DE53C(v85, &unk_1EBD43B40, &qword_1BE0D42C0);
            sub_1BD0DE53C(v76, &qword_1EBD520A0, &qword_1BE0B9840);
            v102 = 0;
            v103 = 0;
          }

          else
          {
            v102 = sub_1BD49C81C();
            v103 = v108;
            sub_1BD0DE53C(v165, &qword_1EBD51EC0, &qword_1BE0B7120);
            sub_1BD0DE53C(v85, &unk_1EBD43B40, &qword_1BE0D42C0);
            sub_1BD7536BC(v76, type metadata accessor for AvailablePass);
          }

          v105 = v147;
        }

        *(v24 + 4) = v102;
        *(v24 + 5) = v103;
        v24[24] = 0;
        *(v24 + 6) = 0;
        *(v24 + 1) = v105;
        *(v24 + 2) = v104;
        v24[56] = 0;
        v109 = v24;
        v110 = v151;
        sub_1BD753654(v109, v151, type metadata accessor for SheetButton);
        sub_1BE052434();
        v112 = v111;
        sub_1BD751B3C(&unk_1EBD52200, type metadata accessor for SheetButton, &unk_1BE0BE708);
        sub_1BE048964();
        v113 = v153;
        sub_1BE050DE4();
        v112, v114, v115, v116, v117, v118, v119, v120;
        sub_1BD7536BC(v110, type metadata accessor for SheetButton);
        v121 = v154;
        sub_1BE04FB54();
        sub_1BD25A9C8();
        sub_1BD751B3C(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
        v122 = v156;
        sub_1BE050894();
        sub_1BD0D4744(v105, v104, v123, v124, v125, v126, v127, v128);
        (*(v155 + 8))(v121, v122);
        sub_1BD0DE53C(v113, &unk_1EBD521E0, &qword_1BE0C5FF0);
        v79 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      sub_1BD0DE53C(&v162, &qword_1EBD51EC0, &qword_1BE0B7120);
      v94 = v157;
    }

    sub_1BD0DE19C(v85, v30, &unk_1EBD43B40, &qword_1BE0D42C0);
    if (v74(v30, 1, v75) == 1)
    {
      sub_1BD0DE53C(v30, &unk_1EBD43B40, &qword_1BE0D42C0);
    }

    else
    {
      v96 = v30;
      v97 = v143;
      sub_1BD753654(v96, v143, type metadata accessor for Passes);
      if ((*(v97 + *(v75 + 24)) & 1) != 0 && (v98 = v142, sub_1BD0DE19C(v143, v142, &qword_1EBD520A0, &qword_1BE0B9840), v99 = type metadata accessor for AvailablePass(0), v100 = (*(*(v99 - 8) + 48))(v98, 1, v99), sub_1BD0DE53C(v98, &qword_1EBD520A0, &qword_1BE0B9840), v97 = v143, v101 = v100 == 1, v75 = v161, v101) && !*(*(v143 + *(v161 + 28)) + 16))
      {
        v133 = v140;
        sub_1BD4941F8(v140);
        v134 = type metadata accessor for UnavailablePass(0);
        v135 = (*(*(v134 - 8) + 48))(v133, 1, v134);
        v136 = v133;
        v94 = v157;
        sub_1BD0DE53C(v136, &qword_1EBD3C3F8, &qword_1BE0DB080);
        sub_1BD7536BC(v143, type metadata accessor for Passes);
        if (v135 != 1)
        {
          v95 = 4;
          goto LABEL_29;
        }
      }

      else
      {
        sub_1BD7536BC(v97, type metadata accessor for Passes);
      }
    }

    v95 = v139;
    if (v139 != 2)
    {
      if (v139 == 13)
      {
        v95 = 7;
      }

      else
      {
        v95 = 0;
      }
    }

    goto LABEL_29;
  }

  v77 = *(v45 + 56);

  return v77(a3, 1, 1, v47);
}

void sub_1BD7508E8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD0DE19C(a1 + 56, v35, &qword_1EBD3D498, &qword_1BE0C12A8);
  v4 = v36;
  if (v36)
  {
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v5 = sub_1BE04C834();
    if (v5)
    {
      v13 = v6;
      v14 = v5;
      v4 = v5();
      sub_1BD0D4744(v14, v13, v15, v16, v17, v18, v19, v20);
      __swift_destroy_boxed_opaque_existential_0(v35, v21, v22, v23, v24, v25, v26, v27);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v35, v6, v7, v8, v9, v10, v11, v12);
      v4 = 0;
    }
  }

  else
  {
    sub_1BD0DE53C(v35, &qword_1EBD3D498, &qword_1BE0C12A8);
  }

  v28 = sub_1BE0501F4();
  v29 = *(a1 + 288);
  LOBYTE(v35[0]) = *(a1 + 280);
  v35[1] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v34 == 1)
  {
    sub_1BE04C7C4();
  }

  sub_1BE04E1F4();
  *a2 = v4;
  *(a2 + 8) = v28;
  *(a2 + 16) = v30;
  *(a2 + 24) = v31;
  *(a2 + 32) = v32;
  *(a2 + 40) = v33;
  *(a2 + 48) = 0;
}

uint64_t sub_1BD750A24@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a3;
  v63 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52020, &qword_1BE0F4D50);
  v70 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52028, &qword_1BE0F4D58);
  v64 = *(v8 - 8);
  v65 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v62 = (&v59 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52030, &qword_1BE0B7570);
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38A48, &qword_1BE0B7578);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52040, &qword_1BE0F4D60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v69 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v68 = &v59 - v21;
  KeyPath = a1;
  if (sub_1BE04C8A4())
  {
    v59 = v6;
    v60 = a4;
    if (v63)
    {
      v63 = v63();
      sub_1BE048964();
      sub_1BE051C64();
      v22 = MEMORY[0x1E6981CD0];
      v23 = MEMORY[0x1E6981CD8];
      sub_1BE04F694();
      v74[0] = v23;
      v74[1] = v22;
      swift_getOpaqueTypeConformance2();
      sub_1BD0EEEE0();
      sub_1BE051C84();
      v24 = *(v12 + 16);
      v24(v14, v17, v11);
      v25 = v62;
      v26 = v63;
      *v62 = v63;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52058, &qword_1BE0F4D70);
      v24((v25 + *(v27 + 48)), v14, v11);
      v28 = *(v12 + 8);
      v28(v17, v11);
      v28(v14, v11);
      v26, v29, v30, v31, v32, v33, v34, v35;
      v36 = v68;
      sub_1BD0DE204(v25, v68, &qword_1EBD52028, &qword_1BE0F4D58);
      (*(v64 + 56))(v36, 0, 1, v65);
    }

    else
    {
      v36 = v68;
      (*(v64 + 56))(v68, 1, 1, v65);
    }

    sub_1BD394D3C(KeyPath, v74);
    v65 = swift_allocObject();
    memcpy((v65 + 16), v74, 0x128uLL);
    LOBYTE(v75) = 0;
    KeyPath = swift_getKeyPath();
    v72 = 0;
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    sub_1BE048964();
    v39 = sub_1BE04EEC4();
    v63 = v39;
    v64 = v40;
    type metadata accessor for AuthenticatorModel(0);
    sub_1BD751B3C(&qword_1EBD36450, type metadata accessor for AuthenticatorModel, MEMORY[0x1E69BCAD8]);
    v41 = sub_1BE04E954();
    v43 = v42;
    v44 = v75;
    v45 = v72;
    LODWORD(v62) = v72;
    v46 = v36;
    v47 = v69;
    sub_1BD0DE19C(v46, v69, &qword_1EBD52040, &qword_1BE0F4D60);
    v48 = v47;
    v49 = v67;
    sub_1BD0DE19C(v48, v67, &qword_1EBD52040, &qword_1BE0F4D60);
    v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52048, &qword_1BE0F4D68) + 48));
    *&v75 = v41;
    *(&v75 + 1) = v43;
    v76 = sub_1BD31FF5C;
    v77 = 0;
    LOBYTE(v78) = v44;
    *(&v78 + 1) = *v73;
    DWORD1(v78) = *&v73[3];
    *(&v78 + 1) = KeyPath;
    LOBYTE(v79) = v45;
    *(&v79 + 1) = *v71;
    DWORD1(v79) = *&v71[3];
    v51 = v64;
    *(&v79 + 1) = v39;
    *&v80 = v64;
    v52 = v65;
    *(&v80 + 1) = sub_1BD752BBC;
    v81 = v65;
    *&v82 = 0;
    *(&v82 + 1) = 0x4014000000000000;
    *v50 = v75;
    v50[1] = sub_1BD31FF5C;
    v53 = v78;
    v54 = v79;
    v55 = v82;
    v50[5] = v81;
    v50[6] = v55;
    v56 = v80;
    v50[3] = v54;
    v50[4] = v56;
    v50[2] = v53;
    sub_1BD0EEF94(&v75, v74);
    sub_1BD0DE53C(v68, &qword_1EBD52040, &qword_1BE0F4D60);
    v74[0] = v41;
    v74[1] = v43;
    v74[2] = sub_1BD31FF5C;
    v74[3] = 0;
    LOBYTE(v74[4]) = v44;
    *(&v74[4] + 1) = *v73;
    HIDWORD(v74[4]) = *&v73[3];
    v74[5] = KeyPath;
    LOBYTE(v74[6]) = v62;
    *(&v74[6] + 1) = *v71;
    HIDWORD(v74[6]) = *&v71[3];
    v74[7] = v63;
    v74[8] = v51;
    v74[9] = sub_1BD752BBC;
    v74[10] = v52;
    v74[11] = 0;
    v74[12] = 0;
    v74[13] = 0x4014000000000000;
    sub_1BD0EEFF0(v74);
    sub_1BD0DE53C(v69, &qword_1EBD52040, &qword_1BE0F4D60);
    v57 = v49;
    v58 = v60;
    sub_1BD0DE204(v57, v60, &qword_1EBD52020, &qword_1BE0F4D50);
    return (*(v70 + 56))(v58, 0, 1, v59);
  }

  else
  {
    v37 = *(v70 + 56);

    return v37(a4, 1, 1, v6);
  }
}

void sub_1BD7511CC(uint64_t a1)
{
  v2 = sub_1BE04C974();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 48);
  (*(v3 + 104))(v6, *MEMORY[0x1E69BCA60], v2, v4);
  sub_1BD741B2C(v6);
  (*(v3 + 8))(v6, v2);
  v8 = MEMORY[0x1E69E7D40];
  sub_1BD7F2C38();
  v9 = *(v7 + *((*v8 & *v7) + 0xD0));
  v10 = [v9 paymentRequest];
  if (v10)
  {
    v11 = v10;
    if ([v10 _isAMPPayment])
    {
      v12 = [v9 mode];

      if (v12 == 1)
      {
        [v9 fallbackToBypassMode];
      }
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD751380(uint64_t a1)
{
  v2 = sub_1BE051F54();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051FA4();
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE051FC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = *(a1 + 32);
  if (v14)
  {
    sub_1BE048964();
    sub_1BE04CD44();
    v16 = v15;
    v14, v17, v18, v19, v20, v21, v22, v23;
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v38 = sub_1BE052D54();
    sub_1BE051FB4();
    sub_1BE051FF4();
    v39 = *(v8 + 8);
    v39(v10, v7);
    sub_1BD394D3C(a1, v47);
    v24 = swift_allocObject();
    memcpy(v24 + 2, v47, 0x128uLL);
    v24[39] = v16;
    v45[4] = sub_1BD7530DC;
    v46 = v24;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 1107296256;
    v45[2] = sub_1BD126964;
    v45[3] = &block_descriptor_138_0;
    v25 = _Block_copy(v45);
    v46, v26, v27, v28, v29, v30, v31, v32;
    sub_1BE051F74();
    v47[0] = MEMORY[0x1E69E7CC0];
    sub_1BD751B3C(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v33 = v40;
    v34 = v44;
    sub_1BE053664();
    v35 = v38;
    MEMORY[0x1BFB3FD90](v13, v6, v33, v25);
    _Block_release(v25);

    (*(v43 + 8))(v33, v34);
    (*(v41 + 8))(v6, v42);
    return (v39)(v13, v7);
  }

  else
  {
    sub_1BE04CDA4();
    sub_1BD751B3C(&qword_1EBD369D0, MEMORY[0x1E69BCB10], MEMORY[0x1E69BCB08]);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

void sub_1BD7517FC(uint64_t a1, double a2)
{
  v45[1] = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100, &unk_1BE0D0290);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v45 - v5;
  v7 = sub_1BE04ECA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ScrollViewManager(0);
  sub_1BD751B3C(&qword_1EBD52108, type metadata accessor for ScrollViewManager, &unk_1BE0D0254);
  v11 = sub_1BE04E3C4();
  v12 = MEMORY[0x1BFB3EDF0](a2, 1.0, 0.0);
  v13 = OBJC_IVAR____TtC9PassKitUI17ScrollViewManager_proxy;
  swift_beginAccess();
  sub_1BD0DE19C(v11 + v13, v6, &qword_1EBD52100, &unk_1BE0D0290);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12, v14, v15, v16, v17, v18, v19, v20;
    v11, v21, v22, v23, v24, v25, v26, v27;
    v28 = sub_1BD0DE53C(v6, &qword_1EBD52100, &unk_1BE0D0290);
  }

  else
  {
    v29 = (*(v8 + 32))(v10, v6, v7);
    MEMORY[0x1EEE9AC00](v29);
    v45[-2] = v10;
    swift_retain_n();
    sub_1BE04E7D4();

    v11, v30, v31, v32, v33, v34, v35, v36;
    (*(v8 + 8))(v10, v7);
  }

  v37 = MEMORY[0x1BFB3EDF0](v28, a2, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v37);
  v45[-2] = a1;
  sub_1BE04E7D4();
  v37, v38, v39, v40, v41, v42, v43, v44;
}

uint64_t sub_1BD751B3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD751B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_1BD751BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_86(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 40), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 48), v16, v17, v18, v19, v20, v21, v22;

  if (*(v8 + 96))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 72), v23, v24, v25, v26, v27, v28, v29);
  }

  *(v8 + 120), v23, v24, v25, v26, v27, v28, v29;
  sub_1BD0D45CC(*(v8 + 128), *(v8 + 136), *(v8 + 144), v30, v31, v32, v33, v34);
  if (*(v8 + 176))
  {
    __swift_destroy_boxed_opaque_existential_0((v8 + 152), v35, v36, v37, v38, v39, v40, v41);
  }

  *(v8 + 192), v35, v36, v37, v38, v39, v40, v41;
  sub_1BD0D45CC(*(v8 + 200), *(v8 + 208), *(v8 + 216), v42, v43, v44, v45, v46);
  sub_1BD0D4604(*(v8 + 224), *(v8 + 232), v47, v48, v49, v50, v51, v52);
  sub_1BD0D4604(*(v8 + 240), *(v8 + 248), v53, v54, v55, v56, v57, v58);
  sub_1BD0D45CC(*(v8 + 256), *(v8 + 264), *(v8 + 272), v59, v60, v61, v62, v63);
  *(v8 + 288), v64, v65, v66, v67, v68, v69, v70;
  *(v8 + 304), v71, v72, v73, v74, v75, v76, v77;

  return swift_deallocObject();
}

unint64_t sub_1BD751D74()
{
  result = qword_1EBD51F20;
  if (!qword_1EBD51F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EE0, &qword_1BE0F4BC8);
    sub_1BD751E2C();
    sub_1BD0DE4F4(&qword_1EBD36798, &unk_1EBD51F70, &qword_1BE0C54F8, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F20);
  }

  return result;
}

unint64_t sub_1BD751E2C()
{
  result = qword_1EBD51F28;
  if (!qword_1EBD51F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51ED8, &qword_1BE0F4BC0);
    sub_1BD751EE4();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60, &qword_1BE0C3580, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F28);
  }

  return result;
}

unint64_t sub_1BD751EE4()
{
  result = qword_1EBD51F30;
  if (!qword_1EBD51F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51ED0, &qword_1BE0F4BB8);
    sub_1BD751F9C();
    sub_1BD0DE4F4(&qword_1EBD36790, &qword_1EBD3F0A0, &qword_1BE0C5490, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F30);
  }

  return result;
}

unint64_t sub_1BD751F9C()
{
  result = qword_1EBD51F38;
  if (!qword_1EBD51F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EC8, &qword_1BE0F4BB0);
    sub_1BD0DE4F4(&qword_1EBD51F40, &qword_1EBD51F48, &qword_1BE0F4C40, MEMORY[0x1E697C268]);
    sub_1BD0DE4F4(&qword_1EBD51F50, &qword_1EBD51F58, &qword_1BE0F4C48, &unk_1BE10CBC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F38);
  }

  return result;
}

unint64_t sub_1BD752080()
{
  result = qword_1EBD365A8;
  if (!qword_1EBD365A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD365A8);
  }

  return result;
}

unint64_t sub_1BD7520DC()
{
  result = qword_1EBD51F88;
  if (!qword_1EBD51F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EF8, &qword_1BE0F4BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51EE8, &qword_1BE0F4BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD51F10, &qword_1BE0F4C38);
    sub_1BD7531A4(&qword_1EBD51F18, &qword_1EBD51EE8, &qword_1BE0F4BD0, sub_1BD751D74);
    sub_1BD752080();
    sub_1BD0DE4F4(&qword_1EBD367B0, &qword_1EBD51F10, &qword_1BE0F4C38, MEMORY[0x1E697C278]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD51F90, &qword_1EBD51F98, &qword_1BE0F4C80, &unk_1BE0EA648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD51F88);
  }

  return result;
}

void sub_1BD752338(uint64_t (*a1)(void, double), uint64_t (*a2)(void, double), uint64_t (*a3)(void, double), uint64_t a4, uint64_t a5)
{
  v197 = a3;
  v198 = a4;
  v9 = v5;
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v195 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v195 - v16;
  v18 = a1(0, v15);
  v200 = v18;
  KeyPath = swift_getKeyPath();
  v199 = v18;
  v20 = swift_getKeyPath();
  sub_1BE04D8B4(&v201);
  KeyPath, v21, v22, v23, v24, v25, v26, v27;
  v20, v28, v29, v30, v31, v32, v33, v34;
  v35 = v201;
  LOBYTE(v20) = sub_1BE04CA44();
  v35, v36, v37, v38, v39, v40, v41, v42;
  if ((v20 & 1) == 0)
  {
    sub_1BE04D084();
    v46 = sub_1BE04D204();
    v47 = sub_1BE052C54();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_1BD026000, v46, v47, "handleAuthenticate", v48, 2u);
      MEMORY[0x1BFB45F20](v48, -1, -1);
    }

    v195 = a5;
    v196 = a2;

    (*(v11 + 8))(v13, v10);
    v49 = *(v9 + *((*MEMORY[0x1E69E7D40] & *v9) + 0xD0));
    v50 = [v49 paymentRequest];
    if (v50)
    {
      v51 = v50;
      v52 = objc_opt_self();
      MEMORY[0x1EEE9AC00](v52);
      *(&v195 - 2) = v18;
      v53 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v53);
      *(&v195 - 2) = v18;
      v54 = swift_getKeyPath();
      sub_1BE04D8B4(&v201);
      v53, v55, v56, v57, v58, v59, v60, v61;
      v54, v62, v63, v64, v65, v66, v67, v68;
      v69 = v201;
      v70 = swift_getKeyPath();
      v71 = swift_getKeyPath();
      sub_1BE04D8B4(&v201);
      v70, v72, v73, v74, v75, v76, v77, v78;
      v71, v79, v80, v81, v82, v83, v84, v85;
      v69, v86, v87, v88, v89, v90, v91, v92;
      [v52 currentStateForPolicy_];
      v93 = [v51 disablePasscodeFallback];
      MEMORY[0x1EEE9AC00](v93);
      *(&v195 - 2) = v18;
      v94 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v94);
      *(&v195 - 2) = v18;
      v95 = swift_getKeyPath();
      sub_1BE04D8B4(&v201);
      v94, v96, v97, v98, v99, v100, v101, v102;
      v95, v103, v104, v105, v106, v107, v108, v109;
      v110 = v201;
      sub_1BE04CB44();
      v110, v111, v112, v113, v114, v115, v116, v117;
      if ([v51 _isAMPPayment])
      {
        v118 = [v51 accesssControlRef];
        v119 = v196;
        if (!v118 || (v120 = v118, v121 = [v52 currentStateForAccessControl_], v120, (v122 = v121) == 0))
        {
          sub_1BD7472D8(v119);
          v123 = [v49 paymentRequest];
          if (v123)
          {
            v124 = v123;
            if ([v123 _isAMPPayment])
            {
              v125 = [v49 mode];

              if (v125 == 1)
              {
                v126 = [v49 fallbackToBypassMode];
              }
            }

            else
            {
            }

            MEMORY[0x1EEE9AC00](v126);
            *(&v195 - 2) = v18;
            v171 = swift_getKeyPath();
            MEMORY[0x1EEE9AC00](v171);
            *(&v195 - 2) = v18;
            v172 = swift_getKeyPath();
            sub_1BE04D8B4(&v201);
            v171, v173, v174, v175, v176, v177, v178, v179;
            v172, v180, v181, v182, v183, v184, v185, v186;
            v187 = v201;
            sub_1BE04CB64();
            v187, v188, v189, v190, v191, v192, v193, v194;
            goto LABEL_23;
          }

LABEL_25:
          __break(1u);
          return;
        }
      }

      else
      {
        v127 = [v51 requestType];
        v119 = v196;
        if ((v127 == 7 || (v128 = [v51 requestType], v128 == 13)) && (v128 = objc_msgSend(v51, sel_accesssControlRef)) != 0)
        {
          v129 = v128;
          v130 = [v52 currentStateForAccessControl_];

          v122 = v130;
        }

        else
        {
          MEMORY[0x1EEE9AC00](v128);
          *(&v195 - 2) = v18;
          v131 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v131);
          *(&v195 - 2) = v18;
          v132 = swift_getKeyPath();
          sub_1BE04D8B4(&v201);
          v131, v133, v134, v135, v136, v137, v138, v139;
          v132, v140, v141, v142, v143, v144, v145, v146;
          v147 = v201;
          v148 = swift_getKeyPath();
          v149 = swift_getKeyPath();
          sub_1BE04D8B4(&v201);
          v148, v150, v151, v152, v153, v154, v155, v156;
          v149, v157, v158, v159, v160, v161, v162, v163;
          v147, v164, v165, v166, v167, v168, v169, v170;
          v122 = [v52 currentStateForPolicy_];
        }
      }

      sub_1BD7433DC(v122, 0, v197, v119, v198, v195);
LABEL_23:

      return;
    }

    __break(1u);
    goto LABEL_25;
  }

  sub_1BE04D084();
  v43 = sub_1BE04D204();
  v44 = sub_1BE052C54();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1BD026000, v43, v44, "AuthenticationWrapper - already authenticating, ignoring evaluation request", v45, 2u);
    MEMORY[0x1BFB45F20](v45, -1, -1);
  }

  (*(v11 + 8))(v17, v10);
}

__CFString *PKAuthenticatorPolicyDescription_0(unint64_t a1)
{
  if (a1 > 0xA)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1E80105F0[a1];
    v2 = off_1E8010598[a1];
  }

  return v1;
}

uint64_t sub_1BD752DB4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58, &qword_1BE0F4C48) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1BD74D378(a1, v2 + v6, v7, a2);
}

uint64_t sub_1BD752E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD51F58, &qword_1BE0F4C48) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1BE04ECA4() - 8);
  v9 = v2 + ((v7 + *(v8 + 80) + 296) & ~*(v8 + 80));

  return sub_1BD74D5A8(a1, v2 + v6, v2 + v7, v9, a2);
}

void sub_1BD752F6C()
{
  v1 = *(sub_1BE04ECA4() - 8);
  v2 = (*(v1 + 80) + 312) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE04E6A4() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1BD74D80C(v0 + 16, v0 + v2, v5);
}

uint64_t sub_1BD75303C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52100, &unk_1BE0D0290);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1BD7530E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  return result;
}

uint64_t sub_1BD7531A4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1BD753228()
{
  result = qword_1EBD367D0;
  if (!qword_1EBD367D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD520D0, &qword_1BE0F4F28);
    sub_1BD7532E0();
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367D0);
  }

  return result;
}

unint64_t sub_1BD7532E0()
{
  result = qword_1EBD367E8;
  if (!qword_1EBD367E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52130, &qword_1BE0F4F60);
    sub_1BD75336C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD367E8);
  }

  return result;
}

unint64_t sub_1BD75336C()
{
  result = qword_1EBD36828;
  if (!qword_1EBD36828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52140, &qword_1BE0F4F68);
    sub_1BD7533F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36828);
  }

  return result;
}

unint64_t sub_1BD7533F8()
{
  result = qword_1EBD36748;
  if (!qword_1EBD36748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD52150, &qword_1BE0F4F70);
    sub_1BD751B3C(&qword_1EBD36A20, MEMORY[0x1E69BC9A8], MEMORY[0x1E69BC9A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD36748);
  }

  return result;
}

unint64_t sub_1BD7534B4()
{
  result = qword_1EBD52160;
  if (!qword_1EBD52160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD520F0, &qword_1BE0F4F48);
    sub_1BD0DE4F4(&qword_1EBD52168, &qword_1EBD520E8, &qword_1BE0F4F40, MEMORY[0x1E69BC920]);
    sub_1BD0DE4F4(&qword_1EBD36720, &qword_1EBD596F0, &unk_1BE0C9F40, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52160);
  }

  return result;
}

uint64_t sub_1BD7535C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD753654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7536BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id PKIdentityDataReleaseConfiguration.__allocating_init(recognizedElements:relyingPartyName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_recognizedElements] = a1;
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_relyingPartyName];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKIdentityDataReleaseConfiguration.init(recognizedElements:relyingPartyName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_recognizedElements] = a1;
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_relyingPartyName];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id PKIdentityDataReleaseConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *PKDataReleaseElementsCell.dataReleaseConfiguration.getter()
{
  v1 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PKDataReleaseElementsCell.dataReleaseConfiguration.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52248, &qword_1BE0F5040);
  v6[4] = sub_1BD7546EC();
  __swift_allocate_boxed_opaque_existential_1(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52258, &qword_1BE0F5048);
  sub_1BD754750();
  sub_1BE04FCE4();
  MEMORY[0x1BFB3FEF0](v6);
}

uint64_t sub_1BD7541D4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  v8[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52248, &qword_1BE0F5040);
  v8[4] = sub_1BD7546EC();
  __swift_allocate_boxed_opaque_existential_1(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52258, &qword_1BE0F5048);
  sub_1BD754750();
  sub_1BE04FCE4();
  return MEMORY[0x1BFB3FEF0](v8);
}

void (*PKDataReleaseElementsCell.dataReleaseConfiguration.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  return sub_1BD754338;
}

void sub_1BD754338(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](v4);
    v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52248, &qword_1BE0F5040);
    v3[4] = sub_1BD7546EC();
    __swift_allocate_boxed_opaque_existential_1(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52258, &qword_1BE0F5048);
    sub_1BD754750();
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FEF0](v3);
  }

  free(v3);
}

uint64_t sub_1BD75442C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_1BE04DA24();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04DA84();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE0520B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (v16)
  {
    (*(v8 + 16))(v10, *(*(v16 + OBJC_IVAR____TtC9PassKitUI34PKIdentityDataReleaseConfiguration_recognizedElements) + OBJC_IVAR___PKISO180135RecognizedElements__elementCategoryGroups) + OBJC_IVAR____TtC9PassKitUIP33_A466B0C86051506D4B63D9964ADCC88940IdentityDocumentElementCategoryGroupsBox_wrapped, v7);
    (*(v4 + 104))(v6, *MEMORY[0x1E6997D20], v22);
    sub_1BE048C84();
    sub_1BE0520A4();
    v17 = v23;
    (*(v12 + 32))(v23, v14, v11);
    v18 = 0;
    v19 = v17;
  }

  else
  {
    v18 = 1;
    v19 = v23;
  }

  return (*(v12 + 56))(v19, v18, 1, v11);
}

unint64_t sub_1BD7546EC()
{
  result = qword_1EBD52250;
  if (!qword_1EBD52250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52248, &qword_1BE0F5040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52250);
  }

  return result;
}

unint64_t sub_1BD754750()
{
  result = qword_1EBD52260;
  if (!qword_1EBD52260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52258, &qword_1BE0F5048);
    sub_1BD7547D4(v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52260);
  }

  return result;
}

unint64_t sub_1BD7547D4(double a1)
{
  result = qword_1EBD3F1C0;
  if (!qword_1EBD3F1C0)
  {
    sub_1BE0520B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3F1C0);
  }

  return result;
}

id PKDataReleaseElementsCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKDataReleaseElementsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKDataReleaseElementsCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKDataReleaseElementsCell.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9PassKitUI25PKDataReleaseElementsCell_dataReleaseConfiguration] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1BD754B48(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 monetaryValue];
  if (!v4)
  {
    sub_1BD759280(v19);
    v10 = *&v19[8];
    v8 = *v19;
    v15 = *&v19[16];
    v16 = v20;
    v17 = v21;
    v18 = v22;
LABEL_7:
    *a2 = v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = v15;
    *(a2 + 32) = v16;
    *(a2 + 40) = v17;
    *(a2 + 41) = v18;
    return;
  }

  v5 = v4;
  v6 = [v4 amount];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE0533F4();
    v10 = v9;
    v12 = v11;

    v13 = [a1 value];
    if (v13)
    {
      v14 = v13;
      sub_1BE0533E4();
    }

    v17 = 1;
    v18 = 0;
    *v19 = v12;
    memset(&v19[4], 0, 20);
    v15 = *v19;
    v16 = *&v19[16];
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BD754C88()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  v9 = v0 + *(v2 + 112);
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v60) = v10;
  v61 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v59 != 1)
  {
    return;
  }

  sub_1BD757B1C(1);
  if ((v19 & 1) == 0)
  {
    return;
  }

  v20 = *(v0 + *(v2 + 80));
  if (!v20)
  {
    return;
  }

  v57 = v4;
  v58 = v3;
  v60 = MEMORY[0x1E69E7CC0];
  if (v20 >> 62)
  {
LABEL_20:
    v21 = sub_1BE053704();
    if (v21)
    {
LABEL_6:
      v54 = v1;
      v55 = v8;
      v56 = v5;
      v5 = 0;
      v8 = (v20 & 0xC000000000000001);
      v1 = &selRef_thumbnailWidth;
      do
      {
        if (v8)
        {
          v22 = MEMORY[0x1BFB40900](v5, v20);
        }

        else
        {
          if (v5 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v22 = *(v20 + 8 * v5 + 32);
        }

        v23 = v22;
        v24 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if ([v22 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v5;
      }

      while (v24 != v21);
      v25 = v60;
      v8 = v55;
      v5 = v56;
      v1 = v54;
      v26 = v58;
      if ((v60 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_6;
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  v26 = v58;
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_22:
    if ((v25 & 0x4000000000000000) == 0)
    {
      if (!*(v25 + 16))
      {
LABEL_31:
        v25, v12, v13, v14, v15, v16, v17, v18;
        return;
      }

      goto LABEL_24;
    }
  }

LABEL_30:
  if (!sub_1BE053704())
  {
    goto LABEL_31;
  }

LABEL_24:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x1BFB40900](0, v25);
  }

  else
  {
    if (!*(v25 + 16))
    {
      __break(1u);
      return;
    }

    v27 = *(v25 + 32);
  }

  v35 = v27;
  v25, v28, v29, v30, v31, v32, v33, v34;
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (v36)
  {
    v37 = v36;
    v38 = sub_1BE0528D4();
    (*(*(v38 - 8) + 56))(v8, 1, 1, v38);
    sub_1BD75D80C(v1, v5, type metadata accessor for PaymentPassHubView);
    sub_1BE0528A4();
    v39 = v35;
    v40 = sub_1BE052894();
    v41 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    v42 = v8;
    v43 = (v57 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    v45 = MEMORY[0x1E69E85E0];
    v44[2] = v40;
    v44[3] = v45;
    sub_1BD75D368(v5, v44 + v41, type metadata accessor for PaymentPassHubView);
    *(v44 + v43) = v37;
    v46 = sub_1BD122C00(0, 0, v42, &unk_1BE0F50F0, v44);
    v46, v47, v48, v49, v50, v51, v52, v53;
  }

  else
  {
  }
}

void sub_1BD755098()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PaymentPassHubView(0);
  v7 = (v0 + v6[31]);
  v8 = v7[1];
  v60 = *v7;
  v61 = v8;
  v62 = v7[2];
  v63 = *(v7 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0, &unk_1BE0B8720);
  sub_1BE0516A4();
  if (v59)
  {
    goto LABEL_15;
  }

  v51 = v53;
  v52 = v54;
  v10 = v55;
  v9 = v56;
  v50 = v57;
  v11 = v58;
  v60 = *(v0 + v6[30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516A4();
  v12 = v53;
  if (!v53)
  {
    goto LABEL_15;
  }

  v49 = v3;
  sub_1BD758D50();
  if (!v13)
  {
    v16 = v12;
LABEL_14:

LABEL_15:
    (*(v1 + v6[19]))(0);
    return;
  }

  v14 = v13;
  v15 = WrappedPass.secureElementPass.getter();
  if (!v15)
  {
    v16 = v14;
    v14 = v12;
    goto LABEL_13;
  }

  v16 = v15;
  objc_opt_self();
  v47 = swift_dynamicCastObjCClass();
  if (!v47 || (v48 = v16, v17 = sub_1BD758F20(), v16 = v48, (v17 & 1) == 0) || (v18 = sub_1BD7591CC(), v16 = v48, (v18 & 1) == 0))
  {

LABEL_13:
    goto LABEL_14;
  }

  v19 = MEMORY[0x1BFB403C0](0);
  if (MEMORY[0x1BFB40440](v51, v52, v10, v19, v20, v21))
  {
LABEL_9:
    (*(v1 + v6[19]))(0);

    return;
  }

  MEMORY[0x1BFB403C0](0);
  if (v11)
  {
    v22 = v12;
    v23 = sub_1BE053344();
    v24 = 0;
  }

  else
  {
    *(&v26 + 1) = v9;
    *&v26 = v10;
    v25 = v26 >> 32;
    *(&v26 + 1) = v50;
    *&v26 = v9;
    v50 = v26 >> 32;
    if (MEMORY[0x1BFB40440](v25))
    {
      goto LABEL_9;
    }

    v27 = v12;
    v23 = sub_1BE053344();
    v24 = sub_1BE053344();
  }

  v28 = [objc_allocWithZone(MEMORY[0x1E69B8CD0]) initWithRewardsBalance:v12 amount:v23 value:v24];

  v29 = objc_allocWithZone(MEMORY[0x1E69B9208]);
  v30 = v28;
  v31 = v14;
  v32 = [v29 initWithPaymentPass_];
  sub_1BE04AFD4();
  sub_1BE04AF74();
  v34 = v33;
  (*(v49 + 8))(v5, v2);
  v35 = objc_allocWithZone(MEMORY[0x1E69B9210]);
  v36 = sub_1BE052404();
  v34, v37, v38, v39, v40, v41, v42, v43;
  v44 = [v35 initWithRewardsRedemptionIntent:v30 criteria:v31 passDetails:v32 sessionIdentifier:v36];

  v45 = *(v1 + v6[19]);
  v46 = v44;
  v45(v44);
}

void sub_1BD7554A8(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PaymentPassHubView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7587B8();
  if (v7)
  {
    v8 = v7;
    sub_1BD75D80C(v1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    sub_1BD75D368(v6, v10 + v9, type metadata accessor for PaymentPassHubView);
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    v12[3] = 0;
    v12[4] = 0;
    v12[2] = 0;
    v12[5] = sub_1BD75F818;
    v12[6] = v10;
    aBlock[4] = sub_1BD3A376C;
    v37 = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_47_2;
    v13 = _Block_copy(aBlock);
    v14 = v37;
    sub_1BE048964();
    v14, v15, v16, v17, v18, v19, v20, v21;
    v22 = [v11 hyperlinkSourcesFromApplyFooter:v8 linkTapped:v13];
    _Block_release(v13);
    if (v22)
    {
      sub_1BD0E5E8C(0, &qword_1EBD43EA8, off_1E8006508);
      v23 = sub_1BE052744();
    }

    else
    {
      v23 = MEMORY[0x1E69E7CC0];
    }

    v27 = [v8 footerText];
    v25 = sub_1BE052434();
    v26 = v28;

    v10, v29, v30, v31, v32, v33, v34, v35;
    v24 = 4;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  *a1 = v23;
  a1[1] = v24;
  a1[2] = 0;
  a1[3] = v25;
  a1[5] = 0;
  a1[6] = 0;
  a1[4] = v26;
}

void sub_1BD755748(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v83 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v84 = v5;
  v85 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC50, &qword_1BE0E9848);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v75 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52298, &qword_1BE0F5148);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v75 - v10;
  sub_1BD757B1C(1);
  if (v19)
  {
    v80 = v8;
    v81 = v9;
    v20 = *&v1[v4[20]];
    v79 = v6;
    v82 = a1;
    if (!v20)
    {
LABEL_33:
      v37 = &v2[v4[27]];
      v39 = *v37;
      v38 = *(v37 + 1);
      v87 = v39;
      v88 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
      sub_1BE0516A4();
      v40 = v86;
      v41 = sub_1BD6CF234();
      v40, v42, v43, v44, v45, v46, v47, v48;
      v49 = *&v2[v4[17]];
      if (v49)
      {
        v50 = [v49 type] == 1;
      }

      else
      {
        v50 = 0;
      }

      if (v20 && (v51 = *&v2[v4[18]]) != 0 && (v52 = [v51 ineligibleDetailsForCriteria_]) != 0)
      {
        v84 = v52;
        v53 = [v52 isEligible] ^ 1;
      }

      else
      {
        v84 = 0;
        v53 = 1;
      }

      v54 = v85;
      sub_1BD75D80C(v2, v85, type metadata accessor for PaymentPassHubView);
      v55 = (*(v83 + 80) + 26) & ~*(v83 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v20;
      *(v56 + 24) = (v41 & 1) == 0;
      *(v56 + 25) = v50;
      v57 = sub_1BD75D368(v54, v56 + v55, type metadata accessor for PaymentPassHubView);
      MEMORY[0x1EEE9AC00](v57);
      *(&v75 - 4) = v2;
      *(&v75 - 3) = v20;
      *(&v75 - 16) = v41 & 1;
      *(&v75 - 15) = v50;
      sub_1BD10E5DC();
      v58 = v20;
      v59 = v80;
      sub_1BE051704();
      KeyPath = swift_getKeyPath();
      v61 = swift_allocObject();
      *(v61 + 16) = v53 & 1;
      v62 = (v59 + *(v79 + 36));
      *v62 = KeyPath;
      v62[1] = sub_1BD185ABC;
      v62[2] = v61;
      if (v53)
      {
        v63 = 0.4;
      }

      else
      {
        v63 = 1.0;
      }

      sub_1BD0DE204(v59, v11, &qword_1EBD4DC50, &qword_1BE0E9848);
      *&v11[*(v81 + 36)] = v63;
      sub_1BE052434();
      v65 = v64;
      sub_1BD75D600();
      v66 = v82;
      sub_1BE050DE4();

      v65, v67, v68, v69, v70, v71, v72, v73;
      sub_1BD0DE53C(v11, &qword_1EBD52298, &qword_1BE0F5148);
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD522A0, &qword_1BE0F5150);
      (*(*(v74 - 8) + 56))(v66, 0, 1, v74);
      return;
    }

    v77 = v4;
    v78 = v11;
    v87 = MEMORY[0x1E69E7CC0];
    if (v20 >> 62)
    {
LABEL_22:
      v21 = sub_1BE053704();
      if (v21)
      {
LABEL_5:
        v76 = v2;
        v22 = 0;
        do
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x1BFB40900](v22, v20);
          }

          else
          {
            if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v23 = *(v20 + 8 * v22 + 32);
          }

          v2 = v23;
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

          if ([v23 type] == 1)
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
          }

          else
          {
          }

          ++v22;
        }

        while (v24 != v21);
        v27 = v87;
        v2 = v76;
        v4 = v77;
        v11 = v78;
        if ((v87 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_31;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_5;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
    v4 = v77;
    v11 = v78;
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
    {
LABEL_24:
      if ((v27 & 0x4000000000000000) == 0)
      {
        if (!*(v27 + 16))
        {
LABEL_32:
          v27, v12, v13, v14, v15, v16, v17, v18;
          v20 = 0;
          goto LABEL_33;
        }

LABEL_26:
        if ((v27 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1BFB40900](0, v27);
        }

        else
        {
          if (!*(v27 + 16))
          {
            __break(1u);
            return;
          }

          v28 = *(v27 + 32);
        }

        v36 = v28;
        v27, v29, v30, v31, v32, v33, v34, v35;
        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (!v20)
        {
        }

        goto LABEL_33;
      }
    }

LABEL_31:
    if (!sub_1BE053704())
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD522A0, &qword_1BE0F5150);
  v26 = *(*(v25 - 8) + 56);

  v26(a1, 1, 1, v25);
}

uint64_t sub_1BD755DF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4DC50, &qword_1BE0E9848);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v65[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52298, &qword_1BE0F5148);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD522A0, &qword_1BE0F5150);
  v75 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v65[-v12];
  sub_1BD758D50();
  if (v13)
  {
    v14 = v13;
    v15 = *(v1 + *(v4 + 72));
    if (v15)
    {
      v16 = (v1 + *(v4 + 108));
      v69 = a1;
      v70 = v11;
      v18 = v16[1];
      v77 = *v16;
      v17 = v77;
      v78 = v18;
      v67 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
      sub_1BE0516A4();
      v19 = v76;
      v66 = sub_1BD6CF234();
      v19, v20, v21, v22, v23, v24, v25, v26;
      v68 = sub_1BD7595D4();
      v77 = v17;
      v78 = v18;
      sub_1BE0516A4();
      v27 = v76[2];
      v76, v28, v29, v30, v31, v32, v33, v34;
      v35 = v27 == 0;
      sub_1BD75D80C(v2, &v65[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PaymentPassHubView);
      v36 = (*(v71 + 80) + 17) & ~*(v71 + 80);
      v37 = v36 + v5;
      v38 = v37 & 0xFFFFFFFFFFFFFFF8;
      v71 = v8;
      v39 = ((v37 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v35;
      v41 = sub_1BD75D368(v6, v40 + v36, type metadata accessor for PaymentPassHubView);
      *(v40 + v37) = v66 & 1;
      v42 = v67;
      *(v40 + v38 + 8) = v67;
      *(v40 + v39) = v14;
      MEMORY[0x1EEE9AC00](v41);
      *&v65[-32] = v2;
      *&v65[-24] = v14;
      v65[-16] = v43;
      sub_1BD10E5DC();
      v44 = v42;
      v45 = v14;
      v46 = v73;
      sub_1BE051704();
      KeyPath = swift_getKeyPath();
      v48 = swift_allocObject();
      v49 = (v68 & 1) == 0;
      *(v48 + 16) = v68 & 1;
      v50 = (v46 + *(v72 + 36));
      *v50 = KeyPath;
      v50[1] = sub_1BD10DF54;
      v50[2] = v48;
      if (v49)
      {
        v51 = 1.0;
      }

      else
      {
        v51 = 0.4;
      }

      sub_1BD0DE204(v46, v10, &qword_1EBD4DC50, &qword_1BE0E9848);
      *&v10[*(v71 + 36)] = v51;
      sub_1BE052434();
      v53 = v52;
      sub_1BD75D600();
      v54 = v74;
      sub_1BE050DE4();

      v53, v55, v56, v57, v58, v59, v60, v61;
      sub_1BD0DE53C(v10, &qword_1EBD52298, &qword_1BE0F5148);
      v62 = v69;
      sub_1BD0DE204(v54, v69, &qword_1EBD522A0, &qword_1BE0F5150);
      return (*(v75 + 56))(v62, 0, 1, v70);
    }
  }

  v64 = *(v75 + 56);

  return v64(a1, 1, 1, v11);
}

void sub_1BD75634C(int a1)
{
  LODWORD(v211) = a1;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v191 - v6);
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v191 - v13;
  if (PKHideCardBenefitRewards())
  {
    return;
  }

  v15 = *(v1 + v2[18]);
  if (!v15)
  {
    return;
  }

  v207 = v9;
  v208 = v11;
  v210 = v15;
  v16 = v1;
  v17 = WrappedPass.secureElementPass.getter();
  if (v17)
  {
    v209 = v17;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      v206 = v18;
      v19 = [v18 uniqueID];
      if (v19)
      {
        v203 = v14;
        v20 = v19;
        v21 = sub_1BE052434();
        v29 = *(v1 + v2[20]);
        if (!v29)
        {
          v22, v22, v23, v24, v25, v26, v27, v28;

          v35 = 0;
          v36 = 0;
          goto LABEL_59;
        }

        v204 = v20;
        v198 = v8;
        v195 = v21;
        v205 = v22;
        v196 = v3;
        v197 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
        v217[0] = MEMORY[0x1E69E7CC0];
        if (v29 >> 62)
        {
          goto LABEL_28;
        }

        for (i = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
        {
          v201 = v1;
          v202 = v4;
          v199 = v7;
          v200 = v2;
          v4 = 0;
          v16 = (v29 & 0xC000000000000001);
          v7 = &selRef_thumbnailWidth;
          while (1)
          {
            if (v16)
            {
              v31 = MEMORY[0x1BFB40900](v4, v29);
            }

            else
            {
              if (v4 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_27;
              }

              v31 = *(v29 + 8 * v4 + 32);
            }

            v32 = v31;
            v2 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
              break;
            }

            if ([v31 type] == 2)
            {
              v1 = v217;
              sub_1BE0538C4();
              sub_1BE0538F4();
              sub_1BE053904();
              sub_1BE0538D4();
            }

            else
            {
            }

            ++v4;
            if (v2 == i)
            {
              v34 = v217[0];
              v2 = v200;
              v16 = v201;
              v7 = v199;
              v4 = v202;
              goto LABEL_30;
            }
          }

          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          ;
        }

        v34 = MEMORY[0x1E69E7CC0];
LABEL_30:
        v37 = v205;
        if (v34 < 0 || (v34 & 0x4000000000000000) != 0)
        {
          if (sub_1BE053704())
          {
LABEL_33:
            if ((v34 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x1BFB40900](0, v34);
            }

            else
            {
              if (!*(v34 + 16))
              {
                __break(1u);
                return;
              }

              v38 = *(v34 + 32);
            }

            v46 = v38;
            v34, v39, v40, v41, v42, v43, v44, v45;
            objc_opt_self();
            v36 = swift_dynamicCastObjCClass();
            v1 = v16;
            if (v36)
            {
              v35 = [v210 ineligibleDetailsForCriteria_];
              if (v35)
              {
                v61 = v46;
                v62 = v35;
                if ([v62 isEligible])
                {
                  v201 = v61;
                  v202 = v35;
                  v63 = (v16 + v2[30]);
                  v64 = *v63;
                  v65 = v63[1];
                  v217[0] = *v63;
                  v217[1] = v65;
                  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
                  sub_1BE0516A4();
                  if (v213 && (v213, (v211 & 1) == 0))
                  {
                    v37, v66, v67, v68, v69, v70, v71, v72;

                    v217[0] = v64;
                    v217[1] = v65;
                    sub_1BE0516A4();
                    v111 = v62;
                    v112 = v213;
                    *v217 = *(v16 + v2[32]);
                    v113 = v111;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290, &qword_1BE0F5130);
                    sub_1BE0516A4();
                    v114 = v213;
                    sub_1BD6B4444(v112, v202, v213, v16 + v2[14]);

                    v115 = v201;
                  }

                  else
                  {
                    v202 = v4;

                    v211 = v62;
                    v73 = [v36 identifier];
                    if (!v73)
                    {
                      sub_1BE052434();
                      v75 = v74;
                      v73 = sub_1BE052404();
                      v75, v76, v77, v78, v79, v80, v81, v82;
                    }

                    v194 = sub_1BE052434();
                    v199 = v83;
                    v84 = [v210 rewardsBalanceForPassUniqueID_];
                    v217[0] = v64;
                    v217[1] = v65;
                    v213 = v84;
                    sub_1BE0516B4();
                    v217[0] = v64;
                    v217[1] = v65;
                    sub_1BE0516A4();
                    v85 = v213;
                    if (v213)
                    {
                      v86 = v203;
                      sub_1BE04D154();
                      v87 = v85;
                      v88 = sub_1BE04D204();
                      v89 = sub_1BE052C14();

                      LODWORD(v200) = v89;
                      if (os_log_type_enabled(v88, v89))
                      {
                        v90 = swift_slowAlloc();
                        v193 = swift_slowAlloc();
                        v217[0] = v193;
                        *v90 = 136315138;
                        v91 = [v87 identifier];
                        v92 = sub_1BE052434();
                        v192 = v87;
                        v94 = v93;

                        v95 = sub_1BD123690(v92, v94, v217);
                        v94, v96, v97, v98, v99, v100, v101, v102;
                        *(v90 + 4) = v95;
                        _os_log_impl(&dword_1BD026000, v88, v200, "Loaded redeemable payment rewards balance (%s) from DB", v90, 0xCu);
                        v103 = v193;
                        __swift_destroy_boxed_opaque_existential_0(v193, v104, v105, v106, v107, v108, v109, v110);
                        MEMORY[0x1BFB45F20](v103, -1, -1);
                        MEMORY[0x1BFB45F20](v90, -1, -1);

                        (*(v207 + 8))(v203, v198);
                      }

                      else
                      {

                        (*(v207 + 8))(v86, v198);
                      }
                    }

                    v116 = v204;
                    v117 = [v210 loadingDetailsForRewardsBalanceForCriteriaIdentifier:v73 passUniqueID:v204];

                    if (v117 && [v117 state] != 2)
                    {

                      v205, v164, v165, v166, v167, v168, v169, v170;
                      v199, v171, v172, v173, v174, v175, v176, v177;
                    }

                    else
                    {
                      v204 = v117;
                      sub_1BE04D154();
                      v118 = sub_1BE04D204();
                      v119 = sub_1BE052C14();
                      if (os_log_type_enabled(v118, v119))
                      {
                        v120 = swift_slowAlloc();
                        *v120 = 0;
                        _os_log_impl(&dword_1BD026000, v118, v119, "Fetching redeemable payment rewards balance from server", v120, 2u);
                        MEMORY[0x1BFB45F20](v120, -1, -1);
                      }

                      (*(v207 + 8))(v208, v198);
                      v121 = v16;
                      v122 = (v16 + v2[27]);
                      v124 = v122[1];
                      v217[0] = *v122;
                      v123 = v217[0];
                      v217[1] = v124;
                      sub_1BE048964();
                      sub_1BE048C84();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
                      sub_1BE0516A4();
                      sub_1BD2A598C(v216, 2);
                      v213 = v123;
                      v214 = v124;
                      v212 = v215;
                      sub_1BE0516B4();
                      v124, v125, v126, v127, v128, v129, v130, v131;
                      v123, v132, v133, v134, v135, v136, v137, v138;
                      v139 = sub_1BE0528D4();
                      (*(*(v139 - 8) + 56))(v7, 1, 1, v139);
                      v140 = v197;
                      sub_1BD75D80C(v121, v197, type metadata accessor for PaymentPassHubView);
                      sub_1BE0528A4();
                      v210 = v210;
                      v208 = v211;
                      v211 = v209;
                      v141 = sub_1BE052894();
                      v142 = (*(v196 + 80) + 32) & ~*(v196 + 80);
                      v143 = (v202 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
                      v144 = (v143 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v145 = (v144 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v146 = v7;
                      v147 = (v145 + 15) & 0xFFFFFFFFFFFFFFF8;
                      v148 = swift_allocObject();
                      v149 = MEMORY[0x1E69E85E0];
                      v148[2] = v141;
                      v148[3] = v149;
                      sub_1BD75D368(v140, v148 + v142, type metadata accessor for PaymentPassHubView);
                      v150 = v208;
                      *(v148 + v143) = v208;
                      v151 = v210;
                      *(v148 + v144) = v210;
                      *(v148 + v145) = v206;
                      v152 = (v148 + v147);
                      v153 = v199;
                      *v152 = v194;
                      v152[1] = v153;
                      v154 = (v148 + ((v147 + 23) & 0xFFFFFFFFFFFFFFF8));
                      v155 = v205;
                      *v154 = v195;
                      v154[1] = v155;
                      v156 = sub_1BD122C00(0, 0, v146, &unk_1BE0F5140, v148);
                      v156, v157, v158, v159, v160, v161, v162, v163;
                    }
                  }

                  return;
                }
              }

              v37, v54, v55, v56, v57, v58, v59, v60;
            }

            else
            {
              v37, v47, v48, v49, v50, v51, v52, v53;

              v35 = 0;
            }

LABEL_59:
            v185 = (v1 + v2[30]);
            v187 = v185[1];
            v217[0] = *v185;
            v186 = v217[0];
            v217[1] = v187;
            v213 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
            v188 = v1;
            sub_1BE0516B4();
            v217[0] = v186;
            v217[1] = v187;
            sub_1BE0516A4();
            v189 = v213;
            *v217 = *(v1 + v2[32]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290, &qword_1BE0F5130);
            sub_1BE0516A4();
            v190 = v213;
            sub_1BD6B4444(v189, v35, v213, v188 + v2[14]);

            return;
          }
        }

        else if (*(v34 + 16))
        {
          goto LABEL_33;
        }

        v37, v22, v23, v24, v25, v26, v27, v28;

        v34, v178, v179, v180, v181, v182, v183, v184;
        v35 = 0;
        v36 = 0;
        v1 = v16;
        goto LABEL_59;
      }
    }

    v33 = v209;
  }

  else
  {
    v33 = v210;
  }
}

void sub_1BD756F34(uint64_t a1@<X8>)
{
  v2 = v1;
  v70 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = &v57 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  v65 = type metadata accessor for PaymentPassHubRewardsApplyView(0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v57 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52288, &qword_1BE0F5128);
  v12 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v57 - v17;
  v19 = _s14PaymentSummaryVMa(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PaymentPassHubView(0);
  v75 = *(v1 + v23[30]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516A4();
  v24 = v71;
  if (!v71)
  {
    goto LABEL_15;
  }

  sub_1BD0DE19C(v1 + v23[14], v18, &unk_1EBD43B30, &qword_1BE0B8530);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {

    sub_1BD0DE53C(v18, &unk_1EBD43B30, &qword_1BE0B8530);
LABEL_15:
    v42 = 1;
    v44 = v69;
    v43 = v70;
LABEL_16:
    (*(v12 + 56))(v43, v42, 1, v44);
    return;
  }

  sub_1BD75D368(v18, v22, _s14PaymentSummaryVMa);
  sub_1BD758D50();
  if (!v25)
  {
    sub_1BD75D874(v22, _s14PaymentSummaryVMa);
    goto LABEL_8;
  }

  v26 = v25;
  if (sub_1BD7595D4())
  {
    sub_1BD75D874(v22, _s14PaymentSummaryVMa);

LABEL_8:
    goto LABEL_15;
  }

  v27 = *(v1 + v23[17]);
  if (!v27 || [v27 type] != 2)
  {

    sub_1BD75D874(v22, _s14PaymentSummaryVMa);
    goto LABEL_15;
  }

  v60 = v26;
  v28 = *(v22 + 1);
  v59 = objc_allocWithZone(MEMORY[0x1E69B8780]);
  v29 = v28;
  v30 = sub_1BE052404();
  v31 = [v59 initWithAmount:v29 currency:v30 exponent:0];

  if (v31)
  {
    v58 = v31;
    v59 = sub_1BD75BBD4(v31, v24);
    v32 = (v2 + v23[31]);
    v33 = v32[1];
    v71 = *v32;
    v72 = v33;
    v73 = v32[2];
    v74 = *(v32 + 6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0, &unk_1BE0B8720);
    sub_1BE0516C4();
    v34 = v65;
    v35 = type metadata accessor for MultiHyperLinkDetailSheet(0);
    v36 = 1;
    (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
    sub_1BD0DE19C(v8, v61, &unk_1EBD45160, &qword_1BE0C25A0);
    v37 = v67;
    sub_1BE051694();
    sub_1BD0DE53C(v8, &unk_1EBD45160, &qword_1BE0C25A0);
    v38 = [v60 redemptionTermsURL];
    v39 = v68;
    if (v38)
    {
      v40 = v38;
      sub_1BE04A9F4();

      v36 = 0;
    }

    v41 = v69;
    v45 = sub_1BE04AA64();
    (*(*(v45 - 8) + 56))(v39, v36, 1, v45);
    sub_1BD0DE204(v39, v37, &unk_1EBD3CF70, &qword_1BE0BA000);
    v46 = swift_allocObject();
    v47 = v76;
    *(v46 + 40) = v75;
    v48 = v60;
    *(v46 + 16) = v24;
    *(v46 + 24) = v48;
    *(v46 + 32) = v58;
    *(v46 + 56) = v47;
    *(v46 + 72) = v77[0];
    *(v46 + 82) = *(v77 + 10);
    v49 = v37 + *(v34 + 20);
    *v49 = sub_1BD75D358;
    *(v49 + 8) = v46;
    *(v49 + 16) = 0;
    v50 = v66;
    sub_1BD75D368(v37, v66, type metadata accessor for PaymentPassHubRewardsApplyView);
    v51 = v50;
    v52 = v64;
    sub_1BD75D368(v51, v64, type metadata accessor for PaymentPassHubRewardsApplyView);
    *(v52 + *(v41 + 52)) = v59;
    sub_1BD75D874(v22, _s14PaymentSummaryVMa);
    v53 = v52;
    v54 = v63;
    sub_1BD0DE204(v53, v63, &qword_1EBD52288, &qword_1BE0F5128);
    v55 = v54;
    v56 = v70;
    sub_1BD0DE204(v55, v70, &qword_1EBD52288, &qword_1BE0F5128);
    v44 = v41;
    v43 = v56;
    v42 = 0;
    goto LABEL_16;
  }

  __break(1u);
}

id sub_1BD757714@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52270, &qword_1BE0F50F8);
  v50 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v10 = *(v1 + *(type metadata accessor for PaymentPassHubView(0) + 72));
  if (v10)
  {
    sub_1BD49C81C();
    v12 = v11;
    v13 = sub_1BE052404();
    v12, v14, v15, v16, v17, v18, v19, v20;
    v21 = [v10 merchandisingOfferForPassUniqueID_];

    if (v21)
    {
      v22 = [v21 other];
      if (v22)
      {
        v23 = v22;
        sub_1BD0E5E8C(0, &qword_1EBD3EB48, 0x1E69B8CB8);
        v24 = sub_1BE052744();

        if (v24 >> 62)
        {
          if (sub_1BE053704() >= 1)
          {
LABEL_6:
            v49 = a1;
            (*(v4 + 104))(v6, *MEMORY[0x1E69B8068], v3);
            result = PKPassKitBundle();
            if (result)
            {
              v26 = result;
              v27 = sub_1BE04B6F4();
              v29 = v28;

              (*(v4 + 8))(v6, v3);
              v51 = v27;
              v52 = v29;
              sub_1BD0DDEBC();
              v51 = sub_1BE0506C4();
              v52 = v30;
              v53 = v31 & 1;
              v54 = v32;
              MEMORY[0x1EEE9AC00](v51);
              *(&v49 - 2) = v24;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52278, &unk_1BE0F5100);
              sub_1BD75D2D4();
              sub_1BE051A24();
              v24, v33, v34, v35, v36, v37, v38, v39;

              v40 = v49;
              (*(v50 + 32))(v49, v9, v7);
              return (*(v50 + 56))(v40, 0, 1, v7);
            }

            else
            {
              __break(1u);
            }

            return result;
          }
        }

        else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
        {
          goto LABEL_6;
        }

        v24, v41, v42, v43, v44, v45, v46, v47;
      }

      else
      {
      }
    }
  }

  v48 = *(v50 + 56);

  return v48(a1, 1, 1, v7);
}

void sub_1BD757B1C(id a1)
{
  v10 = *(v1 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (v10)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v11 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v10 >> 62)
    {
LABEL_19:
      v12 = sub_1BE053704();
      if (v12)
      {
LABEL_4:
        v13 = 0;
        v14 = v10 & 0xC000000000000001;
        v23 = v10;
        do
        {
          if (v14)
          {
            v15 = MEMORY[0x1BFB40900](v13, v10);
          }

          else
          {
            if (v13 >= *(v11 + 16))
            {
              goto LABEL_18;
            }

            v15 = *(v10 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            goto LABEL_19;
          }

          if ([v15 type] == a1)
          {
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
            v10 = v23;
          }

          else
          {
          }

          ++v13;
        }

        while (v17 != v12);
        v18 = v24;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_4;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
    {
LABEL_21:
      if ((v18 & 0x4000000000000000) == 0)
      {
        v19 = *(v18 + 16);
        goto LABEL_23;
      }
    }

LABEL_27:
    v21 = v18;
    v19 = sub_1BE053704();
    v18 = v21;
LABEL_23:
    if (v19)
    {
      if ((v18 & 0xC000000000000001) == 0)
      {
        v20 = *(v18 + 16);
        v18, v3, v4, v5, v6, v7, v8, v9;
        if (!v20)
        {
          __break(1u);
        }

        return;
      }

      v22 = v18;
      MEMORY[0x1BFB40900](0, v18);
      swift_unknownObjectRelease();
      v18 = v22;
    }

    v18, v3, v4, v5, v6, v7, v8, v9;
  }
}

void sub_1BD757D08(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for PaymentPassHubView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  if (a1 && (a2 & 1) != 0 && (a3 & 1) == 0)
  {
    v15 = a1;
    sub_1BD6B2184(7, 6u, 0);
    v16 = sub_1BE0528D4();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    sub_1BD75D80C(a4, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    sub_1BE0528A4();
    v17 = v15;
    v18 = sub_1BE052894();
    v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v18;
    v21[3] = v22;
    sub_1BD75D368(v11, v21 + v19, type metadata accessor for PaymentPassHubView);
    *(v21 + v20) = v17;
    v23 = sub_1BD122C00(0, 0, v14, &unk_1BE0F51A8, v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
  }
}

uint64_t sub_1BD757F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE0528A4();
  *(v4 + 24) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD757FD4, v6, v5);
}

uint64_t sub_1BD757FD4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD75D004(1);
  v9 = *(v8 + 8);

  return v9();
}

double sub_1BD75803C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1BD75819C(a2);
  v12 = v11;
  v13 = sub_1BD758318(a2);
  v15 = v14;
  v16 = *(a1 + *(type metadata accessor for PaymentPassHubView(0) + 72));
  if (!v16)
  {
    goto LABEL_5;
  }

  sub_1BD49C81C();
  v18 = v17;
  v19 = sub_1BE052404();
  v18, v20, v21, v22, v23, v24, v25, v26;
  v27 = [v16 merchandisingOfferForPassUniqueID_];

  if (!v27)
  {
    goto LABEL_6;
  }

  v28 = [v27 installments];

  if (v28)
  {
    sub_1BD0E5E8C(0, &qword_1EBD3EB48, 0x1E69B8CB8);
    v27 = sub_1BE052744();
  }

  else
  {
LABEL_5:
    v27 = 0;
  }

LABEL_6:
  if (a4)
  {
    v29 = 2;
  }

  else
  {
    v29 = 0;
  }

  if (a3)
  {
    v29 = 1;
  }

  *a5 = v10;
  *(a5 + 8) = v12;
  *(a5 + 16) = 0;
  *(a5 + 24) = v13;
  *(a5 + 32) = v15;
  *(a5 + 40) = v27;
  *(a5 + 48) = v29;
  result = 5.30584611e199;
  *(a5 + 56) = xmmword_1BE0F50C0;
  *(a5 + 72) = 2;
  *(a5 + 80) = 0x4042000000000000;
  return result;
}

id sub_1BD75819C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5.n128_f64[0] = MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 && (v8 = [v4 localizedTitleOverride]) != 0)
  {
    v9 = v8;
    v10 = sub_1BE052434();

    return v10;
  }

  else
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2, v5);
    result = PKPassKitBundle();
    if (result)
    {
      v12 = result;
      v13 = sub_1BE04B6F4();

      (*(v3 + 8))(v7, v2);
      return v13;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1BD758318(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v73 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v73 - v12;
  v14 = type metadata accessor for PaymentPassHubView(0);
  v15 = (v1 + *(v14 + 108));
  v17 = *v15;
  v16 = v15[1];
  v73[2] = v17;
  v73[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
  sub_1BE0516A4();
  v18 = v73[1];
  v19 = sub_1BD6CF234();
  v18, v20, v21, v22, v23, v24, v25, v26;
  if ((v19 & 1) == 0)
  {
    if (a1)
    {
      v42 = *(v2 + *(v14 + 72));
      if (v42)
      {
        v43 = [v42 ineligibleDetailsForCriteria_];
        if (v43)
        {
          v44 = v43;
          if (([v43 isEligible] & 1) == 0)
          {
            v60 = [v42 configuration];
            v61 = [v60 currencyCode];

            if (v61)
            {
              v62 = sub_1BE052434();
              v64 = v63;
            }

            else
            {
              v62 = 0;
              v64 = 0;
            }

            sub_1BD480FEC(v62, v64);
            v41 = v65;

            v64, v66, v67, v68, v69, v70, v71, v72;
            return v41;
          }
        }
      }

      v45 = [a1 localizedSubtitleOverride];
      if (v45)
      {
        v46 = v45;
        v41 = sub_1BE052434();
        v48 = v47;

        if (sub_1BE052534() < 1)
        {
          v48, v49, v50, v51, v52, v53, v54, v55;
          return 0;
        }

        return v41;
      }

      v57 = [a1 programName];
      if (v57)
      {
        v58 = v57;
        v41 = sub_1BE052434();

        return v41;
      }
    }

    (*(v5 + 104))(v7, *MEMORY[0x1E69B8078], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v59 = result;
      v41 = sub_1BE04B6F4();

      (*(v5 + 8))(v7, v4);
      return v41;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = *(v2 + *(v14 + 72));
  if (!v27 || (sub_1BD49C81C(), v29 = v28, v30 = sub_1BE052404(), v29, v31, v32, v33, v34, v35, v36, v37, v38 = [v27 preconfiguredInstallmentOfferStateForPassUniqueID_], v30, (v38 - 3) > 1))
  {
    (*(v5 + 104))(v10, *MEMORY[0x1E69B8078], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v56 = result;
      v41 = sub_1BE04B6F4();

      (*(v5 + 8))(v10, v4);
      return v41;
    }

    __break(1u);
    goto LABEL_26;
  }

  (*(v5 + 104))(v13, *MEMORY[0x1E69B8078], v4);
  result = PKPassKitBundle();
  if (result)
  {
    v40 = result;
    v41 = sub_1BE04B6F4();

    (*(v5 + 8))(v13, v4);
    return v41;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_1BD7587B8()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(v0 + *(v2 + 72));
  if (v3)
  {
    sub_1BD49C81C();
    v5 = v4;
    v6 = sub_1BE052404();
    v5, v7, v8, v9, v10, v11, v12, v13;
    v14 = [v3 merchandisingOfferForPassUniqueID_];

    if (v14)
    {
      v15 = [v14 dynamicContent];

      if (v15)
      {
        v16 = [v15 dynamicContentPageForPageType_];

        if (v16)
        {
          v17 = [v16 footerContent];

          if (v17)
          {
            sub_1BD757B1C(1);
            if (v18)
            {
              return;
            }

            sub_1BD757B1C(2);
            if (v19)
            {
              return;
            }
          }
        }
      }
    }
  }

  sub_1BD757B1C(1);
  if ((v27 & 1) == 0)
  {
    return;
  }

  v28 = *(v1 + *(v2 + 80));
  if (!v28)
  {
    return;
  }

  v45 = MEMORY[0x1E69E7CC0];
  if (v28 >> 62)
  {
LABEL_28:
    v29 = sub_1BE053704();
    if (v29)
    {
LABEL_14:
      v30 = 0;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1BFB40900](v30, v28);
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        if ([v31 type] == 1)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v30;
      }

      while (v33 != v29);
      v34 = v45;
      if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_14;
    }
  }

  v34 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_39;
  }

LABEL_30:
  if ((v34 & 0x4000000000000000) != 0)
  {
LABEL_39:
    if (!sub_1BE053704())
    {
      goto LABEL_40;
    }

    goto LABEL_32;
  }

  if (!*(v34 + 16))
  {
LABEL_40:
    v34, v20, v21, v22, v23, v24, v25, v26;
    return;
  }

LABEL_32:
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1BFB40900](0, v34);
  }

  else
  {
    if (!*(v34 + 16))
    {
      __break(1u);
      return;
    }

    v35 = *(v34 + 32);
  }

  v43 = v35;
  v34, v36, v37, v38, v39, v40, v41, v42;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (v44)
  {
    [v44 disclosureFooter];
  }
}

uint64_t sub_1BD758ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1BE04AA64();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  v9 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  type metadata accessor for PaymentPassHubView(0);
  sub_1BD0DE19C(v7, v4, &unk_1EBD45160, &qword_1BE0C25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &unk_1EBD45160, &qword_1BE0C25A0);
}

uint64_t sub_1BD758C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1BE0528A4();
  *(v4 + 24) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD758CE8, v6, v5);
}

uint64_t sub_1BD758CE8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_1BD75D004(0);
  v9 = *(v8 + 8);

  return v9();
}

void sub_1BD758D50()
{
  v8 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 80));
  if (!v8)
  {
    return;
  }

  v24 = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
LABEL_18:
    v9 = sub_1BE053704();
    if (v9)
    {
LABEL_4:
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1BFB40900](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if ([v11 type] == 2)
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        else
        {
        }

        ++v10;
      }

      while (v13 != v9);
      v14 = v24;
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  v14 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) == 0)
  {
LABEL_20:
    if ((v14 & 0x4000000000000000) == 0)
    {
      if (!*(v14 + 16))
      {
LABEL_28:
        v14, v1, v2, v3, v4, v5, v6, v7;
        return;
      }

      goto LABEL_22;
    }
  }

LABEL_27:
  if (!sub_1BE053704())
  {
    goto LABEL_28;
  }

LABEL_22:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1BFB40900](0, v14);
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v23 = v15;
  v14, v16, v17, v18, v19, v20, v21, v22;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
  }
}

uint64_t sub_1BD758F20()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v5 = _s14PaymentSummaryVMa(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PaymentPassHubView(0);
  v35 = *(v0 + *(v9 + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516A4();
  v10 = v34;
  if (!v34)
  {
    goto LABEL_4;
  }

  sub_1BD0DE19C(v1 + *(v9 + 56), v4, &unk_1EBD43B30, &qword_1BE0B8530);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {

    sub_1BD0DE53C(v4, &unk_1EBD43B30, &qword_1BE0B8530);
LABEL_4:
    LOBYTE(v11) = 0;
    return v11 & 1;
  }

  sub_1BD75D368(v4, v8, _s14PaymentSummaryVMa);
  v12 = [v10 monetaryValue];
  v11 = [v12 currency];

  if (v11)
  {
    v13 = sub_1BE052434();
    v15 = v14;

    v21 = *(v8 + 3);
    v22 = *(v8 + 4);
    if (v13 == v21 && v15 == v22)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = sub_1BE053B84();
    }

    v15, v16, v21, v22, v17, v18, v19, v20;

    sub_1BD75D874(v8, _s14PaymentSummaryVMa);
  }

  else
  {
    v24 = *(v8 + 4);
    sub_1BE048C84();

    sub_1BD75D874(v8, _s14PaymentSummaryVMa);
    v24, v25, v26, v27, v28, v29, v30, v31;
  }

  return v11 & 1;
}

id sub_1BD7591CC()
{
  type metadata accessor for PaymentPassHubView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516A4();
  if (!v2)
  {
    return 0;
  }

  if ([v2 isRedeemable] && objc_msgSend(v2, sel_isValid))
  {
    v0 = [v2 isPositive];
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

void sub_1BD759280(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37[-v4];
  v6 = _s14PaymentSummaryVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PaymentPassHubView(0);
  *v37 = *(v1 + *(v10 + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516A4();
  v11 = v38;
  v12 = 0uLL;
  if (!v38)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
LABEL_20:
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v12;
    *(a1 + 32) = v15;
    *(a1 + 40) = v11;
    *(a1 + 41) = v16;
    return;
  }

  sub_1BD0DE19C(v1 + *(v10 + 56), v5, &unk_1EBD43B30, &qword_1BE0B8530);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_1BD0DE53C(v5, &unk_1EBD43B30, &qword_1BE0B8530);
LABEL_19:
    v13 = 0;
    v14 = 0;
    v15 = 0;
    LOBYTE(v11) = 0;
    v16 = 1;
    v12 = 0uLL;
    goto LABEL_20;
  }

  sub_1BD75D368(v5, v9, _s14PaymentSummaryVMa);
  if ((sub_1BD758F20() & 1) == 0 || (sub_1BD7591CC() & 1) == 0)
  {

    sub_1BD75D874(v9, _s14PaymentSummaryVMa);
    goto LABEL_19;
  }

  v17 = sub_1BE0533F4();
  v19 = v18;
  v21 = v20;
  v22 = [v11 monetaryValue];
  v23 = [v22 amount];

  if (v23)
  {
    v24 = sub_1BE0533F4();
    v26 = v25;
    v28 = v27;

    v29 = MEMORY[0x1BFB403F0](v17, v19, v21, v24, v26, v28);
    if (v29)
    {
      v13 = v17;
    }

    else
    {
      v13 = v24;
    }

    if (v29)
    {
      v14 = v19;
    }

    else
    {
      v14 = v26;
    }

    if (v29)
    {
      v30 = v21;
    }

    else
    {
      v30 = v28;
    }

    sub_1BD994058(v17, v19, v21);
    v32 = v31;
    v34 = v33;
    v36 = v35;

    v37[0] = BYTE4(v36) & 1;
    LOBYTE(v11) = BYTE4(v36) & 1;
    sub_1BD75D874(v9, _s14PaymentSummaryVMa);
    v16 = 0;
    *v37 = v30;
    *&v37[4] = v32;
    *&v37[12] = v34;
    *&v37[20] = v36;
    v12 = *v37;
    v15 = *&v37[16];
    goto LABEL_20;
  }

  __break(1u);
}

uint64_t sub_1BD7595D4()
{
  sub_1BD758D50();
  if (!v1)
  {
    v7 = 0;
    return v7 & 1;
  }

  v2 = v1;
  v3 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 72));
  if (v3)
  {
    v4 = [v3 ineligibleDetailsForCriteria_];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 isEligible] ^ 1;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 1;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
  sub_1BE0516A4();
  v8 = sub_1BD6CF234();
  v19, v9, v10, v11, v12, v13, v14, v15;
  if ((v8 & 1) != 0 || v6)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290, &qword_1BE0F5130);
    sub_1BE0516A4();
    if (!v19 || (v17 = [v19 code], v19, v17 != 40030))
    {
      if (sub_1BD758F20())
      {
        v18 = sub_1BD7591CC();

        v7 = v18 ^ 1;
        return v7 & 1;
      }
    }
  }

  v7 = 1;
  return v7 & 1;
}

void sub_1BD759770(char a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v10 = type metadata accessor for PaymentPassHubView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - v16;
  if (a1)
  {
    v18 = *(a2 + *(v10 + 68));
    if ((!v18 || [v18 type] != 2) && (a3 & 1) == 0)
    {
      v51 = a5;
      sub_1BD6B2184(8, 6u, 0);
      v19 = [a4 configuration];
      [v19 context];

      sub_1BD49C81C();
      v21 = v20;
      v22 = sub_1BE052404();
      v21, v23, v24, v25, v26, v27, v28, v29;
      LODWORD(v21) = PKHasSeenPaymentOfferRewardsExplanationScreen();

      if (v21)
      {
        sub_1BD759280(v52);
        v30 = (a2 + *(v10 + 124));
        v31 = v30[1];
        v57[0] = *v30;
        v57[1] = v31;
        v33 = *v30;
        v32 = v30[1];
        v57[2] = v30[2];
        v58 = *(v30 + 6);
        v53 = v33;
        v54 = v32;
        v55 = v30[2];
        v56 = *(v30 + 6);
        sub_1BD0DE19C(v57, v59, &qword_1EBD394D0, &unk_1BE0B8720);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0, &unk_1BE0B8720);
        sub_1BE0516B4();
        v59[0] = v53;
        v59[1] = v54;
        v59[2] = v55;
        v60 = v56;
        sub_1BD0DE53C(v59, &qword_1EBD394D0, &unk_1BE0B8720);
        sub_1BD755098();
      }

      else
      {
        v34 = sub_1BE0528D4();
        (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
        sub_1BD75D80C(a2, &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
        sub_1BE0528A4();
        v35 = a4;
        v36 = v51;
        v37 = sub_1BE052894();
        v38 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v39 = (v12 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
        v40 = swift_allocObject();
        v41 = MEMORY[0x1E69E85E0];
        v40[2] = v37;
        v40[3] = v41;
        sub_1BD75D368(v13, v40 + v38, type metadata accessor for PaymentPassHubView);
        *(v40 + v39) = v35;
        *(v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
        v42 = sub_1BD122C00(0, 0, v17, &unk_1BE0F5190, v40);
        v42, v43, v44, v45, v46, v47, v48, v49;
      }
    }
  }
}

uint64_t sub_1BD759B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1BE0528A4();
  v6[3] = sub_1BE052894();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1BD16DB04;

  return sub_1BD759BF0(a5, a6);
}

uint64_t sub_1BD759BF0(uint64_t a1, uint64_t a2)
{
  v3[46] = a2;
  v3[47] = v2;
  v3[45] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350, &unk_1BE0B8570);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v4 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  v3[50] = v4;
  v3[51] = *(v4 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = type metadata accessor for PaymentPassHubView(0);
  v3[54] = swift_task_alloc();
  sub_1BE0528A4();
  v3[55] = sub_1BE052894();
  v6 = sub_1BE052844();
  v3[56] = v6;
  v3[57] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1BD759D5C, v6, v5);
}

uint64_t sub_1BD759D5C()
{
  v113 = v0;
  v1 = *(v0 + 432);
  v3 = *(v0 + 368);
  v2 = *(v0 + 376);
  *(v0 + 304) = 0;
  sub_1BD75D80C(v2, v1, type metadata accessor for PaymentPassHubView);
  v4 = [v3 identifier];
  v5 = v4;
  v6 = v4;
  if (!v4)
  {
    sub_1BE052434();
    v8 = v7;
    v6 = sub_1BE052404();
    v8, v9, v10, v11, v12, v13, v14, v15;
    sub_1BE052434();
    v17 = v16;
    v5 = sub_1BE052404();
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  *(v0 + 464) = v5;
  v25 = *(v0 + 360);
  v26 = v4;
  v27 = [v25 dynamicContentPageForCriteriaIdentifier:v6 pageType:18];
  *(v0 + 472) = v27;

  swift_beginAccess();
  *(v0 + 304) = v27;
  if (v27)
  {
    *(v0 + 440), v28, v29, v30, v31, v32, v33, v34;
    v35 = *(v0 + 464);
    v36 = *(v0 + 472);
    v38 = *(v0 + 408);
    v37 = *(v0 + 416);
    v39 = *(v0 + 392);
    v40 = *(v0 + 400);
    v111 = *(v0 + 384);
    v41 = *(v0 + 360);
    v42 = *(v0 + 368);
    v43 = [v41 dynamicContentPageForCriteriaIdentifier:v35 pageType:18];

    *(v0 + 304) = v43;
    *v37 = v41;
    v37[1] = v42;
    v37[2] = v43;
    swift_storeEnumTagMultiPayload();
    sub_1BD75D80C(v37, v39, type metadata accessor for PaymentPassHubView.DetailSheet);
    (*(v38 + 56))(v39, 0, 1, v40);
    sub_1BD0DE19C(v39, v111, &qword_1EBD39350, &unk_1BE0B8570);
    v44 = v43;
    v45 = v41;
    v46 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
    sub_1BE0516B4();
    sub_1BD0DE53C(v39, &qword_1EBD39350, &unk_1BE0B8570);
    sub_1BD75D874(v37, type metadata accessor for PaymentPassHubView.DetailSheet);
    v47 = *(v0 + 432);
    if (v36)
    {
      sub_1BD75D874(v47, type metadata accessor for PaymentPassHubView);
    }

    else
    {
      v90 = v47 + *(*(v0 + 424) + 108);
      v92 = *v90;
      v91 = *(v90 + 8);
      *(v0 + 272) = *v90;
      *(v0 + 280) = v91;
      v93 = v47;
      sub_1BE048964();
      sub_1BE048C84();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
      sub_1BE0516A4();
      sub_1BD535FA8(2);
      v94 = *(v0 + 344);
      *(v0 + 288) = v92;
      *(v0 + 296) = v91;
      *(v0 + 352) = v94;
      sub_1BE0516B4();
      sub_1BD75D874(v93, type metadata accessor for PaymentPassHubView);

      v92, v95, v96, v97, v98, v99, v100, v101;
      v91, v102, v103, v104, v105, v106, v107, v108;
    }

    v109 = *(v0 + 8);

    return v109();
  }

  else
  {
    v48 = *(v0 + 368);
    v49 = *(v0 + 376) + *(*(v0 + 424) + 108);
    v50 = *v49;
    v51 = *(v49 + 8);
    *(v0 + 208) = *v49;
    *(v0 + 216) = v51;
    sub_1BE048964();
    sub_1BE048C84();
    *(v0 + 480) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
    sub_1BE0516A4();
    sub_1BD2A598C(&v112, 2);
    v52 = *(v0 + 312);
    *(v0 + 224) = v50;
    *(v0 + 232) = v51;
    *(v0 + 320) = v52;
    sub_1BE0516B4();
    v50, v53, v54, v55, v56, v57, v58, v59;
    v51, v60, v61, v62, v63, v64, v65, v66;
    v67 = [v48 identifier];
    if (!v67)
    {
      sub_1BE052434();
      v69 = v68;
      v67 = sub_1BE052404();
      v69, v70, v71, v72, v73, v74, v75, v76;
    }

    *(v0 + 488) = v67;
    v77 = *(v0 + 360);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B7020;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    sub_1BD112388(inited);
    v80 = v79;
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_1BD0E5E8C(0, &qword_1EBD3D270, 0x1E696AD98);
    sub_1BD214890(&qword_1EBD3E5A8, &qword_1EBD3D270, 0x1E696AD98);
    v81 = sub_1BE052A24();
    *(v0 + 496) = v81;
    v80, v82, v83, v84, v85, v86, v87, v88;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 512;
    *(v0 + 24) = sub_1BD75A370;
    v89 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30, &unk_1BE0C33C0);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD22B1E0;
    *(v0 + 104) = &block_descriptor_27_0;
    *(v0 + 112) = v89;
    [v77 updateDynamicContentPageForCriteriaIdentifier:v67 pageTypes:v81 completion:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1BD75A370()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 504) = v2;
  if (v2)
  {

    v3 = *(v1 + 448);
    v4 = *(v1 + 456);
    v5 = sub_1BD75A740;
  }

  else
  {
    v3 = *(v1 + 448);
    v4 = *(v1 + 456);
    v5 = sub_1BD75A488;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BD75A488(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 488);
  v10 = *(v8 + 496);
  *(v8 + 440), a2, a3, a4, a5, a6, a7, a8;

  v11 = *(v8 + 464);
  v12 = *(v8 + 472);
  v14 = *(v8 + 408);
  v13 = *(v8 + 416);
  v15 = *(v8 + 392);
  v16 = *(v8 + 400);
  v44 = *(v8 + 384);
  v17 = *(v8 + 360);
  v18 = *(v8 + 368);
  v19 = [v17 dynamicContentPageForCriteriaIdentifier:v11 pageType:18];

  *(v8 + 304) = v19;
  *v13 = v17;
  v13[1] = v18;
  v13[2] = v19;
  swift_storeEnumTagMultiPayload();
  sub_1BD75D80C(v13, v15, type metadata accessor for PaymentPassHubView.DetailSheet);
  (*(v14 + 56))(v15, 0, 1, v16);
  sub_1BD0DE19C(v15, v44, &qword_1EBD39350, &unk_1BE0B8570);
  v20 = v19;
  v21 = v17;
  v22 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  sub_1BE0516B4();
  sub_1BD0DE53C(v15, &qword_1EBD39350, &unk_1BE0B8570);
  sub_1BD75D874(v13, type metadata accessor for PaymentPassHubView.DetailSheet);
  if (v12)
  {
    sub_1BD75D874(*(v8 + 432), type metadata accessor for PaymentPassHubView);
  }

  else
  {
    v23 = *(v8 + 432);
    v24 = v23 + *(*(v8 + 424) + 108);
    v26 = *v24;
    v25 = *(v24 + 8);
    *(v8 + 272) = *v24;
    *(v8 + 280) = v25;
    sub_1BE048964();
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
    sub_1BE0516A4();
    sub_1BD535FA8(2);
    v27 = *(v8 + 344);
    *(v8 + 288) = v26;
    *(v8 + 296) = v25;
    *(v8 + 352) = v27;
    sub_1BE0516B4();
    sub_1BD75D874(v23, type metadata accessor for PaymentPassHubView);

    v26, v28, v29, v30, v31, v32, v33, v34;
    v25, v35, v36, v37, v38, v39, v40, v41;
  }

  v42 = *(v8 + 8);

  return v42();
}

uint64_t sub_1BD75A740(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 496);
  v10 = *(v8 + 488);
  v42 = *(v8 + 504);
  v11 = *(v8 + 416);
  v40 = *(v8 + 424);
  v41 = *(v8 + 432);
  v12 = *(v8 + 400);
  v13 = *(v8 + 408);
  v14 = *(v8 + 392);
  v39 = *(v8 + 384);
  v15 = *(v8 + 360);
  v16 = *(v8 + 368);
  *(v8 + 440), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  *v11 = v15;
  v11[1] = v16;
  v11[2] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1BD75D80C(v11, v14, type metadata accessor for PaymentPassHubView.DetailSheet);
  (*(v13 + 56))(v14, 0, 1, v12);
  sub_1BD0DE19C(v14, v39, &qword_1EBD39350, &unk_1BE0B8570);
  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  sub_1BE0516B4();
  sub_1BD0DE53C(v14, &qword_1EBD39350, &unk_1BE0B8570);
  sub_1BD75D874(v11, type metadata accessor for PaymentPassHubView.DetailSheet);
  v19 = v41 + *(v40 + 108);
  v20 = *v19;
  v21 = *(v19 + 8);
  *(v8 + 240) = *v19;
  *(v8 + 248) = v21;
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE0516A4();
  sub_1BD535FA8(2);
  v22 = *(v8 + 328);
  *(v8 + 256) = v20;
  *(v8 + 264) = v21;
  *(v8 + 336) = v22;
  sub_1BE0516B4();

  sub_1BD75D874(v41, type metadata accessor for PaymentPassHubView);
  v20, v23, v24, v25, v26, v27, v28, v29;
  v21, v30, v31, v32, v33, v34, v35, v36;

  v37 = *(v8 + 8);

  return v37();
}

double sub_1BD75A98C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PaymentPassHubView(0);
  v9 = *(a1 + *(v8 + 72));
  if (v9)
  {
    v10 = [v9 ineligibleDetailsForCriteria_];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1BD75AB74();
  v13 = v12;
  v34 = sub_1BD75ADFC(v10);
  v15 = v14;
  if (v9)
  {
    v33 = v13;
    v16 = v11;
    sub_1BD49C81C();
    v18 = v17;
    v19 = sub_1BE052404();
    v18, v20, v21, v22, v23, v24, v25, v26;
    v27 = [v9 merchandisingOfferForPassUniqueID_];

    if (v27)
    {
      v28 = [v27 rewards];

      if (v28)
      {
        sub_1BD0E5E8C(0, &qword_1EBD3EB48, 0x1E69B8CB8);
        v27 = sub_1BE052744();
      }

      else
      {
        v27 = 0;
      }
    }

    v11 = v16;
    v13 = v33;
    if (a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v27 = 0;
    if (a3)
    {
LABEL_16:

      v31 = 1;
      goto LABEL_17;
    }
  }

  v29 = *(a1 + *(v8 + 68));
  if (!v29)
  {

    goto LABEL_13;
  }

  v30 = [v29 type];

  if (v30 != 2)
  {
LABEL_13:
    v31 = 0;
    goto LABEL_17;
  }

  v31 = 2;
LABEL_17:
  *a4 = v11;
  *(a4 + 8) = v13;
  *(a4 + 16) = 0;
  *(a4 + 24) = v34;
  *(a4 + 32) = v15;
  *(a4 + 40) = v27;
  *(a4 + 48) = v31;
  result = 1.7101179e214;
  *(a4 + 56) = xmmword_1BE0F50D0;
  *(a4 + 72) = 2;
  *(a4 + 80) = 0x4042000000000000;
  return result;
}

id sub_1BD75AB74()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v26 = *(v0 + *(type metadata accessor for PaymentPassHubView(0) + 120));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516A4();
  v8 = v25;
  if (v25)
  {
    (*(v2 + 104))(v7, *MEMORY[0x1E69B8088], v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BE0B69E0;
    v10 = [v8 programName];
    v11 = sub_1BE052434();
    v13 = v12;

    *(v9 + 56) = MEMORY[0x1E69E6158];
    *(v9 + 64) = sub_1BD110550();
    *(v9 + 32) = v11;
    *(v9 + 40) = v13;
    v14 = sub_1BE04B714();

    v9, v15, v16, v17, v18, v19, v20, v21;
    v4 = v7;
LABEL_5:
    (*(v2 + 8))(v4, v1);
    return v14;
  }

  (*(v2 + 104))(v4, *MEMORY[0x1E69B8088], v1);
  result = PKPassKitBundle();
  if (result)
  {
    v23 = result;
    v14 = sub_1BE04B6F4();

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1BD75ADFC(void *a1)
{
  v146 = a1;
  v2 = sub_1BE053304();
  v138 = *(v2 - 8);
  v139 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v137 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v144 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v137 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v142 = &v137 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v137 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v145 = &v137 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v141 = &v137 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v137 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v137 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v137 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v137 - v27;
  v29 = type metadata accessor for PaymentPassHubView(0);
  v30 = v1;
  v31 = (v1 + v29[27]);
  v33 = *v31;
  v32 = v31[1];
  *&v147 = v33;
  *(&v147 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
  sub_1BE0516A4();
  v34 = v150;
  v35 = sub_1BD6CF234();
  v34, v36, v37, v38, v39, v40, v41, v42;
  if (v35)
  {
    (*(v5 + 104))(v28, *MEMORY[0x1E69B8088], v4);
    result = PKPassKitBundle();
    if (result)
    {
      v44 = result;
      v45 = v5;
      v46 = sub_1BE04B6F4();

      (*(v45 + 8))(v28, v4);
      return v46;
    }

    __break(1u);
    goto LABEL_60;
  }

  v47 = v4;
  v48 = v5;
  if (!v146)
  {
    goto LABEL_8;
  }

  v49 = v146;
  if ([v49 isEligible])
  {

LABEL_8:
    v147 = *(v30 + v29[32]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290, &qword_1BE0F5130);
    sub_1BE0516A4();
    v50 = v150;
    if (v150)
    {
      v51 = [v150 code];

      if (v51 == 40030)
      {
        v52 = v48;
        v19 = v145;
        (*(v48 + 104))(v145, *MEMORY[0x1E69B8088], v47);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v49 = result;
        v46 = sub_1BE04B6F4();
LABEL_30:

        (*(v52 + 8))(v19, v47);
        return v46;
      }
    }

    v147 = *(v30 + v29[30]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
    sub_1BE0516A4();
    v53 = v150;
    v54 = v47;
    if (v150)
    {
      v55 = v48;
      if ([v150 isRedeemable])
      {
        if (sub_1BD758F20())
        {
          v56 = [v53 monetaryValue];
          v57 = [v53 type];
          v58 = [v56 formattedStringValue];
          if (!v58)
          {

            return 0;
          }

          v59 = v58;
          v60 = sub_1BE052434();
          v62 = v61;

          if ([v53 type] == 3)
          {
            v63 = v140;
            (*(v55 + 104))(v140, *MEMORY[0x1E69B8088], v47);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
            v64 = swift_allocObject();
            *(v64 + 16) = xmmword_1BE0B69E0;
            *(v64 + 56) = MEMORY[0x1E69E6158];
            *(v64 + 64) = sub_1BD110550();
            *(v64 + 32) = v60;
            *(v64 + 40) = v62;
            v46 = sub_1BE04B714();

            v64, v65, v66, v67, v68, v69, v70, v71;
LABEL_58:

            v85 = *(v55 + 8);
            v86 = v63;
            goto LABEL_37;
          }

          v146 = v60;
          v94 = [v53 value];
          if (v94)
          {
            v147 = 0uLL;
            v148 = 0;
            v149 = 1;
            v95 = v94;
            sub_1BE0533E4();

            if (v149 != 1)
            {
              v96 = v137;
              MEMORY[0x1BFB37210]();
              sub_1BD75D68C(&qword_1EBD45110, MEMORY[0x1E6969FD0], MEMORY[0x1E6969FC8]);
              v97 = v139;
              sub_1BE053464();
              (*(v138 + 8))(v96, v97);
              v105 = v147;
              if (v57 == 2)
              {
                v145 = "ANCE_TYPE_UNKNOWN";
                v106 = v140;
                (*(v55 + 104))(v140, *MEMORY[0x1E69B8088], v47);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
                v107 = swift_allocObject();
                *(v107 + 16) = xmmword_1BE0B6CA0;
                v119 = MEMORY[0x1E69E6158];
                *(v107 + 56) = MEMORY[0x1E69E6158];
                v120 = sub_1BD110550();
                *(v107 + 32) = v105;
                *(v107 + 96) = v119;
                *(v107 + 104) = v120;
                v121 = v146;
                *(v107 + 64) = v120;
                *(v107 + 72) = v121;
                *(v107 + 80) = v62;
                goto LABEL_55;
              }

              v145 = v147;
              if (v57 == 1)
              {
                v144 = "DEEM_REWARDS_BALANCE_TYPE_MILES";
                v106 = v140;
                (*(v55 + 104))(v140, *MEMORY[0x1E69B8088], v47);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
                v107 = swift_allocObject();
                *(v107 + 16) = xmmword_1BE0B6CA0;
                v108 = MEMORY[0x1E69E6158];
                *(v107 + 56) = MEMORY[0x1E69E6158];
                v109 = sub_1BD110550();
                v110 = v146;
                *(v107 + 32) = v145;
                *(v107 + 40) = *(&v105 + 1);
                *(v107 + 96) = v108;
                *(v107 + 104) = v109;
                *(v107 + 64) = v109;
                *(v107 + 72) = v110;
                *(v107 + 80) = v62;
LABEL_55:
                v46 = sub_1BE04B714();
                v107, v122, v123, v124, v125, v126, v127, v128;

                (*(v55 + 8))(v106, v47);
                return v46;
              }

              *(&v147 + 1), v98, v99, v100, v101, v102, v103, v104;
              v54 = v47;
            }
          }

          v63 = v140;
          (*(v55 + 104))(v140, *MEMORY[0x1E69B8088], v54);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
          v129 = swift_allocObject();
          *(v129 + 16) = xmmword_1BE0B69E0;
          *(v129 + 56) = MEMORY[0x1E69E6158];
          *(v129 + 64) = sub_1BD110550();
          *(v129 + 32) = v146;
          *(v129 + 40) = v62;
          v46 = sub_1BE04B714();
          v129, v130, v131, v132, v133, v134, v135, v136;

          goto LABEL_58;
        }

        v82 = v142;
        (*(v48 + 104))(v142, *MEMORY[0x1E69B8088], v47);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        v84 = result;
        v46 = sub_1BE04B6F4();
      }

      else
      {
        v82 = v143;
        (*(v48 + 104))(v143, *MEMORY[0x1E69B8088], v47);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v83 = result;
        v46 = sub_1BE04B6F4();
      }

      v85 = *(v48 + 8);
      v86 = v82;
LABEL_37:
      v85(v86, v54);
      return v46;
    }

    v79 = v144;
    (*(v48 + 104))(v144, *MEMORY[0x1E69B8088], v47);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v80 = result;
    v46 = sub_1BE04B6F4();

    (*(v48 + 8))(v79, v47);
    return v46;
  }

  v72 = [v49 reason];
  if (v72 <= 12)
  {
    if (v72 == 7)
    {
      v90 = v5;
      (*(v5 + 104))(v25, *MEMORY[0x1E69B8088], v47);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v91 = result;
      v46 = sub_1BE04B6F4();

      (*(v90 + 8))(v25, v47);
      return v46;
    }

    if (v72 == 8)
    {
      v73 = *(v30 + v29[18]);
      if (v73)
      {
        v74 = [v73 configuration];
        v75 = [v74 currencyCode];

        if (v75)
        {
          v76 = sub_1BE052434();
          v78 = v77;

          v73 = v76;
LABEL_53:
          sub_1BD480FEC(v73, v78);
          v46 = v111;

          v78, v112, v113, v114, v115, v116, v117, v118;
          return v46;
        }

        v73 = 0;
      }

      v78 = 0;
      goto LABEL_53;
    }

LABEL_39:
    v87 = v5;
    v88 = v141;
    (*(v5 + 104))(v141, *MEMORY[0x1E69B8088], v4);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v89 = result;
    v46 = sub_1BE04B6F4();

    (*(v87 + 8))(v88, v47);
    return v46;
  }

  if (v72 != 13)
  {
    if (v72 == 14)
    {
      v52 = v5;
      (*(v5 + 104))(v19, *MEMORY[0x1E69B8088], v47);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v81 = result;
      v46 = sub_1BE04B6F4();

      goto LABEL_30;
    }

    goto LABEL_39;
  }

  v92 = v5;
  (*(v5 + 104))(v22, *MEMORY[0x1E69B8088], v47);
  result = PKPassKitBundle();
  if (result)
  {
    v93 = result;
    v46 = sub_1BE04B6F4();

    (*(v92 + 8))(v22, v47);
    return v46;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_1BD75BBD4(void *a1, void *a2)
{
  sub_1BE053D74();
  v4 = [a1 formattedStringValue];
  if (v4)
  {
    v5 = v4;
    sub_1BE052434();
    v7 = v6;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  sub_1BE052524();
  v7, v8, v9, v10, v11, v12, v13, v14;
  v15 = [a2 monetaryValue];
  v16 = [v15 formattedStringValue];

  if (v16)
  {
    sub_1BE052434();
    v18 = v17;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  sub_1BE052524();
  v18, v19, v20, v21, v22, v23, v24, v25;
  return sub_1BE053D54();
}

double sub_1BD75BCE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD57C50, &qword_1BE0F2290);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v50 - v8);
  v10 = type metadata accessor for PaymentPassHubView(0);
  v11 = (a2 + v10[27]);
  v12 = v11[1];
  v53 = *v11;
  v13 = v53;
  v54 = v12;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
  sub_1BE0516A4();
  sub_1BD535FA8(1);
  v51 = v13;
  v52 = v12;
  v50 = v55;
  sub_1BE0516B4();
  v12, v14, v15, v16, v17, v18, v19, v20;
  v13, v21, v22, v23, v24, v25, v26, v27;
  v28 = (a2 + v10[29]);
  v29 = *v28;
  v30 = *(v28 + 1);
  LOBYTE(v53) = *v28;
  v54 = v30;
  LOBYTE(v51) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516B4();
  sub_1BD0DE19C(a1, v9, &unk_1EBD57C50, &qword_1BE0F2290);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = *v9;
    if (*v9)
    {
      v32 = v31;
      v33 = sub_1BE04A844();

      v34 = (a2 + v10[26]);
      v35 = v34[1];
      v53 = *v34;
      v36 = v53;
      v54 = v35;
      v51 = v33;
      sub_1BE048964();
      v37 = v33;
      v38 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
      sub_1BE0516B4();

      v35, v39, v40, v41, v42, v43, v44, v45;
    }

    else
    {
      LOBYTE(v53) = v29;
      v54 = v30;
      LOBYTE(v51) = 1;
      sub_1BE0516B4();
    }
  }

  else
  {
    sub_1BD75D368(v9, v6, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
    v47 = *(v6 + 1);
    if (v47)
    {
      v48 = *(a2 + v10[19]);
      v49 = v47;
      v48(v47);
    }

    sub_1BD75D874(v6, type metadata accessor for PaymentOfferInstallmentPlanSelectionModel.SelectionResult);
  }

  return result;
}

uint64_t sub_1BD75BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 520) = v15;
  *(v8 + 504) = v14;
  *(v8 + 488) = a7;
  *(v8 + 496) = a8;
  *(v8 + 472) = a5;
  *(v8 + 480) = a6;
  *(v8 + 464) = a4;
  v9 = sub_1BE04D214();
  *(v8 + 528) = v9;
  *(v8 + 536) = *(v9 - 8);
  *(v8 + 544) = swift_task_alloc();
  *(v8 + 552) = swift_task_alloc();
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  sub_1BE0528A4();
  *(v8 + 576) = sub_1BE052894();
  v11 = sub_1BE052844();
  *(v8 + 584) = v11;
  *(v8 + 592) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1BD75C118, v11, v10);
}

uint64_t sub_1BD75C118()
{
  v2 = v0[60];
  v1 = v0[61];
  v3 = sub_1BE052404();
  v0[75] = v3;
  v0[2] = v0;
  v0[7] = v0 + 658;
  v0[3] = sub_1BD75C254;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD57C30, &unk_1BE0C33C0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD22B1E0;
  v0[13] = &block_descriptor_171;
  v0[14] = v4;
  [v2 updateRewardsBalanceForPass:v1 criteriaIdentifier:v3 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD75C254()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 608) = v2;
  v3 = *(v1 + 592);
  v4 = *(v1 + 584);
  if (v2)
  {
    v5 = sub_1BD75C6D0;
  }

  else
  {
    v5 = sub_1BD75C384;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD75C384(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v58 = v8;
  v9 = *(v8 + 600);
  v10 = *(v8 + 480);
  v11 = *(v8 + 464);
  *(v8 + 576), a2, a3, a4, a5, a6, a7, a8;

  v12 = sub_1BE052404();
  v13 = [v10 rewardsBalanceForPassUniqueID_];

  v14 = (v11 + *(type metadata accessor for PaymentPassHubView(0) + 120));
  v15 = *v14;
  v16 = v14[1];
  *(v8 + 400) = *v14;
  *(v8 + 408) = v16;
  *(v8 + 448) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516B4();
  *(v8 + 416) = v15;
  *(v8 + 424) = v16;
  sub_1BE0516A4();
  v17 = *(v8 + 456);
  if (v17)
  {
    sub_1BE04D154();
    v18 = v17;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C14();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v8 + 560);
    v23 = *(v8 + 536);
    v24 = *(v8 + 528);
    if (v21)
    {
      v56 = *(v8 + 528);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v57 = v26;
      *v25 = 136315138;
      v27 = [v18 identifier];
      v28 = sub_1BE052434();
      v55 = v22;
      v30 = v29;

      v31 = sub_1BD123690(v28, v30, &v57);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v25 + 4) = v31;
      _os_log_impl(&dword_1BD026000, v19, v20, "Fetched redeemable payment rewards balance (%s)", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26, v39, v40, v41, v42, v43, v44, v45);
      MEMORY[0x1BFB45F20](v26, -1, -1);
      MEMORY[0x1BFB45F20](v25, -1, -1);

      (*(v23 + 8))(v55, v56);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }
  }

  else
  {
    sub_1BE04D154();
    v46 = sub_1BE04D204();
    v47 = sub_1BE052C14();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v8 + 568);
    v50 = *(v8 + 536);
    v51 = *(v8 + 528);
    if (v48)
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1BD026000, v46, v47, "Fetched no redeemable payment rewards balance", v52, 2u);
      MEMORY[0x1BFB45F20](v52, -1, -1);
    }

    (*(v50 + 8))(v49, v51);
  }

  sub_1BD75CB14(*(v8 + 464), *(v8 + 472));

  v53 = *(v8 + 8);

  return v53();
}

uint64_t sub_1BD75C6D0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 600);
  *(v8 + 576), a2, a3, a4, a5, a6, a7, a8;
  swift_willThrow();

  v10 = sub_1BE04A844();
  if ([v10 code] == 40030)
  {
    sub_1BE04D154();
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C14();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1BD026000, v11, v12, "Payment rewards balance opted-out", v13, 2u);
      MEMORY[0x1BFB45F20](v13, -1, -1);
    }

    v14 = *(v8 + 552);
    v15 = *(v8 + 536);
    v16 = *(v8 + 528);
    v17 = *(v8 + 464);

    (*(v15 + 8))(v14, v16);
    v18 = type metadata accessor for PaymentPassHubView(0);
    *(v8 + 368) = *(v17 + v18[32]);
    *(v8 + 432) = v10;
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290, &qword_1BE0F5130);
    sub_1BE0516B4();
    *(v8 + 384) = *(v17 + v18[30]);
    *(v8 + 440) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
    sub_1BE0516B4();
    v20 = (v17 + v18[31]);
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    *(v8 + 248) = *(v20 + 6);
    *(v8 + 232) = v23;
    *(v8 + 216) = v22;
    *(v8 + 200) = v21;
    v24 = *v20;
    v25 = v20[1];
    v26 = v20[2];
    *(v8 + 304) = *(v20 + 6);
    *(v8 + 272) = v25;
    *(v8 + 288) = v26;
    *(v8 + 256) = v24;
    *(v8 + 616) = 0u;
    *(v8 + 632) = 0u;
    *(v8 + 641) = 0u;
    *(v8 + 657) = 1;
    sub_1BD0DE19C(v8 + 200, v8 + 312, &qword_1EBD394D0, &unk_1BE0B8720);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394D0, &unk_1BE0B8720);
    sub_1BE0516B4();
    v27 = *(v8 + 272);
    *(v8 + 144) = *(v8 + 256);
    *(v8 + 160) = v27;
    *(v8 + 176) = *(v8 + 288);
    *(v8 + 192) = *(v8 + 304);
    sub_1BD0DE53C(v8 + 144, &qword_1EBD394D0, &unk_1BE0B8720);
    v28 = *(v17 + v18[17]);
    if (v28)
    {
      v29 = [v28 type];
      v30 = *(v8 + 608);
      if (v29 == 2)
      {
        (*(*(v8 + 464) + v18[19]))(0);
      }

      v31 = v30;
    }

    else
    {
      v42 = *(v8 + 608);

      v31 = v42;
    }
  }

  else
  {
    v32 = *(v8 + 608);
    sub_1BE04D154();
    v33 = v32;
    v34 = sub_1BE04D204();
    v35 = sub_1BE052C34();

    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v8 + 608);
    if (v36)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v37;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_1BD026000, v34, v35, "Could not refresh payment rewards balance, %@", v38, 0xCu);
      sub_1BD0DE53C(v39, &unk_1EBD3E590, &unk_1BE0B7E50);
      MEMORY[0x1BFB45F20](v39, -1, -1);
      MEMORY[0x1BFB45F20](v38, -1, -1);
    }

    else
    {
    }

    (*(*(v8 + 536) + 8))(*(v8 + 544), *(v8 + 528));
  }

  sub_1BD75CB14(*(v8 + 464), *(v8 + 472));

  v43 = *(v8 + 8);

  return v43();
}

void sub_1BD75CB14(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PaymentPassHubView(0);
  v5 = a1 + *(v4 + 108);
  v6 = *v5;
  v7 = *(v5 + 8);
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
  sub_1BE0516A4();
  sub_1BD535FA8(2);
  sub_1BE0516B4();
  v7, v8, v9, v10, v11, v12, v13, v14;
  v6, v15, v16, v17, v18, v19, v20, v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52268, &qword_1BE0F50E0);
  sub_1BE0516A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52290, &qword_1BE0F5130);
  sub_1BE0516A4();
  sub_1BD6B4444(v6, a2, v6, a1 + *(v4 + 56));
}

uint64_t sub_1BD75CC60(uint64_t a1)
{
  swift_getKeyPath();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EB28, &qword_1BE0C45C0);
  sub_1BD0DE4F4(&qword_1EBD3EB38, &qword_1EBD3EB28, &qword_1BE0C45C0, MEMORY[0x1E69E6338]);
  sub_1BD214890(&qword_1EBD3EB40, &qword_1EBD3EB48, 0x1E69B8CB8);
  sub_1BD10E5DC();
  return sub_1BE0519C4();
}

void sub_1BD75CD68(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 merchandisingDynamicContent];
  if (!v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v7 = 0;
    v9 = 0xE000000000000000;
LABEL_12:
    v21 = 3;
    goto LABEL_13;
  }

  v4 = v3;
  v5 = [v3 title];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE052434();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  v14 = [v4 subtitle];
  if (v14)
  {
    v15 = v14;
    v12 = sub_1BE052434();
    v13 = v16;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v17 = [v4 systemIcon];
  if (!v17)
  {

    v10 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v18 = v17;
  v19 = [v17 imageName];

  v10 = sub_1BE052434();
  v11 = v20;

  v21 = 2;
LABEL_13:
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = 0;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v21;
  *(a2 + 80) = 0x4042000000000000;
}

uint64_t sub_1BD75CEE4(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD758C50(a1, v6, v7, v1 + v5);
}

void sub_1BD75D004(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentPassHubView(0);
  v5 = (v4 - 8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (v1 + v5[29]);
  v9 = v8[1];
  *&v49 = *v8;
  *(&v49 + 1) = v9;
  sub_1BE048964();
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39668, &qword_1BE0B88A0);
  sub_1BE0516A4();
  sub_1BD2A598C(&v51, 1);
  v47 = v49;
  v48 = v9;
  v46[1] = v50;
  sub_1BE0516B4();
  v9, v10, v11, v12, v13, v14, v15, v16;
  v49, v17, v18, v19, v20, v21, v22, v23;
  v49 = *(v1 + v5[28]);
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0, &qword_1BE0DAEF0);
  sub_1BE0516B4();
  v24 = (v1 + v5[25]);
  v26 = *v24;
  v25 = v24[1];
  *&v49 = v26;
  *(&v49 + 1) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD394B0, &qword_1BE0B86F8);
  sub_1BE0516A4();
  v27 = *(v1 + v5[24]);
  if (v27)
  {
    v28 = v47;
    sub_1BD75D80C(v2, v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaymentPassHubView);
    v29 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v30 = swift_allocObject();
    sub_1BD75D368(v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for PaymentPassHubView);
    v31 = sub_1BE048964();
    sub_1BD8C1B80(v31, a1 & 1, sub_1BD75D2B4, v30);
    v30, v32, v33, v34, v35, v36, v37, v38;

    v27, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    type metadata accessor for PresentationContext(0);
    sub_1BD75D68C(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    sub_1BE04EEB4();
    __break(1u);
  }
}

unint64_t sub_1BD75D2D4()
{
  result = qword_1EBD52280;
  if (!qword_1EBD52280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52278, &unk_1BE0F5100);
    sub_1BD10E5DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD52280);
  }

  return result;
}

uint64_t sub_1BD75D368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD75D3D0(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1BD0F985C;

  return sub_1BD75BFDC(a1, v15, v14, v1 + v4, v8, v9, v10, v11);
}

void sub_1BD75D554()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + (((v3 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_1BD759770(v4, v0 + v2, v5, v7, v6);
}

unint64_t sub_1BD75D600()
{
  result = qword_1EBD522A8;
  if (!qword_1EBD522A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52298, &qword_1BE0F5148);
    sub_1BD638FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD522A8);
  }

  return result;
}

uint64_t sub_1BD75D68C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD75D6D4(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD759B2C(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1BD75D80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD75D874(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD75D8D4()
{
  v1 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 25);
  v5 = v0 + ((*(v1 + 80) + 26) & ~*(v1 + 80));

  sub_1BD757D08(v2, v3, v4, v5);
}

uint64_t objectdestroyTm_87()
{
  v1 = v0;
  v2 = type metadata accessor for PaymentPassHubView(0);
  v3 = *(*(v2 - 1) + 80);
  v1047 = *(*(v2 - 1) + 64);
  swift_unknownObjectRelease();
  v1048 = (v3 + 32) & ~v3;
  v4 = v0 + v1048;
  v5 = (v0 + v1048 + v2[5]);
  type metadata accessor for WrappedPass(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v5[1], v7, v8, v9, v10, v11, v12, v13;
    v5[3], v14, v15, v16, v17, v18, v19, v20;
    v21 = *(type metadata accessor for PlaceholderPass(0) + 28);
    v22 = sub_1BE04CF34();
    (*(*(v22 - 8) + 8))(v5 + v21, v22);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  v23 = type metadata accessor for AvailablePass(0);
  v24 = (v5 + v23[6]);
  v1050 = type metadata accessor for IdentityCredential(0);
  v1045 = *(*(v1050 - 1) + 48);
  if (!v1045(v24, 1))
  {
    v24[1], v25, v26, v27, v28, v29, v30, v31;
    v32 = v1050[5];
    v33 = sub_1BE04DA84();
    (*(*(v33 - 8) + 8))(v24 + v32, v33);
    *(v24 + v1050[6] + 8), v34, v35, v36, v37, v38, v39, v40;
    *(v24 + v1050[7] + 8), v41, v42, v43, v44, v45, v46, v47;
    *(v24 + v1050[8] + 8), v48, v49, v50, v51, v52, v53, v54;
  }

  v55 = (v5 + v23[7]);
  v1052 = type metadata accessor for BalanceInfo(0);
  v1044 = *(*(v1052 - 8) + 48);
  if (!v1044(v55, 1))
  {

    v56 = *(v1052 + 28);
    v57 = sub_1BE04AF64();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

  v59 = v5 + v23[10];
  v1049 = type metadata accessor for PassEligibleRewardsInfo(0);
  v1043 = *(*(v1049 - 8) + 48);
  v1051 = v23;
  v1046 = v1;
  if (!v1043(v59, 1))
  {
    v67 = *(v59 + 2);
    if (v67 != 1)
    {
      v67, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 4), v68, v69, v70, v71, v72, v73, v74;
      *(v59 + 6), v75, v76, v77, v78, v79, v80, v81;
    }

    v82 = *(v59 + 9);
    if (v82 != 1)
    {
      v82, v60, v61, v62, v63, v64, v65, v66;
      *(v59 + 11), v83, v84, v85, v86, v87, v88, v89;
      *(v59 + 13), v90, v91, v92, v93, v94, v95, v96;
    }

    v97 = *(v1049 + 28);
    v98 = sub_1BE04AF64();
    v99 = *(v98 - 8);
    v100 = *(v99 + 48);
    if (!v100(&v59[v97], 1, v98))
    {
      (*(v99 + 8))(&v59[v97], v98);
    }

    v101 = *(v1049 + 32);
    if (!v100(&v59[v101], 1, v98))
    {
      (*(v99 + 8))(&v59[v101], v98);
    }
  }

  v102 = (v5 + v23[12]);
  if (*v102)
  {

    v102[4], v103, v104, v105, v106, v107, v108, v109;
  }

  v110 = (v5 + v23[13]);
  if (*v110)
  {

    v110[2], v111, v112, v113, v114, v115, v116, v117;
  }

  *(v5 + v23[14]), v60, v61, v62, v63, v64, v65, v66;
  *(v5 + v23[15]), v118, v119, v120, v121, v122, v123, v124;

  v125 = (v4 + v2[7]);
  v1042 = *(*(v23 - 1) + 48);
  if (!v1042(v125, 1, v23))
  {
    v126 = swift_getEnumCaseMultiPayload();
    if (v126 == 2)
    {
      v125[1], v127, v128, v129, v130, v131, v132, v133;
      v125[3], v134, v135, v136, v137, v138, v139, v140;
      v141 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v142 = sub_1BE04CF34();
      (*(*(v142 - 8) + 8))(v125 + v141, v142);
    }

    else if (v126 <= 1)
    {
    }

    v143 = (v125 + v23[6]);
    if (!(v1045)(v143, 1, v1050))
    {
      v143[1], v144, v145, v146, v147, v148, v149, v150;
      v151 = v1050[5];
      v152 = sub_1BE04DA84();
      (*(*(v152 - 8) + 8))(v143 + v151, v152);
      *(v143 + v1050[6] + 8), v153, v154, v155, v156, v157, v158, v159;
      *(v143 + v1050[7] + 8), v160, v161, v162, v163, v164, v165, v166;
      *(v143 + v1050[8] + 8), v167, v168, v169, v170, v171, v172, v173;
    }

    v174 = (v125 + v23[7]);
    if (!(v1044)(v174, 1, v1052))
    {

      v175 = *(v1052 + 28);
      v176 = sub_1BE04AF64();
      v177 = *(v176 - 8);
      if (!(*(v177 + 48))(v174 + v175, 1, v176))
      {
        (*(v177 + 8))(v174 + v175, v176);
      }
    }

    v178 = v125 + v23[10];
    if (!(v1043)(v178, 1, v1049))
    {
      v186 = *(v178 + 2);
      if (v186 != 1)
      {
        v186, v179, v180, v181, v182, v183, v184, v185;
        *(v178 + 4), v187, v188, v189, v190, v191, v192, v193;
        *(v178 + 6), v194, v195, v196, v197, v198, v199, v200;
      }

      v201 = *(v178 + 9);
      if (v201 != 1)
      {
        v201, v179, v180, v181, v182, v183, v184, v185;
        *(v178 + 11), v202, v203, v204, v205, v206, v207, v208;
        *(v178 + 13), v209, v210, v211, v212, v213, v214, v215;
      }

      v216 = *(v1049 + 28);
      v217 = sub_1BE04AF64();
      v218 = *(v217 - 8);
      v219 = *(v218 + 48);
      if (!v219(&v178[v216], 1, v217))
      {
        (*(v218 + 8))(&v178[v216], v217);
      }

      v220 = *(v1049 + 32);
      if (!v219(&v178[v220], 1, v217))
      {
        (*(v218 + 8))(&v178[v220], v217);
      }
    }

    v221 = (v125 + v23[12]);
    if (*v221)
    {

      v221[4], v222, v223, v224, v225, v226, v227, v228;
    }

    v229 = (v125 + v23[13]);
    if (*v229)
    {

      v229[2], v230, v231, v232, v233, v234, v235, v236;
    }

    *(v125 + v23[14]), v179, v180, v181, v182, v183, v184, v185;
    *(v125 + v23[15]), v237, v238, v239, v240, v241, v242, v243;
  }

  v244 = type metadata accessor for Passes(0);

  *(v125 + v244[7]), v245, v246, v247, v248, v249, v250, v251;
  *(v125 + v244[9]), v252, v253, v254, v255, v256, v257, v258;
  *(v125 + v244[11]), v259, v260, v261, v262, v263, v264, v265;
  v273 = v4 + v2[8];
  if (*(v273 + 48))
  {
    sub_1BD0D455C(*v273, *(v273 + 8), *(v273 + 16));

    *(v273 + 48), v274, v275, v276, v277, v278, v279, v280;
    *(v273 + 64), v281, v282, v283, v284, v285, v286, v287;
  }

  *(v4 + v2[9] + 8), v266, v267, v268, v269, v270, v271, v272;
  *(v4 + v2[10] + 8), v288, v289, v290, v291, v292, v293, v294;
  *(v4 + v2[11] + 8), v295, v296, v297, v298, v299, v300, v301;
  *(v4 + v2[12] + 8), v302, v303, v304, v305, v306, v307, v308;
  *(v4 + v2[13] + 8), v309, v310, v311, v312, v313, v314, v315;
  v316 = (v4 + v2[14]);
  v317 = _s14PaymentSummaryVMa(0);
  if (!(*(*(v317 - 1) + 48))(v316, 1, v317))
  {

    v316[4], v318, v319, v320, v321, v322, v323, v324;
    v316[6], v325, v326, v327, v328, v329, v330, v331;
    v332 = _s11TotalAmountVMa(0);
    v333 = (v316 + v332[10]);
    _s22SummaryItemPricingTypeOMa(0);
    v334 = swift_getEnumCaseMultiPayload();
    v1041 = v317;
    switch(v334)
    {
      case 2:
        v333[1], v335, v336, v337, v338, v339, v340, v341;
        break;
      case 1:
        v377 = sub_1BE04AF64();
        (*(*(v377 - 8) + 8))(v333, v377);
        break;
      case 0:
        v1038 = v244;
        v342 = _s22SummaryItemPricingTypeO13RecurringItemVMa(0);
        v343 = v342[6];
        v344 = sub_1BE04AF64();
        v345 = *(v344 - 8);
        v346 = *(v345 + 48);
        if (!v346(v333 + v343, 1, v344))
        {
          (*(v345 + 8))(v333 + v343, v344);
        }

        v347 = v345;
        v348 = v342[7];
        if (!v346(v333 + v348, 1, v344))
        {
          (*(v347 + 8))(v333 + v348, v344);
        }

        *(v333 + v342[9] + 8), v349, v350, v351, v352, v353, v354, v355;
        *(v333 + v342[10] + 8), v356, v357, v358, v359, v360, v361, v362;
        *(v333 + v342[11] + 8), v363, v364, v365, v366, v367, v368, v369;
        *(v333 + v342[12] + 8), v370, v371, v372, v373, v374, v375, v376;
        v23 = v1051;
        v244 = v1038;
        v317 = v1041;
        break;
    }

    v378 = (v316 + v332[15]);
    v379 = v332;
    v380 = type metadata accessor for PeerPaymentModel(0);
    if ((*(*(v380 - 1) + 48))(v378, 1, v380))
    {
      goto LABEL_91;
    }

    v1036 = v379;
    v1039 = v244;

    v381 = (v378 + v380[5]);
    v382 = swift_getEnumCaseMultiPayload();
    if (v382 == 2)
    {
      v381[1], v383, v384, v385, v386, v387, v388, v389;
      v381[3], v391, v392, v393, v394, v395, v396, v397;
      v398 = *(type metadata accessor for PlaceholderPass(0) + 28);
      v399 = sub_1BE04CF34();
      (*(*(v399 - 8) + 8))(v381 + v398, v399);
    }

    else
    {
      if (v382 != 1)
      {
        v390 = v1050;
        if (!v382)
        {

          v390 = v1050;
        }

        goto LABEL_68;
      }
    }

    v390 = v1050;
LABEL_68:
    v400 = (v381 + v1051[6]);
    if (!(v1045)(v400, 1, v390))
    {
      v400[1], v401, v402, v403, v404, v405, v406, v407;
      v408 = v1050[5];
      v409 = sub_1BE04DA84();
      (*(*(v409 - 8) + 8))(v400 + v408, v409);
      *(v400 + v1050[6] + 8), v410, v411, v412, v413, v414, v415, v416;
      *(v400 + v1050[7] + 8), v417, v418, v419, v420, v421, v422, v423;
      *(v400 + v1050[8] + 8), v424, v425, v426, v427, v428, v429, v430;
    }

    v431 = (v381 + v1051[7]);
    if (!(v1044)(v431, 1, v1052))
    {

      v432 = *(v1052 + 28);
      v433 = sub_1BE04AF64();
      v434 = *(v433 - 8);
      if (!(*(v434 + 48))(v431 + v432, 1, v433))
      {
        (*(v434 + 8))(v431 + v432, v433);
      }
    }

    v435 = v381 + v1051[10];
    if (!(v1043)(v435, 1, v1049))
    {
      v443 = *(v435 + 2);
      if (v443 != 1)
      {
        v443, v436, v437, v438, v439, v440, v441, v442;
        *(v435 + 4), v444, v445, v446, v447, v448, v449, v450;
        *(v435 + 6), v451, v452, v453, v454, v455, v456, v457;
      }

      v458 = *(v435 + 9);
      if (v458 != 1)
      {
        v458, v436, v437, v438, v439, v440, v441, v442;
        *(v435 + 11), v459, v460, v461, v462, v463, v464, v465;
        *(v435 + 13), v466, v467, v468, v469, v470, v471, v472;
      }

      v473 = *(v1049 + 28);
      v474 = sub_1BE04AF64();
      v1034 = *(v474 - 8);
      v1033 = v473;
      v475 = &v435[v473];
      v476 = *(v1034 + 48);
      if (!v476(v475, 1, v474))
      {
        (*(v1034 + 8))(&v435[v1033], v474);
      }

      v477 = *(v1049 + 32);
      if (!v476(&v435[v477], 1, v474))
      {
        (*(v1034 + 8))(&v435[v477], v474);
      }
    }

    v478 = (v381 + v1051[12]);
    if (*v478)
    {

      v478[4], v479, v480, v481, v482, v483, v484, v485;
    }

    v486 = (v381 + v1051[13]);
    v317 = v1041;
    if (*v486)
    {

      v486[2], v487, v488, v489, v490, v491, v492, v493;
    }

    v23 = v1051;
    *(v381 + v1051[14]), v436, v437, v438, v439, v440, v441, v442;
    *(v381 + v1051[15]), v494, v495, v496, v497, v498, v499, v500;
    v501 = v378;
    v502 = (v378 + v380[6]);
    v244 = v1039;
    if (*v502 != 1)
    {

      v510 = v502[3];
      if (v510)
      {
        v510, v503, v504, v505, v506, v507, v508, v509;
        v502[5], v511, v512, v513, v514, v515, v516, v517;
        v502[7], v518, v519, v520, v521, v522, v523, v524;
        v502[9], v525, v526, v527, v528, v529, v530, v531;
      }

      v501 = v378;
    }

    v379 = v1036;
LABEL_91:
    v532 = (v316 + v379[16]);
    v1 = v1046;
    if (!(*(*(v244 - 1) + 48))(v532, 1, v244))
    {
      if (!v1042(v532, 1, v23))
      {
        v540 = swift_getEnumCaseMultiPayload();
        v1040 = v244;
        if (v540 == 2)
        {
          v532[1], v541, v542, v543, v544, v545, v546, v547;
          v532[3], v548, v549, v550, v551, v552, v553, v554;
          v555 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v556 = sub_1BE04CF34();
          (*(*(v556 - 8) + 8))(v532 + v555, v556);
        }

        else if (v540 <= 1)
        {
        }

        v557 = (v532 + v23[6]);
        if (!(v1045)(v557, 1, v1050))
        {
          v557[1], v558, v559, v560, v561, v562, v563, v564;
          v565 = v1050[5];
          v566 = sub_1BE04DA84();
          (*(*(v566 - 8) + 8))(v557 + v565, v566);
          *(v557 + v1050[6] + 8), v567, v568, v569, v570, v571, v572, v573;
          *(v557 + v1050[7] + 8), v574, v575, v576, v577, v578, v579, v580;
          *(v557 + v1050[8] + 8), v581, v582, v583, v584, v585, v586, v587;
        }

        v588 = (v532 + v23[7]);
        if (!(v1044)(v588, 1, v1052))
        {

          v589 = *(v1052 + 28);
          v590 = sub_1BE04AF64();
          v591 = *(v590 - 8);
          if (!(*(v591 + 48))(v588 + v589, 1, v590))
          {
            (*(v591 + 8))(v588 + v589, v590);
          }
        }

        v592 = v532 + v1051[10];
        if (!(v1043)(v592, 1, v1049))
        {
          v600 = *(v592 + 2);
          if (v600 != 1)
          {
            v600, v593, v594, v595, v596, v597, v598, v599;
            *(v592 + 4), v601, v602, v603, v604, v605, v606, v607;
            *(v592 + 6), v608, v609, v610, v611, v612, v613, v614;
          }

          v615 = *(v592 + 9);
          if (v615 != 1)
          {
            v615, v593, v594, v595, v596, v597, v598, v599;
            *(v592 + 11), v616, v617, v618, v619, v620, v621, v622;
            *(v592 + 13), v623, v624, v625, v626, v627, v628, v629;
          }

          v630 = *(v1049 + 28);
          v631 = sub_1BE04AF64();
          v1037 = *(v631 - 8);
          v1035 = v630;
          v632 = &v592[v630];
          v633 = *(v1037 + 48);
          if (!v633(v632, 1, v631))
          {
            (*(v1037 + 8))(&v592[v1035], v631);
          }

          v634 = *(v1049 + 32);
          if (!v633(&v592[v634], 1, v631))
          {
            (*(v1037 + 8))(&v592[v634], v631);
          }
        }

        v635 = (v532 + v1051[12]);
        if (*v635)
        {

          v635[4], v636, v637, v638, v639, v640, v641, v642;
        }

        v643 = (v532 + v1051[13]);
        v317 = v1041;
        if (*v643)
        {

          v643[2], v644, v645, v646, v647, v648, v649, v650;
        }

        v23 = v1051;
        *(v532 + v1051[14]), v593, v594, v595, v596, v597, v598, v599;
        *(v532 + v1051[15]), v651, v652, v653, v654, v655, v656, v657;
        v244 = v1040;
      }

      *(v532 + v244[7]), v658, v659, v660, v661, v662, v663, v664;
      *(v532 + v244[9]), v665, v666, v667, v668, v669, v670, v671;
      *(v532 + v244[11]), v672, v673, v674, v675, v676, v677, v678;
    }

    *(v316 + v317[5]), v533, v534, v535, v536, v537, v538, v539;
    *(v316 + v317[6] + 8), v679, v680, v681, v682, v683, v684, v685;
    v693 = v316 + v317[7];
    v694 = *(v693 + 1);
    if (v694)
    {
      v694, v686, v687, v688, v689, v690, v691, v692;
      *(v693 + 3), v695, v696, v697, v698, v699, v700, v701;
    }

    v702 = v316 + v317[9];
    v703 = *(v702 + 1);
    if (v703)
    {
      v703, v686, v687, v688, v689, v690, v691, v692;
      *(v702 + 3), v704, v705, v706, v707, v708, v709, v710;
      *(v702 + 5), v711, v712, v713, v714, v715, v716, v717;
    }

    v718 = v316 + v317[10];
    v719 = *(v718 + 1);
    if (v719)
    {
      v719, v686, v687, v688, v689, v690, v691, v692;
      *(v718 + 3), v720, v721, v722, v723, v724, v725, v726;
      *(v718 + 5), v727, v728, v729, v730, v731, v732, v733;
    }

    v734 = (v316 + v317[11]);
    v735 = type metadata accessor for DeferredPaymentRequest(0);
    if (!(*(*(v735 - 1) + 48))(v734, 1, v735))
    {
      v734[1], v736, v737, v738, v739, v740, v741, v742;
      v734[3], v743, v744, v745, v746, v747, v748, v749;
      v734[5], v750, v751, v752, v753, v754, v755, v756;
      v757 = v735[7];
      v758 = sub_1BE04AF64();
      v759 = *(v758 - 8);
      if (!(*(v759 + 48))(v734 + v757, 1, v758))
      {
        (*(v759 + 8))(v734 + v757, v758);
      }

      v760 = v735[8];
      v761 = sub_1BE04B3B4();
      v762 = *(v761 - 8);
      if (!(*(v762 + 48))(v734 + v760, 1, v761))
      {
        (*(v762 + 8))(v734 + v760, v761);
      }

      v23 = v1051;
      v317 = v1041;
    }

    *(v316 + v317[12]), v736, v737, v738, v739, v740, v741, v742;
  }

  *(v4 + v2[19] + 8), v763, v764, v765, v766, v767, v768, v769;
  *(v4 + v2[20]), v770, v771, v772, v773, v774, v775, v776;
  *(v4 + v2[21]), v777, v778, v779, v780, v781, v782, v783;
  *(v4 + v2[22]), v784, v785, v786, v787, v788, v789, v790;
  v791 = (v4 + v2[23]);

  v791[1], v792, v793, v794, v795, v796, v797, v798;
  v799 = (v4 + v2[24]);
  v800 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
  if (!(*(*(v800 - 8) + 48))(v799, 1, v800))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v801 = v799 + 2;
    }

    else
    {
      if (!v1042(v799, 1, v23))
      {
        v802 = swift_getEnumCaseMultiPayload();
        if (v802 == 2)
        {
          v799[1], v803, v804, v805, v806, v807, v808, v809;
          v799[3], v811, v812, v813, v814, v815, v816, v817;
          v818 = *(type metadata accessor for PlaceholderPass(0) + 28);
          v819 = sub_1BE04CF34();
          (*(*(v819 - 8) + 8))(v799 + v818, v819);
          v810 = v1052;
        }

        else
        {
          v810 = v1052;
          if (v802 <= 1)
          {
          }
        }

        v820 = (v799 + v23[6]);
        if (!(v1045)(v820, 1, v1050))
        {
          v820[1], v821, v822, v823, v824, v825, v826, v827;
          v828 = v1050[5];
          v829 = sub_1BE04DA84();
          (*(*(v829 - 8) + 8))(v820 + v828, v829);
          *(v820 + v1050[6] + 8), v830, v831, v832, v833, v834, v835, v836;
          *(v820 + v1050[7] + 8), v837, v838, v839, v840, v841, v842, v843;
          *(v820 + v1050[8] + 8), v844, v845, v846, v847, v848, v849, v850;
        }

        v851 = (v799 + v23[7]);
        if (!(v1044)(v851, 1, v810))
        {

          v852 = *(v810 + 28);
          v853 = sub_1BE04AF64();
          v854 = *(v853 - 8);
          if (!(*(v854 + 48))(v851 + v852, 1, v853))
          {
            (*(v854 + 8))(v851 + v852, v853);
          }
        }

        v855 = v799 + v23[10];
        if (!(v1043)(v855, 1, v1049))
        {
          v863 = *(v855 + 2);
          if (v863 != 1)
          {
            v863, v856, v857, v858, v859, v860, v861, v862;
            *(v855 + 4), v864, v865, v866, v867, v868, v869, v870;
            *(v855 + 6), v871, v872, v873, v874, v875, v876, v877;
          }

          v878 = *(v855 + 9);
          if (v878 != 1)
          {
            v878, v856, v857, v858, v859, v860, v861, v862;
            *(v855 + 11), v879, v880, v881, v882, v883, v884, v885;
            *(v855 + 13), v886, v887, v888, v889, v890, v891, v892;
          }

          v893 = *(v1049 + 28);
          v894 = sub_1BE04AF64();
          v895 = *(v894 - 8);
          v896 = *(v895 + 48);
          if (!v896(&v855[v893], 1, v894))
          {
            (*(v895 + 8))(&v855[v893], v894);
          }

          v897 = *(v1049 + 32);
          v1 = v1046;
          v23 = v1051;
          if (!v896(&v855[v897], 1, v894))
          {
            (*(v895 + 8))(&v855[v897], v894);
          }
        }

        v898 = (v799 + v23[12]);
        if (*v898)
        {

          v898[4], v899, v900, v901, v902, v903, v904, v905;
        }

        v906 = (v799 + v23[13]);
        if (*v906)
        {

          v906[2], v907, v908, v909, v910, v911, v912, v913;
        }

        *(v799 + v23[14]), v856, v857, v858, v859, v860, v861, v862;
        *(v799 + v23[15]), v914, v915, v916, v917, v918, v919, v920;
      }

      v921 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

      v922 = (v799 + *(v921 + 64));
      v922[1], v923, v924, v925, v926, v927, v928, v929;
      v922[3], v930, v931, v932, v933, v934, v935, v936;
      v801 = v922 + 4;
    }
  }

  v937 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD392D0, &qword_1BE0B8538);
  *(v799 + *(v937 + 28)), v938, v939, v940, v941, v942, v943, v944;
  v945 = (v4 + v2[25]);
  v946 = type metadata accessor for MultiHyperLinkDetailSheet(0);
  if (!(*(*(v946 - 8) + 48))(v945, 1, v946))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v947 = sub_1BE04AA64();
      (*(*(v947 - 8) + 8))(v945, v947);
    }

    else
    {

      v945[2], v948, v949, v950, v951, v952, v953, v954;
    }
  }

  v955 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45120, &unk_1BE0B8540);
  *(v945 + *(v955 + 28)), v956, v957, v958, v959, v960, v961, v962;
  v963 = (v4 + v2[26]);

  v963[1], v964, v965, v966, v967, v968, v969, v970;
  v971 = (v4 + v2[27]);
  *v971, v972, v973, v974, v975, v976, v977, v978;
  v971[1], v979, v980, v981, v982, v983, v984, v985;
  *(v4 + v2[28] + 8), v986, v987, v988, v989, v990, v991, v992;
  *(v4 + v2[29] + 8), v993, v994, v995, v996, v997, v998, v999;
  v1000 = (v4 + v2[30]);

  v1000[1], v1001, v1002, v1003, v1004, v1005, v1006, v1007;
  *(v4 + v2[31] + 48), v1008, v1009, v1010, v1011, v1012, v1013, v1014;
  v1015 = (v4 + v2[32]);

  v1015[1], v1016, v1017, v1018, v1019, v1020, v1021, v1022;
  v1023 = v2[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1031 = sub_1BE04E354();
    (*(*(v1031 - 8) + 8))(v4 + v1023, v1031);
  }

  else
  {
    *(v4 + v1023), v1024, v1025, v1026, v1027, v1028, v1029, v1030;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD75F6F8(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD757F3C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1BD75F830(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PaymentPassHubView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t block_copy_helper_45_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

void sub_1BD75FA10(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__account;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD75FBB0();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &qword_1EBD3CCE0, 0x1E69B8330);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD75FB80(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD75FA10(v1);
}

unint64_t sub_1BD75FBB0()
{
  result = qword_1EBD522B8;
  if (!qword_1EBD522B8)
  {
    type metadata accessor for PassActionWidgetViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD522B8);
  }

  return result;
}

uint64_t type metadata accessor for PassActionWidgetViewModel(uint64_t a1)
{
  result = qword_1EBD52308;
  if (!qword_1EBD52308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1BD75FC78(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD75F92C(v4);
  return sub_1BD75FD80;
}

void sub_1BD75FEC8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD75FBB0();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD59D60, 0x1E6967D68);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1BD760038(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD75FEC8(v1);
}

uint64_t (*sub_1BD76008C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD75FDE4(v4);
  return sub_1BD760194;
}

void sub_1BD7601F8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void *sub_1BD7602C8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  v7 = a1;
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *a4;
  swift_beginAccess();
  v16 = *&v7[v15];
  v17 = v16;

  return v16;
}

void *sub_1BD760388(uint64_t a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v2 + v12);
  v14 = v13;
  return v13;
}

void sub_1BD760470(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD75FBB0();
    sub_1BE04B584();
    KeyPath, v11, v12, v13, v14, v15, v16, v17;

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1BD0E5E8C(0, &unk_1EBD40340, 0x1E69B8D08);
  v6 = v5;
  v7 = a1;
  v8 = sub_1BE053074();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

id sub_1BD7605E0@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = *a3;
  swift_beginAccess();
  v16 = *(v6 + v15);
  *a4 = v16;

  return v16;
}

void sub_1BD760688(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1BD760470(v1);
}

void sub_1BD7606B8(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = *(a1 + v5);
  *(a1 + v5) = a2;
  v7 = a2;
}

uint64_t (*sub_1BD760748(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD760254(v4);
  return sub_1BD760850;
}

uint64_t sub_1BD760A40()
{
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  swift_beginAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1BD760B94(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B584();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  return swift_unknownObjectRelease();
}

uint64_t sub_1BD760C34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  *a2 = *(v3 + v12);
  return swift_unknownObjectRetain();
}

void sub_1BD760CCC(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD760D68(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  *(a1 + v4) = a2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_1BD760DF4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  v4[5] = OBJC_IVAR___PKPassActionWidgetViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  *v4 = v1;
  v13 = swift_getKeyPath();
  sub_1BE04B5B4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  v4[7] = sub_1BD760920(v4);
  return sub_1BD760EFC;
}

id PassActionWidgetViewModel.__allocating_init(viewStyle:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__account] = 0;
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount] = 0;
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass] = 0;
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel__delegate] = 0;
  sub_1BE04B5C4();
  *&v3[OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id PassActionWidgetViewModel.init(viewStyle:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__account] = 0;
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount] = 0;
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass] = 0;
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel__delegate] = 0;
  sub_1BE04B5C4();
  *&v1[OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PassActionWidgetViewModel(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

BOOL sub_1BD76112C()
{
  v0 = sub_1BD76115C();
  v1 = *(v0 + 2);
  v0, v2, v3, v4, v5, v6, v7, v8;
  return v1 != 0;
}

char *sub_1BD76115C()
{
  KeyPath = swift_getKeyPath();
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = OBJC_IVAR___PKPassActionWidgetViewModel__delegate;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (!v10)
  {
    return MEMORY[0x1E69E7CC0];
  }

  swift_unknownObjectRetain();
  if ((sub_1BD76193C() & 1) != 0 || (sub_1BD761ABC()) && [objc_opt_self() deviceSupportsBusinessChat] && (objc_msgSend(v10, sel_respondsToSelector_, sel_openBusinessChat))
  {
    v11 = swift_allocObject();
    v11[2] = v10;
    swift_unknownObjectRetain();
    if (sub_1BD761ABC())
    {
      v12 = 5;
    }

    else
    {
      v12 = 4;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = sub_1BD762740;
    *(v13 + 24) = v11;
    sub_1BE048964();
    v25 = sub_1BD1D95CC(0, 1, 1, MEMORY[0x1E69E7CC0], v14, v15, v16, v17);
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1BD1D95CC((v26 > 1), v27 + 1, 1, v25, v21, v22, v23, v24);
    }

    v11, v18, v19, v20, v21, v22, v23, v24;
    *(v25 + 2) = v27 + 1;
    v28 = &v25[24 * v27];
    v28[32] = v12;
    v28[33] = 0;
    *(v28 + 5) = sub_1BD267328;
    *(v28 + 6) = v13;
  }

  else
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1BD7617D4();
  if (v30)
  {
    v37 = v29;
    v38 = v30;
    v30, v30, v31, v32, v33, v34, v35, v36;
    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v37 & 0xFFFFFFFFFFFFLL;
    }

    if (v39 && ([v10 respondsToSelector_] & 1) != 0)
    {
      v40 = swift_allocObject();
      *(v40 + 16) = v10;
      v41 = swift_allocObject();
      v41[2] = sub_1BD76272C;
      v41[3] = v40;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_1BD1B6CB0;
      *(v42 + 24) = v41;
      swift_unknownObjectRetain();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1BD1D95CC(0, *(v25 + 2) + 1, 1, v25, v46, v47, v48, v49);
      }

      v51 = *(v25 + 2);
      v50 = *(v25 + 3);
      if (v51 >= v50 >> 1)
      {
        v25 = sub_1BD1D95CC((v50 > 1), v51 + 1, 1, v25, v46, v47, v48, v49);
      }

      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v25 + 2) = v51 + 1;
      v52 = &v25[24 * v51];
      *(v52 + 16) = 0;
      *(v52 + 5) = sub_1BD1B6CB0;
      *(v52 + 6) = v42;
    }
  }

  v53 = sub_1BD761930();
  if (v54)
  {
    v61 = v53;
    v62 = v54;
    v54, v54, v55, v56, v57, v58, v59, v60;
    v63 = HIBYTE(v62) & 0xF;
    if ((v62 & 0x2000000000000000) == 0)
    {
      v63 = v61 & 0xFFFFFFFFFFFFLL;
    }

    if (v63 && ([v10 respondsToSelector_] & 1) != 0)
    {
      v64 = swift_allocObject();
      v64[2] = v10;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_1BD76271C;
      *(v65 + 24) = v64;
      swift_unknownObjectRetain();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1BD1D95CC(0, *(v25 + 2) + 1, 1, v25, v69, v70, v71, v72);
      }

      v74 = *(v25 + 2);
      v73 = *(v25 + 3);
      if (v74 >= v73 >> 1)
      {
        v25 = sub_1BD1D95CC((v73 > 1), v74 + 1, 1, v25, v69, v70, v71, v72);
      }

      v64, v66, v67, v68, v69, v70, v71, v72;
      *(v25 + 2) = v74 + 1;
      v75 = &v25[24 * v74];
      *(v75 + 16) = 1;
      *(v75 + 5) = sub_1BD214190;
      *(v75 + 6) = v65;
    }
  }

  v76 = sub_1BD7617E0();
  if (v77)
  {
    v84 = v76;
    v85 = v77;
    v77, v77, v78, v79, v80, v81, v82, v83;
    v86 = HIBYTE(v85) & 0xF;
    if ((v85 & 0x2000000000000000) == 0)
    {
      v86 = v84 & 0xFFFFFFFFFFFFLL;
    }

    if (v86 && ([v10 respondsToSelector_] & 1) != 0)
    {
      v87 = swift_allocObject();
      v87[2] = v10;
      v88 = swift_allocObject();
      *(v88 + 16) = sub_1BD76270C;
      *(v88 + 24) = v87;
      swift_unknownObjectRetain();
      sub_1BE048964();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1BD1D95CC(0, *(v25 + 2) + 1, 1, v25, v92, v93, v94, v95);
      }

      v97 = *(v25 + 2);
      v96 = *(v25 + 3);
      if (v97 >= v96 >> 1)
      {
        v25 = sub_1BD1D95CC((v96 > 1), v97 + 1, 1, v25, v92, v93, v94, v95);
      }

      v87, v89, v90, v91, v92, v93, v94, v95;
      *(v25 + 2) = v97 + 1;
      v98 = &v25[24 * v97];
      *(v98 + 16) = 2;
      *(v98 + 5) = sub_1BD267328;
      *(v98 + 6) = v88;
    }
  }

  if (*(v25 + 2) == 1)
  {
    v99 = *(v25 + 6);
    v100 = v25[32] == 0;
    sub_1BE048964();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1BD1D95CC(0, 2, 1, v25, v101, v102, v103, v104);
    }

    v106 = *(v25 + 2);
    v105 = *(v25 + 3);
    if (v106 >= v105 >> 1)
    {
      v25 = sub_1BD1D95CC((v105 > 1), v106 + 1, 1, v25, v101, v102, v103, v104);
    }

    swift_unknownObjectRelease();
    v99, v107, v108, v109, v110, v111, v112, v113;
    *(v25 + 2) = v106 + 1;
    v114 = &v25[24 * v106];
    v114[32] = v100;
    v114[33] = 1;
    *(v114 + 5) = PKEdgeInsetsMake;
    *(v114 + 6) = 0;
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return v25;
}

uint64_t sub_1BD7617EC(void *a1)
{
  KeyPath = swift_getKeyPath();
  *&v16 = v1;
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass;
  swift_beginAccess();
  v12 = *(v16 + v11);
  if (!v12)
  {
    v16 = 0u;
    v17 = 0u;
LABEL_11:
    sub_1BD0DE53C(&v16, &qword_1EBD3EC90, &unk_1BE0BC6B0);
    return 0;
  }

  if ([v12 localizedValueForFieldKey_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16 = v14;
  v17 = v15;
  if (!*(&v15 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

id sub_1BD76193C()
{
  v1 = v0;
  KeyPath = swift_getKeyPath();
  v52 = v0;
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR___PKPassActionWidgetViewModel__paymentPass;
  swift_beginAccess();
  result = *(v0 + v10);
  if (!result)
  {
    return result;
  }

  result = [result associatedAccountServiceAccountIdentifier];
  if (!result)
  {
    return result;
  }

  v12 = result;
  v13 = sub_1BE052434();
  v15 = v14;

  v16 = swift_getKeyPath();
  sub_1BE04B594();
  v16, v17, v18, v19, v20, v21, v22, v23;
  v31 = *(v1 + v10);
  if (!v31 || (v32 = [v31 businessChatIdentifier]) == 0)
  {
    v15, v24, v25, v26, v27, v28, v29, v30;
    return 0;
  }

  v33 = v32;
  v34 = sub_1BE052434();
  v36 = v35;
  v15, v35, v37, v38, v39, v40, v41, v42;

  if ((v15 & 0x2000000000000000) != 0)
  {
    v50 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v50 = v13 & 0xFFFFFFFFFFFFLL;
  }

  v36, v43, v44, v45, v46, v47, v48, v49;
  if (!v50)
  {
    return 0;
  }

  v51 = (v36 >> 56) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v51 = v34 & 0xFFFFFFFFFFFFLL;
  }

  return (v51 != 0);
}

id sub_1BD761ABC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1BE04AA64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v31 = v0;
  sub_1BD75FBB0();
  sub_1BE04B594();
  KeyPath, v13, v14, v15, v16, v17, v18, v19;
  v20 = OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount;
  swift_beginAccess();
  v21 = *(v1 + v20);
  if (!v21 || (v22 = [v21 actions]) == 0)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_8:
    sub_1BD0DE53C(v7, &unk_1EBD3CF70, &qword_1BE0BA000);
    return 0;
  }

  v23 = v22;
  v24 = [v22 digitalServicingURL];

  if (v24)
  {
    sub_1BE04A9F4();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v9 + 56))(v4, v25, 1, v8);
  sub_1BD226B4C(v4, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_8;
  }

  (*(v9 + 32))(v11, v7, v8);
  v27 = [objc_opt_self() sharedApplication];
  v28 = sub_1BE04A9C4();
  v29 = [v27 canOpenURL_];

  (*(v9 + 8))(v11, v8);
  return v29;
}

uint64_t sub_1BD761E30()
{
  if (*(v0 + OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle) >= 3uLL)
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

void sub_1BD761FD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BD76115C();
  v5 = sub_1BE0501E4();
  if (*(a1 + OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle) >= 3uLL)
  {
    sub_1BE053994();
    __break(1u);
  }

  else
  {
    v6 = v5;
    sub_1BE04E1F4();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_1BE0501F4();
    sub_1BE04E1F4();
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
    *(a2 + 48) = 0;
    *(a2 + 56) = v15;
    *(a2 + 64) = v16;
    *(a2 + 72) = v17;
    *(a2 + 80) = v18;
    *(a2 + 88) = v19;
    *(a2 + 96) = 0;
  }
}

id PaymentPassActionWidgetViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentPassActionWidgetViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentPassActionWidgetViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BD7621F0(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s9PassKitUI07PaymentA24ActionWidgetViewProviderC04passefG10Controller9viewModelSo06UIViewJ0CAA0aefgL0C_tFZ_0(void *a1)
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52320, &unk_1BE0F5348));
  v3 = a1;
  v4 = sub_1BE04F894();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}