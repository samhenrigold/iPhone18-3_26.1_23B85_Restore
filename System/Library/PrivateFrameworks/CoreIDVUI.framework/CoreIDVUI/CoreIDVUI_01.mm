uint64_t sub_2457864CC(uint64_t a1)
{
  v3 = v1;
  v4 = sub_2459107E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245910814();
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590BE04();
  swift_allocObject();
  sub_24590BDF4();
  sub_24590C384();
  sub_24579004C(&qword_27EE28EF8, MEMORY[0x277CFF2E0], MEMORY[0x277CFF2E8]);
  v10 = sub_24590BDE4();
  if (!v2)
  {
    v23 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
    v12 = v10;
    v13 = v11;
    v14 = swift_allocObject();
    v14[2] = v3;
    v14[3] = v12;
    v21 = v13;
    v22 = v12;
    v14[4] = v13;
    aBlock[4] = sub_24578FEE4;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2458935A8;
    aBlock[3] = &block_descriptor_147;
    v20 = _Block_copy(aBlock);

    sub_24578FB80(v12, v13);
    sub_245910804();
    aBlock[7] = MEMORY[0x277D84F90];
    sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
    sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
    v15 = v25;
    sub_2459113A4();
    v16 = v20;
    MEMORY[0x245D76690](0, v9, v15, v20);
    _Block_release(v16);

    sub_24578FC28(v22, v21);
    (*(v5 + 8))(v15, v4);
    (*(v24 + 8))(v9, v19);
  }
}

uint64_t sub_245786868(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v36 = sub_2459107E4();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_245910814();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0, &qword_245916B08);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v13 = &v30 - v12;
  v14 = a4[5];
  v45 = a4[4];
  v46 = v14;
  v47 = a4[6];
  v48 = *(a4 + 112);
  v15 = a4[1];
  v41 = *a4;
  v42 = v15;
  v16 = a4[3];
  v43 = a4[2];
  v44 = v16;
  v17 = v30;
  v34 = *(v30 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  sub_245778F2C(v31, &v30 - v12, &qword_27EE28EF0, &qword_245916B08);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v32;
  v22 = v33;
  v20[2] = v17;
  v20[3] = v21;
  v20[4] = v22;
  sub_24578FD78(v13, v20 + v18);
  v23 = v20 + v19;
  v24 = v46;
  *(v23 + 4) = v45;
  *(v23 + 5) = v24;
  *(v23 + 6) = v47;
  v23[112] = v48;
  v25 = v42;
  *v23 = v41;
  *(v23 + 1) = v25;
  v26 = v44;
  *(v23 + 2) = v43;
  *(v23 + 3) = v26;
  v40[4] = sub_24578FDE8;
  v40[5] = v20;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 1107296256;
  v40[2] = sub_2458935A8;
  v40[3] = &block_descriptor_141;
  v27 = _Block_copy(v40);

  sub_24578FE88(&v41, v39);
  sub_245910804();
  v39[0] = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  v28 = v36;
  sub_2459113A4();
  MEMORY[0x245D76690](0, v8, v6, v27);
  _Block_release(v27);
  (*(v38 + 8))(v6, v28);
  (*(v35 + 8))(v8, v37);
}

void sub_245786C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v88 = a4;
  v89 = a2;
  v8 = sub_24590C6A4();
  v91 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0, &qword_245916B00);
  MEMORY[0x28223BE20](v14 - 8);
  v83 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v81 = &v76 - v17;
  MEMORY[0x28223BE20](v18);
  v79 = &v76 - v19;
  MEMORY[0x28223BE20](v20);
  v77 = &v76 - v21;
  MEMORY[0x28223BE20](v22);
  v87 = (&v76 - v23);
  v24 = sub_24590D1B4();
  v90 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v82 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v80 = &v76 - v27;
  MEMORY[0x28223BE20](v28);
  v78 = &v76 - v29;
  MEMORY[0x28223BE20](v30);
  v76 = &v76 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v76 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0, &qword_245916B08);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = &v76 - v36;
  *(a1 + 40) = v89;
  *(a1 + 48) = a3;

  v38 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics);
  v39 = sub_24590D9E4();

  if (v39 >> 62)
  {
    v40 = sub_245911424();
    if (v40)
    {
LABEL_3:
      v41 = __OFSUB__(v40, 1);
      v42 = v40 - 1;
      if (v41)
      {
        __break(1u);
      }

      else
      {
        v89 = a1;
        v84 = a5;
        if ((v39 & 0xC000000000000001) == 0)
        {
          if ((v42 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v42 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v43 = *(v39 + 8 * v42 + 32);
LABEL_8:
            v85 = v43;

            sub_245778F2C(v88, v37, &qword_27EE28EF0, &qword_245916B08);
            v44 = sub_24590EAF4();
            v45 = *(v44 - 8);
            if ((*(v45 + 48))(v37, 1, v44) == 1)
            {
              sub_245778F94(v37, &qword_27EE28EF0, &qword_245916B08);
            }

            else
            {
              sub_24590EAD4();
              (*(v45 + 8))(v37, v44);
            }

            sub_24590CBA4();
            v46 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
            v47 = v89;
            swift_beginAccess();
            v88 = v46;
            v48 = v47 + v46;
            v49 = v87;
            sub_245778F2C(v48, v87, &qword_27EE28ED0, &qword_245916B00);
            v50 = v90;
            v51 = *(v90 + 48);
            if (v51(v49, 1, v24) == 1)
            {
              (*(v50 + 16))(v34, v47 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v24);
              if (v51(v49, 1, v24) != 1)
              {
                sub_245778F94(v49, &qword_27EE28ED0, &qword_245916B00);
              }
            }

            else
            {
              (*(v50 + 32))(v34, v49, v24);
            }

            sub_24590D154();
            v87 = *(v50 + 8);
            (v87)(v34, v24);
            sub_24590C624();
            v86 = sub_24579004C(&qword_27EE28E90, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3C0]);
            v52 = sub_245911364();
            v53 = v91 + 8;
            v54 = *(v91 + 8);
            v54(v10, v8);
            v91 = v53;
            v54(v13, v8);
            if ((v52 & 1) != 0 && (*(v84 + 112) & 1) == 0)
            {
              sub_24590CBC4();
            }

            v55 = v89;
            v56 = v77;
            sub_245778F2C(v89 + v88, v77, &qword_27EE28ED0, &qword_245916B00);
            if (v51(v56, 1, v24) == 1)
            {
              v57 = v55 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v58 = v76;
              (*(v90 + 16))(v76, v57, v24);
              if (v51(v56, 1, v24) != 1)
              {
                sub_245778F94(v56, &qword_27EE28ED0, &qword_245916B00);
              }
            }

            else
            {
              v58 = v76;
              (*(v90 + 32))(v76, v56, v24);
            }

            sub_24590D154();
            (v87)(v58, v24);
            sub_24590C634();
            v59 = sub_245911364();
            v54(v10, v8);
            v54(v13, v8);
            if (v59)
            {
              sub_24590CBE4();
            }

            v60 = v89;
            v61 = v79;
            sub_245778F2C(v89 + v88, v79, &qword_27EE28ED0, &qword_245916B00);
            if (v51(v61, 1, v24) == 1)
            {
              v62 = v60 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v63 = v78;
              (*(v90 + 16))(v78, v62, v24);
              if (v51(v61, 1, v24) != 1)
              {
                sub_245778F94(v61, &qword_27EE28ED0, &qword_245916B00);
              }
            }

            else
            {
              v63 = v78;
              (*(v90 + 32))(v78, v61, v24);
            }

            sub_24590D154();
            (v87)(v63, v24);
            sub_24590C644();
            v64 = sub_245911364();
            v54(v10, v8);
            v54(v13, v8);
            if (v64)
            {
              sub_24590CBF4();
            }

            v65 = v89;
            v66 = v81;
            sub_245778F2C(v89 + v88, v81, &qword_27EE28ED0, &qword_245916B00);
            if (v51(v66, 1, v24) == 1)
            {
              v67 = v65 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v68 = v80;
              (*(v90 + 16))(v80, v67, v24);
              if (v51(v66, 1, v24) != 1)
              {
                sub_245778F94(v66, &qword_27EE28ED0, &qword_245916B00);
              }
            }

            else
            {
              v68 = v80;
              (*(v90 + 32))(v80, v66, v24);
            }

            sub_24590D154();
            (v87)(v68, v24);
            sub_24590C664();
            v69 = sub_245911364();
            v54(v10, v8);
            v54(v13, v8);
            if (v69)
            {
              sub_24590CC94();
            }

            v70 = v89;
            v71 = v83;
            sub_245778F2C(v89 + v88, v83, &qword_27EE28ED0, &qword_245916B00);
            if (v51(v71, 1, v24) == 1)
            {
              v72 = v70 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
              v73 = v82;
              (*(v90 + 16))(v82, v72, v24);
              if (v51(v71, 1, v24) != 1)
              {
                sub_245778F94(v71, &qword_27EE28ED0, &qword_245916B00);
              }
            }

            else
            {
              v73 = v82;
              (*(v90 + 32))(v82, v71, v24);
            }

            sub_24590D154();
            (v87)(v73, v24);
            sub_24590C674();
            v74 = sub_245911364();
            v54(v10, v8);
            v54(v13, v8);
            if (v74)
            {
              v75 = v85;
              sub_24590CCD4();
            }

            else
            {
            }

            return;
          }

          __break(1u);
          return;
        }
      }

      v43 = MEMORY[0x245D76B30](v42, v39);
      goto LABEL_8;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_24578789C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_2459107E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_245910814();
  v12 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  v15[5] = a3;
  aBlock[4] = sub_24578FD6C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_135;
  v16 = _Block_copy(aBlock);

  sub_24578FB6C(a2, a3);
  sub_245910804();
  v20 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

uint64_t sub_245787B84(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  a1[7] = a2;

  v7 = a1[8];
  v8 = a1[9];
  a1[8] = a3;
  a1[9] = a4;
  sub_24578FB6C(a3, a4);

  return sub_245771C44(v7, v8);
}

uint64_t sub_245787C00@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24590F354();
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  if (a2 >> 60 == 15)
  {
    v8 = sub_24590D1B4();
    v9 = *(*(v8 - 8) + 56);

    return v9(a3, 1, 1, v8);
  }

  else
  {
    sub_24590BDD4();
    swift_allocObject();
    sub_24578FB80(a1, a2);
    sub_24590BDC4();
    v11 = sub_24590D1B4();
    sub_24579004C(&qword_27EE28EE8, MEMORY[0x277CFF450], MEMORY[0x277CFF458]);
    sub_24590BDB4();
    (*(*(v11 - 8) + 56))(a3, 0, 1, v11);

    return sub_245771C44(a1, a2);
  }
}

uint64_t sub_245788060@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v83 = a2;
  v7 = sub_24590F354();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v76 - v11;
  MEMORY[0x28223BE20](v12);
  v80 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  sub_24590C714();

  v17 = sub_24590F344();
  v18 = sub_245910F54();

  v19 = os_log_type_enabled(v17, v18);
  v82 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v77 = a3;
    v21 = v20;
    v81 = swift_slowAlloc();
    v84 = v81;
    *v21 = 136315138;
    sub_24578FBD4();
    v22 = sub_245910E94();
    v24 = sub_2458CC378(v22, v23, &v84);

    *(v21 + 4) = v24;
    v4 = v3;
    a1 = v82;
    _os_log_impl(&dword_245767000, v17, v18, "Retrieving ProofingDocuments: %s", v21, 0xCu);
    v25 = v81;
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x245D77B40](v25, -1, -1);
    v26 = v21;
    a3 = v77;
    MEMORY[0x245D77B40](v26, -1, -1);
  }

  v81 = *(v8 + 8);
  (v81)(v16, v7);
  v27 = sub_245788774(0, a1);
  v28 = v83;
  if (v27)
  {
    v29 = v83[2];
    v30 = v29;
    sub_24578F7FC(v29);
    v32 = v31;

    if (v32 >> 60 == 15)
    {
      v33 = v80;
      sub_24590C714();
      v34 = sub_24590F344();
      v35 = sub_245910F64();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_245767000, v34, v35, "Failed to convert idFront to jpeg data", v36, 2u);
        MEMORY[0x245D77B40](v36, -1, -1);
      }

LABEL_15:
      v49 = v33;
      v50 = v7;
LABEL_23:
      (v81)(v49, v50);
      result = 0;
      goto LABEL_29;
    }

    v37 = v28[10];
    v38 = v28[12];
    v39 = objc_allocWithZone(sub_24590C914());
    v40 = v37;
    v41 = v38;
    v28 = v83;
    v80 = sub_24590C904();
    a1 = v82;
  }

  else
  {
    v80 = 0;
  }

  if (sub_245788774(1u, a1))
  {
    v42 = v28[3];
    v43 = v42;
    sub_24578F7FC(v42);
    v45 = v44;

    if (v45 >> 60 == 15)
    {
      v33 = v79;
      sub_24590C714();
      v46 = sub_24590F344();
      v47 = sub_245910F64();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_245767000, v46, v47, "Failed to convert idBack to jpeg data", v48, 2u);
        MEMORY[0x245D77B40](v48, -1, -1);
      }

      goto LABEL_15;
    }

    v79 = v7;
    v52 = v28[11];
    v53 = v28[13];
    v54 = v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data;
    v77 = v4;
    v55 = *(v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
    v56 = *(v54 + 1);
    v57 = objc_allocWithZone(sub_24590C914());
    v58 = v52;
    v59 = v53;
    sub_24578FB6C(v55, v56);
    v28 = v83;
    v51 = sub_24590C904();
    a1 = v82;
  }

  else
  {
    v79 = v7;
    v51 = 0;
  }

  if (sub_245788774(2u, a1))
  {
    v60 = v28[4];
    v61 = v60;
    sub_24578F7FC(v60);
    v63 = v62;

    if (v63 >> 60 == 15)
    {
      v64 = v78;
      sub_24590C714();
      v65 = sub_24590F344();
      v66 = sub_245910F64();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_245767000, v65, v66, "Failed to convert selfie to jpeg data", v67, 2u);
        MEMORY[0x245D77B40](v67, -1, -1);
      }

      v49 = v64;
      v50 = v79;
      goto LABEL_23;
    }

    v69 = v28[14];
    v70 = objc_allocWithZone(sub_24590C914());
    v71 = v69;
    v28 = v83;
    sub_24590C904();
    a1 = v82;
  }

  if (sub_245788774(3u, a1))
  {
    v72 = *(v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics);
    objc_allocWithZone(sub_24590C914());
    v73 = v72;
    sub_24590C904();
  }

  v74 = *(v28 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness);
  objc_allocWithZone(sub_24590D7A4());
  v75 = v74;
  result = sub_24590D784();
LABEL_29:
  *a3 = result;
  return result;
}

BOOL sub_245788774(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_245911824();
  MEMORY[0x245D76E70](v3);
  v4 = sub_245911864();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_245788840(uint64_t a1, uint64_t a2)
{
  v3 = sub_24590E9D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_24579004C(&qword_27EE28EB8, MEMORY[0x277CFF850], MEMORY[0x277CFF858]), v7 = sub_245910904(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_24579004C(&unk_27EE29C00, MEMORY[0x277CFF850], MEMORY[0x277CFF860]);
      v15 = sub_245910934();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

id sub_245788A58@<X0>(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_24590F354();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = a2[2];
    }

    goto LABEL_7;
  }

  if (a1 == 2)
  {
    v11 = a2[4];
LABEL_7:
    *a3 = v11;
    return v11;
  }

  v13 = v8;
  sub_24590C714();
  v14 = sub_24590F344();
  v15 = sub_245910F64();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2458CC378(0x74726F7073736150, 0xE800000000000000, &v19);
    _os_log_impl(&dword_245767000, v14, v15, "Unable to retrieve image for type: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x245D77B40](v17, -1, -1);
    MEMORY[0x245D77B40](v16, -1, -1);
  }

  result = (*(v7 + 8))(v10, v13);
  *a3 = 0;
  return result;
}

uint64_t sub_245788C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v90 = sub_24590C6A4();
  MEMORY[0x28223BE20](v90);
  v89 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24590D124();
  MEMORY[0x28223BE20](v5 - 8);
  v88 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590F354();
  v83 = *(v7 - 8);
  v84 = v7;
  MEMORY[0x28223BE20](v7);
  v82 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_24590EA74();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v81 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0, &qword_245916B00);
  MEMORY[0x28223BE20](v10 - 8);
  v77 = v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = v76 - v13;
  MEMORY[0x28223BE20](v14);
  v92 = v76 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v76 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v76 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = v76 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v76 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v76 - v29;
  v31 = sub_24590C474();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v32 + 16);
  v80 = a1;
  v36(v35, a1, v31, v33);
  v85 = v35;
  v86 = v32;
  v37 = *(v32 + 88);
  v87 = v31;
  v38 = v37(v35, v31);
  if (v38 == *MEMORY[0x277CFF340])
  {
    v39 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v39, v30, &qword_27EE28ED0, &qword_245916B00);
    v40 = sub_24590D1B4();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (v42(v30, 1, v40) != 1)
    {
      return (*(v41 + 32))(v93, v30, v40);
    }

    (*(v41 + 16))(v93, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanFallbackSettings, v40);
    result = (v42)(v30, 1, v40);
    if (result != 1)
    {
      return sub_245778F94(v30, &qword_27EE28ED0, &qword_245916B00);
    }

    return result;
  }

  if (v38 == *MEMORY[0x277CFF328])
  {
    v44 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v44, v27, &qword_27EE28ED0, &qword_245916B00);
    v45 = sub_24590D1B4();
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (v47(v27, 1, v45) == 1)
    {
      v48 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanFallbackSettings;
      goto LABEL_8;
    }

    return (*(v46 + 32))(v93, v27, v45);
  }

  if (v38 == *MEMORY[0x277CFF318])
  {
    v49 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v49, v24, &qword_27EE28ED0, &qword_245916B00);
    v50 = sub_24590D1B4();
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    if (v52(v24, 1, v50) == 1)
    {
      (*(v51 + 16))(v93, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackSettings, v50);
      result = v52(v24, 1, v50);
      if (result != 1)
      {
        return sub_245778F94(v24, &qword_27EE28ED0, &qword_245916B00);
      }
    }

    else
    {
      return (*(v51 + 32))(v93, v24, v50);
    }
  }

  else if (v38 == *MEMORY[0x277CFF308])
  {
    v53 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v53, v21, &qword_27EE28ED0, &qword_245916B00);
    v54 = sub_24590D1B4();
    v55 = *(v54 - 8);
    v56 = *(v55 + 48);
    if (v56(v21, 1, v54) == 1)
    {
      v57 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackSettings;
      swift_beginAccess();
      (*(v55 + 16))(v93, v2 + v57, v54);
      result = v56(v21, 1, v54);
      if (result != 1)
      {
        return sub_245778F94(v21, &qword_27EE28ED0, &qword_245916B00);
      }
    }

    else
    {
      return (*(v55 + 32))(v93, v21, v54);
    }
  }

  else if (v38 == *MEMORY[0x277CFF310])
  {
    v58 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings;
    swift_beginAccess();
    sub_245778F2C(v2 + v58, v18, &qword_27EE28ED0, &qword_245916B00);
    v59 = sub_24590D1B4();
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    if (v61(v18, 1, v59) == 1)
    {
      (*(v60 + 16))(v93, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackSettings, v59);
      result = v61(v18, 1, v59);
      if (result != 1)
      {
        return sub_245778F94(v18, &qword_27EE28ED0, &qword_245916B00);
      }
    }

    else
    {
      return (*(v60 + 32))(v93, v18, v59);
    }
  }

  else
  {
    if (v38 == *MEMORY[0x277CFF330])
    {
      v62 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings;
      swift_beginAccess();
      v27 = v92;
      sub_245778F2C(v2 + v62, v92, &qword_27EE28ED0, &qword_245916B00);
      v45 = sub_24590D1B4();
      v46 = *(v45 - 8);
      v47 = *(v46 + 48);
      if (v47(v27, 1, v45) == 1)
      {
        v48 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings;
LABEL_8:
        (*(v46 + 16))(v93, v2 + v48, v45);
        result = (v47)(v27, 1, v45);
        if (result != 1)
        {
          return sub_245778F94(v27, &qword_27EE28ED0, &qword_245916B00);
        }

        return result;
      }

      return (*(v46 + 32))(v93, v27, v45);
    }

    if (v38 == *MEMORY[0x277CFF320])
    {
      v63 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings;
      swift_beginAccess();
      v64 = v91;
      sub_245778F2C(v2 + v63, v91, &qword_27EE28ED0, &qword_245916B00);
      v65 = sub_24590D1B4();
      v66 = *(v65 - 8);
      v67 = *(v66 + 48);
      if (v67(v64, 1, v65) == 1)
      {
        (*(v66 + 16))(v93, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings, v65);
        result = v67(v64, 1, v65);
        if (result != 1)
        {
          return sub_245778F94(v64, &qword_27EE28ED0, &qword_245916B00);
        }
      }

      else
      {
        return (*(v66 + 32))(v93, v64, v65);
      }
    }

    else if (v38 == *MEMORY[0x277CFF338])
    {
      v68 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
      swift_beginAccess();
      v69 = v77;
      sub_245778F2C(v2 + v68, v77, &qword_27EE28ED0, &qword_245916B00);
      v70 = sub_24590D1B4();
      v71 = *(v70 - 8);
      v72 = *(v71 + 48);
      if (v72(v69, 1, v70) == 1)
      {
        (*(v71 + 16))(v93, v2 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v70);
        result = v72(v69, 1, v70);
        if (result != 1)
        {
          return sub_245778F94(v69, &qword_27EE28ED0, &qword_245916B00);
        }
      }

      else
      {
        return (*(v71 + 32))(v93, v69, v70);
      }
    }

    else
    {
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_2459114D4();
      MEMORY[0x245D76160](0xD000000000000034, 0x8000000245924390);
      v73 = sub_24590C464();
      MEMORY[0x245D76160](v73);

      (*(v78 + 104))(v81, *MEMORY[0x277CFF9C0], v79);
      sub_2458CC8AC(MEMORY[0x277D84F90]);
      sub_24590EA84();
      sub_24579004C(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
      v74 = swift_allocError();
      sub_24590EA94();
      v75 = v82;
      sub_24590C714();
      sub_24590C724();
      (*(v83 + 8))(v75, v84);

      v91 = 0x100000000;
      v92 = 0x100000000;
      v83 = 0x100000000;
      v84 = 0x100000000;
      v81 = 0x100000000;
      v82 = 0x100000000;
      v79 = 0x100000000;
      v80 = 0x100000000;
      v78 = 0x100000000;
      v77 = 0x100000000;
      v76[5] = 0x100000000;
      v76[4] = 0x100000000;
      v76[3] = 0x100000000;
      v76[2] = 0x100000000;
      v76[1] = 0x100000000;
      LOBYTE(v94) = 1;
      sub_24590D044();
      v94 = MEMORY[0x277D84F90];
      sub_24579004C(&qword_27EE28E90, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3C0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98, &qword_245916AE0);
      sub_24578FCA0(&qword_27EE28EA0, &qword_27EE28E98, &qword_245916AE0);
      sub_2459113A4();
      sub_24590D164();
      return (*(v86 + 8))(v85, v87);
    }
  }

  return result;
}

