char *sub_21DE902A4()
{
  v1 = v0;
  v100 = 0;
  v101 = 0xE000000000000000;
  (*(*v0 + 152))(&v98);
  if (v98)
  {
    v2 = 0x617A696E6167726FLL;
  }

  else
  {
    v2 = 0x6E6F73726570;
  }

  if (v98)
  {
    v3 = 0xEC0000006E6F6974;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  v4 = sub_21DEBCAD8(0x4B746361746E6F63, 0xEB00000000646E69, v2, v3);
  MEMORY[0x223D4B2A0](v4);

  v6 = (*(*v0 + 176))(v5);
  v8 = sub_21DEBCAD8(1701667182, 0xE400000000000000, v6, v7);
  MEMORY[0x223D4B2A0](v8);

  v10 = (*(*v0 + 200))(v9);
  v12 = sub_21DEBCAD8(0x656C746954626F6ALL, 0xE800000000000000, v10, v11);
  MEMORY[0x223D4B2A0](v12);

  v14 = (*(*v0 + 224))(v13);
  v16 = sub_21DEBCAD8(0x726F46736B726F77, 0xE800000000000000, v14, v15);
  MEMORY[0x223D4B2A0](v16);

  v18 = (*(*v0 + 248))(v17);
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = sub_21DEC7400();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v98 = MEMORY[0x277D84F90];
    result = sub_21DE52560(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v97 = v0;
    v23 = 0;
    v24 = v98;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x223D4B690](v23, v19);
      }

      else
      {
        v25 = *(v19 + 8 * v23 + 32);
      }

      v26 = (*(*v25 + 152))();
      v28 = v27;

      v98 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_21DE52560((v29 > 1), v30 + 1, 1);
        v24 = v98;
      }

      ++v23;
      *(v24 + 16) = v30 + 1;
      v31 = v24 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
    }

    while (v20 != v23);

    v1 = v97;
    v21 = MEMORY[0x277D84F90];
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v98 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40, MEMORY[0x277D83958]);
  v32 = sub_21DEC6D60();
  v34 = v33;

  v98 = 10;
  v99 = 0xE100000000000000;
  MEMORY[0x223D4B2A0](v32, v34);

  v35 = v98;
  v36 = v99;
  v37 = sub_21DEBCBBC();
  v38 = sub_21DEBCBC4(v37, v35, v36);
  v40 = v39;

  v41 = sub_21DEBCAD8(0x50746361746E6F63, 0xED000073746E696FLL, v38, v40);
  MEMORY[0x223D4B2A0](v41);

  v98 = 10;
  v99 = 0xE100000000000000;
  v43 = (*(*v1 + 272))(v42);
  v44 = (*(*v43 + 248))();
  MEMORY[0x223D4B2A0](v44);

  v45 = v98;
  v46 = v99;
  v47 = sub_21DEBCBBC();
  v48 = sub_21DEBCBC4(v47, v45, v46);
  v50 = v49;

  v51 = sub_21DEBCAD8(0x73736572646461, 0xE700000000000000, v48, v50);
  MEMORY[0x223D4B2A0](v51);

  v98 = 10;
  v99 = 0xE100000000000000;
  (*(*v1 + 296))(v52);
  v53 = sub_21DEC6D60();
  v55 = v54;

  MEMORY[0x223D4B2A0](v53, v55);

  v56 = v98;
  v57 = v99;
  v58 = sub_21DEBCBBC();
  v59 = sub_21DEBCBC4(v58, v56, v57);
  v61 = v60;

  v62 = sub_21DEBCAD8(0x736C69616D65, 0xE600000000000000, v59, v61);
  MEMORY[0x223D4B2A0](v62);

  v98 = 10;
  v99 = 0xE100000000000000;
  (*(*v1 + 320))(v63);
  v64 = sub_21DEC6D60();
  v66 = v65;

  MEMORY[0x223D4B2A0](v64, v66);

  v67 = v98;
  v68 = v99;
  v69 = sub_21DEBCBBC();
  v70 = sub_21DEBCBC4(v69, v67, v68);
  v72 = v71;

  v73 = sub_21DEBCAD8(1936487029, 0xE400000000000000, v70, v72);
  MEMORY[0x223D4B2A0](v73);

  v75 = (*(*v1 + 344))(v74);
  v76 = v75;
  if (!(v75 >> 62))
  {
    v77 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v77)
    {
      goto LABEL_22;
    }

LABEL_33:

    v79 = MEMORY[0x277D84F90];
LABEL_34:
    v98 = v79;
    v87 = sub_21DEC6D60();
    v89 = v88;

    v98 = 10;
    v99 = 0xE100000000000000;
    MEMORY[0x223D4B2A0](v87, v89);

    v90 = v98;
    v91 = v99;
    v92 = sub_21DEBCBBC();
    v93 = sub_21DEBCBC4(v92, v90, v91);
    v95 = v94;

    v96 = sub_21DEBCAD8(0x654D6C6169636F73, 0xEB00000000616964, v93, v95);
    MEMORY[0x223D4B2A0](v96);

    return v100;
  }

  v77 = sub_21DEC7400();
  if (!v77)
  {
    goto LABEL_33;
  }

