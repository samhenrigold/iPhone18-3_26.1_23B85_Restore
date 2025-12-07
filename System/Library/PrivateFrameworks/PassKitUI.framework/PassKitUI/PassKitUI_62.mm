uint64_t sub_1BD6942C0()
{
  v1 = v0;
  v2 = *(v0 + 296);
  v4 = *(v1 + 280);
  v3 = *(v1 + 288);
  sub_1BD6956F4(v4);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v12 = *(v1 + 280);
    *(v1 + 312), v5, v6, v7, v8, v9, v10, v11;
    sub_1BD0DE53C(v12, &qword_1EBD4F738, qword_1BE0EDB78);
LABEL_16:

    v96 = *(v1 + 8);

    return v96();
  }

  v13 = *(v1 + 272);
  v97 = *(v1 + 264);
  v15 = *(v1 + 248);
  v14 = *(v1 + 256);
  v98 = *(v1 + 240);
  v99 = *(v1 + 232);
  v101 = *(v1 + 224);
  (*(*(v1 + 296) + 32))(*(v1 + 304), *(v1 + 280), *(v1 + 288));
  sub_1BE04DB94();
  v16 = sub_1BE04DB74();
  v18 = v17;
  v19 = *(v14 + 8);
  v19(v13, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 16) = v16;
  *(v1 + 24) = v18;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BE04DB94();
  v20 = sub_1BE04DB64();
  v22 = v21;
  v19(v13, v15);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 32) = v20;
  *(v1 + 40) = v22;
  sub_1BE048964();
  sub_1BE04D8C4();
  sub_1BE04DB94();
  sub_1BE04DAF4();
  v19(v97, v15);
  v23 = (*(v99 + 88))(v98, v101);
  if (v23 == *MEMORY[0x1E6997D28])
  {
    *(v1 + 312), v24, v25, v26, v27, v28, v29, v30;
    sub_1BD0E5E8C(0, qword_1EBD4F790, 0x1E69DCAB8);
    if (qword_1EBD370F0 != -1)
    {
      swift_once();
    }

    v31 = *(v1 + 296);
    v32 = *(v1 + 304);
    v33 = *(v1 + 288);
    v34 = *(v1 + 232);
    v100 = *(v1 + 224);
    v102 = *(v1 + 240);
    v35 = *(v1 + 184);
    v36 = *(v1 + 192);
    v37 = *(v1 + 176);
    v38 = __swift_project_value_buffer(v37, qword_1EBDAB9D8);
    (*(v35 + 16))(v36, v38, v37);
    v39 = sub_1BE052FF4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 80) = v39;
    sub_1BE048964();
    sub_1BE04D8C4();
    (*(v31 + 8))(v32, v33);
    (*(v34 + 8))(v102, v100);
    goto LABEL_16;
  }

  if (v23 == *MEMORY[0x1E6997D30])
  {
    v103 = *(v1 + 304);
    v40 = *(v1 + 288);
    v41 = *(v1 + 296);
    v43 = *(v1 + 232);
    v42 = *(v1 + 240);
    v44 = *(v1 + 216);
    v45 = *(v1 + 224);
    v47 = *(v1 + 200);
    v46 = *(v1 + 208);
    *(v1 + 312), v24, v25, v26, v27, v28, v29, v30;
    (*(v43 + 96))(v42, v45);
    (*(v46 + 32))(v44, v42, v47);
    sub_1BE04DB04();
    v49 = v48;
    v50 = sub_1BE052404();
    v49, v51, v52, v53, v54, v55, v56, v57;
    PKUIScreenScale();
    v58 = PKIconForApplicationIdentifier();

    swift_getKeyPath();
    swift_getKeyPath();
    *(v1 + 88) = v58;
    sub_1BE048964();
    sub_1BE04D8C4();
    (*(v46 + 8))(v44, v47);
    (*(v41 + 8))(v103, v40);
    goto LABEL_16;
  }

  if (v23 != *MEMORY[0x1E6997D38])
  {
    v79 = *(v1 + 312);
    v80 = *(v1 + 232);
    v81 = *(v1 + 240);
    v82 = *(v1 + 224);
    (*(*(v1 + 296) + 8))(*(v1 + 304), *(v1 + 288));
    v79, v83, v84, v85, v86, v87, v88, v89;
    (*(v80 + 8))(v81, v82);
    goto LABEL_16;
  }

  v59 = *(v1 + 240);
  v61 = *(v1 + 160);
  v60 = *(v1 + 168);
  v62 = *(v1 + 152);
  (*(*(v1 + 232) + 96))(v59, *(v1 + 224));
  (*(v61 + 32))(v60, v59, v62);
  v63 = sub_1BE04DB24();
  v65 = v64;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v1 + 48) = v63;
  *(v1 + 56) = v65;
  sub_1BE048964();
  sub_1BE04D8C4();
  v66 = sub_1BE04DB34();
  *(v1 + 336) = v66;
  *(v1 + 344) = v67;
  if (!v67)
  {
    v90 = *(v1 + 304);
    v91 = *(v1 + 288);
    v92 = *(v1 + 296);
    v94 = *(v1 + 160);
    v93 = *(v1 + 168);
    v95 = *(v1 + 152);
    *(v1 + 312), 0, v68, v69, v70, v71, v72, v73;
    (*(v94 + 8))(v93, v95);
    (*(v92 + 8))(v90, v91);
    goto LABEL_16;
  }

  v74 = v66;
  v75 = v67;
  sub_1BE048C84();
  v76 = swift_task_alloc();
  *(v1 + 352) = v76;
  *v76 = v1;
  v76[1] = sub_1BD6949BC;
  v77 = *(v1 + 144);

  return sub_1BD5A8D1C(v77, v74, v75);
}

uint64_t sub_1BD6949BC()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v10 = *(v2 + 320);
    v11 = *(v2 + 328);
    v12 = sub_1BD694D6C;
  }

  else
  {
    *(v2 + 344), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 320);
    v11 = *(v2 + 328);
    v12 = sub_1BD694AD8;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD694AD8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = *(v8 + 136);
  v9 = *(v8 + 144);
  v11 = *(v8 + 128);
  *(v8 + 312), a2, a3, a4, a5, a6, a7, a8;
  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v8 + 64) = v13;
  *(v8 + 72) = v12;
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE04D8C4();
  v27 = [objc_allocWithZone(MEMORY[0x1E69B8998]) init];
  sub_1BD0DE19C(v9 + *(v10 + 24), v11, &unk_1EBD3CF70, &qword_1BE0BA000);
  v14 = sub_1BE04AA64();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v11, 1, v14) != 1)
  {
    v17 = *(v8 + 128);
    v16 = sub_1BE04A9C4();
    (*(v15 + 8))(v17, v14);
  }

  v18 = *(v8 + 296);
  v26 = *(v8 + 304);
  v19 = *(v8 + 288);
  v20 = *(v8 + 160);
  v21 = *(v8 + 168);
  v23 = *(v8 + 144);
  v22 = *(v8 + 152);
  [v27 setFallbackLogoImageURL_];

  sub_1BD69706C(v23);
  sub_1BD697CC0(v23);
  (*(v20 + 8))(v21, v22);
  (*(v18 + 8))(v26, v19);

  v24 = *(v8 + 8);

  return v24();
}

uint64_t sub_1BD694D6C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v74 = v8;
  v9 = *(v8 + 360);
  v10 = *(v8 + 344);
  *(v8 + 312), a2, a3, a4, a5, a6, a7, a8;
  sub_1BE04D1E4();
  sub_1BE048C84();
  v11 = v9;
  v12 = sub_1BE04D204();
  v13 = sub_1BE052C34();
  v10, v14, v15, v16, v17, v18, v19, v20;

  v21 = os_log_type_enabled(v12, v13);
  v22 = *(v8 + 360);
  v23 = *(v8 + 344);
  if (v21)
  {
    v24 = *(v8 + 336);
    v69 = *(v8 + 288);
    v71 = *(v8 + 304);
    v66 = *(v8 + 168);
    v67 = *(v8 + 296);
    v64 = *(v8 + 160);
    v65 = *(v8 + 152);
    v25 = *(v8 + 112);
    v62 = *(v8 + 104);
    v63 = *(v8 + 120);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v73 = v28;
    *v26 = 136315394;
    v29 = sub_1BD123690(v24, v23, &v73);
    v23, v30, v31, v32, v33, v34, v35, v36;
    *(v26 + 4) = v29;
    *(v26 + 12) = 2112;
    v37 = v22;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v38;
    *v27 = v38;
    _os_log_impl(&dword_1BD026000, v12, v13, "Failed to download web presentment branding with identifier: '%s' %@", v26, 0x16u);
    sub_1BD0DE53C(v27, &unk_1EBD3E590, &unk_1BE0B7E50);
    MEMORY[0x1BFB45F20](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28, v39, v40, v41, v42, v43, v44, v45);
    MEMORY[0x1BFB45F20](v28, -1, -1);
    MEMORY[0x1BFB45F20](v26, -1, -1);

    (*(v25 + 8))(v63, v62);
    (*(v64 + 8))(v66, v65);
    (*(v67 + 8))(v71, v69);
  }

  else
  {
    v46 = *(v8 + 296);
    v70 = *(v8 + 288);
    v72 = *(v8 + 304);
    v47 = *(v8 + 160);
    v68 = *(v8 + 168);
    v48 = *(v8 + 152);
    v49 = *(v8 + 360);
    v50 = *(v8 + 112);
    v51 = *(v8 + 120);
    v52 = *(v8 + 104);

    v23, v53, v54, v55, v56, v57, v58, v59;
    (*(v50 + 8))(v51, v52);
    (*(v47 + 8))(v68, v48);
    (*(v46 + 8))(v72, v70);
  }

  v60 = *(v8 + 8);

  return v60();
}

uint64_t sub_1BD6950DC()
{
  KeyPath = swift_getKeyPath();
  v1 = swift_getKeyPath();
  sub_1BE04D8B4(&v17);
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v1, v9, v10, v11, v12, v13, v14, v15;
  return v17;
}

void sub_1BD695150(void *a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(a1);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;

  v3, v11, v12, v13, v14, v15, v16, v17;
}

uint64_t sub_1BD6951DC(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v3, v11, v12, v13, v14, v15, v16, v17;
  return v19;
}

void sub_1BD695248(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(a2);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;

  v4, v12, v13, v14, v15, v16, v17, v18;
}

uint64_t sub_1BD6952C4(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140, &qword_1BE0C55B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  sub_1BD0DE19C(a1, &v10 - v7, &qword_1EBD3F140, &qword_1BE0C55B8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v8, v5, &qword_1EBD3F140, &qword_1BE0C55B8);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v8, &qword_1EBD3F140, &qword_1BE0C55B8);
}

void sub_1BD695444(void *a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  sub_1BE04D8B4(&v19);
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v4, v12, v13, v14, v15, v16, v17, v18;
  *a2 = v19;
}

uint64_t sub_1BD6954C4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_1BE048964();
  return sub_1BE04D8C4();
}

id sub_1BD69553C()
{
  v1 = qword_1EBD4F6D8;
  v2 = *(v0 + qword_1EBD4F6D8);
  if (v2)
  {
    v3 = *(v0 + qword_1EBD4F6D8);
LABEL_5:
    v6 = v2;
    return v3;
  }

  result = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:PKUIScreenScale()];
  if (result)
  {
    v5 = *(v0 + v1);
    *(v0 + v1) = result;
    v3 = result;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_1BD6955E4@<D0>(_OWORD *a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_getKeyPath();
  sub_1BE04D8B4(&v22);
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v6, v14, v15, v16, v17, v18, v19, v20;
  result = *&v22;
  *a4 = v22;
  return result;
}

uint64_t sub_1BD695674(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD6956F4@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F778, &qword_1BE0EDBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = qword_1EBD4F6F0;
  swift_beginAccess();
  sub_1BD0DE19C(v1 + v9, v8, &unk_1EBD4F778, &qword_1BE0EDBD0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738, qword_1BE0EDB78);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1BD697BF0(v8, a1);
  }

  sub_1BD0DE53C(v8, &unk_1EBD4F778, &qword_1BE0EDBD0);
  sub_1BD6958DC(v1, a1);
  sub_1BD0DE19C(a1, v5, &qword_1EBD4F738, qword_1BE0EDB78);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1BD697B80(v5, v1 + v9);
  return swift_endAccess();
}

void sub_1BD6958DC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738, qword_1BE0EDB78);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v59 - v5;
  v60 = *(a1 + qword_1EBDAAD68 + 32);
  v7 = [v60 paymentRequest];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04DBB4();
    v11 = v10;
    v61 = v9;
    v62 = v10;
    sub_1BE048C84();
    sub_1BE0537C4();
    v12 = [v8 clientViewSourceParameter];
    if (v12)
    {
      v20 = v12;
      v11, v13, v14, v15, v16, v17, v18, v19;
      v21 = sub_1BE052244();

      if (v21[2] && (v29 = sub_1BD149040(v63), (v22 & 1) != 0))
      {
        sub_1BD038CD0(v21[7] + 32 * v29, v64);
        sub_1BD149CE8(v63);
        v21, v30, v31, v32, v33, v34, v35, v36;
        if (swift_dynamicCast())
        {
          v37 = v61;
          v38 = v62;
          sub_1BE04A644();
          swift_allocObject();
          v39 = sub_1BE04A634();
          v40 = sub_1BE04DBC4();
          sub_1BD697C60();
          sub_1BE04A624();
          v39, v44, v45, v46, v47, v48, v49, v50;

          sub_1BD1245AC(v37, v38, v51, v52, v53, v54, v55, v56);
          v57 = *(v40 - 8);
          v58 = *(v57 + 56);
          v58(v6, 0, 1, v40);
          (*(v57 + 32))(a2, v6, v40);
          v58(a2, 0, 1, v40);
          return;
        }
      }

      else
      {
        v21, v22, v23, v24, v25, v26, v27, v28;

        sub_1BD149CE8(v63);
      }

      v41 = sub_1BE04DBC4();
      (*(*(v41 - 8) + 56))(a2, 1, 1, v41);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v42 = sub_1BE04DBC4();
    (*(*(v42 - 8) + 56))(a2, 1, 1, v42);
    v43 = v60;
  }
}

id sub_1BD695CF0(uint64_t a1)
{
  v124 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  v122 = *(v2 - 1);
  v123 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v121 = v113 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8, &unk_1BE0EDBC0);
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v5 = v113 - v4;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F760, &qword_1BE0EDBB8);
  v6 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v8 = v113 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140, &qword_1BE0C55B8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v113 - v13;
  *(v1 + qword_1EBD4F6B0) = vdupq_n_s64(0x404B000000000000uLL);
  v15 = qword_1EBD4F6B8;
  v16 = type metadata accessor for IdentityPassVendor(0);
  v17 = *(v16 - 8);
  v114 = *(v17 + 56);
  v115 = v16;
  v113[1] = v17 + 56;
  v114(v14, 1, 1);
  sub_1BD0DE19C(v14, v11, &qword_1EBD3F140, &qword_1BE0C55B8);
  v117 = v11;
  sub_1BE04D874();
  v116 = v14;
  sub_1BD0DE53C(v14, &qword_1EBD3F140, &qword_1BE0C55B8);
  (*(v6 + 32))(v1 + v15, v8, v119);
  v18 = qword_1EBD4F6C0;
  aBlock = 0;
  v126 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A5C8, &qword_1BE0BAA50);
  sub_1BE04D874();
  v19 = *(v118 + 32);
  v20 = v120;
  v19(v1 + v18, v5, v120);
  v21 = qword_1EBD4F6C8;
  aBlock = 0;
  v126 = 0;
  sub_1BE04D874();
  v19(v1 + v21, v5, v20);
  v22 = qword_1EBD4F6D0;
  aBlock = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4AB00, &qword_1BE0C85C0);
  v23 = v121;
  sub_1BE04D874();
  (v122)[4](v1 + v22, v23, v123);
  *(v1 + qword_1EBD4F6D8) = 0;
  v24 = qword_1EBD4F6E0;
  aBlock = 0;
  v126 = 0;
  v25 = v124;
  sub_1BE04D874();
  v19(v1 + v24, v5, v20);
  v26 = qword_1EBD4F6E8;
  *(v1 + v26) = [objc_opt_self() sharedInstanceWithRemoteLibrary];
  v27 = qword_1EBD4F6F0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738, qword_1BE0EDB78);
  (*(*(v28 - 8) + 56))(v1 + v27, 1, 1, v28);
  v29 = *(v25 + 32);
  result = [v29 paymentRequest];
  if (result)
  {
    v123 = result;
    v31 = [result requestType];
    *(v1 + qword_1EBDAB3E8) = v31;
    v33 = *v25;
    v32 = *(v25 + 8);
    v131 = *(v25 + 24);
    v132[0] = v32;
    v34 = *(v25 + 40);
    v35 = v29;
    v36 = v33;
    v121 = v36;
    sub_1BD0DE19C(v132, &aBlock, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE19C(&v131, &aBlock, &qword_1EBD40150, &qword_1BE0C12A0);
    v122 = v34;
    sub_1BE048964();
    v37 = sub_1BD46A578(v25);

    sub_1BD0DE53C(v132, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(&v131, &qword_1EBD40150, &qword_1BE0C12A0);
    v34, v38, v39, v40, v41, v42, v43, v44;

    swift_retain_n();
    v45 = sub_1BD69650C();
    KeyPath = swift_getKeyPath();
    v47 = swift_getKeyPath();
    sub_1BE04D8B4(&aBlock);
    KeyPath, v48, v49, v50, v51, v52, v53, v54;
    v47, v55, v56, v57, v58, v59, v60, v61;
    v62 = v126;
    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    sub_1BE04D8B4(&aBlock);
    v63, v65, v66, v67, v68, v69, v70, v71;
    v64, v72, v73, v74, v75, v76, v77, v78;
    v79 = v126;
    v80 = sub_1BD6969AC();
    v81 = v35;
    v82 = v116;
    sub_1BD876420(v45, v62, v79, v80, v81, v116);
    (v114)(v82, 0, 1, v115);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v82, v117, &qword_1EBD3F140, &qword_1BE0C55B8);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v82, &qword_1EBD3F140, &qword_1BE0C55B8);
    v83 = swift_allocObject();
    swift_weakInit();
    v37, v84, v85, v86, v87, v88, v89, v90;
    v129 = sub_1BD697CB8;
    v130 = v83;
    aBlock = MEMORY[0x1E69E9820];
    v126 = 1107296256;
    v127 = sub_1BD126964;
    v128 = &block_descriptor_155;
    v91 = _Block_copy(&aBlock);
    v130, v92, v93, v94, v95, v96, v97, v98;
    [v81 setUpdateHandler_];
    _Block_release(v91);

    sub_1BD0DE53C(v132, &qword_1EBD3D490, &unk_1BE0D42B0);
    sub_1BD0DE53C(&v131, &qword_1EBD40150, &qword_1BE0C12A0);
    v37, v99, v100, v101, v102, v103, v104, v105;
    v122, v106, v107, v108, v109, v110, v111, v112;

    return v37;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD69650C()
{
  v0 = sub_1BE04DAE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v59 - v5;
  v6 = type metadata accessor for IdentityCredential(0);
  v67 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04DBC4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738, qword_1BE0EDB78);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - v14;
  sub_1BD6956F4(&v59 - v14);
  if ((*(v10 + 48))(v15, 1, v9))
  {
    sub_1BD0DE53C(v15, &qword_1EBD4F738, qword_1BE0EDB78);
    return MEMORY[0x1E69E7CC0];
  }

  v75 = v8;
  (*(v10 + 16))(v12, v15, v9);
  sub_1BD0DE53C(v15, &qword_1EBD4F738, qword_1BE0EDB78);
  v17 = sub_1BE04DBA4();
  (*(v10 + 8))(v12, v9);
  v25 = v17[2];
  if (!v25)
  {
    v17, v18, v19, v20, v21, v22, v23, v24;
    return MEMORY[0x1E69E7CC0];
  }

  v76 = MEMORY[0x1E69E7CC0];
  sub_1BD531AE4(0, v25, 0);
  v27 = *(v1 + 16);
  v26 = v1 + 16;
  v28 = v17 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v62 = *(v26 + 56);
  v63 = v27;
  v60 = v17;
  v61 = (v26 - 8);
  v29 = v68;
  v30 = v75;
  v16 = v76;
  v65 = v26;
  v66 = v0;
  v64 = v3;
  do
  {
    v75 = v25;
    v31 = v63;
    v63(v29, v28, v0);
    v31(v3, v29, v0);
    v32 = sub_1BE04DAC4();
    v73 = v33;
    v74 = v32;
    sub_1BE04DAD4();
    v34 = sub_1BE04DAB4();
    v71 = v35;
    v72 = v34;
    v36 = sub_1BE04DA94();
    v69 = v37;
    v70 = v36;
    v38 = v16;
    v39 = sub_1BE04DAA4();
    v41 = v40;
    v42 = *v61;
    v29 = v68;
    (*v61)(v3, v0);
    v42(v29, v0);
    v43 = v73;
    *v30 = v74;
    v30[1] = v43;
    v44 = (v30 + v6[6]);
    v45 = v71;
    *v44 = v72;
    v44[1] = v45;
    v46 = (v30 + v6[7]);
    v47 = v69;
    *v46 = v70;
    v46[1] = v47;
    v48 = (v30 + v6[8]);
    *v48 = v39;
    v48[1] = v41;
    v16 = v38;
    v76 = v38;
    v49 = *(v38 + 16);
    v50 = *(v16 + 24);
    if (v49 >= v50 >> 1)
    {
      sub_1BD531AE4((v50 > 1), v49 + 1, 1);
      v29 = v68;
      v16 = v76;
    }

    *(v16 + 16) = v49 + 1;
    sub_1BD697B1C(v30, v16 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v49);
    v28 += v62;
    v25 = v75 - 1;
    v0 = v66;
    v3 = v64;
  }

  while (v75 != 1);
  v60, v51, v52, v53, v54, v55, v56, v57;
  return v16;
}

uint64_t *sub_1BD6969AC()
{
  v1 = *(v0 + qword_1EBD4F6E8);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = [v1 passesOfType_];
  sub_1BD0E5E8C(0, &qword_1EBD40650, 0x1E69B8A20);
  v4 = sub_1BE052744();

  v32 = v2;
  v12 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
  {
    v14 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        v17 = v15;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x1BFB40900](v17, v4);
          }

          else
          {
            if (v17 >= *(v12 + 16))
            {
              goto LABEL_34;
            }

            v18 = *(v4 + 8 * v17 + 32);
          }

          v19 = v18;
          v15 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          ++v17;
          if (v15 == i)
          {
            goto LABEL_20;
          }
        }

        MEMORY[0x1BFB3F7A0]();
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v16 = v32;
      }

      while (v15 != i);
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

LABEL_20:
    v4, v5, v6, v7, v8, v9, v10, v11;
    v32 = v14;
    if (v16 >> 62)
    {
      break;
    }

    v4 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_39;
    }

LABEL_22:
    v27 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x1BFB40900](v27, v16);
      }

      else
      {
        if (v27 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v28 = *(v16 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if ([v28 isIdentityPass])
      {
        sub_1BE0538C4();
        v12 = v14[2];
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v27;
      if (v30 == v4)
      {
        v2 = v14;
        goto LABEL_40;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v4 = sub_1BE053704();
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_39:
  v2 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v16, v20, v21, v22, v23, v24, v25, v26;
  return v2;
}

void sub_1BD696C70(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD696CC8();
    v2, v3, v4, v5, v6, v7, v8, v9;
  }
}

uint64_t sub_1BD696CC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F140, &qword_1BE0C55B8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - v5;
  v8 = *(v0 + qword_1EBDAAD68 + 24);
  v7 = *(v0 + qword_1EBDAAD68 + 32);
  v9 = v8;
  v10 = v7;
  sub_1BD2B1238(v10, v8, &v62);
  v11 = v63;
  if (v63)
  {
    v12 = v62;
    v13 = sub_1BD1C2B14();
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v11;
    v15 = v65;
    *(v14 + 32) = v64;
    *(v14 + 48) = v15;
    v16 = &type metadata for AuthorizationError;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v13 = 0;
    v58 = 0;
    v59 = 0;
  }

  v57 = v14;
  v60 = v16;
  v61 = v13;
  sub_1BE04C8F4();
  v17 = sub_1BD69650C();
  KeyPath = swift_getKeyPath();
  v19 = swift_getKeyPath();
  sub_1BE04D8B4(&v57);
  KeyPath, v20, v21, v22, v23, v24, v25, v26;
  v19, v27, v28, v29, v30, v31, v32, v33;
  v34 = v58;
  v35 = swift_getKeyPath();
  v36 = swift_getKeyPath();
  sub_1BE04D8B4(&v57);
  v35, v37, v38, v39, v40, v41, v42, v43;
  v36, v44, v45, v46, v47, v48, v49, v50;
  v51 = v58;
  v52 = sub_1BD6969AC();
  v53 = v10;
  sub_1BD876420(v17, v34, v51, v52, v53, v6);
  v54 = type metadata accessor for IdentityPassVendor(0);
  (*(*(v54 - 8) + 56))(v6, 0, 1, v54);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v6, v3, &qword_1EBD3F140, &qword_1BE0C55B8);
  sub_1BE048964();
  sub_1BE04D8C4();

  return sub_1BD0DE53C(v6, &qword_1EBD3F140, &qword_1BE0C55B8);
}

uint64_t sub_1BD696F8C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v22 = *(a1 + 24);
  v23 = v3;
  v5 = (v1 + qword_1EBDAAD68);
  v6 = *(v1 + qword_1EBDAAD68);
  v7 = *(v1 + qword_1EBDAAD68 + 24);
  v8 = *(v1 + qword_1EBDAAD68 + 32);
  v9 = *(v1 + qword_1EBDAAD68 + 40);
  v10 = *(a1 + 16);
  *v5 = *a1;
  v5[1] = v10;
  v5[2] = *(a1 + 32);
  v11 = v2;
  sub_1BD0DE19C(&v23, v21, &qword_1EBD3D490, &unk_1BE0D42B0);
  sub_1BD0DE19C(&v22, v21, &qword_1EBD40150, &qword_1BE0C12A0);
  v12 = v4;
  sub_1BE048964();
  v9, v13, v14, v15, v16, v17, v18, v19;

  swift_unknownObjectRelease();
  return sub_1BD696CC8();
}

