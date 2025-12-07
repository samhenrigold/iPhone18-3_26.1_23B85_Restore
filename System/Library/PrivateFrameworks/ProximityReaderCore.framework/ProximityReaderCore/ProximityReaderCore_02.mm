unint64_t sub_2611BFA98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v2 = sub_26121D310();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_2611B69DC(&v22, v24);
        sub_2611B69DC(v24, v25);
        sub_2611B69DC(v25, &v23);
        result = sub_2611B3970(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_2611B69DC(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_2611B69DC(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2611BFCEC(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2611C041C(sub_2611C11F0, 0, a1, MEMORY[0x277D837D0], MEMORY[0x277D84A98], *(a2 + 32), MEMORY[0x277D84AC0], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  sub_2611C1CC8(&qword_27FE87960, &qword_27FE87468, &qword_2612210E0, MEMORY[0x277D83958]);
  v8 = sub_26121CBF0();

  return v8;
}

uint64_t sub_2611BFDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v3 = sub_26121CB70();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26121CCD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26121CB20();
  v18 = *(v10 - 8);
  v19 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121CCC0();
  v13 = sub_26121CC90();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (v15 >> 60 != 15)
  {
    sub_2611C2030(&qword_27FE87320, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_26121CB10();
    sub_26119D904(v13, v15);
    sub_2611AB8C8(v13, v15, v5);
    sub_26119EF48(v13, v15);
    sub_26121CB00();
    sub_26119EF48(v13, v15);
    (*(v20 + 8))(v5, v3);
    v13 = sub_2611C00BC();
    (*(v18 + 8))(v12, v19);
  }

  return v13;
}

uint64_t sub_2611C00BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_26121CB60();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121CB20();
  sub_2611C2030(&qword_27FE87328, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  sub_26121CB30();
  v5 = sub_26121CB50();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_2611C041C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_26121D0C0();
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
  v32 = sub_26121CE80();
  v63 = sub_26121D2B0();
  v58 = sub_26121D2C0();
  sub_26121D260();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_26121CE70();
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
      sub_26121D110();
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
      sub_26121D2A0();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_26121D110();
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
      sub_26121D2A0();
      sub_26121D110();
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

uint64_t sub_2611C0B10@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v18 = sub_26121C430();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26121C990();
  v3 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87560, &unk_261222400);
  v6 = sub_26121C980();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_261221630;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v11, *MEMORY[0x277CC9978], v6);
  v12(v11 + v8, *MEMORY[0x277CC9988], v6);
  v12(v11 + 2 * v8, *MEMORY[0x277CC99B0], v6);
  v12(v11 + 3 * v8, *MEMORY[0x277CC9998], v6);
  v12(v11 + 4 * v8, *MEMORY[0x277CC9968], v6);
  v12(v11 + 5 * v8, *MEMORY[0x277CC9980], v6);
  sub_2611C1D10(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26121C950();

  sub_26121C960();
  (*(v16 + 8))(v2, v18);
  return (*(v3 + 8))(v5, v15);
}

uint64_t sub_2611C0E50@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87568, &qword_261221658);
  MEMORY[0x28223BE20](v1 - 8);
  v19 = &v16 - v2;
  v21 = sub_26121C430();
  v20 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26121C990();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87560, &unk_261222400);
  v8 = sub_26121C980();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261221640;
  v13 = v12 + v11;
  v14 = *(v9 + 104);
  v14(v13, *MEMORY[0x277CC9978], v8);
  v14(v13 + v10, *MEMORY[0x277CC9988], v8);
  v14(v13 + 2 * v10, *MEMORY[0x277CC99B0], v8);
  v14(v13 + 3 * v10, *MEMORY[0x277CC9998], v8);
  v14(v13 + 4 * v10, *MEMORY[0x277CC9968], v8);
  sub_2611C1D10(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_26121C950();

  sub_26121C9A0();
  sub_26121C420();
  sub_26121C960();
  (*(v20 + 8))(v4, v21);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_2611C11F0@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F8, &unk_2612203E0);
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84B78];
  *(v4 + 16) = xmmword_2612203B0;
  v6 = MEMORY[0x277D84BC0];
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 32) = v3;
  result = sub_26121CCB0();
  *a2 = result;
  a2[1] = v8;
  return result;
}

void sub_2611C1284()
{
  sub_261199348();

  v0 = sub_26121CC50();

  v1 = [objc_opt_self() bundleWithIdentifier_];

  if (v1)
  {
    qword_27FE9EFD0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2611C130C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v38 = a2;
  v36 = a1;
  v4 = sub_26121C930();
  MEMORY[0x28223BE20](v4 - 8);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_26121C520();
  v35 = *(v37 - 8);
  v6 = MEMORY[0x28223BE20](v37);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v30 - v8;
  v9 = sub_26121CC30();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v16 = sub_26121C510();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  if (qword_27FE8CE30 != -1)
  {
    swift_once();
  }

  v23 = [qword_27FE9EFD0 bundleURL];
  sub_26121C5B0();

  (*(v17 + 104))(v22, *MEMORY[0x277CC9118], v16);

  sub_26121CC40();
  v24 = *(v10 + 16);
  v30 = v9;
  v24(v13, v15, v9);
  sub_26121C8C0();
  (*(v17 + 16))(v20, v22, v16);

  v25 = v31;
  sub_26121C530();
  v26 = v35;
  v27 = v37;
  (*(v35 + 16))(v34, v25, v37);
  v28 = sub_26121CCE0();
  (*(v26 + 8))(v25, v27);
  (*(v10 + 8))(v15, v30);
  (*(v17 + 8))(v22, v16);
  return v28;
}

uint64_t sub_2611C1728(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v6 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v9 = MEMORY[0x277D84F90];
  if (v6)
  {
    v47 = MEMORY[0x277D84F90];
    sub_2611B7D88(0, v6 & ~(v6 >> 63), 0);
    v10 = a1;
    if (v5)
    {
      if (v5 == 2)
      {
        v11 = *(a1 + 16);
      }

      else
      {
        v11 = a1;
      }
    }

    else
    {
      v11 = 0;
    }

    v34 = v11;
    if (v6 < 0)
    {
      goto LABEL_48;
    }

    v12 = 0;
    v9 = v47;
    v29 = &v35 + v11;
    v32 = v6;
    v33 = v5;
    do
    {
      if (v12 >= v6)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_41;
      }

      v14 = v34 + v12;
      if (v5 == 2)
      {
        if (v14 < *(v10 + 16))
        {
          goto LABEL_43;
        }

        if (v14 >= *(v10 + 24))
        {
          goto LABEL_45;
        }

        v19 = sub_26121C3C0();
        if (!v19)
        {
          goto LABEL_51;
        }

        v16 = v19;
        v20 = sub_26121C3F0();
        v18 = v14 - v20;
        if (__OFSUB__(v14, v20))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v5 != 1)
        {
          if (v14 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v35 = v10;
          v36 = BYTE2(v10);
          v37 = BYTE3(v10);
          v38 = v30;
          v39 = BYTE5(v10);
          v40 = BYTE6(v10);
          v41 = HIBYTE(v10);
          v42 = a2;
          v43 = BYTE2(a2);
          v44 = BYTE3(a2);
          v45 = BYTE4(a2);
          v46 = BYTE5(a2);
          v21 = v29[v12];
          goto LABEL_36;
        }

        if (v14 < a1 || v14 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v15 = sub_26121C3C0();
        if (!v15)
        {
          goto LABEL_50;
        }

        v16 = v15;
        v17 = sub_26121C3F0();
        v18 = v14 - v17;
        if (__OFSUB__(v14, v17))
        {
          goto LABEL_46;
        }
      }

      v21 = *(v16 + v18);
      v10 = a1;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F8, &unk_2612203E0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2612203B0;
      *(v22 + 56) = MEMORY[0x277D84B78];
      *(v22 + 64) = MEMORY[0x277D84BC0];
      *(v22 + 32) = v21;
      v23 = sub_26121CCB0();
      v25 = v24;
      v47 = v9;
      v5 = *(v9 + 16);
      v26 = *(v9 + 24);
      if (v5 >= v26 >> 1)
      {
        sub_2611B7D88((v26 > 1), v5 + 1, 1);
        v10 = a1;
        v9 = v47;
      }

      *(v9 + 16) = v5 + 1;
      v27 = v9 + 16 * v5;
      *(v27 + 32) = v23;
      *(v27 + 40) = v25;
      ++v12;
      v6 = v32;
      LODWORD(v5) = v33;
    }

    while (v13 != v32);
  }

  return v9;
}

unint64_t sub_2611C1A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87588, &unk_261221660);
    v3 = sub_26121D310();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2611B3970(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2611C1B98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v3 = sub_26121D310();
    v4 = a1 + 32;

    while (1)
    {
      sub_2611ABE1C(v4, &v13, &qword_27FE87590, &unk_2612223D0);
      v5 = v13;
      v6 = v14;
      result = sub_2611B3970(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2611B69DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_2611C1CC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_2611C1D10(uint64_t a1)
{
  v2 = sub_26121C980();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87570, &qword_261222720);
    v9 = sub_26121D1C0();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2611C2030(&qword_27FE87578, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v16 = sub_26121CBC0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2611C2030(&qword_27FE87580, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v23 = sub_26121CC20();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2611C2030(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FeatureFlagProvider.isEnabled(_:)()
{
  v3[3] = &type metadata for FeatureFlagsKey;
  v3[4] = sub_2611C2114();
  v0 = swift_allocObject();
  v3[0] = v0;
  *(v0 + 16) = "AppleAccount";
  *(v0 + 24) = 12;
  *(v0 + 32) = 2;
  *(v0 + 40) = "AABranding";
  *(v0 + 48) = 10;
  *(v0 + 56) = 2;
  v1 = sub_26121C9C0();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

unint64_t sub_2611C2114()
{
  result = qword_27FE8CE40[0];
  if (!qword_27FE8CE40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8CE40);
  }

  return result;
}

uint64_t sub_2611C2178()
{
  v3[3] = &type metadata for FeatureFlagsKey;
  v3[4] = sub_2611C2114();
  v0 = swift_allocObject();
  v3[0] = v0;
  *(v0 + 16) = "AppleAccount";
  *(v0 + 24) = 12;
  *(v0 + 32) = 2;
  *(v0 + 40) = "AABranding";
  *(v0 + 48) = 10;
  *(v0 + 56) = 2;
  v1 = sub_26121C9C0();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v1 & 1;
}

uint64_t FeatureFlag.hashValue.getter()
{
  sub_26121D5B0();
  MEMORY[0x2666FC740](0);
  return sub_26121D5D0();
}

unint64_t sub_2611C2284()
{
  result = qword_27FE87598;
  if (!qword_27FE87598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87598);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2611C2320(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2611C2340(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t ContentInternal.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContentInternal.topic.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ContentInternal.subtopic.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall ContentInternal.init(id:topic:subtopic:)(ProximityReaderCore::ContentInternal *__return_ptr retstr, Swift::String id, Swift::String topic, Swift::String subtopic)
{
  retstr->id = id;
  retstr->topic = topic;
  retstr->subtopic = subtopic;
}

uint64_t static ContentInternal.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_26121D4D0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_26121D4D0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_26121D4D0();
}

uint64_t sub_2611C2538()
{
  v1 = 0x6369706F74;
  if (*v0 != 1)
  {
    v1 = 0x6369706F74627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2611C2584@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2611C3050(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2611C25AC(uint64_t a1)
{
  v2 = sub_2611C27E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611C25E8(uint64_t a1)
{
  v2 = sub_2611C27E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentInternal.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875A0, &qword_261221790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611C27E8();
  sub_26121D600();
  v14 = 0;
  v9 = v11[5];
  sub_26121D460();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_26121D460();
  v12 = 2;
  sub_26121D460();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2611C27E8()
{
  result = qword_27FE8CFD0[0];
  if (!qword_27FE8CFD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8CFD0);
  }

  return result;
}

uint64_t ContentInternal.hash(into:)(uint64_t a1)
{
  sub_26121CD50();
  sub_26121CD50();

  return sub_26121CD50();
}

uint64_t ContentInternal.hashValue.getter()
{
  sub_26121D5B0();
  sub_26121CD50();
  sub_26121CD50();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t ContentInternal.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875A8, &qword_261221798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611C27E8();
  sub_26121D5F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_26121D3B0();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_26121D3B0();
  v21 = v12;
  v23 = 2;
  v13 = sub_26121D3B0();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2611C2BD4()
{
  sub_26121D5B0();
  sub_26121CD50();
  sub_26121CD50();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611C2C58(uint64_t a1)
{
  sub_26121CD50();
  sub_26121CD50();

  return sub_26121CD50();
}

uint64_t sub_2611C2CC4(uint64_t a1)
{
  sub_26121D5B0();
  sub_26121CD50();
  sub_26121CD50();
  sub_26121CD50();
  return sub_26121D5D0();
}

unint64_t sub_2611C2D48()
{
  result = qword_27FE875B0;
  if (!qword_27FE875B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875B0);
  }

  return result;
}

uint64_t sub_2611C2D9C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_26121D4D0() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_26121D4D0() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_26121D4D0();
}

uint64_t sub_2611C2E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2611C2EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2611C2F4C()
{
  result = qword_27FE8D2E0[0];
  if (!qword_27FE8D2E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8D2E0);
  }

  return result;
}

unint64_t sub_2611C2FA4()
{
  result = qword_27FE8D3F0;
  if (!qword_27FE8D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8D3F0);
  }

  return result;
}

unint64_t sub_2611C2FFC()
{
  result = qword_27FE8D3F8;
  if (!qword_27FE8D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8D3F8);
  }

  return result;
}

uint64_t sub_2611C3050(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369706F74 && a2 == 0xE500000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369706F74627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

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

uint64_t sub_2611C3198(uint64_t a1, uint64_t a2)
{
  sub_26121D5B0();
  sub_26121CBD0();
  return sub_26121D5D0();
}

uint64_t sub_2611C31FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611C374C();

  return MEMORY[0x28211C010](a1, a2, v4);
}

uint64_t sub_2611C3248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26121D5B0();
  sub_26121CBD0();
  return sub_26121D5D0();
}

unint64_t sub_2611C32A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611C351C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2611C32DC(uint64_t a1)
{
  v2 = sub_2611C374C();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_2611C3318(uint64_t a1)
{
  v2 = sub_2611C374C();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_2611C335C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2611C374C();

  return MEMORY[0x28211C008](a1, a2, v4);
}

uint64_t DiscoveryErrorInternal.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x4E746E65746E6F63;
      case 1:
        return 0xD000000000000014;
      case 2:
        return 0x6F70707553746F6ELL;
    }

LABEL_16:
    result = sub_26121D510();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x656C6C65636E6163;
    }

    if (a1 == 6)
    {
      return 0x6E776F6E6B6E75;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x75426D6574737973;
  }
}

unint64_t sub_2611C351C(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611C3530()
{
  result = qword_27FE875B8;
  if (!qword_27FE875B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875B8);
  }

  return result;
}

unint64_t sub_2611C3588()
{
  result = qword_27FE875C0;
  if (!qword_27FE875C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875C0);
  }

  return result;
}

unint64_t sub_2611C35E0()
{
  result = qword_27FE875C8;
  if (!qword_27FE875C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875C8);
  }

  return result;
}

unint64_t sub_2611C3638()
{
  result = qword_27FE875D0;
  if (!qword_27FE875D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875D0);
  }

  return result;
}

unint64_t sub_2611C3690()
{
  result = qword_27FE875D8;
  if (!qword_27FE875D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875D8);
  }

  return result;
}

unint64_t sub_2611C36E8()
{
  result = qword_27FE875E0;
  if (!qword_27FE875E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875E0);
  }

  return result;
}

unint64_t sub_2611C374C()
{
  result = qword_27FE875E8;
  if (!qword_27FE875E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE875E8);
  }

  return result;
}

uint64_t static LocaleHelper.encode(language:)(uint64_t a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F8, &qword_261221B88);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87600, &qword_261221B90);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_26121C930();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87608, &qword_261221B98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_26121C910();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2611ABE1C(v19, v9, &qword_27FE87608, &qword_261221B98);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2611AC114(v9, &qword_27FE87608, &qword_261221B98);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_26121C8E0();
    sub_26121C900();
    sub_26121C8F0();
    sub_26121C800();
    v15 = sub_26121C7D0();
    (*(v17 + 8))(v6, v18);
    (*(v11 + 8))(v13, v10);
    return v15;
  }
}