uint64_t sub_245789E8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24590F354();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590C384();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data + 8);
  if (v14 >> 60 == 15)
  {
    goto LABEL_7;
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_7;
  }

  v36 = a2;
  v32 = v11;
  v16 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
  v17 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v18 = v15;
  v37 = v16;
  sub_24578FB6C(v16, v14);
  v19 = [v17 initWithImage_];
  if (!v19)
  {

    sub_245771C44(v37, v14);
    a2 = v36;
LABEL_7:
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0, &unk_245916AF0) + 48);
    *a2 = 0;
    v27 = sub_24590C934();
    return (*(*(v27 - 8) + 56))(a2 + v26, 1, 1, v27);
  }

  v34 = v19;
  v35 = v18;
  sub_24590BDD4();
  swift_allocObject();
  v20 = sub_24590BDC4();
  sub_24579004C(&qword_27EE28EC8, MEMORY[0x277CFF2E0], MEMORY[0x277CFF2F0]);
  v33 = v20;
  v21 = v39;
  sub_24590BDB4();
  v22 = v36;
  if (v21)
  {
    sub_24590C714();
    sub_24590C3F4();
    sub_245771C44(v37, v14);

    (*(v38 + 8))(v6, v4);
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0, &unk_245916AF0) + 48);
    *v22 = 0;
    v24 = sub_24590C934();
    return (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
  }

  else
  {
    v28 = v32;
    (*(v32 + 32))(v13, v9, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0, &unk_245916AF0);
    v29 = v34;
    *v22 = v34;
    v30 = v29;
    sub_24590C374();
    sub_245771C44(v37, v14);

    return (*(v28 + 8))(v13, v7);
  }
}

uint64_t sub_24578A2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = sub_24590D124();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v83 = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v82 = v75 - v7;
  MEMORY[0x28223BE20](v8);
  v81 = v75 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = v75 - v11;
  MEMORY[0x28223BE20](v13);
  v80 = v75 - v14;
  MEMORY[0x28223BE20](v15);
  v79 = v75 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v75 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v75 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0, &qword_245916B00);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v75 - v24;
  v26 = sub_24590D1B4();
  MEMORY[0x28223BE20](v26);
  v28 = v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v85 = v75 - v30;
  v32 = v31;
  v34 = v33;
  sub_245778F2C(a1, v25, &qword_27EE28ED0, &qword_245916B00);
  if ((*(v34 + 48))(v25, 1, v32) == 1)
  {
    sub_245778F94(v25, &qword_27EE28ED0, &qword_245916B00);
    return (*(v34 + 16))(v84, v78 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings, v32);
  }

  v36 = *(v34 + 32);
  v75[1] = v34 + 32;
  v76 = v12;
  v37 = v3;
  v38 = v85;
  v75[0] = v36;
  v36(v85, v25, v32);
  (*(v34 + 16))(v28, v38, v32);
  sub_24590D184();
  sub_24590CF94();
  v78 = v32;
  v39 = *(v4 + 8);
  v39(v22, v37);
  v40 = sub_24590D174();
  v77 = v34;
  v41 = v40;
  sub_24590CFA4();
  v41(&v86, 0);
  sub_24590D184();
  sub_24590CF74();
  v39(v19, v37);
  v42 = sub_24590D174();
  sub_24590CF84();
  v42(&v86, 0);
  v43 = v79;
  sub_24590D184();
  sub_24590CF34();
  v44 = v37;
  v39(v43, v37);
  v45 = sub_24590D174();
  v87 = 0;
  sub_24590CF44();
  v45(&v86, 0);
  v46 = v80;
  sub_24590D184();
  sub_24590CF14();
  v39(v46, v37);
  v47 = v28;
  v48 = sub_24590D174();
  v87 = 0;
  sub_24590CF24();
  v48(&v86, 0);
  v49 = v76;
  sub_24590D184();
  sub_24590D004();
  v39(v49, v44);
  v50 = sub_24590D174();
  v87 = 0;
  sub_24590D014();
  v50(&v86, 0);
  v51 = v81;
  sub_24590D184();
  sub_24590D024();
  v39(v51, v44);
  v52 = sub_24590D174();
  v87 = 0;
  sub_24590D034();
  v52(&v86, 0);
  v53 = v82;
  sub_24590D184();
  sub_24590CF54();
  v39(v53, v44);
  v54 = sub_24590D174();
  v87 = 0;
  sub_24590CF64();
  v54(&v86, 0);
  v55 = v83;
  sub_24590D184();
  sub_24590CFE4();
  v39(v55, v44);
  v56 = v47;
  v57 = sub_24590D174();
  v87 = 0;
  sub_24590CFF4();
  v57(&v86, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EA8, &qword_245916AE8);
  v58 = sub_24590E9E4();
  v59 = *(v58 - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_245916990;
  v63 = *(v59 + 104);
  v63(v62 + v61, *MEMORY[0x277CFF8B0], v58);
  v63(v62 + v61 + v60, *MEMORY[0x277CFF888], v58);
  v63(v62 + v61 + 2 * v60, *MEMORY[0x277CFF8C0], v58);
  v63(v62 + v61 + 3 * v60, *MEMORY[0x277CFF870], v58);
  v63(v62 + v61 + 4 * v60, *MEMORY[0x277CFF8A8], v58);
  v63(v62 + v61 + 5 * v60, *MEMORY[0x277CFF8B8], v58);
  v64 = sub_24580DC48(v62);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v65 = sub_24590D1A4();
  LOBYTE(v62) = sub_24578E270(v65, v64);

  if ((v62 & 1) == 0)
  {
    goto LABEL_7;
  }

  v67 = v77;
  v66 = v78;
  v68 = *(v64 + 16);
  v69 = v85;
  if (!v68)
  {

    v70 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v70 = sub_24578E174(*(v64 + 16), 0);
  sub_24578E54C(&v86, &v70[v61], v68, v64);
  v72 = v71;
  sub_24578FD64(v86);
  if (v72 == v68)
  {
LABEL_9:
    v74 = sub_24590D194();
    sub_24581A314(0, 0, v70);

    v74(&v86, 0);
    v73 = v66;
    (*(v67 + 8))(v69, v66);
    return (v75[0])(v84, v56, v73);
  }

  __break(1u);
LABEL_7:
  v73 = v78;
  (*(v77 + 8))(v85, v78);

  return (v75[0])(v84, v56, v73);
}

uint64_t sub_24578AD00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2459107E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_245910814();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24578FC7C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2458935A8;
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);

  sub_245771BB4(a1, a2);
  sub_245910804();
  v18 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
  sub_24578FCA0(&qword_27EE2A990, &qword_27EE28D18, &unk_245916E60);
  sub_2459113A4();
  MEMORY[0x245D76690](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t sub_24578AFDC(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v46[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0, &qword_245916B00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v46 - v6;
  v8 = sub_24590F354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24590C714();
  v12 = sub_24590F344();
  v13 = sub_245910F54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v12, v13, "Clearing DocumentsRepository data", v14, 2u);
    MEMORY[0x245D77B40](v14, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v15 = a1[2];
  a1[2] = 0;

  v16 = a1[3];
  a1[3] = 0;

  v17 = a1[4];
  a1[4] = 0;

  v18 = sub_24590DA04();
  v19 = [objc_allocWithZone(v18) init];
  v20 = a1[12];
  a1[12] = v19;

  v21 = [objc_allocWithZone(v18) init];
  v22 = a1[13];
  a1[13] = v21;

  v23 = [objc_allocWithZone(v18) init];
  v24 = a1[14];
  a1[14] = v23;

  v25 = [objc_allocWithZone(v18) init];
  v26 = a1[15];
  a1[15] = v25;

  v27 = [objc_allocWithZone(v18) init];
  v28 = a1[16];
  a1[16] = v27;

  v29 = sub_24590D1B4();
  v30 = *(*(v29 - 8) + 56);
  v30(v7, 1, 1, v29);
  v31 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v31);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v32 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v32);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v33 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v33);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v34 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v34);
  swift_endAccess();
  v30(v7, 1, 1, v29);
  v35 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v35);
  swift_endAccess();
  v36 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
  v37 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data + 8);
  v47 = xmmword_2459169A0;
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data) = xmmword_2459169A0;
  sub_245771C44(v36, v37);
  v38 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness);
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness) = 0;

  a1[5] = 0;
  a1[6] = 0;

  a1[7] = 0;

  v39 = a1[8];
  v40 = a1[9];
  *(a1 + 4) = v47;
  sub_245771C44(v39, v40);
  v41 = [objc_allocWithZone(v18) init];
  v42 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics);
  *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics) = v41;

  v30(v7, 1, 1, v29);
  v43 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings;
  swift_beginAccess();
  sub_24578FCF4(v7, a1 + v43);
  result = swift_endAccess();
  v45 = a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportFrameRate;
  *v45 = 0;
  v45[8] = 1;
  if (a2)
  {
    return a2(result);
  }

  return result;
}

uint64_t sub_24578B4D4()
{

  sub_245771C44(*(v0 + 64), *(v0 + 72));

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanSettings, &qword_27EE28ED0, &qword_245916B00);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanSettings, &qword_27EE28ED0, &qword_245916B00);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings, &qword_27EE28ED0, &qword_245916B00);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings, &qword_27EE28ED0, &qword_245916B00);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings, &qword_27EE28ED0, &qword_245916B00);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings, &qword_27EE28ED0, &qword_245916B00);
  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings, &qword_27EE28ED0, &qword_245916B00);

  sub_245771C44(*(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data), *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data + 8));
  v1 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanFallbackSettings;
  v2 = sub_24590D1B4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackSettings, v2);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings, v2);

  sub_245778F94(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings, &qword_27EE28ED0, &qword_245916B00);
  v3(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings, v2);
  return v0;
}

uint64_t sub_24578B7D4()
{
  sub_24578B4D4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DocumentsRepository(uint64_t a1)
{
  result = qword_27EE28E60;
  if (!qword_27EE28E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24578B880(uint64_t a1)
{
  sub_24578BA2C(319);
  if (v1 <= 0x3F)
  {
    sub_24590D1B4();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24578BA2C(uint64_t a1)
{
  if (!qword_27EE28E70)
  {
    sub_24590D1B4();
    v1 = sub_2459112C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE28E70);
    }
  }
}

uint64_t sub_24578BA84()
{
  v1 = v0;
  v82 = sub_24590C6A4();
  MEMORY[0x28223BE20](v82);
  v81 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_24590D124();
  MEMORY[0x28223BE20](v3 - 8);
  v80 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245911024();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v77 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245910FF4();
  MEMORY[0x28223BE20](v7);
  v76 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245910814();
  MEMORY[0x28223BE20](v9 - 8);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xF000000000000000;
  v10 = sub_24590DA04();
  v71 = v10;
  *(v0 + 80) = [objc_allocWithZone(v10) init];
  *(v0 + 88) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 96) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 104) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 112) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 120) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  *(v0 + 128) = [objc_allocWithZone(v10) &selRef_initWithString_attributes_];
  v11 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanSettings;
  v12 = sub_24590D1B4();
  v69 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v68 = v14;
  v70 = v13 + 56;
  v14(v0 + v11, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessSettings, 1, 1, v12);
  v14(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passiveSettings, 1, 1, v12);
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessBlockingCodes) = MEMORY[0x277D84FA0];
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_resizeDimensions) = 0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_exploration) = 0;
  v15 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idScanFrameRate;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_videoFrameRate;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel;
  *v19 = 0;
  *(v19 + 4) = 1;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data) = xmmword_2459169A0;
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_liveness) = 0;
  v75 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_queue;
  sub_2457809BC();
  sub_245910804();
  v83 = MEMORY[0x277D84F90];
  sub_24579004C(&qword_27EE28E78, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E80, &qword_245916AD8);
  sub_24578FCA0(&qword_27EE28E88, &qword_27EE28E80, &qword_245916AD8);
  sub_2459113A4();
  (*(v78 + 104))(v77, *MEMORY[0x277D85260], v79);
  *(v0 + v75) = sub_245911064();
  *(v0 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_imageCompressionQuality) = 0x3FEFAE147AE147AELL;
  v78 = 0x100000000;
  v79 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frontScanFallbackSettings;
  v77 = 0x100000000;
  v74 = 0x100000000;
  v75 = 0x100000000;
  v72 = 0x100000000;
  v73 = 0x100000000;
  v67 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  v79 = sub_24579004C(&qword_27EE28E90, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3C0]);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98, &qword_245916AE0);
  v77 = sub_24578FCA0(&qword_27EE28EA0, &qword_27EE28E98, &qword_245916AE0);
  sub_2459113A4();
  sub_24590D164();
  v75 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_backScanFallbackSettings;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v72 = 0x100000000;
  v67 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v75 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackSettings;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v72 = 0x100000000;
  v67 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  v55 = 0x100000000;
  v54 = 0x100000000;
  v53 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackSettings;
  v75 = 0x100000000;
  v76 = 0x100000000;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v72 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EA8, &qword_245916AE8);
  v20 = sub_24590E9E4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = *(v21 + 80);
  v24 = (v23 + 32) & ~v23;
  v72 = v24;
  v73 = 2 * v22;
  v74 = v23;
  v76 = 3 * v22;
  v25 = swift_allocObject();
  v66 = xmmword_2459169B0;
  *(v25 + 16) = xmmword_2459169B0;
  v26 = v25 + v24;
  v27 = *(v21 + 104);
  (v27)(v25 + v24, *MEMORY[0x277CFF880], v20);
  (v27)(v26 + v22, *MEMORY[0x277CFF890], v20);
  (v27)(v26 + 2 * v22, *MEMORY[0x277CFF878], v20);
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackSettings;
  v64 = 0x100000000;
  v65 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 0x100000000;
  v56 = 0x100000000;
  v55 = 0x100000000;
  v54 = 0x100000000;
  v53 = 0x100000000;
  v52 = 0x100000000;
  v51 = 0x100000000;
  v50 = 0x100000000;
  v49 = 0x100000000;
  v48 = 0x100000000;
  v47 = 0x100000000;
  v46 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v28 = v72;
  v29 = swift_allocObject();
  *(v29 + 16) = v66;
  v30 = v29 + v28;
  LODWORD(v66) = *MEMORY[0x277CFF8B0];
  v27(v30);
  (v27)(v30 + v22, *MEMORY[0x277CFF8A0], v20);
  (v27)(v30 + v73, *MEMORY[0x277CFF898], v20);
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v67 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_livenessFallbackSettings;
  v64 = 0x100000000;
  v65 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  v59 = 0x100000000;
  v58 = 0x100000000;
  v57 = 1045220557;
  v56 = 1065353216;
  v55 = 0x100000000;
  v54 = 0x100000000;
  v53 = 0x100000000;
  v52 = 0x100000000;
  v51 = 0x100000000;
  v50 = 0x100000000;
  v49 = 0x100000000;
  v48 = 0x100000000;
  v47 = 0x100000000;
  v46 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v31 = v72;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_245916990;
  v33 = v32 + v31;
  (v27)(v33, v66, v20);
  (v27)(v33 + v22, *MEMORY[0x277CFF888], v20);
  (v27)(v33 + v73, *MEMORY[0x277CFF8C0], v20);
  (v27)(v33 + v76, *MEMORY[0x277CFF870], v20);
  (v27)(v33 + 4 * v22, *MEMORY[0x277CFF8A8], v20);
  (v27)(v33 + 5 * v22, *MEMORY[0x277CFF8B8], v20);
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  v34 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idFrontFallbackDimensions;
  v35 = sub_24590D404();
  v36 = objc_allocWithZone(v35);
  *(v1 + v34) = sub_24590D3E4();
  v37 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_idBackFallbackDimensions;
  v38 = objc_allocWithZone(v35);
  *(v1 + v37) = sub_24590D3E4();
  v39 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_selfieFallbackDimensions;
  v40 = objc_allocWithZone(v35);
  *(v1 + v39) = sub_24590D3E4();
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackBufferSize) = 3;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackStableWindow) = 5;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackFrameRate) = 5;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackMaxRectTravel) = 1036831949;
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxNumMetrics) = 5;
  v41 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor;
  *(v1 + v41) = [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
  v42 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportMetrics;
  *(v1 + v42) = [objc_allocWithZone(v71) init];
  (v68)(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportSettings, 1, 1, v69);
  v43 = v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportFrameRate;
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository__passportTimeout;
  *v44 = 0;
  *(v44 + 8) = 1;
  v75 = 0x100000000;
  v76 = OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_passportFallbackSettings;
  v73 = 0x100000000;
  v74 = 0x100000000;
  v71 = 0x100000000;
  v72 = 0x100000000;
  v69 = 0x100000000;
  v70 = 0x100000000;
  v67 = 0x100000000;
  v68 = 0x100000000;
  v65 = 0x100000000;
  *&v66 = 0x100000000;
  v64 = 0x100000000;
  v63 = 0x100000000;
  v62 = 0x100000000;
  v61 = 0x100000000;
  v60 = 0x100000000;
  LOBYTE(v83) = 1;
  sub_24590D044();
  v83 = MEMORY[0x277D84F90];
  sub_2459113A4();
  sub_24590D164();
  *(v1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_fallbackTimeout) = 300;
  return v1;
}

