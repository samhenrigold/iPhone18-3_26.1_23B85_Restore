uint64_t sub_226F26964@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = a2[32];
  v9 = a2[33];
  __swift_project_boxed_opaque_existential_0(a2 + 29, v8);
  (*(v6 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v10 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  (*(v6 + 32))(v11 + v10, &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_226ECF5D8(sub_226F329C4, v11, v8, v5, v9, v14);
}

uint64_t sub_226F26AE4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - v12;
  v13 = *(a2 + 32);
  v30 = *(a2 + 33);
  v28 = __swift_project_boxed_opaque_existential_0(a2 + 29, v13);
  v14 = a1;
  v15 = v5;
  (*(v6 + 16))(v8, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v18 + v16;
  v20 = v15;
  (*(v6 + 32))(v19, v8, v15);
  *(v18 + v17) = a2;

  v21 = v29;
  sub_226ECF5D8(sub_226F32FF0, v18, v13, v20, v30, v29);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_226F33054;
  v26[1] = a2;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_226F26DFC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v43 = v8;
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v14);
  v46 = &v42 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v47 = &v42 - v18;
  v19 = a1;
  v20 = v5;
  (*(v6 + 16))(&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v5, v17);
  v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  v23 = *(v6 + 32);
  v52 = v20;
  v23(v22 + v21, &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20);

  sub_227669280();
  v24 = v53;
  v45 = *(v53 + 16);
  v45(v10, v13, v8);
  v25 = *(v24 + 80);
  v50 = (v25 + 16) & ~v25;
  v26 = (v9 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v49 = *(v24 + 32);
  v28 = v10;
  v29 = v43;
  v49(v27 + ((v25 + 16) & ~v25), v28, v43);
  v30 = (v27 + v26);
  *v30 = sub_226F32678;
  v30[1] = a2;
  v44 = a2;

  v31 = v46;
  sub_227669270();
  v32 = *(v24 + 8);
  v53 = v24 + 8;
  v51 = v32;
  v32(v13, v29);
  v33 = v29;
  v34 = v45;
  v45(v13, v31, v29);
  v35 = swift_allocObject();
  v49(v35 + v50, v13, v29);
  v36 = (v35 + v26);
  v37 = v44;
  *v36 = sub_226F32680;
  v36[1] = v37;

  v38 = v47;
  sub_227669270();
  v51(v31, v33);
  v34(v31, v38, v33);
  v39 = swift_allocObject();
  v49(v39 + v50, v31, v33);
  v40 = (v39 + v26);
  *v40 = sub_226F32688;
  v40[1] = v37;

  sub_227669270();
  return (v51)(v38, v33);
}

uint64_t sub_226F272B4(uint64_t a1)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  return sub_227669280();
}

uint64_t sub_226F273F0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - v12;
  v13 = *(a2 + 32);
  v30 = *(a2 + 33);
  v28 = __swift_project_boxed_opaque_existential_0(a2 + 29, v13);
  v14 = a1;
  v15 = v5;
  (*(v6 + 16))(v8, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v18 + v16;
  v20 = v15;
  (*(v6 + 32))(v19, v8, v15);
  *(v18 + v17) = a2;

  v21 = v29;
  sub_226ECF5D8(sub_226F327AC, v18, v13, v20, v30, v29);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_226F327C4;
  v26[1] = a2;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_226F27708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v92 = a1;
  v101 = a2;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v7;
  v93 = v7;
  v9 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v102 = *(v104 - 8);
  v96 = v102[8];
  MEMORY[0x28223BE20](v104);
  v95 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v94 = &v84 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v108 = *(v99 - 8);
  v97 = v108[8];
  MEMORY[0x28223BE20](v99);
  v103 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v98 = &v84 - v15;
  MEMORY[0x28223BE20](v16);
  v105 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v107 = &v84 - v19;
  MEMORY[0x28223BE20](v20);
  v106 = &v84 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = &v84 - v23;
  v24 = sub_22766B390();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v25 + 8))(v27, v24);
  v28 = v3;
  v29 = v3[32];
  v84 = v3[33];
  __swift_project_boxed_opaque_existential_0(v3 + 29, v29);
  v30 = *(v6 + 16);
  v90 = v6 + 16;
  v91 = v30;
  v86 = v9;
  v87 = v5;
  v30(v9, a1, v5);
  v31 = *(v6 + 80);
  v32 = (v31 + 16) & ~v31;
  v33 = swift_allocObject();
  v34 = *(v6 + 32);
  v88 = v6 + 32;
  v89 = v34;
  v34(v33 + v32, v9, v5);
  *(v33 + ((v8 + v32 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  v36 = v94;
  sub_226ECF5D8(sub_226F3268C, v33, v29, v35, v84, v94);

  v37 = swift_allocObject();
  *(v37 + 16) = sub_226F326A4;
  *(v37 + 24) = v3;
  v38 = v102;
  v39 = v95;
  v40 = v36;
  v41 = v104;
  (v102[2])(v95, v36, v104);
  v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v43 = (v96 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  (v38[4])(v44 + v42, v39, v41);
  v45 = (v44 + v43);
  *v45 = sub_226F326A8;
  v45[1] = v37;

  sub_227669270();
  (v38[1])(v40, v41);
  v46 = v28[32];
  v47 = v28[33];
  v85 = v28;
  __swift_project_boxed_opaque_existential_0(v28 + 29, v46);
  v48 = v86;
  v49 = v87;
  v91(v86, v92, v87);
  v50 = swift_allocObject();
  *(v50 + 16) = v28;
  v89(v50 + ((v31 + 24) & ~v31), v48, v49);

  v51 = v105;
  sub_226ECF5D8(sub_226F326FC, v50, v46, MEMORY[0x277D84F78] + 8, v47, v105);

  v52 = v108;
  v53 = v108[2];
  v102 = v108 + 2;
  v55 = v98;
  v54 = v99;
  v53(v98, v51, v99);
  v96 = v53;
  v56 = v52;
  v57 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v58 = v97 + v57;
  v94 = *(v52 + 80);
  v59 = swift_allocObject();
  v60 = v56[4];
  v104 = v57;
  v60(v59 + v57, v55, v54);
  v97 = v56 + 4;
  v95 = v60;
  v61 = v103;
  v62 = v54;
  v53(v103, v107, v54);
  v63 = (v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  v60(v64 + v57, v61, v62);
  v65 = (v64 + v63);
  v66 = v63;
  *v65 = sub_226F33040;
  v65[1] = v59;
  sub_227669270();
  v67 = v108[1];
  ++v108;
  v103 = v67;
  (v67)(v105, v62);
  v68 = v107;
  v69 = v62;
  (v67)(v107, v62);
  v70 = *__swift_project_boxed_opaque_existential_0(v85 + 34, v85[37]);
  v110[3] = type metadata accessor for SyncCoordinator(0);
  v110[4] = &off_283AA3680;
  v110[0] = v70;
  sub_226E91B50(v110, v109);
  v71 = swift_allocObject();
  sub_226E92AB8(v109, v71 + 16);

  __swift_destroy_boxed_opaque_existential_0(v110);
  v72 = swift_allocObject();
  *(v72 + 16) = sub_226F33020;
  *(v72 + 24) = v71;
  v73 = swift_allocObject();
  *(v73 + 16) = sub_226F33078;
  *(v73 + 24) = v72;
  v74 = v106;
  v75 = v96;
  v96(v68, v106, v62);
  v76 = swift_allocObject();
  v77 = v62;
  v78 = v95;
  (v95)(v76 + v104, v68, v77);
  v79 = (v76 + v66);
  *v79 = sub_226F32FEC;
  v79[1] = v73;
  v80 = v100;
  sub_227669270();
  (v103)(v74, v69);
  v75(v74, v80, v69);
  v81 = swift_allocObject();
  (v78)(v81 + v104, v74, v69);
  v82 = (v81 + v66);
  *v82 = sub_226F2A2B8;
  v82[1] = 0;
  sub_227669270();
  return (v103)(v80, v69);
}

uint64_t sub_226F281BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2276633F0();
  if ((v5 & 1) == 0 || v4 != 8)
  {
    return sub_227663470();
  }

  v6 = sub_227663480();
  return (*(*(v6 - 8) + 16))(a2, a1, v6);
}

uint64_t sub_226F28288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227663480();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2276633F0();
  if ((v13 & 1) != 0 && v12 == 7)
  {
    return (*(v5 + 16))(a2, a1, v4);
  }

  sub_22766A6C0();
  (*(v5 + 16))(v7, a1, v4);
  v15 = sub_22766B380();
  v16 = sub_22766C890();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v17 = 141558274;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    sub_226F32B0C(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
    v26 = v16;
    v18 = sub_22766D140();
    v27 = v8;
    v20 = v19;
    (*(v5 + 8))(v7, v4);
    v21 = sub_226E97AE8(v18, v20, &v29);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v15, v26, "Cancel - bundle load status can't be cancelled %{mask.hash}s", v17, 0x16u);
    v22 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AA9A450](v22, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    (*(v9 + 8))(v11, v27);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }

  v23 = sub_227663190();
  sub_226F32B0C(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  swift_allocError();
  (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D4FD20], v23);
  return swift_willThrow();
}

uint64_t sub_226F28654@<X0>(void (***a1)(char *, uint64_t, uint64_t)@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a4;
  v7 = sub_227663480();
  v85 = *(v7 - 8);
  v86 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B390();
  v82 = *(v9 - 8);
  v83 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v76 - v13;
  __swift_project_boxed_opaque_existential_0((a2 + 16), *(a2 + 40));
  v15 = sub_2276633E0();
  v16 = v90;
  sub_2270765A0(v15, v17, a1, v14);
  if (v16)
  {
  }

  v79 = a2;
  v80 = a1;
  v90 = a3;
  v78 = v11;

  v19 = v85;
  v20 = v86;
  if ((*(v85 + 48))(v14, 1, v86) != 1)
  {
    v42 = v84;
LABEL_7:
    sub_226E97D1C(v14, &unk_27D7BD3F0, &unk_2276823F0);
    return (*(v19 + 16))(v42, v90, v20);
  }

  v77 = v14;
  v21 = __swift_project_boxed_opaque_existential_0(v80, v80[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v26 = swift_allocObject();
  v27 = v22;
  v28 = v23;

  sub_22766A070();
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  swift_getKeyPath();
  v29 = sub_2276633E0();
  v31 = v30;
  v87[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v87[0] = v29;
  v87[1] = v31;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v32 = sub_22766C820();
  sub_226E93170(v87, v88, &unk_27D7BC990, &qword_227670A30);
  v33 = v89;
  if (v89)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v88, v89);
    v76[1] = v76;
    v35 = v32;
    v36 = v26;
    v37 = *(v33 - 8);
    v38 = MEMORY[0x28223BE20](v34);
    v40 = v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40, v38);
    v41 = sub_22766D170();
    (*(v37 + 8))(v40, v33);
    v26 = v36;
    v32 = v35;
    __swift_destroy_boxed_opaque_existential_0(v88);
  }

  else
  {
    v41 = 0;
  }

  v43 = v79;
  v44 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v45 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v87, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v46 = v45;
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v79 = *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v47(v87, 0);
  swift_endAccess();

  __swift_project_boxed_opaque_existential_0((v43 + 16), *(v43 + 40));
  v50 = sub_2272322B8(100);
  v51 = sub_22707488C(v50, v80);

  v52 = *(v51 + 16);
  if (v52)
  {
    v53 = sub_2274CD768(*(v51 + 16), 0);
    v54 = *(sub_2276639B0() - 8);
    sub_2274CDD80(v87, &v53[(*(v54 + 80) + 32) & ~*(v54 + 80)], v52, v51);
    v56 = v55;
    sub_226EBB21C(v87[0]);
    v20 = v86;
    if (v56 == v52)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  v53 = MEMORY[0x277D84F90];
  v20 = v86;
LABEL_15:
  v42 = v84;
  v57 = *(v53 + 2);

  if (v57)
  {
    swift_setDeallocating();

    v58 = qword_2813B2078;
    v59 = sub_22766A100();
    (*(*(v59 - 8) + 8))(v26 + v58, v59);
    swift_deallocClassInstance();
    v14 = v77;
    v19 = v85;
    goto LABEL_7;
  }

  v60 = v78;
  sub_22766A6C0();
  v61 = v85;
  v62 = v81;
  (*(v85 + 16))(v81, v90, v20);
  v63 = sub_22766B380();
  v64 = sub_22766C890();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = v20;
    v66 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v87[0] = v90;
    *v66 = 141558274;
    *(v66 + 4) = 1752392040;
    *(v66 + 12) = 2080;
    sub_226F32B0C(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
    v67 = sub_22766D140();
    v69 = v68;
    (*(v61 + 8))(v62, v65);
    v70 = sub_226E97AE8(v67, v69, v87);

    *(v66 + 14) = v70;
    _os_log_impl(&dword_226E8E000, v63, v64, "Cancel - no metadata found for cancelled bundle %{mask.hash}s", v66, 0x16u);
    v71 = v90;
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x22AA9A450](v71, -1, -1);
    MEMORY[0x22AA9A450](v66, -1, -1);

    (*(v82 + 8))(v78, v83);
  }

  else
  {

    (*(v61 + 8))(v62, v20);
    (*(v82 + 8))(v60, v83);
  }

  v72 = sub_227663190();
  sub_226F32B0C(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  swift_allocError();
  (*(*(v72 - 8) + 104))(v73, *MEMORY[0x277D4FCE0], v72);
  swift_willThrow();
  swift_setDeallocating();

  v74 = qword_2813B2078;
  v75 = sub_22766A100();
  (*(*(v75 - 8) + 8))(v26 + v74, v75);
  swift_deallocClassInstance();
  return sub_226E97D1C(v77, &unk_27D7BD3F0, &unk_2276823F0);
}

uint64_t sub_226F290BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = sub_227663480();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0((a1 + 176), *(a1 + 200));
  sub_2276696A0();
  if (v3)
  {

    sub_227663430();
  }

  else
  {
    v36 = a3;
    v37 = v11;
    v29 = v38[0];
    v30 = v38[1];
    v31 = sub_227663430();
    if (v30)
    {
      if (v29 == v31 && v30 == v32)
      {
      }

      else
      {
        v33 = sub_22766D190();

        v11 = v37;
        if ((v33 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      return (*(v7 + 16))(v36, a2, v39);
    }

    v11 = v37;
  }

LABEL_4:
  sub_22766A6C0();
  v14 = v39;
  (*(v7 + 16))(v9, a2, v39);
  v15 = sub_22766B380();
  v16 = sub_22766C8B0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v13;
    v18 = v14;
    v19 = v17;
    v20 = swift_slowAlloc();
    v37 = v11;
    v38[0] = v20;
    v21 = v20;
    *v19 = 141558274;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2080;
    sub_226F32B0C(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
    v22 = sub_22766D140();
    v35 = v10;
    v24 = v23;
    (*(v7 + 8))(v9, v18);
    v25 = sub_226E97AE8(v22, v24, v38);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_226E8E000, v15, v16, "Cancel - Bundle downloading device is not the current platform. Skipping cancellation of bundle: %{mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AA9A450](v21, -1, -1);
    MEMORY[0x22AA9A450](v19, -1, -1);

    (*(v37 + 8))(v36, v35);
  }

  else
  {

    (*(v7 + 8))(v9, v14);
    (*(v11 + 8))(v13, v10);
  }

  v26 = sub_227663190();
  sub_226F32B0C(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D4FD78], v26);
  return swift_willThrow();
}

uint64_t sub_226F2955C@<X0>(void (***a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v39 = a3;
  v40 = a2;
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = *v4;
  v6 = v4[1];
  v7 = *(v4 + 16);
  v8 = v4[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v9 = swift_allocObject();
  v10 = v5;
  v11 = v6;

  sub_22766A070();
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  swift_getKeyPath();
  v12 = sub_2276633E0();
  v14 = v13;
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v41[0] = v12;
  v41[1] = v14;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v15 = sub_22766C820();
  sub_226E93170(v41, v42, &unk_27D7BC990, &qword_227670A30);
  v16 = v43;
  if (v43)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v42, v43);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v42);
  }

  else
  {
    v22 = 0;
  }

  v23 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v24 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v41, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v25 = v24;
  v26 = sub_22766A080();
  v28 = v27;
  MEMORY[0x22AA985C0]();
  if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v26(v41, 0);
  swift_endAccess();

  __swift_project_boxed_opaque_existential_0((v40 + 16), *(v40 + 40));
  v29 = v44;
  v30 = sub_2272322B8(100);
  if (v29)
  {
  }

  v32 = sub_22707488C(v30, a1);

  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = sub_2274CD768(*(v32 + 16), 0);
    v35 = *(sub_2276639B0() - 8);
    sub_2274CDD80(v41, &v34[(*(v35 + 80) + 32) & ~*(v35 + 80)], v33, v32);
    v37 = v36;
    result = sub_226EBB21C(v41[0]);
    if (v37 == v33)
    {

      *v39 = v34;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    *v39 = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_226F29A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v99 = *(v86 - 8);
  v3 = v99[8];
  MEMORY[0x28223BE20](v86);
  v93 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v80 - v5;
  MEMORY[0x28223BE20](v7);
  v95 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v98 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v97 = &v80 - v12;
  MEMORY[0x28223BE20](v13);
  v96 = &v80 - v14;
  v15 = sub_22766B390();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v19 = sub_22766B380();
  v20 = sub_22766C8B0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v91 = v16;
    v23 = v22;
    v100 = v22;
    *v21 = 141558274;
    *(v21 + 4) = 1752392040;
    *(v21 + 12) = 2080;
    v24 = sub_2276639B0();
    v25 = MEMORY[0x22AA98660](a1, v24);
    v90 = v15;
    v27 = v6;
    v28 = sub_226E97AE8(v25, v26, &v100);

    *(v21 + 14) = v28;
    v6 = v27;
    _os_log_impl(&dword_226E8E000, v19, v20, "Request to cancel %{mask.hash}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AA9A450](v23, -1, -1);
    MEMORY[0x22AA9A450](v21, -1, -1);

    (*(v91 + 8))(v18, v90);
  }

  else
  {

    (*(v16 + 8))(v18, v15);
  }

  v92 = a1;
  v29 = v94;
  v30 = v94[32];
  v31 = v94[33];
  __swift_project_boxed_opaque_existential_0(v94 + 29, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = a1;

  v33 = MEMORY[0x277D84F78];
  sub_226ECF5D8(sub_226F322A8, v32, v30, MEMORY[0x277D84F78] + 8, v31, v98);

  v34 = v29[32];
  v35 = v29[33];
  __swift_project_boxed_opaque_existential_0(v29 + 29, v34);
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = v29;

  v37 = v95;
  sub_226ECF5D8(sub_226F322C4, v36, v34, v33 + 8, v35, v95);

  v38 = v99;
  v40 = v99 + 2;
  v39 = v99[2];
  v41 = v6;
  v85 = v6;
  v42 = v86;
  v39(v6, v37, v86);
  v89 = v39;
  v90 = v40;
  v43 = *(v38 + 80);
  v44 = ((v43 + 16) & ~v43) + v3;
  v45 = (v43 + 16) & ~v43;
  v88 = v43;
  v81 = swift_allocObject();
  v46 = v38[4];
  v47 = v45;
  v84 = v45;
  v46(v81 + v45, v41, v42);
  v48 = v46;
  v49 = v93;
  v39(v93, v98, v42);
  v83 = v44;
  v91 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v48(v50 + v47, v49, v42);
  v51 = (v50 + ((v44 + 7) & 0xFFFFFFFFFFFFFFF8));
  v52 = v81;
  *v51 = sub_226EC14BC;
  v51[1] = v52;
  sub_227669270();
  v53 = v99[1];
  v93 = v53;
  ++v99;
  v54 = v95;
  (v53)(v95, v42);
  v55 = v98;
  (v53)(v98, v42);
  v56 = swift_allocObject();
  v57 = v94;
  *(v56 + 16) = v92;
  *(v56 + 24) = v57;

  sub_227669280();
  v58 = v55;
  v59 = v89;
  v89(v54, v58, v42);
  v60 = swift_allocObject();
  v61 = v84;
  v82 = v48;
  v48(v60 + v84, v54, v42);
  v62 = v85;
  v63 = v97;
  v59(v85, v97, v42);
  v64 = v91;
  v65 = swift_allocObject();
  v48(v65 + v61, v62, v42);
  v66 = (v65 + v64);
  *v66 = sub_226F33040;
  v66[1] = v60;
  sub_227669270();
  v67 = v98;
  v68 = v93;
  (v93)(v98, v42);
  v68(v63, v42);
  sub_226F2BA74(v92, v63);
  v69 = v89;
  v89(v67, v63, v42);
  v70 = swift_allocObject();
  v71 = v70 + v61;
  v72 = v61;
  v73 = v82;
  v82(v71, v67, v42);
  v74 = v95;
  v69(v95, v96, v42);
  v75 = v91;
  v76 = swift_allocObject();
  v73(v76 + v72, v74, v42);
  v77 = (v76 + v75);
  *v77 = sub_226F33040;
  v77[1] = v70;
  sub_227669270();
  v78 = v93;
  (v93)(v97, v42);
  return v78(v96, v42);
}

void sub_226F2A2B8(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8) == 1)
  {
    v6 = *a1;
    v7 = *a1;
    sub_22766A6C0();
    v8 = v6;
    v9 = sub_22766B380();
    v10 = sub_22766C890();
    sub_226EB4548(v6, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      swift_getErrorValue();
      v13 = MEMORY[0x22AA995D0](v16[2], v16[3]);
      v15 = sub_226E97AE8(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_226E8E000, v9, v10, "Delete - Failed to delete bundle data with error: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x22AA9A450](v12, -1, -1);
      MEMORY[0x22AA9A450](v11, -1, -1);

      sub_226EB4548(v6, 1);
    }

    else
    {
      sub_226EB4548(v6, 1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_226F2A4C0(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  __swift_project_boxed_opaque_existential_0(a2 + 2, a2[5]);
  v8 = sub_2276633E0();
  sub_2270765A0(v8, v9, a1, v7);
  if (v2)
  {
    goto LABEL_2;
  }

  v10 = sub_227663480();
  v11 = (*(*(v10 - 8) + 48))(v7, 1, v10);
  sub_226E97D1C(v7, &unk_27D7BD3F0, &unk_2276823F0);
  if (v11 != 1)
  {
    v12 = sub_2276633E0();
    sub_2270781A4(v12, v13, a1);

    __swift_project_boxed_opaque_existential_0(a2 + 34, a2[37]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_227670CD0;
    *(v14 + 32) = sub_2276633E0();
    *(v14 + 40) = v15;
    sub_2272D752C(1, v14, a1);

    v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v16 + 16);
    v20 = v16[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D8, qword_227687220);
    v21 = swift_allocObject();
    v22 = v17;
    v23 = v18;

    sub_22766A070();
    v48 = v23;
    v49 = v22;
    *(v21 + 16) = v22;
    *(v21 + 24) = v23;
    *(v21 + 32) = v19;
    v54 = v20;
    *(v21 + 40) = v20;
    swift_getKeyPath();
    v24 = sub_2276633E0();
    v26 = v25;
    v53[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v53[0] = v24;
    v53[1] = v26;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v27 = sub_22766C820();
    sub_226E93170(v53, v51, &unk_27D7BC990, &qword_227670A30);
    v28 = v52;
    if (v52)
    {
      v29 = __swift_project_boxed_opaque_existential_0(v51, v52);
      v50 = &v47;
      v30 = v19;
      v31 = *(v28 - 8);
      v32 = MEMORY[0x28223BE20](v29);
      v34 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v34, v32);
      v35 = sub_22766D170();
      (*(v31 + 8))(v34, v28);
      v19 = v30;
      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    else
    {
      v35 = 0;
    }

    v36 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    v37 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E0 qword_227677890))];

    sub_226E97D1C(v53, &unk_27D7BC990, &qword_227670A30);
    v38 = qword_2813B2078;
    swift_beginAccess();
    v39 = v37;
    v40 = sub_22766A080();
    v42 = v41;
    MEMORY[0x22AA985C0]();
    if (*((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v50 = *((*v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22766C360();
    }

    sub_22766C3A0();
    v40(v53, 0);
    swift_endAccess();

    v43 = sub_227542420(v21 + v38, v19, v54);
    if (!v43)
    {
      v44 = sub_227284A84(0);
      [v44 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v45 = sub_22766C9E0();
      v46 = sub_226EDAB24(v45);

      sub_226EDAB78(v46, v48);

LABEL_2:

      return;
    }

    if (v43 != 1)
    {
      swift_willThrow();
    }
  }
}

void sub_226F2AAC4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a3;
  v101 = a4;
  v100 = sub_22766B390();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3F0, &unk_2276823F0);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v97 - v8;
  v9 = a1[3];
  v102 = a1;
  v10 = __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v10 + 16);
  v14 = v10[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v15 = swift_allocObject();
  v16 = v11;
  v17 = v12;

  v18 = a2;
  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v13;
  v110 = v15;
  *(v15 + 40) = v14;
  swift_getKeyPath();
  v19 = sub_227663410();
  v21 = v20;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v118 = v103;
  v116 = v19;
  v117 = v21;
  v22 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v108 = v22;
  v23 = sub_22766C820();
  sub_226E93170(&v116, &v113, &unk_27D7BC990, &qword_227670A30);
  v24 = v115;
  if (v115)
  {
    v25 = __swift_project_boxed_opaque_existential_0(&v113, v115);
    v26 = *(v24 - 8);
    v27 = MEMORY[0x28223BE20](v25);
    v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = sub_22766D170();
    (*(v26 + 8))(v29, v24);
    __swift_destroy_boxed_opaque_existential_0(&v113);
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_opt_self();
  v32 = &off_2785D6000;
  v33 = [v31 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v34 = [objc_allocWithZone(v107) initWithLeftExpression:v23 rightExpression:v33 modifier:0 type:4 options:0];

  sub_226E97D1C(&v116, &unk_27D7BC990, &qword_227670A30);
  v35 = qword_2813B2078;
  swift_beginAccess();
  v36 = v34;
  *&v109 = v35;
  v37 = sub_22766A080();
  v39 = v38;
  MEMORY[0x22AA985C0]();
  if (*((*v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v37(&v116, 0);
  swift_endAccess();

  swift_getKeyPath();
  v111 = sub_227663460();
  v112 = v40 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F0, qword_227671158);
  sub_227663AD0();
  v118 = MEMORY[0x277D83B88];
  v116 = v119;

  v41 = sub_22766C820();
  sub_226E93170(&v116, &v113, &unk_27D7BC990, &qword_227670A30);
  v42 = v115;
  if (v115)
  {
    v43 = __swift_project_boxed_opaque_existential_0(&v113, v115);
    v44 = v31;
    v45 = *(v42 - 8);
    v46 = MEMORY[0x28223BE20](v43);
    v48 = &v97 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v48, v46);
    v49 = sub_22766D170();
    (*(v45 + 8))(v48, v42);
    v31 = v44;
    v32 = &off_2785D6000;
    __swift_destroy_boxed_opaque_existential_0(&v113);
  }

  else
  {
    v49 = 0;
  }

  v50 = [v31 v32[297]];
  swift_unknownObjectRelease();
  v51 = [objc_allocWithZone(v107) initWithLeftExpression:v41 rightExpression:v50 modifier:0 type:4 options:0];

  sub_226E97D1C(&v116, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v52 = v51;
  v53 = sub_22766A080();
  v55 = v54;
  MEMORY[0x22AA985C0]();
  if (*((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v53(&v116, 0);
  swift_endAccess();

  swift_getKeyPath();
  v106 = v18;
  v56 = sub_227663430();
  v118 = v103;
  v116 = v56;
  v117 = v57;

  v58 = sub_22766C820();
  sub_226E93170(&v116, &v113, &unk_27D7BC990, &qword_227670A30);
  v59 = v115;
  if (v115)
  {
    v60 = __swift_project_boxed_opaque_existential_0(&v113, v115);
    v61 = *(v59 - 8);
    v62 = MEMORY[0x28223BE20](v60);
    v64 = &v97 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v61 + 16))(v64, v62);
    v65 = sub_22766D170();
    (*(v61 + 8))(v64, v59);
    __swift_destroy_boxed_opaque_existential_0(&v113);
  }

  else
  {
    v65 = 0;
  }

  v66 = [v31 v32[297]];
  swift_unknownObjectRelease();
  v67 = [objc_allocWithZone(v107) initWithLeftExpression:v58 rightExpression:v66 modifier:0 type:4 options:0];

  sub_226E97D1C(&v116, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v68 = v67;
  v69 = sub_22766A080();
  v71 = v70;
  MEMORY[0x22AA985C0]();
  if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v69(&v116, 0);
  swift_endAccess();

  v72 = MEMORY[0x22AA99A00]();
  v73 = v104;
  v74 = v105;
  sub_2275444CC(v105);
  v75 = v106;
  if (v73)
  {
    objc_autoreleasePoolPop(v72);
LABEL_18:

    return;
  }

  objc_autoreleasePoolPop(v72);
  v76 = sub_227663480();
  v77 = *(v76 - 8);
  if ((*(v77 + 48))(v74, 1, v76) == 1)
  {
    sub_226E97D1C(v74, &unk_27D7BD3F0, &unk_2276823F0);
    sub_2276633F0();
    v78 = v102;
  }

  else
  {
    v79 = sub_2276633F0();
    v81 = v80;
    (*(v77 + 8))(v74, v76);
    v82 = sub_2276633F0();
    v116 = v79;
    LOBYTE(v117) = v81 & 1;
    v113 = v82;
    v114 = v83 & 1;
    sub_226F32810();
    sub_226F32864();
    v84 = sub_227663B20();
    v78 = v102;
    if (v84)
    {

      v85 = *(v77 + 16);
      goto LABEL_23;
    }
  }

  v86 = sub_227542468(v110 + v109, *(v110 + 32), *(v110 + 40));
  if (v86)
  {
    if (v86 != 1)
    {
      swift_willThrow();
      goto LABEL_18;
    }
  }

  else
  {
    v91 = sub_227284664(0);
    [v91 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v92 = sub_22766C9E0();
    v95 = *(v110 + 24);
    v96 = sub_226EDAB24(v92);

    v78 = v102;
    sub_226EDAB78(v96, v95);

    v75 = v106;
  }

  v87 = v98;
  sub_22766A6C0();
  sub_22766B370();
  (*(v99 + 8))(v87, v100);
  v88 = __swift_project_boxed_opaque_existential_0(v78, v78[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85F8, &unk_227679DE0);
  v89 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v90 = swift_allocObject();
  v109 = xmmword_227670CD0;
  *(v90 + 16) = xmmword_227670CD0;
  v85 = *(v77 + 16);
  v85(v90 + v89, v75, v76);
  sub_227556A7C(v90, v88[1], *(v88 + 16), v88[3]);

  __swift_project_boxed_opaque_existential_0((v97 + 272), *(v97 + 296));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v93 = swift_allocObject();
  *(v93 + 16) = v109;
  *(v93 + 32) = sub_2276633E0();
  *(v93 + 40) = v94;
  sub_2272D752C(0, v93, v78);

LABEL_23:
  v85(v101, v106, v76);
}

uint64_t sub_226F2B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a1;
  v22 = a3;
  v4 = sub_227663480();
  v19 = *(v4 - 8);
  v5 = v19;
  v21 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227669B90();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(a2 + 224);
  v18[0] = swift_getObjectType();
  v12 = *(v5 + 16);
  v13 = v20;
  v12(v7, v20, v4);
  sub_227669B80();
  sub_2276699D0();
  (*(v9 + 8))(v11, v8);
  v12(v7, v13, v4);
  v14 = v19;
  v15 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v16 = swift_allocObject();
  (*(v14 + 32))(v16 + v15, v7, v4);
  return sub_227669280();
}

uint64_t sub_226F2BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v103 = sub_227664AE0();
  MEMORY[0x28223BE20](v103);
  v4 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = (&v82 - v6);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v96 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v87 = &v82 - v9;
  v82 = v10;
  MEMORY[0x28223BE20](v11);
  v95 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v89 = *(v13 - 8);
  v90 = v13;
  MEMORY[0x28223BE20](v13);
  v85 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v82 - v16;
  v84 = v17;
  MEMORY[0x28223BE20](v18);
  v88 = &v82 - v19;
  v20 = sub_2276639B0();
  MEMORY[0x28223BE20](v20);
  v105 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.n128_f64[0] = MEMORY[0x28223BE20](v22);
  v26 = &v82 - v25;
  v27 = *(a1 + 16);
  v86 = a1;
  if (v27)
  {
    v29 = *(v23 + 16);
    v28 = v23 + 16;
    v100 = v29;
    v98 = ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v30 = v98 + a1;
    v31 = *(v28 + 56);
    v97 = (v28 - 8);
    v104 = (v28 + 16);
    v32 = MEMORY[0x277D84F90];
    v99 = v4;
    v101 = v28;
    (v29)(v26, v98 + a1, v20, v24);
    while (1)
    {
      v34 = v102;
      sub_227663970();
      sub_226F322FC(v34, v4);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_226F32360(v4);
      }

      v35 = sub_227665FE0();
      v37 = v36;
      if (v35 == sub_227665FE0() && v37 == v38)
      {
      }

      else
      {
        v39 = sub_22766D190();

        if ((v39 & 1) == 0)
        {
          (*v97)(v26, v20);
          goto LABEL_4;
        }
      }

      v40 = *v104;
      (*v104)(v105, v26, v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v106 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_226F1F508(0, *(v32 + 16) + 1, 1);
        v32 = v106;
      }

      v43 = *(v32 + 16);
      v42 = *(v32 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_226F1F508((v42 > 1), v43 + 1, 1);
        v32 = v106;
      }

      *(v32 + 16) = v43 + 1;
      v40(v98 + v32 + v43 * v31, v105, v20);
      v4 = v99;
LABEL_4:
      v30 += v31;
      if (!--v27)
      {
        goto LABEL_18;
      }

      v100(v26, v30, v20, v33);
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_18:
  v44 = v94;
  __swift_project_boxed_opaque_existential_0(v94 + 12, v94[15]);
  v45 = v87;
  sub_227307E64(v32, v87);

  v46 = swift_allocObject();
  v46[2] = 0xD00000000000002ELL;
  v46[3] = 0x8000000227693CC0;
  v46[4] = 239;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_226F323BC;
  *(v47 + 24) = v46;
  v48 = v96;
  v49 = *(v96 + 16);
  v104 = (v96 + 16);
  v105 = v49;
  v50 = v83;
  v51 = v93;
  (v49)(v83, v45);
  v52 = *(v48 + 80);
  v103 = v52;
  v53 = (v52 + 16) & ~v52;
  v100 = v53;
  v54 = &v82[v53 + 7] & 0xFFFFFFFFFFFFFFF8;
  v97 = v54;
  v55 = swift_allocObject();
  v56 = *(v48 + 32);
  v99 = (v48 + 32);
  v102 = v56;
  v56((v55 + v53), v50, v51);
  v57 = (v55 + v54);
  *v57 = sub_226F323DC;
  v57[1] = v47;
  sub_227669270();
  v58 = *(v48 + 8);
  v96 = v48 + 8;
  v101 = v58;
  v59 = v45;
  v58(v45, v51);
  v60 = v44[32];
  v61 = v44[33];
  __swift_project_boxed_opaque_existential_0(v44 + 29, v60);
  v62 = swift_allocObject();
  *(v62 + 16) = v86;
  *(v62 + 24) = v44;

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6C0, qword_227670F00);
  v63 = v92;
  sub_226ECF5D8(sub_226F3240C, v62, v60, v86, v61, v92);

  v65 = v89;
  v64 = v90;
  v98 = *(v89 + 16);
  v66 = v85;
  v98(v85, v63, v90);
  v67 = *(v65 + 80);
  v82 = &v84[(v67 + 16) & ~v67];
  v83 = ((v67 + 16) & ~v67);
  v68 = swift_allocObject();
  v84 = *(v65 + 32);
  (v84)(v68 + ((v67 + 16) & ~v67), v66, v64);
  v69 = v59;
  v70 = v93;
  (v105)(v59, v95, v93);
  v71 = v97;
  v72 = swift_allocObject();
  v102(v100 + v72, v69, v70);
  v73 = &v71[v72];
  *v73 = sub_226F32428;
  v73[1] = v68;
  v74 = v88;
  sub_227669270();
  v75 = *(v65 + 8);
  v76 = v92;
  v75(v92, v64);
  v101(v95, v70);
  v98(v76, v74, v64);
  v77 = (v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  (v84)(&v83[v78], v76, v64);
  v79 = (v78 + v77);
  v80 = v94;
  *v79 = sub_226F324D0;
  v79[1] = v80;

  sub_227669270();
  return (v75)(v74, v64);
}

void sub_226F2C3F8(void *a1, uint64_t a2, uint64_t a3)
{
  v72 = sub_2276624A0();
  v6 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276639B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227078AE0(a3, a1);
  v78 = v3;
  if (v3)
  {
    return;
  }

  v13 = *(a3 + 16);
  if (!v13)
  {
    return;
  }

  v15 = *(v10 + 16);
  v14 = v10 + 16;
  v76 = v15;
  v16 = a3 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v68 = (v6 + 8);
  v75 = *(v14 + 56);
  v77 = (v14 - 8);
  v71 = v8;
  v70 = v9;
  v69 = v12;
  v67[0] = a1;
  v67[1] = v14;
  v15(v12, v16, v9);
  while (1)
  {
    v17 = sub_227663960();
    v92 = v18;
    if (v18)
    {
      break;
    }

LABEL_6:
    (*v77)(v12, v9);
    v16 += v75;
    if (!--v13)
    {
      return;
    }

    v76(v12, v16, v9);
  }

  v84 = v17;
  v79 = v16;
  v80 = v13;
  sub_2276639A0();
  v19 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = v19[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A8, &qword_227677A20);
  v24 = swift_allocObject();
  v25 = v20;
  v26 = v21;

  sub_22766A070();
  v74 = v25;
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  v73 = v26;
  v86 = v22;
  *(v24 + 32) = v22;
  v85 = v23;
  *(v24 + 40) = v23;
  swift_getKeyPath();
  v27 = sub_227662390();
  v29 = v28;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v91 = v83;
  v89 = v27;
  v90 = v29;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v30 = sub_22766C820();
  sub_226E93170(&v89, v87, &unk_27D7BC990, &qword_227670A30);
  v31 = v88;
  if (v88)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v87, v88);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x28223BE20](v32);
    v36 = v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v87);
  }

  else
  {
    v37 = 0;
  }

  v82 = objc_opt_self();
  v38 = [v82 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B0, qword_227671000);
  v39 = [objc_allocWithZone(v81) initWithLeftExpression:v30 rightExpression:v38 modifier:0 type:4 options:0];

  sub_226E97D1C(&v89, &unk_27D7BC990, &qword_227670A30);
  v40 = qword_2813B2078;
  swift_beginAccess();
  v41 = v39;
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(&v89, 0);
  swift_endAccess();

  swift_getKeyPath();
  v91 = v83;
  v89 = v84;
  v90 = v92;

  v45 = sub_22766C820();
  sub_226E93170(&v89, v87, &unk_27D7BC990, &qword_227670A30);
  v46 = v88;
  if (v88)
  {
    v47 = __swift_project_boxed_opaque_existential_0(v87, v88);
    v48 = *(v46 - 8);
    v49 = MEMORY[0x28223BE20](v47);
    v51 = v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v48 + 16))(v51, v49);
    v52 = sub_22766D170();
    (*(v48 + 8))(v51, v46);
    __swift_destroy_boxed_opaque_existential_0(v87);
  }

  else
  {
    v52 = 0;
  }

  v53 = [v82 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v54 = [objc_allocWithZone(v81) initWithLeftExpression:v45 rightExpression:v53 modifier:0 type:4 options:0];

  sub_226E97D1C(&v89, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v55 = v54;
  v56 = sub_22766A080();
  v58 = v57;
  MEMORY[0x22AA985C0]();
  if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v56(&v89, 0);
  swift_endAccess();

  v59 = sub_227542540(v24 + v40, v86, v85);
  v60 = v71;
  if (v59)
  {
    v9 = v70;
    v12 = v69;
    a1 = v67[0];
    if (v59 != 1)
    {
      v66 = v59;
      swift_willThrow();

      v78 = v66;
      goto LABEL_26;
    }

    goto LABEL_5;
  }

  v61 = v78;
  v62 = sub_22723D128(0);
  v9 = v70;
  v12 = v69;
  if (!v61)
  {
    v63 = v62;
    [v62 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v64 = sub_22766C9E0();
    v78 = 0;
    v65 = sub_226EDAB24(v64);

    sub_226EDAB78(v65, v73);

    a1 = v67[0];
LABEL_5:
    (*v68)(v60, v72);
    v16 = v79;
    v13 = v80;
    goto LABEL_6;
  }

  v78 = v61;

LABEL_26:
  (*v68)(v60, v72);
  (*v77)(v12, v9);
}

uint64_t sub_226F2CD8C(void *a1, uint64_t a2)
{
  v86 = a1;
  v99 = sub_2276624A0();
  v3 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v94 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2276639B0();
  v5 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v97[0] = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v8 = v97[0];
    v10 = *(v5 + 16);
    v9 = v5 + 16;
    v11 = a2 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v89 = *(v9 + 56);
    v90 = v10;
    v87 = (v9 - 8);
    v88 = (v3 + 8);
    v91 = v9;
    do
    {
      v13 = v92;
      v12 = v93;
      v90(v92, v11, v93);
      v14 = v94;
      sub_2276639A0();
      v15 = sub_227662390();
      v17 = v16;
      (*v88)(v14, v99);
      (*v87)(v13, v12);
      v97[0] = v8;
      v18 = *(v8 + 16);
      if (v18 >= *(v8 + 24) >> 1)
      {
        sub_226F1EF90();
        v8 = v97[0];
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      v11 += v89;
      --v7;
    }

    while (v7);
  }

  v20 = sub_226F3E6A8(v8);

  v21 = __swift_project_boxed_opaque_existential_0(v86, v86[3]);
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = v21[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8598, &unk_227677B90);
  v26 = swift_allocObject();
  v27 = v22;
  v28 = v23;

  sub_22766A070();
  *(v26 + 16) = v27;
  *(v26 + 24) = v28;
  *(v26 + 32) = v24;
  *(v26 + 40) = v25;
  swift_getKeyPath();
  v99 = v20;
  sub_227230638(v20);
  v30 = v29;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v98 = v94;
  v97[0] = v30;
  v31 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v93 = v31;
  v32 = sub_22766C820();
  sub_226E93170(v97, v95, &unk_27D7BC990, &qword_227670A30);
  v33 = v96;
  if (v96)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v95, v96);
    v35 = *(v33 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = &v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v33);
    __swift_destroy_boxed_opaque_existential_0(v95);
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_opt_self();
  v41 = [v40 expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85A0 &qword_22767FF20))];

  sub_226E97D1C(v97, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(v97, 0);
  swift_endAccess();

  KeyPath = swift_getKeyPath();
  v46 = v85;
  sub_2273FC724(KeyPath);
  if (v46)
  {

    swift_setDeallocating();

    v48 = qword_2813B2078;
    v49 = sub_22766A100();
    (*(*(v49 - 8) + 8))(v26 + v48, v49);
    return swift_deallocClassInstance();
  }

  else
  {
    v50 = sub_226F3E6A8(v47);

    swift_setDeallocating();

    v51 = qword_2813B2078;
    v52 = sub_22766A100();
    v53 = *(v52 - 8);
    v54 = *(v53 + 8);
    v55 = v53 + 8;
    v54(v26 + v51, v52);
    swift_deallocClassInstance();
    v56 = *(v50 + 16);
    v57 = *(v99 + 16);
    v91 = v52;
    v92 = v40;
    v89 = v55;
    v90 = v54;
    if (v56 <= v57 >> 3)
    {
      v97[0] = v99;
      sub_22700604C(v50);

      v58 = v97[0];
    }

    else
    {
      v58 = sub_22700776C(v50, v99);
    }

    v59 = __swift_project_boxed_opaque_existential_0(v86, v86[3]);
    v60 = *v59;
    v61 = v59[1];
    v62 = *(v59 + 16);
    v63 = v59[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
    v64 = swift_allocObject();
    v65 = v60;
    v66 = v61;

    sub_22766A070();
    *(v64 + 16) = v65;
    *(v64 + 24) = v66;
    *(v64 + 32) = v62;
    *(v64 + 40) = v63;
    swift_getKeyPath();
    sub_227230638(v58);
    v68 = v67;

    v98 = v94;
    v97[0] = v68;

    v69 = sub_22766C820();
    sub_226E93170(v97, v95, &unk_27D7BC990, &qword_227670A30);
    v70 = v96;
    if (v96)
    {
      v71 = __swift_project_boxed_opaque_existential_0(v95, v96);
      v72 = *(v70 - 8);
      v73 = MEMORY[0x28223BE20](v71);
      v75 = &v85 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v72 + 16))(v75, v73);
      v76 = sub_22766D170();
      (*(v72 + 8))(v75, v70);
      __swift_destroy_boxed_opaque_existential_0(v95);
    }

    else
    {
      v76 = 0;
    }

    v77 = [v92 expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590 &unk_2276777E0))];

    sub_226E97D1C(v97, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v78 = sub_22766A080();
    v80 = v79;
    MEMORY[0x22AA985C0]();
    if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v78(v97, 0);
    swift_endAccess();

    v82 = sub_2272325B8(100);
    swift_setDeallocating();

    (v90)(v64 + qword_2813B2078, v91);
    swift_deallocClassInstance();
    v83 = sub_226F25558(v82);

    v84 = sub_226F405FC(v83);

    sub_227079538(v84, v86);
  }
}

void sub_226F2D8FC(uint64_t a1, uint64_t a2)
{
  v37 = sub_227664AE0();
  MEMORY[0x28223BE20](v37);
  v38 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v36 = &v35[-v6];
  v49 = sub_2276624A0();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2276639B0();
  v12.n128_f64[0] = MEMORY[0x28223BE20](v10);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(a1 + 16);
  if (v15)
  {
    v17 = *(v11 + 16);
    v16 = v11 + 16;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v39 = *(v16 + 56);
    v40 = v17;
    v19 = (v7 + 8);
    v41 = v16;
    v42 = (v16 - 8);
    v43 = v10;
    do
    {
      v40(v14, v18, v10, v12);
      v20 = *__swift_project_boxed_opaque_existential_0((a2 + 136), *(a2 + 160));
      sub_2276639A0();
      v21 = sub_227662380();
      v23 = v22;
      (*v19)(v9, v49);
      if (v21 == 947204973 && v23 == 0xE400000000000000)
      {

LABEL_7:
        v25 = *(v20 + 16);
        if (!*(v25 + 16))
        {
          goto LABEL_20;
        }

        v26 = 1;
        goto LABEL_9;
      }

      v24 = sub_22766D190();

      if (v24)
      {
        goto LABEL_7;
      }

      v31 = v36;
      sub_227663970();
      sub_226F322FC(v31, v38);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_226F32360(v38);
          v25 = *(v20 + 16);
          if (!*(v25 + 16))
          {
            goto LABEL_20;
          }

          v26 = 2;
          goto LABEL_9;
        }
      }

      else
      {
        sub_226F32360(v38);
      }

      v25 = *(v20 + 16);
      if (!*(v25 + 16))
      {
LABEL_20:
        v33 = sub_227663190();
        sub_226F32B0C(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D4FCF8], v33);
        swift_willThrow();
        (*v42)(v14, v43);
        return;
      }

      v26 = 0;
LABEL_9:
      v27 = sub_226F3A004(v26);
      if ((v28 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_226E91B50(*(v25 + 56) + 40 * v27, v44);
      sub_226E92AB8(v44, v45);
      sub_226E92AB8(v45, v46);
      v30 = v47;
      v29 = v48;
      __swift_project_boxed_opaque_existential_0(v46, v47);
      (*(v29 + 40))(v14, v30, v29);
      v10 = v43;
      (*v42)(v14, v43);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v18 += v39;
      --v15;
    }

    while (v15);
  }
}

uint64_t sub_226F2DD90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v74 = a1;
  v72 = a3;
  v87 = sub_2276624A0();
  v4 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2276639B0();
  v6 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v85[0] = MEMORY[0x277D84F90];
    sub_226F1EF90();
    v9 = v85[0];
    v11 = *(v6 + 16);
    v10 = v6 + 16;
    v12 = a2 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v77 = *(v10 + 56);
    v78 = v11;
    v75 = (v10 - 8);
    v76 = (v4 + 8);
    v79 = v10;
    do
    {
      v14 = v80;
      v13 = v81;
      v78(v80, v12, v81);
      v15 = v82;
      sub_2276639A0();
      v16 = sub_227662390();
      v18 = v17;
      (*v76)(v15, v87);
      (*v75)(v14, v13);
      v85[0] = v9;
      v19 = *(v9 + 16);
      if (v19 >= *(v9 + 24) >> 1)
      {
        sub_226F1EF90();
        v9 = v85[0];
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v18;
      v12 += v77;
      --v8;
    }

    while (v8);
  }

  v21 = sub_226F3E6A8(v9);

  v22 = __swift_project_boxed_opaque_existential_0(v74, v74[3]);
  v23 = *v22;
  v24 = v22[1];
  v25 = *(v22 + 16);
  v26 = v22[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v27 = swift_allocObject();
  v28 = v23;
  v29 = v24;

  sub_22766A070();
  *(v27 + 16) = v28;
  *(v27 + 24) = v29;
  *(v27 + 32) = v25;
  *(v27 + 40) = v26;
  swift_getKeyPath();
  sub_227230638(v21);
  v31 = v30;

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v85[0] = v31;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v32 = sub_22766C820();
  sub_226E93170(v85, v83, &unk_27D7BC990, &qword_227670A30);
  v33 = v84;
  if (v84)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v83, v84);
    v35 = *(v33 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = &v71 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v33);
    __swift_destroy_boxed_opaque_existential_0(v83);
  }

  else
  {
    v39 = 0;
  }

  v40 = objc_opt_self();
  v41 = [v40 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  [objc_allocWithZone(v87) initWithLeftExpression:v32 rightExpression:v41 modifier:0 type:10 options:0];

  sub_226E97D1C(v85, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v42 = sub_22766A080();
  v44 = v43;
  MEMORY[0x22AA985C0]();
  if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v82 = *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v42(v85, 0);
  swift_endAccess();

  swift_getKeyPath();
  v45 = sub_227664570();
  v86 = MEMORY[0x277D83B88];
  v85[0] = v45;

  v46 = sub_22766C820();
  sub_226E93170(v85, v83, &unk_27D7BC990, &qword_227670A30);
  v47 = v84;
  if (v84)
  {
    v48 = __swift_project_boxed_opaque_existential_0(v83, v84);
    v82 = &v71;
    v49 = v40;
    v50 = *(v47 - 8);
    v51 = MEMORY[0x28223BE20](v48);
    v53 = &v71 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v50 + 16))(v53, v51);
    v54 = sub_22766D170();
    (*(v50 + 8))(v53, v47);
    v40 = v49;
    __swift_destroy_boxed_opaque_existential_0(v83);
  }

  else
  {
    v54 = 0;
  }

  v55 = [v40 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v56 = [objc_allocWithZone(v87) initWithLeftExpression:v46 rightExpression:v55 modifier:0 type:4 options:0];

  sub_226E97D1C(v85, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v57 = v56;
  v58 = sub_22766A080();
  v60 = v59;
  MEMORY[0x22AA985C0]();
  if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v58(v85, 0);
  swift_endAccess();

  v61 = v73;
  v62 = sub_2272325B8(100);
  if (v61)
  {
    swift_setDeallocating();

    v63 = qword_2813B2078;
    v64 = sub_22766A100();
    (*(*(v64 - 8) + 8))(v27 + v63, v64);
    return swift_deallocClassInstance();
  }

  else
  {
    v66 = v62;
    swift_setDeallocating();

    v67 = qword_2813B2078;
    v68 = sub_22766A100();
    (*(*(v68 - 8) + 8))(v27 + v67, v68);
    swift_deallocClassInstance();
    v69 = sub_226F259F0(v66);
    v70 = sub_226F40798(v69);

    sub_22707984C(v70, v74);

    *v72 = v66;
  }

  return result;
}

uint64_t sub_226F2E75C@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v74 = a3;
  v75 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8630, &unk_227671200);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v62 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8638, &unk_227684F00);
  v7 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v8;
  MEMORY[0x28223BE20](v9);
  v67 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v76 = &v62 - v14;
  v69 = v15;
  MEMORY[0x28223BE20](v16);
  v71 = &v62 - v17;
  v18 = sub_22766B390();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v22 = sub_22766B380();
  v23 = sub_22766C8B0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v78[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_226E97AE8(v75, a2, v78);
    _os_log_impl(&dword_226E8E000, v22, v23, "Request to failing bundle load for identifier: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v24, -1, -1);
  }

  (*(v19 + 8))(v21, v18);
  v26 = v4[32];
  v27 = v4[33];
  __swift_project_boxed_opaque_existential_0(v4 + 29, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = v75;
  *(v28 + 24) = a2;

  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8640, qword_227671210);
  v30 = v62;
  sub_226ECF5D8(sub_226F32B54, v28, v26, v29, v27, v62);

  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);

  v31 = sub_22766C950();
  sub_227669A50();
  sub_226F32B78();
  v32 = v66;
  v33 = v67;
  sub_227669230();

  (*(v64 + 8))(v30, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = nullsub_1;
  *(v34 + 24) = 0;
  v35 = v65;
  v36 = v68;
  (*(v7 + 16))(v65, v33, v68);
  v37 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v38 = (v63 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  (*(v7 + 32))(v39 + v37, v35, v36);
  v40 = (v39 + v38);
  *v40 = sub_226F32BDC;
  v40[1] = v34;
  v41 = v76;
  sub_227669270();
  (*(v7 + 8))(v33, v36);
  v42 = *__swift_project_boxed_opaque_existential_0(v4 + 34, v4[37]);
  v78[3] = type metadata accessor for SyncCoordinator(0);
  v78[4] = &off_283AA3680;
  v78[0] = v42;
  sub_226E91B50(v78, v77);
  v43 = swift_allocObject();
  sub_226E92AB8(v77, v43 + 16);

  __swift_destroy_boxed_opaque_existential_0(v78);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_226F32C0C;
  *(v44 + 24) = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_226F33078;
  *(v45 + 24) = v44;
  v46 = v72;
  v47 = v73;
  v48 = *(v72 + 16);
  v68 = v72 + 16;
  v75 = v48;
  v49 = v70;
  v48(v70, v41, v73);
  v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v67 = v50;
  v51 = (v69 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  v69 = *(v46 + 32);
  v69(v52 + v50, v49, v47);
  v53 = (v52 + v51);
  *v53 = sub_226F32FEC;
  v53[1] = v45;
  v54 = v71;
  sub_227669270();
  v55 = *(v46 + 8);
  v56 = v76;
  v55(v76, v47);
  v57 = swift_allocObject();
  v57[2] = 0xD00000000000002ELL;
  v57[3] = 0x8000000227693CC0;
  v57[4] = 283;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_226F33024;
  *(v58 + 24) = v57;
  v75(v56, v54, v47);
  v59 = swift_allocObject();
  v69(&v67[v59], v56, v47);
  v60 = (v59 + v51);
  *v60 = sub_226F32FE8;
  v60[1] = v58;
  sub_227669270();
  return (v55)(v54, v47);
}

uint64_t sub_226F2F030@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = a4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85E8, &qword_227677740);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v62[0] = a2;
  v62[1] = a3;
  v14 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v59 = v14;
  v15 = sub_22766C820();
  sub_226E93170(v62, v60, &unk_27D7BC990, &qword_227670A30);
  v16 = v61;
  if (v61)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v60, v61);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_opt_self();
  v24 = [v23 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE6B0, &unk_227671120);
  v26 = [objc_allocWithZone(v25) initWithLeftExpression:v15 rightExpression:v24 modifier:0 type:4 options:0];

  sub_226E97D1C(v62, &unk_27D7BC990, &qword_227670A30);
  v27 = qword_2813B2078;
  swift_beginAccess();
  v28 = v26;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v62, 0);
  swift_endAccess();

  swift_getKeyPath();
  v32 = sub_227664570();
  v63 = MEMORY[0x277D83B88];
  v62[0] = v32;

  v33 = sub_22766C820();
  sub_226E93170(v62, v60, &unk_27D7BC990, &qword_227670A30);
  v34 = v61;
  if (v61)
  {
    v35 = __swift_project_boxed_opaque_existential_0(v60, v61);
    v59 = v27;
    v57 = v23;
    v36 = v25;
    v37 = *(v34 - 8);
    v38 = MEMORY[0x28223BE20](v35);
    v40 = &v56 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v40, v38);
    v41 = sub_22766D170();
    (*(v37 + 8))(v40, v34);
    v25 = v36;
    v23 = v57;
    __swift_destroy_boxed_opaque_existential_0(v60);
  }

  else
  {
    v41 = 0;
  }

  v42 = [v23 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v43 = [objc_allocWithZone(v25) initWithLeftExpression:v33 rightExpression:v42 modifier:0 type:4 options:0];

  sub_226E97D1C(v62, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v44 = v43;
  v45 = sub_22766A080();
  v47 = v46;
  MEMORY[0x22AA985C0]();
  if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v45(v62, 0);
  swift_endAccess();

  v48 = v64;
  v49 = sub_2272328B8(100);
  if (v48)
  {
    swift_setDeallocating();

    v50 = qword_2813B2078;
    v51 = sub_22766A100();
    (*(*(v51 - 8) + 8))(v11 + v50, v51);
    return swift_deallocClassInstance();
  }

  else
  {
    v53 = v49;
    swift_setDeallocating();

    v54 = qword_2813B2078;
    v55 = sub_22766A100();
    (*(*(v55 - 8) + 8))(v11 + v54, v55);
    result = swift_deallocClassInstance();
    *v58 = v53;
  }

  return result;
}

uint64_t sub_226F2F76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v11);
  v36 = &v32 - v12;
  MEMORY[0x28223BE20](v13);
  v40 = &v32 - v14;
  sub_226F2FB18(a1, v10);
  v35 = *(v5 + 16);
  v35(v7, v10, v4);
  v15 = *(v5 + 80);
  v41 = v5;
  v16 = (v15 + 16) & ~v15;
  v39 = v16;
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v38 = *(v5 + 32);
  v38(v18 + v16, v7, v4);
  v19 = (v18 + v17);
  v20 = v32;
  *v19 = sub_226F32C10;
  v19[1] = v20;
  v34 = sub_227663480();

  v21 = v36;
  sub_227669270();
  v33 = *(v41 + 8);
  v41 += 8;
  v33(v10, v4);
  v22 = v21;
  v23 = v21;
  v24 = v35;
  v35(v10, v22, v4);
  v25 = swift_allocObject();
  v38(v25 + v39, v10, v4);
  v26 = (v25 + v17);
  *v26 = sub_226F32C18;
  v26[1] = v20;

  v27 = v40;
  sub_227669270();
  v28 = v33;
  v33(v23, v4);
  v24(v23, v27, v4);
  v29 = swift_allocObject();
  v38(v29 + v39, v23, v4);
  v30 = (v29 + v17);
  *v30 = sub_226F32C20;
  v30[1] = v20;

  sub_227669270();
  return v28(v40, v4);
}

uint64_t sub_226F2FB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227663480();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v32 - v13;
  v15 = sub_2276633F0();
  if ((v16 & 1) != 0 && v15 == 1)
  {
    (*(v9 + 16))(v14, a1, v8);
    v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v18 = swift_allocObject();
    (*(v9 + 32))(v18 + v17, v14, v8);
  }

  else
  {
    v33 = v5;
    sub_22766A6C0();
    (*(v9 + 16))(v11, a1, v8);
    v19 = sub_22766B380();
    v20 = sub_22766C890();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[1] = a2;
      v23 = v22;
      v34 = v22;
      *v21 = 141558274;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2080;
      sub_226F32B0C(&qword_27D7B85C0, MEMORY[0x277D4FF88], MEMORY[0x277D4FFA0]);
      v24 = sub_22766D140();
      v32[0] = v4;
      v26 = v25;
      (*(v9 + 8))(v11, v8);
      v27 = sub_226E97AE8(v24, v26, &v34);

      *(v21 + 14) = v27;
      _os_log_impl(&dword_226E8E000, v19, v20, "Bundle failed loading load status requirement: %{mask.hash}s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA9A450](v23, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);

      (*(v33 + 8))(v7, v32[0]);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      (*(v33 + 8))(v7, v4);
    }

    v28 = sub_227663190();
    sub_226F32B0C(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D4FD20], v28);
    *(swift_allocObject() + 16) = v29;
  }

  return sub_227669280();
}