uint64_t static LocaleHelper.findLocaleInBundle(locale:bundle:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = v40 - v7;
  v8 = sub_26121C910();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v40 - v11;
  v13 = sub_26121C930();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v40 - v18;
  sub_2611ABE1C(a1, v12, &qword_27FE87548, &unk_261221BA0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2611AC114(v12, &qword_27FE87548, &unk_261221BA0);
    return (*(v14 + 56))(a3, 1, 1, v13);
  }

  v42 = a3;
  v21 = *(v14 + 32);
  v41 = v19;
  v21();
  v22 = [a2 localizations];
  v23 = sub_26121CEC0();

  v24 = *(v23 + 16);
  if (v24)
  {
    v47 = MEMORY[0x277D84F90];
    sub_2611C58E0(0, v24, 0);
    v25 = v47;
    v40[1] = v23;
    v26 = v23 + 40;
    do
    {

      sub_26121C7C0();
      v47 = v25;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_2611C58E0((v27 > 1), v28 + 1, 1);
        v25 = v47;
      }

      *(v25 + 16) = v28 + 1;
      (v21)(v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28, v17, v13);
      v26 += 16;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  MEMORY[0x28223BE20](v29);
  v30 = v41;
  v40[-2] = v41;
  v31 = sub_2611C458C(sub_2611C5F44, &v40[-4], v25);
  v32 = v31;
  v33 = *(v31 + 16);
  v34 = v42;
  if (v33 <= 1)
  {
    if (v33)
    {
      (*(v14 + 16))(v42, v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    goto LABEL_19;
  }

  v35 = v43;
  sub_26121C920();
  v36 = v46;
  sub_26121C8F0();
  (*(v44 + 8))(v35, v45);
  v37 = sub_2611C5F74(v32, v36);

  sub_2611AC114(v36, &qword_27FE875F0, &qword_261221B80);
  v38 = *(v37 + 16);
  if (v38 < 2)
  {
    if (v38)
    {
      (*(v14 + 16))(v34, v37 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);
      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

LABEL_19:

    (*(v14 + 56))(v34, v39, 1, v13);
    return (*(v14 + 8))(v30, v13);
  }

  (*(v14 + 16))(v34, v37 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

  (*(v14 + 56))(v34, 0, 1, v13);
  return (*(v14 + 8))(v30, v13);
}

uint64_t sub_2611C40A4(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v36 = sub_26121C7F0();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v33 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87628, &unk_261221BF0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87600, &qword_261221B90);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = sub_26121C910();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  sub_26121C920();
  sub_26121C8E0();
  v22 = *(v16 + 8);
  v22(v21, v15);
  sub_26121C920();
  sub_26121C8E0();
  v22(v19, v15);
  v23 = v34;
  v24 = v36;
  v25 = *(v4 + 56);
  sub_2611ABE1C(v14, v6, &qword_27FE87600, &qword_261221B90);
  sub_2611ABE1C(v12, &v6[v25], &qword_27FE87600, &qword_261221B90);
  v26 = *(v23 + 48);
  if (v26(v6, 1, v24) != 1)
  {
    sub_2611ABE1C(v6, v37, &qword_27FE87600, &qword_261221B90);
    if (v26(&v6[v25], 1, v24) != 1)
    {
      v28 = v33;
      (*(v23 + 32))(v33, &v6[v25], v24);
      sub_2611C6424(&qword_27FE87630, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
      v29 = v37;
      v27 = sub_26121CC20();
      v30 = *(v23 + 8);
      v30(v28, v24);
      sub_2611AC114(v12, &qword_27FE87600, &qword_261221B90);
      sub_2611AC114(v14, &qword_27FE87600, &qword_261221B90);
      v30(v29, v24);
      sub_2611AC114(v6, &qword_27FE87600, &qword_261221B90);
      return v27 & 1;
    }

    sub_2611AC114(v12, &qword_27FE87600, &qword_261221B90);
    sub_2611AC114(v14, &qword_27FE87600, &qword_261221B90);
    (*(v23 + 8))(v37, v24);
    goto LABEL_6;
  }

  sub_2611AC114(v12, &qword_27FE87600, &qword_261221B90);
  sub_2611AC114(v14, &qword_27FE87600, &qword_261221B90);
  if (v26(&v6[v25], 1, v24) != 1)
  {
LABEL_6:
    sub_2611AC114(v6, &qword_27FE87628, &unk_261221BF0);
    v27 = 0;
    return v27 & 1;
  }

  sub_2611AC114(v6, &qword_27FE87600, &qword_261221B90);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_2611C458C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_26121C930();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2611C58E0(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2611C58E0((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

void static LocaleHelper.resolveCardPreferredLocale(from:preferredRegion:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v108 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v95 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v102 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v114 = &v95 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v95 - v17;
  v19 = sub_26121C930();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v95 - v24;
  MEMORY[0x28223BE20](v23);
  v105 = &v95 - v25;
  v26 = sub_26121CD60();
  if (v26)
  {
    v27 = v26;
    v28 = sub_2611C5BA0(v26, 0);

    v29 = sub_2611C5AD8(&v122, v28 + 4, v27, a1, a2);

    if (v29 != v27)
    {
LABEL_66:
      __break(1u);
      return;
    }

    v30 = v28;
    v31 = v28[2];
    if (v31)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
    v31 = *(MEMORY[0x277D84F90] + 16);
    if (v31)
    {
LABEL_4:
      v106 = v18;
      v97 = a4;
      v32 = 0;
      v113 = v20 + 16;
      v115 = (v20 + 56);
      v116 = (v20 + 32);
      v112 = v20 + 48;
      v107 = v19;
      v98 = v14;
      v110 = v30;
      v101 = v31;
      v100 = v30 + 4;
      while (1)
      {
        v33 = v32 | 1;
        if ((v32 | 1) >= v31)
        {

          v88 = sub_2611F04C0();
          v89 = v95;
          sub_2611ABE1C(v88, v95, &qword_27FE87700, &unk_2612203D0);
          v90 = sub_26121CA60();
          v91 = *(v90 - 8);
          if ((*(v91 + 48))(v89, 1, v90) == 1)
          {
            sub_2611AC114(v89, &qword_27FE87700, &unk_2612203D0);
          }

          else
          {
            v92 = sub_26121CA40();
            v93 = sub_26121CFC0();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              *v94 = 0;
              _os_log_impl(&dword_261197000, v92, v93, "error parsing preferred language tag, array out of bounds", v94, 2u);
              MEMORY[0x2666FCF20](v94, -1, -1);
            }

            (*(v91 + 8))(v95, v90);
          }

          (*v115)(v97, 1, 1, v19);
          return;
        }

        if (v32 >= v30[2])
        {
          goto LABEL_64;
        }

        v109 = v32;

        v34 = sub_26121CBE0();
        v36 = v35;

        v122 = v34;
        v123 = v36;
        if (v33 >= v110[2])
        {
          goto LABEL_65;
        }

        v37 = sub_26121CBE0();
        v39 = v38;

        MEMORY[0x2666FBF20](v37, v39);

        v117 = v122;
        v118 = v123;
        v41 = MEMORY[0x2666FB9C0](v40);
        v42 = v41;
        v43 = *(v41 + 16);
        if (v43)
        {
          v44 = 0;
          v45 = v41 + 40;
          v103 = v43 - 1;
          v46 = MEMORY[0x277D84F90];
          v104 = v41 + 40;
          do
          {
            v111 = v46;
            v47 = (v45 + 16 * v44);
            v48 = v44;
            while (1)
            {
              if (v48 >= *(v42 + 16))
              {
                __break(1u);
                goto LABEL_62;
              }

              v50 = *(v47 - 1);
              v49 = *v47;
              v44 = v48 + 1;
              v122 = v50;
              v123 = v49;
              v119 = v117;
              v120 = v118;
              sub_2611B6988();

              if (sub_26121D140())
              {
                break;
              }

              v47 += 2;
              ++v48;
              if (v43 == v44)
              {
                v46 = v111;
                goto LABEL_23;
              }
            }

            v51 = v111;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v121 = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2611B7D88(0, *(v51 + 16) + 1, 1);
              v51 = v121;
            }

            v54 = *(v51 + 16);
            v53 = *(v51 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_2611B7D88((v53 > 1), v54 + 1, 1);
              v51 = v121;
            }

            *(v51 + 16) = v54 + 1;
            v55 = v51 + 16 * v54;
            *(v55 + 32) = v50;
            *(v55 + 40) = v49;
            v56 = v103 == v48;
            v46 = v51;
            v45 = v104;
          }

          while (!v56);
        }

        else
        {
          v46 = MEMORY[0x277D84F90];
        }

LABEL_23:

        v57 = *(v46 + 16);
        if (v57)
        {
          v122 = MEMORY[0x277D84F90];
          sub_2611C58E0(0, v57, 0);
          v58 = v122;
          v59 = v46 + 40;
          v19 = v107;
          v60 = v105;
          do
          {

            sub_26121C7C0();
            v122 = v58;
            v62 = *(v58 + 16);
            v61 = *(v58 + 24);
            if (v62 >= v61 >> 1)
            {
              sub_2611C58E0((v61 > 1), v62 + 1, 1);
              v58 = v122;
            }

            *(v58 + 16) = v62 + 1;
            (*(v20 + 32))(v58 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v62, v60, v19);
            v59 += 16;
            --v57;
          }

          while (v57);
        }

        else
        {

          v58 = MEMORY[0x277D84F90];
          v19 = v107;
        }

        v63 = sub_2611C5F74(v58, v108);
        v64 = _s19ProximityReaderCore12LocaleHelperC12findUIBundleSo8NSBundleCSgyFZ_0();
        v65 = v106;
        v118 = v64;
        if (v64)
        {
          v66 = *(v63 + 16);
          if (v66)
          {
            v67 = 0;
            while (v67 < *(v63 + 16))
            {
              v68 = v114;
              (*(v20 + 16))(v114, v63 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v67, v19);
              v69 = *(v20 + 56);
              v69(v68, 0, 1, v19);
              static LocaleHelper.findLocaleInBundle(locale:bundle:)(v68, v118, v65);
              sub_2611AC114(v68, &qword_27FE87548, &unk_261221BA0);
              if ((*(v20 + 48))(v65, 1, v19) != 1)
              {

                v82 = *v116;
                v83 = v99;
                (*v116)(v99, v65, v19);
                v84 = v97;
                v82(v97, v83, v19);
                v69(v84, 0, 1, v19);
                return;
              }

              ++v67;
              sub_2611AC114(v65, &qword_27FE87548, &unk_261221BA0);
              if (v66 == v67)
              {
                goto LABEL_36;
              }
            }

LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

LABEL_36:

          v70 = *(v58 + 16);
          v71 = v98;
          if (v70)
          {
            v72 = 0;
            while (v72 < *(v58 + 16))
            {
              v73 = v114;
              (*(v20 + 16))(v114, v58 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v72, v19);
              v74 = *(v20 + 56);
              v74(v73, 0, 1, v19);
              static LocaleHelper.findLocaleInBundle(locale:bundle:)(v73, v118, v71);
              sub_2611AC114(v73, &qword_27FE87548, &unk_261221BA0);
              if ((*(v20 + 48))(v71, 1, v19) != 1)
              {

                v85 = *v116;
                v86 = v96;
                (*v116)(v96, v71, v19);
                v87 = v97;
                v85(v97, v86, v19);
                v74(v87, 0, 1, v19);
                return;
              }

              ++v72;
              sub_2611AC114(v71, &qword_27FE87548, &unk_261221BA0);
              if (v70 == v72)
              {
                goto LABEL_41;
              }
            }

            goto LABEL_63;
          }

LABEL_41:
        }

        else
        {

          v75 = sub_2611F04C0();
          v76 = v102;
          sub_2611ABE1C(v75, v102, &qword_27FE87700, &unk_2612203D0);
          v77 = sub_26121CA60();
          v78 = *(v77 - 8);
          if ((*(v78 + 48))(v76, 1, v77) != 1)
          {
            v79 = sub_26121CA40();
            v80 = sub_26121CFC0();
            if (os_log_type_enabled(v79, v80))
            {
              v81 = swift_slowAlloc();
              *v81 = 0;
              _os_log_impl(&dword_261197000, v79, v80, "UI Bundle not found, unable to check Locales", v81, 2u);
              MEMORY[0x2666FCF20](v81, -1, -1);
            }

            (*(v78 + 8))(v102, v77);
            v30 = v110;
            goto LABEL_48;
          }

          sub_2611AC114(v76, &qword_27FE87700, &unk_2612203D0);
        }

        v30 = v110;
LABEL_48:
        v32 = v109 + 2;
        v31 = v101;
        if (v109 + 2 >= v101)
        {

          a4 = v97;
          goto LABEL_52;
        }
      }
    }
  }

LABEL_52:
  (*(v20 + 56))(a4, 1, 1, v19);
}

uint64_t sub_2611C547C(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_26121C8A0();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87618, &qword_261221BE8);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v26 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = sub_26121C910();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C920();
  sub_26121C8F0();
  (*(v14 + 8))(v16, v13);
  v17 = *(v5 + 56);
  v18 = v27;
  sub_2611ABE1C(v12, v7, &qword_27FE875F0, &qword_261221B80);
  sub_2611ABE1C(v28, &v7[v17], &qword_27FE875F0, &qword_261221B80);
  v19 = *(v18 + 48);
  if (v19(v7, 1, v2) != 1)
  {
    v21 = v26;
    sub_2611ABE1C(v7, v26, &qword_27FE875F0, &qword_261221B80);
    if (v19(&v7[v17], 1, v2) != 1)
    {
      v22 = v25;
      (*(v18 + 32))(v25, &v7[v17], v2);
      sub_2611C6424(&qword_27FE87620, MEMORY[0x277CC9698], MEMORY[0x277CC96B0]);
      v20 = sub_26121CC20();
      v23 = *(v18 + 8);
      v23(v22, v2);
      sub_2611AC114(v12, &qword_27FE875F0, &qword_261221B80);
      v23(v21, v2);
      sub_2611AC114(v7, &qword_27FE875F0, &qword_261221B80);
      return v20 & 1;
    }

    sub_2611AC114(v12, &qword_27FE875F0, &qword_261221B80);
    (*(v18 + 8))(v21, v2);
    goto LABEL_6;
  }

  sub_2611AC114(v12, &qword_27FE875F0, &qword_261221B80);
  if (v19(&v7[v17], 1, v2) != 1)
  {
LABEL_6:
    sub_2611AC114(v7, &qword_27FE87618, &qword_261221BE8);
    v20 = 0;
    return v20 & 1;
  }

  sub_2611AC114(v7, &qword_27FE875F0, &qword_261221B80);
  v20 = 1;
  return v20 & 1;
}

void *sub_2611C58E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2611C5900(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2611C5900(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87638, &unk_261221C20);
  v10 = *(sub_26121C930() - 8);
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
  v15 = *(sub_26121C930() - 8);
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

uint64_t sub_2611C5AD8(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v14 = a4;
  v15 = a5;
  *&v16 = 0;
  *(&v16 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
LABEL_12:
    v8 = 0;
    goto LABEL_16;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_16:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 1;
    while (1)
    {
      v11 = sub_26121CDC0();
      if (!v12)
      {
        a4 = v14;
        a5 = v15;
        v8 = v10 - 1;
        goto LABEL_15;
      }

      *v9 = v11;
      v9[1] = v12;
      if (v8 == v10)
      {
        break;
      }

      v9 += 2;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_12;
      }
    }

    a4 = v14;
    a5 = v15;
LABEL_15:
    v7 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_2611C5BA0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87610, &qword_261221BE0);
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

id _s19ProximityReaderCore12LocaleHelperC12findUIBundleSo8NSBundleCSgyFZ_0()
{
  v0 = sub_26121C550();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26121C5F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v22 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  v14 = sub_26121CC50();
  v15 = [objc_opt_self() bundleWithIdentifier_];

  if (!v15)
  {
    return 0;
  }

  v16 = [v15 bundleURL];
  sub_26121C5B0();

  sub_26121C5A0();
  v17 = *(v5 + 8);
  v17(v8, v4);
  sub_26121C5A0();
  v17(v11, v4);
  v22[0] = 0xD00000000000002FLL;
  v22[1] = 0x800000026122D350;
  (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
  sub_2611B6988();
  sub_26121C5E0();
  (*(v1 + 8))(v3, v0);
  v18 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v19 = sub_26121C590();
  v20 = [v18 initWithURL_];

  v17(v11, v4);
  v17(v13, v4);
  return v20;
}

uint64_t sub_2611C5F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_26121C910();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26121C930();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  v55 = a2;

  v49 = a1;
  v17 = sub_2611C458C(sub_2611C63F4, v54, a1);
  if (!*(v17 + 16))
  {
    v43 = v7;
    v18 = v45;
    v53 = v14;
    v19 = sub_26121C8A0();
    v20 = *(v19 - 8);
    v51 = *(v20 + 48);
    v52 = v19;
    v50 = v20 + 48;
    if ((v51)(a2, 1) != 1)
    {

      v21 = *(v49 + 16);
      if (v21)
      {
        v46 = v9;
        v47 = v6;
        v23 = *(v11 + 16);
        v22 = v11 + 16;
        v48 = v23;
        v40 = (*(v22 + 64) + 32) & ~*(v22 + 64);
        v24 = v49 + v40;
        v25 = *(v22 + 56);
        v39 = (v22 - 8);
        v44 = (v22 + 16);
        v45 = v18 + 1;
        v17 = MEMORY[0x277D84F90];
        v26 = v43;
        v41 = v22;
        v42 = v10;
        v49 = v25;
        v23(v16, v24, v10);
        while (1)
        {
          v28 = v16;
          v29 = v46;
          sub_26121C920();
          v30 = v47;
          sub_26121C8F0();
          (*v45)(v29, v26);
          v31 = v51(v30, 1, v52);
          sub_2611AC114(v30, &qword_27FE875F0, &qword_261221B80);
          if (v31 == 1)
          {
            v32 = *v44;
            (*v44)(v53, v28, v10);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v56 = v17;
            v16 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2611C58E0(0, *(v17 + 16) + 1, 1);
              v17 = v56;
            }

            v27 = v49;
            v35 = *(v17 + 16);
            v34 = *(v17 + 24);
            if (v35 >= v34 >> 1)
            {
              sub_2611C58E0((v34 > 1), v35 + 1, 1);
              v27 = v49;
              v17 = v56;
            }

            *(v17 + 16) = v35 + 1;
            v36 = v17 + v40 + v35 * v27;
            v10 = v42;
            v32(v36, v53, v42);
            v26 = v43;
          }

          else
          {
            (*v39)(v28, v10);
            v27 = v49;
            v16 = v28;
          }

          v24 += v27;
          if (!--v21)
          {
            break;
          }

          v48(v16, v24, v10);
        }
      }

      else
      {
        return MEMORY[0x277D84F90];
      }
    }
  }

  return v17;
}

uint64_t sub_2611C6424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static AmountFormatter.formatter(currency:useISOCurrencySymbol:region:uiLanguageIdentifier:)(uint64_t a1, int a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v139 = a4;
  v136 = a3;
  LODWORD(v135) = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  MEMORY[0x28223BE20](v6 - 8);
  v131 = &v118 - v7;
  v141 = sub_26121C910();
  v121 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87600, &qword_261221B90);
  MEMORY[0x28223BE20](v9 - 8);
  v132 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE875F0, &qword_261221B80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v118 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v134 = (&v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v119 = &v118 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v118 - v19;
  v21 = sub_26121C930();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v130 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v118 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v133 = &v118 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v120 = &v118 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v118 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v118 - v35;
  sub_26121C7E0();
  v37 = sub_26121CD10();
  v137 = v38;
  v138 = v37;

  v39 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  sub_26121C8C0();
  v40 = sub_26121C820();
  v142 = *(v22 + 8);
  v143 = v22 + 8;
  v142(v36, v21);
  [v39 setLocale_];

  v118 = v27;
  if (v135)
  {
    v41 = sub_2611F04C0();
    sub_2611B8B74(v41, v20);
    v42 = sub_26121CA60();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v20, 1, v42) == 1)
    {
      sub_2611AC114(v20, &qword_27FE87700, &unk_2612203D0);
      v44 = 8;
    }

    else
    {
      v135 = a5;
      v45 = sub_26121CA40();
      v46 = sub_26121CFD0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        v48 = v46;
        v49 = v47;
        _os_log_impl(&dword_261197000, v45, v48, "Using iso4217 symbol style", v47, 2u);
        MEMORY[0x2666FCF20](v49, -1, -1);
      }

      (*(v43 + 8))(v20, v42);
      v44 = 8;
      a5 = v135;
    }
  }

  else
  {
    v44 = 2;
  }

  [v39 setNumberStyle_];
  type metadata accessor for CurrencyDefinitions();
  v50 = sub_26121C8A0();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v13, v136, v50);
  (*(v51 + 56))(v13, 0, 1, v50);
  v52 = v137;
  static CurrencyDefinitions.find(isoCurrencyCode:region:)(v138, v137, v13, &v144);
  sub_2611AC114(v13, &qword_27FE875F0, &qword_261221B80);
  v53 = v146;
  if (!v146)
  {
    v82 = sub_2611F04C0();
    v83 = v134;
    sub_2611B8B74(v82, v134);
    v84 = sub_26121CA60();
    v85 = *(v84 - 8);
    if ((*(v85 + 48))(v83, 1, v84) == 1)
    {
      sub_2611AC114(v83, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v92 = sub_26121CA40();
      v93 = sub_26121CFC0();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 0;
        _os_log_impl(&dword_261197000, v92, v93, "No definition, use USD code, use default locale, standard symbol", v94, 2u);
        v95 = v94;
        v52 = v137;
        MEMORY[0x2666FCF20](v95, -1, -1);
      }

      (*(v85 + 8))(v83, v84);
    }

    v96 = sub_2611C7704(&unk_2873A89A8);
    CurrencyDef.init(_:_:_:_:_:)(v96, v97, 0x53555F6E65, 0xE500000000000000, 2, 0, v138, v52, &v144);
    v98 = v144;
    v99 = v145;
    sub_2611C740C(&v144);
    sub_26119DA0C(v98, v99);

    return v39;
  }

  v129 = v39;
  v126 = v144;
  v125 = v145;
  v124 = v147;
  v127 = v148;
  v123 = v149;
  v122 = v150;

  v55 = *(v53 + 16);
  v56 = MEMORY[0x277D84F90];
  v128 = v53;
  if (v55)
  {
    v135 = a5;
    v144 = MEMORY[0x277D84F90];
    sub_2611C58E0(0, v55, 0);
    v56 = v144;
    v57 = v53 + 40;
    do
    {

      sub_26121C7C0();
      v144 = v56;
      v59 = *(v56 + 16);
      v58 = *(v56 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_2611C58E0((v58 > 1), v59 + 1, 1);
        v56 = v144;
      }

      *(v56 + 16) = v59 + 1;
      result = (*(v22 + 32))(v56 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v59, v34, v21);
      v57 += 16;
      --v55;
    }

    while (v55);
    a5 = v135;
  }

  v61 = v132;
  v60 = v133;
  if (!a5 || (v137 = *(v56 + 16)) == 0)
  {
LABEL_26:
    v75 = *(v56 + 16);
    v39 = v129;
    if (v75)
    {
      v76 = v131;
      (*(v22 + 16))(v131, v56 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * (v75 - 1), v21);

      (*(v22 + 56))(v76, 0, 1, v21);
      v77 = v130;
      (*(v22 + 32))(v130, v76, v21);
      v78 = v128;
      v79 = v127;
      v80 = v126;
      v81 = v125;
    }

    else
    {

      v86 = v131;
      (*(v22 + 56))(v131, 1, 1, v21);
      v77 = v130;
      sub_26121C8C0();
      v87 = (*(v22 + 48))(v86, 1, v21);
      v78 = v128;
      v79 = v127;
      v80 = v126;
      v81 = v125;
      if (v87 != 1)
      {
        sub_2611AC114(v86, &qword_27FE87548, &unk_261221BA0);
      }
    }

    v88 = sub_26121C820();
    v142(v77, v21);
    [v39 setLocale_];

    goto LABEL_33;
  }

  v62 = 0;
  v136 = v56 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
  v138 = v22 + 16;
  v135 = v121 + 8;
  while (1)
  {
    if (v62 >= *(v56 + 16))
    {
      __break(1u);
      return result;
    }

    v63 = v136 + *(v22 + 72) * v62;
    v134 = *(v22 + 16);
    (v134)(v60, v63, v21);
    v64 = v140;
    sub_26121C920();
    sub_26121C8E0();
    (*v135)(v64, v141);
    v65 = sub_26121C7F0();
    v66 = v61;
    v67 = *(v65 - 8);
    if ((*(v67 + 48))(v66, 1, v65) == 1)
    {
      sub_2611AC114(v66, &qword_27FE87600, &qword_261221B90);
      v61 = v66;
      goto LABEL_19;
    }

    v68 = v21;
    v69 = a5;
    v70 = sub_26121C7E0();
    v72 = v71;
    (*(v67 + 8))(v66, v65);
    v73 = v70;
    a5 = v69;
    if (v73 == v139 && v72 == v69)
    {
      break;
    }

    v74 = sub_26121D4D0();

    v21 = v68;
    v61 = v132;
    v60 = v133;
    if (v74)
    {

      goto LABEL_40;
    }

LABEL_19:
    ++v62;
    result = (v142)(v60, v21);
    if (v137 == v62)
    {
      goto LABEL_26;
    }
  }

  v21 = v68;
LABEL_40:
  v100 = v120;
  (*(v22 + 32))(v120, v133, v21);
  v101 = sub_26121C820();
  v39 = v129;
  [v129 setLocale_];

  v102 = sub_2611F04C0();
  v103 = v119;
  sub_2611B8B74(v102, v119);
  v104 = sub_26121CA60();
  v105 = *(v104 - 8);
  v106 = (*(v105 + 48))(v103, 1, v104);
  v107 = v118;
  if (v106 == 1)
  {
    v142(v100, v21);
    sub_2611AC114(v103, &qword_27FE87700, &unk_2612203D0);
    v78 = v128;
    v79 = v127;
    v80 = v126;
    v81 = v125;
  }

  else
  {
    (v134)(v118, v100, v21);

    v108 = sub_26121CA40();
    v109 = v107;
    v110 = sub_26121CFD0();

    if (os_log_type_enabled(v108, v110))
    {
      v111 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v144 = v141;
      *v111 = 136315394;
      *(v111 + 4) = sub_2611AA228(v139, a5, &v144);
      *(v111 + 12) = 2080;
      v112 = sub_26121C7D0();
      v114 = v113;
      v142(v109, v21);
      v115 = sub_2611AA228(v112, v114, &v144);
      v103 = v119;

      *(v111 + 14) = v115;
      _os_log_impl(&dword_261197000, v108, v110, "Found %s in candidates, %s", v111, 0x16u);
      v116 = v141;
      swift_arrayDestroy();
      v39 = v129;
      MEMORY[0x2666FCF20](v116, -1, -1);
      MEMORY[0x2666FCF20](v111, -1, -1);

      v142(v120, v21);
    }

    else
    {

      v117 = v142;
      v142(v107, v21);
      v117(v120, v21);
    }

    v79 = v127;
    v80 = v126;
    v81 = v125;
    (*(v105 + 8))(v103, v104);
    v78 = v128;
  }

LABEL_33:
  v89 = v124;
  v90 = v123;
  v91 = v122;
  v144 = v80;
  v145 = v81;
  v146 = v78;
  v147 = v124;
  LOBYTE(v148) = v79 & 1;
  v149 = v123;
  v150 = v122;
  sub_2611C740C(&v144);
  sub_2611C77B4(v80, v81, v78, v89, v79, v90, v91);
  return v39;
}

void sub_2611C740C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_26121C930();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v14 = sub_26121CC50();
  }

  else
  {
    v15 = v9;
    v16 = [v2 locale];
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v16;
    sub_26121C850();

    sub_26121C810();
    v19 = v18;
    (*(v8 + 8))(v11, v15);
    if (v19)
    {
      v14 = sub_26121CC50();
    }

    else
    {
      v14 = 0;
    }
  }

  [v2 setCurrencySymbol_];

  if (v13)
  {
    v20 = sub_2611F04C0();
    sub_2611B8B74(v20, v6);
    v21 = sub_26121CA60();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v6, 1, v21) == 1)
    {
      sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v23 = sub_26121CA40();
      v24 = sub_26121CFD0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_261197000, v23, v24, "hideDecimal enabled", v25, 2u);
        MEMORY[0x2666FCF20](v25, -1, -1);
      }

      (*(v22 + 8))(v6, v21);
    }

    [v2 setMaximumFractionDigits_];
    [v2 setMinimumFractionDigits_];
  }
}