void sub_1BD69706C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = [objc_allocWithZone(MEMORY[0x1E69B8998]) init];
  v6 = type metadata accessor for IdentityWebPresentmentBrand(0);
  sub_1BD0DE19C(a1 + *(v6 + 24), v4, &unk_1EBD3CF70, &qword_1BE0BA000);
  v7 = sub_1BE04AA64();
  v8 = *(v7 - 8);
  v9 = 0;
  if ((*(v8 + 48))(v4, 1, v7) != 1)
  {
    v9 = sub_1BE04A9C4();
    (*(v8 + 8))(v4, v7);
  }

  [v5 setFallbackLogoImageURL_];

  v10 = sub_1BD69553C();
  v11 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BD697D1C;
  v25 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD307EA8;
  aBlock[3] = &block_descriptor_35_3;
  v12 = _Block_copy(aBlock);
  v13 = v25;
  v14 = v5;
  v13, v15, v16, v17, v18, v19, v20, v21;
  v22 = [v10 iconForMerchant:v14 size:0 ignoreLogoURL:0 requestType:v12 iconHandler:{54.0, 54.0}];
  _Block_release(v12);

  swift_getKeyPath();
  swift_getKeyPath();
  aBlock[0] = v22;
  sub_1BE048964();
  v23 = v22;
  sub_1BE04D8C4();
}

void sub_1BD697310(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1)
    {
      v16 = sub_1BE0528D4();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      sub_1BE0528A4();
      v17 = a1;
      sub_1BE048964();
      v18 = sub_1BE052894();
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E85E0];
      v19[2] = v18;
      v19[3] = v20;
      v19[4] = v15;
      v19[5] = v17;
      v21 = sub_1BD122C00(0, 0, v6, &unk_1BE0EDD68, v19);
      v21, v22, v23, v24, v25, v26, v27, v28;
    }

    v15, v8, v9, v10, v11, v12, v13, v14;
  }
}

uint64_t sub_1BD697480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1BE0528A4();
  v5[5] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD697518, v7, v6);
}

uint64_t sub_1BD697518(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 32);
  *(v8 + 40), a2, a3, a4, a5, a6, a7, a8;
  swift_getKeyPath();
  swift_getKeyPath();
  *(v8 + 16) = v9;
  sub_1BE048964();
  v10 = v9;
  sub_1BE04D8C4();
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1BD6975D4()
{
  v1 = qword_1EBD4F6B8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F760, &qword_1BE0EDBB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD4F6C0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8, &unk_1BE0EDBC0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + qword_1EBD4F6C8, v4);
  v6 = qword_1EBD4F6D0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  v5(v0 + qword_1EBD4F6E0, v4);
  return sub_1BD0DE53C(v0 + qword_1EBD4F6F0, &unk_1EBD4F778, &qword_1BE0EDBD0);
}

uint64_t sub_1BD697760()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EBDAAD68);
  v4 = *(v0 + qword_1EBDAAD68 + 24);
  v5 = *(v0 + qword_1EBDAAD68 + 32);
  *(v0 + qword_1EBDAAD68 + 40), v6, v7, v8, v9, v10, v11, v12;

  swift_unknownObjectRelease();
  v13 = qword_1EBD4F6B8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F760, &qword_1BE0EDBB8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = qword_1EBD4F6C0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42FA8, &unk_1BE0EDBC0);
  v17 = *(*(v16 - 8) + 8);
  v17(v0 + v15, v16);
  v17(v0 + qword_1EBD4F6C8, v16);
  v18 = qword_1EBD4F6D0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F770, &qword_1BE0ECB90);
  (*(*(v19 - 8) + 8))(v0 + v18, v19);

  v17(v0 + qword_1EBD4F6E0, v16);
  sub_1BD0DE53C(v0 + qword_1EBD4F6F0, &unk_1EBD4F778, &qword_1BE0EDBD0);
  return v0;
}

uint64_t sub_1BD697978()
{
  sub_1BD697760();

  return swift_deallocClassInstance();
}

void sub_1BD6979CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BD697A80(uint64_t a1)
{
  sub_1BE04DA84();
  if (v1 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD697B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdentityCredential(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD697B80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4F778, &qword_1BE0EDBD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD697BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F738, qword_1BE0EDB78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD697C60()
{
  result = qword_1EBD4F788;
  if (!qword_1EBD4F788)
  {
    sub_1BE04DBC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F788);
  }

  return result;
}

uint64_t sub_1BD697CC0(uint64_t a1)
{
  v2 = type metadata accessor for IdentityWebPresentmentBrand(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD697D24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD697480(a1, v4, v5, v7, v6);
}

void sub_1BD697DEC(uint64_t a1)
{
  sub_1BD1C86BC();
  if (v1 <= 0x3F)
  {
    sub_1BD3F7300(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD697EA4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AA64() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + 7;
  v19 = v14 + 8;
  if (a2 > v16)
  {
    v20 = ((v19 + ((v18 + ((v12 + 48) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v10 + 64);
    v21 = 8 * v20;
    if (v20 > 3)
    {
      goto LABEL_16;
    }

    v23 = ((a2 - v16 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v23))
    {
      v22 = *(a1 + v20);
      if (v22)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v23 <= 0xFF)
      {
        if (v23 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v22 = *(a1 + v20);
        if (!*(a1 + v20))
        {
          goto LABEL_36;
        }

LABEL_23:
        v24 = (v22 - 1) << v21;
        if (v20 > 3)
        {
          v24 = 0;
        }

        if (v20)
        {
          if (v20 <= 3)
          {
            v25 = ((v19 + ((v18 + ((v12 + 48) & ~v12)) & 0xFFFFFFF8)) & ~v14) + *(v10 + 64);
          }

          else
          {
            v25 = 4;
          }

          if (v25 > 2)
          {
            if (v25 == 3)
            {
              v26 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v26 = *a1;
            }
          }

          else if (v25 == 1)
          {
            v26 = *a1;
          }

          else
          {
            v26 = *a1;
          }
        }

        else
        {
          v26 = 0;
        }

        return v16 + (v26 | v24) + 1;
      }

      v22 = *(a1 + v20);
      if (*(a1 + v20))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v27 = *(a1 + 1);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v30 = (*(v7 + 48))((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12);
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *(v10 + 48);

  return v29((v19 + ((v18 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
}

void sub_1BD698158(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1BE04AA64() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v12 <= v14)
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v11)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v23 = v22 + 7;
  v21 = (v15 + 48) & ~v15;
  v24 = ((v17 + 8 + ((v23 + v21) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18;
  if (a3 <= v20)
  {
    goto LABEL_24;
  }

  if (v24 <= 3)
  {
    v25 = ((a3 - v20 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v25))
    {
      v8 = 4;
      if (v20 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v20 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v20 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v24] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v24] = 0;
    }

    else if (v8)
    {
      a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v19 & 0x80000000) != 0)
    {
      if (v12 == v20)
      {
        if (v11 >= 2)
        {
          v30 = *(v10 + 56);

          v30((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15, (a2 + 1));
        }
      }

      else
      {
        v31 = *(v13 + 56);

        v31((v17 + 8 + ((v23 + ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v27 = ~v20 + a2;
  if (v24 >= 4)
  {
    bzero(a1, ((v17 + 8 + ((v23 + v21) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
    *a1 = v27;
    v28 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v28 = (v27 >> (8 * v24)) + 1;
  if (!v24)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v29 = v27 & ~(-1 << (8 * v24));
  bzero(a1, ((v17 + 8 + ((v23 + v21) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
  if (v24 == 3)
  {
    *a1 = v29;
    a1[2] = BYTE2(v29);
    goto LABEL_56;
  }

  if (v24 == 2)
  {
    *a1 = v29;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *&a1[v24] = v28;
      }

      else
      {
        *&a1[v24] = v28;
      }

      return;
    }
  }

  else
  {
    *a1 = v27;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    a1[v24] = v28;
  }
}

uint64_t sub_1BD698510(uint64_t a1)
{
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F818, &qword_1BE0EDDE8);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v4 = sub_1BE051774();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_1BE051764();
  swift_getWitnessTable();
  sub_1BD147308();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_1BD147308();
  return (v12)(v10, v4);
}

uint64_t sub_1BD698714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F818, &qword_1BE0EDDE8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  type metadata accessor for SetupBulletContentView(0, a2, a3, v20);
  sub_1BD147308();
  *v12 = sub_1BE04F7C4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F820, &qword_1BE0EDDF0);
  sub_1BD698990(a1, a2, a3, &v12[*(v21 + 44)]);
  (*(v13 + 16))(v16, v19, a2);
  v26[0] = v16;
  sub_1BD0DE19C(v12, v9, &qword_1EBD4F818, &qword_1BE0EDDE8);
  v26[1] = v9;
  v25[0] = a2;
  v25[1] = v7;
  v24[2] = a3;
  v24[3] = sub_1BD699058();
  sub_1BD13A4C4(v26, 2uLL, v25);
  sub_1BD0DE53C(v12, &qword_1EBD4F818, &qword_1BE0EDDE8);
  v22 = *(v13 + 8);
  v22(v19, a2);
  sub_1BD0DE53C(v9, &qword_1EBD4F818, &qword_1BE0EDDE8);
  return (v22)(v16, a2);
}

void sub_1BD698990(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v73 = a2;
  v74 = a3;
  v81 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F830, &unk_1BE0EDDF8);
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v72 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v72 - v9;
  v11 = sub_1BE04AA64();
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F838, &qword_1BE0EDE08);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v86 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v89 = &v72 - v20;
  v21 = a1[1];
  v90 = *a1;
  v91 = v21;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v23 = sub_1BE0506C4();
  v25 = v24;
  v79 = v26;
  v85 = v22;
  v27 = a1[3];
  if (v27)
  {
    v90 = a1[2];
    v91 = v27;
    sub_1BE048C84();
    v28 = sub_1BE0506C4();
    v30 = v29;
    v83 = v32;
    v84 = v28;
    v78 = v31 & 1;
    sub_1BD0D7F18(v28, v32, v31 & 1);
    v82 = v30;
    sub_1BE048C84();
    v80 = 256;
    v33 = a1[5];
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v83 = 0;
    v84 = 0;
    v78 = 0;
    v82 = 0;
    v80 = 0;
    v33 = a1[5];
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  v72 = a1[4];
  v34 = type metadata accessor for SetupBulletContentView(0, v73, v74, v22);
  sub_1BD0DE19C(a1 + *(v34 + 44), v10, &unk_1EBD3CF70, &qword_1BE0BA000);
  v36 = v75;
  v35 = v76;
  if ((*(v75 + 48))(v10, 1, v76) != 1)
  {
    (*(v36 + 32))(v16, v10, v35);
    v40 = (*(v36 + 16))(v13, v16, v35);
    v74 = &v72;
    MEMORY[0x1EEE9AC00](v40);
    *(&v72 - 2) = v72;
    *(&v72 - 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FFF0, &qword_1BE0C71F0);
    sub_1BD6990C4();
    sub_1BE0504B4();
    (*(v36 + 8))(v16, v35);
    v39 = v87;
    v41 = v88;
    (*(v87 + 32))(v89, v7, v88);
    v38 = v41;
    v37 = 0;
    goto LABEL_9;
  }

  sub_1BD0DE53C(v10, &unk_1EBD3CF70, &qword_1BE0BA000);
LABEL_7:
  v37 = 1;
  v39 = v87;
  v38 = v88;
LABEL_9:
  v42 = v89;
  (*(v39 + 56))(v89, v37, 1, v38);
  v43 = v86;
  sub_1BD0DE19C(v42, v86, &qword_1EBD4F838, &qword_1BE0EDE08);
  v44 = v81;
  v45 = v82;
  *v81 = v23;
  v44[1] = v25;
  v46 = v79 & 1;
  *(v44 + 16) = v79 & 1;
  LODWORD(v88) = v46;
  v87 = v25;
  v77 = v23;
  v47 = v85;
  v44[3] = v85;
  *(v44 + 32) = v27 != 0;
  v49 = v83;
  v48 = v84;
  v44[5] = v84;
  v44[6] = v49;
  v50 = v78;
  v44[7] = v78;
  v44[8] = v45;
  v51 = v80;
  *(v44 + 36) = v80;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F840, &unk_1BE0EDE10);
  sub_1BD0DE19C(v43, v44 + *(v52 + 64), &qword_1EBD4F838, &qword_1BE0EDE08);
  v53 = v87;
  sub_1BD0D7F18(v23, v87, v46);
  sub_1BE048C84();
  sub_1BD1969AC(v48, v49, v50, v45);
  sub_1BD1969F0(v48, v49, v50, v45, v51, v54, v55, v56);
  sub_1BD0DE53C(v89, &qword_1EBD4F838, &qword_1BE0EDE08);
  sub_1BD0DE53C(v43, &qword_1EBD4F838, &qword_1BE0EDE08);
  sub_1BD1969F0(v48, v49, v50, v45, v51, v57, v58, v59);
  sub_1BD0DDF10(v77, v53, v88, v60, v61, v62, v63, v64);
  v47, v65, v66, v67, v68, v69, v70, v71;
}

double sub_1BD698F68@<D0>(uint64_t a3@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v4 = sub_1BE0506C4();
  if (qword_1EBD36E40 != -1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v7;
    v12 = v6;
    swift_once();
    v6 = v12;
    v5 = v10;
    v4 = v9;
    v7 = v11;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 24) = v7;
  *(a3 + 48) = 0;
  result = *&xmmword_1EBDAB5A8;
  *(a3 + 56) = xmmword_1EBDAB5A8;
  return result;
}

unint64_t sub_1BD699058()
{
  result = qword_1EBD4F828;
  if (!qword_1EBD4F828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F818, &qword_1BE0EDDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F828);
  }

  return result;
}

unint64_t sub_1BD6990C4()
{
  result = qword_1EBD3FFE8;
  if (!qword_1EBD3FFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3FFF0, &qword_1BE0C71F0);
    sub_1BD282440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3FFE8);
  }

  return result;
}

id sub_1BD699150()
{
  v0 = sub_1BE04AA64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04A874();
  __swift_allocate_value_buffer(v4, qword_1EBDAB400);
  v5 = __swift_project_value_buffer(v4, qword_1EBDAB400);
  result = PKPassKitUIBundle();
  if (result)
  {
    v7 = result;
    v8 = [result bundleURL];

    sub_1BE04A9F4();
    (*(v1 + 32))(v5, v3, v0);
    return (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6968DF8], v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for NonMeCardAddressSection(uint64_t a1)
{
  result = qword_1EBD4F848;
  if (!qword_1EBD4F848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD69933C(uint64_t a1)
{
  sub_1BD1030A8();
  if (v1 <= 0x3F)
  {
    sub_1BD359720(319, &qword_1EBD40448, &qword_1EBD40450, &qword_1BE0D7250, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1BD359720(319, &qword_1EBD42960, &qword_1EBD393C8, "\b6\r", MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

id sub_1BD699464@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F858, &qword_1BE0EDE88);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F860, &qword_1BE0EDE90);
  v102 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v91 - v12;
  v13 = v1[5];
  v114 = v1[4];
  v115 = v13;
  v116 = v1[6];
  v14 = v1[1];
  v110 = *v1;
  v111 = v14;
  v15 = v1[3];
  v112 = v1[2];
  v113 = v15;
  v16 = sub_1BD514814();
  if (v16 >> 62)
  {
    v88 = v16;
    v89 = sub_1BE053704();
    v16 = v88;
    if (v89 >= 1)
    {
LABEL_3:
      v99 = v9;
      v24 = v16;
      (*(v5 + 104))(v7, *MEMORY[0x1E69B8068], v4);
      result = PKPassKitBundle();
      if (result)
      {
        v26 = result;
        v96 = v8;
        v97 = v11;
        v98 = a1;
        v27 = sub_1BE04B6F4();
        v29 = v28;

        (*(v5 + 8))(v7, v4);
        v106 = v27;
        v107 = v29;
        sub_1BD0DDEBC();
        v106 = sub_1BE0506C4();
        v107 = v30;
        v108 = v31 & 1;
        v109 = v32;
        MEMORY[0x1EEE9AC00](v106);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F868, &qword_1BE0EDE98);
        sub_1BD69B7F0();
        sub_1BE051A24();
        v24, v33, v34, v35, v36, v37, v38, v39;
        v106 = sub_1BD69B060(v2);
        v107 = v40;
        v94 = sub_1BE0506C4();
        v93 = v41;
        v43 = v42;
        v95 = v44;
        v45 = (v2 + *(type metadata accessor for NonMeCardAddressSection(0) + 36));
        v46 = *v45;
        v47 = v45[1];
        v106 = *v45;
        v107 = v47;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
        sub_1BE0516A4();
        v48 = v104;
        if (v104)
        {
        }

        LOBYTE(v104) = v48 != 0;
        sub_1BE051944();
        v49 = v106;
        v50 = v107;
        v92 = v108;
        v104 = v46;
        v105 = v47;
        v51 = sub_1BE0516A4();
        v91 = &v91;
        v52 = v103;
        v104 = v103;
        MEMORY[0x1EEE9AC00](v51);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200, &qword_1BE0BB900);
        sub_1BD0E8CBC();
        sub_1BD69BAD4();
        sub_1BD35CEE0();
        v53 = v96;
        v54 = v100;
        v55 = v43;
        v56 = v94;
        v57 = v93;
        v58 = v95;
        v59 = v101;
        sub_1BE050F04();
        v50, v60, v61, v62, v63, v64, v65, v66;
        v49, v67, v68, v69, v70, v71, v72, v73;
        sub_1BD0DDF10(v56, v57, (v55 & 1), v74, v75, v76, v77, v78);
        v58, v79, v80, v81, v82, v83, v84, v85;

        (*(v99 + 8))(v59, v53);
        v86 = v98;
        v87 = v97;
        (*(v102 + 32))(v98, v54, v97);
        return (*(v102 + 56))(v86, 0, 1, v87);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  v16, v17, v18, v19, v20, v21, v22, v23;
  v90 = *(v102 + 56);

  return v90(a1, 1, 1, v11);
}

__n128 sub_1BD699B00@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = type metadata accessor for NonMeCardAddressSection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v25 = a1;
  v23[1] = swift_getKeyPath();
  sub_1BD69BB6C(a3, v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_1BD69C33C(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + ((v10 + 24) & ~v10), type metadata accessor for NonMeCardAddressSection);
  v12 = a2;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38868, &qword_1BE0E4CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8A0, &unk_1BE0EDEB0);
  sub_1BD0DE4F4(&qword_1EBD4B6E0, &qword_1EBD38868, &qword_1BE0E4CA0, MEMORY[0x1E69E6338]);
  sub_1BD69B9E4();
  v13 = v24;
  sub_1BE0519C4();
  sub_1BD69BB6C(a3, v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = swift_allocObject();
  sub_1BD69C33C(v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + ((v10 + 16) & ~v10), type metadata accessor for NonMeCardAddressSection);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1BD69BEA8;
  *(v15 + 24) = v14;
  v16 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F880, &qword_1BE0EDEA0) + 36));
  *v16 = sub_1BD458BE8;
  v16[1] = v15;
  v17 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F868, &qword_1BE0EDE98) + 36));
  __asm { FMOV            V0.2D, #16.0 }

  *v17 = result;
  v17[1] = result;
  v17[2].n128_u8[0] = 0;
  return result;
}

id sub_1BD699DA8@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v7 = type metadata accessor for NonMeCardAddressSection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = *a1;
  if (a2 && (sub_1BD0E8CBC(), v14 = v13, v15 = a2, v16 = sub_1BE053074(), v14, v15, (v16 & 1) != 0))
  {
    v18 = *(a3 + 40) != 2 || *(a3 + 24) != 0;
    LODWORD(v63) = 1;
  }

  else
  {
    LODWORD(v63) = 0;
    v18 = 0;
  }

  v19 = [v13 pk_displayName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v62 = v22;

    v23 = v21;
  }

  else
  {
    v23 = 0;
    v62 = 0;
  }

  v59 = v18;
  v58 = sub_1BD69A1A0(v13, v18);
  v25 = v24;
  sub_1BD69BB6C(a3, v12);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = a3;
  v29 = v12;
  v30 = swift_allocObject();
  v61 = type metadata accessor for NonMeCardAddressSection;
  v31 = sub_1BD69C33C(v29, v30 + v26, type metadata accessor for NonMeCardAddressSection);
  v60 = &v58;
  *(v30 + v27) = v13;
  MEMORY[0x1EEE9AC00](v31);
  *(&v58 - 6) = v23;
  v32 = v62;
  v33 = v58;
  *(&v58 - 5) = v62;
  *(&v58 - 4) = v33;
  *(&v58 - 3) = v25;
  *(&v58 - 16) = v59;
  *(&v58 - 15) = v63;
  *(&v58 - 1) = v28;
  v63 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68, &unk_1BE0CE340);
  sub_1BD35D868();
  sub_1BE051704();
  v25, v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD69BB6C(v28, v29);
  v48 = swift_allocObject();
  v49 = v61;
  sub_1BD69C33C(v29, v48 + v26, v61);
  v51 = v63;
  v50 = v64;
  *(v48 + v27) = v63;
  sub_1BD69BB6C(v28, v50);
  v52 = swift_allocObject();
  sub_1BD69C33C(v50, v52 + v26, v49);
  *(v52 + v27) = v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8A0, &unk_1BE0EDEB0);
  v54 = (v65 + *(v53 + 36));
  *v54 = sub_1BD69BFAC;
  v54[1] = v48;
  v54[2] = sub_1BD69C1CC;
  v54[3] = v52;
  v55 = *(type metadata accessor for ListRowGestureActionsModifier(0) + 24);
  *(v54 + v55) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v56 = v51;

  return v56;
}

id sub_1BD69A1A0(id result, char a2)
{
  if (a2)
  {
    v3 = *(v2 + 40);
    if (v3 < 2)
    {
      v4 = *(v2 + 24);
      sub_1BD35D998(v4, *(v2 + 32), v3);
      return v4;
    }
  }

  else
  {
    result = [result pkSingleLineFormattedContactAddress];
    if (result)
    {
LABEL_7:
      v5 = result;
      v4 = sub_1BE052434();

      return v4;
    }

    __break(1u);
  }

  result = [result pkSingleLineFormattedContactAddress];
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1BD69A23C(void *a1)
{
  v70 = a1;
  v2 = sub_1BE04D214();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE051AD4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40528, &unk_1BE0CE330);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450, &qword_1BE0D7250);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v65 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v69 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  type metadata accessor for NonMeCardAddressSection(0);
  v71 = v1;
  sub_1BD70A2C8(v13);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
  v23 = (*(*(v22 - 8) + 48))(v13, 1, v22);
  v66 = v4;
  if (v23 == 1)
  {
    sub_1BD0DE53C(v13, &qword_1EBD40450, &qword_1BE0D7250);
    v24 = 1;
  }

  else
  {
    MEMORY[0x1BFB3E970](v22);
    sub_1BD0DE53C(v13, &qword_1EBD40520, &qword_1BE0D70B0);
    v24 = 0;
  }

  v25 = *(v6 + 56);
  v25(v21, v24, 1, v5);
  (*(v6 + 104))(v18, *MEMORY[0x1E697D710], v5);
  v25(v18, 0, 1, v5);
  v26 = *(v8 + 48);
  sub_1BD69C284(v21, v10);
  sub_1BD69C284(v18, &v10[v26]);
  v27 = *(v6 + 48);
  if (v27(v10, 1, v5) == 1)
  {
    sub_1BD0DE53C(v18, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE53C(v21, &qword_1EBD40530, &unk_1BE0C80F0);
    if (v27(&v10[v26], 1, v5) == 1)
    {
      sub_1BD0DE53C(v10, &qword_1EBD40530, &unk_1BE0C80F0);
      v28 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v29 = v69;
  sub_1BD69C284(v10, v69);
  if (v27(&v10[v26], 1, v5) == 1)
  {
    sub_1BD0DE53C(v18, &qword_1EBD40530, &unk_1BE0C80F0);
    sub_1BD0DE53C(v21, &qword_1EBD40530, &unk_1BE0C80F0);
    (*(v6 + 8))(v29, v5);
LABEL_9:
    sub_1BD0DE53C(v10, &qword_1EBD40528, &unk_1BE0CE330);
    v28 = 0;
    goto LABEL_11;
  }

  v30 = v65;
  (*(v6 + 32))(v65, &v10[v26], v5);
  sub_1BD69C2F4(&qword_1EBD40538, MEMORY[0x1E697D718], MEMORY[0x1E697D720]);
  v31 = v29;
  v28 = sub_1BE052334();
  v32 = *(v6 + 8);
  v32(v30, v5);
  sub_1BD0DE53C(v18, &qword_1EBD40530, &unk_1BE0C80F0);
  sub_1BD0DE53C(v21, &qword_1EBD40530, &unk_1BE0C80F0);
  v32(v31, v5);
  sub_1BD0DE53C(v10, &qword_1EBD40530, &unk_1BE0C80F0);
LABEL_11:
  v33 = v70;
  v34 = v71;
  v35 = [v70 valueSource];
  if (!v35)
  {
    [v33 setValueSource_];
    if (v28)
    {
      goto LABEL_13;
    }

LABEL_19:
    (*(v34 + 144))(v33, 0, 0, 1);
    return;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v36 = *(v34 + 8);
  if (v36 && (sub_1BD0E8CBC(), v37 = v33, v38 = v36, v39 = sub_1BE053074(), v38, v37, (v39 & 1) != 0))
  {
    if (*(v34 + 40) != 2 || *(v34 + 24) != 0)
    {
      (*(v34 + 144))(v37, 0, 0, 1);
    }
  }

  else
  {
    v40 = v66;
    sub_1BE04D084();
    v41 = v33;
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C54();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v72 = v45;
      *v44 = 136315138;
      v46 = [v41 description];
      v47 = sub_1BE052434();
      v49 = v48;

      v50 = sub_1BD123690(v47, v49, &v72);
      v49, v51, v52, v53, v54, v55, v56, v57;
      *(v44 + 4) = v50;
      _os_log_impl(&dword_1BD026000, v42, v43, "Selected shipping address: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45, v58, v59, v60, v61, v62, v63, v64);
      MEMORY[0x1BFB45F20](v45, -1, -1);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    (*(v67 + 8))(v40, v68);
    (*(v34 + 112))(v41);
  }
}

uint64_t sub_1BD69A9FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28[2] = a7;
  v29 = a8;
  v14 = type metadata accessor for ShippingAddressRow(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBD36C60 != -1)
  {
    swift_once();
  }

  v18 = qword_1EBDAB200;
  v17 = *algn_1EBDAB208;
  v19 = qword_1EBDAB210;
  v28[1] = qword_1EBDAB210;
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  v16[32] = a5 & 1;
  *(v16 + 5) = v18;
  *(v16 + 6) = v17;
  *(v16 + 7) = v19;
  v16[64] = a6 & 1;
  v20 = v14[9];
  *&v16[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  swift_storeEnumTagMultiPayload();
  v21 = v14[10];
  *&v16[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD521C0, qword_1BE0B9CE0);
  swift_storeEnumTagMultiPayload();
  *&v16[v14[11]] = 0x4028000000000000;
  KeyPath = swift_getKeyPath();
  type metadata accessor for NonMeCardAddressSection(0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42A68, &unk_1BE0CE340);
  v24 = v29;
  v25 = (v29 + *(v23 + 36));
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410, &unk_1BE0D2B20) + 28);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BD70A2C8((v25 + v26));
  *v25 = KeyPath;
  return sub_1BD69C33C(v16, v24, type metadata accessor for ShippingAddressRow);
}

double sub_1BD69AC38(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(MEMORY[0x1E69B8CF8]);
  v4 = a2;
  v5 = [v3 init];
  [v5 setDefaultShippingAddress_];

  sub_1BD69A23C(v4);
  type metadata accessor for NonMeCardAddressSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516B4();
  return result;
}

void sub_1BD69ACF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80, &unk_1BE0B8CF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BE0B7020;
  *(v4 + 32) = a2;
  v5 = a2;
  v3(v4);

  v4, v6, v7, v8, v9, v10, v11, v12;
}

void sub_1BD69AD74(double a1)
{
  v2 = sub_1BE04B304();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[5];
  v54 = v1[4];
  v55 = v6;
  v56 = v1[6];
  v7 = v1[1];
  v50 = *v1;
  v51 = v7;
  v8 = v1[3];
  v52 = v1[2];
  v53 = v8;
  v9 = sub_1BD514814();
  v10 = *(v1 + 17);
  v45 = *(v1 + 16);
  v44 = v10;
  sub_1BE04B344();
  sub_1BD69C2F4(&unk_1EBD4D4D0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v11 = sub_1BE052AE4();
  if (!v11)
  {
    v9, v12, v13, v14, v15, v16, v17, v18;
    v33 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v45(v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    return;
  }

  v19 = v11;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1BE0538E4();
  sub_1BE052AD4();
  if (v19 < 0)
  {
    goto LABEL_15;
  }

  v42 = v3;
  v43 = v2;
  v20 = v9 & 0xC000000000000001;
  v47 = v9 & 0xFFFFFFFFFFFFFF8;
  v46 = v9 + 32;
  v21 = v9;
  while (1)
  {
    v22 = sub_1BE052B34();
    v24 = *v23;
    v22(v48, 0);
    if (v20)
    {
      MEMORY[0x1BFB40900](v24, v9);
      goto LABEL_5;
    }

    if ((v24 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v24 >= *(v47 + 16))
    {
      goto LABEL_14;
    }

    v25 = *(v46 + 8 * v24);
LABEL_5:
    sub_1BE0538C4();
    sub_1BE0538F4();
    sub_1BE053904();
    sub_1BE0538D4();
    sub_1BE052B14();
    --v19;
    v9 = v21;
    if (!v19)
    {
      (*(v42 + 8))(v5, v43);
      v21, v26, v27, v28, v29, v30, v31, v32;
      v33 = v49;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1BD69B060(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + *(type metadata accessor for NonMeCardAddressSection(0) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516A4();
  v6 = v22;
  if (!v22)
  {
    return 0;
  }

  v7 = [v22 pkSingleLineFormattedContactAddressIncludingCountryName_];

  if (!v7)
  {
    return 0;
  }

  v8 = sub_1BE052434();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1BD110550();
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;
  (*(v3 + 104))(v5, *MEMORY[0x1E69B8068], v2);
  v12 = sub_1BE04B714();
  v11, v13, v14, v15, v16, v17, v18, v19;
  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t sub_1BD69B260(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NonMeCardAddressSection(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  sub_1BD69BB6C(a2, &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1BD69C33C(&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for NonMeCardAddressSection);
  sub_1BE051704();
  sub_1BE052434();
  v13 = v12;
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  sub_1BE050DE4();
  v13, v14, v15, v16, v17, v18, v19, v20;
  return (*(v7 + 8))(v9, v6);
}

double sub_1BD69B4B4(uint64_t a1)
{
  type metadata accessor for NonMeCardAddressSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42990, qword_1BE0EDEC0);
  sub_1BE0516B4();
  return result;
}

id sub_1BD69B518@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD69B674@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B8068], v2, v4);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v15[0] = v9;
    v15[1] = v11;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v12;
    *(a1 + 16) = v13 & 1;
    *(a1 + 24) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD69B7F0()
{
  result = qword_1EBD4F870;
  if (!qword_1EBD4F870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F868, &qword_1BE0EDE98);
    sub_1BD69B8A8();
    sub_1BD0DE4F4(&unk_1EBD3FB30, &qword_1EBD397A8, &qword_1BE0B8CD0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F870);
  }

  return result;
}

unint64_t sub_1BD69B8A8()
{
  result = qword_1EBD4F878;
  if (!qword_1EBD4F878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F880, &qword_1BE0EDEA0);
    sub_1BD69B960();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0, &qword_1BE0E8860, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F878);
  }

  return result;
}

unint64_t sub_1BD69B960()
{
  result = qword_1EBD4F888;
  if (!qword_1EBD4F888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F890, &qword_1BE0EDEA8);
    sub_1BD69B9E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F888);
  }

  return result;
}

unint64_t sub_1BD69B9E4()
{
  result = qword_1EBD4F898;
  if (!qword_1EBD4F898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F8A0, &unk_1BE0EDEB0);
    sub_1BD0DE4F4(&qword_1EBD42A18, &qword_1EBD42A20, &qword_1BE0CE2D8, MEMORY[0x1E697D680]);
    sub_1BD69C2F4(&qword_1EBD42A38, type metadata accessor for ListRowGestureActionsModifier, &unk_1BE0FCED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F898);
  }

  return result;
}

unint64_t sub_1BD69BAD4()
{
  result = qword_1EBD4F8A8;
  if (!qword_1EBD4F8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F858, &qword_1BE0EDE88);
    sub_1BD69B7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F8A8);
  }

  return result;
}

uint64_t sub_1BD69BB6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NonMeCardAddressSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1BD69BBD0()
{
  v1 = *(type metadata accessor for NonMeCardAddressSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD69B4B4(v2);
}

id sub_1BD69BC30@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NonMeCardAddressSection(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1BD699DA8(a1, v6, v7, a2);
}

uint64_t objectdestroyTm_76()
{
  v1 = type metadata accessor for NonMeCardAddressSection(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  *v2, v3, v4, v5, v6, v7, v8, v9;

  sub_1BD35D02C(*(v2 + 24), *(v2 + 32), *(v2 + 40), v10, v11, v12, v13, v14, v91, v92, v93);
  *(v2 + 56), v15, v16, v17, v18, v19, v20, v21;
  *(v2 + 72), v22, v23, v24, v25, v26, v27, v28;

  *(v2 + 104), v29, v30, v31, v32, v33, v34, v35;
  *(v2 + 120), v36, v37, v38, v39, v40, v41, v42;
  *(v2 + 136), v43, v44, v45, v46, v47, v48, v49;
  *(v2 + 152), v50, v51, v52, v53, v54, v55, v56;
  v57 = (v2 + *(v1 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v65 - 8) + 48))(v57, 1, v65))
    {
      *v57, v66, v67, v68, v69, v70, v71, v72;
      v57[1], v73, v74, v75, v76, v77, v78, v79;
      v80 = *(v65 + 32);
      v81 = sub_1BE051AD4();
      (*(*(v81 - 8) + 8))(v57 + v80, v81);
    }
  }

  else
  {
    *v57, v58, v59, v60, v61, v62, v63, v64;
  }

  v82 = (v2 + *(v1 + 36));

  v82[1], v83, v84, v85, v86, v87, v88, v89;

  return swift_deallocObject();
}

uint64_t objectdestroy_12Tm_0()
{
  v1 = type metadata accessor for NonMeCardAddressSection(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;
  *(v0 + v2), v5, v6, v7, v8, v9, v10, v11;

  sub_1BD35D02C(*(v4 + 24), *(v4 + 32), *(v4 + 40), v12, v13, v14, v15, v16, v93, v94, v95);
  *(v0 + v2 + 56), v17, v18, v19, v20, v21, v22, v23;
  *(v0 + v2 + 72), v24, v25, v26, v27, v28, v29, v30;

  *(v0 + v2 + 104), v31, v32, v33, v34, v35, v36, v37;
  *(v0 + v2 + 120), v38, v39, v40, v41, v42, v43, v44;
  *(v0 + v2 + 136), v45, v46, v47, v48, v49, v50, v51;
  *(v0 + v2 + 152), v52, v53, v54, v55, v56, v57, v58;
  v59 = (v0 + v2 + *(v1 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39CF8, &qword_1BE0BAD40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520, &qword_1BE0D70B0);
    if (!(*(*(v67 - 8) + 48))(v59, 1, v67))
    {
      *v59, v68, v69, v70, v71, v72, v73, v74;
      v59[1], v75, v76, v77, v78, v79, v80, v81;
      v82 = *(v67 + 32);
      v83 = sub_1BE051AD4();
      (*(*(v83 - 8) + 8))(v59 + v82, v83);
    }
  }

  else
  {
    *v59, v60, v61, v62, v63, v64, v65, v66;
  }

  v84 = (v4 + *(v1 + 36));

  v84[1], v85, v86, v87, v88, v89, v90, v91;

  return swift_deallocObject();
}

uint64_t sub_1BD69C1E4(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for NonMeCardAddressSection(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_1BD69C284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40530, &unk_1BE0C80F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD69C2F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD69C33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD69C3A4()
{
  result = qword_1EBD4F8B0;
  if (!qword_1EBD4F8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F8B8, &unk_1BE0EDF80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F858, &qword_1BE0EDE88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD45200, &qword_1BE0BB900);
    sub_1BD0E8CBC();
    sub_1BD69BAD4();
    sub_1BD35CEE0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F8B0);
  }

  return result;
}

uint64_t sub_1BD69C4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD69C504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD69C584@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47490, &qword_1BE0EFBC0) - 8;
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v111 = &v96 - v5;
  v6 = a1[9];
  v107 = a1[8];
  v112 = v6;
  v106 = __swift_project_boxed_opaque_existential_1(a1 + 5, v107);
  v7 = a1[3];
  v131 = a1[2];
  v132 = v7;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v8 = sub_1BE0506C4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_1BE0505F4();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1BD0DDF10(v8, v10, (v12 & 1), v20, v22, v23, v24, v25);
  v14, v26, v27, v28, v29, v30, v31, v32;
  v112 = sub_1BE050574();
  v106 = v33;
  v107 = v34;
  v36 = v35;
  sub_1BD0DDF10(v15, v17, (v19 & 1), v34, v37, v38, v39, v40);
  v21, v41, v42, v43, v44, v45, v46, v47;
  KeyPath = swift_getKeyPath();
  v105 = KeyPath;
  v49 = swift_getKeyPath();
  v103 = v49;
  LOBYTE(v120) = v36 & 1;
  v50 = v36 & 1;
  v104 = v50;
  v113 = 0;
  LOBYTE(v14) = sub_1BE050224();
  sub_1BE04E1F4();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v101 = v57;
  LOBYTE(v131) = 0;
  v102 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v99 = v59;
  v100 = v58;
  v97 = v61;
  v98 = v60;
  v62 = v111;
  sub_1BE051984();
  LOBYTE(v8) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD390F8, &qword_1BE0BA700) + 36);
  *v71 = v8;
  *(v71 + 8) = v64;
  *(v71 + 16) = v66;
  *(v71 + 24) = v68;
  *(v71 + 32) = v70;
  *(v71 + 40) = 0;
  LOBYTE(v8) = sub_1BE050224();
  sub_1BE04E1F4();
  v72 = v109;
  v73 = v62 + *(v108 + 44);
  *v73 = v8;
  *(v73 + 8) = v74;
  *(v73 + 16) = v75;
  *(v73 + 24) = v76;
  *(v73 + 32) = v77;
  *(v73 + 40) = 0;
  sub_1BD0DE19C(v62, v72, &qword_1EBD47490, &qword_1BE0EFBC0);
  v79 = v106;
  v78 = v107;
  *&v120 = v112;
  *(&v120 + 1) = v106;
  LOBYTE(v121) = v50;
  *(&v121 + 1) = *v115;
  DWORD1(v121) = *&v115[3];
  *(&v121 + 1) = v107;
  *&v122 = KeyPath;
  BYTE8(v122) = 0;
  *(&v122 + 9) = *v114;
  HIDWORD(v122) = *&v114[3];
  *&v123 = v49;
  *(&v123 + 1) = 4;
  LOBYTE(v124) = 0;
  DWORD1(v124) = *(v117 + 3);
  *(&v124 + 1) = v117[0];
  BYTE8(v124) = v14;
  *(&v124 + 9) = *v116;
  HIDWORD(v124) = *&v116[3];
  *&v125 = v52;
  *(&v125 + 1) = v54;
  v81 = v100;
  v80 = v101;
  *&v126 = v56;
  *(&v126 + 1) = v101;
  LOBYTE(v127) = 0;
  *(&v127 + 1) = *v119;
  DWORD1(v127) = *&v119[3];
  LOBYTE(v50) = v102;
  BYTE8(v127) = v102;
  HIDWORD(v127) = *&v118[3];
  *(&v127 + 9) = *v118;
  v83 = v98;
  v82 = v99;
  *&v128 = v100;
  *(&v128 + 1) = v99;
  v84 = v97;
  *&v129 = v98;
  *(&v129 + 1) = v97;
  v130 = 0;
  v85 = v128;
  v86 = v129;
  v87 = v110;
  *(v110 + 160) = 0;
  v87[8] = v85;
  v87[9] = v86;
  v88 = v121;
  *v87 = v120;
  v87[1] = v88;
  v89 = v122;
  v90 = v123;
  v91 = v127;
  v87[6] = v126;
  v87[7] = v91;
  v92 = v125;
  v87[4] = v124;
  v87[5] = v92;
  v87[2] = v89;
  v87[3] = v90;
  v93 = v87;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8C8, &qword_1BE0EE0B8);
  sub_1BD0DE19C(v72, v93 + *(v94 + 48), &qword_1EBD47490, &qword_1BE0EFBC0);
  sub_1BD0DE19C(&v120, &v131, &qword_1EBD4F8D0, &qword_1BE0EE0C0);
  sub_1BD0DE53C(v111, &qword_1EBD47490, &qword_1BE0EFBC0);
  sub_1BD0DE53C(v72, &qword_1EBD47490, &qword_1BE0EFBC0);
  v131 = v112;
  v132 = v79;
  v133 = v104;
  *v134 = *v115;
  *&v134[3] = *&v115[3];
  v135 = v78;
  v136 = v105;
  v137 = 0;
  *v138 = *v114;
  *&v138[3] = *&v114[3];
  v139 = v103;
  v140 = 4;
  v141 = 0;
  *&v142[3] = *(v117 + 3);
  *v142 = v117[0];
  v143 = v14;
  *&v144[3] = *&v116[3];
  *v144 = *v116;
  v145 = v52;
  v146 = v54;
  v147 = v56;
  v148 = v80;
  v149 = 0;
  *v150 = *v119;
  *&v150[3] = *&v119[3];
  v151 = v50;
  *&v152[3] = *&v118[3];
  *v152 = *v118;
  v153 = v81;
  v154 = v82;
  v155 = v83;
  v156 = v84;
  v157 = 0;
  return sub_1BD0DE53C(&v131, &qword_1EBD4F8D0, &qword_1BE0EE0C0);
}

uint64_t sub_1BD69CAC0@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F8C0, &unk_1BE0EE040);
  return sub_1BD69C584(v2, a2 + *(v4 + 44));
}

unint64_t sub_1BD69CB10()
{
  result = qword_1EBD4F8D8;
  if (!qword_1EBD4F8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F8E0, &qword_1BE0EE0C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F8D8);
  }

  return result;
}

void sub_1BD69CC58(void (*a1)(unint64_t, unint64_t, void, uint64_t, double), void *a2)
{
  v3 = v2;
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v64 - v17;
  v19 = sub_1BE04B944();
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
  if (!v25)
  {
    a1(0xD000000000000015, 0x80000001BE134380, 0, 3, v22);
    return;
  }

  v71 = v21;
  v72 = v9;
  v73 = v20;
  v74 = v7;
  v75 = v25;
  v26 = [v75 configuration];
  if (!v26)
  {
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [v26 type];

  if (v28 != 10)
  {
    (a1)(0xD000000000000014, 0x80000001BE1343A0, 0, 1);
LABEL_15:
    v49 = v75;

    return;
  }

  v68 = v6;
  v69 = a1;
  v70 = a2;
  sub_1BD69D3C4(v75);
  if (!v29)
  {
    v69(0xD00000000000001BLL, 0x80000001BE1343C0, 0, 3);
    goto LABEL_15;
  }

  v65 = v12;
  if ([v75 primaryCredentialType] == 140)
  {
    v30 = 2;
  }

  else
  {
    v30 = 1;
  }

  v67 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_context);
  sub_1BE04BB94();
  v31 = objc_allocWithZone(sub_1BE04B624());
  v66 = v30;
  v32 = sub_1BE04B614();
  sub_1BE04D0E4();
  v33 = sub_1BE04D204();
  v34 = sub_1BE052C54();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1BD026000, v33, v34, "Verifying no pass already provisioned", v35, 2u);
    MEMORY[0x1BFB45F20](v35, -1, -1);
  }

  v36 = *(v74 + 8);
  v37 = v18;
  v38 = v68;
  v74 += 8;
  v36(v37, v68);
  v39 = *(v3 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_credential);
  v40 = sub_1BE04B5F4();

  if (v40)
  {
    v41 = v70;
    sub_1BE048964();
    sub_1BD69FE58(v66, v3, v69, v41, sub_1BD69FBD4);

LABEL_32:
    v41, v42, v43, v44, v45, v46, v47, v48;
    return;
  }

  if ((sub_1BD69DB20() & 1) == 0)
  {
    v41 = v70;
    sub_1BE048964();
    sub_1BD69E94C(v3, v69, v41);

    goto LABEL_32;
  }

  sub_1BE04D0E4();
  v50 = sub_1BE04D204();
  v51 = sub_1BE052C54();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_1BD026000, v50, v51, "Verifying no pending proofing", v52, 2u);
    MEMORY[0x1BFB45F20](v52, -1, -1);
  }

  v36(v15, v38);
  v53 = v32;
  v54 = sub_1BE04B604();
  v55 = v65;
  if (v54)
  {
    v41 = v70;
    sub_1BE048964();
    sub_1BD69FE58(v66, v3, v69, v41, sub_1BD69E460);
LABEL_31:

    goto LABEL_32;
  }

  sub_1BE04BB94();
  v56 = sub_1BE04B934();
  (*(v71 + 8))(v24, v73);
  v57 = [v75 supportsDeviceOS_];
  swift_unknownObjectRelease();
  if (!v57)
  {
    sub_1BE04D0E4();
    v61 = sub_1BE04D204();
    v62 = sub_1BE052C54();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_1BD026000, v61, v62, "Device doesn't support product", v63, 2u);
      MEMORY[0x1BFB45F20](v63, -1, -1);
    }

    v36(v72, v38);
    v41 = v70;
    sub_1BE048964();
    sub_1BD69DFD0(v3, v69, v41);
    goto LABEL_31;
  }

  sub_1BE04D0E4();
  v58 = sub_1BE04D204();
  v59 = sub_1BE052C54();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1BD026000, v58, v59, "Identity requirements satisfied", v60, 2u);
    MEMORY[0x1BFB45F20](v60, -1, -1);
  }

  v36(v55, v38);
  v69(0, 0, 0, 0);
}

uint64_t sub_1BD69D3C4(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v114 - v10;
  v12 = [a1 clientInfo];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BE052244();
  }

  else
  {
    v14 = sub_1BD1AB16C(MEMORY[0x1E69E7CC0]);
  }

  sub_1BE04D0E4();
  sub_1BE048C84();
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C54();
  v14, v17, v18, v19, v20, v21, v22, v23;
  if (os_log_type_enabled(v15, v16))
  {
    v24 = swift_slowAlloc();
    v115 = v4;
    v116 = v7;
    v25 = v5;
    v26 = v24;
    v27 = swift_slowAlloc();
    v119[0] = v27;
    *v26 = 136315138;
    v28 = sub_1BE052254();
    v30 = v29;
    v31 = v2;
    v32 = sub_1BD123690(v28, v29, v119);
    v30, v33, v34, v35, v36, v37, v38, v39;
    *(v26 + 4) = v32;
    v2 = v31;
    _os_log_impl(&dword_1BD026000, v15, v16, "Setting up proofing flow manager with info %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27, v40, v41, v42, v43, v44, v45, v46);
    MEMORY[0x1BFB45F20](v27, -1, -1);
    v47 = v26;
    v5 = v25;
    v4 = v115;
    v7 = v116;
    MEMORY[0x1BFB45F20](v47, -1, -1);
  }

  v48 = *(v5 + 8);
  v48(v11, v4);
  v117 = sub_1BE052434();
  v118 = v49;
  sub_1BE0537C4();
  if (!v14[2] || (v57 = sub_1BD149040(v119), (v50 & 1) == 0))
  {
    v91 = v14;
LABEL_14:
    v91, v50, v51, v52, v53, v54, v55, v56;
    sub_1BD149CE8(v119);
    goto LABEL_15;
  }

  sub_1BD038CD0(v14[7] + 32 * v57, v120);
  sub_1BD149CE8(v119);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14, v58, v59, v60, v61, v62, v63, v64;
    goto LABEL_15;
  }

  v65 = v117;
  v66 = v118;
  v117 = sub_1BE052434();
  v118 = v67;
  sub_1BE0537C4();
  if (!v14[2] || (v75 = sub_1BD149040(v119), (v68 & 1) == 0))
  {
    v14, v68, v69, v70, v71, v72, v73, v74;
    v91 = v66;
    goto LABEL_14;
  }

  sub_1BD038CD0(v14[7] + 32 * v75, v120);
  sub_1BD149CE8(v119);
  v14, v76, v77, v78, v79, v80, v81, v82;
  if (swift_dynamicCast())
  {
    return v65;
  }

  v66, v83, v84, v85, v86, v87, v88, v89;
LABEL_15:
  v92 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_precursorPass);
  if (v92)
  {
    v93 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_precursorPass);
    v94 = v93;
    goto LABEL_17;
  }

  v109 = *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_credential);
  if (!v109)
  {
    v94 = 0;
    goto LABEL_26;
  }

  v110 = [v109 underlyingPaymentPass];
  v94 = v110;
  if (v110)
  {
    v93 = v110;
    v92 = 0;
LABEL_17:
    v95 = v92;
    v96 = [v93 issuerAdministrativeAreaCode];

    if (v96)
    {
      v97 = sub_1BE052434();
      v99 = v98;

      v100 = [v94 issuerCountryCode];
      if (v100)
      {
        v108 = v100;
        sub_1BE052434();

        return v97;
      }

      v99, v101, v102, v103, v104, v105, v106, v107;
    }
  }

LABEL_26:
  sub_1BE04D0E4();
  v111 = sub_1BE04D204();
  v112 = sub_1BE052C54();
  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_1BD026000, v111, v112, "Failed to find region for proofing", v113, 2u);
    MEMORY[0x1BFB45F20](v113, -1, -1);
  }

  v48(v7, v4);
  return 0;
}