LABEL_22:
  v98 = v21;
  result = sub_21DE52560(0, v77 & ~(v77 >> 63), 0);
  if ((v77 & 0x8000000000000000) == 0)
  {
    v78 = 0;
    v79 = v98;
    do
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        v80 = MEMORY[0x223D4B690](v78, v76);
      }

      else
      {
        v80 = *(v76 + 8 * v78 + 32);
      }

      v81 = (*(*v80 + 152))();
      v83 = v82;

      v98 = v79;
      v85 = *(v79 + 16);
      v84 = *(v79 + 24);
      if (v85 >= v84 >> 1)
      {
        sub_21DE52560((v84 > 1), v85 + 1, 1);
        v79 = v98;
      }

      ++v78;
      *(v79 + 16) = v85 + 1;
      v86 = v79 + 16 * v85;
      *(v86 + 32) = v81;
      *(v86 + 40) = v83;
    }

    while (v77 != v78);

    goto LABEL_34;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_21DE90BAC()
{
  v1 = v0;
  v2 = (*(*v0 + 176))();
  v4 = v3;

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = (*(*v1 + 272))(v5);
  v8 = (*(*v7 + 240))(v7);

  if (v8)
  {
    return 1;
  }

  v10 = (*(*v1 + 248))(v9);
  v11 = v10;
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
LABEL_49:
    v13 = sub_21DEC7400();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  while (v13 != v14)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x223D4B690](v14, v11);
      if (__OFADD__(v14, 1))
      {
LABEL_16:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v14 >= *(v12 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v15 = *(v11 + 8 * v14 + 32);

      if (__OFADD__(v14, 1))
      {
        goto LABEL_16;
      }
    }

    v16 = (*(*v15 + 144))();

    ++v14;
    if (v16)
    {
LABEL_45:

      return 1;
    }
  }

  v19 = (*(*v1 + 320))(v18);
  v20 = (v19 + 40);
  v21 = *(v19 + 16) + 1;
  while (--v21)
  {
    v23 = *(v20 - 1);
    v22 = *v20;
    v20 += 2;
    v24 = v23 & 0xFFFFFFFFFFFFLL;
    if ((v22 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v25 = v24;
    }

    if (v25)
    {
      goto LABEL_45;
    }
  }

  v27 = (*(*v1 + 296))(v26);
  v28 = (v27 + 40);
  v29 = *(v27 + 16) + 1;
  while (--v29)
  {
    v31 = *(v28 - 1);
    v30 = *v28;
    v28 += 2;
    v32 = v31 & 0xFFFFFFFFFFFFLL;
    if ((v30 & 0x2000000000000000) != 0)
    {
      v33 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v33 = v32;
    }

    if (v33)
    {
      goto LABEL_45;
    }
  }

  v35 = (*(*v1 + 344))(v34);
  v1 = v35;
  v36 = v35 & 0xFFFFFFFFFFFFFF8;
  if (v35 >> 62)
  {
    v11 = sub_21DEC7400();
  }

  else
  {
    v11 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = 0;
  v12 = v1 & 0xC000000000000001;
  while (v11 != v37)
  {
    if (v12)
    {
      v38 = MEMORY[0x223D4B690](v37, v1);
      if (__OFADD__(v37, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v37 >= *(v36 + 16))
      {
        goto LABEL_48;
      }

      v38 = *(v1 + 8 * v37 + 32);

      if (__OFADD__(v37, 1))
      {
LABEL_43:
        __break(1u);
        break;
      }
    }

    v39 = (*(*v38 + 144))();

    ++v37;
    if (v39)
    {
      goto LABEL_45;
    }
  }

  return 0;
}

uint64_t Contact.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Contact.init(from:)(a1);
  return v2;
}

void *Contact.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94610, &qword_21DED0F28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v78 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A234();
  sub_21DEC77E0();
  if (v2)
  {
LABEL_9:
    type metadata accessor for Contact();
    swift_deallocPartialClassInstance();
    __swift_destroy_boxed_opaque_existential_0(a1);
    return v3;
  }

  LOBYTE(v89) = 1;
  v9 = sub_21DEC74A0();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  *(v1 + 24) = v11;
  *(v1 + 32) = v12;
  LOBYTE(v89) = 0;
  sub_21DEC74A0();
  v13 = 0;
  v14 = sub_21DEC7470();

  *(v1 + 16) = v14 == 1;
  LOBYTE(v89) = 2;
  v15 = sub_21DEC74A0();
  if (v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(v1 + 40) = v18;
  *(v1 + 48) = v19;
  LOBYTE(v89) = 3;
  v20 = sub_21DEC74A0();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  *(v1 + 56) = v22;
  *(v1 + 64) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94620, &qword_21DED0F30);
  v88 = 4;
  sub_21DE9A288();
  v83 = 0;
  sub_21DEC74E0();
  if (v89)
  {
    v25 = v89;
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  v89 = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    goto LABEL_107;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_33:
  v82 = v6;
  v90 = v3;
  if (v26)
  {
    v27 = 0;
    v86 = v25 & 0xFFFFFFFFFFFFFF8;
    v87 = v25 & 0xC000000000000001;
    v85 = v25;
    while (1)
    {
      if (v87)
      {
        v28 = MEMORY[0x223D4B690](v27, v25);
        v6 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          v29 = v89;
          goto LABEL_47;
        }
      }

      else
      {
        if (v27 >= *(v86 + 16))
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          v70 = v25;
          v71 = sub_21DEC7400();
          v25 = v70;
          v26 = v71;
          goto LABEL_33;
        }

        v28 = *(v25 + 8 * v27 + 32);

        v6 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_44;
        }
      }

      if ((*(*v28 + 144))())
      {
        sub_21DEC7380();
        v84 = v89[2];
        sub_21DEC73A0();
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v27;
      v25 = v85;
      v3 = v90;
      if (v6 == v26)
      {
        goto LABEL_45;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_47:

  v3[9] = v29;
  type metadata accessor for Contact.Address();
  v88 = 5;
  sub_21DE9A87C(&qword_27CE94638, v30, type metadata accessor for Contact.Address, &protocol conformance descriptor for Contact.Address);
  sub_21DEC74E0();
  v31 = v13;
  if (v13)
  {
    LOBYTE(v89) = 5;
    v32 = sub_21DEC74A0();
    if (!v33)
    {
      v32 = 0;
      v33 = 0xE000000000000000;
    }

    v34 = sub_21DEA1D88(v32, v33);

    v31 = 0;
  }

  else
  {
    v34 = v89;
    if (!v89)
    {
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0xE000000000000000;
      v34[4] = 0;
      v34[5] = 0xE000000000000000;
      v34[6] = 0;
      v34[7] = 0xE000000000000000;
      v34[8] = 0;
      v34[9] = 0xE000000000000000;
      v34[10] = 0;
      v34[11] = 0xE000000000000000;
    }
  }

  v35 = v82;
  v3[10] = v34;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  v88 = 6;
  v36 = sub_21DE9AA8C(&qword_27CE94640, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v37 = v31;
  sub_21DEC74E0();
  v86 = v89;
  v87 = v36;
  if (v89)
  {
    v84 = v13;
    v38 = v89[2];

    v25 = v86;
    v6 = 0;
    v39 = v86 + 40;
    v40 = MEMORY[0x277D84F90];
LABEL_56:
    v41 = (v39 + 16 * v6);
    while (v38 != v6)
    {
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_105;
      }

      ++v6;
      v13 = *(v41 - 1);
      v42 = *v41;
      v41 += 2;
      v43 = HIBYTE(v42) & 0xF;
      if ((v42 & 0x2000000000000000) == 0)
      {
        v43 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v43)
      {
        v81 = v39;
        v85 = v37;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v89 = v40;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DE52560(0, v40[2] + 1, 1);
          v40 = v89;
        }

        v46 = v40[2];
        v45 = v40[3];
        v47 = (v46 + 1);
        v37 = v85;
        v25 = v86;
        v39 = v81;
        if (v46 >= v45 >> 1)
        {
          v79 = v40[2];
          v80 = (v46 + 1);
          sub_21DE52560((v45 > 1), v46 + 1, 1);
          v46 = v79;
          v47 = v80;
          v39 = v81;
          v37 = v85;
          v25 = v86;
          v40 = v89;
        }

        v40[2] = v47;
        v48 = &v40[2 * v46];
        v48[4] = v13;
        v48[5] = v42;
        goto LABEL_56;
      }
    }

    v35 = v82;
    v13 = v84;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  v3[11] = v40;
  v88 = 7;
  sub_21DEC74E0();
  if (v37)
  {
    (*(v35 + 8))(v8, v5);

    v49 = 0;
LABEL_24:
    v24 = v83;

    if (!v24)
    {
    }

    if (v49)
    {
    }

    goto LABEL_9;
  }

  v80 = v3 + 11;
  v50 = MEMORY[0x277D84F90];
  v81 = v89;
  if (v89)
  {
    v6 = v89[2];

    v25 = v81;
    v51 = 0;
    v52 = (v81 + 5);
LABEL_73:
    v53 = (v52 + 16 * v51);
    while (v6 != v51)
    {
      if (v51 >= *(v25 + 16))
      {
        goto LABEL_106;
      }

      ++v51;
      v13 = *(v53 - 1);
      v54 = *v53;
      v53 += 2;
      v55 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v55 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v55)
      {
        v87 = v52;
        v85 = v37;

        v56 = swift_isUniquelyReferenced_nonNull_native();
        v89 = v50;
        if ((v56 & 1) == 0)
        {
          sub_21DE52560(0, v50[2] + 1, 1);
          v50 = v89;
        }

        v58 = v50[2];
        v57 = v50[3];
        v59 = v58 + 1;
        v37 = v85;
        v25 = v81;
        v52 = v87;
        if (v58 >= v57 >> 1)
        {
          v84 = v58 + 1;
          v79 = v58;
          sub_21DE52560((v57 > 1), v58 + 1, 1);
          v59 = v84;
          v37 = v85;
          v58 = v79;
          v52 = v87;
          v25 = v81;
          v50 = v89;
        }

        v50[2] = v59;
        v60 = &v50[2 * v58];
        v60[4] = v13;
        v60[5] = v54;
        goto LABEL_73;
      }
    }

    v61 = v37;

    v35 = v82;
  }

  else
  {
    v61 = 0;
  }

  v3[12] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94648, &qword_21DED0F38);
  v88 = 8;
  sub_21DE9A33C();
  sub_21DEC74E0();
  if (v61)
  {
    (*(v35 + 8))(v8, v5);

    v49 = 1;
    goto LABEL_24;
  }

  v79 = v3 + 12;
  if (v89)
  {
    v62 = v89;
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  v89 = MEMORY[0x277D84F90];
  v85 = v62;
  if (v62 >> 62)
  {
    goto LABEL_110;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DEC7400())
  {
    v64 = 0;
    v65 = v85;
    v66 = v85 & 0xC000000000000001;
    v83 = v85 & 0xC000000000000001;
    v84 = v85 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v66)
      {
        v68 = MEMORY[0x223D4B690](v64, v65);
        v67 = v68;
      }

      else
      {
        if (v64 >= *(v84 + 16))
        {
          goto LABEL_109;
        }

        v67 = *(v65 + 8 * v64 + 32);
      }

      v87 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if ((*(*v67 + 144))(v68))
      {
        sub_21DEC7380();
        sub_21DEC73A0();
        v66 = v83;
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v64;
      v65 = v85;
      if (v87 == i)
      {
        v69 = v89;
        goto LABEL_112;
      }
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    ;
  }

  v69 = MEMORY[0x277D84F90];
LABEL_112:

  v90[13] = v69;
  if (!v86)
  {
    v72 = sub_21DEA2510(a1);
    if (v72)
    {
      v74 = v72;
    }

    else
    {
      v74 = MEMORY[0x277D84F90];
    }

    v75 = v80;
    swift_beginAccess();
    *v75 = v74;
  }

  if (v81)
  {

    (*(v82 + 8))(v8, v5);
  }

  else
  {
    v73 = sub_21DEA252C(a1);
    if (v73)
    {
      v76 = v73;
    }

    else
    {
      v76 = MEMORY[0x277D84F90];
    }

    (*(v82 + 8))(v8, v5);
    v77 = v79;
    swift_beginAccess();
    *v77 = v76;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v90;
}

__n128 Contact.__allocating_init(contactKind:name:contactPoint:address:emails:urls:jobTitle:worksFor:socialMedia:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12)
{
  v19 = swift_allocObject();
  *(v19 + 16) = *a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a3;
  *(v19 + 40) = a8;
  result = a10;
  *(v19 + 48) = a10;
  *(v19 + 64) = a11;
  *(v19 + 72) = a4;
  *(v19 + 80) = a5;
  *(v19 + 88) = a6;
  *(v19 + 96) = a7;
  *(v19 + 104) = a12;
  return result;
}

uint64_t Contact.init(contactKind:name:contactPoint:address:emails:urls:jobTitle:worksFor:socialMedia:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 16) = *a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a8;
  *(v11 + 48) = a9;
  *(v11 + 64) = a10;
  *(v11 + 72) = a4;
  *(v11 + 80) = a5;
  *(v11 + 88) = a6;
  *(v11 + 96) = a7;
  *(v11 + 104) = a11;
  return v11;
}

uint64_t sub_21DE91D00(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94660, &qword_21DED0F40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v76 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A234();
  v9 = sub_21DEC7810();
  (*(*v3 + 176))(v9);
  LOBYTE(v83) = 1;
  v81 = v5;
  sub_21DEC7590();
  v82 = v2;
  if (v2)
  {
    goto LABEL_2;
  }

  (*(*v3 + 152))(&v83, v11);
  v85 = v83;
  v84 = 0;
  sub_21DE9A3F0();
  v12 = v82;
  v13 = sub_21DEC75D0();
  v82 = v12;
  if (v12)
  {
    return (*(v6 + 8))(v8, v81);
  }

  v14 = (*(*v3 + 200))(v13);
  LOBYTE(v83) = 2;
  v15 = v82;
  sub_21DE6C7C8(v14, v16);
  v82 = v15;
  if (v15 || (v17 = , v18 = (*(*v3 + 224))(v17), LOBYTE(v83) = 3, v19 = v82, sub_21DE6C7C8(v18, v20), (v82 = v19) != 0))
  {
LABEL_2:
    (*(v6 + 8))(v8, v81);
  }

  v22 = (*(*v3 + 248))(v21);
  v23 = v22;
  v83 = MEMORY[0x277D84F90];
  if (v22 >> 62)
  {
LABEL_22:
    v24 = sub_21DEC7400();
    v78 = v6;
    if (v24)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v78 = v6;
    if (v24)
    {
LABEL_9:
      v6 = 0;
      v79 = v3;
      v80 = v23 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x223D4B690](v6, v23);
          v26 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v27 = v83;
            v6 = v78;
            goto LABEL_24;
          }
        }

        else
        {
          if (v6 >= *(v80 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v25 = *(v23 + 8 * v6 + 32);

          v26 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_19;
          }
        }

        if ((*(*v25 + 144))())
        {
          sub_21DEC7380();
          sub_21DEC73A0();
          v3 = v79;
          sub_21DEC73B0();
          sub_21DEC7390();
        }

        else
        {
        }

        ++v6;
        if (v26 == v24)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_24:

  LOBYTE(v83) = 4;
  v28 = type metadata accessor for Contact.ContactPoint();
  sub_21DE9A87C(&qword_27CE94670, v29, type metadata accessor for Contact.ContactPoint, &protocol conformance descriptor for Contact.ContactPoint);
  v30 = v82;
  sub_21DE6C7F4(v27, &v83, v81, v28);
  v82 = v30;
  if (v30)
  {
    goto LABEL_25;
  }

  v32 = (*v3 + 272);
  v33 = *v32;
  v6 = v32;
  v34 = (*v32)(v31);
  v35 = (*(*v34 + 240))(v34);

  if (v35)
  {
    v83 = v33(v36);
    v85 = 5;
    type metadata accessor for Contact.Address();
    sub_21DE9A87C(&qword_27CE94680, v37, type metadata accessor for Contact.Address, &protocol conformance descriptor for Contact.Address);
    v38 = v82;
    sub_21DEC75D0();

    v82 = v38;
    if (v38)
    {
      return (*(v78 + 8))(v8, v81);
    }
  }

  v39 = (*(*v3 + 296))(v36);
  v40 = 0;
  v41 = *(v39 + 16);
  v42 = v39 + 40;
  v43 = MEMORY[0x277D84F90];
LABEL_30:
  v44 = (v42 + 16 * v40);
  while (v41 != v40)
  {
    if (v40 >= *(v39 + 16))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      v68 = sub_21DEC7400();
      if (!v68)
      {
        goto LABEL_74;
      }

      goto LABEL_58;
    }

    ++v40;
    v45 = *(v44 - 1);
    v6 = *v44;
    v44 += 2;
    v46 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v46 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v46)
    {
      v77 = v42;
      v80 = v41;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v43;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21DE52560(0, *(v43 + 16) + 1, 1);
        v43 = v83;
      }

      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      v41 = v80;
      v42 = v77;
      if (v49 >= v48 >> 1)
      {
        sub_21DE52560((v48 > 1), v49 + 1, 1);
        v42 = v77;
        v41 = v80;
        v43 = v83;
      }

      *(v43 + 16) = v49 + 1;
      v50 = v43 + 16 * v49;
      *(v50 + 32) = v45;
      *(v50 + 40) = v6;
      goto LABEL_30;
    }
  }

  LOBYTE(v83) = 6;
  v51 = v82;
  sub_21DE6C7F4(v43, &v83, v81, MEMORY[0x277D837D0]);
  v52 = v78;
  v82 = v51;
  if (v51)
  {

    return (*(v52 + 8))(v8, v81);
  }

  v54 = (*(*v3 + 320))(v53);
  v40 = 0;
  v55 = *(v54 + 16);
  v56 = v54 + 40;
  v57 = MEMORY[0x277D84F90];
LABEL_44:
  v58 = (v56 + 16 * v40);
  while (v55 != v40)
  {
    if (v40 >= *(v54 + 16))
    {
      goto LABEL_71;
    }

    ++v40;
    v59 = *(v58 - 1);
    v6 = *v58;
    v58 += 2;
    v60 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v60 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v60)
    {
      v77 = v56;
      v80 = v55;

      v61 = swift_isUniquelyReferenced_nonNull_native();
      v83 = v57;
      if ((v61 & 1) == 0)
      {
        sub_21DE52560(0, *(v57 + 16) + 1, 1);
        v57 = v83;
      }

      v63 = *(v57 + 16);
      v62 = *(v57 + 24);
      v55 = v80;
      v56 = v77;
      if (v63 >= v62 >> 1)
      {
        sub_21DE52560((v62 > 1), v63 + 1, 1);
        v56 = v77;
        v55 = v80;
        v57 = v83;
      }

      *(v57 + 16) = v63 + 1;
      v64 = v57 + 16 * v63;
      *(v64 + 32) = v59;
      *(v64 + 40) = v6;
      goto LABEL_44;
    }
  }

  LOBYTE(v83) = 7;
  v65 = v82;
  sub_21DE6C7F4(v57, &v83, v81, MEMORY[0x277D837D0]);
  v6 = v78;
  v82 = v65;
  if (v65)
  {
LABEL_25:
    (*(v6 + 8))(v8, v81);
  }

  v67 = (*(*v3 + 344))(v66);
  v40 = v67;
  v83 = MEMORY[0x277D84F90];
  if (v67 >> 62)
  {
    goto LABEL_73;
  }

  v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v68)
  {
LABEL_74:
    v72 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

LABEL_58:
  v69 = 0;
  v70 = v40 & 0xC000000000000001;
  v80 = v40 & 0xC000000000000001;
  while (v70)
  {
    v6 = MEMORY[0x223D4B690](v69, v40);
    v71 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      goto LABEL_68;
    }

LABEL_64:
    if ((*(*v6 + 144))())
    {
      sub_21DEC7380();
      sub_21DEC73A0();
      v70 = v80;
      sub_21DEC73B0();
      sub_21DEC7390();
    }

    else
    {
    }

    ++v69;
    v6 = v78;
    if (v71 == v68)
    {
      goto LABEL_69;
    }
  }

  if (v69 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_72;
  }

  v6 = *(v40 + 8 * v69 + 32);

  v71 = v69 + 1;
  if (!__OFADD__(v69, 1))
  {
    goto LABEL_64;
  }

LABEL_68:
  __break(1u);
LABEL_69:
  v72 = v83;
LABEL_75:

  LOBYTE(v83) = 8;
  v73 = type metadata accessor for Contact.SocialMedia();
  sub_21DE9A87C(&qword_27CE94678, v74, type metadata accessor for Contact.SocialMedia, &protocol conformance descriptor for Contact.SocialMedia);
  v75 = v81;
  sub_21DE6C7F4(v72, &v83, v81, v73);
  (*(v6 + 8))(v8, v75);
}

void *Contact.deinit()
{

  return v0;
}

uint64_t Contact.__deallocating_deinit()
{
  Contact.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_21DE92838@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 384))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::Wifi::CodingKeys_optional __swiftcall Wifi.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1684632435 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_21DEC7610() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x64726F7773736170 && object == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t Wifi.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 1684632435;
  }
}

uint64_t sub_21DE92A28()
{
  if (*v0)
  {
    return 0x64726F7773736170;
  }

  else
  {
    return 1684632435;
  }
}

uint64_t sub_21DE92A60(uint64_t a1)
{
  v2 = sub_21DE9A444();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE92A9C(uint64_t a1)
{
  v2 = sub_21DE9A444();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE92AD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE92B24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE92B8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE92BD8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE92C40()
{
  v1 = (*(*v0 + 96))();
  v7 = sub_21DEBCAD8(1145656147, 0xE400000000000000, v1, v2);
  v3 = (*(*v0 + 120))();
  v5 = sub_21DEBCAD8(0x64726F7773736170, 0xE800000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  return v7;
}

BOOL sub_21DE92D00()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

uint64_t Wifi.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Wifi.init(from:)(a1);
  return v2;
}

void *Wifi.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94688, &qword_21DED0F48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A444();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for Wifi();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v8 = sub_21DEC74A0();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v1[2] = v10;
    v1[3] = v12;
    v18 = 1;
    v13 = sub_21DEC74A0();
    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v11 = v14;
    }

    (*(v5 + 8))(v7, v4);
    v1[4] = v16;
    v1[5] = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE92FAC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94698, &qword_21DED0F50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A444();
  v9 = sub_21DEC7810();
  v10 = (*(*v3 + 96))(v9);
  v16[15] = 0;
  sub_21DE6C7C8(v10, v11);
  if (!v2)
  {

    v13 = (*(*v3 + 120))(v12);
    v16[14] = 1;
    sub_21DE6C7C8(v13, v14);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21DE93190@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::ParkingLocation::CodingKeys_optional __swiftcall ParkingLocation.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x4449746F7073 && stringValue._object == 0xE600000000000000;
  if (v5 || (sub_21DEC7610() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x4449656E6F7ALL && object == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t ParkingLocation.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x4449746F7073;
  }
}

uint64_t sub_21DE933B4()
{
  if (*v0)
  {
    return 0x4449656E6F7ALL;
  }

  else
  {
    return 0x4449746F7073;
  }
}

uint64_t sub_21DE933E4(uint64_t a1)
{
  v2 = sub_21DE9A498();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE93420(uint64_t a1)
{
  v2 = sub_21DE9A498();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE9345C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE934A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 104);

  return v4(v2, v3);
}

uint64_t sub_21DE93568@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE935B4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 128);

  return v4(v2, v3);
}