void *sub_24578E174(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EA8, &qword_245916AE8);
  v4 = *(sub_24590E9E4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24578E270(uint64_t a1, uint64_t a2)
{
  v4 = sub_24590E9E4();
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  if (!*(a2 + 16))
  {
    return 1;
  }

  v24 = *(a1 + 16);
  if (!v24)
  {
    return 1;
  }

  v12 = a2;
  v13 = 0;
  v15 = *(v8 + 16);
  v14 = v8 + 16;
  v25 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v28 = *(v14 + 56);
  v29 = v15;
  v27 = v12 + 56;
  v16 = (v14 - 8);
  while (1)
  {
    v26 = v13;
    v29(v11, v25 + v28 * v13, v4, v9);
    if (*(v12 + 16))
    {
      sub_24579004C(&qword_27EE28ED8, MEMORY[0x277CFF8C8], MEMORY[0x277CFF8D0]);
      v17 = sub_245910904();
      v18 = -1 << *(v12 + 32);
      v19 = v17 & ~v18;
      if ((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
      {
        break;
      }
    }

LABEL_4:
    v13 = v26 + 1;
    (*v16)(v11, v4);
    if (v13 == v24)
    {
      return 1;
    }
  }

  v20 = ~v18;
  while (1)
  {
    (v29)(v6, *(v12 + 48) + v19 * v28, v4);
    sub_24579004C(&qword_27EE28EE0, MEMORY[0x277CFF8C8], MEMORY[0x277CFF8D8]);
    v21 = sub_245910934();
    v22 = *v16;
    (*v16)(v6, v4);
    if (v21)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v22(v11, v4);
  return 0;
}

void sub_24578E54C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_24590E9E4();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_24578E7F0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

id sub_24578E800(void *a1, uint64_t a2, int a3)
{
  v71 = a3;
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v73 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v68 - v11;
  v13 = sub_24590D3D4();
  v14 = sub_24590D3F4();
  [a1 extent];
  Height = CGRectGetHeight(v75);
  [a1 extent];
  v16 = Height / CGRectGetWidth(v76);
  v17 = sub_24590D3F4();
  if (v16 != v17 / sub_24590D3D4())
  {
    v72 = v13;
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F64();
    if (os_log_type_enabled(v18, v19))
    {
      v69 = v5;
      v70 = v4;
      v20 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      aBlock[0] = v68;
      v21 = v71;
      *v20 = 136315138;
      v22 = 0xE800000000000000;
      v23 = 0xE600000000000000;
      v24 = 0x6569666C6553;
      if (v21 != 2)
      {
        v24 = 0x74726F7073736150;
        v23 = 0xE800000000000000;
      }

      v25 = 0x6B636142204449;
      if (v21)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v25 = 0x746E6F7246204449;
      }

      if (v21 <= 1)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (v21 <= 1)
      {
        v27 = v22;
      }

      else
      {
        v27 = v23;
      }

      v28 = sub_2458CC378(v26, v27, aBlock);

      *(v20 + 4) = v28;
      _os_log_impl(&dword_245767000, v18, v19, "Invalid resize dimensions, using fallback dimensions for %s", v20, 0xCu);
      v29 = v68;
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x245D77B40](v29, -1, -1);
      MEMORY[0x245D77B40](v20, -1, -1);

      v5 = v69;
      v4 = v70;
    }

    else
    {
    }

    (*(v5 + 8))(v12, v4);
    v13 = v72;
  }

  v30 = v13;
  v31 = v14;
  v32 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage_];
  v33 = [objc_allocWithZone(MEMORY[0x277D75568]) init];
  v34 = sub_24590D3C4();
  if ((v35 & 1) == 0)
  {
    v36 = v34;
    v37 = *&v34;
    sub_24590C714();
    v38 = sub_24590F344();
    v39 = sub_245910F54();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = v5;
      v41 = swift_slowAlloc();
      *v41 = 134217984;
      *(v41 + 4) = v36;
      _os_log_impl(&dword_245767000, v38, v39, "Resizing using scale = %f", v41, 0xCu);
      v42 = v41;
      v5 = v40;
      MEMORY[0x245D77B40](v42, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    [v33 setScale_];
  }

  v43 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v33 format:{v30, v31}];
  v44 = swift_allocObject();
  *(v44 + 16) = v32;
  *(v44 + 24) = v30;
  *(v44 + 32) = v31;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_245790284;
  *(v45 + 24) = v44;
  aBlock[4] = sub_24577F688;
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245817924;
  aBlock[3] = &block_descriptor_198;
  v46 = _Block_copy(aBlock);
  v47 = v32;

  v48 = [v43 imageWithActions_];
  _Block_release(v46);
  LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
    __break(1u);
  }

  else
  {
    v72 = v33;
    v50 = v73;
    sub_24590C714();
    v51 = v48;
    v52 = a1;
    v53 = sub_24590F344();
    v54 = sub_245910F54();

    if (os_log_type_enabled(v53, v54))
    {
      v68 = v47;
      v69 = v5;
      v70 = v4;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      aBlock[0] = v56;
      v57 = v71;
      *v55 = 136316418;
      v58 = 0xE800000000000000;
      v59 = 0xE600000000000000;
      v60 = 0x6569666C6553;
      if (v57 != 2)
      {
        v60 = 0x74726F7073736150;
        v59 = 0xE800000000000000;
      }

      v61 = 0x6B636142204449;
      if (v57)
      {
        v58 = 0xE700000000000000;
      }

      else
      {
        v61 = 0x746E6F7246204449;
      }

      if (v57 <= 1)
      {
        v62 = v61;
      }

      else
      {
        v62 = v60;
      }

      if (v57 <= 1)
      {
        v63 = v58;
      }

      else
      {
        v63 = v59;
      }

      v64 = sub_2458CC378(v62, v63, aBlock);

      *(v55 + 4) = v64;
      *(v55 + 12) = 2048;
      [v52 extent];
      *(v55 + 14) = CGRectGetHeight(v77);
      *(v55 + 22) = 2048;
      [v52 extent];
      *(v55 + 24) = CGRectGetWidth(v78);
      *(v55 + 32) = 2048;
      [v51 size];
      *(v55 + 34) = v65;
      *(v55 + 42) = 2048;
      [v51 size];
      *(v55 + 44) = v66;
      *(v55 + 52) = 2048;
      [v51 scale];
      *(v55 + 54) = v67;
      _os_log_impl(&dword_245767000, v53, v54, "Resized %s image from %fx%f to %fx%f (%fx)", v55, 0x3Eu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x245D77B40](v56, -1, -1);
      MEMORY[0x245D77B40](v55, -1, -1);

      (*(v69 + 8))(v73, v70);
    }

    else
    {

      (*(v5 + 8))(v50, v4);
    }

    return v51;
  }

  return result;
}

uint64_t sub_24578EFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v11 = MEMORY[0x277D84F90];
  sub_24577CC64(0, v1, 0);
  v2 = v11;
  for (i = a1 + 32; ; i += 8)
  {

    v5 = sub_2459108E4();
    CMTimeMakeFromDictionary(&v10, v5);
    value = v10.value;

    if (value < 0)
    {
      break;
    }

    v11 = v2;
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    if (v9 >= v8 >> 1)
    {
      sub_24577CC64((v8 > 1), v9 + 1, 1);
      v2 = v11;
    }

    *(v2 + 16) = v9 + 1;
    *(v2 + 8 * v9 + 32) = value;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

void sub_24578F0C4(uint64_t a1, void *a2)
{
  v16 = *(a1 + 16);
  if (v16)
  {
    v2 = a2;
    v3 = 0;
    v15 = a1 + 32;
    while (1)
    {
      v4 = *(v15 + 8 * v3);
      v5 = *(v4 + 16);
      if (v5)
      {
        break;
      }

LABEL_11:
      v12 = objc_allocWithZone(sub_24590C974());
      v13 = sub_24590C964();
      MEMORY[0x245D76260]();
      if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_245910C74();
      }

      ++v3;
      sub_245910CA4();

      if (v3 == v16)
      {
        return;
      }
    }

    v18 = MEMORY[0x277D84F90];

    sub_24577CC64(0, v5, 0);
    v6 = v18;
    v7 = v4 + 32;
    while (1)
    {

      v8 = sub_2459108E4();
      CMTimeMakeFromDictionary(&v17, v8);
      value = v17.value;

      if (value < 0)
      {
        break;
      }

      v18 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24577CC64((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v11 + 1;
      *(v6 + 8 * v11 + 32) = value;
      v7 += 8;
      if (!--v5)
      {
        v2 = a2;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24578F2D4(uint64_t a1)
{
  v2 = sub_24590E9D4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24579004C(&qword_27EE28EB8, MEMORY[0x277CFF850], MEMORY[0x277CFF858]);
  result = MEMORY[0x245D764C0](v9, v2, v10);
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
      sub_2458AE758(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24578F470(uint64_t a1, unint64_t a2)
{
  v4 = sub_24590F354();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24590EA74();
  MEMORY[0x28223BE20](v5);
  if (a2 >> 60 == 15)
  {
    v6 = MEMORY[0x277D84F90];

    return sub_24578F2D4(v6);
  }

  else
  {
    sub_24590BDD4();
    swift_allocObject();
    sub_24578FB80(a1, a2);
    sub_24590BDC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F08, &unk_245916B10);
    sub_24578FF98();
    sub_24590BDB4();

    v8 = sub_24578F2D4(v9);

    sub_245771C44(a1, a2);
    return v8;
  }
}

uint64_t sub_24578F7FC(void *a1)
{
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = sub_24590EA74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v13 = a1;
    v14 = UIImageJPEGRepresentation(v13, 0.99);
    if (v14)
    {
      v15 = v14;
      v16 = sub_24590C154();

      return v16;
    }

    (*(v10 + 104))(v12, *MEMORY[0x277CFFA30], v9);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579004C(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    v21 = swift_allocError();
    sub_24590EA94();
    sub_24590C714();
    sub_24590C724();

    (*(v3 + 8))(v8, v2);
  }

  else
  {
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_245767000, v18, v19, "Failed to create jpeg, image doesn't exist", v20, 2u);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

uint64_t sub_24578FB6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24578FB80(result, a2);
  }

  return result;
}

uint64_t sub_24578FB80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_24578FBD4()
{
  result = qword_27EE28EB0;
  if (!qword_27EE28EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28EB0);
  }

  return result;
}

uint64_t sub_24578FC28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24578FCA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24578FCF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28ED0, &qword_245916B00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24578FD78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0, &qword_245916B08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24578FDE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EF0, &qword_245916B08) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_245786C78(v3, v4, v5, v0 + v2, v6);
}

uint64_t sub_24578FEE4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_pdf417Data);
  v4 = *v3;
  v5 = v3[1];
  *v3 = v1;
  v3[1] = v2;
  sub_24578FB80(v1, v2);

  return sub_245771C44(v4, v5);
}

unint64_t sub_24578FF44()
{
  result = qword_27EE28F00;
  if (!qword_27EE28F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28F00);
  }

  return result;
}

unint64_t sub_24578FF98()
{
  result = qword_27EE28F10;
  if (!qword_27EE28F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28F08, &unk_245916B10);
    sub_24579004C(&qword_27EE28F18, MEMORY[0x277CFF850], MEMORY[0x277CFF868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28F10);
  }

  return result;
}

uint64_t sub_24579004C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2457900A8()
{
  v1 = *(sub_24590C474() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24578366C(v0 + v2, v5, v6, v7);
}

void sub_24579014C()
{
  v1 = *(sub_24590C474() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  sub_245782C60(v0 + v2, v4, v6, v7);
}

void sub_2457901EC()
{
  v1 = *(sub_24590EEB4() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_245782568(v0 + v2, v3);
}

uint64_t getEnumTagSinglePayload for IdentityProofingImageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityProofingImageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2457903F4()
{
  result = qword_27EE28F20;
  if (!qword_27EE28F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28F20);
  }

  return result;
}

void sub_2457904A0(void *a1)
{
  if (!a1)
  {
    return;
  }

  v1 = a1;
  v2 = [v1 viewControllers];
  sub_245790840();
  v3 = sub_245910C44();

  if (v3 >> 62)
  {
    v4 = sub_245911424();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 < 2)
  {
LABEL_21:

    return;
  }

  v5 = [v1 viewControllers];
  v6 = sub_245910C44();

  if (v6 >> 62)
  {
    v7 = sub_245911424();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = v7 - 2;
  if (__OFSUB__(v7, 2))
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = [v1 viewControllers];
  v7 = sub_245910C44();

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v10 = MEMORY[0x245D76B30](v8, v7);
LABEL_14:
    v11 = v10;

    type metadata accessor for IdentityProofingProgressViewController(0);
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for IdentityProofingAuthCodeViewController();
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for IdentityProofingPendingViewController();
        if (!swift_dynamicCastClass())
        {
          type metadata accessor for IdentityProofingWaitingForWifiViewController();
          if (!swift_dynamicCastClass())
          {
            type metadata accessor for IdentityProofingReviewSubmissionViewController();
            if (!swift_dynamicCastClass())
            {
              type metadata accessor for IdentityProofingViewController();
              swift_dynamicCastClass();
            }
          }
        }
      }
    }

    v1 = v11;
    goto LABEL_21;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v8 + 32);
    goto LABEL_14;
  }

  __break(1u);
}

uint64_t sub_2457906C8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  v2 = [v1 viewControllers];
  sub_245790840();
  v3 = sub_245910C44();

  if (v3 >> 62)
  {
    v4 = sub_245911424();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 != 1)
  {
    goto LABEL_15;
  }

  v5 = [v1 viewControllers];
  v6 = sub_245910C44();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  result = sub_245911424();
  if (!result)
  {
LABEL_14:

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x245D76B30](0, v6);
    goto LABEL_10;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v6 + 32);
LABEL_10:
    v9 = v8;

    type metadata accessor for RGBCaptureViewController(0);
    v10 = swift_dynamicCastClass() != 0;
    v1 = v9;
LABEL_16:

    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_245790840()
{
  result = qword_27EE28F28;
  if (!qword_27EE28F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE28F28);
  }

  return result;
}

uint64_t sub_24579088C(uint64_t result)
{
  if (result)
  {
    v1 = [result viewControllers];
    sub_245790840();
    v2 = sub_245910C44();

    if (v2 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_245911424())
    {
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x245D76B30](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        type metadata accessor for IdentityProofingAuthCodeViewController();
        if (swift_dynamicCastClass())
        {

          return 1;
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:

    return 0;
  }

  return result;
}

uint64_t sub_2457909BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v43 = v0;
  v15 = *(v0 + 24);
  if (v15 && *(v15 + 16))
  {

    v16 = sub_24588C5BC(0xD000000000000010, 0x8000000245924720);
    if (v17)
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = sub_24590E544();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v14, v19 + *(v21 + 72) * v18, v20);

      (*(v21 + 56))(v14, 0, 1, v20);
      goto LABEL_7;
    }
  }

  v20 = sub_24590E544();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
LABEL_7:
  sub_2457934F4(v14, v11);
  sub_24590E544();
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v11, 1, v20);
  v47 = v14;
  if (v24 == 1)
  {
    sub_245793564(v11);
    v44 = 0;
    v45 = 0;
    goto LABEL_15;
  }

  sub_24590E504();
  v26 = v25;
  (*(v22 + 8))(v11, v20);
  if (!v26)
  {
    goto LABEL_13;
  }

  if (!*(v43 + 32))
  {

LABEL_13:
    v44 = 0;
    v45 = 0;
    goto LABEL_14;
  }

  v27 = sub_24590E664();
  v44 = v28;
  v45 = v27;

LABEL_14:
  v14 = v47;
LABEL_15:
  sub_2457934F4(v14, v8);
  if (v23(v8, 1, v20) == 1)
  {
    sub_245793564(v8);
LABEL_24:
    v30 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_25;
  }

  v29 = sub_24590E534();
  (*(v22 + 8))(v8, v20);
  if (!v29)
  {
    goto LABEL_24;
  }

  if (!*(v29 + 16) || (, , !*(v43 + 32)))
  {

    goto LABEL_24;
  }

  v30 = sub_24590E664();
  v32 = v31;

  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v30 = 0;
    v33 = 0xE000000000000000;
  }