void sub_1BD69D910(void (*a1)(id, unint64_t, unint64_t, uint64_t))
{
  v2 = *MEMORY[0x1E69BC090];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B69E0;
  *(inited + 32) = sub_1BE052434();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x80000001BE134470;
  v5 = v2;
  v6 = sub_1BD1AACF8(inited);
  swift_setDeallocating();
  sub_1BD0DE53C(inited + 32, &qword_1EBD52080, &qword_1BE0BDD40);
  v7 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v8 = sub_1BE052224();
  v6, v9, v10, v11, v12, v13, v14, v15;
  v16 = [v7 initWithDomain:v5 code:-1 userInfo:v8];

  v17 = v16;
  a1(v16, 0xD00000000000001DLL, 0x80000001BE134470, 4);
}

uint64_t sub_1BD69DA94()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD69DAD0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD69DB20()
{
  v0 = sub_1BE04D214();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - v5;
  if (([objc_opt_self() currentStateForPolicy_] & 6) == 0)
  {
    if (UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled() || _AXSAssistiveTouchEnabled())
    {
      sub_1BE04D0E4();
      v8 = sub_1BE04D204();
      v9 = sub_1BE052C54();
      if (!os_log_type_enabled(v8, v9))
      {
        v7 = 1;
        goto LABEL_10;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v9, "Identity product can be added due to AX settings", v10, 2u);
      v7 = 1;
    }

    else
    {
      sub_1BE04D0E4();
      v8 = sub_1BE04D204();
      v12 = sub_1BE052C54();
      if (!os_log_type_enabled(v8, v12))
      {
        v7 = 0;
        v6 = v3;
        goto LABEL_10;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1BD026000, v8, v12, "Identity product can not be added due lack of biometric and AX settings", v10, 2u);
      v7 = 0;
      v6 = v3;
    }

    MEMORY[0x1BFB45F20](v10, -1, -1);
LABEL_10:

    (*(v1 + 8))(v6, v0);
    return v7;
  }

  return 1;
}

void sub_1BD69DD4C(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A028C;
  *(v9 + 24) = v7;
  v58 = sub_1BD267328;
  v59 = v9;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_39_1;
  v10 = _Block_copy(&v54);
  v11 = v59;
  sub_1BE048964();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD6A028C;
  *(v19 + 24) = v7;
  v58 = sub_1BD267328;
  v59 = v19;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_46_2;
  v20 = _Block_copy(&v54);
  v21 = v59;
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v20);
  _Block_release(v20);
  _Block_release(v10);

  if (v29)
  {
    v30 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v38 + 24))(v29, ObjectType, v38);
      v7, v40, v41, v42, v43, v44, v45, v46;

      swift_unknownObjectRelease();
    }

    else
    {
      v7, v31, v32, v33, v34, v35, v36, v37;
    }
  }

  else
  {
    a3(0xD000000000000013, 0x80000001BE134520, 0, 1);
    v7, v47, v48, v49, v50, v51, v52, v53;
  }
}

