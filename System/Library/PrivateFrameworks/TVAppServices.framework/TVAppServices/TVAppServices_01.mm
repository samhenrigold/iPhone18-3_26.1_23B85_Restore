uint64_t sub_26CC2CFD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  MEMORY[0x28223BE20](v11 - 8);
  v49 = &v41 - v12;
  v13 = sub_26CCC7724(78, a1);
  v15 = v14;
  v16 = sub_26CCC7724(80, a1);
  v18 = v17;
  v19 = sub_26CCC7724(70, a1);
  v45 = v20;
  v46 = v19;
  v44 = sub_26CCC7AAC(68, a1);
  v43 = v21;
  v48 = sub_26CCC7944(19, a1);
  v47 = v22;
  v23 = qword_2804BDBE8;
  if (qword_2804BDBE8)
  {
    v41 = v18;
    v42 = v16;
    v24 = v13;
    v25 = a3;
    v26 = a2;

    v27 = sub_26CCC79F8(71, v23);

    if (v27 != 2 && (v27 & 1) != 0)
    {
      v28 = sub_26CCC7944(22, a1);
      v30 = v48;
      if ((v29 & 1) == 0)
      {
        v30 = v28;
      }

      v48 = v30;
      v47 &= v29;
    }

    a2 = v26;
    a3 = v25;
    v13 = v24;
    v18 = v41;
    v16 = v42;
  }

  sub_26CCC7944(65, a1);
  if (v31)
  {
    v32 = sub_26CD3A1EC();
    (*(*(v32 - 8) + 56))(v49, 1, 1, v32);
  }

  else
  {
    v33 = v49;
    sub_26CD3A19C();
    v34 = sub_26CD3A1EC();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }

  v35 = sub_26CCC7724(81, a1);
  sub_26CC2D728(v35, v36, 0);

  v37 = sub_26CD3A07C();
  (*(*(v37 - 8) + 56))(v10, 0, 1, v37);
  EpisodeDetails = type metadata accessor for UpNextEpisodeDetails(0);
  sub_26CC16D64(v49, a4 + *(EpisodeDetails + 40), &qword_2804BCA90, &qword_26CD3C200);
  sub_26CC16D64(v10, a4 + *(EpisodeDetails + 44), &qword_2804BCA30, &qword_26CD3DA70);
  *a4 = v13;
  *(a4 + 8) = v15;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = v16;
  *(a4 + 40) = v18;
  v39 = v45;
  *(a4 + 48) = v46;
  *(a4 + 56) = v39;
  *(a4 + 64) = v44;
  *(a4 + 72) = v43 & 1;
  *(a4 + 80) = v48;
  *(a4 + 88) = v47 & 1;
}

uint64_t sub_26CC2D358@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBAE0, &unk_26CD3C1F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v35 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v35 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *a1;
  v19 = qword_2804BDBE8;
  if (!qword_2804BDBE8)
  {
    goto LABEL_9;
  }

  v20 = sub_26CCC79F8(71, v19);

  if (v20 == 2 || (v20 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_26CC1B4DC(a2, v17, &qword_2804BBAE0, &unk_26CD3C1F0);
  EpisodeDetails = type metadata accessor for UpNextEpisodeDetails(0);
  v22 = *(*(EpisodeDetails - 8) + 48);
  if (v22(v17, 1, EpisodeDetails) == 1)
  {
    goto LABEL_8;
  }

  v36 = v22;
  v23 = *(v17 + 7);

  sub_26CC2FA80(v17);
  if (v23)
  {

    sub_26CC1B4DC(a2, v15, &qword_2804BBAE0, &unk_26CD3C1F0);
    if (v36(v15, 1, EpisodeDetails) == 1)
    {
      v17 = v15;
LABEL_8:
      sub_26CC1B544(v17, &qword_2804BBAE0, &unk_26CD3C1F0);
      goto LABEL_9;
    }

    v34 = v15[88];
    result = sub_26CC2FA80(v15);
    if ((v34 & 1) == 0)
    {
      v29 = 0;
      v30 = 1;
      goto LABEL_14;
    }
  }

LABEL_9:
  sub_26CC1B4DC(a2, v12, &qword_2804BBAE0, &unk_26CD3C1F0);
  v24 = type metadata accessor for UpNextEpisodeDetails(0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v12, 1, v24) == 1)
  {
    v26 = v12;
LABEL_11:
    result = sub_26CC1B544(v26, &qword_2804BBAE0, &unk_26CD3C1F0);
LABEL_13:
    v29 = 0;
    v30 = 0;
    goto LABEL_14;
  }

  v28 = v12[72];
  result = sub_26CC2FA80(v12);
  if (v28)
  {
    goto LABEL_13;
  }

  sub_26CC1B4DC(a2, v9, &qword_2804BBAE0, &unk_26CD3C1F0);
  if (v25(v9, 1, v24) == 1)
  {
    v26 = v9;
    goto LABEL_11;
  }

  v33 = v9[88];
  result = sub_26CC2FA80(v9);
  v30 = 0;
  v29 = v33 ^ 1;
LABEL_14:
  if (v18 > 3)
  {
    if (v18 <= 0x10)
    {
      if (((1 << v18) & 0x19F80) == 0)
      {
        if (((1 << v18) & 0x60) != 0)
        {
          v31 = 4;
          goto LABEL_34;
        }

        if (((1 << v18) & 0x6000) != 0)
        {
          v31 = 3;
          goto LABEL_34;
        }

        goto LABEL_28;
      }

LABEL_20:
      v31 = 0;
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if ((v18 - 2) < 2)
  {
    goto LABEL_20;
  }

  if (v18)
  {
LABEL_28:
    if (v29)
    {
      v32 = 1;
    }

    else
    {
      v32 = 3;
    }

    goto LABEL_31;
  }

  v32 = v29 & 1;
LABEL_31:
  if (v30)
  {
    v31 = 2;
  }

  else
  {
    v31 = v32;
  }

LABEL_34:
  *a3 = v31;
  return result;
}

uint64_t sub_26CC2D728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_26CD3A07C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_6:
    sub_26CC2E794();
    swift_allocError();
    *v18 = 5;
    return swift_willThrow();
  }

  sub_26CD3A03C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26CC1B544(v8, &qword_2804BCA30, &qword_26CD3DA70);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v13 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v14 = swift_allocObject();
    v20 = xmmword_26CD3C1E0;
    *(v14 + 16) = xmmword_26CD3C1E0;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_26CD3AC6C();

    v21 = 0xD000000000000015;
    v22 = 0x800000026CD4D3B0;
    MEMORY[0x26D6AD060](a1, a2);
    v15 = v22;
    *(v14 + 32) = v21;
    *(v14 + 40) = v15;
    v16 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v17 = swift_allocObject();
    *(v17 + 16) = v20;
    *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v17 + 64) = sub_26CC2E6E8();
    *(v17 + 32) = v14;
    sub_26CD3A3DC(v16, &dword_26CC14000, v13, "%@", 2, 2, v17);

    goto LABEL_6;
  }

  (*(v10 + 32))(v12, v8, v9);
  if (a3)
  {
    sub_26CC2DD4C(a3);
  }

  sub_26CD3A05C();

  return (*(v10 + 8))(v12, v9);
}