uint64_t sub_2611C7704(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87640, &qword_261225D00);
  v10 = sub_2611C7810();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_2611AB648(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_2611C77B4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    sub_26119DA0C(result, a2);
  }

  return result;
}

unint64_t sub_2611C7810()
{
  result = qword_27FE87648;
  if (!qword_27FE87648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87640, &qword_261225D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87648);
  }

  return result;
}

void sub_2611C7874()
{
  type metadata accessor for LogoManager();
  v0 = swift_allocObject();
  SecureStorage.init()();
  qword_27FE8D808 = v0;
}

uint64_t static LogoManager.shared.getter()
{
  if (qword_27FE8D800 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2611C790C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_26121C5F0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2611C8360(a1, a2);
  if (v12[2] == 1)
  {
    v13 = v12[4];
    v14 = v12[5];

    type metadata accessor for Utilities();
    v18[2] = static Utilities.logoDirectoryPath()();
    v18[3] = v15;
    MEMORY[0x2666FBF20](v13, v14);
    sub_26121C570();

    (*(v9 + 56))(v7, 0, 1, v8);

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      v17 = SecureStorage.read(at:)(v11);
      (*(v9 + 8))(v11, v8);
      return v17;
    }

    sub_2611AC114(v7, &qword_27FE872F0, &unk_261222100);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_2611C7CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v44[1] = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = v44 - v7;
  v8 = sub_26121C5F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v44 - v13;
  result = sub_2611C8360(a1, a2);
  v17 = result;
  v54 = *(result + 16);
  if (!v54)
  {
  }

  v18 = 0;
  v51 = (v9 + 16);
  v55 = (v9 + 8);
  v19 = (result + 40);
  *&v16 = 136315138;
  v45 = v16;
  v52 = result;
  v53 = v12;
  v50 = v8;
  while (v18 < *(v17 + 16))
  {
    v21 = *(v19 - 1);
    v20 = *v19;
    type metadata accessor for Utilities();

    v57[0] = static Utilities.logoDirectoryPath()();
    v57[1] = v22;
    MEMORY[0x2666FBF20](v21, v20);

    sub_26121C570();

    if (SecureStorage.delete(at:)())
    {
      result = (*v55)(v14, v8);
    }

    else
    {
      v23 = sub_2611F0510();
      v24 = v56;
      sub_2611B8B74(v23, v56);
      v25 = sub_26121CA60();
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(v24, 1, v25) == 1)
      {
        (*v55)(v14, v8);
        result = sub_2611AC114(v56, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v27 = v53;
        (*v51)(v53, v14, v8);
        v28 = sub_26121CA40();
        v29 = sub_26121CFC0();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v46 = v30;
          v31 = swift_slowAlloc();
          v47 = v28;
          v48 = v31;
          v57[0] = v31;
          *v30 = v45;
          v32 = sub_26121C5C0();
          v34 = v33;
          v49 = *v55;
          v35 = v27;
          v36 = v50;
          v49(v35, v50);
          v37 = sub_2611AA228(v32, v34, v57);

          v38 = v46;
          *(v46 + 1) = v37;
          v39 = v29;
          v40 = v47;
          v41 = v38;
          _os_log_impl(&dword_261197000, v47, v39, "Could not clear cached logo in %s", v38, 0xCu);
          v42 = v48;
          __swift_destroy_boxed_opaque_existential_1(v48);
          MEMORY[0x2666FCF20](v42, -1, -1);
          MEMORY[0x2666FCF20](v41, -1, -1);

          v49(v14, v36);
          v8 = v36;
        }

        else
        {

          v43 = *v55;
          v8 = v50;
          (*v55)(v27, v50);
          v43(v14, v8);
        }

        result = (*(v26 + 8))(v56, v25);
        v17 = v52;
      }
    }

    ++v18;
    v19 += 2;
    if (v54 == v18)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2611C8360(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v60 - v7;
  type metadata accessor for Utilities();
  v9._countAndFlagsBits = static Utilities.logoDirectoryPath()();
  v10 = SecureStorage.getDirectoryContent(at:)(v9);
  if (v11)
  {

    v12 = sub_2611F0510();
    sub_2611B8B74(v12, v6);
    v13 = sub_26121CA60();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v6, 1, v13) == 1)
    {
      sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v39 = v11;
      v40 = sub_26121CA40();
      v41 = sub_26121CFC0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v68[0] = v43;
        *v42 = 136315138;
        swift_getErrorValue();
        v44 = sub_26121D550();
        v46 = sub_2611AA228(v44, v45, v68);

        *(v42 + 4) = v46;
        _os_log_impl(&dword_261197000, v40, v41, "Empty logo directory: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x2666FCF20](v43, -1, -1);
        MEMORY[0x2666FCF20](v42, -1, -1);
      }

      (*(v14 + 8))(v6, v13);
    }

    return MEMORY[0x277D84F90];
  }

  v15 = v10;
  v65 = a1;

  if (v15)
  {
    v63 = v8;
    v17 = *(v15 + 16);
    if (!v17)
    {
      v20 = MEMORY[0x277D84F90];
      goto LABEL_33;
    }

    v18 = 0;
    v19 = v15 + 40;
    v61 = v17 - 1;
    v20 = MEMORY[0x277D84F90];
    v62 = v15 + 40;
    while (1)
    {
      v64 = v20;
      v21 = (v19 + 16 * v18);
      v22 = v18;
      while (1)
      {
        if (v22 >= *(v15 + 16))
        {
          __break(1u);
          return result;
        }

        v24 = *(v21 - 1);
        v23 = *v21;
        v68[0] = 46;
        v68[1] = 0xE100000000000000;
        MEMORY[0x28223BE20](result);
        *(&v60 - 2) = v68;

        sub_2611C9EE4(sub_2611ABD60, (&v60 - 4), v24, v23);
        v67 = v11;
        if (v25)
        {
          goto LABEL_8;
        }

        v26 = v15;
        v27 = v17;
        v28 = sub_26121CE60();
        v29 = MEMORY[0x2666FBEB0](v28);
        v31 = v30;
        v32 = v66;

        if (v29 == v65 && v31 == v32)
        {
          break;
        }

        v34 = sub_26121D4D0();

        v17 = v27;
        v15 = v26;
        if (v34)
        {
          goto LABEL_18;
        }

LABEL_8:
        ++v22;

        v21 += 2;
        v11 = v67;
        if (v17 == v22)
        {
          v20 = v64;
          goto LABEL_33;
        }
      }

      v17 = v27;
      v15 = v26;
LABEL_18:
      v20 = v64;
      result = swift_isUniquelyReferenced_nonNull_native();
      v69 = v20;
      if ((result & 1) == 0)
      {
        result = sub_2611B7D88(0, *(v20 + 16) + 1, 1);
        v20 = v69;
      }

      v35 = v24;
      v37 = *(v20 + 16);
      v36 = *(v20 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_2611B7D88((v36 > 1), v37 + 1, 1);
        v35 = v24;
        v20 = v69;
      }

      v18 = v22 + 1;
      *(v20 + 16) = v37 + 1;
      v38 = v20 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v23;
      v19 = v62;
      v11 = v67;
      if (v61 == v22)
      {
LABEL_33:

        v8 = v63;
        if (*(v20 + 16))
        {
          goto LABEL_34;
        }

        return v20;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_34:
    v47 = sub_2611F0510();
    sub_2611B8B74(v47, v8);
    v48 = sub_26121CA60();
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(v8, 1, v48) == 1)
    {
      sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {

      v50 = v20;
      v51 = sub_26121CA40();
      v52 = sub_26121CFB0();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = v8;
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v68[0] = v55;
        *v54 = 136315138;
        v56 = v50;
        v57 = MEMORY[0x2666FC050](v50, MEMORY[0x277D837D0]);
        v59 = sub_2611AA228(v57, v58, v68);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_261197000, v51, v52, "getFilesMatching at: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x2666FCF20](v55, -1, -1);
        v8 = v53;
        MEMORY[0x2666FCF20](v54, -1, -1);
      }

      else
      {
        v56 = v50;
      }

      (*(v49 + 8))(v8, v48);
      return v56;
    }
  }

  return v20;
}

uint64_t sub_2611C89C4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = sub_26121C5F0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  type metadata accessor for Utilities();
  v44[0] = static Utilities.logoDirectoryPath()();
  v44[1] = v18;
  MEMORY[0x2666FBF20](a3, a4);
  sub_26121C570();

  SecureStorage.save(at:data:)(v17, a1, v43);
  v19 = v12;
  v20 = v15;
  v21 = sub_2611F0510();
  sub_2611B8B74(v21, v10);
  v22 = sub_26121CA60();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v10, 1, v22) == 1)
  {
    (*(v19 + 8))(v17, v11);
    return sub_2611AC114(v10, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v25 = v11;
    (*(v19 + 16))(v20, v17, v11);
    v26 = sub_26121CA40();
    v27 = sub_26121CFB0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v40 = v28;
      v42 = swift_slowAlloc();
      v44[0] = v42;
      *v28 = 136315138;
      sub_2611C9C48();
      v29 = sub_26121D4C0();
      v43 = v10;
      v31 = v30;
      v41 = *(v19 + 8);
      v32 = v20;
      v33 = v25;
      v41(v32, v25);
      v34 = sub_2611AA228(v29, v31, v44);
      v10 = v43;

      v35 = v40;
      *(v40 + 1) = v34;
      v36 = v35;
      _os_log_impl(&dword_261197000, v26, v27, "Cached at: %s", v35, 0xCu);
      v37 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x2666FCF20](v37, -1, -1);
      MEMORY[0x2666FCF20](v36, -1, -1);

      v41(v17, v33);
    }

    else
    {

      v38 = *(v19 + 8);
      v38(v20, v25);
      v38(v17, v25);
    }

    return (*(v23 + 8))(v10, v22);
  }
}