LABEL_25:
  sub_2457934F4(v47, v5);
  v34 = v23(v5, 1, v20);
  v35 = v46;
  if (v34 == 1)
  {
    sub_245793564(v5);
  }

  else
  {
    v36 = sub_24590E514();
    (*(v22 + 8))(v5, v20);
    if (v36)
    {
      if (*(v36 + 16))
      {

        if (*(v43 + 32))
        {

          sub_24590E664();
        }

        v35 = v46;
      }

      else
      {
      }
    }
  }

  sub_2457934F4(v47, v35);
  if (v23(v35, 1, v20) == 1)
  {
    sub_245793564(v35);
  }

  else
  {
    v37 = sub_24590E514();
    (*(v22 + 8))(v35, v20);
    if (v37)
    {
      if (*(v37 + 16) >= 2uLL && (, , *(v43 + 32)))
      {

        sub_24590E664();
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90, &qword_24591D2B0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_245916930;
  *(v38 + 32) = v30;
  *(v38 + 40) = v33;
  v39 = objc_allocWithZone(sub_24590D664());
  v40 = sub_24590D5C4();
  sub_245793564(v47);
  return v40;
}

uint64_t sub_24579109C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = &v49 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v55 = v0;
  v56 = &v49 - v15;
  v17 = *(v0 + 24);
  if (v17 && *(v17 + 16))
  {

    v18 = sub_24588C5BC(0xD00000000000001ELL, 0x8000000245924700);
    if (v19)
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = sub_24590E544();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = v21 + *(v23 + 72) * v20;
      v16 = v56;
      (*(v23 + 16))(v56, v25, v22);

      (*(v24 + 56))(v16, 0, 1, v22);
      goto LABEL_7;
    }
  }

  v22 = sub_24590E544();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
LABEL_7:
  sub_2457934F4(v16, v13);
  sub_24590E544();
  v26 = *(v22 - 8);
  v27 = *(v26 + 48);
  if (v27(v13, 1, v22) == 1)
  {
    sub_245793564(v13);
    v52 = 0;
    v53 = 0;
    goto LABEL_15;
  }

  sub_24590E504();
  v29 = v28;
  (*(v26 + 8))(v13, v22);
  if (!v29)
  {
    goto LABEL_13;
  }

  if (!*(v55 + 32))
  {

LABEL_13:
    v52 = 0;
    v53 = 0;
    goto LABEL_14;
  }

  v30 = sub_24590E664();
  v52 = v31;
  v53 = v30;

LABEL_14:
  v16 = v56;
LABEL_15:
  sub_2457934F4(v16, v10);
  if (v27(v10, 1, v22) == 1)
  {
    sub_245793564(v10);
LABEL_27:
    v50 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_28;
  }

  v32 = sub_24590E534();
  (*(v26 + 8))(v10, v22);
  if (!v32)
  {
    goto LABEL_27;
  }

  if (!*(v32 + 16) || (, , !*(v55 + 32)))
  {

    goto LABEL_27;
  }

  v33 = sub_24590E664();
  v35 = v34;

  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  v50 = v36;
  v16 = v56;
  v37 = 0xE000000000000000;
  if (v35)
  {
    v37 = v35;
  }

LABEL_28:
  v49 = v37;
  sub_2457934F4(v16, v7);
  if (v27(v7, 1, v22) == 1)
  {
    sub_245793564(v7);
  }

  else
  {
    v38 = sub_24590E514();
    (*(v26 + 8))(v7, v22);
    if (v38)
    {
      if (*(v38 + 16) && (, , *(v55 + 32)))
      {

        sub_24590E664();

        v16 = v56;
      }

      else
      {
      }
    }
  }

  v39 = v51;
  sub_2457934F4(v16, v51);
  if (v27(v39, 1, v22) == 1)
  {
    sub_245793564(v39);
  }

  else
  {
    v40 = sub_24590E514();
    (*(v26 + 8))(v39, v22);
    if (v40)
    {
      if (*(v40 + 16) < 2uLL)
      {
      }

      else
      {

        if (*(v55 + 32))
        {

          sub_24590E664();
        }

        v16 = v56;
      }
    }
  }

  v41 = v16;
  v42 = v54;
  sub_2457934F4(v41, v54);
  if (v27(v42, 1, v22) == 1)
  {
    sub_245793564(v42);
  }

  else
  {
    v43 = sub_24590E514();
    (*(v26 + 8))(v42, v22);
    if (v43)
    {
      if (*(v43 + 16) >= 3uLL && (, , *(v55 + 32)))
      {

        sub_24590E664();
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90, &qword_24591D2B0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_245916930;
  v45 = v49;
  *(v44 + 32) = v50;
  *(v44 + 40) = v45;
  v46 = objc_allocWithZone(sub_24590D664());
  v47 = sub_24590D5C4();
  sub_245793564(v56);
  return v47;
}

uint64_t sub_2457918A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = &v49 - v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - v15;
  v55 = v0;
  v56 = &v49 - v15;
  v17 = *(v0 + 24);
  if (v17 && *(v17 + 16))
  {

    v18 = sub_24588C5BC(0xD000000000000021, 0x80000002459246D0);
    if (v19)
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = sub_24590E544();
      v23 = *(v22 - 8);
      v24 = v23;
      v25 = v21 + *(v23 + 72) * v20;
      v16 = v56;
      (*(v23 + 16))(v56, v25, v22);

      (*(v24 + 56))(v16, 0, 1, v22);
      goto LABEL_7;
    }
  }

  v22 = sub_24590E544();
  (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
LABEL_7:
  sub_2457934F4(v16, v13);
  sub_24590E544();
  v26 = *(v22 - 8);
  v27 = *(v26 + 48);
  if (v27(v13, 1, v22) == 1)
  {
    sub_245793564(v13);
    v52 = 0;
    v53 = 0;
    goto LABEL_15;
  }

  sub_24590E504();
  v29 = v28;
  (*(v26 + 8))(v13, v22);
  if (!v29)
  {
    goto LABEL_13;
  }

  if (!*(v55 + 32))
  {

LABEL_13:
    v52 = 0;
    v53 = 0;
    goto LABEL_14;
  }

  v30 = sub_24590E664();
  v52 = v31;
  v53 = v30;

LABEL_14:
  v16 = v56;
LABEL_15:
  sub_2457934F4(v16, v10);
  if (v27(v10, 1, v22) == 1)
  {
    sub_245793564(v10);
LABEL_27:
    v50 = 0;
    v37 = 0xE000000000000000;
    goto LABEL_28;
  }

  v32 = sub_24590E534();
  (*(v26 + 8))(v10, v22);
  if (!v32)
  {
    goto LABEL_27;
  }

  if (!*(v32 + 16) || (, , !*(v55 + 32)))
  {

    goto LABEL_27;
  }

  v33 = sub_24590E664();
  v35 = v34;

  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  v50 = v36;
  v16 = v56;
  v37 = 0xE000000000000000;
  if (v35)
  {
    v37 = v35;
  }

LABEL_28:
  v49 = v37;
  sub_2457934F4(v16, v7);
  if (v27(v7, 1, v22) == 1)
  {
    sub_245793564(v7);
  }

  else
  {
    v38 = sub_24590E514();
    (*(v26 + 8))(v7, v22);
    if (v38)
    {
      if (*(v38 + 16) && (, , *(v55 + 32)))
      {

        sub_24590E664();

        v16 = v56;
      }

      else
      {
      }
    }
  }

  v39 = v51;
  sub_2457934F4(v16, v51);
  if (v27(v39, 1, v22) == 1)
  {
    sub_245793564(v39);
  }

  else
  {
    v40 = sub_24590E514();
    (*(v26 + 8))(v39, v22);
    if (v40)
    {
      if (*(v40 + 16) < 2uLL)
      {
      }

      else
      {

        if (*(v55 + 32))
        {

          sub_24590E664();
        }

        v16 = v56;
      }
    }
  }

  v41 = v16;
  v42 = v54;
  sub_2457934F4(v41, v54);
  if (v27(v42, 1, v22) == 1)
  {
    sub_245793564(v42);
  }

  else
  {
    v43 = sub_24590E514();
    (*(v26 + 8))(v42, v22);
    if (v43)
    {
      if (*(v43 + 16) >= 3uLL && (, , *(v55 + 32)))
      {

        sub_24590E664();
      }

      else
      {
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90, &qword_24591D2B0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_245916930;
  v45 = v49;
  *(v44 + 32) = v50;
  *(v44 + 40) = v45;
  v46 = objc_allocWithZone(sub_24590D664());
  v47 = sub_24590D5C4();
  sub_245793564(v56);
  return v47;
}

uint64_t sub_2457920AC()
{
  v1 = sub_24590C234();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_2459109B4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v51 = v15;
  v52 = v0;
  v16 = *(v0 + 24);
  v58 = &v49 - v13;
  if (v16 && *(v16 + 16))
  {

    v17 = sub_24588C5BC(0xD000000000000018, 0x8000000245924650);
    if (v18)
    {
      v19 = v17;
      v20 = *(v16 + 56);
      v21 = sub_24590E544();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v58, v20 + *(v22 + 72) * v19, v21);

      (*(v22 + 56))(v58, 0, 1, v21);
      v14 = v58;
      goto LABEL_7;
    }
  }

  v21 = sub_24590E544();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
LABEL_7:
  sub_2457934F4(v14, v11);
  sub_24590E544();
  v23 = *(v21 - 8);
  v59 = *(v23 + 48);
  if (v59(v11, 1, v21) == 1)
  {
    sub_245793564(v11);
  }

  else
  {
    sub_24590E504();
    v25 = v24;
    (*(v23 + 8))(v11, v21);
    if (v25)
    {
      if (*(v52 + 32))
      {

        v26 = sub_24590E664();
        v54 = v27;
        v55 = v26;

        goto LABEL_14;
      }
    }
  }

  v54 = 0;
  v55 = 0;
LABEL_14:
  sub_2457934F4(v14, v8);
  if (v59(v8, 1, v21) == 1)
  {
    sub_245793564(v8);
LABEL_25:
    v29 = 0;
    v32 = 0xE000000000000000;
    goto LABEL_26;
  }

  v28 = sub_24590E534();
  (*(v23 + 8))(v8, v21);
  if (!v28)
  {
    goto LABEL_25;
  }

  if (!*(v28 + 16) || (, , !*(v52 + 32)))
  {

    goto LABEL_25;
  }

  v29 = sub_24590E664();
  v31 = v30;

  if (!v31)
  {
    v29 = 0;
  }

  v32 = 0xE000000000000000;
  if (v31)
  {
    v32 = v31;
  }

LABEL_26:
  v53 = v32;
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v33 = qword_27EE32B38;
  sub_24590C224();
  v57 = sub_245910A54();
  if (sub_2457C1E4C())
  {

    sub_245910944();
    v34 = v33;
    sub_24590C224();
    v57 = sub_245910A54();
  }

  else
  {
    v35 = v51;
    sub_2457934F4(v58, v51);
    if (v59(v35, 1, v21) == 1)
    {
      sub_245793564(v35);
    }

    else
    {
      v50 = v29;
      v36 = sub_24590E514();
      (*(v23 + 8))(v35, v21);
      if (v36)
      {
        if (*(v36 + 16))
        {

          if (!*(v36 + 16))
          {
            goto LABEL_52;
          }

          v57 = *(v36 + 32);

          if (*(v52 + 32))
          {

            v57 = sub_24590E664();
            v39 = v38;

            v40 = v57;
            if (!v39)
            {
              v40 = 0;
            }

            v57 = v40;
          }

          else
          {

            v57 = 0;
          }
        }

        else
        {
        }
      }

      v29 = v50;
    }
  }

  sub_245910944();
  v41 = v33;
  sub_24590C224();
  sub_245910A54();
  v42 = v58;
  v43 = v56;
  sub_2457934F4(v58, v56);
  if (v59(v43, 1, v21) == 1)
  {
    sub_245793564(v43);
LABEL_50:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C90, &qword_24591D2B0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_245916930;
    v46 = v53;
    *(v45 + 32) = v29;
    *(v45 + 40) = v46;
    v47 = objc_allocWithZone(sub_24590D664());
    v48 = sub_24590D5C4();
    sub_245793564(v42);
    return v48;
  }

  v44 = sub_24590E514();
  (*(v23 + 8))(v43, v21);
  if (!v44)
  {
    goto LABEL_50;
  }

  if (*(v44 + 16) < 2uLL)
  {
LABEL_49:

    goto LABEL_50;
  }

  if (*(v44 + 16) >= 2uLL)
  {

    if (*(v52 + 32))
    {

      sub_24590E664();

      goto LABEL_50;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_2457929C8()
{
  v1 = v0;
  v2 = sub_24590F354();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = *(v0 + 24);
  if (v12 && *(v12 + 16))
  {

    v13 = sub_24588C5BC(0xD000000000000019, 0x8000000245924610);
    if (v14)
    {
      v15 = v13;
      v31 = v3;
      v16 = *(v12 + 56);
      v17 = sub_24590E544();
      v18 = *(v17 - 8);
      v32 = v2;
      v19 = v1;
      v20 = v18;
      v21 = v16 + *(v18 + 72) * v15;
      v3 = v31;
      (*(v18 + 16))(v11, v21, v17);

      (*(v20 + 56))(v11, 0, 1, v17);
      v1 = v19;
      v2 = v32;
      goto LABEL_7;
    }
  }

  v17 = sub_24590E544();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
LABEL_7:
  sub_2457934F4(v11, v8);
  sub_24590E544();
  v22 = *(v17 - 8);
  if ((*(v22 + 48))(v8, 1, v17) == 1)
  {
    sub_245793564(v8);
LABEL_19:
    v29 = objc_allocWithZone(sub_24590D664());
    v30 = sub_24590D5C4();
    sub_245793564(v11);
    return v30;
  }

  v23 = sub_24590E514();
  (*(v22 + 8))(v8, v17);
  if (!v23)
  {
    goto LABEL_19;
  }

  if (!*(v23 + 16))
  {
LABEL_18:

    goto LABEL_19;
  }

  sub_24590C714();
  v24 = sub_24590F344();
  v25 = sub_245910F54();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_245767000, v24, v25, "actions exist for terms and conditions tool bar", v26, 2u);
    MEMORY[0x245D77B40](v26, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  v28 = *(v23 + 16);
  if (v28)
  {
    if (*(v1 + 32))
    {

      sub_24590E664();

      if (*(v23 + 16) >= 2uLL)
      {
        goto LABEL_16;
      }
    }

    else if (v28 >= 2)
    {
LABEL_16:

      if (*(v1 + 32))
      {

        sub_24590E664();

        goto LABEL_19;
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_245792F14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  v16 = *(v0 + 24);
  if (v16 && *(v16 + 16))
  {

    v17 = sub_24588C5BC(0xD000000000000016, 0x80000002459245F0);
    if (v18)
    {
      v19 = v17;
      v38 = *(v16 + 56);
      v20 = sub_24590E544();
      v21 = *(v20 - 8);
      (*(v21 + 16))(v15, v38 + *(v21 + 72) * v19, v20);

      (*(v21 + 56))(v15, 0, 1, v20);
      goto LABEL_7;
    }
  }

  v20 = sub_24590E544();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
LABEL_7:
  sub_2457934F4(v15, v12);
  sub_24590E544();
  v22 = *(v20 - 8);
  v23 = *(v22 + 48);
  v24 = v23(v12, 1, v20);
  v38 = v22;
  if (v24 == 1)
  {
    sub_245793564(v12);
    v37 = 0;
  }

  else
  {
    sub_24590E504();
    v36 = v9;
    v25 = v15;
    v26 = v6;
    v27 = v3;
    v29 = v28;
    (*(v22 + 8))(v12, v20);
    v37 = v29;
    v3 = v27;
    v6 = v26;
    v15 = v25;
    v9 = v36;
  }

  sub_2457934F4(v15, v9);
  if (v23(v9, 1, v20) == 1)
  {
    sub_245793564(v9);
  }

  else
  {
    v30 = sub_24590E534();
    (*(v38 + 8))(v9, v20);
    if (v30)
    {
      if (*(v30 + 16))
      {
        v36 = *(v30 + 32);

        goto LABEL_17;
      }
    }
  }

  v36 = 0;
LABEL_17:
  sub_2457934F4(v15, v6);
  if (v23(v6, 1, v20) == 1)
  {
    sub_245793564(v6);
  }

  else
  {
    v31 = sub_24590E514();
    (*(v38 + 8))(v6, v20);
    if (v31)
    {
      if (*(v31 + 16))
      {
      }
    }
  }

  sub_2457934F4(v15, v3);
  if (v23(v3, 1, v20) == 1)
  {
    sub_245793564(v3);
  }

  else
  {
    sub_24590E524();
    (*(v38 + 8))(v3, v20);
  }

  v32 = objc_allocWithZone(sub_24590D664());
  v33 = sub_24590D5C4();
  sub_245793564(v15);
  return v33;
}

uint64_t sub_245793478()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2457934F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245793564(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F30, &unk_245916C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2457935E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_245793630(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_245793694(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  if ((result & 0x100000000) != 0)
  {

    *v1 = MEMORY[0x277D84F90];
    v10 = v2;
    v11 = 1;
    return v10 | (v11 << 32);
  }

  v4 = *(v3 + 2);
  if (v4 != *(v1 + 8))
  {
LABEL_5:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_24580A074(0, *(v3 + 2) + 1, 1, v3);
    }

    v6 = *(v3 + 2);
    v5 = *(v3 + 3);
    if (v6 >= v5 >> 1)
    {
      v3 = sub_24580A074((v5 > 1), v6 + 1, 1, v3);
    }

    *(v3 + 2) = v6 + 1;
    *&v3[4 * v6 + 32] = v2;
    *v1 = v3;
    v7 = *(v3 + 2);
    if (!v7)
    {
      v10 = 0;
LABEL_20:
      v11 = v7 == 0;
      return v10 | (v11 << 32);
    }

    if (v7 >= 8)
    {
      v8 = v7 & 0x7FFFFFFFFFFFFFF8;
      v12 = v3 + 48;
      v9 = 0.0;
      v13 = v7 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v9 = (((((((v9 + COERCE_FLOAT(*(v12 - 1))) + COERCE_FLOAT(HIDWORD(*(v12 - 2)))) + COERCE_FLOAT(*(v12 - 1))) + COERCE_FLOAT(HIDWORD(*(v12 - 1)))) + COERCE_FLOAT(*v12)) + COERCE_FLOAT(HIDWORD(*v12))) + COERCE_FLOAT(*(v12 + 1))) + COERCE_FLOAT(HIDWORD(*v12));
        v12 += 32;
        v13 -= 8;
      }

      while (v13);
      if (v7 == v8)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
    }

    v14 = v7 - v8;
    v15 = &v3[4 * v8 + 32];
    do
    {
      v16 = *v15++;
      v9 = v9 + v16;
      --v14;
    }

    while (v14);
LABEL_19:
    v10 = COERCE_UNSIGNED_INT(v9 / v7);
    goto LABEL_20;
  }

  if (v4)
  {
    sub_24581A490(0, 1);
    v3 = *v1;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_245793848(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_24590F354();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 0)
  {
    sub_24590C714();
    v8 = sub_24590F344();
    v9 = sub_245910F64();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245767000, v8, v9, "Buffer capacity must be > 0, defaulting to 1", v10, 2u);
      MEMORY[0x245D77B40](v10, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    a1 = 1;
  }

  v11 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = a1;
  a2[2] = v11;
  a2[3] = a1;
  a2[4] = v11;
  a2[5] = a1;
  a2[6] = v11;
  a2[7] = a1;
  a2[8] = v11;
  a2[9] = a1;
}

uint64_t sub_2457939B4(uint64_t a1)
{
  v2 = sub_24590CC34();
  sub_245793694(v2 | ((HIDWORD(v2) & 1) << 32));
  sub_24590CC44();
  v3 = sub_24590CC14();
  sub_245793694(v3 | ((HIDWORD(v3) & 1) << 32));
  sub_24590CC24();
  v4 = sub_24590CCB4();
  sub_245793694(v4 | ((HIDWORD(v4) & 1) << 32));
  sub_24590CCC4();
  v5 = sub_24590CC54();
  sub_245793694(v5 | ((HIDWORD(v5) & 1) << 32));
  sub_24590CC64();
  v6 = sub_24590CC74();
  sub_245793694(v6 | ((HIDWORD(v6) & 1) << 32));
  sub_24590CC84();
  return a1;
}

uint64_t sub_245793ACC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_245793B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_245793B60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F78, &qword_245916D40);
  sub_24590C6A4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_245916930;
  sub_24590C654();
  *&v14[0] = v5;
  sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98, &qword_245916AE0);
  sub_24579B6F0();
  sub_2459113A4();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v6 = 5;
  if (!*(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow + 8))
  {
    v6 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_stableWindow);
  }

  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_stableWindow) = v6;
  v7 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel);
  if (*(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_maxRectTravel + 4))
  {
    v7 = 0.1;
  }

  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_maxRectTravel) = v7;
  v8 = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_previousCorners) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_rectDistances) = v8;
  if (*(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize + 8))
  {
    v9 = 3;
  }

  else
  {
    v9 = *(a1 + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_frameBufferSize);
  }

  sub_245793848(v9, v14);
  v10 = (v2 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_selfieConfidences);
  v11 = v14[3];
  v10[2] = v14[2];
  v10[3] = v11;
  v10[4] = v14[4];
  v12 = v14[1];
  *v10 = v14[0];
  v10[1] = v12;
  return v2;
}

uint64_t sub_245793D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v226 = a6;
  v242 = a4;
  v257 = a3;
  v265 = a2;
  v241 = a1;
  v249 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98, &qword_245916D60);
  MEMORY[0x28223BE20](v9 - 8);
  v213 = &v213 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0, &qword_245916D68);
  MEMORY[0x28223BE20](v11 - 8);
  v225 = &v213 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88, &qword_245916D50);
  MEMORY[0x28223BE20](v13 - 8);
  v245 = &v213 - v14;
  v263 = sub_24590F354();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v260 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v216 = &v213 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F80, &qword_245916D48);
  MEMORY[0x28223BE20](v18 - 8);
  v219 = &v213 - v19;
  v221 = sub_24590C934();
  v220 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v215 = &v213 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v218 = &v213 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FD0, &qword_245916D88);
  MEMORY[0x28223BE20](v23 - 8);
  v222 = &v213 - v24;
  v223 = sub_24590C384();
  v259 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v261 = &v213 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90, &qword_245916D58);
  MEMORY[0x28223BE20](v26 - 8);
  v240 = &v213 - v27;
  v236 = sub_24590D284();
  v235 = *(v236 - 8);
  MEMORY[0x28223BE20](v236);
  v234 = &v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_24590D2C4();
  v238 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v237 = &v213 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_24590D4B4();
  v250 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v274 = &v213 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24590C8E4();
  v32 = *(v31 - 8);
  v291 = v31;
  v292 = v32;
  MEMORY[0x28223BE20](v31);
  v290 = &v213 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_24590C5D4();
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v268 = &v213 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_24590C474();
  v286 = *(v35 - 8);
  v287 = v35;
  MEMORY[0x28223BE20](v35);
  v214 = &v213 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v217 = &v213 - v38;
  MEMORY[0x28223BE20](v39);
  v244 = &v213 - v40;
  MEMORY[0x28223BE20](v41);
  v243 = &v213 - v42;
  MEMORY[0x28223BE20](v43);
  v232 = &v213 - v44;
  MEMORY[0x28223BE20](v45);
  v266 = &v213 - v46;
  MEMORY[0x28223BE20](v47);
  v281 = &v213 - v48;
  v49 = sub_24590D124();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v231 = &v213 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v230 = &v213 - v53;
  MEMORY[0x28223BE20](v54);
  v229 = &v213 - v55;
  MEMORY[0x28223BE20](v56);
  v228 = &v213 - v57;
  MEMORY[0x28223BE20](v58);
  v256 = &v213 - v59;
  MEMORY[0x28223BE20](v60);
  v255 = &v213 - v61;
  MEMORY[0x28223BE20](v62);
  v254 = &v213 - v63;
  MEMORY[0x28223BE20](v64);
  v253 = &v213 - v65;
  MEMORY[0x28223BE20](v66);
  v68 = &v213 - v67;
  v288 = sub_24590C6A4();
  v277 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v276 = &v213 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v289 = &v213 - v71;
  MEMORY[0x28223BE20](v72);
  v252 = &v213 - v73;
  MEMORY[0x28223BE20](v74);
  v76 = &v213 - v75;
  MEMORY[0x28223BE20](v77);
  v79 = &v213 - v78;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8, &qword_245916D70);
  MEMORY[0x28223BE20](v80 - 8);
  v82 = &v213 - v81;
  v224 = sub_24590D2F4();
  v248 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v84 = &v213 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_24590D1B4();
  v246 = *(v247 - 8);
  MEMORY[0x28223BE20](v247);
  v86 = &v213 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = v7;

  sub_245788C40(a5, v86);

  sub_24590D184();
  (*(v50 + 56))(v82, 0, 1, v49);
  v267 = v84;
  v87 = v286;
  sub_24590D2E4();
  sub_24590D184();
  v275 = v79;
  sub_24590D104();
  v88 = *(v50 + 8);
  v227 = v68;
  v273 = v49;
  v272 = v50 + 8;
  v271 = v88;
  v88(v68, v49);
  v89 = v281;
  v279 = v76;
  v285 = v86;
  sub_24590D154();
  v90 = *(v87 + 104);
  v264 = *MEMORY[0x277CFF308];
  v284 = v87 + 104;
  v283 = v90;
  v90(v89);
  v91 = sub_24579BD68(&qword_27EE28FD8, MEMORY[0x277CFF348], MEMORY[0x277CFF350]);
  v278 = a5;
  sub_245910BF4();
  v282 = v91;
  v92 = 1;
  sub_245910BF4();
  if (v295 != v293)
  {
    v92 = sub_245911714();
  }

  v94 = *(v87 + 8);
  v93 = v87 + 8;
  v281 = v94;
  (v94)(v89, v287);

  v95 = v288;
  v96 = v277;
  v97 = v252;
  if (v92)
  {
    v98 = v289;
    sub_24590C5F4();
    sub_2457963A4(v97, v98);
    v99 = *(v96 + 8);
    v99(v98, v288);
    v99(v97, v288);
    sub_24590C614();
    sub_2457963A4(v97, v98);
    v99(v98, v288);
    v99(v97, v288);
    sub_24590C604();
    sub_2457963A4(v97, v98);
    v99(v98, v288);
    v99(v97, v288);
    v95 = v288;
  }

  v100 = v266;
  v258 = *MEMORY[0x277CFF310];
  v283(v266);
  sub_245910BF4();
  sub_245910BF4();
  if (v295 == v293)
  {
    (v281)(v100, v287);

    v101 = v279;
  }

  else
  {
    v102 = sub_245911714();
    (v281)(v100, v287);

    v101 = v279;
    if ((v102 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v103 = v289;
  sub_24590C694();
  sub_2457963A4(v97, v103);
  v104 = *(v96 + 8);
  v104(v103, v95);
  v104(v97, v95);
LABEL_9:
  v105 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28FB0, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3B8]);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v105, MEMORY[0x277CFF3C8]);
  sub_2459118C4();
  v106 = *(v96 + 16);
  v266 = (v96 + 16);
  v233 = v106;
  v106(v97, v101, v95);
  sub_24579BD68(&qword_27EE28E90, v105, MEMORY[0x277CFF3C0]);
  sub_245911384();
  v107 = v253;
  sub_24590D184();
  v252 = sub_24590D0C4();
  v108 = v107;
  v109 = v273;
  v110 = v271;
  v271(v108, v273);
  v111 = v254;
  sub_24590D184();
  v253 = sub_24590D0B4();
  v110(v111, v109);
  v112 = v255;
  sub_24590D184();
  v254 = sub_24590CFB4();
  v110(v112, v109);
  v113 = v256;
  sub_24590D184();
  v114 = sub_24590D114();
  result = (v110)(v113, v109);
  v286 = v93;
  if (!v114)
  {
LABEL_21:
    v128 = v227;
    sub_24590D184();
    sub_24590CFC4();
    v129 = v273;
    v130 = v271;
    v271(v128, v273);
    v131 = v228;
    sub_24590D184();
    v292 = sub_24590D074();
    LODWORD(v291) = v132;
    v130(v131, v129);
    v133 = v229;
    sub_24590D184();
    v290 = sub_24590D0A4();
    v130(v133, v129);
    v134 = v230;
    sub_24590D184();
    v289 = sub_24590D084();
    v130(v134, v129);
    v135 = v231;
    sub_24590D184();
    sub_24590D0E4();
    v130(v135, v129);
    v297 = 1;
    v295 = 0u;
    v296 = 0u;
    v136 = v268;
    sub_24590C5C4();
    v137 = *(*(v280 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor);
    (*(v235 + 104))(v234, *MEMORY[0x277CFF478], v236);
    v138 = v137;
    v139 = v237;
    sub_24590D2B4();
    v140 = v269;
    v141 = v240;
    v142 = v270;
    (*(v269 + 16))(v240, v136, v270);
    (*(v140 + 56))(v141, 0, 1, v142);
    sub_24590D294();
    sub_245778F94(v141, &qword_27EE28F90, &qword_245916D58);
    (*(v238 + 8))(v139, v239);
    v143 = v232;
    v144 = v287;
    (v283)(v232, v264, v287);
    sub_245910BF4();
    sub_245910BF4();
    if (v293 == v294)
    {
      (v281)(v143, v144);

      v145 = v277;
      v146 = v259;
      v147 = v261;
    }

    else
    {
      v148 = sub_245911714();
      (v281)(v143, v144);

      v145 = v277;
      v146 = v259;
      v147 = v261;
      if ((v148 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    v149 = v222;
    sub_24590D474();
    v150 = v223;
    if ((*(v146 + 48))(v149, 1, v223) == 1)
    {
      sub_245778F94(v149, &qword_27EE28FD0, &qword_245916D88);
    }

    else
    {
      (*(v146 + 32))(v147, v149, v150);
      v151 = v219;
      sub_24590C374();
      v152 = v151;
      v153 = v220;
      v154 = v221;
      if ((*(v220 + 48))(v152, 1, v221) == 1)
      {
        (*(v146 + 8))(v147, v150);
        sub_245778F94(v152, &qword_27EE28F80, &qword_245916D48);
      }

      else
      {
        v155 = v147;
        v156 = v218;
        (*(v153 + 32))(v218, v152, v154);

        sub_2457864CC(v155);

        v157 = v216;
        sub_24590C714();
        v158 = v215;
        (*(v153 + 16))(v215, v156, v154);
        v159 = v153;
        v160 = sub_24590F344();
        v161 = sub_245910F54();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = v158;
          v163 = swift_slowAlloc();
          v164 = swift_slowAlloc();
          *&v293 = v164;
          *v163 = 136315138;
          v165 = sub_24590C924();
          v166 = v154;
          v167 = v165;
          v169 = v168;
          v170 = *(v159 + 8);
          v170(v162, v166);
          v171 = sub_2458CC378(v167, v169, &v293);
          v144 = v287;

          *(v163 + 4) = v171;
          _os_log_impl(&dword_245767000, v160, v161, "The documentTypeString from PDF417 parsing is %s", v163, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v164);
          MEMORY[0x245D77B40](v164, -1, -1);
          MEMORY[0x245D77B40](v163, -1, -1);

          (*(v262 + 8))(v216, v263);
        }

        else
        {

          v170 = *(v159 + 8);
          v170(v158, v154);
          (*(v262 + 8))(v157, v263);
        }

        v172 = v218;
        sub_24590C924();
        v173 = sub_245910A84();
        v175 = v174;

        v176 = MEMORY[0x245D723D0](v173, v175);
        sub_24587954C(v176);

        v170(v172, v221);
        (*(v259 + 8))(v261, v223);
      }
    }

LABEL_32:
    v177 = v243;
    (v283)(v243, v258, v144);
    sub_245910BF4();
    sub_245910BF4();
    if (v293 == v294)
    {
      (v281)(v177, v144);
    }

    else
    {
      v178 = sub_245911714();
      (v281)(v177, v144);

      if ((v178 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v179 = sub_24590D494();
    swift_beginAccess();
    v180 = sub_2457939B4(v179);
    swift_endAccess();
    v181 = v180;

    sub_24590D4A4();
LABEL_36:
    v182 = sub_24590D494();
    v183 = v245;
    v184 = v288;
    v185 = v233;
    v233(v245, v275, v288);
    v292 = *(v145 + 56);
    (v292)(v183, 0, 1, v184);
    v186 = sub_24590CD14();

    sub_245778F94(v183, &qword_27EE28F88, &qword_245916D50);
    v187 = v186;
    sub_24590D1A4();
    sub_24590D2D4();
    v291 = v187;

    v188 = sub_24590D494();
    v189 = v279;
    v185(v183, v279, v184);
    (v292)(v183, 0, 1, v184);
    v190 = sub_24590CD14();

    sub_245778F94(v183, &qword_27EE28F88, &qword_245916D50);
    sub_24590E9B4();
    sub_24590CBD4();
    sub_24590D134();
    sub_24590CBB4();
    sub_24590CB84();
    v191 = v244;
    v192 = v287;
    (v283)(v244, *MEMORY[0x277CFF318], v287);
    v193 = v278;
    sub_245910BF4();
    sub_245910BF4();
    if (v293 == v294)
    {
      (v281)(v191, v192);

      v194 = v226;
      v195 = v225;
    }

    else
    {
      v196 = sub_245911714();
      (v281)(v191, v192);

      v194 = v226;
      v195 = v225;
      if ((v196 & 1) == 0)
      {
        v197 = v217;
        (v283)(v217, v264, v192);
        sub_245910BF4();
        sub_245910BF4();
        if (v293 == v294)
        {
          (v281)(v197, v192);
        }

        else
        {
          v198 = sub_245911714();
          (v281)(v197, v192);

          if ((v198 & 1) == 0)
          {
            v208 = v214;
            (v283)(v214, v258, v192);
            sub_245910BF4();
            sub_245910BF4();
            if (v293 == v294)
            {
              (v281)(v208, v192);

              v201 = v277;
              v202 = v224;
              v203 = v291;
            }

            else
            {
              v209 = sub_245911714();
              (v281)(v208, v192);

              v201 = v277;
              v202 = v224;
              v203 = v291;
              if ((v209 & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            v210 = v213;
            sub_245778F2C(v257, v213, &qword_27EE28F98, &qword_245916D60);
            v211 = sub_24590C814();
            v212 = *(v211 - 8);
            if ((*(v212 + 48))(v210, 1, v211) == 1)
            {
              sub_245778F94(v210, &qword_27EE28F98, &qword_245916D60);
            }

            else
            {
              v292 = sub_24590C7D4();
              (*(v212 + 8))(v210, v211);
            }

            v189 = v279;
LABEL_46:
            sub_24590CB94();
LABEL_47:

            sub_245782894(v190, v193, v194 & 1);

            v204 = v260;
            v205 = sub_24590C714();
            MEMORY[0x28223BE20](v205);
            sub_24590F334();

            (*(v262 + 8))(v204, v263);
            (*(v250 + 8))(v274, v251);
            (*(v269 + 8))(v268, v270);
            v206 = *(v201 + 8);
            v207 = v288;
            v206(v276, v288);
            v206(v189, v207);
            v206(v275, v207);
            (*(v248 + 8))(v267, v202);
            return (*(v246 + 8))(v285, v247);
          }
        }
      }
    }

    sub_245778F2C(v265, v195, &qword_27EE28FA0, &qword_245916D68);
    v199 = sub_24590C454();
    v200 = *(v199 - 8);
    if ((*(v200 + 48))(v195, 1, v199) == 1)
    {
      sub_245778F94(v195, &qword_27EE28FA0, &qword_245916D68);
    }

    else
    {
      sub_24590C424();
      (*(v200 + 8))(v195, v199);
    }

    v201 = v277;
    v189 = v279;
    v202 = v224;
    v203 = v291;
    goto LABEL_46;
  }

  v116 = *(v114 + 16);
  if (!v116)
  {
LABEL_20:

    goto LABEL_21;
  }

  v117 = 0;
  v289 = (v292 + 16);
  v118 = MEMORY[0x277D84F90];
  while (v117 < *(v114 + 16))
  {
    v119 = v291;
    v120 = v292;
    v121 = v290;
    (*(v292 + 16))(v290, v114 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v117, v291);
    v122 = sub_24590C8D4();
    v124 = v123;
    (*(v120 + 8))(v121, v119);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24580A178(0, *(v118 + 16) + 1, 1, v118);
      v118 = result;
    }

    v126 = *(v118 + 16);
    v125 = *(v118 + 24);
    if (v126 >= v125 >> 1)
    {
      result = sub_24580A178((v125 > 1), v126 + 1, 1, v118);
      v118 = result;
    }

    ++v117;
    *(v118 + 16) = v126 + 1;
    v127 = v118 + 16 * v126;
    *(v127 + 32) = v122;
    *(v127 + 40) = v124;
    if (v116 == v117)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2457963A4(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FC0, &unk_245916D78);
  MEMORY[0x28223BE20](v29);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_24590C6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v28 = v2;
  v16(v11, v2, v8, v13);
  v17 = MEMORY[0x277CFF3A8];
  v26 = sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3C0]);
  sub_245911374();
  v18 = v17;
  v19 = v29;
  sub_24579BD68(&qword_27EE28FC8, v18, MEMORY[0x277CFF3B0]);
  v27 = a2;
  v20 = sub_245910934();
  v21 = *(v19 + 48);
  *v7 = (v20 & 1) == 0;
  if (v20)
  {
    (*(v9 + 32))(&v7[v21], v15, v8);
  }

  else
  {
    (*(v9 + 8))(v15, v8);
    v22 = v27;
    (v16)(&v7[v21], v27, v8);
    (v16)(v11, v22, v8);
    sub_245911384();
  }

  v23 = v30;
  sub_24577ABC4(v7, v30, &qword_27EE28FC0, &unk_245916D78);
  v24 = *v23;
  (*(v9 + 32))(v31, &v23[*(v19 + 48)], v8);
  return v24;
}

uint64_t sub_2457966A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v93 = a4;
  v101 = a3;
  v86 = a2;
  v88 = a1;
  v91 = a5;
  v6 = sub_24590F354();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88, &qword_245916D50);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90, &qword_245916D58);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v69 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98, &qword_245916D60);
  MEMORY[0x28223BE20](v12 - 8);
  v78 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0, &qword_245916D68);
  MEMORY[0x28223BE20](v14 - 8);
  v77 = &v69 - v15;
  v76 = sub_24590D284();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_24590D2C4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_24590D4B4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v99 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24590D124();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24590C6A4();
  v102 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v97 = &v69 - v27;
  MEMORY[0x28223BE20](v28);
  v103 = &v69 - v29;
  MEMORY[0x28223BE20](v30);
  v104 = &v69 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8, &qword_245916D70);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v69 - v33;
  v85 = sub_24590D2F4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v100 = &v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_24590D1B4();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v37 = &v69 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v5;

  sub_245788C40(v101, v37);

  sub_24590D184();
  (*(v20 + 56))(v34, 0, 1, v19);
  sub_24590D2E4();
  v98 = v37;
  sub_24590D184();
  sub_24590D104();
  (*(v20 + 8))(v22, v19);
  v38 = v103;
  sub_24590D154();
  v39 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28FB0, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3B8]);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v39, MEMORY[0x277CFF3C8]);
  sub_2459118C4();
  v71 = v102[2];
  v96 = v102 + 2;
  v71(v25, v38, v23);
  sub_24579BD68(&qword_27EE28E90, v39, MEMORY[0x277CFF3C0]);
  sub_245911384();
  v40 = *(*(v5 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor);
  (*(v75 + 104))(v74, *MEMORY[0x277CFF478], v76);
  v41 = v40;
  v42 = v73;
  sub_24590D2B4();
  v43 = sub_24590C454();
  v44 = v77;
  (*(*(v43 - 8) + 56))(v77, 1, 1, v43);
  v45 = sub_24590C814();
  v46 = *(v45 - 8);
  v47 = v78;
  (*(v46 + 16))(v78, v86, v45);
  (*(v46 + 56))(v47, 0, 1, v45);
  v48 = sub_24590C5D4();
  v49 = v81;
  (*(*(v48 - 8) + 56))(v81, 1, 1, v48);
  sub_24590D294();
  sub_245778F94(v49, &qword_27EE28F90, &qword_245916D58);
  sub_245778F94(v47, &qword_27EE28F98, &qword_245916D60);
  sub_245778F94(v44, &qword_27EE28FA0, &qword_245916D68);
  (*(v79 + 8))(v42, v80);
  v50 = sub_24590D494();
  v51 = v87;
  v52 = v23;
  v70 = v23;
  v53 = v23;
  v54 = v71;
  v71(v87, v104, v53);
  v55 = v102[7];
  v55(v51, 0, 1, v52);
  v56 = sub_24590CD14();

  sub_245778F94(v51, &qword_27EE28F88, &qword_245916D50);
  v57 = v56;
  sub_24590D1A4();
  sub_24590D2D4();

  v58 = sub_24590D494();
  v59 = v51;
  v60 = v51;
  v61 = v70;
  v54(v60, v103, v70);
  v55(v59, 0, 1, v61);
  v62 = sub_24590CD14();

  sub_245778F94(v59, &qword_27EE28F88, &qword_245916D50);
  sub_24590E9B4();
  sub_24590CBD4();
  v63 = v98;
  sub_24590D134();
  sub_24590CBB4();
  sub_24590CB84();

  v64 = v101;
  v65 = v93;
  sub_24578329C(v62, v101, v93);

  v66 = v92;
  sub_24590C714();
  v105 = v64;
  v106 = v65;
  v107 = v62;
  sub_24590F334();

  (*(v94 + 8))(v66, v95);
  (*(v89 + 8))(v99, v90);
  v67 = v102[1];
  v67(v97, v61);
  v67(v103, v61);
  v67(v104, v61);
  (*(v84 + 8))(v100, v85);
  return (*(v82 + 8))(v63, v83);
}