uint64_t sub_21DE93624()
{
  v1 = (*(*v0 + 96))();
  v7 = sub_21DEBCAD8(0x4449746F7073, 0xE600000000000000, v1, v2);
  v3 = (*(*v0 + 120))();
  v5 = sub_21DEBCAD8(0x4449656E6F5ALL, 0xE600000000000000, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  return v7;
}

BOOL sub_21DE936E4()
{
  v1 = (*(*v0 + 96))();
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return 1;
  }

  v7 = (*(*v0 + 120))(v4);
  v9 = v8;

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v10 != 0;
}

void *ParkingLocation.__allocating_init(spotID:zoneID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ParkingLocation.init(spotID:zoneID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t ParkingLocation.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ParkingLocation.init(from:)(a1);
  return v2;
}

void *ParkingLocation.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946A0, &qword_21DED0F58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A498();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for ParkingLocation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = 0;
    v8 = sub_21DEC74A0();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = 0xE000000000000000;
    if (v9)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v1[2] = v10;
    v1[3] = v12;
    v18 = 1;
    v13 = sub_21DEC74A0();
    if (v14)
    {
      v16 = v13;
    }

    else
    {
      v16 = 0;
    }

    if (v14)
    {
      v11 = v14;
    }

    (*(v5 + 8))(v7, v4);
    v1[4] = v16;
    v1[5] = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE93A4C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946B0, &qword_21DED0F60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A498();
  v9 = sub_21DEC7810();
  v10 = (*(*v3 + 96))(v9);
  v16[15] = 0;
  sub_21DE6C7C8(v10, v11);
  if (!v2)
  {

    v13 = (*(*v3 + 120))(v12);
    v16[14] = 1;
    sub_21DE6C7C8(v13, v14);
  }

  (*(v6 + 8))(v8, v5);
}