void sub_2611C8F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = a2;
  v32 = a3;
  v6 = sub_26121C5F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_2611F0510();
  sub_2611B8B74(v12, v11);
  v13 = sub_26121CA60();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_2611AC114(v11, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v30 = v4;
    v15 = sub_26121CA40();
    v16 = sub_26121CFB0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = a1;
      v18 = v17;
      *v17 = 0;
      _os_log_impl(&dword_261197000, v15, v16, "Clear logo", v17, 2u);
      v19 = v18;
      a1 = v29;
      MEMORY[0x2666FCF20](v19, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
    v4 = v30;
  }

  v20 = [objc_opt_self() sharedSession];
  v21 = sub_26121C590();
  (*(v7 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v22, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v25 = (v24 + v23);
  v26 = v32;
  *v25 = v31;
  v25[1] = v26;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v4;
  aBlock[4] = sub_2611C9D50;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2611C9B68;
  aBlock[3] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);

  v28 = [v20 dataTaskWithURL:v21 completionHandler:v27];
  _Block_release(v27);

  [v28 resume];
}

void sub_2611C9320(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v80 = a7;
  v81 = a8;
  v82 = a6;
  v13 = sub_26121C5F0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v26 = &v73 - v25;
  if (a4)
  {
    v27 = a4;
    v28 = sub_2611F0510();
    sub_2611B8B74(v28, v26);
    v29 = sub_26121CA60();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v26, 1, v29) == 1)
    {

      sub_2611AC114(v26, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v38 = a4;
      v39 = sub_26121CA40();
      v40 = sub_26121CFC0();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v83 = v42;
        *v41 = 136315138;
        swift_getErrorValue();
        v43 = sub_26121D550();
        v45 = sub_2611AA228(v43, v44, &v83);

        *(v41 + 4) = v45;
        _os_log_impl(&dword_261197000, v39, v40, "Error received when fetching merchant logo: %s", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x2666FCF20](v42, -1, -1);
        MEMORY[0x2666FCF20](v41, -1, -1);
      }

      else
      {
      }

      (*(v30 + 8))(v26, v29);
    }

    return;
  }

  v78 = a5;
  v79 = v23;
  if (!a3)
  {
    goto LABEL_8;
  }

  v31 = v24;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    goto LABEL_8;
  }

  v33 = v32;
  v34 = a3;
  if ([v33 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {

LABEL_8:
    v35 = sub_2611F0510();
    sub_2611B8B74(v35, v20);
    v36 = sub_26121CA60();
    v37 = *(v36 - 8);
    if ((*(v37 + 48))(v20, 1, v36) == 1)
    {
LABEL_9:
      sub_2611AC114(v20, &qword_27FE87700, &unk_2612203D0);
      return;
    }

    v46 = sub_26121CA40();
    v47 = sub_26121CFC0();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_261197000, v46, v47, "Non 200 response", v48, 2u);
      MEMORY[0x2666FCF20](v48, -1, -1);
    }

    (*(v37 + 8))(v20, v36);
    return;
  }

  if (a2 >> 60 == 15)
  {
    v49 = sub_2611F0510();
    v20 = v31;
    sub_2611B8B74(v49, v31);
    v50 = sub_26121CA60();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v31, 1, v50) == 1)
    {

      goto LABEL_9;
    }

    v59 = sub_26121CA40();
    v60 = sub_26121CFC0();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_261197000, v59, v60, "Did not receive logo data from provided logoURL", v61, 2u);
      MEMORY[0x2666FCF20](v61, -1, -1);
    }

    (*(v51 + 8))(v31, v50);
  }

  else
  {
    v77 = v34;
    v52 = a1;
    sub_26119D904(a1, a2);
    v53 = sub_2611F0510();
    v54 = v79;
    sub_2611B8B74(v53, v79);
    v55 = sub_26121CA60();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) == 1)
    {
      sub_2611AC114(v54, &qword_27FE87700, &unk_2612203D0);
      v57 = v80;
      v58 = v81;
    }

    else
    {
      v62 = v14;
      v63 = *(v14 + 16);
      v64 = v16;
      v63(v16, v78, v13);
      v65 = sub_26121CA40();
      v66 = sub_26121CFB0();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v83 = v76;
        *v67 = 136315138;
        sub_2611C9C48();
        v75 = v66;
        v74 = sub_26121D4C0();
        v69 = v68;
        (*(v62 + 8))(v64, v13);
        v70 = sub_2611AA228(v74, v69, &v83);

        *(v67 + 4) = v70;
        _os_log_impl(&dword_261197000, v65, v75, "Logo: %s", v67, 0xCu);
        v71 = v76;
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x2666FCF20](v71, -1, -1);
        MEMORY[0x2666FCF20](v67, -1, -1);
      }

      else
      {

        (*(v62 + 8))(v64, v13);
      }

      v57 = v80;
      (*(v56 + 8))(v79, v55);
      v52 = a1;
      v58 = v81;
    }

    v83 = v82;
    v84 = v57;

    MEMORY[0x2666FBF20](46, 0xE100000000000000);
    v72 = sub_26121C560();
    MEMORY[0x2666FBF20](v72);

    (*(*v58 + 128))(v52, a2, v83, v84);

    sub_26119EF48(v52, a2);
  }
}

uint64_t sub_2611C9B68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_26121C690();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_26119EF48(v6, v10);
}

unint64_t sub_2611C9C48()
{
  result = qword_27FE87650;
  if (!qword_27FE87650)
  {
    sub_26121C5F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87650);
  }

  return result;
}

uint64_t sub_2611C9CA0()
{
  v1 = sub_26121C5F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void sub_2611C9D50(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = *(sub_26121C5F0() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v4 + v11);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v4 + v12);

  sub_2611C9320(a1, a2, a3, a4, v4 + v10, v14, v15, v16);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2611C9EE4(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_26121CD70();
    v13[0] = sub_26121CE40();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t AutoBugCaptureDomain.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26121D340();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2611CA064(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7665447974706D45;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xED00004449656369;
    }

    else
    {
      v4 = 0x800000026122D400;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x800000026122D420;
    v3 = 0xD000000000000012;
  }

  else if (a1 == 3)
  {
    v3 = 0x7865746E6F436F4ELL;
    v4 = 0xE900000000000074;
  }

  else
  {
    v3 = 0x6167656C65446F4ELL;
    v4 = 0xEA00000000006574;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x7665447974706D45;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xED00004449656369;
    }

    else
    {
      v5 = 0x800000026122D400;
    }

    if (v3 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x800000026122D420;
    if (v3 != 0xD000000000000012)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE900000000000074;
    if (v3 != 0x7865746E6F436F4ELL)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xEA00000000006574;
    if (v3 != 0x6167656C65446F4ELL)
    {
LABEL_31:
      v7 = sub_26121D4D0();
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t AutoBugCaptureType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26121D340();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_2611CA360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26121D5B0();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611CA3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_26121D5B0();
  sub_26121CD50();
  return sub_26121D5D0();
}

uint64_t sub_2611CA440@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26121D340();

  *a3 = v4 != 0;
  return result;
}

ProximityReaderCore::AutoBugCaptureSubType_optional __swiftcall AutoBugCaptureSubType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26121D340();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoBugCaptureSubType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7665447974706D45;
  v3 = 0xD000000000000012;
  v4 = 0x7865746E6F436F4ELL;
  if (v1 != 3)
  {
    v4 = 0x6167656C65446F4ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_2611CA5D4()
{
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611CA6D8(uint64_t a1)
{
  sub_26121CD50();
}

uint64_t sub_2611CA7C8(uint64_t a1)
{
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

void sub_2611CA8D4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00004449656369;
  v4 = 0x7665447974706D45;
  v5 = 0x800000026122D420;
  v6 = 0xD000000000000012;
  v7 = 0xE900000000000074;
  v8 = 0x7865746E6F436F4ELL;
  if (v2 != 3)
  {
    v8 = 0x6167656C65446F4ELL;
    v7 = 0xEA00000000006574;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000026122D400;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2611CA994()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = sub_26121C760();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  sub_26121C730();
  v14 = OBJC_IVAR____TtC19ProximityReaderCoreP33_80F1E7BDC80F47D41FEC6722D8B1E6A222AutoBugCaptureReporter_lastReportedDate;
  swift_beginAccess();
  sub_2611ABE1C(v0 + v14, v6, &unk_27FE879C0, &unk_261221600);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2611AC114(v6, &unk_27FE879C0, &unk_261221600);
    (*(v8 + 32))(v4, v13, v7);
LABEL_6:
    v20 = v4;
    v19 = 1;
    (*(v8 + 56))(v20, 0, 1, v7);
    swift_beginAccess();
    sub_2611CCE48(v20, v0 + v14);
    swift_endAccess();
    return v19;
  }

  v22 = v4;
  v23 = v0;
  v15 = *(v8 + 32);
  v15(v11, v6, v7);
  sub_26121C6F0();
  v17 = v16;
  v18 = *(v8 + 8);
  v18(v11, v7);
  if (v17 >= 86400.0)
  {
    v4 = v22;
    v0 = v23;
    v15(v22, v13, v7);
    goto LABEL_6;
  }

  v18(v13, v7);
  return 0;
}

void sub_2611CAC64(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  v10 = *a1;
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v59 = a1[1];
  v60 = v12;
  v14 = a1[5];
  if (sub_2611CA994())
  {
    v57 = v14;
    v15 = v1[2];
    v16 = sub_26121CC50();
    v17 = sub_26121CC50();
    v18 = sub_26121CC50();

    v19 = sub_26121CC50();
    v20 = sub_26121CC50();
    v55 = v11;
    v21 = v20;
    v58 = v15;
    v56 = [v15 signatureWithDomain:v16 type:v17 subType:v18 subtypeContext:v19 detectedProcess:v20 triggerThresholdValues:0];

    v22 = sub_2611F0560();
    sub_2611ABE1C(v22, v7, &qword_27FE87700, &unk_2612203D0);
    v23 = sub_26121CA60();
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v7, 1, v23) == 1)
    {
      sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
      v25 = v57;
      v26 = v58;
    }

    else
    {
      v25 = v57;

      v30 = sub_26121CA40();
      v31 = sub_26121CFB0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v53 = v32;
        v54 = swift_slowAlloc();
        v66 = v25;
        v67 = v54;
        *v32 = 136315138;
        LOBYTE(aBlock) = v10;
        v62 = v59;
        v63 = v55;
        v64 = v60;
        v65 = v13;

        LODWORD(v60) = v31;
        v33 = AutoBugCaptureIssue.description.getter();
        v35 = v34;

        v36 = sub_2611AA228(v33, v35, &v67);

        v37 = v53;
        *(v53 + 1) = v36;
        v38 = v37;
        _os_log_impl(&dword_261197000, v30, v60, "Submitting snapshot request to ABC for signature: %s", v37, 0xCu);
        v39 = v54;
        __swift_destroy_boxed_opaque_existential_1(v54);
        MEMORY[0x2666FCF20](v39, -1, -1);
        MEMORY[0x2666FCF20](v38, -1, -1);
      }

      v26 = v58;
      (*(v24 + 8))(v7, v23);
    }

    v40 = v56;
    if (v56 && (aBlock = 0, v41 = v56, sub_26121CB90(), v41, aBlock))
    {
      v42 = sub_26121CB80();

      if (!v25)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v42 = 0;
      if (!v25)
      {
LABEL_15:
        v65 = sub_2611CC410;
        v66 = v2;
        aBlock = MEMORY[0x277D85DD0];
        v62 = 1107296256;
        v63 = sub_2611CB708;
        v64 = &block_descriptor_31;
        v43 = _Block_copy(&aBlock);

        [v26 snapshotWithSignature:v42 duration:0 event:v25 payload:v43 reply:0.0];
        _Block_release(v43);

        return;
      }
    }

    sub_2611CB440(v25);
    v25 = sub_26121CB80();

    goto LABEL_15;
  }

  v27 = sub_2611F0560();
  sub_2611ABE1C(v27, v9, &qword_27FE87700, &unk_2612203D0);
  v28 = sub_26121CA60();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v9, 1, v28) == 1)
  {
    sub_2611AC114(v9, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {

    v44 = sub_26121CA40();
    v45 = sub_26121CFB0();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v66 = v14;
      v67 = v58;
      *v46 = 136315138;
      LOBYTE(aBlock) = v10;
      v62 = v59;
      v63 = v11;
      v64 = v60;
      v65 = v13;

      LODWORD(v60) = v45;
      v47 = AutoBugCaptureIssue.description.getter();
      v49 = v48;

      v50 = sub_2611AA228(v47, v49, &v67);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_261197000, v44, v60, "Not reporting to AutoBugCapture because we are rate limited: %s", v46, 0xCu);
      v51 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x2666FCF20](v51, -1, -1);
      MEMORY[0x2666FCF20](v46, -1, -1);
    }

    (*(v29 + 8))(v9, v28);
  }
}

uint64_t sub_2611CB440(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87678, &unk_261222710);
    v2 = sub_26121D310();
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
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2611AC930(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2611B69DC(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2611B69DC(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2611B69DC(v31, v32);
    result = sub_26121D190();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_2611B69DC(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_2611CB708(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_26121CBA0();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_2611CB798()
{
  sub_2611AC114(v0 + OBJC_IVAR____TtC19ProximityReaderCoreP33_80F1E7BDC80F47D41FEC6722D8B1E6A222AutoBugCaptureReporter_lastReportedDate, &unk_27FE879C0, &unk_261221600);

  return swift_deallocClassInstance();
}

uint64_t sub_2611CB814()
{
  v7 = sub_26121D010();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26121D000();
  MEMORY[0x28223BE20](v3);
  v4 = sub_26121CAE0();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_2611CCEB8();
  sub_26121CAD0();
  v8 = MEMORY[0x277D84F90];
  sub_2611CCF04(&qword_27FE87680, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87688, &qword_261221FB8);
  sub_2611CCF4C(&qword_27FE87690, &qword_27FE87688, &qword_261221FB8);
  sub_26121D160();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_26121D050();
  qword_27FE8D818 = result;
  return result;
}

uint64_t sub_2611CBA64()
{
  type metadata accessor for AutoBugCaptureReporter(0);
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v1 = OBJC_IVAR____TtC19ProximityReaderCoreP33_80F1E7BDC80F47D41FEC6722D8B1E6A222AutoBugCaptureReporter_lastReportedDate;
  v2 = sub_26121C760();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  qword_27FE8D828 = v0;
  return result;
}

uint64_t static AutoBugCaptureManager.sendIssue(_:)(_OWORD *a1)
{
  v2 = sub_26121CAC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26121CAE0();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v18[0] = *a1;
  v18[1] = v9;
  v18[2] = a1[2];
  if (qword_27FE8D810 != -1)
  {
    swift_once();
  }

  v14 = qword_27FE8D818;
  v10 = swift_allocObject();
  v11 = a1[1];
  v10[1] = *a1;
  v10[2] = v11;
  v10[3] = a1[2];
  aBlock[4] = sub_2611CBE5C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2611A8D70;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);
  sub_2611CBED4(v18, v16);
  sub_26121CAD0();
  v16[0] = MEMORY[0x277D84F90];
  sub_2611CCF04(&qword_27FE87308, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87310, &qword_261221C80);
  sub_2611CCF4C(&qword_27FE87318, &qword_27FE87310, &qword_261221C80);
  sub_26121D160();
  MEMORY[0x2666FC1C0](0, v8, v5, v12);
  _Block_release(v12);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v15);
}

uint64_t sub_2611CBE14(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FE8E8](v2, 64, 7);
}

void sub_2611CBE5C()
{
  if (qword_27FE8D820 != -1)
  {
    swift_once();
  }

  sub_2611CAC64((v0 + 16));
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AutoBugCaptureIssue.subTypeContext.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AutoBugCaptureIssue.process.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void AutoBugCaptureIssue.init(type:subType:subTypeContext:process:payload:)(_BYTE *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  *a7 = *a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
}

unint64_t AutoBugCaptureIssue.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  v5 = 0xED00004449656369;
  v6 = 0x800000026122D420;
  v7 = 0xD000000000000012;
  v8 = 0xE900000000000074;
  v9 = 0x7865746E6F436F4ELL;
  if (v2 != 3)
  {
    v9 = 0x6167656C65446F4ELL;
    v8 = 0xEA00000000006574;
  }

  if (v2 != 2)
  {
    v7 = v9;
    v6 = v8;
  }

  if (*v0)
  {
    v1 = 0x7665447974706D45;
  }

  else
  {
    v5 = 0x800000026122D400;
  }

  if (*v0 <= 1u)
  {
    v10 = v1;
  }

  else
  {
    v10 = v7;
  }

  if (*v0 <= 1u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  MEMORY[0x2666FBF20](v10, v11);

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](v3, v4);
  return 0xD00000000000001ALL;
}

unint64_t sub_2611CC0D8()
{
  result = qword_27FE87658;
  if (!qword_27FE87658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87658);
  }

  return result;
}

unint64_t sub_2611CC130()
{
  result = qword_27FE87660;
  if (!qword_27FE87660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87660);
  }

  return result;
}

unint64_t sub_2611CC188()
{
  result = qword_27FE87668;
  if (!qword_27FE87668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87668);
  }

  return result;
}