uint64_t sub_226F2FF98()
{
  v0 = sub_227663480();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  sub_227663470();
  (*(v1 + 16))(v3, v6, v0);
  v7 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v8 = swift_allocObject();
  (*(v1 + 32))(v8 + v7, v3, v0);
  sub_227669280();
  return (*(v1 + 8))(v6, v0);
}

uint64_t sub_226F30150@<X0>(uint64_t a1@<X0>, uint64_t (*a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85B8, &unk_227671050);
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - v12;
  v13 = *(a2 + 32);
  v30 = *(a2 + 33);
  v28 = __swift_project_boxed_opaque_existential_0(a2 + 29, v13);
  v14 = a1;
  v15 = v5;
  (*(v6 + 16))(v8, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = v18 + v16;
  v20 = v15;
  (*(v6 + 32))(v19, v8, v15);
  *(v18 + v17) = a2;

  v21 = v29;
  sub_226ECF5D8(sub_226F32FF0, v18, v13, v20, v30, v29);

  v23 = v31;
  v22 = v32;
  (*(v9 + 16))(v31, v21, v32);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = swift_allocObject();
  (*(v9 + 32))(v25 + v24, v23, v22);
  v26 = (v25 + ((v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_226F33054;
  v26[1] = a2;

  sub_227669270();
  return (*(v9 + 8))(v21, v22);
}

uint64_t sub_226F30468@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = sub_227663480();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85C8, &qword_227679600);
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v27 = &v26 - v12;
  v13 = a2[32];
  v28 = a2[33];
  v26 = __swift_project_boxed_opaque_existential_0(a2 + 29, v13);
  (*(v6 + 16))(v8, a1, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, v8, v5);
  *(v16 + v15) = a2;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B85D0, &unk_227671060);
  v18 = v27;
  sub_226ECF5D8(sub_226F33008, v16, v13, v17, v28, v27);

  v19 = swift_allocObject();
  *(v19 + 16) = sub_226F33058;
  *(v19 + 24) = a2;
  v21 = v29;
  v20 = v30;
  (*(v9 + 16))(v29, v18, v30);
  v22 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v22, v21, v20);
  v24 = (v23 + ((v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v24 = sub_226F3303C;
  v24[1] = v19;

  sub_227669270();
  return (*(v9 + 8))(v18, v20);
}

uint64_t sub_226F307BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8610, &unk_2276711B0);
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = v3;
  v54 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v46 - v5;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = v8;
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  v16 = *(v7 + 16);
  v60 = v6;
  v50 = v16;
  v16(v11, a1, v6);
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v49 = a1;
    v22 = v21;
    v61 = v21;
    *v20 = 141558274;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2080;
    v23 = sub_227662390();
    v47 = v13;
    v25 = v24;
    (*(v7 + 8))(v11, v60);
    v26 = sub_226E97AE8(v23, v25, &v61);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_226E8E000, v17, v18, "failAssetEntry - remoteURL: %{mask.hash}s", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v27 = v22;
    a1 = v49;
    MEMORY[0x22AA9A450](v27, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v47 + 8))(v15, v48);
  }

  else
  {

    (*(v7 + 8))(v11, v60);
    (*(v13 + 8))(v15, v12);
  }

  v28 = v56;
  v29 = v56[32];
  v30 = v56[33];
  __swift_project_boxed_opaque_existential_0(v56 + 29, v29);
  v31 = v52;
  v32 = v60;
  v50(v52, a1, v60);
  v33 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v33, v31, v32);
  v35 = sub_227663180();
  v36 = v55;
  sub_226ECF5D8(sub_226F32A44, v34, v29, v35, v30, v55);

  v37 = swift_allocObject();
  *(v37 + 16) = sub_226F32AC0;
  *(v37 + 24) = v28;
  v38 = v57;
  v39 = v54;
  v40 = v59;
  (*(v57 + 16))(v54, v36, v59);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v39, v40);
  v44 = (v43 + v42);
  *v44 = sub_226F32ADC;
  v44[1] = v37;

  sub_227669270();
  return (*(v38 + 8))(v36, v40);
}