uint64_t sub_21DE93C3C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::TransactionElement::CodingKeys_optional __swiftcall TransactionElement.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x637365446D657469 && stringValue._object == 0xEF6E6F6974706972;
  if (v5 || (sub_21DEC7610() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x797469746E617571 && object == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6972506C61746F74 && object == 0xEA00000000006563)
  {

    v7 = 2;
  }

  else
  {
    v8 = sub_21DEC7610();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t TransactionElement.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_21DEC7770();
  MEMORY[0x223D4BB10](v1);
  return sub_21DEC77B0();
}

uint64_t TransactionElement.CodingKeys.stringValue.getter()
{
  v1 = 0x797469746E617571;
  if (*v0 != 1)
  {
    v1 = 0x6972506C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x637365446D657469;
  }
}

uint64_t sub_21DE93F44()
{
  v1 = 0x797469746E617571;
  if (*v0 != 1)
  {
    v1 = 0x6972506C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x637365446D657469;
  }
}

uint64_t sub_21DE93FB4(uint64_t a1)
{
  v2 = sub_21DE9A4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE93FF0(uint64_t a1)
{
  v2 = sub_21DE9A4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE9402C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE94078(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 112);

  return v4(v2, v3);
}

uint64_t sub_21DE940E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE941A8(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t sub_21DE942B0(double a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t sub_21DE942F0()
{
  (*(*v0 + 128))();
  v1 = sub_21DEC7600();
  v9 = sub_21DEBCAD8(0x797469746E617571, 0xE800000000000000, v1, v2);
  v3 = (*(*v0 + 104))();
  v5 = sub_21DEBCAD8(0x637365446D657469, 0xEF6E6F6974706972, v3, v4);
  MEMORY[0x223D4B2A0](v5);

  (*(*v0 + 152))(v6);
  sub_21DEC7140();
  v7 = sub_21DEBCAD8(0x6972506C61746F74, 0xEA00000000006563, 0, 0xE000000000000000);
  MEMORY[0x223D4B2A0](v7);

  return v9;
}

BOOL sub_21DE9446C()
{
  if ((*(*v0 + 128))() < 1)
  {
    return 0;
  }

  v1 = (*(*v0 + 104))();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

uint64_t TransactionElement.__allocating_init(quantity:itemDescription:totalPrice:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *(result + 24) = a3;
  *(result + 32) = a1;
  *(result + 40) = a4;
  return result;
}

uint64_t TransactionElement.init(quantity:itemDescription:totalPrice:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a1;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t TransactionElement.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TransactionElement.init(from:)(a1);
  return v2;
}

double *TransactionElement.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946B8, &qword_21DED0F68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A4EC();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for TransactionElement();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = 1;
    *(v1 + 4) = sub_21DEC7500();
    v14 = 0;
    *(v1 + 2) = sub_21DEC74F0();
    *(v1 + 3) = v9;
    v14 = 2;
    v10 = sub_21DEC74C0();
    if (v11)
    {
      v1[5] = 0.0;
      swift_beginAccess();
      v12 = sub_21DEA3554(a1, *(v1 + 4));
      (*(v5 + 8))(v7, v4);
      swift_beginAccess();
      v1[5] = v12;
    }

    else
    {
      *(v1 + 5) = v10;
      (*(v5 + 8))(v7, v4);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_21DE94848(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946C8, &qword_21DED0F70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A4EC();
  v9 = sub_21DEC7810();
  (*(*v3 + 128))(v9);
  v13[15] = 1;
  v10 = sub_21DEC75C0();
  if (!v2)
  {
    (*(*v3 + 104))(v10);
    v13[14] = 0;
    sub_21DEC7590();

    (*(*v3 + 152))(v12);
    v13[13] = 2;
    sub_21DEC75B0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TransactionElement.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21DE94ACC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::FinancialTransaction::Place_optional __swiftcall FinancialTransaction.Place.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC76E0();

  v5 = 0;
  v6 = 8;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
LABEL_23:
      v6 = v5;
      break;
    case 8:
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    default:
      v6 = 26;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t FinancialTransaction.Place.rawValue.getter()
{
  result = 0x6D756573754DLL;
  switch(*v0)
  {
    case 1:
      result = 0x655620636973754DLL;
      break;
    case 2:
      result = 0x72657461656854;
      break;
    case 3:
      result = 0x7972617262694CLL;
      break;
    case 4:
      result = 0x6854206569766F4DLL;
      break;
    case 5:
      result = 0x694C20746867694ELL;
      break;
    case 6:
      result = 0x7963616D72616850;
      break;
    case 7:
      result = 0x7972656B6142;
      break;
    case 8:
      result = 0x79726577657242;
      break;
    case 9:
      result = 1701208387;
      break;
    case 0xA:
      result = 0x656C6C6974736944;
      break;
    case 0xB:
      result = 0x72614D20646F6F46;
      break;
    case 0xC:
      result = 0x6172756174736552;
      break;
    case 0xD:
      result = 0x7972656E6957;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    case 0x10:
      result = 0xD000000000000014;
      break;
    case 0x11:
      result = 0x6D756964617453;
      break;
    case 0x12:
      result = 0x74726F70726941;
      break;
    case 0x13:
      result = 0x746E655220726143;
      break;
    case 0x14:
      result = 0xD000000000000011;
      break;
    case 0x15:
      result = 0x7461745320736147;
      break;
    case 0x16:
      result = 0x6C65746F48;
      break;
    case 0x17:
      result = 0x676E696B726150;
      break;
    case 0x18:
      result = 0xD000000000000010;
      break;
    case 0x19:
      result = 0x726568744FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21DE94FA4()
{
  v0 = FinancialTransaction.Place.rawValue.getter();
  v2 = v1;
  if (v0 == FinancialTransaction.Place.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21DEC7610();
  }

  return v5 & 1;
}

uint64_t sub_21DE95040()
{
  sub_21DEC7770();
  FinancialTransaction.Place.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE950A8(uint64_t a1)
{
  FinancialTransaction.Place.rawValue.getter();
  sub_21DEC6E90();
}

uint64_t sub_21DE9510C(uint64_t a1)
{
  sub_21DEC7770();
  FinancialTransaction.Place.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

unint64_t sub_21DE9517C@<X0>(unint64_t *a1@<X8>)
{
  result = FinancialTransaction.Place.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SceneIntelligence::FinancialTransaction::Currency_optional __swiftcall FinancialTransaction.Currency.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC76E0();

  v5 = 0;
  v6 = 27;
  switch(v3)
  {
    case 0:
      goto LABEL_46;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
    case 22:
      v5 = 22;
      goto LABEL_46;
    case 23:
      v5 = 23;
      goto LABEL_46;
    case 24:
      v5 = 24;
      goto LABEL_46;
    case 25:
      v5 = 25;
      goto LABEL_46;
    case 26:
      v5 = 26;
LABEL_46:
      v6 = v5;
      break;
    case 27:
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    default:
      v6 = 45;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21DE95474()
{
  v0 = FinancialTransaction.Currency.rawValue.getter();
  if (v0 == FinancialTransaction.Currency.rawValue.getter())
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21DEC7610();
  }

  swift_bridgeObjectRelease_n();
  return v1 & 1;
}

uint64_t sub_21DE954F8()
{
  sub_21DEC7770();
  FinancialTransaction.Currency.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE95558(uint64_t a1)
{
  FinancialTransaction.Currency.rawValue.getter();
  sub_21DEC6E90();
}

uint64_t sub_21DE955B4(uint64_t a1)
{
  sub_21DEC7770();
  FinancialTransaction.Currency.rawValue.getter();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE9561C@<X0>(uint64_t *a1@<X8>)
{
  result = FinancialTransaction.Currency.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_21DE95658()
{
  v1 = 0x79636E6572727563;
  v2 = 0x736D657469;
  if (*v0 != 2)
  {
    v2 = 0x6C61746F74;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_21DE956D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE9A564(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE956F8(uint64_t a1)
{
  v2 = sub_21DE9A6CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE95734(uint64_t a1)
{
  v2 = sub_21DE9A6CC();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DE95770@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE957CC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

uint64_t sub_21DE95824@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE95870(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 144);

  return v4(v2, v3);
}

uint64_t sub_21DE958DC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_21DE9592C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_21DE95980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE959CC(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 168);

  return v2(v3);
}

uint64_t sub_21DE95AF0(double a1)
{
  result = swift_beginAccess();
  *(v1 + 48) = a1;
  return result;
}

unint64_t sub_21DE95B30()
{
  v1 = v0;
  v30 = 0;
  v31 = 0xE000000000000000;
  result = (*(*v0 + 160))();
  v3 = result;
  if (!(result >> 62))
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    (*(*v1 + 112))(&v28, v12);
    v13 = FinancialTransaction.Place.rawValue.getter();
    v28 = sub_21DEBCAD8(0xD000000000000010, 0x800000021DED9E00, v13, v14);
    v29 = v15;
    v16 = (*(*v1 + 136))();
    v18 = sub_21DEBCAD8(0x79636E6572727563, 0xE800000000000000, v16, v17);
    MEMORY[0x223D4B2A0](v18);

    v19 = v30;
    v20 = v31;
    v21 = sub_21DEBCBBC();
    v22 = sub_21DEBCBC4(v21, v19, v20);
    v24 = v23;

    v25 = sub_21DEBCAD8(0x73746E656D656C65, 0xE800000000000000, v22, v24);
    MEMORY[0x223D4B2A0](v25);

    (*(*v1 + 184))(v26);
    sub_21DEC7140();
    v27 = sub_21DEBCAD8(0x6C61746F74, 0xE500000000000000, 0, 0xE000000000000000);
    MEMORY[0x223D4B2A0](v27);

    return v28;
  }

  result = sub_21DEC7400();
  v4 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D4B690](v5, v3);
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      ++v5;
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_21DEC72F0();
      v7 = MEMORY[0x223D4B2A0](2108682, 0xE300000000000000);
      (*(*v6 + 128))(v7);
      v8 = sub_21DEC7600();
      MEMORY[0x223D4B2A0](v8);

      v9 = MEMORY[0x223D4B2A0](32, 0xE100000000000000);
      v10 = (*(*v6 + 104))(v9);
      MEMORY[0x223D4B2A0](v10);

      v11 = MEMORY[0x223D4B2A0](0x725074696E75202CLL, 0xED0000203A656369);
      (*(*v6 + 152))(v11);
      sub_21DEC7140();
      MEMORY[0x223D4B2A0](0, 0xE000000000000000);
    }

    while (v4 != v5);

    v1 = v0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t FinancialTransaction.__allocating_init(transactionPlace:currency:items:subTotal:tax:tip:total:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{

  result = swift_allocObject();
  *(result + 16) = *a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a7;
  return result;
}

uint64_t FinancialTransaction.init(transactionPlace:currency:items:subTotal:tax:tip:total:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9)
{

  *(v9 + 16) = *a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a7;
  return v9;
}

uint64_t FinancialTransaction.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FinancialTransaction.init(from:)(a1);
  return v2;
}

unint64_t FinancialTransaction.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946D0, &qword_21DED0F78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A6CC();
  sub_21DEC77E0();
  if (v2)
  {
    type metadata accessor for FinancialTransaction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = 0;
    sub_21DE9A720();
    sub_21DEC74E0();
    v9 = v33[0];
    if (v33[0] == 26)
    {
      v9 = 25;
    }

    *(v1 + 16) = v9;
    v33[0] = 1;
    v10 = sub_21DEC74A0();
    if (v11)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    if (v11)
    {
      v14 = v11;
    }

    *(v1 + 24) = v13;
    *(v1 + 32) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE946E8, &qword_21DED0F80);
    v34 = 2;
    sub_21DE9A774();
    sub_21DEC74E0();
    v28 = v6;
    v15 = *v33;
    v16 = MEMORY[0x277D84F90];
    v29 = *v33;
    if (*v33)
    {
      *v33 = MEMORY[0x277D84F90];
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        goto LABEL_36;
      }

      v18 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

      if (v18)
      {
        v27 = v3;
        v3 = 0;
        v31 = v17;
        v32 = v15 & 0xC000000000000001;
        v30 = v5;
        while (1)
        {
          if (v32)
          {
            v20 = MEMORY[0x223D4B690](v3, v15);
            v21 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_26:
              __break(1u);
LABEL_27:
              v16 = *v33;
              v3 = v27;
              goto LABEL_29;
            }
          }

          else
          {
            if (v3 >= *(v17 + 16))
            {
              __break(1u);
LABEL_36:
              v18 = sub_21DEC7400();
              goto LABEL_15;
            }

            v20 = *(v15 + 8 * v3 + 32);

            v21 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_26;
            }
          }

          if ((*(*v20 + 184))())
          {
            sub_21DEC7380();
            sub_21DEC73A0();
            v15 = v29;
            sub_21DEC73B0();
            sub_21DEC7390();
          }

          else
          {
          }

          ++v3;
          v19 = v21 == v18;
          v5 = v30;
          v17 = v31;
          if (v19)
          {
            goto LABEL_27;
          }
        }
      }

      v16 = MEMORY[0x277D84F90];
LABEL_29:
    }

    *(v3 + 40) = v16;
    v33[0] = 3;
    v22 = COERCE_DOUBLE(sub_21DEC74C0());
    if (v23)
    {
      v22 = 0.0;
    }

    *(v3 + 48) = v22;
    v24 = v28;
    if (v29)
    {

      (*(v24 + 8))(v8, v5);
    }

    else
    {
      v25 = sub_21DEA37B4(a1);
      (*(v24 + 8))(v8, v5);
      swift_beginAccess();
      *(v3 + 40) = v25;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_21DE9652C(void *a1)
{
  v3 = v2;
  v4 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94700, &qword_21DED0F88);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v25 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A6CC();
  v28 = v7;
  v8 = sub_21DEC7810();
  v9 = *(*v4 + 112);
  v9((&v33 + 1), v8);
  if (FinancialTransaction.Place.rawValue.getter() == 0x726568744FLL && v10 == 0xE500000000000000)
  {
  }

  else
  {
    v12 = sub_21DEC7610();

    if ((v12 & 1) == 0)
    {
LABEL_21:
      v9(&v33, v11);
      v32[2] = 0;
      sub_21DE9A828();
      v13 = v28;
      v9 = v29;
      v11 = sub_21DEC75D0();
      if (v3)
      {
        return (*(v27 + 8))(v13, v9);
      }

      goto LABEL_6;
    }
  }

  v13 = v28;
  v9 = v29;
LABEL_6:
  (*(*v4 + 136))(v11);
  v32[1] = 1;
  sub_21DEC7590();
  if (v3)
  {
    (*(v27 + 8))(v13, v9);
  }

  v16 = (*(*v4 + 160))(v15);
  v17 = v16;
  v30 = MEMORY[0x277D84F90];
  if (v16 >> 62)
  {
    goto LABEL_25;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
LABEL_10:
    v25 = v4;
    v26 = 0;
    v19 = 0;
    v3 = v17 & 0xC000000000000001;
    v9 = (v17 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v3)
      {
        v11 = MEMORY[0x223D4B690](v19, v17);
        v20 = v11;
        v4 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_25:
          v18 = sub_21DEC7400();
          if (!v18)
          {
            break;
          }

          goto LABEL_10;
        }

        v20 = *(v17 + 8 * v19 + 32);

        v4 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_20;
        }
      }

      if ((*(*v20 + 184))())
      {
        sub_21DEC7380();
        v13 = *(v30 + 16);
        sub_21DEC73A0();
        sub_21DEC73B0();
        sub_21DEC7390();
      }

      else
      {
      }

      ++v19;
      if (v4 == v18)
      {
        v9 = v29;
        v21 = v30;
        v4 = v25;
        v3 = v26;
        v13 = v28;
        goto LABEL_27;
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_27:

  v32[0] = 2;
  v22 = type metadata accessor for TransactionElement();
  sub_21DE9A87C(&qword_27CE94710, v23, type metadata accessor for TransactionElement, &protocol conformance descriptor for TransactionElement);
  sub_21DE6C7F4(v21, v32, v9, v22);
  if (v3)
  {
    (*(v27 + 8))(v13, v9);
  }

  (*(*v4 + 184))(v24);
  v31 = 3;
  sub_21DEC75B0();
  return (*(v27 + 8))(v13, v9);
}

uint64_t FinancialTransaction.deinit()
{

  return v0;
}

uint64_t FinancialTransaction.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_21DE96A48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

SceneIntelligence::ItemList::Category_optional __swiftcall ItemList.Category.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21DEC7470();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ItemList.Category.rawValue.getter()
{
  v1 = 0x676E6970706F6853;
  v2 = 0x6F44206F54;
  if (*v0 != 2)
  {
    v2 = 0x726568744FLL;
  }

  if (*v0)
  {
    v1 = 0x6569646572676E49;
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

uint64_t sub_21DE96C08()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DE96CD8(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DE96D94(uint64_t a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

void sub_21DE96E6C(uint64_t *a1@<X8>)
{
  v2 = 0xED00007473694C20;
  v3 = 0x676E6970706F6853;
  v4 = 0x6F44206F54;
  if (*v1 != 2)
  {
    v4 = 0x726568744FLL;
  }

  if (*v1)
  {
    v3 = 0x6569646572676E49;
    v2 = 0xEB0000000073746ELL;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_21DE96FB8()
{
  v1 = 0x79726F6765746163;
  if (*v0 != 1)
  {
    v1 = 0x73746E656D656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C7469547473696CLL;
  }
}

uint64_t sub_21DE97018@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DE9A8C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DE97040(uint64_t a1)
{
  v2 = sub_21DE9A9E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DE9707C(uint64_t a1)
{
  v2 = sub_21DE9A9E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DE970B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21DE97104(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 112);

  return v4(v2, v3);
}

void *sub_21DE9716C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 128))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_21DE971C8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 136))(&v4);
}

uint64_t sub_21DE97220@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 32);
  return result;
}

uint64_t sub_21DE97264(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_21DE972A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result;
  return result;
}

uint64_t sub_21DE972F0(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 160);

  return v2(v3);
}

uint64_t sub_21DE9737C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

BOOL sub_21DE973C4()
{
  v1 = (*(*v0 + 152))();
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v5 = *(v2 - 1);
    v4 = *v2;
    v2 += 2;
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  while (!((v4 & 0x2000000000000000) != 0 ? HIBYTE(v4) & 0xF : v6));
  v8 = v3 != 0;

  return v8;
}

uint64_t sub_21DE97444()
{
  v1 = (*(*v0 + 152))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x223D4B2A0](v4, v5);

      MEMORY[0x223D4B2A0](2108682, 0xE300000000000000);

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  v7 = (*(*v0 + 104))(v6);
  v15 = sub_21DEBCAD8(0x656C746974, 0xE500000000000000, v7, v8);
  v9 = sub_21DEBCBBC();
  v10 = sub_21DEBCBC4(v9, 0, 0xE000000000000000);
  v12 = v11;

  v13 = sub_21DEBCAD8(0x73746E656D656C65, 0xE800000000000000, v10, v12);
  MEMORY[0x223D4B2A0](v13);

  return v15;
}

uint64_t ItemList.__allocating_init(title:category:elements:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = *a3;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = v9;
  *(result + 40) = a4;
  return result;
}

uint64_t ItemList.init(title:category:elements:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = *a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  *(v4 + 40) = a4;
  return v4;
}

uint64_t ItemList.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ItemList.init(from:)(a1);
  return v2;
}

uint64_t ItemList.init(from:)(void *a1)
{
  v3 = sub_21DEC6770();
  v100 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94718, &qword_21DED0F90);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v90 - v8;
  v10 = a1[3];
  v101 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_21DE9A9E4();
  sub_21DEC77E0();
  if (v1)
  {
    v103 = v1;
    v15 = v101;
    v14 = v102;
LABEL_4:
    type metadata accessor for ItemList();
    swift_deallocPartialClassInstance();
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v15);
    return v14;
  }

  v11 = v100;
  v103 = v3;
  v104 = v5;
  LOBYTE(v111) = 0;
  v12 = sub_21DEC74A0();
  v97 = v9;
  v95 = v7;
  v96 = v6;
  if (v13)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v14 = v102;
  v18 = v102;
  if (v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(v102 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = (v18 + 16);
  *&v111 = 124;
  *(&v111 + 1) = 0xE100000000000000;
  MEMORY[0x28223BE20](v12);
  v88 = &v111;

  v22 = sub_21DE7E79C(0x7FFFFFFFFFFFFFFFLL, 1, sub_21DE821E8, v87, v17, v19, v21);
  v99 = 0;
  v23 = *(v22 + 16);
  v15 = v101;
  if (v23)
  {
    v98 = v20;
    v105 = MEMORY[0x277D84F90];
    sub_21DE52560(0, v23, 0);
    v24 = v105;
    v25 = (v11 + 8);
    v100 = v22;
    v26 = (v22 + 56);
    do
    {
      v27 = *(v26 - 1);
      v28 = *v26;
      v111 = *(v26 - 3);
      v112 = v27;
      v113 = v28;

      sub_21DEC6760();
      sub_21DE99AD8();
      v29 = sub_21DEC7230();
      v31 = v30;
      (*v25)(v104, v103);

      v105 = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21DE52560((v32 > 1), v33 + 1, 1);
        v24 = v105;
      }

      *(v24 + 16) = v33 + 1;
      v34 = v24 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      v26 += 4;
      --v23;
    }

    while (v23);

    v15 = v101;
    v14 = v102;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  *&v111 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
  sub_21DE6884C(&qword_280F7A6D8, &qword_27CE93E90, &qword_21DECCA40, MEMORY[0x277D83958]);
  v35 = sub_21DEC6D60();
  v37 = v36;

  swift_beginAccess();
  *(v14 + 16) = v35;
  *(v14 + 24) = v37;

  LOBYTE(v105) = 1;
  v39 = v96;
  v38 = v97;
  v40 = v99;
  sub_21DEC74A0();
  v103 = v40;
  v41 = v95;
  if (v40)
  {
    goto LABEL_23;
  }

  v42 = sub_21DEC7470();

  v43 = 3;
  if (v42 < 3)
  {
    v43 = v42;
  }

  *(v14 + 32) = v43;
  LOBYTE(v109) = 2;
  sub_21DE9AA8C(&qword_27CE94640, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v44 = v103;
  sub_21DEC74E0();
  v103 = v44;
  if (v44)
  {
LABEL_23:
    (*(v41 + 8))(v38, v39);

    goto LABEL_4;
  }

  v90 = v14 + 32;
  if (v105)
  {
    v45 = v105;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v46 = *(v45 + 16);
  v94 = v42;
  if (!v46)
  {

    result = MEMORY[0x277D84F90];
LABEL_48:
    v72 = 0;
    v73 = *(result + 16);
    v74 = result + 40;
    v75 = MEMORY[0x277D84F90];
LABEL_49:
    v76 = (v74 + 16 * v72);
    while (v73 != v72)
    {
      if (v72 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_70;
      }

      ++v72;
      v78 = *(v76 - 1);
      v77 = *v76;
      v76 += 2;
      v79 = HIBYTE(v77) & 0xF;
      if ((v77 & 0x2000000000000000) == 0)
      {
        v79 = v78 & 0xFFFFFFFFFFFFLL;
      }

      if (v79)
      {
        v80 = result;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v105 = v75;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21DE52560(0, *(v75 + 16) + 1, 1);
          v75 = v105;
        }

        v83 = *(v75 + 16);
        v82 = *(v75 + 24);
        result = v80;
        if (v83 >= v82 >> 1)
        {
          sub_21DE52560((v82 > 1), v83 + 1, 1);
          result = v80;
          v75 = v105;
        }

        *(v75 + 16) = v83 + 1;
        v84 = v75 + 16 * v83;
        *(v84 + 32) = v78;
        *(v84 + 40) = v77;
        v42 = v94;
        goto LABEL_49;
      }
    }

    v14 = v102;
    *(v102 + 40) = v75;
    v52 = v96;
    v45 = v95;
    v55 = v90;
    if (v42 <= 3)
    {
      (*(v95 + 8))(v97, v96);
      v15 = v101;
    }

    else
    {
      v15 = v101;
      v85 = v103;
      sub_21DEA32E4(v101);
      v103 = v85;
      if (!v85)
      {
        goto LABEL_65;
      }

      (*(v45 + 8))(v97, v52);
    }

    goto LABEL_5;
  }

  v114 = MEMORY[0x277D84F90];
  result = sub_21DE52560(0, v46, 0);
  v47 = 0;
  v48 = v114;
  v93 = v45 + 32;
  v92 = v45;
  v91 = v46;
  while (v47 < *(v45 + 16))
  {
    v100 = v48;
    v49 = (v93 + 16 * v47);
    v15 = v49[1];
    v104 = *v49;
    v50 = qword_27CE9BA10;

    if (v50 != -1)
    {
      swift_once();
    }

    v99 = v47 + 1;
    v51 = qword_27CE9BA18;
    v52 = qword_27CE9BA18 + 64;
    v53 = 1 << *(qword_27CE9BA18 + 32);
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v55 = v54 & *(qword_27CE9BA18 + 64);
    v56 = (v53 + 63) >> 6;

    v14 = 0;
    v98 = v15;
    if (v55)
    {
      while (1)
      {
        v57 = v14;
LABEL_41:
        v58 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        v59 = (v57 << 10) | (16 * v58);
        v60 = (*(v51 + 48) + v59);
        v61 = *v60;
        v45 = v60[1];
        v62 = (*(v51 + 56) + v59);
        v63 = *v62;
        v64 = v62[1];
        v105 = v104;
        v106 = v15;
        v109 = v61;
        v110 = v45;
        v107 = v63;
        v108 = v64;
        v65 = sub_21DE531EC();

        v88 = v65;
        v89 = v65;
        v87[1] = v65;
        v87[0] = MEMORY[0x277D837D0];
        v104 = sub_21DEC7240();
        v67 = v66;

        v15 = v67;
        if (!v55)
        {
          goto LABEL_37;
        }
      }
    }

    while (1)
    {
LABEL_37:
      v57 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_65:
        (*(v45 + 8))(v97, v52);
        if (v105 == 4)
        {
          v86 = 3;
        }

        else
        {
          v86 = v105;
        }

        swift_beginAccess();
        *v55 = v86;
        goto LABEL_5;
      }

      if (v57 >= v56)
      {
        break;
      }

      v55 = *(v52 + 8 * v57);
      ++v14;
      if (v55)
      {
        v14 = v57;
        goto LABEL_41;
      }
    }

    v48 = v100;
    v114 = v100;
    v69 = *(v100 + 16);
    v68 = *(v100 + 24);
    if (v69 >= v68 >> 1)
    {
      result = sub_21DE52560((v68 > 1), v69 + 1, 1);
      v48 = v114;
    }

    *(v48 + 16) = v69 + 1;
    v70 = v48 + 16 * v69;
    *(v70 + 32) = v104;
    *(v70 + 40) = v15;
    v47 = v99;
    v42 = v94;
    v45 = v92;
    if (v99 == v91)
    {
      v71 = v48;

      result = v71;
      goto LABEL_48;
    }
  }

LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_21DE9804C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94728, &qword_21DED0F98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DE9A9E4();
  v9 = sub_21DEC7810();
  (*(*v3 + 104))(v9);
  LOBYTE(v31) = 0;
  sub_21DEC7590();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*(*v3 + 128))(&v31, v11);
    v32 = 1;
    sub_21DE9AA38();
    v12 = sub_21DEC75D0();
    v30 = v6;
    result = (*(*v3 + 152))(v12);
    v13 = result;
    v14 = 0;
    v15 = *(result + 16);
    v16 = result + 40;
    v17 = MEMORY[0x277D84F90];
LABEL_4:
    v18 = (v16 + 16 * v14);
    while (1)
    {
      if (v15 == v14)
      {

        v31 = v17;
        v32 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93E90, &qword_21DECCA40);
        sub_21DE9AA8C(&qword_27CE94738, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
        sub_21DEC75D0();
        (*(v30 + 8))(v8, v5);
      }

      if (v14 >= *(v13 + 16))
      {
        break;
      }

      ++v14;
      v20 = *(v18 - 1);
      v19 = *v18;
      v18 += 2;
      v21 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v21 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v29 = v16;

        result = swift_isUniquelyReferenced_nonNull_native();
        v31 = v17;
        if ((result & 1) == 0)
        {
          result = sub_21DE52560(0, *(v17 + 16) + 1, 1);
          v17 = v31;
        }

        v23 = *(v17 + 16);
        v22 = *(v17 + 24);
        v24 = v23 + 1;
        v16 = v29;
        if (v23 >= v22 >> 1)
        {
          v27 = *(v17 + 16);
          v28 = v23 + 1;
          result = sub_21DE52560((v22 > 1), v23 + 1, 1);
          v23 = v27;
          v24 = v28;
          v16 = v29;
          v17 = v31;
        }

        *(v17 + 16) = v24;
        v25 = v17 + 16 * v23;
        *(v25 + 32) = v20;
        *(v25 + 40) = v19;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s17SceneIntelligence15ParkingLocationCfd_0()
{

  return v0;
}

uint64_t sub_21DE98420(uint64_t a1)
{

  return MEMORY[0x2821FE8D8](v1, a1, 7);
}

uint64_t sub_21DE9846C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 200))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *sub_21DE98530(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94978, &unk_21DED3408);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_21DE98624(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94410, &qword_21DED0E40);
  v10 = *(type metadata accessor for EventDateTimeComponents(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for EventDateTimeComponents(0) - 8);
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

void *sub_21DE987FC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_21DE98880(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21DEC7400();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21DEC7400();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21DE98970(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21DE98D18(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21DE98970(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_21DEC7400();
LABEL_9:
  result = sub_21DEC7310();
  *v2 = result;
  return result;
}

uint64_t (*sub_21DE98A10(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D4B690](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_21DE98A90;
  }

  __break(1u);
  return result;
}

void *sub_21DE98A98(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_21DE98BF8()
{
  result = qword_27CE94460;
  if (!qword_27CE94460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94460);
  }

  return result;
}

unint64_t sub_21DE98C70()
{
  result = qword_27CE94468;
  if (!qword_27CE94468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94468);
  }

  return result;
}

unint64_t sub_21DE98CC4()
{
  result = qword_27CE94470;
  if (!qword_27CE94470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94470);
  }

  return result;
}

uint64_t sub_21DE98D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21DEC7400();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21DEC7400();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21DE6884C(&qword_27CE94968, &qword_27CE945A0, &qword_21DED0EE8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE945A0, &qword_21DED0EE8);
            v9 = sub_21DE98A10(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SubEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21DE98EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94958, &qword_21DED33E8);
    v3 = sub_21DEC7430();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_21DE7ADAC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_21DE98FCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4C676E696B726170 && a2 == 0xEF6E6F697461636FLL || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7473694C6D657469 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEB000000006E6F69)
  {

    return 5;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_21DE991D0()
{
  result = qword_27CE94480;
  if (!qword_27CE94480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94480);
  }

  return result;
}

uint64_t sub_21DE992FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6854664F73796164 && a2 == 0xED00006B65655765 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021DED9DE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE9942C()
{
  result = qword_27CE944F8;
  if (!qword_27CE944F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE944F8);
  }

  return result;
}

unint64_t sub_21DE994A4()
{
  result = qword_27CE94500;
  if (!qword_27CE94500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94500);
  }

  return result;
}

unint64_t sub_21DE994F8()
{
  result = qword_27CE94510;
  if (!qword_27CE94510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94508, &qword_21DED0EA0);
    sub_21DE9957C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94510);
  }

  return result;
}

unint64_t sub_21DE9957C()
{
  result = qword_27CE94518;
  if (!qword_27CE94518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94518);
  }

  return result;
}

unint64_t sub_21DE995D0()
{
  result = qword_27CE94528;
  if (!qword_27CE94528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94528);
  }

  return result;
}

unint64_t sub_21DE99624()
{
  result = qword_27CE94530;
  if (!qword_27CE94530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94530);
  }

  return result;
}

uint64_t sub_21DE99678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

uint64_t sub_21DE997A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventDateTimeComponents(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DE99804()
{
  result = qword_27CE94540;
  if (!qword_27CE94540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94540);
  }

  return result;
}

uint64_t type metadata accessor for SubEvent.DateTimeElement(uint64_t a1)
{
  result = qword_27CEA0840;
  if (!qword_27CEA0840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DE998A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746954746E657665 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D695465746164 && a2 == 0xEF746E656D656C45 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE99A60()
{
  result = qword_27CE94568;
  if (!qword_27CE94568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94568);
  }

  return result;
}

unint64_t sub_21DE99AD8()
{
  result = qword_27CE94578;
  if (!qword_27CE94578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94578);
  }

  return result;
}

unint64_t sub_21DE99B2C()
{
  result = qword_27CE94598;
  if (!qword_27CE94598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94598);
  }

  return result;
}

unint64_t sub_21DE99B80()
{
  result = qword_27CE945A8;
  if (!qword_27CE945A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE945A0, &qword_21DED0EE8);
    sub_21DE9A87C(&qword_27CE945B0, v1, type metadata accessor for SubEvent, &protocol conformance descriptor for SubEvent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE945A8);
  }

  return result;
}

unint64_t sub_21DE99C34()
{
  result = qword_27CE945D0;
  if (!qword_27CE945D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE945D0);
  }

  return result;
}

uint64_t sub_21DE99CAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746565727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE99E5C()
{
  result = qword_27CE945E8;
  if (!qword_27CE945E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE945E8);
  }

  return result;
}