uint64_t type metadata accessor for AutoBugCaptureReporter(uint64_t a1)
{
  result = qword_27FE8DD38;
  if (!qword_27FE8DD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2611CC264(uint64_t a1)
{
  sub_2611CC304(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2611CC304(uint64_t a1)
{
  if (!qword_27FE87670)
  {
    sub_26121C760();
    v1 = sub_26121D0C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27FE87670);
    }
  }
}

uint64_t sub_2611CC36C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2611CC3B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2611CC414(uint64_t a1)
{
  v2 = sub_26121D190();

  return sub_2611CC458(a1, v2);
}

unint64_t sub_2611CC458(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2611CC520(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2666FC320](v9, a1);
      sub_2611CC57C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_2611CC5D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v56 - v7;
  result = MEMORY[0x28223BE20](v6);
  v11 = &v56 - v10;
  if (!a1)
  {
    return result;
  }

  v59 = sub_26121CC80();
  v60 = v12;
  sub_26121D1B0();
  if (!*(a1 + 16) || (v13 = sub_2611CC414(v61), (v14 & 1) == 0))
  {
    sub_2611CC57C(v61);
    goto LABEL_11;
  }

  sub_2611AC930(*(a1 + 56) + 32 * v13, v62);
  sub_2611CC57C(v61);
  if ((swift_dynamicCast() & 1) == 0 || v59 != 1)
  {
LABEL_11:
    v59 = sub_26121CC80();
    v60 = v20;
    sub_26121D1B0();
    if (*(a1 + 16) && (v21 = sub_2611CC414(v61), (v22 & 1) != 0))
    {
      sub_2611AC930(*(a1 + 56) + 32 * v21, v62);
      sub_2611CC57C(v61);
      if (swift_dynamicCast())
      {
        v23 = v59;
        v59 = sub_26121CC80();
        v60 = v24;
        sub_26121D1B0();
        if (*(a1 + 16) && (v25 = sub_2611CC414(v61), (v26 & 1) != 0))
        {
          sub_2611AC930(*(a1 + 56) + 32 * v25, v62);
          sub_2611CC57C(v61);
          if (swift_dynamicCast())
          {
            v27 = v59;
            v28 = v60;
            goto LABEL_28;
          }
        }

        else
        {
          sub_2611CC57C(v61);
        }

        v27 = 0x6E776F6E6B6E55;
        v28 = 0xE700000000000000;
LABEL_28:
        v36 = 0x6465746365707865;
        v37 = 0xE800000000000000;
        if (v23 != *MEMORY[0x277D6B040] && v23 != *MEMORY[0x277D6B058])
        {
          if (v23 == *MEMORY[0x277D6B038] || v23 == *MEMORY[0x277D6B088])
          {
            v37 = 0xE800000000000000;
          }

          else
          {
            v36 = 0x7463657078656E75;
            v37 = 0xEA00000000006465;
          }
        }

        v39 = sub_2611F0560();
        sub_2611ABE1C(v39, v8, &qword_27FE87700, &unk_2612203D0);
        v40 = sub_26121CA60();
        v41 = *(v40 - 8);
        if ((*(v41 + 48))(v8, 1, v40) != 1)
        {
          v58 = v27;

          v42 = sub_26121CA40();
          v43 = sub_26121CFB0();

          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v61[0] = v57;
            *v44 = 136315650;
            v45 = sub_2611AA228(v36, v37, v61);

            *(v44 + 4) = v45;
            *(v44 + 12) = 2048;
            *(v44 + 14) = v23;
            *(v44 + 22) = 2080;
            v46 = sub_2611AA228(v58, v28, v61);

            *(v44 + 24) = v46;
            _os_log_impl(&dword_261197000, v42, v43, "Diagnostic reporter snapshot rejected with %s reason: %ld (%s)", v44, 0x20u);
            v47 = v57;
            swift_arrayDestroy();
            MEMORY[0x2666FCF20](v47, -1, -1);
            MEMORY[0x2666FCF20](v44, -1, -1);
          }

          else
          {
          }

          return (*(v41 + 8))(v8, v40);
        }

        v32 = v8;
        return sub_2611AC114(v32, &qword_27FE87700, &unk_2612203D0);
      }
    }

    else
    {
      sub_2611CC57C(v61);
    }

    v29 = sub_2611F0560();
    sub_2611ABE1C(v29, v5, &qword_27FE87700, &unk_2612203D0);
    v30 = sub_26121CA60();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v5, 1, v30) != 1)
    {
      v33 = sub_26121CA40();
      v34 = sub_26121CFB0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261197000, v33, v34, "Diagnostic reporter snapshot rejected with unknown reason", v35, 2u);
        MEMORY[0x2666FCF20](v35, -1, -1);
      }

      return (*(v31 + 8))(v5, v30);
    }

    v32 = v5;
    return sub_2611AC114(v32, &qword_27FE87700, &unk_2612203D0);
  }

  v59 = sub_26121CC80();
  v60 = v15;
  sub_26121D1B0();
  if (!*(a1 + 16) || (v16 = sub_2611CC414(v61), (v17 & 1) == 0))
  {
    sub_2611CC57C(v61);
    goto LABEL_41;
  }

  sub_2611AC930(*(a1 + 56) + 32 * v16, v62);
  sub_2611CC57C(v61);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    v19 = 0x6E776F6E6B6E55;
    v18 = 0xE700000000000000;
    goto LABEL_42;
  }

  v19 = v59;
  v18 = v60;
LABEL_42:
  v48 = sub_2611F0560();
  sub_2611ABE1C(v48, v11, &qword_27FE87700, &unk_2612203D0);
  v49 = sub_26121CA60();
  v50 = *(v49 - 8);
  if ((*(v50 + 48))(v11, 1, v49) == 1)
  {

    v32 = v11;
    return sub_2611AC114(v32, &qword_27FE87700, &unk_2612203D0);
  }

  v51 = sub_26121CA40();
  v52 = sub_26121CFB0();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v61[0] = v54;
    *v53 = 136315138;
    v55 = sub_2611AA228(v19, v18, v61);

    *(v53 + 4) = v55;
    _os_log_impl(&dword_261197000, v51, v52, "Diagnostic reporter snapshot accepted with sessionID [%s]", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x2666FCF20](v54, -1, -1);
    MEMORY[0x2666FCF20](v53, -1, -1);
  }

  else
  {
  }

  return (*(v50 + 8))(v11, v49);
}

uint64_t sub_2611CCE48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2611CCEB8()
{
  result = qword_27FE872E8;
  if (!qword_27FE872E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE872E8);
  }

  return result;
}

uint64_t sub_2611CCF04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2611CCF4C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

Swift::Void __swiftcall notificationCallback(notification:responseCode:)(CFUserNotificationRef_optional notification, Swift::UInt responseCode)
{
  v35 = responseCode;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = sub_2611F043C();
  sub_2611ABE1C(v12, v11, &qword_27FE87700, &unk_2612203D0);
  v13 = sub_26121CA60();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v13) == 1)
  {
    sub_2611AC114(v11, &qword_27FE87700, &unk_2612203D0);
    if (notification.value)
    {
LABEL_3:
      v16 = qword_27FE8DD50;
      v17 = notification.value;
      if (v16 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v18 = sub_2611CE88C(v17);
      v20 = v19;
      swift_endAccess();
      if (v18)
      {
        v36[0] = v35 & 3;
        v18(v36);
        sub_2611CE920(v18, v20);

        return;
      }

      sub_2611ABE1C(v12, v9, &qword_27FE87700, &unk_2612203D0);
      if (v15(v9, 1, v13) == 1)
      {

        v26 = v9;
        goto LABEL_14;
      }

      v30 = sub_26121CA40();
      v31 = sub_26121CFC0();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_261197000, v30, v31, "BaselineErrorDialog callback object not found", v32, 2u);
        MEMORY[0x2666FCF20](v32, -1, -1);
      }

      (*(v14 + 8))(v9, v13);
      return;
    }
  }

  else
  {
    v34 = v9;
    v21 = sub_26121CA40();
    v22 = sub_26121CFD0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = v14;
      v24 = v23;
      *v23 = 0;
      _os_log_impl(&dword_261197000, v21, v22, "notificationCallback(notification:responseCode:)", v23, 2u);
      v25 = v24;
      v14 = v33;
      MEMORY[0x2666FCF20](v25, -1, -1);
    }

    (*(v14 + 8))(v11, v13);
    v9 = v34;
    if (notification.value)
    {
      goto LABEL_3;
    }
  }

  sub_2611ABE1C(v12, v6, &qword_27FE87700, &unk_2612203D0);
  if (v15(v6, 1, v13) == 1)
  {
    v26 = v6;
LABEL_14:
    sub_2611AC114(v26, &qword_27FE87700, &unk_2612203D0);
    return;
  }

  v27 = sub_26121CA40();
  v28 = sub_26121CFC0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_261197000, v27, v28, "BaselineErrorDialog callback notification is nil", v29, 2u);
    MEMORY[0x2666FCF20](v29, -1, -1);
  }

  (*(v14 + 8))(v6, v13);
}

unint64_t sub_2611CD40C()
{
  result = sub_2611CF13C(MEMORY[0x277D84F90]);
  qword_27FE8DD58 = result;
  return result;
}

void *BaselineErrorDialog.__allocating_init(localizedMessage:)(uint64_t countAndFlagsBits, void *object)
{
  result = swift_allocObject();
  result[2] = 0;
  if (!object)
  {
    v5 = result;
    v6 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ();
    v8 = v7;
    v9._countAndFlagsBits = sub_2611AE074();
    v11 = v10;
    v12._countAndFlagsBits = v6;
    v12._object = v8;
    v9._object = v11;
    v13 = String.localized(table:comment:)(v12, v9);
    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;

    result = v5;
  }

  result[3] = countAndFlagsBits;
  result[4] = object;
  return result;
}

void *BaselineErrorDialog.init(localizedMessage:)(uint64_t countAndFlagsBits, void *object)
{
  v2[2] = 0;
  if (!object)
  {
    v3 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ();
    v5 = v4;
    v6._countAndFlagsBits = sub_2611AE074();
    v8 = v7;
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v6._object = v8;
    v10 = String.localized(table:comment:)(v9, v6);

    countAndFlagsBits = v10._countAndFlagsBits;
    object = v10._object;
  }

  v2[3] = countAndFlagsBits;
  v2[4] = object;
  return v2;
}

void sub_2611CD584()
{
  v1 = v0;
  v92 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v87 = &v82 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v82 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v82 - v11;
  v13 = sub_2611F043C();
  sub_2611ABE1C(v13, v12, &qword_27FE87700, &unk_2612203D0);
  v14 = sub_26121CA60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, v14);
  v86 = v10;
  if (v17 == 1)
  {
    sub_2611AC114(v12, &qword_27FE87700, &unk_2612203D0);
    if (v1[2])
    {
LABEL_3:
      sub_2611ABE1C(v13, v5, &qword_27FE87700, &unk_2612203D0);
      if (v16(v5, 1, v14) == 1)
      {
        v18 = v5;
LABEL_11:
        sub_2611AC114(v18, &qword_27FE87700, &unk_2612203D0);
        return;
      }

      v68 = sub_26121CA40();
      v69 = sub_26121CFD0();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_261197000, v68, v69, "Already showing, don't show another one", v70, 2u);
        MEMORY[0x2666FCF20](v70, -1, -1);
      }

      (*(v15 + 8))(v5, v14);
      return;
    }
  }

  else
  {
    v19 = sub_26119DE2C();
    v88 = v15;
    v20 = v16;
    v21 = v19;
    v22 = sub_2611AE074();
    v23 = v21 & 1;
    v16 = v20;
    v15 = v88;
    sub_2611F0778(v23, v1, 0x2928776F6873, 0xE600000000000000, v22, v24);

    (*(v15 + 8))(v12, v14);
    if (v1[2])
    {
      goto LABEL_3;
    }
  }

  v83 = v13;
  v84 = v16;
  v88 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87698, &qword_261221FE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_261221FC0;
  v91 = *MEMORY[0x277CBF188];
  v26 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876A0, &qword_261221FF0);
  sub_2611CE930();
  sub_26121D1B0();
  v27 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ();
  v85 = v14;
  v29 = v28;
  v30._countAndFlagsBits = sub_2611AE074();
  v32 = v31;
  v33._countAndFlagsBits = v27;
  v33._object = v29;
  v30._object = v32;
  v34 = String.localized(table:comment:)(v33, v30);

  v35 = MEMORY[0x277D837D0];
  *(inited + 96) = MEMORY[0x277D837D0];
  v36 = v35;
  *(inited + 72) = v34;
  v91 = *MEMORY[0x277CBF198];
  v37 = v91;
  sub_26121D1B0();
  v82 = v1;
  v38 = v1[3];
  v39 = v1[4];
  *(inited + 168) = v36;
  v40 = v36;
  *(inited + 144) = v38;
  *(inited + 152) = v39;
  v91 = *MEMORY[0x277CBF1E8];
  v41 = v91;

  sub_26121D1B0();
  v42 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ();
  v44 = v43;
  v45._countAndFlagsBits = sub_2611AE074();
  v47 = v46;
  v48._countAndFlagsBits = v42;
  v48._object = v44;
  v45._object = v47;
  v49 = String.localized(table:comment:)(v48, v45);

  *(inited + 240) = v40;
  *(inited + 216) = v49;
  v91 = *MEMORY[0x277CBF1C0];
  v50 = v91;
  sub_26121D1B0();
  v51 = j_j___s19ProximityReaderCore9ConstantsV18CRLocalizableTableSSvgZ();
  v53 = v52;
  v54._countAndFlagsBits = sub_2611AE074();
  v56 = v55;
  v57._countAndFlagsBits = v51;
  v57._object = v53;
  v54._object = v56;
  v58 = String.localized(table:comment:)(v57, v54);
  v59 = v87;

  v60 = v85;

  *(inited + 312) = v40;
  *(inited + 288) = v58;
  sub_2611CF24C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876B8, &qword_261221FF8);
  swift_arrayDestroy();
  v90 = 0;
  v61 = sub_26121CB80();

  v62 = CFUserNotificationCreate(0, 0.0, 3uLL, &v90, v61);

  v63 = v82[2];
  v64 = v82;
  v82[2] = v62;
  v65 = v62;

  if (v65)
  {
    if (!v90)
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v65, sub_2611CDED8, 0);
      v76 = v86;
      sub_2611ABE1C(v83, v86, &qword_27FE87700, &unk_2612203D0);
      if (v84(v76, 1, v60) == 1)
      {
        sub_2611AC114(v76, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v77 = sub_26121CA40();
        v78 = sub_26121CFD0();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          *v79 = 0;
          _os_log_impl(&dword_261197000, v77, v78, "blockForNotification", v79, 2u);
          MEMORY[0x2666FCF20](v79, -1, -1);
        }

        (*(v88 + 8))(v76, v60);
      }

      if (qword_27FE8DD50 != -1)
      {
        swift_once();
      }

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = qword_27FE8DD58;
      qword_27FE8DD58 = 0x8000000000000000;
      sub_2611CEFDC(sub_2611CF388, v64, v65, isUniquelyReferenced_nonNull_native);
      qword_27FE8DD58 = v89;
      swift_endAccess();
      v81 = CFRunLoopGetMain();
      CFRunLoopAddSource(v81, RunLoopSource, *MEMORY[0x277CBF048]);

      return;
    }
  }

  sub_2611ABE1C(v83, v59, &qword_27FE87700, &unk_2612203D0);
  v66 = v84(v59, 1, v60);
  v67 = v88;
  if (v66 == 1)
  {
    v18 = v59;
    goto LABEL_11;
  }

  v71 = sub_26121CA40();
  v72 = sub_26121CFC0();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 67109120;
    swift_beginAccess();
    *(v73 + 4) = v90;
    _os_log_impl(&dword_261197000, v71, v72, "Could not create baselineErrorDialog: %d", v73, 8u);
    v74 = v73;
    v59 = v87;
    MEMORY[0x2666FCF20](v74, -1, -1);
  }

  (*(v67 + 8))(v59, v60);
}

void sub_2611CDED8(void *a1, Swift::UInt a2)
{
  v4 = a1;
  notificationCallback(notification:responseCode:)(a1, a2);
}

void sub_2611CDF2C(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE872F0, &unk_261222100);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v55 - v5;
  v6 = sub_26121C5F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v63 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v62 = &v55 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v60 = &v55 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v55 - v18;
  v20 = *a1;
  v21 = sub_2611F043C();
  sub_2611ABE1C(v21, v19, &qword_27FE87700, &unk_2612203D0);
  v22 = sub_26121CA60();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v19, 1, v22) == 1)
  {
    sub_2611AC114(v19, &qword_27FE87700, &unk_2612203D0);
    if (v20 != 3)
    {
      goto LABEL_3;
    }

LABEL_10:
    v34 = v62;
    sub_2611ABE1C(v21, v62, &qword_27FE87700, &unk_2612203D0);
    if (v24(v34, 1, v22) == 1)
    {
LABEL_14:
      sub_2611AC114(v34, &qword_27FE87700, &unk_2612203D0);
      goto LABEL_30;
    }

    v35 = sub_26121CA40();
    v36 = sub_26121CFD0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v23;
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Cancelled";
LABEL_19:
      _os_log_impl(&dword_261197000, v35, v36, v39, v38, 2u);
      v41 = v38;
      v23 = v37;
      MEMORY[0x2666FCF20](v41, -1, -1);
    }