uint64_t sub_1BD69DFD0(uint64_t a1, void (*a2)(unint64_t, unint64_t, void, uint64_t), uint64_t a3)
{
  v64 = a2;
  v71 = a1;
  v69 = sub_1BE04B8D4();
  v4 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - v8;
  v67 = sub_1BE04B944();
  v10 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE04BD74();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - v18;
  v20 = *(v14 + 104);
  v66 = *MEMORY[0x1E69B80D8];
  v65 = v20;
  v20(&v62 - v18, v17);
  v70 = a3;
  sub_1BE048964();
  v21 = PKPassKitBundle();
  if (!v21)
  {

    __break(1u);
LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  v22 = v21;
  v62 = sub_1BE04B6F4();
  v63 = v23;

  v24 = *(v14 + 8);
  v24(v19, v13);
  sub_1BE04BB94();
  sub_1BE04B924();
  (*(v10 + 8))(v12, v67);
  v25 = v69;
  (*(v4 + 104))(v6, *MEMORY[0x1E69B7F80], v69);
  v26 = sub_1BE04B8C4();
  v27 = *(v4 + 8);
  v27(v6, v25);
  v27(v9, v25);
  if (v26)
  {
    v28 = "OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE_WATCH";
  }

  else
  {
    v28 = "OS_VERSION_UPDATE_REQUIRED_ERROR_MESSAGE_IPHONE";
  }

  v29 = v68;
  v65(v68, v66, v13);
  v30 = PKPassKitBundle();
  if (!v30)
  {
    goto LABEL_9;
  }

  v31 = v30;
  v32 = v28 - 32;
  sub_1BE04B6F4();
  v34 = v33;

  v24(v29, v13);
  v35 = v63;
  v36 = sub_1BE052404();
  v37 = sub_1BE052404();
  v38 = PKDisplayableErrorCustom();

  if (v38)
  {
    v34, v39, v40, v41, v42, v43, v44, v45;
    (v32 | 0x8000000000000000), v46, v47, v48, v49, v50, v51, v52;
    v35, v53, v54, v55, v56, v57, v58, v59;
    v60 = v70;
    sub_1BE048964();
    sub_1BD69DD4C(v38, v71, v64, v60);
  }

LABEL_10:

  __break(1u);
  return result;
}

void sub_1BD69E460(uint64_t a1, uint64_t a2, void (*a3)(id, unint64_t, unint64_t, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A0284;
  *(v9 + 24) = v7;
  v58 = sub_1BD267328;
  v59 = v9;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_22_5;
  v10 = _Block_copy(&v54);
  v11 = v59;
  sub_1BE048964();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD6A0284;
  *(v19 + 24) = v7;
  v58 = sub_1BD267328;
  v59 = v19;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_29_5;
  v20 = _Block_copy(&v54);
  v21 = v59;
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v20);
  _Block_release(v20);
  _Block_release(v10);

  if (v29)
  {
    v30 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v38 + 24))(v29, ObjectType, v38);
      v7, v40, v41, v42, v43, v44, v45, v46;

      swift_unknownObjectRelease();
    }

    else
    {
      v7, v31, v32, v33, v34, v35, v36, v37;
    }
  }

  else
  {
    sub_1BD69D910(a3);
    v7, v47, v48, v49, v50, v51, v52, v53;
  }
}

void sub_1BD69E6C8(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A02D4;
  *(v9 + 24) = v7;
  v58 = sub_1BD267328;
  v59 = v9;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_56_0;
  v10 = _Block_copy(&v54);
  v11 = v59;
  sub_1BE048964();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD6A02D4;
  *(v19 + 24) = v7;
  v58 = sub_1BD267328;
  v59 = v19;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_63_1;
  v20 = _Block_copy(&v54);
  v21 = v59;
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v20);
  _Block_release(v20);
  _Block_release(v10);

  if (v29)
  {
    v30 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v38 + 24))(v29, ObjectType, v38);
      v7, v40, v41, v42, v43, v44, v45, v46;

      swift_unknownObjectRelease();
    }

    else
    {
      v7, v31, v32, v33, v34, v35, v36, v37;
    }
  }

  else
  {
    a3(0xD000000000000028, 0x80000001BE134850, 0, 3);
    v7, v47, v48, v49, v50, v51, v52, v53;
  }
}

