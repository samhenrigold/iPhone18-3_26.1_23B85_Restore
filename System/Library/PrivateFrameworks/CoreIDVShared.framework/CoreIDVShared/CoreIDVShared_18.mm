id URL.isFileOnDisk.getter(uint64_t a1)
{
  sub_225CCCE54();
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_225CCE444();

  v3 = [v1 fileExistsAtPath_];

  return v3;
}

id Data.formattedSize.getter(uint64_t a1, unint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  [v4 setAllowedUnits_];
  result = [v4 setCountStyle_];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v7 = 0;
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
LABEL_10:
    v10 = [v4 stringFromByteCount_];
    v11 = sub_225CCE474();

    return v11;
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v7 = HIDWORD(a1) - a1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t optionalMax<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a4;
  v35 = a2;
  v8 = sub_225CCEFC4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v31 - v14;
  v16 = *(a3 - 8);
  v17 = MEMORY[0x28223BE20](v13);
  v32 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v34 = &v31 - v19;
  v20 = *(v9 + 16);
  v20(v15, a1, v8);
  v36 = v16;
  v21 = *(v16 + 48);
  if (v21(v15, 1, a3) == 1)
  {
    (*(v9 + 8))(v15, v8);
    return (v20)(a5, v35, v8);
  }

  else
  {
    v31 = a5;
    v23 = v15;
    v24 = *(v36 + 32);
    v24(v34, v23, a3);
    v20(v12, v35, v8);
    if (v21(v12, 1, a3) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v25 = v31;
      v24(v31, v34, a3);
      return (*(v36 + 56))(v25, 0, 1, a3);
    }

    else
    {
      v26 = v32;
      v24(v32, v12, a3);
      v27 = v31;
      v28 = v34;
      sub_225CCFAA4();
      v29 = v36;
      v30 = *(v36 + 8);
      v30(v26, a3);
      v30(v28, a3);
      return (*(v29 + 56))(v27, 0, 1, a3);
    }
  }
}

uint64_t Sequence.asyncMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v6[9] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[10] = AssociatedTypeWitness;
  v6[11] = *(AssociatedTypeWitness - 8);
  v6[12] = swift_task_alloc();
  sub_225CCEFC4();
  v6[13] = swift_task_alloc();
  v6[14] = *(a3 - 8);
  v6[15] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B3B090, 0, 0);
}

uint64_t sub_225B3B090()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_225CCE274();
  (*(v2 + 16))(v1, v3, v4);
  sub_225CCE714();
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[19] = v12;
    *v12 = v0;
    v12[1] = sub_225B3B2FC;
    v13 = v0[12];
    v14 = v0[9];

    return v15(v14, v13);
  }
}

uint64_t sub_225B3B2FC()
{
  *(*v1 + 160) = v0;

  if (v0)
  {

    v2 = sub_225B3B670;
  }

  else
  {
    v2 = sub_225B3B418;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B3B418()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_225CCE8B4();
  sub_225CCE8A4();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v0[17] + 8))(v0[18], v0[16]);
    v7 = v0[2];

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v10 = v0[3];
    (*(v0[11] + 32))(v0[12], v0[13], v0[10]);
    v14 = (v10 + *v10);
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = sub_225B3B2FC;
    v12 = v0[12];
    v13 = v0[9];

    return v14(v13, v12);
  }
}

uint64_t sub_225B3B670()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t Sequence.asyncCompactMap<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v9 = sub_225CCEFC4();
  v6[9] = v9;
  v6[10] = *(v9 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = *(a4 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[15] = AssociatedTypeWitness;
  v6[16] = *(AssociatedTypeWitness - 8);
  v6[17] = swift_task_alloc();
  sub_225CCEFC4();
  v6[18] = swift_task_alloc();
  v6[19] = *(a3 - 8);
  v6[20] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[21] = v11;
  v6[22] = *(v11 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B3B9FC, 0, 0);
}

uint64_t sub_225B3B9FC()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[8];
  v4 = v0[5];
  v0[2] = sub_225CCE274();
  (*(v2 + 16))(v1, v3, v4);
  sub_225CCE714();
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v8 = v0[2];

    v9 = v0[1];

    return v9(v8);
  }

  else
  {
    v11 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[24] = v12;
    *v12 = v0;
    v12[1] = sub_225B3BC84;
    v13 = v0[17];
    v14 = v0[11];

    return v15(v14, v13);
  }
}

uint64_t sub_225B3BC84()
{
  *(*v1 + 200) = v0;

  if (v0)
  {

    v2 = sub_225B3C0DC;
  }

  else
  {
    v2 = sub_225B3BDA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B3BDA0()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[6];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  if (v4 == 1)
  {
    v8 = v0[9];
    v9 = v0[10];
    (*(v6 + 8))(v0[17], v0[15]);
    (*(v9 + 8))(v1, v8);
  }

  else
  {
    v11 = v0[13];
    v10 = v0[14];
    (*(v2 + 32))(v10, v1, v3);
    (*(v2 + 16))(v11, v10, v3);
    sub_225CCE8B4();
    sub_225CCE8A4();
    (*(v2 + 8))(v10, v3);
    (*(v6 + 8))(v5, v7);
  }

  v12 = v0[18];
  v13 = v0[15];
  v14 = v0[16];
  swift_getAssociatedConformanceWitness();
  sub_225CCF014();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v0[22] + 8))(v0[23], v0[21]);
    v15 = v0[2];

    v16 = v0[1];

    return v16(v15);
  }

  else
  {
    v18 = v0[3];
    (*(v0[16] + 32))(v0[17], v0[18], v0[15]);
    v22 = (v18 + *v18);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_225B3BC84;
    v20 = v0[17];
    v21 = v0[11];

    return v22(v21, v20);
  }
}

uint64_t sub_225B3C0DC()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[17], v0[15]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_225B3C1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  (*(v7 + 16))(v10, a1, AssociatedTypeWitness);
  sub_225CCEC34();
  v13 = sub_225CCEC24();
  (*(v7 + 8))(v12, AssociatedTypeWitness);
  return v13 & 1;
}

uint64_t Array.chunked(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 1)
  {
    sub_225CCE8B4();
    sub_225CCF834();
    swift_allocObject();
    v11 = sub_225CCE834();
    *v12 = a2;
    sub_225CCE8B4();

    return v11;
  }

  else
  {
    v13[7] = 0;
    v14 = sub_225CCE894();
    v15 = a1;
    MEMORY[0x28223BE20](v14);
    v13[2] = a3;
    v13[3] = a2;
    v13[4] = a1;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9D8, &qword_225CEF1E8);
    v7 = sub_225CCE8B4();
    v8 = sub_2259D8B24(&qword_27D73D9E0, &qword_27D73D9D8, &qword_225CEF1E8, MEMORY[0x277D84EF8]);
    return sub_225B3C588(sub_225B3D9AC, v13, v6, v7, MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
  }
}

uint64_t *sub_225B3C4B4@<X0>(uint64_t *result@<X0>, uint64_t a3@<X2>, uint64_t **a5@<X8>)
{
  v5 = *result;
  v6 = *result + a3;
  if (__OFADD__(*result, a3))
  {
    __break(1u);
  }

  else
  {
    result = sub_225CCE894();
    if (result >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= v5)
    {
      sub_225CCE8D4();
      sub_225CCF0C4();
      swift_getWitnessTable();
      result = sub_225CCE8C4();
      *a5 = result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225B3C588(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v42 - v18;
  v19 = sub_225CCEFC4();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v55 = *(a3 - 1);
  MEMORY[0x28223BE20](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v31 = &v42 - v30;
  v32 = sub_225CCE724();
  v63 = sub_225CCF3D4();
  v58 = sub_225CCF3E4();
  sub_225CCF384();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_225CCE714();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_225CCF014();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_225CCF3C4();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_225CCF014();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_225CCF3C4();
      sub_225CCF014();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

Swift::Bool __swiftcall NSError.userInfoBool(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = [v2 userInfo];
  v6 = sub_225CCE2D4();

  if (*(v6 + 16) && (v7 = sub_2259F18D4(countAndFlagsBits, object), (v8 & 1) != 0))
  {
    sub_2259CB810(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
  }

  return 0;
}

Swift::Bool __swiftcall Error.userInfoBool(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = *(v1 - 8);
  MEMORY[0x28223BE20](a1._countAndFlagsBits);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v7, v8);
  v9 = sub_225CCF8E4();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v7, v2);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v11, v7, v2);
  }

  v12 = sub_225CCCCB4();

  v13 = [v12 userInfo];
  v14 = sub_225CCE2D4();

  if (*(v14 + 16) && (v15 = sub_2259F18D4(countAndFlagsBits, object), (v16 & 1) != 0))
  {
    sub_2259CB810(*(v14 + 56) + 32 * v15, v19);

    if (swift_dynamicCast())
    {
      return v18[15];
    }
  }

  else
  {
  }

  return 0;
}

float CGRect.area.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  Width = CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  return Width * CGRectGetHeight(v10);
}

Swift::Double __swiftcall Double.addingRandomInterval(within:)(Swift::Double within)
{
  if (within < 0.0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = within;
  if ((*&within & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return within;
  }

  v3 = v1;
  v4 = sub_225B3D47C(0x20000000000001uLL);
  v5 = vcvtd_n_f64_u64(v4, 0x35uLL) * v2 + 0.0;
  if (v4 == 0x20000000000000)
  {
    v5 = v2;
  }

  return v5 + v3;
}

uint64_t Double.formattedRounded.getter(double a1)
{
  v24 = sub_225CCF8F4();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_225CCCD84();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9E8, &qword_225CEF1F0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v25 = a1;
  sub_225CCD164();
  v22 = sub_225B3D9D0();
  sub_225CCCD14();
  sub_225CCCD74();
  MEMORY[0x22AA6B570](v7, v9);
  (*(v5 + 8))(v7, v23);
  v19 = *(v10 + 8);
  v19(v13, v9);
  v20 = v24;
  (*(v2 + 104))(v4, *MEMORY[0x277D84678], v24);
  MEMORY[0x22AA6B560](v4, 0, 1, v9);
  (*(v2 + 8))(v4, v20);
  v19(v16, v9);
  sub_2259D8B24(&qword_27D73D9F8, &qword_27D73D9E8, &qword_225CEF1F0, MEMORY[0x277CC9168]);
  sub_225CCE2A4();
  v19(v18, v9);
  return v26;
}

_BYTE *sub_225B3D3E8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_225A6D08C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2259D8390(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2259D840C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unint64_t sub_225B3D47C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AA6F970](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AA6F970](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_225B3D508(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      sub_225CCF4E4();
      sub_2259D8718(0, &qword_27D73AC58, 0x277CF39D8);
      swift_dynamicCast();
      swift_dynamicCast();
      *a1 = v13;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (sub_225CCF4A4() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_225CCF4B4();
  sub_2259D8718(0, &qword_27D73AC58, 0x277CF39D8);
  swift_dynamicCast();
  a2 = sub_2259F1A58(v13);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v10 = *(*(a5 + 48) + 8 * a2);
  v11 = *(*(a5 + 56) + 8 * a2);
  *a1 = v11;
  v10;
  v12 = v11;
}

id sub_225B3D6D8(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_2259CB810(*(a5 + 56) + 32 * a2, result);

  return v6;
}

uint64_t sub_225B3D78C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225B35EA0(a1, v4);
}

uint64_t sub_225B3D834(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2259FE39C;

  return sub_225A0047C(v6, a1, a2, v8, v7);
}

unint64_t sub_225B3D8F8()
{
  result = qword_27D73D9C0;
  if (!qword_27D73D9C0)
  {
    sub_225CCD0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D9C0);
  }

  return result;
}

uint64_t sub_225B3D950(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_225B3D9D0()
{
  result = qword_27D73D9F0;
  if (!qword_27D73D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D9F0);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s13CoreIDVShared20withExtendedLifetimeyq0_x_q0_yYaYbq_YKXEtYaq_YKs5ErrorR_Ri_zRi_0_r1_lF(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a2;
  v8[3] = a5;
  v8[8] = *(a6 - 8);
  v11 = swift_task_alloc();
  v8[9] = v11;
  v14 = (a3 + *a3);
  v12 = swift_task_alloc();
  v8[10] = v12;
  *v12 = v8;
  v12[1] = sub_225B3DC48;

  return v14(a1, v11);
}

uint64_t sub_225B3DC48()
{

  if (v0)
  {
    v1 = sub_225B3DE08;
  }

  else
  {
    v1 = sub_225B3DD58;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_225B3DD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_225B3E6CC(v8[2], nullsub_1, 0, v8[3], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], a8);

  v9 = v8[1];

  return v9();
}

uint64_t sub_225B3DE08()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v0[8] + 32))(v0[7], v0[9], v0[4]);
  sub_225B3E6CC(v2, nullsub_1, 0, v1, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v3);

  v4 = v0[1];

  return v4();
}

uint64_t waitForTerminationSignal()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_225B3DFB0;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v1, 0, 0, 0xD00000000000001ALL, 0x8000000225D1DFB0, sub_225B3E0AC, 0, v2);
}

uint64_t sub_225B3DFB0()
{

  return MEMORY[0x2822009F8](sub_225B362D8, 0, 0);
}

uint64_t sub_225B3E0AC(uint64_t a1)
{
  v2 = sub_225CCDA34();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_225CCDA64();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = sub_225CCD964();
  signal(15, v12);
  sub_225B3E3E0();
  v13 = sub_225CCEE24();
  ObjectType = swift_getObjectType();
  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_225B3E644;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_6;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  sub_225A1A044(ObjectType);
  sub_225A1A048();
  sub_225CCEE34();
  _Block_release(v17);
  (*(v21 + 8))(v4, v22);
  (*(v19 + 8))(v7, v20);

  sub_225CCEE64();
  return swift_unknownObjectRelease();
}

unint64_t sub_225B3E3E0()
{
  result = qword_28105B8C8;
  if (!qword_28105B8C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105B8C8);
  }

  return result;
}

uint64_t sub_225B3E42C(uint64_t a1)
{
  v1 = sub_225CCD954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v2 + 16))(v4, &v5[v6], v1);
  os_unfair_lock_unlock(&v5[v7]);
  v8 = sub_225CCD934();
  v9 = sub_225CCECF4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2259A7000, v8, v9, "SIGTERM received; shutting down", v10, 2u);
    MEMORY[0x22AA6F950](v10, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  swift_getObjectType();
  sub_225CCEE44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  return sub_225CCE934();
}

uint64_t sub_225B3E644()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  v1 = *(v0 + 16);

  return sub_225B3E42C(v1);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225B3E6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v14(v13);
  if (v8)
  {
    return (*(v11 + 32))(a8, v13, a5);
  }

  return result;
}

void defaultLogger()(uint64_t a1@<X8>)
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = off_28105B918;
  v3 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v4));
  v5 = sub_225CCD954();
  (*(*(v5 - 8) + 16))(a1, &v2[v3], v5);

  os_unfair_lock_unlock(&v2[v4]);
}

void Logger.sensitive(_:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v2;
    swift_once();
    v2 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v2;
    v3 = sub_225CCE444();
    v4 = [v12 BOOLForKey:v3];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = a1();
    v7 = v6;
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(v5, v7, &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v2 = v13;
  }
}

void sub_225B3EAA4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v20 = v3;
    swift_once();
    v3 = v20;
  }

  if (byte_28105B9F8 == 1)
  {
    v18 = v3;
    v4 = sub_225CCE444();
    v5 = [v18 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v21 = 0xD00000000000001CLL;
    v22 = 0x8000000225D1E300;
    v6 = *(a2 + 8);
    if (v6 >> 60 == 15)
    {
      v7 = 0xE500000000000000;
      v8 = 0x3E6C696E3CLL;
    }

    else
    {
      v9 = *a2;
      sub_2259CB710(*a2, *(a2 + 8));
      v10 = sub_225CCCF84();
      v7 = v11;
      sub_2259B97A8(v9, v6);
      v8 = v10;
    }

    MEMORY[0x22AA6CE70](v8, v7);

    v13 = v21;
    v12 = v22;
    v19 = sub_225CCD934();
    v14 = sub_225CCED04();
    if (os_log_type_enabled(v19, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_2259BE198(v13, v12, &v21);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2259A7000, v19, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA6F950](v16, -1, -1);
      MEMORY[0x22AA6F950](v15, -1, -1);

      return;
    }

    v3 = v19;
  }
}

void sub_225B3ED40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v8 = v0;
    swift_once();
    v0 = v8;
  }

  if (byte_28105B9F8 == 1)
  {
    v6 = v0;
    v1 = sub_225CCE444();
    v2 = [v6 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    v7 = sub_225CCD934();
    v3 = sub_225CCED04();
    if (os_log_type_enabled(v7, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2259BE198(0xD000000000000032, 0x8000000225D1E200, &v9);
      _os_log_impl(&dword_2259A7000, v7, v3, "%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x22AA6F950](v5, -1, -1);
      MEMORY[0x22AA6F950](v4, -1, -1);

      return;
    }

    v0 = v7;
  }
}

void sub_225B3EF24()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v8 = v0;
    swift_once();
    v0 = v8;
  }

  if (byte_28105B9F8 == 1)
  {
    v6 = v0;
    v1 = sub_225CCE444();
    v2 = [v6 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    v7 = sub_225CCD934();
    v3 = sub_225CCED04();
    if (os_log_type_enabled(v7, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_2259BE198(0xD000000000000032, 0x8000000225D1E2C0, &v9);
      _os_log_impl(&dword_2259A7000, v7, v3, "%s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x22AA6F950](v5, -1, -1);
      MEMORY[0x22AA6F950](v4, -1, -1);

      return;
    }

    v0 = v7;
  }
}

void sub_225B3F108(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v20 = v3;
    swift_once();
    v3 = v20;
  }

  if (byte_28105B9F8 == 1)
  {
    v18 = v3;
    v4 = sub_225CCE444();
    v5 = [v18 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v21 = 0xD00000000000001DLL;
    v22 = 0x8000000225D1E280;
    v6 = *(a2 + 8);
    if (v6 >> 60 == 15)
    {
      v7 = 0xE500000000000000;
      v8 = 0x3E6C696E3CLL;
    }

    else
    {
      v9 = *a2;
      sub_2259CB710(*a2, *(a2 + 8));
      v10 = sub_225CCCF84();
      v7 = v11;
      sub_2259B97A8(v9, v6);
      v8 = v10;
    }

    MEMORY[0x22AA6CE70](v8, v7);

    MEMORY[0x22AA6CE70](32, 0xE100000000000000);
    v13 = v21;
    v12 = v22;
    v19 = sub_225CCD934();
    v14 = sub_225CCED04();
    if (os_log_type_enabled(v19, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      v17 = sub_2259BE198(v13, v12, &v21);

      *(v15 + 4) = v17;
      _os_log_impl(&dword_2259A7000, v19, v14, "%s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AA6F950](v16, -1, -1);
      MEMORY[0x22AA6F950](v15, -1, -1);

      return;
    }

    v3 = v19;
  }
}

void Logger.cryptoParam(_:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v2;
    swift_once();
    v2 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v2;
    v3 = sub_225CCE444();
    v4 = [v12 BOOLForKey:v3];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = a1();
    v7 = v6;
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(v5, v7, &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v2 = v13;
  }
}

Swift::String_optional __swiftcall processName()()
{
  if (qword_28105B6C0 != -1)
  {
    swift_once();
  }

  v0 = off_28105B6C8;
  os_unfair_lock_lock(off_28105B6C8 + 8);
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);

  os_unfair_lock_unlock(v0 + 8);
  v3 = v1;
  v4 = v2;
  result.value._object = v4;
  result.value._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_225B3F638()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD944();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DA90, &qword_225CEF260);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = (*(v1 + 32))(&v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], v3, v0);
  off_28105B918 = v4;
  return result;
}

void setDefaultLogger(_:)(uint64_t a1)
{
  if (qword_28105B910 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = off_28105B918;
  MEMORY[0x28223BE20](a1);
  v2 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v1[v3]);
  sub_225B406CC(&v1[v2]);
  os_unfair_lock_unlock(&v1[v3]);
}

uint64_t analyticsLogger()@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D739F88 != -1)
  {
    swift_once();
  }

  v2 = sub_225CCD954();
  v3 = __swift_project_value_buffer(v2, qword_27D73DA70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_225B3F98C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DA88, &qword_225CEF258);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  off_28105B6C8 = result;
  return result;
}