unint64_t sub_21DE99ED4()
{
  result = qword_27CE94600;
  if (!qword_27CE94600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94600);
  }

  return result;
}

uint64_t sub_21DE99F4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4B746361746E6F63 && a2 == 0xEB00000000646E69;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F46736B726F77 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x50746361746E6F63 && a2 == 0xEC000000746E696FLL || (sub_21DEC7610() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736C69616D65 && a2 == 0xE600000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1936487029 && a2 == 0xE400000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D6C6169636F73 && a2 == 0xEB00000000616964)
  {

    return 8;
  }

  else
  {
    v6 = sub_21DEC7610();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_21DE9A234()
{
  result = qword_27CE94618;
  if (!qword_27CE94618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94618);
  }

  return result;
}

unint64_t sub_21DE9A288()
{
  result = qword_27CE94628;
  if (!qword_27CE94628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94620, &qword_21DED0F30);
    sub_21DE9A87C(&qword_27CE94630, v1, type metadata accessor for Contact.ContactPoint, &protocol conformance descriptor for Contact.ContactPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94628);
  }

  return result;
}

unint64_t sub_21DE9A33C()
{
  result = qword_27CE94650;
  if (!qword_27CE94650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE94648, &qword_21DED0F38);
    sub_21DE9A87C(&qword_27CE94658, v1, type metadata accessor for Contact.SocialMedia, &protocol conformance descriptor for Contact.SocialMedia);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94650);
  }

  return result;
}

unint64_t sub_21DE9A3F0()
{
  result = qword_27CE94668;
  if (!qword_27CE94668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94668);
  }

  return result;
}

unint64_t sub_21DE9A444()
{
  result = qword_27CE94690;
  if (!qword_27CE94690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94690);
  }

  return result;
}

unint64_t sub_21DE9A498()
{
  result = qword_27CE946A8;
  if (!qword_27CE946A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946A8);
  }

  return result;
}

unint64_t sub_21DE9A4EC()
{
  result = qword_27CE946C0;
  if (!qword_27CE946C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946C0);
  }

  return result;
}

uint64_t sub_21DE9A564(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000021DED9E00 == a2 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61746F74 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_21DEC7610();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_21DE9A6CC()
{
  result = qword_27CE946D8;
  if (!qword_27CE946D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946D8);
  }

  return result;
}

unint64_t sub_21DE9A720()
{
  result = qword_27CE946E0;
  if (!qword_27CE946E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946E0);
  }

  return result;
}

unint64_t sub_21DE9A774()
{
  result = qword_27CE946F0;
  if (!qword_27CE946F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE946E8, &qword_21DED0F80);
    sub_21DE9A87C(&qword_27CE946F8, v1, type metadata accessor for TransactionElement, &protocol conformance descriptor for TransactionElement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE946F0);
  }

  return result;
}

unint64_t sub_21DE9A828()
{
  result = qword_27CE94708;
  if (!qword_27CE94708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94708);
  }

  return result;
}

uint64_t sub_21DE9A87C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DE9A8C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7469547473696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_21DEC7610() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_21DEC7610() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21DEC7610();

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

unint64_t sub_21DE9A9E4()
{
  result = qword_27CE94720;
  if (!qword_27CE94720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94720);
  }

  return result;
}

unint64_t sub_21DE9AA38()
{
  result = qword_27CE94730;
  if (!qword_27CE94730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94730);
  }

  return result;
}

uint64_t sub_21DE9AA8C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE93E90, &qword_21DECCA40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21DE9AAFC()
{
  result = qword_27CE94740;
  if (!qword_27CE94740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94740);
  }

  return result;
}

unint64_t sub_21DE9AB58()
{
  result = qword_27CE94748;
  if (!qword_27CE94748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94748);
  }

  return result;
}

unint64_t sub_21DE9ABB0()
{
  result = qword_27CE94750;
  if (!qword_27CE94750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94750);
  }

  return result;
}

unint64_t sub_21DE9AC08()
{
  result = qword_27CE94758;
  if (!qword_27CE94758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94758);
  }

  return result;
}

unint64_t sub_21DE9AC60()
{
  result = qword_27CE94760;
  if (!qword_27CE94760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94760);
  }

  return result;
}

unint64_t sub_21DE9ACFC()
{
  result = qword_27CE94778;
  if (!qword_27CE94778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94778);
  }

  return result;
}

unint64_t sub_21DE9AD98()
{
  result = qword_27CE94788;
  if (!qword_27CE94788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94788);
  }

  return result;
}

unint64_t sub_21DE9ADF0()
{
  result = qword_27CE94790;
  if (!qword_27CE94790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94790);
  }

  return result;
}

unint64_t sub_21DE9AE48()
{
  result = qword_27CE94798;
  if (!qword_27CE94798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94798);
  }

  return result;
}

unint64_t sub_21DE9AEA0()
{
  result = qword_27CE947A0;
  if (!qword_27CE947A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947A0);
  }

  return result;
}

unint64_t sub_21DE9AEF8()
{
  result = qword_27CE947A8;
  if (!qword_27CE947A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947A8);
  }

  return result;
}

unint64_t sub_21DE9AF50()
{
  result = qword_27CE947B0;
  if (!qword_27CE947B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947B0);
  }

  return result;
}

unint64_t sub_21DE9AFA8()
{
  result = qword_27CE947B8;
  if (!qword_27CE947B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947B8);
  }

  return result;
}

unint64_t sub_21DE9B000()
{
  result = qword_27CE947C0;
  if (!qword_27CE947C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947C0);
  }

  return result;
}

unint64_t sub_21DE9B058()
{
  result = qword_27CE947C8;
  if (!qword_27CE947C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947C8);
  }

  return result;
}