double sub_26CC2DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v10 = *(a3 + 32);
  if (a4)
  {
    v11 = sub_26CCC7710(28, a4);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 6;
  }

  if (v12 == 6)
  {

    goto LABEL_19;
  }

  if (v12 != 3)
  {
    if (v12 == 2)
    {
      v13 = v11;
      v14 = sub_26CCC7710(5, a5);
      if (v14)
      {
LABEL_14:

        goto LABEL_20;
      }

      if (v13)
      {

        v14 = sub_26CCC7710(4, v13);

        goto LABEL_14;
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  if (!v11)
  {
LABEL_19:
    v14 = 0;
LABEL_20:
    v15 = 0;
    if (v14)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v15 = sub_26CCC7710(95, v11);

  v14 = 0;
  if (!v15)
  {
LABEL_21:
    v15 = sub_26CCC7710(74, a5);
  }

LABEL_22:
  if (v8)
  {

    v16 = v9;
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v16 = 0;
    if (!v15)
    {
      goto LABEL_36;
    }
  }

  v17 = sub_26CCC7724(91, v15);
  if (v18)
  {
    v19 = v18;
    v38 = v17;
    v20 = sub_26CCC7944(96, v15);
    if (v21)
    {
    }

    else
    {
      v22 = *&v20;
      v37 = v9;
      v23 = COERCE_DOUBLE(sub_26CCC7944(25, v15));
      v25 = v24;

      if ((v25 & 1) == 0 && v22 * v23 > 0.0)
      {
        v9 = v37;
        *a1 = v38;
        *(a1 + 8) = v19;
        *(a1 + 16) = v22 / v23;
        *(a1 + 24) = v16;
        *(a1 + 32) = v8;
        if (v8)
        {
          goto LABEL_37;
        }

        goto LABEL_32;
      }

      v9 = v37;
    }
  }

LABEL_36:

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (v8)
  {
LABEL_37:

    if (!v14)
    {
      goto LABEL_45;
    }

    goto LABEL_38;
  }

LABEL_32:
  v9 = 0;
  if (!v14)
  {
    goto LABEL_45;
  }

LABEL_38:
  v26 = sub_26CCC7724(91, v14);
  if (v27)
  {
    v28 = v27;
    v29 = v26;
    v30 = sub_26CCC7944(96, v14);
    if (v31)
    {
    }

    else
    {
      v32 = *&v30;
      v33 = COERCE_DOUBLE(sub_26CCC7944(25, v14));
      v35 = v34;

      if ((v35 & 1) == 0 && v32 * v33 > 0.0)
      {
        *a2 = v29;
        *(a2 + 8) = v28;
        result = v32 / v33;
        *(a2 + 16) = v32 / v33;
        *(a2 + 24) = v9;
        *(a2 + 32) = v8;
        return result;
      }
    }
  }

LABEL_45:

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_26CC2DD4C(uint64_t a1)
{
  v31 = sub_26CD39E2C();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v29 = v5;
    v24 = v1;
    v34 = MEMORY[0x277D84F90];
    sub_26CCEB218(0, v6, 0);
    v7 = v34;
    v8 = a1 + 64;
    v9 = sub_26CD3AB6C();
    v10 = 0;
    v33 = *(a1 + 36);
    v27 = a1 + 64;
    v28 = v3 + 32;
    v25 = a1 + 72;
    v26 = v6;
    v30 = v3;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v12 = v9 >> 6;
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v32 = v10;
      v13 = a1;

      v14 = v29;
      sub_26CD39DFC();

      v34 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26CCEB218((v15 > 1), v16 + 1, 1);
        v7 = v34;
      }

      *(v7 + 16) = v16 + 1;
      (*(v30 + 32))(v7 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v16, v14, v31);
      v11 = 1 << *(v13 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v8 = v27;
      v17 = *(v27 + 8 * v12);
      if ((v17 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v13;
      if (v33 != *(v13 + 36))
      {
        goto LABEL_27;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        v11 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v12 << 6;
        v20 = v12 + 1;
        v21 = (v25 + 8 * v12);
        while (v20 < (v11 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_26CC2FADC(v9, v33, 0);
            v11 = __clz(__rbit64(v22)) + v19;
            goto LABEL_20;
          }
        }

        sub_26CC2FADC(v9, v33, 0);
LABEL_20:
        a1 = v13;
      }

      v10 = v32 + 1;
      v9 = v11;
      if (v32 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_26CC2E110(uint64_t a1, id *a2)
{
  v3 = sub_26CD3A5BC();
  *a2 = 0;
  return v3 & 1;
}

void sub_26CC2E190(uint64_t *a2@<X8>)
{
  sub_26CD3A5CC();
  v3 = sub_26CD3A59C();

  *a2 = v3;
}

void *sub_26CC2E208@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_26CC2E234@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void sub_26CC2E300(uint64_t *a2@<X8>)
{
  v3 = sub_26CCA53DC();

  *a2 = v3;
}

uint64_t sub_26CC2E350(uint64_t a1)
{
  v2 = sub_26CC2FCEC(&qword_2804BBC38, type metadata accessor for CLError, &unk_26CD3CCAC);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_26CC2E3BC(uint64_t a1)
{
  v2 = sub_26CC2FCEC(&qword_2804BBC38, type metadata accessor for CLError, &unk_26CD3CCAC);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_26CC2E428(void *a1, uint64_t a2)
{
  v4 = sub_26CC2FCEC(&qword_2804BBC38, type metadata accessor for CLError, &unk_26CD3CCAC);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_26CC2E4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26CC2FCEC(&qword_2804BBC38, type metadata accessor for CLError, &unk_26CD3CCAC);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_26CC2E558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26CD3B0FC();
  sub_26CD3A53C();
  return sub_26CD3B13C();
}

void sub_26CC2E5B8(uint64_t *a2@<X8>)
{
  v3 = sub_26CD3A59C();

  *a2 = v3;
}

uint64_t sub_26CC2E600@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26CD3A5CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26CC2E62C(uint64_t a1)
{
  v2 = sub_26CC2FCEC(&qword_2804BBC40, type metadata accessor for Name, &unk_26CD3CA1C);
  v3 = sub_26CC2FCEC(&qword_2804BBC48, type metadata accessor for Name, &unk_26CD3C9BC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_26CC2E6E8()
{
  result = qword_280BBB7C0;
  if (!qword_280BBB7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB7C0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26CC2E794()
{
  result = qword_2804BBB60;
  if (!qword_2804BBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBB60);
  }

  return result;
}

uint64_t sub_26CC2E7E8(uint64_t a1, uint64_t a2)
{
  Item = type metadata accessor for UpNextItem(0);
  (*(*(Item - 8) + 32))(a2, a1, Item);
  return a2;
}

uint64_t sub_26CC2E84C(uint64_t a1)
{
  v2 = sub_26CC2FCEC(&qword_2804BBC00, type metadata accessor for CLError, &unk_26CD3C904);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26CC2E8B8(uint64_t a1)
{
  v2 = sub_26CC2FCEC(&qword_2804BBC00, type metadata accessor for CLError, &unk_26CD3C904);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26CC2E924(uint64_t a1)
{
  v2 = sub_26CC2FCEC(&qword_2804BBC38, type metadata accessor for CLError, &unk_26CD3CCAC);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_26CC2E990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26CC2FCEC(&qword_2804BBC38, type metadata accessor for CLError, &unk_26CD3CCAC);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_26CC2EA14()
{
  v0 = sub_26CD3A5CC();
  v1 = MEMORY[0x26D6AD0F0](v0);

  return v1;
}

double sub_26CC2EA50(uint64_t a1)
{
  sub_26CD3A5CC();
  sub_26CD3A54C();

  return result;
}

uint64_t sub_26CC2EAA4(uint64_t a1)
{
  sub_26CD3A5CC();
  sub_26CD3B0FC();
  sub_26CD3A54C();
  v1 = sub_26CD3B13C();

  return v1;
}

uint64_t sub_26CC2EB18(void *a1, uint64_t *a2)
{
  v2 = sub_26CD3A5CC();
  v4 = v3;
  if (v2 == sub_26CD3A5CC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26CD3AFDC();
  }

  return v7 & 1;
}

double sub_26CC2EBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

double sub_26CC2EBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

double sub_26CC2EC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void sub_26CC2EC6C(uint64_t a1)
{
  v2 = sub_26CD3A1EC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v102 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = MEMORY[0x28223BE20](v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](&v102 - v19);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v102 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v25 = MEMORY[0x28223BE20](v24);
  v32 = &v102 - v31;
  if (a1)
  {
    v127 = v27;
    v128 = v30;
    v123 = v26;
    v124 = v28;
    v125 = v25;
    v126 = v29;
    v33 = sub_26CCC7710(44, a1);
    if (v33)
    {
      v34 = sub_26CCC77D4(52, v33);

      if (v34)
      {
        v116 = v12;
        v115 = v8;
        v35 = *(v34 + 16);
        if (v35)
        {
          v113 = v18;
          v108 = v6;
          v36 = 0;
          v120 = "ot supported.";
          v121 = "purchasedTimestamp";
          v119 = "playbackDurationInMilliseconds";
          v117 = (v3 + 56);
          v122 = (v3 + 48);
          v112 = (v3 + 32);
          v111 = (v3 + 8);
          v118 = "rentalDurationInMilliseconds";
          v37 = &qword_2804BCA90;
          v110 = v23;
          while (1)
          {
            if (v36 >= *(v34 + 16))
            {
              __break(1u);
              return;
            }

            v38 = *(v34 + 8 * v36 + 32);
            if (*(v38 + 16))
            {
              break;
            }

LABEL_7:
            if (v35 == ++v36)
            {
              goto LABEL_67;
            }
          }

          v39 = v37;

          v40 = sub_26CC181C4(1684957547, 0xE400000000000000);
          if ((v41 & 1) == 0 || (sub_26CC168C0(*(v38 + 56) + 32 * v40, v131), (swift_dynamicCast() & 1) == 0))
          {
LABEL_6:

            goto LABEL_7;
          }

          if (v129 == 5.38823652e228 && v130 == 0xEA00000000006461)
          {
          }

          else
          {
            v42 = sub_26CD3AFDC();

            if ((v42 & 1) == 0)
            {
              goto LABEL_6;
            }
          }

          if (!*(v38 + 16))
          {
            v45 = INFINITY;
            goto LABEL_28;
          }

          v43 = sub_26CC181C4(0xD00000000000001CLL, v121 | 0x8000000000000000);
          if (v44 & 1) != 0 && (sub_26CC168C0(*(v38 + 56) + 32 * v43, v131), (swift_dynamicCast()))
          {
            v45 = v129;
            if (!*(v38 + 16))
            {
              goto LABEL_28;
            }
          }

          else
          {
            v45 = INFINITY;
            if (!*(v38 + 16))
            {
              goto LABEL_28;
            }
          }

          v46 = sub_26CC181C4(0xD00000000000001ELL, v120 | 0x8000000000000000);
          if (v47)
          {
            sub_26CC168C0(*(v38 + 56) + 32 * v46, v131);
            if (swift_dynamicCast())
            {
              v48 = v129;
              if (!*(v38 + 16))
              {
                goto LABEL_33;
              }

LABEL_29:
              v49 = sub_26CC181C4(0xD000000000000012, v119 | 0x8000000000000000);
              if (v50)
              {
                sub_26CC168C0(*(v38 + 56) + 32 * v49, v131);
                if (swift_dynamicCast())
                {
                  v52 = v129;
                  v51 = v130;
                  v53 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
                  v103 = v52;
                  v109 = v51;
                  v54 = sub_26CD3A59C();
                  v55 = [v53 dateFromString_];

                  v106 = v53;
                  if (v55)
                  {
                    v56 = v127;
                    sub_26CD3A1BC();

                    v57 = 0;
                  }

                  else
                  {
                    v57 = 1;
                    v56 = v127;
                  }

                  v104 = *v117;
                  v104(v56, v57, 1, v2);
                  v71 = v39;
                  v72 = v2;
                  v73 = v32;
                  sub_26CC16D64(v56, v32, v39, &qword_26CD3C200);
                  v74 = v110;
                  sub_26CC1B4DC(v32, v110, v39, &qword_26CD3C200);
                  v75 = v72;
                  v105 = *v122;
                  LODWORD(v72) = v105(v74, 1, v72);
                  sub_26CC1B544(v74, v39, &qword_26CD3C200);
                  v76 = v72 == 1;
                  v77 = v73;
                  v2 = v75;
                  if (v76)
                  {
                    v114 = v75;
                    v78 = v77;
                    v79 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
                    [v79 setFormatOptions_];
                    v80 = sub_26CD3A59C();
                    v81 = [v79 dateFromString_];

                    if (v81)
                    {
                      v82 = v123;
                      sub_26CD3A1BC();

                      v77 = v78;
                      v71 = v39;
                      sub_26CC1B544(v78, v39, &qword_26CD3C200);
                      v83 = 0;
                    }

                    else
                    {
                      v77 = v78;
                      v71 = v39;
                      sub_26CC1B544(v78, v39, &qword_26CD3C200);

                      v83 = 1;
                      v82 = v123;
                    }

                    v2 = v114;
                    v104(v82, v83, 1, v114);
                    sub_26CC16D64(v82, v77, v71, &qword_26CD3C200);
                  }

                  v92 = v125;
                  sub_26CC1B4DC(v77, v125, v71, &qword_26CD3C200);
                  if (v105(v92, 1, v2) == 1)
                  {
                    sub_26CC1B544(v77, v71, &qword_26CD3C200);

                    sub_26CC1B544(v92, v71, &qword_26CD3C200);

                    v58 = INFINITY;
                    v32 = v77;
                  }

                  else
                  {
                    v93 = v77;
                    v94 = v115;
                    (*v112)(v115, v92, v2);
                    sub_26CD3A0DC();
                    v96 = v95;

                    (*v111)(v94, v2);
                    sub_26CC1B544(v93, &qword_2804BCA90, &qword_26CD3C200);

                    v58 = v96 * 1000.0;
                    v32 = v93;
                  }

LABEL_34:
                  if (*(v38 + 16) && (v59 = sub_26CC181C4(0xD000000000000018, v118 | 0x8000000000000000), (v60 & 1) != 0))
                  {
                    sub_26CC168C0(*(v38 + 56) + 32 * v59, v131);

                    if (swift_dynamicCast())
                    {
                      v114 = v2;
                      v62 = v129;
                      v61 = v130;
                      v63 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
                      v109 = v61;
                      v64 = sub_26CD3A59C();
                      v65 = [v63 dateFromString_];

                      v107 = v32;
                      v106 = v63;
                      v103 = v62;
                      if (v65)
                      {
                        v66 = v128;
                        sub_26CD3A1BC();

                        v67 = 0;
                      }

                      else
                      {
                        v67 = 1;
                        v66 = v128;
                      }

                      v2 = v114;
                      v104 = *v117;
                      v104(v66, v67, 1, v114);
                      v84 = v113;
                      v37 = v39;
                      sub_26CC16D64(v66, v113, v39, &qword_26CD3C200);
                      v85 = v126;
                      sub_26CC1B4DC(v84, v126, v39, &qword_26CD3C200);
                      v105 = *v122;
                      v86 = v105(v85, 1, v2);
                      sub_26CC1B544(v85, v39, &qword_26CD3C200);
                      if (v86 == 1)
                      {
                        v87 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
                        [v87 setFormatOptions_];
                        v88 = sub_26CD3A59C();
                        v89 = [v87 dateFromString_];

                        if (v89)
                        {
                          v90 = v124;
                          sub_26CD3A1BC();

                          v84 = v113;
                          v37 = v39;
                          sub_26CC1B544(v113, v39, &qword_26CD3C200);
                          v91 = 0;
                        }

                        else
                        {
                          v84 = v113;
                          v37 = v39;
                          sub_26CC1B544(v113, v39, &qword_26CD3C200);

                          v91 = 1;
                          v90 = v124;
                        }

                        v2 = v114;
                        v104(v90, v91, 1, v114);
                        sub_26CC16D64(v90, v84, v37, &qword_26CD3C200);
                      }

                      v97 = v116;
                      sub_26CC1B4DC(v84, v116, v37, &qword_26CD3C200);
                      v98 = v84;
                      if (v105(v97, 1, v2) == 1)
                      {
                        sub_26CC1B544(v84, v37, &qword_26CD3C200);

                        sub_26CC1B544(v97, v37, &qword_26CD3C200);

                        v68 = INFINITY;
                      }

                      else
                      {
                        v99 = v108;
                        (*v112)(v108, v97, v2);
                        sub_26CD3A0DC();
                        v101 = v100;

                        (*v111)(v99, v2);
                        sub_26CC1B544(v98, v37, &qword_26CD3C200);

                        v68 = v101 * 1000.0;
                      }

                      v32 = v107;
LABEL_41:
                      v69 = v48 + v68;
                      if (v45 + v58 >= v69)
                      {
                        v70 = v69;
                      }

                      else
                      {
                        v70 = v45 + v58;
                      }

                      if (v70 != INFINITY)
                      {

                        sub_26CD3A0EC();
                        return;
                      }

                      goto LABEL_7;
                    }
                  }

                  else
                  {
                  }

                  v68 = INFINITY;
                  v37 = v39;
                  goto LABEL_41;
                }
              }

LABEL_33:
              v58 = INFINITY;
              goto LABEL_34;
            }
          }

LABEL_28:
          v48 = INFINITY;
          if (!*(v38 + 16))
          {
            goto LABEL_33;
          }

          goto LABEL_29;
        }

LABEL_67:
      }
    }
  }
}

uint64_t sub_26CC2FA80(uint64_t a1)
{
  EpisodeDetails = type metadata accessor for UpNextEpisodeDetails(0);
  (*(*(EpisodeDetails - 8) + 8))(a1, EpisodeDetails);
  return a1;
}

double sub_26CC2FADC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26CC2FBE4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26CC2FC04(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_26CC2FCEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26CC30074(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26CC30110()
{
  result = qword_2804BBC28;
  if (!qword_2804BBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBC28);
  }

  return result;
}

uint64_t UTSNetworkManager.fetchConfiguration(cachePolicy:cacheValidityDuration:)(_BYTE *a1, double a2)
{
  *(v3 + 64) = v2;
  *(v3 + 56) = a2;
  *(v3 + 89) = *a1;
  return MEMORY[0x2822009F8](sub_26CC30258, v2, 0);
}

uint64_t sub_26CC30258()
{
  *(v0 + 40) = &type metadata for FeatureFlagManager;
  v1 = sub_26CC30530();
  *(v0 + 16) = 0;
  *(v0 + 48) = v1;
  v2 = sub_26CD3A29C();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if ((v2 & 1) == 0)
  {
    return sub_26CD3AD2C();
  }

  if (qword_280BBA158 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = *(v0 + 89);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_26CC303C8;
  v4 = *(v0 + 56);

  return sub_26CD15604((v0 + 88), v4);
}

uint64_t sub_26CC303C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v6 = *(v4 + 64);

    return MEMORY[0x2822009F8](sub_26CC30518, v6, 0);
  }

  else
  {
    v7 = *(v5 + 8);

    return v7(a1);
  }
}

unint64_t sub_26CC30530()
{
  result = qword_2804BBC58;
  if (!qword_2804BBC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBC58);
  }

  return result;
}

uint64_t UTSNetworkManager.executeSiriLLMRequest(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC30618;

  return sub_26CD2C738(a1);
}

uint64_t sub_26CC30618(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t static PushTokensService.default.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_2804BB9E0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_26CC307A8(&unk_2804BBC60, v2);
}

uint64_t sub_26CC307E0()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v3 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](46, 0xE100000000000000);
  v1 = sub_26CD3AF8C();
  MEMORY[0x26D6AD060](v1);

  return v3;
}

uint64_t PushTokensService.registerPushToken(request:)(uint64_t a1)
{
  *(v2 + 224) = v1;
  v4 = sub_26CD39D0C();
  *(v2 + 232) = v4;
  *(v2 + 240) = *(v4 - 8);
  v5 = swift_task_alloc();
  *(v2 + 248) = v5;
  *(v2 + 256) = *a1;
  *(v2 + 272) = *(a1 + 16);
  *(v2 + 280) = *(a1 + 24);
  type metadata accessor for UTSURLRequestFactory();
  v6 = swift_task_alloc();
  *(v2 + 296) = v6;
  *v6 = v2;
  v6[1] = sub_26CC30A04;

  return sub_26CD027F0(v5, 0xD000000000000019, 0x800000026CD4D450, 0, 0xE000000000000000, 0, 0);
}

uint64_t sub_26CC30A04()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_26CC30B18;
  }

  else
  {
    v2 = sub_26CC30B80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC30B18()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_26CC30B80()
{
  v25 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 264);
  v5 = *(v0 + 272);
  v6 = *(v0 + 256);
  sub_26CD39C0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBC88, &qword_26CD3CDE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26CD3C1E0;
  *(inited + 32) = 0x6449656C646E7562;
  *(inited + 40) = 0xE800000000000000;
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v3;
  *(inited + 48) = sub_26CC31D78;
  *(inited + 56) = v8;

  v9 = sub_26CC3211C(inited);
  swift_setDeallocating();
  sub_26CC32238(inited + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v9;
  sub_26CC32A30(v2, sub_26CC31D28, 0, isUniquelyReferenced_nonNull_native, &v24);

  v11 = v24;

  v12 = sub_26CC307E0();
  *(v0 + 16) = v6;
  *(v0 + 24) = v4;
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = v13;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  sub_26CD39D8C();
  swift_allocObject();
  sub_26CD39D7C();
  v14 = *(v0 + 16);
  *(v0 + 104) = *(v0 + 32);
  v15 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v15;
  *(v0 + 152) = *(v0 + 80);
  *(v0 + 88) = v14;
  sub_26CC32D0C();
  sub_26CD39D6C();
  if (v1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    sub_26CC32D60(v0 + 16);

    v16 = *(v0 + 8);

    return v16(0);
  }

  else
  {
    v18 = *(v0 + 224);

    sub_26CC32D60(v0 + 16);
    sub_26CD39CDC();
    v19 = v18[3];
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v23 = (*(v20 + 16) + **(v20 + 16));
    v21 = swift_task_alloc();
    *(v0 + 312) = v21;
    *v21 = v0;
    v21[1] = sub_26CC30F00;
    v22 = *(v0 + 248);

    return v23(v0 + 328, v22, v19, v20);
  }
}

uint64_t sub_26CC30F00()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_26CC3109C;
  }

  else
  {
    v2 = sub_26CC31014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC31014()
{
  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
  v1 = *(v0 + 328);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26CC3109C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1(0);
}

uint64_t PushTokensService.AnyEncodable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>, uint64_t a4@<X2>)
{
  v7 = sub_26CC3120C(a1, a2, a4);
  v9 = v8;
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v7;
  a3[1] = v9;
  return result;
}

uint64_t PushTokensService.RegistrationRequest.pushToken.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PushTokensService.RegistrationRequest.bundleId.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall PushTokensService.RegistrationRequest.init(pushToken:bundleId:metadata:)(TVAppServices::PushTokensService::RegistrationRequest *__return_ptr retstr, Swift::String pushToken, Swift::String bundleId, Swift::OpaquePointer metadata)
{
  retstr->pushToken = pushToken;
  retstr->bundleId = bundleId;
  retstr->metadata = metadata;
}

uint64_t (*sub_26CC3120C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_26CC331DC;
}

uint64_t sub_26CC3137C()
{
  v1 = 0x6F666E49707061;
  if (*v0 != 1)
  {
    v1 = 0x6E49656369766564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656B6F5468737570;
  }
}

uint64_t sub_26CC313E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC3341C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC31414(uint64_t a1)
{
  v2 = sub_26CC33044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC31450(uint64_t a1)
{
  v2 = sub_26CC33044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26CC3148C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCA0, &qword_26CD3CF80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC33044();
  sub_26CD3B16C();
  LOBYTE(v11[0]) = 0;
  sub_26CD3AF2C();
  if (!v2)
  {
    *&v11[0] = *(v3 + 16);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCB0, &qword_26CD3CF88);
    sub_26CC33098();
    sub_26CD3AF6C();
    v9 = *(v3 + 40);
    v11[0] = *(v3 + 24);
    v11[1] = v9;
    v11[2] = *(v3 + 56);
    v12 = 2;
    sub_26CC33178();
    sub_26CD3AF6C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26CC31668(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD70, &qword_26CD3D208);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC33544();
  sub_26CD3B16C();
  v8[15] = 0;
  sub_26CD3AF2C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_26CD3AF2C();
  v8[13] = 2;
  sub_26CD3AF2C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t _s13TVAppServices20LocationServiceErrorV020AuthorizationRequestE0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CC31894(uint64_t a1)
{
  v2 = *v1;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v2);
  return sub_26CD3B13C();
}

uint64_t sub_26CC318D8()
{
  v1 = 0x656D614E736FLL;
  if (*v0 != 1)
  {
    v1 = 0x69737265566D6670;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6973726556736FLL;
  }
}

uint64_t sub_26CC31938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC33598(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC31960(uint64_t a1)
{
  v2 = sub_26CC33544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC3199C(uint64_t a1)
{
  v2 = sub_26CC33544();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_26CC319D8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_26CC336BC(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_26CC31A58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26CC31A78, 0, 0);
}

uint64_t sub_26CC31A78()
{
  if (qword_280BBAA78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_26CC31B48;
  v2 = *(v0 + 24);

  return UTSNetworkManager.execute(request:)(v2);
}

uint64_t sub_26CC31B48(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_26CC31C94, 0, 0);
  }
}

uint64_t sub_26CC31C94()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = [v1 responseStatusCode];

  *v2 = (v3 - 200) < 0x64;
  v4 = v0[1];

  return v4();
}

uint64_t sub_26CC31D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 24) = a1[3];
  *a2 = v2;
  *(a2 + 8) = *(a1 + 1);
}

unint64_t sub_26CC31D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCD0, &qword_26CD3CF90);
    v3 = sub_26CD3AD6C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_26CC181C4(v5, v6);
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

unint64_t sub_26CC31EA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD38, &qword_26CD3D000);
  v3 = sub_26CD3AD6C();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_26CCCA6D8(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v15 = *v8;
    swift_unknownObjectRetain();
    result = sub_26CCCA6D8(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26CC31FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD18, &qword_26CD3CFE0);
  v3 = sub_26CD3AD6C();
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  result = sub_26CCCA6D8(v4);
  v8 = v18;
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();

    return v3;
  }

  v10 = (a1 + 104);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v11 = v3[7] + 32 * result;
    *v11 = v8;
    *(v11 + 16) = v5 & 1;
    *(v11 + 24) = v6;
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v3[2] = v14;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v15 = v10 + 5;
    v4 = *(v10 - 4);
    v19 = *(v10 - 3);
    v5 = *(v10 - 8);
    v16 = *v10;
    swift_unknownObjectRetain();

    result = sub_26CCCA6D8(v4);
    v10 = v15;
    v6 = v16;
    v8 = v19;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26CC3211C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD48, &qword_26CD3D010);
    v3 = sub_26CD3AD6C();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_26CC181C4(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_26CC32238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBC90, &qword_26CD3CDF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC322A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD10, &qword_26CD3CFD8);
    v3 = sub_26CD3AD6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_26CCCA71C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
      v10[1] = v6;
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

unint64_t sub_26CC32398(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCE0, &qword_26CD3CFA0);
    v3 = sub_26CD3AD6C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26CC181C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_26CC324A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBCF0, &qword_26CD3CFB0);
    v3 = sub_26CD3AD6C();
    v4 = a1 + 32;

    while (1)
    {
      sub_26CC1B4DC(v4, v13, &qword_2804BBCF8, &qword_26CD3CFB8);
      result = sub_26CCCA694(v13);
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
      result = sub_26CC331CC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_26CC325E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD08, &qword_26CD3CFD0);
    v3 = sub_26CD3AD6C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_26CC181C4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_26CC326E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD20, &qword_26CD3CFE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD28, &unk_26CD3CFF0);
    v7 = sub_26CD3AD6C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_26CC1B4DC(v9, v5, &qword_2804BBD20, &qword_26CD3CFE8);
      result = sub_26CCCA7E8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_26CD3A20C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD30, &qword_26CD47400);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_26CC32934(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_26CD3AD6C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_26CC181C4(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

uint64_t sub_26CC32A30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *), uint64_t a3, char a4, void *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v10;
  while (1)
  {
    v12 = v9;
    v13 = v11;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v12)));
    v16 = *(a1 + 56);
    v17 = (*(a1 + 48) + v15);
    v18 = v17[1];
    v44[0] = *v17;
    v44[1] = v18;
    v45 = *(v16 + v15);

    a2(&v46, v44);

    v19 = v47;
    if (!v47)
    {
LABEL_22:
      sub_26CC33234(a1);
    }

    v20 = v6;
    v21 = a4;
    v22 = v46;
    v43 = v48;
    v23 = *v49;
    v25 = sub_26CC181C4(v46, v47);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] >= v28)
    {
      if ((v21 & 1) == 0)
      {
        sub_26CD3673C();
      }
    }

    else
    {
      sub_26CD33E54(v28, v21 & 1);
      v30 = sub_26CC181C4(v22, v19);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_26;
      }

      v25 = v30;
    }

    v6 = v20;
    v32 = (v12 - 1) & v12;
    v33 = *v49;
    v10 = v40;
    if (v29)
    {
      v39 = *(v33[7] + 16 * v25);

      *(v33[7] + 16 * v25) = v39;
    }

    else
    {
      v33[(v25 >> 6) + 8] |= 1 << v25;
      v34 = (v33[6] + 16 * v25);
      *v34 = v22;
      v34[1] = v19;
      *(v33[7] + 16 * v25) = v43;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_25;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v13;
    v9 = v32;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v6 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_26CD3B02C();
  __break(1u);
  return result;
}

unint64_t sub_26CC32D0C()
{
  result = qword_2804BBC98;
  if (!qword_2804BBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBC98);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26CC32DA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26CC32DEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CC32E44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26CC32E8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26CC32EE4(uint64_t *a1, int a2)
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

uint64_t sub_26CC32F2C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26CC32F9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_26CC32FE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26CC33044()
{
  result = qword_2804BBCA8;
  if (!qword_2804BBCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBCA8);
  }

  return result;
}

unint64_t sub_26CC33098()
{
  result = qword_2804BBCB8;
  if (!qword_2804BBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804BBCB0, &qword_26CD3CF88);
    sub_26CC33124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBCB8);
  }

  return result;
}