Swift::Void __swiftcall setProcessName(_:)(Swift::String a1)
{
  if (qword_28105B6C0 != -1)
  {
    countAndFlagsBits = a1._countAndFlagsBits;
    swift_once();
    a1._countAndFlagsBits = countAndFlagsBits;
  }

  v1 = off_28105B6C8;
  MEMORY[0x28223BE20](a1._countAndFlagsBits);
  os_unfair_lock_lock(v1 + 8);
  sub_225B4078C(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 8);
}

uint64_t sub_225B3FAAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_225CCD954();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_225CCD944();
}

Swift::Void __swiftcall logMilestone(tag:description:)(Swift::String tag, Swift::String description)
{
  object = description._object;
  countAndFlagsBits = description._countAndFlagsBits;
  v4 = tag._object;
  v5 = tag._countAndFlagsBits;
  if (qword_28105A938 != -1)
  {
    swift_once();
  }

  v6 = sub_225CCD954();
  __swift_project_value_buffer(v6, qword_28105A940);

  oslog = sub_225CCD934();
  v7 = sub_225CCED04();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2259BE198(v5, v4, &v11);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2259BE198(countAndFlagsBits, object, &v11);
    _os_log_impl(&dword_2259A7000, oslog, v7, "(%s) %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v9, -1, -1);
    MEMORY[0x22AA6F950](v8, -1, -1);
  }
}

void sub_225B3FCC8()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD00000000000003CLL, 0x8000000225D1E040, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B3FE18()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD000000000000035, 0x8000000225D1E080, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B3FF68()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD00000000000002ALL, 0x8000000225D1E0C0, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B400B8()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD000000000000028, 0x8000000225D1E0F0, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void sub_225B40208()
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    oslog = sub_225CCD934();
    v0 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v0))
    {
      v1 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v4 = v2;
      *v1 = 136315138;
      *(v1 + 4) = sub_2259BE198(0xD000000000000029, 0x8000000225D1E120, &v4);
      _os_log_impl(&dword_2259A7000, oslog, v0, "%s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v2);
      MEMORY[0x22AA6F950](v2, -1, -1);
      MEMORY[0x22AA6F950](v1, -1, -1);
    }

    else
    {
    }
  }
}

void Logger.verboseIQ(_:)(uint64_t (*a1)(void))
{
  if (_sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(0xD00000000000001ALL, 0x8000000225D15610))
  {
    v2 = a1();
    v4 = v3;
    oslog = sub_225CCD934();
    v5 = sub_225CCED04();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v10 = v7;
      *v6 = 136315138;
      v8 = sub_2259BE198(v2, v4, &v10);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_2259A7000, oslog, v5, "%s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x22AA6F950](v7, -1, -1);
      MEMORY[0x22AA6F950](v6, -1, -1);
    }

    else
    {
    }
  }
}

void Logger.logPADFrame(_:)(uint64_t (*a1)(void))
{
  v2 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v2;
    swift_once();
    v2 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v2;
    v3 = sub_225CCE444();
    v4 = [v12 BOOLForKey:v3];

    if ((v4 & 1) == 0)
    {
      return;
    }

    v5 = a1();
    v7 = v6;
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(v5, v7, &v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v2 = v13;
  }
}

uint64_t sub_225B406CC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  (*(v5 + 8))(a1, v4);
  return (*(v5 + 16))(a1, v3, v4);
}

uint64_t sub_225B4078C(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
}

void sub_225B407D4(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v17 = v5;
    swift_once();
    v5 = v17;
  }

  if (byte_28105B9F8 == 1)
  {
    v15 = v5;
    v6 = sub_225CCE444();
    v7 = [v15 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = sub_2259BCD58(a2, a3);
    v10 = v9;
    v16 = sub_225CCD934();
    v11 = sub_225CCED04();
    if (os_log_type_enabled(v16, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = sub_2259BE198(v8, v10, &v18);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_2259A7000, v16, v11, "%s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AA6F950](v13, -1, -1);
      MEMORY[0x22AA6F950](v12, -1, -1);

      return;
    }

    v5 = v16;
  }
}

void sub_225B409D4(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v15 = v3;
    swift_once();
    v3 = v15;
  }

  if (byte_28105B9F8 == 1)
  {
    v13 = v3;
    v4 = sub_225CCE444();
    v5 = [v13 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = sub_2259BCF0C(a2);
    v8 = v7;
    v14 = sub_225CCD934();
    v9 = sub_225CCED04();
    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_2259BE198(v6, v8, &v16);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_2259A7000, v14, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA6F950](v11, -1, -1);
      MEMORY[0x22AA6F950](v10, -1, -1);

      return;
    }

    v3 = v14;
  }
}

void sub_225B40BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v5;
    v6 = sub_225CCE444();
    v7 = [v12 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v15[1] = 0x8000000225D1DFD0;
    MEMORY[0x22AA6CE70](a2, a3);
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(0xD000000000000017, 0x8000000225D1DFD0, v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v5 = v13;
  }
}

void sub_225B40E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v5;
    v6 = sub_225CCE444();
    v7 = [v12 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v15[1] = 0x8000000225D1DFF0;
    MEMORY[0x22AA6CE70](a2, a3);
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(0xD000000000000024, 0x8000000225D1DFF0, v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v5 = v13;
  }
}

void sub_225B4105C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v13 = v3;
    swift_once();
    v3 = v13;
  }

  if (byte_28105B9F8 == 1)
  {
    v11 = v3;
    v4 = sub_225CCE444();
    v5 = [v11 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v14[1] = 0x8000000225D1E020;
    v6 = MEMORY[0x22AA6D090](a2, MEMORY[0x277D837D0]);
    MEMORY[0x22AA6CE70](v6);

    v12 = sub_225CCD934();
    v7 = sub_225CCED04();
    if (os_log_type_enabled(v12, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14[0] = v9;
      *v8 = 136315138;
      v10 = sub_2259BE198(0xD000000000000010, 0x8000000225D1E020, v14);

      *(v8 + 4) = v10;
      _os_log_impl(&dword_2259A7000, v12, v7, "%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x22AA6F950](v9, -1, -1);
      MEMORY[0x22AA6F950](v8, -1, -1);

      return;
    }

    v3 = v12;
  }
}

void sub_225B412A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v19 = v7;
    swift_once();
    v7 = v19;
  }

  if (byte_28105B9F8 == 1)
  {
    v17 = v7;
    v8 = sub_225CCE444();
    v9 = [v17 BOOLForKey:v8];

    if ((v9 & 1) == 0)
    {
      return;
    }

    v10 = sub_225BEAFD0(a2, a3, a4);
    v12 = v11;
    v18 = sub_225CCD934();
    v13 = sub_225CCED04();
    if (os_log_type_enabled(v18, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_2259BE198(v10, v12, &v20);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_2259A7000, v18, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA6F950](v15, -1, -1);
      MEMORY[0x22AA6F950](v14, -1, -1);

      return;
    }

    v7 = v18;
  }
}

void sub_225B414DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v23 = v11;
    swift_once();
    v11 = v23;
  }

  if (byte_28105B9F8 == 1)
  {
    v21 = v11;
    v12 = sub_225CCE444();
    v13 = [v21 BOOLForKey:v12];

    if ((v13 & 1) == 0)
    {
      return;
    }

    v14 = a6(a2, a3, a4, a5);
    v16 = v15;
    v22 = sub_225CCD934();
    v17 = sub_225CCED04();
    if (os_log_type_enabled(v22, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sub_2259BE198(v14, v16, &v24);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_2259A7000, v22, v17, "%s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AA6F950](v19, -1, -1);
      MEMORY[0x22AA6F950](v18, -1, -1);

      return;
    }

    v11 = v22;
  }
}

void sub_225B41718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v27 = v15;
    swift_once();
    v15 = v27;
  }

  if (byte_28105B9F8 == 1)
  {
    v25 = v15;
    v16 = sub_225CCE444();
    v17 = [v25 BOOLForKey:v16];

    if ((v17 & 1) == 0)
    {
      return;
    }

    v18 = a8(a2, a3, a4, a5, a6, a7);
    v20 = v19;
    v26 = sub_225CCD934();
    v21 = sub_225CCED04();
    if (os_log_type_enabled(v26, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315138;
      v24 = sub_2259BE198(v18, v20, &v28);

      *(v22 + 4) = v24;
      _os_log_impl(&dword_2259A7000, v26, v21, "%s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x22AA6F950](v23, -1, -1);
      MEMORY[0x22AA6F950](v22, -1, -1);

      return;
    }

    v15 = v26;
  }
}

void sub_225B41958()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E340;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD00000000000001CLL, 0x8000000225D1E340, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B41BAC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E320;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD00000000000001ELL, 0x8000000225D1E320, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B41E28(uint64_t a1, _OWORD *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v21 = v7;
    swift_once();
    v7 = v21;
  }

  if (byte_28105B9F8 == 1)
  {
    v20 = v7;
    v8 = sub_225CCE444();
    v9 = [v20 BOOLForKey_];

    if (v9)
    {
      *&v22[0] = 0;
      *(&v22[0] + 1) = 0xE000000000000000;
      sub_225CCF204();
      v24 = v22[0];
      MEMORY[0x22AA6CE70](0xD000000000000040, 0x8000000225D1E3F0);
      v10 = a2[7];
      v22[6] = a2[6];
      v22[7] = v10;
      v23[0] = a2[8];
      *(v23 + 9) = *(a2 + 137);
      v11 = a2[3];
      v22[2] = a2[2];
      v22[3] = v11;
      v12 = a2[5];
      v22[4] = a2[4];
      v22[5] = v12;
      v13 = a2[1];
      v22[0] = *a2;
      v22[1] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      sub_225CCF434();
      v14 = v24;
      v15 = sub_225CCD934();
      v16 = sub_225CCED04();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *&v22[0] = v18;
        *v17 = 136315138;
        v19 = sub_2259BE198(v14, *(&v14 + 1), v22);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_2259A7000, v15, v16, "%s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x22AA6F950](v18, -1, -1);
        MEMORY[0x22AA6F950](v17, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

void sub_225B420DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v14 = v5;
    swift_once();
    v5 = v14;
  }

  if (byte_28105B9F8 == 1)
  {
    v12 = v5;
    v6 = sub_225CCE444();
    v7 = [v12 BOOLForKey:v6];

    if ((v7 & 1) == 0)
    {
      return;
    }

    v15[1] = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D1E240);
    MEMORY[0x22AA6CE70](a2, a3);
    v13 = sub_225CCD934();
    v8 = sub_225CCED04();
    if (os_log_type_enabled(v13, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15[0] = v10;
      *v9 = 136315138;
      v11 = sub_2259BE198(0, 0xE000000000000000, v15);

      *(v9 + 4) = v11;
      _os_log_impl(&dword_2259A7000, v13, v8, "%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AA6F950](v10, -1, -1);
      MEMORY[0x22AA6F950](v9, -1, -1);

      return;
    }

    v5 = v13;
  }
}

void sub_225B42320()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E2A0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    MEMORY[0x22AA6CE70](32, 0xE100000000000000);
    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD00000000000001ELL, 0x8000000225D1E2A0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B42584(uint64_t a1, _OWORD *a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v17 = v3;
    swift_once();
    v3 = v17;
  }

  if (byte_28105B9F8 == 1)
  {
    v16 = v3;
    v4 = sub_225CCE444();
    v5 = [v16 BOOLForKey_];

    if (v5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_225CCF204();
      v20 = v18[0];
      MEMORY[0x22AA6CE70](0xD00000000000003CLL, 0x8000000225D1E360);
      v6 = a2[7];
      v18[6] = a2[6];
      v18[7] = v6;
      v19[0] = a2[8];
      *(v19 + 9) = *(a2 + 137);
      v7 = a2[3];
      v18[2] = a2[2];
      v18[3] = v7;
      v8 = a2[5];
      v18[4] = a2[4];
      v18[5] = v8;
      v9 = a2[1];
      v18[0] = *a2;
      v18[1] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFE8, &qword_225CD78B8);
      sub_225CCF434();
      v10 = v20;
      v11 = sub_225CCD934();
      v12 = sub_225CCED04();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *&v18[0] = v14;
        *v13 = 136315138;
        v15 = sub_2259BE198(v10, *(&v10 + 1), v18);

        *(v13 + 4) = v15;
        _os_log_impl(&dword_2259A7000, v11, v12, "%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x22AA6F950](v14, -1, -1);
        MEMORY[0x22AA6F950](v13, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

void sub_225B42820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v18 = v9;
    swift_once();
    v9 = v18;
  }

  if (byte_28105B9F8 == 1)
  {
    v17 = v9;
    v10 = sub_225CCE444();
    v11 = [v17 BOOLForKey_];

    if (v11)
    {
      sub_225CCF204();
      v19[4] = 0;
      v19[5] = 0xE000000000000000;
      MEMORY[0x22AA6CE70](0xD000000000000045, 0x8000000225D1E3A0);
      v19[0] = a2;
      v19[1] = a3;
      v19[2] = a4;
      v19[3] = a5;
      sub_225CCF434();
      v12 = sub_225CCD934();
      v13 = sub_225CCED04();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v19[0] = v15;
        *v14 = 136315138;
        v16 = sub_2259BE198(0, 0xE000000000000000, v19);

        *(v14 + 4) = v16;
        _os_log_impl(&dword_2259A7000, v12, v13, "%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x22AA6F950](v15, -1, -1);
        MEMORY[0x22AA6F950](v14, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

void sub_225B42AA8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E1E0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000011, 0x8000000225D1E1E0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B42CF4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E1C0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000013, 0x8000000225D1E1C0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B42F40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E1A0;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000011, 0x8000000225D1E1A0, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B431EC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v10 = v0;
    swift_once();
    v0 = v10;
  }

  if (byte_28105B9F8 == 1)
  {
    v8 = v0;
    v1 = sub_225CCE444();
    v2 = [v8 BOOLForKey:v1];

    if ((v2 & 1) == 0)
    {
      return;
    }

    sub_225CCF204();

    v11[1] = 0x8000000225D1E170;
    v3 = sub_225CCCF84();
    MEMORY[0x22AA6CE70](v3);

    v9 = sub_225CCD934();
    v4 = sub_225CCED04();
    if (os_log_type_enabled(v9, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11[0] = v6;
      *v5 = 136315138;
      v7 = sub_2259BE198(0xD000000000000028, 0x8000000225D1E170, v11);

      *(v5 + 4) = v7;
      _os_log_impl(&dword_2259A7000, v9, v4, "%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x22AA6F950](v6, -1, -1);
      MEMORY[0x22AA6F950](v5, -1, -1);

      return;
    }

    v0 = v9;
  }
}

void sub_225B43458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v19 = v7;
    swift_once();
    v7 = v19;
  }

  if (byte_28105B9F8 == 1)
  {
    v17 = v7;
    v8 = sub_225CCE444();
    v9 = [v17 BOOLForKey:v8];

    if ((v9 & 1) == 0)
    {
      return;
    }

    v10 = a4(a2, a3);
    v12 = v11;
    v18 = sub_225CCD934();
    v13 = sub_225CCED04();
    if (os_log_type_enabled(v18, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      v16 = sub_2259BE198(v10, v12, &v20);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_2259A7000, v18, v13, "%s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA6F950](v15, -1, -1);
      MEMORY[0x22AA6F950](v14, -1, -1);

      return;
    }

    v7 = v18;
  }
}

void sub_225B43660(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v15 = v3;
    swift_once();
    v3 = v15;
  }

  if (byte_28105B9F8 == 1)
  {
    v13 = v3;
    v4 = sub_225CCE444();
    v5 = [v13 BOOLForKey:v4];

    if ((v5 & 1) == 0)
    {
      return;
    }

    v6 = sub_225A8ECEC(a2);
    v8 = v7;
    v14 = sub_225CCD934();
    v9 = sub_225CCED04();
    if (os_log_type_enabled(v14, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      v12 = sub_2259BE198(v6, v8, &v16);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_2259A7000, v14, v9, "%s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x22AA6F950](v11, -1, -1);
      MEMORY[0x22AA6F950](v10, -1, -1);

      return;
    }

    v3 = v14;
  }
}

void NetworkMonitor.currentPath.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  if (*(v3 + 16))
  {
    sub_225CCD984();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_225CCDA04();
  (*(*(v5 - 8) + 56))(a1, v4, 1, v5);

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t sub_225B438FC()
{
  result = sub_225B4391C();
  qword_28105B048 = result;
  return result;
}

uint64_t sub_225B4391C()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v1 + 16))(v3, &v4[v5], v0);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2259A7000, v7, v8, "Creating shared NetworkMonitor", v9, 2u);
    MEMORY[0x22AA6F950](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  type metadata accessor for NetworkMonitor();
  v10 = swift_allocObject();
  sub_225B43DBC();
  NetworkMonitor.start()();
  return v10;
}

Swift::Void __swiftcall NetworkMonitor.start()()
{
  v1 = sub_225CCD954();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  os_unfair_lock_unlock((v5 + 24));
  if (v6)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v7 = off_28105B918;
    v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v9));
    (*(v2 + 16))(v4, &v7[v8], v1);
    os_unfair_lock_unlock(&v7[v9]);
    v10 = sub_225CCD934();
    v11 = sub_225CCED04();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2259A7000, v10, v11, "NetworkMonitor already started, ignoring.", v12, 2u);
      MEMORY[0x22AA6F950](v12, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  else
  {
    os_unfair_lock_lock((v5 + 24));
    sub_225B45150((v5 + 16));

    os_unfair_lock_unlock((v5 + 24));
  }
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_28105B040 != -1)
  {
    swift_once();
  }
}

void *sub_225B43DBC()
{
  v8[0] = sub_225CCEDA4();
  v1 = *(v8[0] - 8);
  MEMORY[0x28223BE20](v8[0]);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_225CCED84();
  MEMORY[0x28223BE20](v4);
  v5 = sub_225CCDA64();
  MEMORY[0x28223BE20](v5 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DA98, &qword_225CEF2B8);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  v0[2] = v6;
  sub_225B451E4();
  sub_225CCDA54();
  v8[1] = MEMORY[0x277D84F90];
  sub_225B45230();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF10, &qword_225CD4B68);
  sub_225B45288();
  sub_225CCF0E4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v8[0]);
  v0[3] = sub_225CCEDD4();
  v0[5] = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_225B44004(uint64_t *a1, uint64_t a2)
{
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v7 = off_28105B918;
  v8 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v9));
  (*(v4 + 16))(v6, &v7[v8], v3);
  os_unfair_lock_unlock(&v7[v9]);
  v10 = sub_225CCD934();
  v11 = sub_225CCED04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2259A7000, v10, v11, "NetworkMonitor start called", v12, 2u);
    MEMORY[0x22AA6F950](v12, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  sub_225CCD9D4();
  swift_allocObject();
  v13 = sub_225CCD9C4();

  *a1 = v13;
  swift_allocObject();
  swift_weakInit();

  sub_225CCD994();

  return sub_225CCD9A4();
}