unint64_t sub_21DE9B0B0()
{
  result = qword_27CE947D0;
  if (!qword_27CE947D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947D0);
  }

  return result;
}

unint64_t sub_21DE9B108()
{
  result = qword_27CE947D8;
  if (!qword_27CE947D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947D8);
  }

  return result;
}

unint64_t sub_21DE9B160()
{
  result = qword_27CE947E0;
  if (!qword_27CE947E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947E0);
  }

  return result;
}

unint64_t sub_21DE9B1B8()
{
  result = qword_27CE947E8;
  if (!qword_27CE947E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE947E8);
  }

  return result;
}

unint64_t sub_21DE9B254()
{
  result = qword_27CE94800;
  if (!qword_27CE94800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94800);
  }

  return result;
}

unint64_t sub_21DE9B2AC()
{
  result = qword_27CE94808;
  if (!qword_27CE94808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94808);
  }

  return result;
}

unint64_t sub_21DE9B304()
{
  result = qword_27CE94810;
  if (!qword_27CE94810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94810);
  }

  return result;
}

unint64_t sub_21DE9B35C()
{
  result = qword_27CE94818;
  if (!qword_27CE94818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94818);
  }

  return result;
}

unint64_t sub_21DE9B3B4()
{
  result = qword_27CE94820;
  if (!qword_27CE94820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94820);
  }

  return result;
}

unint64_t sub_21DE9B40C()
{
  result = qword_27CE94828;
  if (!qword_27CE94828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94828);
  }

  return result;
}

unint64_t sub_21DE9B464()
{
  result = qword_27CE94830;
  if (!qword_27CE94830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94830);
  }

  return result;
}

unint64_t sub_21DE9B4BC()
{
  result = qword_27CE94838;
  if (!qword_27CE94838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94838);
  }

  return result;
}

unint64_t sub_21DE9B514()
{
  result = qword_27CE94840;
  if (!qword_27CE94840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94840);
  }

  return result;
}

unint64_t sub_21DE9B56C()
{
  result = qword_27CE94848;
  if (!qword_27CE94848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94848);
  }

  return result;
}

unint64_t sub_21DE9B5C4()
{
  result = qword_27CE94850;
  if (!qword_27CE94850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94850);
  }

  return result;
}

unint64_t sub_21DE9B61C()
{
  result = qword_27CE94858;
  if (!qword_27CE94858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94858);
  }

  return result;
}

unint64_t sub_21DE9B674()
{
  result = qword_27CE94860;
  if (!qword_27CE94860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94860);
  }

  return result;
}

unint64_t sub_21DE9B6CC()
{
  result = qword_27CE94868;
  if (!qword_27CE94868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94868);
  }

  return result;
}

unint64_t sub_21DE9B724()
{
  result = qword_27CE94870;
  if (!qword_27CE94870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94870);
  }

  return result;
}

unint64_t sub_21DE9B77C()
{
  result = qword_27CE94878;
  if (!qword_27CE94878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94878);
  }

  return result;
}

unint64_t sub_21DE9B7D4()
{
  result = qword_27CE94880;
  if (!qword_27CE94880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94880);
  }

  return result;
}

unint64_t sub_21DE9B82C()
{
  result = qword_27CE94888;
  if (!qword_27CE94888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94888);
  }

  return result;
}

unint64_t sub_21DE9B884()
{
  result = qword_27CE94890;
  if (!qword_27CE94890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94890);
  }

  return result;
}

unint64_t sub_21DE9B8DC()
{
  result = qword_27CE94898;
  if (!qword_27CE94898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94898);
  }

  return result;
}

unint64_t sub_21DE9B934()
{
  result = qword_27CE948A0;
  if (!qword_27CE948A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948A0);
  }

  return result;
}

unint64_t sub_21DE9B98C()
{
  result = qword_27CE948A8;
  if (!qword_27CE948A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948A8);
  }

  return result;
}

unint64_t sub_21DE9BA28()
{
  result = qword_27CE948C0;
  if (!qword_27CE948C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948C0);
  }

  return result;
}

unint64_t sub_21DE9BAC4()
{
  result = qword_27CE948D8;
  if (!qword_27CE948D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948D8);
  }

  return result;
}

unint64_t sub_21DE9BB1C()
{
  result = qword_27CE948E0;
  if (!qword_27CE948E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948E0);
  }

  return result;
}

unint64_t sub_21DE9BB74()
{
  result = qword_27CE948E8;
  if (!qword_27CE948E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948E8);
  }

  return result;
}

unint64_t sub_21DE9BBCC()
{
  result = qword_27CE948F0;
  if (!qword_27CE948F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE948F0);
  }

  return result;
}

unint64_t sub_21DE9BC68()
{
  result = qword_27CE94908;
  if (!qword_27CE94908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94908);
  }

  return result;
}

unint64_t sub_21DE9BCC0()
{
  result = qword_27CE94910;
  if (!qword_27CE94910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94910);
  }

  return result;
}

unint64_t sub_21DE9BD18()
{
  result = qword_27CE94918;
  if (!qword_27CE94918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94918);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 225;
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

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for TextCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
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
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21DE9BF2C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21DE9BF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17SceneIntelligence15TextContentItemC0E4TypeO(void *a1)
{
  if (*a1 >> 62 == 3)
  {
    return (*a1 >> 3) + 6;
  }

  else
  {
    return *a1 >> 61;
  }
}

uint64_t sub_21DE9C120(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 8))
  {
    return (*a1 + 122);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21DE9C17C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_21DE9C1DC(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONSchema.Metadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JSONSchema.Metadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21DE9C670(uint64_t a1)
{
  result = type metadata accessor for EventDateTimeComponents(319);
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

uint64_t getEnumTagSinglePayload for SubEvent.DateTimeElement.Recurrence.Weekday(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SubEvent.DateTimeElement.Recurrence.Weekday(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21DE9D9F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21DE9DA88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Contact.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Contact.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FinancialTransaction.Place(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
    goto LABEL_17;
  }

  if (a2 + 25 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 25) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 25;
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

      return (*a1 | (v4 << 8)) - 25;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 25;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1A;
  v8 = v6 - 26;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinancialTransaction.Place(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 25 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 25) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE7)
  {
    v4 = 0;
  }

  if (a2 > 0xE6)
  {
    v5 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
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
    *result = a2 + 25;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinancialTransaction.Currency(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinancialTransaction.Currency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21DE9EB60()
{
  result = qword_27CE94920;
  if (!qword_27CE94920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94920);
  }

  return result;
}

unint64_t sub_21DE9EBB4()
{
  result = qword_27CE94928;
  if (!qword_27CE94928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94928);
  }

  return result;
}

unint64_t sub_21DE9EC08()
{
  result = qword_27CE94930;
  if (!qword_27CE94930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94930);
  }

  return result;
}

unint64_t sub_21DE9EC5C()
{
  result = qword_27CE94938;
  if (!qword_27CE94938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94938);
  }

  return result;
}

unint64_t sub_21DE9ECB0()
{
  result = qword_27CE94940;
  if (!qword_27CE94940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94940);
  }

  return result;
}

unint64_t sub_21DE9ED04()
{
  result = qword_27CE94948;
  if (!qword_27CE94948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE94948);
  }

  return result;
}

uint64_t sub_21DE9ED58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE943D8, &qword_21DED3400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21DE9EE68(uint64_t a1)
{
  type metadata accessor for VICCTGProcessorBuilder();
  v1 = swift_allocObject();
  sub_21DE9EF84();
  qword_280F7B930 = v1;
}

uint64_t sub_21DE9EEA4()
{
  v0 = swift_allocObject();
  sub_21DE9EF84();
  return v0;
}

uint64_t *sub_21DE9EEDC()
{
  if (qword_280F7B858 != -1)
  {
    swift_once();
  }

  return &qword_280F7B930;
}

uint64_t sub_21DE9EF2C()
{

  return MEMORY[0x2821FE8D8](v0, 169, 7);
}

double sub_21DE9EF84()
{
  *(v0 + 16) = 0xD000000000000039;
  *(v0 + 24) = 0x800000021DEDA2A0;
  *(v0 + 32) = 0xD000000000000024;
  *(v0 + 40) = 0x800000021DEDA2E0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = "{{ specialToken.chat.role.system.default }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.user }}{{ images }}{{ task }}{{ specialToken.chat.component.turnEnd }}{{ specialToken.chat.role.assistant }}";
  *(v0 + 72) = 218;
  *(v0 + 80) = 2;
  *(v0 + 88) = 0xD000000000000017;
  *(v0 + 96) = 0x800000021DEDA310;
  *(v0 + 104) = 0xD000000000000036;
  *(v0 + 112) = 0x800000021DED9470;
  *(v0 + 120) = 1;
  *(v0 + 128) = 1;
  *(v0 + 136) = vdupq_n_s64(0x4085000000000000uLL);
  result = 0.2;
  *(v0 + 152) = xmmword_21DECD070;
  *(v0 + 168) = 0;
  return result;
}

uint64_t sub_21DE9F038()
{
  v1 = *(*v0 + 104);

  return v1;
}

void sub_21DE9F06C(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 128);
  *a1 = *(*v1 + 120);
  *(a1 + 8) = v2;
}

__n128 sub_21DE9F094@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(*v1 + 168);
  result = *(*v1 + 152);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_21DE9F0D0()
{
  v50 = sub_21DEC6D20();
  v48 = *(v50 - 8);
  v1 = MEMORY[0x28223BE20](v50);
  v45[5] = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v45[6] = v45 - v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v45 - v6;
  MEMORY[0x28223BE20](v5);
  v47 = v45 - v8;
  v49 = sub_21DEC6E00();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v11 = v0[1];
  v46 = v0;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  v45[7] = v7;
  if (v13)
  {
    v14 = 15;
    while (1)
    {
      v16 = sub_21DEC6FF0();
      v17 = v15;
      if (v16 == 91 && v15 == 0xE100000000000000)
      {
        break;
      }

      if ((sub_21DEC7610() & 1) != 0 || v16 == 123 && v17 == 0xE100000000000000)
      {
        break;
      }

      v18 = sub_21DEC7610();

      if (v18)
      {
        goto LABEL_14;
      }

      v14 = sub_21DEC6EB0();
      if (4 * v13 == v14 >> 14)
      {
        v14 = 0;
LABEL_14:
        v19 = v18 ^ 1;
        goto LABEL_17;
      }
    }

    v19 = 0;
  }

  else
  {
    v14 = 0;
    v19 = 1;
  }

LABEL_17:
  v20 = 7;
  if (((v11 >> 60) & ((v12 & 0x800000000000000) == 0)) != 0)
  {
    v20 = 11;
  }

  v21 = v20 | (v13 << 16);
  while (1)
  {
    if (!(v21 >> 14))
    {
      goto LABEL_29;
    }

    v21 = sub_21DEC6EC0();
    v25 = sub_21DEC6FF0();
    v26 = v24;
    if (v25 == 93 && v24 == 0xE100000000000000)
    {
      break;
    }

    if ((sub_21DEC7610() & 1) != 0 || v25 == 125 && v26 == 0xE100000000000000)
    {
      break;
    }

    v22 = sub_21DEC7610();

    if (v22)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  if (v19)
  {
LABEL_29:
    v58 = v12;
    v59 = v11;

    v27 = v11;
    v28 = v48;
    goto LABEL_32;
  }

  v28 = v48;
  if (v21 >> 14 >= v14 >> 14)
  {
    sub_21DEC6EB0();
    v29 = sub_21DEC7010();
    v12 = MEMORY[0x223D4B1D0](v29);
    v27 = v30;

    v58 = v12;
    v59 = v27;
LABEL_32:

    sub_21DEC6DF0();
    v31 = sub_21DEC6DC0();
    v33 = v32;

    v34 = v51 + 8;
    (*(v51 + 8))(v10, v49);
    v35 = v50;
    if (v33 >> 60 == 15)
    {
      v36 = sub_21DEBD248();
      (*(v28 + 16))(v47, v36, v35);
      v37 = sub_21DEC6D00();
      v38 = sub_21DEC71B0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_21DE0D000, v37, v38, "Cannot get data from string", v39, 2u);
        MEMORY[0x223D4D340](v39, -1, -1);
      }

      (*(v28 + 8))(v47, v35);
      goto LABEL_41;
    }

    v51 = v34;
    sub_21DEBC9D4(v31, v33);

    sub_21DEA091C(v31, v33);
    v40 = sub_21DEA0770(v31, v33);
    if (v41)
    {
      v12 = v40;
      v27 = v41;
      sub_21DE56358(v31, v33);
      sub_21DE56358(v31, v33);
LABEL_41:

      v43 = v46;
LABEL_45:
      *v43 = v12;
      v43[1] = v27;
      return result;
    }

    v54 = v31;
    v55 = v33;
    sub_21DEA091C(v31, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94980, &qword_21DED35F8);
    if (swift_dynamicCast())
    {
      sub_21DE5CC84(v52, v56);
      __swift_project_boxed_opaque_existential_1(v56, v57);
      v42 = sub_21DEC7450();
      sub_21DE56358(v31, v33);
      if (v42)
      {
        __swift_project_boxed_opaque_existential_1(v56, v57);
        sub_21DEC7440();
        sub_21DE56358(v31, v33);
        v27 = *(&v52[0] + 1);
        v12 = *&v52[0];
        __swift_destroy_boxed_opaque_existential_0(v56);
        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_0(v56);
    }

    else
    {
      sub_21DE56358(v31, v33);
      v53 = 0;
      memset(v52, 0, sizeof(v52));
      sub_21DEA0970(v52);
    }

    v43 = v46;
    v12 = sub_21DEA054C(v31, v33);
    v27 = v44;
    sub_21DE56358(v31, v33);

    goto LABEL_45;
  }

  __break(1u);
  return result;
}