unint64_t sub_26CC33124()
{
  result = qword_2804BBCC0;
  if (!qword_2804BBCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBCC0);
  }

  return result;
}

unint64_t sub_26CC33178()
{
  result = qword_2804BBCC8;
  if (!qword_2804BBCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBCC8);
  }

  return result;
}

_OWORD *sub_26CC331CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26CC33270(uint64_t a1, int a2)
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

uint64_t sub_26CC332B8(uint64_t result, int a2, int a3)
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

unint64_t sub_26CC33318()
{
  result = qword_2804BBD58;
  if (!qword_2804BBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBD58);
  }

  return result;
}

unint64_t sub_26CC33370()
{
  result = qword_2804BBD60;
  if (!qword_2804BBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBD60);
  }

  return result;
}

unint64_t sub_26CC333C8()
{
  result = qword_2804BBD68;
  if (!qword_2804BBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBD68);
  }

  return result;
}

uint64_t sub_26CC3341C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656B6F5468737570 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F666E49707061 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49656369766564 && a2 == 0xEA00000000006F66)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

unint64_t sub_26CC33544()
{
  result = qword_2804BBD78;
  if (!qword_2804BBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBD78);
  }

  return result;
}

uint64_t sub_26CC33598(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E736FLL && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737265566D6670 && a2 == 0xEA00000000006E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t sub_26CC336BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBD80, &qword_26CD3D210);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC33544();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_26CD3AE3C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_26CD3AE3C();
  v21 = v12;
  v23 = 2;
  v13 = sub_26CD3AE3C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_26CC3391C()
{
  result = qword_2804BBD88;
  if (!qword_2804BBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBD88);
  }

  return result;
}

unint64_t sub_26CC33974()
{
  result = qword_2804BBD90;
  if (!qword_2804BBD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBD90);
  }

  return result;
}

unint64_t sub_26CC339CC()
{
  result = qword_2804BBD98;
  if (!qword_2804BBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBD98);
  }

  return result;
}

uint64_t sub_26CC33A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26CC246B8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_26CC33B68()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC246B8;

  return sub_26CC33BF8();
}

uint64_t sub_26CC33BF8()
{
  v1[5] = v0;
  v2 = sub_26CD3AA3C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC33CB8, v0, 0);
}

uint64_t sub_26CC33CB8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_2804BBA28 != -1)
  {
    swift_once();
  }

  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  sub_26CD3AA4C();

  swift_allocObject();
  swift_weakInit();
  sub_26CC36F24();
  sub_26CD3A48C();

  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  sub_26CD3A45C();
  swift_endAccess();

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CC33E3C(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = sub_26CD3A1EC();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v3 + 64) = v5;
  *v5 = v3;
  v5[1] = sub_26CC33F2C;

  return sub_26CC34430();
}

uint64_t sub_26CC33F2C(char a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 89) = a1;

  return MEMORY[0x2822009F8](sub_26CC34044, v2, 0);
}

uint64_t sub_26CC34044()
{
  if ((*(v0 + 88) & 1) != 0 || *(v0 + 89))
  {
    __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 176), *(*(v0 + 32) + 200));
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_26CC34154;

    return sub_26CCCB028();
  }

  else
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = v1[14];
    v4 = v1[15];
    v5 = v1[16];
    v6 = v1[17];
    v7 = v1[18];
    v8 = v1[19];
    *v2 = v3;
    v2[1] = v4;
    v2[2] = v5;
    v2[3] = v6;
    v2[4] = v7;
    v2[5] = v8;
    sub_26CC36EB4(v3, v4, v5, v6, v7, v8);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_26CC34154(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v3 + 32);

    return MEMORY[0x2822009F8](sub_26CC342A4, v7, 0);
  }
}

uint64_t sub_26CC342A4()
{
  v32 = v0;
  v1 = v0[10];
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v5 = v0[4];
    v4 = v0[5];
    v6 = v5[30];
    v7 = v5[31];
    __swift_project_boxed_opaque_existential_1(v5 + 27, v6);
    v0[2] = v1;
    (*(v7 + 24))(v0 + 2, v6, v7);
    sub_26CC34B48(v1, &v28);

    v8 = v29;
    v9 = v31;
    v10 = v5[14];
    v11 = v5[15];
    v12 = v5[16];
    v13 = v5[17];
    v14 = v5[18];
    v15 = v5[19];
    *(v5 + 7) = v28;
    v5[16] = v8;
    *(v5 + 17) = v30;
    v5[19] = v9;
    sub_26CC36E50(v10, v11, v12, v13, v14, v15);
    v16 = v5[35];
    v17 = v5[36];
    __swift_project_boxed_opaque_existential_1(v5 + 32, v16);
    sub_26CD3A1DC();
    (*(v17 + 24))(v2, v16, v17);
    (*(v3 + 8))(v2, v4);
  }

  v19 = v0[3];
  v18 = v0[4];
  v20 = v18[14];
  v21 = v18[15];
  v22 = v18[16];
  v23 = v18[17];
  v24 = v18[18];
  v25 = v18[19];
  *v19 = v20;
  v19[1] = v21;
  v19[2] = v22;
  v19[3] = v23;
  v19[4] = v24;
  v19[5] = v25;
  sub_26CC36EB4(v20, v21, v22, v23, v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_26CC34430()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA90, &qword_26CD3C200);
  v1[3] = swift_task_alloc();
  v2 = sub_26CD3A1EC();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26CC34534, v0, 0);
}

uint64_t sub_26CC34534()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[35];
  v6 = v3[36];
  __swift_project_boxed_opaque_existential_1(v3 + 32, v5);
  (*(v6 + 16))(v5, v6);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_26CC1B544(v0[3], &qword_2804BCA90, &qword_26CD3C200);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v7 = qword_280BBCBE0;
    v8 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 64) = sub_26CC19E10();
    *(v9 + 32) = 0x1000000000000070;
    *(v9 + 40) = 0x800000026CD4D650;
    sub_26CD3A3DC(v8, &dword_26CC14000, v7, "%@", 2, 2, v9);

    v10 = v0[1];

    return v10(1);
  }

  else
  {
    v12 = v0[2];
    (*(v0[5] + 32))(v0[7], v0[3], v0[4]);
    v14 = *(v12 + 312);
    v13 = *(v12 + 320);
    v16 = (*(v13 + 8) + **(v13 + 8));
    v15 = swift_task_alloc();
    v0[8] = v15;
    *v15 = v0;
    v15[1] = sub_26CC34818;

    return v16(v14, v13);
  }
}

uint64_t sub_26CC34818(uint64_t a1, char a2)
{
  v7 = *v3;
  v6 = *v3;

  v8 = *(v6 + 16);
  if (v2)
  {

    v9 = sub_26CC34A64;
  }

  else
  {
    *(v7 + 80) = a2;
    *(v7 + 72) = a1;
    v9 = sub_26CC34964;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26CC34964()
{
  if (*(v0 + 80))
  {
    v1 = 86400.0;
  }

  else
  {
    v1 = *(v0 + 72);
  }

  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  sub_26CD3A1CC();
  sub_26CD3A10C();
  v7 = v6;
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);

  v9 = *(v0 + 8);

  return v9(v7 > v1);
}

uint64_t sub_26CC34A64()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_26CD3A1CC();
  sub_26CD3A10C();
  v6 = v5;
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);

  v8 = v0[1];

  return v8(v6 > 86400.0);
}