uint64_t sub_225B44280(uint64_t a1, uint64_t a2)
{
  v108 = a1;
  v2 = sub_225CCD974();
  v3 = *(v2 - 8);
  v109 = v2;
  v110 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_225CCDA04();
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = v6;
  v98 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v89 - v8;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v89 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v89 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v89 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v95 = &v89 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v89 - v26;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v107 = result;
  if (result)
  {
    v90 = v23;
    v91 = v20;
    v92 = v17;
    v94 = v14;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v29 = off_28105B918;
    v30 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v31 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v31));
    v32 = v11;
    v33 = *(v11 + 16);
    v103 = v11 + 16;
    v104 = v30;
    v102 = v33;
    v33(v27, &v29[v30], v10);
    v105 = v31;
    v93 = v29;
    os_unfair_lock_unlock(&v29[v31]);
    v34 = sub_225CCD934();
    v35 = sub_225CCED04();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v10;
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2259A7000, v34, v35, "NetworkMonitor: update handler called.", v37, 2u);
      v38 = v37;
      v10 = v36;
      MEMORY[0x22AA6F950](v38, -1, -1);
    }

    v100 = v10;

    v39 = *(v32 + 8);
    v101 = v32 + 8;
    v106 = v39;
    v39(v27, v10);
    v40 = sub_225CCE994();
    (*(*(v40 - 8) + 56))(v9, 1, 1, v40);
    v41 = v96;
    v43 = v98;
    v42 = v99;
    (*(v96 + 16))(v98, v108, v99);
    sub_225CCE974();
    v44 = v107;

    v45 = sub_225CCE964();
    v46 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v47 = swift_allocObject();
    v48 = MEMORY[0x277D85700];
    *(v47 + 2) = v45;
    *(v47 + 3) = v48;
    *(v47 + 4) = v44;
    (*(v41 + 32))(&v47[v46], v43, v42);
    sub_225AFBF30(0, 0, v9, &unk_225CEF2C8, v47);

    v50 = v109;
    v49 = v110;
    v51 = *(v110 + 104);
    v51(v5, *MEMORY[0x277CD8CB8], v109);
    LOBYTE(v45) = sub_225CCD9F4();
    v52 = *(v49 + 8);
    v110 = v49 + 8;
    v52(v5, v50);
    v53 = v93;
    if (v45)
    {
      v54 = v105;
      os_unfair_lock_lock(&v93[v105]);
      v55 = v95;
      v56 = v100;
      v102(v95, &v53[v104], v100);
      os_unfair_lock_unlock(&v53[v54]);
      v57 = sub_225CCD934();
      v58 = sub_225CCED04();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_2259A7000, v57, v58, "DEVICE ON CELLULAR NETWORK", v59, 2u);
        MEMORY[0x22AA6F950](v59, -1, -1);
      }

      v106(v55, v56);
    }

    v60 = v109;
    v51(v5, *MEMORY[0x277CD8CA0], v109);
    v61 = sub_225CCD9F4();
    v52(v5, v60);
    if (v61)
    {
      v62 = v105;
      os_unfair_lock_lock(&v53[v105]);
      v63 = v90;
      v64 = v100;
      v102(v90, &v53[v104], v100);
      os_unfair_lock_unlock(&v53[v62]);
      v65 = sub_225CCD934();
      v66 = sub_225CCED04();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&dword_2259A7000, v65, v66, "DEVICE ON WIRED ETHERNET NETWORK", v67, 2u);
        MEMORY[0x22AA6F950](v67, -1, -1);
      }

      v106(v63, v64);
    }

    v68 = v109;
    v51(v5, *MEMORY[0x277CD8CA8], v109);
    v69 = sub_225CCD9F4();
    v52(v5, v68);
    if (v69)
    {
      v70 = v105;
      os_unfair_lock_lock(&v53[v105]);
      v71 = v91;
      v72 = v100;
      v102(v91, &v53[v104], v100);
      os_unfair_lock_unlock(&v53[v70]);
      v73 = sub_225CCD934();
      v74 = sub_225CCED04();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_2259A7000, v73, v74, "DEVICE ON WIFI NETWORK", v75, 2u);
        MEMORY[0x22AA6F950](v75, -1, -1);
      }

      v106(v71, v72);
    }

    v76 = v109;
    v51(v5, *MEMORY[0x277CD8CB0], v109);
    v77 = sub_225CCD9F4();
    v52(v5, v76);
    v78 = v94;
    v79 = v100;
    if (v77)
    {
      v80 = v105;
      os_unfair_lock_lock(&v53[v105]);
      v81 = v92;
      v102(v92, &v53[v104], v79);
      os_unfair_lock_unlock(&v53[v80]);
      v82 = sub_225CCD934();
      v83 = sub_225CCED04();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_2259A7000, v82, v83, "DEVICE ON OTHER NETWORK", v84, 2u);
        MEMORY[0x22AA6F950](v84, -1, -1);
      }

      v106(v81, v79);
    }

    if (sub_225CCD9E4())
    {
      v85 = v105;
      os_unfair_lock_lock(&v53[v105]);
      v102(v78, &v53[v104], v79);
      os_unfair_lock_unlock(&v53[v85]);
      v86 = sub_225CCD934();
      v87 = sub_225CCED04();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_2259A7000, v86, v87, "DEVICE ON EXPENSIVE NETWORK", v88, 2u);
        MEMORY[0x22AA6F950](v88, -1, -1);
      }

      else
      {
      }

      return (v106)(v78, v79);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_225B44D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_225CCE974();
  v5[5] = sub_225CCE964();
  v7 = sub_225CCE904();

  return MEMORY[0x2822009F8](sub_225B44DE8, v7, v6);
}

uint64_t sub_225B44DE8()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 32);
    v3 = *(*(v0 + 24) + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v2, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v5 = *(v0 + 8);

  return v5();
}

Swift::Void __swiftcall NetworkMonitor.stop()()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v6 = off_28105B918;
  v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v8));
  (*(v3 + 16))(v5, &v6[v7], v2);
  os_unfair_lock_unlock(&v6[v8]);
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2259A7000, v9, v10, "NetworkMonitor stop called", v11, 2u);
    MEMORY[0x22AA6F950](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v12 = *(v1 + 16);
  os_unfair_lock_lock((v12 + 24));
  if (*(v12 + 16))
  {
    sub_225CCD9B4();
  }

  *(v12 + 16) = 0;

  os_unfair_lock_unlock((v12 + 24));
}

uint64_t NetworkMonitor.deinit()
{

  sub_225B4516C(v0 + 32);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{

  sub_225B4516C(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_225B451E4()
{
  result = qword_28105BFA8;
  if (!qword_28105BFA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28105BFA8);
  }

  return result;
}

unint64_t sub_225B45230()
{
  result = qword_28105BFB0;
  if (!qword_28105BFB0)
  {
    sub_225CCED84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFB0);
  }

  return result;
}

unint64_t sub_225B45288()
{
  result = qword_28105BFC8;
  if (!qword_28105BFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AF10, &qword_225CD4B68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFC8);
  }

  return result;
}

uint64_t sub_225B452F4(uint64_t a1)
{
  v4 = *(sub_225CCDA04() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2259FE39C;

  return sub_225B44D4C(a1, v6, v7, v8, v1 + v5);
}

id NSError.init(domain:code:localizedDescription:debugDescription:underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_225B2C92C(MEMORY[0x277D84F90]);
  v13 = MEMORY[0x277D837D0];
  if (a5)
  {
    v14 = sub_225CCE474();
    v16 = v15;
    v40 = v13;
    *&v39 = a4;
    *(&v39 + 1) = a5;
    sub_2259B9624(&v39, v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v38, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  if (a7)
  {
    v18 = sub_225CCE474();
    v20 = v19;
    v40 = v13;
    *&v39 = a6;
    *(&v39 + 1) = a7;
    sub_2259B9624(&v39, v38);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v38, v18, v20, v21);
  }

  if (a8)
  {
    v22 = a8;
    v23 = sub_225CCCCB4();
    v24 = [v23 domain];
    if (!v24)
    {
      sub_225CCE474();
      v24 = sub_225CCE444();
    }

    v25 = [v23 code];
    v26 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v24 code:v25 userInfo:0];

    v27 = sub_225CCE474();
    v29 = v28;
    v40 = sub_2259E4540();
    *&v39 = v26;
    sub_2259B9624(&v39, v38);
    v30 = v26;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v38, v27, v29, v31);
  }

  v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v33 = sub_225CCE444();

  v34 = sub_225CCE2B4();

  v35 = [v32 initWithDomain:v33 code:a3 userInfo:v34];

  return v35;
}

id static NSError.mapFromError(_:domain:mapper:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v5 = sub_225CCCCB4();
  if (!isInternalBuild()())
  {
    v19 = 0;
    v18 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_12;
  }

  v6 = [v5 debugDescription];
  v7 = sub_225CCE474();
  v9 = v8;

  v10 = [v5 userInfo];
  v11 = sub_225CCE2D4();

  v12 = sub_225CCE474();
  if (!*(v11 + 16))
  {
    v17 = v9;
    v18 = v7;

LABEL_9:

    goto LABEL_10;
  }

  v14 = sub_2259F18D4(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    v17 = v9;
    v18 = v7;
    goto LABEL_9;
  }

  v17 = v9;
  v18 = v7;
  sub_2259CB810(*(v11 + 56) + 32 * v14, &v56);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = v55[0];
  v20 = v55[0];
LABEL_11:
  v21 = v17;
LABEL_12:
  v22 = [v5 domain];
  v23 = sub_225CCE474();
  v25 = v24;

  v54 = a4(v23, v25, [v5 code]);
  v27 = v26;
  v29 = v28;

  sub_225B2C92C(MEMORY[0x277D84F90]);
  v30 = sub_225CCE474();
  v32 = v31;
  v33 = MEMORY[0x277D837D0];
  v57 = MEMORY[0x277D837D0];
  *&v56 = v27;
  *(&v56 + 1) = v29;
  sub_2259B9624(&v56, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_225A03F40(v55, v30, v32, isUniquelyReferenced_nonNull_native);

  v35 = sub_225CCE474();
  v37 = v36;
  v57 = v33;
  *&v56 = v18;
  *(&v56 + 1) = v21;
  sub_2259B9624(&v56, v55);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A03F40(v55, v35, v37, v38);

  if (v19)
  {
    v39 = v19;
    v40 = sub_225CCCCB4();
    v41 = [v40 domain];
    if (!v41)
    {
      sub_225CCE474();
      v41 = sub_225CCE444();
    }

    v42 = [v40 code];
    v43 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v41 code:v42 userInfo:0];

    v44 = sub_225CCE474();
    v46 = v45;
    v57 = sub_2259E4540();
    *&v56 = v43;
    sub_2259B9624(&v56, v55);
    v47 = v43;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A03F40(v55, v44, v46, v48);
  }

  v49 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v50 = sub_225CCE444();
  v51 = sub_225CCE2B4();

  v52 = [v49 initWithDomain:v50 code:v54 userInfo:v51];

  return v52;
}

uint64_t OSTransaction.__allocating_init(_:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  OSTransaction.init(_:)(a1, a2);
  return v4;
}

void *OSTransaction.init(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v32 = sub_225CCD954();
  v6 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCD124();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;

  MEMORY[0x22AA6CE70](46, 0xE100000000000000);
  sub_225CCD114();
  v13 = sub_225CCD0C4();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  MEMORY[0x22AA6CE70](v13, v15);

  v16 = v34;
  v3[2] = v33;
  v3[3] = v16;
  sub_225CCE544();
  v17 = os_transaction_create();

  if (v17)
  {
    v3[4] = v17;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v19 = off_28105B918;
    v20 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v21 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v21));
    v22 = &v19[v20];
    v23 = v32;
    (*(v6 + 16))(v8, v22, v32);
    os_unfair_lock_unlock(&v19[v21]);

    v24 = sub_225CCD934();
    v25 = sub_225CCECF4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v28 = v3[2];
      v29 = v3[3];

      v30 = sub_2259BE198(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2259A7000, v24, v25, "Opened transaction: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA6F950](v27, -1, -1);
      MEMORY[0x22AA6F950](v26, -1, -1);
    }

    (*(v6 + 8))(v8, v23);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *OSTransaction.deinit()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v6 = off_28105B918;
  v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v8));
  (*(v3 + 16))(v5, &v6[v7], v2);
  os_unfair_lock_unlock(&v6[v8]);

  v9 = sub_225CCD934();
  v10 = sub_225CCECF4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2259BE198(*(v1 + 16), *(v1 + 24), &v15);
    _os_log_impl(&dword_2259A7000, v9, v10, "Closed transaction: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AA6F950](v12, -1, -1);
    MEMORY[0x22AA6F950](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t OSTransaction.__deallocating_deinit()
{
  OSTransaction.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s13CoreIDVShared13OSTransactionC5namedyq_SS_q_yYaYbxYKXEtYaxYKs5ErrorRzRi__r0_lFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = v8;
  v9[17] = v12;
  v9[14] = a7;
  v9[15] = a8;
  v9[12] = a5;
  v9[13] = a6;
  v9[10] = a3;
  v9[11] = a4;
  v9[8] = a1;
  v9[9] = a2;
  v9[18] = *(a6 - 8);
  v9[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4624C, 0, 0);
}

uint64_t sub_225B4624C()
{
  v1 = v0[9];
  v2 = v0[10];
  inited = swift_initStackObject();
  v0[20] = inited;

  OSTransaction.init(_:)(v1, v2);
  v0[7] = inited;
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_225B46340;
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[8];

  return _s13CoreIDVShared20withExtendedLifetimeyq0_x_q0_yYaYbq_YKXEtYaq_YKs5ErrorR_Ri_zRi_0_r1_lF(v11, (v0 + 7), v9, v10, v5, v7, v8, v6);
}

uint64_t sub_225B46340()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225B464A0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225B464A0()
{
  (*(v0[18] + 32))(v0[17], v0[19], v0[13]);

  v1 = v0[1];

  return v1();
}

id sub_225B465A8(uint64_t a1, unint64_t a2)
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - v11;
  v13 = sub_225CCCEA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCCE84();
  v17 = (*(v14 + 48))(v12, 1, v13);
  v61 = a1;
  if (v17 == 1)
  {
    v62 = v5;
    v60 = v4;
    sub_2259CB640(v12, &unk_27D73E090, &qword_225CD8ED0);
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_225CCF204();

    v64 = 0xD00000000000001FLL;
    v65 = 0x8000000225D1E540;
    MEMORY[0x22AA6CE70](a1, a2);
    v18 = v64;
    v19 = v65;
    v59 = 0x8000000225D1E560;
    v20 = MEMORY[0x277D84F90];
    v21 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v22 = swift_allocError();
    v24 = v23;
    v25 = sub_225CCE954();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v9, 1, 1, v25);
    LODWORD(v25) = (*(v26 + 48))(v9, 1, v25);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v25)
    {
      v27 = 107;
    }

    else
    {
      v27 = 23;
    }

    v28 = sub_225B2C374(v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v64 = v28;
    sub_225B2C4A0(v21, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v64);

    v30 = v64;
    v31 = sub_225B29AA0(0, 1, 1, v20);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_225B29AA0((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[56 * v33];
    *(v34 + 4) = v18;
    *(v34 + 5) = v19;
    v35 = v59;
    *(v34 + 6) = 0xD000000000000028;
    *(v34 + 7) = v35;
    *(v34 + 8) = 0x284C52556E65706FLL;
    *(v34 + 9) = 0xEB00000000293A5FLL;
    *(v34 + 10) = 44;
    *v24 = v27;
    *(v24 + 8) = v31;
    *(v24 + 16) = v18;
    *(v24 + 24) = v19;
    *(v24 + 32) = v30;
    *(v24 + 40) = 0;
    swift_willThrow();
    v4 = v60;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v37 = result;
    v38 = sub_225CCCDF4();
    sub_225B2C92C(MEMORY[0x277D84F90]);
    v39 = sub_225CCE2B4();

    v64 = 0;
    v40 = [v37 openSensitiveURL:v38 withOptions:v39 error:&v64];

    if (v40)
    {
      v41 = *(v14 + 8);
      v42 = v64;
      return v41(v16, v13);
    }

    v62 = v5;
    v43 = v64;
    v22 = sub_225CCCCC4();

    swift_willThrow();
    (*(v14 + 8))(v16, v13);
  }

  v44 = v62;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v45 = off_28105B918;
  v46 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v47 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v47));
  v48 = &v45[v46];
  v49 = v63;
  (*(v44 + 16))(v63, v48, v4);
  os_unfair_lock_unlock(&v45[v47]);

  v50 = v22;
  v51 = sub_225CCD934();
  v52 = sub_225CCED04();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v64 = v55;
    *v53 = 136315394;
    *(v53 + 4) = sub_2259BE198(v61, a2, &v64);
    *(v53 + 12) = 2112;
    v56 = v22;
    v57 = _swift_stdlib_bridgeErrorToNSError();
    *(v53 + 14) = v57;
    *v54 = v57;
    _os_log_impl(&dword_2259A7000, v51, v52, "Could not open system URL %s. Error: %@", v53, 0x16u);
    sub_2259CB640(v54, &unk_27D73FC90, &unk_225CFA710);
    MEMORY[0x22AA6F950](v54, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x22AA6F950](v55, -1, -1);
    MEMORY[0x22AA6F950](v53, -1, -1);
  }

  else
  {
  }

  return (*(v44 + 8))(v49, v4);
}

uint64_t _s13CoreIDVShared27ProcessVisibilityMonitoringPAAE014withForegroundC7Monitor10auditToken9isolation9operationqd__So0I8_token_ta_ScA_pSgYiqd__yYaYbKYActYaKs8SendableRd__lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 104) = v17;
  *(v9 + 112) = v8;
  *(v9 + 96) = v16;
  *(v9 + 80) = v15;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  if (a6)
  {
    swift_getObjectType();
    v10 = sub_225CCE904();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v9 + 120) = v10;
  *(v9 + 128) = v12;

  return MEMORY[0x2822009F8](sub_225B46F7C, v10, v12);
}