void sub_1BD69E94C(uint64_t a1, void (*a2)(unint64_t, unint64_t, void, uint64_t), void *a3)
{
  v212 = a2;
  v220 = a1;
  v227 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v207 = &v197 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v215 = &v197 - v7;
  v214 = sub_1BE04AA64();
  v219 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v218 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v206 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v205 = &v197 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v208 = &v197 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v202 = &v197 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v204 = &v197 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v199 = &v197 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v203 = &v197 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v217 = &v197 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v198 = &v197 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v201 = &v197 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v200 = &v197 - v31;
  v32 = sub_1BE04D214();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v197 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = objc_allocWithZone(MEMORY[0x1E696EE50]);
  v216 = a3;
  sub_1BE048964();
  v37 = [v36 init];
  v222 = 0;
  v38 = [v37 canEvaluatePolicy:1 error:&v222];

  v39 = v222;
  v211 = v222;
  if (v222)
  {
    v221 = v10;
    v40 = v222;
    sub_1BE04D0E4();
    v41 = v40;
    v42 = sub_1BE04D204();
    v43 = sub_1BE052C34();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v213 = v9;
      v46 = v45;
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v39;
      v47 = v41;
      _os_log_impl(&dword_1BD026000, v42, v43, "Receive error while performing LocalAuthentication canEvaluatePolicy: %@", v44, 0xCu);
      sub_1BD0DE53C(v46, &unk_1EBD3E590, &unk_1BE0B7E50);
      v48 = v46;
      v9 = v213;
      MEMORY[0x1BFB45F20](v48, -1, -1);
      MEMORY[0x1BFB45F20](v44, -1, -1);
    }

    else
    {
      v47 = v42;
      v42 = v41;
    }

    (*(v33 + 8))(v35, v32);
    v10 = v221;
  }

  IsAvailable = PKPearlIsAvailable();
  v50 = *MEMORY[0x1E69B80E8];
  v51 = *(v10 + 104);
  LODWORD(v213) = IsAvailable;
  LODWORD(v221) = v50;
  if (!v38)
  {
    v52 = v217;
    if (IsAvailable)
    {
      v64 = v202;
      v51(v202);
      v65 = PKPassKitBundle();
      if (!v65)
      {
LABEL_82:

        __break(1u);
        goto LABEL_83;
      }

      v66 = v65;
      v209 = sub_1BE04B6F4();
      v210 = v67;

      v57 = *(v10 + 8);
      v57(v64, v9);
      v68 = *(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
      if (v68 && [*(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] == 129)
      {
        goto LABEL_25;
      }

      (v51)(v205, v221, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_1BE0B69E0;
      if (v68)
      {
        v86 = [v68 displayName];
        if (v86)
        {
          v87 = v9;
          v88 = v86;
          v68 = sub_1BE052434();
          v90 = v89;

          v9 = v87;
          v52 = v217;
LABEL_48:
          *(v80 + 56) = MEMORY[0x1E69E6158];
          *(v80 + 64) = sub_1BD110550();
          if (v90)
          {
            v104 = v68;
          }

          else
          {
            v104 = 0;
          }

          v105 = 0xE000000000000000;
          if (v90)
          {
            v105 = v90;
          }

          *(v80 + 32) = v104;
          *(v80 + 40) = v105;
          v103 = &v225;
          goto LABEL_70;
        }

        v68 = 0;
      }

      v90 = 0;
      goto LABEL_48;
    }

    v74 = v208;
    v51(v208);
    v75 = PKPassKitBundle();
    if (!v75)
    {
LABEL_84:

      __break(1u);
      goto LABEL_85;
    }

    v76 = v75;
    v209 = sub_1BE04B6F4();
    v210 = v77;

    v57 = *(v10 + 8);
    v57(v74, v9);
    v78 = *(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
    if (v78 && [*(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] == 129)
    {
LABEL_25:
      v59 = v199;
      (v51)(v199, v221, v9);
      v208 = sub_1BE04B714();
      v63 = v79;
      goto LABEL_71;
    }

    (v51)(v206, v221, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1BE0B69E0;
    if (v78)
    {
      v96 = [v78 displayName];
      if (v96)
      {
        v97 = v9;
        v98 = v96;
        v78 = sub_1BE052434();
        v100 = v99;

        v9 = v97;
        v52 = v217;
LABEL_64:
        *(v80 + 56) = MEMORY[0x1E69E6158];
        *(v80 + 64) = sub_1BD110550();
        if (v100)
        {
          v108 = v78;
        }

        else
        {
          v108 = 0;
        }

        v109 = 0xE000000000000000;
        if (v100)
        {
          v109 = v100;
        }

        *(v80 + 32) = v108;
        *(v80 + 40) = v109;
        v103 = &v226;
        goto LABEL_70;
      }

      v78 = 0;
    }

    v100 = 0;
    goto LABEL_64;
  }

  v52 = v217;
  if ((IsAvailable & 1) == 0)
  {
    v69 = v201;
    v51(v201);
    v70 = PKPassKitBundle();
    if (!v70)
    {
LABEL_83:

      __break(1u);
      goto LABEL_84;
    }

    v71 = v70;
    v209 = sub_1BE04B6F4();
    v210 = v72;

    v57 = *(v10 + 8);
    v57(v69, v9);
    v73 = *(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
    if (v73 && [*(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] == 129)
    {
      goto LABEL_25;
    }

    (v51)(v204, v221, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1BE0B69E0;
    if (v73)
    {
      v91 = [v73 displayName];
      if (v91)
      {
        v92 = v9;
        v93 = v91;
        v73 = sub_1BE052434();
        v95 = v94;

        v9 = v92;
        v52 = v217;
LABEL_56:
        *(v80 + 56) = MEMORY[0x1E69E6158];
        *(v80 + 64) = sub_1BD110550();
        if (v95)
        {
          v106 = v73;
        }

        else
        {
          v106 = 0;
        }

        v107 = 0xE000000000000000;
        if (v95)
        {
          v107 = v95;
        }

        *(v80 + 32) = v106;
        *(v80 + 40) = v107;
        v103 = &v224;
        goto LABEL_70;
      }

      v73 = 0;
    }

    v95 = 0;
    goto LABEL_56;
  }

  v53 = v200;
  v51(v200);
  v54 = PKPassKitBundle();
  if (!v54)
  {
LABEL_81:

    __break(1u);
    goto LABEL_82;
  }

  v55 = v54;
  v209 = sub_1BE04B6F4();
  v210 = v56;

  v57 = *(v10 + 8);
  v57(v53, v9);
  v58 = *(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product);
  if (!v58 || [*(v220 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_product) primaryCredentialType] != 129)
  {
    (v51)(v203, v221, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1BE0B69E0;
    if (v58)
    {
      v81 = [v58 displayName];
      if (v81)
      {
        v82 = v9;
        v83 = v81;
        v58 = sub_1BE052434();
        v85 = v84;

        v9 = v82;
        v52 = v217;
LABEL_40:
        *(v80 + 56) = MEMORY[0x1E69E6158];
        *(v80 + 64) = sub_1BD110550();
        if (v85)
        {
          v101 = v58;
        }

        else
        {
          v101 = 0;
        }

        v102 = 0xE000000000000000;
        if (v85)
        {
          v102 = v85;
        }

        *(v80 + 32) = v101;
        *(v80 + 40) = v102;
        v103 = &v223;
LABEL_70:
        v59 = *(v103 - 32);
        v208 = sub_1BE04B714();
        v63 = v110;
        v80, v110, v111, v112, v113, v114, v115, v116;
        goto LABEL_71;
      }

      v58 = 0;
    }

    v85 = 0;
    goto LABEL_40;
  }

  v59 = v198;
  (v51)(v198, v221, v9);
  v60 = PKPassKitBundle();
  if (v60)
  {
    v61 = v60;
    v208 = sub_1BE04B6F4();
    v63 = v62;

LABEL_71:
    v57(v59, v9);
    (v51)(v52, v221, v9);
    v117 = PKPassKitBundle();
    v118 = v215;
    if (!v117)
    {

      __break(1u);
      goto LABEL_79;
    }

    v119 = v117;
    v120 = v9;
    v121 = sub_1BE04B6F4();
    v123 = v122;

    v57(v52, v120);
    v124 = (v219 + 48);
    v125 = v214;
    if (v213)
    {
      sub_1BE04AA54();
      v126 = (*v124)(v118, 1, v125);
      v127 = v218;
      if (v126 != 1)
      {
        goto LABEL_76;
      }

      __break(1u);
    }

    v118 = v207;
    sub_1BE04AA54();
    v128 = (*v124)(v118, 1, v125);
    v127 = v218;
    if (v128 != 1)
    {
LABEL_76:
      v129 = v219;
      (*(v219 + 32))(v127, v118, v125);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30, &unk_1BE0C7370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BE0B98D0;
      *(inited + 32) = sub_1BE052434();
      *(inited + 40) = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630, &unk_1BE0CB870);
      v132 = swift_allocObject();
      *(v132 + 16) = xmmword_1BE0B69E0;
      *(v132 + 32) = v121;
      *(v132 + 40) = v123;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
      *(inited + 48) = v132;
      *(inited + 80) = sub_1BE052434();
      *(inited + 88) = v133;
      *(inited + 120) = v125;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 96));
      (*(v129 + 16))(boxed_opaque_existential_1, v127, v125);
      *(inited + 128) = sub_1BE052434();
      *(inited + 136) = v135;
      sub_1BE048C84();
      v136 = PKProvisioningErrorSeverityToString();
      v137 = sub_1BE052434();
      v139 = v138;

      *(inited + 168) = MEMORY[0x1E69E6158];
      *(inited + 144) = v137;
      *(inited + 152) = v139;
      v140 = sub_1BD1AACF8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080, &qword_1BE0BDD40);
      swift_arrayDestroy();
      v141 = v210;
      v142 = sub_1BE052404();
      v141, v143, v144, v145, v146, v147, v148, v149;
      v150 = sub_1BE052404();
      v63, v151, v152, v153, v154, v155, v156, v157;
      v158 = sub_1BD1A8284(v140);
      v159 = sub_1BE052224();
      v158, v160, v161, v162, v163, v164, v165, v166;
      v167 = PKDisplayableErrorCustom();

      if (v167)
      {
        v140, v168, v169, v170, v171, v172, v173, v174;
        v123, v175, v176, v177, v178, v179, v180, v181;
        v182 = v216;
        sub_1BE048964();
        sub_1BD69E6C8(v167, v220, v212, v182);

        v182, v183, v184, v185, v186, v187, v188, v189;
        (*(v129 + 8))(v218, v125);
        v182, v190, v191, v192, v193, v194, v195, v196;

        return;
      }

LABEL_79:

      __break(1u);
    }

    __break(1u);
    goto LABEL_81;
  }

LABEL_85:

  __break(1u);
}

void sub_1BD69FBD4(uint64_t a1, uint64_t a2, void (*a3)(unint64_t, unint64_t, void, uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a4;
  sub_1BE048964();
  v8 = sub_1BE04A844();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BD6A023C;
  *(v9 + 24) = v7;
  v58 = sub_1BD267328;
  v59 = v9;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_156;
  v10 = _Block_copy(&v54);
  v11 = v59;
  sub_1BE048964();
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1BD6A023C;
  *(v19 + 24) = v7;
  v58 = sub_1BD214190;
  v59 = v19;
  v54 = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_1BD126964;
  v57 = &block_descriptor_12_4;
  v20 = _Block_copy(&v54);
  v21 = v59;
  sub_1BE048964();
  v21, v22, v23, v24, v25, v26, v27, v28;
  v29 = PKAlertForDisplayableErrorWithHandlers(v8, 0, v10, v20);
  _Block_release(v20);
  _Block_release(v10);

  if (v29)
  {
    v30 = a2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningIdentityRequirementFlowItem_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v30 + 8);
      ObjectType = swift_getObjectType();
      (*(v38 + 24))(v29, ObjectType, v38);
      v7, v40, v41, v42, v43, v44, v45, v46;

      swift_unknownObjectRelease();
    }

    else
    {
      v7, v31, v32, v33, v34, v35, v36, v37;
    }
  }

  else
  {
    a3(0xD000000000000014, 0x80000001BE134450, 0, 3);
    v7, v47, v48, v49, v50, v51, v52, v53;
  }
}

uint64_t sub_1BD69FE58(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t, uint64_t, uint64_t))
{
  v57 = a3;
  v58 = a5;
  v56 = a2;
  v59 = a1;
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v54 - v18;
  v20 = *MEMORY[0x1E69B80E8];
  v21 = *(v7 + 104);
  v21(v54 - v18, v20, v6, v17);
  v60 = a4;
  sub_1BE048964();
  v22 = PKPassKitBundle();
  if (!v22)
  {

    __break(1u);
LABEL_14:

    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v54[1] = sub_1BE04B6F4();
  v55 = v24;

  v25 = *(v7 + 8);
  v25(v19, v6);
  if (v59 < 2)
  {
    (v21)(v9, v20, v6);
    v26 = PKPassKitBundle();
    if (!v26)
    {
LABEL_15:

      __break(1u);
      goto LABEL_16;
    }

    v27 = v26;
    sub_1BE04B6F4();
    v29 = v28;
    v15 = v9;
    goto LABEL_11;
  }

  if (v59 != 2)
  {
    (v21)(v12, v20, v6);
    v32 = PKPassKitBundle();
    if (!v32)
    {
      goto LABEL_17;
    }

    v27 = v32;
    sub_1BE04B6F4();
    v29 = v33;
    v15 = v12;
    goto LABEL_11;
  }

  (v21)(v15, v20, v6);
  v30 = PKPassKitBundle();
  if (v30)
  {
    v27 = v30;
    sub_1BE04B6F4();
    v29 = v31;
LABEL_11:

    v25(v15, v6);
    v34 = v55;
    v35 = sub_1BE052404();
    v36 = sub_1BE052404();
    v29, v37, v38, v39, v40, v41, v42, v43;
    v44 = PKDisplayableErrorCustom();

    if (v44)
    {
      v34, v45, v46, v47, v48, v49, v50, v51;
      v52 = v60;
      sub_1BE048964();
      v58(v44, v56, v57, v52);
    }

    goto LABEL_14;
  }

LABEL_16:

  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

uint64_t sub_1BD6A0380(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE04C744();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-v12];
  v19 = a1 & 1;
  v20 = (a1 & 0x100) >> 8;
  v21 = a2;
  v22 = a3;
  v16[16] = a1 & 1;
  v16[17] = v20;
  v17 = a2;
  v18 = a3;
  v14 = MEMORY[0x1E69BC948];
  if ((a1 & 0x100) != 0)
  {
    v14 = MEMORY[0x1E69BC950];
  }

  (*(v7 + 104))(v9, *v14, v6, v11);
  (*(v7 + 32))(v13, v9, v6);
  sub_1BE04C784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABA8, &qword_1BE0BB6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  sub_1BD6A0C8C();
  sub_1BD170E70();
  sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330, &qword_1BE0BB6F0, MEMORY[0x1E697BF38]);
  return sub_1BE04C6E4();
}

uint64_t sub_1BD6A05C8(uint64_t a1)
{
  sub_1BE0511D4();

  return sub_1BE04C774();
}

void *sub_1BD6A0624@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v131[-v9];
  v12 = *(v5 + 104);
  if ((a1 & 0x100) != 0)
  {
    v12(&v131[-v9], *MEMORY[0x1E69B80D8], v4, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v71 = result;
      v72 = sub_1BE04B6F4();
      v74 = v73;

      (*(v5 + 8))(v11, v4);
      *&v137 = v72;
      *(&v137 + 1) = v74;
      sub_1BD0DDEBC();
      v75 = sub_1BE0506C4();
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v82 = sub_1BE050324();
      v83 = sub_1BE0505F4();
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v82, v84, v86, v88, v90, v91, v92, v93;
      sub_1BD0DDF10(v75, v77, (v79 & 1), v94, v95, v96, v97, v98);
      v81, v99, v100, v101, v102, v103, v104, v105;
      v106 = sub_1BE0511F4();
      v107 = sub_1BE050564();
      v109 = v108;
      LOBYTE(v81) = v110;
      v112 = v111;
      v106, v108, v110, v111, v113, v114, v115, v116;
      sub_1BD0DDF10(v83, v85, (v87 & 1), v117, v118, v119, v120, v121);
      v89, v122, v123, v124, v125, v126, v127, v128;
      v132 = v107;
      v133 = v109;
      v134 = v81 & 1;
      v135 = v112;
      v136 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v12(v7, *MEMORY[0x1E69B8068], v4, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v14 = result;
      v15 = sub_1BE04B6F4();
      v17 = v16;

      (*(v5 + 8))(v7, v4);
      *&v137 = v15;
      *(&v137 + 1) = v17;
      sub_1BD0DDEBC();
      v18 = sub_1BE0506C4();
      v20 = v19;
      LOBYTE(v14) = v21;
      v23 = v22;
      v24 = sub_1BE050324();
      v25 = sub_1BE0505F4();
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v24, v26, v28, v30, v32, v33, v34, v35;
      sub_1BD0DDF10(v18, v20, (v14 & 1), v36, v37, v38, v39, v40);
      v23, v41, v42, v43, v44, v45, v46, v47;
      v48 = sub_1BE0511F4();
      v49 = sub_1BE050564();
      v51 = v50;
      LOBYTE(v23) = v52;
      v54 = v53;
      v48, v50, v52, v53, v55, v56, v57, v58;
      sub_1BD0DDF10(v25, v27, (v29 & 1), v59, v60, v61, v62, v63);
      v31, v64, v65, v66, v67, v68, v69, v70;
      v132 = v49;
      v133 = v51;
      v134 = v23 & 1;
      v135 = v54;
      v136 = 1;
LABEL_6:
      result = sub_1BE04F9A4();
      v129 = v138;
      v130 = v139;
      *a2 = v137;
      *(a2 + 16) = v129;
      *(a2 + 32) = v130;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6A09FC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330, &qword_1BE0BB6F0);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  if (a1)
  {
    v12 = v5;
    sub_1BE04E4F4();
    (*(v12 + 32))(a2, v8, v4);
    return (*(v12 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v10 = *(v5 + 56);

    return v10(a2, 1, 1, v4, v6);
  }
}

uint64_t sub_1BD6A0B44()
{
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F918, &qword_1BE0EE198);
  sub_1BD0DE4F4(&qword_1EBD4F920, &qword_1EBD4F918, &qword_1BE0EE198, MEMORY[0x1E69BC928]);
  return sub_1BE051704();
}

void *sub_1BD6A0C2C@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1BD6A0624(v2 | *(v1 + 16), a1);
}

uint64_t sub_1BD6A0C64(uint64_t (*a1)(void, void, void))
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return a1(v2 | *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

unint64_t sub_1BD6A0C8C()
{
  result = qword_1EBD3C5D8;
  if (!qword_1EBD3C5D8)
  {
    sub_1BE04C784();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3C5D8);
  }

  return result;
}

void sub_1BD6A0CE4(void *a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v3 = a1[2];
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 7;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & v4[7];
      v10 = (v7 + 63) >> 6;
      v108 = v6 + 7;
      sub_1BE048C84();
      sub_1BE048C84();
      v18 = 0;
      v106 = v4;
      while (v9)
      {
        v19 = v9;
LABEL_19:
        v9 = (v19 - 1) & v19;
        if (v6[2])
        {
          v105 = (v19 - 1) & v19;
          v21 = *(v4[6] + ((v18 << 9) | (8 * __clz(__rbit64(v19)))));
          sub_1BE052434();
          v23 = v22;
          sub_1BE053D04();
          v107 = v21;
          sub_1BE052524();
          v24 = sub_1BE053D64();
          v23, v25, v26, v27, v28, v29, v30, v31;
          v32 = -1 << *(v6 + 32);
          v33 = v24 & ~v32;
          if ((*(v108 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
          {
            v34 = ~v32;
            while (1)
            {
              v35 = sub_1BE052434();
              v37 = v36;
              v39 = sub_1BE052434();
              v45 = v35;
              v46 = v38;
              if (v45 == v39 && v37 == v38)
              {
                v6, v38, v39, v40, v41, v42, v43, v44;
                v106, v77, v78, v79, v80, v81, v82, v83;
                v37, v84, v85, v86, v87, v88, v89, v90;
                v46, v91, v92, v93, v94, v95, v96, v97;
                goto LABEL_33;
              }

              v48 = sub_1BE053B84();
              v37, v49, v50, v51, v52, v53, v54, v55;
              v46, v56, v57, v58, v59, v60, v61, v62;
              if (v48)
              {
                break;
              }

              v33 = (v33 + 1) & v34;
              if (((*(v108 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            v6, v63, v64, v65, v66, v67, v68, v69;
            v106, v98, v99, v100, v101, v102, v103, v104;
LABEL_33:

            return;
          }

LABEL_28:

          v9 = v105;
          v4 = v106;
        }
      }

      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v10)
        {
          v6, v11, v12, v13, v14, v15, v16, v17;
          v4, v70, v71, v72, v73, v74, v75, v76;
          return;
        }

        v19 = v5[v20];
        ++v18;
        if (v19)
        {
          v18 = v20;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BD6A0F4C(void *a1, void *a2)
{
  v2 = a2[2];
  if (v2)
  {
    v3 = a1[2];
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 7;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & v4[7];
      v10 = (v7 + 63) >> 6;
      v97 = v6 + 7;
      sub_1BE048C84();
      sub_1BE048C84();
      v18 = 0;
LABEL_13:
      while (v9)
      {
        v19 = v9;
LABEL_19:
        v9 = (v19 - 1) & v19;
        if (v6[2])
        {
          sub_1BE053D04();
          sub_1BE052434();
          v22 = v21;
          sub_1BE052524();
          v22, v23, v24, v25, v26, v27, v28, v29;
          v30 = sub_1BE053D64();
          v31 = -1 << *(v6 + 32);
          v32 = v30 & ~v31;
          if ((*(v97 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
          {
            v95 = v9;
            v96 = v4;
            v33 = ~v31;
            while (1)
            {
              v34 = sub_1BE052434();
              v36 = v35;
              v38 = sub_1BE052434();
              v44 = v37;
              if (v34 == v38 && v36 == v37)
              {
                v6, v37, v38, v39, v40, v41, v42, v43;
                v96, v67, v68, v69, v70, v71, v72, v73;
                v36, v74, v75, v76, v77, v78, v79, v80;
                v44, v81, v82, v83, v84, v85, v86, v87;
                return;
              }

              v45 = sub_1BE053B84();
              v36, v46, v47, v48, v49, v50, v51, v52;
              v44, v53, v54, v55, v56, v57, v58, v59;
              if (v45)
              {
                break;
              }

              v32 = (v32 + 1) & v33;
              if (((*(v97 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                v9 = v95;
                v4 = v96;
                goto LABEL_13;
              }
            }

            v6, v11, v12, v13, v14, v15, v16, v17;
            v96, v88, v89, v90, v91, v92, v93, v94;
            return;
          }
        }
      }

      while (1)
      {
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v20 >= v10)
        {
          v6, v11, v12, v13, v14, v15, v16, v17;
          v4, v60, v61, v62, v63, v64, v65, v66;
          return;
        }

        v19 = v5[v20];
        ++v18;
        if (v19)
        {
          v18 = v20;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BD6A1404(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == -1)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = *&a1;
  }

  if (byte_1EBD4F940 == 1)
  {
    v14 = v13 != 0.0 || (qword_1EBD4F938 & 0x100) == 0;
    v15 = v13;
    if (v14)
    {
      if (!a3)
      {
        return;
      }

      v16 = qword_1EBD4F938 & 1;
LABEL_22:
      a3(v16);
      return;
    }
  }

  else
  {
    v15 = v13;
    if (!byte_1EBD4F940)
    {
      v15 = v13;
      if (a2)
      {
        v15 = v13;
        if (a2 != -1)
        {
          v17 = *&qword_1EBD4F938;
          v18 = v10;
          sub_1BE04AEF4();
          sub_1BE04AEC4();
          v20 = v19;
          (*(v9 + 8))(v12, v18);
          v21 = v20 - v17;
          if (v13 < v20 - v17)
          {
            v21 = v13;
          }

          v15 = v13 - v21;
        }
      }
    }
  }

  if (v15 == 0.0 && v13 > 0.0)
  {
    if (!a3)
    {
      return;
    }

    v16 = 0;
    goto LABEL_22;
  }

  v22 = swift_allocObject();
  v22[16] = 0;
  if (v15 <= 0.0)
  {
    v34 = 0;
  }

  else
  {
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = a3;
    v24[4] = a4;
    aBlock[4] = sub_1BD6A3848;
    v52 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD198918;
    aBlock[3] = &block_descriptor_157;
    v25 = _Block_copy(aBlock);
    v26 = v52;
    sub_1BE048964();
    sub_1BD0D44B8(a3, a4);
    v26, v27, v28, v29, v30, v31, v32, v33;
    v34 = [v23 scheduledTimerWithTimeInterval:0 repeats:v25 block:v15];
    _Block_release(v25);
    v35 = v34;
  }

  v36 = swift_allocObject();
  v36[2] = v22;
  v36[3] = a3;
  v36[4] = a4;
  v36[5] = v34;
  sub_1BE048964();
  sub_1BD0D44B8(a3, a4);
  sub_1BD6A1B1C(sub_1BD6A383C, v36);
  v22, v37, v38, v39, v40, v41, v42, v43;
  v36, v44, v45, v46, v47, v48, v49, v50;
}

uint64_t sub_1BD6A1728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE051F54();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1BE051FA4();
  v10 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD14BE3C();
  v13 = sub_1BE052D54();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  aBlock[4] = sub_1BD6A389C;
  v28 = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_22_6;
  v15 = _Block_copy(aBlock);
  v16 = v28;
  sub_1BE048964();
  sub_1BD0D44B8(a3, a4);
  v16, v17, v18, v19, v20, v21, v22, v23;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD6A38A8(&qword_1EBD366B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v12, v9, v15);
  _Block_release(v15);

  (*(v26 + 8))(v9, v7);
  return (*(v10 + 8))(v12, v25);
}

void sub_1BD6A19FC(uint64_t a1, void (*a2)(void, __n128))
{
  swift_beginAccess();
  if ((*(a1 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (a2)
    {
      (a2)(0);
    }
  }
}

id sub_1BD6A1A7C(char a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4, void *a5)
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (a3)
    {
      (a3)(a1 & 1);
    }
  }

  return [a5 invalidate];
}

void sub_1BD6A1B1C(uint64_t a1, uint64_t a2)
{
  v35[0] = sub_1BE04D214();
  v4 = *(v35[0] - 8);
  MEMORY[0x1EEE9AC00](v35[0]);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04AF64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBD36D00 != -1)
  {
    swift_once();
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_beginAccess();
  v12 = off_1EBD4F948;
  sub_1BE048964();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  off_1EBD4F948 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1BD1D761C(0, (v12[2] + 1), 1, v12);
    off_1EBD4F948 = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1BD1D761C((v14 > 1), (v15 + 1), 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[2 * v15];
  v16[4] = sub_1BD6A38F0;
  v16[5] = v11;
  off_1EBD4F948 = v12;
  swift_endAccess();
  if (byte_1EBD4F940)
  {
    sub_1BE04AEF4();
    sub_1BE04AEC4();
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    qword_1EBD4F938 = v18;
    byte_1EBD4F940 = 0;
    sub_1BE04D0E4();
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1BD026000, v19, v20, "CardReaderFlowItem: starting prewarm", v21, 2u);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v4 + 8))(v6, v35[0]);
    sub_1BD14BE3C();
    v22 = sub_1BE052D54();
    v23 = [objc_allocWithZone(MEMORY[0x1E69B9170]) initWithReplyQueue_];

    v24 = swift_allocObject();
    *(v24 + 16) = v35[1];
    *(v24 + 24) = v23;
    aBlock[4] = sub_1BD6A391C;
    v37 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD6A21A4;
    aBlock[3] = &block_descriptor_31_0;
    v25 = _Block_copy(aBlock);
    v26 = v37;
    v27 = v23;
    v26, v28, v29, v30, v31, v32, v33, v34;
    [v27 tapToProvisionAvailableWithTimeout:v25 completion:60.0];
    _Block_release(v25);
  }
}

void sub_1BD6A1F5C(char a1, char a2)
{
  LOBYTE(v2) = a2;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0E4();
  v8 = sub_1BE04D204();
  v9 = sub_1BE052C54();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 1024;
    *(v10 + 10) = v2 & 1;
    _os_log_impl(&dword_1BD026000, v8, v9, "CardReaderFlowItem: finished prewarm with available: %{BOOL}d didTimeout: %{BOOL}d", v10, 0xEu);
    MEMORY[0x1BFB45F20](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (qword_1EBD36D00 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    swift_beginAccess();
    v18 = off_1EBD4F948;
    off_1EBD4F948 = MEMORY[0x1E69E7CC0];
    v19 = 256;
    if ((v2 & 1) == 0)
    {
      v19 = 0;
    }

    qword_1EBD4F938 = v19 & 0xFFFFFFFFFFFFFFFELL | a1 & 1;
    byte_1EBD4F940 = 1;
    v2 = v18[2];
    if (!v2)
    {
      break;
    }

    v20 = 0;
    a1 &= 1u;
    v21 = v18 + 5;
    while (v20 < v18[2])
    {
      ++v20;
      v23 = *(v21 - 1);
      v22 = *v21;
      HIBYTE(v31) = a1;
      sub_1BE048964();
      v23(&v31 + 7);
      v22, v24, v25, v26, v27, v28, v29, v30;
      v21 += 2;
      if (v2 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
  v18, v11, v12, v13, v14, v15, v16, v17;
}

void sub_1BD6A21A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1BE048964();
  v6(a2, a3);

  v5, v7, v8, v9, v10, v11, v12, v13;
}

void sub_1BD6A2204(void (*a1)(unint64_t, unint64_t, void, uint64_t), void *a2)
{
  v3 = v2;
  v223 = a1;
  v208[1] = swift_getObjectType();
  v222 = sub_1BE04B8D4();
  v220 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v219 = v208 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v218 = v208 - v7;
  v217 = sub_1BE04B944();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v215 = v208 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_context];
  KeyPath = swift_getKeyPath();
  sub_1BD187348(v2, &v226);
  v221 = v9;
  sub_1BD7CD0C0();
  v11 = *(&v226 + 1);
  if (!*(*(&v226 + 1) + 16) || (sub_1BE053D04(), sub_1BE052524(), v12 = sub_1BE053D64(), v20 = -1 << *(v11 + 32), v21 = v12 & ~v20, ((*(v11 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
  {
    v32 = 0;
    goto LABEL_23;
  }

  v213 = KeyPath;
  v214 = v2;
  v22 = ~v20;
  while (1)
  {
    v23 = 0xEE007265626D754ELL;
    if (!*(*(v11 + 48) + v21))
    {
      goto LABEL_7;
    }

    if (*(*(v11 + 48) + v21) != 1)
    {
      break;
    }

    v23 = 0xED00006572757470;
LABEL_7:
    v24 = sub_1BE053B84();
    v23, v25, v26, v27, v28, v29, v30, v31;
    if (v24)
    {
      goto LABEL_12;
    }

    v21 = (v21 + 1) & v22;
    if (((*(v11 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
LABEL_9:
      v32 = 0;
LABEL_21:
      v3 = v214;
      KeyPath = v213;
      goto LABEL_23;
    }
  }

  0xEE006E6F69736976, v13, v14, v15, v16, v17, v18, v19;
LABEL_12:
  v33 = v227;
  v3 = v214;
  KeyPath = v213;
  if (*(v227 + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v34 = sub_1BE053D64();
    v42 = -1 << *(v33 + 32);
    v43 = v34 & ~v42;
    if ((*(v33 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
    {
      v44 = ~v42;
      while (1)
      {
        v45 = 0xEE007265626D754ELL;
        if (*(*(v33 + 48) + v43))
        {
          if (*(*(v33 + 48) + v43) != 1)
          {
            0xEE006E6F69736976, v35, v36, v37, v38, v39, v40, v41;
            goto LABEL_9;
          }

          v45 = 0xED00006572757470;
        }

        v46 = sub_1BE053B84();
        v45, v47, v48, v49, v50, v51, v52, v53;
        if ((v46 & 1) == 0)
        {
          v43 = (v43 + 1) & v44;
          if ((*(v33 + 56 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43))
          {
            continue;
          }
        }

        v32 = v46 ^ 1;
        goto LABEL_21;
      }
    }
  }

  v32 = 1;
LABEL_23:
  v229 = v226;
  v230 = v227;
  v231 = v228;
  v54 = v3;
  sub_1BD12F770(&v229, v54, KeyPath);

  KeyPath, v55, v56, v57, v58, v59, v60, v61;
  v232 = *(&v229 + 1);
  sub_1BD58532C(&v232);
  v233 = v230;
  sub_1BD58532C(&v233);
  v234 = *(&v230 + 1);
  sub_1BD58532C(&v234);
  if ((v32 & 1) == 0 && *(v54 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_forceShow) != 1)
  {
    v161 = 0x80000001BE134940;
    v160 = 0xD000000000000013;
    goto LABEL_50;
  }

  v214 = a2;
  v62 = swift_getKeyPath();
  v213 = v54;
  v212 = v62;
  sub_1BD187348(v54, &v226);
  v210 = v226;
  v63 = v227;
  v211 = *(&v226 + 1);
  v64 = *(&v227 + 1);
  v209 = v228;
  sub_1BE053D04();
  sub_1BE052524();
  v65 = sub_1BE053D64();
  v73 = -1 << *(v63 + 32);
  v74 = v65 & ~v73;
  if (((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
  {
LABEL_32:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v224[0] = v63;
    sub_1BD2A939C(2, v74, isUniquelyReferenced_nonNull_native, v86, v87, v88, v89, v90);
    v63 = v224[0];
    goto LABEL_33;
  }

  v75 = ~v73;
  while (2)
  {
    v76 = 0xEE007265626D754ELL;
    if (!*(*(v63 + 48) + v74))
    {
LABEL_30:
      v77 = sub_1BE053B84();
      v76, v78, v79, v80, v81, v82, v83, v84;
      if (v77)
      {
        goto LABEL_33;
      }

      v74 = (v74 + 1) & v75;
      if (((*(v63 + 56 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
      {
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  if (*(*(v63 + 48) + v74) == 1)
  {
    v76 = 0xED00006572757470;
    goto LABEL_30;
  }

  0xEE006E6F69736976, v66, v67, v68, v69, v70, v71, v72;
LABEL_33:
  sub_1BE053D04();
  sub_1BE052524();
  v91 = sub_1BE053D64();
  v99 = -1 << *(v64 + 32);
  v100 = v91 & ~v99;
  if (((*(v64 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
  {
LABEL_40:
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v224[0] = v64;
    sub_1BD2A939C(2, v100, v111, v112, v113, v114, v115, v116);
    v64 = v224[0];
    goto LABEL_41;
  }

  v101 = ~v99;
  while (2)
  {
    v102 = 0xEE007265626D754ELL;
    if (!*(*(v64 + 48) + v100))
    {
LABEL_38:
      v103 = sub_1BE053B84();
      v102, v104, v105, v106, v107, v108, v109, v110;
      if (v103)
      {
        goto LABEL_41;
      }

      v100 = (v100 + 1) & v101;
      if (((*(v64 + 56 + ((v100 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v100) & 1) == 0)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  if (*(*(v64 + 48) + v100) == 1)
  {
    v102 = 0xED00006572757470;
    goto LABEL_38;
  }

  0xEE006E6F69736976, v92, v93, v94, v95, v96, v97, v98;
LABEL_41:
  LOBYTE(v224[0]) = v210;
  v117 = v211;
  v224[1] = v211;
  v224[2] = v63;
  v224[3] = v64;
  v225 = v209;
  v118 = v213;
  v119 = v212;
  sub_1BD12F770(v224, v118, v212);
  v64, v120, v121, v122, v123, v124, v125, v126;
  v63, v127, v128, v129, v130, v131, v132, v133;
  v117, v134, v135, v136, v137, v138, v139, v140;

  v119, v141, v142, v143, v144, v145, v146, v147;
  v148 = v215;
  sub_1BE04BB04();
  v149 = v218;
  sub_1BE04B924();
  (*(v216 + 8))(v148, v217);
  v150 = v220;
  v151 = v219;
  v152 = v222;
  (*(v220 + 104))(v219, *MEMORY[0x1E69B7F78], v222);
  LOBYTE(v148) = sub_1BE04B8C4();
  v153 = *(v150 + 8);
  v153(v151, v152);
  v153(v149, v152);
  v154 = v214;
  if ((v148 & 1) == 0)
  {
    v160 = 0x6E6F687020746F6ELL;
    v161 = 0xE900000000000065;
    goto LABEL_50;
  }

  v155 = PKTapToProvisionSupportedPaymentNetworks();
  type metadata accessor for PKPaymentNetwork(0);
  sub_1BD6A38A8(&qword_1EBD37B70, type metadata accessor for PKPaymentNetwork, &unk_1BE0B2EBC);
  v156 = sub_1BE052A34();

  v157 = sub_1BE04BBD4();
  v158 = [v157 allowedPaymentNetworks];

  if (v158)
  {
    v159 = sub_1BE052744();
  }

  else
  {
    v159 = MEMORY[0x1E69E7CC0];
  }

  v162 = sub_1BD53704C(v159);
  v159, v163, v164, v165, v166, v167, v168, v169;
  if (!v162[2])
  {
    v162, v170, v171, v172, v173, v174, v175, v176;
    v156, v193, v194, v195, v196, v197, v198, v199;
    goto LABEL_52;
  }

  sub_1BD6A0CE4(v156, v162);
  v178 = v177;
  v162, v179, v180, v181, v182, v183, v184, v185;
  v156, v186, v187, v188, v189, v190, v191, v192;
  if ((v178 & 1) == 0)
  {
LABEL_52:
    v200 = swift_allocObject();
    v200[2] = v223;
    v200[3] = v154;
    sub_1BE048964();
    sub_1BD6A1404(0x4000000000000000, 1, sub_1BD6A37DC, v200);
    v200, v201, v202, v203, v204, v205, v206, v207;
    return;
  }

  v160 = 0xD00000000000001CLL;
  v161 = 0x80000001BE134960;
LABEL_50:
  v223(v160, v161, 0, 1);
}

uint64_t sub_1BD6A2C70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BE0B69E0;
  *(v5 + v4) = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
  (*(v3 + 104))(v5 + v4, *MEMORY[0x1E69B8298], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456E0, &unk_1BE0FF0F0);
  sub_1BE04B944();
  *(swift_allocObject() + 16) = xmmword_1BE0B69E0;
  v6 = *&v0[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_context];
  sub_1BE04BB94();
  sub_1BE04C3D4();
  swift_allocObject();
  v7 = sub_1BE04C394();
  v8 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) &selRef_initWithCounterpartHandles_transactionSourceCollection_paymentDataProvider_];
  [v8 disableDOBPrefill];
  v9 = type metadata accessor for ProvisioningUICoordinator();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
  v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v6;
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v7;
  swift_unknownObjectWeakAssign();
  *(v11 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
  v146 = v7;
  sub_1BE048964();
  sub_1BE048964();
  *&v10[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = sub_1BE04BBB4();
  v150.receiver = v10;
  v150.super_class = v9;
  v12 = objc_msgSendSuper2(&v150, sel_init);
  *&v12[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = &off_1F3BB4FE0;
  swift_unknownObjectWeakAssign();
  v145 = v12;
  *&v12[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = &off_1F3BB4FC8;
  swift_unknownObjectWeakAssign();
  v13 = objc_allocWithZone(type metadata accessor for ProvisioningCardReaderViewController());
  sub_1BE048964();
  v14 = v8;
  v15 = v1;
  v144 = v14;
  sub_1BD6A36F4(v6, v14, v15, v13);
  v17 = v16;

  KeyPath = swift_getKeyPath();
  sub_1BD187348(v15, &v151);
  sub_1BD7CD0C0();
  v19 = *(&v151 + 1);
  v147 = v17;
  if (!*(*(&v151 + 1) + 16))
  {
    v41 = 0;
    goto LABEL_24;
  }

  sub_1BE053D04();
  sub_1BE052524();
  v20 = sub_1BE053D64();
  v28 = -1 << *(v19 + 32);
  v29 = v20 & ~v28;
  if (((*(v19 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
    v41 = 0;
    goto LABEL_24;
  }

  v30 = ~v28;
  while (1)
  {
    v31 = *(*(v19 + 48) + v29);
    v32 = 0xED00006572757470;
    if (v31 == 1)
    {
      goto LABEL_7;
    }

    if (v31 != 2)
    {
      break;
    }

    v32 = 0xEE006E6F69736976;
LABEL_7:
    v33 = sub_1BE053B84();
    v32, v34, v35, v36, v37, v38, v39, v40;
    if (v33)
    {
      goto LABEL_13;
    }

    v29 = (v29 + 1) & v30;
    if (((*(v19 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
LABEL_9:
      v41 = 0;
LABEL_22:
      v17 = v147;
      goto LABEL_24;
    }
  }

  0xEE007265626D754ELL, v21, v22, v23, v24, v25, v26, v27;
LABEL_13:
  v42 = *(&v152 + 1);
  v17 = v147;
  if (*(*(&v152 + 1) + 16))
  {
    sub_1BE053D04();
    sub_1BE052524();
    v43 = sub_1BE053D64();
    v51 = -1 << *(v42 + 32);
    v52 = v43 & ~v51;
    if ((*(v42 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
    {
      v53 = ~v51;
      while (1)
      {
        v54 = *(*(v42 + 48) + v52);
        v55 = 0xED00006572757470;
        if (v54 != 1)
        {
          if (v54 != 2)
          {
            0xEE007265626D754ELL, v44, v45, v46, v47, v48, v49, v50;
            goto LABEL_9;
          }

          v55 = 0xEE006E6F69736976;
        }

        v56 = sub_1BE053B84();
        v55, v57, v58, v59, v60, v61, v62, v63;
        if ((v56 & 1) == 0)
        {
          v52 = (v52 + 1) & v53;
          if ((*(v42 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
          {
            continue;
          }
        }

        v41 = v56 ^ 1;
        goto LABEL_22;
      }
    }
  }

  v41 = 1;
LABEL_24:
  v154 = v151;
  v155 = v152;
  v156 = v153;
  v64 = v15;
  sub_1BD12F770(&v154, v64, KeyPath);

  KeyPath, v65, v66, v67, v68, v69, v70, v71;
  v157 = *(&v154 + 1);
  sub_1BD58532C(&v157);
  v158 = v155;
  sub_1BD58532C(&v158);
  v159 = *(&v155 + 1);
  sub_1BD58532C(&v159);
  *(v17 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_showManualEntryPresentFallBackButton) = v41 & 1;
  v72 = swift_getKeyPath();
  sub_1BD187348(v64, &v151);
  v142 = v152;
  v143 = *(&v151 + 1);
  v73 = *(&v152 + 1);
  v140 = v153;
  v141 = v151;
  sub_1BE053D04();
  sub_1BE052524();
  v74 = sub_1BE053D64();
  v82 = -1 << *(v73 + 32);
  v83 = v74 & ~v82;
  if ((*(v73 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83))
  {
    v84 = ~v82;
    do
    {
      v85 = *(*(v73 + 48) + v83);
      v86 = 0xED00006572757470;
      if (v85 != 1)
      {
        if (v85 != 2)
        {
          0xEE007265626D754ELL, v75, v76, v77, v78, v79, v80, v81;
          goto LABEL_32;
        }

        v86 = 0xEE006E6F69736976;
      }

      v87 = sub_1BE053B84();
      v86, v88, v89, v90, v91, v92, v93, v94;
      if (v87)
      {
        goto LABEL_32;
      }

      v83 = (v83 + 1) & v84;
    }

    while (((*(v73 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v148[0] = v73;
  sub_1BD2A939C(0, v83, isUniquelyReferenced_nonNull_native, v96, v97, v98, v99, v100);
LABEL_32:
  LOBYTE(v148[0]) = v141;
  v148[1] = v143;
  v148[2] = v142;
  v148[3] = v73;
  v149 = v140;
  v101 = v64;
  sub_1BD12F770(v148, v101, v72);
  v146, v102, v103, v104, v105, v106, v107, v108;

  v73, v109, v110, v111, v112, v113, v114, v115;
  v142, v116, v117, v118, v119, v120, v121, v122;
  v143, v123, v124, v125, v126, v127, v128, v129;

  v72, v130, v131, v132, v133, v134, v135, v136;
  v137 = *(v147 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator);
  *(v147 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator) = v145;
  v138 = v145;

  swift_unknownObjectWeakAssign();
  *&v138[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BCC6F8;
  swift_unknownObjectWeakAssign();

  return v147;
}

uint64_t sub_1BD6A35E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD6A3624(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD6A3678(uint64_t a1, void *a2, char a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1BD5851D8(v3, a2, a3 & 1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD6A36F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_coordinator) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_delegate + 8) = 0;
  v7 = swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_footerState) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_manualEntryButton) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_verifyLaterButton) = 0;
  *(a4 + OBJC_IVAR____TtC9PassKitUI36ProvisioningCardReaderViewController_showManualEntryPresentFallBackButton) = 0;
  *(v7 + 8) = &off_1F3BB4FB0;
  swift_unknownObjectWeakAssign();
  sub_1BE052434();
  v9 = v8;
  v10 = sub_1BE04BB74();
  v9, v11, v12, v13, v14, v15, v16, v17;
  sub_1BD376B24(a1, a2, v10);
}

uint64_t sub_1BD6A37DC(char a1)
{
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x80000001BE1349A0;
    v2 = 0xD00000000000001CLL;
    v4 = 1;
  }

  return (*(v1 + 16))(v2, v3, 0, v4);
}

uint64_t objectdestroy_15Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + 24))
  {
    *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  }

  return swift_deallocObject();
}

uint64_t sub_1BD6A38A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s11DetailSheetOMa(uint64_t a1)
{
  result = qword_1EBD366A0;
  if (!qword_1EBD366A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD6A3980(uint64_t a1)
{
  sub_1BD1033E0(319);
  if (v1 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD47AB0, 0x1E69B8D48);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AvailablePass(319);
      if (v3 <= 0x3F)
      {
        sub_1BD0E5E8C(319, &qword_1EBD39D98, 0x1E69B8C90);
        if (v4 <= 0x3F)
        {
          sub_1BD6A3A50(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD6A3A50(uint64_t a1)
{
  if (!qword_1EBD4F980)
  {
    type metadata accessor for AvailablePass(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F2E0, "l8\n");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD39250, &qword_1BE0DADA0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBD4F980);
    }
  }
}

uint64_t sub_1BD6A3B14(uint64_t a1)
{
  v2 = sub_1BE04C884();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1BE04F014();
}

uint64_t sub_1BD6A3BDC@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v375 = a2;
  v376 = a1;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39350, &unk_1BE0B8570);
  MEMORY[0x1EEE9AC00](v337);
  v336 = &v315 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v335 = &v315 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B30, &qword_1BE0B8530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v362 = &v315 - v6;
  v7 = type metadata accessor for Passes(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v363 = &v315 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v377 = type metadata accessor for PaymentPassHubView(0);
  MEMORY[0x1EEE9AC00](v377);
  v371 = (&v315 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v327 = &v315 - v11;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160, &qword_1BE0C25A0);
  MEMORY[0x1EEE9AC00](v343);
  v341 = &v315 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v342 = &v315 - v14;
  v15 = type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView(0);
  v338 = *(v15 - 8);
  v339 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v326 = &v315 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v325 = &v315 - v18;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C40, &qword_1BE0DAF70);
  MEMORY[0x1EEE9AC00](v357);
  v340 = &v315 - v19;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F988, &qword_1BE0EE278);
  MEMORY[0x1EEE9AC00](v355);
  v356 = &v315 - v20;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C20, &qword_1BE0DAF58);
  MEMORY[0x1EEE9AC00](v370);
  v358 = &v315 - v21;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F990, &qword_1BE0EE280);
  MEMORY[0x1EEE9AC00](v332);
  v333 = &v315 - v22;
  v23 = type metadata accessor for SafariViewController(0);
  v322 = *(v23 - 8);
  v323 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v317 = &v315 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v319 = &v315 - v26;
  v318 = sub_1BE04AA64();
  v320 = *(v318 - 8);
  MEMORY[0x1EEE9AC00](v318);
  v316 = &v315 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD42558, &qword_1BE0CD828);
  MEMORY[0x1EEE9AC00](v331);
  v321 = &v315 - v28;
  v328 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v328);
  v329 = (&v315 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C30, &unk_1BE0DAF60);
  MEMORY[0x1EEE9AC00](v354);
  v334 = &v315 - v30;
  v31 = type metadata accessor for AvailablePass(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  *&v364 = &v315 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v344 = &v315 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v352 = &v315 - v36;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C08, &qword_1BE0DAF50);
  MEMORY[0x1EEE9AC00](v351);
  v346 = (&v315 - v37);
  v353 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F998, &qword_1BE0EE288);
  v330 = *(v353 - 1);
  MEMORY[0x1EEE9AC00](v353);
  v345 = &v315 - v38;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9A0, &qword_1BE0EE290);
  MEMORY[0x1EEE9AC00](v372);
  v374 = &v315 - v39;
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9A8, &qword_1BE0EE298);
  MEMORY[0x1EEE9AC00](v366);
  v368 = &v315 - v40;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9B0, &qword_1BE0EE2A0);
  MEMORY[0x1EEE9AC00](v348);
  v349 = &v315 - v41;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47C00, &qword_1BE0DAF48);
  MEMORY[0x1EEE9AC00](v367);
  v350 = &v315 - v42;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47BF0, &qword_1BE0DAF40);
  MEMORY[0x1EEE9AC00](v373);
  v369 = &v315 - v43;
  v347 = type metadata accessor for PaymentPassMethodSheet(0);
  v359 = *(v347 - 8);
  MEMORY[0x1EEE9AC00](v347);
  v324 = &v315 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v360 = v44;
  MEMORY[0x1EEE9AC00](v45);
  v361 = &v315 - v46;
  v47 = type metadata accessor for BillingAddressEditor(0);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v315 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = (&v315 - v51);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v56 = &v315 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v315 - v58;
  v60 = _s11DetailSheetOMa(0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = (&v315 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD6A6F08(v376, v62, _s11DetailSheetOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    *&v364 = v54;
    v371 = v52;
    v376 = v47;
    v106 = v345;
    v107 = v346;
    if (EnumCaseMultiPayload)
    {
      v193 = *v62;
      v194 = v361;
      sub_1BD6A6F08(v365, v361, type metadata accessor for PaymentPassMethodSheet);
      v195 = (*(v359 + 80) + 16) & ~*(v359 + 80);
      v196 = swift_allocObject();
      sub_1BD6A6EA0(v194, v196 + v195, type metadata accessor for PaymentPassMethodSheet);
      *v107 = sub_1BD6A6D34;
      v107[1] = v196;
      v107[2] = v193;
      v197 = *(type metadata accessor for PaymentSetupNavigationController(0) + 24);
      *(v107 + v197) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D540, &qword_1BE0C1380);
      swift_storeEnumTagMultiPayload();
      v371 = v193;
      v198 = sub_1BE04EC54();
      v199 = sub_1BE0501D4();
      v200 = v351;
      v201 = v107 + v351[9];
      *v201 = v198;
      v201[8] = v199;
      v202 = sub_1BD4CD630();
      sub_1BE050E54();
      sub_1BD0DE53C(v107, &qword_1EBD47C08, &qword_1BE0DAF50);
      v203 = v330;
      v204 = v353;
      (*(v330 + 16))(v349, v106, v353);
      swift_storeEnumTagMultiPayload();
      sub_1BD6A6C48(&qword_1EBD39490, type metadata accessor for BillingAddressEditor, &unk_1BE1109C8);
      *&v385 = v200;
      *(&v385 + 1) = v202;
      swift_getOpaqueTypeConformance2();
      v205 = v350;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v205, v368, &qword_1EBD47C00, &qword_1BE0DAF48);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD530();
      sub_1BD4CD6EC();
      v206 = v369;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v205, &qword_1EBD47C00, &qword_1BE0DAF48);
      sub_1BD0DE19C(v206, v374, &qword_1EBD47BF0, &qword_1BE0DAF40);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD4A4();
      sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView, &unk_1BE0B8630);
      sub_1BE04F9A4();

      sub_1BD0DE53C(v206, &qword_1EBD47BF0, &qword_1BE0DAF40);
      return (*(v203 + 8))(v106, v204);
    }

    else
    {
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);
      v109 = *(v62 + *(v108 + 48));
      v110 = v62 + *(v108 + 64);
      v111 = *(v110 + 1);
      v385 = *v110;
      v386 = v111;
      *&v387 = *(v110 + 4);
      sub_1BD49C65C(v62, v59);
      LODWORD(v363) = v109 != 0;
      v112 = v376;
      v113 = &v49[v376[5]];
      v315 = v59;
      sub_1BD0DE19C(v59, v113, &qword_1EBD520A0, &qword_1BE0B9840);
      v114 = v361;
      sub_1BD6A6F08(v365, v361, type metadata accessor for PaymentPassMethodSheet);
      sub_1BD0DE19C(v59, v56, &qword_1EBD520A0, &qword_1BE0B9840);
      v115 = (*(v359 + 80) + 16) & ~*(v359 + 80);
      v116 = &v360[*(v364 + 80) + v115] & ~*(v364 + 80);
      v117 = swift_allocObject();
      sub_1BD6A6EA0(v114, v117 + v115, type metadata accessor for PaymentPassMethodSheet);
      sub_1BD49C65C(v56, v117 + v116);
      v118 = &v49[v112[10]];
      *v118 = sub_1BDA570C8;
      *(v118 + 1) = 0;
      v118[16] = 0;
      v119 = &v49[v112[11]];
      v379[0] = 0;
      v120 = v109;
      sub_1BD10D494(&v385, &v381);
      sub_1BE051694();
      v121 = *(&v381 + 1);
      *v119 = v381;
      *(v119 + 1) = v121;
      *&v49[v112[12]] = 0x4064200000000000;
      *v49 = v363;
      v122 = &v49[v112[6]];
      *v122 = 0;
      v122[1] = 0;
      *&v49[v112[7]] = v109;
      v123 = &v49[v112[8]];
      v124 = v386;
      *v123 = v385;
      *(v123 + 1) = v124;
      *(v123 + 4) = v387;
      v125 = &v49[v112[9]];
      *v125 = sub_1BD6A6DC0;
      v125[1] = v117;
      v126 = v371;
      sub_1BD6A6EA0(v49, v371, type metadata accessor for BillingAddressEditor);
      sub_1BD6A6F08(v126, v349, type metadata accessor for BillingAddressEditor);
      swift_storeEnumTagMultiPayload();
      sub_1BD6A6C48(&qword_1EBD39490, type metadata accessor for BillingAddressEditor, &unk_1BE1109C8);
      v127 = sub_1BD4CD630();
      *&v381 = v351;
      *(&v381 + 1) = v127;
      swift_getOpaqueTypeConformance2();
      v128 = v350;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v128, v368, &qword_1EBD47C00, &qword_1BE0DAF48);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD530();
      sub_1BD4CD6EC();
      v129 = v369;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v128, &qword_1EBD47C00, &qword_1BE0DAF48);
      sub_1BD0DE19C(v129, v374, &qword_1EBD47BF0, &qword_1BE0DAF40);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD4A4();
      sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView, &unk_1BE0B8630);
      sub_1BE04F9A4();
      sub_1BD10D558(&v385);

      sub_1BD0DE53C(v129, &qword_1EBD47BF0, &qword_1BE0DAF40);
      sub_1BD6A6F70(v126, type metadata accessor for BillingAddressEditor);
      return sub_1BD0DE53C(v315, &qword_1EBD520A0, &qword_1BE0B9840);
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v131 = v352;
    sub_1BD6A6EA0(v62, v352, type metadata accessor for AvailablePass);
    v132 = v131;
    v133 = v329;
    sub_1BD6A6F08(v132, v329, type metadata accessor for WrappedPass);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1BD6A6F70(v133, type metadata accessor for WrappedPass);
      swift_storeEnumTagMultiPayload();
      sub_1BD33E1D4();
      v134 = v334;
      sub_1BE04F9A4();
LABEL_53:
      sub_1BD0DE19C(v134, v356, &qword_1EBD47C30, &unk_1BE0DAF60);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD778();
      sub_1BD4CD804();
      v283 = v358;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v283, v368, &qword_1EBD47C20, &qword_1BE0DAF58);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD530();
      sub_1BD4CD6EC();
      v284 = v369;
      sub_1BE04F9A4();
      sub_1BD0DE53C(v283, &qword_1EBD47C20, &qword_1BE0DAF58);
      sub_1BD0DE19C(v284, v374, &qword_1EBD47BF0, &qword_1BE0DAF40);
      swift_storeEnumTagMultiPayload();
      sub_1BD4CD4A4();
      sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView, &unk_1BE0B8630);
      sub_1BE04F9A4();
      sub_1BD0DE53C(v284, &qword_1EBD47BF0, &qword_1BE0DAF40);
      sub_1BD0DE53C(v134, &qword_1EBD47C30, &unk_1BE0DAF60);
      v285 = v352;
      return sub_1BD6A6F70(v285, type metadata accessor for AvailablePass);
    }

    v207 = *v133;
    v208 = [v207 localizedValueForFieldKey_];
    v134 = v334;
    if (v208)
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v381 = 0u;
      v382 = 0u;
    }

    v264 = v320;
    v265 = v321;
    v385 = v381;
    v386 = v382;
    if (*(&v382 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_51:
        v282 = 1;
LABEL_52:
        (*(v322 + 56))(v265, v282, 1, v323);
        sub_1BD0DE19C(v265, v333, &qword_1EBD42558, &qword_1BE0CD828);
        swift_storeEnumTagMultiPayload();
        sub_1BD33E1D4();
        sub_1BE04F9A4();

        sub_1BD0DE53C(v265, &qword_1EBD42558, &qword_1BE0CD828);
        goto LABEL_53;
      }

      v266 = *&v379[8];
      v267 = v319;
      sub_1BE04AA54();
      v268 = v266;
      v269 = v267;
      v268, v270, v271, v272, v273, v274, v275, v276;
      v277 = v267;
      v278 = v318;
      if ((*(v264 + 48))(v277, 1, v318) != 1)
      {
        v286 = *(v264 + 32);
        v287 = v316;
        v286(v316, v269, v278);
        v288 = v278;
        v289 = v317;
        v286(v317, v287, v288);
        sub_1BD6A6EA0(v289, v265, type metadata accessor for SafariViewController);
        v282 = 0;
        goto LABEL_52;
      }

      v279 = &unk_1EBD3CF70;
      v280 = &qword_1BE0BA000;
      v281 = v269;
    }

    else
    {
      v279 = &qword_1EBD3EC90;
      v280 = &unk_1BE0BC6B0;
      v281 = &v385;
    }

    sub_1BD0DE53C(v281, v279, v280);
    goto LABEL_51;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47B60, &unk_1BE0DAEA8);
    v370 = *(v62 + *(v135 + 48));
    LODWORD(v369) = *(v62 + *(v135 + 64));
    v136 = v344;
    sub_1BD6A6EA0(v62, v344, type metadata accessor for AvailablePass);
    v137 = v365;
    v366 = *(v365 + 8);
    sub_1BD6A6F08(v136, v364, type metadata accessor for AvailablePass);
    v138 = v347;
    sub_1BD6A6F08(v137 + *(v347 + 24), v363, type metadata accessor for Passes);
    v139 = (v137 + v138[7]);
    v140 = v139[3];
    v387 = v139[2];
    v388 = v140;
    v389 = v139[4];
    v141 = v139[1];
    v385 = *v139;
    v386 = v141;
    sub_1BD0DE19C(v137 + v138[9], v362, &unk_1EBD43B30, &qword_1BE0B8530);
    v142 = v138[10];
    v376 = *(v137 + v138[11]);
    v351 = *(v137 + v142);
    v143 = (v137 + v138[14]);
    v144 = *v143;
    v145 = v143[1];
    v146 = (v137 + v138[15]);
    v147 = v146[1];
    v361 = *v146;
    v148 = (v137 + v138[16]);
    v149 = v148[1];
    v357 = *v148;
    v358 = v144;
    v150 = (v137 + v138[13]);
    v151 = *v150;
    v152 = v150[1];
    v153 = (v137 + v138[12]);
    v154 = v153[1];
    v367 = *v153;
    v155 = (v137 + v138[23]);
    v156 = v377;
    v157 = v371;
    v158 = (v371 + v377[22]);
    v159 = v155[1];
    v354 = *v155;
    v355 = v151;
    v350 = v370;
    v360 = v145;
    sub_1BE048964();
    v365 = v147;
    sub_1BE048964();
    v359 = v149;
    sub_1BE048964();
    v356 = v152;
    sub_1BE048964();
    v368 = v154;
    sub_1BE048964();
    v352 = v159;
    sub_1BE048964();
    sub_1BD0DE19C(&v385, &v381, &qword_1EBD395E0, &qword_1BE0B8830);
    type metadata accessor for PresentationContext(0);
    sub_1BD6A6C48(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
    v353 = v376;
    v160 = v351;
    v161 = v351;
    *v158 = sub_1BE04EEC4();
    v158[1] = v162;
    v163 = type metadata accessor for PaymentPassHubView.DetailSheet(0);
    v164 = v335;
    (*(*(v163 - 8) + 56))(v335, 1, 1, v163);
    sub_1BD0DE19C(v164, v336, &qword_1EBD39350, &unk_1BE0B8570);
    sub_1BE051694();
    sub_1BD0DE53C(v164, &qword_1EBD39350, &unk_1BE0B8570);
    v165 = type metadata accessor for MultiHyperLinkDetailSheet(0);
    v166 = v342;
    (*(*(v165 - 8) + 56))(v342, 1, 1, v165);
    sub_1BD0DE19C(v166, v341, &unk_1EBD45160, &qword_1BE0C25A0);
    sub_1BE051694();
    v167 = v166;
    v168 = v160;
    sub_1BD0DE53C(v167, &unk_1EBD45160, &qword_1BE0C25A0);
    v169 = v156[26];
    *v379 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
    sub_1BE051694();
    *(v157 + v169) = v381;
    v170 = v157 + v156[27];
    *v379 = MEMORY[0x1E69E7CD0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39370, &qword_1BE0B8588);
    sub_1BE051694();
    v171 = *(&v381 + 1);
    *v170 = v381;
    *(v170 + 1) = v171;
    v379[0] = 0;
    sub_1BE051694();
    v349 = *(&v381 + 1);
    v172 = v157 + v156[29];
    v379[0] = 0;
    sub_1BE051694();
    v173 = *(&v381 + 1);
    *v172 = v381;
    *(v172 + 1) = v173;
    v174 = v156[30];
    *v379 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39380, &qword_1BE0B8590);
    sub_1BE051694();
    *(v157 + v174) = v381;
    v175 = v157 + v156[31];
    memset(v379, 0, 41);
    v379[41] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39390, &qword_1BE0B8598);
    sub_1BE051694();
    v176 = v382;
    *v175 = v381;
    *(v175 + 1) = v176;
    *(v175 + 2) = v383;
    *(v175 + 6) = v384;
    v177 = v156[32];
    *&v378[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393A0, &qword_1BE0B85A0);
    sub_1BE051694();
    *(v157 + v177) = *v379;
    v178 = v156[33];
    *(v157 + v178) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0, &qword_1BE0B86D0);
    swift_storeEnumTagMultiPayload();
    v348 = v175;
    if (v160)
    {
      v179 = v161;
      v180 = v161;
      sub_1BD49C81C();
      v182 = v181;
      v183 = sub_1BE052404();
      v182, v184, v185, v186, v187, v188, v189, v190;
      v191 = [v180 paymentOfferCriteriaForPassUniqueID_];

      if (v191)
      {
        sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
        v192 = sub_1BE052744();
      }

      else
      {
        v192 = 0;
      }

      sub_1BD49C81C();
      v213 = v212;
      v214 = sub_1BE052404();
      v213, v215, v216, v217, v218, v219, v220, v221;
      v222 = [v180 eligiblePaymentOfferCriteriaForPassUniqueID_];

      if (v222)
      {
        sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
        v209 = sub_1BE052744();
      }

      else
      {

        v209 = 0;
      }
    }

    else
    {
      v179 = v161;
      v209 = 0;
      v192 = 0;
    }

    v224 = v370;
    v223 = v371;
    v225 = v369;
    *v371 = v366;
    v226 = v377;
    sub_1BD6A6F08(v364, v223 + v377[5], type metadata accessor for AvailablePass);
    sub_1BD6A6F08(v363, v223 + v226[7], type metadata accessor for Passes);
    v227 = v223 + v226[8];
    v228 = v388;
    *(v227 + 2) = v387;
    *(v227 + 3) = v228;
    *(v227 + 4) = v389;
    v229 = v386;
    *v227 = v385;
    *(v227 + 1) = v229;
    v230 = v223 + v226[9];
    v232 = v360;
    v231 = v361;
    *v230 = v358;
    *(v230 + 1) = v232;
    v233 = (v223 + v226[10]);
    *v233 = v231;
    v233[1] = v365;
    v234 = (v223 + v226[11]);
    v235 = v359;
    *v234 = v357;
    v234[1] = v235;
    v236 = (v223 + v226[12]);
    v237 = v356;
    *v236 = v355;
    v236[1] = v237;
    v238 = (v223 + v226[13]);
    v239 = v352;
    *v238 = v354;
    v238[1] = v239;
    sub_1BD0DE19C(v362, v223 + v226[14], &unk_1EBD43B30, &qword_1BE0B8530);
    *(v223 + v226[20]) = v192;
    *(v223 + v226[21]) = v209;
    *(v223 + v226[18]) = v168;
    *(v223 + v226[17]) = v376;
    *(v223 + v226[16]) = 8;
    v240 = (v223 + v226[19]);
    v241 = v368;
    *v240 = v367;
    v240[1] = v241;
    *(v223 + v226[15]) = v225;
    *(v223 + v226[6]) = v224;
    sub_1BE048C84();
    v242 = v353;
    v370 = v179;
    *v379 = WrappedPass.secureElementPass.getter();
    v379[8] = 0;
    v369 = v242;
    if (v192)
    {
      v250 = v168;
      if (v192 >> 62)
      {
LABEL_57:
        v251 = sub_1BE053704();
        if (v251)
        {
LABEL_32:
          v252 = 0;
          while (1)
          {
            if ((v192 & 0xC000000000000001) != 0)
            {
              v253 = MEMORY[0x1BFB40900](v252, v192);
            }

            else
            {
              if (v252 >= *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v253 = *(v192 + 8 * v252 + 32);
            }

            v254 = v253;
            v255 = v252 + 1;
            if (__OFADD__(v252, 1))
            {
              __break(1u);
LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

            if ([v253 type] == 1)
            {
              break;
            }

            ++v252;
            if (v255 == v251)
            {
              goto LABEL_58;
            }
          }

          v192, v256, v257, v258, v259, v260, v261, v262;
          objc_opt_self();
          v263 = swift_dynamicCastObjCClass();
          if (!v263)
          {
          }

          goto LABEL_60;
        }
      }

      else
      {
        v251 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v251)
        {
          goto LABEL_32;
        }
      }

LABEL_58:
      v192, v243, v244, v245, v246, v247, v248, v249;
    }

    else
    {
      v250 = v168;
    }

    v263 = 0;
LABEL_60:
    v290 = v377;
    v291 = v371;
    v292 = v371 + v377[28];
    v293 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
    v294 = sub_1BD8D1EE0(v379, v250, v263);

    v295 = v291 + v290[23];
    *&v378[0] = v294;
    v296 = v294;
    sub_1BE051694();
    v297 = *&v379[8];
    *v295 = *v379;
    *(v295 + 1) = v297;
    LOBYTE(v294) = sub_1BD8C1A98();
    v349, v298, v299, v300, v301, v302, v303, v304;
    *v292 = v294 & 1;
    *(v292 + 1) = 0;
    if (v376)
    {
      v305 = v369;
      v306 = [v369 type];
      v307 = v374;
      v308 = v350;
      if (v306 == 2)
      {
        objc_opt_self();
        v309 = swift_dynamicCastObjCClass();
        v310 = v327;
        if (v309)
        {
          v311 = [v309 rewardsRedemptionIntent];
          sub_1BD754B48(v311, v378);

          sub_1BD0DE53C(v362, &unk_1EBD43B30, &qword_1BE0B8530);
          sub_1BD6A6F70(v363, type metadata accessor for Passes);
          sub_1BD6A6F70(v364, type metadata accessor for AvailablePass);
          v312 = v348;
          v313 = *(v348 + 16);
          *v379 = *v348;
          *&v379[16] = v313;
          *&v379[32] = *(v348 + 32);
          v380 = *(v348 + 48);
          sub_1BD0DE53C(v379, &qword_1EBD394D0, &unk_1BE0B8720);
          v314 = v378[1];
          *v312 = v378[0];
          *(v312 + 16) = v314;
          *(v312 + 32) = v378[2];
          *(v312 + 48) = 0;
        }

        else
        {

          sub_1BD0DE53C(v362, &unk_1EBD43B30, &qword_1BE0B8530);
          sub_1BD6A6F70(v363, type metadata accessor for Passes);
          sub_1BD6A6F70(v364, type metadata accessor for AvailablePass);
        }
      }

      else
      {

        sub_1BD0DE53C(v362, &unk_1EBD43B30, &qword_1BE0B8530);
        sub_1BD6A6F70(v363, type metadata accessor for Passes);
        sub_1BD6A6F70(v364, type metadata accessor for AvailablePass);
        v310 = v327;
      }
    }

    else
    {

      sub_1BD0DE53C(v362, &unk_1EBD43B30, &qword_1BE0B8530);
      sub_1BD6A6F70(v363, type metadata accessor for Passes);
      sub_1BD6A6F70(v364, type metadata accessor for AvailablePass);
      v307 = v374;
      v310 = v327;
      v308 = v350;
    }

    sub_1BD6A6EA0(v371, v310, type metadata accessor for PaymentPassHubView);
    sub_1BD6A6F08(v310, v307, type metadata accessor for PaymentPassHubView);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD4A4();
    sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView, &unk_1BE0B8630);
    sub_1BE04F9A4();

    sub_1BD6A6F70(v310, type metadata accessor for PaymentPassHubView);
    v285 = v344;
    return sub_1BD6A6F70(v285, type metadata accessor for AvailablePass);
  }

  v64 = *v62;
  v65 = v347;
  v66 = v365;
  v67 = *(v365 + *(v347 + 40));
  v376 = *v62;
  if (!v67)
  {
    v105 = 1;
    v70 = v340;
LABEL_23:
    v88 = v339;
    goto LABEL_24;
  }

  v68 = v67;
  v69 = [v64 identifier];
  v70 = v340;
  if (!v69)
  {
    sub_1BE052434();
    v72 = v71;
    v69 = sub_1BE052404();
    v72, v73, v74, v75, v76, v77, v78, v79;
  }

  v80 = [v68 dynamicContentPageForCriteriaIdentifier:v69 pageType:1];

  if (!v80)
  {

    v105 = 1;
    goto LABEL_23;
  }

  v353 = v80;
  v362 = v68;
  v371 = *(v66 + v65[28]);
  if (v371)
  {
    v81 = *(v66 + v65[13]);
    v363 = *(v66 + v65[12]);
    v364 = v81;
    v82 = v361;
    sub_1BD6A6F08(v66, v361, type metadata accessor for PaymentPassMethodSheet);
    v83 = (*(v359 + 80) + 16) & ~*(v359 + 80);
    v359 = swift_allocObject();
    sub_1BD6A6EA0(v82, v359 + v83, type metadata accessor for PaymentPassMethodSheet);
    v84 = v66;
    v85 = v324;
    sub_1BD6A6F08(v84, v324, type metadata accessor for PaymentPassMethodSheet);
    v365 = swift_allocObject();
    sub_1BD6A6EA0(v85, v365 + v83, type metadata accessor for PaymentPassMethodSheet);
    *&v381 = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    v86 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710, &qword_1BE0B8580);
    sub_1BE051694();
    v87 = v326;
    *(v326 + 7) = v385;
    v88 = v339;
    v89 = type metadata accessor for MultiHyperLinkDetailSheet(0);
    v90 = v342;
    (*(*(v89 - 8) + 56))(v342, 1, 1, v89);
    sub_1BD0DE19C(v90, v341, &unk_1EBD45160, &qword_1BE0C25A0);
    sub_1BE051694();
    sub_1BD0DE53C(v90, &unk_1EBD45160, &qword_1BE0C25A0);
    v91 = v87 + *(v88 + 60);
    LOBYTE(v381) = 0;
    sub_1BE051694();
    v92 = *(&v385 + 1);
    *v91 = v385;
    *(v91 + 8) = v92;
    v93 = v362;
    *v87 = v362;
    *(v87 + 8) = v86;
    v94 = v371;
    *(v87 + 16) = v353;
    *(v87 + 24) = v94;
    v95 = v363;
    *(v87 + 32) = v364;
    *(v87 + 48) = v95;
    *(v87 + 64) = 0;
    *(v87 + 72) = 0;
    v96 = v359;
    *(v87 + 80) = sub_1BD6A6C90;
    *(v87 + 88) = v96;
    v97 = v365;
    *(v87 + 96) = sub_1BD6A6CA8;
    *(v87 + 104) = v97;
    *&v385 = 0;
    BYTE8(v385) = -32;
    v98 = objc_allocWithZone(type metadata accessor for PaymentOfferInstallmentPlanSelectionModel(0));
    v99 = v93;
    v100 = v86;
    v101 = sub_1BD8D1EE0(&v385, v67, v86);

    v102 = (v87 + *(v88 + 64));
    *&v381 = v101;
    sub_1BE051694();
    v103 = *(&v385 + 1);
    *v102 = v385;
    v102[1] = v103;
    v104 = v325;
    sub_1BD6A6EA0(v87, v325, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
    v70 = v340;
    sub_1BD6A6EA0(v104, v340, type metadata accessor for PaymentOfferInstallmentCriteriaSetupExplanationView);
    v105 = 0;
LABEL_24:
    (*(v338 + 56))(v70, v105, 1, v88);
    sub_1BD0DE19C(v70, v356, &qword_1EBD47C40, &qword_1BE0DAF70);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD778();
    sub_1BD4CD804();
    v210 = v358;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v210, v368, &qword_1EBD47C20, &qword_1BE0DAF58);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD530();
    sub_1BD4CD6EC();
    v211 = v369;
    sub_1BE04F9A4();
    sub_1BD0DE53C(v210, &qword_1EBD47C20, &qword_1BE0DAF58);
    sub_1BD0DE19C(v211, v374, &qword_1EBD47BF0, &qword_1BE0DAF40);
    swift_storeEnumTagMultiPayload();
    sub_1BD4CD4A4();
    sub_1BD6A6C48(&qword_1EBD412C0, type metadata accessor for PaymentPassHubView, &unk_1BE0B8630);
    sub_1BE04F9A4();

    sub_1BD0DE53C(v211, &qword_1EBD47BF0, &qword_1BE0DAF40);
    return sub_1BD0DE53C(v70, &qword_1EBD47C40, &qword_1BE0DAF70);
  }

  type metadata accessor for PresentationContext(0);
  sub_1BD6A6C48(&unk_1EBD361B0, type metadata accessor for PresentationContext, &unk_1BE10BB18);
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

uint64_t sub_1BD6A6590(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  if (a1)
  {
    v10 = type metadata accessor for PaymentPassMethodSheet(0);
    v11 = *(a2 + *(v10 + 56));
    v12 = a1;
    v11();
    (*(a2 + *(v10 + 64)))(v12);
  }

  v13 = _s11DetailSheetOMa(0);
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v9, v6, &unk_1EBD43B20, &unk_1BE0DAD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v9, &unk_1EBD43B20, &unk_1BE0DAD80);
}

uint64_t sub_1BD6A6734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = type metadata accessor for PaymentPassMethodSheet(0);
  (*(a1 + *(v8 + 68)))();
  v9 = _s11DetailSheetOMa(0);
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_1BD0DE19C(v7, v4, &unk_1EBD43B20, &unk_1BE0DAD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v7, &unk_1EBD43B20, &unk_1BE0DAD80);
}

uint64_t sub_1BD6A6894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B20, &unk_1BE0DAD80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  v6 = _s11DetailSheetOMa(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for PaymentPassMethodSheet(0);
  sub_1BD0DE19C(v5, v2, &unk_1EBD43B20, &unk_1BE0DAD80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47AE8, &qword_1BE0DAD48);
  sub_1BE0516B4();
  return sub_1BD0DE53C(v5, &unk_1EBD43B20, &unk_1BE0DAD80);
}

unint64_t sub_1BD6A69D4()
{
  v1 = _s11DetailSheetOMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD6A6F08(v0, v3, _s11DetailSheetOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39440, &qword_1BE0DAEA0);

      v7 = &v3[*(v6 + 64)];
      v8 = *(v7 + 1);
      v9 = *(v7 + 4);
      *(v7 + 3), v10, v11, v12, v13, v14, v15, v16;
      v8, v17, v18, v19, v20, v21, v22, v23;

      sub_1BD0DE53C(v3, &qword_1EBD520A0, &qword_1BE0B9840);
      return 0xD00000000000001BLL;
    }

LABEL_9:
    v5 = 0xD000000000000012;
    sub_1BD6A6F70(v3, _s11DetailSheetOMa);
    return v5;
  }

  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BD6A6F70(v3, _s11DetailSheetOMa);
    return 0xD000000000000023;
  }

  else
  {

    sub_1BD6A6F70(v3, type metadata accessor for AvailablePass);
    return 0x50746E656D796170;
  }
}

unint64_t sub_1BD6A6C20@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BD6A69D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BD6A6C48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD6A6CA8()
{
  v1 = type metadata accessor for PaymentPassMethodSheet(0);
  v2 = v1 - 8;
  v3 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v4 = (*(v3 + *(v1 + 68)))();
  return (*(v3 + *(v2 + 100)))(v4);
}

uint64_t sub_1BD6A6D4C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD6A6DC0(void *a1)
{
  v3 = *(type metadata accessor for PaymentPassMethodSheet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);

  return sub_1BD6A6590(a1, v1 + v4);
}

uint64_t sub_1BD6A6EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6A6F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD6A6F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1BD6A6FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1BD6A7044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BD6A70D0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9C0, &qword_1BE0EE400);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9C8, &qword_1BE0EE408);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  *v15 = sub_1BE04F504();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9D0, &qword_1BE0EE410);
  sub_1BD6A79A0(a1, &v15[*(v16 + 44)]);
  sub_1BD6A72DC(v9);
  sub_1BD0DE19C(v15, v12, &qword_1EBD4F9C8, &qword_1BE0EE408);
  sub_1BD6A8E28(v9, v6);
  sub_1BD0DE19C(v12, a2, &qword_1EBD4F9C8, &qword_1BE0EE408);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9D8, &qword_1BE0EE418);
  sub_1BD6A8E28(v6, a2 + *(v17 + 48));
  sub_1BD0DE53C(v9, &qword_1EBD4F9C0, &qword_1BE0EE400);
  sub_1BD0DE53C(v15, &qword_1EBD4F9C8, &qword_1BE0EE408);
  sub_1BD0DE53C(v6, &qword_1EBD4F9C0, &qword_1BE0EE400);
  return sub_1BD0DE53C(v12, &qword_1EBD4F9C8, &qword_1BE0EE408);
}

id sub_1BD6A72DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9E0, &qword_1BE0EE420);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v84 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9E8, &qword_1BE0EE428);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v19 = *(v1 + 56);
  if (v19)
  {
    v85 = v17;
    v86 = v84 - v15;
    v87 = v16;
    v88 = v14;
    v89 = v13;
    v90 = a1;
    swift_getErrorValue();
    v20 = v19;
    v101 = sub_1BE053C74();
    v102 = v21;
    v84[0] = sub_1BD0DDEBC();
    v97 = sub_1BE0506C4();
    v96 = v22;
    v24 = v23;
    v99 = v25;
    v98 = sub_1BE0501E4();
    sub_1BE04E1F4();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v100 = v3;
    v34 = v24 & 1;
    LOBYTE(v101) = v24 & 1;
    LOBYTE(v107[0]) = 0;
    v95 = sub_1BE050324();
    KeyPath = swift_getKeyPath();
    v93 = sub_1BE051264();
    v92 = swift_getKeyPath();
    v35 = swift_getKeyPath();
    LOBYTE(v101) = 0;
    v91 = swift_getKeyPath();
    v36 = swift_getKeyPath();
    v84[1] = v7;
    v37 = *(v7 + 36);
    v38 = v4;
    v39 = &v9[v37];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C318, &qword_1BE0BE410) + 28);
    v41 = *MEMORY[0x1E6980FA8];
    v42 = sub_1BE050554();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    v43 = v96;
    *v9 = v97;
    *(v9 + 1) = v43;
    v9[16] = v34;
    *(v9 + 17) = v107[0];
    *(v9 + 5) = *(v107 + 3);
    v44 = v100;
    *(v9 + 3) = v99;
    v9[32] = v98;
    *(v9 + 33) = *v106;
    *(v9 + 9) = *&v106[3];
    *(v9 + 5) = v27;
    *(v9 + 6) = v29;
    *(v9 + 7) = v31;
    *(v9 + 8) = v33;
    v9[72] = 0;
    *(v9 + 73) = *v105;
    *(v9 + 19) = *&v105[3];
    v45 = v95;
    *(v9 + 10) = KeyPath;
    *(v9 + 11) = v45;
    v46 = v93;
    *(v9 + 12) = v92;
    *(v9 + 13) = v46;
    *(v9 + 14) = v35;
    *(v9 + 15) = 2;
    v9[128] = 0;
    *(v9 + 129) = *v104;
    *(v9 + 33) = *&v104[3];
    *(v9 + 17) = v91;
    v9[144] = 0;
    LODWORD(v46) = *v103;
    *(v9 + 37) = *&v103[3];
    *(v9 + 145) = v46;
    *(v9 + 19) = v36;
    v9[160] = 1;
    (*(v38 + 104))(v6, *MEMORY[0x1E69B8068], v44);
    result = PKPassKitBundle();
    if (result)
    {
      v48 = result;
      v49 = sub_1BE04B6F4();
      v51 = v50;

      (*(v38 + 8))(v6, v44);
      v101 = v49;
      v102 = v51;
      sub_1BD6A8E98();
      v52 = v85;
      sub_1BE050C34();
      v51, v53, v54, v55, v56, v57, v58, v59;
      sub_1BD0DE53C(v9, &qword_1EBD4F9E0, &qword_1BE0EE420);
      swift_getErrorValue();
      v60 = sub_1BE053C74();
      v62 = v61;
      v101 = v60;
      v102 = v61;
      v63 = v87;
      v64 = v89;
      sub_1BE04EB94();
      v62, v65, v66, v67, v68, v69, v70, v71;
      sub_1BD0DE53C(v52, &qword_1EBD4F9E8, &qword_1BE0EE428);
      sub_1BE052434();
      v73 = v72;
      v74 = v86;
      sub_1BE04EBB4();
      v73, v75, v76, v77, v78, v79, v80, v81;

      sub_1BD0DE53C(v63, &qword_1EBD4F9E8, &qword_1BE0EE428);
      v82 = v90;
      sub_1BD6A9230(v74, v90);
      return (*(v88 + 56))(v82, 0, 1, v64);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v83 = *(v14 + 56);

    return v83(a1, 1, 1, v18);
  }

  return result;
}

uint64_t sub_1BD6A79A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v190 = a2;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA40, &qword_1BE0EE580);
  MEMORY[0x1EEE9AC00](v174);
  v165 = &v163 - v3;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA48, &qword_1BE0EE588);
  v167 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v166 = &v163 - v4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA50, &qword_1BE0EE590);
  MEMORY[0x1EEE9AC00](v170);
  v173 = &v163 - v5;
  v171 = sub_1BE04FB64();
  v169 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v168 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA58, &qword_1BE0EE598);
  v164 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v163 = &v163 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA60, &unk_1BE0EE5A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v189 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v188 = &v163 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD488D8, &unk_1BE0DC9E0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v163 - v13;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA68, &qword_1BE0EE5B0);
  v182 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v16 = &v163 - v15;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA70, &qword_1BE0EE5B8);
  v184 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v18 = &v163 - v17;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA78, &qword_1BE0EE5C0);
  v186 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v179 = &v163 - v19;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA80, &unk_1BE0EE5C8);
  MEMORY[0x1EEE9AC00](v187);
  v180 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v191 = &v163 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v192 = &v163 - v24;
  v25 = *a1;
  v26 = a1[2];
  v198 = a1[1];
  v199 = v26;
  v200 = v25;
  v27 = a1[2];
  v193 = v198;
  v194 = v27;
  swift_bridgeObjectRetain_n();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48B70, &unk_1BE0E5BC0);
  sub_1BE051914();
  v193 = v200;
  v178 = sub_1BD0DDEBC();
  sub_1BE051E14();
  v28 = sub_1BE051224();
  KeyPath = swift_getKeyPath();
  v30 = &v14[*(v12 + 36)];
  *v30 = KeyPath;
  v30[1] = v28;
  v196 = a1[6];
  LOBYTE(v197) = *(a1 + 112);
  v193 = a1[6];
  LOBYTE(v194) = *(a1 + 112);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41570, &qword_1BE0F71F0);
  sub_1BE04E244();
  v32 = v195;
  v33 = sub_1BD4F0E9C();
  sub_1BE050FC4();
  *(&v32 + 1), v34, v35, v36, v37, v38, v39, v40;
  v32, v41, v42, v43, v44, v45, v46, v47;
  sub_1BD0DE53C(v14, &qword_1EBD488D8, &unk_1BE0DC9E0);
  v193 = v196;
  LOBYTE(v194) = v197;
  v176 = v31;
  sub_1BE04E224();
  v48 = swift_allocObject();
  v49 = a1[5];
  *(v48 + 80) = a1[4];
  *(v48 + 96) = v49;
  *(v48 + 112) = a1[6];
  *(v48 + 128) = *(a1 + 112);
  v50 = a1[1];
  *(v48 + 16) = *a1;
  *(v48 + 32) = v50;
  v51 = a1[3];
  *(v48 + 48) = a1[2];
  *(v48 + 64) = v51;
  sub_1BD6A92CC(a1, &v193);
  *&v193 = v12;
  *(&v193 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = MEMORY[0x1E69E6370];
  v54 = MEMORY[0x1E69E6388];
  v55 = v181;
  sub_1BE051064();
  v48, v56, v57, v58, v59, v60, v61, v62;
  (*(v182 + 8))(v16, v55);
  *&v193 = v55;
  *(&v193 + 1) = v53;
  *&v194 = OpaqueTypeConformance2;
  *(&v194 + 1) = v54;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v179;
  v65 = v183;
  MEMORY[0x1BFB3DDE0](1, v183, v63);
  (*(v184 + 8))(v18, v65);
  v193 = v200;
  *&v195 = v65;
  *(&v195 + 1) = v63;
  v66 = v177;
  swift_getOpaqueTypeConformance2();
  v67 = v180;
  v68 = v185;
  sub_1BE050C34();
  sub_1BD1BCDE4(&v200);
  v69 = v191;
  (*(v186 + 8))(v64, v68);
  v193 = v198;
  v194 = v199;
  MEMORY[0x1BFB3E970](&v195, v66);
  v70 = *(&v195 + 1);
  v193 = v195;
  sub_1BE04EB94();
  v70, v71, v72, v73, v74, v75, v76, v77;
  sub_1BD0DE53C(v67, &qword_1EBD4FA80, &unk_1BE0EE5C8);
  sub_1BE052434();
  v79 = v78;
  sub_1BE04EBB4();
  v79, v80, v81, v82, v83, v84, v85, v86;
  sub_1BD0DE53C(v69, &qword_1EBD4FA80, &unk_1BE0EE5C8);
  v193 = v198;
  v194 = v199;
  MEMORY[0x1BFB3E970](&v195, v66);
  v87 = v195;
  *(&v195 + 1), v88, v89, v90, v91, v92, v93, v94;
  v95 = HIBYTE(*(&v87 + 1)) & 0xFLL;
  if ((*(&v87 + 1) & 0x2000000000000000) == 0)
  {
    v95 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (!v95 && *(a1 + 8))
  {
    v121 = swift_allocObject();
    v122 = a1[5];
    *(v121 + 80) = a1[4];
    *(v121 + 96) = v122;
    *(v121 + 112) = a1[6];
    *(v121 + 128) = *(a1 + 112);
    v123 = a1[1];
    *(v121 + 16) = *a1;
    *(v121 + 32) = v123;
    v124 = a1[3];
    *(v121 + 48) = a1[2];
    *(v121 + 64) = v124;
    sub_1BD6A92CC(a1, &v193);
    v125 = sub_1BE0503D4();
    sub_1BE050374();
    v126 = sub_1BE0503F4();
    v125, v127, v128, v129, v130, v131, v132, v133;
    *&v193 = sub_1BD6A94E0;
    *(&v193 + 1) = v121;
    *&v194 = v126;
    v134 = v168;
    sub_1BE04FB54();
    v135 = sub_1BD6A940C();
    v136 = sub_1BD6A93C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v137 = v163;
    v138 = v171;
    sub_1BE050894();
    (*(v169 + 8))(v134, v138);
    v126, v139, v140, v141, v142, v143, v144, v145;
    v121, v146, v147, v148, v149, v150, v151, v152;
    v153 = v164;
    v154 = v172;
    (*(v164 + 16))(v173, v137, v172);
    swift_storeEnumTagMultiPayload();
    *&v193 = &type metadata for ContactButton;
    *(&v193 + 1) = v138;
    *&v194 = v135;
    *(&v194 + 1) = v136;
    swift_getOpaqueTypeConformance2();
    v155 = sub_1BD6A930C();
    *&v193 = v174;
    *(&v193 + 1) = v138;
    *&v194 = v155;
    *(&v194 + 1) = v136;
    swift_getOpaqueTypeConformance2();
    v105 = v188;
    sub_1BE04F9A4();
    (*(v153 + 8))(v137, v154);
LABEL_12:
    v120 = 0;
    goto LABEL_14;
  }

  v193 = v196;
  LOBYTE(v194) = v197;
  sub_1BE04E224();
  if (v195 == 1)
  {
    v193 = v198;
    v194 = v199;
    MEMORY[0x1BFB3E970](&v195, v66);
    v96 = v195;
    *(&v195 + 1), v97, v98, v99, v100, v101, v102, v103;
    v104 = HIBYTE(*(&v96 + 1)) & 0xFLL;
    if ((*(&v96 + 1) & 0x2000000000000000) == 0)
    {
      v104 = v96 & 0xFFFFFFFFFFFFLL;
    }

    v105 = v188;
    if (!v104)
    {
      v120 = 1;
      goto LABEL_14;
    }

    v106 = swift_allocObject();
    v107 = a1[5];
    *(v106 + 80) = a1[4];
    *(v106 + 96) = v107;
    *(v106 + 112) = a1[6];
    *(v106 + 128) = *(a1 + 112);
    v108 = a1[1];
    *(v106 + 16) = *a1;
    *(v106 + 32) = v108;
    v109 = a1[3];
    *(v106 + 48) = a1[2];
    *(v106 + 64) = v109;
    sub_1BD6A92CC(a1, &v193);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41608, &unk_1BE0CAA50);
    sub_1BD2F1750();
    v110 = v165;
    sub_1BE051704();
    v111 = v174;
    v112 = (v110 + *(v174 + 36));
    *v112 = sub_1BD1F3E44;
    v112[1] = 0;
    v113 = v168;
    sub_1BE04FB54();
    v187 = sub_1BD6A930C();
    v114 = sub_1BD6A93C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    v115 = v166;
    v116 = v171;
    sub_1BE050894();
    (*(v169 + 8))(v113, v116);
    sub_1BD0DE53C(v110, &qword_1EBD4FA40, &qword_1BE0EE580);
    v117 = v167;
    v118 = v175;
    (*(v167 + 16))(v173, v115, v175);
    swift_storeEnumTagMultiPayload();
    v119 = sub_1BD6A940C();
    *&v193 = &type metadata for ContactButton;
    *(&v193 + 1) = v116;
    *&v194 = v119;
    *(&v194 + 1) = v114;
    swift_getOpaqueTypeConformance2();
    *&v193 = v111;
    *(&v193 + 1) = v116;
    *&v194 = v187;
    *(&v194 + 1) = v114;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    (*(v117 + 8))(v115, v118);
    goto LABEL_12;
  }

  v120 = 1;
  v105 = v188;
LABEL_14:
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA88, &qword_1BE0EE5D8);
  (*(*(v156 - 8) + 56))(v105, v120, 1, v156);
  v157 = v192;
  v158 = v191;
  sub_1BD0DE19C(v192, v191, &qword_1EBD4FA80, &unk_1BE0EE5C8);
  v159 = v189;
  sub_1BD0DE19C(v105, v189, &qword_1EBD4FA60, &unk_1BE0EE5A0);
  v160 = v190;
  sub_1BD0DE19C(v158, v190, &qword_1EBD4FA80, &unk_1BE0EE5C8);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FA90, &unk_1BE0EE5E0);
  sub_1BD0DE19C(v159, v160 + *(v161 + 48), &qword_1EBD4FA60, &unk_1BE0EE5A0);
  sub_1BD0DE53C(v105, &qword_1EBD4FA60, &unk_1BE0EE5A0);
  sub_1BD0DE53C(v157, &qword_1EBD4FA80, &unk_1BE0EE5C8);
  sub_1BD0DE53C(v159, &qword_1EBD4FA60, &unk_1BE0EE5A0);
  return sub_1BD0DE53C(v158, &qword_1EBD4FA80, &unk_1BE0EE5C8);
}

void sub_1BD6A8BBC()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE051574();
  v5 = sub_1BE051494();
  KeyPath = swift_getKeyPath();
  v40[3] = v4;
  v40[4] = KeyPath;
  v40[5] = v5;
  (*(v1 + 104))(v3, *MEMORY[0x1E69B8068], v0);
  v7 = PKPassKitBundle();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE04B6F4();
    v11 = v10;

    (*(v1 + 8))(v3, v0);
    v40[1] = v9;
    v40[2] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41620, &unk_1BE0DD9A0);
    sub_1BD2F17DC();
    sub_1BD0DDEBC();
    sub_1BE050C34();
    v5, v12, v13, v14, v15, v16, v17, v18;
    KeyPath, v19, v20, v21, v22, v23, v24, v25;
    v4, v26, v27, v28, v29, v30, v31, v32;
    v11, v33, v34, v35, v36, v37, v38, v39;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD6A8DA8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 80);
  v9[4] = *(v2 + 64);
  v9[5] = v4;
  v9[6] = *(v2 + 96);
  v10 = *(v2 + 112);
  v5 = *(v2 + 16);
  v9[0] = *v2;
  v9[1] = v5;
  v6 = *(v2 + 48);
  v9[2] = *(v2 + 32);
  v9[3] = v6;
  *a2 = sub_1BE04F7C4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9B8, &qword_1BE0EE3F8);
  return sub_1BD6A70D0(v9, a2 + *(v7 + 44));
}

uint64_t sub_1BD6A8E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9C0, &qword_1BE0EE400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6A8E98()
{
  result = qword_1EBD4F9F0;
  if (!qword_1EBD4F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4F9E0, &qword_1BE0EE420);
    sub_1BD6A8F50();
    sub_1BD0DE4F4(&qword_1EBD4FA38, &qword_1EBD3C318, &qword_1BE0BE410, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F9F0);
  }

  return result;
}

unint64_t sub_1BD6A8F50()
{
  result = qword_1EBD4F9F8;
  if (!qword_1EBD4F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA00, &qword_1BE0EE558);
    sub_1BD6A9008();
    sub_1BD0DE4F4(&qword_1EBD38AB0, &qword_1EBD38AB8, &qword_1BE0B7660, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4F9F8);
  }

  return result;
}

unint64_t sub_1BD6A9008()
{
  result = qword_1EBD4FA08;
  if (!qword_1EBD4FA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA10, &qword_1BE0EE560);
    sub_1BD6A90C0();
    sub_1BD0DE4F4(&unk_1EBD51280, qword_1EBD3E2F0, &qword_1BE0C30D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA08);
  }

  return result;
}

unint64_t sub_1BD6A90C0()
{
  result = qword_1EBD4FA18;
  if (!qword_1EBD4FA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA20, &qword_1BE0EE568);
    sub_1BD6A9178();
    sub_1BD0DE4F4(&unk_1EBD4E910, &unk_1EBD3E2E0, &qword_1BE0B8230, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA18);
  }

  return result;
}

unint64_t sub_1BD6A9178()
{
  result = qword_1EBD4FA28;
  if (!qword_1EBD4FA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA30, &unk_1BE0EE570);
    sub_1BD50C6D8();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0, &qword_1BE0B89C0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA28);
  }

  return result;
}

uint64_t sub_1BD6A9230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F9E8, &qword_1BE0EE428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD6A930C()
{
  result = qword_1EBD4FA98;
  if (!qword_1EBD4FA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FA40, &qword_1BE0EE580);
    sub_1BD0DE4F4(&qword_1EBD41628, &qword_1EBD41578, &qword_1BE0CA960, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FA98);
  }

  return result;
}

uint64_t sub_1BD6A93C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD6A940C()
{
  result = qword_1EBD4FAA0;
  if (!qword_1EBD4FAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAA0);
  }

  return result;
}

uint64_t objectdestroyTm_77(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  *(v8 + 32), v9, v10, v11, v12, v13, v14, v15;
  *(v8 + 40), v16, v17, v18, v19, v20, v21, v22;
  *(v8 + 56), v23, v24, v25, v26, v27, v28, v29;

  if (*(v8 + 80))
  {
    *(v8 + 88), v30, v31, v32, v33, v34, v35, v36;
  }

  *(v8 + 104), v30, v31, v32, v33, v34, v35, v36;
  *(v8 + 120), v37, v38, v39, v40, v41, v42, v43;

  return swift_deallocObject();
}

uint64_t sub_1BD6A94E0()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

void sub_1BD6A953C(uint64_t a5@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_1BE0502A4();
  v14 = sub_1BE0505F4();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v13, v15, v17, v19, v21, v22, v23, v24;
  sub_1BD0DDF10(v6, v8, (v10 & 1), v25, v26, v27, v28, v29);
  v12, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1BE051224();
  v38 = sub_1BE050564();
  v152 = v39;
  v153 = v38;
  v151 = v40;
  v154 = v41;
  v37, v39, v40, v41, v42, v43, v44, v45;
  sub_1BD0DDF10(v14, v16, (v18 & 1), v46, v47, v48, v49, v50);
  v20, v51, v52, v53, v54, v55, v56, v57;
  KeyPath = swift_getKeyPath();
  sub_1BE048C84();
  v58 = sub_1BE0506C4();
  v60 = v59;
  LOBYTE(v16) = v61;
  v63 = v62;
  v64 = sub_1BE0502A4();
  v65 = sub_1BE0505F4();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v64, v66, v68, v70, v72, v73, v74, v75;
  sub_1BD0DDF10(v58, v60, (v16 & 1), v76, v77, v78, v79, v80);
  v63, v81, v82, v83, v84, v85, v86, v87;
  v88 = sub_1BE051234();
  v89 = sub_1BE050564();
  v91 = v90;
  LOBYTE(v58) = v92;
  v149 = v93;
  v88, v90, v92, v93, v94, v95, v96, v97;
  sub_1BD0DDF10(v65, v67, (v69 & 1), v98, v99, v100, v101, v102);
  v71, v103, v104, v105, v106, v107, v108, v109;
  v110 = swift_getKeyPath();
  *a5 = v153;
  *(a5 + 8) = v152;
  *(a5 + 16) = v151 & 1;
  *(a5 + 24) = v154;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 2;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 1;
  *(a5 + 72) = v89;
  *(a5 + 80) = v91;
  *(a5 + 88) = v58 & 1;
  *(a5 + 96) = v149;
  *(a5 + 104) = v110;
  *(a5 + 112) = 2;
  *(a5 + 120) = 0;
  sub_1BD0D7F18(v153, v152, v151 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0D7F18(v89, v91, v58 & 1);
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BD0DDF10(v89, v91, (v58 & 1), v111, v112, v113, v114, v115);
  v110, v116, v117, v118, v119, v120, v121, v122;
  v149, v123, v124, v125, v126, v127, v128, v129;
  sub_1BD0DDF10(v153, v152, (v151 & 1), v130, v131, v132, v133, v134);
  KeyPath, v135, v136, v137, v138, v139, v140, v141;
  v154, v142, v143, v144, v145, v146, v147, v148;
}

double sub_1BD6A9838@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1BE04F504();
  v19 = 1;
  sub_1BD6A953C(&v11);
  v24 = v15;
  v25 = v16;
  v26[0] = v17[0];
  *(v26 + 9) = *(v17 + 9);
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v28[0] = v17[0];
  *(v28 + 9) = *(v17 + 9);
  sub_1BD6A99B8(&v20, &v10);
  sub_1BD6A9A28(v27);
  *(&v18[4] + 7) = v24;
  *(&v18[5] + 7) = v25;
  *(&v18[6] + 7) = v26[0];
  v18[7] = *(v26 + 9);
  *(v18 + 7) = v20;
  *(&v18[1] + 7) = v21;
  *(&v18[2] + 7) = v22;
  *(&v18[3] + 7) = v23;
  v4 = v18[5];
  *(a2 + 81) = v18[4];
  *(a2 + 97) = v4;
  v5 = v18[7];
  *(a2 + 113) = v18[6];
  *(a2 + 129) = v5;
  v6 = v18[1];
  *(a2 + 17) = v18[0];
  *(a2 + 33) = v6;
  result = *&v18[2];
  v8 = v18[3];
  *(a2 + 49) = v18[2];
  v9 = v19;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 65) = v8;
  return result;
}

uint64_t sub_1BD6A99B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FAB8, &qword_1BE0EE6A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6A9A28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FAB8, &qword_1BE0EE6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6A9A90()
{
  result = qword_1EBD4FAC0;
  if (!qword_1EBD4FAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FAC8, &unk_1BE0EE6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAC0);
  }

  return result;
}

unint64_t sub_1BD6A9AF8()
{
  result = qword_1EBD4FAD0;
  if (!qword_1EBD4FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAD0);
  }

  return result;
}

unint64_t sub_1BD6A9B4C()
{
  result = qword_1EBD4FAD8;
  if (!qword_1EBD4FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAD8);
  }

  return result;
}

uint64_t sub_1BD6A9BA0()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB418);
  __swift_project_value_buffer(v6, qword_1EBDAB418);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD6A9DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v15[0] = v15 - v1;
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A884();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBC0, &unk_1BE0EEE20);
  __swift_allocate_value_buffer(v10, qword_1EBDAB430);
  v11 = __swift_project_value_buffer(v10, qword_1EBDAB430);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  (*(v4 + 16))(v6, v12, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v9 + 56))(v15[0], 1, 1, v8);
  sub_1BE048AC4();
  v13 = sub_1BE048AB4();
  return (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
}