void sub_26CC34B48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_26CC181C4(0x746E756F636361, 0xE700000000000000), (v5 & 1) != 0) && (sub_26CC168C0(*(a1 + 56) + 32 * v4, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v50;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v6 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v7 = sub_26CC181C4(0x796C696D6166, 0xE600000000000000);
  if ((v8 & 1) == 0 || (sub_26CC168C0(*(a1 + 56) + 32 * v7, v52), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430), (swift_dynamicCast() & 1) == 0))
  {
LABEL_11:
    v9 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_12;
    }

LABEL_16:
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v19 = 1;
LABEL_17:
    *a2 = v6;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v18;
    *(a2 + 32) = v9;
    *(a2 + 40) = v15;
    return;
  }

  v9 = v50;
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

LABEL_12:
  v10 = sub_26CC181C4(0x7069726373627573, 0xED0000736E6F6974);
  if ((v11 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_26CC168C0(*(a1 + 56) + 32 * v10, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDA0, &unk_26CD3D4F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v46 = a2;
  v47 = v6;
  v12 = *(v50 + 16);
  if (!v12)
  {
    v49 = 0;
    v48 = 0;
    v15 = MEMORY[0x277D84F98];
LABEL_53:

    v19 = 0;
    v6 = v47;
    v17 = v49;
    v18 = v48;
    a2 = v46;
    goto LABEL_17;
  }

  v49 = 0;
  v48 = 0;
  v13 = 0;
  v14 = v50 + 32;
  v15 = MEMORY[0x277D84F98];
  v16 = 0x280BB9000;
  while (v13 < *(v50 + 16))
  {
    v20 = *(v14 + 8 * v13);
    v21 = *(v20 + 16);

    if (v21)
    {
      v22 = sub_26CC181C4(0x6576697463417369, 0xE800000000000000);
      if (v23)
      {
        sub_26CC168C0(*(v20 + 56) + 32 * v22, v52);
        if (swift_dynamicCast())
        {
          if (v50)
          {
            v24 = __OFADD__(v49++, 1);
            if (v24)
            {
              goto LABEL_56;
            }

            if (*(v20 + 16))
            {
              v25 = sub_26CC181C4(1701869940, 0xE400000000000000);
              if (v26)
              {
                sub_26CC168C0(*(v20 + 56) + 32 * v25, v52);
                if (swift_dynamicCast())
                {
                  if (v50 == 0x53554C505F5654 && v51 == 0xE700000000000000)
                  {

LABEL_34:

                    v48 = v20;
                    goto LABEL_35;
                  }

                  v27 = sub_26CD3AFDC();

                  if (v27)
                  {
                    goto LABEL_34;
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_35:
    if (!*(v20 + 16) || (v28 = sub_26CC181C4(0x64496D616461, 0xE600000000000000), (v29 & 1) == 0) || (sub_26CC168C0(*(v20 + 56) + 32 * v28, v52), (swift_dynamicCast() & 1) == 0))
    {

      if (*(v16 + 3104) != -1)
      {
        swift_once();
      }

      v41 = qword_280BBCBE0;
      v42 = sub_26CD3A98C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_26CD3C1E0;
      *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
      *(v43 + 64) = sub_26CC2E6E8();
      *(v43 + 32) = &unk_287DFA6C0;
      sub_26CD3A3DC(v42, &dword_26CC14000, v41, "%@", 2, 2, v43);

      goto LABEL_20;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52[0] = v15;
    v32 = sub_26CCCA6D8(v50);
    v33 = v15;
    v34 = v15[2];
    v35 = (v31 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_55;
    }

    v37 = v31;
    if (v33[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = v52[0];
        if ((v31 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        sub_26CD36A2C();
        v40 = v52[0];
        if ((v37 & 1) == 0)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      sub_26CD343B4(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_26CCCA6D8(v50);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_58;
      }

      v32 = v38;
      v40 = v52[0];
      if ((v37 & 1) == 0)
      {
LABEL_48:
        v40[(v32 >> 6) + 8] |= 1 << v32;
        *(v40[6] + 8 * v32) = v50;
        *(v40[7] + 8 * v32) = v20;
        v44 = v40[2];
        v24 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v24)
        {
          goto LABEL_57;
        }

        v15 = v40;
        v40[2] = v45;
        goto LABEL_19;
      }
    }

    *(v40[7] + 8 * v32) = v20;

    v15 = v40;
LABEL_19:
    v14 = v50 + 32;
    v16 = 0x280BB9000uLL;
LABEL_20:
    if (v12 == ++v13)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  sub_26CD3B02C();
  __break(1u);
}

uint64_t sub_26CC35164()
{
  sub_26CC36E50(v0[14], v0[15], v0[16], v0[17], v0[18], v0[19]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26CC3521C(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26CC35334;

  return v7(a1, a2);
}

uint64_t sub_26CC35334(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

double sub_26CC35440(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_26CD3A86C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_26CCD5E38(0, 0, v4, &unk_26CD3D520, v8);
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v10 = qword_280BBCBE0;
    v11 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_26CC19E10();
    *(v12 + 32) = 0xD00000000000005BLL;
    *(v12 + 40) = 0x800000026CD4D6D0;
    sub_26CD3A3DC(v11, &dword_26CC14000, v10, "%@", 2, 2, v12);
  }

  return result;
}

uint64_t sub_26CC3563C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC37110;

  return sub_26CC356CC();
}

uint64_t sub_26CC356EC()
{
  v1 = v0[2];
  v2 = (*(*(v1 + 304) + 8))();
  v3 = v0[2];
  if (v4)
  {
    v5 = 0x1000000000000047;
    *(v1 + 160) = v2;
    *(v3 + 168) = 1;
    v6 = qword_280BB9C20;
    v7 = "TVSubscriptionsManager:: user signed out • will update subscriptions.";
LABEL_9:
    v10 = v7 - 32;
    if (v6 != -1)
    {
      swift_once();
    }

    v11 = qword_280BBCBE0;
    v12 = v10 | 0x8000000000000000;
    v13 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_26CC19E10();
    *(v14 + 32) = v5;
    *(v14 + 40) = v12;
    sub_26CD3A3DC(v13, &dword_26CC14000, v11, "%@", 2, 2, v14);

    v15 = swift_task_alloc();
    v0[3] = v15;
    *v15 = v0;
    v15[1] = sub_26CC35904;

    return sub_26CC359F8();
  }

  if ((*(v3 + 168) & 1) != 0 || v2 != *(v1 + 160))
  {
    *(v1 + 160) = v2;
    *(v3 + 168) = 0;
    v6 = qword_280BB9C20;
    v5 = 0x1000000000000052;
    v7 = "TVSubscriptionsManager:: account identifier changed • will update subscriptions.";
    goto LABEL_9;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_26CC35904()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26CC35A18()
{
  v1 = *(v0 + 136);
  v2 = v1[14];
  v3 = v1[15];
  v4 = v1[16];
  v5 = v1[17];
  v6 = v1[18];
  v7 = v1[19];
  v1[14] = 1;
  *(v1 + 15) = 0u;
  *(v1 + 17) = 0u;
  v1[19] = 0;
  sub_26CC36E50(v2, v3, v4, v5, v6, v7);
  v8 = v1[35];
  v9 = v1[36];
  __swift_project_boxed_opaque_existential_1(v1 + 32, v8);
  (*(v9 + 32))(v8, v9);
  v10 = *(v0 + 136);
  v11 = v10[30];
  v12 = v10[31];
  __swift_project_boxed_opaque_existential_1(v10 + 27, v11);
  (*(v12 + 32))(v11, v12);
  v13 = swift_task_alloc();
  *(v0 + 144) = v13;
  *v13 = v0;
  v13[1] = sub_26CC35E5C;

  return sub_26CC33E3C(v0 + 16, 1);
}

uint64_t sub_26CC35E5C()
{
  v2 = *v1;
  (*v1)[19] = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = sub_26CC35F8C;
  }

  else
  {
    v5 = v2[17];
    sub_26CC36E50(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
    v4 = sub_26CC24940;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_26CC35F8C()
{
  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x26D6AD060](0xD00000000000003ALL, 0x800000026CD4D870);
  v0[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
  sub_26CD3AD1C();
  v4 = v0[13];
  *(v3 + 32) = v0[12];
  *(v3 + 40) = v4;
  v5 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26CD3C1E0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v6 + 64) = sub_26CC2E6E8();
  *(v6 + 32) = v3;
  sub_26CD3A3DC(v5, &dword_26CC14000, v2, "%@", 2, 2, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_26CC361B4()
{
  if (qword_280BBB5E8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26CC36284;

  return TVBagService.bag.getter(v0 + 16);
}

uint64_t sub_26CC36284()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26CC3644C;
  }

  else
  {
    v2 = sub_26CC36398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC36398()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v1 = sub_26CD3A3AC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v4 = v0[1];

  return v4(v1, v3 & 1);
}

uint64_t sub_26CC36464()
{
  v22 = *MEMORY[0x277D85DE8];
  v0 = sub_26CC6EA9C();
  if (v1 >> 60 == 15)
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v2 = qword_280BBCBE0;
    v3 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_26CD3C1E0;
    *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v4 + 64) = sub_26CC2E6E8();
    *(v4 + 32) = &unk_287DFA600;
    sub_26CD3A3DC(v3, &dword_26CC14000, v2, "%@", 2, 2, v4);

    return 0;
  }

  v5 = v0;
  v6 = v1;
  v7 = objc_opt_self();
  v8 = sub_26CD3A09C();
  v20 = 0;
  v9 = [v7 JSONObjectWithData:v8 options:0 error:&v20];

  if (!v9)
  {
    v12 = v20;
    v13 = sub_26CD39F8C();

    swift_willThrow();
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v14 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_26CD3C1E0;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000049, 0x800000026CD4D600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v16 = v21;
    *(v15 + 32) = v20;
    *(v15 + 40) = v16;
    v17 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_26CD3C1E0;
    *(v18 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v18 + 64) = sub_26CC2E6E8();
    *(v18 + 32) = v15;
    sub_26CD3A3DC(v17, &dword_26CC14000, v14, "%@", 2, 2, v18);

    sub_26CC1D1B8(v5, v6);
    return 0;
  }

  v10 = v20;
  sub_26CD3AB3C();
  sub_26CC1D1B8(v5, v6);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

void sub_26CC36820(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_26CD3A4DC();
  v15 = 0;
  v3 = [v1 dataWithJSONObject:v2 options:0 error:&v15];

  v4 = v15;
  if (v3)
  {
    v5 = sub_26CD3A0BC();
    v7 = v6;

    sub_26CC6EE84(v5, v7);
    sub_26CC18C50(v5, v7);
  }

  else
  {
    v8 = v4;
    v9 = sub_26CD39F8C();

    swift_willThrow();
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v10 = qword_280BBCBE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_26CD3AC6C();
    MEMORY[0x26D6AD060](0xD000000000000049, 0x800000026CD4D600);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC10, &unk_26CD3D4C0);
    sub_26CD3AD1C();
    v12 = v16;
    *(v11 + 32) = v15;
    *(v11 + 40) = v12;
    v13 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_26CD3C1E0;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v14 + 64) = sub_26CC2E6E8();
    *(v14 + 32) = v11;
    sub_26CD3A3DC(v13, &dword_26CC14000, v10, "%@", 2, 2, v14);
  }
}

uint64_t sub_26CC36ABC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_26CC36B18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26CC36464();
  *a1 = result;
  return result;
}

uint64_t sub_26CC36B94@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_26CD3A59C();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_26CD3AB3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_26CD3A1EC();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_26CC1B544(v11, &qword_2804BBDA8, &qword_26CD3D5F0);
    v8 = sub_26CD3A1EC();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

void sub_26CC36D1C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26CD3A17C();
  v2 = sub_26CD3A59C();
  [v0 setObject:v1 forKey:v2];
}

void sub_26CC36DC4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_26CD3A59C();
  [v0 removeObjectForKey_];
}

double sub_26CC36E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_26CC36EB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_26CC36F24()
{
  result = qword_280BBB780;
  if (!qword_280BBB780)
  {
    sub_26CD3AA3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB780);
  }

  return result;
}

uint64_t sub_26CC36F7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC246B8;

  return sub_26CC3563C();
}

id sub_26CC37030()
{
  v0 = [objc_opt_self() ams_sharedAccountStore];
  v1 = [v0 ams_activeiTunesAccount];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 ams_DSID];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 integerValue];

  return v3;
}

void sub_26CC37114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_26CCEB1F8(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_26CD3AB6C();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + (v4 << 6));
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_26CCEB1F8((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_26CC2FADC(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_26CC2FADC(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_26CC3735C()
{
  v1 = v0[25];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26CC37478;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDB0, &qword_26CD3D608);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26CC37E20;
  v0[13] = &block_descriptor;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26CC37478()
{

  return MEMORY[0x2822009F8](sub_26CC37558, 0, 0);
}

uint64_t sub_26CC37558()
{
  v77 = v0;
  v1 = v0 + 18;
  v2 = v0[18];
  v75 = v0;
  v0[10] = sub_26CC37E84([v2 alertSetting]);
  v3 = v0 + 10;
  v4 = MEMORY[0x277D837D0];
  v0[13] = MEMORY[0x277D837D0];
  v5 = v4;
  v3[1] = v6;
  sub_26CC331CC(v3, v1);
  v7 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0x7465537472656C61, 0xEC000000676E6974, isUniquelyReferenced_nonNull_native);
  v9 = sub_26CC37E84([v2 badgeSetting]);
  v3[3] = v5;
  *v3 = v9;
  v3[1] = v10;
  sub_26CC331CC(v3, v1);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0x7465536567646162, 0xEC000000676E6974, v11);
  v12 = sub_26CC37E84([v2 carPlaySetting]);
  v3[3] = v5;
  *v3 = v12;
  v3[1] = v13;
  sub_26CC331CC(v3, v1);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0x5379616C50726163, 0xEE00676E69747465, v14);
  v15 = sub_26CC37E84([v2 criticalAlertSetting]);
  v3[3] = v5;
  *v3 = v15;
  v3[1] = v16;
  sub_26CC331CC(v3, v1);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000014, 0x800000026CD4D900, v17);
  v18 = sub_26CC37E84([v2 directMessagesSetting]);
  v3[3] = v5;
  *v3 = v18;
  v3[1] = v19;
  sub_26CC331CC(v3, v1);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000015, 0x800000026CD4D920, v20);
  v21 = sub_26CC37E84([v2 lockScreenSetting]);
  v3[3] = v5;
  *v3 = v21;
  v3[1] = v22;
  sub_26CC331CC(v3, v1);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000011, 0x800000026CD4D940, v23);
  v24 = sub_26CC37E84([v2 notificationCenterSetting]);
  v3[3] = v5;
  *v3 = v24;
  v3[1] = v25;
  sub_26CC331CC(v3, v1);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000019, 0x800000026CD4D960, v26);
  v27 = sub_26CC37E84([v2 scheduledDeliverySetting]);
  v3[3] = v5;
  *v3 = v27;
  v3[1] = v28;
  sub_26CC331CC(v3, v1);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000018, 0x800000026CD4D980, v29);
  v30 = sub_26CC37E84([v2 soundSetting]);
  v3[3] = v5;
  *v3 = v30;
  v3[1] = v31;
  sub_26CC331CC(v3, v1);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0x746553646E756F73, 0xEC000000676E6974, v32);
  v33 = sub_26CC37E84([v2 timeSensitiveSetting]);
  v3[3] = v5;
  *v3 = v33;
  v3[1] = v34;
  sub_26CC331CC(v3, v1);
  v35 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000014, 0x800000026CD4D9A0, v35);
  v36 = sub_26CC380A4([v2 alertStyle]);
  v3[3] = v5;
  *v3 = v36;
  v3[1] = v37;
  sub_26CC331CC(v3, v1);
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0x7974537472656C61, 0xEA0000000000656CLL, v38);
  v39 = sub_26CC382AC([v2 authorizationStatus]);
  v3[3] = v5;
  *v3 = v39;
  v3[1] = v40;
  sub_26CC331CC(v3, v1);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000013, 0x800000026CD4D9C0, v41);
  v42 = sub_26CC38524([v2 groupingSetting]);
  v3[3] = v5;
  *v3 = v42;
  v3[1] = v43;
  sub_26CC331CC(v3, v1);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v7;
  sub_26CD38DDC(v1, 0x676E6970756F7267, 0xEF676E6974746553, v44);
  v45 = [v2 providesAppNotificationSettings];
  v46 = 28526;
  if (v45)
  {
    v46 = 7562617;
  }

  v47 = 0xE200000000000000;
  if (v45)
  {
    v47 = 0xE300000000000000;
  }

  v3[3] = v5;
  *v3 = v46;
  v3[1] = v47;
  sub_26CC331CC(v3, v1);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD00000000000001FLL, 0x800000026CD4D9E0, v48);
  v74 = v2;
  v49 = sub_26CC38730([v2 showPreviewsSetting]);
  v3[3] = v5;
  *v3 = v49;
  v3[1] = v50;
  sub_26CC331CC(v3, v1);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0xD000000000000013, 0x800000026CD4DA00, v51);
  type metadata accessor for AppLibraryHandler();
  swift_allocObject();
  sub_26CC53DF8();
  swift_beginAccess();

  sub_26CC37114(v52);
  v54 = v53;

  *v3 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC38F34(&qword_2804BBDB8, MEMORY[0x277D83958]);
  v55 = sub_26CD3A55C();
  v57 = v56;

  sub_26CC37114(v58);
  v60 = v59;

  *v3 = v60;
  v61 = sub_26CD3A55C();
  v63 = v62;

  v64 = MEMORY[0x277D837D0];
  v3[3] = MEMORY[0x277D837D0];
  *v3 = v55;
  v3[1] = v57;
  sub_26CC331CC(v3, v1);
  v65 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0x7364696269, 0xE500000000000000, v65);
  v3[3] = v64;
  *v3 = v61;
  v3[1] = v63;
  sub_26CC331CC(v3, v1);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  sub_26CD38DDC(v1, 0x7364696273, 0xE500000000000000, v66);
  v3[11] = v64;
  *v1 = 0x6C7070612E6D6F63;
  v3[9] = 0xEC00000076742E65;
  sub_26CC331CC(v1, v3);
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v76 = v7;
  sub_26CD38DDC(v3, 7368801, 0xE300000000000000, v67);
  v68 = v7;
  v69 = sub_26CC3894C();
  if (v69)
  {
    v70 = v69;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v68;
    sub_26CC38C24(v70, sub_26CD112C0, 0, v71, &v76);

    v68 = v76;
  }

  else
  {
  }

  v72 = v75[1];

  return v72(v68);
}