uint64_t sub_245797370(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2459114D4();
  v4 = sub_24590C464();

  MEMORY[0x245D76160](0xD00000000000001ALL, 0x80000002459249D0);
  v5 = sub_2459116E4();
  MEMORY[0x245D76160](v5);

  MEMORY[0x245D76160](2618, 0xE200000000000000);
  v6 = [a3 debugDescription];
  v7 = sub_245910A04();
  v9 = v8;

  MEMORY[0x245D76160](v7, v9);

  return v4;
}

uint64_t sub_24579748C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = sub_24590F354();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8, &qword_245916D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v37 = sub_24590D2F4();
  v9 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_24590D1B4();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  v38 = a1;
  sub_245788C40(a1, v14);

  sub_24590D184();
  v15 = sub_24590D124();
  (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
  sub_24590D2E4();
  v16 = [objc_allocWithZone(sub_24590CD34()) init];
  if (sub_24590C7C4())
  {
  }

  sub_24590CCF4();
  v17 = sub_24590C7C4();
  if (v17)
  {
    if (*(v17 + 16))
    {

      sub_24590C804();
      if ((v43 & 1) == 0)
      {
        v57.origin.x = 0.0;
        v57.origin.y = 0.0;
        v57.size.width = 0.0;
        v57.size.height = 0.0;
        if (!CGRectEqualToRect(v42, v57))
        {
          sub_245911184();
          sub_245911184();
          LOBYTE(v44) = 0;
          sub_24590CB64();
        }
      }
    }

    else
    {
    }
  }

  sub_24590C804();
  if ((v48 & 1) == 0)
  {
    v19 = v44;
    v18 = v45;
    v20 = v46;
    v21 = v47;
    v22 = sub_24590C7C4();
    if (v22)
    {
      if (*(v22 + 2))
      {
        v24 = v22[4];
        v23 = v22[5];
        v25 = v22[6];
        v34 = v22[7];

        v49.origin.x = v19;
        v49.origin.y = v18;
        v49.size.width = v20;
        v49.size.height = v21;
        CGRectGetMinX(v49);
        v33 = v19;
        v50.origin.x = v24;
        v35 = v24;
        v50.origin.y = v23;
        v50.size.width = v25;
        v26 = v25;
        v27 = v34;
        v50.size.height = v34;
        CGRectGetMinX(v50);
        v41 = 0;
        sub_24590CD24();
        v51.origin.x = v24;
        v51.origin.y = v23;
        v28 = v23;
        v51.size.width = v26;
        v51.size.height = v27;
        CGRectGetMaxX(v51);
        v29 = v33;
        v52.origin.x = v33;
        v52.origin.y = v18;
        v52.size.width = v20;
        v52.size.height = v21;
        CGRectGetMaxX(v52);
        v41 = 0;
        sub_24590CB74();
        v53.origin.x = v35;
        v53.origin.y = v28;
        v53.size.width = v26;
        v53.size.height = v27;
        CGRectGetMaxY(v53);
        v54.origin.x = v29;
        v54.origin.y = v18;
        v54.size.width = v20;
        v54.size.height = v21;
        CGRectGetMaxY(v54);
        v41 = 0;
        sub_24590CCE4();
        v55.origin.x = v29;
        v55.origin.y = v18;
        v55.size.width = v20;
        v55.size.height = v21;
        CGRectGetMinY(v55);
        v56.origin.x = v35;
        v56.origin.y = v28;
        v56.size.width = v26;
        v56.size.height = v34;
        CGRectGetMinY(v56);
        v41 = 0;
        sub_24590CD04();
      }

      else
      {
      }
    }
  }

  v30 = sub_24590C714();
  MEMORY[0x28223BE20](v30);
  *(&v33 - 2) = v38;
  *(&v33 - 1) = v16;
  sub_24590F334();
  (*(v3 + 8))(v5, v39);
  v31 = v16;
  sub_24590D1A4();
  sub_24590D2D4();

  (*(v9 + 8))(v11, v37);
  return (*(v12 + 8))(v14, v36);
}

uint64_t sub_245797AC4(uint64_t a1, void *a2)
{
  sub_2459114D4();
  v3 = sub_24590C464();

  MEMORY[0x245D76160](0xD000000000000016, 0x80000002459249B0);
  v4 = [a2 debugDescription];
  v5 = sub_245910A04();
  v7 = v6;

  MEMORY[0x245D76160](v5, v7);

  return v3;
}

uint64_t sub_245797B94@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v140 = a3;
  v116 = a2;
  v132 = a1;
  v123 = a4;
  v130 = sub_24590F354();
  v139 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v128 = v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_24590E9D4();
  v126 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v133 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8, &qword_245916D70);
  MEMORY[0x28223BE20](v8 - 8);
  v117 = v100 - v9;
  v125 = sub_24590D2F4();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v131 = v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88, &qword_245916D50);
  MEMORY[0x28223BE20](v11 - 8);
  v114 = v100 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90, &qword_245916D58);
  MEMORY[0x28223BE20](v13 - 8);
  v113 = v100 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98, &qword_245916D60);
  MEMORY[0x28223BE20](v15 - 8);
  v110 = v100 - v16;
  v108 = sub_24590D284();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_24590D2C4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v105 = v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_24590D4B4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v138 = v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_24590D124();
  v104 = *(v137 - 8);
  v20 = v104;
  MEMORY[0x28223BE20](v137);
  v101 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v100 - v23;
  v25 = sub_24590C6A4();
  v103 = *(v25 - 8);
  v26 = v103;
  MEMORY[0x28223BE20](v25);
  v115 = (v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v109 = v100 - v29;
  MEMORY[0x28223BE20](v30);
  v134 = v100 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v100 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v100 - v36;
  v119 = sub_24590D1B4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v39 = v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_245788C40(v140, v39);

  v129 = v39;
  sub_24590D184();
  v136 = v37;
  sub_24590D104();
  v40 = *(v20 + 8);
  v100[1] = v20 + 8;
  v100[0] = v40;
  v40(v24, v137);
  v135 = v34;
  sub_24590D154();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F78, &qword_245916D40);
  v41 = *(v26 + 72);
  v42 = v103;
  v43 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_245916CE0;
  v45 = v44 + v43;
  v46 = v42[2];
  v46(v45, v34, v25);
  v127 = v5;
  v46(v45 + v41, (v5 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_detectCornersFlags), v25);
  v143 = v44;
  v47 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3C0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28E98, &qword_245916AE0);
  sub_24579B6F0();
  v48 = v109;
  sub_2459113A4();
  sub_24579BD68(&qword_27EE28FB0, v47, MEMORY[0x277CFF3B8]);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v47, MEMORY[0x277CFF3C8]);
  sub_2459118C4();
  v102 = v42 + 2;
  v46(v115, v48, v25);
  sub_245911384();
  v49 = v42[1];
  v109 = (v42 + 1);
  v115 = v49;
  v49(v48, v25);
  v50 = *(*(v5 + 16) + OBJC_IVAR____TtC9CoreIDVUI19DocumentsRepository_luxMonitor);
  (*(v107 + 104))(v106, *MEMORY[0x277CFF478], v108);
  v51 = v50;
  v52 = v105;
  sub_24590D2B4();
  v53 = sub_24590C814();
  v54 = v110;
  (*(*(v53 - 8) + 56))(v110, 1, 1, v53);
  v55 = sub_24590C5D4();
  v56 = v113;
  (*(*(v55 - 8) + 56))(v113, 1, 1, v55);
  sub_24590D294();
  sub_245778F94(v56, &qword_27EE28F90, &qword_245916D58);
  sub_245778F94(v54, &qword_27EE28F98, &qword_245916D60);
  (*(v111 + 8))(v52, v112);
  v57 = sub_24590D494();
  v58 = v114;
  v46(v114, v135, v25);
  v59 = v46;
  v60 = v42[7];
  v60(v58, 0, 1, v25);
  v61 = sub_24590CD14();

  sub_245778F94(v58, &qword_27EE28F88, &qword_245916D50);
  v62 = sub_24590D494();
  v59(v58, v136, v25);
  v63 = v131;
  v60(v58, 0, 1, v25);
  v64 = v63;
  v65 = sub_24590CD14();

  v66 = v129;
  sub_245778F94(v58, &qword_27EE28F88, &qword_245916D50);
  v67 = v117;
  sub_24590D184();
  (*(v104 + 56))(v67, 0, 1, v137);
  sub_24590D2E4();
  v68 = v65;
  sub_24590D1A4();
  v69 = v133;
  sub_24590D2D4();

  v70 = v69;

  sub_24590E9B4();
  sub_24590CBD4();
  sub_24590D134();
  sub_24590CBB4();
  sub_24590CB84();

  v71 = v140;
  sub_245782894(v61, v140, 1);

  v72 = v128;
  sub_24590C714();
  v141 = v71;
  v142 = v61;
  sub_24590F334();
  v73 = *(v139 + 8);
  v139 += 8;
  v73(v72, v130);
  v74 = v138;
  v75 = sub_24590D494();
  v76 = sub_24590CC04();

  if (!v76)
  {

    (*(v124 + 8))(v64, v125);
    (*(v120 + 8))(v74, v121);
    v97 = v115;
    v115(v134, v25);
    v97(v135, v25);
    v97(v136, v25);
    (*(v118 + 8))(v66, v119);
    v98 = type metadata accessor for IDCornersResult(0);
    v99 = v123;
    result = (*(v126 + 32))(v123 + *(v98 + 20), v70, v122);
    *v99 = MEMORY[0x277D84F90];
    *(v99 + *(v98 + 24)) = 0;
    return result;
  }

  v117 = v68;
  v77 = [objc_opt_self() sharedInstance];
  v78 = v123;
  if (v77)
  {
    v79 = v77;
    v80 = [v77 voiceOverEnabled];

    if (v80)
    {
      if (v76 >> 62)
      {
        if (!sub_245911424())
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        sub_24579B754(v133);
      }
    }
  }