LABEL_20:

    (*(v23 + 8))(v34, v22);
    goto LABEL_30;
  }

  v57 = v7;
  v58 = v6;
  v27 = v23;
  v28 = v22;
  v29 = sub_26121CA40();
  v30 = sub_26121CFD0();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v56 = a2;
    v32 = v31;
    *v31 = 134217984;
    *(v31 + 4) = v20;
    _os_log_impl(&dword_261197000, v29, v30, "blockForNotification response = %lu", v31, 0xCu);
    v33 = v32;
    a2 = v56;
    MEMORY[0x2666FCF20](v33, -1, -1);
  }

  v23 = v27;
  v22 = v28;
  (*(v27 + 8))(v19, v28);
  v7 = v57;
  v6 = v58;
  if (v20 == 3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v20 == 1)
  {
    v34 = v60;
    sub_2611ABE1C(v21, v60, &qword_27FE87700, &unk_2612203D0);
    if (v24(v34, 1, v22) == 1)
    {
      goto LABEL_14;
    }

    v35 = sub_26121CA40();
    v36 = sub_26121CFD0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v23;
      v38 = swift_slowAlloc();
      *v38 = 0;
      v39 = "Not Now";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    v40 = v63;
    sub_2611ABE1C(v21, v63, &qword_27FE87700, &unk_2612203D0);
    if (v24(v40, 1, v22) == 1)
    {
      sub_2611AC114(v40, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v48 = sub_26121CA40();
      v49 = sub_26121CFC0();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = v23;
        v51 = swift_slowAlloc();
        *v51 = 134217984;
        *(v51 + 4) = v20;
        _os_log_impl(&dword_261197000, v48, v49, "Unexpected baselineErrorDialog responseCode: %lu", v51, 0xCu);
        v52 = v51;
        v23 = v50;
        MEMORY[0x2666FCF20](v52, -1, -1);
      }

      (*(v23 + 8))(v40, v22);
    }
  }

  else
  {
    v25 = sub_2611F04C0();
    v26 = v61;
    sub_2611ABE1C(v25, v61, &qword_27FE87700, &unk_2612203D0);
    if (v24(v26, 1, v22) == 1)
    {
      sub_2611AC114(v26, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v42 = sub_26121CA40();
      v43 = sub_26121CFD0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = v23;
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_261197000, v42, v43, "Install", v45, 2u);
        v46 = v45;
        v23 = v44;
        MEMORY[0x2666FCF20](v46, -1, -1);
      }

      (*(v23 + 8))(v26, v22);
    }

    v47 = v64;
    sub_26121C5D0();
    if ((*(v7 + 48))(v47, 1, v6) == 1)
    {
      sub_2611AC114(v47, &qword_27FE872F0, &unk_261222100);
    }

    else
    {
      v53 = v59;
      (*(v7 + 32))(v59, v47, v6);
      type metadata accessor for Utilities();
      sub_2611A371C(v53, 0);
      (*(v7 + 8))(v53, v6);
    }
  }

LABEL_30:
  v54 = *(a2 + 16);
  *(a2 + 16) = 0;
}

uint64_t BaselineErrorDialog.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2611CE7B8(uint64_t a1, uint64_t a2)
{
  sub_26121D5B0();
  swift_getWitnessTable();
  sub_26121C9E0();
  return sub_26121D5D0();
}

uint64_t sub_2611CE820(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_26121C9D0();
}

uint64_t sub_2611CE88C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2611CE9E4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2611CEE78();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_2611CEC9C(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t sub_2611CE920(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2611CE930()
{
  result = qword_27FE876A8;
  if (!qword_27FE876A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE876A0, &qword_261221FF0);
    sub_2611CF480(&qword_27FE876B0, &unk_2612254D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE876A8);
  }

  return result;
}

unint64_t sub_2611CE9E4(uint64_t a1)
{
  v2 = sub_26121D5A0();

  return sub_2611CEE0C(a1, v2);
}

uint64_t sub_2611CEA28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876D8, &qword_2612220F8);
  result = sub_26121D300();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v30 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_26121D5A0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v29;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2611CEC9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26121D180() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_26121D5A0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2611CEE0C(uint64_t a1, uint64_t a2)
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

void *sub_2611CEE78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876D8, &qword_2612220F8);
  v2 = *v0;
  v3 = sub_26121D2F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_2611CEFDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2611CE9E4(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2611CEA28(v16, a4 & 1);
      result = sub_2611CE9E4(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_26121D520();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2611CEE78();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 8 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

unint64_t sub_2611CF13C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE876D8, &qword_2612220F8);
  v3 = sub_26121D310();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_2611CE9E4(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_2611CE9E4(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2611CF24C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87678, &unk_261222710);
    v3 = sub_26121D310();
    v4 = a1 + 32;

    while (1)
    {
      sub_2611ABE1C(v4, v13, &qword_27FE876B8, &qword_261221FF8);
      result = sub_2611CC414(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2611B69DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_2611CF480(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ResponseDataType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611CF4DC()
{
  result = qword_27FE876E0;
  if (!qword_27FE876E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE876E0);
  }

  return result;
}

unint64_t sub_2611CF560@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2611D0C38(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t CardReaderErrorType.description.getter(uint64_t a1)
{
  result = 0x776F6C6C41746F6ELL;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0x726F707075736E75;
    case 2:
      return 0x456B726F7774656ELL;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0xD000000000000016;
    case 5:
      return 0x7964616552746F6ELL;
    case 6:
      return 0xD000000000000010;
    case 7:
      return 0x4665726170657270;
    case 8:
      return 0x4565726170657270;
    case 9:
    case 24:
      return 0xD000000000000012;
    case 10:
      return 0x6E656B6F54707370;
    case 11:
      return 0xD000000000000010;
    case 12:
    case 26:
    case 28:
      v3 = 5;
      goto LABEL_28;
    case 13:
    case 27:
      return 0xD000000000000011;
    case 14:
      return 0x6142656369766564;
    case 15:
      return 0xD000000000000017;
    case 16:
      return 2037609826;
    case 17:
      return 0xD000000000000010;
    case 18:
    case 19:
      return 0xD000000000000014;
    case 20:
      return 0xD000000000000022;
    case 21:
      return 0x746E61686372656DLL;
    case 22:
      return 0x4D64696C61766E69;
    case 23:
      v3 = 9;
LABEL_28:
      result = v3 | 0xD000000000000010;
      break;
    case 25:
      result = 0x6C41746F4E666173;
      break;
    case 29:
      result = 0x7272454244666173;
      break;
    case 30:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      sub_26121D510();
      __break(1u);
      JUMPOUT(0x2611CF92CLL);
  }

  return result;
}

id CardReaderErrorInternal.__allocating_init(_:userInfo:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = a1;
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CardReaderErrorInternal.init(_:userInfo:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = a1;
  *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CardReaderErrorInternal();
  return objc_msgSendSuper2(&v4, sel_init);
}

id CardReaderErrorInternal.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_26121CC50();
  v8 = [a1 decodeIntegerForKey_];

  v9 = sub_2611D0C38(v8);
  if (v10)
  {
    v11 = sub_2611F02B4();
    sub_2611ABE1C(v11, v6, &qword_27FE87700, &unk_2612203D0);
    v12 = sub_26121CA60();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v6, 1, v12) == 1)
    {

      sub_2611AC114(v6, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v19 = sub_26121CA40();
      v20 = sub_26121CFC0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_261197000, v19, v20, "CardReaderErrorInternal | Failed to decode object", v21, 2u);
        MEMORY[0x2666FCF20](v21, -1, -1);
      }

      (*(v13 + 8))(v6, v12);
    }

    type metadata accessor for CardReaderErrorInternal();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B00, &qword_2612221F8);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2612203B0;
    v15 = sub_2611AC98C(0, &qword_27FE870A0, 0x277CCACA8);
    *(v14 + 32) = v15;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2612221E0;
    *(v16 + 32) = v15;
    *(v16 + 40) = sub_2611AC98C(0, &qword_27FE87708, 0x277CCABB0);
    v17 = sub_26121D080();

    if (v17)
    {
      v18 = sub_2611CFE70(v17);
    }

    else
    {
      v18 = 0;
    }

    *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = v18;
    v23 = type metadata accessor for CardReaderErrorInternal();
    v25.receiver = v2;
    v25.super_class = v23;
    v24 = objc_msgSendSuper2(&v25, sel_init);

    return v24;
  }
}

unint64_t sub_2611CFE70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v2 = sub_26121D310();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_2611CC520(*(a1 + 48) + 40 * v12, v27);
        sub_2611AC930(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_2611CC520(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_2611AC930(v25 + 8, v20);
        sub_2611AC114(v24, &unk_27FE87750, &unk_2612223E0);
        v21 = v18;
        sub_2611B69DC(v20, v22);
        v13 = v21;
        sub_2611B69DC(v22, v23);
        sub_2611B69DC(v23, &v21);
        result = sub_2611B3970(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_2611B69DC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_2611B69DC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2611AC114(v24, &unk_27FE87750, &unk_2612223E0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id CardReaderErrorInternal.init(_bridgedNSError:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [a1 domain];
  v5 = sub_26121CC80();
  v7 = v6;

  sub_2611D0DA4(&qword_27FE87710, v8, type metadata accessor for CardReaderErrorInternal, &protocol conformance descriptor for CardReaderErrorInternal);
  if (v5 == sub_26121C390() && v7 == v9)
  {
  }

  else
  {
    v11 = sub_26121D4D0();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v12 = sub_2611D0C38([a1 code]);
  if (v13)
  {
LABEL_9:

    type metadata accessor for CardReaderErrorInternal();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *&v1[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code] = v12;
  v15 = [a1 userInfo];
  v16 = sub_26121CBA0();

  *&v2[OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo] = v16;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for CardReaderErrorInternal();
  v17 = objc_msgSendSuper2(&v18, sel_init);

  return v17;
}

void sub_2611D036C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code);
  v4 = sub_26121CC50();
  [a1 encodeInteger:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo))
  {

    v5 = sub_26121CB80();
    v6 = sub_26121CC50();
    [a1 encodeObject:v5 forKey:v6];
  }
}

unint64_t sub_2611D054C()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_code);
  if (v1 <= 13)
  {
    if (v1 != 7)
    {
      if (v1 == 9)
      {
        v8[0] = 0xD000000000000012;
        v8[1] = 0x800000026122D800;
        v3 = 0xD000000000000019;
        v2 = 0x800000026122D610;
        goto LABEL_13;
      }

      return CardReaderErrorType.description.getter(v1);
    }

    v5 = 0x4665726170657270;
    v6 = 0xED000064656C6961;
LABEL_12:
    v8[0] = v5;
    v8[1] = v6;
    v3 = 0x746544726F727265;
    v2 = 0xEC000000736C6961;
    goto LABEL_13;
  }

  if (v1 != 14)
  {
    if (v1 != 29)
    {
      if (v1 == 30)
      {
        strcpy(v8, "unknown");
        v8[1] = 0xE700000000000000;
        v2 = 0x800000026122D630;
        v3 = 0xD000000000000010;
LABEL_13:
        v4 = sub_2611D0888(v3, v2);
        goto LABEL_14;
      }

      return CardReaderErrorType.description.getter(v1);
    }

    v5 = 0x7272454244666173;
    v6 = 0xEA0000000000726FLL;
    goto LABEL_12;
  }

  strcpy(v8, "deviceBanned");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v4 = sub_2611D06C4();
LABEL_14:
  MEMORY[0x2666FBF20](v4);

  return v8[0];
}

uint64_t sub_2611D06C4()
{
  v1 = sub_26121C760();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  if (!v5)
  {
    return 0;
  }

  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_2611B3970(0xD000000000000011, 0x800000026122D5F0);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_2611AC930(*(v5 + 56) + 32 * v6, v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v11[0] = 40;
  v11[1] = 0xE100000000000000;
  sub_26121C710();
  sub_2611D0DA4(&qword_27FE87740, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v8 = sub_26121D4C0();
  MEMORY[0x2666FBF20](v8);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x2666FBF20](41, 0xE100000000000000);
  return v11[0];
}

uint64_t sub_2611D0888(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  if (v3)
  {
    if (*(v3 + 16) && (v4 = sub_2611B3970(a1, a2), (v5 & 1) != 0))
    {
      sub_2611AC930(*(v3 + 56) + 32 * v4, v10);
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    sub_2611ABE1C(v10, &v8, &qword_27FE87B10, &qword_26121F890);
    if (v9)
    {
      sub_2611B69DC(&v8, v7);
      MEMORY[0x2666FBF20](40, 0xE100000000000000);
      sub_26121D2D0();
      MEMORY[0x2666FBF20](41, 0xE100000000000000);
      __swift_destroy_boxed_opaque_existential_1(v7);
      sub_2611AC114(v10, &qword_27FE87B10, &qword_26121F890);
    }

    else
    {
      sub_2611AC114(v10, &qword_27FE87B10, &qword_26121F890);
    }
  }

  return 0;
}

id CardReaderErrorInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CardReaderErrorInternal.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CardReaderErrorInternal();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2611D0A90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 112))(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2611D0AD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_2611D0B28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

unint64_t CardReaderErrorInternal.errorUserInfo.getter()
{
  if (*(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo))
  {
    v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  }

  else
  {
    v1 = sub_2611C1B98(MEMORY[0x277D84F90]);
  }

  return v1;
}

unint64_t sub_2611D0BE4()
{
  if (*(*v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo))
  {
    v1 = *(*v0 + OBJC_IVAR____TtC19ProximityReaderCore23CardReaderErrorInternal_userInfo);
  }

  else
  {
    v1 = sub_2611C1B98(MEMORY[0x277D84F90]);
  }

  return v1;
}

unint64_t sub_2611D0C38(unint64_t result)
{
  if (result > 0x1E)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2611D0C70()
{
  result = qword_27FE87718;
  if (!qword_27FE87718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87718);
  }

  return result;
}

uint64_t sub_2611D0DA4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t AnalyticsError.hashValue.getter()
{
  sub_26121D5B0();
  MEMORY[0x2666FC740](0);
  return sub_26121D5D0();
}

_OWORD *sub_2611D0E70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  result = swift_initStackObject();
  result[1] = xmmword_2612223F0;
  v1 = *MEMORY[0x277D44040];
  if (!*MEMORY[0x277D44040])
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  *(result + 4) = sub_26121CC80();
  *(v2 + 5) = v3;
  v4 = v1;
  result = sub_2611999FC();
  v5 = *result;
  *(v2 + 9) = MEMORY[0x277D839F8];
  *(v2 + 6) = v5;
  v6 = *MEMORY[0x277D44080];
  if (!*MEMORY[0x277D44080])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 10) = sub_26121CC80();
  *(v2 + 11) = v7;
  v8 = v6;
  result = sub_261199A10();
  v9 = *result;
  *(v2 + 15) = MEMORY[0x277D84CC0];
  *(v2 + 24) = v9;
  if (*MEMORY[0x277D44010])
  {
    v10 = *MEMORY[0x277D44010];

    v11 = sub_26121CC80();
    v13 = v12;

    *(v2 + 16) = v11;
    *(v2 + 17) = v13;
    *(v2 + 21) = MEMORY[0x277D839B0];
    *(v2 + 144) = 1;
    v14 = sub_2611C1B98(v2);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
    result = swift_arrayDestroy();
    qword_27FE8E368 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AnalyticsReporter.serviceName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AnalyticsReporter.sessionID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t AnalyticsReporter.hierarchyToken.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t AnalyticsReporter.creationTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnalyticsReporter(0) + 32);
  v4 = sub_26121C760();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for AnalyticsReporter(uint64_t a1)
{
  result = qword_27FE8E8F0;
  if (!qword_27FE8E8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnalyticsReporter.sessionDuration.getter()
{
  v0 = sub_26121C760();
  v19 = *(v0 - 8);
  v20 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26121C990();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26121C430();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87560, &unk_261222400);
  v9 = sub_26121C980();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2612203B0;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277CC99A8], v9);
  sub_2611C1D10(v12);
  swift_setDeallocating();
  (*(v10 + 8))(v12 + v11, v9);
  swift_deallocClassInstance();
  type metadata accessor for AnalyticsReporter(0);
  sub_26121C750();
  sub_26121C940();

  (*(v19 + 8))(v2, v20);
  (*(v17 + 8))(v5, v18);
  v13 = sub_26121C410();
  (*(v6 + 8))(v8, v16);
  return v13;
}

uint64_t sub_2611D147C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E65636976726573;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6863726172656968;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4 == 2)
    {
      v6 = 0xEE006E656B6F5479;
    }

    else
    {
      v6 = 0x800000026122D960;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x496E6F6973736573;
    }

    else
    {
      v5 = 0x4E65636976726573;
    }

    if (v4)
    {
      v6 = 0xE900000000000044;
    }

    else
    {
      v6 = 0xEB00000000656D61;
    }
  }

  v7 = 0x6863726172656968;
  v8 = 0x800000026122D960;
  if (a2 == 2)
  {
    v8 = 0xEE006E656B6F5479;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (a2)
  {
    v3 = 0x496E6F6973736573;
    v2 = 0xE900000000000044;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26121D4D0();
  }

  return v11 & 1;
}