uint64_t sub_26CC37E20(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_26CC37E84(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6F70707553746F6ELL;
    case 2:
      return 0x64656C62616E65;
    case 1:
      return 0x64656C6261736964;
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000035, 0x800000026CD4DBD0);
  type metadata accessor for UNNotificationSetting(0);
  sub_26CD3AD1C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC38F34(&qword_280BBB7C0, MEMORY[0x277CC9C50]);
  *(v5 + 32) = v3;
  sub_26CD3A3DC(v4, &dword_26CC14000, v2, "%@", 2, 2, v5);

  return 0;
}

uint64_t sub_26CC380A4(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1701736302;
    case 2:
      return 0x7472656C61;
    case 1:
      return 0x72656E6E6162;
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD00000000000002ALL, 0x800000026CD4DBA0);
  type metadata accessor for UNAlertStyle(0);
  sub_26CD3AD1C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC38F34(&qword_280BBB7C0, MEMORY[0x277CC9C50]);
  *(v5 + 32) = v3;
  sub_26CD3A3DC(v4, &dword_26CC14000, v2, "%@", 2, 2, v5);

  return 0;
}

uint64_t sub_26CC382AC(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7265746544746F6ELL;
    }

    if (a1 == 1)
    {
      return 0x6465696E6564;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x7A69726F68747561;
      case 3:
        return 0x6F697369766F7270;
      case 4:
        return 0x6172656D65687065;
    }
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD00000000000003CLL, 0x800000026CD4DB60);
  type metadata accessor for UNAuthorizationStatus(0);
  sub_26CD3AD1C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC38F34(&qword_280BBB7C0, MEMORY[0x277CC9C50]);
  *(v5 + 32) = v3;
  sub_26CD3A3DC(v4, &dword_26CC14000, v2, "%@", 2, 2, v5);

  return 0;
}

uint64_t sub_26CC38524(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x746C7561666564;
    case 1:
      return 0x656372756F73;
    case 2:
      return 6710895;
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD000000000000040, 0x800000026CD4DB10);
  type metadata accessor for UNNotificationGroupingSetting(0);
  sub_26CD3AD1C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC38F34(&qword_280BBB7C0, MEMORY[0x277CC9C50]);
  *(v5 + 32) = v3;
  sub_26CD3A3DC(v4, &dword_26CC14000, v2, "%@", 2, 2, v5);

  return 0;
}

uint64_t sub_26CC38730(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x737961776C61;
    case 1:
      return 0xD000000000000011;
    case 2:
      return 0x726576656ELL;
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v2 = qword_280BBCBE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26CD3C1E0;
  sub_26CD3AC6C();
  MEMORY[0x26D6AD060](0xD00000000000003DLL, 0x800000026CD4DAB0);
  type metadata accessor for UNShowPreviewsSetting(0);
  sub_26CD3AD1C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC38F34(&qword_280BBB7C0, MEMORY[0x277CC9C50]);
  *(v5 + 32) = v3;
  sub_26CD3A3DC(v4, &dword_26CC14000, v2, "%@", 2, 2, v5);

  return 0;
}

uint64_t sub_26CC3894C()
{
  v0 = [objc_opt_self() app];
  v1 = sub_26CD3A59C();
  v2 = [v0 dictionaryForKey_];

  if (v2 && (v3 = sub_26CD3A4FC(), v2, sub_26CCF54DC(v3), v5 = v4, , v5))
  {
    if (*(v5 + 16) && (v6 = sub_26CC181C4(0x427363697274656DLL, 0xEB00000000657361), (v7 & 1) != 0))
    {
      sub_26CC168C0(*(v5 + 56) + 32 * v6, v15);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC30, &qword_26CD46430);
      if (swift_dynamicCast())
      {
        return v14;
      }
    }

    else
    {
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = qword_280BBCBE0;
    v10 = 0x800000026CD4DA60;
    v11 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_26CC19E10();
    v13 = 0xD000000000000047;
  }

  else
  {
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = qword_280BBCBE0;
    v10 = 0x800000026CD4DA20;
    v11 = sub_26CD3A99C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_26CD3C1E0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_26CC19E10();
    v13 = 0xD00000000000003DLL;
  }

  *(v12 + 32) = v13;
  *(v12 + 40) = v10;
  sub_26CD3A3DC(v11, &dword_26CC14000, v9, "%@", 2, 2, v12);

  return 0;
}