uint64_t sub_225B46F7C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  v8 = *(v0 + 96);
  v9 = *(v0 + 72);
  *(v7 + 16) = v2;
  *(v7 + 24) = v8;
  *(v7 + 40) = v1;
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;
  *(v7 + 80) = v9;
  v10 = sub_225B4E318(v8, v8);
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *v11 = v0;
  v11[1] = sub_225B470DC;
  v12 = *(v0 + 96);
  v13 = *(v0 + 56);
  v14 = *(v0 + 64);
  v15 = *(v0 + 16);

  return MEMORY[0x282200740](v15, v12, v10, v13, v14, &unk_225CEF390, v7, v12);
}

uint64_t sub_225B470DC()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[15];
    v4 = v2[16];

    return MEMORY[0x2822009F8](sub_225B47214, v3, v4);
  }

  else
  {

    v5 = v2[1];

    return v5();
  }
}

uint64_t sub_225B47214()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B47278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v15;
  v8[15] = v16;
  v8[12] = v13;
  v8[13] = v14;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8[16] = swift_task_alloc();
  v9 = sub_225CCEFC4();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = *(v14 - 8);
  v8[20] = v10;
  v8[21] = *(v10 + 64);
  v8[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  v8[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B47424, 0, 0);
}

uint64_t sub_225B47424()
{
  v51 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  v47 = v0[10];
  v8 = v0[7];
  v48 = v2;
  v46 = v0[9];
  v45 = v0[8];
  v9 = v0[6];
  v10 = sub_225CCE994();
  v43 = *(*(v10 - 8) + 56);
  v44 = v10;
  v43(v2, 1, 1);
  (*(v4 + 16))(v1, v9, v7);
  v11 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v12 = (v3 + v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = v7;
  *(v13 + 5) = v6;
  *(v13 + 6) = v5;
  (*(v4 + 32))(&v13[v11], v1, v7);
  v14 = &v13[v12];
  *v14 = v8;
  *(v14 + 1) = v45;
  *(v14 + 2) = v46;
  *(v14 + 3) = v47;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v15 = sub_225CCEA94();
  sub_225B48E80(v48, &unk_225CEF420, v13, v15);
  sub_2259CB640(v48, &qword_27D73FE00, &qword_225CD75C0);
  if ((*(v5 + 8))(v8, v45, v46, v47, v7))
  {
    v16 = v0[23];
    v17 = v0[11];
    v18 = v0[12];
    (v43)(v16, 1, 1, v44);

    sub_225B48E80(v16, v17, v18, v15);
    sub_2259CB640(v16, &qword_27D73FE00, &qword_225CD75C0);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_225B47A34;
    v20 = v0[19];

    return MEMORY[0x2822004D0](v20, 0, 0, v15);
  }

  else
  {
    v49 = v0[16];
    v22 = v0[9];
    v21 = v0[10];
    v24 = v0[7];
    v23 = v0[8];
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_225CCF204();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D1E6A0);
    v0[26] = v24;
    v0[27] = v23;
    v0[28] = v22;
    v0[29] = v21;
    type metadata accessor for audit_token_t(0);
    sub_225CCF434();
    MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D1E6C0);
    v26 = v0[2];
    v25 = v0[3];
    v27 = MEMORY[0x277D84F90];
    v28 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v30 = v29;
    v31 = sub_225CCE954();
    v32 = *(v31 - 8);
    (*(v32 + 56))(v49, 1, 1, v31);
    LODWORD(v31) = (*(v32 + 48))(v49, 1, v31);
    sub_2259CB640(v49, &unk_27D73B050, &unk_225CD3AD0);
    if (v31)
    {
      v33 = 24;
    }

    else
    {
      v33 = 23;
    }

    v34 = sub_225B2C374(v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50[0] = v34;
    sub_225B2C4A0(v28, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v50);

    v36 = v50[0];
    v37 = sub_225B29AA0(0, 1, 1, v27);
    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_225B29AA0((v38 > 1), v39 + 1, 1, v37);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[56 * v39];
    *(v40 + 4) = v26;
    *(v40 + 5) = v25;
    *(v40 + 6) = 0xD00000000000002CLL;
    *(v40 + 7) = 0x8000000225D1E5D0;
    *(v40 + 8) = 0xD00000000000003DLL;
    *(v40 + 9) = 0x8000000225D1E6E0;
    *(v40 + 10) = 55;
    *v30 = v33;
    *(v30 + 8) = v37;
    *(v30 + 16) = v26;
    *(v30 + 24) = v25;
    *(v30 + 32) = v36;
    *(v30 + 40) = 0;
    swift_willThrow();

    v41 = v0[1];

    return v41();
  }
}

uint64_t sub_225B47A34()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_225B47F14;
  }

  else
  {
    v2 = sub_225B47B48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B47B48()
{
  v23 = v0;
  v1 = v0[19];
  v2 = v0[14];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[16];
    (*(v0[18] + 8))(v1, v0[17]);
    v5 = MEMORY[0x277D84F90];
    v6 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v8 = v7;
    v9 = sub_225CCE954();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v4, 1, 1, v9);
    v11 = (*(v10 + 48))(v4, 1, v9);
    sub_2259CB640(v4, &unk_27D73B050, &unk_225CD3AD0);
    v12 = sub_225B2C374(v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v12;
    sub_225B2C4A0(v6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v22);

    v14 = v22;
    v15 = sub_225B29AA0(0, 1, 1, v5);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[56 * v17];
    *(v18 + 4) = 0xD000000000000015;
    *(v18 + 5) = 0x8000000225D1E720;
    *(v18 + 6) = 0xD00000000000002CLL;
    *(v18 + 7) = 0x8000000225D1E5D0;
    *(v18 + 8) = 0xD00000000000003DLL;
    *(v18 + 9) = 0x8000000225D1E6E0;
    *(v18 + 10) = 68;
    if (v11)
    {
      v19 = 107;
    }

    else
    {
      v19 = 23;
    }

    *v8 = v19;
    *(v8 + 8) = v15;
    *(v8 + 16) = 0xD000000000000015;
    *(v8 + 24) = 0x8000000225D1E720;
    *(v8 + 32) = v14;
    *(v8 + 40) = 0;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_225CCEA84();

    v20 = v0[1];
  }

  else
  {
    (*(v3 + 32))(v0[4], v1, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_225CCEA84();

    v20 = v0[1];
  }

  return v20();
}

uint64_t sub_225B47F14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCEA84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B47FD8(uint64_t a1, uint64_t a2)
{
  v11 = v2[5];
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[10];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2259FE39C;

  return sub_225B47278(a1, a2, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_225B480CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = v13;
  v8[27] = v14;
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB28, &qword_225CEF428);
  v8[30] = v9;
  v8[31] = *(v9 - 8);
  v8[32] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB30, &unk_225CEF430);
  v8[33] = v10;
  v8[34] = *(v10 - 8);
  v8[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4825C, 0, 0);
}

uint64_t sub_225B4825C()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[27] + 16))(v0[22], v0[23], v0[24], v0[25], v0[26]);
  sub_225CCE9F4();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_225B48370;
  v5 = v0[33];

  return MEMORY[0x2822003E8](v0 + 41, 0, 0, v5);
}

uint64_t sub_225B48370()
{

  return MEMORY[0x2822009F8](sub_225B4846C, 0, 0);
}

uint64_t sub_225B4846C()
{
  v80 = v0;
  v1 = *(v0 + 328);
  if (v1 == 2)
  {
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    if (sub_225CCEA44())
    {
      v2 = sub_225CCE954();
      sub_225B4A5D0();
      v3 = swift_allocError();
      sub_225CCE284();
      v73 = "' is not visible";
      v4 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v6 = v5;
      swift_getErrorValue();
      v7 = *(v0 + 104);
      v8 = v3;
      sub_225B21FAC(v7, &v74);

      v9 = v75;
      if (v75)
      {
        v71 = v74;
        v72[0] = v76;
        v72[1] = v77;
        v10 = v78;
        v69 = v79;
      }

      else
      {
        *(v0 + 144) = v3;
        v50 = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v51 = *(v0 + 152);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v53 = [v51 code];
          v54 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v54;
          *(inited + 40) = v53;
          v10 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v55 = v3;
          v72[0] = 0;
          v72[1] = 0;
          v9 = MEMORY[0x277D84F90];
          v69 = v3;
          v71 = 23;
        }

        else
        {
          v56 = *(v0 + 224);
          *(v0 + 160) = v3;
          v57 = v3;
          v58 = swift_dynamicCast();
          v59 = *(v2 - 8);
          (*(v59 + 56))(v56, v58 ^ 1u, 1, v2);
          (*(v59 + 48))(v56, 1, v2);
          sub_2259CB640(v56, &unk_27D73B050, &unk_225CD3AD0);
          v9 = MEMORY[0x277D84F90];
          v10 = sub_225B2C374(MEMORY[0x277D84F90]);
          v60 = v3;
          HIBYTE(v72[1]) = -18;
          v69 = v3;
          v71 = 23;
          strcpy(v72, "Task cancelled");
        }
      }

      v61 = v73 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = v10;
      sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v74);

      v63 = v74;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_225B29AA0(0, *(v9 + 2) + 1, 1, v9);
      }

      v65 = *(v9 + 2);
      v64 = *(v9 + 3);
      if (v65 >= v64 >> 1)
      {
        v9 = sub_225B29AA0((v64 > 1), v65 + 1, 1, v9);
      }

      *(v9 + 2) = v65 + 1;
      v66 = &v9[56 * v65];
      *(v66 + 2) = xmmword_225CEF370;
      *(v66 + 6) = 0xD00000000000002CLL;
      *(v66 + 7) = 0x8000000225D1E5D0;
      *(v66 + 8) = 0xD00000000000003DLL;
      *(v66 + 9) = v61;
      *(v66 + 10) = 48;
      *v6 = v71;
      *(v6 + 8) = v9;
      *(v6 + 16) = v72[0];
      *(v6 + 24) = v72[1];
      *(v6 + 32) = v63;
      *(v6 + 40) = v69;
    }

    else
    {
      v13 = *(v0 + 232);
      v73 = 0x8000000225D1E5D0;
      v14 = MEMORY[0x277D84F90];
      v15 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v17 = v16;
      v18 = sub_225CCE954();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v13, 1, 1, v18);
      LODWORD(v18) = (*(v19 + 48))(v13, 1, v18);
      sub_2259CB640(v13, &unk_27D73B050, &unk_225CD3AD0);
      if (v18)
      {
        v20 = 107;
      }

      else
      {
        v20 = 23;
      }

      v21 = sub_225B2C374(v14);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v74 = v21;
      sub_225B2C4A0(v15, sub_225B2AC40, 0, v22, &v74);

      v23 = v74;
      v24 = sub_225B29AA0(0, 1, 1, v14);
      v26 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v26 >= v25 >> 1)
      {
        v24 = sub_225B29AA0((v25 > 1), v26 + 1, 1, v24);
      }

      *(v24 + 2) = v26 + 1;
      v27 = &v24[56 * v26];
      *(v27 + 4) = 0xD000000000000022;
      *(v27 + 5) = 0x8000000225D1E740;
      *(v27 + 6) = 0xD00000000000002CLL;
      *(v27 + 7) = v73;
      *(v27 + 8) = 0xD00000000000003DLL;
      *(v27 + 9) = 0x8000000225D1E6E0;
      *(v27 + 10) = 50;
      *v17 = v20;
      *(v17 + 8) = v24;
      *(v17 + 16) = 0xD000000000000022;
      *(v17 + 24) = 0x8000000225D1E740;
      *(v17 + 32) = v23;
      *(v17 + 40) = 0;
    }

    swift_willThrow();
LABEL_30:

    v67 = *(v0 + 8);

    return v67();
  }

  if ((v1 & 1) == 0)
  {
    v70 = *(v0 + 232);
    v29 = *(v0 + 192);
    v28 = *(v0 + 200);
    v31 = *(v0 + 176);
    v30 = *(v0 + 184);
    v74 = 0;
    v75 = 0xE000000000000000;
    sub_225CCF204();
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D1E6A0);
    *(v0 + 296) = v31;
    *(v0 + 304) = v30;
    *(v0 + 312) = v29;
    *(v0 + 320) = v28;
    type metadata accessor for audit_token_t(0);
    sub_225CCF434();
    MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D1E770);
    v32 = *(v0 + 128);
    v72[0] = 0x8000000225D1E5D0;
    v72[1] = *(v0 + 120);
    v33 = MEMORY[0x277D84F90];
    v34 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v73 = swift_allocError();
    v36 = v35;
    v37 = sub_225CCE954();
    v38 = *(v37 - 8);
    (*(v38 + 56))(v70, 1, 1, v37);
    LODWORD(v37) = (*(v38 + 48))(v70, 1, v37);
    sub_2259CB640(v70, &unk_27D73B050, &unk_225CD3AD0);
    if (v37)
    {
      v39 = 24;
    }

    else
    {
      v39 = 23;
    }

    v40 = sub_225B2C374(v33);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v74 = v40;
    sub_225B2C4A0(v34, sub_225B2AC40, 0, v41, &v74);

    v42 = v74;
    v43 = sub_225B29AA0(0, 1, 1, v33);
    v45 = *(v43 + 2);
    v44 = *(v43 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_225B29AA0((v44 > 1), v45 + 1, 1, v43);
    }

    v47 = *(v0 + 272);
    v46 = *(v0 + 280);
    v48 = *(v0 + 264);
    *(v43 + 2) = v45 + 1;
    v49 = &v43[56 * v45];
    *(v49 + 4) = v72[1];
    *(v49 + 5) = v32;
    *(v49 + 6) = 0xD00000000000002CLL;
    *(v49 + 7) = v72[0];
    *(v49 + 8) = 0xD00000000000003DLL;
    *(v49 + 9) = 0x8000000225D1E6E0;
    *(v49 + 10) = 42;
    *v36 = v39;
    *(v36 + 8) = v43;
    *(v36 + 16) = v72[1];
    *(v36 + 24) = v32;
    *(v36 + 32) = v42;
    *(v36 + 40) = 0;
    swift_willThrow();
    (*(v47 + 8))(v46, v48);
    goto LABEL_30;
  }

  v11 = swift_task_alloc();
  *(v0 + 288) = v11;
  *v11 = v0;
  v11[1] = sub_225B48370;
  v12 = *(v0 + 264);

  return MEMORY[0x2822003E8](v0 + 328, 0, 0, v12);
}

uint64_t sub_225B48E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v19 - v8;
  v10 = *v4;
  v11 = swift_taskGroup_addPending();
  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_225A023C4(a1, v9);
  v12 = sub_225CCE994();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    sub_225CCE984();
    (*(v13 + 8))(v9, v12);
    if (*(a3 + 16))
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    goto LABEL_8;
  }

  sub_2259CB640(v9, &qword_27D73FE00, &qword_225CD75C0);
  if (!*(a3 + 16))
  {
    goto LABEL_7;
  }

LABEL_4:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_225CCE904();
  v16 = v15;
  swift_unknownObjectRelease();
LABEL_8:
  v17 = (v16 | v14);
  if (v16 | v14)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v14;
    v20[3] = v16;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v10;
  swift_task_create();
LABEL_11:

  return v11 & 1;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProcessVisibilityMonitor.isProcessVisible(_:)(audit_token_t *a1)
{
  v5 = v3;
  v6 = v2;
  v7 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v52 - v10;
  sub_2259D8718(0, &qword_27D73DAA0, 0x277D46F48);
  *atoken.val = a1;
  *&atoken.val[2] = v7;
  *&atoken.val[4] = v6;
  *&atoken.val[6] = v5;
  audit_token_to_pid(&atoken);
  v12 = sub_225CCFBA4();
  v13 = sub_225B4A1EC(v12);
  if (v4)
  {

    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    sub_225CCF204();
    v64 = *atoken.val;
    v65 = *&atoken.val[2];
    MEMORY[0x22AA6CE70](0xD000000000000031, 0x8000000225D1E590);
    *atoken.val = a1;
    *&atoken.val[2] = v7;
    *&atoken.val[4] = v6;
    *&atoken.val[6] = v5;
    type metadata accessor for audit_token_t(0);
    v14 = sub_225CCE504();
    MEMORY[0x22AA6CE70](v14);

    v15 = v64;
    v16 = v65;
    v57 = "for audit token: ";
    v56 = "ocessVisibilityMonitor.swift";
    v17 = v4;
    v18 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v58 = swift_allocError();
    v20 = v19;
    swift_getErrorValue();
    v21 = v63;
    v22 = v4;
    sub_225B21FAC(v21, &atoken);

    v23 = *&atoken.val[2];
    if (*&atoken.val[2])
    {
      v55 = *atoken.val;
      v53 = *&atoken.val[4];
      v54 = *&atoken.val[6];
      v24 = v61;
      v52 = v62;
    }

    else
    {
      *atoken.val = v4;
      v30 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v31 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v33 = [v31 code];
        v34 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v34;
        *(inited + 40) = v33;
        v24 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

        v35 = v4;
        v54 = 0;
        v53 = 0;
        v23 = MEMORY[0x277D84F90];
        v55 = 164;
      }

      else
      {
        *atoken.val = v4;
        v36 = v4;
        v37 = sub_225CCE954();
        v38 = swift_dynamicCast();
        v39 = *(v37 - 8);
        (*(v39 + 56))(v11, v38 ^ 1u, 1, v37);
        LODWORD(v39) = (*(v39 + 48))(v11, 1, v37);
        sub_2259CB640(v11, &unk_27D73B050, &unk_225CD3AD0);
        if (v39)
        {
          v40 = 164;
        }

        else
        {
          v40 = 23;
        }

        v55 = v40;

        v23 = MEMORY[0x277D84F90];
        v24 = sub_225B2C374(MEMORY[0x277D84F90]);
        v41 = v4;
        v54 = v16;
        v53 = v15;
      }

      v52 = v4;
    }

    v59 = v16;
    v42 = v57 | 0x8000000000000000;
    v43 = v56 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *atoken.val = v24;
    sub_225B2C4A0(v18, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &atoken);

    v45 = *atoken.val;
    v46 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_225B29AA0(0, *(v23 + 2) + 1, 1, v23);
    }

    v28 = *(v23 + 2);
    v47 = *(v23 + 3);
    if (v28 >= v47 >> 1)
    {
      v23 = sub_225B29AA0((v47 > 1), v28 + 1, 1, v23);
    }

    *(v23 + 2) = v28 + 1;
    v48 = &v23[56 * v28];
    v49 = v59;
    *(v48 + 4) = v46;
    *(v48 + 5) = v49;
    *(v48 + 6) = 0xD00000000000002CLL;
    *(v48 + 7) = v42;
    *(v48 + 8) = 0xD000000000000014;
    *(v48 + 9) = v43;
    *(v48 + 10) = 93;
    *v20 = v55;
    v50 = v53;
    *(v20 + 8) = v23;
    *(v20 + 16) = v50;
    *(v20 + 24) = v54;
    *(v20 + 32) = v45;
    *(v20 + 40) = v52;
    swift_willThrow();
  }

  else
  {
    v25 = v13;

    v26 = [v25 currentState];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 endowmentNamespaces];

      if (v28)
      {
        v29 = sub_225CCEC04();

        LOBYTE(v28) = sub_225B063F0(0xD00000000000001FLL, 0x8000000225D0C530, v29);
      }
    }

    else
    {
      LOBYTE(v28) = 0;
    }
  }

  return v28 & 1;
}