LABEL_7:
  v81 = v128;
  v82 = sub_24590C714();
  MEMORY[0x28223BE20](v82);
  v100[-2] = v140;
  v100[-1] = v76;
  sub_24590F334();
  v73(v81, v130);
  [v132 extent];
  v87 = sub_24579B944(v76, v83, v84, v85, v86);
  v88 = v101;
  v89 = v129;
  sub_24590D184();
  v90 = sub_24590D094();
  (v100[0])(v88, v137);
  if (v90 == 2 || (v90 & 1) == 0)
  {
    v94 = sub_24579B294(v76);

    (*(v124 + 8))(v131, v125);
    (*(v120 + 8))(v138, v121);
    v95 = v115;
    v115(v134, v25);
    v95(v135, v25);
    v95(v136, v25);
    (*(v118 + 8))(v89, v119);
    v96 = type metadata accessor for IDCornersResult(0);
    result = (*(v126 + 32))(&v78[*(v96 + 20)], v133, v122);
    *v78 = v87;
    v78[*(v96 + 24)] = v94 & 1;
  }

  else
  {

    (*(v124 + 8))(v131, v125);
    (*(v120 + 8))(v138, v121);
    v91 = v115;
    v115(v134, v25);
    v91(v135, v25);
    v91(v136, v25);
    (*(v118 + 8))(v89, v119);
    v92 = type metadata accessor for IDCornersResult(0);
    result = (*(v126 + 32))(&v78[*(v92 + 20)], v133, v122);
    *v78 = v87;
    v78[*(v92 + 24)] = 1;
  }

  return result;
}

uint64_t sub_245798D64(uint64_t a1, void *a2)
{
  sub_24590C474();
  sub_2459115C4();
  MEMORY[0x245D76160](0x7363697274656D20, 0xEB000000000A203ALL);
  v3 = [a2 debugDescription];
  v4 = sub_245910A04();
  v6 = v5;

  MEMORY[0x245D76160](v4, v6);

  return 0;
}

uint64_t sub_245798E34(uint64_t a1, uint64_t a2)
{
  sub_2459114D4();
  sub_24590C474();
  sub_2459115C4();
  MEMORY[0x245D76160](0xD000000000000013, 0x8000000245924990);
  v3 = sub_24590EA14();
  v4 = MEMORY[0x245D762C0](a2, v3);
  MEMORY[0x245D76160](v4);

  return 0;
}

char *sub_245798EF8(uint64_t a1, void (*a2)(uint64_t, void, uint64_t, uint64_t), uint64_t a3)
{
  v131 = a3;
  v137 = a2;
  v142 = a1;
  v147 = sub_24590F354();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F88, &qword_245916D50);
  MEMORY[0x28223BE20](v4 - 8);
  v141 = &v105 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F90, &qword_245916D58);
  MEMORY[0x28223BE20](v6 - 8);
  v138 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F98, &qword_245916D60);
  MEMORY[0x28223BE20](v8 - 8);
  v133 = &v105 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA0, &qword_245916D68);
  MEMORY[0x28223BE20](v10 - 8);
  v130 = &v105 - v11;
  v129 = sub_24590D284();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_24590D2C4();
  v132 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v126 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_24590D4B4();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v159 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24590C5D4();
  v153 = *(v15 - 8);
  v154 = v15;
  MEMORY[0x28223BE20](v15);
  v152 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_24590D124();
  v17 = *(v148 - 1);
  MEMORY[0x28223BE20](v148);
  v116 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v115 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v114 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v113 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v112 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v110 = &v105 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v105 - v30;
  v149 = sub_24590C6A4();
  v150 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v156 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v151 = &v105 - v34;
  MEMORY[0x28223BE20](v35);
  v108 = &v105 - v36;
  MEMORY[0x28223BE20](v37);
  v157 = &v105 - v38;
  MEMORY[0x28223BE20](v39);
  v158 = &v105 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FA8, &qword_245916D70);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v105 - v42;
  v140 = sub_24590D2F4();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v155 = &v105 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_24590C474();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v105 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_24590D1B4();
  v135 = *(v136 - 8);
  v49 = MEMORY[0x28223BE20](v136);
  v51 = &v105 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *MEMORY[0x277CFF338];
  v52 = *(v46 + 104);
  v122 = v46 + 104;
  v123 = v52;
  v118 = v45;
  v52(v48, v49);

  v117 = v48;
  sub_245788C40(v48, v51);

  v53 = *(v46 + 8);
  v119 = v46 + 8;
  v120 = v53;
  v53(v48, v45);
  sub_24590D184();
  v54 = v148;
  (*(v17 + 56))(v43, 0, 1, v148);
  sub_24590D2E4();
  v106 = v31;
  sub_24590D184();
  sub_24590D104();
  v55 = *(v17 + 8);
  v107 = v17 + 8;
  v55(v31, v54);
  v56 = v157;
  sub_24590D154();
  v57 = v151;
  sub_24590C684();
  v58 = v108;
  sub_2457963A4(v108, v57);
  v59 = v150;
  v60 = v150[1];
  v124 = v60;
  v125 = (v150 + 1);
  v61 = v57;
  v62 = v149;
  v60(v61, v149);
  v60(v58, v62);
  v63 = MEMORY[0x277CFF3A8];
  sub_24579BD68(&qword_27EE28FB0, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3B8]);
  sub_245910BF4();
  sub_24579BD68(&qword_27EE28FB8, v63, MEMORY[0x277CFF3C8]);
  sub_2459118C4();
  v111 = v59[2];
  v151 = (v59 + 2);
  v111(v58, v56, v62);
  sub_24579BD68(&qword_27EE28E90, v63, MEMORY[0x277CFF3C0]);
  sub_245911384();
  v64 = v106;
  sub_24590D184();
  v108 = sub_24590D0C4();
  v65 = v148;
  v55(v64, v148);
  v66 = v110;
  sub_24590D184();
  sub_24590D0B4();
  v55(v66, v65);
  v67 = v112;
  sub_24590D184();
  sub_24590CFC4();
  v55(v67, v65);
  v68 = v113;
  sub_24590D184();
  v112 = sub_24590D074();
  LODWORD(v110) = v69;
  v55(v68, v65);
  v70 = v114;
  sub_24590D184();
  v113 = sub_24590D0A4();
  v55(v70, v65);
  v71 = v115;
  v109 = v51;
  sub_24590D184();
  v114 = sub_24590D084();
  v55(v71, v65);
  v72 = v116;
  sub_24590D184();
  sub_24590D0E4();
  v55(v72, v65);
  v73 = v152;
  sub_24590C5C4();
  v74 = objc_allocWithZone(MEMORY[0x277CBF758]);
  v148 = [v74 initWithCVPixelBuffer_];
  (*(v128 + 104))(v127, *MEMORY[0x277CFF478], v129);
  [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
  v75 = v126;
  sub_24590D2B4();
  v76 = sub_24590C454();
  v77 = v130;
  (*(*(v76 - 8) + 56))(v130, 1, 1, v76);
  v78 = sub_24590C814();
  v79 = v133;
  (*(*(v78 - 8) + 56))(v133, 1, 1, v78);
  v80 = v153;
  v81 = v138;
  v82 = v73;
  v83 = v154;
  (*(v153 + 16))(v138, v82, v154);
  (*(v80 + 56))(v81, 0, 1, v83);
  sub_24590D294();
  sub_245778F94(v81, &qword_27EE28F90, &qword_245916D58);
  sub_245778F94(v79, &qword_27EE28F98, &qword_245916D60);
  sub_245778F94(v77, &qword_27EE28FA0, &qword_245916D68);
  (*(v132 + 8))(v75, v134);
  v84 = sub_24590D484();
  v85 = MEMORY[0x277D84F90];
  if (v84)
  {
    v85 = v84;
  }

  v138 = v85;
  v86 = sub_24590D494();
  v87 = v141;
  v88 = v149;
  v89 = v111;
  v111(v141, v158, v149);
  v137 = v150[7];
  v137(v87, 0, 1, v88);
  v90 = sub_24590CD14();

  sub_245778F94(v87, &qword_27EE28F88, &qword_245916D50);
  v91 = v90;
  v150 = v91;
  v92 = v109;
  sub_24590D1A4();
  sub_24590D2D4();

  v93 = sub_24590D494();
  v89(v87, v157, v88);
  v137(v87, 0, 1, v88);
  v94 = sub_24590CD14();

  sub_245778F94(v87, &qword_27EE28F88, &qword_245916D50);
  sub_24590E9B4();
  sub_24590CBD4();
  sub_24590D134();
  sub_24590CBB4();
  sub_24590CB84();
  v95 = v117;
  v96 = v118;
  v123(v117, v121, v118);

  sub_245782894(v94, v95, 0);

  v120(v95, v96);
  v97 = v145;
  sub_24590C714();
  v98 = v138;
  v161 = v138;
  sub_24590F334();
  v99 = *(v146 + 8);
  v100 = v147;
  v99(v97, v147);
  sub_24590C714();
  v160 = v94;
  sub_24590F334();

  v99(v97, v100);
  (*(v143 + 8))(v159, v144);
  (*(v153 + 8))(v152, v154);
  v101 = v88;
  v102 = v88;
  v103 = v124;
  v124(v156, v102);
  v103(v157, v101);
  v103(v158, v101);
  (*(v139 + 8))(v155, v140);
  (*(v135 + 8))(v92, v136);
  return v98;
}

unint64_t sub_24579A248(uint64_t a1)
{
  sub_2459114D4();

  v2 = sub_24590CA04();
  v3 = MEMORY[0x245D762C0](a1, v2);
  MEMORY[0x245D76160](v3);

  return 0xD000000000000010;
}

unint64_t sub_24579A2D4(void *a1)
{
  sub_2459114D4();

  v2 = [a1 debugDescription];
  v3 = sub_245910A04();
  v5 = v4;

  MEMORY[0x245D76160](v3, v5);

  return 0xD000000000000012;
}

uint64_t sub_24579A384()
{
  v1 = sub_24590F354();
  v69 = *(v1 - 8);
  v70 = v1;
  MEMORY[0x28223BE20](v1);
  v65 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v67 = &v53 - v4;
  v56 = sub_24590D284();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v57 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24590D2C4();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24590C934();
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28EC0, &unk_245916AF0);
  MEMORY[0x28223BE20](v64);
  v63 = (&v53 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28F80, &qword_245916D48);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = &v53 - v14;
  v15 = sub_24590C474();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_24590D1B4();
  v19 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24590C6A4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v53 - v28;
  v66 = v0;
  (*(v16 + 104))(v18, *MEMORY[0x277CFF308], v15, v27);

  sub_245788C40(v18, v21);

  (*(v16 + 8))(v18, v15);
  sub_24590D154();
  (*(v19 + 8))(v21, v72);
  sub_24590C5E4();
  sub_24579BD68(&qword_27EE28E90, MEMORY[0x277CFF3A8], MEMORY[0x277CFF3C0]);
  v71 = v29;
  v30 = sub_245911364();
  v31 = *(v23 + 8);
  v32 = v22;
  v72 = v23 + 8;
  v31(v25, v22);
  if (v30)
  {

    v34 = v63;
    v33 = v64;
    sub_245911044();

    v35 = *v34;
    v36 = v68;
    sub_24577ABC4(v34 + *(v33 + 48), v68, &qword_27EE28F80, &qword_245916D48);
    v38 = v69;
    v37 = v70;
    v39 = v67;
    if (v35)
    {
      v40 = v60;
      sub_245778F2C(v36, v60, &qword_27EE28F80, &qword_245916D48);
      v41 = v61;
      v42 = v62;
      if ((*(v61 + 48))(v40, 1, v62) != 1)
      {
        v48 = v55;
        (*(v41 + 32))(v55, v40, v42);
        (*(v54 + 104))(v57, *MEMORY[0x277CFF478], v56);
        [objc_allocWithZone(MEMORY[0x277CFFE48]) init];
        v49 = v53;
        sub_24590D2B4();
        v50 = v41;
        v51 = sub_24590D2A4();
        (*(v58 + 8))(v49, v59);

        sub_245783DDC(v51);

        (*(v50 + 8))(v48, v42);
        v46 = v68;
LABEL_10:
        sub_245778F94(v46, &qword_27EE28F80, &qword_245916D48);
        return (v31)(v71, v32);
      }

      sub_245778F94(v40, &qword_27EE28F80, &qword_245916D48);
      v36 = v68;
    }

    sub_24590C714();
    v43 = sub_24590F344();
    v44 = sub_245910F54();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245767000, v43, v44, "Could not perform fuzzy matching, repository did not contain fuzzy match items", v45, 2u);
      MEMORY[0x245D77B40](v45, -1, -1);
    }

    (*(v38 + 8))(v39, v37);
    v46 = v36;
    goto LABEL_10;
  }

  v47 = v65;
  sub_24590C714();
  sub_24590F334();
  (*(v69 + 8))(v47, v70);
  return (v31)(v71, v32);
}

uint64_t sub_24579AC34(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_24590EA74();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v31 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24590C474();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0xD000000000000021;
  v30 = 0x8000000245924820;
  (*(v8 + 16))(v11, a2, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CFF340])
  {
    v13 = 0x616353746E6F7266;
    v14 = 0xEA00000000002E6ELL;
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x277CFF328])
  {
    v13 = 0x6E6163536B636162;
LABEL_5:
    v14 = 0xE90000000000002ELL;
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x277CFF318])
  {
    v13 = 0x2E4449746E6F7266;
    v14 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (v12 == *MEMORY[0x277CFF308])
  {
    v15 = 0x44496B636162;
LABEL_10:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0x2E000000000000;
    v14 = 0xE700000000000000;
    goto LABEL_11;
  }

  if (v12 != *MEMORY[0x277CFF310])
  {
    if (v12 == *MEMORY[0x277CFF330] || v12 == *MEMORY[0x277CFF320])
    {
      v13 = 0x7373656E6576696CLL;
    }

    else
    {
      if (v12 != *MEMORY[0x277CFF338])
      {
        v27 = 0;
        v28 = 0xE000000000000000;
        sub_2459114D4();
        MEMORY[0x245D76160](0xD000000000000032, 0x8000000245924850);
        sub_2459115C4();
        v24[1] = v27;
        v19 = v31;
        (*(v25 + 104))(v31, *MEMORY[0x277CFF9C0], v26);
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_24579BD68(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
        swift_allocError();
        sub_24590EA94();
        swift_willThrow();
        (*(v8 + 8))(v11, v7);
        return v19;
      }

      v13 = 0x74726F7073736170;
    }

    goto LABEL_5;
  }

  if (a3)
  {
    v15 = 0x6569666C6573;
    goto LABEL_10;
  }

  v27 = 0;
  v28 = 0xE000000000000000;
  sub_2459114D4();

  v13 = 0x632E6569666C6573;
  v14 = 0xEF2E6D7269666E6FLL;
LABEL_11:
  v27 = v13;
  v28 = v14;
  v16 = sub_24590E9B4();
  MEMORY[0x245D76160](v16);

  MEMORY[0x245D76160](v27, v28);

  v18 = v29;
  v17 = v30;

  v19 = sub_24586C880(v18, v17);
  v21 = v20;

  if (v21)
  {
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_2459114D4();
    MEMORY[0x245D76160](0xD000000000000031, 0x80000002459248E0);
    MEMORY[0x245D76160](v18, v17);

    v19 = v27;
    (*(v25 + 104))(v31, *MEMORY[0x277CFF988], v26);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24590EA84();
    sub_24579BD68(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
  }

  return v19;
}

uint64_t sub_24579B294(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 4)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (sub_245911424() != 4)
  {
    return 0;
  }

LABEL_3:
  v3 = OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_previousCorners;
  v4 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_previousCorners);

  v5 = sub_24579BB50(a1, v4);

  v6 = OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_rectDistances;
  v7 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_rectDistances);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_24580A074(0, *(v7 + 2) + 1, 1, v7);
    *(v1 + v6) = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_24580A074((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 2) = v10 + 1;
  *&v7[4 * v10 + 32] = v5;
  *(v1 + v6) = v7;
  *(v1 + v3) = a1;

  result = *(v1 + v6);
  v12 = *(result + 16);
  v13 = *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_stableWindow);
  v14 = v12 - v13;
  if (v12 < v13)
  {
    return 0;
  }

  if (__OFSUB__(v12, v13))
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v14)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      if (v12 >= v14)
      {
        sub_24581A490(0, v14);
        result = *(v1 + v6);
        goto LABEL_14;
      }

LABEL_21:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_14:
  v15 = sub_24579B450(result);
  v16 = *&v15;
  if ((v15 & 0x100000000) != 0)
  {
    v16 = 1.0;
  }

  return v16 <= *(v1 + OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_maxRectTravel);
}