unint64_t sub_26CC38C24(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_26CD1130C(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_26CC331CC(v44, v42);
  v14 = *a5;
  result = sub_26CC181C4(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_26CD34624(v20, a4 & 1);
    result = sub_26CC181C4(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_26CD3B02C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_26CD36B88();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_26CC331CC(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_26CC331CC(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_26CD1130C(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_26CC331CC(v44, v42);
        v32 = *a5;
        result = sub_26CC181C4(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_26CD34624(v36, 1);
          result = sub_26CC181C4(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_26CC331CC(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_26CC331CC(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_26CD1130C(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_26CC33234(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_26CC38F34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SportsFavoriteService.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_280BBB2D0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_280BBB2E0;
  *a1 = off_280BBB2D8;
  a1[1] = v1;
}

uint64_t SportsFavoriteService.userConsent()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = _s5CacheC5ValueOMa(0);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;

  return MEMORY[0x2822009F8](sub_26CC390C8, 0, 0);
}

uint64_t sub_26CC390C8()
{
  v1 = swift_allocObject();
  v0[20] = v1;
  *(v1 + 16) = 0;
  v0[2] = sub_26CC3BD28;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v1;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_26CC391D0;
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[17];

  return sub_26CC7C314(v5, (v0 + 2), v3, v4);
}

uint64_t sub_26CC391D0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_26CC39460;
  }

  else
  {

    v2 = sub_26CC392EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC392EC()
{
  sub_26CC3C200(v0[17], v0[16], _s5CacheC5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[16];
  v2 = v0[17];
  if (EnumCaseMultiPayload == 1)
  {
    sub_26CC3BD30();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    sub_26CC3C1A0(v2, _s5CacheC5ValueOMa);
    sub_26CC3C1A0(v3, _s5CacheC5ValueOMa);
  }

  else
  {
    v6 = v0[14];
    sub_26CC3C1A0(v0[17], _s5CacheC5ValueOMa);
    sub_26CC18378(v3, v6, type metadata accessor for SportsFavoriteService.UserConsent.State);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CC39460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SportsFavoriteService.userConsent(_:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = _s5CacheC5ValueOMa(0);
  *(v3 + 128) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 136) = v5;
  *(v3 + 144) = v6;
  *(v3 + 152) = *v2;

  return MEMORY[0x2822009F8](sub_26CC3958C, 0, 0);
}

uint64_t sub_26CC3958C()
{
  v1 = v0[18];
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = v1;
  v0[2] = sub_26CC3C45C;
  v0[4] = 0;
  v0[5] = 0;
  v0[3] = v2;
  v0[6] = sub_26CC691BC;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD423D8;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_26CC39698;
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[17];

  return sub_26CC7C314(v6, (v0 + 2), v4, v5);
}

uint64_t sub_26CC39698()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_26CC397B4;
  }

  else
  {

    v2 = sub_26CC3C454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC397B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SportsFavoriteService.modifyUserConsent(_:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = _s5CacheC5ValueOMa(0);
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 192) = *a2;
  *(v3 + 144) = *v2;

  return MEMORY[0x2822009F8](sub_26CC398E4, 0, 0);
}

uint64_t sub_26CC398E4()
{
  v1 = *(v0 + 192);
  v2 = swift_allocObject();
  *(v0 + 160) = v2;
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v0 + 168) = v3;
  *(v3 + 16) = v1;
  *(v0 + 16) = sub_26CC692D8;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0;
  *(v0 + 48) = sub_26CC3BD84;
  *(v0 + 56) = v2;
  *(v0 + 64) = &unk_26CD3D628;
  *(v0 + 72) = v3;
  *(v0 + 80) = &unk_26CD424A8;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_26CC39A20;
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = *(v0 + 136);

  return sub_26CC7C314(v7, v0 + 16, v5, v6);
}

uint64_t sub_26CC39A20()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_26CC39B44;
  }

  else
  {

    v2 = sub_26CC3C454;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC39B44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SportsFavoriteService.get(_:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = _s5CacheC5ValueOMa(0);
  *(v3 + 128) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 136) = v5;
  *(v3 + 144) = v6;
  *(v3 + 152) = *v2;

  return MEMORY[0x2822009F8](sub_26CC39C78, 0, 0);
}

uint64_t sub_26CC39C78()
{
  v1 = v0[18];
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = v1;
  v0[2] = sub_26CC3BE20;
  v0[3] = v2;
  v0[4] = &unk_26CD424A0;
  v0[5] = 0;
  v0[6] = sub_26CC6D7D4;
  v0[7] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = &unk_26CD42498;
  v0[11] = 0;
  v0[12] = &unk_26CD42490;
  v0[13] = 0;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_26CC39DA4;
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[17];

  return sub_26CC7C314(v6, (v0 + 2), v4, v5);
}

uint64_t sub_26CC39DA4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_26CC3C458;
  }

  else
  {

    v2 = sub_26CC39EC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC39EC0()
{
  sub_26CC3C200(v0[17], v0[16], _s5CacheC5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[16];
  v2 = v0[17];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[14];
    sub_26CC3C1A0(v0[17], _s5CacheC5ValueOMa);
    sub_26CC18378(v3, v4, type metadata accessor for SportsFavoriteService.Favorites.State);
  }

  else
  {
    sub_26CC3BD30();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    sub_26CC3C1A0(v2, _s5CacheC5ValueOMa);
    sub_26CC3C1A0(v3, _s5CacheC5ValueOMa);
  }

  v5 = v0[1];

  return v5();
}

uint64_t SportsFavoriteService.add(_:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 112) = a1;
  *(v4 + 136) = _s5CacheC5ValueOMa(0);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = *v3;

  return MEMORY[0x2822009F8](sub_26CC3A0E0, 0, 0);
}

uint64_t sub_26CC3A0E0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  v0[23] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[2] = sub_26CC6E688;
  v0[3] = 0;
  v0[4] = &unk_26CD42488;
  v0[5] = 0;
  v0[6] = sub_26CC3BE28;
  v0[7] = v3;
  v0[8] = &unk_26CD3D640;
  v0[9] = v4;
  v0[10] = &unk_26CD42498;
  v0[11] = 0;
  v0[12] = &unk_26CD42490;
  v0[13] = 0;
  swift_bridgeObjectRetain_n();

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_26CC3A25C;
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  return sub_26CC7C314(v8, (v0 + 2), v6, v7);
}

uint64_t sub_26CC3A25C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26CC3A4F4;
  }

  else
  {

    v2 = sub_26CC3A380;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC3A380()
{
  sub_26CC3C200(v0[19], v0[18], _s5CacheC5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[18];
  v2 = v0[19];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[14];
    sub_26CC3C1A0(v0[19], _s5CacheC5ValueOMa);
    sub_26CC18378(v3, v4, type metadata accessor for SportsFavoriteService.Favorites.State);
  }

  else
  {
    sub_26CC3BD30();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    sub_26CC3C1A0(v2, _s5CacheC5ValueOMa);
    sub_26CC3C1A0(v3, _s5CacheC5ValueOMa);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CC3A4F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SportsFavoriteService.add(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = _s5CacheC5ValueOMa(0);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = *v2;

  return MEMORY[0x2822009F8](sub_26CC3A618, 0, 0);
}

uint64_t sub_26CC3A618()
{
  v1 = v0[15];
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v0[2] = sub_26CC6E688;
  v0[3] = 0;
  v0[4] = &unk_26CD42488;
  v0[5] = 0;
  v0[6] = sub_26CC3C44C;
  v0[7] = v2;
  v0[8] = &unk_26CD3D650;
  v0[9] = v3;
  v0[10] = &unk_26CD42498;
  v0[11] = 0;
  v0[12] = &unk_26CD42490;
  v0[13] = 0;
  swift_bridgeObjectRetain_n();
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_26CC3A78C;
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  return sub_26CC7C314(v7, (v0 + 2), v5, v6);
}

uint64_t sub_26CC3A78C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_26CC3AA24;
  }

  else
  {

    v2 = sub_26CC3A8B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC3A8B0()
{
  sub_26CC3C200(v0[18], v0[17], _s5CacheC5ValueOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[17];
  v2 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[14];
    sub_26CC3C1A0(v0[18], _s5CacheC5ValueOMa);
    sub_26CC18378(v3, v4, type metadata accessor for SportsFavoriteService.Favorites.State);
  }

  else
  {
    sub_26CC3BD30();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    sub_26CC3C1A0(v2, _s5CacheC5ValueOMa);
    sub_26CC3C1A0(v3, _s5CacheC5ValueOMa);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_26CC3AA24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SportsFavoriteService.remove(_:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 112) = a1;
  *(v4 + 136) = _s5CacheC5ValueOMa(0);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = *v3;

  return MEMORY[0x2822009F8](sub_26CC3AB4C, 0, 0);
}

uint64_t sub_26CC3AB4C()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  v0[23] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[2] = sub_26CC6E688;
  v0[3] = 0;
  v0[4] = &unk_26CD42438;
  v0[5] = 0;
  v0[6] = sub_26CC3BF60;
  v0[7] = v3;
  v0[8] = &unk_26CD3D660;
  v0[9] = v4;
  v0[10] = &unk_26CD42498;
  v0[11] = 0;
  v0[12] = &unk_26CD42490;
  v0[13] = 0;
  swift_bridgeObjectRetain_n();

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_26CC3ACC8;
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  return sub_26CC7C314(v8, (v0 + 2), v6, v7);
}

uint64_t sub_26CC3ACC8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_26CC3C43C;
  }

  else
  {

    v2 = sub_26CC3C444;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t SportsFavoriteService.remove(_:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = _s5CacheC5ValueOMa(0);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = *v2;

  return MEMORY[0x2822009F8](sub_26CC3AE94, 0, 0);
}

uint64_t sub_26CC3AE94()
{
  v1 = v0[15];
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 0;
  v0[2] = sub_26CC6E688;
  v0[3] = 0;
  v0[4] = &unk_26CD42438;
  v0[5] = 0;
  v0[6] = sub_26CC3C450;
  v0[7] = v2;
  v0[8] = &unk_26CD3D670;
  v0[9] = v3;
  v0[10] = &unk_26CD42498;
  v0[11] = 0;
  v0[12] = &unk_26CD42490;
  v0[13] = 0;
  swift_bridgeObjectRetain_n();
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_26CC3B008;
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[18];

  return sub_26CC7C314(v7, (v0 + 2), v5, v6);
}

uint64_t sub_26CC3B008()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_26CC3C440;
  }

  else
  {

    v2 = sub_26CC3C448;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t SportsFavoriteService.order(_:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 120) = a2;
  *(v4 + 128) = a3;
  *(v4 + 112) = a1;
  *(v4 + 136) = _s5CacheC5ValueOMa(0);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = *v3;

  return MEMORY[0x2822009F8](sub_26CC3B1D8, 0, 0);
}

uint64_t sub_26CC3B1D8()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = swift_allocObject();
  v0[22] = v3;
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  v0[23] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v0[2] = sub_26CC6E688;
  v0[3] = 0;
  v0[4] = &unk_26CD423D0;
  v0[5] = 0;
  v0[6] = sub_26CC3C000;
  v0[7] = v3;
  v0[8] = &unk_26CD3D680;
  v0[9] = v4;
  v0[10] = &unk_26CD42498;
  v0[11] = 0;
  v0[12] = &unk_26CD42490;
  v0[13] = 0;
  swift_bridgeObjectRetain_n();

  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_26CC3ACC8;
  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];

  return sub_26CC7C314(v8, (v0 + 2), v6, v7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SportsFavoriteService.resetCache()()
{
  if (qword_280BBB2D0 != -1)
  {
    swift_once();
  }

  sub_26CCA27A0();
  if (!v0)
  {
    sub_26CCA27A0();
  }
}

uint64_t SportsFavoriteService.syncReadUserConsent()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = _s5CacheC5ModelVMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_26CD3A07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s5CacheC5ValueOMa(0);
  v12 = MEMORY[0x28223BE20](v11);
  v32 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  if (qword_280BBB2D0 != -1)
  {
    swift_once();
  }

  sub_26CC9EF14(*(off_280BBB2D8 + 6), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26CC3C0E0(v6);
    sub_26CC3BD30();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v30 = v11;
    (*(v8 + 32))(v10, v6, v7);
    v18 = v33;
    v19 = sub_26CD3A08C();
    if (v18)
    {
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      v21 = v19;
      v28 = v15;
      v22 = v20;
      sub_26CD39D5C();
      swift_allocObject();
      sub_26CD39D4C();
      sub_26CC3C148();
      v29 = v3;
      v33 = v22;
      sub_26CD39D3C();

      sub_26CC18C50(v21, v33);
      (*(v8 + 8))(v10, v7);
      v24 = v28;
      v23 = v29;
      sub_26CC3C200(v29, v28, type metadata accessor for SportsFavoriteService.UserConsent.State);
      sub_26CC3C1A0(v23, _s5CacheC5ModelVMa);
      swift_storeEnumTagMultiPayload();
      v25 = v32;
      sub_26CC3C200(v24, v32, _s5CacheC5ValueOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26CC3BD30();
        swift_allocError();
        *v26 = 1;
        swift_willThrow();
        sub_26CC3C1A0(v24, _s5CacheC5ValueOMa);
        return sub_26CC3C1A0(v25, _s5CacheC5ValueOMa);
      }

      else
      {
        sub_26CC3C1A0(v24, _s5CacheC5ValueOMa);
        return sub_26CC18378(v25, v31, type metadata accessor for SportsFavoriteService.UserConsent.State);
      }
    }
  }
}

uint64_t SportsFavoriteService.syncReadFavorites()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = _s5CacheC5ModelVMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = sub_26CD3A07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s5CacheC5ValueOMa(0);
  v12 = MEMORY[0x28223BE20](v11);
  v32 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  if (qword_280BBB2D0 != -1)
  {
    swift_once();
  }

  sub_26CC9EF14(*(off_280BBB2D8 + 6), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26CC3C0E0(v6);
    sub_26CC3BD30();
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }

  else
  {
    v30 = v11;
    (*(v8 + 32))(v10, v6, v7);
    v18 = v33;
    v19 = sub_26CD3A08C();
    if (v18)
    {
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      v21 = v19;
      v28 = v15;
      v22 = v20;
      sub_26CD39D5C();
      swift_allocObject();
      sub_26CD39D4C();
      sub_26CC3C148();
      v29 = v3;
      v33 = v22;
      sub_26CD39D3C();

      sub_26CC18C50(v21, v33);
      (*(v8 + 8))(v10, v7);
      v24 = v28;
      v23 = v29;
      sub_26CC3C200(&v29[*(v1 + 20)], v28, type metadata accessor for SportsFavoriteService.Favorites.State);
      sub_26CC3C1A0(v23, _s5CacheC5ModelVMa);
      swift_storeEnumTagMultiPayload();
      v25 = v32;
      sub_26CC3C200(v24, v32, _s5CacheC5ValueOMa);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26CC3C1A0(v24, _s5CacheC5ValueOMa);
        return sub_26CC18378(v25, v31, type metadata accessor for SportsFavoriteService.Favorites.State);
      }

      else
      {
        sub_26CC3BD30();
        swift_allocError();
        *v26 = 1;
        swift_willThrow();
        sub_26CC3C1A0(v24, _s5CacheC5ValueOMa);
        return sub_26CC3C1A0(v25, _s5CacheC5ValueOMa);
      }
    }
  }
}

unint64_t sub_26CC3BD30()
{
  result = qword_2804BBDC0;
  if (!qword_2804BBDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDC0);
  }

  return result;
}

uint64_t sub_26CC3BD8C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return sub_26CC6936C(v2);
}

uint64_t sub_26CC3BE30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC37110;

  return sub_26CC6A124(v2, v3);
}

uint64_t sub_26CC3BEC8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC246B8;

  return sub_26CC6A124(v2, v3);
}

uint64_t sub_26CC3BF68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26CC37110;

  return sub_26CC6BAD8(v2, v3);
}

uint64_t objectdestroy_27Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26CC3C048()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26CC37110;

  return sub_26CC6CE1C(v2);
}

uint64_t sub_26CC3C0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26CC3C148()
{
  result = qword_280BBB440;
  if (!qword_280BBB440)
  {
    _s5CacheC5ModelVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BBB440);
  }

  return result;
}

uint64_t sub_26CC3C1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26CC3C200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26CC3C26C()
{
  result = qword_2804BBDC8;
  if (!qword_2804BBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDC8);
  }

  return result;
}

unint64_t sub_26CC3C2C4()
{
  result = qword_2804BBDD0;
  if (!qword_2804BBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDD0);
  }

  return result;
}

unint64_t sub_26CC3C31C()
{
  result = qword_2804BBDD8;
  if (!qword_2804BBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDD8);
  }

  return result;
}

unint64_t sub_26CC3C374()
{
  result = qword_2804BBDE0;
  if (!qword_2804BBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SportsFavoriteService.Option(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SportsFavoriteService.Option(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

TVAppServices::UpNextRequest __swiftcall UpNextRequest.init(paginationToken:playerContentId:)(Swift::String_optional paginationToken, Swift::String_optional playerContentId)
{
  *v2 = playerContentId;
  v2[1] = paginationToken;
  result.paginationToken = playerContentId;
  result.playerContentId = paginationToken;
  return result;
}

uint64_t UpNextRequest.response()(uint64_t a1)
{
  *(v2 + 160) = a1;
  v3 = v1[1];
  *(v2 + 168) = *v1;
  *(v2 + 184) = v3;
  return MEMORY[0x2822009F8](sub_26CC3C498, 0, 0);
}

uint64_t sub_26CC3C498()
{
  v1 = *(v0 + 176);
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 168);
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = qword_280BBB6B8;

    v5 = v1;
    if (v4 != -1)
    {
      swift_once();
      v2 = *(v0 + 168);
      v5 = *(v0 + 176);
    }

    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v8 = qword_280BBCC98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA10, &qword_26CD3C670);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26CD3C1E0;
    sub_26CD3AC6C();

    MEMORY[0x26D6AD060](v2, v1);
    *(v9 + 32) = 0xD00000000000001FLL;
    *(v9 + 40) = 0x800000026CD4DC80;
    v10 = sub_26CD3A97C();
    sub_26CC57EC8(v10, v9, 0xD000000000000066, 0x800000026CD4DC10, v8);

    *(v0 + 128) = v2;
    *(v0 + 136) = v5;
    *(v0 + 144) = v7;
    *(v0 + 152) = v6;
    *(v0 + 56) = v2;
    v11 = v0 + 56;
    *(v0 + 64) = v5;
    *(v0 + 72) = v7;
    *(v0 + 80) = v6;
    *(v0 + 88) = 1;

    v12 = swift_task_alloc();
    *(v0 + 200) = v12;
    *v12 = v0;
    v13 = sub_26CC3C794;
  }

  else
  {
LABEL_8:
    if (qword_280BBB6B8 != -1)
    {
      swift_once();
      v1 = *(v0 + 176);
    }

    v15 = *(v0 + 184);
    v14 = *(v0 + 192);
    v16 = *(v0 + 168);
    v17 = qword_280BBCC98;
    v18 = sub_26CD3A97C();
    sub_26CC57EC8(v18, &unk_287DFA7D8, 0xD000000000000066, 0x800000026CD4DC10, v17);
    *(v0 + 96) = v16;
    *(v0 + 104) = v1;
    *(v0 + 112) = v15;
    *(v0 + 120) = v14;
    *(v0 + 16) = v15;
    v11 = v0 + 16;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 24) = v14;
    *(v0 + 48) = 0;

    v12 = swift_task_alloc();
    *(v0 + 224) = v12;
    *v12 = v0;
    v13 = sub_26CC3C994;
  }

  v12[1] = v13;

  return sub_26CD24384(v11);
}