uint64_t ProcessVisibilityMonitor.visibilityMonitor(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAA8, &qword_225CEF398);
  MEMORY[0x28223BE20](v12);
  v17 = v7;
  v18 = v8;
  v19 = v6;
  v20 = v9;
  v21 = v5;
  v22 = v10;
  v23 = v4;
  v24 = v11;
  (*(v14 + 104))(&v16[-v13], *MEMORY[0x277D85778]);
  return sub_225CCEA14();
}

uint64_t sub_225B4982C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v28 = HIDWORD(a2);
  v29 = HIDWORD(a3);
  v30 = HIDWORD(a4);
  v31 = HIDWORD(a5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0, &unk_225CEF3F0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = &v27 - v12;
  v13 = [objc_allocWithZone(MEMORY[0x277D46F80]) init];
  *(swift_allocObject() + 16) = v13;
  v14 = v13;
  sub_225CCE9B4();
  atoken.val[0] = v8;
  atoken.val[1] = v28;
  atoken.val[2] = v7;
  atoken.val[3] = v29;
  atoken.val[4] = v6;
  atoken.val[5] = v30;
  atoken.val[6] = v5;
  atoken.val[7] = v31;
  audit_token_to_pid(&atoken);
  v15 = sub_225CCFBA4();
  v16 = [objc_opt_self() predicateMatchingIdentifier_];

  v17 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  v18 = sub_225CCE7F4();
  [v17 setEndowmentNamespaces_];

  v19 = v32;
  (*(v11 + 16))(v32, a1, v10);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  *(v21 + 24) = v17;
  (*(v11 + 32))(v21 + v20, v19, v10);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_225B4A31C;
  *(v22 + 24) = v21;
  v34 = sub_225B4A39C;
  v35 = v22;
  *atoken.val = MEMORY[0x277D85DD0];
  *&atoken.val[2] = 1107296256;
  *&atoken.val[4] = sub_225B4A034;
  *&atoken.val[6] = &block_descriptor_7;
  v23 = _Block_copy(&atoken);
  v24 = v16;
  v25 = v17;

  [v14 updateConfiguration_];

  _Block_release(v23);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

void sub_225B49BA4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0, &unk_225CEF3F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80, &qword_225CEF400);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_225CD7D40;
  *(v12 + 32) = a2;
  sub_2259D8718(0, &qword_27D73DB18, 0x277D46FA0);
  v13 = a2;
  v14 = sub_225CCE7F4();

  [a1 setPredicates_];

  [a1 setStateDescriptor_];
  (*(v9 + 16))(v11, a4, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_225B4A3DC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225B49F94;
  aBlock[3] = &block_descriptor_20;
  v17 = _Block_copy(aBlock);

  [a1 setUpdateHandler_];
  _Block_release(v17);
}

uint64_t sub_225B49DFC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB20, &unk_225CEF408);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-v6];
  v8 = [a3 state];
  if (v8 && (v9 = v8, v10 = [v8 endowmentNamespaces], v9, v10))
  {
    v11 = sub_225CCEC04();
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v12 = sub_225B063F0(0xD00000000000001FLL, 0x8000000225D0C530, v11);

  v14[15] = v12 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0, &unk_225CEF3F0);
  sub_225CCE9C4();
  return (*(v5 + 8))(v7, v4);
}

void sub_225B49F94(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_225B4A034(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_225B4A0A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAA8, &qword_225CEF398);
  MEMORY[0x28223BE20](v12);
  v17 = v7;
  v18 = v8;
  v19 = v6;
  v20 = v9;
  v21 = v5;
  v22 = v10;
  v23 = v4;
  v24 = v11;
  (*(v14 + 104))(&v16[-v13], *MEMORY[0x277D85778]);
  return sub_225CCEA14();
}

id sub_225B4A1EC(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_225CCCCC4();

    swift_willThrow();
  }

  return v1;
}

void sub_225B4A31C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0, &unk_225CEF3F0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_225B49BA4(a1, v4, v5, v6);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225B4A3DC(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DAB0, &unk_225CEF3F0);

  return sub_225B49DFC(a1, a2, a3);
}

uint64_t sub_225B4A470(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_225A02E94;

  return sub_225B480CC(a1, v6, v7, v1 + v5, v9, v10, v11, v12);
}

unint64_t sub_225B4A5D0()
{
  result = qword_27D73D638;
  if (!qword_27D73D638)
  {
    sub_225CCE954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D638);
  }

  return result;
}

void static ServerEnvironment.current(suiteNameOverride:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2 || a1 == 0xD00000000000001ALL && 0x8000000225D18F90 == a2 || (sub_225CCF934() & 1) != 0)
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = [v4 bundleIdentifier];

    if (v5)
    {
      v6 = sub_225CCE474();
      v8 = v7;

      if (v6 == 0xD00000000000001ALL && 0x8000000225D18F90 == v8)
      {
      }

      else
      {
        v10 = sub_225CCF934();

        if ((v10 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v14 = [objc_opt_self() standardUserDefaults];
      v19 = v14;
      if (!v14)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

LABEL_11:
    v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v12 = sub_225CCE444();
    v13 = [v11 initWithSuiteName_];
    goto LABEL_16;
  }

  v15 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_225CCE444();
  v13 = [v15 initWithSuiteName_];
LABEL_16:
  v19 = v13;

  v14 = v19;
  if (!v19)
  {
    goto LABEL_19;
  }

LABEL_17:
  v16 = v14;
  v17 = sub_225CCE444();
  v18 = [v16 stringForKey_];

  if (v18)
  {
    sub_225CCE474();
  }

LABEL_19:
  sub_225B4A92C(a3);
}

uint64_t ServerEnvironment.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t sub_225B4A92C@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCE534();
  v5 = v4;

  if (v3 == 1146049104 && v5 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    v7 = 0;
  }

  else if (v3 == 1414677827 && v5 == 0xE400000000000000 || (sub_225CCF934() & 1) != 0)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_225CCE6B4();

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }
  }

  *a2 = v7;
  return result;
}

unint64_t sub_225B4AA48()
{
  result = qword_27D73DB38;
  if (!qword_27D73DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DB38);
  }

  return result;
}

unint64_t sub_225B4AAAC@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_225B4DCB0(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_225B4DC4C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = sub_225CCCF54();
    v16 = v15;
    result = sub_2259BEF00(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t randomData(numBytes:)(size_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v2 = sub_225CCE874();
      *(v2 + 16) = a1;
      bzero((v2 + 32), a1);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], a1, (v2 + 32)))
    {
      v3 = sub_2259D8490(v2);

      return v3;
    }
  }

  sub_225CCF204();

  v5 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v5);

  result = sub_225CCF524();
  __break(1u);
  return result;
}

uint64_t Collection.nilIfEmpty.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_225CCEC84();
  v6 = *(a1 - 8);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v10 = *(a1 - 8);
    (*(v10 + 16))(a2, v2, a1);
    v6 = v10;
    v7 = 0;
  }

  v8 = *(v6 + 56);

  return v8(a2, v7, 1, a1);
}

Swift::Void __swiftcall debugLogFootprint(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = sub_225CCD954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v7 = getpid();
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    memset(v16, 0, sizeof(v16));
    if (!proc_pid_rusage(v7, 6, v16))
    {
      v8 = *(&v17 + 1);
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v9 = off_28105B918;
      v10 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v11 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v11));
      (*(v4 + 16))(v6, &v9[v10], v3);
      os_unfair_lock_unlock(&v9[v11]);

      sub_2259CFAF8();
      sub_2259CFAF8();
      v12 = sub_225CCD934();
      v13 = sub_225CCED04();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v42[0] = v15;
        *v14 = 136315650;
        *(v14 + 4) = sub_2259BE198(countAndFlagsBits, object, v42);
        *(v14 + 12) = 1040;
        *(v14 + 14) = 2;
        *(v14 + 18) = 2048;
        *(v14 + 20) = v8 * 0.000000953674316;
        _os_log_impl(&dword_2259A7000, v12, v13, "[%s] dirty footprint: %.*f MB", v14, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x22AA6F950](v15, -1, -1);
        MEMORY[0x22AA6F950](v14, -1, -1);
      }

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t Data.xor(with:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v79 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - v12;
  v14 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(a4);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v14 != 2)
  {
    v15 = 0;
    goto LABEL_11;
  }

  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = __OFSUB__(v16, v17);
  v15 = v16 - v17;
  if (v18)
  {
    __break(1u);
LABEL_8:
    LODWORD(v15) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      __break(1u);
      goto LABEL_92;
    }

    v15 = v15;
  }

LABEL_11:
  v19 = a2 >> 62;
  v72 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v19)
    {
      if (v15 != BYTE6(a2))
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (v15 != HIDWORD(a1) - a1)
      {
        goto LABEL_26;
      }

      goto LABEL_21;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v19 != 2)
  {
    if (v15)
    {
      goto LABEL_26;
    }

    v52 = v5;
LABEL_76:
    v30 = MEMORY[0x277D84F90];
LABEL_77:
    v50 = sub_2259D8490(v30);

    return v50;
  }

  v21 = *(a1 + 16);
  v20 = *(a1 + 24);
  v18 = __OFSUB__(v20, v21);
  v22 = v20 - v21;
  if (v18)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v15 != v22)
  {
LABEL_26:
    a3 = 0x8000000225D1E7F0;
    v72 = 0x8000000225D1E790;
    v24 = MEMORY[0x277D84F90];
    v25 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v27 = v26;
    v28 = sub_225CCE954();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v13, 1, 1, v28);
    LODWORD(v28) = (*(v29 + 48))(v13, 1, v28);
    sub_2259CB640(v13, &unk_27D73B050, &unk_225CD3AD0);
    if (v28)
    {
      LOWORD(v30) = 0;
    }

    else
    {
      LOWORD(v30) = 23;
    }

    v31 = sub_225B2C374(v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v31;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v73);

    v13 = v73;
    v11 = sub_225B29AA0(0, 1, 1, v24);
    a2 = *(v11 + 2);
    v33 = *(v11 + 3);
    v4 = a2 + 1;
    if (a2 >= v33 >> 1)
    {
      goto LABEL_90;
    }

    goto LABEL_30;
  }

LABEL_21:
  v68 = HIDWORD(a1);
  if (v72 == 2)
  {
    v38 = *(a1 + 16);
    v37 = *(a1 + 24);
    v18 = __OFSUB__(v37, v38);
    v23 = v37 - v38;
    if (!v18)
    {
      goto LABEL_32;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
  }

  if (v72 != 1)
  {
    goto LABEL_34;
  }

  LODWORD(v23) = v68 - a1;
  if (__OFSUB__(v68, a1))
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v23 = v23;
LABEL_32:
  if ((v23 & 0x8000000000000000) == 0)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_34:
  v23 = BYTE6(a2);
LABEL_35:
  v52 = v5;
  if (!v23)
  {
    goto LABEL_76;
  }

  v27 = 0;
  v65 = a3 >> 32;
  v66 = BYTE6(a4);
  v67 = a3;
  v55 = a1;
  v53 = a1 >> 32;
  v54 = BYTE6(a2);
  v30 = MEMORY[0x277D84F90];
  v63 = a3 >> 16;
  v64 = a3 >> 8;
  v61 = HIDWORD(a3);
  v62 = a3 >> 24;
  v59 = HIWORD(a3);
  v60 = a3 >> 40;
  v57 = a4 >> 8;
  v58 = HIBYTE(a3);
  v56 = a4 >> 16;
  v70 = a4 >> 62;
  v71 = a3;
  v69 = v23;
  while (1)
  {
    if (v14 > 1)
    {
      if (v14 != 2)
      {
        goto LABEL_96;
      }

      v33 = *(a3 + 16);
      if (v27 < v33)
      {
        goto LABEL_79;
      }

      v33 = *(a3 + 24);
      if (v27 >= v33)
      {
        goto LABEL_81;
      }

      v40 = sub_225CCCA44();
      if (!v40)
      {
        goto LABEL_99;
      }

      a3 = v40;
      v13 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
      v41 = sub_225CCCA74();
      v33 = v27 - v41;
      if (__OFSUB__(v27, v41))
      {
        goto LABEL_85;
      }

      goto LABEL_52;
    }

    if (!v14)
    {
      break;
    }

    v33 = v67;
    if (v27 < v67)
    {
      goto LABEL_80;
    }

    v33 = v65;
    if (v27 >= v65)
    {
      goto LABEL_80;
    }

    v42 = sub_225CCCA44();
    if (!v42)
    {
      goto LABEL_98;
    }

    a3 = v42;
    v13 = (a4 & 0x3FFFFFFFFFFFFFFFLL);
    v43 = sub_225CCCA74();
    v33 = v27 - v43;
    if (__OFSUB__(v27, v43))
    {
      goto LABEL_82;
    }

LABEL_52:
    v39 = *(a3 + v33);
LABEL_53:
    if (v72 > 1)
    {
      if (v72 != 2)
      {
        goto LABEL_97;
      }

      v33 = *(a1 + 16);
      if (v27 < v33)
      {
        goto LABEL_83;
      }

      v33 = *(a1 + 24);
      if (v27 >= v33)
      {
        goto LABEL_87;
      }

      v45 = sub_225CCCA44();
      if (!v45)
      {
        goto LABEL_101;
      }

      a3 = v45;
      v13 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v46 = sub_225CCCA74();
      v33 = v27 - v46;
      if (__OFSUB__(v27, v46))
      {
        goto LABEL_89;
      }
    }

    else
    {
      if (!v72)
      {
        v33 = v54;
        if (v27 >= v54)
        {
          goto LABEL_84;
        }

        LOWORD(v73) = a1;
        BYTE2(v73) = BYTE2(a1);
        BYTE3(v73) = BYTE3(a1);
        BYTE4(v73) = v68;
        BYTE5(v73) = BYTE5(a1);
        BYTE6(v73) = BYTE6(a1);
        HIBYTE(v73) = HIBYTE(a1);
        v74 = a2;
        v75 = BYTE2(a2);
        v76 = BYTE3(a2);
        v77 = BYTE4(a2);
        v78 = BYTE5(a2);
        v44 = *(&v73 + v27);
        goto LABEL_69;
      }

      v33 = v55;
      if (v27 < v55)
      {
        goto LABEL_86;
      }

      v33 = v53;
      if (v27 >= v53)
      {
        goto LABEL_86;
      }

      v47 = sub_225CCCA44();
      if (!v47)
      {
        goto LABEL_100;
      }

      a3 = v47;
      v13 = (a2 & 0x3FFFFFFFFFFFFFFFLL);
      v48 = sub_225CCCA74();
      v33 = v27 - v48;
      if (__OFSUB__(v27, v48))
      {
        goto LABEL_88;
      }
    }

    v44 = *(a3 + v33);
LABEL_69:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_2259BE5D8(0, *(v30 + 2) + 1, 1, v30);
    }

    v4 = *(v30 + 2);
    v49 = *(v30 + 3);
    v13 = (v4 + 1);
    if (v4 >= v49 >> 1)
    {
      v30 = sub_2259BE5D8((v49 > 1), v4 + 1, 1, v30);
    }

    ++v27;
    *(v30 + 2) = v13;
    v30[v4 + 32] = v44 ^ v39;
    LODWORD(v14) = v70;
    a3 = v71;
    if (v69 == v27)
    {
      goto LABEL_77;
    }
  }

  v33 = v66;
  if (v27 < v66)
  {
    LOBYTE(v73) = a3;
    BYTE1(v73) = v64;
    BYTE2(v73) = v63;
    BYTE3(v73) = v62;
    BYTE4(v73) = v61;
    BYTE5(v73) = v60;
    BYTE6(v73) = v59;
    HIBYTE(v73) = v58;
    LOBYTE(v74) = a4;
    HIBYTE(v74) = v57;
    v75 = v56;
    v76 = BYTE3(a4);
    v77 = BYTE4(a4);
    v78 = BYTE5(a4);
    v39 = *(&v73 + v27);
    goto LABEL_53;
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  v11 = sub_225B29AA0((v33 > 1), v4, 1, v11);
LABEL_30:
  *(v11 + 2) = v4;
  v34 = &v11[56 * a2];
  *(v34 + 4) = 0xD000000000000017;
  *(v34 + 5) = a3;
  v35 = v72;
  *(v34 + 6) = 0xD000000000000021;
  *(v34 + 7) = v35;
  *(v34 + 8) = 0x6874697728726F78;
  *(v34 + 9) = 0xEA0000000000293ALL;
  *(v34 + 10) = 52;
  *v27 = v30;
  *(v27 + 8) = v11;
  *(v27 + 16) = 0xD000000000000017;
  *(v27 + 24) = a3;
  *(v27 + 32) = v13;
  *(v27 + 40) = 0;
  return swift_willThrow();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.toAlpha2CountryCode()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v1 - 8);
  v64 = &v62 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB40, &unk_225CFB910);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v63 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB48, &qword_225CF29B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v62 - v10;
  v11 = sub_225CCD1C4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v72 = &v62 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - v18;
  v20 = sub_225B4C144();
  sub_225CCD134();
  v21 = sub_225CCD144();
  v23 = v22;
  v73 = *(v12 + 8);
  v74 = v12 + 8;
  v73(v19, v11);
  if (v23)
  {
    v25 = v21;
  }

  else
  {
    v25 = 0;
  }

  v71 = v25;
  v26 = 0xE000000000000000;
  if (v23)
  {
    v26 = v23;
  }

  v67 = v26;
  v69 = *(v20 + 16);
  if (v69)
  {
    v27 = 0;
    v68 = v12 + 16;
    while (1)
    {
      v28 = *(v20 + 16);
      if (v27 >= v28)
      {
        break;
      }

      v0 = v20;
      v29 = v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v27;
      v30 = v12;
      v31 = *(v12 + 16);
      v32 = v11;
      v31(v72, v29, v11);
      sub_225CCD134();
      v33 = v70;
      sub_225CCD1A4();
      v34 = sub_225CCD194();
      v35 = *(v34 - 8);
      if ((*(v35 + 48))(v33, 1, v34) == 1)
      {
        sub_2259CB640(v33, &qword_27D73DB40, &unk_225CFB910);
        v19 = 0xE000000000000000;
      }

      else
      {
        sub_225CCD184();
        v36 = v33;
        v19 = v37;
        (*(v35 + 8))(v36, v34);
      }

      v23 = sub_225CCD144();
      v21 = v38;

      v11 = v32;
      v73(v15, v32);
      v12 = v30;
      v20 = v0;
      if (v21)
      {
        if (v23 == v71 && v21 == v67)
        {

LABEL_20:

          v40 = v66;
          (*(v12 + 32))(v66, v72, v11);
          v39 = 0;
          goto LABEL_21;
        }

        v19 = sub_225CCF934();

        if (v19)
        {

          goto LABEL_20;
        }
      }

      ++v27;
      v73(v72, v11);
      if (v69 == v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    v24 = sub_225B29AA0((v28 > 1), v12, 1, v24);
    goto LABEL_29;
  }

LABEL_18:

  v39 = 1;
  v40 = v66;
LABEL_21:
  v41 = v65;
  (*(v12 + 56))(v40, v39, 1, v11);
  sub_225B4DD64(v40, v41);
  if ((*(v12 + 48))(v41, 1, v11) == 1)
  {
    v42 = &qword_27D73DB48;
    v43 = &qword_225CF29B0;
    v44 = v41;
  }

  else
  {
    v45 = v63;
    sub_225CCD1A4();
    v73(v41, v11);
    v46 = sub_225CCD194();
    v47 = *(v46 - 8);
    if ((*(v47 + 48))(v45, 1, v46) != 1)
    {
      v21 = sub_225CCD184();
      v12 = v58;
      sub_2259CB640(v40, &qword_27D73DB48, &qword_225CF29B0);
      (*(v47 + 8))(v45, v46);
      goto LABEL_31;
    }

    v42 = &qword_27D73DB40;
    v43 = &unk_225CFB910;
    v44 = v45;
  }

  sub_2259CB640(v44, v42, v43);
  v23 = 0x8000000225D1E810;
  v74 = 0x8000000225D1E790;
  v0 = 0x8000000225D1E830;
  v48 = MEMORY[0x277D84F90];
  v49 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v21 = v50;
  v51 = sub_225CCE954();
  v52 = *(v51 - 8);
  v53 = v64;
  (*(v52 + 56))(v64, 1, 1, v51);
  LODWORD(v51) = (*(v52 + 48))(v53, 1, v51);
  sub_2259CB640(v53, &unk_27D73B050, &unk_225CD3AD0);
  if (v51)
  {
    LOWORD(v20) = 857;
  }

  else
  {
    LOWORD(v20) = 23;
  }

  v54 = sub_225B2C374(v48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v54;
  sub_225B2C4A0(v49, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v75);

  v27 = v75;
  v24 = sub_225B29AA0(0, 1, 1, v48);
  v19 = *(v24 + 2);
  v28 = *(v24 + 3);
  v12 = v19 + 1;
  if (v19 >= v28 >> 1)
  {
    goto LABEL_33;
  }

LABEL_29:
  *(v24 + 2) = v12;
  v56 = &v24[56 * v19];
  *(v56 + 4) = 0xD000000000000014;
  *(v56 + 5) = v23;
  v57 = v74;
  *(v56 + 6) = 0xD000000000000021;
  *(v56 + 7) = v57;
  *(v56 + 8) = 0xD000000000000015;
  *(v56 + 9) = v0;
  *(v56 + 10) = 74;
  *v21 = v20;
  *(v21 + 8) = v24;
  *(v21 + 16) = 0xD000000000000014;
  *(v21 + 24) = v23;
  *(v21 + 32) = v27;
  *(v21 + 40) = 0;
  swift_willThrow();
  sub_2259CB640(v66, &qword_27D73DB48, &qword_225CF29B0);
LABEL_31:
  v59 = v21;
  v60 = v12;
  result._object = v60;
  result._countAndFlagsBits = v59;
  return result;
}

uint64_t sub_225B4C144()
{
  v0 = sub_225CCD1C4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x22AA6B9B0](v2);
  v6 = *(v5 + 16);
  if (v6)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2259D54DC(0, v6, 0);
    v7 = v13;
    v8 = v5 + 40;
    do
    {

      sub_225CCD134();
      v13 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2259D54DC((v9 > 1), v10 + 1, 1);
        v7 = v13;
      }

      *(v7 + 16) = v10 + 1;
      (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v4, v0);
      v8 += 16;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

unsigned __int8 *sub_225B4C2F0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v56 - v5;

  v7 = sub_2259D8954(2, a1, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x22AA6CD90](v7, v9, v11, v13);
  v16 = v15;

  v18 = HIBYTE(v16) & 0xF;
  v19 = v14 & 0xFFFFFFFFFFFFLL;
  if ((v16 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v20 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_64;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    v59 = 0;
    v22 = sub_2259F3F08(v14, v16, 10);
    v40 = v55;
LABEL_63:

    if ((v40 & 1) == 0)
    {
      return v22;
    }

LABEL_64:
    v57 = 0x8000000225D1E790;
    v41 = MEMORY[0x277D84F90];
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v22 = v43;
    v44 = sub_225CCE954();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v6, 1, 1, v44);
    LODWORD(v44) = (*(v45 + 48))(v6, 1, v44);
    sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
    if (v44)
    {
      v46 = 1006;
    }

    else
    {
      v46 = 23;
    }

    v47 = sub_225B2C374(v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58[0] = v47;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v58);

    v49 = v58[0];
    v50 = sub_225B29AA0(0, 1, 1, v41);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = &v50[56 * v52];
    *(v53 + 4) = 0xD000000000000024;
    *(v53 + 5) = 0x8000000225D1E8A0;
    v54 = v57;
    *(v53 + 6) = 0xD000000000000021;
    *(v53 + 7) = v54;
    strcpy(v53 + 64, "getYear(date:)");
    v53[79] = -18;
    *(v53 + 10) = 83;
    *v22 = v46;
    *(v22 + 8) = v50;
    *(v22 + 16) = 0xD000000000000024;
    *(v22 + 24) = 0x8000000225D1E8A0;
    *(v22 + 32) = v49;
    *(v22 + 40) = 0;
    swift_willThrow();
    return v22;
  }

  if ((v16 & 0x2000000000000000) == 0)
  {
    if ((v14 & 0x1000000000000000) != 0)
    {
      result = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_225CCF354();
    }

    v21 = *result;
    if (v21 == 43)
    {
      if (v19 >= 1)
      {
        v18 = v19 - 1;
        if (v19 != 1)
        {
          v22 = 0;
          if (result)
          {
            v29 = result + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                goto LABEL_61;
              }

              v31 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_61;
              }

              v22 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                goto LABEL_61;
              }

              ++v29;
              if (!--v18)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_76;
    }

    if (v21 != 45)
    {
      if (v19)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              goto LABEL_61;
            }

            v36 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_61;
            }

            v22 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v19)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v22 = 0;
      LOBYTE(v18) = 1;
      goto LABEL_62;
    }

    if (v19 >= 1)
    {
      v18 = v19 - 1;
      if (v19 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_61;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_61;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_61;
            }

            ++v23;
            if (!--v18)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v18) = 0;