uint64_t sub_226F30D38@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v127 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v5 - 8);
  v126 = v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v125 = v123 - v8;
  v133 = sub_227663180();
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v124 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v129 = *(v10 - 8);
  v130 = v10;
  MEMORY[0x28223BE20](v10);
  v132 = v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8620, &qword_2276711C0);
  MEMORY[0x28223BE20](v12 - 8);
  v128 = v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v123 - v15;
  v17 = a1[3];
  v137 = a1;
  v18 = __swift_project_boxed_opaque_existential_0(a1, v17);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v18 + 16);
  v22 = v18[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8580, &qword_2276777B0);
  v23 = swift_allocObject();
  v24 = v19;
  v25 = v20;

  sub_22766A070();
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  *(v23 + 32) = v21;
  *(v23 + 40) = v22;
  swift_getKeyPath();
  v136 = a2;
  v26 = sub_227662390();
  v28 = v27;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v145 = v135;
  v143 = v26;
  v144 = v28;
  v29 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v146 = v29;
  v30 = sub_22766C820();
  sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
  v31 = v142;
  v138 = v16;
  if (v142)
  {
    v32 = __swift_project_boxed_opaque_existential_0(v141, v142);
    v33 = *(v31 - 8);
    v34 = MEMORY[0x28223BE20](v32);
    v36 = v123 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    v37 = sub_22766D170();
    (*(v33 + 8))(v36, v31);
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  else
  {
    v37 = 0;
  }

  v38 = objc_opt_self();
  v39 = [v38 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8590, &unk_2276777E0);
  v41 = [objc_allocWithZone(v40) initWithLeftExpression:v30 rightExpression:v39 modifier:0 type:4 options:0];

  sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v42 = v41;
  v43 = sub_22766A080();
  v45 = v44;
  MEMORY[0x22AA985C0]();
  if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v43(&v143, 0);
  swift_endAccess();

  swift_getKeyPath();
  v46 = sub_227664570();
  if (v46 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v46 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    sub_22766C360();
    goto LABEL_12;
  }

  v145 = MEMORY[0x277D849A8];
  LODWORD(v143) = v46;

  v47 = sub_22766C820();
  sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
  v48 = v142;
  v139 = v38;
  if (v142)
  {
    v49 = __swift_project_boxed_opaque_existential_0(v141, v142);
    v134 = v123;
    v50 = v40;
    v51 = *(v48 - 8);
    v52 = MEMORY[0x28223BE20](v49);
    v54 = v123 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v54, v52);
    v55 = sub_22766D170();
    (*(v51 + 8))(v54, v48);
    v40 = v50;
    v38 = v139;
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  else
  {
    v55 = 0;
  }

  v56 = [v38 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v57 = [objc_allocWithZone(v40) initWithLeftExpression:v47 rightExpression:v56 modifier:0 type:4 options:0];

  sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v40 = v57;
  v43 = sub_22766A080();
  v59 = v58;
  MEMORY[0x22AA985C0]();
  if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_28;
  }

LABEL_12:
  sub_22766C3A0();
  v43(&v143, 0);
  swift_endAccess();

  swift_beginAccess();
  sub_22766A0D0();
  swift_endAccess();
  v60 = v140;
  v61 = sub_2272F8688(0x64);
  if (v60)
  {
    swift_setDeallocating();

    v62 = qword_2813B2078;
    v63 = sub_22766A100();
    (*(*(v63 - 8) + 8))(v23 + v62, v63);
    return swift_deallocClassInstance();
  }

  else
  {
    v64 = v61;
    swift_setDeallocating();

    v65 = qword_2813B2078;
    v66 = sub_22766A100();
    v67 = *(v66 - 8);
    v68 = *(v67 + 8);
    v140 = v66;
    v134 = v68;
    v123[1] = v67 + 8;
    (v68)(v23 + v65);
    swift_deallocClassInstance();
    sub_22722AE54(v64, v138);

    v69 = __swift_project_boxed_opaque_existential_0(v137, v137[3]);
    v70 = *v69;
    v71 = v69[1];
    v72 = *(v69 + 16);
    v73 = v69[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE600, &qword_2276711C8);
    v74 = swift_allocObject();
    v75 = v70;
    v76 = v71;

    sub_22766A070();
    *(v74 + 16) = v75;
    *(v74 + 24) = v76;
    *(v74 + 32) = v72;
    *(v74 + 40) = v73;
    swift_getKeyPath();
    v77 = sub_227662390();
    v145 = v135;
    v143 = v77;
    v144 = v78;

    v79 = sub_22766C820();
    sub_226E93170(&v143, v141, &unk_27D7BC990, &qword_227670A30);
    v80 = v142;
    if (v142)
    {
      v81 = __swift_project_boxed_opaque_existential_0(v141, v142);
      v82 = *(v80 - 8);
      v83 = MEMORY[0x28223BE20](v81);
      v85 = v123 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v82 + 16))(v85, v83);
      v86 = sub_22766D170();
      (*(v82 + 8))(v85, v80);
      __swift_destroy_boxed_opaque_existential_0(v141);
    }

    else
    {
      v86 = 0;
    }

    v87 = [v139 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v88 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE610 &qword_2276711F8))];

    sub_226E97D1C(&v143, &unk_27D7BC990, &qword_227670A30);
    swift_beginAccess();
    v89 = v88;
    v90 = sub_22766A080();
    v92 = v91;
    MEMORY[0x22AA985C0]();
    if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v90(&v143, 0);
    swift_endAccess();

    sub_2272F8AB4(0x64);
    v93 = v138;
    swift_setDeallocating();

    v134(v74 + qword_2813B2078, v140);
    swift_deallocClassInstance();
    v95 = v132;
    sub_22766A6C0();

    v96 = sub_22766B380();
    v97 = sub_22766C8B0();

    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v143 = v99;
      *v98 = 141558274;
      *(v98 + 4) = 1752392040;
      *(v98 + 12) = 2080;
      sub_227665490();
      v100 = v93;
      sub_226F32B0C(&qword_27D7B8628, MEMORY[0x277D51680], MEMORY[0x277D51688]);
      v101 = sub_22766C610();
      v103 = v102;

      v104 = v101;
      v93 = v100;
      v105 = sub_226E97AE8(v104, v103, &v143);

      *(v98 + 14) = v105;
      _os_log_impl(&dword_226E8E000, v96, v97, "failAssetEntry - removed resumable loads: %{mask.hash}s", v98, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x22AA9A450](v99, -1, -1);
      MEMORY[0x22AA9A450](v98, -1, -1);

      (*(v129 + 8))(v132, v130);
    }

    else
    {

      (*(v129 + 8))(v95, v130);
    }

    v106 = v133;
    v107 = v131;
    v108 = v128;
    sub_226E93170(v93, v128, &qword_27D7B8620, &qword_2276711C0);
    if ((*(v107 + 48))(v108, 1, v106) == 1)
    {
      sub_226E97D1C(v108, &qword_27D7B8620, &qword_2276711C0);
      v109 = sub_227663190();
      sub_226F32B0C(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
      swift_allocError();
      (*(*(v109 - 8) + 104))(v110, *MEMORY[0x277D4FD58], v109);
      swift_willThrow();
      v111 = v93;
    }

    else
    {
      v112 = sub_2276624A0();
      v113 = *(*(v112 - 8) + 56);
      v114 = v125;
      v113(v125, 1, 1, v112);
      v115 = v126;
      v113(v126, 1, 1, v112);
      v116 = v124;
      sub_227663140();
      sub_226E97D1C(v115, &unk_27D7BB570, &unk_227670FC0);
      v117 = v114;
      v118 = v133;
      sub_226E97D1C(v117, &unk_27D7BB570, &unk_227670FC0);
      v119 = v127;
      v146 = *(v107 + 8);
      v146(v108, v118);
      (*(v107 + 32))(v119, v116, v118);
      v120 = __swift_project_boxed_opaque_existential_0(v137, v137[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
      v121 = (*(v107 + 80) + 32) & ~*(v107 + 80);
      v122 = swift_allocObject();
      *(v122 + 16) = xmmword_227670CD0;
      (*(v107 + 16))(v122 + v121, v119, v118);
      sub_227557590(v122, v120[1], *(v120 + 16), v120[3]);

      v111 = v138;
    }

    return sub_226E97D1C(v111, &qword_27D7B8620, &qword_2276711C0);
  }
}

uint64_t sub_226F31F58(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8618, &qword_227679AF0);
  v2 = sub_227663180();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227670CD0;
  (*(v3 + 16))(v5 + v4, a1, v2);
  v6 = sub_226F4AE10(v5);
  swift_setDeallocating();
  (*(v3 + 8))(v5 + v4, v2);
  swift_deallocClassInstance();
  sub_2274B2754(v6);
}