uint64_t sub_26CC3C794(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  sub_26CC3CBC4(*(v3 + 56), *(v3 + 64), *(v3 + 72), *(v3 + 80), *(v3 + 88));
  if (v1)
  {
    v4 = sub_26CC3CB94;
  }

  else
  {
    v4 = sub_26CC3C8C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC3C8C8()
{
  v1 = *(v0 + 160);
  v2 = [*(v0 + 208) data];
  v3 = sub_26CD3A0BC();
  v5 = v4;

  sub_26CC2AA10(v1);
  v6 = *(v0 + 208);
  sub_26CC18C50(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26CC3C994(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  sub_26CC3CBC4(*(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48));
  if (v1)
  {
    v4 = sub_26CC3CBAC;
  }

  else
  {
    v4 = sub_26CC3CAC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26CC3CAC8()
{
  v1 = *(v0 + 160);
  v2 = [*(v0 + 232) data];
  v3 = sub_26CD3A0BC();
  v5 = v4;

  sub_26CC2AA10(v1);
  v6 = *(v0 + 232);
  sub_26CC18C50(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

double sub_26CC3CBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_26CC3CC14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_26CC3CC70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t TVSubscriptionsStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_26CD3B0FC();
  MEMORY[0x26D6ADAF0](v1);
  return sub_26CD3B13C();
}

uint64_t sub_26CC3CD5C()
{
  sub_26CC3CF5C(v19);
  v0 = __swift_mutable_project_boxed_opaque_existential_1(v19, v19[3]);
  MEMORY[0x28223BE20](v0);
  v2 = (v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  (*(v3 + 16))(v2);
  v4 = *v2;
  v5 = type metadata accessor for TVSubscriptionsManager();
  v18[3] = v5;
  v18[4] = &off_287DFD428;
  v18[0] = v4;
  type metadata accessor for TVSubscriptionsStore();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v18, v5);
  MEMORY[0x28223BE20](v7);
  v9 = (v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  (*(v10 + 16))(v9);
  v11 = *v9;
  v16 = v5;
  v17 = &off_287DFD428;
  *&v15 = v11;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  *(v6 + 16) = 0u;
  sub_26CC2524C(&v15, v14);
  swift_beginAccess();
  sub_26CC3DB94(v14, v6 + 16);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v18);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  qword_2804BBDE8 = v6;
  return result;
}

uint64_t sub_26CC3CF5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-1] - v3;
  v31 = &type metadata for TVSubscriptionsNetworkManagerClient;
  v32 = &off_282024120;
  v5 = type metadata accessor for TVSubscriptionsFetcher();
  v6 = swift_allocObject();
  v6[11] = MEMORY[0x277D84F98];
  v6[2] = &type metadata for TVAppAccountStoreClient;
  v6[3] = &off_287DFD4F8;
  sub_26CC2524C(&v30, (v6 + 4));
  v6[9] = &type metadata for TVBagSubscriptionsEndpointService;
  v6[10] = &off_287E036F8;
  v31 = &type metadata for UserDefaultsLastSyncInfoStorageClient;
  v32 = &off_2820230C0;
  v7 = type metadata accessor for CacheStorageTVSubscriptionsStorageClient();
  v8 = swift_allocObject();
  type metadata accessor for CacheStorage(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtC13TVAppServices12CacheStorage____lazy_storage___cacheUrl;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA30, &qword_26CD3DA70);
  v12 = 1;
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  *(v9 + 16) = 0xD000000000000016;
  *(v9 + 24) = 0x800000026CD4DD00;
  *(v8 + 16) = v9;
  v29[3] = v7;
  v29[4] = &off_282023098;
  v29[0] = v8;
  v28[3] = v5;
  v28[4] = &off_282024108;
  v28[0] = v6;
  v13 = type metadata accessor for TVSubscriptionsManager();
  v14 = swift_allocObject();
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v28, v5);
  MEMORY[0x28223BE20](v15);
  v17 = (&v27[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17);
  v19 = *v17;
  v27[3] = v5;
  v27[4] = &off_282024108;
  v27[0] = v19;
  swift_defaultActor_initialize();
  *(v14 + 112) = 1;
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 152) = 0u;
  *(v14 + 168) = 1;
  *(v14 + 328) = MEMORY[0x277D84FA0];
  *(v14 + 296) = &type metadata for TVAppAccountStoreClient;
  *(v14 + 304) = &off_287DFD4F8;
  sub_26CC19A84(v27, v14 + 176);
  sub_26CC19A84(&v30, v14 + 256);
  *(v14 + 312) = &type metadata for TVBagSubscriptionsMetadataClient;
  *(v14 + 320) = &off_287DFD4E8;
  sub_26CC19A84(v29, v14 + 216);
  v20 = [objc_opt_self() ams_sharedAccountStore];
  v21 = [v20 ams_activeiTunesAccount];

  if (v21)
  {
    v22 = [v21 ams_DSID];

    if (v22)
    {
      v21 = [v22 integerValue];

      v12 = 0;
    }

    else
    {
      v21 = 0;
      v12 = 1;
    }
  }

  *(v14 + 160) = v21;
  *(v14 + 168) = v12;
  v23 = sub_26CD3A86C();
  (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v14;

  sub_26CCD5E38(0, 0, v4, &unk_26CD3DA78, v24);

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(&v30);
  __swift_destroy_boxed_opaque_existential_1(v27);
  result = __swift_destroy_boxed_opaque_existential_1(v28);
  a1[3] = v13;
  a1[4] = &off_287DFD428;
  *a1 = v14;
  return result;
}

uint64_t static TVSubscriptionsStore.shared.getter()
{
  if (qword_2804BB9E8 != -1)
  {
    swift_once();
  }
}

uint64_t TVSubscriptionsStore.fetch(ignoreCache:)(uint64_t a1, char a2)
{
  *(v3 + 152) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v2;
  return MEMORY[0x2822009F8](sub_26CC3D454, 0, 0);
}

uint64_t sub_26CC3D454()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  sub_26CC3D850(v1 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    sub_26CC2524C((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_26CC3D674;
    v3 = *(v0 + 152);
    v4 = *(v0 + 120);

    return sub_26CC33E3C(v4, v3);
  }

  else
  {
    sub_26CC3D8C0(v0 + 56);
    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v6 = qword_280BBCBE0;
    v7 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_26CD3C1E0;
    *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v8 + 64) = sub_26CC2E6E8();
    *(v8 + 32) = &unk_287DFA808;
    sub_26CD3A3DC(v7, &dword_26CC14000, v6, "%@", 2, 2, v8);

    sub_26CC3D980();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_26CC3D674()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_26CC3D7EC;
  }

  else
  {
    v2 = sub_26CC3D788;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26CC3D788()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC3D7EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26CC3D850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDF0, &qword_26CD3D8F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC3D8C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDF0, &qword_26CD3D8F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TVSubscriptionsStore.__deallocating_deinit()
{
  sub_26CC3D8C0(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_26CC3D980()
{
  result = qword_2804BBDF8;
  if (!qword_2804BBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBDF8);
  }

  return result;
}

unint64_t sub_26CC3D9D8()
{
  result = qword_2804BBE00;
  if (!qword_2804BBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBE00);
  }

  return result;
}

uint64_t sub_26CC3DA3C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26CC3DA98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_26CC3DB94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBDF0, &qword_26CD3D8F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26CC3DC04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26CC246B8;

  return sub_26CC33B68();
}

uint64_t ChannelMetadata.appName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appName);

  return v1;
}

uint64_t ChannelMetadata.appStoreUrl.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appStoreUrl);

  return v1;
}

uint64_t ChannelMetadata.id.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_id);

  return v1;
}

uint64_t ChannelMetadata.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_name);

  return v1;
}

uint64_t ChannelMetadata.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_title);

  return v1;
}

uint64_t ChannelMetadata.url.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_url);

  return v1;
}

id ChannelMetadata.init(from:)(uint64_t a1)
{
  v3 = sub_26CC3E148(1, a1);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appAdamIds] = v5;
  v6 = sub_26CC3E148(3, a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v4;
  }

  *&v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appBundleIds] = v7;
  v8 = sub_26CCC7724(7, a1);
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v12 = &v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appName];
  *v12 = v10;
  v12[1] = v11;
  v13 = sub_26CCC7724(8, a1);
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  v17 = &v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appStoreUrl];
  *v17 = v15;
  v17[1] = v16;
  v18 = sub_26CCC7724(27, a1);
  if (v19)
  {
    v20 = v18;
  }

  else
  {
    v20 = 0;
  }

  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v22 = &v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_id];
  *v22 = v20;
  v22[1] = v21;
  v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isConsented] = sub_26CCC79F8(32, a1) & 1;
  v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isFirstParty] = sub_26CCC79F8(38, a1) & 1;
  v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isInstalled] = sub_26CCC79F8(36, a1) & 1;
  v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isItunes] = sub_26CCC79F8(37, a1) & 1;
  v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isSubscribed] = sub_26CCC79F8(40, a1) & 1;
  v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isWatchlistEnabled] = sub_26CCC79F8(42, a1) & 1;
  v23 = sub_26CCC7724(49, a1);
  if (v24)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0;
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0xE000000000000000;
  }

  v27 = &v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_name];
  *v27 = v25;
  v27[1] = v26;
  v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_shouldTrackPlayActivity] = sub_26CCC79F8(77, a1) & 1;
  v28 = sub_26CCC7724(88, a1);
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  v32 = &v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_title];
  *v32 = v30;
  v32[1] = v31;
  v33 = sub_26CCC7724(91, a1);
  v35 = v34;

  if (v35)
  {
    v36 = v33;
  }

  else
  {
    v36 = 0;
  }

  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v38 = &v1[OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_url];
  *v38 = v36;
  v38[1] = v37;
  v40.receiver = v1;
  v40.super_class = type metadata accessor for ChannelMetadata();
  return objc_msgSendSuper2(&v40, sel_init);
}

uint64_t sub_26CC3E148(uint64_t a1, uint64_t a2)
{
  v3 = sub_26CCC88BC(a1);
  if (!*(a2 + 16))
  {

    return 0;
  }

  v5 = sub_26CC181C4(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_26CC168C0(*(a2 + 56) + 32 * v5, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

id ChannelMetadata.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_26CC3E2B8(char a1)
{
  result = 0x496D616441707061;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0x656D614E707061;
      break;
    case 3:
      result = 0x65726F7453707061;
      break;
    case 4:
      result = 25705;
      break;
    case 5:
      result = 0x6E65736E6F437369;
      break;
    case 6:
      result = 0x5074737269467369;
      break;
    case 7:
      result = 0x6C6174736E497369;
      break;
    case 8:
      result = 0x73656E7574497369;
      break;
    case 9:
      result = 0x7263736275537369;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 1701667182;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x656C746974;
      break;
    case 14:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26CC3E474@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC3F604(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC3E4A8(uint64_t a1)
{
  v2 = sub_26CC3EA54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC3E4E4(uint64_t a1)
{
  v2 = sub_26CC3EA54();

  return MEMORY[0x2821FE720](a1, v2);
}

id ChannelMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChannelMetadata();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26CC3E618(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBE80, &qword_26CD3DA80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC3EA54();
  sub_26CD3B16C();
  v11 = *(v3 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appAdamIds);
  HIBYTE(v10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  sub_26CC3F22C(&qword_280BB9BE0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_26CD3AF6C();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appBundleIds);
    HIBYTE(v10) = 1;
    sub_26CD3AF6C();
    LOBYTE(v11) = 2;
    sub_26CD3AF2C();
    LOBYTE(v11) = 3;
    sub_26CD3AF2C();
    LOBYTE(v11) = 4;
    sub_26CD3AF2C();
    LOBYTE(v11) = 5;
    sub_26CD3AF3C();
    LOBYTE(v11) = 6;
    sub_26CD3AF3C();
    LOBYTE(v11) = 7;
    sub_26CD3AF3C();
    LOBYTE(v11) = 8;
    sub_26CD3AF3C();
    LOBYTE(v11) = 9;
    sub_26CD3AF3C();
    LOBYTE(v11) = 10;
    sub_26CD3AF3C();
    LOBYTE(v11) = 11;
    sub_26CD3AF2C();
    LOBYTE(v11) = 12;
    sub_26CD3AF3C();
    LOBYTE(v11) = 13;
    sub_26CD3AF2C();
    LOBYTE(v11) = 14;
    sub_26CD3AF2C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26CC3EA54()
{
  result = qword_2804BBE88;
  if (!qword_2804BBE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBE88);
  }

  return result;
}

void *ChannelMetadata.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBE90, &qword_26CD3DA88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC3EA54();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for ChannelMetadata();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    v31 = 0;
    sub_26CC3F22C(&qword_2804BBE98, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_26CD3AE7C();
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appAdamIds) = v32;
    v31 = 1;
    sub_26CD3AE7C();
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appBundleIds) = v32;
    LOBYTE(v32) = 2;
    v10 = sub_26CD3AE3C();
    v11 = (v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appName);
    *v11 = v10;
    v11[1] = v12;
    LOBYTE(v32) = 3;
    v13 = sub_26CD3AE3C();
    v14 = (v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_appStoreUrl);
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v32) = 4;
    v16 = sub_26CD3AE3C();
    v17 = (v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_id);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v32) = 5;
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isConsented) = sub_26CD3AE4C() & 1;
    LOBYTE(v32) = 6;
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isFirstParty) = sub_26CD3AE4C() & 1;
    LOBYTE(v32) = 7;
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isInstalled) = sub_26CD3AE4C() & 1;
    LOBYTE(v32) = 8;
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isItunes) = sub_26CD3AE4C() & 1;
    LOBYTE(v32) = 9;
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isSubscribed) = sub_26CD3AE4C() & 1;
    LOBYTE(v32) = 10;
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_isWatchlistEnabled) = sub_26CD3AE4C() & 1;
    LOBYTE(v32) = 11;
    v19 = sub_26CD3AE3C();
    v20 = (v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_name);
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v32) = 12;
    *(v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_shouldTrackPlayActivity) = sub_26CD3AE4C() & 1;
    LOBYTE(v32) = 13;
    v22 = sub_26CD3AE3C();
    v23 = (v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_title);
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v32) = 14;
    v25 = sub_26CD3AE3C();
    v26 = (v1 + OBJC_IVAR____TtC13TVAppServices15ChannelMetadata_url);
    *v26 = v25;
    v26[1] = v27;
    v28 = type metadata accessor for ChannelMetadata();
    v30.receiver = v1;
    v30.super_class = v28;
    v3 = objc_msgSendSuper2(&v30, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_26CC3F22C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2804BCA20, &unk_26CD3D4D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_26CC3F298@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ChannelMetadata());
  result = ChannelMetadata.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t dispatch thunk of ChannelMetadata.__allocating_init(from:)()
{
  return (*(v0 + 200))();
}

{
  return (*(v0 + 216))();
}

uint64_t getEnumTagSinglePayload for ChannelMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChannelMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26CC3F500()
{
  result = qword_2804BBEA0;
  if (!qword_2804BBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEA0);
  }

  return result;
}

unint64_t sub_26CC3F558()
{
  result = qword_2804BBEA8;
  if (!qword_2804BBEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEA8);
  }

  return result;
}

unint64_t sub_26CC3F5B0()
{
  result = qword_2804BBEB0;
  if (!qword_2804BBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEB0);
  }

  return result;
}