LABEL_62:
        v59 = v18;
        v40 = v18;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v58[0] = v14;
  v58[1] = v16 & 0xFFFFFFFFFFFFFFLL;
  if (v14 != 43)
  {
    if (v14 != 45)
    {
      if (v18)
      {
        v22 = 0;
        v37 = v58;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v39 + v38;
          if (__OFADD__(v39, v38))
          {
            break;
          }

          v37 = (v37 + 1);
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v18)
    {
      if (--v18)
      {
        v22 = 0;
        v26 = v58 + 1;
        while (1)
        {
          v27 = *v26 - 48;
          if (v27 > 9)
          {
            break;
          }

          v28 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v28 - v27;
          if (__OFSUB__(v28, v27))
          {
            break;
          }

          ++v26;
          if (!--v18)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_75;
  }

  if (v18)
  {
    if (--v18)
    {
      v22 = 0;
      v32 = v58 + 1;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          break;
        }

        v22 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v18)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_77:
  __break(1u);
  return result;
}

uint64_t sub_225B4C8A4(uint64_t a1, unint64_t a2)
{
  v4 = sub_225CCD0B4();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_225CCD264();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_225CCD284();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  v48 = v9;
  v49 = v8;
  v45 = *(v9 + 16);
  v46 = v15;
  v45(v13, &v14[v15], v8);
  os_unfair_lock_unlock(&v14[v16]);
  v17 = sub_225CCD934();
  v18 = sub_225CCED34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v4;
    v20 = a1;
    v21 = a2;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2259A7000, v17, v18, "Calculating year for birth date", v22, 2u);
    v23 = v22;
    a2 = v21;
    a1 = v20;
    v4 = v19;
    MEMORY[0x22AA6F950](v23, -1, -1);
  }

  (*(v48 + 8))(v13, v49);
  v24 = sub_225B4C2F0(a1, a2);
  v25 = v37;
  v26 = v24;
  sub_225CCD244();
  v27 = v41;
  v28 = v39;
  v29 = v43;
  (*(v41 + 104))(v39, *MEMORY[0x277CC9988], v43);
  v30 = v42;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v31 = sub_225CCD274();
  (*(v44 + 8))(v30, v4);
  (*(v27 + 8))(v28, v29);
  result = (*(v38 + 8))(v25, v40);
  v33 = 100 * (v31 / 100);
  if (v31 % 100 < v26)
  {
    v34 = __OFSUB__(v33, 100);
    v35 = v33 - 100;
    if (v34)
    {
      __break(1u);
      goto LABEL_13;
    }

    v34 = __OFADD__(v35, v26);
    v33 = v35 + v26;
    if (!v34)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v34 = __OFADD__(v33, v26);
  v33 += v26;
  if (!v34)
  {
LABEL_11:
    v50 = v33;
    return sub_225CCF824();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_225B4CE70(uint64_t a1, unint64_t a2)
{
  v4 = sub_225CCD0B4();
  v44 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_225CCD264();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_225CCD284();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_225CCD954();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v47 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  v48 = v9;
  v49 = v8;
  v45 = *(v9 + 16);
  v46 = v15;
  v45(v13, &v14[v15], v8);
  os_unfair_lock_unlock(&v14[v16]);
  v17 = sub_225CCD934();
  v18 = sub_225CCED34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v4;
    v20 = a1;
    v21 = a2;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2259A7000, v17, v18, "Calculating year for expiry date", v22, 2u);
    v23 = v22;
    a2 = v21;
    a1 = v20;
    v4 = v19;
    MEMORY[0x22AA6F950](v23, -1, -1);
  }

  (*(v48 + 8))(v13, v49);
  v24 = sub_225B4C2F0(a1, a2);
  v25 = v37;
  v26 = v24;
  sub_225CCD244();
  v27 = v41;
  v28 = v39;
  v29 = v43;
  (*(v41 + 104))(v39, *MEMORY[0x277CC9988], v43);
  v30 = v42;
  _s13CoreIDVShared12DateProviderV3now10Foundation0C0Vvg_0();
  v31 = sub_225CCD274();
  (*(v44 + 8))(v30, v4);
  (*(v27 + 8))(v28, v29);
  result = (*(v38 + 8))(v25, v40);
  v33 = 100 * (v31 / 100);
  if (v26 >= v31 % 100)
  {
    goto LABEL_13;
  }

  v34 = __OFADD__(v33, 100);
  v35 = v33 + 100;
  if (v34)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v34 = __OFADD__(v35, v26);
  v33 = v35 + v26;
  if (v34)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__OFSUB__(v33, v31))
  {
    if (v33 - v31 < 11)
    {
      goto LABEL_14;
    }

    v34 = __OFSUB__(v33, 100);
    v33 -= 100;
    if (!v34)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v34 = __OFADD__(v33, v26);
    v33 += v26;
    if (!v34)
    {
LABEL_14:
      v50 = v33;
      return sub_225CCF824();
    }

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> formatPassportDate(date:isBirthDate:)(Swift::String date, Swift::Bool isBirthDate)
{
  object = date._object;
  countAndFlagsBits = date._countAndFlagsBits;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v95 - v7;
  if (sub_225CCE5D4() != 6)
  {
    v97 = 0x8000000225D1E870;
    v98 = 0x8000000225D1E790;
    v11 = MEMORY[0x277D84F90];
    v12 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    countAndFlagsBits = v13;
    v14 = sub_225CCE954();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v8, 1, 1, v14);
    LODWORD(v14) = (*(v15 + 48))(v8, 1, v14);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v14)
    {
      v16 = 1007;
    }

    else
    {
      v16 = 23;
    }

    v17 = sub_225B2C374(v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v17;
    sub_225B2C4A0(v12, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v99);

    v19 = v99[0];
    v20 = sub_225B29AA0(0, 1, 1, v11);
    object = *(v20 + 2);
    v21 = *(v20 + 3);
    if (object >= v21 >> 1)
    {
      v20 = sub_225B29AA0((v21 > 1), object + 1, 1, v20);
    }

    *(v20 + 2) = object + 1;
    v22 = &v20[56 * object];
    *(v22 + 4) = 0xD000000000000015;
    *(v22 + 5) = 0x8000000225D1E850;
    v23 = v98;
    *(v22 + 6) = 0xD000000000000021;
    *(v22 + 7) = v23;
    v24 = v97;
    *(v22 + 8) = 0xD000000000000025;
    *(v22 + 9) = v24;
    *(v22 + 10) = 137;
    *countAndFlagsBits = v16;
    *(countAndFlagsBits + 8) = v20;
    *(countAndFlagsBits + 16) = 0xD000000000000015;
    *(countAndFlagsBits + 24) = 0x8000000225D1E850;
    *(countAndFlagsBits + 32) = v19;
    *(countAndFlagsBits + 40) = 0;
    swift_willThrow();
    goto LABEL_89;
  }

  if (isBirthDate)
  {
    v9 = sub_225B4C8A4(countAndFlagsBits, object);
  }

  else
  {
    v9 = sub_225B4CE70(countAndFlagsBits, object);
  }

  v25 = v9;
  v26 = v10;

  v27 = sub_225B4DDD4(2uLL, countAndFlagsBits, object);
  v29 = v28;

  v30 = sub_225CCEFD4();
  if (v31)
  {
    v32 = v29;
  }

  else
  {
    v32 = v30;
  }

  if (v32 >> 14 < v27 >> 14)
  {
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:

    goto LABEL_82;
  }

  v96 = v25;
  v98 = v26;
  v33 = sub_225CCF004();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = MEMORY[0x22AA6CD90](v33, v35, v37, v39);
  v42 = v41;

  v43 = sub_225B4DDD4(4uLL, countAndFlagsBits, object);
  v45 = v44;

  v46 = sub_225CCEFD4();
  if (v47)
  {
    v48 = v45;
  }

  else
  {
    v48 = v46;
  }

  if (v48 >> 14 < v43 >> 14)
  {
    goto LABEL_91;
  }

  v97 = v2;
  v49 = sub_225CCF004();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  v56 = MEMORY[0x22AA6CD90](v49, v51, v53, v55);
  v58 = v57;

  v60 = HIBYTE(v42) & 0xF;
  v61 = v40 & 0xFFFFFFFFFFFFLL;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v62 = HIBYTE(v42) & 0xF;
  }

  else
  {
    v62 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62)
  {
    goto LABEL_92;
  }

  if ((v42 & 0x1000000000000000) == 0)
  {
    if ((v42 & 0x2000000000000000) != 0)
    {
      v99[0] = v40;
      v99[1] = v42 & 0xFFFFFFFFFFFFFFLL;
      if (v40 == 43)
      {
        if (v60)
        {
          if (--v60)
          {
            v64 = 0;
            v74 = v99 + 1;
            while (1)
            {
              v75 = *v74 - 48;
              if (v75 > 9)
              {
                break;
              }

              v76 = 10 * v64;
              if ((v64 * 10) >> 64 != (10 * v64) >> 63)
              {
                break;
              }

              v64 = v76 + v75;
              if (__OFADD__(v76, v75))
              {
                break;
              }

              ++v74;
              if (!--v60)
              {
                goto LABEL_80;
              }
            }
          }

          goto LABEL_79;
        }

LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      if (v40 != 45)
      {
        if (v60)
        {
          v64 = 0;
          v79 = v99;
          while (1)
          {
            v80 = *v79 - 48;
            if (v80 > 9)
            {
              break;
            }

            v81 = 10 * v64;
            if ((v64 * 10) >> 64 != (10 * v64) >> 63)
            {
              break;
            }

            v64 = v81 + v80;
            if (__OFADD__(v81, v80))
            {
              break;
            }

            v79 = (v79 + 1);
            if (!--v60)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

      if (v60)
      {
        if (--v60)
        {
          v64 = 0;
          v68 = v99 + 1;
          while (1)
          {
            v69 = *v68 - 48;
            if (v69 > 9)
            {
              break;
            }

            v70 = 10 * v64;
            if ((v64 * 10) >> 64 != (10 * v64) >> 63)
            {
              break;
            }

            v64 = v70 - v69;
            if (__OFSUB__(v70, v69))
            {
              break;
            }

            ++v68;
            if (!--v60)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }
    }

    else
    {
      if ((v40 & 0x1000000000000000) != 0)
      {
        v59 = ((v42 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v59 = sub_225CCF354();
      }

      v63 = *v59;
      if (v63 == 43)
      {
        if (v61 >= 1)
        {
          v60 = v61 - 1;
          if (v61 != 1)
          {
            v64 = 0;
            if (v59)
            {
              v71 = v59 + 1;
              while (1)
              {
                v72 = *v71 - 48;
                if (v72 > 9)
                {
                  goto LABEL_79;
                }

                v73 = 10 * v64;
                if ((v64 * 10) >> 64 != (10 * v64) >> 63)
                {
                  goto LABEL_79;
                }

                v64 = v73 + v72;
                if (__OFADD__(v73, v72))
                {
                  goto LABEL_79;
                }

                ++v71;
                if (!--v60)
                {
                  goto LABEL_80;
                }
              }
            }

            goto LABEL_71;
          }

          goto LABEL_79;
        }

        goto LABEL_97;
      }

      if (v63 != 45)
      {
        if (v61)
        {
          v64 = 0;
          if (v59)
          {
            while (1)
            {
              v77 = *v59 - 48;
              if (v77 > 9)
              {
                goto LABEL_79;
              }

              v78 = 10 * v64;
              if ((v64 * 10) >> 64 != (10 * v64) >> 63)
              {
                goto LABEL_79;
              }

              v64 = v78 + v77;
              if (__OFADD__(v78, v77))
              {
                goto LABEL_79;
              }

              ++v59;
              if (!--v61)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_79:
        v64 = 0;
        LOBYTE(v60) = 1;
        goto LABEL_80;
      }

      if (v61 >= 1)
      {
        v60 = v61 - 1;
        if (v61 != 1)
        {
          v64 = 0;
          if (v59)
          {
            v65 = v59 + 1;
            while (1)
            {
              v66 = *v65 - 48;
              if (v66 > 9)
              {
                goto LABEL_79;
              }

              v67 = 10 * v64;
              if ((v64 * 10) >> 64 != (10 * v64) >> 63)
              {
                goto LABEL_79;
              }

              v64 = v67 - v66;
              if (__OFSUB__(v67, v66))
              {
                goto LABEL_79;
              }

              ++v65;
              if (!--v60)
              {
                goto LABEL_80;
              }
            }
          }

LABEL_71:
          LOBYTE(v60) = 0;
LABEL_80:
          v100 = v60;
          v82 = v60;
          goto LABEL_81;
        }

        goto LABEL_79;
      }

      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v100 = 0;
  v64 = sub_2259F3F08(v40, v42, 10);
  v82 = v93;
LABEL_81:

  if (v82)
  {
LABEL_82:

    goto LABEL_84;
  }

  v83 = sub_2259EDAD0(v56, v58);
  if ((v84 & 1) == 0)
  {
    v85 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0, &qword_225CEF1C0);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_225CD73B0;
    v87 = sub_2259EDAD0(v96, v98);
    v88 = MEMORY[0x277D83B88];
    v89 = MEMORY[0x277D83C10];
    *(v86 + 56) = MEMORY[0x277D83B88];
    *(v86 + 64) = v89;
    if (v90)
    {
      v91 = 0;
    }

    else
    {
      v91 = v87;
    }

    *(v86 + 32) = v91;
    *(v86 + 96) = v88;
    *(v86 + 104) = v89;
    *(v86 + 72) = v64;
    *(v86 + 136) = v88;
    *(v86 + 144) = v89;
    *(v86 + 112) = v85;
    countAndFlagsBits = sub_225CCE4A4();
    object = v92;
    goto LABEL_89;
  }

LABEL_84:

LABEL_89:
  v59 = countAndFlagsBits;
  v61 = object;
LABEL_99:
  result._object = v61;
  result._countAndFlagsBits = v59;
  return result;
}

uint64_t sub_225B4DC4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_225B4DCB0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_225B4DD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DB48, &qword_225CF29B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225B4DDD4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_225CCE5F4();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_225CCE704();
}

uint64_t withTaskTimeoutHandler<A>(timeout:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_225B4DEB0, 0, 0);
}

uint64_t sub_225B4DEB0()
{
  v1 = *(v0 + 24);
  if (v1 <= 0.0)
  {
    v12 = (*(v0 + 32) + **(v0 + 32));
    v8 = swift_task_alloc();
    *(v0 + 80) = v8;
    *v8 = v0;
    v8[1] = sub_225B4E1C0;
    v9 = *(v0 + 16);

    return v12(v9);
  }

  else
  {
    v2 = *(v0 + 48);
    v3 = swift_task_alloc();
    *(v0 + 56) = v3;
    v4 = *(v0 + 32);
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v3 + 32) = v4;
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_225B4E084;
    v6 = *(v0 + 48);
    v7 = *(v0 + 16);

    return MEMORY[0x282200740](v7, v6, v6, 0, 0, &unk_225CEF4E8, v3, v6);
  }
}

uint64_t sub_225B4E084()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225B4E2B4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225B4E1C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_225B4E2B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B4E324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = a5;
  *(v6 + 48) = a3;
  *(v6 + 40) = a6;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 72) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v7 = sub_225CCFC34();
  *(v6 + 80) = v7;
  v8 = sub_225CCEFC4();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = *(v7 - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4E4C4, 0, 0);
}

uint64_t sub_225B4E4C4()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = v0[7];
  v13 = v0[6];
  v4 = v0[5];
  v5 = sub_225CCE994();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v4;
  v8 = sub_225CCEA94();
  sub_225B4EFC4(v1, &unk_225CEF550, v7, v8);
  sub_225B4F198(v1);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v13;
  v9[6] = v3;

  sub_225B4EFC4(v1, &unk_225CEF560, v9, v8);
  sub_225B4F198(v1);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_225B4E6E4;
  v11 = v0[13];

  return sub_225B4F3C0(v11, 0, 0, v8);
}

uint64_t sub_225B4E6E4()
{

  return MEMORY[0x2822009F8](sub_225B4E7E0, 0, 0);
}

uint64_t sub_225B4E7E0()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = *(v2 + 48);
  v5 = v4(v1, 1, v3);
  v6 = v0[16];
  if (v5 == 1)
  {
    sub_225A02370();
    *v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    if (v4(v1, 1, v3) != 1)
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
    }
  }

  else
  {
    (*(v2 + 32))(v0[16], v1, v3);
  }

  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[3];
  sub_225CCEA84();
  (*(v9 + 16))(v7, v8, v10);
  sub_225AF9230(v10, (v0 + 2), v11);
  (*(v0[14] + 8))(v0[16], v0[10]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_225B4E9E0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v9 = *(v2 + 4);
  v8 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2259FE39C;

  return sub_225B4E324(a1, a2, v9, v8, v6, v7);
}

uint64_t sub_225B4EABC(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_225CCF404();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B4EB7C, 0, 0);
}

uint64_t sub_225B4EB7C(__n128 a1)
{
  v2 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
  v4 = v3;
  sub_225CCFAF4();
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_225B4EC58;

  return sub_225A015E8(v2, v4, 0, 0, 1);
}

uint64_t sub_225B4EC58()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_225B4EE60;
  }

  else
  {
    v5 = sub_225B4EDC8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225B4EDC8()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B4EE60()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225B4EF00()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02E94;

  return sub_225B4EABC(v2);
}

uint64_t sub_225B4EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_225A023C4(a1, v19 - v9);
  v11 = sub_225CCE994();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_225B4F198(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_225CCE904();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_225CCE984();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_225B4F198(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225B4F200(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2259FE39C;

  return v8(a1);
}

uint64_t sub_225B4F2F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225B4F200(a1, v4, v5, v6);
}

uint64_t sub_225B4F3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_225B4F470;

  return MEMORY[0x2822004C0](a1, a4);
}

uint64_t sub_225B4F470()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    if (v2[2])
    {
      swift_getObjectType();
      v3 = sub_225CCE904();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return MEMORY[0x2822009F8](sub_225B4F5E0, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

uint64_t TimerHelper.__allocating_init()()
{
  v0 = sub_225CCDA94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  *(v4 + 16) = 1315859240;
  *(v4 + 24) = 0;
  sub_225CCDA84();
  v5 = sub_225CCDA74();
  (*(v1 + 8))(v3, v0);
  *(v4 + 24) = v5;
  return v4;
}

uint64_t TimerHelper.init()()
{
  v1 = v0;
  v2 = sub_225CCDA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 1315859240;
  *(v1 + 24) = 0;
  sub_225CCDA84();
  v6 = sub_225CCDA74();
  (*(v3 + 8))(v5, v2);
  *(v1 + 24) = v6;
  return v1;
}

uint64_t sub_225B4F7E8()
{
  v1 = v0;
  v2 = sub_225CCDA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCDA84();
  v6 = sub_225CCDA74();
  result = (*(v3 + 8))(v5, v2);
  *(v1 + 24) = v6;
  return result;
}

uint64_t sub_225B4F8C0()
{
  v1 = v0;
  v2 = sub_225CCDA94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCDA84();
  v6 = sub_225CCDA74();
  result = (*(v3 + 8))(v5, v2);
  if (v6 < *(v1 + 24))
  {
    __break(1u);
  }

  return result;
}

void runAsyncAndBlock<A>(file:function:line:_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a6;
  v32 = a7;
  v33 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v30 - v16;
  v18 = sub_225CCEFC4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v30 - v20;
  sub_225B4FD44(a1, a2, a3, a4, a5);
  (*(*(a8 - 8) + 56))(v21, 1, 1, a8);
  v22 = sub_225B515E8(v21, v18);
  (*(v19 + 8))(v21, v18);
  v23 = dispatch_semaphore_create(0);
  v24 = sub_225CCE994();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v26 = v31;
  v25[4] = a8;
  v25[5] = v26;
  v25[6] = v32;
  v25[7] = v22;
  v25[8] = v23;

  v27 = v23;
  sub_225AFBC30(0, 0, v17, &unk_225CEF5B0, v25);

  sub_225CCEEB4();
  v34 = a8;
  v28 = *(*v22 + *MEMORY[0x277D841D0] + 16);
  v29 = (*(*v22 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v22 + v29));
  sub_225B51740(v22 + v28, v33);
  os_unfair_lock_unlock((v22 + v29));
}

void sub_225B4FD44(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    v25 = v14;
    swift_once();
    v14 = v25;
  }

  if (byte_28105B9F8 == 1)
  {
    v25 = v14;
    v15 = sub_225CCE444();
    v16 = [v25 BOOLForKey_];

    if (v16)
    {
      sub_225CCF5F4();
      if (LOBYTE(v26[0]) == 1)
      {
        v25 = a5;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v17 = off_28105B918;
        v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v19));
        (*(v11 + 16))(v13, &v17[v18], v10);
        os_unfair_lock_unlock(&v17[v19]);

        v20 = sub_225CCD934();
        v21 = sub_225CCED24();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v26[0] = v24;
          *v22 = 136315650;
          *(v22 + 4) = sub_2259BE198(a3, a4, v26);
          *(v22 + 12) = 2080;
          *(v22 + 14) = sub_2259BE198(a1, a2, v26);
          *(v22 + 22) = 2048;
          *(v22 + 24) = v25;
          _os_log_impl(&dword_2259A7000, v20, v21, "CONCURRENCY ERROR: runAsyncAndBlock should not be invoked from a Swift Concurrency thread. Invoked by %s %s:%ld", v22, 0x20u);
          v23 = v24;
          swift_arrayDestroy();
          MEMORY[0x22AA6F950](v23, -1, -1);
          MEMORY[0x22AA6F950](v22, -1, -1);
        }

        (*(v11 + 8))(v13, v10);
      }
    }
  }

  else
  {
  }
}

uint64_t sub_225B5010C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_225B50264;

  return v13(v10);
}

uint64_t sub_225B50264()
{

  return MEMORY[0x2822009F8](sub_225B50360, 0, 0);
}

uint64_t sub_225B50360()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  sub_225CCEFC4();
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_225B518DC(v4 + v6);
  os_unfair_lock_unlock((v4 + v7));

  sub_225CCEEC4();
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_225B50490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_225CCEFC4();
  (*(*(v6 - 8) + 8))(a1, v6);
  v7 = *(a3 - 8);
  (*(v7 + 16))(a1, a2, a3);
  return (*(v7 + 56))(a1, 0, 1, a3);
}