void sub_226F32090(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v6 = sub_22766B380();
  v7 = sub_22766C8B0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 141558274;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2080;
    sub_227663180();
    sub_226F32B0C(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
    v10 = sub_22766C610();
    v12 = sub_226E97AE8(v10, v11, &v14);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_226E8E000, v6, v7, "Cancellation - Deleting files for entries %{mask.hash}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AA9A450](v9, -1, -1);
    MEMORY[0x22AA9A450](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_2274B2754(a1);
}

uint64_t sub_226F322FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_227664AE0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F32360(uint64_t a1)
{
  v2 = sub_227664AE0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F32428@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD400, qword_22767B9F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_226F324D0(uint64_t *a1)
{
  sub_226F32090(*a1);

  return sub_2276692A0();
}

unint64_t sub_226F32810()
{
  result = qword_27D7B8600;
  if (!qword_27D7B8600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8600);
  }

  return result;
}

unint64_t sub_226F32864()
{
  result = qword_27D7B8608;
  if (!qword_27D7B8608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8608);
  }

  return result;
}

uint64_t objectdestroy_111Tm()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_226F32B0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_226F32B78()
{
  result = qword_281398E90;
  if (!qword_281398E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B8640, qword_227671210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E90);
  }

  return result;
}

uint64_t objectdestroy_126Tm()
{
  v1 = sub_227663480();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_226F32D6C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227663480() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_226F2AAC4(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_226F32E14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_73Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_226F33090(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF79636E6574614CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v4 = 0x8000000227692380;
    }

    else
    {
      v4 = 0x80000002276923A0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xED000065726F6353;
    }

    else
    {
      v4 = 0xEF79636E6574614CLL;
    }

    v5 = 0x646C6F6666616373;
  }

  v6 = 0xD000000000000012;
  v7 = 0x80000002276923A0;
  if (a2 == 2)
  {
    v7 = 0x8000000227692380;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0xED000065726F6353;
  }

  if (a2 <= 1u)
  {
    v8 = 0x646C6F6666616373;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22766D190();
  }

  return v10 & 1;
}