unint64_t sub_24579B450(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_24579B4A8()
{

  v1 = OBJC_IVAR____TtC9CoreIDVUI19ImageQualityManager_detectCornersFlags;
  v2 = sub_24590C6A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ImageQualityManager(uint64_t a1)
{
  result = qword_27EE28F68;
  if (!qword_27EE28F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24579B61C(uint64_t a1)
{
  result = sub_24590C6A4();
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

unint64_t sub_24579B6F0()
{
  result = qword_27EE28EA0;
  if (!qword_27EE28EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE28E98, &qword_245916AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE28EA0);
  }

  return result;
}

void sub_24579B754(uint64_t a1)
{
  v2 = sub_24590E9D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x277CFF848])
  {
    if (v7 != *MEMORY[0x277CFF7E0] && v7 != *MEMORY[0x277CFF7F0] && v7 != *MEMORY[0x277CFF800] && v7 != *MEMORY[0x277CFF818] && v7 != *MEMORY[0x277CFF7D8] && v7 != *MEMORY[0x277CFF7F8])
    {
      (*(v3 + 8))(v6, v2);
      return;
    }

    v15 = [objc_opt_self() sharedManager];
    if (v15)
    {
      v9 = v15;
      [v15 playHapticFeedbackForType_];
      goto LABEL_23;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v8 = [objc_opt_self() sharedManager];
  if (!v8)
  {
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  [v8 playHapticFeedbackForType_];
LABEL_23:
}

_OWORD *sub_24579B944(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 >> 62)
  {
    v10 = sub_245911424();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v10 == 4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_24577CC94(0, 4, 0);
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x245D76B30](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      sub_24590EA04();
      v26 = v15;
      v28.origin.x = a2;
      v28.origin.y = a3;
      v28.size.width = a4;
      v28.size.height = a5;
      Width = CGRectGetWidth(v28);
      sub_24590E9F4();
      v24 = v16;
      v29.origin.x = a2;
      v29.origin.y = a3;
      v29.size.width = a4;
      v29.size.height = a5;
      Height = CGRectGetHeight(v29);

      v18 = *(v27 + 16);
      v17 = *(v27 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24577CC94((v17 > 1), v18 + 1, 1);
      }

      ++v12;
      v19.f64[0] = Width;
      *(v27 + 16) = v18 + 1;
      v19.f64[1] = Height;
      *(v27 + 16 * v18 + 32) = vmulq_f64(v19, vcvtq_f64_f32(__PAIR64__(v24, v26)));
    }

    while (v12 != 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28C68, &unk_245916630);
    result = swift_allocObject();
    result[1] = xmmword_245916CF0;
    if (v18)
    {
      result[2] = *(v27 + 48);
      if (v18 != 1)
      {
        result[3] = *(v27 + 64);
        if (v18 >= 3)
        {
          result[4] = *(v27 + 80);
          v20 = *(v27 + 32);
          v21 = *(v27 + 40);
          v22 = result;

          result = v22;
          *(v22 + 10) = v20;
          *(v22 + 11) = v21;
          return result;
        }

LABEL_19:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

float sub_24579BB50(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 1.0;
  if (v4 == 4)
  {
    if (a2 >> 62)
    {
      if (sub_245911424() == 4)
      {
        goto LABEL_6;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) == 4)
    {
LABEL_6:
      v6 = a1 & 0xC000000000000001;
      v7 = a2 & 0xC000000000000001;
      v5 = 0.0;
      for (i = 4; i != 8; ++i)
      {
        v14 = i - 4;
        if (v6)
        {
          v15 = MEMORY[0x245D76B30](i - 4, a1);
        }

        else
        {
          if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v4 = sub_245911424();
            goto LABEL_3;
          }

          v15 = *(a1 + 8 * i);
        }

        v16 = v15;
        sub_24590E9F4();
        v18 = v17;

        if (v7)
        {
          v19 = MEMORY[0x245D76B30](i - 4, a2);
        }

        else
        {
          if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v19 = *(a2 + 8 * i);
        }

        v20 = v19;
        sub_24590E9F4();
        v22 = v21;

        if (v6)
        {
          v23 = MEMORY[0x245D76B30](i - 4, a1);
        }

        else
        {
          v23 = *(a1 + 8 * i);
        }

        v24 = v23;
        sub_24590EA04();
        v26 = v25;

        if (v7)
        {
          v9 = MEMORY[0x245D76B30](i - 4, a2);
        }

        else
        {
          v9 = *(a2 + 8 * i);
        }

        v10 = v9;
        v11 = v18 - v22;
        sub_24590EA04();
        v13 = v12;

        v5 = v5 + sqrtf((v11 * v11) + ((v26 - v13) * (v26 - v13)));
      }
    }
  }

  return v5;
}

uint64_t sub_24579BD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24579BDD0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 152) = a2;
  *(v4 + 160) = v3;
  *(v4 + 328) = a3;
  *(v4 + 144) = a1;
  v5 = sub_24590EA84();
  *(v4 + 168) = v5;
  *(v4 + 176) = *(v5 - 8);
  *(v4 + 184) = swift_task_alloc();
  v6 = sub_24590EA74();
  *(v4 + 192) = v6;
  *(v4 + 200) = *(v6 - 8);
  *(v4 + 208) = swift_task_alloc();
  v7 = sub_24590F354();
  *(v4 + 216) = v7;
  *(v4 + 224) = *(v7 - 8);
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24579BFA4, v3, 0);
}

uint64_t sub_24579BFA4()
{
  v81 = v0;
  v1 = *(v0 + 152);
  if (v1 >> 60 == 15)
  {
    (*(*(v0 + 200) + 104))(*(v0 + 208), *MEMORY[0x277CFFC70], *(v0 + 192));
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();
LABEL_18:

    v53 = *(v0 + 8);
LABEL_19:

    return v53();
  }

  v2 = *(v0 + 144);
  sub_24578FB80(v2, *(v0 + 152));
  sub_24590C714();
  sub_24578FB80(v2, v1);
  v3 = sub_24590F344();
  v4 = sub_245910F54();
  sub_245771C44(v2, v1);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 288);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v80 = v10;
    *v9 = 136315138;
    v11 = sub_24590C0D4();
    v13 = sub_2458CC378(v11, v12, &v80);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_245767000, v3, v4, "PassProvisioningManager calling provision precursor with data: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245D77B40](v10, -1, -1);
    MEMORY[0x245D77B40](v9, -1, -1);
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  *(v0 + 296) = v14;
  sub_24579D5E0(0, &qword_27EE28FE0, 0x277CCAAC8);
  sub_24579D5E0(0, &qword_27EE28FE8, 0x277D37F08);
  v15 = sub_245910FE4();
  *(v0 + 304) = v15;
  v16 = v15;
  if (!v15)
  {
    goto LABEL_14;
  }

  v17 = [v15 passTypeIdentifier];
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;
  v19 = sub_245910A04();
  v21 = v20;
  v22 = [v16 passSerialNumber];
  if (!v22)
  {

LABEL_14:
    v77 = v16;
    sub_24590C714();
    v43 = sub_24590F344();
    v44 = sub_245910F64();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_245767000, v43, v44, "PassProvisioningManager Failed to provision precursor pass; missing passType or serial number", v45, 2u);
      MEMORY[0x245D77B40](v45, -1, -1);
    }

    v46 = *(v0 + 240);
    v47 = *(v0 + 216);
    v48 = *(v0 + 200);
    v49 = *(v0 + 208);
    v50 = *(v0 + 192);
    v73 = *(v0 + 144);
    v75 = *(v0 + 152);

    v14(v46, v47);
    (*(v48 + 104))(v49, *MEMORY[0x277CFFC70], v50);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v51 = v73;
    v52 = v75;
    goto LABEL_17;
  }

  v23 = v22;
  v79 = v21;
  v72 = sub_245910A04();
  v74 = v24;
  sub_24590C714();
  v25 = sub_24590F344();
  v26 = sub_245910F54();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_245767000, v25, v26, "PassProvisioningManager Checking if pass library has existing pass provisioned", v27, 2u);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  v28 = *(v0 + 280);
  v29 = *(v0 + 216);
  v30 = *(v0 + 328);

  v14(v28, v29);
  v31 = sub_24579D218(v19, v79, v72, v74, v30);

  if (v31)
  {

    sub_24590C714();
    v32 = sub_24590F344();
    v33 = sub_245910F84();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 248);
    v36 = *(v0 + 216);
    v37 = *(v0 + 144);
    v38 = *(v0 + 152);
    if (v34)
    {
      v39 = *(v0 + 216);
      v40 = *(v0 + 248);
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_245767000, v32, v33, "PassProvisioningManager Precursor pass is already provisioned for specified device; skipping", v41, 2u);
      v42 = v41;
      v35 = v40;
      v36 = v39;
      MEMORY[0x245D77B40](v42, -1, -1);

      sub_245771C44(v37, v38);
    }

    else
    {
      sub_245771C44(*(v0 + 144), *(v0 + 152));
    }

    v14(v35, v36);

    v53 = *(v0 + 8);
    goto LABEL_19;
  }

  v55 = [objc_allocWithZone(MEMORY[0x277D38210]) initWithPassTypeIdentifier:v18 passSerialNumber:v23];
  *(v0 + 312) = v55;

  if (!v55)
  {
    sub_24590C714();
    v64 = sub_24590F344();
    v65 = sub_245910F64();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_245767000, v64, v65, "PassProvisioningManager Failed to provision precursor pass; could not create precursor pass credential object", v66, 2u);
      MEMORY[0x245D77B40](v66, -1, -1);
    }

    v67 = *(v0 + 256);
    v68 = *(v0 + 216);
    v70 = *(v0 + 200);
    v69 = *(v0 + 208);
    v71 = *(v0 + 192);
    v78 = *(v0 + 152);
    v76 = *(v0 + 144);

    v14(v67, v68);
    (*(v70 + 104))(v69, *MEMORY[0x277CFFB60], v71);
    sub_2458CC8AC(MEMORY[0x277D84F90]);
    sub_24579D1C0();
    swift_allocError();
    sub_24590EA94();
    swift_willThrow();

    v51 = v76;
    v52 = v78;
LABEL_17:
    sub_245771C44(v51, v52);
    goto LABEL_18;
  }

  [v55 setCardType_];
  sub_24590C714();
  v56 = sub_24590F344();
  v57 = sub_245910F54();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_245767000, v56, v57, "PassProvisioningManager Attempting to provisioning precursor pass...", v58, 2u);
    MEMORY[0x245D77B40](v58, -1, -1);
  }

  v59 = *(v0 + 272);
  v60 = *(v0 + 216);
  v61 = *(v0 + 328);

  v14(v59, v60);
  v62 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_24579CA78;
  v63 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0, &qword_2459170D0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_24579D0B4;
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v63;
  [v62 provisionPaymentCredential:v55 forPairedWatch:v61 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_24579CA78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_24579CD80;
  }

  else
  {
    v4 = sub_24579CB98;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24579CB98(uint64_t a1)
{
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[39];
  v19 = v1[38];
  v6 = v1[37];
  v7 = v1[33];
  v8 = v1[27];
  v10 = v1[18];
  v9 = v1[19];
  if (v4)
  {
    v18 = v1[39];
    v11 = v1[27];
    v12 = v1[33];
    v13 = v1[37];
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245767000, v2, v3, "PassProvisioningManager successfully provisioned precursor pass!", v14, 2u);
    v15 = v14;
    v6 = v13;
    v7 = v12;
    v8 = v11;
    MEMORY[0x245D77B40](v15, -1, -1);

    sub_245771C44(v10, v9);
  }

  else
  {
    sub_245771C44(v1[18], v1[19]);
  }

  v6(v7, v8);

  v16 = v1[1];

  return v16();
}

uint64_t sub_24579CD80(uint64_t a1)
{
  v2 = v1[40];
  swift_willThrow();
  sub_24590C714();
  v3 = v2;
  v4 = sub_24590F344();
  v5 = sub_245910F64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[40];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_245767000, v4, v5, "PassProvisioningManager Failed to provision precursor pass; underlying PKPaymentService error: %@", v7, 0xCu);
    sub_24579D578(v8);
    MEMORY[0x245D77B40](v8, -1, -1);
    MEMORY[0x245D77B40](v7, -1, -1);
  }

  v11 = v1[40];
  v28 = v1[39];
  v29 = v1[38];
  v12 = v4;
  v13 = v1[37];
  v14 = v1[29];
  v15 = v1[26];
  v16 = v1[27];
  v18 = v1[24];
  v17 = v1[25];
  v19 = v1[22];
  v24 = v1[23];
  v25 = v1[21];
  v26 = v1[18];
  v27 = v1[19];

  v13(v14, v16);
  (*(v17 + 104))(v15, *MEMORY[0x277CFFB60], v18);
  v20 = v11;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA94();
  sub_24579D1C0();
  swift_allocError();
  (*(v19 + 16))(v21, v24, v25);
  swift_willThrow();

  sub_245771C44(v26, v27);
  (*(v19 + 8))(v24, v25);

  v22 = v1[1];

  return v22();
}

uint64_t sub_24579D0B4(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24579D160()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_24579D1C0()
{
  result = qword_27EE2BC40;
  if (!qword_27EE2BC40)
  {
    sub_24590EA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE2BC40);
  }

  return result;
}

uint64_t sub_24579D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
  v7 = v6;
  if (a5)
  {
    v8 = [v6 remoteSecureElementPasses];
    sub_24579D5E0(0, &qword_27EE29000, 0x277D38260);
    v9 = sub_245910C44();

    if (v9 >> 62)
    {
      goto LABEL_30;
    }

    sub_245911724();
    sub_24579D5E0(0, &qword_27EE28FF8, 0x277D37F98);
  }

  else
  {
    v10 = [v6 passesOfType_];
    sub_24579D5E0(0, &qword_27EE28FF8, 0x277D37F98);
    v9 = sub_245910C44();

    if (v9 >> 62)
    {
      goto LABEL_31;
    }
  }

  while (1)
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      break;
    }

LABEL_6:
    v28 = v7;
    v12 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x245D76B30](v12, v9);
      }

      else
      {
        if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v14 = *(v9 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v14 passTypeIdentifier];
      v17 = sub_245910A04();
      v19 = v18;

      if (v17 == a1 && v19 == a2)
      {
      }

      else
      {
        v21 = sub_245911714();

        if ((v21 & 1) == 0)
        {

          goto LABEL_8;
        }
      }

      v22 = [v7 serialNumber];
      v23 = sub_245910A04();
      v25 = v24;

      if (v23 == a3 && v25 == a4)
      {

        v11 = 1;
        goto LABEL_27;
      }

      v13 = sub_245911714();

      if (v13)
      {
        v11 = 1;
        goto LABEL_26;
      }

LABEL_8:
      ++v12;
      if (v15 == v11)
      {
        v11 = 0;
LABEL_26:
        v7 = v28;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_24579D5E0(0, &qword_27EE28FF8, 0x277D37F98);

    v27 = sub_2459115E4();
    swift_bridgeObjectRelease_n();
    v9 = v27;
    if (v27 >> 62)
    {
LABEL_31:
      v11 = sub_245911424();
      if (!v11)
      {
        break;
      }

      goto LABEL_6;
    }
  }

LABEL_27:

  return v11;
}

uint64_t sub_24579D578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE297C0, &unk_245916DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24579D5E0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_24579D628(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_24579D64C, 0, 0);
}

uint64_t sub_24579D64C()
{
  v1 = v0[20];
  v2 = *(*(v1 + 32) + 112);
  v0[21] = v2;
  swift_unknownObjectRetain();
  v3 = sub_24590C144();
  v0[22] = v3;
  LOBYTE(v1) = ~(*(**(v1 + 24) + 104))();
  v0[2] = v0;
  v0[3] = sub_24579D7C8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0, &qword_2459170D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_20;
  v0[14] = v4;
  [v2 setGlobalBoundACLWithData:v3 type:v1 & 1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579D7C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_24579D940;
  }

  else
  {
    v2 = sub_24579D8D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579D8D8()
{
  v1 = *(v0 + 176);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24579D940(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_24579D9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return MEMORY[0x2822009F8](sub_24579D9E4, 0, 0);
}

uint64_t sub_24579D9E4()
{
  v1 = *(*(v0[23] + 32) + 112);
  v0[24] = v1;
  swift_unknownObjectRetain();
  v2 = sub_24590C144();
  v0[25] = v2;
  v3 = sub_24590C144();
  v0[26] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24579DB5C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29028, &unk_245916EA0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579DD74;
  v0[13] = &block_descriptor_16;
  v0[14] = v4;
  [v1 setModifiedGlobalBoundACLWithData:v2 externalizedLAContext:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579DB5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_24579DCEC;
  }

  else
  {
    v2 = sub_24579DC6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579DC6C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[18];
  swift_unknownObjectRelease();

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_24579DCEC(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[25];
  swift_willThrow();
  swift_unknownObjectRelease();

  v4 = v1[1];

  return v4();
}

uint64_t sub_24579DD74(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_24590C1F4();
    **(*(v4 + 64) + 40) = sub_245910C44();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_24579DE54()
{
  v1[38] = v0;
  v2 = sub_24590F354();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24579DF2C, 0, 0);
}

uint64_t sub_24579DF2C()
{
  v1 = *(v0[38] + 24);
  if ((*(*v1 + 104))())
  {
    sub_24590C714();
    v2 = sub_24590F344();
    v3 = sub_245910F54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_245767000, v2, v3, "Using bio binding unbound acl", v4, 2u);
      MEMORY[0x245D77B40](v4, -1, -1);
    }

    v5 = v0 + 10;
    v6 = v0[43];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];

    (*(v8 + 8))(v6, v7);
    v0[44] = *(*(v9 + 32) + 112);
    v0[10] = v0;
    v0[15] = v0 + 36;
    v0[11] = sub_24579E3B4;
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29020, &qword_245916E98);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_24579E694;
    v0[29] = &block_descriptor_13;
    v0[30] = v10;
    [swift_unknownObjectRetain() retrieveBioBindingUnboundACLWithCompletionHandler_];
LABEL_9:

    return MEMORY[0x282200938](v5);
  }

  if ((*(*v1 + 96))())
  {
    sub_24590C714();
    v11 = sub_24590F344();
    v12 = sub_245910F54();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245767000, v11, v12, "Using passcode binding unbound acl", v13, 2u);
      MEMORY[0x245D77B40](v13, -1, -1);
    }

    v5 = v0 + 2;
    v14 = v0[42];
    v15 = v0[39];
    v16 = v0[40];
    v17 = v0[38];

    (*(v16 + 8))(v14, v15);
    v0[45] = *(*(v17 + 32) + 112);
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = sub_24579E524;
    v18 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29020, &qword_245916E98);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_24579E694;
    v0[21] = &block_descriptor_10;
    v0[22] = v18;
    [swift_unknownObjectRetain() retrievePasscodeBindingUnboundACLWithCompletionHandler_];
    goto LABEL_9;
  }

  sub_24590C714();
  v19 = sub_24590F344();
  v20 = sub_245910F64();
  v21 = os_log_type_enabled(v19, v20);
  v23 = v0[40];
  v22 = v0[41];
  v24 = v0[39];
  if (v21)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_245767000, v19, v20, "Ineligible to perform binding: biometrics or AX settings not set.", v25, 2u);
    MEMORY[0x245D77B40](v25, -1, -1);
  }

  (*(v23 + 8))(v22, v24);

  v26 = v0[1];

  return v26(0, 0xF000000000000000);
}

uint64_t sub_24579E3B4()
{

  return MEMORY[0x2822009F8](sub_24579E494, 0, 0);
}