uint64_t sub_225B50574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_225CCEFC4();
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  (*(v9 + 16))(v12 - v7, a1);
  v10 = *(a2 - 8);
  result = (*(v10 + 48))(v8, 1, a2);
  if (result != 1)
  {
    return (*(v10 + 32))(a3, v8, a2);
  }

  __break(1u);
  return result;
}

void runAsyncAndBlock<A>(timeout:file:function:line:_:)(double a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v51 = a4;
  v54 = a7;
  v55 = a8;
  v52 = a5;
  v53 = a6;
  v56 = a2;
  v49 = a1;
  v50 = a9;
  v12 = sub_225CCDA14();
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_225CCDA94();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v48 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v43 = &v43 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00, &qword_225CD75C0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v22 = sub_225CCFC34();
  v23 = sub_225CCEFC4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v43 - v25;
  sub_225B4FD44(a3, v51, v52, v53, v54);
  (*(*(v22 - 8) + 56))(v26, 1, 1, v22);
  v27 = sub_225B515E8(v26, v23);
  (*(v24 + 8))(v26, v23);
  v28 = dispatch_semaphore_create(0);
  v29 = sub_225CCE994();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v31 = v55;
  v30[4] = a11;
  v30[5] = v31;
  v30[6] = a10;
  v30[7] = v27;
  v30[8] = v28;

  v32 = v28;
  sub_225AFBC30(0, 0, v21, &unk_225CEF5C0, v30);

  if ((v56 & 1) == 0)
  {
    v34 = v48;
    sub_225CCDA84();
    if ((~*&v49 & 0x7FF0000000000000) != 0)
    {
      if (v49 > -9.22337204e18)
      {
        if (v49 < 9.22337204e18)
        {
          *v14 = v49;
          v36 = v46;
          v35 = v47;
          (*(v46 + 104))(v14, *MEMORY[0x277D85188], v47);
          v37 = v43;
          MEMORY[0x22AA6C2E0](v34, v14);
          (*(v36 + 8))(v14, v35);
          v38 = *(v44 + 8);
          v39 = v34;
          v40 = v45;
          v38(v39, v45);
          LOBYTE(v35) = sub_225CCEEA4();
          v33 = (v38)(v37, v40);
          if (v35)
          {
            sub_225A02370();
            swift_allocError();
            swift_willThrow();

            return;
          }

          goto LABEL_8;
        }

LABEL_12:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }

  v33 = sub_225CCEEB4();
LABEL_8:
  MEMORY[0x28223BE20](v33);
  *(&v43 - 2) = a11;
  v41 = *(*v27 + *MEMORY[0x277D841D0] + 16);
  v42 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v27 + v42));
  sub_225B51888(v27 + v41, v50);
  os_unfair_lock_unlock((v27 + v42));
}

uint64_t sub_225B50C28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_225B50D80;

  return v13(v10);
}

uint64_t sub_225B50D80()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_225B50FF4;
  }

  else
  {
    v2 = sub_225B50E94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B50E94()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCFC34();
  sub_225CCEFC4();
  v6 = *(*v4 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v7));
  sub_225B518C0(v4 + v6);
  os_unfair_lock_unlock((v4 + v7));

  (*(v2 + 8))(v1, v3);
  sub_225CCEEC4();

  v8 = v0[1];

  return v8();
}

uint64_t sub_225B50FF4()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCFC34();
  sub_225CCEFC4();
  v5 = *(*v3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_225B518A4((v3 + v5));
  os_unfair_lock_unlock((v3 + v6));

  sub_225CCEEC4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_225B51134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v6 = sub_225CCFC34();
  v7 = sub_225CCEFC4();
  (*(*(v7 - 8) + 8))(a1, v7);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  swift_storeEnumTagMultiPayload();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

id sub_225B5125C(void *a1, void *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v5 = sub_225CCFC34();
  v6 = sub_225CCEFC4();
  (*(*(v6 - 8) + 8))(a1, v6);
  *a1 = a2;
  swift_storeEnumTagMultiPayload();
  (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
  return a2;
}

uint64_t sub_225B51354@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
  v5 = sub_225CCFC34();
  v6 = sub_225CCEFC4();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  result = (*(*(v5 - 1) + 48))(v8, 1, v5);
  if (result != 1)
  {
    return sub_225AF9230(v5, &v12, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_225B514B4@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_225CCEB44();
  result = (*(*(v4 - 8) + 48))(a1, 1, v4);
  *a2 = result != 1;
  return result;
}

void sub_225B51530(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_225B515E8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_225CCF344();
  return sub_225CCF334();
}

uint64_t sub_225B51664(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2259FE39C;

  return sub_225B5010C(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_225B517AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_225A02E94;

  return sub_225B50C28(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_225B518F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x277D841D0]) - 8) + 16))(a2, v3);
}

uint64_t sub_225B519D0(uint64_t a1, unint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC10, &qword_225CEF5F0);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC18, &qword_225CEF5F8);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC20, &qword_225CEF600);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC28, &qword_225CEF608);
  sub_225CCD814();
  sub_225CCD844();
  v16 = *(v7 + 8);
  v16(v13, v6);
  sub_225CCE704();
  sub_225B51E0C();
  v27 = v15;
  sub_225CCD804();
  v17 = v26;
  sub_225CCD824();
  v18 = v25;
  v16(v10, v6);

  v20 = v28;
  v19 = v29;
  v21 = v17;
  if ((*(v28 + 48))(v17, 1, v29) == 1)
  {
    v16(v27, v6);
    sub_225B51E70(v17);
    return 0;
  }

  else
  {
    v23 = v18;
    (*(v20 + 32))(v18, v21, v19);
    swift_getKeyPath();
    sub_225CCD854();

    v24 = MEMORY[0x22AA6CD90](v30, v31, v32, v33);

    (*(v20 + 8))(v23, v19);
    v16(v27, v6);
    return v24;
  }
}

unint64_t sub_225B51E0C()
{
  result = qword_27D73DC30;
  if (!qword_27D73DC30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DC20, &qword_225CEF600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC30);
  }

  return result;
}