uint64_t sub_2611D15E4()
{
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

uint64_t sub_2611D16C4(uint64_t a1)
{
  sub_26121CD50();
}

uint64_t sub_2611D1790(uint64_t a1)
{
  sub_26121D5B0();
  sub_26121CD50();

  return sub_26121D5D0();
}

unint64_t sub_2611D186C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2611D4694(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2611D189C(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E65636976726573;
  v4 = 0xEE006E656B6F5479;
  v5 = 0x6863726172656968;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000026122D960;
  }

  if (*v1)
  {
    v3 = 0x496E6F6973736573;
    v2 = 0xE900000000000044;
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

unint64_t sub_2611D1938()
{
  v1 = 0x4E65636976726573;
  v2 = 0x6863726172656968;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x496E6F6973736573;
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

unint64_t sub_2611D19D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2611D4694(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2611D1A04(uint64_t a1)
{
  v2 = sub_2611D46E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D1A40(uint64_t a1)
{
  v2 = sub_2611D46E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnalyticsReporter.init(serviceName:hierarchyToken:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a4;
  v86 = a3;
  v87 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v7 - 8);
  v83 = v81 - v8;
  v9 = sub_26121C7B0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AnalyticsReporter(0);
  v84 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26121C7A0();
  v16 = _s10Foundation4UUIDV19ProximityReaderCoreE10toFileNameSSyF_0();
  v18 = v17;
  v19 = *(v10 + 8);
  v19(v12, v9);
  v15[3] = v16;
  v15[4] = v18;
  v81[2] = v18;
  v20 = a1;
  v15[1] = a1;
  v15[2] = a2;
  v85 = v13;
  v21 = *(v13 + 32);

  v82 = v21;
  v90 = v15;
  v22 = v89;
  sub_26121C750();
  if (v22)
  {
    v23 = v22;
    v24 = v86;
  }

  else
  {
    sub_26121C7A0();
    v24 = _s10Foundation4UUIDV19ProximityReaderCoreE10toFileNameSSyF_0();
    v23 = v25;
    v19(v12, v9);
  }

  v26 = v90;
  v90[5] = v24;
  v26[6] = v23;

  v27 = sub_2611999B4();
  v29 = *v27;
  v28 = *(v27 + 1);

  v30 = sub_261199A70();
  v31 = *(v30 + 1);
  v32 = *v30 == v20;
  v88 = v20;
  if (v32 && v31 == a2 || (sub_26121D4D0() & 1) != 0 || (v33 = sub_261199A9C(), *v33 == v20) && v33[1] == a2 || (sub_26121D4D0() & 1) != 0)
  {

    v34 = sub_2611999DC();
    v29 = *v34;
    v28 = *(v34 + 1);

    v35 = 55;
  }

  else
  {
    v35 = 31;
  }

  if (qword_27FE8E360 != -1)
  {
    swift_once();
  }

  v81[1] = v23;
  v86 = a2;
  result = *MEMORY[0x277D44028];
  if (!*MEMORY[0x277D44028])
  {
    __break(1u);
    goto LABEL_33;
  }

  v37 = qword_27FE8E368;
  v38 = sub_26121CC80();
  v40 = v39;
  v41 = objc_opt_self();

  v42 = [v41 mainBundle];
  v43 = [v42 bundleIdentifier];

  v44 = MEMORY[0x277D837D0];
  if (v43)
  {
    v45 = sub_26121CC80();
    v47 = v46;

    v94 = v44;
    if (v47)
    {
      goto LABEL_20;
    }

    v45 = 0;
  }

  else
  {
    v45 = 0;
    v94 = MEMORY[0x277D837D0];
  }

  v47 = 0xE000000000000000;
LABEL_20:
  *&v93 = v45;
  *(&v93 + 1) = v47;
  sub_2611B69DC(&v93, v92);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v37;
  sub_2611B63A0(v92, v38, v40, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D44030];
  if (!*MEMORY[0x277D44030])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v49 = v91;
  v50 = sub_26121CC80();
  v52 = v51;
  v94 = MEMORY[0x277D849A8];
  LODWORD(v93) = v35;
  sub_2611B69DC(&v93, v92);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v91 = v49;
  sub_2611B63A0(v92, v50, v52, v53);

  v54 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612221E0;
  result = *MEMORY[0x277D44090];
  if (!*MEMORY[0x277D44090])
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_26121CC80();
  *(inited + 32) = result;
  *(inited + 40) = v56;
  *(inited + 72) = v44;
  *(inited + 48) = v29;
  *(inited + 56) = v28;
  v57 = v88;
  if (!*MEMORY[0x277D44098])
  {
LABEL_35:
    __break(1u);
    return result;
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v58;
  *(inited + 120) = v44;
  v59 = v86;
  *(inited + 96) = v57;
  *(inited + 104) = v59;
  v60 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  sub_2611CB440(v54);

  sub_2611CB440(v60);

  v61 = objc_allocWithZone(MEMORY[0x277D43FE0]);
  v62 = sub_26121CB80();

  v63 = sub_26121CB80();

  v64 = sub_26121CEB0();
  v65 = [v61 initWithSessionInfo:v62 userInfo:v63 frameworksToCheck:v64];

  if (v65)
  {
    v66 = v90;
    *v90 = v65;
    v67 = v87;
    sub_2611B8950(v66, v87);
    (*(v84 + 56))(v67, 0, 1, v85);
    return sub_2611B8BE4(v66);
  }

  else
  {
    v68 = sub_2611F05A8();
    v69 = v83;
    sub_2611ABE1C(v68, v83, &qword_27FE87700, &unk_2612203D0);
    v70 = sub_26121CA60();
    v71 = *(v70 - 8);
    if ((*(v71 + 48))(v69, 1, v70) == 1)
    {
      sub_2611AC114(v69, &qword_27FE87700, &unk_2612203D0);
      v72 = v87;
      v73 = v85;
      v74 = v84;
      v75 = v82;
    }

    else
    {
      v76 = sub_26121CA40();
      v77 = sub_26121CFC0();
      v78 = os_log_type_enabled(v76, v77);
      v75 = v82;
      if (v78)
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_261197000, v76, v77, "Could not create the RTCReporting object", v79, 2u);
        MEMORY[0x2666FCF20](v79, -1, -1);
      }

      (*(v71 + 8))(v69, v70);
      v72 = v87;
      v73 = v85;
      v74 = v84;
    }

    v80 = sub_26121C760();
    (*(*(v80 - 8) + 8))(v90 + v75, v80);
    return (*(v74 + 56))(v72, 1, 1, v73);
  }
}

uint64_t AnalyticsReporter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v67 - v4;
  v5 = sub_26121C760();
  v76 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87768, &qword_261222420);
  v77 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v67 - v9;
  v11 = type metadata accessor for AnalyticsReporter(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2611D46E0();
  v15 = v78;
  sub_26121D5F0();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v16 = v7;
  v73 = v11;
  v78 = v5;
  LOBYTE(v81) = 0;
  v17 = sub_26121D3B0();
  v19 = v13;
  *(v13 + 1) = v17;
  *(v13 + 2) = v20;
  LOBYTE(v81) = 1;
  v21 = v17;
  v22 = v20;
  v23 = sub_26121D3B0();
  v71 = v21;
  v72 = v22;
  *(v19 + 3) = v23;
  *(v19 + 4) = v24;
  LOBYTE(v81) = 2;
  *(v19 + 5) = sub_26121D3B0();
  *(v19 + 6) = v25;
  LOBYTE(v81) = 3;
  sub_2611D4F14(&qword_27FE87778, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v26 = v8;
  v27 = v78;
  sub_26121D3F0();
  v69 = v10;
  v68 = v26;
  (*(v76 + 32))(&v19[*(v73 + 32)], v16, v27);
  if (qword_27FE8E360 != -1)
  {
    swift_once();
  }

  result = *MEMORY[0x277D44028];
  if (!*MEMORY[0x277D44028])
  {
    __break(1u);
    goto LABEL_24;
  }

  v28 = qword_27FE8E368;
  v70 = sub_26121CC80();
  v30 = v29;
  v31 = objc_opt_self();
  v32 = v28;

  v33 = [v31 mainBundle];
  v34 = [v33 bundleIdentifier];

  v35 = MEMORY[0x277D837D0];
  if (v34)
  {
    v36 = sub_26121CC80();
    v38 = v37;

    v82 = v35;
    if (v38)
    {
      goto LABEL_12;
    }

    v36 = 0;
  }

  else
  {
    v36 = 0;
    v82 = MEMORY[0x277D837D0];
  }

  v38 = 0xE000000000000000;
LABEL_12:
  *&v81 = v36;
  *(&v81 + 1) = v38;
  sub_2611B69DC(&v81, v80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v83 = v32;
  sub_2611B63A0(v80, v70, v30, isUniquelyReferenced_nonNull_native);

  result = *MEMORY[0x277D44030];
  if (!*MEMORY[0x277D44030])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v40 = v83;
  v41 = sub_26121CC80();
  v43 = v42;
  v82 = MEMORY[0x277D849A8];
  LODWORD(v81) = 31;
  sub_2611B69DC(&v81, v80);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v83 = v40;
  sub_2611B63A0(v80, v41, v43, v44);

  v45 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612221E0;
  result = *MEMORY[0x277D44090];
  v47 = MEMORY[0x277D837D0];
  if (!*MEMORY[0x277D44090])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(inited + 32) = sub_26121CC80();
  *(inited + 40) = v48;
  v49 = sub_2611999B4();
  v50 = *v49;
  v51 = *(v49 + 1);
  *(inited + 72) = v47;
  *(inited + 48) = v50;
  *(inited + 56) = v51;
  result = *MEMORY[0x277D44098];
  if (!*MEMORY[0x277D44098])
  {
LABEL_26:
    __break(1u);
    return result;
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v52;
  *(inited + 120) = v47;
  v53 = v72;
  *(inited + 96) = v71;
  *(inited + 104) = v53;

  v54 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  sub_2611CB440(v45);

  sub_2611CB440(v54);

  v55 = objc_allocWithZone(MEMORY[0x277D43FE0]);
  v56 = sub_26121CB80();

  v57 = sub_26121CB80();

  v58 = sub_26121CEB0();
  v59 = [v55 initWithSessionInfo:v56 userInfo:v57 frameworksToCheck:v58];

  if (v59)
  {
    (*(v77 + 8))(v69, v68);
    *v19 = v59;
    sub_2611B8950(v19, v75);
    __swift_destroy_boxed_opaque_existential_1(v79);
    return sub_2611B8BE4(v19);
  }

  else
  {
    v60 = sub_2611F05A8();
    v61 = v74;
    sub_2611ABE1C(v60, v74, &qword_27FE87700, &unk_2612203D0);
    v62 = sub_26121CA60();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v61, 1, v62) == 1)
    {
      sub_2611AC114(v61, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v64 = sub_26121CA40();
      v65 = sub_26121CFC0();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_261197000, v64, v65, "Could not create the RTCReporting object", v66, 2u);
        MEMORY[0x2666FCF20](v66, -1, -1);
      }

      (*(v63 + 8))(v61, v62);
    }

    sub_2611D4734();
    swift_allocError();
    swift_willThrow();
    (*(v77 + 8))(v69, v68);
    __swift_destroy_boxed_opaque_existential_1(v79);

    return (*(v76 + 8))(&v19[*(v73 + 32)], v78);
  }
}

uint64_t AnalyticsReporter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87788, &qword_261222428);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611D46E0();
  sub_26121D600();
  v8[15] = 0;
  sub_26121D460();
  if (!v1)
  {
    v8[14] = 1;
    sub_26121D460();
    v8[13] = 2;
    sub_26121D460();
    type metadata accessor for AnalyticsReporter(0);
    v8[12] = 3;
    sub_26121C760();
    sub_2611D4F14(&qword_27FE87790, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26121D4A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2611D2F0C()
{
  v1 = type metadata accessor for AnalyticsReporter(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_26121CF50();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_2611B8950(v0, &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_2611B88EC(&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_2611D3684(0, 0, v6, &unk_261222440, v9);
}

uint64_t sub_2611D30A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a1;
  v4[20] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611D314C, 0, 0);
}

uint64_t sub_2611D314C()
{
  v1 = **(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_2611D326C;
  v2 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE877D0, &qword_261222708);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2611D3604;
  *(v0 + 104) = &block_descriptor_2;
  *(v0 + 112) = v2;
  [v1 startConfigurationWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2611D326C()
{

  return MEMORY[0x2822009F8](sub_2611D334C, 0, 0);
}

uint64_t sub_2611D334C(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 144))
  {
    v13 = *(v2 + 168);
    v14 = sub_2611F05A8();
    sub_2611ABE1C(v14, v13, &qword_27FE87700, &unk_2612203D0);
    v5 = sub_26121CA60();
    v6 = *(v5 - 8);
    v15 = (*(v6 + 48))(v13, 1, v5);
    v8 = *(v2 + 168);
    if (v15 != 1)
    {
      v9 = sub_26121CA40();
      v17 = sub_26121CFC0();
      if (os_log_type_enabled(v9, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_261197000, v9, v17, "RTC storebag was NOT found!", v18, 2u);
        MEMORY[0x2666FCF20](v18, -1, -1);
      }

      v12 = *(v2 + 168);
      goto LABEL_11;
    }

LABEL_7:
    sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
    v16 = 1;
    goto LABEL_12;
  }

  v3 = *(v2 + 176);

  v4 = sub_2611F05A8();
  sub_2611ABE1C(v4, v3, &qword_27FE87700, &unk_2612203D0);
  v5 = sub_26121CA60();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v3, 1, v5);
  v8 = *(v2 + 176);
  if (v7 == 1)
  {
    goto LABEL_7;
  }

  v9 = sub_26121CA40();
  v10 = sub_26121CFB0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261197000, v9, v10, "RTC storebag found!", v11, 2u);
    MEMORY[0x2666FCF20](v11, -1, -1);
  }

  v12 = *(v2 + 176);
LABEL_11:

  (*(v6 + 8))(v12, v5);
  v16 = 0;
LABEL_12:
  **(v2 + 152) = v16;

  v19 = *(v2 + 8);

  return v19();
}

uint64_t sub_2611D3604(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = sub_26121CEC0();
  }

  else
  {
    v4 = 0;
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x282200948](v3);
}

uint64_t sub_2611D3684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87798, &qword_261222430);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2611ABE1C(a3, v25 - v10, &qword_27FE87798, &qword_261222430);
  v12 = sub_26121CF50();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2611AC114(v11, &qword_27FE87798, &qword_261222430);
  }

  else
  {
    sub_26121CF40();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26121CF10();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26121CD20() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE877C8, &qword_2612226F8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2611AC114(a3, &qword_27FE87798, &qword_261222430);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2611AC114(a3, &qword_27FE87798, &qword_261222430);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE877C8, &qword_2612226F8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2611D3998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26121C7B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[1];
  v8 = v1[2];
  v9 = v1[5];
  v10 = v1[6];
  v15 = v9;
  v16 = v10;

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  sub_26121C7A0();
  v11 = _s10Foundation4UUIDV19ProximityReaderCoreE10toFileNameSSyF_0();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  MEMORY[0x2666FBF20](v11, v13);

  return AnalyticsReporter.init(serviceName:hierarchyToken:)(v7, v8, v15, v16, a1);
}

id sub_2611D3AE0(uint64_t a1)
{
  v34[23] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v33 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612223F0;
  if (!*MEMORY[0x277D43FF0])
  {
    __break(1u);
    goto LABEL_16;
  }

  *(inited + 32) = sub_26121CC80();
  *(inited + 40) = v7;
  v8 = sub_261199A24();
  v9 = MEMORY[0x277D84C58];
  v10 = *v8;
  *(inited + 72) = MEMORY[0x277D84C58];
  *(inited + 48) = v10;
  if (!*MEMORY[0x277D44008])
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v11;
  v12 = *sub_261199A38();
  *(inited + 120) = v9;
  *(inited + 96) = v12;
  if (!*MEMORY[0x277D44000])
  {
    goto LABEL_17;
  }

  *(inited + 128) = sub_26121CC80();
  *(inited + 136) = v13;
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87448, &qword_2612210C0);
  *(inited + 144) = a1;

  v14 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  v15 = *v1;
  sub_2611CB440(v14);

  v16 = sub_26121CB80();

  v34[0] = 0;
  LODWORD(v15) = [v15 sendMessageWithDictionary:v16 error:v34];

  v17 = v34[0];
  if (v15)
  {

    return v17;
  }

  else
  {
    v33[0] = v34[0];
    v19 = v34[0];
    v20 = sub_26121C500();

    swift_willThrow();
    v21 = sub_2611F05A8();
    sub_2611ABE1C(v21, v5, &qword_27FE87700, &unk_2612203D0);
    v22 = sub_26121CA60();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v5, 1, v22) == 1)
    {

      return sub_2611AC114(v5, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v24 = v20;
      v25 = sub_26121CA40();
      v26 = sub_26121CFC0();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34[0] = v28;
        *v27 = 136315138;
        v33[1] = v20;
        v29 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87550, &qword_261221C30);
        v30 = sub_26121CCF0();
        v32 = sub_2611AA228(v30, v31, v34);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_261197000, v25, v26, "Error sending analytics: [%s]", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x2666FCF20](v28, -1, -1);
        MEMORY[0x2666FCF20](v27, -1, -1);
      }

      else
      {
      }

      return (*(v23 + 8))(v5, v22);
    }
  }
}

id static AnalyticsReporter.sendSingleEvent(serviceName:message:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41[17] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v40 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87760, &unk_261222410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2612221E0;
  if (!*MEMORY[0x277D44090])
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  *(inited + 32) = sub_26121CC80();
  *(inited + 40) = v10;
  v11 = sub_2611999B4();
  v12 = *v11;
  v13 = *(v11 + 1);
  v14 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  if (!*MEMORY[0x277D44098])
  {
    goto LABEL_16;
  }

  *(inited + 80) = sub_26121CC80();
  *(inited + 88) = v15;
  *(inited + 120) = v14;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  v16 = sub_2611C1B98(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87590, &unk_2612223D0);
  swift_arrayDestroy();
  v17 = objc_opt_self();
  if (qword_27FE8E360 != -1)
  {
    swift_once();
  }

  sub_2611CB440(qword_27FE8E368);
  v18 = sub_26121CB80();

  sub_2611CB440(v16);

  v19 = sub_26121CB80();

  v20 = *sub_261199A24();
  v21 = *sub_261199A38();
  sub_2611CB440(a3);
  v22 = sub_26121CB80();

  v41[0] = 0;
  v23 = [v17 sendOneMessageWithSessionInfo:v18 userInfo:v19 category:v20 type:v21 payload:v22 error:v41];

  v24 = v41[0];
  if (v23)
  {

    return v24;
  }

  else
  {
    v40[0] = v41[0];
    v26 = v41[0];
    v27 = sub_26121C500();

    swift_willThrow();
    v28 = sub_2611F05A8();
    sub_2611ABE1C(v28, v8, &qword_27FE87700, &unk_2612203D0);
    v29 = sub_26121CA60();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v8, 1, v29) == 1)
    {

      return sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v31 = v27;
      v32 = sub_26121CA40();
      v33 = sub_26121CFC0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v41[0] = v35;
        *v34 = 136315138;
        v40[1] = v27;
        v36 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87550, &qword_261221C30);
        v37 = sub_26121CCF0();
        v39 = sub_2611AA228(v37, v38, v41);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_261197000, v32, v33, "Error sending analytics: [%s]", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x2666FCF20](v35, -1, -1);
        MEMORY[0x2666FCF20](v34, -1, -1);
      }

      else
      {
      }

      return (*(v30 + 8))(v8, v29);
    }
  }
}