uint64_t sub_24579E494()
{
  v2 = v0[36];
  v1 = v0[37];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_24579E524()
{

  return MEMORY[0x2822009F8](sub_24579E604, 0, 0);
}

uint64_t sub_24579E604()
{
  v2 = v0[34];
  v1 = v0[35];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_24579E694(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_24590C154();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  v7 = *(*(v3 + 64) + 40);
  *v7 = a2;
  v7[1] = v6;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_24579E744()
{
  v0[19] = *(*(v0[18] + 32) + 112);
  v0[2] = v0;
  v0[3] = sub_24579E868;
  v1 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0, &qword_2459170D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_32;
  v0[14] = v1;
  [swift_unknownObjectRetain() deleteBoundACLWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579E868()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_24579E9DC;
  }

  else
  {
    v2 = sub_24579E978;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579E978()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24579E9DC(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24579EA70()
{
  v0[20] = *(*(v0[19] + 32) + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24579EB9C;
  v1 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29038, &qword_245916EB8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579ED8C;
  v0[13] = &block_descriptor_28;
  v0[14] = v1;
  [swift_unknownObjectRetain() fetchBioBindingDetailsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579EB9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_24579ED18;
  }

  else
  {
    v2 = sub_24579ECAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579ECAC()
{
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24579ED18(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24579ED8C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void sub_24579EE64(uint64_t a1, void *a2, void (*a3)(uint64_t, unint64_t, void, void), uint64_t a4, uint64_t a5, char a6)
{
  v68 = a3;
  v69 = a4;
  v9 = sub_24590EA74();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2459107E4();
  v66 = *(v12 - 1);
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  v63 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245910814();
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24590F354();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  if (!a2)
  {
    if (a1)
    {
      v34 = SecAccessControlCopyData();
      if (v34)
      {
        v35 = v34;
        sub_24590C6C4();
        v67 = v35;
        v36 = sub_24590C154();
        v38 = v37;

        v68(v36, v38, a6 & 1, 0);
        sub_24578FC28(v36, v38);
        v39 = v67;
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  v58 = v20;
  v59 = v11;
  v60 = a2;
  v23 = sub_24590BF94();
  sub_24590C714();
  v24 = v23;
  v25 = sub_24590F344();
  v26 = sub_245910F64();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_245767000, v25, v26, "Biometric binding failed with error: %@", v27, 0xCu);
    sub_245778F94(v28, &qword_27EE297C0, &unk_245916DE0);
    MEMORY[0x245D77B40](v28, -1, -1);
    MEMORY[0x245D77B40](v27, -1, -1);
  }

  v57 = *(v18 + 8);
  v57(v22, v17);
  v30 = [v24 domain];
  v31 = sub_245910A04();
  v33 = v32;

  if (v31 == 0xD00000000000001DLL && 0x8000000245924C90 == v33)
  {

    goto LABEL_13;
  }

  v40 = sub_245911714();

  if (v40)
  {
LABEL_13:
    if ([v24 code] == -8)
    {
      sub_2457809BC();
      v41 = sub_245911034();
      v42 = swift_allocObject();
      v43 = v69;
      v42[2] = v68;
      v42[3] = v43;
      v44 = v60;
      v42[4] = v60;
      aBlock[4] = sub_24579FE44;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2458935A8;
      aBlock[3] = &block_descriptor_5;
      v45 = _Block_copy(aBlock);

      v46 = v44;

      sub_245910804();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_24579FE68(&qword_27EE2A980, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28D18, &unk_245916E60);
      sub_245780AA8();
      v47 = v63;
      v48 = v67;
      sub_2459113A4();
      MEMORY[0x245D76690](0, v16, v47, v45);
      _Block_release(v45);

      (*(v66 + 8))(v47, v48);
      (*(v64 + 8))(v16, v65);
      return;
    }
  }

  v49 = [v24 domain];
  v50 = sub_245910A04();
  v52 = v51;

  if (v50 == 0xD00000000000001DLL && 0x8000000245924C90 == v52)
  {
  }

  else
  {
    v53 = sub_245911714();

    if ((v53 & 1) == 0)
    {
LABEL_20:

      return;
    }
  }

  if ([v24 code] != -1)
  {
    goto LABEL_20;
  }

  (*(v61 + 104))(v59, *MEMORY[0x277CFFB48], v62);
  v54 = v60;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579FE68(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  v55 = swift_allocError();
  sub_24590EA94();
  v56 = v58;
  sub_24590C714();
  sub_24590C724();

  v57(v56, v17);
}

void sub_24579F6AC(void (*a1)(void, unint64_t, uint64_t, void *), uint64_t a2, void *a3)
{
  v5 = sub_24590EA74();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 104))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CFF9B0], v6);
  v9 = a3;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_24579FE68(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  v10 = swift_allocError();
  sub_24590EA94();
  a1(0, 0xF000000000000000, 2, v10);
}

uint64_t sub_24579F894(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_2459108F4();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_24579F9B0()
{
  v0[22] = *(*(v0[21] + 32) + 112);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_24579FADC;
  v1 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29030, &qword_245916EB0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579FCE0;
  v0[13] = &block_descriptor_24;
  v0[14] = v1;
  [swift_unknownObjectRetain() globalAuthACLInfoWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24579FADC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_24579FC6C;
  }

  else
  {
    v2 = sub_24579FBEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24579FBEC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[20];
  swift_unknownObjectRelease();
  v4 = v0[1];

  return v4(v2, v1, v3);
}

uint64_t sub_24579FC6C(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_24579FCE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v9 = swift_allocError();
    *v10 = a5;
    v11 = a5;

    return MEMORY[0x282200958](v8, v9);
  }

  else
  {
    sub_24590C1F4();
    v12 = sub_245910C44();
    v13 = *(*(v8 + 64) + 40);
    *v13 = v12;
    v13[1] = a3;
    v13[2] = a4;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_24579FDD8()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24579FE68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24579FEB0()
{
  sub_24590C234();
  v0[32] = swift_task_alloc();
  sub_2459109B4();
  v0[33] = swift_task_alloc();
  v1 = sub_24590F354();
  v0[34] = v1;
  v0[35] = *(v1 - 8);
  v0[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24579FFC4, 0, 0);
}

uint64_t sub_24579FFC4(uint64_t a1)
{
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_245767000, v2, v3, "Managing bio lockout", v4, 2u);
    MEMORY[0x245D77B40](v4, -1, -1);
  }

  v6 = *(v1 + 280);
  v5 = *(v1 + 288);
  v7 = *(v1 + 272);

  (*(v6 + 8))(v5, v7);
  v8 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *(v1 + 296) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29008, &unk_24591CDE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_245916930;
  *(v1 + 320) = 1030;
  sub_245911484();
  sub_245910944();
  if (qword_27EE28690 != -1)
  {
    swift_once();
  }

  v10 = qword_27EE32B38;
  sub_24590C224();
  v11 = sub_245910A54();
  *(inited + 96) = MEMORY[0x277D837D0];
  *(inited + 72) = v11;
  *(inited + 80) = v12;
  sub_2458B86D0(inited);
  swift_setDeallocating();
  sub_245778F94(inited + 32, &qword_27EE29010, &unk_245916E80);
  v13 = sub_2459108E4();
  *(v1 + 304) = v13;

  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 248;
  *(v1 + 24) = sub_2457A02FC;
  v14 = swift_continuation_init();
  *(v1 + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29018, &qword_24591CDF0);
  *(v1 + 184) = MEMORY[0x277D85DD0];
  *(v1 + 192) = 1107296256;
  *(v1 + 200) = sub_24579F894;
  *(v1 + 208) = &block_descriptor_6_0;
  *(v1 + 216) = v14;
  [v8 evaluatePolicy:2 options:v13 reply:v1 + 184];

  return MEMORY[0x282200938](v1 + 16);
}

uint64_t sub_2457A02FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    v2 = sub_2457A04B0;
  }

  else
  {
    v2 = sub_2457A040C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A040C()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2457A04B0(uint64_t a1)
{
  v2 = v1[38];
  v3 = v1[37];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  return sub_2457816F0(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
}

_OWORD *sub_2457A05A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2457AA3F0(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_2458B7848(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_245778F94(a1, &unk_27EE292B0, &unk_2459170A0);
    v7 = sub_24588C7B4(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_24580C8E4();
        v11 = v13;
      }

      sub_2457AA3F0((*(v11 + 56) + 32 * v9), v14);
      sub_2457A94E4(v9, v11);
      *v3 = v11;
    }

    else
    {
      memset(v14, 0, sizeof(v14));
    }

    return sub_245778F94(v14, &unk_27EE292B0, &unk_2459170A0);
  }

  return result;
}

uint64_t sub_2457A06A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2457AA3F0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_2458B7C8C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_245778F94(a1, &unk_27EE292B0, &unk_2459170A0);
    sub_2457A9440(a2, a3, v9);

    return sub_245778F94(v9, &unk_27EE292B0, &unk_2459170A0);
  }

  return result;
}

uint64_t sub_2457A0778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_2458B7F54(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_24588C5BC(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_24580D364();
        v16 = v18;
      }

      result = sub_2457A9808(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_2457A0880(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29060, &unk_24591CAE0);
    v2 = sub_245911624();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 4 * v13);
    sub_2457816F0(*(a1 + 56) + 32 * v13, v33 + 8);
    LODWORD(v33[0]) = v14;
    v31[0] = v33[0];
    v31[1] = v33[1];
    v32 = v34;
    LODWORD(v30[0]) = v14;
    swift_dynamicCast();
    sub_2457AA3F0((v31 + 8), v25);
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2457AA3F0(v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2457AA3F0(v29, v30);
    result = sub_245911464();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_2457AA3F0(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2457A0B5C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457AA4A4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29078, &qword_2459170E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457AA4A0;
  v0[13] = &block_descriptor_81;
  v0[14] = v2;
  [v1 getGlobalProgenitorKeyAttestation_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A0C9C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457AA4A4;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29078, &qword_2459170E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457AA4A0;
  v0[13] = &block_descriptor_77;
  v0[14] = v2;
  [v1 getGlobalThirdPartyProgenitorKeyAttestation_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A0DDC()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457A0EF8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29070, &qword_2459170E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A1038;
  v0[13] = &block_descriptor_73;
  v0[14] = v2;
  [v1 bioBindingUnboundACL_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A0EF8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 144);
    v7 = *(v2 + 152);
    v8 = *(v3 + 8);

    return v8(v6, v7);
  }
}

uint64_t sub_2457A1038(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_24590C154();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2457A1144()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457AA494;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29070, &qword_2459170E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457A1038;
  v0[13] = &block_descriptor_69;
  v0[14] = v2;
  [v1 passcodeBindingUnboundACL_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A1260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a1;
  v4[19] = a2;
  v5 = *v3;
  v4[20] = a3;
  v4[21] = v5;
  return MEMORY[0x2822009F8](sub_2457A1288, 0, 0);
}

uint64_t sub_2457A1288()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = sub_24590C144();
  v0[22] = v3;
  v0[2] = v0;
  v0[3] = sub_2457A13BC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE28FF0, &qword_2459170D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24579D0B4;
  v0[13] = &block_descriptor_65;
  v0[14] = v4;
  [v2 setGlobalAuthACL:v3 ofType:v1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A13BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 176);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2457A1500()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2457A161C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE29068, &qword_2459170D8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2457AA4A0;
  v0[13] = &block_descriptor_61;
  v0[14] = v2;
  [v1 globalAuthACLWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2457A161C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v1 + 144);
    v6 = *(v2 + 8);

    return v6(v5);
  }
}

uint64_t sub_2457A175C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE292C0, &qword_245916E90);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2457A182C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2457A18F4;

  return sub_2457A99B8(a1, a2, a3);
}

uint64_t sub_2457A18F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2457A19E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2457A1AA4;

  return sub_2457A9C18(a1, a2);
}

uint64_t sub_2457A1AA4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2457A1BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2457AA4A8;

  return sub_2457A9EE4(a1, a2, a3);
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_2457A1CA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_2457A1CE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2457A1D5C@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  result = sub_2457AA400();
  a1[3] = result;
  a1[4] = &off_285884750;
  *a1 = v2;
  return result;
}

uint64_t sub_2457A1DB0()
{
  v1[2] = v0;
  v2 = sub_24590EA74();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_24590C544();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_24590C4E4();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_24590F354();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A1FC0, 0, 0);
}

uint64_t sub_2457A1FC0(uint64_t a1)
{
  sub_24590C714();
  v2 = sub_24590F344();
  v3 = sub_245910F44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_245767000, v2, v3, "Enrolling in biometric binding", v4, 2u);
    MEMORY[0x245D77B40](v4, -1, -1);
  }

  v5 = v1[19];
  v6 = v1[13];
  v7 = v1[14];

  v8 = *(v7 + 8);
  v1[20] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[21] = v9;
  *v9 = v1;
  v9[1] = sub_2457A20F4;

  return sub_2457A44D0();
}

uint64_t sub_2457A20F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = *v5;
  *(v6 + 176) = a1;
  *(v6 + 184) = a2;
  *(v6 + 377) = a4;
  *(v6 + 192) = a3;
  *(v6 + 200) = v4;

  if (v4)
  {
    v7 = sub_2457A3B00;
  }

  else
  {
    v7 = sub_2457A2210;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2457A2210(uint64_t a1)
{
  v2 = v1[23];
  if (v2 >> 60 == 15)
  {
    sub_24590C714();
    v3 = sub_24590F344();
    v4 = sub_245910F44();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_245767000, v3, v4, "enroll: fetching unbound ACL", v5, 2u);
      MEMORY[0x245D77B40](v5, -1, -1);
    }

    v6 = v1[20];
    v7 = v1[17];
    v8 = v1[13];

    v6(v7, v8);
    v9 = swift_task_alloc();
    v1[29] = v9;
    *v9 = v1;
    v9[1] = sub_2457A2D9C;

    return sub_2457A4984();
  }

  else
  {
    v11 = v1[2];
    sub_24578FB6C(v1[22], v2);
    v12 = swift_task_alloc();
    v1[26] = v12;
    *(v12 + 16) = v11;
    v13 = swift_task_alloc();
    v1[27] = v13;
    *v13 = v1;
    v13[1] = sub_2457A242C;
    v14 = MEMORY[0x277D839B0];
    v15 = MEMORY[0x277D839B0];
    v16 = MEMORY[0x277D839B0];

    return MEMORY[0x282200740](v1 + 47, v14, v15, 0, 0, &unk_245917048, v12, v16);
  }
}

uint64_t sub_2457A242C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_2457A2B98;
  }

  else
  {

    v2 = sub_2457A2548;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A2548(uint64_t a1)
{
  v46 = v1;
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  if (*(v1 + 376) == 1)
  {
    sub_24590C714();
    sub_24578FB6C(v3, v2);
    v4 = sub_24590F344();
    v5 = sub_245910F44();
    sub_245771C44(v3, v2);
    if (os_log_type_enabled(v4, v5))
    {
      v44 = *(v1 + 160);
      v6 = *(v1 + 144);
      v7 = *(v1 + 104);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v45 = v9;
      *v8 = 136315138;
      v10 = sub_24590C0D4();
      v12 = sub_2458CC378(v10, v11, &v45);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_245767000, v4, v5, "enroll: existing bound ACL is being used, stripping bound ACL = %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x245D77B40](v9, -1, -1);
      MEMORY[0x245D77B40](v8, -1, -1);

      v44(v6, v7);
    }

    else
    {
      v21 = *(v1 + 160);
      v22 = *(v1 + 144);
      v23 = *(v1 + 104);

      v21(v22, v23);
    }

    __swift_project_boxed_opaque_existential_1((*(v1 + 16) + 104), *(*(v1 + 16) + 128));
    if (sub_24590DB14())
    {
      v24 = *(v1 + 224);
      sub_24590C844();
      swift_allocObject();
      sub_24590C834();
      v25 = sub_24590C824();
      v27 = v26;
      v29 = *(v1 + 176);
      v28 = *(v1 + 184);
      if (v24)
      {
        v30 = *(v1 + 184);
        sub_245771C44(*(v1 + 176), v28);
        sub_245771C44(v29, v30);

        (*(*(v1 + 32) + 104))(*(v1 + 40), *MEMORY[0x277CFF920], *(v1 + 24));
        v31 = v24;
        sub_2458CC8AC(MEMORY[0x277D84F90]);
        sub_24590EA84();
        sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
        swift_allocError();
        sub_24590EA94();
        swift_willThrow();

        v32 = *(v1 + 8);

        return v32();
      }

      v33 = v25;
      sub_245771C44(*(v1 + 176), v28);
    }

    else
    {
      v33 = *(v1 + 176);
      v27 = *(v1 + 184);
    }

    if (*(v1 + 377))
    {
      v34 = 1;
    }

    else
    {
      v34 = *(v1 + 192);
    }

    *(v1 + 280) = v33;
    *(v1 + 288) = v27;
    *(v1 + 378) = 0;
    *(v1 + 272) = v34;
    sub_24590C6C4();
    v35 = sub_2457AF7E0();
    sub_2457AFA74();
    if (v35)
    {
      if (v35 == 1)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v39 = 0;
      }

      else
      {
        v38 = sub_2457AF608(4u);
        v39 = v42;
        v36 = 0;
        v37 = 0;
      }
    }

    else
    {
      v38 = sub_2457AF608(0);
      v39 = v40;
      v36 = sub_2457AF608(2u);
      v37 = v41;
    }

    *(v1 + 296) = v37;
    *(v1 + 304) = v39;
    v43 = swift_task_alloc();
    *(v1 + 312) = v43;
    *v43 = v1;
    v43[1] = sub_2457A305C;

    return sub_2457A5284(v33, v27, v38, v39, v36, v37);
  }

  else
  {
    sub_245771C44(*(v1 + 176), *(v1 + 184));
    sub_24590C714();
    v13 = sub_24590F344();
    v14 = sub_245910F44();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245767000, v13, v14, "enroll: fetching unbound ACL", v15, 2u);
      MEMORY[0x245D77B40](v15, -1, -1);
    }

    v16 = *(v1 + 160);
    v17 = *(v1 + 136);
    v18 = *(v1 + 104);

    v16(v17, v18);
    v19 = swift_task_alloc();
    *(v1 + 232) = v19;
    *v19 = v1;
    v19[1] = sub_2457A2D9C;

    return sub_2457A4984();
  }
}

uint64_t sub_2457A2B98()
{
  v1 = v0[22];
  v2 = v0[23];

  sub_245771C44(v1, v2);
  sub_245771C44(v1, v2);
  v3 = v0[28];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v4 = v3;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2457A2D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 240) = v3;

  if (v3)
  {
    v9 = sub_2457A3CE0;
  }

  else
  {
    v8[31] = a3;
    v8[32] = a2;
    v8[33] = a1;
    v9 = sub_2457A2ED8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2457A2ED8()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  *(v0 + 280) = v2;
  *(v0 + 288) = v1;
  *(v0 + 378) = 1;
  *(v0 + 272) = v3;
  sub_24590C6C4();
  v4 = sub_2457AF7E0();
  v5 = sub_2457AFA74();
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = sub_2457AF608(4u);
      v9 = v15;
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v10 = v5 <= 1;
    v11 = v5 > 1;
    if (v10)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    v8 = sub_2457AF608(v11);
    v9 = v13;
    v6 = sub_2457AF608(v12);
    v7 = v14;
  }

  *(v0 + 296) = v7;
  *(v0 + 304) = v9;
  v16 = swift_task_alloc();
  *(v0 + 312) = v16;
  *v16 = v0;
  v16[1] = sub_2457A305C;

  return sub_2457A5284(v2, v1, v8, v9, v6, v7);
}

uint64_t sub_2457A305C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[40] = a1;
  v4[41] = a2;
  v4[42] = v2;

  if (v2)
  {
    v5 = sub_2457A3EC8;
  }

  else
  {
    v5 = sub_2457A31B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2457A31B8(uint64_t a1)
{
  if (*(v1 + 378) == 1)
  {
    sub_24590C714();
    v2 = sub_24590F344();
    v3 = sub_245910F44();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_245767000, v2, v3, "enroll: setting new bound ACL", v4, 2u);
      MEMORY[0x245D77B40](v4, -1, -1);
    }

    v5 = *(v1 + 160);
    v6 = *(v1 + 128);
    v7 = *(v1 + 104);
    v8 = *(v1 + 16);

    v5(v6, v7);
    v9 = v8[4];
    v10 = v8[5];
    __swift_project_boxed_opaque_existential_1(v8 + 1, v9);
    v29 = (*(v10 + 40) + **(v10 + 40));
    v11 = swift_task_alloc();
    *(v1 + 344) = v11;
    *v11 = v1;
    v11[1] = sub_2457A3550;
    v12 = *(v1 + 328);
    v13 = *(v1 + 272);
    v14 = *(v1 + 320);
    v15 = v9;
    v16 = v10;
    v17 = v29;
  }

  else
  {
    sub_24590C714();
    v18 = sub_24590F344();
    v19 = sub_245910F44();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_245767000, v18, v19, "enroll: reusing ACL", v20, 2u);
      MEMORY[0x245D77B40](v20, -1, -1);
    }

    v21 = *(v1 + 160);
    v22 = *(v1 + 120);
    v23 = *(v1 + 104);
    v24 = *(v1 + 16);

    v21(v22, v23);
    v25 = v24[4];
    v26 = v24[5];
    __swift_project_boxed_opaque_existential_1(v24 + 1, v25);
    v30 = (*(v26 + 56) + **(v26 + 56));
    v27 = swift_task_alloc();
    *(v1 + 360) = v27;
    *v27 = v1;
    v27[1] = sub_2457A3828;
    v14 = 0;
    v12 = 0xF000000000000000;
    v13 = 1;
    v15 = v25;
    v16 = v26;
    v17 = v30;
  }

  return v17(v14, v12, v13, v15, v16);
}

uint64_t sub_2457A3550()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_2457A40C0;
  }

  else
  {
    v2 = sub_2457A3664;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A3664(uint64_t a1)
{
  v2 = v1[10];
  v3 = sub_2457AF7E0();
  v5 = v1[40];
  v4 = v1[41];
  v14 = v1[35];
  v15 = v1[36];
  v16 = v1[22];
  v17 = v1[23];
  v6 = v1[12];
  v7 = v1[9];
  v8 = v1[10];
  v10 = v1[7];
  v9 = v1[8];
  v11 = v1[6];
  (*(v2 + 104))(v6, **(&unk_278E874F8 + v3), v7);
  sub_24590C594();
  (*(v10 + 104))(v9, *MEMORY[0x277CFF378], v11);
  sub_24590C584();
  sub_24578FC28(v5, v4);
  sub_24578FC28(v14, v15);
  sub_245771C44(v16, v17);
  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);

  v12 = v1[1];

  return v12();
}

uint64_t sub_2457A3828()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_2457A42C8;
  }

  else
  {
    v2 = sub_2457A393C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2457A393C(uint64_t a1)
{
  v2 = v1[10];
  v3 = sub_2457AF7E0();
  v5 = v1[40];
  v4 = v1[41];
  v14 = v1[35];
  v15 = v1[36];
  v16 = v1[22];
  v17 = v1[23];
  v6 = v1[11];
  v7 = v1[9];
  v8 = v1[10];
  v10 = v1[7];
  v9 = v1[8];
  v11 = v1[6];
  (*(v2 + 104))(v6, **(&unk_278E874F8 + v3), v7);
  sub_24590C594();
  (*(v10 + 104))(v9, *MEMORY[0x277CFF370], v11);
  sub_24590C584();
  sub_24578FC28(v5, v4);
  sub_24578FC28(v14, v15);
  sub_245771C44(v16, v17);
  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);

  v12 = v1[1];

  return v12();
}

uint64_t sub_2457A3B00()
{
  v1 = v0[25];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v2 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2457A3CE0()
{
  sub_245771C44(v0[22], v0[23]);
  v1 = v0[30];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v2 = v1;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2457A3EC8()
{
  v1 = v0[35];
  v2 = v0[36];
  sub_245771C44(v0[22], v0[23]);
  sub_24578FC28(v1, v2);
  v3 = v0[42];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v4 = v3;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_2457A40C0()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  sub_245771C44(v0[22], v0[23]);
  sub_24578FC28(v1, v2);
  sub_24578FC28(v4, v3);
  v5 = v0[44];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v6 = v5;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2457A42C8()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[35];
  v3 = v0[36];
  sub_245771C44(v0[22], v0[23]);
  sub_24578FC28(v1, v2);
  sub_24578FC28(v4, v3);
  v5 = v0[46];
  (*(v0[4] + 104))(v0[5], *MEMORY[0x277CFF920], v0[3]);
  v6 = v5;
  sub_2458CC8AC(MEMORY[0x277D84F90]);
  sub_24590EA84();
  sub_2457AA3A8(&qword_27EE2BC40, MEMORY[0x277CFFE30], MEMORY[0x277CFFE38]);
  swift_allocError();
  sub_24590EA94();
  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_2457A44D0()
{
  v1[2] = v0;
  v2 = sub_24590F354();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2457A4590, 0, 0);
}