uint64_t sub_225B51E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC10, &qword_225CEF5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225B51F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2259F18D4(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

id sub_225B51FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    type metadata accessor for IdentityProofingTextReplacementHelper();
    v17 = swift_allocObject();
    *(v17 + 16) = 0xD000000000000010;
    *(v17 + 24) = 0x8000000225D1E980;
    strcpy((v17 + 32), "id.subregion");
    *(v17 + 45) = 0;
    *(v17 + 46) = -5120;
    strcpy((v17 + 48), "idtype.proper");
    *(v17 + 62) = -4864;
    strcpy((v17 + 64), "idtype.lower");
    *(v17 + 77) = 0;
    *(v17 + 78) = -5120;
    *(v17 + 80) = 0x6E2E726575737369;
    *(v17 + 88) = 0xEB00000000656D61;
    *(v17 + 96) = 0xD000000000000011;
    *(v17 + 104) = 0x8000000225D1E9A0;
    *(v17 + 112) = 0xD000000000000018;
    *(v17 + 120) = 0x8000000225D1E9C0;
    *(v17 + 128) = 0xD00000000000001ALL;
    *(v17 + 136) = 0x8000000225D1E9E0;
    *(v17 + 144) = 0xD000000000000020;
    *(v17 + 152) = 0x8000000225D1EA00;
    *(v17 + 160) = 0xD000000000000023;
    *(v17 + 168) = 0x8000000225D1EA30;
    *(v17 + 176) = 0xD000000000000012;
    *(v17 + 184) = 0x8000000225D1EA60;
    *(v17 + 192) = a1;
    *(v17 + 200) = a2;
    *(v17 + 208) = a3;
    *(v17 + 216) = a4;
    *(v17 + 224) = a5;
    *(v17 + 232) = a6;
    *(v17 + 240) = a7;
    *(v17 + 248) = wapiCapability;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *IdentityProofingTextReplacementHelper.__allocating_init(attributeMessages:messageReplacements:state:country:documentType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    type metadata accessor for IdentityProofingTextReplacementHelper();
    result = swift_allocObject();
    *(result + 2) = 0xD000000000000010;
    *(result + 3) = 0x8000000225D1E980;
    strcpy(result + 32, "id.subregion");
    result[45] = 0;
    *(result + 23) = -5120;
    strcpy(result + 48, "idtype.proper");
    *(result + 31) = -4864;
    strcpy(result + 64, "idtype.lower");
    result[77] = 0;
    *(result + 39) = -5120;
    *(result + 10) = 0x6E2E726575737369;
    *(result + 11) = 0xEB00000000656D61;
    *(result + 12) = 0xD000000000000011;
    *(result + 13) = 0x8000000225D1E9A0;
    *(result + 14) = 0xD000000000000018;
    *(result + 15) = 0x8000000225D1E9C0;
    *(result + 16) = 0xD00000000000001ALL;
    *(result + 17) = 0x8000000225D1E9E0;
    *(result + 18) = 0xD000000000000020;
    *(result + 19) = 0x8000000225D1EA00;
    *(result + 20) = 0xD000000000000023;
    *(result + 21) = 0x8000000225D1EA30;
    *(result + 22) = 0xD000000000000012;
    *(result + 23) = 0x8000000225D1EA60;
    *(result + 24) = a1;
    *(result + 25) = a2;
    *(result + 26) = a3;
    *(result + 27) = a4;
    *(result + 28) = a5;
    *(result + 29) = a6;
    *(result + 30) = a7;
    result[248] = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t IdentityProofingTextReplacementHelper.__allocating_init(attributeMessages:messageReplacements:state:country:documentType:isWapi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = swift_allocObject();
  *(result + 16) = 0xD000000000000010;
  *(result + 24) = 0x8000000225D1E980;
  strcpy((result + 32), "id.subregion");
  *(result + 45) = 0;
  *(result + 46) = -5120;
  strcpy((result + 48), "idtype.proper");
  *(result + 62) = -4864;
  strcpy((result + 64), "idtype.lower");
  *(result + 77) = 0;
  *(result + 78) = -5120;
  *(result + 80) = 0x6E2E726575737369;
  *(result + 88) = 0xEB00000000656D61;
  *(result + 96) = 0xD000000000000011;
  *(result + 104) = 0x8000000225D1E9A0;
  *(result + 112) = 0xD000000000000018;
  *(result + 120) = 0x8000000225D1E9C0;
  *(result + 128) = 0xD00000000000001ALL;
  *(result + 136) = 0x8000000225D1E9E0;
  *(result + 144) = 0xD000000000000020;
  *(result + 152) = 0x8000000225D1EA00;
  *(result + 160) = 0xD000000000000023;
  *(result + 168) = 0x8000000225D1EA30;
  *(result + 176) = 0xD000000000000012;
  *(result + 184) = 0x8000000225D1EA60;
  *(result + 192) = a1;
  *(result + 200) = a2;
  *(result + 208) = a3;
  *(result + 216) = a4;
  *(result + 224) = a5;
  *(result + 232) = a6;
  *(result + 240) = a7;
  *(result + 248) = a8;
  return result;
}

uint64_t IdentityProofingTextReplacementHelper.init(attributeMessages:messageReplacements:state:country:documentType:isWapi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 16) = 0xD000000000000010;
  *(v8 + 24) = 0x8000000225D1E980;
  strcpy((v8 + 32), "id.subregion");
  *(v8 + 45) = 0;
  *(v8 + 46) = -5120;
  strcpy((v8 + 48), "idtype.proper");
  *(v8 + 62) = -4864;
  strcpy((v8 + 64), "idtype.lower");
  *(v8 + 77) = 0;
  *(v8 + 78) = -5120;
  *(v8 + 80) = 0x6E2E726575737369;
  *(v8 + 88) = 0xEB00000000656D61;
  *(v8 + 96) = 0xD000000000000011;
  *(v8 + 104) = 0x8000000225D1E9A0;
  *(v8 + 112) = 0xD000000000000018;
  *(v8 + 120) = 0x8000000225D1E9C0;
  *(v8 + 128) = 0xD00000000000001ALL;
  *(v8 + 136) = 0x8000000225D1E9E0;
  *(v8 + 144) = 0xD000000000000020;
  *(v8 + 152) = 0x8000000225D1EA00;
  *(v8 + 160) = 0xD000000000000023;
  *(v8 + 168) = 0x8000000225D1EA30;
  *(v8 + 176) = 0xD000000000000012;
  *(v8 + 184) = 0x8000000225D1EA60;
  *(v8 + 192) = a1;
  *(v8 + 200) = a2;
  *(v8 + 208) = a3;
  *(v8 + 216) = a4;
  *(v8 + 224) = a5;
  *(v8 + 232) = a6;
  *(v8 + 240) = a7;
  *(v8 + 248) = a8;
  return v8;
}

uint64_t sub_225B526EC(char *a1, unint64_t a2)
{
  v3 = v2;
  v144 = sub_225CCD954();
  v6 = *(v144 - 8);
  v7 = MEMORY[0x28223BE20](v144);
  v9 = v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v127 = v123 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v142 = v123 - v13;
  MEMORY[0x28223BE20](v12);
  v143 = v123 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC38, &qword_225CEF670);
  v139 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v148 = v123 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC40, &qword_225CEF678);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v2[24];
  if (!*(v24 + 16))
  {
LABEL_88:
    if (qword_28105B910 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_89;
  }

  v124 = v123 - v23;
  v125 = v22;

  v25 = sub_2259F18D4(a1, a2);
  if ((v26 & 1) == 0)
  {

    goto LABEL_88;
  }

  v149 = v6;
  v27 = (*(v24 + 56) + 16 * v25);
  v28 = *v27;
  v9 = v27[1];

  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DC48, &qword_225CEF680);
  sub_225CCD814();
  a1 = v124;
  v29 = v125;
  sub_225CCD844();
  v123[0] = *(v18 + 8);
  v123[1] = v18 + 8;
  (v123[0])(v21, v29);
  v129 = v28;
  *&v158 = v28;
  *(&v158 + 1) = v9;
  sub_225B53BA0();
  sub_225B53BF4();
  v30 = sub_225CCE374();
  v31 = v30;
  v138 = *(v30 + 16);
  if (!v138)
  {
LABEL_93:

    (v123[0])(v124, v125);
    return v129;
  }

  v134 = v30 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
  v150 = (v149 + 2);
  ++v149;
  v132 = (v139 + 8);
  v133 = v139 + 16;

  a2 = 0;
  v147 = 0;
  *&v32 = 136315138;
  v130 = v32;
  *(&v32 + 1) = 10;
  v131 = xmmword_225CD73C0;
  *&v32 = 136315394;
  v126 = v32;
  v128 = v9;
  v6 = v144;
  v141 = v3;
  v135 = v31;
  v136 = v9;
  v137 = v15;
  while (a2 < *(v31 + 16))
  {
    (*(v139 + 16))(v148, v134 + *(v139 + 72) * a2, v15);
    swift_getKeyPath();
    sub_225CCD854();

    v33 = MEMORY[0x22AA6CD90](v158, *(&v158 + 1), v159, v160);
    v35 = v34;

    *&v161 = v33;
    *(&v161 + 1) = v35;
    v36 = v3[2];
    v37 = v3[3];
    v146 = a2;
    if (v33 == v36 && v35 == v37 || (sub_225CCF934() & 1) != 0)
    {
      *&v158 = v33;
      *(&v158 + 1) = v35;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v38 = v3[28];
      v39 = v3[29];

      MEMORY[0x22AA6CE70](v38, v39);

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v40 = v3[26];
      v41 = v3[27];

      MEMORY[0x22AA6CE70](v40, v41);

      v42 = *(&v158 + 1);
      v33 = v158;
      v43 = 1;
      swift_beginAccess();
      v161 = __PAIR128__(v42, v33);

      if (__PAIR128__(v42, v33) != *(v3 + 2))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v43 = 0;
      if (v33 != v3[4])
      {
        v42 = v35;
LABEL_17:
        if ((sub_225CCF934() & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v42 = v35;
      if (v35 != v3[5])
      {
        goto LABEL_17;
      }
    }

LABEL_18:
    *&v158 = v33;
    *(&v158 + 1) = v42;

    MEMORY[0x22AA6CE70](46, 0xE100000000000000);
    v44 = v3[26];
    v45 = v3[27];

    MEMORY[0x22AA6CE70](v44, v45);

    v42 = *(&v158 + 1);
    v33 = v158;
    v43 = 1;
    swift_beginAccess();
    v161 = __PAIR128__(v42, v33);

LABEL_19:
    if (v33 == v3[6])
    {
      v46 = v143;
      if (v42 == v3[7])
      {
        goto LABEL_27;
      }
    }

    else
    {
      v46 = v143;
    }

    if (sub_225CCF934() & 1) != 0 || v33 == v3[8] && v42 == v3[9] || (sub_225CCF934())
    {
LABEL_27:
      *&v158 = v33;
      *(&v158 + 1) = v42;

      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v47 = v3[30];
      if (v47)
      {
        v48 = 0x636972656E6567;
        if (v47 == 1)
        {
          v48 = 0x64696574617473;
        }

        if (v47 == 3)
        {
          v49 = 0x74726F7073736170;
        }

        else
        {
          v49 = v48;
        }

        if (v47 == 3)
        {
          v50 = 0xE800000000000000;
        }

        else
        {
          v50 = 0xE700000000000000;
        }
      }

      else
      {
        v50 = 0xE200000000000000;
        v49 = 27748;
      }

      MEMORY[0x22AA6CE70](v49, v50);

      v51 = *(&v158 + 1);
      v33 = v158;
      swift_beginAccess();
      v161 = __PAIR128__(v51, v33);

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v52 = off_28105B918;
      v53 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v54 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v54));
      (*v150)(v46, &v52[v53], v6);
      os_unfair_lock_unlock(&v52[v54]);
      v55 = sub_225CCD934();
      v56 = sub_225CCED04();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v158 = v58;
        *v57 = v130;

        v59 = sub_2259BE198(v33, v51, &v158);

        *(v57 + 4) = v59;
        _os_log_impl(&dword_2259A7000, v55, v56, "attributeID is %s", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x22AA6F950](v58, -1, -1);
        MEMORY[0x22AA6F950](v57, -1, -1);

        (*v149)(v143, v6);
      }

      else
      {

        (*v149)(v46, v6);
      }

      v43 = 1;
      if (v33 == v3[10] && v51 == v3[11])
      {
LABEL_45:
        *&v158 = v33;
        *(&v158 + 1) = v51;

        MEMORY[0x22AA6CE70](46, 0xE100000000000000);
        v60 = v3[28];
        v61 = v3[29];

        MEMORY[0x22AA6CE70](v60, v61);

        MEMORY[0x22AA6CE70](46, 0xE100000000000000);
        v62 = v3[26];
        v63 = v3[27];

        MEMORY[0x22AA6CE70](v62, v63);

        v51 = *(&v158 + 1);
        v33 = v158;
        v43 = 1;
        swift_beginAccess();
        v161 = __PAIR128__(v51, v33);

        v64 = v3[13];
        if (v33 != v3[12])
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (v33 == v3[10])
    {
      v51 = v42;
      if (v42 == v3[11])
      {
        goto LABEL_45;
      }
    }

    else
    {
      v51 = v42;
    }

LABEL_44:
    if (sub_225CCF934())
    {
      goto LABEL_45;
    }

    v64 = v3[13];
    if (v33 != v3[12])
    {
LABEL_49:
      v65 = v142;
LABEL_50:
      if ((sub_225CCF934() & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_51;
    }

LABEL_46:
    v65 = v142;
    if (v51 != v64)
    {
      goto LABEL_50;
    }

LABEL_51:
    if (*(v3 + 248))
    {
      v66 = 1851878519;
    }

    else
    {
      v66 = 1768319351;
    }

    *&v158 = v33;
    *(&v158 + 1) = v51;

    MEMORY[0x22AA6CE70](46, 0xE100000000000000);
    MEMORY[0x22AA6CE70](v66, 0xE400000000000000);
    v51 = *(&v158 + 1);
    v33 = v158;
    swift_beginAccess();
    v161 = __PAIR128__(v51, v33);

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v67 = off_28105B918;
    v68 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v69 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v69));
    (*v150)(v65, &v67[v68], v6);
    os_unfair_lock_unlock(&v67[v69]);

    v70 = sub_225CCD934();
    v71 = sub_225CCED04();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v158 = v73;
      *v72 = v130;

      v74 = sub_2259BE198(v33, v51, &v158);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_2259A7000, v70, v71, "attributeID is %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AA6F950](v73, -1, -1);
      MEMORY[0x22AA6F950](v72, -1, -1);

      (*v149)(v142, v6);
    }

    else
    {

      (*v149)(v65, v6);
    }

    v43 = 1;
LABEL_60:
    v140 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
    inited = swift_initStackObject();
    v145 = v123;
    *(inited + 16) = v131;
    v76 = v3[15];
    *(inited + 32) = v3[14];
    *(inited + 40) = v76;
    v77 = v3[17];
    *(inited + 48) = v3[16];
    *(inited + 56) = v77;
    v78 = v3[19];
    *(inited + 64) = v3[18];
    *(inited + 72) = v78;
    a1 = v3[21];
    *(inited + 80) = v3[20];
    *(inited + 88) = a1;
    v79 = v3[23];
    *(inited + 96) = v3[22];
    *(inited + 104) = v79;
    *&v158 = v33;
    *(&v158 + 1) = v51;
    MEMORY[0x28223BE20](v76);
    v121 = &v158;

    v9 = v147;
    LOBYTE(v78) = sub_225B53C58(sub_225AF3BE4, v120, inited);
    v147 = v9;
    swift_setDeallocating();
    swift_arrayDestroy();

    if (v78)
    {
      *&v158 = v33;
      *(&v158 + 1) = v51;
      swift_bridgeObjectRetain_n();
      MEMORY[0x22AA6CE70](46, 0xE100000000000000);
      v80 = v141;
      v81 = v141[28];
      v82 = v141[29];

      MEMORY[0x22AA6CE70](v81, v82);

      a1 = *(&v158 + 1);
      if (*(v80[25] + 16) && (v83 = v158, , sub_2259F18D4(v83, a1), v85 = v84, , (v85 & 1) != 0))
      {
        swift_beginAccess();
        *&v161 = v83;
        *(&v161 + 1) = a1;

        v86 = a1;
      }

      else
      {
        *&v158 = v33;
        *(&v158 + 1) = v51;

        MEMORY[0x22AA6CE70](0x746C75616665642ELL, 0xE800000000000000);
        v86 = *(&v158 + 1);
        v83 = v158;
        swift_beginAccess();
        v161 = __PAIR128__(v86, v83);
      }

      v6 = v144;
      v145 = v83;

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v87 = off_28105B918;
      v88 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v89 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v89));
      v90 = v127;
      (*v150)(v127, &v87[v88], v6);
      v91 = &v87[v89];
      v92 = v90;
      os_unfair_lock_unlock(v91);

      v93 = sub_225CCD934();
      v94 = sub_225CCED04();

      if (os_log_type_enabled(v93, v94))
      {
        a1 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v158 = v95;
        *a1 = v126;
        v96 = sub_2259BE198(v33, v51, &v158);

        *(a1 + 4) = v96;
        *(a1 + 6) = 2080;

        v97 = v145;
        v98 = sub_2259BE198(v145, v86, &v158);

        *(a1 + 14) = v98;
        _os_log_impl(&dword_2259A7000, v93, v94, "IdentityProofingTextReplacementHelper updating %s to %s", a1, 0x16u);
        swift_arrayDestroy();
        v99 = v95;
        v6 = v144;
        MEMORY[0x22AA6F950](v99, -1, -1);
        MEMORY[0x22AA6F950](a1, -1, -1);

        v9 = v97;
        (*v149)(v92, v6);
LABEL_71:
        v3 = v141;
        v15 = v137;
      }

      else
      {

        (*v149)(v92, v6);
        v3 = v141;
        v15 = v137;
        v9 = v145;
      }

      v100 = v3[25];
      if (*(v100 + 16))
      {

        v9 = sub_2259F18D4(v9, v86);
        v104 = v103;

        if (v104)
        {
          goto LABEL_78;
        }

LABEL_82:

        goto LABEL_5;
      }

      goto LABEL_5;
    }

    if (v140)
    {
      v9 = v33;
      v86 = v51;
      v6 = v144;
      goto LABEL_71;
    }

    v3 = v141;
    v100 = v141[24];
    v6 = v144;
    if (*(v100 + 16))
    {

      v9 = sub_2259F18D4(v33, v51);
      v102 = v101;

      if (v102)
      {
        v15 = v137;
LABEL_78:
        v105 = (*(v100 + 56) + 16 * v9);
        v106 = *v105;
        v107 = v105[1];

        v156 = v129;
        v157 = v128;
        swift_getKeyPath();
        a1 = v148;
        sub_225CCD854();

        v9 = v160;
        v153 = v158;
        v154 = v159;
        v155 = v160;
        v151 = v106;
        v152 = v107;
        v108 = sub_2259D8654();
        v121 = sub_225B53E2C();
        v122 = v108;
        v120[1] = v108;
        v120[0] = MEMORY[0x277D837D0];
        v129 = sub_225CCF064();
        v110 = v109;

        (*v132)(a1, v15);

        v128 = v110;
        v6 = v144;
        goto LABEL_6;
      }

      v15 = v137;
      goto LABEL_82;
    }

    v15 = v137;
LABEL_5:
    (*v132)(v148, v15);

LABEL_6:
    a2 = v146 + 1;
    v31 = v135;
    if (v138 == v146 + 1)
    {

      goto LABEL_93;
    }
  }

  __break(1u);
LABEL_95:
  swift_once();
LABEL_89:
  v111 = off_28105B918;
  v112 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v113 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v113));
  v114 = v144;
  (*(v6 + 16))(v9, &v111[v112], v144);
  os_unfair_lock_unlock(&v111[v113]);

  v115 = sub_225CCD934();
  v116 = sub_225CCED14();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&v158 = v118;
    *v117 = 136315138;
    *(v117 + 4) = sub_2259BE198(a1, a2, &v158);
    _os_log_impl(&dword_2259A7000, v115, v116, "Attribute config is always expected to have a value for the messageId %s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v118);
    MEMORY[0x22AA6F950](v118, -1, -1);
    MEMORY[0x22AA6F950](v117, -1, -1);
  }

  (*(v6 + 8))(v9, v114);
  return 0;
}

void *IdentityProofingTextReplacementHelper.deinit()
{

  return v0;
}

uint64_t IdentityProofingTextReplacementHelper.__deallocating_deinit()
{
  IdentityProofingTextReplacementHelper.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_225B53BA0()
{
  result = qword_27D73DC50;
  if (!qword_27D73DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC50);
  }

  return result;
}

unint64_t sub_225B53BF4()
{
  result = qword_27D73DC58;
  if (!qword_27D73DC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73DC40, &qword_225CEF678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC58);
  }

  return result;
}

uint64_t sub_225B53C58(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_225B53D04(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_225CCE644();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_225CCE644();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_225B53DD4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_225CCF934() & 1;
  }
}

unint64_t sub_225B53E2C()
{
  result = qword_27D73DC60;
  if (!qword_27D73DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73DC60);
  }

  return result;
}

id IdentityBindingDetails.__allocating_init(templateUUIDs:passDescriptions:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_templateUUIDs] = a1;
  *&v5[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_passDescriptions] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id IdentityBindingDetails.init(templateUUIDs:passDescriptions:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_templateUUIDs] = a1;
  *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_passDescriptions] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall IdentityBindingDetails.encode(with:)(NSCoder with)
{
  sub_225CCD124();
  v2 = sub_225CCE7F4();
  v3 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_225CCE7F4();
  v5 = sub_225CCE444();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id IdentityBindingDetails.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DC80, &unk_225CEF7D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_225CD4890;
  v6 = sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  *(v5 + 32) = v6;
  *(v5 + 40) = sub_2259D8718(0, &unk_27D73DC90, 0x277CCAD78);
  sub_225CCEF24();

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DCA0, &unk_225CEF7E0);
    if (swift_dynamicCast())
    {
      *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_templateUUIDs] = v11;
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_225CD4890;
      *(v7 + 32) = v6;
      *(v7 + 40) = sub_2259D8718(0, &qword_281059A60, 0x277CCACA8);
      sub_225CCEF24();

      if (v13)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
        if (swift_dynamicCast())
        {
          *&v2[OBJC_IVAR____TtC13CoreIDVShared22IdentityBindingDetails_passDescriptions] = v11;
          v10.receiver = v2;
          v10.super_class = ObjectType;
          v8 = objc_msgSendSuper2(&v10, sel_init);

          return v8;
        }
      }

      else
      {

        sub_225B5445C(v12);
      }
    }

    else
    {
    }
  }

  else
  {

    sub_225B5445C(v12);
  }

  swift_deallocPartialClassInstance();
  return 0;
}