uint64_t sub_2611D448C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2611D4580;

  return v5(v2 + 32);
}

uint64_t sub_2611D4580()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_2611D4694(uint64_t a1, uint64_t a2)
{
  v2 = sub_26121D340();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2611D46E0()
{
  result = qword_27FE87770;
  if (!qword_27FE87770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87770);
  }

  return result;
}

unint64_t sub_2611D4734()
{
  result = qword_27FE87780;
  if (!qword_27FE87780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87780);
  }

  return result;
}

uint64_t sub_2611D4788()
{
  v1 = (type metadata accessor for AnalyticsReporter(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[10];
  v6 = sub_26121C760();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2611D4890(uint64_t a1)
{
  v4 = *(type metadata accessor for AnalyticsReporter(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2611BBFEC;

  return sub_2611D30A4(a1, v6, v7, v1 + v5);
}

unint64_t sub_2611D4970()
{
  result = qword_27FE877A0;
  if (!qword_27FE877A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877A0);
  }

  return result;
}

unint64_t sub_2611D49C8()
{
  result = qword_27FE877A8;
  if (!qword_27FE877A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877A8);
  }

  return result;
}

unint64_t sub_2611D4A20()
{
  result = qword_27FE877B0;
  if (!qword_27FE877B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877B0);
  }

  return result;
}

unint64_t sub_2611D4A78()
{
  result = qword_27FE877B8;
  if (!qword_27FE877B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE877B8);
  }

  return result;
}

uint64_t sub_2611D4AF0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26121C760();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_2611D4BB0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_26121C760();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2611D4C54(uint64_t a1)
{
  result = sub_2611D4CE4();
  if (v2 <= 0x3F)
  {
    result = sub_26121C760();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2611D4CE4()
{
  result = qword_27FE877C0;
  if (!qword_27FE877C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE877C0);
  }

  return result;
}

uint64_t sub_2611D4D40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2611D4D78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2611D4F60;

  return sub_2611D448C(a1, v4);
}

uint64_t sub_2611D4E30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2611BBFEC;

  return sub_2611D448C(a1, v4);
}

uint64_t sub_2611D4F14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AccountAuth.partnerToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken);

  return v1;
}

uint64_t AccountAuth.gsToken.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken);

  return v1;
}

uint64_t AccountAuth.altDsId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId);

  return v1;
}

uint64_t AccountAuth.deviceLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale);

  return v1;
}

id AccountAuth.__allocating_init(partnerToken:relink:gsToken:altDsId:deviceLocale:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = objc_allocWithZone(v9);
  v19 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken];
  *v19 = a1;
  v19[1] = a2;
  v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink] = a3;
  v20 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken];
  *v20 = a4;
  v20[1] = a5;
  v21 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId];
  *v21 = a6;
  v21[1] = a7;
  v22 = &v18[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale];
  *v22 = a8;
  v22[1] = a9;
  v24.receiver = v18;
  v24.super_class = v9;
  return objc_msgSendSuper2(&v24, sel_init);
}

id AccountAuth.init(partnerToken:relink:gsToken:altDsId:deviceLocale:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken];
  *v10 = a1;
  v10[1] = a2;
  v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink] = a3;
  v11 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken];
  *v11 = a4;
  v11[1] = a5;
  v12 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId];
  *v12 = a6;
  v12[1] = a7;
  v13 = &v9[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale];
  *v13 = a8;
  v13[1] = a9;
  v15.receiver = v9;
  v15.super_class = type metadata accessor for AccountAuth();
  return objc_msgSendSuper2(&v15, sel_init);
}

void sub_2611D51EC(void *a1)
{
  v3 = sub_26121CC50();
  v4 = sub_26121CC50();
  [a1 encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink);
  v6 = sub_26121CC50();
  [a1 encodeBool:v5 forKey:v6];

  v7 = sub_26121CC50();
  v8 = sub_26121CC50();
  [a1 encodeObject:v7 forKey:v8];

  v9 = sub_26121CC50();
  v10 = sub_26121CC50();
  [a1 encodeObject:v9 forKey:v10];

  v11 = sub_26121CC50();
  v12 = sub_26121CC50();
  [a1 encodeObject:v11 forKey:v12];
}

id AccountAuth.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  sub_261199284();
  v7 = sub_26121D060();
  if (v7)
  {
    v8 = v7;
    v9 = sub_26121CC50();
    v10 = [a1 decodeBoolForKey_];

    v11 = sub_26121D060();
    if (v11)
    {
      v12 = v11;
      v13 = sub_26121D060();
      if (v13)
      {
        v14 = v13;
        v15 = sub_26121D060();
        if (v15)
        {
          v16 = v15;
          v17 = sub_26121CC80();
          v18 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_partnerToken];
          *v18 = v17;
          v18[1] = v19;
          v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_relink] = v10;
          v20 = sub_26121CC80();
          v21 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_gsToken];
          *v21 = v20;
          v21[1] = v22;
          v23 = sub_26121CC80();
          v24 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_altDsId];
          *v24 = v23;
          v24[1] = v25;
          v26 = sub_26121CC80();
          v28 = v27;

          v29 = &v2[OBJC_IVAR____TtC19ProximityReaderCore11AccountAuth_deviceLocale];
          *v29 = v26;
          v29[1] = v28;
          v30 = type metadata accessor for AccountAuth();
          v40.receiver = v2;
          v40.super_class = v30;
          v31 = objc_msgSendSuper2(&v40, sel_init);

          return v31;
        }

        v33 = v12;
        v8 = v14;
      }

      else
      {
        v33 = v8;
        v8 = v12;
      }
    }
  }

  v34 = sub_2611F02B4();
  sub_2611B8B74(v34, v6);
  v35 = sub_26121CA60();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v6, 1, v35) == 1)
  {

    sub_2611D57E4(v6);
  }

  else
  {
    v37 = sub_26121CA40();
    v38 = sub_26121CFC0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_261197000, v37, v38, "AccountAuth | Failed to decode object", v39, 2u);
      MEMORY[0x2666FCF20](v39, -1, -1);
    }

    (*(v36 + 8))(v6, v35);
  }

  type metadata accessor for AccountAuth();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2611D57E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id AccountAuth.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountAuth.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountAuth();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

ProximityReaderCore::InternalOptions __swiftcall InternalOptions.init(returnReadResultImmediately:includeErrorInReadResult:)(Swift::Bool returnReadResultImmediately, Swift::Bool includeErrorInReadResult)
{
  *v2 = returnReadResultImmediately;
  v2[1] = includeErrorInReadResult;
  result.returnReadResultImmediately = returnReadResultImmediately;
  return result;
}

unint64_t sub_2611D5A50()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_2611D5A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD00000000000001BLL && 0x800000026122DA50 == a2;
  if (v5 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026122DA70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

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

uint64_t sub_2611D5B70(uint64_t a1)
{
  v2 = sub_2611D5D74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D5BAC(uint64_t a1)
{
  v2 = sub_2611D5D74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87808, &qword_261222750);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611D5D74();
  sub_26121D600();
  v12 = 0;
  sub_26121D470();
  if (!v2)
  {
    v11 = 1;
    sub_26121D470();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2611D5D74()
{
  result = qword_27FE8E900[0];
  if (!qword_27FE8E900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8E900);
  }

  return result;
}

uint64_t InternalOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87810, &qword_261222758);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611D5D74();
  sub_26121D5F0();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_26121D3C0();
    v13 = 1;
    v11 = sub_26121D3C0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for InternalOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for InternalOptions(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_2611D6128()
{
  result = qword_27FE8EB10[0];
  if (!qword_27FE8EB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8EB10);
  }

  return result;
}

unint64_t sub_2611D6180()
{
  result = qword_27FE8EC20;
  if (!qword_27FE8EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8EC20);
  }

  return result;
}

unint64_t sub_2611D61D8()
{
  result = qword_27FE8EC28[0];
  if (!qword_27FE8EC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8EC28);
  }

  return result;
}

uint64_t static LayoutBundleDetails.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE87820 = a1;
  return result;
}

uint64_t sub_2611D639C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE87820;
  return result;
}

uint64_t sub_2611D63E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE87820 = v1;
  return result;
}

uint64_t LayoutBundleDetails.region.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region);

  return v1;
}

uint64_t LayoutBundleDetails.url.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url);

  return v1;
}

uint64_t LayoutBundleDetails.version.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version);

  return v1;
}

id LayoutBundleDetails.__allocating_init(region:url:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v13[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v13[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v13;
  v18.super_class = v6;
  return objc_msgSendSuper2(&v18, sel_init);
}

id LayoutBundleDetails.init(region:url:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v14 = &v6[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url];
  *v15 = a3;
  *(v15 + 1) = a4;
  v16 = &v6[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version];
  *v16 = a5;
  *(v16 + 1) = a6;
  v18.receiver = v6;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, sel_init);
}

Swift::Void __swiftcall LayoutBundleDetails.encode(with:)(NSCoder with)
{
  v2 = sub_26121CC50();
  v3 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_26121CC50();
  v5 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = sub_26121CC50();
  v7 = sub_26121CC50();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id LayoutBundleDetails.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  sub_261199284();
  v8 = sub_26121D060();
  if (v8)
  {
    v32 = 0;
    v33 = 0;
    v9 = v8;
    sub_26121CC70();

    v10 = v33;
    if (v33)
    {
      v11 = v32;
      v12 = sub_26121D060();
      if (v12)
      {
        v32 = 0;
        v33 = 0;
        v13 = v12;
        sub_26121CC70();

        v14 = v33;
        if (v33)
        {
          v15 = v32;
          v16 = sub_26121D060();
          if (v16)
          {
            v32 = 0;
            v33 = 0;
            v17 = v16;
            sub_26121CC70();

            v18 = v33;
            if (v33)
            {
              v19 = v32;
              v20 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_region];
              *v20 = v11;
              *(v20 + 1) = v10;
              v21 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_url];
              *v21 = v15;
              *(v21 + 1) = v14;
              v22 = &v2[OBJC_IVAR____TtC19ProximityReaderCore19LayoutBundleDetails_version];
              *v22 = v19;
              *(v22 + 1) = v18;
              v31.receiver = v2;
              v31.super_class = ObjectType;
              v23 = objc_msgSendSuper2(&v31, sel_init);

              return v23;
            }
          }
        }
      }
    }
  }

  v25 = sub_2611F033C();
  sub_2611B8B74(v25, v7);
  v26 = sub_26121CA60();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v7, 1, v26) == 1)
  {

    sub_2611D57E4(v7);
  }

  else
  {
    v28 = sub_26121CA40();
    v29 = sub_26121CFC0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_261197000, v28, v29, "LayoutBundleDetails | Failed to decode object", v30, 2u);
      MEMORY[0x2666FCF20](v30, -1, -1);
    }

    (*(v27 + 8))(v7, v26);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id LayoutBundleDetails.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LayoutBundleDetails.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611D6CB0(uint64_t a1)
{
  v2 = sub_2611D85C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D6CEC(uint64_t a1)
{
  v2 = sub_2611D85C8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2611D6D28(char a1)
{
  result = 0x776F6C6C41746F6ELL;
  switch(a1)
  {
    case 1:
      result = 2037609826;
      break;
    case 2:
      result = 0x6E776F6E6B6E75;
      break;
    case 3:
      result = 0x456B726F7774656ELL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0x7272454244666173;
      break;
    case 12:
      result = 0x696E676953666173;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2611D6EE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2611DB2FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2611D6F1C(uint64_t a1)
{
  v2 = sub_2611D81D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D6F58(uint64_t a1)
{
  v2 = sub_2611D81D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D6F94(uint64_t a1)
{
  v2 = sub_2611D8520();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D6FD0(uint64_t a1)
{
  v2 = sub_2611D8520();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D700C(uint64_t a1)
{
  v2 = sub_2611D861C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7048(uint64_t a1)
{
  v2 = sub_2611D861C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7084(uint64_t a1)
{
  v2 = sub_2611D84CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D70C0(uint64_t a1)
{
  v2 = sub_2611D84CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D70FC(uint64_t a1)
{
  v2 = sub_2611D82D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7138(uint64_t a1)
{
  v2 = sub_2611D82D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7174(uint64_t a1)
{
  v2 = sub_2611D837C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D71B0(uint64_t a1)
{
  v2 = sub_2611D837C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D71EC(uint64_t a1)
{
  v2 = sub_2611D8328();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7228(uint64_t a1)
{
  v2 = sub_2611D8328();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7264(uint64_t a1)
{
  v2 = sub_2611D8280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D72A0(uint64_t a1)
{
  v2 = sub_2611D8280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D72DC(uint64_t a1)
{
  v2 = sub_2611D8424();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7318(uint64_t a1)
{
  v2 = sub_2611D8424();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7354(uint64_t a1)
{
  v2 = sub_2611D8478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7390(uint64_t a1)
{
  v2 = sub_2611D8478();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D73CC(uint64_t a1)
{
  v2 = sub_2611D83D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7408(uint64_t a1)
{
  v2 = sub_2611D83D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D7444(uint64_t a1)
{
  v2 = sub_2611D822C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D7480(uint64_t a1)
{
  v2 = sub_2611D822C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611D74BC(uint64_t a1)
{
  v2 = sub_2611D8574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611D74F8(uint64_t a1)
{
  v2 = sub_2611D8574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StoreErrorInternal.Code.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87840, &qword_261222930);
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v83 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87848, &qword_261222938);
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87850, &qword_261222940);
  v77 = *(v7 - 8);
  v78 = v7;
  MEMORY[0x28223BE20](v7);
  v76 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87858, &qword_261222948);
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87860, &qword_261222950);
  v71 = *(v11 - 8);
  v72 = v11;
  MEMORY[0x28223BE20](v11);
  v70 = &v50 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87868, &qword_261222958);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v50 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87870, &qword_261222960);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = &v50 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87878, &qword_261222968);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = &v50 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87880, &qword_261222970);
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v50 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87888, &qword_261222978);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v55 = &v50 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87890, &qword_261222980);
  v79 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v50 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87898, &qword_261222988);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v50 - v21;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878A0, &qword_261222990);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE878A8, &qword_261222998);
  v25 = *(v24 - 8);
  v87 = v24;
  v88 = v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v50 - v26;
  v28 = *v1;
  v29 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611D81D8();
  v86 = v27;
  sub_26121D600();
  if (v29 <= 1)
  {
    if (!v29)
    {
      v92 = 2;
      sub_2611D8574();
      v31 = v86;
      v30 = v87;
      sub_26121D410();
      sub_26121D490();
      (*(v79 + 8))(v20, v18);
      return (*(v88 + 8))(v31, v30);
    }

    v102 = 11;
    sub_2611D8280();
    v32 = v80;
    v31 = v86;
    v30 = v87;
    sub_26121D410();
    v33 = v82;
    sub_26121D490();
    v34 = v81;
LABEL_7:
    (*(v34 + 8))(v32, v33);
    return (*(v88 + 8))(v31, v30);
  }

  if (v29 == 2)
  {
    v103 = 12;
    sub_2611D822C();
    v32 = v83;
    v31 = v86;
    v30 = v87;
    sub_26121D410();
    v33 = v85;
    sub_26121D490();
    v34 = v84;
    goto LABEL_7;
  }

  if (v28 > 4)
  {
    if (v28 > 6)
    {
      if (v28 == 7)
      {
        v99 = 8;
        sub_2611D837C();
        v42 = v70;
        v38 = v86;
        v37 = v87;
        sub_26121D410();
        v44 = v71;
        v43 = v72;
      }

      else if (v28 == 8)
      {
        v100 = 9;
        sub_2611D8328();
        v42 = v73;
        v38 = v86;
        v37 = v87;
        sub_26121D410();
        v44 = v74;
        v43 = v75;
      }

      else
      {
        v101 = 10;
        sub_2611D82D4();
        v42 = v76;
        v38 = v86;
        v37 = v87;
        sub_26121D410();
        v44 = v77;
        v43 = v78;
      }

      (*(v44 + 8))(v42, v43);
      return (*(v88 + 8))(v38, v37);
    }

    if (v28 == 5)
    {
      v97 = 6;
      sub_2611D8424();
      v45 = v64;
      v38 = v86;
      v37 = v87;
      sub_26121D410();
      v39 = *(v65 + 8);
      v40 = v45;
      v41 = &v105;
    }

    else
    {
      v98 = 7;
      sub_2611D83D0();
      v49 = v67;
      v38 = v86;
      v37 = v87;
      sub_26121D410();
      v39 = *(v68 + 8);
      v40 = v49;
      v41 = &v106;
    }
  }

  else if (v28 <= 1)
  {
    if (v28)
    {
      v91 = 1;
      sub_2611D85C8();
      v48 = v52;
      v38 = v86;
      v37 = v87;
      sub_26121D410();
      v39 = *(v53 + 8);
      v40 = v48;
      v41 = &v86;
    }

    else
    {
      v90 = 0;
      sub_2611D861C();
      v38 = v86;
      v37 = v87;
      sub_26121D410();
      v39 = *(v50 + 8);
      v40 = v23;
      v41 = &v83;
    }
  }

  else if (v28 == 2)
  {
    v93 = 3;
    sub_2611D8520();
    v46 = v55;
    v38 = v86;
    v37 = v87;
    sub_26121D410();
    v39 = *(v56 + 8);
    v40 = v46;
    v41 = &v89;
  }

  else if (v28 == 3)
  {
    v94 = 4;
    sub_2611D84CC();
    v36 = v58;
    v38 = v86;
    v37 = v87;
    sub_26121D410();
    v39 = *(v59 + 8);
    v40 = v36;
    v41 = &v95;
  }

  else
  {
    v96 = 5;
    sub_2611D8478();
    v47 = v61;
    v38 = v86;
    v37 = v87;
    sub_26121D410();
    v39 = *(v62 + 8);
    v40 = v47;
    v41 = &v104;
  }

  v39(v40, *(v41 - 32));
  return (*(v88 + 8))(v38, v37);
}