uint64_t sub_226F331D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 2)
    {
      v4 = 0x8000000227692380;
    }

    else
    {
      v4 = 0x80000002276923A0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x726F63536E616C70;
    }

    else
    {
      v3 = 0x6574614C6E616C70;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xEB0000000079636ELL;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v6 = 0x8000000227692380;
    }

    else
    {
      v6 = 0x80000002276923A0;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x726F63536E616C70;
    }

    else
    {
      v5 = 0x6574614C6E616C70;
    }

    if (a2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xEB0000000079636ELL;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = sub_22766D190();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_226F33338(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE400000000000000;
  v5 = 1685025392;
  v6 = 0xE800000000000000;
  if (a1 != 6)
  {
    v5 = 0x736D7469646F7270;
    v4 = 0xE800000000000000;
  }

  if (a1 != 4)
  {
    v6 = 0xEC000000736D7469;
  }

  if (a1 <= 5u)
  {
    v5 = 0x6E6F676E6976696CLL;
    v4 = v6;
  }

  v7 = 0xE200000000000000;
  v8 = 24945;
  if (a1 != 2)
  {
    v8 = 0x736D74696171;
    v7 = 0xE600000000000000;
  }

  v9 = 0x736D7469766564;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v9 = 7759204;
  }

  if (a1 > 1u)
  {
    v3 = v7;
  }

  else
  {
    v8 = v9;
  }

  if (a1 <= 3u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 3)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v12 = 0xE400000000000000;
        if (v10 != 1685025392)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x736D7469646F7270)
        {
LABEL_45:
          v13 = sub_22766D190();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E6F676E6976696CLL)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = 0xEC000000736D7469;
      if (v10 != 0x6E6F676E6976696CLL)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v12 = 0xE200000000000000;
      if (v10 != 24945)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736D74696171)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x736D7469766564)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 7759204)
    {
      goto LABEL_45;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_226F33584(uint64_t a1)
{
  v2 = sub_2276694E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270ADB0C(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F337E4(uint64_t a1)
{
  v2 = sub_227665490();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_27D7B8628, MEMORY[0x277D51680], MEMORY[0x277D51688]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B2C34(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F33A44(uint64_t a1)
{
  v2 = sub_227663180();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B2394(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F33CA4(uint64_t a1)
{
  v2 = sub_227665680();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&unk_28139B7E8, MEMORY[0x277D51898], MEMORY[0x277D518A0]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B2F14(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F33F04(uint64_t a1)
{
  v2 = sub_227665F20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B3D88(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F34164(uint64_t a1)
{
  v2 = sub_227664530();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_2813A57C0, MEMORY[0x277D50978], MEMORY[0x277D50980]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B3AA8(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F343C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  v4 = sub_226EB6150(&qword_27D7B87A8, &qword_27D7B8560, &unk_227671560, sub_226F480FC);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v6 = 0;
  v7 = *(a1 + 64);
  v20 = result;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v7;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v7) != 0)
  {
    do
    {
      v12 = v6;
LABEL_9:
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(a1 + 48) + 24 * (v13 | (v12 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 16);
      sub_226EB396C(*v14, v16, v17);
      sub_227105A48(v18, v15, v16, v17);
      result = sub_226EB2DFC(v18[0], v18[1], v19);
    }

    while (v10);
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return v20;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F34540(uint64_t a1)
{
  result = MEMORY[0x22AA98980](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_2270AE890(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F3465C(uint64_t a1)
{
  v2 = sub_227666070();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_28139B6D0, MEMORY[0x277D52038], MEMORY[0x277D52040]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B20B4(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F348BC(uint64_t a1)
{
  v2 = sub_2276668A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&unk_28139B620, MEMORY[0x277D526D0], MEMORY[0x277D526D8]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B1DD4(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F34B1C(uint64_t a1)
{
  v2 = sub_227667580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v27 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8928, &qword_2276715E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = sub_226EB9ED4(&qword_27D7B8930, MEMORY[0x277D52E68], MEMORY[0x277D52E70]);
  result = MEMORY[0x22AA98980](0, v2, v13);
  v30 = (v3 + 56);
  v31 = result;
  v28 = v3 + 48;
  v29 = v3 + 16;
  v24 = 0;
  v25 = (v3 + 32);
  v22 = a1 + 32;
  v23 = a1;
  v15 = v26;
  while (1)
  {
    v19 = *(v23 + 16);
    if (v24 == v19)
    {
      break;
    }

    if (v24 >= v19)
    {
      goto LABEL_16;
    }

    v20 = v24 + 1;
    v21 = *(v22 + 8 * v24);

    v24 = v20;
    if (v21)
    {
      v16 = *(v21 + 16);
      if (v16)
      {
        v17 = 0;
        while (v17 < v16)
        {
          (*(v3 + 16))(v9, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
          (*(v3 + 56))(v9, 0, 1, v2);
          sub_226E95D18(v9, v12, &qword_27D7B8928, &qword_2276715E0);
          if ((*(v3 + 48))(v12, 1, v2) == 1)
          {

            goto LABEL_13;
          }

          ++v17;
          v18 = v27;
          (*v25)(v27, v12, v2);
          sub_2270BAC6C(v15, v18);
          result = (*(v3 + 8))(v15, v2);
          v16 = *(v21 + 16);
          if (v17 == v16)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

LABEL_7:
      (*v30)(v9, 1, 1, v2);
      result = sub_226E97D1C(v9, &qword_27D7B8928, &qword_2276715E0);
    }
  }

  (*v30)(v12, 1, 1, v2);
LABEL_13:

  return v31;
}

uint64_t sub_226F34EC4(uint64_t a1)
{
  v2 = sub_227665100();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_2813A5720, MEMORY[0x277D51360], MEMORY[0x277D51368]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B9C78(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F35124(uint64_t a1)
{
  v2 = sub_2276638D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B34E8(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F35384(uint64_t a1)
{
  v2 = sub_227667DE0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_27D7B8720, MEMORY[0x277D53330], MEMORY[0x277D53338]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270BFB18(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F355E4(uint64_t a1)
{
  v2 = sub_227666600();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_27D7B8718, MEMORY[0x277D52448], MEMORY[0x277D52450]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270BFDF8(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F35844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_226F487F8();
  result = MEMORY[0x22AA98980](v11, v2, v12);
  v14 = 0;
  v23 = a1;
  v24 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_226E97D1C(v7, &qword_27D7B88C0, &unk_22767A720))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_226E93170(*(v23 + 48) + *(v22 + 72) * (v20 | (v19 << 6)), v10, &qword_27D7B88C0, &unk_22767A720);
    sub_226E95D18(v10, v4, &qword_27D7B88C0, &unk_22767A720);
    sub_227105A44();
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v24;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F35A5C(uint64_t a1)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270B2954(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F35CBC(uint64_t a1)
{
  v2 = sub_2276639B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v27 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9680, &unk_227671520);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = sub_226EB9ED4(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
  result = MEMORY[0x22AA98980](0, v2, v13);
  v30 = (v3 + 56);
  v31 = result;
  v28 = v3 + 48;
  v29 = v3 + 16;
  v24 = 0;
  v25 = (v3 + 32);
  v22 = a1 + 32;
  v23 = a1;
  v15 = v26;
  while (1)
  {
    v19 = *(v23 + 16);
    if (v24 == v19)
    {
      break;
    }

    if (v24 >= v19)
    {
      goto LABEL_16;
    }

    v20 = v24 + 1;
    v21 = *(v22 + 8 * v24);

    v24 = v20;
    if (v21)
    {
      v16 = *(v21 + 16);
      if (v16)
      {
        v17 = 0;
        while (v17 < v16)
        {
          (*(v3 + 16))(v9, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v2);
          (*(v3 + 56))(v9, 0, 1, v2);
          sub_226E95D18(v9, v12, &qword_27D7B9680, &unk_227671520);
          if ((*(v3 + 48))(v12, 1, v2) == 1)
          {

            goto LABEL_13;
          }

          ++v17;
          v18 = v27;
          (*v25)(v27, v12, v2);
          sub_2270B1814(v15, v18);
          result = (*(v3 + 8))(v15, v2);
          v16 = *(v21 + 16);
          if (v17 == v16)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return result;
      }

LABEL_7:
      (*v30)(v9, 1, 1, v2);
      result = sub_226E97D1C(v9, &qword_27D7B9680, &unk_227671520);
    }
  }

  (*v30)(v12, 1, 1, v2);
LABEL_13:

  return v31;
}

void sub_226F36064(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v4 = sub_226ECCEB4(&qword_281398AD0, &qword_281398AE0, 0x277CBE448);
  v5 = 0;
  v12[1] = MEMORY[0x22AA98980](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_226EDAB54(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_226F361A0(uint64_t a1)
{
  v2 = sub_2276662D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_226EB9ED4(&qword_28139B6A8, MEMORY[0x277D52258], MEMORY[0x277D52260]);
  result = MEMORY[0x22AA98980](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_2270C1724(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_226F36400(uint64_t a1)
{
  v2 = sub_227665A20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v67 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v66 = v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B87D0, &qword_227671570);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v53 - v11;
  v13 = sub_226EB9ED4(&unk_28139B780, MEMORY[0x277D51AF0], MEMORY[0x277D51AF8]);
  result = MEMORY[0x22AA98980](0, v2, v13);
  v15 = 0;
  v56 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = -1 << *(v17 - 32);
  if (-v19 < 64)
  {
    v20 = ~(-1 << -v19);
  }

  else
  {
    v20 = -1;
  }

  v58 = v20 & v16;
  v59 = 0;
  v68 = (v3 + 56);
  v69 = result;
  v61 = 0;
  v62 = v3 + 16;
  v21 = (v3 + 48);
  v63 = v3;
  v64 = (v3 + 8);
  v65 = (v3 + 32);
  v53[1] = v19;
  v22 = (63 - v19) >> 6;
  v23 = 0xF000000000000007;
  v57 = v17;
  v55 = v22;
  while (1)
  {
    v24 = v58;
    if (!v58)
    {
      break;
    }

    while (2)
    {
      v25 = v15;
      v26 = v15;
LABEL_29:
      v48 = *(*(v56 + 56) + ((v26 << 9) | (8 * __clz(__rbit64(v24)))));
      v58 = (v24 - 1) & v24;
      v49 = -1 << *(v48 + 32);
      v50 = *(v48 + 56);
      v60 = ~v49;
      v51 = -v49;
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v54 = v52 & v50;

      result = sub_226F4827C(v23);
      v46 = v54;
      v22 = v55;
      v59 = v60;
      v61 = v48 + 56;
      v23 = v48;
      v17 = v57;
      v15 = v25;
      if ((~v23 & 0xF000000000000007) != 0)
      {
        v54 = v25;
        v27 = 0;
        v60 = (v59 + 64) >> 6;
        if (!v46)
        {
LABEL_9:
          if (v60 <= v27 + 1)
          {
            v31 = v27 + 1;
          }

          else
          {
            v31 = v60;
          }

          v32 = v31 - 1;
          while (1)
          {
            v33 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v33 >= v60)
            {
              v29 = 0;
              v35 = 1;
              goto LABEL_18;
            }

            v34 = *(v61 + 8 * v33);
            ++v27;
            if (v34)
            {
              v29 = (v34 - 1) & v34;
              v30 = __clz(__rbit64(v34)) | (v33 << 6);
              v27 = v33;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

        while (1)
        {
          v28 = __clz(__rbit64(v46));
          v29 = (v46 - 1) & v46;
          v30 = v28 | (v27 << 6);
LABEL_17:
          (*(v63 + 16))(v9, *(v23 + 48) + *(v63 + 72) * v30, v2);
          v35 = 0;
          v32 = v27;
LABEL_18:
          (*v68)(v9, v35, 1, v2);
          v36 = *v21;
          if ((*v21)(v9, 1, v2) == 1)
          {
            break;
          }

          sub_226E95D18(v9, v12, &qword_27D7B87D0, &qword_227671570);
          if (v36(v12, 1, v2) == 1)
          {
LABEL_36:
            sub_226EBB21C(v56);
            sub_226F4827C(v23);
            return v69;
          }

          v37 = v67;
          (*v65)(v67, v12, v2);
          v27 = v32;
          v38 = v2;
          v39 = v29;
          v40 = v9;
          v41 = v21;
          v42 = v23;
          v43 = v12;
          v44 = v66;
          sub_2270BF0F0(v66, v37);
          v45 = v44;
          v12 = v43;
          v23 = v42;
          v21 = v41;
          v9 = v40;
          v46 = v39;
          v2 = v38;
          result = (*v64)(v45, v38);
          if (!v46)
          {
            goto LABEL_9;
          }
        }

        result = sub_226E97D1C(v9, &qword_27D7B87D0, &qword_227671570);
        v17 = v57;
        v15 = v54;
        v22 = v55;
        v24 = v58;
        if (v58)
        {
          continue;
        }

        goto LABEL_24;
      }

      break;
    }
  }

LABEL_24:
  v47 = v15;
  while (1)
  {
    v26 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      (*v68)(v12, 1, 1, v2);
      goto LABEL_36;
    }

    v24 = *(v17 + 8 * v26);
    ++v47;
    if (v24)
    {
      v25 = v26;
      goto LABEL_29;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_226F3698C()
{
  v1 = *v0;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  return sub_22766D3F0();
}

uint64_t sub_226F36A00(uint64_t a1)
{
  v2 = *v1;
  sub_22766D370();
  MEMORY[0x22AA996B0](v2);
  return sub_22766D3F0();
}

uint64_t sub_226F36A50()
{
  v1 = OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry____lazy_storage___decoder;
  if (*(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry____lazy_storage___decoder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry____lazy_storage___decoder);
  }

  else
  {
    v3 = v0;
    sub_227662230();
    swift_allocObject();
    v2 = sub_227662220();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t RestrictionProfileRegistry.__allocating_init(profileStoreURL:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  v3 = v2 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state;
  *v3 = 0;
  *(v3 + 8) = 0x80;
  *(v2 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry____lazy_storage___decoder) = 0;
  v4 = OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_profileStoreURL;
  v5 = sub_2276624A0();
  (*(*(v5 - 8) + 32))(v2 + v4, a1, v5);
  return v2;
}

uint64_t RestrictionProfileRegistry.init(profileStoreURL:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v3 = v1 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state;
  *v3 = 0;
  *(v3 + 8) = 0x80;
  *(v1 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry____lazy_storage___decoder) = 0;
  v4 = OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_profileStoreURL;
  v5 = sub_2276624A0();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

void sub_226F36C14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v10, v7);
  v11 = a2 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state;
  v12 = *(a2 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state);
  v13 = *(a2 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state + 8);
  if (v13 >> 6)
  {
    if (v13 >> 6 == 1)
    {
      v28 = *(a2 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state);
      if (v13)
      {
        sub_226F49114(v12, 1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B89F8, &qword_2276715E8);
        sub_22766C440();
      }

      else
      {
        sub_226F49114(v12, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B89F8, &qword_2276715E8);
        sub_22766C450();
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A00, &qword_2276715F0);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B89F8, &qword_2276715E8);
      v21 = *(v20 - 8);
      v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_227670CD0;
      (*(v21 + 16))(v23 + v22, a1, v20);
      *v11 = v23;
      *(v11 + 8) = 0;
      v24 = sub_22766C4B0();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      v25 = sub_226EB9ED4(&qword_28139A060, type metadata accessor for RestrictionProfileRegistry, &protocol conformance descriptor for RestrictionProfileRegistry);
      v26 = swift_allocObject();
      v26[2] = a2;
      v26[3] = v25;
      v26[4] = a2;
      swift_retain_n();
      sub_2272CA940(0, 0, v6, &unk_227671600, v26);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A00, &qword_2276715F0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B89F8, &qword_2276715E8);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_227670CD0;
    (*(v15 + 16))(v17 + v16, a1, v14);
    v28 = v12;

    sub_22745F1DC(v17);
    v18 = *v11;
    *v11 = v28;
    v19 = *(v11 + 8);
    *(v11 + 8) = 0;
    sub_226F38F14(v18, v19);
  }
}

uint64_t sub_226F37090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B89F8, &qword_2276715E8);
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_226F37198;

  return sub_226F375C8();
}

uint64_t sub_226F37198(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_226F37444;
  }

  else
  {
    v5 = sub_226F372C4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_226F372C4()
{
  v1 = v0[4] + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state;
  v2 = *(v1 + 8);
  if (v2 >> 6)
  {
    goto LABEL_6;
  }

  v3 = *v1;
  *v1 = v0[10];
  *(v1 + 8) = 64;
  v4 = v3[2];
  if (v4)
  {
    v17 = v2;
    v5 = v0[6];
    v8 = *(v5 + 16);
    v6 = v5 + 16;
    v7 = v8;
    v16 = v3;
    v9 = v3 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v10 = *(v6 + 56);

    do
    {
      v11 = v0[10];
      v12 = v0[8];
      v13 = v0[5];
      v7(v12, v9, v13);
      v0[3] = v11;

      sub_22766C450();
      (*(v6 - 8))(v12, v13);
      v9 += v10;
      --v4;
    }

    while (v4);
    sub_226F38F14(v16, v17);
LABEL_6:

    goto LABEL_7;
  }

  sub_226F38F14(v3, v2);
LABEL_7:

  v14 = v0[1];

  return v14();
}

uint64_t sub_226F37444()
{
  v1 = *(v0 + 32) + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state;
  v2 = *(v1 + 8);
  v3 = *(v0 + 88);
  if (v2 >> 6)
  {
  }

  else
  {
    v4 = *v1;
    *v1 = v3;
    *(v1 + 8) = 65;
    v5 = v4[2];
    if (v5)
    {
      v21 = v2;
      v6 = *(v0 + 48);
      v20 = v4;
      v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v8 = *(v0 + 88);
      v11 = *(v6 + 16);
      v9 = v6 + 16;
      v10 = v11;
      v12 = *(v9 + 56);
      do
      {
        v13 = *(v0 + 88);
        v14 = *(v0 + 56);
        v15 = *(v0 + 40);
        v10(v14, v7, v15);
        *(v0 + 16) = v13;
        v16 = v13;
        sub_22766C440();
        (*(v9 - 8))(v14, v15);
        v7 += v12;
        --v5;
      }

      while (v5);
      v17 = *(v0 + 88);
      sub_226F38F14(v20, v21);
    }

    else
    {
      sub_226F38F14(v4, v2);
    }
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_226F375C8()
{
  v1[4] = v0;
  v2 = sub_22766B390();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_2276624A0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F37724, v0, 0);
}

uint64_t sub_226F37724()
{
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_2276623E0();
  v0[2] = 0;
  v3 = [v1 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:0 options:0 error:v0 + 2];

  v4 = v0[2];
  if (v3)
  {
    v5 = sub_22766C2C0();
    v6 = v4;

    v33 = *(v5 + 16);
    if (v33)
    {
      v7 = 0;
      v8 = v0[9];
      v32 = (v8 + 32);
      v9 = MEMORY[0x277D84F90];
      v31 = v5;
      do
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
        }

        v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v11 = *(v8 + 72);
        (*(v8 + 16))(v0[11], v5 + v10 + v11 * v7, v0[8]);
        sub_2276623D0();
        sub_227669E50();
        v12 = sub_22766C1B0();

        if (v12)
        {
          v13 = *v32;
          (*v32)(v0[10], v0[11], v0[8]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_226F1F548(0, *(v9 + 16) + 1, 1);
          }

          v15 = *(v9 + 16);
          v14 = *(v9 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_226F1F548((v14 > 1), v15 + 1, 1);
          }

          v16 = v0[10];
          v17 = v0[8];
          *(v9 + 16) = v15 + 1;
          v13(v9 + v10 + v15 * v11, v16, v17);
          v5 = v31;
        }

        else
        {
          (*(v8 + 8))(v0[11], v0[8]);
        }

        ++v7;
      }

      while (v33 != v7);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
    }

    v0[12] = v9;

    if (*(v9 + 16))
    {
      v20 = v0[6];
      v19 = v0[7];
      v21 = v0[4];
      v22 = v0[5];
      sub_22766A730();
      sub_22766B370();
      (*(v20 + 8))(v19, v22);
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8800, &qword_227671578);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8648, &qword_227671288);
      v25 = sub_226EB9ED4(&qword_28139A060, type metadata accessor for RestrictionProfileRegistry, &protocol conformance descriptor for RestrictionProfileRegistry);
      v26 = swift_task_alloc();
      v0[13] = v26;
      *(v26 + 16) = v9;
      *(v26 + 24) = v21;
      v27 = swift_task_alloc();
      v0[14] = v27;
      *v27 = v0;
      v27[1] = sub_226F37C28;

      return MEMORY[0x282200600](v0 + 3, v23, v24, v21, v25, &unk_227671588, v26, v23);
    }

    sub_226F3A080();
    swift_allocError();
    *v28 = 1;
  }

  else
  {
    v18 = v4;
    sub_2276622C0();
  }

  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_226F37C28()
{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](sub_226F37DA4, v1, 0);
}

uint64_t sub_226F37DA4()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16))
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {

    sub_226F3A080();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_226F37F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v6 = sub_227665680();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8808, &unk_227671590);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8800, &qword_227671578);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8810, &qword_2276715A0);
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v9 = sub_2276624A0();
  v4[28] = v9;
  v10 = *(v9 - 8);
  v4[29] = v10;
  v4[30] = *(v10 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F3819C, a4, 0);
}

uint64_t sub_226F3819C()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    v31 = **(v0 + 88);
    v4 = *(v3 + 16);
    v3 += 16;
    v30 = v4;
    v5 = *(v3 + 64);
    v6 = v1 + ((v5 + 32) & ~v5);
    v29 = (v5 + 40) & ~v5;
    v27 = (v3 - 8);
    v28 = (v3 + 16);
    v26 = *(v3 + 56);
    do
    {
      v34 = v2;
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v13 = *(v0 + 224);
      v14 = *(v0 + 192);
      v32 = *(v0 + 184);
      v33 = v6;
      v15 = *(v0 + 104);
      v30(v11);
      v16 = sub_22766C4B0();
      v17 = *(v16 - 8);
      (*(v17 + 56))(v14, 1, 1, v16);
      (v30)(v12, v11, v13);
      v18 = swift_allocObject();
      v18[2] = 0;
      v19 = v18 + 2;
      v18[3] = 0;
      v18[4] = v15;
      (*v28)(v18 + v29, v12, v13);
      sub_226E93170(v14, v32, &unk_27D7BC8E0, &qword_2276784C0);
      LODWORD(v11) = (*(v17 + 48))(v32, 1, v16);

      v20 = *(v0 + 184);
      if (v11 == 1)
      {
        sub_226E97D1C(*(v0 + 184), &unk_27D7BC8E0, &qword_2276784C0);
        if (*v19)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_22766C4A0();
        (*(v17 + 8))(v20, v16);
        if (*v19)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = sub_22766C420();
          v22 = v23;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_10:
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_2276715B8;
      *(v24 + 24) = v18;

      if (v22 | v21)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v21;
        *(v0 + 40) = v22;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 256);
      v9 = *(v0 + 224);
      v10 = *(v0 + 192);
      *(v0 + 48) = 1;
      *(v0 + 56) = v7;
      *(v0 + 64) = v31;
      swift_task_create();

      sub_226E97D1C(v10, &unk_27D7BC8E0, &qword_2276784C0);
      (*v27)(v8, v9);
      v6 = v33 + v26;
      v2 = v34 - 1;
    }

    while (v34 != 1);
  }

  *(v0 + 264) = **(v0 + 88);

  return MEMORY[0x2822009F8](sub_226F38560, 0, 0);
}

uint64_t sub_226F38560()
{
  sub_22766C470();
  v1 = MEMORY[0x277D84F98];
  v0[34] = MEMORY[0x277D84F98];
  v0[35] = v1;
  v2 = sub_226F48644();
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_226F38628;
  v4 = v0[25];
  v5 = v0[18];

  return MEMORY[0x282200308](v5, v4, v2);
}

uint64_t sub_226F38628()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[26];
    v3 = v2[27];
    v5 = v2[25];

    (*(v4 + 8))(v3, v5);

    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_226F3877C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226F3877C()
{
  v1 = *(v0 + 144);
  if ((*(*(v0 + 160) + 48))(v1, 1, *(v0 + 152)) == 1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 80);
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_226E97D1C(v1, &qword_27D7B8808, &unk_227671590);
    *v3 = v2;

    v4 = *(v0 + 8);

    return v4();
  }

  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  sub_226E95D18(v1, v6, &qword_27D7B8800, &qword_227671578);
  sub_226E93170(v6, v7, &qword_27D7B8800, &qword_227671578);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = *(v0 + 168);
    sub_226E97D1C(*(v0 + 176), &qword_27D7B8800, &qword_227671578);
    sub_226E97D1C(v10, &qword_27D7B8800, &qword_227671578);
    v11 = *(v0 + 272);
    goto LABEL_20;
  }

  v12 = *(v0 + 272);
  v14 = *(v0 + 128);
  v13 = *(v0 + 136);
  v15 = *(v0 + 112);
  v16 = *(v0 + 120);
  v17 = *(v16 + 32);
  v17(v13, *(v0 + 168), v15);
  v18 = sub_227665640();
  v20 = v19;
  (*(v16 + 16))(v14, v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 72) = v12;
  v22 = sub_226E921E4(v18, v20, MEMORY[0x277D53390], sub_226F3BBB0);
  v25 = *(v12 + 16);
  v26 = (v23 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
    goto LABEL_24;
  }

  v29 = v23;
  if (*(*(v0 + 272) + 24) >= v28)
  {
    v45 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = v22;
      sub_226FF0760();
      v22 = v31;
    }

    goto LABEL_16;
  }

  sub_226FE2C08(v28, isUniquelyReferenced_nonNull_native);
  v22 = sub_226E921E4(v18, v20, MEMORY[0x277D53390], sub_226F3BBB0);
  if ((v29 & 1) == (v30 & 1))
  {
    v45 = v17;
LABEL_16:
    v32 = *(v0 + 176);
    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v35 = *(v0 + 112);
    v36 = *(v0 + 120);
    if (v29)
    {
      v37 = v22;

      v38 = *(v0 + 72);
      (*(v36 + 40))(*(v38 + 56) + *(v36 + 72) * v37, v34, v35);
      (*(v36 + 8))(v33, v35);
      sub_226E97D1C(v32, &qword_27D7B8800, &qword_227671578);
      v11 = vdupq_n_s64(v38);
      goto LABEL_20;
    }

    v39 = *(v0 + 72);
    v39[(v22 >> 6) + 8] |= 1 << v22;
    v40 = (v39[6] + 16 * v22);
    *v40 = v18;
    v40[1] = v20;
    v45(v39[7] + *(v36 + 72) * v22, v34, v35);
    (*(v36 + 8))(v33, v35);
    v22 = sub_226E97D1C(v32, &qword_27D7B8800, &qword_227671578);
    v41 = v39[2];
    v27 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v27)
    {
      v39[2] = v42;
      v11 = vdupq_n_s64(v39);
LABEL_20:
      *(v0 + 272) = v11;
      v43 = sub_226F48644();
      v44 = swift_task_alloc();
      *(v0 + 288) = v44;
      *v44 = v0;
      v44[1] = sub_226F38628;
      v23 = *(v0 + 200);
      v22 = *(v0 + 144);
      v24 = v43;

      return MEMORY[0x282200308](v22, v23, v24);
    }

LABEL_24:
    __break(1u);
    return MEMORY[0x282200308](v22, v23, v24);
  }

  return sub_22766D220();
}

uint64_t sub_226F38C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_226F38CB0, a4, 0);
}

uint64_t sub_226F38CB0()
{
  *(v0 + 40) = sub_226F36A50();

  return MEMORY[0x2822009F8](sub_226F38D1C, 0, 0);
}

uint64_t sub_226F38D1C()
{
  v1 = sub_2276624C0();
  v3 = v2;
  v4 = sub_227665680();
  sub_226EB9ED4(&qword_28139B7E0, MEMORY[0x277D51898], &protocol conformance descriptor for RestrictionProfile);
  sub_227662210();
  sub_226EDC420(v1, v3);

  (*(*(v4 - 8) + 56))(*(v0 + 16), 0, 1, v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t RestrictionProfileRegistry.deinit()
{
  v1 = OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_profileStoreURL;
  v2 = sub_2276624A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_226F38F14(*(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state), *(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state + 8));

  swift_defaultActor_destroy();
  return v0;
}

void sub_226F38F14(void *result, unsigned __int8 a2)
{
  if (a2 >> 6 == 1)
  {
    sub_226F38F34(result, a2 & 1);
  }

  else if (!(a2 >> 6))
  {
  }
}

void sub_226F38F34(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t RestrictionProfileRegistry.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_profileStoreURL;
  v2 = sub_2276624A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_226F38F14(*(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state), *(v0 + OBJC_IVAR____TtC15SeymourServices26RestrictionProfileRegistry_state + 8));

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t RestrictionProfileRegistry.allProfiles()()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F390AC, v0, 0);
}

uint64_t sub_226F390AC(uint64_t a1)
{
  v3 = v1[5];
  v2 = v1[6];
  v4 = v1[3];
  v5 = v1[4];
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v2, v5);
  v6 = sub_226EB9ED4(&qword_28139A060, type metadata accessor for RestrictionProfileRegistry, &protocol conformance descriptor for RestrictionProfileRegistry);
  v7 = swift_task_alloc();
  v1[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8648, &qword_227671288);
  *v7 = v1;
  v7[1] = sub_226F3923C;
  v9 = v1[3];

  return MEMORY[0x2822008A0](v1 + 2, v4, v6, 0xD000000000000011, 0x8000000227693DA0, sub_226F39490, v9, v8);
}

uint64_t sub_226F3923C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_226F393E0;
  }

  else
  {
    v4 = sub_226F39368;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226F39368()
{
  v1 = sub_226F33CA4(*(v0 + 16));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_226F393E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for RestrictionProfileRegistry(uint64_t a1)
{
  result = qword_28139E808;
  if (!qword_28139E808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RestrictionProfileRegistry.profile(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_22766B390();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_227665680();
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F395B8, v3, 0);
}

uint64_t sub_226F395B8()
{
  v1 = *(v0 + 48);
  v2 = sub_226EB9ED4(&qword_28139A060, type metadata accessor for RestrictionProfileRegistry, &protocol conformance descriptor for RestrictionProfileRegistry);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8648, &qword_227671288);
  *v3 = v0;
  v3[1] = sub_226F396E4;
  v5 = *(v0 + 48);

  return MEMORY[0x2822008A0](v0 + 16, v1, v2, 0xD000000000000011, 0x8000000227693DA0, sub_226F49204, v5, v4);
}

uint64_t sub_226F396E4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_226F399F0;
  }

  else
  {
    v4 = sub_226F39810;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_226F39810()
{
  v1 = v0[2];
  if (*(v1 + 16) && (v2 = sub_226E921E4(v0[4], v0[5], MEMORY[0x277D53390], sub_226F3BBB0), (v3 & 1) != 0))
  {
    v5 = v0[11];
    v4 = v0[12];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[3];
    (*(v5 + 16))(v4, *(v1 + 56) + *(v5 + 72) * v2, v6);

    (*(v5 + 32))(v10, v4, v6);
    sub_22766A730();
    sub_22766B370();
    (*(v9 + 8))(v7, v8);

    v11 = v0[1];
  }

  else
  {

    sub_226F3A080();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

    v11 = v0[1];
  }

  return v11();
}

uint64_t sub_226F399F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226F39A60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226F39AF0;

  return RestrictionProfileRegistry.allProfiles()();
}

uint64_t sub_226F39AF0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_226F39BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E92F34;

  return RestrictionProfileRegistry.profile(for:)(a1, a2, a3);
}

uint64_t sub_226F39CA4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226F491F0;

  return v6(a1);
}

unint64_t sub_226F39D9C(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  if (a2)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
  }

  v4 = sub_22766D3F0();

  return sub_226F3BAE4(a1, a2, v4);
}

unint64_t sub_226F39E30(uint64_t a1)
{
  sub_2276694E0();
  v2 = MEMORY[0x277D53DA0];
  sub_226EB9ED4(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D53DA0], &qword_2813A54C8, v2, MEMORY[0x277D53DB0]);
}

unint64_t sub_226F39F04(uint64_t a1)
{
  sub_227665440();
  v2 = MEMORY[0x277D51640];
  sub_226EB9ED4(&qword_27D7B8660, MEMORY[0x277D51640], MEMORY[0x277D51648]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D51640], &qword_27D7B8668, v2, MEMORY[0x277D51658]);
}

unint64_t sub_226F3A080()
{
  result = qword_27D7B8650;
  if (!qword_27D7B8650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8650);
  }

  return result;
}

uint64_t dispatch thunk of RestrictionProfileRegistering.allProfiles()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226F17854;

  return v7(a1, a2);
}

uint64_t dispatch thunk of RestrictionProfileRegistering.profile(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_226E92F34;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_226F3A338(uint64_t a1)
{
  result = sub_2276624A0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices26RestrictionProfileRegistryC5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_226F3A440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_226F3A494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_226F3A4F8(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArchivedSessionsAddedOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArchivedSessionsAddedOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226F3A6A8()
{
  result = qword_27D7B8658;
  if (!qword_27D7B8658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B8658);
  }

  return result;
}

unint64_t sub_226F3A6FC(uint64_t a1)
{
  sub_227665F20();
  v2 = MEMORY[0x277D51FE0];
  sub_226EB9ED4(&unk_27D7BBD10, MEMORY[0x277D51FE0], MEMORY[0x277D51FE8]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D51FE0], &qword_27D7B8700, v2, MEMORY[0x277D51FF8]);
}

unint64_t sub_226F3A7D0(uint64_t a1)
{
  sub_227662B60();
  v2 = MEMORY[0x277D49490];
  sub_226EB9ED4(&qword_27D7B8938, MEMORY[0x277D49490], MEMORY[0x277D49498]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D49490], &qword_27D7B8940, v2, MEMORY[0x277D494A0]);
}

unint64_t sub_226F3A8A4(uint64_t a1)
{
  sub_227665680();
  v2 = MEMORY[0x277D51898];
  sub_226EB9ED4(&unk_28139B7E8, MEMORY[0x277D51898], MEMORY[0x277D518A0]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D51898], &qword_27D7B8900, v2, MEMORY[0x277D518A8]);
}

unint64_t sub_226F3A978(uint64_t a1)
{
  v1 = a1;
  sub_22766D370();
  MEMORY[0x22AA996B0](v1);
  v2 = sub_22766D3F0();

  return sub_226F3BC7C(v1, v2);
}

unint64_t sub_226F3AA2C(uint64_t a1)
{
  sub_2276639B0();
  v2 = MEMORY[0x277D501C8];
  sub_226EB9ED4(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D501C8], &qword_27D7B8678, v2, MEMORY[0x277D501D8]);
}

unint64_t sub_226F3AB00(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a4 & 1;
  sub_22766D370();
  sub_226F48338();
  sub_22766BF60();
  v8 = sub_22766D3F0();
  return sub_226F3BCEC(a1, a2, a3, v7, v8);
}

unint64_t sub_226F3ABA4(__int128 *a1)
{
  sub_22766D370();
  sub_226F482E4();
  sub_22766BF60();
  v2 = sub_22766D3F0();
  return sub_226F3BE00(a1, v2);
}

unint64_t sub_226F3AC48(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_22766D370();
  v6 = a2(a1);
  MEMORY[0x22AA996B0](v6);
  v7 = sub_22766D3F0();
  return sub_226F3BF80(a1, v7, a3);
}

unint64_t sub_226F3ACCC(uint64_t a1)
{
  sub_22766D370();
  v2 = *(a1 + 16);
  MEMORY[0x22AA996B0](v2);
  if (v2)
  {
    v3 = (a1 + 64);
    do
    {
      v4 = *(v3 - 2);
      v5 = *(v3 - 1);
      v6 = *v3;
      v3 += 40;

      sub_226EB396C(v4, v5, v6);
      sub_226F482E4();
      sub_22766BF60();

      sub_226EB2DFC(v4, v5, v6);
      --v2;
    }

    while (v2);
  }

  v7 = sub_22766D3F0();
  return sub_226F3C03C(a1, v7);
}

unint64_t sub_226F3ADC4(uint64_t a1)
{
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  sub_226EB9ED4(&qword_27D7B88D0, MEMORY[0x277D52730], MEMORY[0x277D52738]);
  sub_227663B10();
  v2 = sub_22766D3F0();

  return sub_226F3C2A0(a1, v2);
}

uint64_t sub_226F3AE8C(uint64_t a1)
{
  sub_22766D370();
  v2 = *(a1 + 16);
  MEMORY[0x22AA996B0](v2);
  if (v2)
  {
    sub_226F480FC();
    v3 = a1 + 48;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
      sub_227663B10();
      v3 += 24;
      --v2;
    }

    while (v2);
  }

  v4 = sub_22766D3F0();
  return sub_226F3C498(a1, v4);
}

unint64_t sub_226F3AF78(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3 & 1;
  sub_22766D370();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
  sub_226F480FC();
  sub_227663B10();
  v6 = sub_22766D3F0();
  return sub_226F3C61C(a1, a2, v5, v6);
}

unint64_t sub_226F3B058(uint64_t a1)
{
  sub_2276624A0();
  v2 = MEMORY[0x277CC9260];
  sub_226EB9ED4(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277CC9260], &qword_28139BDD8, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_226F3B12C(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_22766D3A0();
  if (a2)
  {
    sub_22766C100();
  }

  v4 = sub_22766D3F0();

  return sub_226F3BAE4(a1, a2, v4);
}

unint64_t sub_226F3B28C(uint64_t a1)
{
  sub_227668BB0();
  v2 = MEMORY[0x277D537B0];
  sub_226EB9ED4(&qword_27D7B8730, MEMORY[0x277D537B0], MEMORY[0x277D537B8]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D537B0], &qword_27D7B8738, v2, MEMORY[0x277D537C0]);
}

unint64_t sub_226F3B360(char a1)
{
  sub_22766D370();
  sub_227665A80();
  sub_22766C100();

  v2 = sub_22766D3F0();

  return sub_226F3C7F4(a1 & 1, v2);
}

unint64_t sub_226F3B3E8(uint64_t a1)
{
  sub_2276638D0();
  v2 = MEMORY[0x277D50180];
  sub_226EB9ED4(&qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D50180], &qword_27D7B8920, v2, MEMORY[0x277D50190]);
}

unint64_t sub_226F3B4BC(uint64_t a1)
{
  v1 = a1;
  sub_22766D370();
  sub_22766C100();

  v2 = sub_22766D3F0();

  return sub_226F3C8F8(v1, v2);
}

unint64_t sub_226F3B5B8(uint64_t a1)
{
  sub_22766C000();
  sub_22766D370();
  sub_22766C100();
  v2 = sub_22766D3F0();

  return sub_226F3CAA4(a1, v2);
}

unint64_t sub_226F3B648(uint64_t a1)
{
  v1 = a1;
  sub_22766D370();
  sub_22766C100();

  v2 = sub_22766D3F0();

  return sub_226F3CBA8(v1, v2);
}

unint64_t sub_226F3B74C(uint64_t a1)
{
  v2 = sub_2276627D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_22766D370();
  sub_226E93170(a1, v8, &unk_27D7BB9D0, &qword_227671550);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_22766D3A0();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_22766D3A0();
    sub_226EB9ED4(&qword_28139BDA0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_22766BF60();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_22766D3F0();
  return sub_226F3CDD4(a1, v9);
}

unint64_t sub_226F3B95C(uint64_t a1)
{
  v2 = BYTE1(a1);
  sub_22766D370();
  sub_2274E2FEC(a1);
  sub_22766C100();

  sub_2275E0328(v2);
  sub_22766C100();

  v3 = sub_22766D3F0();

  return sub_226F3D250(a1, v3);
}

unint64_t sub_226F3BA10(uint64_t a1)
{
  sub_227663480();
  v2 = MEMORY[0x277D4FF88];
  sub_226EB9ED4(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  v3 = sub_22766BF50();
  return sub_226F3D3D4(a1, v3, MEMORY[0x277D4FF88], &qword_27D7B89E0, v2, MEMORY[0x277D4FF98]);
}

unint64_t sub_226F3BAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_22766D190() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_226F3BBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {

      v7 = sub_227667E00();

      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_226F3BC7C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_226F3BCEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    do
    {
      if (*(*(v5 + 48) + 32 * v7) == a1)
      {
        sub_226F48150();
        sub_226EC1E18();
        if (sub_227663B20())
        {
          break;
        }
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_226F3BE00(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v14 = a1[1];
    do
    {
      v7 = *(v2 + 48) + 40 * v4;
      if (*v7 == v6)
      {
        v9 = *(v7 + 8);
        v8 = *(v7 + 16);
        v10 = *(v7 + 24);
        v11 = *(v7 + 32);

        sub_226EB396C(v8, v10, v11);
        if (sub_227033E88(v9, v14))
        {
          sub_226F48150();
          sub_226EC1E18();
          v12 = sub_227663B20();

          sub_226EB2DFC(v8, v10, v11);
          if (v12)
          {
            return v4;
          }
        }

        else
        {

          sub_226EB2DFC(v8, v10, v11);
        }
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226F3BF80(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = a3(*(*(v3 + 48) + v5));
      if (v9 == a3(a1))
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_226F3C03C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + 64;
  v5 = -1 << *(v2 + 32);
  result = a2 & ~v5;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = *(a1 + 16);
    v27 = v8;
    v28 = a1;
    v23 = ~v5;
    while (1)
    {
      v9 = *(*(v2 + 48) + 8 * result);
      if (*(v9 + 16) == v8)
      {
        break;
      }

LABEL_5:
      result = (result + 1) & v7;
      if (((*(v4 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v8 && v9 != a1)
    {
      v26 = result;

      v10 = 0;
      v11 = 0;
      v29 = v9;
      while (v11 < *(v9 + 16))
      {
        if (v8 == v11)
        {
          goto LABEL_20;
        }

        v12 = v9 + v10;
        v13 = a1 + v10;
        if (*(v9 + v10 + 32) != *(a1 + v10 + 32))
        {
          goto LABEL_4;
        }

        v15 = *(v12 + 40);
        v14 = *(v12 + 48);
        v16 = *(v12 + 56);
        v17 = *(v12 + 64);
        v18 = *(v13 + 40);
        v19 = *(v13 + 48);
        v20 = *(v13 + 56);
        v21 = *(v13 + 64);

        sub_226EB396C(v14, v16, v17);

        sub_226EB396C(v19, v20, v21);
        if ((sub_227033E88(v15, v18) & 1) == 0)
        {

          sub_226EB2DFC(v19, v20, v21);

          sub_226EB2DFC(v14, v16, v17);
          v8 = v27;
          a1 = v28;
LABEL_4:

          v2 = v25;
          result = v26;
          v7 = v23;
          v4 = v24;
          goto LABEL_5;
        }

        sub_226F48150();
        v30 = v17;
        sub_226EC1E18();
        v22 = sub_227663B20();

        sub_226EB2DFC(v19, v20, v21);

        result = sub_226EB2DFC(v14, v16, v30);
        v8 = v27;
        a1 = v28;
        v9 = v29;
        if ((v22 & 1) == 0)
        {
          goto LABEL_4;
        }

        ++v11;
        v10 += 40;
        if (v27 == v11)
        {

          return v26;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_226F3C2A0(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v16 - v6;
  v16[0] = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = v2 + 64;
    v11 = ~v8;
    v12 = *(v5 + 72);
    do
    {
      sub_226E93170(*(v16[0] + 48) + v12 * v9, v7, &qword_27D7B88C0, &unk_22767A720);
      sub_227666900();
      v13 = MEMORY[0x277D52730];
      sub_226EB9ED4(&qword_27D7B88D8, MEMORY[0x277D52730], MEMORY[0x277D52740]);
      sub_226EB9ED4(&qword_27D7B88E0, v13, MEMORY[0x277D52748]);
      v14 = sub_227663B20();
      sub_226E97D1C(v7, &qword_27D7B88C0, &unk_22767A720);
      if (v14)
      {
        break;
      }

      v9 = (v9 + 1) & v11;
    }

    while (((*(v10 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_226F3C498(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = ~v4;
  v7 = *(a1 + 16);
  v8 = a1 + 48;
  v15 = a1;
  v13 = a1 + 48;
  v14 = ~v4;
  while (1)
  {
    v9 = *(*(v2 + 48) + 8 * v5);
    if (*(v9 + 16) == v7)
    {
      break;
    }

LABEL_4:
    v5 = (v5 + 1) & v6;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if (!v7 || v9 == a1)
  {
    return v5;
  }

  v11 = 0;
  v12 = v9 + 48;
  while (v11 < *(v9 + 16))
  {
    if (v7 == v11)
    {
      goto LABEL_16;
    }

    sub_226F48150();
    sub_226EC1E18();
    result = sub_227663B20();
    if ((result & 1) == 0)
    {

      v3 = v2 + 64;
      a1 = v15;
      v8 = v13;
      v6 = v14;
      goto LABEL_4;
    }

    ++v11;
    v8 += 24;
    v12 += 24;
    if (v7 == v11)
    {

      return v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_226F3C61C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_226F48150();
    sub_226EC1E18();
    do
    {
      if (sub_227663B20())
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_226F3C728(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_226E99364(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_22766CB30();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_226F3C7F4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_227665A80();
      v8 = v7;
      if (v6 == sub_227665A80() && v8 == v9)
      {
        break;
      }

      v11 = sub_22766D190();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3C8F8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v21 + 48) + v4);
      v7 = 0xD000000000000012;
      v8 = v6 == 2 ? 0xD000000000000012 : 0xD000000000000010;
      v9 = v6 == 2 ? 0x8000000227692380 : 0x80000002276923A0;
      v10 = *(*(v21 + 48) + v4) ? 0xED000065726F6353 : 0xEF79636E6574614CLL;
      v11 = *(*(v21 + 48) + v4) <= 1u ? 0x646C6F6666616373 : v8;
      v12 = *(*(v21 + 48) + v4) <= 1u ? v10 : v9;
      if (v5 == 2)
      {
        v13 = 0x8000000227692380;
      }

      else
      {
        v7 = 0xD000000000000010;
        v13 = 0x80000002276923A0;
      }

      v14 = v5 ? 0xED000065726F6353 : 0xEF79636E6574614CLL;
      v15 = v5 <= 1 ? 0x646C6F6666616373 : v7;
      v16 = v5 <= 1 ? v14 : v13;
      if (v11 == v15 && v12 == v16)
      {
        break;
      }

      v17 = sub_22766D190();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v20 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3CAA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22766C000();
      v8 = v7;
      if (v6 == sub_22766C000() && v8 == v9)
      {
        break;
      }

      v11 = sub_22766D190();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3CBA8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = 0xD000000000000012;
      v8 = v6 == 2 ? 0xD000000000000012 : 0xD000000000000010;
      v9 = v6 == 2 ? 0x8000000227692380 : 0x80000002276923A0;
      v10 = *(*(v23 + 48) + v4) ? 0x726F63536E616C70 : 0x6574614C6E616C70;
      v11 = *(*(v23 + 48) + v4) ? 0xE900000000000065 : 0xEB0000000079636ELL;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = *(*(v23 + 48) + v4) <= 1u ? v11 : v9;
      if (v5 == 2)
      {
        v14 = 0x8000000227692380;
      }

      else
      {
        v7 = 0xD000000000000010;
        v14 = 0x80000002276923A0;
      }

      v15 = v5 ? 0x726F63536E616C70 : 0x6574614C6E616C70;
      v16 = v5 ? 0xE900000000000065 : 0xEB0000000079636ELL;
      v17 = v5 <= 1 ? v15 : v7;
      v18 = v5 <= 1 ? v16 : v14;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = sub_22766D190();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_226F3CD68(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_226F3CDD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_2276627D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8748, &qword_227671558);
  MEMORY[0x28223BE20](v37);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9D0, &qword_227671550) - 8;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v39 = v3;
  v16 = -1 << *(v3 + 32);
  v17 = a2 & ~v16;
  v36 = v3 + 64;
  if ((*(v3 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = (v6 + 48);
    v20 = *(v12 + 72);
    v34 = v13;
    v35 = v20;
    v28 = (v6 + 48);
    v29 = (v6 + 32);
    v32 = (v6 + 8);
    v33 = ~v16;
    while (1)
    {
      sub_226E93170(*(v39 + 48) + v35 * v17, v15, &unk_27D7BB9D0, &qword_227671550);
      v21 = *(v37 + 48);
      sub_226E93170(v15, v9, &unk_27D7BB9D0, &qword_227671550);
      sub_226E93170(v38, &v9[v21], &unk_27D7BB9D0, &qword_227671550);
      v22 = *v19;
      if ((*v19)(v9, 1, v5) == 1)
      {
        break;
      }

      v23 = v34;
      sub_226E93170(v9, v34, &unk_27D7BB9D0, &qword_227671550);
      if (v22(&v9[v21], 1, v5) == 1)
      {
        sub_226E97D1C(v15, &unk_27D7BB9D0, &qword_227671550);
        (*v32)(v23, v5);
        v18 = v33;
LABEL_4:
        sub_226E97D1C(v9, &qword_27D7B8748, &qword_227671558);
        goto LABEL_5;
      }

      v24 = &v9[v21];
      v25 = v30;
      (*v29)(v30, v24, v5);
      sub_226EB9ED4(&qword_27D7B8750, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v31 = sub_22766BFB0();
      v26 = *v32;
      (*v32)(v25, v5);
      sub_226E97D1C(v15, &unk_27D7BB9D0, &qword_227671550);
      v26(v23, v5);
      v19 = v28;
      sub_226E97D1C(v9, &unk_27D7BB9D0, &qword_227671550);
      v18 = v33;
      if (v31)
      {
        return v17;
      }

LABEL_5:
      v17 = (v17 + 1) & v18;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return v17;
      }
    }

    sub_226E97D1C(v15, &unk_27D7BB9D0, &qword_227671550);
    if (v22(&v9[v21], 1, v5) == 1)
    {
      sub_226E97D1C(v9, &unk_27D7BB9D0, &qword_227671550);
      return v17;
    }

    goto LABEL_4;
  }

  return v17;
}

unint64_t sub_226F3D250(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = a1;
    v6 = ~v3;
    v7 = BYTE1(a1);
    do
    {
      v8 = (*(v2 + 48) + 2 * v4);
      v9 = v8[1];
      v10 = sub_2274E2FEC(*v8);
      v12 = v11;
      if (v10 == sub_2274E2FEC(v5) && v12 == v13)
      {
      }

      else
      {
        v15 = sub_22766D190();

        if ((v15 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v16 = sub_2275E0328(v9);
      v18 = v17;
      if (v16 == sub_2275E0328(v7) && v18 == v19)
      {

        return v4;
      }

      v21 = sub_22766D190();

      if (v21)
      {
        return v4;
      }

LABEL_3:
      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_226F3D3D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_226EB9ED4(v24, v25, v26);
      v20 = sub_22766BFB0();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_226F3D574()
{
  sub_22766D370();
  sub_22766C100();
  v0 = sub_22766D3F0();
  return sub_226F3D5DC(v0);
}

uint64_t sub_226F3DB10(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x22AA98980](v7, a3, v8);
  v14 = result;
  if (v7)
  {
    v10 = (a1 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      a4(v13, v12, v11);

      v10 += 2;
      --v7;
    }

    while (v7);
    return v14;
  }

  return result;
}

uint64_t sub_226F3DDAC(uint64_t a1)
{
  v2 = type metadata accessor for SyncEncryptionKey(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v28 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = *(a1 + 16);
  v31 = sub_226EB9ED4(&qword_27D7B87E0, type metadata accessor for SyncEncryptionKey, &unk_227684598);
  v12 = MEMORY[0x22AA98980](v11, v2);
  v32 = v11;
  if (v11)
  {
    v13 = 0;
    v30 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v34 = *(v3 + 72);
    do
    {
      v33 = v13;
      sub_226F48E08(v30 + v34 * v13, v10, type metadata accessor for SyncEncryptionKey);
      sub_22766D370();
      sub_22766BF60();
      v16 = sub_22766D3F0();
      v17 = -1 << *(v12 + 32);
      v18 = v16 & ~v17;
      if (((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
LABEL_3:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v29;
        sub_226F48E08(v10, v29, type metadata accessor for SyncEncryptionKey);
        v37 = v12;
        sub_2270DA230(v15, v18, isUniquelyReferenced_nonNull_native);
        v12 = v37;
        goto LABEL_4;
      }

      v19 = ~v17;
      while (1)
      {
        sub_226F48E08(*(v12 + 48) + v18 * v34, v5, type metadata accessor for SyncEncryptionKey);
        sub_2276694E0();
        sub_226EB9ED4(&qword_28139B260, MEMORY[0x277D53DA0], MEMORY[0x277D53DB8]);
        sub_22766C290();
        sub_22766C290();
        if (v37 == v35 && v38 == v36)
        {
          break;
        }

        v21 = sub_22766D190();

        if (v21)
        {
          goto LABEL_16;
        }

LABEL_8:
        sub_226F48E70(v5, type metadata accessor for SyncEncryptionKey);
        v18 = (v18 + 1) & v19;
        if (((*(v12 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_16:
      if ((MEMORY[0x22AA977A0](&v5[*(v2 + 20)], &v10[*(v2 + 20)]) & 1) == 0)
      {
        goto LABEL_8;
      }

      v22 = *(v2 + 24);
      v23 = *&v5[v22];
      v24 = *&v5[v22 + 8];
      v25 = &v10[v22];
      v26 = v23 == *v25 && v24 == *(v25 + 1);
      if (!v26 && (sub_22766D190() & 1) == 0 || (sub_2276627A0() & 1) == 0)
      {
        goto LABEL_8;
      }

      sub_226F48E70(v5, type metadata accessor for SyncEncryptionKey);
LABEL_4:
      sub_226F48E70(v10, type metadata accessor for SyncEncryptionKey);
      v13 = v33 + 1;
    }

    while (v33 + 1 != v32);
  }

  return v12;
}

uint64_t sub_226F3E1C0(uint64_t a1)
{
  v2 = sub_2276694E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A54D0, MEMORY[0x277D53DA0], MEMORY[0x277D53DA8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270ADB0C(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3E35C(uint64_t a1)
{
  v2 = type metadata accessor for SyncZoneChangeWindow(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139A518, type metadata accessor for SyncZoneChangeWindow, &unk_227687858);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_226F48E08(v12, v5, type metadata accessor for SyncZoneChangeWindow);
      sub_2270ADDEC(v8, v5);
      sub_226F48E70(v8, type metadata accessor for SyncZoneChangeWindow);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_226F3E51C(uint64_t a1)
{
  v2 = type metadata accessor for DirtySyncZone(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139B080, type metadata accessor for DirtySyncZone, &unk_22767D880);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_226F48E08(v12, v5, type metadata accessor for DirtySyncZone);
      sub_2270AE4A0(v8, v5);
      sub_226F48E70(v8, type metadata accessor for DirtySyncZone);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_226F3E6A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2270AE890(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_226F3E770(uint64_t a1)
{
  v2 = sub_227664140();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B9C0, MEMORY[0x277D506C0], MEMORY[0x277D506C8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270AEA04(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3E90C(uint64_t a1)
{
  v2 = sub_227668480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B84C8, MEMORY[0x277D534C8], MEMORY[0x277D534D0]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270AECE4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3EAA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F4906C();
  result = MEMORY[0x22AA98980](v2, MEMORY[0x277D537D8], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226EE2880(v7, v6, v8);
      sub_2270AEFC4(v9, v7, v6, v8);
      sub_226EE2898(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F3EB50(uint64_t a1)
{
  v2 = sub_2276653A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B88B8, MEMORY[0x277D51610], MEMORY[0x277D51618]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270AF194(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3ECEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
  v4 = sub_226EB6150(&qword_27D7B88F0, &qword_27D7B88E8, &qword_2276715D0, sub_226F488B4);
  result = MEMORY[0x22AA98980](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_226EB396C(v9, v8, *v6);
      sub_2270AF474(v10, v9, v8, v7);
      sub_226EB2DFC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_226F3EDD8(uint64_t a1)
{
  v2 = sub_227663A30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139BC90, MEMORY[0x277D50278], MEMORY[0x277D50280]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270AF674(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3EF74(uint64_t a1)
{
  v2 = sub_227666BF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A5660, MEMORY[0x277D528B8], MEMORY[0x277D528C0]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270AFB54(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3F110(uint64_t a1)
{
  v2 = sub_227663AB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B89F0, MEMORY[0x277D502D0], MEMORY[0x277D502D8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270AFE34(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3F2AC(uint64_t a1)
{
  v2 = sub_227663E50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B8688, MEMORY[0x277D50520], MEMORY[0x277D50528]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B0114(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3F448(uint64_t a1)
{
  v2 = sub_2276655A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B8690, MEMORY[0x277D51730], MEMORY[0x277D51738]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B03F4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3F5E4(uint64_t a1)
{
  v2 = sub_227664650();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B8698, MEMORY[0x277D50A68], MEMORY[0x277D50A70]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B06D4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3F780(uint64_t a1)
{
  v2 = sub_227663610();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B86A0, MEMORY[0x277D4FFF0], MEMORY[0x277D4FFF8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B09B4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3F91C(uint64_t a1)
{
  v2 = sub_227663680();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B86A8, MEMORY[0x277D50018], MEMORY[0x277D50020]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B0C94(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3FAB8(uint64_t a1)
{
  v2 = sub_227663350();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B86B0, MEMORY[0x277D4FEC8], MEMORY[0x277D4FED0]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B0F74(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3FC54(uint64_t a1)
{
  v2 = sub_227663C90();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B86B8, MEMORY[0x277D503E8], MEMORY[0x277D503F0]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B1254(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3FDF0(uint64_t a1)
{
  v2 = sub_227664E20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_2813A5750, MEMORY[0x277D51068], MEMORY[0x277D51070]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B1534(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F3FF8C(uint64_t a1)
{
  v2 = sub_2276639B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139BCA8, MEMORY[0x277D501C8], MEMORY[0x277D501D0]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B1814(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F40128(uint64_t a1)
{
  v2 = sub_2276687D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B498, MEMORY[0x277D535A0], MEMORY[0x277D535A8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B1AF4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F402C4(uint64_t a1)
{
  v2 = sub_2276668A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B620, MEMORY[0x277D526D0], MEMORY[0x277D526D8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B1DD4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F40460(uint64_t a1)
{
  v2 = sub_227666070();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139B6D0, MEMORY[0x277D52038], MEMORY[0x277D52040]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B20B4(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F405FC(uint64_t a1)
{
  v2 = sub_227663180();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139BD58, MEMORY[0x277D4FCA8], MEMORY[0x277D4FCB0]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B2394(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F40798(uint64_t a1)
{
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139BDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B2674(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F40934(uint64_t a1)
{
  v2 = sub_227663480();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_2813A5800, MEMORY[0x277D4FF88], MEMORY[0x277D4FF90]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B2954(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F40AD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_226F48B00();
  result = MEMORY[0x22AA98980](v2, &type metadata for BookmarkCatalogFilterProperty, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_226F04958(v7, v6, v8);
      sub_2270B31F4(v9, v7, v6, v8);
      sub_226EE28B0(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_226F40B78(uint64_t a1)
{
  v2 = sub_2276638D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A57E8, MEMORY[0x277D50180], MEMORY[0x277D50188]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B34E8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F40D14(uint64_t a1)
{
  v2 = sub_227667780();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_2813A55D0, MEMORY[0x277D52F78], MEMORY[0x277D52F80]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B37C8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F40EB0(uint64_t a1)
{
  v2 = sub_227664530();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A57C0, MEMORY[0x277D50978], MEMORY[0x277D50980]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B3AA8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F4104C(uint64_t a1)
{
  v2 = sub_227667C20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139B4E0, MEMORY[0x277D531E0], MEMORY[0x277D531E8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B4068(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F411E8(uint64_t a1)
{
  v2 = sub_227666170();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A56C0, MEMORY[0x277D520D0], MEMORY[0x277D520D8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B4348(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F41384(uint64_t a1)
{
  v2 = sub_227669040();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A5518, MEMORY[0x277D539C0], MEMORY[0x277D539C8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B4628(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F41520(uint64_t a1)
{
  v2 = sub_2276646D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B8980, MEMORY[0x277D50B18], MEMORY[0x277D50B20]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B4908(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F416BC(uint64_t a1)
{
  v2 = sub_2276632A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139BD28, MEMORY[0x277D4FE80], MEMORY[0x277D4FE88]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B4BE8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F41858(uint64_t a1)
{
  v2 = sub_227664EB0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139B8B8, MEMORY[0x277D51130], MEMORY[0x277D51138]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B4EC8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F41A58(uint64_t a1)
{
  v2 = sub_2276640A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B9E0, MEMORY[0x277D50678], MEMORY[0x277D50680]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B51F8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F41BF4(uint64_t a1)
{
  v2 = sub_227664AA0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A5788, MEMORY[0x277D50CD0], MEMORY[0x277D50CD8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B54D8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F41D90(uint64_t a1)
{
  v2 = sub_2276650A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_2813A5738, MEMORY[0x277D51330], MEMORY[0x277D51338]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B57B8(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F41F2C(uint64_t a1)
{
  v2 = sub_227669580();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139B208, MEMORY[0x277D53E88], MEMORY[0x277D53E90]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B5A98(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F420C8(uint64_t a1)
{
  v2 = sub_227666330();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_28139B698, MEMORY[0x277D522A0], MEMORY[0x277D522A8]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B5D78(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F42264(uint64_t a1)
{
  v2 = sub_227666980();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B86C8, MEMORY[0x277D52758], MEMORY[0x277D52760]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B6058(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F42400(uint64_t a1)
{
  v2 = sub_227664A10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&qword_27D7B86C0, MEMORY[0x277D50C78], MEMORY[0x277D50C80]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B6338(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_226F4259C(uint64_t a1)
{
  v2 = sub_2276633A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_226EB9ED4(&unk_28139BCF8, MEMORY[0x277D4FF18], MEMORY[0x277D4FF20]);
  result = MEMORY[0x22AA98980](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_2270B6618(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}