__n128 sub_1BD6AA120@<Q0>(uint64_t a1@<X8>)
{
  sub_1BE048874();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

void sub_1BD6AA174(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_1BE048C84();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE048884();
  v5, v6, v7, v8, v9, v10, v11, v12;
  v4, v13, v14, v15, v16, v17, v18, v19;
  v3, v20, v21, v22, v23, v24, v25, v26;
  v2, v27, v28, v29, v30, v31, v32, v33;
  v1, v34, v35, v36, v37, v38, v39, v40;
}

void (*sub_1BD6AA21C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

unint64_t sub_1BD6AA290()
{
  result = qword_1EBD4FAE0;
  if (!qword_1EBD4FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAE0);
  }

  return result;
}

uint64_t sub_1BD6AA2E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD6AD670();
  v5 = sub_1BD6ABFD0();

  return MEMORY[0x1EEDB3D50](a1, v4, a2, v5);
}

unint64_t sub_1BD6AA350()
{
  result = qword_1EBD4FAE8;
  if (!qword_1EBD4FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAE8);
  }

  return result;
}

unint64_t sub_1BD6AA3A8()
{
  result = qword_1EBD4FAF0;
  if (!qword_1EBD4FAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAF0);
  }

  return result;
}

uint64_t sub_1BD6AA484@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36D10 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBC0, &unk_1BE0EEE20);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB430);
  return sub_1BD0DE19C(v3, a1, &qword_1EBD4FBC0, &unk_1BE0EEE20);
}

