void sub_1AB427338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v10 = v58;
  if (v58)
  {
    v11 = *(&v58 + 1);
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
    *&v61 = sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
    sub_1AB04E498();
    v12 = sub_1AB460484();
    v14 = v13;

    MEMORY[0x1AC59BA20](v12, v14);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);
    v10(&v58);
    sub_1AB0177B8(v10, v11);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v58 = 0;
    *(&v58 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
    *&v61 = sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
    sub_1AB04E498();
    v15 = sub_1AB460484();
    v17 = v16;

    MEMORY[0x1AC59BA20](v15, v17);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);
    v18 = v58;
    v19 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v20 = sub_1AB461324();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v58 = v22;
      *v21 = 136446722;
      v23 = sub_1AB461614();
      v25 = sub_1AB030D2C(v23, v24, &v58);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2050;
      *(v21 + 14) = a4;
      *(v21 + 22) = 2082;
      v26 = sub_1AB030D2C(v18, *(&v18 + 1), &v58);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_1AB012000, v20, v19, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v22, -1, -1);
      MEMORY[0x1AC59F020](v21, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v27 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1AB4D4720;
      v64 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v29);
      v63 = MEMORY[0x1E69E6A70];
      *&v61 = a1;
      *(&v61 + 1) = a2;
      v62 = v7;
      sub_1AB01522C(&v61, v57);
      v58 = 0u;
      v59 = 0u;
      sub_1AB0169C4(v57, &v58);
      v60 = 0;
      v30 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
        v64 = v30;
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v33 = &v30[40 * v32];
      v34 = v58;
      v35 = v59;
      v33[64] = v60;
      *(v33 + 2) = v34;
      *(v33 + 3) = v35;
      v64 = v30;
      sub_1AB0167A8(&v61);
      v36._countAndFlagsBits = 58;
      v36._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v36);
      v63 = MEMORY[0x1E69E6810];
      *&v61 = a4;
      sub_1AB01522C(&v61, v57);
      v58 = 0u;
      v59 = 0u;
      sub_1AB0169C4(v57, &v58);
      v60 = 0;
      v37 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_1AB0168A8(0, *(v37 + 2) + 1, 1, v37);
        v64 = v37;
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = sub_1AB0168A8((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      v40 = &v37[40 * v39];
      v41 = v58;
      v42 = v59;
      v40[64] = v60;
      *(v40 + 2) = v41;
      *(v40 + 3) = v42;
      v64 = v37;
      sub_1AB0167A8(&v61);
      v43._countAndFlagsBits = 0xD00000000000001BLL;
      v43._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *&v58 = 0;
      *(&v58 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
      *&v61 = sub_1AB405430(a5);

      sub_1AB414BA4(sub_1AB361354, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
      sub_1AB04E498();
      v44 = sub_1AB460484();
      v46 = v45;

      MEMORY[0x1AC59BA20](v44, v46);

      MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);
      v63 = MEMORY[0x1E69E6158];
      v61 = v58;
      sub_1AB01522C(&v61, v57);
      v58 = 0u;
      v59 = 0u;
      sub_1AB0169C4(v57, &v58);
      v60 = 0;
      v47 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1AB0168A8(0, *(v47 + 2) + 1, 1, v47);
      }

      v49 = *(v47 + 2);
      v48 = *(v47 + 3);
      if (v49 >= v48 >> 1)
      {
        v47 = sub_1AB0168A8((v48 > 1), v49 + 1, 1, v47);
      }

      *(v47 + 2) = v49 + 1;
      v50 = &v47[40 * v49];
      v51 = v58;
      v52 = v59;
      v50[64] = v60;
      *(v50 + 2) = v51;
      *(v50 + 3) = v52;
      v64 = v47;
      sub_1AB0167A8(&v61);
      v53._countAndFlagsBits = 0;
      v53._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v53);
      *(v28 + 32) = v64;
      *&v58 = v27;
      LOBYTE(v61) = 0;
      OSLogger.log(contentsOf:withLevel:)(v28, &v61);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x27207365707954, 0xE700000000000000);
    sub_1AB405430(a5);

    sub_1AB414BA4(sub_1AB361354, 0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
    sub_1AB04E498();
    v54 = sub_1AB460484();
    v56 = v55;

    MEMORY[0x1AC59BA20](v54, v56);

    MEMORY[0x1AC59BA20](0xD00000000000002ALL, 0x80000001AB50E9A0);

    sub_1AB461884();
    __break(1u);
  }
}

void sub_1AB427D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  if (qword_1EB435DF8 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v12 = v48;
  if (v48)
  {
    v13 = *(&v48 + 1);
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
    *&v51 = a5;
    *(&v51 + 1) = a6;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
    v12(&v48);
    sub_1AB0177B8(v12, v13);
LABEL_26:

    return;
  }

  if (qword_1EB435DF0 != -1)
  {
    swift_once();
  }

  if (byte_1EB43D128 == 1)
  {
    *&v48 = 0;
    *(&v48 + 1) = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
    *&v51 = a5;
    *(&v51 + 1) = a6;
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
    v14 = v48;
    v15 = sub_1AB461084();
    sub_1AB016760(0, &qword_1ED4D21E0, 0x1E69E9BF8);
    v16 = sub_1AB461324();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v48 = v18;
      *v17 = 136446722;
      v19 = sub_1AB461614();
      v21 = sub_1AB030D2C(v19, v20, &v48);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2050;
      *(v17 + 14) = a4;
      *(v17 + 22) = 2082;
      v22 = sub_1AB030D2C(v14, *(&v14 + 1), &v48);

      *(v17 + 24) = v22;
      _os_log_impl(&dword_1AB012000, v16, v15, "%{public}s:%{public}lu: Requirement unsatisfied: %{public}s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC59F020](v18, -1, -1);
      MEMORY[0x1AC59F020](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (byte_1EB43D128 == 2)
    {
      if (qword_1EB435660 != -1)
      {
        swift_once();
      }

      v23 = qword_1EB435668;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      v54 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v25);
      v53 = MEMORY[0x1E69E6A70];
      *&v51 = a1;
      *(&v51 + 1) = a2;
      v52 = v9;
      sub_1AB01522C(&v51, v47);
      v48 = 0u;
      v49 = 0u;
      sub_1AB0169C4(v47, &v48);
      v50 = 0;
      v26 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1AB0168A8(0, *(v26 + 2) + 1, 1, v26);
        v54 = v26;
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1AB0168A8((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[40 * v28];
      v30 = v48;
      v31 = v49;
      v29[64] = v50;
      *(v29 + 2) = v30;
      *(v29 + 3) = v31;
      v54 = v26;
      sub_1AB0167A8(&v51);
      v32._countAndFlagsBits = 58;
      v32._object = 0xE100000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v53 = MEMORY[0x1E69E6810];
      *&v51 = a4;
      sub_1AB01522C(&v51, v47);
      v48 = 0u;
      v49 = 0u;
      sub_1AB0169C4(v47, &v48);
      v50 = 0;
      v33 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_1AB0168A8(0, *(v33 + 2) + 1, 1, v33);
        v54 = v33;
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      if (v35 >= v34 >> 1)
      {
        v33 = sub_1AB0168A8((v34 > 1), v35 + 1, 1, v33);
      }

      *(v33 + 2) = v35 + 1;
      v36 = &v33[40 * v35];
      v37 = v48;
      v38 = v49;
      v36[64] = v50;
      *(v36 + 2) = v37;
      *(v36 + 3) = v38;
      v54 = v33;
      sub_1AB0167A8(&v51);
      v39._countAndFlagsBits = 0xD00000000000001BLL;
      v39._object = 0x80000001AB50E540;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      *&v48 = 0;
      *(&v48 + 1) = 0xE000000000000000;
      sub_1AB4615D4();
      MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
      *&v51 = a5;
      *(&v51 + 1) = a6;
      sub_1AB461824();
      MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);
      v53 = MEMORY[0x1E69E6158];
      v51 = v48;
      sub_1AB01522C(&v51, v47);
      v48 = 0u;
      v49 = 0u;
      sub_1AB0169C4(v47, &v48);
      v50 = 0;
      v40 = v54;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_1AB0168A8(0, *(v40 + 2) + 1, 1, v40);
        v54 = v40;
      }

      v42 = *(v40 + 2);
      v41 = *(v40 + 3);
      if (v42 >= v41 >> 1)
      {
        v40 = sub_1AB0168A8((v41 > 1), v42 + 1, 1, v40);
      }

      *(v40 + 2) = v42 + 1;
      v43 = &v40[40 * v42];
      v44 = v48;
      v45 = v49;
      v43[64] = v50;
      *(v43 + 2) = v44;
      *(v43 + 3) = v45;
      v54 = v40;
      sub_1AB0167A8(&v51);
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v46);
      *(v24 + 32) = v54;
      *&v48 = v23;
      LOBYTE(v51) = 0;
      OSLogger.log(contentsOf:withLevel:)(v24, &v51);
      goto LABEL_26;
    }

    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000017, 0x80000001AB50E5F0);
    sub_1AB461824();
    MEMORY[0x1AC59BA20](0x7865206572612060, 0xEF64657473756168);

    sub_1AB461884();
    __break(1u);
  }
}

uint64_t sub_1AB428540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1AB4602F4();

  v2(v3);
}

char *sub_1AB4285C4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_1AB45F764();
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1AB3B28D4(a1);
  if (!result)
  {
    return 0;
  }

  v49 = *(result + 2);
  if (!v49)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_30:

    return v12;
  }

  v10 = 0;
  v46 = (v44 + 32);
  v47 = (v44 + 48);
  v41 = " to the default." & 0x2F00000000000000;
  v39 = 0x80000001AB50EFD0;
  v11 = result + 40;
  v12 = MEMORY[0x1E69E7CC0];
  v45 = xmmword_1AB4D4720;
  v40 = a2;
  v48 = result;
  v43 = v6;
  v42 = v7;
  while (v10 < *(result + 2))
  {

    sub_1AB45F714();
    if ((*v47)(v6, 1, v7) == 1)
    {
      sub_1AB014AC0(v6, &unk_1EB4395B0, &qword_1AB4D6720);
      if (qword_1EB435688 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v13 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v14 = swift_allocObject();
      *(v14 + 16) = v45;
      v15 = sub_1AB0168A8(0, 66, 0, MEMORY[0x1E69E7CC0]);
      if (v41 != 0x2000000000000000)
      {
        v53 = MEMORY[0x1E69E6158];
        v52[0] = 0xD000000000000041;
        v52[1] = v39;
        v54 = 0u;
        v55 = 0u;
        sub_1AB0169C4(v52, &v54);
        v56 = 0;
        v17 = *(v15 + 2);
        v16 = *(v15 + 3);
        if (v17 >= v16 >> 1)
        {
          v15 = sub_1AB0168A8((v16 > 1), v17 + 1, 1, v15);
        }

        *(v15 + 2) = v17 + 1;
        v18 = &v15[40 * v17];
        v19 = v54;
        v20 = v55;
        v18[64] = v56;
        *(v18 + 2) = v19;
        *(v18 + 3) = v20;
      }

      type metadata accessor for AMSBagKey(0);
      v53 = v21;
      v52[0] = a2;
      sub_1AB01522C(v52, v51);
      v54 = 0u;
      v55 = 0u;
      v22 = a2;
      sub_1AB0169C4(v51, &v54);
      v56 = 0;
      v24 = *(v15 + 2);
      v23 = *(v15 + 3);
      if (v24 >= v23 >> 1)
      {
        v15 = sub_1AB0168A8((v23 > 1), v24 + 1, 1, v15);
      }

      *(v15 + 2) = v24 + 1;
      v25 = &v15[40 * v24];
      v26 = v54;
      v27 = v55;
      v25[64] = v56;
      *(v25 + 2) = v26;
      *(v25 + 3) = v27;
      sub_1AB014AC0(v52, &unk_1EB437E60, &qword_1AB4D4730);
      *(v14 + 32) = v15;
      v28 = sub_1AB461074();
      if (os_log_type_enabled(v13, v28))
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
        *&v54 = v14;
        *(&v54 + 1) = sub_1AB01A8D8;
        *&v55 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
        sub_1AB016A34();
        v32 = sub_1AB460484();
        v34 = v33;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
        v35 = swift_allocObject();
        *(v35 + 16) = v45;
        *(v35 + 56) = MEMORY[0x1E69E6158];
        *(v35 + 64) = sub_1AB016854();
        *(v35 + 32) = v32;
        *(v35 + 40) = v34;
        sub_1AB45FF14("%{public}@", 10, 2, &dword_1AB012000, v13, v28, v35);

        a2 = v40;
      }

      else
      {
      }

      v6 = v43;

      v7 = v42;
    }

    else
    {

      v36 = *v46;
      (*v46)(v50, v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB2B1828(0, *(v12 + 2) + 1, 1, v12);
      }

      v38 = *(v12 + 2);
      v37 = *(v12 + 3);
      if (v38 >= v37 >> 1)
      {
        v12 = sub_1AB2B1828((v37 > 1), v38 + 1, 1, v12);
      }

      *(v12 + 2) = v38 + 1;
      v36(&v12[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38], v50, v7);
    }

    result = v48;
    ++v10;
    v11 += 2;
    if (v49 == v10)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

char *sub_1AB428C48(uint64_t a1, void *a2)
{
  v38[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    if (qword_1EB435688 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1AB4D4720;
    v31 = sub_1AB0168A8(0, 86, 0, MEMORY[0x1E69E7CC0]);
    v21._object = 0x80000001AB50F020;
    v21._countAndFlagsBits = 0xD000000000000055;
    LogMessage.StringInterpolation.appendLiteral(_:)(v21);
    type metadata accessor for AMSBagKey(0);
    v38[3] = v22;
    v38[0] = a2;
    sub_1AB01522C(v38, v37);
    aBlock = 0u;
    v34 = 0u;
    v23 = a2;
    sub_1AB0169C4(v37, &aBlock);
    LOBYTE(v35) = 0;
    v24 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1AB0168A8(0, *(v31 + 2) + 1, 1, v31);
    }

    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_1AB0168A8((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[40 * v26];
    v28 = aBlock;
    v29 = v34;
    v27[64] = v35;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    sub_1AB014AC0(v38, &unk_1EB437E60, &qword_1AB4D4730);
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v30);
    *(v20 + 32) = v24;
    *&aBlock = v32;
    LOBYTE(v38[0]) = 3;
    OSLogger.log(contentsOf:withLevel:)(v20, v38);

    return 0;
  }

  v4 = v3;
  ObjCClassFromObject = swift_getObjCClassFromObject();
  swift_unknownObjectRetain();
  v38[0] = [ObjCClassFromObject uninitializedToken];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = sub_1AB460544();
  *(inited + 40) = v7;
  sub_1AB0550D0(inited);
  swift_setDeallocating();
  sub_1AB0589A8(inited + 32);
  v8 = sub_1AB460E34();

  v35 = nullsub_1;
  v36 = 0;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v34 = sub_1AB428540;
  *(&v34 + 1) = &block_descriptor_48;
  v9 = _Block_copy(&aBlock);
  v10 = [v4 cachedValuesForKeys:v8 observationToken:v38 updateHandler:v9];
  _Block_release(v9);

  v11 = sub_1AB4602F4();
  [v4 removeObserverWithToken_];
  v12 = sub_1AB460544();
  if (*(v11 + 16))
  {
    v14 = sub_1AB014DB4(v12, v13);
    v16 = v15;

    if (v16)
    {
      sub_1AB0165C4(*(v11 + 56) + 32 * v14, &aBlock);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8, &qword_1AB4D4400);
      if (swift_dynamicCast())
      {
        v17 = sub_1AB24FAF4(v37[0]);

        v18 = sub_1AB4285C4(v17, a2);

        swift_unknownObjectRelease();
        return v18;
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

LABEL_15:
  swift_unknownObjectRelease();
  return 0;
}

uint64_t JSONDictionary.compactMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v11);
  return (*(v12 + 48))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t JSONDictionary.bridgedPrimitiveValues<A, B>()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v7);
  return (*(v8 + 32))(a1, a2, a3, v7, v8);
}

uint64_t JSONDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t JSONDictionary.isEmpty.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 8))(v1, v2) & 1;
}

uint64_t JSONDictionary.count.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t JSONDictionary.map<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v11);
  return (*(v12 + 40))(a1, a2, a3, a4, a5, v11, v12);
}

uint64_t JSONDictionary.flatMap<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = v5[3];
  v12 = v5[4];
  __swift_project_boxed_opaque_existential_1Tm(v5, v11);
  return (*(v12 + 48))(a1, a2, a3, a4, a5, v11, v12);
}

double sub_1AB42948C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *&v16 = a5;
  *(&v16 + 1) = MEMORY[0x1E69E7CC0];

  sub_1AB06F948(v12, sub_1AB06E6CC, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A0B0, &unk_1AB4D61F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  sub_1AB01522C(a3, v15);
  AutomationAttribute.init(key:value:)(25705, 0xE200000000000000, v15, (inited + 32));
  sub_1AB01522C(a4, v15);
  AutomationAttribute.init(key:value:)(0x6449746E65726170, 0xE800000000000000, v15, (inited + 64));
  v15[0] = v16;
  sub_1AB05ED60(inited);
  result = *v15;
  *a6 = v15[0];
  return result;
}

uint64_t sub_1AB4295F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695E480];
  v8 = sub_1AB45F834();
  v9 = SecCertificateCreateWithData(v7, v8);

  if (!v9)
  {
    sub_1AB429A08();
    v10 = swift_allocError();
    *v11 = 0;
    swift_willThrow();
LABEL_4:
    error = 0;
    v32 = 0xE000000000000000;
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0xD000000000000026, 0x80000001AB50F080);
    swift_getErrorValue();
    sub_1AB461D64();
    sub_1AB31D6E0(error, v32);

    return 0;
  }

  v13 = sub_1AB429AA0(v9);
  v14 = SecTrustCopyKey(v13);
  if (!v14)
  {
    sub_1AB31D6E0(0xD00000000000002ALL, 0x80000001AB50F0B0);
    sub_1AB429A08();
    v10 = swift_allocError();
    *v19 = 0;
    swift_willThrow();

    goto LABEL_4;
  }

  v15 = v14;
  if (qword_1EB4345B8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB435008;
  if (!SecKeyIsAlgorithmSupported(v15, kSecKeyOperationTypeVerify, qword_1EB435008))
  {
    sub_1AB429A08();
    v10 = swift_allocError();
    *v20 = 1;
    swift_willThrow();

    goto LABEL_4;
  }

  algorithm = v16;
  v17 = sub_1AB429BE0(a2, a3);
  v21 = v17;
  v22 = v18;
  sub_1AB017200(v17, v18);
  sub_1AB017200(v21, v22);
  sub_1AB4615D4();

  v32 = 0x80000001AB50F0E0;
  v23 = sub_1AB45F844();
  MEMORY[0x1AC59BA20](v23);

  sub_1AB31D8B0(0xD00000000000001FLL, 0x80000001AB50F0E0);

  error = 0;
  v24 = sub_1AB45F834();
  v25 = sub_1AB45F834();
  v26 = SecKeyVerifySignature(v15, algorithm, v24, v25, &error);
  sub_1AB017254(v21, v22);

  sub_1AB017254(v21, v22);
  if (!v26)
  {
    v27 = error;
    if (error)
    {
      type metadata accessor for CFError(0);
      sub_1AB17A470();
      v10 = swift_allocError();
      *v28 = v27;
    }

    else
    {
      sub_1AB429A08();
      v10 = swift_allocError();
      *v29 = 2;
    }

    swift_willThrow();

    goto LABEL_4;
  }

  return 1;
}

unint64_t sub_1AB429A08()
{
  result = qword_1EB43D148;
  if (!qword_1EB43D148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D148);
  }

  return result;
}

uint64_t sub_1AB429A5C()
{
  result = sub_1AB069E84(&unk_1F1FF3D60);
  qword_1EB435010 = result;
  *algn_1EB435018 = v1;
  return result;
}

SecTrustRef sub_1AB429AA0(void *a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437548, &qword_1AB4D7F30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1AB4DE160;
  *(v2 + 32) = a1;
  type metadata accessor for SecCertificate(0);
  v3 = a1;
  v4 = sub_1AB460934();

  v5 = SecTrustCreateWithCertificates(v4, 0, v10);

  v6 = v10[0];
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v10[0] == 0;
  }

  if (v7)
  {
    sub_1AB31D6E0(0xD00000000000002ELL, 0x80000001AB50F100);
    sub_1AB429A08();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
  }

  return v6;
}

unint64_t sub_1AB429BE0(void *a1, uint64_t a2)
{
  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  CC_SHA256_Init(v6);
  while (1)
  {
    v7 = a1[3];
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v7);
    if (((*(v8 + 8))(v7, v8) & 1) == 0)
    {
      v13 = sub_1AB4609B4();
      *(v13 + 16) = 32;
      *(v13 + 48) = 0u;
      *(v13 + 32) = 0u;
      CC_SHA256_Final((v13 + 32), v6);
      v11 = sub_1AB069E84(v13);

LABEL_8:
      MEMORY[0x1AC59F020](v6, -1, -1);
      MEMORY[0x1AC59F020](v5, -1, -1);
      return v11;
    }

    v9 = a1[3];
    v10 = a1[4];
    v11 = __swift_project_boxed_opaque_existential_1Tm(a1, v9);
    result = (*(v10 + 32))(v5, a2, v9, v10);
    if (v2)
    {
      goto LABEL_8;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(result))
    {
      goto LABEL_10;
    }

    CC_SHA256_Update(v6, v5, result);
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t JetpackSignatureVerifierError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

unint64_t sub_1AB429E3C()
{
  result = qword_1EB43D150;
  if (!qword_1EB43D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D150);
  }

  return result;
}

uint64_t static _AutomationID.covering(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1AB4D4720;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = MEMORY[0x1E69E7CC0];
  *a3 = v6;
  a3[1] = v7;
}

uint64_t _AutomationID.attributes(_:)@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v2;
  a1[1] = v3;

  return sub_1AB05ED60(v4);
}

void _AutomationID.components(_:)(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v2;
  a1[1] = v3;

  sub_1AB06F948(v4, sub_1AB06E6CC, 0);
}

uint64_t _AutomationID.debugDescription.getter()
{
  sub_1AB4615D4();

  strcpy(v2, "_AutomationID(");
  v0 = _AutomationID.axElementID.getter();
  MEMORY[0x1AC59BA20](v0);

  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return v2[0];
}

uint64_t static _AutomationID.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1AB16D86C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1AB16D8FC(v2, v3);
}

uint64_t sub_1AB42A10C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1AB16D86C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1AB16D8FC(v2, v3);
}

uint64_t AutomationAttribute.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AutomationAttribute.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AutomationAttribute.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AutomationAttribute.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static AutomationAttribute.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1AB461DA4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AutomationAttribute.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1AB460684();
  if (!v2)
  {
    return sub_1AB4620C4();
  }

  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t AutomationAttribute.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB4620C4();
  if (v1)
  {
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t sub_1AB42A420(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_1AB461DA4() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AB42A4C0()
{
  v1 = *(v0 + 24);
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB4620C4();
  if (v1)
  {
    sub_1AB460684();
  }

  return sub_1AB462104();
}

uint64_t sub_1AB42A54C(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1AB460684();
  if (!v2)
  {
    return sub_1AB4620C4();
  }

  sub_1AB4620C4();

  return sub_1AB460684();
}

uint64_t sub_1AB42A5C8(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB4620C4();
  if (v2)
  {
    sub_1AB460684();
  }

  return sub_1AB462104();
}

unint64_t sub_1AB42A654()
{
  result = qword_1EB43D158;
  if (!qword_1EB43D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D158);
  }

  return result;
}

unint64_t sub_1AB42A6B8()
{
  result = qword_1ED4D0090;
  if (!qword_1ED4D0090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D160, &qword_1AB4FA648);
    sub_1AB05F57C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0090);
  }

  return result;
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v9, a2);
}

{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  *a3 = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 1);
  return (*(v6 + 32))(boxed_opaque_existential_0, v9, a2);
}

uint64_t Dependency._Personality.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t static Dependency.satisfying<A>(_:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a2;
  *a4 = a1;
  a4[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4 + 1);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_0, &v7, a3);
  return swift_unknownObjectRetain();
}

unint64_t sub_1AB42AB78()
{
  result = qword_1EB43D180;
  if (!qword_1EB43D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D180);
  }

  return result;
}

__n128 CompoundAction.init(actionMetrics:subactions:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t sub_1AB42ABF4()
{
  if (*v0)
  {
    return 0x6F69746361627573;
  }

  else
  {
    return 0x654D6E6F69746361;
  }
}

uint64_t sub_1AB42AC40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274;
  if (v6 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746361627573 && a2 == 0xEA0000000000736ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB42AD2C(uint64_t a1)
{
  v2 = sub_1AB42B030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB42AD68(uint64_t a1)
{
  v2 = sub_1AB42B030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompoundAction.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D188, &qword_1AB4FA770);
  v5 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v8 = sub_1AB42B030();
  sub_1AB462224();
  if (!v2)
  {
    v23 = v5;
    v26 = 0;
    sub_1AB24CE74();
    v9 = v24;
    sub_1AB461A54();
    v10 = v25[0];
    if (!v25[0])
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    v22 = v10;
    v11 = MEMORY[0x1E69E7CC8];
    if (v25[0])
    {
      v11 = v25[1];
    }

    v21 = v11;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v12 = sub_1AB462214();
    v13 = sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v12);
    v15 = v14;

    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = &type metadata for EmptyActionKindTable;
    }

    if (v13)
    {
      v17 = v15;
    }

    else
    {
      v17 = &off_1F200AB90;
    }

    LOBYTE(v25[0]) = 1;
    v18 = sub_1AB42B084(v16, v7, v25, v16, &type metadata for CompoundAction.CodingKeys, v17, v8);
    (*(v23 + 8))(v7, v9);
    v19 = v21;
    *a2 = v22;
    a2[1] = v19;
    a2[2] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB42B030()
{
  result = qword_1EB43D190;
  if (!qword_1EB43D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D190);
  }

  return result;
}

void *sub_1AB42B084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for _CodeByKind_Many(0, a4, *(a6 + 8), a4);
  sub_1AB461B04();
  swift_getWitnessTable();
  result = sub_1AB461AC4();
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t CompoundAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D198, &qword_1AB4FA778);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *v1;
  v8 = v1[1];
  v20 = v1[2];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v9 = sub_1AB42B030();

  v19 = v9;
  sub_1AB462274();
  v22[0] = v7;
  v22[1] = v8;
  v23 = 0;
  sub_1AB24CA70();
  v10 = v21;
  sub_1AB461BF4();

  if (!v10)
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    v11 = sub_1AB462264();
    v12 = sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v11);
    v14 = v13;

    if (v12)
    {
      v15 = v12;
    }

    else
    {
      v15 = &type metadata for EmptyActionKindTable;
    }

    if (v12)
    {
      v16 = v14;
    }

    else
    {
      v16 = &off_1F200AB90;
    }

    LOBYTE(v22[0]) = 1;
    sub_1AB42B36C(v20, v15, v6, v22, v15, &type metadata for CompoundAction.CodingKeys, v16, v19);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1AB42B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a7 + 8);
  _CodeByKind_Many.init(wrappedValue:)();
  sub_1AB461C14();
  type metadata accessor for _CodeByKind_Many(0, a5, v9, v10);

  swift_getWitnessTable();
  sub_1AB461BF4();
}

uint64_t CompoundAction.actionMetrics.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 CompoundAction.actionMetrics.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t CompoundAction.subactions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t CompoundAction.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x654D6E6F69746361, 0xED00007363697274, &v32);

  JSONObject.subscript.getter(1635017060, 0xE400000000000000, v31);

  v7 = sub_1AB37F7F4(v31, v6);
  JSONObject.subscript.getter(0x6D6F74737563, 0xE600000000000000, v31);
  v25[0] = v6;
  ScalarDictionary.init(tryDeserializing:using:)(v31, v25, &v28);
  sub_1AB066D84(&v32);
  v8 = v28;
  JSONObject.subscript.getter(0x6F69746361627573, 0xEA0000000000736ELL, v31);
  sub_1AB01EC0C(v31, v25);
  v9 = v26;
  if (!v26)
  {

    sub_1AB066D84(v31);
    sub_1AB014AC0(v25, &qword_1EB436BA0, &qword_1AB4D4F40);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
LABEL_7:
    sub_1AB014AC0(&v28, &qword_1EB437EF8, &qword_1AB4DBA50);
    sub_1AB163664();
    swift_allocError();
    *v18 = xmmword_1AB4FA760;
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 16) = 0x40000001F2019270uLL;
    *(v18 + 24) = v19;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v10 = v27;
  __swift_project_boxed_opaque_existential_1Tm(v25, v26);
  (*(v10 + 152))(&v28, v9, v10);
  sub_1AB066D84(v31);
  v11 = __swift_destroy_boxed_opaque_existential_1Tm(v25);
  if (!*(&v29 + 1))
  {

    goto LABEL_7;
  }

  v24 = v8;
  v35 = v7;
  v23[0] = a3;
  v23[1] = v23;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  MEMORY[0x1EEE9AC00](v11);
  v22[2] = v6;
  v13 = *(&v33 + 1);
  v12 = v34;
  __swift_project_boxed_opaque_existential_1Tm(&v32, *(&v33 + 1));
  v14 = *(v12 + 48);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438488, &qword_1AB4DCAF8);
  v16 = v14(sub_1AB42B8F4, v22, v15, v13, v12);

  if (v3)
  {

    sub_1AB066D84(a1);
    return sub_1AB06A37C(&v32);
  }

  else
  {
    sub_1AB066D84(a1);
    result = sub_1AB06A37C(&v32);
    v20 = v23[0];
    v21 = v24;
    *v23[0] = v35;
    *(v20 + 8) = v21;
    *(v20 + 16) = v16;
  }

  return result;
}

unint64_t sub_1AB42B93C()
{
  result = qword_1EB43D1A0;
  if (!qword_1EB43D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D1A0);
  }

  return result;
}

unint64_t sub_1AB42B994()
{
  result = qword_1EB43D1A8;
  if (!qword_1EB43D1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D1A8);
  }

  return result;
}

unint64_t sub_1AB42B9EC()
{
  result = qword_1EB43D1B0;
  if (!qword_1EB43D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D1B0);
  }

  return result;
}

void (*Lazy.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = sub_1AB461354();
  v7[2] = v8;
  v9 = *(v8 - 8);
  v7[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v7[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Lazy.wrappedValue.getter(a2);
  return sub_1AB42BB54;
}

void sub_1AB42BB54(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1AB039CD8(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1AB039CD8((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Lazy.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v9 = sub_1AB461354();
  result = sub_1AB1AA5C4(sub_1AB42C8B0, v8, v9, v10, &v12);
  *a4 = v12;
  return result;
}

uint64_t sub_1AB42BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v10(v7);
  if (!v3)
  {
    (*(v6 + 32))(a3, v9, a2);
    return (*(v6 + 56))(a3, 0, 1, a2);
  }

  return result;
}

uint64_t Lazy.description.getter(uint64_t a1)
{
  v1 = sub_1AB461354();
  type metadata accessor for LazyValueWrapper(0, v1, v2, v3);

  swift_getWitnessTable();
  sub_1AB461D74();

  return 0;
}

uint64_t Lazy<A>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = sub_1AB461354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  v9.n128_f64[0] = Lazy.wrappedValue.getter(a2);
  v10 = *(v4 - 8);
  if ((*(v10 + 48))(v8, 1, v4, v9) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  sub_1AB460434();
  return (*(v10 + 8))(v8, v4);
}

uint64_t Lazy<A>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v15);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v15[1];
  *(v10 + 32) = v15[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v16;
  *(v10 + 72) = v9;
  v12 = sub_1AB461354();
  sub_1AB1AA5C4(sub_1AB42C8D0, v10, v12, v13, v15);
  result = sub_1AB066D84(a1);
  *a5 = *&v15[0];
  return result;
}

uint64_t sub_1AB42C0E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1AB0B9254(a1, v17);
  v14[0] = a2;
  v10 = *(a4 + 8);

  v10(v17, v14, a3, a4);
  if (!v5)
  {
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, v17);
  sub_1AB1FC1DC(v17, v14);
  v11 = v15;
  if (v15)
  {
    v12 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    (*(v12 + 8))(a3, v5, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    sub_1AB1FC24C(v14);
  }

  swift_willThrow();
  return sub_1AB1FC24C(v17);
}

uint64_t static Lazy<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB461354();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v42 - v8;
  v10 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v21 = type metadata accessor for Lazy(0, a3, v19, v20);
  Lazy.wrappedValue.getter(v21);
  v22 = Lazy.wrappedValue.getter(v21);
  v48 = TupleTypeMetadata2;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = *(v10 + 16);
  v24(v9, v18, v6, v22);
  v49 = v23;
  v25 = &v9[v23];
  v26 = v6;
  (v24)(v25, v15, v6);
  v27 = *(v51 + 48);
  v50 = a3;
  if (v27(v9, 1, a3) != 1)
  {
    v43 = v18;
    v30 = v46;
    v31 = v26;
    (v24)(v46, v9, v26);
    v32 = v49;
    v33 = v50;
    v34 = v27(&v9[v49], 1, v50);
    v35 = v51;
    v36 = (v51 + 8);
    if (v34 != 1)
    {
      v38 = v44;
      (*(v51 + 32))(v44, &v9[v32], v33);
      v29 = sub_1AB460504();
      v39 = *(v35 + 8);
      v39(v38, v33);
      v40 = *(v10 + 8);
      v40(v15, v31);
      v40(v43, v31);
      v39(v30, v33);
      v40(v9, v31);
      return v29 & 1;
    }

    v37 = *(v10 + 8);
    v37(v15, v31);
    v37(v43, v31);
    (*v36)(v30, v33);
    goto LABEL_6;
  }

  v28 = *(v10 + 8);
  v28(v15, v26);
  v28(v18, v26);
  if (v27(&v9[v49], 1, v50) != 1)
  {
LABEL_6:
    (*(v47 + 8))(v9, v48);
    v29 = 0;
    return v29 & 1;
  }

  v28(v9, v26);
  v29 = 1;
  return v29 & 1;
}

uint64_t Lazy<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AB461354();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  Lazy.wrappedValue.getter(a2);
  sub_1AB461374();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Lazy<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v6[9] = *v2;
  sub_1AB4620A4();
  Lazy<A>.hash(into:)(v6, a1, a2);
  return sub_1AB462104();
}

uint64_t sub_1AB42C85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AB4620A4();
  Lazy<A>.hash(into:)(v6, a2, v4);
  return sub_1AB462104();
}

void sub_1AB42C93C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = v5;
    while (v7 < *(v3 + 16))
    {
      v8 = *(v3 + 32 + 8 * v7);
      v9 = *(*v8 + 88);

      if ((v9(v10) & 1) == 0 || (v11 = (*(*v8 + 104))(a2), (v9(v11) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AB2B0528(0, *(v6 + 2) + 1, 1, v6);
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        if (v13 >= v12 >> 1)
        {
          v6 = sub_1AB2B0528((v12 > 1), v13 + 1, 1, v6);
        }

        *(v6 + 2) = v13 + 1;
        *&v6[8 * v13 + 32] = v7;
        v5 = v7 + 1;
        if (v4 - 1 != v7)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v7;

      if (v4 == v7)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v14 = *(v6 + 2);
    if (!v14)
    {
LABEL_19:

      return;
    }

    while (v14 <= *(v6 + 2))
    {
      v15 = v14 - 1;
      v16 = *&v6[8 * v14 + 24];
      swift_beginAccess();
      sub_1AB3C1B44(v16, &v18);
      swift_endAccess();

      v14 = v15;
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1AB42CB64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v7 = v5;
    while (v7 < *(v3 + 16))
    {
      v8 = *(v3 + 32 + 8 * v7);
      v9 = *(*v8 + 88);

      if ((v9(v10) & 1) == 0 || (v18[0] = a2, v11 = (*(*v8 + 104))(v18), (v9(v11) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1AB2B0528(0, *(v6 + 2) + 1, 1, v6);
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        if (v13 >= v12 >> 1)
        {
          v6 = sub_1AB2B0528((v12 > 1), v13 + 1, 1, v6);
        }

        *(v6 + 2) = v13 + 1;
        *&v6[8 * v13 + 32] = v7;
        v5 = v7 + 1;
        if (v4 - 1 != v7)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v7;

      if (v4 == v7)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v14 = *(v6 + 2);
    if (!v14)
    {
LABEL_19:

      return;
    }

    while (v14 <= *(v6 + 2))
    {
      v15 = v14 - 1;
      v16 = *&v6[8 * v14 + 24];
      swift_beginAccess();
      sub_1AB3C1BE8(v16, &v19);
      swift_endAccess();

      v14 = v15;
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t AppMetricsPresenter.AppStateEvent.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AppMetricsPresenter.AppStateEvent.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t AppMetricsPresenter.AppStateEvent.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB42CE74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438578, &qword_1AB4EE0C0);
  result = swift_allocObject();
  *(result + 20) = 0;
  *(result + 16) = 0;
  off_1EB4326A0 = result;
  return result;
}

uint64_t AppMetricsPresenter.__allocating_init(pipeline:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AppMetricsPresenter.init(pipeline:)(a1);
  return v2;
}

uint64_t AppMetricsPresenter.flushedEvents.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 216) = a1;
}

Swift::Void __swiftcall AppMetricsPresenter.didBecomeActive(using:)(JetEngine::MetricsFieldsContext using)
{
  v5 = v1;
  v7 = sub_1AB460224();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *using.storage._rawValue;
  sub_1AB015664();
  *v10 = sub_1AB461124();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1AB460244();
  (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_4;
  }

  if (*(v5 + 209) != 1)
  {
    return;
  }

  v13 = *(v5 + 224);
  v14 = *(v13 + 16);
  [v14 lock];
  sub_1AB0C9664(v13, 0x7265746E65, 0xE500000000000000);
  [v14 unlock];
  v3 = *(v5 + 232);
  v7 = *(v5 + 240);
  swift_beginAccess();
  v15 = *(v5 + 216);

  v12 = sub_1AB07EF00(0x7265746E65, 0xE500000000000000, v15);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D47F0;
  *(inited + 32) = 0x707954746E657665;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 0x7265746E65;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v4;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  if (qword_1EB432698 != -1)
  {
    goto LABEL_11;
  }

LABEL_4:
  v16 = off_1EB4326A0;
  os_unfair_lock_lock(off_1EB4326A0 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v16[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v16 + 5);
  v18 = 0x68636E75616CLL;
  if (os_unfair_lock_opaque_low)
  {
    v18 = 0x746977536B736174;
  }

  v19 = 0xE600000000000000;
  *(inited + 120) = v4;
  if (os_unfair_lock_opaque_low)
  {
    v19 = 0xEA00000000006863;
  }

  *(inited + 96) = v18;
  *(inited + 104) = v19;
  v20 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
  swift_arrayDestroy();
  v21 = sub_1AB1914C4(&unk_1F1FF4498);
  sub_1AB2D82C8(&unk_1F1FF44B8);
  v23[0] = v3;
  v23[1] = v7;
  v24 = v12 & 1;
  v25 = v20;
  v26 = v21;
  v27 = MEMORY[0x1E69E7CD0];
  v22 = v11;
  MetricsPipeline.process(_:using:)(v23, &v22);

  *(v5 + 209) = 0;
}

uint64_t AppMetricsPresenter.deinit()
{
  sub_1AB056154(v0 + 16);

  return v0;
}

uint64_t AppMetricsPresenter.__deallocating_deinit()
{
  sub_1AB056154(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1AB42D59C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1AB460514();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (!v2)
  {
    return 0;
  }

  sub_1AB461494();
  swift_unknownObjectRelease();
  sub_1AB014B78(v7, v8);
  sub_1AB0165C4(v8, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1AB0165C4(v8, v7);
    sub_1AB083ACC();
    if (swift_dynamicCast())
    {
      v4 = [v6 stringValue];
      v3 = sub_1AB460544();

      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    return 0;
  }

  v3 = v6;
LABEL_6:
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v3;
}

uint64_t sub_1AB42D728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01EC0C(a1, v11);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    (*(v5 + 160))(&v14, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if (*(&v15 + 1))
    {
      result = sub_1AB066D84(a1);
      v7 = v16;
      v19 = v16;
      v8 = v15;
      v17 = v14;
      v18 = v15;
      *a2 = v14;
      *(a2 + 16) = v8;
      *(a2 + 32) = v7;
      return result;
    }
  }

  else
  {
    sub_1AB014AC0(v11, &qword_1EB436BA0, &qword_1AB4D4F40);
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
  }

  sub_1AB014AC0(&v14, &qword_1EB436BC0, &qword_1AB4D52B0);
  sub_1AB163664();
  swift_allocError();
  v9 = MEMORY[0x1E69E7CC0];
  *v10 = &type metadata for LocalizedStringsContainerJSONObject;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

uint64_t sub_1AB42D878()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  result = (*(v2 + 56))(v1, v2);
  v4 = result;
  v5 = *(result + 16);
  if (v5)
  {
    v6 = 0;
    v7 = result + 40;
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = (v7 + 16 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= *(v4 + 16))
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 - 1);
        v12 = *v9;
        if (v11 != 0x74616D726F66 || v12 != 0xE600000000000000)
        {
          result = sub_1AB461DA4();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        ++v10;
        v9 += 2;
        if (v5 == v10)
        {
          goto LABEL_18;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v17 = v7;
      if ((result & 1) == 0)
      {
        result = sub_1AB03BD38(0, *(v8 + 16) + 1, 1);
      }

      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1AB03BD38((v14 > 1), v15 + 1, 1);
      }

      v6 = v10 + 1;
      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v7 = v17;
    }

    while (v5 - 1 != v10);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:

  return v8;
}

uint64_t sub_1AB42DA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v9);
  (*(v10 + 24))(v27, a3, a4, v9, v10);
  sub_1AB01EC0C(v27, v21);
  v11 = v22;
  if (!v22)
  {
    sub_1AB066D84(v27);
    sub_1AB014AC0(v21, &qword_1EB436BA0, &qword_1AB4D4F40);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_6;
  }

  v12 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  (*(v12 + 160))(&v24, v11, v12);
  sub_1AB066D84(v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!*(&v25 + 1))
  {
LABEL_6:
    sub_1AB014AC0(&v24, &qword_1EB436BC0, &qword_1AB4D52B0);
    v17 = 0x40000001F2018F28uLL;
    sub_1AB163664();
    swift_allocError();
    *v18 = a3;
    v18[1] = a4;
    v19 = MEMORY[0x1E69E7CC0];
    v18[2] = 0x40000001F2018F28uLL;
    v18[3] = v19;
    swift_willThrow();

    return v17;
  }

  v28[0] = v24;
  v28[1] = v25;
  v13 = v26;
  v29 = v26;
  v14 = *(&v25 + 1);
  __swift_project_boxed_opaque_existential_1Tm(v28, *(&v25 + 1));
  (*(v13 + 24))(v27, a1, a2, v14, v13);
  sub_1AB01EC0C(v27, &v24);
  v15 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v16 = v26;
    __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
    v17 = (*(v16 + 24))(v15, v16);
    sub_1AB066D84(v27);
    __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  }

  else
  {
    sub_1AB066D84(v27);
    sub_1AB014AC0(&v24, &qword_1EB436BA0, &qword_1AB4D4F40);
    v17 = 0;
  }

  sub_1AB07CDB0(v28);
  return v17;
}

uint64_t sub_1AB42DCA0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t dispatch thunk of LanguageSource.fetchLanguages()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB2231A8;

  return v7(a1, a2);
}

Swift::Void __swiftcall SwiftLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v3 = *withLevel;
  v4 = *v2;
  v5 = v2[1];
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v6 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v6 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
  }

  *(swift_allocObject() + 16) = (os_unfair_lock_opaque_low & 1) == 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00, &unk_1AB4D6D40);
  sub_1AB016A34();
  v8 = sub_1AB460484();
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
  v11 = swift_allocObject();
  v12 = 0xE500000000000000;
  *(v11 + 16) = xmmword_1AB4D4720;
  if (v3 == 2)
  {
    v13 = 1868983913;
  }

  else
  {
    v13 = 0x6775626564;
  }

  if (v3 == 2)
  {
    v12 = 0xE400000000000000;
  }

  v14 = 0xE500000000000000;
  v15 = 0x726F727265;
  if (v3)
  {
    v15 = 0x676E696E726177;
    v14 = 0xE700000000000000;
  }

  if (v3 <= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  if (v3 <= 1)
  {
    v17 = v14;
  }

  else
  {
    v17 = v12;
  }

  MEMORY[0x1AC59BA20](v16, v17);

  MEMORY[0x1AC59BA20](23328, 0xE200000000000000);
  MEMORY[0x1AC59BA20](v4, v5);
  MEMORY[0x1AC59BA20](2112093, 0xE300000000000000);
  MEMORY[0x1AC59BA20](v8, v10);

  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  sub_1AB462074();
}

void sub_1AB42E0C8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v29, &unk_1EB43D1E0, &qword_1AB4E4548);
  if (v30 == 3)
  {
    sub_1AB014AC0(v29, &unk_1EB43D1E0, &qword_1AB4E4548);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v30)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v29[0];
    sub_1AB0B9254(a1, v28);
    v28[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v28, v1 + 24, &unk_1EB43D1E0, &qword_1AB4E4548);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4397A0;
      do
      {
        sub_1AB014A58(v6, v28, v7, &unk_1AB4E4550);
        sub_1AB014A58(v28, v25, v7, &unk_1AB4E4550);
        v11 = v25[0];
        if (v27)
        {
          sub_1AB0B9254(a1, &v22);
          v8 = *(*(v11 + 64) + 40);
          v9 = v24;
          v10 = v23;
          *v8 = v22;
          *(v8 + 16) = v10;
          *(v8 + 32) = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, v7, &unk_1AB4E4550);
        }

        else
        {
          v12 = v25[1];

          sub_1AB0149B0(&v26, &v22);
          v13 = v24;
          v19 = *(&v23 + 1);
          __swift_project_boxed_opaque_existential_1Tm(&v22, *(&v23 + 1));
          sub_1AB0B9254(a1, v20);
          v14 = swift_allocObject();
          *(v14 + 16) = v11;
          *(v14 + 24) = v12;
          v15 = v20[1];
          *(v14 + 32) = v20[0];
          *(v14 + 48) = v15;
          *(v14 + 64) = v21;
          v16 = v7;
          v17 = a1;
          v18 = *(v13 + 8);

          v18(sub_1AB0224A8, v14, v19, v13);
          a1 = v17;
          v7 = v16;

          sub_1AB014AC0(v28, v16, &unk_1AB4E4550);
          __swift_destroy_boxed_opaque_existential_1Tm(&v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB42E3D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v4 + 56) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v4 + 56))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v4 + 24);
    v7 = *(v4 + 32);
    v8 = *(v4 + 40);
    v9 = *(v4 + 48);
    sub_1AB2AB398(v6, v7, v8, v9, 0);
    sub_1AB144A64(a1, a2, a3, a4);
    *(v4 + 24) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 48) = a4;
    *(v4 + 56) = 1;
    sub_1AB199B30(v6, v7, v8, v9, 0);
    os_unfair_lock_unlock(v5 + 4);
    v10 = *(v6 + 16);
    if (v10)
    {
      v23 = v9;
      v24 = v8;
      v25 = v7;
      v26 = v6;
      v11 = v6 + 32;
      do
      {
        sub_1AB014A58(v11, v37, &unk_1EB43D290, &unk_1AB4E46E0);
        sub_1AB014A58(v37, v34, &unk_1EB43D290, &unk_1AB4E46E0);
        v13 = v34[0];
        if (v36)
        {
          sub_1AB144A64(a1, a2, a3, a4);
          v12 = *(*(v13 + 64) + 40);
          *v12 = a1;
          v12[1] = a2;
          v12[2] = a3;
          v12[3] = a4;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v37, &unk_1EB43D290, &unk_1AB4E46E0);
        }

        else
        {
          v14 = v34[1];

          sub_1AB0149B0(&v35, v31);
          v16 = v32;
          v15 = v33;
          __swift_project_boxed_opaque_existential_1Tm(v31, v32);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = a1;
          v17[5] = a2;
          v17[6] = a3;
          v17[7] = a4;
          v18 = *(v15 + 8);
          sub_1AB144A64(a1, a2, a3, a4);

          v18(sub_1AB43BC48, v17, v16, v15);

          sub_1AB014AC0(v37, &unk_1EB43D290, &unk_1AB4E46E0);
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
      v20 = v25;
      v19 = v26;
      v22 = v23;
      v21 = v24;
    }

    else
    {
      v19 = v6;
      v20 = v7;
      v21 = v8;
      v22 = v9;
    }

    sub_1AB199B30(v19, v20, v21, v22, 0);
  }
}

void sub_1AB42E6FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v3 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;

    os_unfair_lock_unlock(v2 + 4);
    v4 = v3[2];
    if (v4)
    {
      v16 = v3;
      v5 = (v3 + 4);
      v6 = &unk_1EB4377E0;
      do
      {
        sub_1AB014A58(v5, v24, v6, &unk_1AB4E4570);
        sub_1AB014A58(v24, v21, v6, &unk_1AB4E4570);
        v7 = v21[0];
        if (v23)
        {
          **(*(v21[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v24, v6, &unk_1AB4E4570);
        }

        else
        {
          v8 = v21[1];

          sub_1AB0149B0(&v22, v18);
          v10 = v19;
          v9 = v20;
          __swift_project_boxed_opaque_existential_1Tm(v18, v19);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = v6;
          v13 = *(v9 + 8);

          v13(sub_1AB017C7C, v11, v10, v9);
          v6 = v12;

          sub_1AB014AC0(v24, v12, &unk_1AB4E4570);
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
        }

        v5 += 80;
        --v4;
      }

      while (v4);
      v14 = MEMORY[0x1E69E7CF8];
      v15 = v16;
    }

    else
    {
      v14 = MEMORY[0x1E69E7CF8];
      v15 = v3;
    }

    sub_1AB023D0C(v15, 0, v14);
  }
}

void sub_1AB42E99C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1AB2AB124(v4, v5, 0);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;

    sub_1AB0802EC(v4, v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v6 = v4[2];
    if (v6)
    {
      v17 = v5;
      v18 = v4;
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v27, &unk_1EB437970, &unk_1AB4D8E00);
        sub_1AB014A58(v27, v24, &unk_1EB437970, &unk_1AB4D8E00);
        v9 = v24[0];
        if (v26)
        {
          v8 = *(*(v24[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v27, &unk_1EB437970, &unk_1AB4D8E00);
        }

        else
        {
          v10 = v24[1];

          sub_1AB0149B0(&v25, v21);
          v12 = v22;
          v11 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v11 + 8);

          v14(sub_1AB43AF90, v13, v12, v11);

          sub_1AB014AC0(v27, &unk_1EB437970, &unk_1AB4D8E00);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
      v16 = v17;
      v15 = v18;
    }

    else
    {
      v15 = v4;
      v16 = v5;
    }

    sub_1AB0802EC(v15, v16, 0);
  }
}

void sub_1AB42EC48()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  if (*(v0 + 32) == 3)
  {
    os_unfair_lock_unlock(v1 + 4);
  }

  else if (*(v0 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    os_unfair_lock_unlock(v1 + 4);
    v11 = v2;
    v3 = v2[2];
    if (v3)
    {
      v4 = (v2 + 4);
      do
      {
        sub_1AB014A58(v4, v18, &unk_1EB4378E0, &unk_1AB4E4560);
        sub_1AB014A58(v18, v15, &unk_1EB4378E0, &unk_1AB4E4560);
        v5 = v15[0];
        if (v17)
        {
          swift_continuation_throwingResume();
          sub_1AB014AC0(v18, &unk_1EB4378E0, &unk_1AB4E4560);
        }

        else
        {
          v6 = v15[1];

          sub_1AB0149B0(&v16, v12);
          v8 = v13;
          v7 = v14;
          __swift_project_boxed_opaque_existential_1Tm(v12, v13);
          v9 = swift_allocObject();
          *(v9 + 16) = v5;
          *(v9 + 24) = v6;
          v10 = *(v7 + 8);

          v10(sub_1AB23A0B0, v9, v8, v7);

          sub_1AB014AC0(v18, &unk_1EB4378E0, &unk_1AB4E4560);
          __swift_destroy_boxed_opaque_existential_1Tm(v12);
        }

        v4 += 80;
        --v3;
      }

      while (v3);
    }

    sub_1AB074080(v11, 0);
  }
}

void sub_1AB42EE80(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;
    os_unfair_lock_unlock(v3 + 4);
    v14 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1AB014A58(v6, v21, &unk_1EB4397F0, &qword_1AB4D8BD0);
        sub_1AB014A58(v21, v18, &unk_1EB4397F0, &qword_1AB4D8BD0);
        v7 = v18[0];
        if (v20)
        {
          **(*(v18[0] + 64) + 40) = a1;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v21, &unk_1EB4397F0, &qword_1AB4D8BD0);
        }

        else
        {
          v8 = v18[1];

          sub_1AB0149B0(&v19, v15);
          v10 = v16;
          v9 = v17;
          __swift_project_boxed_opaque_existential_1Tm(v15, v16);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = a1;
          v13 = *(v9 + 8);

          v13(sub_1AB017C7C, v11, v10, v9);
          a1 = v12;

          sub_1AB014AC0(v21, &unk_1EB4397F0, &qword_1AB4D8BD0);
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB074080(v14, 0);
  }
}

void sub_1AB42F144(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v4 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 24);
    v15 = *(v2 + 32);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;

    os_unfair_lock_unlock(v4 + 4);
    v6 = v5[2];
    if (v6)
    {
      v7 = (v5 + 4);
      do
      {
        sub_1AB014A58(v7, v23, &unk_1EB439CC0, &unk_1AB4D8BE0);
        sub_1AB014A58(v23, v20, &unk_1EB439CC0, &unk_1AB4D8BE0);
        v9 = v20[0];
        if (v22)
        {
          v8 = *(*(v20[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, &unk_1EB439CC0, &unk_1AB4D8BE0);
        }

        else
        {
          v10 = v20[1];

          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v12 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v12 + 8);

          v14(sub_1AB43AB88, v13, v11, v12);

          sub_1AB014AC0(v23, &unk_1EB439CC0, &unk_1AB4D8BE0);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB1997F8(v5, v15, 0);
  }
}

void sub_1AB42F3C4(uint64_t a1)
{
  v37 = a1;
  v36 = sub_1AB45F0A4();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v28 = v3;
  v35 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437820, &unk_1AB4D9570);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v26 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB437820, &unk_1AB4D9570);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB437820, &unk_1AB4D9570);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    v34 = *(v2 + 16);
    v34(v6, v37, v36);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v6, v1 + v11, &unk_1EB437820, &unk_1AB4D9570);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v26[0] = v13;
      v15 = v13 + 32;
      v27 = v2;
      v33 = (v2 + 32);
      v26[1] = v2 + 16;
      do
      {
        sub_1AB014A58(v15, v44, &qword_1EB439E20, &unk_1AB4D8CA0);
        sub_1AB014A58(v44, v41, &qword_1EB439E20, &unk_1AB4D8CA0);
        v18 = v41[0];
        if (v43)
        {
          v16 = v35;
          v17 = v36;
          v34(v35, v37, v36);
          (*v33)(*(*(v18 + 64) + 40), v16, v17);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v44, &qword_1EB439E20, &unk_1AB4D8CA0);
        }

        else
        {
          v30 = v41[1];

          sub_1AB0149B0(&v42, v38);
          v32 = v39;
          v29 = v40;
          v31 = __swift_project_boxed_opaque_existential_1Tm(v38, v39);
          v19 = v35;
          v20 = v36;
          v34(v35, v37, v36);
          v21 = v27;
          v22 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v18;
          *(v23 + 24) = v30;
          (*(v21 + 32))(v23 + v22, v19, v20);
          v24 = v29;
          v25 = *(v29 + 8);

          v25(sub_1AB43BC28, v23, v32, v24);

          sub_1AB014AC0(v44, &qword_1EB439E20, &unk_1AB4D8CA0);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB42F918(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1AB2AB22C(v4, v5, 0, sub_1AB017200);
    sub_1AB017200(a1, a2);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;
    v15 = v5;
    sub_1AB199938(v4, v5, 0, sub_1AB017254);
    os_unfair_lock_unlock(v3 + 4);
    v16 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v25, &unk_1EB4377D0, &unk_1AB4E4600);
        sub_1AB014A58(v25, v22, &unk_1EB4377D0, &unk_1AB4E4600);
        v9 = v22[0];
        if (v24)
        {
          sub_1AB017200(a1, a2);
          v8 = *(*(v9 + 64) + 40);
          *v8 = a1;
          v8[1] = a2;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v25, &unk_1EB4377D0, &unk_1AB4E4600);
        }

        else
        {
          v10 = v22[1];

          sub_1AB0149B0(&v23, v19);
          v11 = v20;
          v12 = v21;
          __swift_project_boxed_opaque_existential_1Tm(v19, v20);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v12 + 8);
          sub_1AB017200(a1, a2);

          v14(sub_1AB43BC18, v13, v11, v12);

          sub_1AB014AC0(v25, &unk_1EB4377D0, &unk_1AB4E4600);
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199938(v16, v15, 0, sub_1AB017254);
  }
}

void sub_1AB42FC2C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB4397C0, &unk_1AB4E4590);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB4397C0, &unk_1AB4E4590);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4397C0, &unk_1AB4E4590);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4376E0;
      do
      {
        sub_1AB014A58(v6, v23, v7, &unk_1AB4D8B50);
        sub_1AB014A58(v23, v20, v7, &unk_1AB4D8B50);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7, &unk_1AB4D8B50);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12, &unk_1AB4D8B50);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB42FF24(uint64_t a1)
{
  v3 = type metadata accessor for JSSource(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377B0, &qword_1AB4E46D0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB4377B0, &qword_1AB4E46D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB4377B0, &qword_1AB4E46D0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JSSource);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB4377B0, &qword_1AB4E46D0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &qword_1EB439D20;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17, &unk_1AB4D8C30);
        sub_1AB014A58(v42, v39, v17, &unk_1AB4D8C30);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSSource);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JSSource);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17, &unk_1AB4D8C30);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSSource);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JSSource);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC44, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17, &unk_1AB4D8C30);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB430428(uint64_t a1)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280, &qword_1AB4D8DA0);
  v26 = *(v2 - 8);
  v25[2] = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437940, &qword_1AB4D8DA8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v25 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB437940, &qword_1AB4D8DA8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB437940, &qword_1AB4D8DA8);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    sub_1AB014A58(v29, v6, &unk_1EB43D280, &qword_1AB4D8DA0);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v6, v1 + v11, &unk_1EB437940, &qword_1AB4D8DA8);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v25[1] = v13;
      v15 = v13 + 32;
      do
      {
        sub_1AB014A58(v15, v36, &unk_1EB439920, &unk_1AB4D8DB0);
        sub_1AB014A58(v36, v33, &unk_1EB439920, &unk_1AB4D8DB0);
        v17 = v33[0];
        if (v35)
        {
          v16 = v28;
          sub_1AB014A58(v29, v28, &unk_1EB43D280, &qword_1AB4D8DA0);
          sub_1AB017FB8(v16, *(*(v17 + 64) + 40), &unk_1EB43D280, &qword_1AB4D8DA0);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v36, &unk_1EB439920, &unk_1AB4D8DB0);
        }

        else
        {
          v18 = v33[1];

          sub_1AB0149B0(&v34, v30);
          v19 = v31;
          v20 = v32;
          v27 = __swift_project_boxed_opaque_existential_1Tm(v30, v31);
          v21 = v28;
          sub_1AB014A58(v29, v28, &unk_1EB43D280, &qword_1AB4D8DA0);
          v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v17;
          *(v23 + 24) = v18;
          sub_1AB017FB8(v21, v23 + v22, &unk_1EB43D280, &qword_1AB4D8DA0);
          v24 = *(v20 + 8);

          v24(sub_1AB43BC40, v23, v19, v20);

          sub_1AB014AC0(v36, &unk_1EB439920, &unk_1AB4D8DB0);
          __swift_destroy_boxed_opaque_existential_1Tm(v30);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB4308F8(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(v3 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v3 + 24);
    v7 = *(v3 + 32);
    v8 = *(v3 + 40);
    sub_1AB2AB314(v6, v7, v8, 0);
    sub_1AB017200(a1, a2);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;
    v23 = a3;
    v20 = v8;
    v21 = v7;
    sub_1AB199AA4(v6, v7, v8, 0);
    os_unfair_lock_unlock(v5 + 4);
    v22 = v6;
    v9 = v6[2];
    if (v9)
    {
      v10 = (v6 + 4);
      do
      {
        sub_1AB014A58(v10, v32, &qword_1EB43A050, &qword_1AB4D8DC0);
        sub_1AB014A58(v32, v29, &qword_1EB43A050, &qword_1AB4D8DC0);
        v13 = v29[0];
        if (v31)
        {
          sub_1AB017200(a1, a2);
          v11 = *(*(v13 + 64) + 40);
          *v11 = a1;
          v11[1] = a2;
          v11[2] = v23;
          v12 = v23;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v32, &qword_1EB43A050, &qword_1AB4D8DC0);
        }

        else
        {
          v14 = v29[1];

          sub_1AB0149B0(&v30, v26);
          v16 = v27;
          v15 = v28;
          __swift_project_boxed_opaque_existential_1Tm(v26, v27);
          v17 = swift_allocObject();
          v17[2] = v13;
          v17[3] = v14;
          v17[4] = a1;
          v17[5] = a2;
          v17[6] = v23;
          v18 = *(v15 + 8);
          sub_1AB017200(a1, a2);
          v19 = v23;

          v18(sub_1AB43BBFC, v17, v16, v15);

          sub_1AB014AC0(v32, &qword_1EB43A050, &qword_1AB4D8DC0);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1AB199AA4(v22, v21, v20, 0);
  }
}

void sub_1AB430C00(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB43D230, &qword_1AB4D8C00);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB43D230, &qword_1AB4D8C00);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB43D230, &qword_1AB4D8C00);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB437790;
      do
      {
        sub_1AB014A58(v6, v23, v7, &qword_1AB4D8C08);
        sub_1AB014A58(v23, v20, v7, &qword_1AB4D8C08);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7, &qword_1AB4D8C08);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12, &qword_1AB4D8C08);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB430EF8(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  if (*(v2 + 33) == 3)
  {
    os_unfair_lock_unlock(v5 + 4);
  }

  else if (*(v2 + 33))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 32);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2 & 1;
    *(v2 + 33) = 1;

    v18 = v7;
    sub_1AB06DD90(v8, v7, 0);
    os_unfair_lock_unlock(v5 + 4);
    v19 = v6;
    v9 = v6[2];
    if (v9)
    {
      v10 = v19 + 32;
      v20 = a2;
      do
      {
        sub_1AB014A58(v10, v27, &unk_1EB439820, &qword_1AB4D8C10);
        sub_1AB014A58(v27, v24, &unk_1EB439820, &qword_1AB4D8C10);
        v12 = v24[0];
        if (v26)
        {
          LOBYTE(v21[0]) = a2 & 1;
          v11 = *(*(v24[0] + 64) + 40);
          *v11 = a1;
          *(v11 + 8) = a2 & 1;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v27, &unk_1EB439820, &qword_1AB4D8C10);
        }

        else
        {
          v13 = v24[1];

          sub_1AB0149B0(&v25, v21);
          v14 = v22;
          v15 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          v16 = swift_allocObject();
          *(v16 + 16) = v12;
          *(v16 + 24) = v13;
          *(v16 + 32) = a1;
          *(v16 + 40) = a2 & 1;
          v17 = *(v15 + 8);

          v17(sub_1AB43BC10, v16, v14, v15);
          a2 = v20;

          sub_1AB014AC0(v27, &unk_1EB439820, &qword_1AB4D8C10);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v10 += 80;
        --v9;
      }

      while (v9);
    }

    sub_1AB06DD90(v19, v18, 0);
  }
}

void sub_1AB4311A4(uint64_t a1)
{
  v3 = type metadata accessor for PageIntentInstrumentation(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377A0, &qword_1AB4D8C18);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB4377A0, &qword_1AB4D8C18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB4377A0, &qword_1AB4D8C18);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for PageIntentInstrumentation);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB4377A0, &qword_1AB4D8C18);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB43D240;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17, &unk_1AB4D8C20);
        sub_1AB014A58(v42, v39, v17, &unk_1AB4D8C20);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for PageIntentInstrumentation);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for PageIntentInstrumentation);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17, &unk_1AB4D8C20);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for PageIntentInstrumentation);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for PageIntentInstrumentation);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC14, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17, &unk_1AB4D8C20);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB431678(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1 & 1;
    *(v1 + 32) = 1;

    sub_1AB074080(v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v22, &unk_1EB437930, &unk_1AB4E4610);
        sub_1AB014A58(v22, v19, &unk_1EB437930, &unk_1AB4E4610);
        v8 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1 & 1;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v22, &unk_1EB437930, &unk_1AB4E4610);
        }

        else
        {
          v9 = v19[1];

          sub_1AB0149B0(&v20, v16);
          v11 = v17;
          v10 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          v12 = swift_allocObject();
          *(v12 + 16) = v8;
          *(v12 + 24) = v9;
          *(v12 + 32) = a1 & 1;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB43B014, v12, v11, v10);
          a1 = v13;

          sub_1AB014AC0(v22, &unk_1EB437930, &unk_1AB4E4610);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB074080(v15, 0);
  }
}

void sub_1AB4318F8(char a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    *(v1 + 24) = a1 & 1;
    *(v1 + 32) = 1;

    sub_1AB074080(v5, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      v8 = a1 & 1;
      do
      {
        sub_1AB014A58(v7, v22, &unk_1EB437910, &unk_1AB4E46B0);
        sub_1AB014A58(v22, v19, &unk_1EB437910, &unk_1AB4E46B0);
        v9 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = v8;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v22, &unk_1EB437910, &unk_1AB4E46B0);
        }

        else
        {
          v10 = v19[1];

          sub_1AB0149B0(&v20, v16);
          v12 = v17;
          v11 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          v13 = swift_allocObject();
          *(v13 + 16) = v9;
          *(v13 + 24) = v10;
          *(v13 + 32) = v8;
          v14 = *(v11 + 8);

          v14(sub_1AB43BC20, v13, v12, v11);

          sub_1AB014AC0(v22, &unk_1EB437910, &unk_1AB4E46B0);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB074080(v15, 0);
  }
}

void sub_1AB431B6C(void *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(v1 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v1 + 72) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else
  {
    v30 = v6;
    v32 = v5;
    v34 = v4;
    v36 = v3;
    if (*(v1 + 72))
    {
      sub_1AB461884();
      __break(1u);
    }

    else
    {
      v10 = *(v1 + 24);
      v9 = *(v1 + 32);
      v11 = *(v1 + 40);
      v12 = *(v1 + 48);
      v13 = *(v1 + 56);
      v14 = *(v1 + 64);
      sub_1AB2AB28C(v10, v9, v11, v12, v13, v14, 0);
      sub_1AB43B75C(a1, v47);
      *(v1 + 24) = v2;
      *(v1 + 32) = v36;
      *(v1 + 40) = v34;
      *(v1 + 48) = v32;
      *(v1 + 56) = v30;
      *(v1 + 64) = v7;
      *(v1 + 72) = 1;
      v31 = v11;
      v33 = v9;
      v28 = v13;
      v29 = v12;
      sub_1AB199A1C(v10, v9, v11, v12, v13, v14, 0);
      os_unfair_lock_unlock(v8 + 4);
      v35 = v10;
      v15 = v10[2];
      if (v15)
      {
        v16 = v35 + 32;
        v17 = &unk_1EB439FD0;
        do
        {
          sub_1AB014A58(v16, v47, v17, &unk_1AB4D8D80);
          sub_1AB014A58(v47, v44, v17, &unk_1AB4D8D80);
          v20 = v44[0];
          if (v46)
          {
            v18 = *(a1 + 1);
            v41 = *a1;
            v42 = v18;
            v43 = *(a1 + 2);
            sub_1AB43B75C(a1, v38);
            v19 = *(*(v20 + 64) + 40);
            *v19 = v41;
            v19[1] = v42;
            v19[2] = v43;
            swift_continuation_throwingResume();
            sub_1AB014AC0(v47, v17, &unk_1AB4D8D80);
          }

          else
          {
            v21 = v44[1];

            sub_1AB0149B0(&v45, v38);
            v23 = v39;
            v22 = v40;
            __swift_project_boxed_opaque_existential_1Tm(v38, v39);
            v24 = swift_allocObject();
            *(v24 + 16) = v20;
            *(v24 + 24) = v21;
            v25 = *(a1 + 1);
            *(v24 + 32) = *a1;
            *(v24 + 48) = v25;
            *(v24 + 64) = *(a1 + 2);
            v26 = v17;
            v27 = *(v22 + 8);
            sub_1AB43B75C(a1, &v41);

            v27(sub_1AB43BC3C, v24, v23, v22);
            v17 = v26;

            sub_1AB014AC0(v47, v26, &unk_1AB4D8D80);
            __swift_destroy_boxed_opaque_existential_1Tm(v38);
          }

          v16 += 80;
          --v15;
        }

        while (v15);
      }

      sub_1AB199A1C(v35, v33, v31, v29, v28, v14, 0);
    }
  }
}

void sub_1AB431E9C(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 64);
  v5 = *(a1 + 11);
  v53 = *a1;
  *&v54 = v2;
  *(&v54 + 1) = v3;
  v6 = a1[3];
  v55 = a1[2];
  v56 = v6;
  v57[0] = v4;
  *&v57[8] = *(a1 + 72);
  *&v57[24] = v5;
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v59 = *(v1 + 120);
  v8 = *(v1 + 72);
  v9 = *(v1 + 104);
  v58[4] = *(v1 + 88);
  v58[5] = v9;
  v10 = *(v1 + 40);
  v58[0] = *(v1 + 24);
  v58[1] = v10;
  v58[2] = *(v1 + 56);
  v58[3] = v8;
  if (v59 == 3)
  {
    os_unfair_lock_unlock(v7 + 4);
  }

  else if (v59)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v11 = *&v58[0];
    v47 = v55;
    v48 = v56;
    v49 = *v57;
    v50 = *&v57[16];
    v45 = v53;
    v46 = v54;
    v12 = *(v1 + 40);
    v13 = *(v1 + 56);
    v51[0] = *(v1 + 24);
    v51[1] = v12;
    v14 = *(v1 + 72);
    v15 = *(v1 + 88);
    v16 = *(v1 + 104);
    v52 = *(v1 + 120);
    v51[4] = v15;
    v51[5] = v16;
    v51[2] = v13;
    v51[3] = v14;
    sub_1AB014A58(v58, &v39, &unk_1EB437900, &qword_1AB4D8D68);
    sub_1AB014A58(&v53, &v39, &unk_1EB43D270, &unk_1AB4FAD50);
    v17 = v48;
    *(v1 + 56) = v47;
    *(v1 + 72) = v17;
    v18 = v50;
    *(v1 + 88) = v49;
    *(v1 + 104) = v18;
    v19 = v46;
    *(v1 + 24) = v45;
    *(v1 + 40) = v19;
    *(v1 + 120) = 1;
    sub_1AB014AC0(v51, &unk_1EB437900, &qword_1AB4D8D68);
    os_unfair_lock_unlock(v7 + 4);
    v20 = *(v11 + 16);
    if (v20)
    {
      v21 = v11 + 32;
      do
      {
        sub_1AB014A58(v21, v38, &unk_1EB438550, &unk_1AB4D8D70);
        sub_1AB014A58(v38, v35, &unk_1EB438550, &unk_1AB4D8D70);
        v23 = v35[0];
        if (v37)
        {
          v41 = v55;
          v42 = v56;
          v43 = *v57;
          v44 = *&v57[16];
          v39 = v53;
          v40 = v54;
          sub_1AB014A58(&v53, v32, &unk_1EB43D270, &unk_1AB4FAD50);
          v22 = *(*(v23 + 64) + 40);
          v22[2] = v41;
          v22[3] = v42;
          v22[4] = v43;
          v22[5] = v44;
          *v22 = v39;
          v22[1] = v40;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v38, &unk_1EB438550, &unk_1AB4D8D70);
        }

        else
        {
          v24 = v35[1];

          sub_1AB0149B0(&v36, v32);
          v26 = v33;
          v25 = v34;
          __swift_project_boxed_opaque_existential_1Tm(v32, v33);
          v27 = swift_allocObject();
          *(v27 + 16) = v23;
          *(v27 + 24) = v24;
          v28 = v56;
          *(v27 + 64) = v55;
          *(v27 + 80) = v28;
          v29 = *&v57[16];
          *(v27 + 96) = *v57;
          *(v27 + 112) = v29;
          v30 = v54;
          *(v27 + 32) = v53;
          *(v27 + 48) = v30;
          v31 = *(v25 + 8);
          sub_1AB014A58(&v53, &v39, &unk_1EB43D270, &unk_1AB4FAD50);

          v31(sub_1AB43BC38, v27, v26, v25);

          sub_1AB014AC0(v38, &unk_1EB438550, &unk_1AB4D8D70);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
        }

        v21 += 80;
        --v20;
      }

      while (v20);
    }

    sub_1AB014AC0(v58, &unk_1EB437900, &qword_1AB4D8D68);
  }
}

void sub_1AB432294(uint64_t a1)
{
  v37 = a1;
  v36 = sub_1AB45F764();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v28 = v3;
  v35 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4377C0, &qword_1AB4D94A0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v26 - v8);
  v10 = v1[2];
  os_unfair_lock_lock(v10 + 4);
  v11 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v11, v9, &unk_1EB4377C0, &qword_1AB4D94A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v9, &unk_1EB4377C0, &qword_1AB4D94A0);
    os_unfair_lock_unlock(v10 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v13 = *v9;
    v34 = *(v2 + 16);
    v34(v6, v37, v36);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v6, v1 + v11, &unk_1EB4377C0, &qword_1AB4D94A0);
    swift_endAccess();
    os_unfair_lock_unlock(v10 + 4);
    v14 = *(v13 + 16);
    if (v14)
    {
      v26[0] = v13;
      v15 = v13 + 32;
      v27 = v2;
      v33 = (v2 + 32);
      v26[1] = v2 + 16;
      do
      {
        sub_1AB014A58(v15, v44, &unk_1EB439840, &unk_1AB4D8C40);
        sub_1AB014A58(v44, v41, &unk_1EB439840, &unk_1AB4D8C40);
        v18 = v41[0];
        if (v43)
        {
          v16 = v35;
          v17 = v36;
          v34(v35, v37, v36);
          (*v33)(*(*(v18 + 64) + 40), v16, v17);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v44, &unk_1EB439840, &unk_1AB4D8C40);
        }

        else
        {
          v30 = v41[1];

          sub_1AB0149B0(&v42, v38);
          v32 = v39;
          v29 = v40;
          v31 = __swift_project_boxed_opaque_existential_1Tm(v38, v39);
          v19 = v35;
          v20 = v36;
          v34(v35, v37, v36);
          v21 = v27;
          v22 = (*(v27 + 80) + 32) & ~*(v27 + 80);
          v23 = swift_allocObject();
          *(v23 + 16) = v18;
          *(v23 + 24) = v30;
          (*(v21 + 32))(v23 + v22, v19, v20);
          v24 = v29;
          v25 = *(v29 + 8);

          v25(sub_1AB43BC1C, v23, v32, v24);

          sub_1AB014AC0(v44, &unk_1EB439840, &unk_1AB4D8C40);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
        }

        v15 += 80;
        --v14;
      }

      while (v14);
    }
  }
}

void sub_1AB4327E8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB43D1F0, &qword_1AB4D8B68);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB43D1F0, &qword_1AB4D8B68);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB0165C4(a1, v23);
    v23[32] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB43D1F0, &qword_1AB4D8B68);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB437700;
      do
      {
        sub_1AB014A58(v6, v23, v7, &unk_1AB4D8B70);
        sub_1AB014A58(v23, v20, v7, &unk_1AB4D8B70);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB0165C4(a1, &v17);
          sub_1AB014B78(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7, &unk_1AB4D8B70);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB0165C4(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB014B78(v16, (v11 + 32));
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB022478, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12, &unk_1AB4D8B70);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB432AE0(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB439900, &unk_1AB4D8D30);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB439900, &unk_1AB4D8D30);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB439900, &unk_1AB4D8D30);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &qword_1EB4378C0;
      do
      {
        sub_1AB014A58(v6, v23, v7, &qword_1AB4E4690);
        sub_1AB014A58(v23, v20, v7, &qword_1AB4E4690);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7, &qword_1AB4E4690);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12, &qword_1AB4E4690);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB432DD8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v35, &unk_1EB4398E0, &unk_1AB4D8D10);
  if (v36 == 3)
  {
    sub_1AB014AC0(v35, &unk_1EB4398E0, &unk_1AB4D8D10);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v36)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v35[0];
    sub_1AB0261D0(a1, &v29);
    v34 = 1;
    swift_beginAccess();
    sub_1AB017CC4(&v29, v1 + 24, &unk_1EB4398E0, &unk_1AB4D8D10);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4378A0;
      do
      {
        sub_1AB014A58(v6, v28, v7, &unk_1AB4E4670);
        sub_1AB014A58(v28, v25, v7, &unk_1AB4E4670);
        v12 = v25[0];
        if (v27)
        {
          sub_1AB0261D0(a1, &v29);
          v8 = *(*(v12 + 64) + 40);
          *v8 = v29;
          v10 = v32;
          v9 = v33;
          v11 = v31;
          v8[1] = v30;
          v8[2] = v11;
          v8[3] = v10;
          v8[4] = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, v7, &unk_1AB4E4670);
        }

        else
        {
          v13 = v25[1];

          sub_1AB0149B0(&v26, v22);
          v14 = v24;
          v21 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          sub_1AB0261D0(a1, &v29);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v32;
          *(v15 + 64) = v31;
          *(v15 + 80) = v16;
          *(v15 + 96) = v33;
          v17 = v30;
          *(v15 + 32) = v29;
          *(v15 + 48) = v17;
          v18 = v7;
          v19 = a1;
          v20 = *(v14 + 8);

          v20(sub_1AB0224A8, v15, v21, v14);
          a1 = v19;
          v7 = v18;

          sub_1AB014AC0(v28, v18, &unk_1AB4E4670);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB4330F4(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB4398F0, &unk_1AB4D8D20);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB4398F0, &unk_1AB4D8D20);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB4398F0, &unk_1AB4D8D20);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4378B0;
      do
      {
        sub_1AB014A58(v6, v23, v7, &unk_1AB4E4680);
        sub_1AB014A58(v23, v20, v7, &unk_1AB4E4680);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7, &unk_1AB4E4680);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12, &unk_1AB4E4680);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB43344C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  if (*(v5 + 32) == 3)
  {
    os_unfair_lock_unlock(v8 + 4);
  }

  else if (*(v5 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v9 = *(v5 + 24);
    *(v5 + 24) = a1;
    *(v5 + 32) = 1;

    os_unfair_lock_unlock(v8 + 4);
    v19 = v9;
    v10 = v9[2];
    if (v10)
    {
      v11 = (v9 + 4);
      v20 = a2;
      v21 = a3;
      do
      {
        sub_1AB014A58(v11, v30, a2, a3);
        sub_1AB014A58(v30, v27, a2, a3);
        v12 = v27[0];
        if (v29)
        {
          **(*(v27[0] + 64) + 40) = a1;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v30, a2, a3);
        }

        else
        {
          v13 = v27[1];

          sub_1AB0149B0(&v28, v24);
          v15 = v25;
          v14 = v26;
          __swift_project_boxed_opaque_existential_1Tm(v24, v25);
          v16 = swift_allocObject();
          v16[2] = v12;
          v16[3] = v13;
          v16[4] = a1;
          v17 = *(v14 + 8);

          v18 = v14;
          a2 = v20;
          v17(a5, v16, v15, v18);

          a3 = v21;

          sub_1AB014AC0(v30, v20, v21);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
        }

        v11 += 80;
        --v10;
      }

      while (v10);
    }

    sub_1AB023D0C(v19, 0, MEMORY[0x1E69E7D48]);
  }
}

void sub_1AB4336B8(uint64_t a1)
{
  v3 = type metadata accessor for JetPackAsset(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437840, &unk_1AB4E4640);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB437840, &unk_1AB4E4640);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB437840, &unk_1AB4E4640);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JetPackAsset);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB437840, &unk_1AB4E4640);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB4398A0;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17, &unk_1AB4D8CC0);
        sub_1AB014A58(v42, v39, v17, &unk_1AB4D8CC0);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JetPackAsset);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JetPackAsset);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17, &unk_1AB4D8CC0);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JetPackAsset);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JetPackAsset);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC30, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17, &unk_1AB4D8CC0);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB433B8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v32, &unk_1EB4398D0, &unk_1AB4D8CF0);
  if (v33 == 3)
  {
    sub_1AB014AC0(v32, &unk_1EB4398D0, &unk_1AB4D8CF0);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1AB03FFF8(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v31, v1 + 24, &unk_1EB4398D0, &unk_1AB4D8CF0);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB437880;
      do
      {
        sub_1AB014A58(v6, v31, v7, &unk_1AB4E4660);
        sub_1AB014A58(v31, v28, v7, &unk_1AB4E4660);
        v12 = v28[0];
        if (v30)
        {
          sub_1AB03FFF8(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v31, v7, &unk_1AB4E4660);
        }

        else
        {
          v13 = v28[1];

          sub_1AB0149B0(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          sub_1AB03FFF8(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1AB0224A8, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1AB014AC0(v31, v17, &unk_1AB4E4660);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB433EA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v32, &unk_1EB437850, &unk_1AB4E4650);
  if (v33 == 3)
  {
    sub_1AB014AC0(v32, &unk_1EB437850, &unk_1AB4E4650);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v33)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v32[0];
    sub_1AB019BC0(a1, v31);
    v31[56] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v31, v1 + 24, &unk_1EB437850, &unk_1AB4E4650);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB4398B0;
      do
      {
        sub_1AB014A58(v6, v31, v7, &unk_1AB4D8CD0);
        sub_1AB014A58(v31, v28, v7, &unk_1AB4D8CD0);
        v12 = v28[0];
        if (v30)
        {
          sub_1AB019BC0(a1, &v24);
          v8 = *(*(v12 + 64) + 40);
          v9 = v24;
          v10 = v25;
          v11 = v26;
          *(v8 + 48) = v27;
          *(v8 + 16) = v10;
          *(v8 + 32) = v11;
          *v8 = v9;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v31, v7, &unk_1AB4D8CD0);
        }

        else
        {
          v13 = v28[1];

          sub_1AB0149B0(&v29, v21);
          v14 = v23;
          v20 = v22;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          sub_1AB019BC0(a1, &v24);
          v15 = swift_allocObject();
          *(v15 + 16) = v12;
          *(v15 + 24) = v13;
          v16 = v25;
          *(v15 + 32) = v24;
          *(v15 + 48) = v16;
          *(v15 + 64) = v26;
          *(v15 + 80) = v27;
          v17 = v7;
          v18 = a1;
          v19 = *(v14 + 8);

          v19(sub_1AB0224A8, v15, v20, v14);
          a1 = v18;
          v7 = v17;

          sub_1AB014AC0(v31, v17, &unk_1AB4D8CD0);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB4341C4(uint64_t a1)
{
  v3 = type metadata accessor for JSPackageIndex(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437810, &unk_1AB4F2D10);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB437810, &unk_1AB4F2D10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB437810, &unk_1AB4F2D10);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JSPackageIndex);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB437810, &unk_1AB4F2D10);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &qword_1EB439E10;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17, &unk_1AB4D8C90);
        sub_1AB014A58(v42, v39, v17, &unk_1AB4D8C90);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSPackageIndex);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JSPackageIndex);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17, &unk_1AB4D8C90);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSPackageIndex);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JSPackageIndex);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43BC24, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17, &unk_1AB4D8C90);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB434698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v4 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 24);
    v6 = *(v3 + 32);
    v7 = *(v3 + 40);
    sub_1AB2AB1A8(v5, v6, v7, 0);
    sub_1AB1998F8(a1, a2);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;

    v17 = v7;
    sub_1AB199834(v5, v6, v7, 0);
    os_unfair_lock_unlock(v4 + 4);
    v18 = v5;
    v8 = v5[2];
    if (v8)
    {
      v9 = (v5 + 4);
      do
      {
        sub_1AB014A58(v9, v28, &unk_1EB4377F0, &unk_1AB4E4620);
        sub_1AB014A58(v28, v25, &unk_1EB4377F0, &unk_1AB4E4620);
        v11 = v25[0];
        if (v27)
        {
          sub_1AB1998F8(a1, a2);
          v10 = *(*(v11 + 64) + 40);
          *v10 = a1;
          v10[1] = a2;
          v10[2] = a3;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v28, &unk_1EB4377F0, &unk_1AB4E4620);
        }

        else
        {
          v12 = v25[1];

          sub_1AB0149B0(&v26, v22);
          v14 = v23;
          v13 = v24;
          __swift_project_boxed_opaque_existential_1Tm(v22, v23);
          v15 = swift_allocObject();
          v15[2] = v11;
          v15[3] = v12;
          v15[4] = a1;
          v15[5] = a2;
          v15[6] = a3;
          v16 = *(v13 + 8);
          sub_1AB1998F8(a1, a2);

          v16(sub_1AB43BBFC, v15, v14, v13);

          sub_1AB014AC0(v28, &unk_1EB4377F0, &unk_1AB4E4620);
          __swift_destroy_boxed_opaque_existential_1Tm(v22);
        }

        v9 += 80;
        --v8;
      }

      while (v8);
    }

    sub_1AB199834(v18, v6, v17, 0);
  }
}

void sub_1AB434974(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v2 + 40) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v2 + 40))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 32);
    sub_1AB2AB22C(v4, v5, 0, sub_1AB1998F8);
    sub_1AB1998F8(a1, a2);
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
    *(v2 + 40) = 1;
    v15 = v5;
    sub_1AB199938(v4, v5, 0, sub_1AB1998B8);
    os_unfair_lock_unlock(v3 + 4);
    v16 = v4;
    v6 = v4[2];
    if (v6)
    {
      v7 = (v4 + 4);
      do
      {
        sub_1AB014A58(v7, v25, &unk_1EB43D260, &qword_1AB4D8C70);
        sub_1AB014A58(v25, v22, &unk_1EB43D260, &qword_1AB4D8C70);
        v9 = v22[0];
        if (v24)
        {
          sub_1AB1998F8(a1, a2);
          v8 = *(*(v9 + 64) + 40);
          *v8 = a1;
          v8[1] = a2;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v25, &unk_1EB43D260, &qword_1AB4D8C70);
        }

        else
        {
          v10 = v22[1];

          sub_1AB0149B0(&v23, v19);
          v11 = v20;
          v12 = v21;
          __swift_project_boxed_opaque_existential_1Tm(v19, v20);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v14 = *(v12 + 8);
          sub_1AB1998F8(a1, a2);

          v14(sub_1AB43BC18, v13, v11, v12);

          sub_1AB014AC0(v25, &unk_1EB43D260, &qword_1AB4D8C70);
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199938(v16, v15, 0, sub_1AB1998B8);
  }
}

void sub_1AB434C88(void *a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(v1 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 24);
    sub_1AB2AB0EC(v4, 0);
    *(v1 + 24) = a1;
    *(v1 + 32) = 1;
    v16 = a1;
    sub_1AB0171C8(v4, 0);
    os_unfair_lock_unlock(v3 + 4);
    v15 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1AB014A58(v6, v23, &unk_1EB439850, &unk_1AB4D8C50);
        sub_1AB014A58(v23, v20, &unk_1EB439850, &unk_1AB4D8C50);
        v8 = v20[0];
        if (v22)
        {
          **(*(v20[0] + 64) + 40) = v16;
          v7 = v16;
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, &unk_1EB439850, &unk_1AB4D8C50);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, v17);
          v11 = v18;
          v10 = v19;
          __swift_project_boxed_opaque_existential_1Tm(v17, v18);
          v12 = swift_allocObject();
          v12[2] = v8;
          v12[3] = v9;
          v12[4] = v16;
          v13 = *(v10 + 8);
          v14 = v16;

          v13(sub_1AB017C7C, v12, v11, v10);

          sub_1AB014AC0(v23, &unk_1EB439850, &unk_1AB4D8C50);
          __swift_destroy_boxed_opaque_existential_1Tm(v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB0171C8(v15, 0);
  }
}

void sub_1AB434F14(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v24, &unk_1EB439830, &qword_1AB4E45E8);
  if (v25 == 3)
  {
    sub_1AB014AC0(v24, &unk_1EB439830, &qword_1AB4E45E8);
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (v25)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = v24[0];
    sub_1AB01494C(a1, v23);
    v23[40] = 1;
    swift_beginAccess();
    sub_1AB017CC4(v23, v1 + 24, &unk_1EB439830, &qword_1AB4E45E8);
    swift_endAccess();
    os_unfair_lock_unlock(v3 + 4);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 32;
      v7 = &unk_1EB43D250;
      do
      {
        sub_1AB014A58(v6, v23, v7, &unk_1AB4E45F0);
        sub_1AB014A58(v23, v20, v7, &unk_1AB4E45F0);
        v8 = v20[0];
        if (v22)
        {
          sub_1AB01494C(a1, &v17);
          sub_1AB0149B0(&v17, *(*(v8 + 64) + 40));
          swift_continuation_throwingResume();
          sub_1AB014AC0(v23, v7, &unk_1AB4E45F0);
        }

        else
        {
          v9 = v20[1];

          sub_1AB0149B0(&v21, &v17);
          v10 = v19;
          v15 = v18;
          __swift_project_boxed_opaque_existential_1Tm(&v17, v18);
          sub_1AB01494C(a1, v16);
          v11 = swift_allocObject();
          *(v11 + 16) = v8;
          *(v11 + 24) = v9;
          sub_1AB0149B0(v16, v11 + 32);
          v12 = v7;
          v13 = a1;
          v14 = *(v10 + 8);

          v14(sub_1AB0224A8, v11, v15, v10);
          a1 = v13;
          v7 = v12;

          sub_1AB014AC0(v23, v12, &unk_1AB4E45F0);
          __swift_destroy_boxed_opaque_existential_1Tm(&v17);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }
  }
}

void sub_1AB43523C(uint64_t a1)
{
  v3 = type metadata accessor for JSIntentResult(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = v4;
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D220, &qword_1AB4E45D0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v29 - v9);
  v11 = v1[2];
  os_unfair_lock_lock(v11 + 4);
  v12 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v12, v10, &unk_1EB43D220, &qword_1AB4E45D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    sub_1AB014AC0(v10, &unk_1EB43D220, &qword_1AB4E45D0);
    os_unfair_lock_unlock(v11 + 4);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v14 = *v10;
    sub_1AB03C4FC(a1, v7, type metadata accessor for JSIntentResult);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v7, v1 + v12, &unk_1EB43D220, &qword_1AB4E45D0);
    swift_endAccess();
    os_unfair_lock_unlock(v11 + 4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v29 = v14;
      v16 = v14 + 32;
      v17 = &unk_1EB439800;
      v30 = a1;
      do
      {
        sub_1AB014A58(v16, v42, v17, &unk_1AB4E45D8);
        sub_1AB014A58(v42, v39, v17, &unk_1AB4E45D8);
        v19 = v39[0];
        if (v41)
        {
          v18 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSIntentResult);
          sub_1AB03C5CC(v18, *(*(v19 + 64) + 40), type metadata accessor for JSIntentResult);
          swift_continuation_throwingResume();
          sub_1AB014AC0(v42, v17, &unk_1AB4E45D8);
        }

        else
        {
          v20 = v39[1];

          sub_1AB0149B0(&v40, v36);
          v21 = v37;
          v33 = v38;
          v34 = __swift_project_boxed_opaque_existential_1Tm(v36, v37);
          v22 = v17;
          v23 = v35;
          sub_1AB03C4FC(a1, v35, type metadata accessor for JSIntentResult);
          v24 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v25 = swift_allocObject();
          *(v25 + 16) = v19;
          *(v25 + 24) = v20;
          v26 = v23;
          v17 = v22;
          sub_1AB03C5CC(v26, v25 + v24, type metadata accessor for JSIntentResult);
          v27 = v33;
          v28 = *(v33 + 8);

          v28(sub_1AB43AD00, v25, v21, v27);

          a1 = v30;

          sub_1AB014AC0(v42, v17, &unk_1AB4E45D8);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
        }

        v16 += 80;
        --v15;
      }

      while (v15);
    }
  }
}

void sub_1AB435740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  if (*(v3 + 48) == 3)
  {
    os_unfair_lock_unlock(v4 + 4);
  }

  else if (*(v3 + 48))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = *(v3 + 24);
    v15 = *(v3 + 40);
    v16 = *(v3 + 32);
    *(v3 + 24) = a1;
    *(v3 + 32) = a2;
    *(v3 + 40) = a3;
    *(v3 + 48) = 1;

    os_unfair_lock_unlock(v4 + 4);
    v17 = v5;
    v6 = v5[2];
    if (v6)
    {
      v7 = (v5 + 4);
      do
      {
        sub_1AB014A58(v7, v27, &qword_1EB4376C8, &qword_1AB4EFC00);
        sub_1AB014A58(v27, v24, &qword_1EB4376C8, &qword_1AB4EFC00);
        v9 = v24[0];
        if (v26)
        {
          v8 = *(*(v24[0] + 64) + 40);
          *v8 = a1;
          v8[1] = a2;
          v8[2] = a3;

          swift_continuation_throwingResume();
          sub_1AB014AC0(v27, &qword_1EB4376C8, &qword_1AB4EFC00);
        }

        else
        {
          v10 = v24[1];

          sub_1AB0149B0(&v25, v21);
          v12 = v22;
          v11 = v23;
          __swift_project_boxed_opaque_existential_1Tm(v21, v22);
          v13 = swift_allocObject();
          v13[2] = v9;
          v13[3] = v10;
          v13[4] = a1;
          v13[5] = a2;
          v13[6] = a3;
          v14 = *(v11 + 8);

          v14(sub_1AB43BBFC, v13, v12, v11);

          sub_1AB014AC0(v27, &qword_1EB4376C8, &qword_1AB4EFC00);
          __swift_destroy_boxed_opaque_existential_1Tm(v21);
        }

        v7 += 80;
        --v6;
      }

      while (v6);
    }

    sub_1AB199768(v17, v16, v15, 0);
  }
}

void sub_1AB435A10(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  sub_1AB014A58(v1 + 24, v31, &qword_1EB439910, &qword_1AB4E4698);
  if (v32 == 3)
  {
    sub_1AB014AC0(v31, &qword_1EB439910, &qword_1AB4E4698);
    os_unfair_lock_unlock(v3 + 4);
    return;
  }

  if (v32)
  {
    goto LABEL_14;
  }

  v4 = v31[0];
  sub_1AB014A58(a1, v30, &qword_1EB43BDB0, &qword_1AB4E16C0);
  v30[40] = 1;
  swift_beginAccess();
  sub_1AB017CC4(v30, v1 + 24, &qword_1EB439910, &qword_1AB4E4698);
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
  v21 = v4;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v21 + 32;
    v8 = &qword_1AB4E16C0;
    while (v6 < v5)
    {
      sub_1AB014A58(v7, v30, &qword_1EB439918, &unk_1AB4E46A0);
      sub_1AB014A58(v30, v27, &qword_1EB439918, &unk_1AB4E46A0);
      v12 = v27[0];
      if (v29)
      {
        sub_1AB014A58(a1, &v24, &qword_1EB43BDB0, v8);
        v9 = *(*(v12 + 64) + 40);
        v10 = v26;
        v11 = v25;
        *v9 = v24;
        *(v9 + 16) = v11;
        *(v9 + 32) = v10;
        swift_continuation_throwingResume();
      }

      else
      {
        v13 = v27[1];

        sub_1AB0149B0(&v28, &v24);
        v14 = v26;
        v20 = *(&v25 + 1);
        __swift_project_boxed_opaque_existential_1Tm(&v24, *(&v25 + 1));
        sub_1AB014A58(a1, v22, &qword_1EB43BDB0, v8);
        v15 = swift_allocObject();
        *(v15 + 16) = v12;
        *(v15 + 24) = v13;
        v16 = v22[1];
        *(v15 + 32) = v22[0];
        *(v15 + 48) = v16;
        *(v15 + 64) = v23;
        v17 = v8;
        v18 = a1;
        v19 = *(v14 + 8);

        v19(sub_1AB0224A8, v15, v20, v14);
        a1 = v18;
        v8 = v17;

        __swift_destroy_boxed_opaque_existential_1Tm(&v24);
      }

      ++v6;
      sub_1AB014AC0(v30, &qword_1EB439918, &unk_1AB4E46A0);
      v5 = *(v21 + 16);
      v7 += 80;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
}

void sub_1AB435D98(uint64_t a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  swift_beginAccess();
  if (*(v1 + 32) == 3)
  {
    os_unfair_lock_unlock(v2 + 4);
    return;
  }

  if (*(v1 + 32))
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  *(v1 + 32) = 1;

  os_unfair_lock_unlock(v2 + 4);
  v4 = v3[2];
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 4);
    while (v5 < v4)
    {
      sub_1AB014A58(v6, v20, &unk_1EB439A90, &unk_1AB4E7C10);
      sub_1AB014A58(v20, v17, &unk_1EB439A90, &unk_1AB4E7C10);
      v7 = v17[0];
      if (v19)
      {
        **(*(v17[0] + 64) + 40) = a1;

        swift_continuation_throwingResume();
      }

      else
      {
        v8 = v17[1];

        sub_1AB0149B0(&v18, v14);
        v10 = v15;
        v9 = v16;
        __swift_project_boxed_opaque_existential_1Tm(v14, v15);
        v11 = swift_allocObject();
        v11[2] = v7;
        v11[3] = v8;
        v11[4] = a1;
        v12 = *(v9 + 8);

        v12(sub_1AB017C7C, v11, v10, v9);

        __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      ++v5;
      sub_1AB014AC0(v20, &unk_1EB439A90, &unk_1AB4E7C10);
      v4 = v3[2];
      v6 += 80;
      if (v5 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    sub_1AB461884();
    __break(1u);
    return;
  }

LABEL_11:
  sub_1AB023D0C(v3, 0, MEMORY[0x1E69E7CF8]);
}

uint64_t sub_1AB436020(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4397E0, &unk_1AB4E45A0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    swift_unknownObjectRetain();
    v9(sub_1AB017C80, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB436170(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1AB014A58(v5, v21, &unk_1EB43D290, &unk_1AB4E46E0);
  v10 = v21[0];
  if (v23)
  {
    sub_1AB144A64(a1, a2, a3, a4);
    v11 = *(*(v10 + 64) + 40);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
    v11[3] = a4;
    return swift_continuation_throwingResume();
  }

  else
  {
    v13 = v21[1];

    sub_1AB0149B0(&v22, v18);
    v14 = v19;
    v15 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = v13;
    v16[4] = a1;
    v16[5] = a2;
    v16[6] = a3;
    v16[7] = a4;
    v17 = *(v15 + 8);

    sub_1AB144A64(a1, a2, a3, a4);
    v17(sub_1AB43BB20, v16, v14, v15);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB436350(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4377E0, &unk_1AB4E4570);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C7C, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB4364D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB437970, &unk_1AB4D8E00);
  v6 = v17[0];
  if (v19)
  {
    v7 = *(*(v17[0] + 64) + 40);
    *v7 = a1;
    v7[1] = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    v13(sub_1AB43BC18, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB436638(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB4378D0, &qword_1AB4E14F0);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB436794()
{
  sub_1AB014A58(v0, v11, &unk_1EB4378E0, &unk_1AB4E4560);
  v1 = v11[0];
  if (v13)
  {
    return swift_continuation_throwingResume();
  }

  v3 = v11[1];

  sub_1AB0149B0(&v12, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1Tm(v8, v9);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = *(v5 + 8);

  v7(sub_1AB43BC4C, v6, v4, v5);

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_1AB4368A4(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4397F0, &qword_1AB4D8BD0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C7C, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB436A6C(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB4376B0, &unk_1AB4D8B20);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C80, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB436BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB439CC0, &unk_1AB4D8BE0);
  v6 = v17[0];
  if (v19)
  {
    v7 = *(*(v17[0] + 64) + 40);
    *v7 = a1;
    v7[1] = a2;

    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    v13(sub_1AB43BC00, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB436D44(uint64_t a1)
{
  v3 = sub_1AB45F0A4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1AB014A58(v1, v18, &qword_1EB439E20, &unk_1AB4D8CA0);
  v6 = v18[0];
  if (v20)
  {
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    (*(v4 + 32))(*(*(v6 + 64) + 40), &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    return swift_continuation_throwingResume();
  }

  else
  {
    v8 = v18[1];

    sub_1AB0149B0(&v19, v15);
    v9 = v16;
    v10 = v17;
    v14 = __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v8;
    (*(v4 + 32))(v12 + v11, &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v13 = *(v10 + 8);

    v13(sub_1AB43B258, v12, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB436F78(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB4377D0, &unk_1AB4E4600);
  v6 = v17[0];
  if (v19)
  {
    sub_1AB017200(a1, a2);
    v7 = *(*(v6 + 64) + 40);
    *v7 = a1;
    v7[1] = a2;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    sub_1AB017200(a1, a2);
    v13(sub_1AB43AF90, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB4370D8(uint64_t a1)
{
  v3 = sub_1AB45F764();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1AB014A58(v1, v18, &unk_1EB439840, &unk_1AB4D8C40);
  v6 = v18[0];
  if (v20)
  {
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    (*(v4 + 32))(*(*(v6 + 64) + 40), &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    return swift_continuation_throwingResume();
  }

  else
  {
    v8 = v18[1];

    sub_1AB0149B0(&v19, v15);
    v9 = v16;
    v10 = v17;
    v14 = __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    (*(v4 + 16))(&v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = v6;
    *(v12 + 24) = v8;
    (*(v4 + 32))(v12 + v11, &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v13 = *(v10 + 8);

    v13(sub_1AB43AF78, v12, v9, v10);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB43730C(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB4376E0, &unk_1AB4D8B50);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB437468(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSSource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &qword_1EB439D20, &unk_1AB4D8C30);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSSource);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JSSource);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSSource);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JSSource);
    v15 = *(v12 + 8);

    v15(sub_1AB43AF60, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437684(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_1AB014A58(v4, v21, &qword_1EB43A050, &qword_1AB4D8DC0);
  v8 = v21[0];
  if (v23)
  {
    sub_1AB017200(a1, a2);
    v9 = *(*(v8 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;
    v10 = a3;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1AB0149B0(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v8;
    v15[3] = v12;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    v16 = *(v14 + 8);

    sub_1AB017200(a1, a2);
    v17 = a3;
    v16(sub_1AB43AAF0, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB4377F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280, &qword_1AB4D8DA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1AB014A58(v2, v20, &unk_1EB439920, &unk_1AB4D8DB0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB014A58(a1, v7, &unk_1EB43D280, &qword_1AB4D8DA0);
    sub_1AB017FB8(v7, *(*(v8 + 64) + 40), &unk_1EB43D280, &qword_1AB4D8DA0);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB014A58(a1, v7, &unk_1EB43D280, &qword_1AB4D8DA0);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB017FB8(v7, v14 + v13, &unk_1EB43D280, &qword_1AB4D8DA0);
    v15 = *(v12 + 8);

    v15(sub_1AB43B854, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437A88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB4397D0, &qword_1AB4D8D60);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSResponse);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JSResponse);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSResponse);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JSResponse);
    v15 = *(v12 + 8);

    v15(sub_1AB43BC04, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437CA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770, &qword_1AB4DEFB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1AB014A58(v2, v20, &unk_1EB437780, &unk_1AB4DEF90);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB014A58(a1, v7, &unk_1EB437770, &qword_1AB4DEFB0);
    sub_1AB017FB8(v7, *(*(v8 + 64) + 40), &unk_1EB437770, &qword_1AB4DEFB0);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB014A58(a1, v7, &unk_1EB437770, &qword_1AB4DEFB0);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB017FB8(v7, v14 + v13, &unk_1EB437770, &qword_1AB4DEFB0);
    v15 = *(v12 + 8);

    v15(sub_1AB07D2EC, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB437F04(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB437790, &qword_1AB4D8C08);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB438090(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageIntentInstrumentation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB43D240, &unk_1AB4D8C20);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageIntentInstrumentation);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for PageIntentInstrumentation);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageIntentInstrumentation);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for PageIntentInstrumentation);
    v15 = *(v12 + 8);

    v15(sub_1AB43AE24, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB4382AC(char a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437930, &unk_1AB4E4610);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1 & 1;
    v9 = *(v7 + 8);

    v9(sub_1AB43BC20, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB4383EC(char a1)
{
  v2 = v1;
  sub_1AB014A58(v2, v14, &unk_1EB437910, &unk_1AB4E46B0);
  v4 = v14[0];
  if (v16)
  {
    **(*(v14[0] + 64) + 40) = a1 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v6 = v14[1];

    sub_1AB0149B0(&v15, v11);
    v7 = v12;
    v8 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v6;
    *(v9 + 32) = a1 & 1;
    v10 = *(v8 + 8);

    v10(sub_1AB43B014, v9, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }
}

uint64_t sub_1AB438530(__int128 *a1)
{
  sub_1AB014A58(v1, v19, &qword_1EB439FD0, &unk_1AB4D8D80);
  v3 = v19[0];
  if (v21)
  {
    v4 = a1[1];
    v16 = *a1;
    v17 = v4;
    v18 = a1[2];
    sub_1AB43B75C(a1, v13);
    v5 = *(*(v3 + 64) + 40);
    *v5 = v16;
    v5[1] = v17;
    v5[2] = v18;
    return swift_continuation_throwingResume();
  }

  else
  {
    v7 = v19[1];

    sub_1AB0149B0(&v20, v13);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v7;
    v11 = a1[1];
    *(v10 + 32) = *a1;
    *(v10 + 48) = v11;
    *(v10 + 64) = a1[2];
    v12 = *(v9 + 8);

    sub_1AB43B75C(a1, &v16);
    v12(sub_1AB43B7B8, v10, v8, v9);

    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }
}

uint64_t sub_1AB4386B8(char a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437920, qword_1AB4FAD60);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    *(v8 + 32) = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB43B018, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB4387F0(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 64);
  v5 = *(a1 + 11);
  v30 = *a1;
  *&v31 = v2;
  *(&v31 + 1) = v3;
  v6 = a1[3];
  v32 = a1[2];
  v33 = v6;
  v34[0] = v4;
  *&v34[8] = *(a1 + 72);
  *&v34[24] = v5;
  sub_1AB014A58(v1, v27, &unk_1EB438550, &unk_1AB4D8D70);
  v7 = v27[0];
  if (v29)
  {
    v23 = v32;
    v24 = v33;
    v25 = *v34;
    v26 = *&v34[16];
    v21 = v30;
    v22 = v31;
    sub_1AB014A58(&v30, v18, &unk_1EB43D270, &unk_1AB4FAD50);
    v8 = *(*(v7 + 64) + 40);
    v8[2] = v23;
    v8[3] = v24;
    v8[4] = v25;
    v8[5] = v26;
    *v8 = v21;
    v8[1] = v22;
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v27[1];

    sub_1AB0149B0(&v28, v18);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v13 = swift_allocObject();
    *(v13 + 16) = v7;
    *(v13 + 24) = v10;
    v14 = v33;
    *(v13 + 64) = v32;
    *(v13 + 80) = v14;
    v15 = *&v34[16];
    *(v13 + 96) = *v34;
    *(v13 + 112) = v15;
    v16 = v31;
    *(v13 + 32) = v30;
    *(v13 + 48) = v16;
    v17 = *(v12 + 8);

    sub_1AB014A58(&v30, &v21, &unk_1EB43D270, &unk_1AB4FAD50);
    v17(sub_1AB43B6A0, v13, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB4389EC(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB437700, &unk_1AB4D8B70);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB0165C4(a1, &v11);
    sub_1AB014B78(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB0165C4(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB014B78(v10, (v8 + 32));
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB438B48(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &qword_1EB4378C0, &qword_1AB4E4690);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB0224A8, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB438CA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - v6;
  sub_1AB014A58(v2, v20, &qword_1EB43BD80, &qword_1AB4E7C00);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB014A58(a1, v7, &unk_1EB4395B0, &qword_1AB4D6720);
    sub_1AB017FB8(v7, *(*(v8 + 64) + 40), &unk_1EB4395B0, &qword_1AB4D6720);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    v16 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB014A58(a1, v7, &unk_1EB4395B0, &qword_1AB4D6720);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB017FB8(v7, v14 + v13, &unk_1EB4395B0, &qword_1AB4D6720);
    v15 = *(v12 + 8);

    v15(sub_1AB43ABCC, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB438ED4(uint64_t a1)
{
  sub_1AB014A58(v1, v24, &unk_1EB4378A0, &unk_1AB4E4670);
  v3 = v24[0];
  if (v26)
  {
    sub_1AB0261D0(a1, &v19);
    v4 = *(*(v3 + 64) + 40);
    *v4 = v19;
    v6 = v22;
    v5 = v23;
    v7 = v21;
    v4[1] = v20;
    v4[2] = v7;
    v4[3] = v6;
    v4[4] = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v24[1];

    sub_1AB0149B0(&v25, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    sub_1AB0261D0(a1, &v19);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v22;
    *(v12 + 64) = v21;
    *(v12 + 80) = v13;
    *(v12 + 96) = v23;
    v14 = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v14;
    v15 = *(v11 + 8);

    v15(sub_1AB022478, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB439054(uint64_t a1)
{
  sub_1AB014A58(v1, v14, &unk_1EB4378B0, &unk_1AB4E4680);
  v3 = v14[0];
  if (v16)
  {
    sub_1AB01494C(a1, &v11);
    sub_1AB0149B0(&v11, *(*(v3 + 64) + 40));
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v14[1];

    sub_1AB0149B0(&v15, &v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v12);
    sub_1AB01494C(a1, v10);
    v8 = swift_allocObject();
    *(v8 + 16) = v3;
    *(v8 + 24) = v5;
    sub_1AB0149B0(v10, v8 + 32);
    v9 = *(v7 + 8);

    v9(sub_1AB022478, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  }
}

uint64_t sub_1AB439210(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DiskJetPackResourceBundle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB4398C0, &unk_1AB4D8CE0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for DiskJetPackResourceBundle);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DiskJetPackResourceBundle);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for DiskJetPackResourceBundle);
    v15 = *(v12 + 8);

    v15(sub_1AB04F7B0, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB43942C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JetPackAsset(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &unk_1EB4398A0, &unk_1AB4D8CC0);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JetPackAsset);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JetPackAsset);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JetPackAsset);
    v15 = *(v12 + 8);

    v15(sub_1AB43B33C, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB439648(uint64_t a1)
{
  sub_1AB014A58(v1, v22, &unk_1EB437880, &unk_1AB4E4660);
  v3 = v22[0];
  if (v24)
  {
    sub_1AB03FFF8(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1AB0149B0(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    sub_1AB03FFF8(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1AB022478, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB4397D0(uint64_t a1)
{
  sub_1AB014A58(v1, v22, &unk_1EB4398B0, &unk_1AB4D8CD0);
  v3 = v22[0];
  if (v24)
  {
    sub_1AB019BC0(a1, &v18);
    v4 = *(*(v3 + 64) + 40);
    v5 = v18;
    v6 = v19;
    v7 = v20;
    *(v4 + 48) = v21;
    *(v4 + 16) = v6;
    *(v4 + 32) = v7;
    *v4 = v5;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v22[1];

    sub_1AB0149B0(&v23, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    sub_1AB019BC0(a1, &v18);
    v12 = swift_allocObject();
    *(v12 + 16) = v3;
    *(v12 + 24) = v9;
    v13 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v13;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v14 = *(v11 + 8);

    v14(sub_1AB0224A8, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }
}

uint64_t sub_1AB439958(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JSPackageIndex(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &qword_1EB439E10, &unk_1AB4D8C90);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSPackageIndex);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for JSPackageIndex);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for JSPackageIndex);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for JSPackageIndex);
    v15 = *(v12 + 8);

    v15(sub_1AB43B140, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB439BA4(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437800, &qword_1AB4D8C78);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    v9(sub_1AB017C7C, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB439CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AB014A58(v4, v19, &unk_1EB4377F0, &unk_1AB4E4620);
  v8 = v19[0];
  if (v21)
  {
    sub_1AB1998F8(a1, a2);
    v9 = *(*(v8 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1AB0149B0(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v11;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v15 = *(v13 + 8);

    sub_1AB1998F8(a1, a2);

    v15(sub_1AB43AAF0, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB439E70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AB014A58(v3, v17, &unk_1EB43D260, &qword_1AB4D8C70);
  v6 = v17[0];
  if (v19)
  {
    sub_1AB1998F8(a1, a2);
    v7 = *(*(v6 + 64) + 40);
    *v7 = a1;
    v7[1] = a2;
    return swift_continuation_throwingResume();
  }

  else
  {
    v9 = v17[1];

    sub_1AB0149B0(&v18, v14);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    v12 = swift_allocObject();
    v12[2] = v6;
    v12[3] = v9;
    v12[4] = a1;
    v12[5] = a2;
    v13 = *(v11 + 8);

    sub_1AB1998F8(a1, a2);
    v13(sub_1AB43AF90, v12, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }
}

uint64_t sub_1AB43A030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1AB014A58(v4, v19, &qword_1EB4376C8, &qword_1AB4EFC00);
  v8 = v19[0];
  if (v21)
  {
    v9 = *(*(v19[0] + 64) + 40);
    *v9 = a1;
    v9[1] = a2;
    v9[2] = a3;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1AB0149B0(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v8;
    v14[3] = v11;
    v14[4] = a1;
    v14[5] = a2;
    v14[6] = a3;
    v15 = *(v13 + 8);

    v15(sub_1AB43AAF0, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB43A1B4(uint64_t a1)
{
  sub_1AB014A58(v1, v13, &unk_1EB437750, &unk_1AB4E45B0);
  v3 = v13[0];
  if (v15)
  {
    **(*(v13[0] + 64) + 40) = a1;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }

  else
  {
    v5 = v13[1];

    sub_1AB0149B0(&v14, v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1Tm(v10, v11);
    v8 = swift_allocObject();
    v8[2] = v3;
    v8[3] = v5;
    v8[4] = a1;
    v9 = *(v7 + 8);

    swift_unknownObjectRetain();
    v9(sub_1AB182594, v8, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1Tm(v10);
  }
}

uint64_t sub_1AB43A304(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for NetResponse(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB014A58(v2, v20, &qword_1EB4376C0, &unk_1AB4D8B30);
  v8 = v20[0];
  if (v22)
  {
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetResponse);
    sub_1AB03C5CC(&v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *(*(v8 + 64) + 40), type metadata accessor for NetResponse);
    return swift_continuation_throwingResume();
  }

  else
  {
    v10 = v20[1];

    sub_1AB0149B0(&v21, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    sub_1AB03C4FC(a1, &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetResponse);
    v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v8;
    *(v14 + 24) = v10;
    sub_1AB03C5CC(v7, v14 + v13, type metadata accessor for NetResponse);
    v15 = *(v12 + 8);

    v15(sub_1AB0B7230, v14, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

uint64_t sub_1AB43A580(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1AB014A58(v7, v21, a2, a3);
  v9 = v21[0];
  if (v23)
  {
    **(*(v21[0] + 64) + 40) = a1;
    v10 = a1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v12 = v21[1];

    sub_1AB0149B0(&v22, v18);
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1Tm(v18, v19);
    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v12;
    v15[4] = a1;
    v16 = *(v14 + 8);
    v17 = a1;

    v16(a5, v15, v13, v14);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

uint64_t sub_1AB43A6B8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0, &unk_1AB4D7F60);
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = 0;
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = 0;
  v10 = *a1;
  sub_1AB233FBC(&v10, a2, a3);
  sub_1AB42EC48();
  return v6;
}

uint64_t MetricsEventRecorder._recordAsync(_:on:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0, &unk_1AB4D7F60);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v14 = *a1;
  (*(a5 + 8))(&v14, a2, a3, a4, a5);
  sub_1AB42EC48();
  return v10;
}

uint64_t sub_1AB43A8B0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0, &unk_1AB4D7F60);
  v10 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  *(v11 + 16) = 0;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = 0;
  v14 = *a1;
  a6(&v14, a2, a3);
  sub_1AB42EC48();
  return v10;
}

uint64_t objectdestroy_25Tm()
{
  v1 = type metadata accessor for NetResponse(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 36);
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB43AAF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

uint64_t objectdestroy_46Tm(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AB43AB8C()
{
  v1 = v0[2];
  v2 = v0[5];
  v4[0] = v0[4];
  v4[1] = v2;
  return v1(v4);
}

uint64_t objectdestroy_109Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_153Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770, &qword_1AB4DEFB0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  }

  v5 = *(v1 + 28);
  v6 = sub_1AB45F244();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_181Tm()
{
  v1 = *(type metadata accessor for PageIntentInstrumentation(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = sub_1AB45F9B4();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_197Tm()
{

  sub_1AB017254(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB43AFD4()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t sub_1AB43B018()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 32);
  return v1(&v3);
}

uint64_t objectdestroy_239Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_236Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_246Tm()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_268Tm()
{
  v1 = *(type metadata accessor for JSPackageIndex(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_194Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_296Tm()
{
  v1 = (type metadata accessor for JetPackAsset(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));
  v5 = v0 + v3 + v1[7];

  v6 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v7 = sub_1AB45F9B4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_303Tm()
{

  sub_1AB021B04(v0[4], v0[5]);
  if (v0[9])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 6);
  }

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t objectdestroy_289Tm(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = (a1(0) - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(*v4 + 64);

  a2(*(v2 + v6 + 8));
  v8 = v4[8];
  v9 = sub_1AB45F764();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v2 + v6 + v8, 1, v9))
  {
    (*(v10 + 8))(v2 + v6 + v8, v9);
  }

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t objectdestroy_341Tm()
{

  if (v0[7])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  }

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t objectdestroy_375Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AB43B70C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 80);
  v6[2] = *(v0 + 64);
  v6[3] = v2;
  v3 = *(v0 + 112);
  v6[4] = *(v0 + 96);
  v6[5] = v3;
  v4 = *(v0 + 48);
  v6[0] = *(v0 + 32);
  v6[1] = v4;
  return v1(v6);
}

uint64_t objectdestroy_385Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB43B804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = v2;
  v7 = v3;
  v8 = *(v0 + 64);
  return v1(&v5);
}

uint64_t objectdestroy_402Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D280, &qword_1AB4D8DA0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = sub_1AB45F764();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_416Tm()
{

  sub_1AB017254(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t objectdestroy_188Tm()
{
  v1 = (type metadata accessor for JSSource(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroy_441Tm()
{

  if (*(v0 + 40) >= 2uLL)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB43BB74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  return v1(v4);
}

uint64_t sub_1AB43BBB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

void *IntentDispatchOptions.init(name:dependencies:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3[3] = a1;
  v3[4] = a2;
  v3[2] = v4;
  return v3;
}

void *IntentDispatchOptions.__allocating_init(dispatcher:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439A20, &qword_1AB4D41C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660, &qword_1AB4D43A8);
  *(inited + 64) = v3;
  v4 = swift_allocObject();
  *(inited + 40) = v4;
  sub_1AB01494C(a1, v4 + 16);
  *(inited + 32) = v3;
  v5 = sub_1AB014B20();
  v7 = MEMORY[0x1AC59B670](1, &type metadata for OpaqueMetatype, MEMORY[0x1E69E7CA0] + 8, v5);
  sub_1AB014B88(inited);
  swift_setDeallocating();
  sub_1AB01667C(inited + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  result = swift_allocObject();
  result[3] = 0xD000000000000017;
  result[4] = 0x80000001AB50F340;
  result[2] = v7;
  return result;
}

uint64_t IntentDispatchOptions.dispatcher.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB12F650(*(v1 + 16), a1);
  return swift_task_localValuePop();
}

uint64_t IntentDispatchOptions.withDispatcher(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436660, &qword_1AB4D43A8);
  sub_1AB014A58(a1, &v10, &qword_1EB439168, &qword_1AB4E1F60);
  if (v11)
  {
    sub_1AB1580C0(&v10, v13);
    v12 = v4;
    *(&v10 + 1) = swift_allocObject();
    sub_1AB01494C(v13, *(&v10 + 1) + 16);
    *&v10 = v4;
    v5 = sub_1AB0300F4(&v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    sub_1AB01667C(&v10);
    return v5;
  }

  else
  {
    sub_1AB014AC0(&v10, &qword_1EB439168, &qword_1AB4E1F60);
    v9 = v1[2];

    DependencyDictionary.remove(dependencyFor:)(v4);
    swift_beginAccess();
    v7 = v1[4];
    *&v10 = v1[3];
    *(&v10 + 1) = v7;

    MEMORY[0x1AC59BA20](2108704, 0xE300000000000000);
    v8 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v8);

    return (*(v3 + 96))(v10, *(&v10 + 1), &v9);
  }
}

uint64_t *IntentDispatchOptions.jsonContext.getter@<X0>(uint64_t **a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v4 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB0C7EF4(v1[2], &v4);
  swift_task_localValuePop();
  result = v4;
  if (!v4)
  {
    result = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  }

  *a1 = result;
  return result;
}

uint64_t IntentDispatchOptions.timeout.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v7 = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB12FB20(*(v1 + 16), &v7);
  result = swift_task_localValuePop();
  v4 = v9;
  v5 = v8;
  v6 = v7;
  if (v9)
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = (v4 | v5) & 1;
  return result;
}

uint64_t IntentDispatchOptions.withTimeoutDefault(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (sub_1AB24EEB0(*(v1 + 16)))
  {
  }

  else
  {
    v7 = &type metadata for IntentDispatchTimeout;
    v6 = v3;
    v5[0] = &type metadata for IntentDispatchTimeout;
    v5[1] = v2;
    v1 = sub_1AB0300F4(v5);
    sub_1AB01667C(v5);
  }

  return v1;
}

uint64_t IntentDispatchOptions.pageIntentInstrumentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0, &qword_1AB4DEFD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v10[1] = v2;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  sub_1AB12FFB4(*(v2 + 16), v6);
  swift_task_localValuePop();
  v7 = type metadata accessor for PageIntentInstrumentation(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v6, 1, v7) != 1)
  {
    return sub_1AB034334(v6, a1, type metadata accessor for PageIntentInstrumentation);
  }

  swift_storeEnumTagMultiPayload();
  result = (v8)(v6, 1, v7);
  if (result != 1)
  {
    return sub_1AB014AC0(v6, qword_1EB43D2B0, &qword_1AB4DEFD0);
  }

  return result;
}

uint64_t IntentDispatchOptions.pageRenderMetrics.getter()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v1 = sub_1AB13055C(*(v0 + 16));
  swift_task_localValuePop();
  return v1;
}

uint64_t IntentDispatchOptions.withPageRenderMetrics(_:)(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v15[0] = v1;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v4 = sub_1AB130A20(v1[2]);
  v6 = v5;
  v8 = v7;
  swift_task_localValuePop();
  if ((v8 & 0x100) == 0)
  {
    sub_1AB41308C("JetEngine/IntentDispatchOptions.swift", 37, 2, 174, v4, v6, v8);
  }

  v9 = type metadata accessor for PageRenderMetricsPresenter();
  if (a1)
  {
    v15[4] = v9;
    v15[0] = v9;
    v15[1] = a1;

    v10 = sub_1AB0300F4(v15);
    sub_1AB01667C(v15);
    return v10;
  }

  else
  {
    v18 = v1[2];
    v12 = v9;

    DependencyDictionary.remove(dependencyFor:)(v12);
    swift_beginAccess();
    v13 = v1[4];
    v16 = v1[3];
    v17 = v13;

    MEMORY[0x1AC59BA20](2108704, 0xE300000000000000);
    v14 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v14);

    return (*(v3 + 96))(v16, v17, &v18);
  }
}

uint64_t sub_1AB43C608(int a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0, &qword_1AB4DEFD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for PageRenderMetricsPresenter.State(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageIntentInstrumentation(0);
  v24 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v25[0] = v3;
  type metadata accessor for BaseObjectGraph();

  swift_task_localValuePush();
  v15 = sub_1AB13055C(*(v3 + 16));
  swift_task_localValuePop();
  if (v15)
  {
    LODWORD(v23) = a1;
    v16 = *(v15 + 32);
    v17 = *(*v16 + *MEMORY[0x1E69E6B68] + 16);
    v18 = (*(*v16 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v16 + v18));
    sub_1AB03ABBC(v16 + v17, v11, type metadata accessor for PageRenderMetricsPresenter.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1AB034334(v11, v14, type metadata accessor for PageRenderEvent);
    }

    else
    {
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384C8, &qword_1AB4DCB50) + 48);
      swift_unknownObjectRelease();
      sub_1AB034334(v11, v14, type metadata accessor for PageRenderEvent);
      sub_1AB074218(&v11[v20]);
    }

    os_unfair_lock_unlock((v16 + v18));
    swift_storeEnumTagMultiPayload();
    sub_1AB03ABBC(v14, v8, type metadata accessor for PageIntentInstrumentation);
    (*(v24 + 56))(v8, 0, 1, v12);
    sub_1AB03AC24(v8);
    sub_1AB014AC0(v8, qword_1EB43D2B0, &qword_1AB4DEFD0);
    v19 = sub_1AB03B068(&type metadata for IntentDispatchOptions.BadOrderingCanary);

    sub_1AB03439C(v14);
  }

  else
  {
    v27 = &type metadata for IntentDispatchOptions.BadOrderingCanary;
    v26 = 2;
    v25[1] = v23;
    v25[2] = a3;
    v25[0] = &type metadata for IntentDispatchOptions.BadOrderingCanary;
    v19 = sub_1AB0300F4(v25);
    sub_1AB01667C(v25);
  }

  return v19;
}

uint64_t IntentDispatchOptions.deinit()
{

  return v0;
}

uint64_t _CodeByKind_KeyedBy.wrappedValue.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _CodeByKind_KeyedBy.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_1AB4603C4();
  swift_getWitnessTable();
  sub_1AB461D74();
  return 0;
}

uint64_t _CodeByKind_KeyedBy.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AB01494C(a1, v19);
  type metadata accessor for CodeByKind(0, a3, a7, v13);
  swift_getWitnessTable();
  v14 = sub_1AB460404();
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v18[1] = a5;
    MEMORY[0x1EEE9AC00](v14);
    v18[2] = v15;
    KeyPath = swift_getKeyPath();
    v20 = v18;
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getAssociatedTypeWitness();
    a6 = sub_1AB4603A4();

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return a6;
}

uint64_t _CodeByKind_KeyedBy.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for CodeByKind(0, a4, a8, v10);
  sub_1AB4603A4();
  swift_getWitnessTable();
  sub_1AB4603D4();
}

uint64_t sub_1AB43CE28@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return CodeByKind.init(wrappedValue:)(v9, a4);
}

uint64_t sub_1AB43CF5C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_KeyedBy.init(from:)(a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AB01494C(a1, v11);
  v7 = type metadata accessor for CodeByKind(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  Dictionary<>.init(_partiallyFrom:)(v11, v7, WitnessTable);
  swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  v9 = sub_1AB4603A4();

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

uint64_t sub_1AB43D0E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = _CodeByKind_KeyedBy<>.init(_partiallyFrom:)(a1, *(a2 + 24), *(a2 + 56));
  *a3 = result;
  return result;
}

uint64_t _CodeByKind_KeyedBy<>._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for CodeByKind(0, a3, a4, v7);
  v9 = sub_1AB4603A4();
  WitnessTable = swift_getWitnessTable();
  Dictionary<>._partiallyEncode(to:)(a1, v9, v8, WitnessTable);
}

uint64_t sub_1AB43D20C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1, v7);
  return CodeByKind.init(wrappedValue:)(v9, a4);
}

uint64_t static _CodeByKind_KeyedBy<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedTypeWitness();

  return sub_1AB4603F4();
}

uint64_t _CodeByKind_KeyedBy<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_getAssociatedTypeWitness();

  return sub_1AB4603E4();
}

uint64_t _CodeByKind_KeyedBy<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1AB4620A4();
  swift_getAssociatedTypeWitness();
  sub_1AB4603E4();
  return sub_1AB462104();
}

uint64_t sub_1AB43D580(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1AB4620A4();
  _CodeByKind_KeyedBy<>.hash(into:)(v9, *v3, a2[2], a2[3], v6, v7, a2[6], a2[7], v5);
  return sub_1AB462104();
}

uint64_t sub_1AB43D624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AB43D678(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D340, &qword_1AB4FB078);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB43DD14();
  sub_1AB462274();
  v13 = 0;
  sub_1AB461BB4();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98, &qword_1AB4DE220);
    sub_1AB3FA5C0(&qword_1EB4323E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1AB461BF4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1AB43D840()
{
  result = sub_1AB0B22E0(MEMORY[0x1E69E7CC0]);
  qword_1EB46BDE0 = 0xD000000000000011;
  *algn_1EB46BDE8 = 0x80000001AB50F420;
  qword_1EB46BDF0 = result;
  return result;
}

uint64_t sub_1AB43D890()
{
  if (*v0)
  {
    return 0x73726564616568;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1AB43D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1AB461DA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73726564616568 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AB461DA4();

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

uint64_t sub_1AB43D9A0(uint64_t a1)
{
  v2 = sub_1AB43DD14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB43D9DC(uint64_t a1)
{
  v2 = sub_1AB43DD14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AB43DA18@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AB43DAEC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1AB43DA68(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  return sub_1AB173000(v2, v3);
}

uint64_t sub_1AB43DAEC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D338, &qword_1AB4FB070);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB43DD14();
  sub_1AB462224();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_1AB461A84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436F98, &qword_1AB4DE220);
    v9[15] = 1;
    sub_1AB3FA5C0(&qword_1EB43CF10, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1AB461AC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_1AB43DD14()
{
  result = qword_1EB432A78;
  if (!qword_1EB432A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432A78);
  }

  return result;
}

unint64_t sub_1AB43DD7C()
{
  result = qword_1EB43D348;
  if (!qword_1EB43D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D348);
  }

  return result;
}

unint64_t sub_1AB43DDD4()
{
  result = qword_1EB432A68;
  if (!qword_1EB432A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432A68);
  }

  return result;
}

unint64_t sub_1AB43DE2C()
{
  result = qword_1EB432A70;
  if (!qword_1EB432A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB432A70);
  }

  return result;
}

id FamilyInfoLookupBagContract.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  *&v3[OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing] = v4;
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v4;
  v5 = type metadata accessor for MescalBagContract();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  swift_unknownObjectRetain_n();
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v8, sel_init);
}

id FamilyInfoLookupBagContract.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing] = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v2;
  v3 = type metadata accessor for MescalBagContract();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain_n();
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v7, sel_init);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1AB43E088()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 URLForKey_];

  return v3;
}

id FamilyInfoLookupBagContract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FamilyInfoLookupBagContract();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB43E1C0@<X0>(void (*a1)(_OWORD *)@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AB014A58(v2, v8, &qword_1EB43D3C0, &unk_1AB4FB1E0);
  if (v10)
  {
    *a2 = *&v8[0];
    *(a2 + 40) = 1;
  }

  else
  {
    v6[0] = v8[0];
    v6[1] = v8[1];
    v7 = v9;
    a1(v6);
    result = sub_1AB066D84(v6);
    *(a2 + 40) = 0;
  }

  return result;
}

uint64_t sub_1AB43E270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a1;
  v46 = a2;
  v47 = a4;
  v45 = a5;
  v52 = *MEMORY[0x1E69E9840];
  v6 = sub_1AB45FBC4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v41[1] = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AB45FBE4();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v41[0] = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v41 - v11;
  v13 = sub_1AB45F764();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v48 = v41 - v18;
  v19 = sub_1AB45F3E4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F3D4();
  sub_1AB45F3C4();

  MEMORY[0x1AC59A690](v46, a3);
  sub_1AB45F384();
  MEMORY[0x1AC59A6B0](0x6E6576652F31762FLL, 0xEA00000000007374);
  sub_1AB45F314();
  sub_1AB45F334();
  v23 = v14;
  v24 = *(v14 + 48);
  v25 = v13;
  if (v24(v12, 1, v13) == 1)
  {
    sub_1AB014AC0(v12, &unk_1EB4395B0, &qword_1AB4D6720);
    sub_1AB45FBB4();
    sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    sub_1AB43FBAC(&qword_1EB43B568, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    v26 = v41[0];
    v27 = v43;
    sub_1AB45F574();
    sub_1AB45FBD4();
    (*(v42 + 8))(v26, v27);
    swift_willThrow();
    return (*(v20 + 8))(v22, v19);
  }

  else
  {
    v47 = v19;
    v29 = v23;
    v30 = *(v23 + 32);
    v31 = v48;
    v30(v48, v12, v25);
    (*(v29 + 16))(v16, v31, v25);
    v32 = v45;
    sub_1AB45F064();
    sub_1AB45EFF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D3C8, &qword_1AB4FB1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = 0x73746E657665;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = sub_1AB43F8E8(v44);
    v34 = sub_1AB1DB49C(inited);
    swift_setDeallocating();
    sub_1AB014AC0(inited + 32, &qword_1EB43D3D0, &qword_1AB4FB1F8);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D3D8, &qword_1AB4FB200);
    v50[0] = v34;
    sub_1AB45F094();
    v35 = objc_opt_self();
    v49 = *__swift_project_boxed_opaque_existential_1Tm(v50, v51);

    v36 = sub_1AB461F94();
    v49 = 0;
    v37 = [v35 dataWithJSONObject:v36 options:0 error:&v49];
    swift_unknownObjectRelease();
    v38 = v49;
    if (v37)
    {
      sub_1AB45F854();

      sub_1AB45F084();
    }

    else
    {
      v39 = v38;
      sub_1AB45F594();

      swift_willThrow();
      v40 = sub_1AB45F0A4();
      (*(*(v40 - 8) + 8))(v32, v40);
    }

    (*(v29 + 8))(v48, v25);
    (*(v20 + 8))(v22, v47);
    return __swift_destroy_boxed_opaque_existential_1Tm(v50);
  }
}

void sub_1AB43E94C(uint64_t a1, uint64_t a2, void (*a3)(void *), void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v39 = a8;
  v40 = a6;
  v41 = a7;
  v42 = a3;
  v37 = a2;
  v38 = a5;
  v43 = a4;
  v35 = a1;
  v9 = sub_1AB45EFB4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1AB45EFC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AB45F0A4();
  v36 = *(v14 - 8);
  v15 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v35 - v18;
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v20 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v20[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v20 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    goto LABEL_14;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB4358F0 != -1)
  {
    swift_once();
  }

  v22 = sub_1AB026D00(qword_1EB46C2C0, *algn_1EB46C2C8);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    sub_1AB43E270(v39, v38, v40, v41, v19);
    v41 = a9;
    v24 = sub_1AB45F024();
    v25 = v36;
    (*(v36 + 16))(v16, v19, v14);
    v26 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v27 = (v15 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    (*(v25 + 32))(v28 + v26, v16, v14);
    v29 = (v28 + v27);
    v30 = v37;
    *v29 = v35;
    v29[1] = v30;
    v31 = (v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8));
    v32 = v43;
    *v31 = v42;
    v31[1] = v32;
    aBlock[4] = sub_1AB43FAB8;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1AB373C48;
    aBlock[3] = &block_descriptor_49;
    v33 = _Block_copy(aBlock);

    v34 = [v41 dataTaskWithRequest:v24 completionHandler:v33];
    _Block_release(v33);

    [v34 resume];
    (*(v25 + 8))(v19, v14);
    return;
  }

LABEL_14:
  sub_1AB45EF94();
  sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  sub_1AB43FBAC(&qword_1EB438F78, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1AB45F574();
  v23 = sub_1AB45EF64();
  (*(v11 + 8))(v13, v10);
  v42(v23);
}

uint64_t sub_1AB43EE4C(uint64_t a1, unint64_t a2, int a3, id a4, int a5, void (*a6)(_OWORD *), int a7, void (*a8)(void), uint64_t a9)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    sub_1AB017200(a1, a2);
    if (qword_1EB4356D0 != -1)
    {
      swift_once();
    }

    if (sub_1AB0672FC(qword_1EB46C2A0, *algn_1EB46C2A8, a1, a2))
    {
      v14 = 0x1E695DF20;
      v15 = [objc_allocWithZone(MEMORY[0x1E695DF20]) init];
      v16 = qword_1ED4D1BA0;
    }

    else
    {
      if (qword_1EB4356D8 != -1)
      {
        swift_once();
      }

      if (!sub_1AB0672FC(qword_1EB46C248, unk_1EB46C250, a1, a2))
      {
        v19 = objc_opt_self();
        v20 = sub_1AB45F834();
        *&v25[0] = 0;
        v21 = [v19 JSONObjectWithData:v20 options:4 error:v25];

        v22 = *&v25[0];
        if (!v21)
        {
          v23 = v22;
          v24 = sub_1AB45F594();

          swift_willThrow();
          v11 = sub_1AB03BD58(a1, a2);
          *&v27 = v24;
          v30 = 1;
          goto LABEL_14;
        }

        sub_1AB461494();
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      v14 = 0x1E695DEC8;
      v15 = [objc_allocWithZone(MEMORY[0x1E695DEC8]) init];
      v16 = &qword_1ED4D0BE0;
    }

    *(&v28 + 1) = sub_1AB016760(0, v16, v14);
    *&v27 = v15;
LABEL_13:
    sub_1AB014B78(&v27, v31);
    sub_1AB0165C4(v31, v25);
    *(&v28 + 1) = &type metadata for FoundationValue;
    v29 = &off_1F1FFB5A8;
    *&v27 = swift_allocObject();
    sub_1AB014B78(v25, (v27 + 16));
    sub_1AB03BD58(a1, a2);
    v11 = __swift_destroy_boxed_opaque_existential_1Tm(v31);
    v30 = 0;
    goto LABEL_14;
  }

  if (!a4)
  {
    result = sub_1AB461884();
    __break(1u);
    return result;
  }

  *&v27 = a4;
  v30 = 1;
  v11 = a4;
LABEL_14:
  MEMORY[0x1EEE9AC00](v11);
  sub_1AB43E1C0(sub_1AB43FB90, v31);
  sub_1AB014AC0(&v27, &qword_1EB43D3C0, &unk_1AB4FB1E0);
  sub_1AB014A58(v31, &v27, &qword_1EB43D3C0, &unk_1AB4FB1E0);
  if (v30)
  {
    v17 = v27;
    a8(v27);
  }

  else
  {
    v25[0] = v27;
    v25[1] = v28;
    v26 = v29;
    a6(v25);
    sub_1AB066D84(v25);
  }

  return sub_1AB014AC0(v31, &qword_1EB43D3C0, &unk_1AB4FB1E0);
}

uint64_t sub_1AB43F24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AB45FBC4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AB45FBE4();
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v36 = a1;
  JSONObject.subscript.getter(27503, 0xE200000000000000, &v41);
  sub_1AB014A58(&v41, &v38, &qword_1EB436BA0, &qword_1AB4D4F40);
  v12 = v39;
  if (v39)
  {
    v13 = v40;
    __swift_project_boxed_opaque_existential_1Tm(&v38, v39);
    v14 = (*(v13 + 88))(v12, v13);
    sub_1AB066D84(&v41);
    __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    if (v14 != 2 && (v14 & 1) != 0)
    {
      return sub_1AB0B9254(v36, a2);
    }
  }

  else
  {
    sub_1AB066D84(&v41);
    sub_1AB014AC0(&v38, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v43 = MEMORY[0x1E69E7CC8];
  v16 = sub_1AB460544();
  v18 = v17;
  sub_1AB45F074();
  v19 = sub_1AB45F764();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v11, 1, v19) == 1)
  {
    sub_1AB014AC0(v11, &unk_1EB4395B0, &qword_1AB4D6720);
    sub_1AB09AE18(v16, v18, &v41);

    sub_1AB014AC0(&v41, &unk_1EB437E60, &qword_1AB4D4730);
  }

  else
  {
    v42 = v19;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    (*(v20 + 32))(boxed_opaque_existential_0, v11, v19);
    sub_1AB014B78(&v41, &v38);
    v22 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v22;
    sub_1AB01AE18(&v38, v16, v18, isUniquelyReferenced_nonNull_native);

    v43 = v37;
  }

  v24 = sub_1AB460544();
  v26 = v25;
  JSONObject.subscript.getter(0x726F727265, 0xE500000000000000, &v41);
  sub_1AB014A58(&v41, &v38, &qword_1EB436BA0, &qword_1AB4D4F40);
  v27 = v39;
  if (!v39)
  {
    sub_1AB066D84(&v41);
    sub_1AB014AC0(&v38, &qword_1EB436BA0, &qword_1AB4D4F40);
    goto LABEL_13;
  }

  v28 = v40;
  __swift_project_boxed_opaque_existential_1Tm(&v38, v39);
  v29 = (*(v28 + 24))(v27, v28);
  v31 = v30;
  sub_1AB066D84(&v41);
  __swift_destroy_boxed_opaque_existential_1Tm(&v38);
  if (!v31)
  {
LABEL_13:
    sub_1AB09AE18(v24, v26, &v41);

    sub_1AB014AC0(&v41, &unk_1EB437E60, &qword_1AB4D4730);
    goto LABEL_14;
  }

  v39 = MEMORY[0x1E69E6158];
  *&v38 = v29;
  *(&v38 + 1) = v31;
  sub_1AB014B78(&v38, &v41);
  v32 = v43;
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v37 = v32;
  sub_1AB01AE18(&v41, v24, v26, v33);

  v43 = v37;
LABEL_14:
  sub_1AB45FB84();
  sub_1AB43FBAC(&qword_1EB43B568, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
  sub_1AB45F574();
  sub_1AB45FBD4();
  (*(v35 + 8))(v8, v6);
  return swift_willThrow();
}

uint64_t sub_1AB43F790()
{
  v1 = *(v0 + 16);
  sub_1AB4620A4();
  sub_1AB460684();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB43F7F4(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1AB460684();
  return MEMORY[0x1AC59D3F0](v2);
}

uint64_t sub_1AB43F82C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1AB4620A4();
  sub_1AB460684();
  MEMORY[0x1AC59D3F0](v2);
  return sub_1AB462104();
}

BOOL sub_1AB43F88C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_1AB461DA4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

void *sub_1AB43F8E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D3E0, &qword_1AB4FB208);
  result = sub_1AB461904();
  v3 = 0;
  v27 = result;
  v28 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v26 = result + 8;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v29 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = *(v28 + 56);
      v16 = (*(v28 + 48) + 16 * v14);
      v17 = v16[1];
      v33 = *v16;
      sub_1AB01494C(v15 + 40 * v14, v30);
      v18 = v31;
      v19 = v32;
      __swift_project_boxed_opaque_existential_1Tm(v30, v31);
      v20 = *(v19 + 16);

      v21 = v20(v18, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      result = v27;
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v22 = (v27[6] + 16 * v14);
      *v22 = v33;
      v22[1] = v17;
      *(v27[7] + 8 * v14) = v21;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      v9 = v29;
      if (!v29)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB43FAB8(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v9 = *(sub_1AB45F0A4() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1AB43EE4C(a1, a2, a3, a4, v4 + v10, *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1AB43FBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1AB43FC08()
{
  result = qword_1EB43D3E8;
  if (!qword_1EB43D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D3E8);
  }

  return result;
}

uint64_t sub_1AB43FC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43BCA0, &qword_1AB4F0B40);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  v6[4] = sub_1AB43FE40;
  v6[5] = v1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1AB09C234;
  v6[3] = &block_descriptor_50;
  v4 = _Block_copy(v6);

  [v0 createSnapshotWithCompletion_];
  _Block_release(v4);
  return v1;
}

void sub_1AB43FD78(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
    sub_1AB43FE88(v7, a3);
    v4 = v7;

LABEL_4:

    return;
  }

  if (a2)
  {
    v6 = a2;
    sub_1AB2A8A1C(a2);
    v4 = a2;

    goto LABEL_4;
  }

  sub_1AB461884();
  __break(1u);
}

void sub_1AB43FE88(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(a2 + 32) == 3)
  {
    os_unfair_lock_unlock(v3 + 4);
  }

  else if (*(a2 + 32))
  {
    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 24);
    *(a2 + 24) = a1;
    *(a2 + 32) = 1;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v3 + 4);
    v14 = v4;
    v5 = v4[2];
    if (v5)
    {
      v6 = (v4 + 4);
      do
      {
        sub_1AB08F8AC(v6, v22);
        sub_1AB08F8AC(v22, v19);
        v7 = v19[0];
        if (v21)
        {
          **(*(v19[0] + 64) + 40) = a1;
          swift_unknownObjectRetain();
          swift_continuation_throwingResume();
          sub_1AB08F91C(v22);
        }

        else
        {
          v8 = v19[1];

          sub_1AB0149B0(&v20, v16);
          v10 = v17;
          v9 = v18;
          __swift_project_boxed_opaque_existential_1Tm(v16, v17);
          v11 = swift_allocObject();
          v11[2] = v7;
          v11[3] = v8;
          v11[4] = a1;
          v12 = *(v9 + 8);
          v13 = a1;

          v12(sub_1AB017C84, v11, v10, v9);

          sub_1AB08F91C(v22);
          __swift_destroy_boxed_opaque_existential_1Tm(v16);
        }

        v6 += 80;
        --v5;
      }

      while (v5);
    }

    sub_1AB08F984(v14, 0);
  }
}

uint64_t JetpackSignerError.hashValue.getter()
{
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](0);
  return sub_1AB462104();
}

unint64_t sub_1AB44013C()
{
  result = qword_1EB43D3F0;
  if (!qword_1EB43D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D3F0);
  }

  return result;
}

uint64_t sub_1AB4401B0@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 9)
  {
    result = sub_1AB461884();
    __break(1u);
  }

  else
  {
    *a2 = byte_1AB4FB4BA[result];
  }

  return result;
}

uint64_t JSTypedArray.ElementType.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

JetEngine::JSTypedArray_optional __swiftcall JSTypedArray.init(_:)(JSValue a1)
{
  isa = a1.super.isa;
  v3 = v1;
  TypedArrayType = [(objc_class *)a1.super.isa context];
  if (TypedArrayType)
  {
    v6 = TypedArrayType;
    v7 = [TypedArrayType JSGlobalContextRef];

    TypedArrayType = JSValueGetTypedArrayType(v7, [(objc_class *)isa JSValueRef], 0);
    if (TypedArrayType == 9 || TypedArrayType == 10)
    {

      isa = 0;
    }

    *v3 = isa;
  }

  else
  {
    __break(1u);
  }

  result.value.value.super.isa = TypedArrayType;
  result.is_nil = v5;
  return result;
}

JetEngine::JSTypedArray __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSTypedArray.init(count:elementType:in:)(Swift::Int count, JetEngine::JSTypedArray::ElementType elementType, JSContext in)
{
  v5 = v3;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = *elementType;
  v18[0] = 0;
  TypedArray = JSObjectMakeTypedArray([(objc_class *)in.super.isa JSGlobalContextRef], dword_1AB4FB510[v6], count, v18);
  if (TypedArray)
  {
    result.value.super.isa = [objc_opt_self() valueWithJSValueRef:TypedArray inContext:in.super.isa];
    if (result.value.super.isa)
    {
      isa = result.value.super.isa;

      *v5 = isa;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v10 = v18[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v12 = v11;
  result.value.super.isa = [objc_opt_self() valueWithJSValueRef:v10 inContext:in.super.isa];
  if (!result.value.super.isa)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v13 = result.value.super.isa;
  v14 = [(objc_class *)in.super.isa exceptionHandler];
  if (v14)
  {
    v15 = v14[2];
    v16 = v14;
    v17 = v13;
    v15(v16, in.super.isa, v17);
    _Block_release(v16);
  }

  JSError.init(_:)(v13, v12);
  swift_willThrow();

  return result;
}

void JSTypedArray.init(bytesNoCopy:count:deallocator:elementType:in:)(void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void *a6@<X5>, void *a7@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v13 = *a5;
  type metadata accessor for JSBytesDeallocatorHolder();
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v27[0] = 0;

  TypedArrayWithBytesNoCopy = JSObjectMakeTypedArrayWithBytesNoCopy([a6 JSGlobalContextRef], dword_1AB4FB510[v13], a1, a2, sub_1AB30B9C8, v14, v27);
  if (TypedArrayWithBytesNoCopy)
  {
    v16 = [objc_opt_self() valueWithJSValueRef:TypedArrayWithBytesNoCopy inContext:a6];
    if (v16)
    {
      v17 = v16;

      *a7 = v17;
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  v18 = v27[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v20 = v19;
  v21 = [objc_opt_self() valueWithJSValueRef:v18 inContext:a6];
  if (!v21)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [a6 exceptionHandler];
  if (v23)
  {
    v24 = v23[2];
    v25 = v23;
    v26 = v22;
    v24(v25, a6, v26);
    _Block_release(v25);
  }

  JSError.init(_:)(v22, v20);
  swift_willThrow();
}

void JSTypedArray.init(data:elementType:in:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  exception[1] = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v11 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
    }

    v11 = HIDWORD(a1) - a1;
  }

LABEL_11:
  v14 = swift_slowAlloc();
  sub_1AB45F8B4();
  type metadata accessor for JSBytesDeallocatorHolder();
  v15 = swift_allocObject();
  v15[2] = sub_1AB3D2AD8;
  v15[3] = 0;
  exception[0] = 0;
  TypedArrayWithBytesNoCopy = JSObjectMakeTypedArrayWithBytesNoCopy([a4 JSGlobalContextRef], dword_1AB4FB510[v9], v14, v11, sub_1AB30B9C8, v15, exception);
  if (TypedArrayWithBytesNoCopy)
  {
    v17 = [objc_opt_self() valueWithJSValueRef:TypedArrayWithBytesNoCopy inContext:a4];
    if (v17)
    {
      v18 = v17;
      sub_1AB017254(a1, a2);

      *a5 = v18;
      return;
    }

    __break(1u);
    goto LABEL_20;
  }

  v19 = exception[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v21 = v20;
  v22 = [objc_opt_self() valueWithJSValueRef:v19 inContext:a4];
  if (!v22)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = [a4 exceptionHandler];
  if (v24)
  {
    v25 = v21;
    v26 = v24[2];
    v27 = v24;
    v28 = v23;
    v26(v27, a4, v28);
    v21 = v25;
    _Block_release(v27);
  }

  JSError.init(_:)(v23, v21);
  swift_willThrow();
  sub_1AB017254(a1, a2);
}

JetEngine::JSTypedArray __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> JSTypedArray.init(buffer:elementType:in:)(JetEngine::JSArrayBuffer buffer, JetEngine::JSTypedArray::ElementType elementType, JSContext in)
{
  v5 = v3;
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = *buffer.value.super.isa;
  v7 = *elementType;
  v19[0] = 0;
  TypedArrayWithArrayBuffer = JSObjectMakeTypedArrayWithArrayBuffer(-[objc_class JSGlobalContextRef](in.super.isa, sel_JSGlobalContextRef), dword_1AB4FB510[v7], [v6 JSValueRef], v19);
  if (TypedArrayWithArrayBuffer)
  {
    result.value.super.isa = [objc_opt_self() valueWithJSValueRef:TypedArrayWithArrayBuffer inContext:in.super.isa];
    if (result.value.super.isa)
    {
      isa = result.value.super.isa;

      *v5 = isa;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  v11 = v19[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v13 = v12;
  result.value.super.isa = [objc_opt_self() valueWithJSValueRef:v11 inContext:in.super.isa];
  if (!result.value.super.isa)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v14 = result.value.super.isa;
  v15 = [(objc_class *)in.super.isa exceptionHandler];
  if (v15)
  {
    v16 = v15[2];
    v17 = v15;
    v18 = v14;
    v16(v17, in.super.isa, v18);
    _Block_release(v17);
  }

  JSError.init(_:)(v14, v13);
  swift_willThrow();

  return result;
}

void JSTypedArray.init(buffer:range:elementType:in:)(id a1@<X4>, void **a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, char *a5@<X3>, void *a6@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = *a5;
  v8 = qword_1AB4FB4C8[v7];
  v9 = a3 * v8;
  if ((a3 * v8) >> 64 != (a3 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  if (__OFADD__(v10, 1))
  {
    goto LABEL_13;
  }

  v12 = *a2;
  v25[0] = 0;
  TypedArrayWithArrayBufferAndOffset = JSObjectMakeTypedArrayWithArrayBufferAndOffset([a1 JSGlobalContextRef], dword_1AB4FB510[v7], objc_msgSend(v12, sel_JSValueRef), v9, v10 + 1, v25);
  if (TypedArrayWithArrayBufferAndOffset)
  {
    v14 = [objc_opt_self() valueWithJSValueRef:TypedArrayWithArrayBufferAndOffset inContext:a1];
    if (v14)
    {
      v15 = v14;

      *a6 = v15;
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v16 = v25[0];
  sub_1AB0C3EF0();
  swift_allocError();
  v18 = v17;
  v19 = [objc_opt_self() valueWithJSValueRef:v16 inContext:a1];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = [a1 exceptionHandler];
  if (v21)
  {
    v22 = v21[2];
    v23 = v21;
    v24 = v20;
    v22(v23, a1, v24);
    _Block_release(v23);
  }

  JSError.init(_:)(v20, v18);
  swift_willThrow();
}

id JSTypedArray.count.getter()
{
  v1 = *v0;
  result = [*v0 context];
  if (result)
  {
    v3 = result;
    v4 = [result JSGlobalContextRef];

    v5 = [v1 JSValueRef];

    return JSObjectGetTypedArrayLength(v4, v5, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id JSTypedArray.elementType.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = [v3 context];
  if (result)
  {
    v5 = result;
    v6 = [result JSGlobalContextRef];

    TypedArrayType = JSValueGetTypedArrayType(v6, [v3 JSValueRef], 0);

    return sub_1AB4401B0(TypedArrayType, a1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *JSTypedArray.data.getter()
{
  v1 = *v0;
  result = [*v0 context];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  v4 = [result JSGlobalContextRef];

  result = JSObjectGetTypedArrayBytesPtr(v4, [v1 JSValueRef], 0);
  if (result)
  {
    v5 = result;
    result = [v1 context];
    if (result)
    {
      v6 = result;
      v7 = [result JSGlobalContextRef];

      TypedArrayByteOffset = JSObjectGetTypedArrayByteOffset(v7, [v1 JSValueRef], 0);
      result = [v1 context];
      if (result)
      {
        v9 = result;
        v10 = [result JSGlobalContextRef];

        TypedArrayByteLength = JSObjectGetTypedArrayByteLength(v10, [v1 JSValueRef], 0);
        return sub_1AB05AF50(&v5[TypedArrayByteOffset], TypedArrayByteLength);
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t JSTypedArray.description.getter()
{
  v1 = [*v0 description];
  v2 = sub_1AB460544();

  return v2;
}

unint64_t sub_1AB4410B0()
{
  result = qword_1EB43D3F8;
  if (!qword_1EB43D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D3F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSTypedArray.ElementType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSTypedArray.ElementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AB441264()
{
  result = sub_1AB460514();
  qword_1ED4CFF20 = result;
  return result;
}

void *BagLanguageSource.init(bag:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = sub_1AB2AE014;
  *(a2 + 32) = 0;
  return result;
}

void *BagLanguageSource.init(bag:timeout:defaultLanguages:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_1AB4412D8()
{
  *(v1 + 1896) = v0;
  if (v0)
  {
    v2 = sub_1AB441844;
  }

  else
  {
    v2 = sub_1AB44130C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB44130C()
{
  v1 = v0[236];
  v2 = v0[205];
  v3 = v0[206];
  v0[238] = v3;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 207, sub_1AB441388, v0 + 216);
}

uint64_t sub_1AB441388()
{
  *(v1 + 1912) = v0;
  if (v0)
  {
    v2 = sub_1AB441908;
  }

  else
  {
    v2 = sub_1AB4413BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB4413BC()
{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1664);
  *(v1 + 48) = *(v0 + 1656);
  *(v1 + 56) = v2;

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (*(v0 + 1888) + 16 * v3 + 40);
  while (++v3 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AB020904(0, *(v4 + 16) + 1, 1, v4);
      }

      v10 = *(v4 + 16);
      v9 = *(v4 + 24);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1AB020904((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 16) = v10 + 1;
      v11 = v4 + 16 * v10;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if (!*(v4 + 16))
  {

    v13 = (*(v0 + 1424))(v12);
    if (v13)
    {
      v4 = v13;
    }

    else
    {
      v14 = *(v0 + 1816);
      v15 = *(v0 + 1768);
      v16 = *(v0 + 1720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1AB4D4720;
      sub_1AB45FA54();
      v17 = sub_1AB45FA04();
      v19 = v18;
      (*(v15 + 8))(v14, v16);
      *(v4 + 32) = v17;
      *(v4 + 40) = v19;
    }
  }

  *(v0 + 1920) = v4;

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1656, sub_1AB4415A8, v0 + 1776);
}

uint64_t sub_1AB441600()
{
  v1 = *(v0 + 1920);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB4416E4()
{
  v1 = *(v0 + 1936);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1AB4417C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB441844()
{
  v1 = *(v0 + 1896);
  *(v0 + 1928) = v1;
  *(*(v0 + 1888) + 16) = 0;

  v3 = (*(v0 + 1424))(v2);
  *(v0 + 1936) = v3;
  if (v3)
  {

    v4 = sub_1AB44168C;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1600;
  }

  else
  {
    swift_willThrow();
    v4 = sub_1AB441770;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1440;
  }

  return MEMORY[0x1EEE6DEB0](v5, v6, v4, v7);
}

uint64_t sub_1AB441908()
{

  v1 = *(v0 + 1912);
  *(v0 + 1928) = v1;
  *(*(v0 + 1888) + 16) = 0;

  v3 = (*(v0 + 1424))(v2);
  *(v0 + 1936) = v3;
  if (v3)
  {

    v4 = sub_1AB44168C;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1600;
  }

  else
  {
    swift_willThrow();
    v4 = sub_1AB441770;
    v5 = v0 + 656;
    v6 = v0 + 1656;
    v7 = v0 + 1440;
  }

  return MEMORY[0x1EEE6DEB0](v5, v6, v4, v7);
}

uint64_t sub_1AB4419D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 96) = v2;

  if (v2)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x1EEE6DFA0](sub_1AB4425CC, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1AB441B34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 240) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1AB441CEC;
  }

  else
  {

    *(v2 + 248) = *(v2 + 184);
    v4 = sub_1AB441C60;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB441C60()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = sub_1AB460544();
  v5 = v4;

  v6 = v0[1];

  return v6(v3, v5);
}

uint64_t sub_1AB441CEC()
{

  swift_getErrorValue();
  v1 = sub_1AB044DF8(v0[21], v0[22]);
  v2 = v0[30];
  v3 = v0[28];
  if (v1)
  {

    v4 = v0[1];

    return v4(0, 0);
  }

  else
  {
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1AB441DD4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1AB441F10()
{
  v1 = *(v0 + 80);
  v2 = v1[4];
  v3 = *(v1 + 1);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = *v1;
  *(v0 + 56) = v4;
  *(v0 + 64) = v4;
  sub_1AB0A08EC(v0 + 56, v0 + 72);
  if (qword_1ED4CFF18 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 80);
  v6 = qword_1ED4CFF20;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1AB442034;

  return sub_1AB0A790C((v0 + 64), v6, v7, v8);
}

uint64_t sub_1AB442034(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 96) = v2;

  if (v2)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x1EEE6DFA0](sub_1AB20E038, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1AB442194()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1AB0AFC48;

  return sub_1AB441EF0(v0 + 16);
}

uint64_t sub_1AB442228(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB0A77C4(a1, v4);
}

uint64_t BagLanguageSource.locale(forLanguage:)@<X0>(uint64_t a3@<X8>)
{
  v23 = a3;
  v21 = sub_1AB45FAB4();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1AB45FB14();
  v6 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AB45FAA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v20 - v14;

  sub_1AB45F9F4();
  sub_1AB45FAF4();
  v24 = 0;
  v25 = 0xE000000000000000;
  v16 = sub_1AB45FA04();
  MEMORY[0x1AC59BA20](v16);

  MEMORY[0x1AC59BA20](0x61646E656C616340, 0xEA00000000003D72);
  sub_1AB45FAC4();
  v17 = v21;
  sub_1AB461824();
  (*(v3 + 8))(v5, v17);
  sub_1AB45F9F4();
  (*(v6 + 8))(v8, v22);
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_1AB0AA6C8(v15, v23);
  return (v18)(v15, v9);
}

uint64_t dispatch thunk of IntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return v13(a1, a2, a3, a4, a5);
}

id AllowedFieldValuesTreatmentAction.__allocating_init(field:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1AB460514();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(v3);
  v6 = sub_1AB4602D4();

  v7 = [v5 initWithField:v4 configuration:v6];

  return v7;
}

id AllowedFieldValuesTreatmentAction.init(field:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  strcpy(v16, "allowedValues");
  HIWORD(v16[1]) = -4864;
  sub_1AB461564();
  if (!*(a3 + 16) || (v8 = sub_1AB02B1D8(v17), (v9 & 1) == 0))
  {

    sub_1AB02B2E4(v17);
LABEL_7:
    swift_deallocPartialClassInstance();
    return 0;
  }

  sub_1AB0165C4(*(a3 + 56) + 32 * v8, v18);
  sub_1AB02B2E4(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D408, &unk_1AB4FB640);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v10 = sub_1AB1BF2A8(v16[0]);

  *&v4[OBJC_IVAR____TtC9JetEngine33AllowedFieldValuesTreatmentAction_allowList] = v10;
  if (a2)
  {
    v11 = sub_1AB460514();
  }

  else
  {
    v11 = 0;
  }

  v13 = sub_1AB4602D4();

  v15.receiver = v4;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, sel_initWithField_configuration_, v11, v13);

  if (v14)
  {

    return v14;
  }

  return 0;
}

uint64_t AllowedFieldValuesTreatmentAction.perform(_:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB01522C(a1, v7);
  if (!v7[3])
  {
    sub_1AB014AC0(v7, &unk_1EB437E60, &qword_1AB4D4730);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_8;
  }

  if (!*(&v9 + 1))
  {
LABEL_8:
    result = sub_1AB014AC0(&v8, &qword_1EB43AF78, &unk_1AB4FB650);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v11[0] = v8;
  v11[1] = v9;
  v12 = v10;
  if (sub_1AB15AB10(v11, *(v2 + OBJC_IVAR____TtC9JetEngine33AllowedFieldValuesTreatmentAction_allowList)))
  {
    v4 = swift_allocObject();
    sub_1AB02B4BC(v11, v4 + 16);
    result = sub_1AB02B2E4(v11);
    v6 = MEMORY[0x1E69E69B8];
  }

  else
  {
    result = sub_1AB02B2E4(v11);
    v6 = 0;
    v4 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  *(a2 + 24) = v6;
  *a2 = v4;
  return result;
}

id AllowedFieldValuesTreatmentAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AB442D90(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D1C0, &unk_1AB4D7F60);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB442F98;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB01D528;
  v11 = &block_descriptor_9_3;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB442F9C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_12_1;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

void sub_1AB442F40(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_1AB45F584();
  [v2 finishWithError_];
}

void sub_1AB442FA0()
{
  v2 = *v0;

  sub_1AB033000();
  v3 = v13;
  v4 = sub_1AB030B7C(&v13);
  if (v1)
  {
    v13.i64[0] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
    if (swift_dynamicCast())
    {
      v11 = v12;
      sub_1AB157E60();
      sub_1AB462024();
    }

    else
    {

      v13.i64[0] = 0;
      v13.i64[1] = 0xE000000000000000;
      MEMORY[0x1AC59BA20](0x6168636165726E55, 0xED0000203A656C62);
      swift_getErrorValue();
      sub_1AB461D64();
    }

    sub_1AB461884();
    __break(1u);
  }

  else
  {
    v5 = v0[2];
    MEMORY[0x1EEE9AC00](v4);
    v9[2] = v0;
    v10 = v3;
    type metadata accessor for ThrowingDependencyCell.ObjectState(0, *(v2 + 80), v6, v7);
    sub_1AB01A1F0(sub_1AB443E8C, v9, v5);
  }
}

uint64_t sub_1AB4431B0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1AB443200(a1, a2, v7, v5, v6);
  return v4;
}

void *sub_1AB443200(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ThrowingDependencyCell.ObjectState(0, *(*v5 + 80), a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v14 - v10);
  *v11 = a1;
  v11[1] = a2;
  swift_storeEnumTagMultiPayload();
  v12 = sub_1AB02FFC0(v11, v8);
  (*(v9 + 8))(v11, v8);
  v5[2] = v12;
  return v5;
}

void sub_1AB443304(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a3;
  v55 = a4;
  v8 = *a2;
  v9 = sub_1AB45FF84();
  tv_nsec = *(v9 - 8);
  tv_sec = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v51 - v13;
  v15 = *(v8 + 80);
  v18 = type metadata accessor for ThrowingDependencyCell.ObjectState(0, v15, v16, v17);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (v51 - v20);
  v23 = *(v22 + 16);
  v56 = a1;
  v23(v21, a1, v18, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(v15 - 8) + 32))(a5, v21, v15);
  }

  else
  {
    v58 = v15;
    v24 = v21[1];
    v51[0] = *v21;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v25 = sub_1AB45FFC4();
    __swift_project_value_buffer(v25, qword_1EB46C230);
    sub_1AB45FFA4();

    sub_1AB45FF44();
    v26 = sub_1AB45FFA4();
    v27 = sub_1AB461234();
    v28 = sub_1AB461314();
    v51[1] = a5;
    v51[2] = v5;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v57.tv_sec = v30;
      *v29 = 136315138;
      v31 = sub_1AB462314();
      v33 = sub_1AB030D2C(v31, v32, &v57.tv_sec);

      *(v29 + 4) = v33;
      v34 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v26, v27, v34, "MakeDependency", "object=%s,type=lazy", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1AC59F020](v30, -1, -1);
      MEMORY[0x1AC59F020](v29, -1, -1);
    }

    v36 = tv_nsec;
    v35 = tv_sec;
    (*(tv_nsec + 16))(v11, v14, tv_sec);
    sub_1AB460014();
    swift_allocObject();
    v37 = sub_1AB460004();
    (*(v36 + 8))(v14, v35);
    static MonotonicTime.now.getter(&v57);
    tv_nsec = v57.tv_nsec;
    tv_sec = v57.tv_sec;
    if (qword_1EB434B98 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v38 = v57.tv_sec;
    started = type metadata accessor for StartUpPerformanceEvent();
    v40 = v58;
    if (v58 == started)
    {
      v43 = 0;
      v42 = 0;
    }

    else
    {
      type metadata accessor for BaseObjectGraph();
      v41 = static BaseObjectGraph.current.getter();
      if (qword_1EB4359B0 != -1)
      {
        swift_once();
      }

      v57.tv_sec = v41;

      swift_task_localValuePush();
      v42 = sub_1AB01DBA0(*(v41 + 16));
      swift_task_localValuePop();

      if (v42)
      {

        v43 = sub_1AB043384(v40);

        if (v43)
        {

          sub_1AB460164();
        }
      }

      else
      {
        v43 = 0;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4365C0, &qword_1AB4D4308);
    v44 = swift_allocObject();
    *(v44 + 24) = 0;
    *(v44 + 16) = 0;
    v57.tv_sec = v44;
    MEMORY[0x1EEE9AC00](v44);
    v45 = v51[0];
    v51[-14] = v58;
    v51[-13] = v45;
    v47 = v54;
    v46 = v55;
    v51[-12] = v24;
    v51[-11] = v47;
    v51[-10] = v46;
    v51[-9] = v43;
    v48 = v56;
    v51[-8] = v42;
    v51[-7] = v48;
    v49 = tv_nsec;
    v51[-6] = tv_sec;
    v51[-5] = v49;
    v51[-4] = v37;
    v51[-3] = v50;
    v51[-2] = v38;
    sub_1AB4622F4();
  }
}

void sub_1AB4438E8(uint64_t a1@<X0>, uint64_t a2@<X1>, __darwin_time_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v56 = a8;
  v57 = a6;
  v58 = a7;
  v60 = a5;
  v61.tv_sec = a3;
  v61.tv_nsec = a4;
  v62 = a1;
  v63 = a2;
  v15 = sub_1AB45FFD4();
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1AB45FF84();
  v59 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1AB460134();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v61;
  v25 = v65;
  sub_1AB032B18(v62, v63, &v64.tv_sec, a14);
  if (!v25)
  {
    v61.tv_nsec = v15;
    v62 = a14;
    v28 = v56;
    v61.tv_sec = v17;
    v65 = v20;
    v63 = 0;
    if (v60)
    {
      (*(v22 + 104))(v24, *MEMORY[0x1E6977AC8], v21);
      sub_1AB460174();
      (*(v22 + 8))(v24, v21);
    }

    v29 = a9;
    v30 = v62;
    if (v57)
    {
      v64.tv_sec = swift_getDynamicType();
      StartUpPerformanceEvent.record(checkpoint:)(&v64.tv_sec);
    }

    v31 = type metadata accessor for ThrowingDependencyCell.ObjectState(0, v30, v26, v27);
    v32 = v58;
    (*(*(v31 - 8) + 8))(v58, v31);
    (*(*(v30 - 8) + 16))(v32, v29, v30);
    swift_storeEnumTagMultiPayload();
    static MonotonicTime.now.getter(&v64);
    tv_sec = v64.tv_sec;
    tv_nsec = v64.tv_nsec;
    v35 = v18;
    if (qword_1ED4D1F88 != -1)
    {
      swift_once();
    }

    v36 = tv_nsec / *&qword_1ED4D1F90 + tv_sec;
    v37 = a10 / *&qword_1ED4D1F90 + v28;
    if (qword_1EB434BA8 != -1)
    {
      swift_once();
    }

    v38 = v36 - v37;
    v39 = sub_1AB45FFC4();
    __swift_project_value_buffer(v39, qword_1EB46C230);

    v40 = sub_1AB45FFA4();
    v41 = v65;
    sub_1AB45FFF4();
    v42 = sub_1AB461224();

    v43 = sub_1AB461314();
    v44 = v59;
    if (v43)
    {

      v45 = v61.tv_sec;
      sub_1AB460024();

      v46 = v55;
      v47 = v61.tv_nsec;
      if ((*(v55 + 88))(v45, v61.tv_nsec) == *MEMORY[0x1E69E93E8])
      {
        v48 = 0;
        v49 = "[Error] Interval already ended";
      }

      else
      {
        (*(v46 + 8))(v45, v47);
        v49 = "selfTime=%f";
        v48 = 1;
      }

      v50 = swift_slowAlloc();
      *v50 = 0;
      *(v50 + 1) = v48;
      *(v50 + 2) = 2048;
      os_unfair_lock_lock((a12 + 24));
      v51 = *(a12 + 16);
      os_unfair_lock_unlock((a12 + 24));
      *(v50 + 4) = v38 - v51;
      v52 = v65;
      v53 = sub_1AB45FF64();
      _os_signpost_emit_with_name_impl(&dword_1AB012000, v40, v42, v53, "MakeDependency", v49, v50, 0xCu);
      v54 = v50;
      v41 = v52;
      MEMORY[0x1AC59F020](v54, -1, -1);
      v44 = v59;
    }

    (*(v44 + 8))(v41, v35);
    os_unfair_lock_lock((a13 + 24));
    *(a13 + 16) = v38 + *(a13 + 16);
    os_unfair_lock_unlock((a13 + 24));
  }
}

void *RunLoopWorkerThread.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  v4[6] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v4[7] = MEMORY[0x1E69E7CC0];
  return v4;
}

Swift::Void __swiftcall RunLoopWorkerThread.PendingTask.cancel()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CFRunLoopTimerInvalidate(Strong);
  }
}

uint64_t sub_1AB443FB4()
{
  result = sub_1AB460514();
  qword_1EB435818 = result;
  return result;
}

id static RunLoopWorkerThread.willStopNotification.getter()
{
  if (qword_1EB4356B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB435818;

  return v1;
}

void *RunLoopWorkerThread.init(name:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  v2[6] = 0;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v2[7] = MEMORY[0x1E69E7CC0];
  return v2;
}

uint64_t RunLoopWorkerThread.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

BOOL sub_1AB4440C0()
{
  v1 = *(v0 + 32);
  [v1 lock];
  v2 = *(v0 + 40) != 0;
  [v1 unlock];
  return v2;
}

id sub_1AB44411C()
{
  v1 = v0[4];
  [v1 lock];
  v2 = v0[5];
  if (v2)
  {
    v3 = v0[6];
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      CFRunLoopSourceInvalidate(v4);
      CFRunLoopStop(v5);

      v6 = v0[6];
      v0[6] = 0;

      v7 = v0[5];
      v0[5] = 0;
    }
  }

  swift_beginAccess();
  v0[7] = MEMORY[0x1E69E7CC0];

  return [v1 unlock];
}

void sub_1AB4441E4(uint64_t a1)
{
  sub_1AB460BA4();
  sub_1AB460B94();
  sub_1AB460AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (qword_1EB4356B8 != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:qword_1EB435818 object:a1];
}

void sub_1AB4442F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1AB444364@<X0>(uint64_t (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v36 = a1;
  v7 = sub_1AB461354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = *(v4 + 32);
  [v15 lock];
  v16 = CFRunLoopGetCurrent();
  v33 = v4;
  v34 = v10;
  v17 = *(v4 + 40);
  if (!v16)
  {
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v18 = v16;
  if (!v17)
  {

    goto LABEL_8;
  }

  type metadata accessor for CFRunLoop(0);
  sub_1AB0499A0(&qword_1ED4D13C0, type metadata accessor for CFRunLoop, &unk_1AB4D39C8);
  v19 = v17;
  v20 = a2;
  v21 = v19;
  v22 = sub_1AB45FC14();

  a2 = v20;
  if (v22)
  {
LABEL_6:
    v23 = [v15 unlock];
    return v36(v23);
  }

LABEL_8:
  [v15 unlock];
  v25 = dispatch_semaphore_create(0);
  v26 = *(a3 - 8);
  (*(v26 + 56))(v14, 1, 1, a3);
  v27 = sub_1AB02FFC0(v14, v7);
  (*(v8 + 8))(v14, v7);
  v28 = swift_allocObject();
  v28[2] = a3;
  v28[3] = v27;
  v28[4] = v36;
  v28[5] = a2;
  v28[6] = v25;

  v29 = v25;
  sub_1AB0484A4(sub_1AB444B1C, v28);

  v30 = sub_1AB461254();
  MEMORY[0x1EEE9AC00](v30);
  *(&v32 - 2) = a3;
  v31 = v34;
  sub_1AB01A1F0(sub_1AB444B2C, (&v32 - 4), v27);
  result = (*(v26 + 48))(v31, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v26 + 32))(v35, v31, a3);
  }

  return result;
}

uint64_t sub_1AB4446EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[2] = a5;
  v7[3] = a2;
  v7[4] = a3;
  sub_1AB461354();
  sub_1AB01A1F0(sub_1AB444D40, v7, a1);
  return sub_1AB461264();
}

uint64_t sub_1AB44476C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_1AB461354();
  v8 = (*(*(v7 - 8) + 8))(a1, v7);
  a2(v8);
  return (*(*(a4 - 8) + 56))(a1, 0, 1, a4);
}

uint64_t sub_1AB444830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for Result(0, a3, a3, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = a2;

  sub_1AB444364(sub_1AB444BA0, v13, v9, v12);

  Result.unwrap()(v9, a5);
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1AB444984()
{
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000014;
}

id *RunLoopWorkerThread.deinit()
{

  return v0;
}

uint64_t RunLoopWorkerThread.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AB444A9C()
{
  v1 = *v0;
  sub_1AB4615D4();

  MEMORY[0x1AC59BA20](*(v1 + 16), *(v1 + 24));
  MEMORY[0x1AC59BA20](41, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t dispatch thunk of RunLoopWorkerThread.scheduleSync<A>(task:)()
{
  return (*(*v0 + 256))();
}

{
  return (*(*v0 + 264))();
}

uint64_t sub_1AB444D70()
{
  sub_1AB4620A4();
  _s9JetEngine15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1AB462104();
}

uint64_t sub_1AB444DB4(uint64_t a1)
{
  sub_1AB4620A4();
  _s9JetEngine15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1AB462104();
}

uint64_t LRUIntentCache.__allocating_init(configuration:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  LRUIntentCache.init(configuration:)(a1, v3);
  return v2;
}

void LRUIntentCache.init(configuration:)(uint64_t *a1, double a2)
{
  v3 = v2;
  v5 = sub_1AB4611B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D4A0, qword_1AB4FB810);
    v10 = sub_1AB01561C(&qword_1EB4323E8, &unk_1EB43D4A0, qword_1AB4FB810, &unk_1AB4E4948);
    *&v17 = v9;
    *(&v17 + 1) = MEMORY[0x1E69E7CC8];
    v20 = v10;
    v18 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D4B0, &qword_1AB4FB858);
    v11 = swift_allocObject();
    *(v11 + 56) = 0;
    sub_1AB0149B0(&v17, v11 + 16);
    *(v3 + 16) = v11;
    sub_1AB348FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43D4C0, &unk_1AB4FB860);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1AB4D47F0;
    sub_1AB461194();
    sub_1AB4611A4();
    *&v17 = v12;
    sub_1AB349028(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D4D0, &qword_1AB4EB9F8);
    sub_1AB01561C(&qword_1EB4323C0, &qword_1EB43D4D0, &qword_1AB4EB9F8, MEMORY[0x1E69E6328]);
    sub_1AB4614E4();
    v14 = sub_1AB4611C4();
    (*(v6 + 8))(v8, v5);
    type metadata accessor for DispatchSourceMemoryPressureWrapper();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v3 + 24) = v15;
    swift_unknownObjectRetain();
    sub_1AB4450FC();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1AB4450FC()
{
  v12 = sub_1AB4601B4();
  v0 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v2 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1AB4601F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1AB446A4C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1AB01D528;
  aBlock[3] = &block_descriptor_53;
  v9 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  j___s9JetEngine22_DispatchQueueExecutorC5label3qos6targetACSS_0C00C3QoSVSo17OS_dispatch_queueCSgtcfcfA0__0(ObjectType);
  sub_1AB073BA0();
  sub_1AB4611D4();
  _Block_release(v9);
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v12);
  (*(v4 + 8))(v6, v3);

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AB461214();
  return swift_unknownObjectRelease();
}

uint64_t LRUIntentCache.deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AB4611E4();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LRUIntentCache.__deallocating_deinit()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AB4611E4();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t LRUIntentCache.retrieve<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[35] = a3;
  v4[36] = v3;
  v4[33] = a1;
  v4[34] = a2;
  v5 = sub_1AB461354();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB445544, 0, 0);
}

uint64_t sub_1AB445544()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v2[3];
  v4 = __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = *(v3 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v3);
  sub_1AB4619A4();
  (*(v5 + 8))(v6, v3);

  v7 = *(v1 + 16);
  *(swift_task_alloc() + 16) = v0 + 20;
  os_unfair_lock_lock(v7 + 14);
  sub_1AB445C44(&v7[4]);
  os_unfair_lock_unlock(v7 + 14);
  v0[41] = v10;

  if (v10)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB445778, 0, 0);
  }

  else
  {
    (*(*(v0[35] - 8) + 56))(v0[33], 1, 1);
    sub_1AB445CB8((v0 + 20));

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1AB445778()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_1AB445834;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB196DD8(v2);
  sub_1AB445CE8(v2);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB445834(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_1AB445BC4;
  }

  else
  {
    sub_1AB014B78((v2 + 232), (v2 + 200));
    v4 = sub_1AB44595C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1AB44595C()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  v5 = v0[35];
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  v20 = *(v7 + 56);
  v20(v2, v6 ^ 1u, 1, v5);
  (*(v4 + 16))(v1, v2, v3);
  v8 = (*(v7 + 48))(v1, 1, v5);
  v9 = v0[40];
  v10 = v0[41];
  v12 = v0[38];
  v11 = v0[39];
  v13 = v0[37];
  v14 = v0[35];
  v15 = v0[33];
  if (v8 == 1)
  {
    v16 = *(v12 + 8);
    v16(v0[39], v0[37]);
    v17 = swift_task_alloc();
    *(v17 + 16) = v14;
    *(v17 + 24) = v10;
    requirementFailure(_:file:line:)(sub_1AB445E60, v17, "JetEngine/LRUIntentCache.swift", 30, 2, 121);

    v20(v15, 1, 1, v14);
    v16(v9, v13);
  }

  else
  {

    (*(v7 + 32))(v15, v11, v14);
    v20(v15, 0, 1, v14);
    (*(v12 + 8))(v9, v13);
  }

  sub_1AB445CB8((v0 + 20));

  v18 = v0[1];

  return v18();
}

uint64_t sub_1AB445BC4()
{

  sub_1AB445CB8(v0 + 160);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB445C44(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 40))(v2, v3, v4);
}

uint64_t sub_1AB445CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437700, &unk_1AB4D8B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AB445D50(void *a1, uint64_t a2)
{
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000004ELL, 0x80000001AB50F720);
  v2 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v2);

  MEMORY[0x1AC59BA20](0x6C6175746361202CLL, 0xEF203A6570797420);
  v3 = sub_1AB462314();
  MEMORY[0x1AC59BA20](v3);

  MEMORY[0x1AC59BA20](46, 0xE100000000000000);
  return 0;
}

uint64_t LRUIntentCache.store<A>(_:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v6[17] = *(a5 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB445F24, 0, 0);
}

uint64_t sub_1AB445F24()
{
  v1 = v0[16];
  v2 = v0[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D4D8, &unk_1AB4FB888);
  v3 = swift_allocObject();
  v0[19] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = 0;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 56) = 0;
  v6 = v2[3];
  v7 = __swift_project_boxed_opaque_existential_1Tm(v2, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  sub_1AB4619A4();
  (*(v8 + 8))(v9, v6);

  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 2;
  *(v11 + 24) = v3;
  os_unfair_lock_lock(v10 + 14);
  sub_1AB4464D8(&v10[4]);
  v12 = v0[13];
  os_unfair_lock_unlock(v10 + 14);

  v16 = (v12 + *v12);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_1AB4461CC;
  v14 = v0[18];

  return v16(v14);
}

uint64_t sub_1AB4461CC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1AB4463C8;
  }

  else
  {
    v2 = sub_1AB4462E0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB4462E0()
{
  v1 = v0[18];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[11];
  v0[10] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  (*(v2 + 16))(boxed_opaque_existential_0, v1, v3);
  sub_1AB4327E8((v0 + 7));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  (*(v2 + 32))(v4, v1, v3);
  sub_1AB445CB8((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1AB4463C8()
{

  sub_1AB445CB8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB44643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AB446A14(a2, v10);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v9 = a3;
  v7 = *(v6 + 48);

  return v7(&v9, v10, v5, v6);
}

double sub_1AB4464F4(uint64_t a1, double a2)
{
  v2 = sub_1AB4611B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1AB461284();
    swift_unknownObjectRelease();
    sub_1AB446624(v7);
    (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_1AB446624(double a1)
{
  v2 = v1;
  v3 = sub_1AB4611B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB4611A4();
  sub_1AB349028(v7);
  v8 = sub_1AB4614C4();
  v9 = *(v4 + 8);
  v9(v6, v3);
  if (v8 & 1) != 0 || (sub_1AB461194(), v10 = sub_1AB4614C4(), v9(v6, v3), (v10))
  {
    sub_1AB461194();
    v11 = sub_1AB4614C4();
    v9(v6, v3);
    v12 = *(v2 + 16);
    os_unfair_lock_lock((v12 + 56));
    v13 = *(v12 + 40);
    v14 = *(v12 + 48);
    __swift_mutable_project_boxed_opaque_existential_1(v12 + 16, v13);
    (*(v14 + 32))(v11 & 1, v13, v14);
    os_unfair_lock_unlock((v12 + 56));
  }
}

uint64_t sub_1AB4467CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return LRUIntentCache.retrieve<A>(_:)(a1, a2, a3);
}

uint64_t sub_1AB446880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return LRUIntentCache.store<A>(_:operation:)(a1, a2, a3, a4, a5);
}

unint64_t sub_1AB4469C0()
{
  result = qword_1EB4329C8;
  if (!qword_1EB4329C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4329C8);
  }

  return result;
}

uint64_t _Lazy_KeyedBy.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, void *a5@<X8>)
{
  v10 = a1;
  v6 = sub_1AB4603C4();
  result = sub_1AB039A9C(&v10, v6, &v11, v7, v8);
  *a5 = v11;
  return result;
}

uint64_t _Lazy_KeyedBy.wrappedValue.getter(void *a1)
{
  v1 = sub_1AB4603C4();
  v4 = type metadata accessor for LazyValueWrapper(0, v1, v2, v3);

  sub_1AB06BB5C(v4, v5, v6, v7);

  return v9;
}

uint64_t sub_1AB446BC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = type metadata accessor for _Lazy_KeyedBy(0, *(a1 + a2 - 24), *(a1 + a2 - 16), *(a1 + a2 - 8));
  result = _Lazy_KeyedBy.wrappedValue.getter(v4);
  *a3 = result;
  return result;
}

uint64_t sub_1AB446C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _Lazy_KeyedBy(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));

  sub_1AB4477E4(v5, v4);
}

uint64_t _Lazy_KeyedBy.wrappedValue.setter(uint64_t a1, void *a2)
{
  sub_1AB4477E4(a1, a2);
}

uint64_t (*_Lazy_KeyedBy.wrappedValue.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = _Lazy_KeyedBy.wrappedValue.getter(a2);
  return sub_1AB446D04;
}

uint64_t sub_1AB446D04(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  if (a2)
  {

    sub_1AB4477E4(v4, v2);
  }

  else
  {
    sub_1AB4477E4(v3, v2);
  }
}

uint64_t _Lazy_KeyedBy.description.getter(void *a1)
{
  v1 = sub_1AB4603C4();
  type metadata accessor for LazyValueWrapper(0, v1, v2, v3);

  swift_getWitnessTable();
  sub_1AB461D74();

  return 0;
}

uint64_t _Lazy_KeyedBy.encode(to:)(void *a1, void *a2)
{
  v16 = _Lazy_KeyedBy.wrappedValue.getter(a2);
  v4 = sub_1AB4603C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8E8, &qword_1AB4E9738);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0(v12, v14);
    __swift_project_boxed_opaque_existential_1Tm(v14, v15);
    sub_1AB460434();
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1AB014AC0(v12, &qword_1EB43A8F0, &qword_1AB4E9740);
    v11 = sub_1AB4616E4();
    swift_allocError();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8, &qword_1AB4D8210);
    v8 = _Lazy_KeyedBy.wrappedValue.getter(a2);
    v7[3] = v4;
    *v7 = v8;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462234();
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1AB4615D4();

    *&v12[0] = 60;
    *(&v12[0] + 1) = 0xE100000000000000;
    v9 = _Lazy_KeyedBy.wrappedValue.getter(a2);
    v15 = v4;
    v14[0] = v9;
    runtimeType(of:)(v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v10 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v10);

    MEMORY[0x1AC59BA20](0xD000000000000012, 0x80000001AB509440);
    sub_1AB461694();
    (*(*(v11 - 8) + 104))(v7, *MEMORY[0x1E69E6B30]);
    return swift_willThrow();
  }
}

uint64_t _Lazy_KeyedBy<>._partiallyEncode(to:)(void *a1, void *a2, uint64_t a3)
{
  v6 = _Lazy_KeyedBy.wrappedValue.getter(a2);
  Dictionary<>._partiallyEncode(to:)(a1, v6, a2[3], a3);
}

uint64_t _Lazy_KeyedBy<>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v15);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v15[1];
  *(v10 + 32) = v15[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v16;
  *(v10 + 72) = v9;
  v12 = sub_1AB4603C4();
  sub_1AB1AA5C4(sub_1AB44785C, v10, v12, v13, v15);
  result = sub_1AB066D84(a1);
  *a5 = *&v15[0];
  return result;
}

uint64_t sub_1AB4471EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB014A58(a1, v21, &qword_1EB436BA0, &qword_1AB4D4F40);
  v10 = v22;
  if (!v22)
  {
    sub_1AB014AC0(v21, &qword_1EB436BA0, &qword_1AB4D4F40);
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_7;
  }

  v11 = v23;
  __swift_project_boxed_opaque_existential_1Tm(v21, v22);
  (*(v11 + 160))(&v24, v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (!*(&v25 + 1))
  {
LABEL_7:
    sub_1AB014AC0(&v24, &qword_1EB436BC0, &qword_1AB4D52B0);
    v16 = type metadata accessor for _Lazy_KeyedBy(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    sub_1AB163664();
    swift_allocError();
    v17 = MEMORY[0x1E69E7CC0];
    *v18 = v16;
    v18[1] = v17;
    v18[2] = 0;
    v18[3] = 0;
    return swift_willThrow();
  }

  v27[0] = v24;
  v27[1] = v25;
  v28 = v26;
  sub_1AB163BD0(v27, &v24);
  v21[0] = a2;

  v12 = Dictionary<>.init(deserializing:using:)(&v24, v21, a3, a4);
  if (v5)
  {
    sub_1AB3D85D8(0xD000000000000027, 0x80000001AB4FFF70, a2, &v24);
    sub_1AB014A58(&v24, v21, &qword_1EB436EC0, &qword_1AB4D6B20);
    v13 = v22;
    if (v22)
    {
      v14 = v23;
      __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      v15 = sub_1AB4603C4();
      (*(v14 + 8))(v15, v5, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
    }

    else
    {
      sub_1AB014AC0(v21, &qword_1EB436EC0, &qword_1AB4D6B20);
    }

    swift_willThrow();
    sub_1AB014AC0(&v24, &qword_1EB436EC0, &qword_1AB4D6B20);
    return sub_1AB07CDB0(v27);
  }

  else
  {
    v20 = v12;
    result = sub_1AB07CDB0(v27);
    *a5 = v20;
  }

  return result;
}

uint64_t _Lazy_KeyedBy<>.init(_partiallyDeserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  sub_1AB0B9254(a1, v15);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = v15[1];
  *(v10 + 32) = v15[0];
  *(v10 + 48) = v11;
  *(v10 + 64) = v16;
  *(v10 + 72) = v9;
  v12 = sub_1AB4603C4();
  sub_1AB1AA5C4(sub_1AB447880, v10, v12, v13, v15);
  result = sub_1AB066D84(a1);
  *a5 = *&v15[0];
  return result;
}

uint64_t sub_1AB44756C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1AB0B9254(a1, v10);
  v11 = a2;

  result = Dictionary<>.init(_partiallyDeserializing:using:)(v10, &v11, a3, a4);
  *a5 = result;
  return result;
}

uint64_t static _Lazy_KeyedBy<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = type metadata accessor for _Lazy_KeyedBy(0, a3, a4, a5);
  _Lazy_KeyedBy.wrappedValue.getter(v6);
  _Lazy_KeyedBy.wrappedValue.getter(v6);
  v7 = sub_1AB4603F4();

  return v7 & 1;
}

uint64_t _Lazy_KeyedBy<>.hash(into:)(uint64_t a1, void *a2, uint64_t a3)
{
  _Lazy_KeyedBy.wrappedValue.getter(a2);
  sub_1AB4603E4();
}

uint64_t _Lazy_KeyedBy<>.hashValue.getter(void *a1, uint64_t a2)
{
  v6[9] = *v2;
  sub_1AB4620A4();
  _Lazy_KeyedBy<>.hash(into:)(v6, a1, a2);
  return sub_1AB462104();
}

uint64_t sub_1AB447790(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1AB4620A4();
  _Lazy_KeyedBy<>.hash(into:)(v6, a2, v4);
  return sub_1AB462104();
}

double sub_1AB4477E4(uint64_t a1, void *a2)
{
  v3 = *v2;
  v11[0] = a1;
  v11[1] = v3;
  v4 = sub_1AB4603C4();
  v7 = type metadata accessor for LazyValueWrapper(0, v4, v5, v6);

  sub_1AB039D58(v11, v7, v8, v9);

  return result;
}

uint64_t sub_1AB447904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void MetricsLogger.Configuration.init(recorder:eventTopic:samplingPercentage:samplingDuration:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v12 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v12[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v12 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
LABEL_9:
    sub_1AB0149B0(a1, a4);
    *(a4 + 40) = a2;
    *(a4 + 48) = a3;
    *(a4 + 56) = a5;
    *(a4 + 64) = a6;
    return;
  }

  if (a5 >= 0.0 && a5 <= 1.0)
  {
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t MetricsLogger.Configuration.recorder.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(v1);

  return sub_1AB0149B0(a1, v1);
}

uint64_t MetricsLogger.Configuration.eventTopic.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MetricsLogger.Configuration.eventTopic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_1AB447B78()
{
  sub_1AB083ACC();
  result = sub_1AB4612B4();
  qword_1EB46BEF0 = result;
  return result;
}

uint64_t MetricsLogger.__allocating_init(loggerName:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  MetricsLogger.init(loggerName:configuration:)(a1, a2, a3);
  return v6;
}

void *MetricsLogger.init(loggerName:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[2] = a1;
  v3[3] = a2;
  sub_1AB01494C(a3, (v3 + 4));
  v6 = a3[6];
  v3[9] = a3[5];
  v3[10] = v6;
  v7 = a3[7];
  v8 = a3[8];
  v9 = qword_1ED4D01B0;

  if (v9 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED4D3E40;
  v10 = *algn_1ED4D3E48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD90, &qword_1AB4D6A80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D47F0;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  *(v12 + 48) = 6778732;
  *(v12 + 56) = 0xE300000000000000;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438590, &unk_1AB4DCFD0);
  sub_1AB027E20();
  v13 = sub_1AB460484();
  v15 = v14;

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1AB4D47F0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  *(v16 + 48) = 0x646563726F467369;
  *(v16 + 56) = 0xE800000000000000;

  v17 = sub_1AB460484();
  v24 = v18;
  v25 = v17;

  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1AB4D47F0;
  *(v19 + 32) = v13;
  *(v19 + 40) = v15;
  *(v19 + 48) = 0xD000000000000011;
  *(v19 + 56) = 0x80000001AB4FFFF0;
  v20 = sub_1AB460484();
  v22 = v21;
  sub_1AB447E68(a3);

  v4[11] = v25;
  v4[12] = v24;
  v4[13] = v20;
  v4[14] = v22;
  v4[15] = v7;
  v4[16] = v8;
  return v4;
}

uint64_t sub_1AB447E98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1AB17783C(0, v2, 0);
  v3 = v9;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_1AB447F90(v4, v8);
      v9 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AB17783C((v5 > 1), v6 + 1, 1);
        v3 = v9;
      }

      *(v3 + 16) = v6 + 1;
      sub_1AB014B78(v8, (v3 + 32 * v6 + 32));
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1AB447F90(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0, &qword_1AB4D6720);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - v4;
  v6 = sub_1AB45F764();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[3] = MEMORY[0x1E69E7CA0] + 8;
  v9 = swift_allocObject();
  v39[0] = v9;
  sub_1AB0165C4(a1, v9 + 16);
  v10 = objc_opt_self();
  sub_1AB0165C4(v9 + 16, &v38);
  v11 = [v10 isValidJSONObject_];
  swift_unknownObjectRelease();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
LABEL_4:
    v15 = v37;
    v37[3] = MEMORY[0x1E69E7CA0] + 8;
    v16 = swift_allocObject();
    *v15 = v16;
    sub_1AB0165C4(a1, v16 + 16);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1AB4D4720;
  sub_1AB0165C4(v39, v12 + 32);
  v13 = sub_1AB460934();

  v14 = [v10 isValidJSONObject_];

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  if (v14)
  {
    goto LABEL_4;
  }

  sub_1AB0165C4(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4371F0, &qword_1AB4D4300);
  if (swift_dynamicCast())
  {
    v17 = v38;
    v18 = sub_1AB45F584();
    v19 = AMSLogableError();

    v20 = sub_1AB460544();
    v22 = v21;

    v23 = v37;
    v37[3] = MEMORY[0x1E69E6158];

    *v23 = v20;
    v23[1] = v22;
  }

  else
  {
    sub_1AB0165C4(a1, v39);
    v24 = swift_dynamicCast();
    v25 = v36;
    v26 = *(v36 + 56);
    if (v24)
    {
      v26(v5, 0, 1, v6);
      (*(v25 + 32))(v8, v5, v6);
      v27 = sub_1AB45F654();
      v28 = AMSLogableURL();

      v29 = sub_1AB460544();
      v31 = v30;

      v32 = v37;
      v37[3] = MEMORY[0x1E69E6158];
      *v32 = v29;
      v32[1] = v31;
      (*(v25 + 8))(v8, v6);
    }

    else
    {
      v26(v5, 1, 1, v6);
      sub_1AB03BCD0(v5);
      sub_1AB0165C4(a1, v39);
      v33 = sub_1AB4605E4();
      v34 = v37;
      v37[3] = MEMORY[0x1E69E6158];
      *v34 = v33;
      v34[1] = v35;
    }
  }
}

Swift::Void __swiftcall MetricsLogger.log(contentsOf:withLevel:)(Swift::OpaquePointer contentsOf, JetEngine::LogMessageLevel withLevel)
{
  v3 = v2;
  LODWORD(v5) = *withLevel;
  v6 = *(v2 + 104);
  v7 = *(v2 + 112);
  v38 = *(v2 + 88);
  v39 = v6;
  v40 = v7;
  v41 = *(v2 + 120);
  if ((MetricsSamplingLottery.shouldCollect.getter() & 1) == 0)
  {
    return;
  }

  v8 = MEMORY[0x1E69E6158];
  v40 = MEMORY[0x1E69E6158];
  *&v38 = 6778732;
  *(&v38 + 1) = 0xE300000000000000;
  sub_1AB014B78(&v38, v37);
  v9 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36[0] = v9;
  sub_1AB01AE18(v37, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  if (qword_1EB4332E8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v11 = qword_1EB46BEF0;
    v40 = sub_1AB083ACC();
    *&v38 = v11;
    sub_1AB014B78(&v38, v37);
    v12 = v11;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v9;
    sub_1AB01AE18(v37, 0x726556746E657665, 0xEC0000006E6F6973, v13);
    v14 = *&v36[0];
    v15 = v3[2];
    v16 = v3[3];
    v40 = v8;
    *&v38 = v15;
    *(&v38 + 1) = v16;
    sub_1AB014B78(&v38, v37);

    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v14;
    sub_1AB01AE18(v37, 0x614E726567676F6CLL, 0xEA0000000000656DLL, v17);
    v18 = *&v36[0];
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v19 = 0xE400000000000000;
        v20 = 1868983913;
      }

      else
      {
        v19 = 0xE500000000000000;
        v20 = 0x6775626564;
      }
    }

    else if (v5)
    {
      v19 = 0xE400000000000000;
      v20 = 1852989815;
    }

    else
    {
      v19 = 0xE500000000000000;
      v20 = 0x726F727265;
    }

    v40 = v8;
    *&v38 = v20;
    *(&v38 + 1) = v19;
    sub_1AB014B78(&v38, v37);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v18;
    sub_1AB01AE18(v37, 0x6C6576656CLL, 0xE500000000000000, v21);
    v22 = *&v36[0];
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v23 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v23[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v23 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v25 = _s9JetEngine10LogMessageV6values2of13withRedactionSayypGSayACG_SbtFZ_0(contentsOf._rawValue, (os_unfair_lock_opaque_low & 1) == 0);
    contentsOf._rawValue = v25;
    v5 = *(v25 + 2);
    if (!v5)
    {
LABEL_25:
      v28 = sub_1AB447E98(contentsOf._rawValue);
LABEL_26:
      v31 = v28;

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8, &qword_1AB4EAC30);
      *&v38 = v31;
      sub_1AB014B78(&v38, v37);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *&v36[0] = v22;
      sub_1AB01AE18(v37, 0x746E656D75677261, 0xE900000000000073, v32);
      v22 = *&v36[0];
LABEL_27:
      v33 = v3[7];
      v34 = v3[8];
      __swift_project_boxed_opaque_existential_1Tm(v3 + 4, v33);
      *&v38 = v22;
      *(&v38 + 1) = MEMORY[0x1E69E7CC0];
      (*(v34 + 8))(&v38, v3[9], v3[10], v33, v34);

      return;
    }

    v8 = (v25 + 32);
    sub_1AB0165C4((v25 + 32), &v38);
    v9 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      break;
    }

    v29 = 0;
    while (v29 < *(contentsOf._rawValue + 2))
    {
      sub_1AB0165C4(v8, v36);
      sub_1AB0165C4(v36, v35);
      if (swift_dynamicCast())
      {

        sub_1AB014B78(v36, v37);
        sub_1AB014B78(v37, &v38);
        sub_1AB0165C4(&v38, v37);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *&v36[0] = v22;
        sub_1AB01AE18(v37, 0x6567617373656DLL, 0xE700000000000000, v30);
        __swift_destroy_boxed_opaque_existential_1Tm(&v38);
        v22 = *&v36[0];
        goto LABEL_25;
      }

      ++v29;
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      v8 += 32;
      if (v5 == v29)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v40 = v9;
  v38 = v37[0];
  sub_1AB014B78(&v38, v37);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *&v36[0] = v22;
  sub_1AB01AE18(v37, 0x6567617373656DLL, 0xE700000000000000, v26);
  v22 = *&v36[0];
  v27 = *(contentsOf._rawValue + 2);
  if (v27 < 2)
  {

    goto LABEL_27;
  }

  if (v27 >= v5)
  {
    sub_1AB4489C4(contentsOf._rawValue + 4, 1, (2 * v5) | 1);
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t MetricsLogger.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t MetricsLogger.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1AB4489C4(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v5 = a1;
  v21 = MEMORY[0x1E69E7CC0];
  a1 = sub_1AB17783C(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
LABEL_28:
    __break(1u);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    __break(1u);
    return;
  }

  v6 = v21;
  if (v4)
  {
    v7 = 0;
    v17 = v5;
    v8 = &v5[4 * a2];
    do
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (!(a2 - v3 + v7))
      {
        goto LABEL_24;
      }

      if ((a2 + v7) >= v3 || v7 >= v4)
      {
        goto LABEL_25;
      }

      sub_1AB0165C4(v8, v19);
      sub_1AB447F90(v19, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v21 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1AB17783C((v10 > 1), v11 + 1, 1);
        v6 = v21;
      }

      *(v6 + 16) = v11 + 1;
      a1 = sub_1AB014B78(v20, (v6 + 32 * v11 + 32));
      ++v7;
      v8 += 32;
    }

    while (v9 != v4);
    v12 = a2 + v7;
    v5 = v17;
    if (a2 + v7 == v3)
    {
      return;
    }

    goto LABEL_16;
  }

  v12 = a2;
  if (a2 != v3)
  {
LABEL_16:
    v13 = &v5[4 * v12];
    v14 = v12;
    while (v12 >= a2 && v14 < v3)
    {
      sub_1AB0165C4(v13, v20);
      sub_1AB447F90(v20, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v21 = v6;
      v16 = *(v6 + 16);
      v15 = *(v6 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1AB17783C((v15 > 1), v16 + 1, 1);
        v6 = v21;
      }

      ++v14;
      *(v6 + 16) = v16 + 1;
      a1 = sub_1AB014B78(v19, (v6 + 32 * v16 + 32));
      v13 += 32;
      if (v3 == v14)
      {
        return;
      }
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_1AB448C64@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1AB4616A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AB1F3034(0x746E65726170, 0xE600000000000000, 1, a2);
  sub_1AB39E4A4(a1, v11, v28);
  if (v3)
  {
  }

  v14 = *a1;
  v13 = a1[1];
  if (v13 == *(*a1 + 16))
  {
    sub_1AB1F3034(0x65756C6176, 0xE500000000000000, 1, a2);

    sub_1AB461694();
    v15 = sub_1AB4616B4();
    swift_allocError();
    v17 = v16;
    (*(v8 + 16))(v16, v10, v7);
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6B00], v15);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
  }

  v29 = v28[1];
  v18 = v28[0];

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v14 + 16))
  {
    v19 = (v14 + 32 * v13);
    v21 = v19[6];
    v20 = v19[7];
    v23 = v19[4];
    v22 = v19[5];
    a1[1] = v13 + 1;

    v24 = MEMORY[0x1AC59B960](v23, v22, v21, v20);
    v26 = v25;

    v27 = v29;
    *a3 = v18;
    a3[1] = v27;
    a3[2] = v24;
    a3[3] = v26;
    return result;
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall ShelfID.isChild(of:)(JetEngine::PageID of)
{
  if (*v1 == *of.value._countAndFlagsBits && v1[1] == *(of.value._countAndFlagsBits + 8))
  {
    return 1;
  }

  else
  {
    return sub_1AB461DA4();
  }
}

uint64_t static ShelfID.forShelves(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = 0;
  *(a2 + 8) = sub_1AB44907C;
  *(a2 + 16) = v5;
  *(a2 + 24) = 0;
}

uint64_t sub_1AB448F9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;

  v9 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v9);

  *a4 = a2;
  a4[1] = a3;
  a4[2] = 35;
  a4[3] = 0xE100000000000000;
  v11 = v8 + 1;
  if (v8 == -1)
  {

    sub_1AB427D20("JetEngine/ShelfID.swift", 23, 2, 50, a2, a3);

    v11 = 0;
  }

  *a1 = v11;
  return result;
}

JetEngine::ShelfID __swiftcall ShelfID.init(at:in:)(Swift::UInt64 at, JetEngine::PageID in)
{
  v3 = v2;
  v4 = *in.value._countAndFlagsBits;
  v5 = *(in.value._countAndFlagsBits + 8);
  v6 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v6);

  v3[2] = 35;
  v3[3] = 0xE100000000000000;
  *v3 = v4;
  v3[1] = v5;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  result.parent.value._object = v8;
  result.parent.value._countAndFlagsBits = v7;
  return result;
}

JetEngine::ShelfID __swiftcall ShelfID.init(randomIn:)(JetEngine::PageID randomIn)
{
  countAndFlagsBits = randomIn.value._countAndFlagsBits;
  v3 = v1;
  v4 = sub_1AB45F9E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *countAndFlagsBits;
  v9 = countAndFlagsBits[1];
  sub_1AB45F9D4();
  v10 = sub_1AB45F9C4();
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v20[4] = v10;
  v20[5] = v12;
  v20[2] = 45;
  v20[3] = 0xE100000000000000;
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1AB0273A8();
  v13 = sub_1AB461434();
  v15 = v14;

  v3[2] = v13;
  v3[3] = v15;
  *v3 = v8;
  v3[1] = v9;
  result.value._object = v19;
  result.value._countAndFlagsBits = v18;
  result.parent.value._object = v17;
  result.parent.value._countAndFlagsBits = v16;
  return result;
}

uint64_t ShelfID.init<A>(id:kind:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, void *a7@<X8>)
{
  v12 = *a4;
  v13 = a4[1];
  sub_1AB4608B4();
  MEMORY[0x1AC59BA20](a1, a2);

  result = (*(*(a5 - 8) + 8))(a3, a5);
  a7[2] = v15;
  a7[3] = v16;
  *a7 = v12;
  a7[1] = v13;
  return result;
}

uint64_t ShelfID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1AB4616A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462204();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1Tm(v32, v32[3]);
  v9 = sub_1AB461DB4();
  v33 = v6;
  v26 = 45;
  v27 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  *(&v23 - 2) = &v26;
  v12 = sub_1AB021178(0x7FFFFFFFFFFFFFFFLL, 1, sub_1AB021538, (&v23 - 4), v10, v11, &v23);
  v30 = v12;
  v31 = 0;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v13 = sub_1AB4621E4();
  sub_1AB448C64(&v30, v13, &v26);
  v15 = v27;
  v16 = v29;
  v24 = v28;
  v25 = v26;
  v17 = *(v12 + 16);

  if (v31 == v17)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    v18 = v24;
    *a2 = v25;
    a2[1] = v15;
    a2[2] = v18;
    a2[3] = v16;
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (v31 >= v17)
  {
    __break(1u);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB4621E4();
    sub_1AB461694();
    v19 = sub_1AB4616B4();
    swift_allocError();
    v21 = v20;
    v22 = v33;
    (*(v33 + 16))(v20, v8, v5);
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6B00], v19);
    swift_willThrow();
    (*(v22 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return result;
}

uint64_t ShelfID.encode(to:)(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB462254();

  MEMORY[0x1AC59BA20](45, 0xE100000000000000);
  MEMORY[0x1AC59BA20](v2, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1AB461E34();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t ShelfID.debugDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

Swift::Bool __swiftcall ShelfID.isParent(of:)(JetEngine::ComponentID *of)
{
  countAndFlagsBits = of->parent.value._countAndFlagsBits;
  object = of->parent.value._object;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = of->parent.parent.value._countAndFlagsBits == *v1 && of->parent.parent.value._object == *(v1 + 8);
  if (v6 || (v7 = sub_1AB461DA4(), result = 0, (v7 & 1) != 0))
  {
    if (countAndFlagsBits == v4 && object == v5)
    {
      return 1;
    }

    else
    {

      return sub_1AB461DA4();
    }
  }

  return result;
}

uint64_t ShelfID.hash(into:)(uint64_t a1)
{
  sub_1AB460684();

  return sub_1AB460684();
}

uint64_t ShelfID.hashValue.getter()
{
  sub_1AB4620A4();
  sub_1AB460684();
  sub_1AB460684();
  return sub_1AB462104();
}

uint64_t sub_1AB449924()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t sub_1AB44995C()
{
  result = qword_1EB43D568;
  if (!qword_1EB43D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D568);
  }

  return result;
}

unint64_t sub_1AB4499C0()
{
  result = qword_1EB43D570;
  if (!qword_1EB43D570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D578, &qword_1AB4FBDD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D570);
  }

  return result;
}

double static PipelinePhase<>.rateLimitOnFailure(on:withID:using:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1AB02B4BC(a2, v14);
  type metadata accessor for PersistentPipelineBackoff();
  v11 = swift_allocObject();
  v12 = v14[1];
  *(v11 + 16) = v14[0];
  *(v11 + 32) = v12;
  *(v11 + 48) = v15;
  *(v11 + 56) = a3;
  *(v11 + 64) = a4;

  static PipelinePhase<>.rateLimitOnFailure(on:using:)(a1, v11, &off_1F201B9B8, a5, a6);

  return result;
}

uint64_t sub_1AB449AF8()
{
  v0 = sub_1AB1DB370(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D580, &qword_1AB4FBE20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  qword_1EB432578 = result;
  return result;
}

uint64_t sub_1AB449B54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  v6 = *a1;
  if (*(*a1 + 16) && (v7 = sub_1AB02B1D8(a2 + 16), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 16 * v7 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    swift_unknownObjectRetain();
    v11(ObjectType, v9);
  }

  else
  {
    v13 = (*(a2 + 56))();
    v15 = v14;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *a1;
    sub_1AB1D6B08(v13, v15, a2 + 16, isUniquelyReferenced_nonNull_native);
    *a1 = v20;
    v17 = swift_getObjectType();
    v12 = (*(v15 + 8))(v17, v15);
  }

  v18 = v12;
  result = swift_unknownObjectRelease();
  *a3 = v18;
  return result;
}

uint64_t sub_1AB449C84()
{
  sub_1AB02B2E4(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_1AB449CC4()
{
  if (qword_1EB435810 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432578;
  os_unfair_lock_lock((qword_1EB432578 + 24));
  sub_1AB449B54((v1 + 16), v0, &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

void sub_1AB449D50()
{
  if (qword_1EB435810 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB432578;
  os_unfair_lock_lock((qword_1EB432578 + 24));
  if (sub_1AB1F9DEC(v0 + 16))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  os_unfair_lock_unlock(v1 + 6);
}

void sub_1AB449E04()
{
  qword_1EB433720 = 0x3F847AE147AE147BLL;
  qword_1EB433728 = 48;
  qword_1EB433730 = 0xE100000000000000;
  byte_1EB433738 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB433718 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB433728;
  v2 = qword_1EB433730;
  v4 = byte_1EB433738;
  *a1 = qword_1EB433720;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB449EBC()
{
  qword_1EB432668 = 0x3FB999999999999ALL;
  qword_1EB432670 = 12337;
  qword_1EB432678 = 0xE200000000000000;
  byte_1EB432680 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.tenth.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB432660 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB432670;
  v2 = qword_1EB432678;
  v4 = byte_1EB432680;
  *a1 = qword_1EB432668;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB449F70()
{
  qword_1EB43D588 = 0x3FD0000000000000;
  qword_1EB43D590 = 13618;
  qword_1EB43D598 = 0xE200000000000000;
  byte_1EB43D5A0 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.quarter.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB435E08 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB43D590;
  v2 = qword_1EB43D598;
  v4 = byte_1EB43D5A0;
  *a1 = qword_1EB43D588;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB44A01C()
{
  qword_1EB43D5A8 = 0x3FE8000000000000;
  qword_1EB43D5B0 = 13623;
  qword_1EB43D5B8 = 0xE200000000000000;
  byte_1EB43D5C0 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.threeQuarters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB435E18 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB43D5B0;
  v2 = qword_1EB43D5B8;
  v4 = byte_1EB43D5C0;
  *a1 = qword_1EB43D5A8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

void sub_1AB44A0C8()
{
  qword_1EB43D5C8 = 0x3FF0000000000000;
  qword_1EB43D5D0 = 3158065;
  qword_1EB43D5D8 = 0xE300000000000000;
  byte_1EB43D5E0 = 1;
}

uint64_t static ImpressionsCalculator.Configuration.full.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB435E20 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = qword_1EB43D5D0;
  v2 = qword_1EB43D5D8;
  v4 = byte_1EB43D5E0;
  *a1 = qword_1EB43D5C8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
}

uint64_t ImpressionsCalculator.Configuration.groupId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ImpressionsCalculator.Configuration.withImpressionableThreshold(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *a1 = a2;
}

uint64_t ImpressionsCalculator.Configuration.withGroupId(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(v3 + 24);
  *a3 = *v3;
  *(a3 + 24) = v4;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
}

uint64_t ImpressionsCalculator.Configuration.withOverrideVisibleThresholdForContainer(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v3 = v2[2];
  *a2 = *v2;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3;
  *(a2 + 24) = a1;
}

void (*ImpressionsCalculator.isVisible.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = sub_1AB45F9B4();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 48) = v8;
  swift_beginAccess();
  *(v5 + 56) = *(v1 + 256);
  return sub_1AB44A328;
}

void sub_1AB44A328(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 56);
  v4 = *(v2 + 256);
  *(v2 + 256) = v3;
  if (v3 != v4)
  {
    v6 = v1[5];
    v5 = v1[6];
    v8 = v1[3];
    v7 = v1[4];
    v9 = sub_1AB0761E0();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = v8[20];
    v17 = v8[21];
    __swift_project_boxed_opaque_existential_1Tm(v8 + 17, v16);
    (*(v17 + 8))(v16, v17);
    sub_1AB0763B0(v5, v9, v11, v13, v15);
    (*(v6 + 8))(v5, v7);
  }

  free(v1[6]);

  free(v1);
}

uint64_t (*ImpressionsCalculator.viewBounds.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = sub_1AB45F9B4();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[9] = v8;
  v9 = sub_1AB460224();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[12] = v11;
  swift_beginAccess();
  return sub_1AB44A5B0;
}

void sub_1AB44A5B0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[12];
  if ((a2 & 1) == 0)
  {
    v5 = v3[10];
    v6 = v3[11];
    v7 = v3[12];
    sub_1AB015664();
    *v7 = sub_1AB461124();
    (*(v6 + 104))(v7, *MEMORY[0x1E69E8020], v5);
    v8 = sub_1AB460244();
    (*(v6 + 8))(v7, v5);
    if ((v8 & 1) == 0)
    {
      __break(1u);
      return;
    }

    v9 = v3[6];
    swift_beginAccess();
    if (*(v9 + 256) == 1)
    {
      v11 = v3[8];
      v10 = v3[9];
      v13 = v3[6];
      v12 = v3[7];
      v14 = sub_1AB0761E0();
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v21 = v13[20];
      v22 = v13[21];
      __swift_project_boxed_opaque_existential_1Tm(v13 + 17, v21);
      (*(v22 + 8))(v21, v22);
      sub_1AB0763B0(v10, v14, v16, v18, v20);
      (*(v11 + 8))(v10, v12);
    }

    v4 = v3[12];
  }

  v23 = v3[9];
  free(v4);
  free(v23);

  free(v3);
}

void sub_1AB44A750(void *a1)
{
  v2 = a1[13];
  if (!v2)
  {
    return;
  }

  v28 = a1[11];
  v29 = a1[12];
  v25 = a1[15];
  v26 = a1[10];
  v27 = a1[16];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;

  if (v4 != v1)
  {
    return;
  }

  swift_weakAssign();
  swift_beginAccess();
  v5 = 0;
  v6 = *(v1 + 24);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v24 = *(v1 + 24);
  v10 = 1 << *(v24 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
LABEL_13:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(v24 + 56) + ((v5 << 9) | (8 * v15)));
    v18 = v16[9];
    v17 = v16[10];
    v20 = v16[14];
    v19 = v16[15];
    v21 = v16[11] == v29 && v2 == v16[12];
    if (v21 || (sub_1AB461DA4() & 1) != 0)
    {
      if (v17)
      {
        if (v28)
        {
          v22 = v18 == v26 && v17 == v28;
          if (v22 || (sub_1AB461DA4() & 1) != 0)
          {
            goto LABEL_27;
          }
        }
      }

      else if (!v28)
      {
LABEL_27:
        if (v19)
        {
          if (v27)
          {
            v23 = v20 == v25 && v19 == v27;
            if (v23 || (sub_1AB461DA4() & 1) != 0)
            {
LABEL_36:

              sub_1AB07AD28(0);

              return;
            }
          }
        }

        else if (!v27)
        {
          goto LABEL_36;
        }
      }
    }
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      return;
    }

    v12 = *(v8 + 8 * v14);
    ++v5;
    if (v12)
    {
      v5 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t ImpressionsCalculator.increaseImpressionableFrame(forElement:by:isContainer:)(_OWORD *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v58 = a2;
  v13 = sub_1AB45F9B4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  *v67 = *a1;
  *&v67[16] = v17;
  v18 = a1[3];
  v68 = a1[2];
  v69 = v18;
  v70 = a1[4];
  v62 = *v67;
  *v59 = *&v67[8];
  v63 = *&v67[8];
  v64 = *(&v17 + 1);
  v65 = v68;
  v66 = v18;
  swift_beginAccess();
  v19 = *(v7 + 24);
  v20 = *(v19 + 16);

  if (v20 && (v21 = sub_1AB077384(&v62), (v22 & 1) != 0))
  {
    v23 = *(*(v19 + 56) + 8 * v21);
    swift_endAccess();

    swift_beginAccess();
    v24 = *(v23 + 184);
    v25 = *(v23 + 192);
    v26 = *(v23 + 200);
    v27 = *(v23 + 208);
    swift_retain_n();
    v71.origin.x = v24;
    v71.origin.y = v25;
    v71.size.width = v26;
    v71.size.height = v27;
    v78.origin.x = a3;
    v78.origin.y = a4;
    v78.size.width = a5;
    v78.size.height = a6;
    *(v23 + 184) = CGRectUnion(v71, v78);
    sub_1AB3CFBFC();
  }

  else
  {
    swift_endAccess();
    v28 = *(v7 + 32);
    v29 = *(v7 + 56);
    type metadata accessor for ImpressionsTracking.ImpressionableItem();
    v23 = swift_allocObject();
    v30 = *v67;
    *(v23 + 88) = *&v67[16];
    v31 = v69;
    *(v23 + 104) = v68;
    *(v23 + 120) = v31;
    *(v23 + 136) = v70;
    *(v23 + 168) = 0;
    *(v23 + 72) = v30;
    *(v23 + 161) = 1;
    *(v23 + 184) = a3;
    *(v23 + 192) = a4;
    *(v23 + 200) = a5;
    *(v23 + 208) = a6;
    *(v23 + 16) = v28;
    *(v23 + 24) = v29;
    sub_1AB077170(v67, v61);
    v72.origin.x = a3;
    v72.origin.y = a4;
    v72.size.width = a5;
    v72.size.height = a6;
    v32 = v28 * CGRectGetWidth(v72);
    v73.origin.x = a3;
    v73.origin.y = a4;
    v73.size.width = a5;
    v73.size.height = a6;
    v33 = v28 * CGRectGetHeight(v73);
    v74.origin.x = a3;
    v74.origin.y = a4;
    v74.size.width = a5;
    v74.size.height = a6;
    MinX = CGRectGetMinX(v74);
    v56 = v32;
    v35 = v32 + MinX;
    v36 = 0.0;
    v59[0] = v35 + 0.0;
    v75.origin.x = a3;
    v75.origin.y = a4;
    v75.size.width = a5;
    v75.size.height = a6;
    MinY = CGRectGetMinY(v75);
    v57 = v33;
    v38 = v33 + MinY + 0.0;
    v39 = a6;
    v40 = fabs(v28 + -0.5);
    if (v40 >= 0.01)
    {
      v76.origin.x = a3;
      v76.origin.y = a4;
      v55 = v38;
      v76.size.width = a5;
      v76.size.height = v39;
      v36 = CGRectGetMaxX(v76) - v56 + 0.0;
      v77.origin.x = a3;
      v77.origin.y = a4;
      v77.size.width = a5;
      v77.size.height = v39;
      MaxY = CGRectGetMaxY(v77);
      v38 = v55;
      v42 = MaxY - v57 + 0.0;
      v41 = v28 > 0.5;
    }

    else
    {
      v41 = 0;
      v42 = 0.0;
    }

    *(v23 + 32) = v59[0];
    *(v23 + 40) = v38;
    *(v23 + 48) = v36;
    *(v23 + 56) = v42;
    *(v23 + 64) = v40 < 0.01;
    *(v23 + 65) = v41;
    *(v23 + 176) = 0;
    *(v23 + 152) = 0;
    *(v23 + 160) = 1;
    swift_beginAccess();
    *(v23 + 176) = v58 & 1;
    swift_retain_n();
    sub_1AB3CFBFC();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *(v7 + 24);
    *(v7 + 24) = 0x8000000000000000;
    sub_1AB0771CC(v23, &v62, isUniquelyReferenced_nonNull_native);

    *(v7 + 24) = v60;
    swift_endAccess();
  }

  v45 = sub_1AB0761E0();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = *(v7 + 160);
  v53 = *(v7 + 168);
  __swift_project_boxed_opaque_existential_1Tm((v7 + 136), v52);
  (*(v53 + 8))(v52, v53);
  sub_1AB0779CC(v23, v16, v45, v47, v49, v51);

  return (*(v14 + 8))(v16, v13);
}

void ImpressionsCalculator.copyElements(from:)(uint64_t a1)
{
  v31 = sub_1AB45F9B4();
  v3 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 24) = v5;
  swift_bridgeObjectRetain_n();

  v6 = 0;
  v7 = v5 + 64;
  v8 = 1 << *(v5 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v5 + 64);
  v11 = (v8 + 63) >> 6;
  v28 = (v3 + 8);
  v29 = v5;
  while (v10)
  {
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(*(v5 + 56) + ((v6 << 9) | (8 * v13)));
    swift_beginAccess();
    *(v14 + 161) = 1;
    swift_beginAccess();
    v15 = *(v14 + 168);
    if (v15)
    {
      swift_beginAccess();
      v16 = *(v15 + 256);
      *(v15 + 256) = 0;
      if (v16 == 1)
      {

        v17 = sub_1AB0761E0();
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = *(v15 + 160);
        v25 = *(v15 + 168);
        __swift_project_boxed_opaque_existential_1Tm((v15 + 136), v24);
        v26 = v30;
        (*(v25 + 8))(v24, v25);
        sub_1AB0763B0(v26, v17, v19, v21, v23);

        v27 = v26;
        v5 = v29;
        (*v28)(v27, v31);
      }
    }
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

      return;
    }

    v10 = *(v7 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t ImpressionsCalculator.removeElement(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 8);
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v64 = *(a1 + 56);
  v65 = *(a1 + 72);
  v63[0] = v8;
  v63[1] = v9;
  v63[2] = v11;
  v63[3] = v10;
  v48 = v12;
  v49 = v10;
  v63[4] = v12;
  v63[5] = v13;
  v46 = v14;
  v47 = v13;
  v63[6] = v14;
  swift_beginAccess();
  v15 = sub_1AB077384(v63);
  if ((v16 & 1) == 0)
  {
    return swift_endAccess();
  }

  v17 = v15;
  v44 = v5;
  v45 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(v2 + 24);
  *&v58[0] = v19;
  *(v2 + 24) = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1AB1DA35C();
    v19 = *&v58[0];
  }

  v43 = v11;

  v20 = *(*(v19 + 56) + 8 * v17);
  sub_1AB191868();
  *(v2 + 24) = v19;
  swift_endAccess();
  swift_beginAccess();
  v21 = *(v20 + 168);
  if (v21)
  {
    swift_beginAccess();
    v22 = *(v21 + 256);
    *(v21 + 256) = 0;
    if (v22 == 1)
    {

      v23 = sub_1AB0761E0();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = *(v21 + 160);
      v31 = *(v21 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v21 + 136), v30);
      (*(v31 + 8))(v30, v31);
      sub_1AB0763B0(v7, v23, v25, v27, v29);

      (*(v44 + 8))(v7, v45);
    }
  }

  v32 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  v55[0] = v8;
  v55[1] = v9;
  v55[2] = v43;
  v55[3] = v49;
  v55[4] = v48;
  v55[5] = v47;
  v55[6] = v46;
  v56 = v64;
  v57 = v65;
  v35 = *(v2 + 160);
  v34 = *(v2 + 168);
  __swift_project_boxed_opaque_existential_1Tm((v2 + 136), v35);
  (*(v34 + 8))(v35, v34);
  v36 = *(v2 + 192);
  v37 = *(v2 + 224);
  v59 = *(v2 + 208);
  v60 = v37;
  v38 = *(v2 + 224);
  v61 = *(v2 + 240);
  v39 = *(v2 + 192);
  v58[0] = *(v2 + 176);
  v58[1] = v39;
  v52 = v59;
  v53 = v38;
  v54 = *(v2 + 240);
  v50 = v58[0];
  v51 = v36;
  v40 = *(v32 + 40);
  sub_1AB0786FC(v58, v62);
  v40(v55, v7, &v50, ObjectType, v32);

  v62[2] = v52;
  v62[3] = v53;
  v62[4] = v54;
  v62[0] = v50;
  v62[1] = v51;
  sub_1AB079CF0(v62);
  return (*(v44 + 8))(v7, v45);
}

Swift::Void __swiftcall ImpressionsCalculator.removeAllElements()()
{
  v1 = v0;
  v32 = sub_1AB45F9B4();
  v2 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v37 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v4 = *(v1 + 24);
  v5 = *(v4 + 64);
  v30 = v4 + 64;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v5;
  v29 = (v6 + 63) >> 6;
  v31 = (v2 + 8);
  v33 = v4;

  v9 = 0;
  while (v8)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(v33 + 56) + ((v10 << 9) | (8 * v11)));
    v13 = *(v1 + 72);
    v36 = *(v1 + 64);
    v34 = v13;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 88);
    v15 = *(v12 + 120);
    v48[2] = *(v12 + 104);
    v48[3] = v15;
    v48[4] = *(v12 + 136);
    v48[0] = *(v12 + 72);
    v48[1] = v14;
    v16 = *(v12 + 88);
    v17 = *(v12 + 120);
    v45 = *(v12 + 104);
    v46 = v17;
    v47 = *(v12 + 136);
    v43 = *(v12 + 72);
    v44 = v16;
    v18 = *(v1 + 160);
    v19 = *(v1 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v1 + 136), v18);
    v20 = *(v19 + 8);

    sub_1AB077170(v48, v54);
    v20(v18, v19);
    v21 = *(v1 + 192);
    v22 = *(v1 + 224);
    v50 = *(v1 + 208);
    v51 = v22;
    v23 = *(v1 + 224);
    v52 = *(v1 + 240);
    v24 = *(v1 + 192);
    v49[0] = *(v1 + 176);
    v49[1] = v24;
    v40 = v50;
    v41 = v23;
    v42 = *(v1 + 240);
    v38 = v49[0];
    v39 = v21;
    v25 = v34;
    v26 = *(v34 + 40);
    sub_1AB0786FC(v49, v54);
    v27 = v37;
    v26(&v43, v37, &v38, ObjectType, v25);

    v53[2] = v40;
    v53[3] = v41;
    v53[4] = v42;
    v53[0] = v38;
    v53[1] = v39;
    sub_1AB079CF0(v53);
    (*v31)(v27, v32);
    v54[2] = v45;
    v54[3] = v46;
    v54[4] = v47;
    v54[0] = v43;
    v54[1] = v44;
    sub_1AB079D44(v54);
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v29)
    {

      *(v1 + 24) = MEMORY[0x1E69E7CC8];

      return;
    }

    v8 = *(v30 + 8 * v10);
    ++v9;
    if (v8)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall ImpressionsCalculator.removeFromParent()()
{
  if (swift_weakLoadStrong())
  {
    sub_1AB44A750(v0);
  }
}

uint64_t *ImpressionsCalculator.deinit()
{
  swift_weakDestroy();

  swift_unknownObjectRelease();
  sub_1AB1B02B8(v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  return v0;
}

uint64_t ImpressionsCalculator.__deallocating_deinit()
{
  swift_weakDestroy();

  swift_unknownObjectRelease();
  sub_1AB1B02B8(v0[10], v0[11], v0[12], v0[13], v0[14], v0[15], v0[16]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  return swift_deallocClassInstance();
}

uint64_t Unstable.ImpressionsCalculator.__allocating_init(impressionableThreshold:tracker:)(uint64_t a1, uint64_t a2, double a3)
{
  v3 = _s9JetEngine21ImpressionsCalculatorC23impressionableThreshold7trackerAC12CoreGraphics7CGFloatV_AA0C7Tracker_ptcfC_0(a1, a2, a3);
  result = swift_allocObject();
  *(result + 16) = v3;
  return result;
}

uint64_t Unstable.ImpressionsCalculator.isVisible.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 256);
}

uint64_t Unstable.ImpressionsCalculator.isVisible.setter(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1AB45F9B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  result = swift_beginAccess();
  v10 = *(v8 + 256);
  *(v8 + 256) = a1;
  if (v10 != v3)
  {
    v11 = sub_1AB0761E0();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = *(v8 + 160);
    v19 = *(v8 + 168);
    __swift_project_boxed_opaque_existential_1Tm((v8 + 136), v18);
    (*(v19 + 8))(v18, v19);
    sub_1AB0763B0(v7, v11, v13, v15, v17);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void (*Unstable.ImpressionsCalculator.isVisible.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = sub_1AB45F9B4();
  *(v5 + 24) = v6;
  v7 = *(v6 - 8);
  *(v5 + 32) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 40) = v8;
  v9 = *(v1 + 16);
  *(v5 + 48) = v9;
  swift_beginAccess();
  *(v5 + 56) = *(v9 + 256);
  return sub_1AB44BC94;
}

void sub_1AB44BC94(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v4 = *(v2 + 256);
  *(v2 + 256) = v3;
  if (v3 != v4)
  {
    v6 = v1[5];
    v5 = v1[6];
    v7 = v1[3];
    v8 = v1[4];
    v9 = sub_1AB0761E0();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16 = v5[20];
    v17 = v5[21];
    __swift_project_boxed_opaque_existential_1Tm(v5 + 17, v16);
    (*(v17 + 8))(v16, v17);
    sub_1AB0763B0(v6, v9, v11, v13, v15);
    (*(v8 + 8))(v6, v7);
  }

  free(v1[5]);

  free(v1);
}

double Unstable.ImpressionsCalculator.viewBounds.getter()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  return *(v1 + 264);
}

uint64_t Unstable.ImpressionsCalculator.viewBounds.setter(double a1, double a2, double a3, double a4)
{
  v9 = sub_1AB45F9B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1AB460224();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v4 + 16);
  swift_beginAccess();
  *(v17 + 264) = a1;
  *(v17 + 272) = a2;
  *(v17 + 280) = a3;
  *(v17 + 288) = a4;
  sub_1AB015664();
  *v16 = sub_1AB461124();
  (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
  v18 = sub_1AB460244();
  result = (*(v14 + 8))(v16, v13);
  if (v18)
  {
    result = swift_beginAccess();
    if (*(v17 + 256) == 1)
    {
      v20 = sub_1AB0761E0();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = *(v17 + 160);
      v28 = *(v17 + 168);
      __swift_project_boxed_opaque_existential_1Tm((v17 + 136), v27);
      (*(v28 + 8))(v27, v28);
      sub_1AB0763B0(v12, v20, v22, v24, v26);
      return (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*Unstable.ImpressionsCalculator.viewBounds.modify(uint64_t *a1))(double **a1)
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
  *(v3 + 56) = v1;
  v5 = (*(v1 + 16) + 264);
  swift_beginAccess();
  v6 = v5[1];
  *v4 = *v5;
  v4[1] = v6;
  return sub_1AB44C0E4;
}

void sub_1AB44C0E4(double **a1)
{
  v1 = *a1;
  Unstable.ImpressionsCalculator.viewBounds.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

uint64_t sub_1AB44C218(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 6);
  v7 = *a1;
  v8 = v2;
  v9 = v3;
  v10 = a1[2];
  v11 = v4;
  result = a2(&v7);
  if (result)
  {
    v6 = result;
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  return result;
}

Swift::Void __swiftcall Unstable.ImpressionsCalculator.changeImpressionableBounds(_:forElementWithID:)(__C::CGRect _, JetEngine::ImpressionMetrics::ID *forElementWithID)
{
  countAndFlagsBits = forElementWithID->element._countAndFlagsBits;
  object = forElementWithID->element._object;
  v4 = forElementWithID->uniqueID.value._object;
  v5.parent = forElementWithID->parent;
  v5.element._countAndFlagsBits = countAndFlagsBits;
  v5.element._object = object;
  *&v5.index = *&forElementWithID->index;
  v5.uniqueID.value._object = v4;
  ImpressionsCalculator.changeImpressionableBounds(_:forElementWithID:)(_, &v5);
}

Swift::Void __swiftcall Unstable.ImpressionsCalculator.removeFromParent()()
{
  v1 = *(v0 + 16);
  if (swift_weakLoadStrong())
  {
    sub_1AB44A750(v1);
  }
}

uint64_t Unstable.ImpressionsCalculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s9JetEngine21ImpressionsCalculatorC23impressionableThreshold7trackerAC12CoreGraphics7CGFloatV_AA0C7Tracker_ptcfC_0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_1AB45F9E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10, &qword_1AB4D6D50);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AB4D4720;
  *(v10 + 56) = MEMORY[0x1E69E7DE0];
  *(v10 + 64) = sub_1AB44C704();
  *(v10 + 32) = floor(a3 * 100.0);
  v11 = sub_1AB460584();
  v13 = v12;
  v20[3] = &type metadata for SystemDateProvider;
  v20[4] = &protocol witness table for SystemDateProvider;
  type metadata accessor for ImpressionsCalculator();
  v14 = swift_allocObject();
  swift_weakInit();
  *(v14 + 256) = 1;
  *(v14 + 264) = 0u;
  *(v14 + 280) = 0u;
  *(v14 + 32) = a3;
  *(v14 + 40) = v11;
  *(v14 + 48) = v13;
  *(v14 + 56) = 1;
  *(v14 + 80) = 0u;
  *(v14 + 96) = 0u;
  *(v14 + 112) = 0u;
  *(v14 + 128) = 0;
  *(v14 + 64) = a1;
  *(v14 + 72) = a2;

  *(v14 + 24) = sub_1AB0755F8(MEMORY[0x1E69E7CC0]);
  sub_1AB01494C(v20, v14 + 136);
  sub_1AB45F9D4();
  v15 = sub_1AB45F9C4();
  v17 = v16;
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  *(v14 + 176) = v11;
  *(v14 + 184) = v13;
  *(v14 + 192) = 0;
  *(v14 + 200) = 1;
  *(v14 + 208) = v15;
  *(v14 + 216) = v17;
  *(v14 + 224) = 0u;
  *(v14 + 240) = 0u;
  return v14;
}

uint64_t sub_1AB44C63C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1AB44C684(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1AB44C704()
{
  result = qword_1EB435398;
  if (!qword_1EB435398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB435398);
  }

  return result;
}

uint64_t dispatch thunk of JetPackAssetDiskCacheMetadataStore.executeWithTransaction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 80) + **(a6 + 80));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB027460;

  return v15(a1, a2, a3, a4, a5, a6);
}

void __swiftcall ImpressionsContext.init()(JetEngine::ImpressionsContext *__return_ptr retstr)
{
  retstr->position.is_nil = 1;
  retstr->parentContextID = 0u;
  retstr->uniqueImpressionID = 0u;
  retstr->uniqueParentID = 0u;
  retstr->groupId._countAndFlagsBits = 0;
  retstr->groupId._object = 0xE000000000000000;
  retstr->position.value = 0;
}

void __swiftcall ImpressionsContext.withPosition(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::Int_optional a2)
{
  v3 = *(v2 + 48);
  v12 = *(v2 + 32);
  v13 = v3;
  v14 = *(v2 + 64);
  v4 = *(v2 + 16);
  v10 = *v2;
  v11 = v4;
  if (BYTE8(v4))
  {
    if (!a2.is_nil)
    {
LABEL_7:
      v7 = *(v2 + 48);
      retstr->parentContextID = *(v2 + 32);
      retstr->uniqueImpressionID = v7;
      retstr->uniqueParentID = *(v2 + 64);
      v8 = *(v2 + 16);
      retstr->groupId = *v2;
      *&retstr->position.value = v8;
      retstr->position.value = a2.value;
      retstr->position.is_nil = a2.is_nil;
      goto LABEL_8;
    }
  }

  else if (a2.is_nil || v11 != a2.value)
  {
    goto LABEL_7;
  }

  v5 = *(v2 + 48);
  retstr->parentContextID = *(v2 + 32);
  retstr->uniqueImpressionID = v5;
  retstr->uniqueParentID = *(v2 + 64);
  v6 = *(v2 + 16);
  retstr->groupId = *v2;
  *&retstr->position.value = v6;
LABEL_8:
  sub_1AB0786FC(&v10, &v9);
}

void __swiftcall ImpressionsContext.init(groupId:position:parentContextID:uniqueImpressionID:uniqueParentID:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String groupId, Swift::Int_optional position, Swift::String_optional parentContextID, Swift::String_optional uniqueImpressionID, Swift::String_optional uniqueParentID)
{
  retstr->groupId = groupId;
  retstr->position.value = position.value;
  retstr->position.is_nil = position.is_nil;
  retstr->parentContextID = parentContextID;
  retstr->uniqueImpressionID = uniqueImpressionID;
  retstr->uniqueParentID = uniqueParentID;
}

double sub_1AB44CAE0()
{
  byte_1EB43D600 = 1;
  result = 0.0;
  xmmword_1EB43D608 = 0u;
  unk_1EB43D618 = 0u;
  xmmword_1EB43D628 = 0u;
  *&xmmword_1EB43D5E8 = 0;
  *(&xmmword_1EB43D5E8 + 1) = 0xE000000000000000;
  qword_1EB43D5F8 = 0;
  return result;
}

uint64_t static ImpressionsContext.empty.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EB435E28 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EB43D618;
  v8[2] = xmmword_1EB43D608;
  v8[3] = unk_1EB43D618;
  v2 = xmmword_1EB43D628;
  v8[4] = xmmword_1EB43D628;
  v4 = xmmword_1EB43D5E8;
  v3 = *&qword_1EB43D5F8;
  v8[0] = xmmword_1EB43D5E8;
  v8[1] = *&qword_1EB43D5F8;
  a1[2] = xmmword_1EB43D608;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_1AB0786FC(v8, &v7);
}

uint64_t ImpressionsContext.groupId.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall ImpressionsContext.withGroupId(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v6;
  v7 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v13[3] = v7;
  v13[4] = *(v2 + 64);
  if (v13[0] == a2 || (sub_1AB461DA4() & 1) != 0)
  {
    v8 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v8;
    retstr->uniqueParentID = *(v2 + 64);
    v9 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v9;
    sub_1AB0786FC(v13, v12);
  }

  else
  {
    v10 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v10;
    retstr->uniqueParentID = *(v2 + 64);
    v11 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v11;
    sub_1AB0786FC(v13, v12);

    retstr->groupId._countAndFlagsBits = countAndFlagsBits;
    retstr->groupId._object = object;
  }
}

void __swiftcall ImpressionsContext.withParentContextID(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String_optional a2)
{
  object = a2.value._object;
  countAndFlagsBits = a2.value._countAndFlagsBits;
  v6 = *(v2 + 48);
  v14 = *(v2 + 32);
  v15 = v6;
  v16 = *(v2 + 64);
  v7 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v7;
  if (*(&v14 + 1))
  {
    if (a2.value._object && (v14 == a2 || (sub_1AB461DA4() & 1) != 0))
    {
      goto LABEL_5;
    }
  }

  else if (!a2.value._object)
  {
LABEL_5:
    v8 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v8;
    retstr->uniqueParentID = *(v2 + 64);
    v9 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v9;
    sub_1AB0786FC(v13, v12);
    return;
  }

  v10 = *(v2 + 48);
  retstr->parentContextID = *(v2 + 32);
  retstr->uniqueImpressionID = v10;
  retstr->uniqueParentID = *(v2 + 64);
  v11 = *(v2 + 16);
  retstr->groupId = *v2;
  *&retstr->position.value = v11;
  sub_1AB0786FC(v13, v12);

  retstr->parentContextID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->parentContextID.value._object = object;
}

void __swiftcall ImpressionsContext.withUniqueImpressionID(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v14 = v6;
  v15 = *(v2 + 64);
  v7 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v7;
  if (*(&v14 + 1) && (v14 == a2 || (sub_1AB461DA4() & 1) != 0))
  {
    v8 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v8;
    retstr->uniqueParentID = *(v2 + 64);
    v9 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v9;
    sub_1AB0786FC(v13, v12);
  }

  else
  {
    v10 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v10;
    retstr->uniqueParentID = *(v2 + 64);
    v11 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v11;
    sub_1AB0786FC(v13, v12);

    retstr->uniqueImpressionID.value._countAndFlagsBits = countAndFlagsBits;
    retstr->uniqueImpressionID.value._object = object;
  }
}

void __swiftcall ImpressionsContext.withUniqueImpressionParentID(_:)(JetEngine::ImpressionsContext *__return_ptr retstr, Swift::String_optional a2)
{
  v3 = *(v2 + 48);
  v15[2] = *(v2 + 32);
  v15[3] = v3;
  v16 = *(v2 + 64);
  v4 = *(v2 + 16);
  v15[0] = *v2;
  v15[1] = v4;
  if (!a2.value._object || (object = a2.value._object, countAndFlagsBits = a2.value._countAndFlagsBits, *(&v16 + 1)) && (v16 == a2 || (v7 = retstr, v8 = sub_1AB461DA4(), retstr = v7, (v8 & 1) != 0)))
  {
    v9 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v9;
    retstr->uniqueParentID = *(v2 + 64);
    v10 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v10;
    sub_1AB0786FC(v15, v14);
  }

  else
  {
    v11 = *(v2 + 16);
    retstr->groupId = *v2;
    *&retstr->position.value = v11;
    v12 = *(v2 + 48);
    retstr->parentContextID = *(v2 + 32);
    retstr->uniqueImpressionID = v12;
    v13 = retstr;
    sub_1AB0786FC(v15, v14);

    v13->uniqueParentID.value._countAndFlagsBits = countAndFlagsBits;
    v13->uniqueParentID.value._object = object;
  }
}

BOOL _s9JetEngine18ImpressionsContextV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v19 = a1[9];
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v11 = *(a2 + 56);
  v16 = *(a2 + 48);
  v17 = a1[6];
  v14 = *(a2 + 64);
  v15 = a1[8];
  v18 = *(a2 + 72);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_1AB461DA4() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v7)
    {
      v12 = v8;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v17 != v16 || v6 != v11) && (sub_1AB461DA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v19)
  {
    return v18 && (v15 == v14 && v19 == v18 || (sub_1AB461DA4() & 1) != 0);
  }

  return !v18;
}

uint64_t sub_1AB44D120(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB44D1C0, 0, 0);
}

uint64_t sub_1AB44D1C0()
{
  v1 = v0[5];
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1AB44D29C;
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1AB2546A4(v6, v5, v4);
}

uint64_t sub_1AB44D29C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_1AB19C1DC(*(v4 + 40));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3252E0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t MetricsIDService.idFields(forTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB44D4B0, 0, 0);
}

uint64_t sub_1AB44D4B0()
{
  v1 = v0[7];
  v11 = v0[5];
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v10 = (*(v11 + 16) + **(v11 + 16));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1AB44D60C;
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return v10(v8, v7, v4, v5, v6);
}

uint64_t sub_1AB44D60C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 72) = v1;

  sub_1AB19C1DC(*(v4 + 56));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44D77C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1AB44D77C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AB44D7E0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 64) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1AB44D88C, 0, 0);
}

uint64_t sub_1AB44D88C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = sub_1AB45F9B4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1AB44D98C;
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_1AB44DF74(v7, v6, v1, v5);
}

uint64_t sub_1AB44D98C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  sub_1AB19C1DC(*(v6 + 40));
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB3252E0, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t MetricsIDService.queryID(forTopic:withType:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 81) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1AB44DBC0, 0, 0);
}

uint64_t sub_1AB44DBC0()
{
  v1 = *(v0 + 56);
  v11 = *(v0 + 40);
  *(v0 + 80) = *(v0 + 81);
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v10 = (*(v11 + 32) + **(v11 + 32));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1AB44DD34;
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);

  return v10(v8, v7, v0 + 80, v4, v5, v6);
}

uint64_t sub_1AB44DD34(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[9] = v2;

  if (v2)
  {
    sub_1AB19C1DC(v6[7]);

    return MEMORY[0x1EEE6DFA0](sub_1AB44D77C, 0, 0);
  }

  else
  {
    sub_1AB19C1DC(v6[7]);

    v7 = v6[1];

    return v7(a1, a2);
  }
}

uint64_t sub_1AB44DEA4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v8 = *a3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB0C245C;

  return sub_1AB44DF74(a1, a2, v8, a4);
}

uint64_t sub_1AB44DF74(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 80) = a3;
  v8 = swift_task_alloc();
  *(v4 + 64) = v8;
  *v8 = v4;
  v8[1] = sub_1AB44E024;

  return sub_1AB2546A4(a1, a2, a4);
}

uint64_t sub_1AB44E024(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB0AF72C, 0, 0);
  }
}

uint64_t MetricsIDService.queryID(forTopic:withType:on:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 80) = *a3;
  v14 = (*(a6 + 16) + **(a6 + 16));
  v12 = swift_task_alloc();
  *(v6 + 64) = v12;
  *v12 = v6;
  v12[1] = sub_1AB44E2A0;

  return v14(a1, a2, a4, a5, a6);
}

uint64_t sub_1AB44E2A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44E3D4, 0, 0);
  }
}

uint64_t sub_1AB44E3D4()
{
  if (*(v0 + 80))
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  if (!*(*(v0 + 72) + 16))
  {

LABEL_14:

    goto LABEL_15;
  }

  if (*(v0 + 80))
  {
    v2 = 0x6449746E65696C63;
  }

  else
  {
    v2 = 0x644972657375;
  }

  v3 = sub_1AB014DB4(v2, v1);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_1AB0165C4(*(*(v0 + 72) + 56) + 32 * v3, v0 + 16);

  if (swift_dynamicCast())
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v8 = *(v0 + 8);

    return v8(v6, v7);
  }

LABEL_15:
  sub_1AB255CA8();
  swift_allocError();
  *v10 = 0;
  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1AB44E558(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  v3[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB44E5F8, 0, 0);
}

uint64_t sub_1AB44E5F8()
{
  v1 = v0[5];
  v2 = sub_1AB45F9B4();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1AB44E6D4;
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_1AB09C538(v6, v5, v4);
}

uint64_t sub_1AB44E6D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  sub_1AB19C1DC(*(v4 + 40));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44F4B0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1AB44E844(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0, qword_1AB4DB790);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 64) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1AB44E8F0, 0, 0);
}

uint64_t sub_1AB44E8F0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = sub_1AB45F9B4();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1AB44E9F0;
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_1AB09B03C(v7, v6, v1, v5);
}

uint64_t sub_1AB44E9F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 56) = v2;

  sub_1AB19C1DC(*(v6 + 40));
  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AB44F4B0, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8(a1, a2);
  }
}

uint64_t MetricsIDServiceError.hashValue.getter()
{
  v1 = *v0;
  sub_1AB4620A4();
  MEMORY[0x1AC59D3F0](v1);
  return sub_1AB462104();
}

uint64_t sub_1AB44EC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB200878;

  return MetricsIDService.idFields(forTopic:)(a1, a2, a3, a4);
}

uint64_t sub_1AB44ECBC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB0C245C;

  return MetricsIDService.queryID(forTopic:withType:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB44ED80(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1AB0AF9E8;

  return MetricsIDService.queryID(forTopic:withType:on:)(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_1AB44EE58()
{
  result = qword_1EB43D638;
  if (!qword_1EB43D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D638);
  }

  return result;
}

uint64_t dispatch thunk of MetricsIDService.idFields(forTopic:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1AB44F4AC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MetricsIDService.idFields(forTopic:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB2231A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MetricsIDService.queryID(forTopic:withType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB4425D0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MetricsIDService.resetID(forTopics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1AB027554;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of MetricsIDService.performMaintenance()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return v7(a1, a2);
}

id static AccountProvider<>.appleServices.getter()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];

  return v0;
}

id ACAccountStore.activeAccount.getter@<X0>(void *a1@<X8>)
{
  result = [v1 ams_activeiTunesAccount];
  *a1 = result;
  return result;
}

JetEngine::Account_optional __swiftcall ACAccountStore.account(forUserID:)(Swift::String forUserID)
{
  object = forUserID._object;
  v4 = v1;
  v5 = (HIBYTE(forUserID._object) & 0xF);
  forUserID._object = (forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL);
  if ((object & 0x2000000000000000) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = forUserID._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_63;
  }

  if ((object & 0x1000000000000000) != 0)
  {
    countAndFlagsBits = forUserID._countAndFlagsBits;

    v8 = sub_1AB44FAD0(countAndFlagsBits, object, 10);
    v29 = v28;

    if (v29)
    {
      goto LABEL_63;
    }

LABEL_65:
    v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    v26 = [v2 ams:v30 iTunesAccountWithDSID:?];

    goto LABEL_66;
  }

  if ((object & 0x2000000000000000) != 0)
  {
    v31[0] = forUserID._countAndFlagsBits;
    v31[1] = object & 0xFFFFFFFFFFFFFFLL;
    if (LOBYTE(forUserID._countAndFlagsBits) == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v8 = 0;
          v18 = v31 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              break;
            }

            v8 = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_71:
      __break(1u);
      return *&forUserID._countAndFlagsBits;
    }

    if (LOBYTE(forUserID._countAndFlagsBits) != 45)
    {
      if (v5)
      {
        v8 = 0;
        v23 = v31;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v8 = 0;
        v12 = v31 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v8;
          if ((v8 * 10) >> 64 != (10 * v8) >> 63)
          {
            break;
          }

          v8 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if ((forUserID._countAndFlagsBits & 0x1000000000000000) != 0)
  {
    forUserID._countAndFlagsBits = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    forUserID._countAndFlagsBits = sub_1AB461714();
  }

  v7 = *forUserID._countAndFlagsBits;
  if (v7 == 43)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v15 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              goto LABEL_61;
            }

            v17 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v17 + v16;
            if (__OFADD__(v17, v16))
            {
              goto LABEL_61;
            }

            ++v15;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_53;
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v7 == 45)
  {
    if (forUserID._object >= 1)
    {
      v5 = forUserID._object - 1;
      if (forUserID._object != 1)
      {
        v8 = 0;
        if (forUserID._countAndFlagsBits)
        {
          v9 = (forUserID._countAndFlagsBits + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v8;
            if ((v8 * 10) >> 64 != (10 * v8) >> 63)
            {
              goto LABEL_61;
            }

            v8 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (forUserID._object)
  {
    v8 = 0;
    if (forUserID._countAndFlagsBits)
    {
      while (1)
      {
        v21 = *forUserID._countAndFlagsBits - 48;
        if (v21 > 9)
        {
          goto LABEL_61;
        }

        v22 = 10 * v8;
        if ((v8 * 10) >> 64 != (10 * v8) >> 63)
        {
          goto LABEL_61;
        }

        v8 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          goto LABEL_61;
        }

        ++forUserID._countAndFlagsBits;
        if (!--forUserID._object)
        {
          goto LABEL_53;
        }
      }
    }

    goto LABEL_53;
  }

LABEL_61:
  v8 = 0;
  LOBYTE(v5) = 1;
LABEL_62:
  v32 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_63:
  v26 = 0;
LABEL_66:
  *v4 = v26;
  return *&forUserID._countAndFlagsBits;
}

uint64_t ACAccountStore.onActiveAccountChange.getter()
{
  v0 = *(sub_1AB06B14C() + 16);

  sub_1AB06B640();
  return v0;
}

id static AccountProvider<>.appleServices(forMediaType:)(uint64_t a1)
{
  v1 = [objc_opt_self() ams:a1 sharedAccountStoreForMediaType:?];

  return v1;
}

uint64_t sub_1AB44F930()
{
  [*(v0 + 24) removeObserver_];

  return swift_deallocClassInstance();
}

double sub_1AB44F994(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1AB45F284();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F254();

  v9 = sub_1AB3860F0(a4);
  (*(v6 + 8))(v8, v5, v9);

  return result;
}

uint64_t sub_1AB44FA88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D668, &unk_1AB4FC1C0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  off_1EB43D658 = result;
  return result;
}

unsigned __int8 *sub_1AB44FAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1AB4607D4();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AB45005C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1AB461714();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1AB45005C(uint64_t a1, unint64_t a2)
{
  v2 = sub_1AB4607E4();
  v6 = sub_1AB4500DC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1AB4500DC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1AB4613B4();
    if (!v9 || (v10 = v9, v11 = sub_1AB030F04(v9, 0), v12 = sub_1AB450234(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1AB460674();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1AB460674();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1AB461714();
LABEL_4:

  return sub_1AB460674();
}

unint64_t sub_1AB450234(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1AB3FE0FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1AB460764();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1AB461714();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1AB3FE0FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1AB460744();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void static IntentModel<>.kind.getter()
{
  sub_1AB4615D4();
  sub_1AB462314();

  MEMORY[0x1AC59BA20](0xD00000000000001CLL, 0x80000001AB50FA90);
  sub_1AB461884();
  __break(1u);
}

double sub_1AB45051C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v11 = *(v7 + 16);
  v11(v20 - v12, v3, a1);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = 0u;
    memset(v26, 0, 25);
    v24 = 0u;
    v13 = &unk_1EB43D670;
    v14 = &unk_1AB4FC208;
    v15 = &v24;
LABEL_6:
    sub_1AB014AC0(v15, v13, v14);
    goto LABEL_7;
  }

  v27 = v24;
  v28 = v25;
  v29[0] = v26[0];
  *(v29 + 9) = *(v26 + 9);
  sub_1AB0CBDB8(&v27, &v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D688, &qword_1AB4FC228);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D678, &qword_1AB4FC210);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    v13 = &qword_1EB43D680;
    v14 = &unk_1AB4FC218;
    v15 = v20;
    goto LABEL_6;
  }

  sub_1AB014AC0(v30, &qword_1EB43D680, &unk_1AB4FC218);
  sub_1AB0149B0(v20, v22);
  sub_1AB0149B0(v22, v30);
LABEL_7:
  v11(v9, v3, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D678, &qword_1AB4FC210);
  if (swift_dynamicCast() || (*&v26[0] = 0, v24 = 0u, v25 = 0u, sub_1AB014AC0(&v24, &qword_1EB43D680, &unk_1AB4FC218), sub_1AB450AC8(v30, &v24), *(&v25 + 1)))
  {
    v16 = &v24;
  }

  else
  {
    sub_1AB014AC0(&v24, &qword_1EB43D680, &unk_1AB4FC218);
    (*(a2 + 40))(&v24, a1, a2);
    *&v20[0] = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    if (!swift_dynamicCast())
    {
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      sub_1AB014AC0(v30, &qword_1EB43D680, &unk_1AB4FC218);
      sub_1AB014AC0(v22, &qword_1EB43D680, &unk_1AB4FC218);
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v16 = v22;
  }

  sub_1AB0149B0(v16, &v27);
  v17 = *(&v28 + 1);
  v18 = *&v29[0];
  __swift_project_boxed_opaque_existential_1Tm(&v27, *(&v28 + 1));
  (*(v18 + 8))(v17, v18);
  sub_1AB014AC0(v30, &qword_1EB43D680, &unk_1AB4FC218);
  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  return result;
}

uint64_t sub_1AB450924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);

  return sub_1AB450A64(v3, boxed_opaque_existential_0);
}

BOOL static IntentModel._isContinuous.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_conformsToProtocol2())
  {
    v3 = AssociatedTypeWitness == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_1AB4509D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  v5 = swift_allocObject();
  *a3 = v5;

  return sub_1AB34173C(v3, v5 + 16);
}

uint64_t sub_1AB450A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Models.DeepLinkIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AB450AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D680, &unk_1AB4FC218);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static PipelinePhase<>.readContentsOfFile()@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = sub_1AB450BAC;
  *(result + 24) = 0;
  *a1 = sub_1AB314FBC;
  a1[1] = result;
  return result;
}

uint64_t sub_1AB450BAC(uint64_t a1)
{
  v1 = sub_1AB45F784();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437670, &unk_1AB4D8A00);
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690, &unk_1AB4D8AD0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v4 + 24) = v1;
  *(v4 + 32) = v3;
  *(v4 + 40) = 1;
  return v4;
}

uint64_t PrivateIdentifierFieldProvider.addTimeSensitiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  result = (*(v4 + 8))(v3, v4);
  if (v6)
  {
    v12[3] = MEMORY[0x1E69E6158];
    v12[0] = result;
    v12[1] = v6;
    v7 = sub_1AB460544();
    v9 = v8;
    v10 = *(a1 + 24);
    v11 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
    (*(v11 + 16))(v12, v7, v9, v10, v11);

    return __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  return result;
}

_OWORD *JSRequestIntent.init(_:timeout:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  result = sub_1AB0CBDB8(a1, a4);
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;
  return result;
}

uint64_t JSRequestIntent.init(_:timeout:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  *(a4 + 24) = v8;
  *(a4 + 32) = *(v9 + 8);
  *(a4 + 40) = *(v9 + 16);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, v10, v8);
  *(a4 + 48) = a2;
  *(a4 + 56) = a3 & 1;

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1AB450EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1AB450F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB450FA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 25705;
  }

  else
  {
    v3 = 0x646E696B24;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE200000000000000;
  }

  if (*a2)
  {
    v5 = 25705;
  }

  else
  {
    v5 = 0x646E696B24;
  }

  if (*a2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB451038()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB4510AC(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB45110C(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

void sub_1AB451188(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (!*v1)
  {
    v2 = 0x646E696B24;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AB4511B8()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 0x646E696B24;
  }
}

uint64_t sub_1AB4511E4@<X0>(char *a3@<X8>)
{
  v4 = sub_1AB4619B4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AB451248(uint64_t a1)
{
  v2 = sub_1AB451768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB451284(uint64_t a1)
{
  v2 = sub_1AB451768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Child.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D698, &qword_1AB4FC310);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB451768();
  sub_1AB462224();
  if (!v2)
  {
    v26 = v5;
    v8 = v50;
    LOBYTE(v28) = 0;
    v10 = sub_1AB461A84();
    v11 = v9;
    v12 = v10 == 1835365481 && v9 == 0xE400000000000000;
    if (v12 || (sub_1AB461DA4() & 1) != 0)
    {

      sub_1AB01494C(a1, v27);
      Models.Menu.Item.init(from:)(v27, &v28);
      (*(v26 + 8))(v7, v4);
      v13 = 0;
      v14 = v28;
      v15 = v29;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      v49 = v39;
      v42 = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v16 = v30;
      v17 = v31;
    }

    else
    {
      v22 = v10 == 0x756E656D627573 && v11 == 0xE700000000000000;
      if (!v22 && (sub_1AB461DA4() & 1) == 0)
      {
        v24 = v10 == 0x6574616C706D6574 && v11 == 0xE800000000000000;
        if (!v24 && (sub_1AB461DA4() & 1) == 0)
        {
          LOBYTE(v27[0]) = 0;
          v28 = 0;
          v29 = 0xE000000000000000;
          sub_1AB4615D4();

          v28 = 0x20646E696B24;
          v29 = 0xE600000000000000;
          MEMORY[0x1AC59BA20](v10, v11);

          MEMORY[0x1AC59BA20](0xD000000000000024, 0x80000001AB50FAF0);
          sub_1AB4616B4();
          swift_allocError();
          sub_1AB4517BC();
          sub_1AB461684();

          swift_willThrow();
          (*(v26 + 8))(v7, v4);
          return __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        LOBYTE(v27[0]) = 1;
        sub_1AB451820();
        sub_1AB461AC4();
        (*(v26 + 8))(v7, v4);
        v14 = v28;
        v15 = v29;
        v13 = 2;
        goto LABEL_10;
      }

      sub_1AB01494C(a1, v27);
      Models.Menu.init(from:)(v27, &v28);
      (*(v26 + 8))(v7, v4);
      v14 = v28;
      v15 = v29;
      v46 = v36;
      v47 = v37;
      v48 = v38;
      v49 = v39;
      v42 = v32;
      v43 = v33;
      v44 = v34;
      v45 = v35;
      v16 = v30;
      v17 = v31;
      v13 = 1;
    }

    v40 = v16;
    v41 = v17;
LABEL_10:
    *v8 = v14;
    *(v8 + 8) = v15;
    v18 = v47;
    *(v8 + 112) = v46;
    *(v8 + 128) = v18;
    *(v8 + 144) = v48;
    *(v8 + 160) = v49;
    v19 = v43;
    *(v8 + 48) = v42;
    *(v8 + 64) = v19;
    v20 = v45;
    *(v8 + 80) = v44;
    *(v8 + 96) = v20;
    v21 = v41;
    *(v8 + 16) = v40;
    *(v8 + 32) = v21;
    *(v8 + 161) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1AB451768()
{
  result = qword_1EB43D6A0;
  if (!qword_1EB43D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6A0);
  }

  return result;
}

unint64_t sub_1AB4517BC()
{
  result = qword_1EB43D6A8;
  if (!qword_1EB43D6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D698, &qword_1AB4FC310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6A8);
  }

  return result;
}

unint64_t sub_1AB451820()
{
  result = qword_1EB43D6B0;
  if (!qword_1EB43D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6B0);
  }

  return result;
}

uint64_t Models.Menu.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6B8, &qword_1AB4FC318);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - v6;
  v8 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v9 = sub_1AB453974();
  sub_1AB462224();
  if (!v2)
  {
    v58 = v9;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6C8, &qword_1AB4FC320);
    LOBYTE(v71) = 1;
    sub_1AB4539C8();
    sub_1AB461A54();
    v11 = v77[0];
    if (*(&v77[0] + 1) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *&v77[0];
    }

    if (*(&v77[0] + 1) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(&v77[0] + 1);
    }

    LOBYTE(v77[0]) = 0;
    v14 = sub_1AB461A84();
    v54 = v13;
    v55 = *(&v11 + 1);
    v56 = v15;
    v57 = v11;
    v52 = v14;
    v53 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6E8, &qword_1AB4FC330);
    LOBYTE(v63) = 2;
    sub_1AB453AD0();
    sub_1AB461A54();
    v51 = v7;
    if (v71 == 1)
    {
      sub_1AB014AC0(&v71, &qword_1EB43D708, &qword_1AB4FC338);
      memset(v77, 0, sizeof(v77));
      v78 = 0;
    }

    else
    {
      sub_1AB014A58(&v71, v77, &qword_1EB43BD08, &qword_1AB4F1480);
      sub_1AB014AC0(&v71, &qword_1EB43D6E8, &qword_1AB4FC330);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D710, &qword_1AB4FC340);
    LOBYTE(v63) = 4;
    sub_1AB453C2C();
    sub_1AB461A54();
    v17 = v71;
    if (v71 == 3)
    {
      v17 = 2;
    }

    HIDWORD(v49) = v17;
    v18 = v79[3];
    v50 = v79[4];
    __swift_project_boxed_opaque_existential_1Tm(v79, v18);
    v19 = sub_1AB462214();
    v20 = sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v19);
    v50 = v21;

    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = &type metadata for EmptyActionKindTable;
    }

    if (v20)
    {
      v23 = v50;
    }

    else
    {
      v23 = &off_1F200AB90;
    }

    LOBYTE(v71) = 3;
    decodeActionModel<A, B>(using:container:forKey:)(v22, v23, v69);
    v24 = BYTE4(v49);
    if (!v54)
    {
      v53 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
      v54 = v25;
    }

    v26 = v59;
    sub_1AB014A58(v77, &v63, &qword_1EB43BD08, &qword_1AB4F1480);
    if (v63)
    {
      sub_1AB014AC0(v77, &qword_1EB43BD08, &qword_1AB4F1480);
      (*(v10 + 8))(v51, v4);
      v73 = v65;
      v74 = v66;
      v75 = v67;
      v76 = v68;
      v71 = v63;
      v72 = v64;
    }

    else
    {
      *(&v75 + 1) = &_s12_EmptySourceVN;
      v76 = &off_1EE764AB0;
      sub_1AB01494C(&v74, v60);
      v27 = v10;
      v28 = v61;
      v29 = v62;
      __swift_project_boxed_opaque_existential_1Tm(v60, v61);
      v58 = (*(v29 + 24))(v28, v29);
      v30 = v61;
      v31 = v62;
      __swift_project_boxed_opaque_existential_1Tm(v60, v61);
      v57 = (*(v31 + 32))(v30, v31);
      LODWORD(v55) = v32;
      v33 = v61;
      v34 = v62;
      __swift_project_boxed_opaque_existential_1Tm(v60, v61);
      v35 = (*(v34 + 40))(v33, v34);
      v36 = v4;
      v37 = v61;
      v38 = v62;
      __swift_project_boxed_opaque_existential_1Tm(v60, v61);
      v39 = (*(v38 + 48))(v37, v38);
      v26 = v59;
      v40 = v39;
      v42 = v41;
      sub_1AB014AC0(v77, &qword_1EB43BD08, &qword_1AB4F1480);
      (*(v27 + 8))(v51, v36);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      *&v71 = v58;
      *(&v71 + 1) = v57;
      LOBYTE(v72) = v55 & 1;
      *(&v72 + 1) = v35;
      *&v73 = v40;
      *(&v73 + 1) = v42;
      if (v63)
      {
        sub_1AB014AC0(&v63, &qword_1EB43BD08, &qword_1AB4F1480);
      }
    }

    v63 = v69[0];
    v64 = v69[1];
    *&v65 = v70;
    *(v26 + 136) = 0u;
    *(v26 + 152) = 0;
    *(v26 + 120) = 0u;
    *(v26 + 160) = 2;
    v43 = v54;
    *v26 = v53;
    *(v26 + 8) = v43;
    v44 = v56;
    *(v26 + 16) = v52;
    *(v26 + 24) = v44;
    v45 = v72;
    *(v26 + 32) = v71;
    *(v26 + 48) = v45;
    v46 = v73;
    v47 = v74;
    v48 = v75;
    *(v26 + 112) = v76;
    *(v26 + 80) = v47;
    *(v26 + 96) = v48;
    *(v26 + 64) = v46;
    sub_1AB454CD0(&v63, v26 + 120);
    *(v26 + 160) = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v79);
}

uint64_t Models.Menu.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D738, &qword_1AB4FC350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v46 - v7;
  v9 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  sub_1AB454D40();
  sub_1AB462224();
  if (!v2)
  {
    v54 = a2;
    v55 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6C8, &qword_1AB4FC320);
    LOBYTE(v61) = 0;
    sub_1AB4539C8();
    sub_1AB461A54();
    v10 = v5;
    v11 = v67[0];
    if (*(&v67[0] + 1) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = *&v67[0];
    }

    if (*(&v67[0] + 1) == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(&v67[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43B938, &unk_1AB4EF090);
    LOBYTE(v61) = 1;
    sub_1AB37DF54();
    sub_1AB461A54();
    v52 = *(&v11 + 1);
    v53 = v11;
    v51 = v12;
    v14 = *&v67[0];
    if (*(&v67[0] + 1) == 1)
    {
      v15 = 0;
    }

    else
    {
      v15 = *(&v67[0] + 1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D6E8, &qword_1AB4FC330);
    LOBYTE(v59[0]) = 2;
    sub_1AB453AD0();
    sub_1AB461A54();
    v49 = v15;
    v50 = v14;
    if (v61 == 1)
    {
      sub_1AB014AC0(&v61, &qword_1EB43D708, &qword_1AB4FC338);
      memset(v67, 0, sizeof(v67));
      v68 = 0;
    }

    else
    {
      sub_1AB014A58(&v61, v67, &qword_1EB43BD08, &qword_1AB4F1480);
      sub_1AB014AC0(&v61, &qword_1EB43D6E8, &qword_1AB4FC330);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D748, &qword_1AB4FC358);
    LOBYTE(v59[0]) = 3;
    sub_1AB454D94();
    sub_1AB461AC4();
    v17 = v61;
    if (v13)
    {
      v18 = v13;
      v19 = v54;
      v20 = v55;
      v21 = v51;
    }

    else
    {
      v21 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
      v18 = v22;
      v19 = v54;
      v20 = v55;
    }

    v23 = v50;
    if (!v49)
    {
      v23 = 0;
    }

    v55 = v23;
    v24 = 0xE000000000000000;
    if (v49)
    {
      v24 = v49;
    }

    v53 = v24;
    sub_1AB014A58(v67, v59, &qword_1EB43BD08, &qword_1AB4F1480);
    if (*&v59[0])
    {
      sub_1AB014AC0(v67, &qword_1EB43BD08, &qword_1AB4F1480);
      (*(v20 + 8))(v8, v10);
      v63 = v59[2];
      v64 = v59[3];
      v65 = v59[4];
      v66 = v60;
      v61 = v59[0];
      v62 = v59[1];
    }

    else
    {
      *(&v65 + 1) = &_s12_EmptySourceVN;
      v66 = &off_1EE764AB0;
      sub_1AB01494C(&v64, v56);
      v51 = v21;
      v52 = v18;
      v25 = v20;
      v26 = v17;
      v27 = v57;
      v28 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v50 = (*(v28 + 24))(v27, v28);
      v29 = v57;
      v30 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v49 = (*(v30 + 32))(v29, v30);
      v48 = v31;
      v32 = v57;
      v33 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v47 = (*(v33 + 40))(v32, v33);
      v35 = v57;
      v34 = v58;
      __swift_project_boxed_opaque_existential_1Tm(v56, v57);
      v36 = *(v34 + 48);
      v37 = v34;
      v17 = v26;
      v38 = v36(v35, v37);
      v19 = v54;
      v39 = v38;
      v41 = v40;
      sub_1AB014AC0(v67, &qword_1EB43BD08, &qword_1AB4F1480);
      (*(v25 + 8))(v8, v10);
      v21 = v51;
      v18 = v52;
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      *&v61 = v50;
      *(&v61 + 1) = v49;
      LOBYTE(v62) = v48 & 1;
      *(&v62 + 1) = v47;
      *&v63 = v39;
      *(&v63 + 1) = v41;
      if (*&v59[0])
      {
        sub_1AB014AC0(v59, &qword_1EB43BD08, &qword_1AB4F1480);
      }
    }

    *v19 = v21;
    *(v19 + 8) = v18;
    v42 = v53;
    *(v19 + 16) = v55;
    *(v19 + 24) = v42;
    v43 = v64;
    *(v19 + 64) = v63;
    *(v19 + 80) = v43;
    *(v19 + 96) = v65;
    v44 = v66;
    v45 = v62;
    *(v19 + 32) = v61;
    *(v19 + 48) = v45;
    *(v19 + 112) = v44;
    *(v19 + 120) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v69);
}

uint64_t Models.Menu.Child.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D768, &qword_1AB4FC360);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB451768();
  sub_1AB462274();
  sub_1AB454EF0(v1, &v25);
  if (!v36)
  {
    v21 = v33;
    v22 = v34;
    v23 = v35;
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v24 = 0;
    v7 = v12;
    sub_1AB461BB4();
    if (!v7)
    {
      Models.Menu.Item.encode(to:)(a1);
    }

    sub_1AB454FAC(&v13);
    return (*(v37 + 8))(v5, v3);
  }

  if (v36 == 1)
  {
    v17 = v29;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v13 = v25;
    v14 = v26;
    v15 = v27;
    v16 = v28;
    v24 = 0;
    v6 = v12;
    sub_1AB461BB4();
    if (!v6)
    {
      Models.Menu.encode(to:)(a1);
    }

    sub_1AB454F7C(&v13);
    return (*(v37 + 8))(v5, v3);
  }

  v8 = v25;
  LOBYTE(v13) = 0;
  v9 = v12;
  sub_1AB461BB4();
  if (!v9)
  {
    v13 = v8;
    v24 = 1;
    sub_1AB454F28();
    sub_1AB461BF4();
  }

  (*(v37 + 8))(v5, v3);
}

uint64_t Models.Menu.Item.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D778, &qword_1AB4FC368);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v7 = sub_1AB453974();
  sub_1AB462274();
  v8 = *(v1 + 8);
  v19[0] = *v1;
  v19[1] = v8;
  v20 = 1;
  sub_1AB454F28();
  v9 = v18;
  sub_1AB461BF4();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  LOBYTE(v19[0]) = 0;
  sub_1AB461BB4();
  LOBYTE(v19[0]) = 2;
  sub_1AB39FC64();
  sub_1AB461BF4();
  LOBYTE(v19[0]) = *(v1 + 160);
  v20 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D728, &qword_1AB4FC348);
  sub_1AB454FDC();
  sub_1AB461BF4();
  v18 = v3;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v11 = sub_1AB462264();
  v12 = sub_1AB3098DC(0xD000000000000023, 0x80000001AB500830, v11);
  v14 = v13;

  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &type metadata for EmptyActionKindTable;
  }

  if (v12)
  {
    v16 = v14;
  }

  else
  {
    v16 = &off_1F200AB90;
  }

  LOBYTE(v19[0]) = 3;
  encodeActionModel<A, B>(_:using:container:forKey:)(v1 + 120, v15, v6, v19, v15, &_s4MenuV4ItemV10CodingKeysON, v16, v7);
  return (*(v4 + 8))(v6, v18);
}

uint64_t Models.Menu.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D790, &qword_1AB4FC370);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1AB454D40();
  sub_1AB462274();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_1AB454F28();
  sub_1AB461BF4();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1AB461BB4();
    LOBYTE(v13) = 2;
    sub_1AB39FC64();
    sub_1AB461BF4();
    v13 = v3[15];
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BA68, &unk_1AB4EFA90);
    sub_1AB4550B4();
    sub_1AB461BF4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Models.Menu.Child.init(deserializing:using:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x646E696B24, 0xE500000000000000, v28);
  sub_1AB014A58(v28, v30, &qword_1EB436BA0, &qword_1AB4D4F40);
  v7 = v31;
  if (!v31)
  {

    sub_1AB066D84(v28);
    sub_1AB014AC0(v30, &qword_1EB436BA0, &qword_1AB4D4F40);
LABEL_13:
    v19 = 0x20000001F201BE60uLL;
    sub_1AB163664();
    swift_allocError();
    *v20 = xmmword_1AB4E9720;
    goto LABEL_14;
  }

  v8 = v32;
  __swift_project_boxed_opaque_existential_1Tm(v30, v31);
  v9 = (*(v8 + 24))(v7, v8);
  v11 = v10;
  sub_1AB066D84(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  if (!v11)
  {

    goto LABEL_13;
  }

  v12 = v9 == 1835365481 && v11 == 0xE400000000000000;
  if (v12 || (sub_1AB461DA4() & 1) != 0)
  {

    sub_1AB0B9254(a1, v30);
    v27 = v6;
    Models.Menu.Item.init(deserializing:using:)(v30, &v27, v28);
    result = sub_1AB066D84(a1);
    if (!v3)
    {
      HIBYTE(v29) = 0;
LABEL_10:
      v14 = v28[9];
      *(a3 + 128) = v28[8];
      *(a3 + 144) = v14;
      v15 = v28[5];
      *(a3 + 64) = v28[4];
      *(a3 + 80) = v15;
      v16 = v28[7];
      *(a3 + 96) = v28[6];
      *(a3 + 112) = v16;
      v17 = v28[1];
      *a3 = v28[0];
      *(a3 + 16) = v17;
      v18 = v28[3];
      *(a3 + 32) = v28[2];
      *(a3 + 48) = v18;
      *(a3 + 160) = v29;
      return result;
    }

    return result;
  }

  v22 = v9 == 0x756E656D627573 && v11 == 0xE700000000000000;
  if (!v22 && (sub_1AB461DA4() & 1) == 0)
  {

    if (v9 == 0x6574616C706D6574 && v11 == 0xE800000000000000 || (sub_1AB461DA4() & 1) != 0)
    {

      JSONObject.subscript.getter(25705, 0xE200000000000000, v28);
      v23 = sub_1AB355D28();
      if (!v3)
      {
        v25 = v23;
        v26 = v24;
        sub_1AB066D84(a1);
        result = sub_1AB066D84(v28);
        *a3 = v25;
        *(a3 + 8) = v26;
        *(a3 + 161) = 2;
        return result;
      }

      sub_1AB066D84(a1);
      v21 = v28;
      return sub_1AB066D84(v21);
    }

    v19 = 0x80000001F201BE60;
    sub_1AB163664();
    swift_allocError();
    *v20 = v9;
    *(v20 + 8) = v11;
LABEL_14:
    *(v20 + 16) = v19;
    *(v20 + 24) = 0;
    swift_willThrow();
    v21 = a1;
    return sub_1AB066D84(v21);
  }

  sub_1AB0B9254(a1, v30);
  v27 = v6;
  Models.Menu.init(deserializing:using:)(v30, &v27, v28);
  result = sub_1AB066D84(a1);
  if (!v3)
  {
    HIBYTE(v29) = 1;
    goto LABEL_10;
  }

  return result;
}

uint64_t Models.Menu.Item.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v33);
  sub_1AB014A58(v33, v35, &qword_1EB436BA0, &qword_1AB4D4F40);
  v7 = v36;
  if (!v36)
  {
    sub_1AB066D84(v33);

    sub_1AB014AC0(v35, &qword_1EB436BA0, &qword_1AB4D4F40);
LABEL_8:
    sub_1AB163664();
    swift_allocError();
    *v17 = xmmword_1AB4F97B0;
    *(v17 + 16) = 0x20000001F201BF58uLL;
    *(v17 + 24) = 0;
    swift_willThrow();
    return sub_1AB066D84(a1);
  }

  v8 = v37;
  __swift_project_boxed_opaque_existential_1Tm(v35, v36);
  v9 = (*(v8 + 24))(v7, v8);
  v11 = v10;
  sub_1AB066D84(v33);
  __swift_destroy_boxed_opaque_existential_1Tm(v35);
  if (!v11)
  {

    goto LABEL_8;
  }

  JSONObject.subscript.getter(25705, 0xE200000000000000, v33);
  sub_1AB014A58(v33, v35, &qword_1EB436BA0, &qword_1AB4D4F40);
  v12 = v36;
  if (v36)
  {
    v13 = v37;
    __swift_project_boxed_opaque_existential_1Tm(v35, v36);
    v14 = (*(v13 + 24))(v12, v13);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    if (v16)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1AB014AC0(v35, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v14 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
  v16 = v19;
LABEL_11:
  sub_1AB066D84(v33);
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v35);
  v32[0] = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  MediaArtwork.init(deserializing:using:)(v35, v32, v33);
  if (v3)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x6E6F69746361, 0xE600000000000000, v32);
    v29[0] = v6;
    static AnyActionTypes.tryToMakeInstance(byDeserializing:using:)(v32, v29, v35);
    sub_1AB066D84(v32);

    JSONObject.subscript.getter(1701605234, 0xE400000000000000, v32);
    sub_1AB014A58(v32, v29, &qword_1EB436BA0, &qword_1AB4D4F40);
    v20 = v30;
    if (v30)
    {
      v38 = v9;
      v21 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      (*(v21 + 24))(v20, v21);
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (v23)
      {
        v24 = sub_1AB4619B4();

        sub_1AB066D84(a1);
        sub_1AB066D84(v32);
        if (v24 == 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }
      }

      else
      {
        sub_1AB066D84(a1);
        sub_1AB066D84(v32);
        v26 = 2;
      }

      v9 = v38;
    }

    else
    {
      sub_1AB066D84(a1);
      sub_1AB066D84(v32);
      sub_1AB014AC0(v29, &qword_1EB436BA0, &qword_1AB4D4F40);
      v26 = 2;
    }

    *(a3 + 152) = 0;
    *(a3 + 136) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 160) = 2;
    *a3 = v14;
    *(a3 + 8) = v16;
    *(a3 + 16) = v9;
    *(a3 + 24) = v11;
    v27 = v33[3];
    *(a3 + 64) = v33[2];
    *(a3 + 80) = v27;
    *(a3 + 96) = v33[4];
    *(a3 + 112) = v34;
    v28 = v33[1];
    *(a3 + 32) = v33[0];
    *(a3 + 48) = v28;
    result = sub_1AB454CD0(v35, a3 + 120);
    *(a3 + 160) = v26;
  }

  return result;
}

double Models.Menu.init(deserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a2;
  JSONObject.subscript.getter(25705, 0xE200000000000000, v23);
  sub_1AB014A58(v23, v25, &qword_1EB436BA0, &qword_1AB4D4F40);
  v7 = v26;
  if (v26)
  {
    v8 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v9 = (*(v8 + 24))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if (v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1AB014AC0(v25, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v9 = _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0();
  v11 = v12;
LABEL_6:
  sub_1AB066D84(v23);
  JSONObject.subscript.getter(0x656C746974, 0xE500000000000000, v23);
  sub_1AB014A58(v23, v25, &qword_1EB436BA0, &qword_1AB4D4F40);
  v13 = v26;
  if (v26)
  {
    v14 = v27;
    __swift_project_boxed_opaque_existential_1Tm(v25, v26);
    v15 = (*(v14 + 24))(v13, v14);
    v17 = v16;
    sub_1AB066D84(v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1AB066D84(v23);
    sub_1AB014AC0(v25, &qword_1EB436BA0, &qword_1AB4D4F40);
  }

  v15 = 0;
  v17 = 0xE000000000000000;
LABEL_11:
  JSONObject.subscript.getter(1852793705, 0xE400000000000000, v25);
  v28 = v6;

  MediaArtwork.init(deserializing:using:)(v25, &v28, v23);
  if (v3)
  {
    sub_1AB066D84(a1);
  }

  else
  {
    JSONObject.subscript.getter(0x6E6572646C696863, 0xE800000000000000, v25);
    v19 = sub_1AB37F8E4(v25, v6);
    sub_1AB066D84(a1);
    *a3 = v9;
    *(a3 + 8) = v11;
    *(a3 + 16) = v15;
    *(a3 + 24) = v17;
    v20 = v23[3];
    *(a3 + 64) = v23[2];
    *(a3 + 80) = v20;
    *(a3 + 96) = v23[4];
    v21 = v24;
    result = *v23;
    v22 = v23[1];
    *(a3 + 32) = v23[0];
    *(a3 + 48) = v22;
    *(a3 + 112) = v21;
    *(a3 + 120) = v19;
  }

  return result;
}

uint64_t Models.Menu.Child.id.getter()
{
  sub_1AB454EF0(v0, &v14);
  if (v25)
  {
    if (v25 == 1)
    {
      v7 = v18;
      v8 = v19;
      v9 = v20;
      v10 = v21;
      v3 = v14;
      v4 = v15;
      v5 = v16;
      v6 = v17;
      v1 = v14;

      sub_1AB454F7C(&v3);
    }

    else
    {
      return v14;
    }
  }

  else
  {
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v7 = v18;
    v8 = v19;
    v9 = v20;
    v10 = v21;
    v3 = v14;
    v4 = v15;
    v5 = v16;
    v6 = v17;
    v1 = v14;

    sub_1AB454FAC(&v3);
  }

  return v1;
}

uint64_t sub_1AB4538C4@<X0>(uint64_t *a1@<X8>)
{
  result = Models.Menu.Child.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1AB453934()
{
  result = [objc_allocWithZone(_JEAtomicCounter) initWithInitialValue_];
  qword_1EB43D690 = result;
  return result;
}

unint64_t sub_1AB453974()
{
  result = qword_1EB43D6C0;
  if (!qword_1EB43D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6C0);
  }

  return result;
}

unint64_t sub_1AB4539C8()
{
  result = qword_1EB43D6D0;
  if (!qword_1EB43D6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D6C8, &qword_1AB4FC320);
    sub_1AB453A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6D0);
  }

  return result;
}

unint64_t sub_1AB453A4C()
{
  result = qword_1EB43D6D8;
  if (!qword_1EB43D6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D6E0, &qword_1AB4FC328);
    sub_1AB451820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6D8);
  }

  return result;
}

unint64_t sub_1AB453AD0()
{
  result = qword_1EB43D6F0;
  if (!qword_1EB43D6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D6E8, &qword_1AB4FC330);
    sub_1AB453B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6F0);
  }

  return result;
}

unint64_t sub_1AB453B54()
{
  result = qword_1EB43D6F8;
  if (!qword_1EB43D6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BD08, &qword_1AB4F1480);
    sub_1AB453BD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D6F8);
  }

  return result;
}

unint64_t sub_1AB453BD8()
{
  result = qword_1EB43D700;
  if (!qword_1EB43D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D700);
  }

  return result;
}

unint64_t sub_1AB453C2C()
{
  result = qword_1EB43D718;
  if (!qword_1EB43D718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D710, &qword_1AB4FC340);
    sub_1AB453CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D718);
  }

  return result;
}

unint64_t sub_1AB453CB0()
{
  result = qword_1EB43D720;
  if (!qword_1EB43D720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D728, &qword_1AB4FC348);
    sub_1AB453D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D720);
  }

  return result;
}

unint64_t sub_1AB453D34()
{
  result = qword_1EB43D730;
  if (!qword_1EB43D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D730);
  }

  return result;
}

uint64_t Models.Menu.Item.init(id:title:icon:action:role:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a7;
  *(a8 + 136) = 0u;
  *(a8 + 152) = 0;
  *(a8 + 120) = 0u;
  *(a8 + 160) = 2;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  v10 = *(a5 + 48);
  *(a8 + 64) = *(a5 + 32);
  *(a8 + 80) = v10;
  *(a8 + 96) = *(a5 + 64);
  *(a8 + 112) = *(a5 + 80);
  v11 = *(a5 + 16);
  *(a8 + 32) = *a5;
  *(a8 + 48) = v11;
  result = sub_1AB454CD0(a6, a8 + 120);
  *(a8 + 160) = v9;
  return result;
}

uint64_t sub_1AB453EFC()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 1852793705;
  v4 = 0x6E6F69746361;
  if (v1 != 3)
  {
    v4 = 1701605234;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 25705;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AB453F74@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1AB4558D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AB453F9C(uint64_t a1)
{
  v2 = sub_1AB453974();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB453FD8(uint64_t a1)
{
  v2 = sub_1AB453974();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.Item.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Menu.Item.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.Item.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.Menu.Item.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.ItemRole.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1AB4619B4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t Models.Menu.ItemRole.rawValue.getter()
{
  if (*v0)
  {
    return 0x7463757274736564;
  }

  else
  {
    return 0x6C65636E6163;
  }
}

uint64_t sub_1AB4542D4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463757274736564;
  }

  else
  {
    v3 = 0x6C65636E6163;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEB00000000657669;
  }

  if (*a2)
  {
    v5 = 0x7463757274736564;
  }

  else
  {
    v5 = 0x6C65636E6163;
  }

  if (*a2)
  {
    v6 = 0xEB00000000657669;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AB461DA4();
  }

  return v8 & 1;
}

uint64_t sub_1AB454380()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB454408(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB45447C(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB45450C@<X0>(char *a3@<X8>)
{
  v4 = sub_1AB4619B4();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1AB454568(uint64_t *a1@<X8>)
{
  v2 = 0x6C65636E6163;
  if (*v1)
  {
    v2 = 0x7463757274736564;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000657669;
  }

  *a1 = v2;
  a1[1] = v3;
}

__n128 Models.Menu.init(id:title:icon:children:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  v7 = *(a5 + 48);
  *(a7 + 64) = *(a5 + 32);
  *(a7 + 80) = v7;
  *(a7 + 96) = *(a5 + 64);
  v8 = *(a5 + 80);
  result = *a5;
  v10 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v10;
  *(a7 + 112) = v8;
  *(a7 + 120) = a6;
  return result;
}

uint64_t sub_1AB454694()
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

uint64_t sub_1AB454740(uint64_t a1)
{
  sub_1AB460684();
}

uint64_t sub_1AB4547D8(uint64_t a1)
{
  sub_1AB4620A4();
  sub_1AB460684();

  return sub_1AB462104();
}

unint64_t sub_1AB454880@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AB45588C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AB4548B0(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE400000000000000;
  v5 = 1852793705;
  if (*v1 != 2)
  {
    v5 = 0x6E6572646C696863;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AB454918()
{
  v1 = 25705;
  v2 = 1852793705;
  if (*v0 != 2)
  {
    v2 = 0x6E6572646C696863;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

unint64_t sub_1AB45497C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB45588C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AB4549A4(uint64_t a1)
{
  v2 = sub_1AB454D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AB4549E0(uint64_t a1)
{
  v2 = sub_1AB454D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Models.Menu.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Models.Menu.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Models.Menu.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Models.Menu.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Models.Menu.children.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

unint64_t _s9JetEngine6ModelsO4MenuV2IDVAGycfC_0()
{
  sub_1AB4615D4();

  if (qword_1EB435E38 != -1)
  {
    swift_once();
  }

  [qword_1EB43D690 increment];
  v0 = sub_1AB461C44();
  MEMORY[0x1AC59BA20](v0);

  return 0xD00000000000001ALL;
}

uint64_t sub_1AB454CD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A788, &qword_1AB4E85D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AB454D40()
{
  result = qword_1EB43D740;
  if (!qword_1EB43D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D740);
  }

  return result;
}

unint64_t sub_1AB454D94()
{
  result = qword_1EB43D750;
  if (!qword_1EB43D750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D748, &qword_1AB4FC358);
    sub_1AB454E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D750);
  }

  return result;
}

unint64_t sub_1AB454E18()
{
  result = qword_1EB43D758;
  if (!qword_1EB43D758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BA68, &unk_1AB4EFA90);
    sub_1AB454E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D758);
  }

  return result;
}

unint64_t sub_1AB454E9C()
{
  result = qword_1EB43D760;
  if (!qword_1EB43D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D760);
  }

  return result;
}

unint64_t sub_1AB454F28()
{
  result = qword_1EB43D770;
  if (!qword_1EB43D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D770);
  }

  return result;
}

unint64_t sub_1AB454FDC()
{
  result = qword_1EB43D780;
  if (!qword_1EB43D780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43D728, &qword_1AB4FC348);
    sub_1AB455060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D780);
  }

  return result;
}

unint64_t sub_1AB455060()
{
  result = qword_1EB43D788;
  if (!qword_1EB43D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D788);
  }

  return result;
}

unint64_t sub_1AB4550B4()
{
  result = qword_1EB43D798;
  if (!qword_1EB43D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43BA68, &unk_1AB4EFA90);
    sub_1AB455138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D798);
  }

  return result;
}

unint64_t sub_1AB455138()
{
  result = qword_1EB43D7A0;
  if (!qword_1EB43D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7A0);
  }

  return result;
}

unint64_t sub_1AB4551E8()
{
  result = qword_1EB43D7A8;
  if (!qword_1EB43D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7A8);
  }

  return result;
}

unint64_t sub_1AB455240()
{
  result = qword_1EB43D7B0;
  if (!qword_1EB43D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7B0);
  }

  return result;
}

unint64_t sub_1AB455298()
{
  result = qword_1EB43D7B8;
  if (!qword_1EB43D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7B8);
  }

  return result;
}

__n128 __swift_memcpy162_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1AB455344(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 162))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 161);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB455380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 162) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 162) = 0;
    }

    if (a2)
    {
      *(result + 161) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB4553DC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 160) = 0;
    *(result + 128) = 0u;
    *(result + 144) = 0u;
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 161) = a2;
  return result;
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1AB455470(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_1AB4554B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AB455578()
{
  result = qword_1EB43D7C0;
  if (!qword_1EB43D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7C0);
  }

  return result;
}

unint64_t sub_1AB4555D0()
{
  result = qword_1EB43D7C8;
  if (!qword_1EB43D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7C8);
  }

  return result;
}

unint64_t sub_1AB455628()
{
  result = qword_1EB43D7D0;
  if (!qword_1EB43D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7D0);
  }

  return result;
}

unint64_t sub_1AB455680()
{
  result = qword_1EB43D7D8;
  if (!qword_1EB43D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7D8);
  }

  return result;
}

unint64_t sub_1AB4556D8()
{
  result = qword_1EB43D7E0;
  if (!qword_1EB43D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7E0);
  }

  return result;
}

unint64_t sub_1AB455730()
{
  result = qword_1EB43D7E8;
  if (!qword_1EB43D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7E8);
  }

  return result;
}

unint64_t sub_1AB455788()
{
  result = qword_1EB43D7F0;
  if (!qword_1EB43D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7F0);
  }

  return result;
}

unint64_t sub_1AB4557E0()
{
  result = qword_1EB43D7F8;
  if (!qword_1EB43D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D7F8);
  }

  return result;
}

unint64_t sub_1AB455838()
{
  result = qword_1EB43D800;
  if (!qword_1EB43D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D800);
  }

  return result;
}

unint64_t sub_1AB45588C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AB4619B4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AB4558D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1AB461DA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_1AB461DA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AB461DA4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1AB455A78()
{
  result = qword_1EB43D808;
  if (!qword_1EB43D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D808);
  }

  return result;
}

unint64_t sub_1AB455ACC()
{
  result = qword_1EB43D810;
  if (!qword_1EB43D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB43D810);
  }

  return result;
}

unint64_t PackageEncryptionError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  if (!*(v0 + 4))
  {
    sub_1AB4615D4();

    v5 = 0xD00000000000001BLL;
    goto LABEL_10;
  }

  if (v2 == 1)
  {
    sub_1AB4615D4();

    v5 = 0xD00000000000001ELL;
LABEL_10:
    v4 = sub_1AB461C44();
    MEMORY[0x1AC59BA20](v4);

    return v5;
  }

  if (v2 == 2)
  {
    if (v1 == 1)
    {
      return 0xD000000000000030;
    }

    if (!v1)
    {
      return 0xD000000000000016;
    }
  }

  v5 = 0;
  sub_1AB4615D4();
  MEMORY[0x1AC59BA20](0xD00000000000001BLL, 0x80000001AB50FB60);
  sub_1AB461824();
  return v5;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PackageEncryptionError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PackageEncryptionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AB455D64(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AB455D7C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t WritableStateLens.init<A>(contentsOf:in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *a1;
  a5[3] = type metadata accessor for StateStoreHandle(0, a3, a4, a3);
  a5[4] = &off_1F2000C50;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  return sub_1AB2397EC(&v11, a2, a3, a4, boxed_opaque_existential_0);
}

void *WritableStateLens.init(get:set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  a5[3] = &type metadata for DelegatingStateStoreHandle;
  a5[4] = &off_1F2000C30;
  result = swift_allocObject();
  *a5 = result;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t WritableStateLens<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[3];
  v11 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v10);
  (*(v11 + 8))(v6, a3, v10, v11);
  swift_getAtKeyPath();
  return (*(v7 + 8))(v9, v6);
}

uint64_t WritableStateLens<A>.currentValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v5);
  return (*(v6 + 8))(*(a1 + 16), a2, v5, v6);
}

uint64_t WritableStateLens<A>.updateValue(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[3];
  v10 = v4[4];
  __swift_project_boxed_opaque_existential_1Tm(v4, v9);
  v12[2] = *(a3 + 16);
  v12[3] = a4;
  v13 = v4;
  v14 = a1;
  v15 = a2;
  return (*(v10 + 16))(sub_1AB456338, v12, v9, v10);
}

uint64_t sub_1AB4560DC(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31[1] = a3;
  v32 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v16 = type metadata accessor for WritableStateLens(0, v15, v14, v15);
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v17);
  v19 = *(v18 + 8);
  v20 = *(v16 + 16);
  v31[0] = a5;
  v19(v20, a5, v17, v18);
  v21 = *(v8 + 16);
  v21(v10, v13, a4);
  v22 = v34;
  v32(v10);
  if (v22 || (sub_1AB460504() & 1) != 0)
  {
    v23 = *(v8 + 8);
    v23(v10, a4);
    return (v23)(v13, a4);
  }

  else
  {
    v25 = a1[3];
    v34 = a1[4];
    v26 = a1;
    v27 = v25;
    __swift_project_boxed_opaque_existential_1Tm(v26, v25);
    v28 = *(v31[0] + 8);
    v33[3] = a4;
    v33[4] = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
    v21(boxed_opaque_existential_0, v10, a4);
    (*(v34 + 24))(v33, v27);
    v30 = *(v8 + 8);
    v30(v10, a4);
    v30(v13, a4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }
}

uint64_t sub_1AB456364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 CodeAnyHashable.init(wrappedValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

double CodeAnyHashable.init(from:)@<D0>(void *a1@<X0>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  sub_1AB01494C(v8, v11);
  sub_1AB460E14();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_1AB461564();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    result = *&v12;
    v10 = v13;
    *a5 = v12;
    *(a5 + 16) = v10;
    *(a5 + 32) = v14;
  }

  return result;
}

uint64_t CodeAnyHashable.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1AB461354();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB461544();
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v4);
    (*(v9 + 32))(v12, v8, v4);
    sub_1AB460434();
    return (*(v9 + 8))(v12, v4);
  }

  else
  {
    v14(v8, 1, 1, v4);
    (*(v6 + 8))(v8, v5);
    v16 = sub_1AB4616E4();
    swift_allocError();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4372B8, &qword_1AB4D8210);
    v18[3] = MEMORY[0x1E69E69B8];
    v19 = swift_allocObject();
    *v18 = v19;
    sub_1AB02B4BC(v2, v19 + 16);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_1AB462234();
    v21[0] = 0;
    v21[1] = 0xE000000000000000;
    sub_1AB4615D4();

    strcpy(v21, "Value is not <");
    HIBYTE(v21[1]) = -18;
    v20 = sub_1AB462314();
    MEMORY[0x1AC59BA20](v20);

    MEMORY[0x1AC59BA20](62, 0xE100000000000000);
    sub_1AB461694();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
    return swift_willThrow();
  }
}

uint64_t CodeAnyHashable.hashValue.getter()
{
  sub_1AB4620A4();
  _s9JetEngine15CodeAnyHashableV4hash4intoys6HasherVz_tF_0();
  return sub_1AB462104();
}

uint64_t sub_1AB45691C(uint64_t a1)
{
  sub_1AB4620A4();
  CodeAnyHashable.hash(into:)(v2);
  return sub_1AB462104();
}

uint64_t sub_1AB4569B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id URLBagContract.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = *a1;
  v3 = type metadata accessor for MescalBagContract();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v2;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  *&v1[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v7, sel_init);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_1AB456AF0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 arrayForKey_];

  return v3;
}

id sub_1AB456B60()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 stringForKey_];

  return v3;
}

id sub_1AB456C04()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 doubleForKey_];

  return v3;
}

id sub_1AB456C74()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1AB456CE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 doubleForKey_];

  return v3;
}

id sub_1AB456D54()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1AB456DC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 arrayForKey_];

  return v3;
}

id sub_1AB456E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 integerForKey_];

  return v3;
}

id sub_1AB456EA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v2 = sub_1AB460514();
  v3 = [v1 URLForKey_];

  return v3;
}

id sub_1AB456F34(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = *(v3 + OBJC_IVAR____TtC9JetEngine14URLBagContract_backing);
  v6 = sub_1AB460514();
  v7 = [v5 *a3];

  return v7;
}

id URLBagContract.__allocating_init(_:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing] = v4;
  v5 = type metadata accessor for MescalBagContract();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC9JetEngine17MescalBagContract_backing] = v4;
  v9.receiver = v6;
  v9.super_class = v5;
  swift_unknownObjectRetain();
  *&v3[OBJC_IVAR____TtC9JetEngine14URLBagContract_mescalContract] = objc_msgSendSuper2(&v9, sel_init);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1AB457634(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *&a1[OBJC_IVAR____TtC9JetEngine14URLBagContract_backing];
  v7 = a1;
  v8 = sub_1AB460514();
  v9 = [v6 *a5];

  return v9;
}

id URLBagContract.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLBagContract.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLBagContract();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AB457AC0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *v1;
  v4 = *(v1 + 8);
  sub_1AB19A648(__src, v8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AB3C4AE4(v3);
  }

  memcpy(__srca, __dst, sizeof(__srca));
  nullsub_1();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 >= v3[2])
  {
LABEL_10:
    __break(1u);
    return;
  }

  v5 = &v3[50 * v4];
  memcpy(v8, v5 + 4, sizeof(v8));
  memcpy(v5 + 4, __srca, 0x190uLL);
  sub_1AB014AC0(v8, &qword_1EB439FB0, &qword_1AB4D8F68);
  *v1 = v3;
  if (v3[2] == v4 + 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4 + 1;
  }

  *(v1 + 8) = v6;
}

uint64_t sub_1AB457BB4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1AB3C4BD4(v5);
  v5 = result;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v6 >= v5[2])
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = &v5[2 * v6];
  v8[4] = a1;
  v8[5] = a2;

  *v2 = v5;
  if (v5[2] == v6 + 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6 + 1;
  }

  *(v2 + 8) = v9;
  return result;
}

double sub_1AB457C68(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1AB17781C(0, *(v4 + 16) + 1, 1);
    v4 = *a1;
  }

  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v7 >= v6 >> 1)
  {
    sub_1AB17781C((v6 > 1), v7 + 1, 1);
    v4 = *a1;
  }

  *(v4 + 16) = v7 + 1;
  *(v4 + 8 * v7 + 32) = a2;
  *a1 = v4;

  return result;
}

uint64_t sub_1AB457D14(uint64_t a1)
{
  sub_1AB4582B4(a1, &v14);
  if (!v15)
  {
    return sub_1AB014AC0(&v14, &qword_1EB43A8F0, &qword_1AB4E9740);
  }

  sub_1AB0149B0(&v14, v16);
  __swift_project_boxed_opaque_existential_1Tm(v16, v16[3]);
  v4 = sub_1AB45F174();
  v6 = v3;
  sub_1AB458B50(v4, v3, v5);
  if (v7)
  {
    goto LABEL_11;
  }

  v12 = v4;
  v13 = v6;
  sub_1AB017200(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8C0, &qword_1AB4FCFB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_1AB014AC0(v10, &qword_1EB43D8C8, &qword_1AB4FCFC0);
LABEL_10:
    sub_1AB45892C(v4, v6);
LABEL_11:
    v8 = sub_1AB017254(v4, v6);
    goto LABEL_12;
  }

  sub_1AB0149B0(v10, &v14);
  __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
  if ((sub_1AB461964() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v14);
    goto LABEL_10;
  }

  sub_1AB017254(v4, v6);
  __swift_project_boxed_opaque_existential_1Tm(&v14, v15);
  sub_1AB461954();
  v8 = __swift_destroy_boxed_opaque_existential_1Tm(&v14);
LABEL_12:
  v9 = *(v1 + OBJC_IVAR____TtC9JetEngine13JSDebugObject_newPoints);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock(v9 + 8);
  sub_1AB458DAC();
  os_unfair_lock_unlock(v9 + 8);

  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

uint64_t sub_1AB4582B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1AB01494C(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8D0, &qword_1AB4FCFC8);
  if (swift_dynamicCast())
  {
    v3 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D47F0;
    *(inited + 32) = 0x646E696B24;
    v5 = MEMORY[0x1E69E6158];
    *(inited + 40) = 0xE500000000000000;
    strcpy((inited + 48), "metricsEvent");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;
    *(inited + 72) = v5;
    *(inited + 80) = 1635017060;
    *(inited + 88) = 0xE400000000000000;
    v6 = [v3 dictionaryForPosting];
    v7 = sub_1AB4602F4();

    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0, &qword_1AB4F3D10);
    *(inited + 96) = v7;
    v8 = sub_1AB01B220(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
    swift_arrayDestroy();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
    *&v14 = v8;
    v9 = sub_1AB1BF9A0();
    v10 = swift_allocObject();
    v10[5] = &type metadata for FoundationValue;
    v10[6] = &off_1F1FFB5A8;
    v11 = swift_allocObject();
    v10[2] = v11;
    sub_1AB014B78(&v14, (v11 + 16));

    v12 = &type metadata for JSONObject;
  }

  else
  {
    v12 = 0;
    v9 = 0;
    v10 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v12;
  a2[4] = v9;
  *a2 = v10;
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_1AB4584F8()
{
  if (sub_1AB087FF4())
  {
  }

  else
  {
    sub_1AB428534();
  }

  v1 = *(v0 + OBJC_IVAR____TtC9JetEngine13JSDebugObject_newPoints);
  os_unfair_lock_lock((v1 + 32));
  sub_1AB2EB074(*(v1 + 16), *(v1 + 24));
  v3 = v2;
  *(v1 + 16) = sub_1AB458DE0(0, 0, *(*(v1 + 16) + 16));

  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 32));
  return v3;
}

double sub_1AB4585F0()
{
  v1 = sub_1AB087FF4();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + OBJC_IVAR____TtC9JetEngine13JSDebugObject_isDebugPointsEnabled);
    os_unfair_lock_lock((v3 + 20));
    v4 = *(v3 + 16);
    os_unfair_lock_unlock((v3 + 20));
    if (v4)
    {
    }

    else
    {
      if (qword_1EB435DB8 != -1)
      {
        swift_once();
      }

      v6 = qword_1EB46C318;
      v13[3] = type metadata accessor for RunLoopWorkerThread();
      v13[4] = &protocol witness table for RunLoopWorkerThread;
      v13[0] = v2;
      sub_1AB01494C(v13, v10);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v11 = sub_1AB458824;
      v12 = 0;
      sub_1AB014A58(v10, v9, &qword_1EB43D8B0, &qword_1AB4FCFA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8B8, &qword_1AB4FCFB0);
      v7 = swift_allocObject();
      sub_1AB458CFC(v9, v7 + 16);
      v8 = *(v6 + 16);

      os_unfair_lock_lock((v8 + 24));
      sub_1AB458D6C((v8 + 16));
      os_unfair_lock_unlock((v8 + 24));

      sub_1AB014AC0(v10, &qword_1EB43D8B0, &qword_1AB4FCFA8);

      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      os_unfair_lock_lock((v3 + 20));
      *(v3 + 16) = 1;
      os_unfair_lock_unlock((v3 + 20));
    }
  }

  else
  {

    sub_1AB428534();
  }

  return result;
}

uint64_t (*sub_1AB458824(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1AB458D88;
}

uint64_t sub_1AB45892C(uint64_t a1, unint64_t a2)
{
  sub_1AB017200(a1, a2);
  sub_1AB4589D4(a1, a2);
  v4 = sub_1AB460664();

  return v4;
}

uint64_t sub_1AB458998@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1AB460664();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_1AB4589D4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1AB45F894();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_1AB017254(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_1AB030F04(v9, 0);
      v12 = sub_1AB45F7C4();
      sub_1AB017254(a1, a2);
      v13 = *(v5 + 8);
      v5 += 8;
      v13(v7, v4);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v14 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v14;
      if (!v14)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1AB458B50(uint64_t a1, unint64_t a2, __n128 a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1AB460664();
    }

    goto LABEL_10;
  }

  if (v3 != 2)
  {
    return sub_1AB460664();
  }

  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  a1 = sub_1AB45F414();
  if (a1)
  {
    a1 = sub_1AB45F444();
    if (__OFSUB__(v4, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v5, v4))
  {
    __break(1u);
LABEL_10:
    v6 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1AB45F414() || !__OFSUB__(v6, sub_1AB45F444()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1AB45F434();
  return sub_1AB460664();
}

uint64_t sub_1AB458CFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8B0, &qword_1AB4FCFA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1AB458DE0(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AC0, &qword_1AB4E75C0);
    v6 = sub_1AB4609B4();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v5;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v5;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t dispatch thunk of LocalizedStringsDataSource.fetchLanguages()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB2231A8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LocalizedStringsDataSource.fetchStrings(withLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1AB027460;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1AB4590E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_1AB17785C(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_1AB4614F4();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = v11[1];
    v30 = *v11;
    v13 = v3;
    v14 = *(*(v3 + 56) + 8 * v6);
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_1AB17785C((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = (v31 + 24 * v15);
    v17[4] = v30;
    v17[5] = v12;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_1AB031480(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_1AB031480(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1AB459380(uint64_t a1, unsigned __int8 a2, double a3)
{
  v4 = v3;
  if (qword_1EB432348 != -1)
  {
LABEL_37:
    v39 = a2;
    v40 = a3;
    swift_once();
    a2 = v39;
    a3 = v40;
  }

  v42 = byte_1EB46BDB0 & a2;
  if (byte_1EB46BDB0 & a2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [objc_opt_self() serverTimeFromTimeInterval_];
    v5 = [v6 unsignedLongLongValue];
  }

  v7 = v4[9];
  swift_beginAccess();
  v8 = v4[4];
  v9 = v4[5];
  v47 = MEMORY[0x1E69E6158];
  *&v46 = v8;
  *(&v46 + 1) = v9;
  sub_1AB014B78(&v46, &v44);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43[0] = v7;
  sub_1AB01AE18(&v44, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v11 = v7;
  swift_beginAccess();

  v13 = sub_1AB459FAC(v12);

  v14 = v13[2];
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v15;
      while (1)
      {
        if (v17 >= v13[2])
        {
          __break(1u);
          goto LABEL_37;
        }

        v18 = v13[v17 + 4];
        if (*(v18 + 16))
        {
          break;
        }

LABEL_9:
        if (v14 == ++v17)
        {
          v11 = v7;
          goto LABEL_27;
        }
      }

      v19 = sub_1AB014DB4(100, 0xE100000000000000);
      if ((v20 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v18 + 56) + 32 * v19, &v46);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (*&v43[0] < v5)
      {
        break;
      }

      if (!*(v18 + 16))
      {
        break;
      }

      v21 = sub_1AB014DB4(115, 0xE100000000000000);
      if ((v22 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v18 + 56) + 32 * v21, &v46);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_9;
      }

      v41 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1AB2B00A4(0, *(v16 + 2) + 1, 1, v16);
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v27 = sub_1AB2B00A4((v23 > 1), v24 + 1, 1, v16);
        v25 = v24 + 1;
        v16 = v27;
      }

      v15 = v17 + 1;
      *(v16 + 2) = v25;
      *&v16[8 * v24 + 32] = v41;
      v26 = v14 - 1 == v17;
      v11 = v7;
      if (v26)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_9;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (*(v16 + 2))
  {
    if (v42)
    {

      v29 = sub_1AB459FAC(v28);

      v30 = v29[2];
      if (v30)
      {
        v31 = v29[v30 + 3];

        if (*(v31 + 16))
        {
          v32 = sub_1AB014DB4(115, 0xE100000000000000);
          if (v33)
          {
            v34 = v32;

            sub_1AB0165C4(*(v31 + 56) + 32 * v34, &v44);

            sub_1AB014B78(&v44, &v46);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436BF0, &qword_1AB4D6B60);
            v35 = swift_allocObject();
            *(v35 + 16) = xmmword_1AB4D4720;
            sub_1AB0165C4(&v46, v35 + 32);
            v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8, &qword_1AB4EAC30);
            *&v44 = v35;
            sub_1AB014B78(&v44, v43);
            v36 = swift_isUniquelyReferenced_nonNull_native();
            sub_1AB01AE18(v43, 0x6973736572706D69, 0xEF73656D69546E6FLL, v36);
            __swift_destroy_boxed_opaque_existential_1Tm(&v46);
            return v11;
          }
        }
      }
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8E8, &qword_1AB4FD058);
    *&v46 = v16;
    sub_1AB014B78(&v46, &v44);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(&v44, 0x6973736572706D69, 0xEF73656D69546E6FLL, v38);
    return v11;
  }

  else
  {

    return 0;
  }
}

void sub_1AB4598A4(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = *(v2 + 72);
  swift_beginAccess();
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v32 = MEMORY[0x1E69E6158];
  *&v31 = v6;
  *(&v31 + 1) = v7;
  sub_1AB014B78(&v31, v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1AB01AE18(v30, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v10 = sub_1AB459FAC(v9);

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A228, qword_1AB4E5CC0);
  *&v31 = v10;
  sub_1AB014B78(&v31, v30);

  v11 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v5;
  sub_1AB01AE18(v30, 0x6E49646577656976, 0xEA00000000006F66, v11);
  v12 = [objc_opt_self() serverTimeFromTimeInterval_];
  v13 = [v12 unsignedLongLongValue];

  v14 = v10[2];
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v17 = v15;
      while (1)
      {
        if (v17 >= v10[2])
        {
          __break(1u);
          return;
        }

        v18 = v10[v17 + 4];
        if (*(v18 + 16))
        {
          break;
        }

LABEL_5:
        if (v14 == ++v17)
        {
          goto LABEL_21;
        }
      }

      v19 = sub_1AB014DB4(100, 0xE100000000000000);
      if ((v20 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v18 + 56) + 32 * v19, &v31);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      if (v13 >= v29)
      {
        break;
      }

      if (!*(v18 + 16))
      {
        break;
      }

      v21 = sub_1AB014DB4(115, 0xE100000000000000);
      if ((v22 & 1) == 0)
      {
        break;
      }

      sub_1AB0165C4(*(v18 + 56) + 32 * v21, &v31);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_5;
      }

      v28 = *&v30[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1AB2B00A4(0, *(v16 + 2) + 1, 1, v16);
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = sub_1AB2B00A4((v23 > 1), v24 + 1, 1, v16);
        v25 = v24 + 1;
        v16 = v26;
      }

      v15 = v17 + 1;
      *(v16 + 2) = v25;
      *&v16[8 * v24 + 32] = v28;
      if (v14 - 1 == v17)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_5;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_21:

  if (*(v16 + 2))
  {
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8E8, &qword_1AB4FD058);
    *&v31 = v16;
    sub_1AB014B78(&v31, v30);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(v30, 0x6973736572706D69, 0xEF73656D69546E6FLL, v27);
  }

  else
  {
  }
}

void *sub_1AB459CA0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8F8, &qword_1AB4FD068);
  result = sub_1AB461904();
  v6 = 0;
  v28 = a3;
  v29 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v26 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v31 = *(*(v28 + 56) + 8 * v17);

      a1(&v30, &v31);

      if (v3)
      {
        break;
      }

      *(v26 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v29;
      v21 = v30;
      v22 = (v29[6] + 16 * v17);
      *v22 = v19;
      v22[1] = v20;
      *(v29[7] + 8 * v17) = v21;
      v23 = v29[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_17;
      }

      v29[2] = v25;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v29;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_1AB459E64(double a1, double a2)
{
  v4 = objc_opt_self();
  v5 = [v4 serverTimeFromTimeInterval_];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 serverTimeFromTimeInterval_];
  v8 = [v7 unsignedLongLongValue];

  if (v8 >= v6)
  {
    v9 = v8 - v6;
  }

  else
  {
    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78, &unk_1AB4D6AC0);
  inited = swift_initStackObject();
  *(inited + 32) = 115;
  *(inited + 16) = xmmword_1AB4D47F0;
  v11 = MEMORY[0x1E69E76D8];
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v6;
  *(inited + 72) = v11;
  *(inited + 80) = 100;
  *(inited + 120) = v11;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = v9;
  v12 = sub_1AB01B220(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
  swift_arrayDestroy();
  return v12;
}

void *sub_1AB459FAC(uint64_t isUniquelyReferenced_nonNull_native)
{
  v1 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0.0;
  v3 = (isUniquelyReferenced_nonNull_native + 40);
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 0.0;
  v6 = 0x1E698C000uLL;
  v7 = &selRef_moveItemAtURL_toURL_error_;
  v8 = 1;
  v9 = 1;
  do
  {
    v10 = *v3;
    if (*(v3 - 1))
    {
      if ((v9 & 1) == 0)
      {
        v2 = *v3;
      }

      v8 &= v9;
    }

    else
    {
      if (v9)
      {
        v9 = 0;
        v5 = *v3;
        goto LABEL_6;
      }

      if (v8)
      {
        goto LABEL_13;
      }

      v11 = v2;
      if (v10 - v2 < 0.0166666667)
      {
        v2 = 0.0;
LABEL_13:
        v9 = 0;
        v8 = 1;
        goto LABEL_6;
      }

      if (v2 - v5 <= 0.0166666667)
      {
        v2 = 0.0;
        v9 = 0;
        v8 = 1;
        v5 = *v3;
      }

      else
      {
        v12 = v6;
        v13 = objc_opt_self();
        v14 = [v13 v7[262]];
        v15 = [v14 unsignedLongLongValue];

        v16 = v7;
        v17 = [v13 v7[262]];
        v18 = [v17 unsignedLongLongValue];

        v19 = v18 - v15;
        if (v18 < v15)
        {
          v19 = 0;
        }

        v46[0] = 115;
        v46[1] = 0xE100000000000000;
        v46[2] = v15;
        v46[5] = MEMORY[0x1E69E76D8];
        v47[0] = 100;
        v47[1] = 0xE100000000000000;
        v47[2] = v19;
        v47[5] = MEMORY[0x1E69E76D8];
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB436EF0, &qword_1AB4E61B0);
        v20 = sub_1AB461924();

        sub_1AB014A58(v46, &v43, &qword_1EB439AA0, &qword_1AB4DA4B0);
        v21 = v43;
        v22 = v44;
        v23 = sub_1AB014DB4(v43, v44);
        if (v24)
        {
          goto LABEL_37;
        }

        *(v20 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v23;
        v25 = (v20[6] + 16 * v23);
        *v25 = v21;
        v25[1] = v22;
        sub_1AB014B78(v45, (v20[7] + 32 * v23));
        v26 = v20[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        v20[2] = v28;
        sub_1AB014A58(v47, &v43, &qword_1EB439AA0, &qword_1AB4DA4B0);
        v29 = v43;
        v30 = v44;
        v31 = sub_1AB014DB4(v43, v44);
        if (v32)
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v4 = sub_1AB2AFF70(0, v4[2] + 1, 1, v4);
          goto LABEL_33;
        }

        *(v20 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v31;
        v33 = (v20[6] + 16 * v31);
        *v33 = v29;
        v33[1] = v30;
        sub_1AB014B78(v45, (v20[7] + 32 * v31));
        v34 = v20[2];
        v27 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v27)
        {
          goto LABEL_38;
        }

        v20[2] = v35;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB439AA0, &qword_1AB4DA4B0);
        swift_arrayDestroy();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1AB2AFF70(0, v4[2] + 1, 1, v4);
        }

        v6 = v12;
        v37 = v4[2];
        v36 = v4[3];
        if (v37 >= v36 >> 1)
        {
          v4 = sub_1AB2AFF70((v36 > 1), v37 + 1, 1, v4);
        }

        v2 = 0.0;
        v9 = 0;
        v4[2] = v37 + 1;
        v4[v37 + 4] = v20;
        v8 = 1;
        v5 = v10;
        v7 = v16;
      }
    }

LABEL_6:
    v3 += 4;
    --v1;
  }

  while (v1);
  if (v9)
  {
    return v4;
  }

  if (v8)
  {
    sub_1AB45F964();
    v39 = v38;
  }

  else
  {
    v39 = v2;
  }

  v20 = sub_1AB459E64(v5, v39);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v41 = v4[2];
  v40 = v4[3];
  if (v41 >= v40 >> 1)
  {
    v4 = sub_1AB2AFF70((v40 > 1), v41 + 1, 1, v4);
  }

  v4[2] = v41 + 1;
  v4[v41 + 4] = v20;
  return v4;
}

void *sub_1AB45A3E8(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v31 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 56); ; i += 4)
  {
    v5 = *(i - 24);
    v6 = *(i - 2);
    v8 = *(i - 1);
    v7 = *i;
    swift_bridgeObjectRetain_n();
    v10 = sub_1AB014DB4(v8, v7);
    v11 = v1[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v1[3] < v13)
    {
      sub_1AB1D2158(v13, 1);
      v1 = v31;
      v15 = sub_1AB014DB4(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_19;
      }

      v10 = v15;
    }

    if (v14)
    {

      v17 = v1[7];
      v18 = *(v17 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v17 + 8 * v10) = v18;
      v30 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = sub_1AB0796F4(0, *(v18 + 2) + 1, 1, v18);
        *(v17 + 8 * v10) = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1AB0796F4((v20 > 1), v21 + 1, 1, v18);
        v22 = v21 + 1;
        v18 = v23;
        *(v30 + 8 * v10) = v23;
      }

      *(v18 + 2) = v22;
      v4 = &v18[32 * v21];
      v4[32] = v5;
      *(v4 + 5) = v6;
      *(v4 + 6) = v8;
      *(v4 + 7) = v7;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB43A070, &qword_1AB4E4FF8);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1AB4D4720;
      *(v24 + 32) = v5;
      *(v24 + 40) = v6;
      *(v24 + 48) = v8;
      *(v24 + 56) = v7;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      v25 = (v1[6] + 16 * v10);
      *v25 = v8;
      v25[1] = v7;
      *(v1[7] + 8 * v10) = v24;
      v26 = v1[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v1[2] = v28;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

unint64_t sub_1AB45A620(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v4 = a3;
  for (i = (result + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v7 = *(i - 1);
    v9 = *i;
    v10 = *v4;

    result = sub_1AB014DB4(v8, v7);
    v12 = v10[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      break;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      sub_1AB1D2158(v15, a2 & 1);
      result = sub_1AB014DB4(v8, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_34;
      }

LABEL_11:
      v18 = *v4;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (a2)
    {
      goto LABEL_11;
    }

    v28 = result;
    sub_1AB1D7B58();
    result = v28;
    v4 = a3;
    v18 = *a3;
    if ((v16 & 1) == 0)
    {
LABEL_25:
      v18[(result >> 6) + 8] |= 1 << result;
      v29 = (v18[6] + 16 * result);
      *v29 = v8;
      v29[1] = v7;
      *(v18[7] + 8 * result) = v9;
      v30 = v18[2];
      v14 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v14)
      {
        goto LABEL_30;
      }

      v18[2] = v31;
      goto LABEL_5;
    }

LABEL_12:
    v19 = *(v18[7] + 8 * result);
    v20 = *(v9 + 16);
    v21 = *(v19 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      goto LABEL_29;
    }

    v33 = result;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v24 = *(v19 + 3) >> 1, v24 < v22))
    {
      if (v21 <= v22)
      {
        v25 = v21 + v20;
      }

      else
      {
        v25 = v21;
      }

      v19 = sub_1AB0796F4(isUniquelyReferenced_nonNull_native, v25, 1, v19);
      v24 = *(v19 + 3) >> 1;
    }

    v4 = a3;
    if (*(v9 + 16))
    {
      if (v24 - *(v19 + 2) < v20)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v26 = *(v19 + 2);
        v14 = __OFADD__(v26, v20);
        v27 = v26 + v20;
        if (v14)
        {
          goto LABEL_33;
        }

        *(v19 + 2) = v27;
      }
    }

    else
    {

      if (v20)
      {
        goto LABEL_31;
      }
    }

    *(v18[7] + 8 * v33) = v19;

LABEL_5:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB45A888(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v23 = MEMORY[0x1E69E6158];
  *&v22 = v5;
  *(&v22 + 1) = v6;
  sub_1AB014B78(&v22, v21);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v4;
  sub_1AB01AE18(v21, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  v8 = v4;
  swift_beginAccess();

  v10 = sub_1AB45A3E8(v9);

  v11 = sub_1AB4590E8(v10);

  if (*(v11 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438190, &qword_1AB4DBCF0);
    v12 = sub_1AB461924();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  *&v22 = v12;
  sub_1AB45A620(v11, 1, &v22);

  v14 = v22;
  MEMORY[0x1EEE9AC00](v13);
  v18[2] = v2;
  v18[3] = a1;
  v15 = sub_1AB459CA0(sub_1AB45DFB8, v18, v14);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D8F0, &qword_1AB4FD060);
  *&v22 = v15;
  sub_1AB014B78(&v22, v21);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v19 = v8;
  sub_1AB01AE18(v21, 0xD000000000000012, 0x80000001AB5100D0, v16);
  return v19;
}

void sub_1AB45AAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v8 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v8[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v8 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      return;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    return;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434958 != -1)
  {
    swift_once();
  }

  v10 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
  if (v10 != 2 && (v10 & 1) != 0)
  {
    v11 = *a4;
    if (*(*a4 + 16) && (v12 = sub_1AB014DB4(0x6775626564, 0xE500000000000000), (v13 & 1) != 0) && (sub_1AB0165C4(*(v11 + 56) + 32 * v12, &v19), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790), (swift_dynamicCast() & 1) != 0))
    {
      v14 = v17;
    }

    else
    {
      v14 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
    }

    sub_1AB014A58(a3, &v17, &unk_1EB437E60, &qword_1AB4D4730);
    if (v18)
    {
      sub_1AB014B78(&v17, &v19);
    }

    else
    {
      v15 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v20 = sub_1AB303A6C();
      *&v19 = v15;
      if (v18)
      {
        sub_1AB014AC0(&v17, &unk_1EB437E60, &qword_1AB4D4730);
      }
    }

    sub_1AB014B78(&v19, &v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1AB01AE18(&v17, a1, a2, isUniquelyReferenced_nonNull_native);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70, &unk_1AB4D6790);
    *&v19 = v14;
    sub_1AB01AD48(&v19, 0x6775626564, 0xE500000000000000);
  }
}

uint64_t sub_1AB45AD4C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = a1;
  v7 = a1[3];
  if (!v7)
  {
    return 0;
  }

  v108 = a2;
  v8 = v6[2];
  v9 = v6[5];
  v115 = v6[4];
  v110 = v6[7];
  v111 = v6;
  v10 = *(a3 + 16);
  v112 = v6[8];

  swift_bridgeObjectRetain_n();
  v116 = v9;

  if (v10 && (v11 = sub_1AB014DB4(v8, v7), (v12 & 1) != 0))
  {
    v13 = *(*(a3 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v117 = v8;
  v118 = v7;
  v14 = *(v13 + 16);
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v15 = 0;
  v16 = v13 + 40;
  v113 = *(v13 + 16);
  v107 = v14 - 1;
  v17 = MEMORY[0x1E69E7CC0];
  do
  {
    v109 = v17;
    v18 = (v16 + 16 * v15);
    v19 = v15;
    while (1)
    {
      if (v19 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_103;
      }

      v20 = *(v18 - 1);
      v114 = *v18;
      swift_beginAccess();
      v21 = v20[2];
      v22 = v20[3];
      v24 = v20[4];
      v23 = v20[5];
      v25 = v20[7];
      v26 = v20[8];
      v27 = v24 == v117 && v118 == v23;
      if (!v27 && (sub_1AB461DA4() & 1) == 0)
      {
        goto LABEL_9;
      }

      v28 = v24 == v115 && v23 == v116;
      if (!v28 && (sub_1AB461DA4() & 1) == 0)
      {
        if (!v22)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      if (!v22)
      {
        goto LABEL_41;
      }

      v29 = v21 == v117 && v22 == v118;
      if (!v29 && (sub_1AB461DA4() & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v26)
      {
        break;
      }

      if (v112)
      {
        goto LABEL_36;
      }

LABEL_9:
      ++v19;
      v18 += 2;
      if (v113 == v19)
      {
        v17 = v109;
        goto LABEL_49;
      }
    }

    if (v112 && (v25 == v110 && v26 == v112 || (sub_1AB461DA4() & 1) != 0))
    {
      goto LABEL_9;
    }

LABEL_36:
    v30 = v24 == v21 && v22 == v23;
    if (v30 || (sub_1AB461DA4() & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_41:

    v17 = v109;
    v127[0] = v109;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AB17787C(0, v109[2] + 1, 1);
      v17 = v127[0];
    }

    v32 = v17[2];
    v31 = v17[3];
    if (v32 >= v31 >> 1)
    {
      sub_1AB17787C((v31 > 1), v32 + 1, 1);
      v17 = v127[0];
    }

    v15 = v19 + 1;
    v17[2] = v32 + 1;
    v33 = &v17[2 * v32];
    v33[4] = v20;
    v33[5] = v114;
    v16 = v13 + 40;
  }

  while (v107 != v19);
LABEL_49:

  v35 = v17 + 2;
  v34 = v17[2];
  if (v34 <= 1)
  {
LABEL_83:
    if (!v34)
    {

      if (qword_1EB435768 != -1)
      {
        goto LABEL_105;
      }

      goto LABEL_87;
    }

    if (!*v35)
    {
      goto LABEL_104;
    }

    v79 = v17[5];
  }

  else
  {
    v36 = 0;
    v37 = v17 + 5;
    v17 = MEMORY[0x1E69E7CC0];
LABEL_51:
    v38 = &v37[2 * v36];
    v39 = v36;
    v40 = v111;
    while (v39 < *v35)
    {
      v41 = *(v38 - 1);
      v42 = *v38;
      v43 = v40[12];
      v44 = *(v41 + 96);
      if (v43)
      {
        if (v44)
        {
          v45 = v40[11] == *(v41 + 88) && v43 == v44;
          if (v45 || (v46 = sub_1AB461DA4(), v40 = v111, (v46 & 1) != 0))
          {
LABEL_62:

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v127[0] = v17;
            v48 = v17;
            v49 = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1AB17787C(0, v48[2] + 1, 1);
              v48 = v127[0];
            }

            v51 = v48[2];
            v50 = v48[3];
            if (v51 >= v50 >> 1)
            {
              sub_1AB17787C((v50 > 1), v51 + 1, 1);
              v48 = v127[0];
            }

            v36 = v39 + 1;
            v48[2] = v51 + 1;
            v52 = &v48[2 * v51];
            v52[4] = v41;
            v52[5] = v42;
            v37 = v49;
            v17 = v48;
            if (v34 - 1 == v39)
            {
LABEL_67:

              v35 = v17 + 2;
              v34 = v17[2];
              if (v34 >= 2)
              {
                if (qword_1EB435768 != -1)
                {
                  swift_once();
                }

                sub_1AB4622E4();
                v54 = v128;
                v53 = v129;
                __swift_project_boxed_opaque_existential_1Tm(v127, v128);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
                v55 = swift_allocObject();
                *(v55 + 16) = xmmword_1AB4D4720;
                v126 = sub_1AB0168A8(0, 70, 0, MEMORY[0x1E69E7CC0]);
                v56._object = 0x80000001AB510090;
                v56._countAndFlagsBits = 0xD000000000000031;
                LogMessage.StringInterpolation.appendLiteral(_:)(v56);
                v125 = MEMORY[0x1E69E6530];
                v123 = v108;
                sub_1AB014A58(&v123, v119, &unk_1EB437E60, &qword_1AB4D4730);
                v120 = 0u;
                v121 = 0u;
                sub_1AB0169C4(v119, &v120);
                v122 = 0;
                v57 = v126;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v57 = sub_1AB0168A8(0, *(v57 + 2) + 1, 1, v57);
                }

                v59 = *(v57 + 2);
                v58 = *(v57 + 3);
                if (v59 >= v58 >> 1)
                {
                  v57 = sub_1AB0168A8((v58 > 1), v59 + 1, 1, v57);
                }

                *(v57 + 2) = v59 + 1;
                v60 = &v57[40 * v59];
                v61 = v120;
                v62 = v121;
                v60[64] = v122;
                *(v60 + 2) = v61;
                *(v60 + 3) = v62;
                v126 = v57;
                sub_1AB014AC0(&v123, &unk_1EB437E60, &qword_1AB4D4730);
                v63._countAndFlagsBits = 0x203A6469202CLL;
                v63._object = 0xE600000000000000;
                LogMessage.StringInterpolation.appendLiteral(_:)(v63);
                v64 = MEMORY[0x1E69E6158];
                v125 = MEMORY[0x1E69E6158];
                v123 = v115;
                v124 = v116;
                sub_1AB014A58(&v123, v119, &unk_1EB437E60, &qword_1AB4D4730);
                v120 = 0u;
                v121 = 0u;

                sub_1AB0169C4(v119, &v120);
                v122 = 0;
                v65 = v126;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v65 = sub_1AB0168A8(0, *(v65 + 2) + 1, 1, v65);
                  v126 = v65;
                }

                v67 = *(v65 + 2);
                v66 = *(v65 + 3);
                if (v67 >= v66 >> 1)
                {
                  v65 = sub_1AB0168A8((v66 > 1), v67 + 1, 1, v65);
                }

                *(v65 + 2) = v67 + 1;
                v68 = &v65[40 * v67];
                v69 = v120;
                v70 = v121;
                v68[64] = v122;
                *(v68 + 2) = v69;
                *(v68 + 3) = v70;
                v126 = v65;
                sub_1AB014AC0(&v123, &unk_1EB437E60, &qword_1AB4D4730);
                v71._countAndFlagsBits = 0x746E65726170202CLL;
                v71._object = 0xEC000000203A6449;
                LogMessage.StringInterpolation.appendLiteral(_:)(v71);
                v125 = v64;
                v123 = v117;
                v124 = v118;
                sub_1AB014A58(&v123, v119, &unk_1EB437E60, &qword_1AB4D4730);
                v120 = 0u;
                v121 = 0u;

                sub_1AB0169C4(v119, &v120);
                v122 = 0;
                v72 = v126;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v72 = sub_1AB0168A8(0, *(v72 + 2) + 1, 1, v72);
                  v126 = v72;
                }

                v74 = *(v72 + 2);
                v73 = *(v72 + 3);
                if (v74 >= v73 >> 1)
                {
                  v72 = sub_1AB0168A8((v73 > 1), v74 + 1, 1, v72);
                }

                *(v72 + 2) = v74 + 1;
                v75 = &v72[40 * v74];
                v76 = v120;
                v77 = v121;
                v75[64] = v122;
                *(v75 + 2) = v76;
                *(v75 + 3) = v77;
                v126 = v72;
                sub_1AB014AC0(&v123, &unk_1EB437E60, &qword_1AB4D4730);
                v78._countAndFlagsBits = 0;
                v78._object = 0xE000000000000000;
                LogMessage.StringInterpolation.appendLiteral(_:)(v78);
                *(v55 + 32) = v126;
                Logger.error(_:)(v55, v54, v53);

                __swift_destroy_boxed_opaque_existential_1Tm(v127);
                v34 = *v35;
              }

              goto LABEL_83;
            }

            goto LABEL_51;
          }
        }
      }

      else if (!v44)
      {
        goto LABEL_62;
      }

      ++v39;
      v38 += 2;
      if (v34 == v39)
      {
        goto LABEL_67;
      }
    }

LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    swift_once();
LABEL_87:
    sub_1AB4622E4();
    v81 = v128;
    v80 = v129;
    __swift_project_boxed_opaque_existential_1Tm(v127, v128);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1AB4D4720;
    v126 = sub_1AB0168A8(0, 74, 0, MEMORY[0x1E69E7CC0]);
    v83._countAndFlagsBits = 0xD000000000000035;
    v83._object = 0x80000001AB510050;
    LogMessage.StringInterpolation.appendLiteral(_:)(v83);
    v125 = MEMORY[0x1E69E6530];
    v123 = v108;
    sub_1AB014A58(&v123, v119, &unk_1EB437E60, &qword_1AB4D4730);
    v120 = 0u;
    v121 = 0u;
    sub_1AB0169C4(v119, &v120);
    v122 = 0;
    v84 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_1AB0168A8(0, *(v84 + 2) + 1, 1, v84);
    }

    v86 = *(v84 + 2);
    v85 = *(v84 + 3);
    if (v86 >= v85 >> 1)
    {
      v84 = sub_1AB0168A8((v85 > 1), v86 + 1, 1, v84);
    }

    *(v84 + 2) = v86 + 1;
    v87 = &v84[40 * v86];
    v88 = v120;
    v89 = v121;
    v87[64] = v122;
    *(v87 + 2) = v88;
    *(v87 + 3) = v89;
    v126 = v84;
    sub_1AB014AC0(&v123, &unk_1EB437E60, &qword_1AB4D4730);
    v90._countAndFlagsBits = 0x203A6469202CLL;
    v90._object = 0xE600000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v90);
    v91 = MEMORY[0x1E69E6158];
    v125 = MEMORY[0x1E69E6158];
    v123 = v115;
    v124 = v116;
    sub_1AB014A58(&v123, v119, &unk_1EB437E60, &qword_1AB4D4730);
    v120 = 0u;
    v121 = 0u;

    sub_1AB0169C4(v119, &v120);
    v122 = 0;
    v92 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v92 = sub_1AB0168A8(0, *(v92 + 2) + 1, 1, v92);
      v126 = v92;
    }

    v94 = *(v92 + 2);
    v93 = *(v92 + 3);
    if (v94 >= v93 >> 1)
    {
      v92 = sub_1AB0168A8((v93 > 1), v94 + 1, 1, v92);
    }

    *(v92 + 2) = v94 + 1;
    v95 = &v92[40 * v94];
    v96 = v120;
    v97 = v121;
    v95[64] = v122;
    *(v95 + 2) = v96;
    *(v95 + 3) = v97;
    v126 = v92;
    sub_1AB014AC0(&v123, &unk_1EB437E60, &qword_1AB4D4730);
    v98._countAndFlagsBits = 0x746E65726170202CLL;
    v98._object = 0xEC000000203A6449;
    LogMessage.StringInterpolation.appendLiteral(_:)(v98);
    v125 = v91;

    v123 = v117;
    v124 = v118;
    sub_1AB014A58(&v123, v119, &unk_1EB437E60, &qword_1AB4D4730);
    v120 = 0u;
    v121 = 0u;
    sub_1AB0169C4(v119, &v120);
    v122 = 0;
    v99 = v126;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = sub_1AB0168A8(0, *(v99 + 2) + 1, 1, v99);
      v126 = v99;
    }

    v101 = *(v99 + 2);
    v100 = *(v99 + 3);
    if (v101 >= v100 >> 1)
    {
      v99 = sub_1AB0168A8((v100 > 1), v101 + 1, 1, v99);
    }

    *(v99 + 2) = v101 + 1;
    v102 = &v99[40 * v101];
    v103 = v120;
    v104 = v121;
    v102[64] = v122;
    *(v102 + 2) = v103;
    *(v102 + 3) = v104;
    v126 = v99;
    sub_1AB014AC0(&v123, &unk_1EB437E60, &qword_1AB4D4730);
    v105._countAndFlagsBits = 0;
    v105._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v105);
    *(v82 + 32) = v126;
    Logger.error(_:)(v82, v81, v80);

    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    return 0;
  }

  return v79;
}

uint64_t sub_1AB45B9C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (!a1[3])
  {
    v6 = a1[16];
    if (v6)
    {
      if (*(a3 + 16))
      {
        v7 = a1[15];

        v8 = sub_1AB014DB4(v7, v6);
        v10 = v9;

        if (v10)
        {
          return *(*(a3 + 56) + 16 * v8 + 8);
        }
      }

      if (qword_1EB435768 != -1)
      {
        swift_once();
      }

      sub_1AB4622E4();
      v12 = v40;
      v13 = v41;
      __swift_project_boxed_opaque_existential_1Tm(v39, v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10, &unk_1AB4D4860);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1AB4D4720;
      v38 = sub_1AB0168A8(0, 61, 0, MEMORY[0x1E69E7CC0]);
      v15._object = 0x80000001AB510050;
      v15._countAndFlagsBits = 0xD000000000000035;
      LogMessage.StringInterpolation.appendLiteral(_:)(v15);
      v37 = MEMORY[0x1E69E6530];
      v36[0] = a2;
      sub_1AB014A58(v36, v32, &unk_1EB437E60, &qword_1AB4D4730);
      v33 = 0u;
      v34 = 0u;
      sub_1AB0169C4(v32, &v33);
      v35 = 0;
      v16 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
      }

      v18 = *(v16 + 2);
      v17 = *(v16 + 3);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
      }

      *(v16 + 2) = v18 + 1;
      v19 = &v16[40 * v18];
      v20 = v33;
      v21 = v34;
      v19[64] = v35;
      *(v19 + 2) = v20;
      *(v19 + 3) = v21;
      v38 = v16;
      sub_1AB014AC0(v36, &unk_1EB437E60, &qword_1AB4D4730);
      v22._countAndFlagsBits = 0x203A6469202CLL;
      v22._object = 0xE600000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v22);
      v23 = a1[4];
      v24 = a1[5];
      v37 = MEMORY[0x1E69E6158];
      v36[0] = v23;
      v36[1] = v24;
      sub_1AB014A58(v36, v32, &unk_1EB437E60, &qword_1AB4D4730);
      v33 = 0u;
      v34 = 0u;

      sub_1AB0169C4(v32, &v33);
      v35 = 0;
      v25 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1AB0168A8(0, *(v25 + 2) + 1, 1, v25);
        v38 = v25;
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      if (v27 >= v26 >> 1)
      {
        v25 = sub_1AB0168A8((v26 > 1), v27 + 1, 1, v25);
      }

      *(v25 + 2) = v27 + 1;
      v28 = &v25[40 * v27];
      v29 = v33;
      v30 = v34;
      v28[64] = v35;
      *(v28 + 2) = v29;
      *(v28 + 3) = v30;
      v38 = v25;
      sub_1AB014AC0(v36, &unk_1EB437E60, &qword_1AB4D4730);
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v31);
      *(v14 + 32) = v38;
      Logger.error(_:)(v14, v12, v13);

      __swift_destroy_boxed_opaque_existential_1Tm(v39);
    }
  }

  return 0;
}

void sub_1AB45BD64(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, char a7, double a8)
{
  *&v49 = a1;
  *(&v49 + 1) = a2;
  v9 = *a4;
  v12 = sub_1AB0CF520(a3, a6);
  v50 = v12[2];
  if (v50)
  {
    v45 = v10;
    v47 = v11;

    v13 = 0;
    v14 = v12 + 5;
    v15 = MEMORY[0x1E69E7CC0];
    v48 = v12;
    while (1)
    {
      if (v13 >= v12[2])
      {
        __break(1u);
        return;
      }

      v17 = *(v14 - 1);
      v16 = *v14;

      if (v9)
      {
        if (v9 == 1)
        {
          sub_1AB4598A4(a5, a8);
          v19 = v18;
          if (v18)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v19 = sub_1AB45A888(a5);
          if (v19)
          {
LABEL_13:
            *&v52[0] = v19;
            v20 = qword_1EB4359F8;

            if (v20 != -1)
            {
              swift_once();
            }

            v21 = off_1EB435A00;
            os_unfair_lock_lock(off_1EB435A00 + 5);
            os_unfair_lock_opaque_low = LOBYTE(v21[4]._os_unfair_lock_opaque);
            os_unfair_lock_unlock(v21 + 5);
            if (os_unfair_lock_opaque_low == 2)
            {
              if ((os_variant_has_internal_content() & 1) == 0)
              {
                goto LABEL_17;
              }

LABEL_19:
              if (qword_1ED4D1D40 != -1)
              {
                swift_once();
              }

              if (qword_1EB434958 != -1)
              {
                swift_once();
              }

              v23 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);

              if (v23 != 2 && (v23 & 1) != 0)
              {
                swift_beginAccess();
                v24 = *(v17 + 24);
                if (v24)
                {
                  v25 = *(v17 + 16);
                  *(&v54 + 1) = MEMORY[0x1E69E6158];
                  *&v53 = v25;
                  *(&v53 + 1) = v24;
                }

                else
                {
                  v53 = 0u;
                  v54 = 0u;
                }

                sub_1AB45AAA8(0x6449746E65726170, 0xE800000000000000, &v53, v52);
                sub_1AB014AC0(&v53, &unk_1EB437E60, &qword_1AB4D4730);
                v26 = *(v17 + 48);
                if (v26 == -1)
                {
                  v53 = 0u;
                  v54 = 0u;
                }

                else
                {
                  *(&v54 + 1) = MEMORY[0x1E69E6530];
                  *&v53 = v26;
                }

                sub_1AB45AAA8(0xD000000000000015, 0x80000001AB510030, &v53, v52);
                sub_1AB014AC0(&v53, &unk_1EB437E60, &qword_1AB4D4730);
                v19 = *&v52[0];
              }
            }

            else
            {
              if (os_unfair_lock_opaque_low)
              {
                goto LABEL_19;
              }

LABEL_17:
            }

            *(&v54 + 1) = MEMORY[0x1E69E6158];
            v53 = v49;
            sub_1AB014B78(&v53, v52);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v55 = v19;
            sub_1AB01AE18(v52, 0xD000000000000012, 0x80000001AB5100F0, isUniquelyReferenced_nonNull_native);
            v28 = v55;
            *(&v54 + 1) = MEMORY[0x1E69E6530];
            *&v53 = v16;
            sub_1AB014B78(&v53, v52);
            v29 = swift_isUniquelyReferenced_nonNull_native();
            sub_1AB01AE18(v52, 0x6973736572706D69, 0xEC00000064496E6FLL, v29);
            v30 = v28;
            v55 = v28;
            if ((*(v17 + 144) & 1) == 0)
            {
              v31 = *(v17 + 136);
              os_unfair_lock_lock(v21 + 5);
              v32 = LOBYTE(v21[4]._os_unfair_lock_opaque);
              os_unfair_lock_unlock(v21 + 5);
              if (v32 == 2)
              {
                if ((os_variant_has_internal_content() & 1) == 0)
                {
                  goto LABEL_44;
                }
              }

              else if ((v32 & 1) == 0)
              {
                goto LABEL_44;
              }

              if (qword_1ED4D1D40 != -1)
              {
                swift_once();
              }

              if (qword_1EB434958 != -1)
              {
                swift_once();
              }

              v33 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
              if (v33 != 2 && (v33 & 1) != 0)
              {
                *(&v54 + 1) = MEMORY[0x1E69E6530];
                *&v53 = v31;
                sub_1AB45AAA8(0xD000000000000015, 0x80000001AB510110, &v53, &v55);
                sub_1AB014AC0(&v53, &unk_1EB437E60, &qword_1AB4D4730);
                v30 = v55;
              }

LABEL_44:
              if (*(v30 + 16) && (v34 = sub_1AB014DB4(0x6973736572706D69, 0xEF7865646E496E6FLL), (v35 & 1) != 0))
              {
                sub_1AB0165C4(*(v30 + 56) + 32 * v34, &v53);
                sub_1AB014AC0(&v53, &unk_1EB437E60, &qword_1AB4D4730);
              }

              else
              {
                v53 = 0u;
                v54 = 0u;
                sub_1AB014AC0(&v53, &unk_1EB437E60, &qword_1AB4D4730);
                swift_beginAccess();
                if (*(v17 + 48) == -1 && (*(v17 + 144) & 1) == 0)
                {
                  v36 = *(v17 + 136);
                  *(&v54 + 1) = MEMORY[0x1E69E6530];
                  *&v53 = v36;
                  sub_1AB014B78(&v53, v52);
                  v37 = swift_isUniquelyReferenced_nonNull_native();
                  sub_1AB01AE18(v52, 0x6973736572706D69, 0xEF7865646E496E6FLL, v37);
                  v55 = v30;
                }
              }
            }

            swift_beginAccess();
            if (*(v17 + 24))
            {
              v38 = sub_1AB45AD4C(v17, v16, v47);
              if ((v39 & 1) == 0)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v38 = sub_1AB45B9C4(v17, v16, v45);
              if ((v44 & 1) == 0)
              {
LABEL_52:
                *(&v54 + 1) = MEMORY[0x1E69E6530];
                *&v53 = v38;
                sub_1AB014B78(&v53, v52);
                v40 = v55;
                v41 = swift_isUniquelyReferenced_nonNull_native();
                sub_1AB01AE18(v52, 0xD000000000000012, 0x80000001AB510010, v41);
                v30 = v40;
              }
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1AB2AFF70(0, v15[2] + 1, 1, v15);
            }

            v43 = v15[2];
            v42 = v15[3];
            if (v43 >= v42 >> 1)
            {
              v15 = sub_1AB2AFF70((v42 > 1), v43 + 1, 1, v15);
            }

            v15[2] = v43 + 1;
            v15[v43 + 4] = v30;

            v12 = v48;
            goto LABEL_4;
          }
        }
      }

      else
      {
        v19 = sub_1AB459380(a5, a7 & 1, a8);
        if (v19)
        {
          goto LABEL_13;
        }
      }

LABEL_4:
      ++v13;
      v14 += 2;
      if (v50 == v13)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_62;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_62:
  sub_1AB0CED94(v15);
}

uint64_t sub_1AB45C518(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AB45C560(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB45C5C0(unint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, char a6, double a7)
{
  v187 = *a4;
  v202 = sub_1AB0CF520(a1, MEMORY[0x1E69E7CC0]);
  v184 = v9;
  v185 = v10;
  if (a2 >> 62)
  {
    goto LABEL_208;
  }

  v194 = a2 & 0xFFFFFFFFFFFFFF8;
  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_209;
  }

  while (2)
  {
    v182 = a2;
    v191 = a2 + 32;
    v192 = a2 & 0xC000000000000001;
    a2 = 0;
    v188 = MEMORY[0x1E69E7CC0];
    v190 = v11;
LABEL_4:
    if (v192)
    {
      v12 = MEMORY[0x1AC59C990](a2, v182);
      v13 = __OFADD__(a2++, 1);
      if (v13)
      {
        goto LABEL_203;
      }
    }

    else
    {
      if (a2 >= *(v194 + 16))
      {
        goto LABEL_204;
      }

      v12 = *(v191 + 8 * a2);

      v13 = __OFADD__(a2++, 1);
      if (v13)
      {
        goto LABEL_203;
      }
    }

    v195 = a2;
    a2 = v12[13];

    os_unfair_lock_lock((a2 + 20));
    v14 = *(a2 + 16);
    os_unfair_lock_unlock((a2 + 20));

    v203 = v12;
    if (v14 || (v200 = v202[2]) == 0)
    {
LABEL_8:
      if (a6)
      {

        goto LABEL_10;
      }

      v50 = v12 + 13;
      v51 = MEMORY[0x1E69E7CC8];
      goto LABEL_52;
    }

    v15 = 0;
    v16 = v202 + 5;
    while (1)
    {
      if (v15 >= v202[2])
      {
        __break(1u);
        goto LABEL_202;
      }

      v26 = *(v16 - 1);
      v25 = *v16;
      swift_beginAccess();
      v27 = v26[3];
      a2 = v26[5];
      v215 = v26[2];
      v217 = v26[4];
      v28 = v26[6];
      v18 = v26[7];
      v219 = v26[8];
      v29 = v12[6];
      if (!v29)
      {
        if (!a2)
        {

          goto LABEL_114;
        }

        v22 = v215;
        v21 = v217;
        sub_1AB1B0308(v215, v27, v217, a2, v28, v18, v219);

        v24 = 0;
        v17 = 0;
        v19 = 0;
        v20 = 0;
        v33 = 0;
        v23 = 0;
        goto LABEL_15;
      }

      v198 = v25;
      v211 = v26[7];
      v30 = v12[9];
      v209 = v12[8];
      v204 = v12[7];
      v31 = v12;
      v32 = v12[5];
      v33 = v31[4];
      v213 = v31[3];

      v207 = v30;

      if (a2)
      {
        break;
      }

      v17 = v209;
      v18 = v211;
      v19 = v204;
      v20 = v32;
      v22 = v215;
      v21 = v217;
      v23 = v213;
      v24 = v207;
LABEL_15:
      *&v224 = v22;
      *(&v224 + 1) = v27;
      *&v225[0] = v21;
      *(&v225[0] + 1) = a2;
      *&v225[1] = v28;
      *(&v225[1] + 1) = v18;
      *&v226 = v219;
      *(&v226 + 1) = v23;
      v227 = v33;
      v228 = v20;
      v229 = v29;
      v230 = v19;
      v231 = v17;
      v232 = v24;
      sub_1AB014AC0(&v224, &qword_1EB43D8E0, &qword_1AB4FD050);
      v12 = v203;
LABEL_16:
      ++v15;
      v16 += 2;
      if (v200 == v15)
      {
        goto LABEL_8;
      }
    }

    v34 = v217 == v32 && v29 == a2;
    if (!v34 && (sub_1AB461DA4() & 1) == 0)
    {

      v196 = v32;
      v40 = v215;
      v35 = v211;
      sub_1AB1B0308(v215, v27, v217, a2, v28, v211, v219);
      v39 = v213;
      v36 = v33;
      v37 = v217;
      v38 = v196;
LABEL_42:
      sub_1AB1B02B8(v39, v36, v38, v29, v204, v209, v207);
      goto LABEL_48;
    }

    if (!v27)
    {
      if (!v33)
      {
        goto LABEL_35;
      }

      v35 = v211;
      sub_1AB1B0308(v215, 0, v217, a2, v28, v211, v219);
      v41 = v33;
      v37 = v217;
      v42 = v32;
      v40 = v215;
      sub_1AB1B02B8(v213, v41, v42, v29, v204, v209, v207);
      goto LABEL_48;
    }

    if (!v33)
    {

      v37 = v217;
      v35 = v211;
      sub_1AB1B0308(v215, v27, v217, a2, v28, v211, v219);
      v43 = v213;
      v44 = 0;
      v45 = v32;
      v46 = v29;
      v47 = v204;
      v49 = v207;
      v48 = v209;
      goto LABEL_47;
    }

    if ((v215 != v213 || v27 != v33) && (sub_1AB461DA4() & 1) == 0)
    {

      v35 = v211;
      sub_1AB1B0308(v215, v27, v217, a2, v28, v211, v219);
      v36 = v33;
      v37 = v217;
      v38 = v32;
      v39 = v213;
      v40 = v215;
      goto LABEL_42;
    }

LABEL_35:
    if (v219)
    {
      if (v30)
      {
        if (v211 == v209 && v219 == v30)
        {

          v18 = v211;
          sub_1AB1B0308(v215, v27, v217, a2, v28, v211, v219);
          sub_1AB1B02B8(v213, v33, v32, v29, v204, v211, v219);
          goto LABEL_113;
        }

        v189 = sub_1AB461DA4();

        sub_1AB1B0308(v215, v27, v217, a2, v28, v211, v219);
        sub_1AB1B02B8(v213, v33, v32, v29, v204, v209, v30);

        sub_1AB1B02B8(v215, v27, v217, a2, v28, v211, v219);
        v12 = v203;
        if (v189)
        {
          v25 = v198;
          v98 = v187;
          if (!v187)
          {
            goto LABEL_106;
          }

LABEL_115:
          v99 = v25;
          if (v98 == 1)
          {
            sub_1AB4598A4(a5, a7);
            if (!v100)
            {
              goto LABEL_117;
            }
          }

          else
          {
            v100 = sub_1AB45A888(a5);
            if (!v100)
            {
              goto LABEL_117;
            }
          }

          goto LABEL_107;
        }

        goto LABEL_49;
      }

      v35 = v211;
      sub_1AB1B0308(v215, v27, v217, a2, v28, v211, v219);
      v43 = v213;
      v44 = v33;
      v37 = v217;
      v45 = v32;
      v46 = v29;
      v47 = v204;
      v48 = v209;
      v49 = 0;
LABEL_47:
      sub_1AB1B02B8(v43, v44, v45, v46, v47, v48, v49);
      v40 = v215;
LABEL_48:

      sub_1AB1B02B8(v40, v27, v37, a2, v28, v35, v219);
      v12 = v203;
LABEL_49:

      goto LABEL_16;
    }

    sub_1AB1B0308(v215, v27, v217, a2, v28, v211, 0);
    if (v30)
    {
      sub_1AB1B02B8(v213, v33, v32, v29, v204, v209, v30);
      v35 = v211;
      v40 = v215;
      v37 = v217;
      goto LABEL_48;
    }

    sub_1AB1B02B8(v213, v33, v32, v29, v204, v209, 0);
    v18 = v211;
LABEL_113:

    v12 = v203;
    v25 = v198;
LABEL_114:
    sub_1AB1B02B8(v215, v27, v217, a2, v28, v18, v219);
    v98 = v187;
    if (v187)
    {
      goto LABEL_115;
    }

LABEL_106:
    v99 = v25;
    v100 = sub_1AB459380(a5, 0, a7);
    if (!v100)
    {
LABEL_117:

      goto LABEL_8;
    }

LABEL_107:
    *&v233 = v100;
    v101 = qword_1EB4359F8;
    v102 = v100;

    if (v101 != -1)
    {
      swift_once();
    }

    v103 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v103[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v103 + 5);
    if (os_unfair_lock_opaque_low == 2)
    {
      if ((os_variant_has_internal_content() & 1) == 0)
      {
        goto LABEL_111;
      }

LABEL_122:
      if (qword_1ED4D1D40 != -1)
      {
        swift_once();
      }

      if (qword_1EB434958 != -1)
      {
        swift_once();
      }

      v113 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);

      if (v113 == 2 || (v113 & 1) == 0)
      {
        v105 = v99;
      }

      else
      {
        v114 = v26[3];
        if (v114)
        {
          v115 = v26[2];
          *(&v225[0] + 1) = MEMORY[0x1E69E6158];
          *&v224 = v115;
          *(&v224 + 1) = v114;
        }

        else
        {
          v224 = 0u;
          v225[0] = 0u;
        }

        sub_1AB45AAA8(0x6449746E65726170, 0xE800000000000000, &v224, &v233);
        sub_1AB014AC0(&v224, &unk_1EB437E60, &qword_1AB4D4730);
        v174 = v26[6];
        v105 = v99;
        if (v174 == -1)
        {
          v224 = 0u;
          v225[0] = 0u;
        }

        else
        {
          *(&v225[0] + 1) = MEMORY[0x1E69E6530];
          *&v224 = v174;
        }

        sub_1AB45AAA8(0xD000000000000015, 0x80000001AB510030, &v224, &v233);
        sub_1AB014AC0(&v224, &unk_1EB437E60, &qword_1AB4D4730);
        v102 = v233;
      }
    }

    else
    {
      if (os_unfair_lock_opaque_low)
      {
        goto LABEL_122;
      }

LABEL_111:

      v105 = v99;
    }

    v50 = v12 + 13;
    *(&v225[0] + 1) = MEMORY[0x1E69E6530];
    *&v224 = v105;
    sub_1AB014B78(&v224, &v233);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v222 = v102;
    sub_1AB01AE18(&v233, 0x6973736572706D69, 0xEC00000064496E6FLL, isUniquelyReferenced_nonNull_native);
    v51 = v222;
    if (v26[3])
    {
      v176 = sub_1AB45AD4C(v26, v105, v185);
      if (v177)
      {
        goto LABEL_198;
      }

LABEL_200:
      *(&v225[0] + 1) = MEMORY[0x1E69E6530];
      *&v224 = v176;
      sub_1AB014B78(&v224, &v233);
      v179 = swift_isUniquelyReferenced_nonNull_native();
      *&v222 = v51;
      sub_1AB01AE18(&v233, 0xD000000000000012, 0x80000001AB510010, v179);

      v51 = v222;
    }

    else
    {
      v176 = sub_1AB45B9C4(v26, v105, v184);
      if ((v178 & 1) == 0)
      {
        goto LABEL_200;
      }

LABEL_198:
    }

LABEL_52:
    v52 = *v50;

    os_unfair_lock_lock((v52 + 20));
    v53 = *(v52 + 16);
    os_unfair_lock_unlock((v52 + 20));

    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v54 = 0xE600000000000000;
        v55 = 0x6574656C6564;
      }

      else
      {
        v55 = 0;
        v54 = 0xE000000000000000;
      }
    }

    else if (v53)
    {
      v54 = 0xE400000000000000;
      v55 = 1702260589;
    }

    else
    {
      v54 = 0xE600000000000000;
      v55 = 0x747265736E69;
    }

    v237 = MEMORY[0x1E69E6158];
    *&v236 = v55;
    *(&v236 + 1) = v54;
    sub_1AB014B78(&v236, &v224);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    *&v233 = v51;
    sub_1AB01AE18(&v224, 0x795465676E616863, 0xEA00000000006570, v56);
    v57 = v233;
    v58 = v12[2];
    *(&v225[0] + 1) = MEMORY[0x1E69E63B0];
    *&v224 = v58;
    sub_1AB014B78(&v224, &v233);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v222 = v57;
    sub_1AB01AE18(&v233, 0x695465676E616863, 0xEA0000000000656DLL, v59);
    v60 = 0;
    v201 = v222;
    if (v12[6])
    {
      v61 = 0;
      if (v12[4])
      {
        v60 = v12[3];
      }
    }

    else
    {
      v61 = 0;
    }

    if (!*(a3 + 16))
    {
      goto LABEL_144;
    }

    v62 = sub_1AB07926C(v60, v61);
    v64 = v63;

    if ((v64 & 1) == 0)
    {
      goto LABEL_145;
    }

    v208 = *(*(*(a3 + 56) + 8 * v62) + 16);
    if (!v208)
    {
      goto LABEL_145;
    }

    v66 = 1;
    v206 = v65;
    while (2)
    {
      v212 = v66;
      v67 = *(v65 + 32);
      v68 = *(v65 + 48);
      v69 = *(v65 + 80);
      v234[1] = *(v65 + 64);
      v235 = v69;
      v233 = v67;
      v234[0] = v68;
      v70 = v12[6];
      if (v70)
      {
        v71 = v12[8];
        v210 = v12[7];
        v72 = v12[4];
        v220 = v12[5];
        v214 = v12[3];
        v216 = v12[9];

        v218 = v72;
      }

      else
      {
        v214 = 0;
        v216 = 0;
        v218 = 0;
        v220 = 0;
        v210 = 0;
        v71 = 0;
      }

      v73 = *(&v233 + 1);
      v74 = *(&v234[0] + 1);
      a2 = *&v234[0];
      v75 = v234[1];
      v77 = *(&v235 + 1);
      v76 = v235;
      if (!*&v234[1])
      {
        if (!v70)
        {
          sub_1AB45DF50(&v233, &v224);
          v106 = v73;
          v107 = a2;
          v108 = v74;
          v109 = 0;
          v110 = *(&v75 + 1);
          v111 = v76;
          v112 = v77;
          goto LABEL_137;
        }

        sub_1AB45DF50(&v233, &v224);
        goto LABEL_83;
      }

      if (!v70)
      {
        sub_1AB45DF50(&v233, &v224);
        sub_1AB1B0308(v73, a2, v74, v75, *(&v75 + 1), v76, v77);

LABEL_83:
        *&v224 = v73;
        *(&v224 + 1) = a2;
        *&v225[0] = v74;
        *(v225 + 8) = v75;
        *(&v225[1] + 1) = v76;
        *&v226 = v77;
        *(&v226 + 1) = v214;
        v227 = v218;
        v228 = v220;
        v229 = v70;
        v230 = v210;
        v231 = v71;
        v232 = v216;
        sub_1AB014AC0(&v224, &qword_1EB43D8E0, &qword_1AB4FD050);
        goto LABEL_100;
      }

      v205 = *(&v234[0] + 1);
      if (__PAIR128__(v70, v220) != *(v234 + 8) && (sub_1AB461DA4() & 1) == 0)
      {
        sub_1AB45DF50(&v233, &v224);
        v78 = a2;
        v96 = a2;
        a2 = v205;
        sub_1AB1B0308(v73, v96, v205, v75, *(&v75 + 1), v76, v77);
        v88 = v214;
        v90 = v218;
LABEL_94:
        v91 = v220;
        v92 = v70;
        v93 = v210;
        v94 = v71;
        v89 = v216;
        goto LABEL_99;
      }

      v78 = a2;
      if (!a2)
      {
        v199 = v71;
        v80 = v216;
        v79 = v218;
        if (!v218)
        {
          goto LABEL_86;
        }

        sub_1AB45DF50(&v233, &v224);
        a2 = v205;
        sub_1AB1B0308(v73, 0, v205, v75, *(&v75 + 1), v76, v77);
        v88 = v214;
        v89 = v216;
        v90 = v218;
        v91 = v220;
        v92 = v70;
        v93 = v210;
        v94 = v199;
        goto LABEL_99;
      }

      v79 = v218;
      if (!v218)
      {
        sub_1AB45DF50(&v233, &v224);
        a2 = v205;
        sub_1AB1B0308(v73, v78, v205, v75, *(&v75 + 1), v76, v77);
        v88 = v214;
        v90 = 0;
        goto LABEL_94;
      }

      v199 = v71;
      v80 = v216;
      if (v73 != v214 || v78 != v218)
      {
        v79 = v218;
        if ((sub_1AB461DA4() & 1) == 0)
        {
          sub_1AB45DF50(&v233, &v224);
          v81 = v73;
          v82 = v78;
          a2 = v205;
          v83 = v205;
          v85 = *(&v75 + 1);
          v84 = v75;
          v86 = v76;
          v87 = v77;
          goto LABEL_97;
        }
      }

LABEL_86:
      if (v77)
      {
        if (v80)
        {
          if (v76 == v199 && v77 == v80)
          {
            sub_1AB45DF50(&v233, &v224);
            v116 = v205;
            sub_1AB1B0308(v73, v78, v205, v75, *(&v75 + 1), v199, v80);
            v117 = v199;
            v76 = v199;
            goto LABEL_136;
          }

          v197 = sub_1AB461DA4();
          sub_1AB45DF50(&v233, &v224);
          a2 = v78;
          sub_1AB1B0308(v73, v78, v205, v75, *(&v75 + 1), v76, v77);
          sub_1AB1B02B8(v214, v218, v220, v70, v210, v199, v80);

          sub_1AB1B02B8(v73, v78, v205, v75, *(&v75 + 1), v76, v77);
          v12 = v203;
          v95 = v206;
          if (v197)
          {
            goto LABEL_138;
          }

          goto LABEL_101;
        }

        v97 = v79;
        sub_1AB45DF50(&v233, &v224);
        a2 = v205;
        sub_1AB1B0308(v73, v78, v205, v75, *(&v75 + 1), v76, v77);
        v88 = v214;
        v90 = v97;
        v91 = v220;
        v92 = v70;
        v93 = v210;
        v94 = v199;
        v89 = 0;
LABEL_99:
        sub_1AB1B02B8(v88, v90, v91, v92, v93, v94, v89);

        sub_1AB1B02B8(v73, v78, a2, v75, *(&v75 + 1), v76, v77);
LABEL_100:
        v12 = v203;
        v95 = v206;
LABEL_101:
        if (v208 == v212)
        {
          goto LABEL_144;
        }

        v66 = v212 + 1;
        v65 += 64;
        if (v212 >= *(v95 + 16))
        {
          goto LABEL_207;
        }

        continue;
      }

      break;
    }

    if (v80)
    {
      sub_1AB45DF50(&v233, &v224);
      v81 = v73;
      v82 = v78;
      a2 = v205;
      v83 = v205;
      v85 = *(&v75 + 1);
      v84 = v75;
      v86 = v76;
      v87 = 0;
LABEL_97:
      sub_1AB1B0308(v81, v82, v83, v84, v85, v86, v87);
      v88 = v214;
      v90 = v218;
      v91 = v220;
      v92 = v70;
      v93 = v210;
      v94 = v199;
      v89 = v80;
      goto LABEL_99;
    }

    sub_1AB45DF50(&v233, &v224);
    v116 = v205;
    sub_1AB1B0308(v73, v78, v205, v75, *(&v75 + 1), v76, 0);
    v117 = v199;
LABEL_136:
    sub_1AB1B02B8(v214, v218, v220, v70, v210, v117, v80);

    v106 = v73;
    v107 = v78;
    v108 = v116;
    v110 = *(&v75 + 1);
    v109 = v75;
    v111 = v76;
    v112 = v80;
LABEL_137:
    sub_1AB1B02B8(v106, v107, v108, v109, v110, v111, v112);
    v12 = v203;
    v95 = v206;
LABEL_138:
    v118 = *v50;

    os_unfair_lock_lock((v118 + 20));
    v119 = *(v118 + 16);
    os_unfair_lock_unlock((v118 + 20));

    if (v119)
    {
      goto LABEL_144;
    }

    *&v224 = *(v65 + 32);
    v120 = sub_1AB461C44();
    *(&v225[0] + 1) = MEMORY[0x1E69E6158];
    *&v224 = v120;
    *(&v224 + 1) = v121;
    sub_1AB014B78(&v224, &v222);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    *&v221[0] = v201;
    sub_1AB01AE18(&v222, 0x6973736572706D69, 0xEF7865646E496E6FLL, v122);
    v201 = *&v221[0];
    v123 = v212;
    if (v212 == 1)
    {
      goto LABEL_142;
    }

    if (v212 - 1 <= *(v95 + 16))
    {
      v124 = *(v65 - 8);
      v125 = *v65;
      *(&v225[0] + 1) = MEMORY[0x1E69E6158];
      *&v224 = v124;
      *(&v224 + 1) = v125;
      sub_1AB014B78(&v224, &v222);

      v126 = swift_isUniquelyReferenced_nonNull_native();
      *&v221[0] = v201;
      sub_1AB01AE18(&v222, 0xD000000000000010, 0x80000001AB50FFF0, v126);
      v201 = *&v221[0];
      v123 = v212;
LABEL_142:
      if (v123 < *(v95 + 16))
      {
        v127 = *(v65 + 96);
        v128 = *(v65 + 112);
        v129 = *(v65 + 144);
        v225[1] = *(v65 + 128);
        v226 = v129;
        v224 = v127;
        v225[0] = v128;
        sub_1AB45DF50(&v224, &v222);

        v131 = *(&v225[0] + 1);
        v130 = *&v225[1];

        sub_1AB45DF88(&v224);
        *(&v223[0] + 1) = MEMORY[0x1E69E6158];
        *&v222 = v131;
        *(&v222 + 1) = v130;
        sub_1AB014B78(&v222, v221);
        v132 = swift_isUniquelyReferenced_nonNull_native();
        sub_1AB01AE18(v221, 0xD000000000000011, 0x80000001AB50FFD0, v132);
        goto LABEL_145;
      }

LABEL_144:

LABEL_145:
      a2 = v12[14];
      if (!a2)
      {
        v133 = v201;
        v165 = v12[6];
        if (v165)
        {
          goto LABEL_183;
        }

        goto LABEL_177;
      }

      v133 = v201;

      v134 = swift_isUniquelyReferenced_nonNull_native();
      *&v221[0] = v201;
      v135 = 1 << *(a2 + 32);
      if (v135 < 64)
      {
        v136 = ~(-1 << v135);
      }

      else
      {
        v136 = -1;
      }

      v137 = v136 & *(a2 + 64);
      v138 = (v135 + 63) >> 6;

      v139 = 0;
      if (!v137)
      {
LABEL_153:
        if (v138 <= v139 + 1)
        {
          v143 = v139 + 1;
        }

        else
        {
          v143 = v138;
        }

        v144 = v143 - 1;
        while (1)
        {
          v142 = v139 + 1;
          if (__OFADD__(v139, 1))
          {
            break;
          }

          if (v142 >= v138)
          {
            v137 = 0;
            memset(v234, 0, sizeof(v234));
            v139 = v144;
            v233 = 0u;
            goto LABEL_162;
          }

          v137 = *(a2 + 64 + 8 * v142);
          ++v139;
          if (v137)
          {
            v139 = v142;
            goto LABEL_161;
          }
        }

LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        v194 = a2 & 0xFFFFFFFFFFFFFF8;
        v11 = sub_1AB4618F4();
        if (!v11)
        {
LABEL_209:
          v188 = MEMORY[0x1E69E7CC0];
          goto LABEL_210;
        }

        continue;
      }

      while (2)
      {
        while (2)
        {
          v142 = v139;
LABEL_161:
          v145 = __clz(__rbit64(v137));
          v137 &= v137 - 1;
          v146 = v145 | (v142 << 6);
          v147 = (*(a2 + 48) + 16 * v146);
          v149 = *v147;
          v148 = v147[1];
          sub_1AB0165C4(*(a2 + 56) + 32 * v146, &v222);
          *&v233 = v149;
          *(&v233 + 1) = v148;
          sub_1AB014B78(&v222, v234);

LABEL_162:
          v222 = v233;
          v223[0] = v234[0];
          v223[1] = v234[1];
          v150 = *(&v233 + 1);
          if (!*(&v233 + 1))
          {
            memset(v225, 0, sizeof(v225));
            v224 = 0u;
LABEL_182:

            v12 = v203;
            v165 = v203[6];
            if (v165)
            {
LABEL_183:
              v170 = v12[5];
              *(&v225[0] + 1) = MEMORY[0x1E69E6158];
              *&v224 = v170;
              *(&v224 + 1) = v165;
              sub_1AB014B78(&v224, &v233);

              v171 = swift_isUniquelyReferenced_nonNull_native();
              *&v222 = v133;
              sub_1AB01AE18(&v233, 25705, 0xE200000000000000, v171);
              v133 = v222;
              goto LABEL_186;
            }

LABEL_177:
            v166 = sub_1AB014DB4(25705, 0xE200000000000000);
            if (v167)
            {
              v168 = v166;
              v169 = swift_isUniquelyReferenced_nonNull_native();
              *&v233 = v133;
              if ((v169 & 1) == 0)
              {
                sub_1AB0676CC();
                v133 = v233;
              }

              sub_1AB014B78((v133[7] + 32 * v168), &v224);
              sub_1AB18F158(v168, v133);
            }

            else
            {
              v224 = 0u;
              v225[0] = 0u;
            }

            sub_1AB014AC0(&v224, &unk_1EB437E60, &qword_1AB4D4730);
LABEL_186:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v188 = sub_1AB2AFF70(0, v188[2] + 1, 1, v188);
            }

            v173 = v188[2];
            v172 = v188[3];
            if (v173 >= v172 >> 1)
            {
              v188 = sub_1AB2AFF70((v172 > 1), v173 + 1, 1, v188);
            }

            v188[2] = v173 + 1;
            v188[v173 + 4] = v133;
LABEL_10:
            a2 = v195;
            if (v195 == v190)
            {
LABEL_210:

              v180 = sub_1AB0CED94(v188);

              return v180;
            }

            goto LABEL_4;
          }

          v151 = v222;
          sub_1AB0165C4(v223, v225);
          *&v224 = v151;
          *(&v224 + 1) = v150;

          sub_1AB014AC0(&v222, &qword_1EB43A620, &qword_1AB4D6B68);
          v152 = *(&v224 + 1);
          if (!*(&v224 + 1))
          {
            goto LABEL_182;
          }

          v153 = v224;
          sub_1AB014B78(v225, &v233);
          v154 = sub_1AB014DB4(v153, v152);
          v156 = v133[2];
          v157 = (v155 & 1) == 0;
          v13 = __OFADD__(v156, v157);
          v158 = v156 + v157;
          if (v13)
          {
            goto LABEL_205;
          }

          v159 = v155;
          if (v133[3] < v158)
          {
            sub_1AB01AF68(v158, v134 & 1);
            v154 = sub_1AB014DB4(v153, v152);
            if ((v159 & 1) != (v160 & 1))
            {
              goto LABEL_212;
            }

            goto LABEL_169;
          }

          if (v134)
          {
LABEL_169:
            v133 = *&v221[0];
            if (v159)
            {
              goto LABEL_151;
            }
          }

          else
          {
            v164 = v154;
            sub_1AB0676CC();
            v154 = v164;
            v133 = *&v221[0];
            if (v159)
            {
LABEL_151:
              v140 = v154;

              v141 = (v133[7] + 32 * v140);
              __swift_destroy_boxed_opaque_existential_1Tm(v141);
              sub_1AB014B78(&v233, v141);
              v134 = 1;
              if (!v137)
              {
                goto LABEL_153;
              }

              continue;
            }
          }

          break;
        }

        v133[(v154 >> 6) + 8] |= 1 << v154;
        v161 = (v133[6] + 16 * v154);
        *v161 = v153;
        v161[1] = v152;
        sub_1AB014B78(&v233, (v133[7] + 32 * v154));
        v162 = v133[2];
        v13 = __OFADD__(v162, 1);
        v163 = v162 + 1;
        if (v13)
        {
          goto LABEL_206;
        }

        v133[2] = v163;
        v134 = 1;
        if (!v137)
        {
          goto LABEL_153;
        }

        continue;
      }
    }

    break;
  }

  __break(1u);
LABEL_212:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

void *sub_1AB45DFB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AB459FAC(*a1);
  *a2 = result;
  return result;
}

void JEPluralCategoryForNumber_cold_1(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = [a1 localeIdentifier];
  v2 = 138412290;
  v3 = v1;
  _os_log_fault_impl(&dword_1AB012000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Could not determine plural category for locale: %@", &v2, 0xCu);
}

void sub_1AB45E178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void InitializeProcessLaunchTimeInterval_cold_1(int a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = strerror(a1);
  _os_log_fault_impl(&dword_1AB012000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Could not get process launch time, reason: %{public}s", &v1, 0xCu);
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAFE0](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}