uint64_t sub_21DE9FCF8()
{
  v1 = v0;
  v59 = *v0;
  v60 = v0[1];

  result = sub_21DEC6F40();
  if (v3)
  {
    v4 = result;
    v5 = v3;
    v6 = 0;
    v57 = 0;
    v7 = MEMORY[0x277D84F90];
    v8 = 32;
    v9 = MEMORY[0x277D84F90];
    v10 = 0xE100000000000000;
    while (1)
    {
      if (__OFADD__(v6, 1))
      {
        goto LABEL_111;
      }

      if (v4 == 123 && v5 == 0xE100000000000000)
      {
        break;
      }

      v18 = sub_21DEC7610();
      v19 = v4 == 91 && v5 == 0xE100000000000000;
      v20 = v19;
      if (v18 & 1) != 0 || v20 || (sub_21DEC7610())
      {
        break;
      }

      if (v4 == 34 && v5 == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0)
      {
        if (v8 == 92 && v10 == 0xE100000000000000)
        {

          v10 = 0xE100000000000000;
          v4 = 92;
          goto LABEL_4;
        }

        if ((sub_21DEC7610() & 1) == 0)
        {

          v21 = *(v7 + 2);
          if (!v21 || ((v22 = &v7[16 * v21 + 16], *v22 != 34) || *(v22 + 1) != 0xE100000000000000) && (sub_21DEC7610() & 1) == 0)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_21DE56438(0, v21 + 1, 1, v7);
            }

            v36 = *(v7 + 2);
            v35 = *(v7 + 3);
            if (v36 >= v35 >> 1)
            {
              v7 = sub_21DE56438((v35 > 1), v36 + 1, 1, v7);
            }

            *(v7 + 2) = v36 + 1;
            v37 = &v7[16 * v36];
            *(v37 + 4) = 34;
            *(v37 + 5) = 0xE100000000000000;
            v10 = v5;
            goto LABEL_4;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v23 = *(v7 + 2);
            if (!v23)
            {
              goto LABEL_112;
            }
          }

          else
          {
            result = sub_21DE56B38(v7);
            v7 = result;
            v23 = *(result + 16);
            if (!v23)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_74;
        }

        goto LABEL_3;
      }

      if (v4 != 125 || v5 != 0xE100000000000000)
      {
        v32 = sub_21DEC7610();
        v33 = v4 == 93 && v5 == 0xE100000000000000;
        v34 = v33;
        if ((v32 & 1) == 0 && !v34 && (sub_21DEC7610() & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v58 = v1;
      v25 = v7 + 16;
      v24 = *(v7 + 2);
      if (v24 && ((v26 = &v25[2 * v24], *v26 == 34) && v26[1] == 0xE100000000000000 || (sub_21DEC7610() & 1) != 0) || (v27 = sub_21DE546C0(v4, v5), !v28))
      {

        v4 = v8;
        v1 = v58;
      }

      else
      {
        v29 = v28;
        v30 = v27;

        if (*v25)
        {
          v31 = &v25[2 * *v25];
          if (*v31 == v30 && v29 == v31[1])
          {

LABEL_71:
            if (!*v25)
            {
              goto LABEL_114;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            v1 = v58;
            if (result)
            {
              v23 = *(v7 + 2);
              if (!v23)
              {
                goto LABEL_115;
              }
            }

            else
            {
              result = sub_21DE56B38(v7);
              v7 = result;
              v23 = *(result + 16);
              if (!v23)
              {
                goto LABEL_115;
              }
            }

LABEL_74:
            *(v7 + 2) = v23 - 1;

            v10 = v5;
            goto LABEL_4;
          }

          v38 = sub_21DEC7610();

          if (v38)
          {
            goto LABEL_71;
          }
        }

        else
        {
        }

        if (*v25)
        {
          if (__OFADD__(v6, v57))
          {
            goto LABEL_116;
          }

          if (v6 + v57 >= 1)
          {
            v39 = &v25[2 * *v25];
            v40 = *v39;
            v41 = v39[1];

            sub_21DE546C0(v40, v41);
            v43 = v42;

            if (v43)
            {
              sub_21DEC6EE0();
              sub_21DEC6F20();
            }
          }

          if (__OFADD__(v57++, 1))
          {
            goto LABEL_117;
          }

          if (!*v25)
          {
            goto LABEL_118;
          }

          v1 = v58;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v45 = *(v7 + 2);
            if (!v45)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v7 = sub_21DE56B38(v7);
            v45 = *(v7 + 2);
            if (!v45)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }
          }

          *(v7 + 2) = v45 - 1;
        }

        else
        {
          v1 = v58;
        }

        if (__OFADD__(v6, v57))
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_21DEA0448(0, *(v9 + 2) + 1, 1, v9);
        }

        v47 = *(v9 + 2);
        v46 = *(v9 + 3);
        if (v47 >= v46 >> 1)
        {
          v9 = sub_21DEA0448((v46 > 1), v47 + 1, 1, v9);
        }

        *(v9 + 2) = v47 + 1;
        *&v9[8 * v47 + 32] = v6 + v57;
        v10 = v5;
      }

LABEL_4:
      v8 = v4;
      result = sub_21DEC6F40();
      v4 = result;
      v5 = v11;
      ++v6;
      if (!v11)
      {
        goto LABEL_99;
      }
    }

    v12 = *(v7 + 2);
    if (!v12 || ((v13 = &v7[16 * v12 + 16], *v13 == 34) ? (v14 = *(v13 + 1) == 0xE100000000000000) : (v14 = 0), !v14 && (sub_21DEC7610() & 1) == 0))
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21DE56438(0, *(v7 + 2) + 1, 1, v7);
      }

      v16 = *(v7 + 2);
      v15 = *(v7 + 3);
      if (v16 >= v15 >> 1)
      {
        v7 = sub_21DE56438((v15 > 1), v16 + 1, 1, v7);
      }

      *(v7 + 2) = v16 + 1;
      v17 = &v7[16 * v16];
      *(v17 + 4) = v4;
      *(v17 + 5) = v5;
      v10 = v5;
      goto LABEL_4;
    }

LABEL_3:

    v4 = v8;
    goto LABEL_4;
  }

LABEL_98:
  v9 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
LABEL_99:

  v48 = *(v9 + 2);
  if (v48)
  {
    while (v48 <= *(v9 + 2))
    {
      v49 = v48 - 1;
      sub_21DEC6EE0();
      sub_21DEC6F30();

      v48 = v49;
      if (!v49)
      {
        goto LABEL_102;
      }
    }

    __break(1u);
    goto LABEL_109;
  }

LABEL_102:

  v50 = *(v7 + 2);
  if (!v50)
  {
LABEL_109:

    *v1 = v59;
    v1[1] = v60;
    return result;
  }

  v51 = &v7[16 * v50 + 24];
  while (v50 <= *(v7 + 2))
  {
    v52 = *(v51 - 1);
    v53 = *v51;

    v54 = sub_21DE546C0(v52, v53);
    v56 = v55;

    if (v56)
    {
      MEMORY[0x223D4B290](v54, v56);
    }

    v51 -= 2;
    if (!--v50)
    {
      goto LABEL_109;
    }
  }

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
  return result;
}