uint64_t sub_1BD6AA514(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD6AD670();
  v7 = sub_1BD6AD6C4();
  v8 = sub_1BD6ABFD0();
  *v5 = v2;
  v5[1] = sub_1BD519558;

  return MEMORY[0x1EEDB3D58](a1, a2, v6, v7, v8);
}

uint64_t sub_1BD6AA5E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD6AC024();
  *a1 = result;
  return result;
}

uint64_t sub_1BD6AA610(uint64_t a1)
{
  v2 = sub_1BD6AA290();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD6AA650()
{
  result = qword_1EBD4FAF8;
  if (!qword_1EBD4FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FAF8);
  }

  return result;
}

unint64_t sub_1BD6AA6A8()
{
  result = qword_1EBD4FB00;
  if (!qword_1EBD4FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB00);
  }

  return result;
}

uint64_t sub_1BD6AA6FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBA0, &qword_1BE0EEDF8);
  __swift_allocate_value_buffer(v0, qword_1EBDAB448);
  __swift_project_value_buffer(v0, qword_1EBDAB448);
  sub_1BE052434();
  MEMORY[0x1BFB3F610](3092282, 0xE300000000000000);
  v1 = sub_1BE052434();
  v3 = v2;
  MEMORY[0x1BFB3F610](v1);
  v3, v4, v5, v6, v7, v8, v9, v10;
  sub_1BD6AB6CC();
  return sub_1BE048E34();
}