uint64_t sub_26CC3F604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496D616441707061 && a2 == 0xEA00000000007364;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEC00000073644965 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65726F7453707061 && a2 == 0xEB000000006C7255 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65736E6F437369 && a2 == 0xEB00000000646574 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5074737269467369 && a2 == 0xEC00000079747261 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6174736E497369 && a2 == 0xEB0000000064656CLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x73656E7574497369 && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7263736275537369 && a2 == 0xEC00000064656269 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026CD4DDE0 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026CD4DE00 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 14;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t TVShowSeasonVideoItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TVShowSeasonVideoItem.showTitle.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TVShowSeasonVideoItem.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_26CC3FB60()
{
  v1 = 25705;
  v2 = 0x6C746954776F6873;
  if (*v0 != 2)
  {
    v2 = 0x656C746974;
  }

  if (*v0)
  {
    v1 = 0x754E6E6F73616573;
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

uint64_t sub_26CC3FBD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC404E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC3FC0C(uint64_t a1)
{
  v2 = sub_26CC3FE78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC3FC48(uint64_t a1)
{
  v2 = sub_26CC3FE78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TVShowSeasonVideoItem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBEB8, &qword_26CD3DC30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  v11[0] = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC3FE78();
  sub_26CD3B16C();
  v15 = 0;
  v9 = v11[5];
  sub_26CD3AF2C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14 = 1;
  sub_26CD3AF5C();
  v13 = 2;
  sub_26CD3AF2C();
  v12 = 3;
  sub_26CD3AF2C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC3FE78()
{
  result = qword_2804BBEC0;
  if (!qword_2804BBEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEC0);
  }

  return result;
}

void TVShowSeasonVideoItem.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBEC8, &qword_26CD3DC38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC3FE78();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v28 = 0;
    v9 = sub_26CD3AE3C();
    v11 = v10;
    v12 = v9;
    v27 = 1;
    v23 = sub_26CD3AE6C();
    v26 = 2;
    v13 = sub_26CD3AE3C();
    v24 = v14;
    v22 = v13;
    v25 = 3;
    v15 = sub_26CD3AE3C();
    v17 = v16;
    v18 = *(v6 + 8);
    v21 = v15;
    v18(v8, v5);
    *a2 = v12;
    a2[1] = v11;
    v19 = v22;
    a2[2] = v23;
    a2[3] = v19;
    v20 = v21;
    a2[4] = v24;
    a2[5] = v20;
    a2[6] = v17;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_26CC40174(uint64_t a1)
{
  *(a1 + 8) = sub_26CC401A4();
  result = sub_26CC401F8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26CC401A4()
{
  result = qword_2804BBED0;
  if (!qword_2804BBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBED0);
  }

  return result;
}

unint64_t sub_26CC401F8()
{
  result = qword_2804BBED8;
  if (!qword_2804BBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBED8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TVShowSeasonVideoItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TVShowSeasonVideoItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26CC403E0()
{
  result = qword_2804BBEE0;
  if (!qword_2804BBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEE0);
  }

  return result;
}

unint64_t sub_26CC40438()
{
  result = qword_2804BBEE8;
  if (!qword_2804BBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEE8);
  }

  return result;
}

unint64_t sub_26CC40490()
{
  result = qword_2804BBEF0;
  if (!qword_2804BBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEF0);
  }

  return result;
}

uint64_t sub_26CC404E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6E6F73616573 && a2 == 0xEC0000007265626DLL || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C746954776F6873 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_26CD3AFDC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id static ContentRestrictionsUtility.getMaximumEffectiveAppRanking()()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = [result effectiveValueForSetting_];

    if (v2)
    {
      sub_26CD3B14C();
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v3 = qword_280BBCBE0;
    v4 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26CD3C1E0;
    *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v5 + 64) = sub_26CC2E6E8();
    *(v5 + 32) = &unk_287DFA8F8;
    sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5);

    sub_26CC410E8();
    swift_allocError();
    *v6 = 3;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

TVAppServices::ContentRestrictionsUtility_optional __swiftcall ContentRestrictionsUtility.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26CD3AD9C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ContentRestrictionsUtility.rawValue.getter()
{
  v1 = 0x7463697274736572;
  v2 = *v0;
  v3 = 0x696D694C73707061;
  if (v2 == 5)
  {
    v3 = 0x7463697274736572;
  }

  v4 = 0x4C73776F68537674;
  if (v2 == 3)
  {
    v4 = 0x7463697274736572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0x694C736569766F6DLL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

double sub_26CC409C0(uint64_t a1)
{
  sub_26CD3A54C();

  return result;
}

void sub_26CC40AFC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00736569766F4DLL;
  v4 = 0x7463697274736572;
  v5 = 0xEC00000073707041;
  v6 = 0x7463697274736572;
  if (v2 != 5)
  {
    v6 = 0x696D694C73707061;
    v5 = 0xE900000000000074;
  }

  v7 = 0xEF73776F68535654;
  v8 = 0x7463697274736572;
  if (v2 != 3)
  {
    v8 = 0x4C73776F68537674;
    v7 = 0xEC00000074696D69;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x694C736569766F6DLL;
    v3 = 0xEB0000000074696DLL;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x800000026CD4BB60;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

void *_s13TVAppServices26ContentRestrictionsUtilityO14getCountryCodeSSyFZ_0()
{
  result = *MEMORY[0x277CEC568];
  if (!*MEMORY[0x277CEC568])
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = sub_26CD3A5CC();
  result = CRCopyRestrictionsDictionary();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v2 = result;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = 0;
    sub_26CD3A4EC();
  }

  if (qword_280BB9C20 != -1)
  {
    swift_once();
  }

  v3 = qword_280BBCBE0;
  v4 = sub_26CD3A98C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26CD3C1E0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
  *(v5 + 64) = sub_26CC2E6E8();
  *(v5 + 32) = &unk_287DFA868;
  sub_26CD3A3DC(v4, &dword_26CC14000, v3, "%@", 2, 2, v5);

  return v1;
}

id sub_26CC40F34(void *a1, uint64_t a2, char a3)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v7 = result;
    v8 = [result effectiveValueForSetting_];

    if (v8)
    {
      sub_26CD3B14C();
    }

    if (qword_280BB9C20 != -1)
    {
      swift_once();
    }

    v9 = qword_280BBCBE0;
    v10 = sub_26CD3A98C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCC00, &unk_26CD3C660);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26CD3C1E0;
    *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804BCA20, &unk_26CD3D4D0);
    *(v11 + 64) = sub_26CC2E6E8();
    *(v11 + 32) = a2;
    sub_26CD3A3DC(v10, &dword_26CC14000, v9, "%@", 2, 2, v11);

    sub_26CC410E8();
    swift_allocError();
    *v12 = a3;
    return swift_willThrow();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26CC410E8()
{
  result = qword_2804BBEF8;
  if (!qword_2804BBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBEF8);
  }

  return result;
}

unint64_t sub_26CC41140()
{
  result = qword_2804BBF00;
  if (!qword_2804BBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentRestrictionsUtility(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContentRestrictionsUtility(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26CC412F8()
{
  result = qword_2804BBF08;
  if (!qword_2804BBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF08);
  }

  return result;
}

void ImageType.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_26CD3AD9C();

  *a3 = v4 != 0;
}

uint64_t sub_26CC413C8()
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

uint64_t sub_26CC4143C(uint64_t a1)
{
  sub_26CD3B0FC();
  sub_26CD3A54C();
  return sub_26CD3B13C();
}

void sub_26CC41490(BOOL *a2@<X8>)
{
  v3 = sub_26CD3AD9C();

  *a2 = v3 != 0;
}

uint64_t ImageResource.joeColor.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ImageResource.url.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_26CC41638()
{
  v1 = *v0;
  v2 = 0x746867696568;
  v3 = 0x7079546567616D69;
  if (v1 != 5)
  {
    v3 = 7107189;
  }

  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x6874646977;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 860910441;
  if (v1 != 1)
  {
    v5 = 0x726F6C6F43656F6ALL;
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

uint64_t sub_26CC41704@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC42224(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC41738(uint64_t a1)
{
  v2 = sub_26CC41A48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC41774(uint64_t a1)
{
  v2 = sub_26CC41A48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageResource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBF10, &qword_26CD3DFF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v16 = *(v1 + 8);
  v7 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v7;
  v13 = *(v1 + 32);
  v8 = *(v1 + 40);
  v12[1] = *(v1 + 48);
  v12[2] = v8;
  v9 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC41A48();
  sub_26CD3B16C();
  v24 = 0;
  v10 = v17;
  sub_26CD3AF5C();
  if (!v10)
  {
    v17 = v9;
    v23 = 1;
    sub_26CD3AF3C();
    v22 = 2;
    sub_26CD3AF2C();
    v21 = 3;
    sub_26CD3AF3C();
    v20 = 4;
    sub_26CD3AF5C();
    v19 = 5;
    sub_26CC41A9C();
    sub_26CD3AF6C();
    v18 = 6;
    sub_26CD3AF2C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC41A48()
{
  result = qword_2804BBF18;
  if (!qword_2804BBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF18);
  }

  return result;
}

unint64_t sub_26CC41A9C()
{
  result = qword_2804BBF20;
  if (!qword_2804BBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF20);
  }

  return result;
}

void ImageResource.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBF28, &qword_26CD3E000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC41A48();
  sub_26CD3B15C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v27) = 0;
    v9 = sub_26CD3AE6C();
    LOBYTE(v27) = 1;
    v10 = sub_26CD3AE4C();
    LOBYTE(v27) = 2;
    *&v23 = sub_26CD3AE3C();
    *(&v23 + 1) = v11;
    LOBYTE(v27) = 3;
    v34 = sub_26CD3AE4C();
    LOBYTE(v27) = 4;
    v22 = sub_26CD3AE6C();
    LOBYTE(v27) = 5;
    sub_26CC41E24();
    sub_26CD3AE7C();
    v35 = 6;
    v12 = sub_26CD3AE3C();
    v13 = v10 & 1;
    v21 = v13;
    v34 &= 1u;
    v14 = v8;
    v16 = v15;
    (*(v6 + 8))(v14, v5);
    *&v24[0] = v9;
    BYTE8(v24[0]) = v13;
    v17 = v23;
    v24[1] = v23;
    LOBYTE(v13) = v34;
    LOBYTE(v25) = v34;
    *(&v25 + 1) = v22;
    *&v26 = v12;
    *(&v26 + 1) = v16;
    v18 = v23;
    *a2 = v24[0];
    a2[1] = v18;
    v19 = v26;
    a2[2] = v25;
    a2[3] = v19;
    sub_26CC41E78(v24, &v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v27 = v9;
    v28 = v21;
    v29 = v17;
    v30 = v13;
    v31 = v22;
    v32 = v12;
    v33 = v16;
    sub_26CC41EB0(&v27);
  }
}

unint64_t sub_26CC41E24()
{
  result = qword_2804BBF30;
  if (!qword_2804BBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF30);
  }

  return result;
}

unint64_t sub_26CC41EE4()
{
  result = qword_2804BBF38;
  if (!qword_2804BBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ImageType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26CC42064(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26CC420AC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_26CC42120()
{
  result = qword_2804BBF40;
  if (!qword_2804BBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF40);
  }

  return result;
}

unint64_t sub_26CC42178()
{
  result = qword_2804BBF48;
  if (!qword_2804BBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF48);
  }

  return result;
}

unint64_t sub_26CC421D0()
{
  result = qword_2804BBF50;
  if (!qword_2804BBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF50);
  }

  return result;
}

uint64_t sub_26CC42224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 860910441 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6C6F43656F6ALL && a2 == 0xE800000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026CD4DE30 == a2 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7079546567616D69 && a2 == 0xE900000000000065 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

unint64_t sub_26CC42474()
{
  result = qword_2804BBF58;
  if (!qword_2804BBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF58);
  }

  return result;
}

uint64_t Rating.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Rating.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Rating.reason.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Rating.system.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Rating.systemType.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_26CC425C0()
{
  v1 = *v0;
  v2 = 0x4E79616C70736964;
  v3 = 0x6D6574737973;
  v4 = 0x79546D6574737973;
  if (v1 != 4)
  {
    v4 = 0x65756C6176;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x6E6F73616572;
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

uint64_t sub_26CC42674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC431FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC426A8(uint64_t a1)
{
  v2 = sub_26CC42970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC426E4(uint64_t a1)
{
  v2 = sub_26CC42970();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Rating.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBF60, &qword_26CD3E2D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  v13[0] = v1[10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC42970();
  sub_26CD3B16C();
  v19 = 0;
  v11 = v13[9];
  sub_26CD3AF2C();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v18 = 1;
  sub_26CD3AF2C();
  v17 = 2;
  sub_26CD3AF2C();
  v16 = 3;
  sub_26CD3AF2C();
  v15 = 4;
  sub_26CD3AF2C();
  v14 = 5;
  sub_26CD3AF5C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC42970()
{
  result = qword_2804BBF68;
  if (!qword_2804BBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF68);
  }

  return result;
}

uint64_t Rating.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBF70, &qword_26CD3E2E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC42970();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v39[0]) = 0;
  v9 = sub_26CD3AE3C();
  v11 = v10;
  LOBYTE(v39[0]) = 1;
  v30 = sub_26CD3AE3C();
  v32 = v12;
  LOBYTE(v39[0]) = 2;
  v13 = sub_26CD3AE3C();
  v31 = v14;
  v26 = v13;
  LOBYTE(v39[0]) = 3;
  v29 = 0;
  v25 = sub_26CD3AE3C();
  v28 = v15;
  LOBYTE(v39[0]) = 4;
  v24 = sub_26CD3AE3C();
  v27 = v16;
  v40 = 5;
  v17 = sub_26CD3AE6C();
  (*(v6 + 8))(v8, v5);
  *&v33 = v9;
  *(&v33 + 1) = v11;
  *&v34 = v30;
  v18 = v32;
  *(&v34 + 1) = v32;
  *&v35 = v26;
  v19 = v31;
  *(&v35 + 1) = v31;
  *&v36 = v25;
  v20 = v28;
  *(&v36 + 1) = v28;
  *&v37 = v24;
  *(&v37 + 1) = v27;
  v38 = v17;
  *(a2 + 80) = v17;
  v21 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v21;
  *(a2 + 64) = v37;
  v22 = v34;
  *a2 = v33;
  *(a2 + 16) = v22;
  sub_26CC42E3C(&v33, v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39[0] = v9;
  v39[1] = v11;
  v39[2] = v30;
  v39[3] = v18;
  v39[4] = v26;
  v39[5] = v19;
  v39[6] = v25;
  v39[7] = v20;
  v39[8] = v24;
  v39[9] = v27;
  v39[10] = v17;
  return sub_26CC42E74(v39);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_26CC42EF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26CC42F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ChannelType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ChannelType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26CC430F8()
{
  result = qword_2804BBF78;
  if (!qword_2804BBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF78);
  }

  return result;
}

unint64_t sub_26CC43150()
{
  result = qword_2804BBF80;
  if (!qword_2804BBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF80);
  }

  return result;
}

unint64_t sub_26CC431A8()
{
  result = qword_2804BBF88;
  if (!qword_2804BBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF88);
  }

  return result;
}

uint64_t sub_26CC431FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6574737973 && a2 == 0xE600000000000000 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79546D6574737973 && a2 == 0xEA00000000006570 || (sub_26CD3AFDC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_26CD3AFDC();

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

uint64_t VideoGenre.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t VideoGenre.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t VideoGenre.type.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t VideoGenre.url.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_26CC434B8()
{
  v1 = 25705;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_26CC43510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26CC43D44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26CC43538(uint64_t a1)
{
  v2 = sub_26CC437A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26CC43574(uint64_t a1)
{
  v2 = sub_26CC437A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoGenre.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBF90, &qword_26CD3E4B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC437A4();
  sub_26CD3B16C();
  v16 = 0;
  v10 = v12[7];
  sub_26CD3AF2C();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_26CD3AF2C();
  v14 = 2;
  sub_26CD3AF2C();
  v13 = 3;
  sub_26CD3AF2C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26CC437A4()
{
  result = qword_2804BBF98;
  if (!qword_2804BBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804BBF98);
  }

  return result;
}

uint64_t VideoGenre.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BBFA0, &qword_26CD3E4C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26CC437A4();
  sub_26CD3B15C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_26CD3AE3C();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_26CD3AE3C();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_26CD3AE3C();
  v25 = v13;
  v33 = 3;
  v14 = sub_26CD3AE3C();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_26CC43AEC(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_26CC43B24(v32);
}