Swift::String __swiftcall String.repairedJSON()()
{
  v5 = v0;
  v6 = v1;

  sub_21DE9FCF8();
  v2 = v5;
  v3 = v6;
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

char *sub_21DEA0448(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94990, &qword_21DED61D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_21DEA054C(uint64_t a1, unint64_t a2)
{
  sub_21DEA091C(a1, a2);
  sub_21DEA05F4(a1, a2);
  v4 = sub_21DEC6E60();

  return v4;
}

uint64_t sub_21DEA05B8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21DEC6E60();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_21DEA05F4(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DEC68C0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_21DE5636C(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
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
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_21DE56984(v10, 0);
      v14 = sub_21DEC68A0();
      sub_21DE5636C(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_21DEA0770(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_21DEC6E60();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_21DEC6E60();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_21DEC6780();
  if (a1)
  {
    a1 = sub_21DEC67A0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_21DEC6780() || !__OFSUB__(v5, sub_21DEC67A0()))
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
  sub_21DEC6790();
  return sub_21DEC6E60();
}

uint64_t sub_21DEA091C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21DEA0970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94988, &unk_21DED3600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21DEA09D8()
{
  if (*v0)
  {
    return 0x656C756465686373;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_21DEA0A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEE006E6F69746163;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA0B04(uint64_t a1)
{
  v2 = sub_21DEA7184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA0B40(uint64_t a1)
{
  v2 = sub_21DEA7184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA0B7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DEC7470();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21DEA0BD0@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94998, &qword_21DED3610);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7184();
  result = sub_21DEC77E0();
  if (!v3)
  {
    if (a2)
    {
      type metadata accessor for Identification(0);
      v31 = 0;
      sub_21DEA7218(&qword_27CE949A8, type metadata accessor for Identification, &unk_21DED43C0);
      v12 = sub_21DEC7510();
      v13 = v32;
      v14 = (*(*v32 + 120))(v12);
      if (v14)
      {
        if (v14 == 2)
        {
          type metadata accessor for ParkingLocation();
          v15 = (*(*v13 + 192))();
          v17 = v16;
          v18 = sub_21DE60F18();
          v20 = ParkingLocation.__allocating_init(spotID:zoneID:)(v18, v19, v15, v17);

          result = (*(v8 + 8))(v10, v7);
          v21 = v20 | 0x6000000000000000;
        }

        else
        {
          (*(v8 + 8))(v10, v7);

          v21 = 0xF000000000000007;
        }
      }

      else
      {
        v30 = type metadata accessor for Wifi();
        v24 = (*(*v13 + 144))(v30);
        v26 = v25;
        v27 = (*(*v13 + 168))();
        v29 = Wifi.__allocating_init(ssid:password:)(v24, v26, v27, v28);

        result = (*(v8 + 8))(v10, v7);
        v21 = v29 | 0x4000000000000000;
      }

      *a3 = v21;
    }

    else
    {
      type metadata accessor for Schedule(0);
      v31 = 1;
      sub_21DEA7218(&qword_27CE949B0, type metadata accessor for Schedule, &unk_21DED44F0);
      sub_21DEC7510();
      v22 = v32;
      type metadata accessor for Event();
      v23 = sub_21DEA0FD4(v22);
      result = (*(v8 + 8))(v10, v7);
      *a3 = v23;
    }
  }

  return result;
}

uint64_t sub_21DEA0FD4(uint64_t a1)
{
  v96 = MEMORY[0x277D84F90];
  v1 = (*(*a1 + 128))(a1);
  if (v1 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v1 = v44)
  {
    v3 = 0;
    v84 = v1 & 0xC000000000000001;
    v82 = v1;
    v80 = v1 + 32;
    v81 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v83 = i;
    while (v84)
    {
      v1 = MEMORY[0x223D4B690](v3, v82);
      v11 = v1;
      v12 = __OFADD__(v3, 1);
      v13 = v3 + 1;
      if (v12)
      {
        goto LABEL_48;
      }

LABEL_14:
      v93 = 0x2D30302D30303030;
      v94 = 0xEB00000000543030;
      v14 = (*(*v11 + 144))();
      MEMORY[0x223D4B2A0](v14);

      v89 = v93;
      v91 = v94;
      v93 = 0x2D30302D30303030;
      v94 = 0xEB00000000543030;
      v16 = (*(*v11 + 168))(v15);
      MEMORY[0x223D4B2A0](v16);

      v17 = v94;
      v86 = v11;
      v87 = v93;
      v85 = v13;
      if (v4 >> 62)
      {
        v1 = sub_21DEC7400();
        v18 = v1;
        if (!v1)
        {
LABEL_4:
          type metadata accessor for SubEvent.DateTimeElement.Recurrence();
          LOBYTE(v93) = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949B8, &qword_21DED3618);
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_21DECCA20;
          (*(*v86 + 120))();
          v6 = sub_21DE60F18();
          v8 = SubEvent.DateTimeElement.Recurrence.__allocating_init(frequency:daysOfTheWeek:recurrenceEndDate:)(&v93, v5, v6, v7);
          type metadata accessor for SubEvent.DateTimeElement(0);

          SubEvent.DateTimeElement.__allocating_init(startDate:endDate:recurrence:)(v89, v91, v87, v17, v8);

          MEMORY[0x223D4B3E0](v9);
          if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DEC7080();
          }

          sub_21DEC70A0();

          v4 = v96;
          v10 = v83;
          goto LABEL_7;
        }
      }

      else
      {
        v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      v19 = 0;
      v20 = v4 & 0xC000000000000001;
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v20)
        {
          v1 = MEMORY[0x223D4B690](v19, v4);
          v22 = v1;
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v19 >= *(v21 + 16))
          {
            goto LABEL_47;
          }

          v22 = *(v4 + 8 * v19 + 32);

          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        v24 = v4;
        if ((*(*v22 + 120))() == v89 && v25 == v91)
        {
        }

        else
        {
          v27 = sub_21DEC7610();

          if ((v27 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        if ((*(*v22 + 144))(v28) == v87 && v29 == v17)
        {
          break;
        }

        v31 = sub_21DEC7610();

        if (v31)
        {
          goto LABEL_38;
        }

LABEL_17:

        ++v19;
        v4 = v24;
        if (v23 == v18)
        {
          goto LABEL_4;
        }
      }

LABEL_38:

      v33 = *(*v22 + 216);
      v34 = v33(v32);
      (*(*v86 + 120))(&v95);
      v92 = v95;
      v35 = (*(*v34 + 152))(&v93);
      v37 = v36;
      v38 = *v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_21DEA6C74(0, *(v38 + 2) + 1, 1, v38);
        *v37 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_21DEA6C74((v40 > 1), v41 + 1, 1, v38);
        *v37 = v38;
      }

      v10 = v83;
      *(v38 + 2) = v41 + 1;
      v38[v41 + 32] = v92;
      v35(&v93, 0);

      v43 = v33(v42);
      LOBYTE(v93) = 1;
      (*(*v43 + 120))(&v93);

      v4 = v24;
LABEL_7:
      v3 = v85;
      if (v85 == v10)
      {

        goto LABEL_52;
      }
    }

    if (v3 >= *(v81 + 16))
    {
      goto LABEL_49;
    }

    v11 = *(v80 + 8 * v3);

    v12 = __OFADD__(v3, 1);
    v13 = v3 + 1;
    if (!v12)
    {
      goto LABEL_14;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v44 = v1;
    i = sub_21DEC7400();
  }

  v4 = MEMORY[0x277D84F90];
LABEL_52:
  type metadata accessor for SubEvent();
  v45 = (*(*a1 + 104))();
  v47 = v46;
  v48 = sub_21DE88FDC(v45);
  v49 = sub_21DE60F18();
  v51 = v50;
  v52 = sub_21DE60F18();
  v54 = v53;
  v55 = sub_21DE60F18();
  v57 = SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(v45, v47, v48, v49, v51, v52, v54, v55, v56);
  v58 = sub_21DE8A7D0();
  v59 = (*(v78 + 160))(v57, v58);
  if (v4 >> 62)
  {
    result = sub_21DEC7400();
    if (result == 1)
    {
      goto LABEL_54;
    }

LABEL_59:
    if (v4 >> 62)
    {
      result = sub_21DEC7400();
      v63 = result;
      if (!result)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v63 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v63)
      {
        goto LABEL_72;
      }
    }

    if (v63 < 1)
    {
      goto LABEL_75;
    }

    v64 = 0;
    v88 = v4 & 0xC000000000000001;
    v90 = v4;
    do
    {
      if (v88)
      {
        v65 = MEMORY[0x223D4B690](v64, v4);
      }

      else
      {
        v65 = *(v4 + 8 * v64 + 32);
      }

      v66 = sub_21DE60F18();
      v68 = v67;
      v69 = sub_21DE60F18();
      v71 = v70;
      v72 = sub_21DE60F18();
      v74 = v73;
      v75 = sub_21DE60F18();
      SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(v66, v68, v65, v69, v71, v72, v74, v75, v76);
      v77 = swift_beginAccess();
      MEMORY[0x223D4B3E0](v77);
      if (*((*(v59 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v59 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DEC7080();
      }

      ++v64;
      sub_21DEC70A0();
      swift_endAccess();

      v4 = v90;
    }

    while (v63 != v64);
LABEL_72:

    goto LABEL_73;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_59;
  }

LABEL_54:
  result = swift_beginAccess();
  v61 = *(v59 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {

    v62 = MEMORY[0x223D4B690](0, v4);
    goto LABEL_57;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v62 = *(v4 + 32);

LABEL_57:
    (*(*v61 + 152))(v62);

LABEL_73:

    return v59;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_21DEA1924(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696669746E656469;
  }

  else
  {
    v3 = 0x656C756465686373;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEE006E6F69746163;
  }

  if (*a2)
  {
    v5 = 0x696669746E656469;
  }

  else
  {
    v5 = 0x656C756465686373;
  }

  if (*a2)
  {
    v6 = 0xEE006E6F69746163;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21DEC7610();
  }

  return v8 & 1;
}

uint64_t sub_21DEA19D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1766222167;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x676E696B726150;
    }

    else
    {
      v4 = 0x726568744FLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x72656B636F4CLL;
    }

    else
    {
      v4 = 1766222167;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x676E696B726150;
  if (a2 != 2)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v2 = 0x72656B636F4CLL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21DEC7610();
  }

  return v11 & 1;
}

uint64_t sub_21DEA1B04()
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA1B94(uint64_t a1)
{
  sub_21DEC6E90();
}

uint64_t sub_21DEA1C10(uint64_t a1)
{
  sub_21DEC7770();
  sub_21DEC6E90();

  return sub_21DEC77B0();
}

uint64_t sub_21DEA1C9C@<X0>(char *a2@<X8>)
{
  v3 = sub_21DEC7470();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_21DEA1CFC(uint64_t *a1@<X8>)
{
  v2 = 0x656C756465686373;
  if (*v1)
  {
    v2 = 0x696669746E656469;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEE006E6F69746163;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21DEA1D58@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_21DEA6E60(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_21DEA1D88(uint64_t a1, unint64_t a2)
{
  v4 = sub_21DEC6770();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = a2;
  sub_21DEC6750();
  v36 = sub_21DE531EC();
  v8 = sub_21DEC7220();
  v9 = *(v5 + 8);
  v37 = v5 + 8;
  v38 = v4;
  v35 = v9;
  v9(v7, v4);

  v10 = *(v8 + 16);
  if (!v10)
  {

    v11 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_10:
    v22 = 0;
    v32 = 0;
    v33 = 0;
    v23 = 0xE000000000000000;
    v21 = 0xE000000000000000;
    goto LABEL_11;
  }

  v39 = MEMORY[0x277D84F90];
  sub_21DE52560(0, v10, 0);
  v11 = v39;
  v33 = v8;
  v12 = (v8 + 40);
  do
  {
    v13 = *v12;
    v40 = *(v12 - 1);
    v41 = v13;

    sub_21DEC6740();
    v14 = sub_21DEC7230();
    v16 = v15;
    v35(v7, v38);

    v39 = v11;
    v18 = v11[2];
    v17 = v11[3];
    if (v18 >= v17 >> 1)
    {
      sub_21DE52560((v17 > 1), v18 + 1, 1);
      v11 = v39;
    }

    v11[2] = v18 + 1;
    v19 = &v11[2 * v18];
    v19[4] = v14;
    v19[5] = v16;
    v12 += 2;
    --v10;
  }

  while (v10);

  v20 = v11[2];
  if (!v20)
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = v11[5];
  v33 = v11[4];

  if (v20 == 1)
  {
    v22 = 0;
    v32 = 0;
    v20 = 0;
    v23 = 0xE000000000000000;
LABEL_11:
    v24 = 0xE000000000000000;
LABEL_12:
    v25 = 0xE000000000000000;
    goto LABEL_13;
  }

  v24 = v11[7];
  v32 = v11[6];

  if (v20 < 3)
  {
    v22 = 0;
    v20 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_12;
  }

  v22 = v11[8];
  v23 = v11[9];

  if (v20 == 3)
  {
    v20 = 0;
    goto LABEL_12;
  }

  v20 = v11[10];
  v25 = v11[11];

LABEL_13:

  v40 = v22;
  v41 = v23;
  sub_21DEC6740();
  v26 = sub_21DEC7220();
  v35(v7, v38);

  v27 = v26[2];
  if (v27)
  {
    v28 = v26[4];
    v29 = v26[5];

    if (v27 == 1)
    {
      v27 = 0;
      v30 = 0xE000000000000000;
    }

    else
    {
      v27 = v26[6];
      v30 = v26[7];
    }
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    v30 = 0xE000000000000000;
  }

  return (*(v34 + 264))(v33, v21, v32, v24, v28, v29, v27, v30, v20, v25);
}

uint64_t sub_21DEA214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x54746361746E6F63 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DEA21D8(uint64_t a1)
{
  v2 = sub_21DEA7260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA2214(uint64_t a1)
{
  v2 = sub_21DEA7260();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DEA2250(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949C0, &qword_21DED3620);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7260();
  sub_21DEC77E0();
  if (!v1)
  {
    v7 = sub_21DEC74A0();
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_21DEA2390()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x6C69616D65;
  }
}

uint64_t sub_21DEA23C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C69616D65 && a2 == 0xE500000000000000;
  if (v6 || (sub_21DEC7610() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21DEC7610();

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

uint64_t sub_21DEA2498(uint64_t a1)
{
  v2 = sub_21DEA72B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA24D4(uint64_t a1)
{
  v2 = sub_21DEA72B4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21DEA2548(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949D0, &qword_21DED3628);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA72B4();
  sub_21DEC77E0();
  if (!v2)
  {
    v15[15] = a2;
    v10 = sub_21DEC74A0();
    if (v11)
    {
      v13 = v10;
      v14 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE93F30, &qword_21DECD040);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21DECCA20;
      *(v9 + 32) = v13;
      *(v9 + 40) = v14;
    }

    else
    {
      v9 = 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

unint64_t sub_21DEA2700()
{
  v1 = 0x74756F6261;
  v2 = 0x65746144646E65;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x7461447472617473;
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

uint64_t sub_21DEA2780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21DEA7308(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21DEA27A8(uint64_t a1)
{
  v2 = sub_21DEA7478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA27E4(uint64_t a1)
{
  v2 = sub_21DEA7478();

  return MEMORY[0x2821FE720](a1, v2);
}

char *sub_21DEA2820(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94250, &qword_21DED0EB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v76 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v71 - v5;
  v7 = type metadata accessor for EventDateTimeComponents(0);
  v77 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949E0, &qword_21DED3630);
  v79 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7478();
  v16 = v80;
  result = sub_21DEC77E0();
  if (!v16)
  {
    v74 = v7;
    v75 = v12;
    v80 = v6;
    v73 = v10;
    LOBYTE(v81[0]) = 0;
    v18 = sub_21DEC74A0();
    v20 = v78;
    if (v19)
    {
      v21 = v18;
      v22 = v19;
      v23 = (*(*v78 + 96))();
      (*(*v23 + 128))(v21, v22);
    }

    LOBYTE(v81[0]) = 1;
    v24 = sub_21DEC74A0();
    if (v25)
    {
      v26 = v25;
      v27 = v24;
      v28 = (*(*v20 + 96))();
      v72 = (*(*v28 + 144))(v28);

      v29 = v80;
      EventDateTimeComponents.init(string:)(v27, v26, v80);
      (*(v77 + 56))(v29, 0, 1, v74);
      v30 = v75;
      sub_21DE77A74(v29, v75);
      (*(*v72 + 176))(v30);
    }

    LOBYTE(v81[0]) = 2;
    v31 = sub_21DEC74A0();
    if (v32)
    {
      v33 = v32;
      v34 = v31;
      v35 = (*(*v20 + 96))();
      v36 = (*(*v35 + 144))();

      v37 = v76;
      EventDateTimeComponents.init(string:)(v34, v33, v76);
      (*(v77 + 56))(v37, 0, 1, v74);
      v38 = v73;
      sub_21DE77A74(v37, v73);
      (*(*v36 + 200))(v38);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE949F0, &qword_21DED3638);
    v82 = 3;
    sub_21DEA74CC();
    sub_21DEC74E0();
    v39 = v81[0];
    v40 = v79;
    if (v81[0])
    {
      v41 = v81[0] >> 62;
      if (v81[0] >> 62)
      {
        v69 = v81[0];
        v70 = sub_21DEC7400();
        v39 = v69;
        v40 = v79;
        v43 = v70 == 1;
        if (v70 >= 1)
        {
LABEL_14:
          if (!v43)
          {
            v71 = 0;
            if (v41)
            {
              v48 = v39;
              v49 = sub_21DEC7400();
              v39 = v48;
              v47 = v49;
            }

            else
            {
              v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (!v47)
            {
LABEL_32:

              return (*(v79 + 8))(v15, v13);
            }

            v50 = v39;
            result = type metadata accessor for SubEvent();
            v80 = result;
            if (v47 >= 1)
            {
              v51 = 0;
              v52 = *(*v20 + 136);
              v73 = (*v20 + 136);
              v74 = v52;
              v53 = v50;
              v72 = v50 & 0xC000000000000001;
              v76 = v50;
              v77 = v13;
              v75 = v47;
              do
              {
                if (v72)
                {
                  v54 = MEMORY[0x223D4B690](v51, v53);
                }

                else
                {
                  v54 = *&v53[8 * v51 + 32];
                }

                v55 = sub_21DE60F18();
                v57 = v56;
                v58 = sub_21DE60F18();
                v60 = v59;
                v61 = sub_21DE60F18();
                v63 = v62;
                v64 = sub_21DE60F18();
                SubEvent.__allocating_init(title:dateTimeElement:location:notes:url:)(v55, v57, v54, v58, v60, v61, v63, v64, v65);
                v66 = v74(v81);
                v68 = v67;
                MEMORY[0x223D4B3E0](v66);
                if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_21DEC7080();
                }

                ++v51;
                sub_21DEC70A0();
                v66(v81, 0);

                v53 = v76;
                v13 = v77;
              }

              while (v75 != v51);
              goto LABEL_32;
            }

            goto LABEL_37;
          }

          v44 = v39;
          result = (*(*v20 + 96))();
          v45 = result;
          if ((v44 & 0xC000000000000001) != 0)
          {
            v46 = MEMORY[0x223D4B690](0, v44);
          }

          else
          {
            if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_37:
              __break(1u);
              return result;
            }

            v46 = *(v44 + 4);
          }

          (*(*v45 + 152))(v46);

          return (*(v79 + 8))(v15, v13);
        }
      }

      else
      {
        v42 = *((v81[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        v43 = v42 == 1;
        if (v42 >= 1)
        {
          goto LABEL_14;
        }
      }

      (*(v40 + 8))(v15, v13);
    }

    return (*(v79 + 8))(v15, v13);
  }

  return result;
}

uint64_t sub_21DEA31E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657461437473696CLL && a2 == 0xEC00000079726F67)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DEA326C(uint64_t a1)
{
  v2 = sub_21DEA7580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA32A8(uint64_t a1)
{
  v2 = sub_21DEA7580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21DEA32E4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A00, &qword_21DED3640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA7580();
  result = sub_21DEC77E0();
  if (!v1)
  {
    v8 = sub_21DEC74A0();
    if (!v9)
    {
      v8 = 0;
      v9 = 0xE000000000000000;
    }

    ItemList.Category.init(rawValue:)(*&v8);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_21DEA344C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369725074696E75 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21DEC7610();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21DEA34DC(uint64_t a1)
{
  v2 = sub_21DEA75D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21DEA3518(uint64_t a1)
{
  v2 = sub_21DEA75D4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_21DEA3554(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE94A10, &qword_21DED3648);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21DEA75D4();
  sub_21DEC77E0();
  if (!v2)
  {
    v10 = sub_21DEC74C0();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    v13 = *&v10;
    if (v12)
    {
      v13 = 0.0;
    }

    return v13 * a2;
  }

  return result;
}