uint64_t sub_1BD6AA7D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v13[0] = v13 - v1;
  v2 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1BE04A874();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1BE04A884();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1BE048E94();
  __swift_allocate_value_buffer(v10, qword_1EBDAB460);
  __swift_project_value_buffer(v10, qword_1EBDAB460);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_1EBDAB400);
  (*(v4 + 16))(v6, v11, v3);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v9 + 56))(v13[0], 1, 1, v8);
  return sub_1BE048E84();
}

uint64_t sub_1BD6AAAE4@<X0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88, &unk_1BE0BF2F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v20 = v19 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v21 = v19 - v4;
  v5 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A874();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1BE04A884();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_1EBDAB400);
  v16 = *(v7 + 16);
  v16(v9, v15, v6);
  sub_1BE04B0A4();
  v19[1] = v14;
  sub_1BE04A894();
  (*(v12 + 56))(v21, 1, 1, v11);
  v17 = sub_1BE048BB4();
  (*(*(v17 - 8) + 56))(v20, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38BA0, &qword_1BE0EEDF0);
  v19[0] = swift_allocObject();
  *(v19[0] + 16) = xmmword_1BE0B98E0;
  sub_1BE052354();
  v16(v9, v15, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v16(v9, v15, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v16(v9, v15, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BE052354();
  v16(v9, v15, v6);
  sub_1BE04B0A4();
  sub_1BE04A894();
  return sub_1BE048BD4();
}

uint64_t sub_1BD6AB064(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "SavingsAccountEntity:uniqueEntity", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD6AB350(uint64_t a1)
{
  *(v1 + 64) = a1;
  v2 = swift_task_alloc();
  *(v1 + 72) = v2;
  *v2 = v1;
  v2[1] = sub_1BD6AB3FC;

  return sub_1BD6ACE74(v1 + 16);
}

uint64_t sub_1BD6AB3FC()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 16);
    v6 = *(v2 + 48);
    v4[1] = *(v2 + 32);
    v4[2] = v6;
    *v4 = v5;
  }

  v7 = *(v3 + 8);

  return v7();
}

unint64_t sub_1BD6AB514()
{
  result = qword_1EBD4FB08;
  if (!qword_1EBD4FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB08);
  }

  return result;
}

uint64_t sub_1BD6AB568(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1BD6ABA70();
  *v4 = v2;
  v4[1] = sub_1BD041C28;

  return MEMORY[0x1EEDB3840](a2, v5);
}

unint64_t sub_1BD6AB620()
{
  result = qword_1EBD4FB10;
  if (!qword_1EBD4FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB10);
  }

  return result;
}

unint64_t sub_1BD6AB678()
{
  result = qword_1EBD4FB18;
  if (!qword_1EBD4FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB18);
  }

  return result;
}

unint64_t sub_1BD6AB6CC()
{
  result = qword_1EBD4FB20;
  if (!qword_1EBD4FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB20);
  }

  return result;
}

uint64_t sub_1BD6AB720(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD6ABA70();
  *v5 = v2;
  v5[1] = sub_1BD1CDC44;

  return MEMORY[0x1EEDB3850](a1, a2, v6);
}

uint64_t sub_1BD6AB7D4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1BD6ABA70();
  *v4 = v2;
  v4[1] = sub_1BD1CDC40;

  return MEMORY[0x1EEDB3848](a2, v5);
}

unint64_t sub_1BD6AB888()
{
  result = qword_1EBD4FB28;
  if (!qword_1EBD4FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB28);
  }

  return result;
}

unint64_t sub_1BD6AB8DC()
{
  result = qword_1EBD4FB30;
  if (!qword_1EBD4FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB30);
  }

  return result;
}

unint64_t sub_1BD6AB934()
{
  result = qword_1EBD4FB38;
  if (!qword_1EBD4FB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FB40, qword_1BE0EE990);
    sub_1BD6AB8DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB38);
  }

  return result;
}

uint64_t sub_1BD6AB9B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD6AB514();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD6ABA70()
{
  result = qword_1EBD4FB48;
  if (!qword_1EBD4FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB48);
  }

  return result;
}

unint64_t sub_1BD6ABAC8()
{
  result = qword_1EBD4FB50;
  if (!qword_1EBD4FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB50);
  }

  return result;
}

uint64_t sub_1BD6ABB1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36D18 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBA0, &qword_1BE0EEDF8);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB448);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD6ABBD4()
{
  result = qword_1EBD4FB58;
  if (!qword_1EBD4FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB58);
  }

  return result;
}

unint64_t sub_1BD6ABC2C()
{
  result = qword_1EBD4FB60;
  if (!qword_1EBD4FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB60);
  }

  return result;
}

uint64_t sub_1BD6ABC80(uint64_t a1)
{
  sub_1BD6ABFD0();
  v2 = sub_1BE048DE4();
  v3 = *(v1 + 8);

  return v3(v2);
}

unint64_t sub_1BD6ABCF0()
{
  result = qword_1EBD4FB68;
  if (!qword_1EBD4FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB68);
  }

  return result;
}

unint64_t sub_1BD6ABD44()
{
  result = qword_1EBD4FB70;
  if (!qword_1EBD4FB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB70);
  }

  return result;
}

unint64_t sub_1BD6ABD9C()
{
  result = qword_1EBD4FB78;
  if (!qword_1EBD4FB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB78);
  }

  return result;
}

unint64_t sub_1BD6ABE2C()
{
  result = qword_1EBD4FB80;
  if (!qword_1EBD4FB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FB88, &qword_1BE0EEC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB80);
  }

  return result;
}

uint64_t sub_1BD6ABE90(uint64_t a1)
{
  v2 = sub_1BD6AB6CC();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1BD6ABEE0()
{
  result = qword_1EBD4FB90;
  if (!qword_1EBD4FB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB90);
  }

  return result;
}

uint64_t sub_1BD6ABF4C(uint64_t a1)
{
  sub_1BD6ABD9C();

  return sub_1BE048EF4();
}

unint64_t sub_1BD6ABFD0()
{
  result = qword_1EBD4FB98;
  if (!qword_1EBD4FB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FB98);
  }

  return result;
}

uint64_t sub_1BD6AC024()
{
  v18 = sub_1BE048D74();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290, &unk_1BE0D9740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0, &qword_1BE0B79D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBA8, &qword_1BE0EEE18);
  sub_1BE04A864();
  (*(v13 + 56))(v11, 1, 1, v12);
  v14 = sub_1BE048654();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, *MEMORY[0x1E695A500], v18);
  sub_1BD6AB6CC();
  return sub_1BE0488C4();
}

void sub_1BD6AC324(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v191 = a1;
  v189 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0, &unk_1BE0DED20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v183 = &v182 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v184 = &v182 - v5;
  v6 = sub_1BE04D214();
  v186 = *(v6 - 8);
  v187 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v188 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v185 = &v182 - v9;
  v10 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1BE04A874();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49438, &unk_1BE0DED70);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_1EBDAB400);
  v18 = *(v12 + 16);
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v193 = sub_1BE0487F4();
  sub_1BE048964();
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v190 = sub_1BE0487F4();
  sub_1BE048964();
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v19 = sub_1BE0487F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740, &qword_1BE0EEE10);
  sub_1BE048964();
  sub_1BE052354();
  v18(v14, v17, v11);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v20 = sub_1BE048824();
  sub_1BE048964();
  v21 = v191;
  if ([v191 type] == 4)
  {
    v22 = [v21 accountIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1BE052434();
      v26 = v25;

      v192 = v26;
      sub_1BE048C84();
      v27 = [v21 savingsDetails];
      if (v27)
      {
        v28 = v27;
        v185 = v19;
        v29 = [v27 accountSummary];
        v30 = [v29 formattedAPY];
        if (v30)
        {
          v31 = v30;
          v32 = sub_1BE052434();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0;
        }

        v53 = v188;
        v194 = v32;
        v195 = v34;
        sub_1BE0487D4();
        v54 = [v28 currencyCode];
        if (v54)
        {
          v188 = v24;
          v55 = v54;
          sub_1BE052434();
          v57 = v56;

          v58 = [v29 currentBalance];
          if (v58)
          {
            v194 = 0;
            v195 = 0;
            v196 = 0;
            v197 = 1;
            v59 = v58;
            sub_1BE0533E4();

            if ((v197 & 1) == 0)
            {
              sub_1BE048C84();
              v60 = v184;
              v21 = v191;
              sub_1BE048B54();
              v61 = sub_1BE048B74();
              (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
              sub_1BD0DE19C(v60, v183, &qword_1EBD493E0, &unk_1BE0DED20);
              sub_1BE0487D4();
              sub_1BD6AD608(v60);
            }
          }

          v62 = [v29 availableBalance];
          if (v62)
          {
            v194 = 0;
            v195 = 0;
            v196 = 0;
            v197 = 1;
            v63 = v62;
            sub_1BE0533E4();

            if (v197 != 1)
            {
              sub_1BE048C84();
              v64 = v184;
              v21 = v191;
              sub_1BE048B54();
              v65 = sub_1BE048B74();
              (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
              sub_1BD0DE19C(v64, v183, &qword_1EBD493E0, &unk_1BE0DED20);
              sub_1BE0487D4();
              sub_1BD6AD608(v64);
            }
          }

          v66 = [v29 interestYTD];
          if (v66 && (v194 = 0, v195 = 0, v196 = 0, v197 = 1, v74 = v66, sub_1BE0533E4(), v74, v197 != 1))
          {
            v142 = v184;
            sub_1BE048B54();
            v143 = sub_1BE048B74();
            (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
            sub_1BD0DE19C(v142, v183, &qword_1EBD493E0, &unk_1BE0DED20);
            v19 = v185;
            sub_1BE0487D4();

            sub_1BD6AD608(v142);
            v20, v144, v145, v146, v147, v148, v149, v150;
            v19, v151, v152, v153, v154, v155, v156, v157;
            v82 = v190;
            v190, v158, v159, v160, v161, v162, v163, v164;
            v193, v165, v166, v167, v168, v169, v170, v171;
            v192, v172, v173, v174, v175, v176, v177, v178;
          }

          else
          {
            v20, v67, v68, v69, v70, v71, v72, v73;
            v19 = v185;
            v185, v75, v76, v77, v78, v79, v80, v81;
            v82 = v190;
            v190, v83, v84, v85, v86, v87, v88, v89;
            v193, v90, v91, v92, v93, v94, v95, v96;
            v192, v97, v98, v99, v100, v101, v102, v103;
            v57, v104, v105, v106, v107, v108, v109, v110;
          }

          v24 = v188;
          goto LABEL_28;
        }

        sub_1BE04D074();
        v111 = sub_1BE04D204();
        v112 = sub_1BE052C34();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_1BD026000, v111, v112, "SavingsAccountEntity: Currency code was nil", v113, 2u);
          MEMORY[0x1BFB45F20](v113, -1, -1);
        }

        (*(v186 + 8))(v53, v187);
        v20, v114, v115, v116, v117, v118, v119, v120;
        v19 = v185;
      }

      else
      {
        v35 = v185;
        sub_1BE04D074();
        v36 = sub_1BE04D204();
        v37 = sub_1BE052C34();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 0;
          _os_log_impl(&dword_1BD026000, v36, v37, "SavingsAccountEntity: Details were nil", v38, 2u);
          MEMORY[0x1BFB45F20](v38, -1, -1);
        }

        (*(v186 + 8))(v35, v187);
        v20, v39, v40, v41, v42, v43, v44, v45;
      }

      v19, v46, v47, v48, v49, v50, v51, v52;
      v82 = v190;
      v190, v121, v122, v123, v124, v125, v126, v127;
      v193, v128, v129, v130, v131, v132, v133, v134;
      v192, v135, v136, v137, v138, v139, v140, v141;
LABEL_28:
      v179 = v189;
      v181 = v192;
      v180 = v193;
      *v189 = v24;
      v179[1] = v181;
      v179[2] = v180;
      v179[3] = v82;
      v179[4] = v19;
      v179[5] = v20;
      return;
    }
  }

  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD6ACE74(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_1BE04CFC4();
  v1[26] = v2;
  v1[27] = *(v2 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[30] = v3;
  v1[31] = *(v3 - 8);
  v1[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD6ACF9C, 0, 0);
}

uint64_t sub_1BD6ACF9C(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "SavingsAccountEntity:uniqueEntity", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[31];
  v6 = v1[32];
  v9 = v1[29];
  v8 = v1[30];
  v11 = v1[27];
  v10 = v1[28];
  v12 = v1[26];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[33] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  v13 = [objc_opt_self() sharedInstance];
  v1[34] = v13;
  if (v13)
  {
    v14 = v13;
    v1[2] = v1;
    v1[7] = v1 + 24;
    v1[3] = sub_1BD6AD2B8;
    v15 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47308, &unk_1BE0F5B00);
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1BD16E918;
    v1[13] = &block_descriptor_158;
    v1[14] = v15;
    [v14 defaultAccountForFeature:5 completion:v1 + 10];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    v17 = v1[33];
    sub_1BD6AB064(v17);
    v17, v18, v19, v20, v21, v22, v23, v24;

    v25 = v1[1];

    return v25();
  }
}

uint64_t sub_1BD6AD2B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1BD6AD560;
  }

  else
  {
    v2 = sub_1BD6AD3C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD6AD3C8()
{
  v1 = *(v0 + 192);

  if (v1)
  {
    if ([v1 state] - 1 < 3)
    {
      v2 = *(v0 + 264);
      v3 = *(v0 + 200);
      sub_1BD6AC324(v1, (v0 + 144));
      sub_1BD6AB064(v2);
      v2, v4, v5, v6, v7, v8, v9, v10;
      v11 = *(v0 + 144);
      v12 = *(v0 + 176);
      v3[1] = *(v0 + 160);
      v3[2] = v12;
      *v3 = v11;

      v13 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_1BD135218();
    swift_allocError();
    *v15 = 5;
    swift_willThrow();
  }

  else
  {
    sub_1BD135218();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
  }

  v16 = *(v0 + 264);
  sub_1BD6AB064(v16);
  v16, v17, v18, v19, v20, v21, v22, v23;

  v13 = *(v0 + 8);
LABEL_7:

  return v13();
}

uint64_t sub_1BD6AD560(uint64_t a1)
{
  v2 = v1[34];
  swift_willThrow();

  v3 = v1[33];
  sub_1BD6AB064(v3);
  v3, v4, v5, v6, v7, v8, v9, v10;

  v11 = v1[1];

  return v11();
}

uint64_t sub_1BD6AD608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0, &unk_1BE0DED20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD6AD670()
{
  result = qword_1EBD4FBB0;
  if (!qword_1EBD4FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBB0);
  }

  return result;
}

unint64_t sub_1BD6AD6C4()
{
  result = qword_1EBD4FBB8;
  if (!qword_1EBD4FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBB8);
  }

  return result;
}

uint64_t sub_1BD6AD760@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v63 = a1;
  v64 = a3;
  v62 = sub_1BE04F434();
  v3 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBC8, &qword_1BE0EEEB8);
  v56 = *(v10 - 8);
  v57 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBD0, &qword_1BE0EEEC0);
  v60 = *(v13 - 8);
  v61 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v55 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FBD8, &qword_1BE0EEEC8);
  MEMORY[0x1EEE9AC00](v58);
  v16 = &v55 - v15;
  sub_1BD6ADC8C();
  sub_1BE0504E4();
  (*(v7 + 104))(v9, *MEMORY[0x1E69B80E0], v6);
  v17 = PKPassKitBundle();
  if (v17)
  {
    v18 = v17;
    v19 = sub_1BE04B6F4();
    v21 = v20;

    (*(v7 + 8))(v9, v6);
    v65[0] = v19;
    v65[1] = v21;
    v22 = v62;
    (*(v3 + 104))(v5, *MEMORY[0x1E697C438], v62);
    sub_1BD0DE4F4(&qword_1EBD4FBE8, &qword_1EBD4FBC8, &qword_1BE0EEEB8, MEMORY[0x1E697CD20]);
    sub_1BD0DDEBC();
    v23 = v59;
    v24 = v57;
    sub_1BE050C94();
    (*(v3 + 8))(v5, v22);
    v21, v25, v26, v27, v28, v29, v30, v31;
    (*(v56 + 8))(v12, v24);
    v32 = sub_1BE051D74();
    v33 = v63;
    if (v63)
    {
      v34 = v32;
      KeyPath = swift_getKeyPath();
      v36 = swift_getKeyPath();
      v37 = v33;
      sub_1BE04D8B4(v65);
      KeyPath, v38, v39, v40, v41, v42, v43, v44;
      v36, v45, v46, v47, v48, v49, v50, v51;

      v52 = v65[0];
      (*(v60 + 32))(v16, v23, v61);
      v53 = &v16[*(v58 + 36)];
      *v53 = v34;
      *(v53 + 1) = v52;
      return sub_1BD098ADC(v16, v64);
    }
  }

  else
  {
    __break(1u);
  }

  type metadata accessor for SavingsStatementsModel(0);
  sub_1BD6ADCE0();
  result = sub_1BE04EEB4();
  __break(1u);
  return result;
}

__n128 sub_1BD6ADC34@<Q0>(uint64_t a1@<X8>)
{
  sub_1BD5CA250(0, 1, v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v4[4];
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BD6ADC8C()
{
  result = qword_1EBD4FBE0;
  if (!qword_1EBD4FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBE0);
  }

  return result;
}

unint64_t sub_1BD6ADCE0()
{
  result = qword_1EBD3B318;
  if (!qword_1EBD3B318)
  {
    type metadata accessor for SavingsStatementsModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3B318);
  }

  return result;
}

unint64_t sub_1BD6ADD38()
{
  result = qword_1EBD4FBF0;
  if (!qword_1EBD4FBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FBF8, &qword_1BE0EEF18);
    sub_1BD6ADDC4();
    sub_1BD18596C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FBF0);
  }

  return result;
}

unint64_t sub_1BD6ADDC4()
{
  result = qword_1EBD4FC00;
  if (!qword_1EBD4FC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FBD8, &qword_1BE0EEEC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4FBC8, &qword_1BE0EEEB8);
    sub_1BD0DE4F4(&qword_1EBD4FBE8, &qword_1EBD4FBC8, &qword_1BE0EEEB8, MEMORY[0x1E697CD20]);
    sub_1BD0DDEBC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4FC08, &qword_1EBD4FC10, &qword_1BE0EEF20, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4FC00);
  }

  return result;
}

uint64_t sub_1BD6ADF00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BD6ADF5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_1BD6ADFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  *(&v83 + 1) = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](*(&v83 + 1));
  v4 = (&v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC20, &qword_1BE0EEFC8);
  MEMORY[0x1EEE9AC00](v86);
  v9 = &v83 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC28, &qword_1BE0EEFD0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v83 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC30, &qword_1BE0EEFD8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v88 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v83 - v19;
  v84 = a1;
  v21 = a1[4];
  if (!v21)
  {
    (*(v11 + 56))(&v83 - v19, 1, 1, v10);
LABEL_5:
    v41 = v84;
    v42 = v84[1];
    if (v42)
    {
      v92 = *v84;
      v93 = v42;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v87 = sub_1BE0506C4();
      v44 = v43;
      v46 = v45;
      *(&v83 + 1) = v47;
      v48 = sub_1BE0501F4();
      v49 = v48;
      PKOBKHeaderTitleSubtitleVerticalPadding(v48);
      sub_1BE04E1F4();
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      LOBYTE(v92) = v46 & 1;
      LOBYTE(v89[0]) = 0;
      *&v83 = v46 & 1;
      v86 = v49;
      v58 = v41[3];
      if (v58)
      {
LABEL_7:
        v92 = v41[2];
        v93 = v58;
        sub_1BD0DDEBC();
        sub_1BE048C84();
        v58 = sub_1BE0506C4();
        v60 = v59;
        v62 = v61;
        v64 = (v63 & 1);
        sub_1BD0D7F18(v58, v59, v63 & 1);
        sub_1BE048C84();
LABEL_10:
        v65 = v88;
        sub_1BD0DE19C(v20, v88, &qword_1EBD4FC30, &qword_1BE0EEFD8);
        v66 = v65;
        v67 = v85;
        sub_1BD0DE19C(v66, v85, &qword_1EBD4FC30, &qword_1BE0EEFD8);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4FC38, &qword_1BE0EEFE0);
        v69 = (v67 + *(v68 + 48));
        *&v89[0] = v87;
        *(&v89[0] + 1) = v44;
        v70 = v83;
        v89[1] = v83;
        *&v90 = v86;
        *(&v90 + 1) = v51;
        *&v91[0] = v53;
        *(&v91[0] + 1) = v55;
        *&v91[1] = v57;
        BYTE8(v91[1]) = 0;
        v71 = v83;
        *v69 = v89[0];
        v69[1] = v71;
        v72 = v91[0];
        v69[2] = v90;
        v69[3] = v72;
        *(v69 + 57) = *(v91 + 9);
        v73 = *(v68 + 64);
        v84 = v44;
        v74 = (v67 + v73);
        sub_1BD0DE19C(v89, &v92, &qword_1EBD4FC40, &qword_1BE0EEFE8);
        sub_1BD1969AC(v58, v60, v64, v62);
        sub_1BD1969F0(v58, v60, v64, v62, v75, v76, v77, v78);
        *v74 = v58;
        v74[1] = v60;
        v74[2] = v64;
        v74[3] = v62;
        sub_1BD0DE53C(v20, &qword_1EBD4FC30, &qword_1BE0EEFD8);
        sub_1BD1969F0(v58, v60, v64, v62, v79, v80, v81, v82);
        v92 = v87;
        v93 = v84;
        v94 = v70;
        v95 = v86;
        v96 = v51;
        v97 = v53;
        v98 = v55;
        v99 = v57;
        v100 = 0;
        sub_1BD0DE53C(&v92, &qword_1EBD4FC40, &qword_1BE0EEFE8);
        return sub_1BD0DE53C(v88, &qword_1EBD4FC30, &qword_1BE0EEFD8);
      }
    }

    else
    {
      v86 = 0;
      v87 = 0;
      v44 = 0;
      v83 = 0uLL;
      v51 = 0;
      v53 = 0;
      v55 = 0;
      v57 = 0;
      v58 = v84[3];
      if (v58)
      {
        goto LABEL_7;
      }
    }

    v60 = 0;
    v64 = 0;
    v62 = 0;
    goto LABEL_10;
  }

  *&v83 = v11;
  v22 = v21;
  result = [v22 paymentPass];
  if (result)
  {
    *v4 = result;
    swift_storeEnumTagMultiPayload();
    PKPassFrontFaceContentSize();
    *(v7 + 3) = 0x4061000000000000;
    *(v7 + 4) = v25 / v24 * 136.0;
    sub_1BD6AE768(v4, &v7[v5[6]], type metadata accessor for WrappedPass);
    *v7 = sub_1BD70C870;
    *(v7 + 1) = 0;
    v7[16] = 0;
    v7[v5[7]] = 1;
    *&v7[v5[8]] = 1911;
    sub_1BE051CD4();
    sub_1BE04EE54();
    sub_1BD6AE768(v7, v9, type metadata accessor for PassImage);
    v26 = &v9[*(v86 + 36)];
    v27 = v106;
    *(v26 + 4) = v105;
    *(v26 + 5) = v27;
    *(v26 + 6) = v107;
    v28 = v102;
    *v26 = v101;
    *(v26 + 1) = v28;
    v29 = v104;
    *(v26 + 2) = v103;
    *(v26 + 3) = v29;
    v30 = sub_1BE0501F4();
    sub_1BE04E1F4();
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    sub_1BD0DE204(v9, v13, &qword_1EBD4FC20, &qword_1BE0EEFC8);
    v39 = &v13[*(v10 + 36)];
    *v39 = v30;
    *(v39 + 1) = v32;
    *(v39 + 2) = v34;
    *(v39 + 3) = v36;
    *(v39 + 4) = v38;
    v39[40] = 0;
    v40 = v87;
    sub_1BD0DE204(v13, v87, &qword_1EBD4FC28, &qword_1BE0EEFD0);
    sub_1BD0DE204(v40, v20, &qword_1EBD4FC28, &qword_1BE0EEFD0);
    (*(v83 + 56))(v20, 0, 1, v10);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}