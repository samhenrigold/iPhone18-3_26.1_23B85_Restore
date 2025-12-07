uint64_t objectdestroy_108Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_40Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_24ABA4860()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24ABA4900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_24ABA4B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_24ABABA2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24ABA54BC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_24ABA54C4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24ABA4AD8;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  v13 = fpfs_openbyid();
  _Block_release(v12);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if ((v13 & 0x80000000) == 0)
    {
      return v13;
    }

    result = MEMORY[0x24C228D50](result);
    if (result)
    {
      MEMORY[0x24C228D50]();
      v16 = sub_24ABABDAC();
      v17 = (v7 + 8);
      if ((v16 & 0x100000000) != 0)
      {
        LODWORD(aBlock[0]) = sub_24ABABD9C();
      }

      else
      {
        LODWORD(aBlock[0]) = v16;
      }

      sub_24ABA5504(MEMORY[0x277D84F90]);
      sub_24ABA5614();
      sub_24ABABB3C();
      sub_24ABABA1C();
      (*v17)(v9, v6);
      swift_willThrow();
      return v13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABA4D88(uint64_t a1, uint64_t a2, stat *a3)
{
  v4 = sub_24ABABA2C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24ABABECC();
  v9 = lstat((v8 + 32), a3);

  if ((v9 & 0x80000000) == 0)
  {
LABEL_7:

    return v9;
  }

  result = MEMORY[0x24C228D50](v10);
  if (result)
  {
    MEMORY[0x24C228D50]();
    v12 = sub_24ABABDAC();
    v13 = (v5 + 8);
    if ((v12 & 0x100000000) != 0)
    {
      v16 = sub_24ABABD9C();
    }

    else
    {
      v15 = v12;
    }

    sub_24ABA5504(MEMORY[0x277D84F90]);
    sub_24ABA5614();
    sub_24ABABB3C();
    sub_24ABABA1C();
    (*v13)(v7, v4);
    swift_willThrow();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void throwErrno<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = a2;
  sub_24ABA4F90(sub_24ABA4F68, v5, a3, a5);
}

void sub_24ABA4F90(void (*a1)(id *)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v41 = a1;
  v40 = a2;
  v7 = sub_24ABABA2C();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = v35 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v16 = v42;
  v41(&v44);
  if (v16)
  {

    return;
  }

  v40 = v12;
  v41 = AssociatedTypeWitness;
  v42 = v15;
  v17 = v39;
  if (v44)
  {
    swift_willThrow();
    (*(v13 + 8))(a5, a3);
    return;
  }

  v35[1] = 0;
  v18 = a3;
  v19 = sub_24ABAC27C();
  v36 = v13;
  if (v19)
  {
    v20 = a5;
    v21 = sub_24ABAC26C();
    v22 = v38;
    if (v21 >= 64)
    {
      v43 = 0;
      sub_24ABA56DC();
      v27 = v42;
      sub_24ABAC24C();
      v28 = sub_24ABABE6C();
      (*(v36 + 8))(v27, a3);
      if ((v28 & 1) == 0)
      {
        return;
      }
    }

    else if ((sub_24ABAC25C() & 0x8000000000000000) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  v23 = sub_24ABAC27C();
  v24 = sub_24ABAC26C();
  if ((v23 & 1) == 0)
  {
    v20 = a5;
    v22 = v38;
    if (v24 >= 64)
    {
      return;
    }

    v18 = a3;
    goto LABEL_18;
  }

  if (v24 > 64)
  {
    v43 = 0;
    sub_24ABA56DC();
    v25 = v42;
    v18 = a3;
    sub_24ABAC24C();
    v20 = a5;
    v26 = sub_24ABABE6C();
    (*(v36 + 8))(v25, a3);
    v22 = v38;
    if ((v26 & 1) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

  v18 = a3;
  swift_getAssociatedConformanceWitness();
  sub_24ABAC5AC();
  v29 = v42;
  sub_24ABAC57C();
  v20 = a5;
  v30 = sub_24ABABE6C();
  (*(v36 + 8))(v29, a3);
  v22 = v38;
  if ((v30 & 1) == 0)
  {
LABEL_18:
    if ((sub_24ABAC25C() & 0x8000000000000000) == 0)
    {
      return;
    }
  }

LABEL_20:
  if (MEMORY[0x24C228D50]())
  {
    MEMORY[0x24C228D50]();
    v31 = sub_24ABABDAC();
    v32 = (v22 + 8);
    v33 = v37;
    v34 = (v36 + 8);
    if ((v31 & 0x100000000) != 0)
    {
      LODWORD(v43) = sub_24ABABD9C();
    }

    else
    {
      LODWORD(v43) = v31;
    }

    sub_24ABA5504(MEMORY[0x277D84F90]);
    sub_24ABA5614();
    sub_24ABABB3C();
    sub_24ABABA1C();
    (*v32)(v33, v17);
    swift_willThrow();
    (*v34)(v20, v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24ABA5504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E50, &qword_24ABAF418);
    v3 = sub_24ABAC40C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24ABA566C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_24AB7E4CC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24ABA28B4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24ABA5614()
{
  result = qword_27EF95E30;
  if (!qword_27EF95E30)
  {
    sub_24ABABA2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95E30);
  }

  return result;
}

uint64_t sub_24ABA566C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E58, &unk_24ABAF420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24ABA56DC()
{
  result = qword_27EF95E60;
  if (!qword_27EF95E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95E60);
  }

  return result;
}

unsigned __int8 *sub_24ABA5734(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_24ABABE8C();
  v4 = [v2 getFPIdentifierFromCoreSpotlightIdentifier_];

  v5 = sub_24ABABEBC();
  v7 = v6;

  if ((sub_24ABABF9C() & 1) == 0 || ((v8 = sub_24ABABF0C(), v9 = sub_24ABA9A08(v8, v5, v7), v11 = v10, v13 = v12, v15 = v14, , v16 = MEMORY[0x24C228E60](v9, v11, v13, v15), v18 = v17, result = , v20 = HIBYTE(v18) & 0xF, v21 = v16 & 0xFFFFFFFFFFFFLL, (v18 & 0x2000000000000000) != 0) ? (v22 = HIBYTE(v18) & 0xF) : (v22 = v16 & 0xFFFFFFFFFFFFLL), !v22))
  {

    return 0;
  }

  if ((v18 & 0x1000000000000000) == 0)
  {
    if ((v18 & 0x2000000000000000) != 0)
    {
      v39[0] = v16;
      v39[1] = v18 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (v20)
        {
          if (--v20)
          {
            v24 = 0;
            v32 = v39 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              if (!is_mul_ok(v24, 0xAuLL))
              {
                break;
              }

              v27 = __CFADD__(10 * v24, v33);
              v24 = 10 * v24 + v33;
              if (v27)
              {
                break;
              }

              ++v32;
              if (!--v20)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_65;
        }

LABEL_75:
        __break(1u);
        return result;
      }

      if (v16 != 45)
      {
        if (v20)
        {
          v24 = 0;
          v35 = v39;
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              break;
            }

            v27 = __CFADD__(10 * v24, v36);
            v24 = 10 * v24 + v36;
            if (v27)
            {
              break;
            }

            ++v35;
            if (!--v20)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }

      if (v20)
      {
        if (--v20)
        {
          v24 = 0;
          v28 = v39 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v24, 0xAuLL))
            {
              break;
            }

            v27 = 10 * v24 >= v29;
            v24 = 10 * v24 - v29;
            if (!v27)
            {
              break;
            }

            ++v28;
            if (!--v20)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        result = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_24ABAC34C();
      }

      v23 = *result;
      if (v23 == 43)
      {
        if (v21 >= 1)
        {
          v20 = v21 - 1;
          if (v21 != 1)
          {
            v24 = 0;
            if (result)
            {
              v30 = result + 1;
              while (1)
              {
                v31 = *v30 - 48;
                if (v31 > 9)
                {
                  goto LABEL_65;
                }

                if (!is_mul_ok(v24, 0xAuLL))
                {
                  goto LABEL_65;
                }

                v27 = __CFADD__(10 * v24, v31);
                v24 = 10 * v24 + v31;
                if (v27)
                {
                  goto LABEL_65;
                }

                ++v30;
                if (!--v20)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_57;
          }

          goto LABEL_65;
        }

        goto LABEL_74;
      }

      if (v23 != 45)
      {
        if (v21)
        {
          v24 = 0;
          if (result)
          {
            while (1)
            {
              v34 = *result - 48;
              if (v34 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v24, 0xAuLL))
              {
                goto LABEL_65;
              }

              v27 = __CFADD__(10 * v24, v34);
              v24 = 10 * v24 + v34;
              if (v27)
              {
                goto LABEL_65;
              }

              ++result;
              if (!--v21)
              {
                goto LABEL_57;
              }
            }
          }

          goto LABEL_57;
        }

LABEL_65:
        v24 = 0;
        LOBYTE(v20) = 1;
        goto LABEL_66;
      }

      if (v21 >= 1)
      {
        v20 = v21 - 1;
        if (v21 != 1)
        {
          v24 = 0;
          if (result)
          {
            v25 = result + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_65;
              }

              if (!is_mul_ok(v24, 0xAuLL))
              {
                goto LABEL_65;
              }

              v27 = 10 * v24 >= v26;
              v24 = 10 * v24 - v26;
              if (!v27)
              {
                goto LABEL_65;
              }

              ++v25;
              if (!--v20)
              {
                goto LABEL_66;
              }
            }
          }

LABEL_57:
          LOBYTE(v20) = 0;
LABEL_66:
          v40 = v20;
          v37 = v20;
          goto LABEL_67;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v40 = 0;
  v24 = sub_24ABA9010(v16, v18, 10);
  v37 = v38;
LABEL_67:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_24ABA5B10()
{
  result = sub_24ABABE8C();
  qword_27EF96060 = result;
  return result;
}

void sub_24ABA5B48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_24ABA5BB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v24[0] = a5;
  v13 = *v7;
  v14 = sub_24ABABDFC();
  v27 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24ABABE1C();
  v25 = *(v17 - 8);
  v26 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = v7[2];
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = v7;
  v20[4] = a2;
  v20[5] = a3;
  v21 = v24[0];
  v20[6] = a4;
  v20[7] = v21;
  v20[8] = a6;
  v20[9] = v13;
  aBlock[4] = sub_24ABA9D5C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_29;
  v22 = _Block_copy(aBlock);

  sub_24AB7FC5C(a3, a4);

  sub_24ABABE0C();
  v28 = MEMORY[0x277D84F90];
  sub_24ABA9E34(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABA9B1C(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0, MEMORY[0x277D83970]);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v19, v16, v22);
  _Block_release(v22);
  (*(v27 + 8))(v16, v14);
  (*(v25 + 8))(v19, v26);
}

uint64_t sub_24ABA5EF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7)
{
  v43[3] = a7;
  v44 = a6;
  v43[1] = a4;
  v43[2] = a5;
  v10 = type metadata accessor for FileMetadata(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  v45 = a2;
  if (v14)
  {
    v47 = MEMORY[0x277D84F90];
    sub_24ABAC37C();
    v16 = a2[4];
    v17 = a2[5];
    v18 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v19 = *(v11 + 72);
    do
    {
      sub_24ABA9D70(v18, v13);
      sub_24ABA6380(v16, v17);
      sub_24ABA9DD4(v13, type metadata accessor for FileMetadata);
      sub_24ABAC35C();
      sub_24ABAC38C();
      sub_24ABAC39C();
      sub_24ABAC36C();
      v18 += v19;
      --v14;
    }

    while (v14);
    v15 = v47;
    a2 = v45;
  }

  v20 = *(a3 + 16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    v43[0] = v15;
    v49 = MEMORY[0x277D84F90];
    sub_24ABA18BC(0, v20, 0);
    v21 = v49;
    v22 = objc_opt_self();
    v23 = *MEMORY[0x277CC62F8];
    v24 = (a3 + 32);
    do
    {
      v25 = *v24++;
      v46 = v25;
      v47 = 1029990758;
      v48 = 0xE400000000000000;
      v26 = sub_24ABAC56C();
      MEMORY[0x24C228EB0](v26);

      v27 = sub_24ABABE8C();

      v28 = [v22 csIdentifierFromFPIdentifier:v27 domainIdentifier:v23];

      v29 = sub_24ABABEBC();
      v31 = v30;

      v49 = v21;
      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_24ABA18BC((v32 > 1), v33 + 1, 1);
        v21 = v49;
      }

      *(v21 + 16) = v33 + 1;
      v34 = v21 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v31;
      --v20;
    }

    while (v20);
    a2 = v45;
    v15 = v43[0];
  }

  v35 = a2[3];
  [v35 beginIndexBatch];
  if (!(v15 >> 62))
  {
    v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_13;
    }

LABEL_16:

    if (*(v21 + 16))
    {
      goto LABEL_14;
    }

LABEL_17:

    v40 = sub_24ABABC3C();
    [v35 endIndexBatchWithClientState:v40 completionHandler:0];

    if (!v36)
    {
      return v44(0);
    }

    goto LABEL_18;
  }

  v36 = sub_24ABAC3DC();
  if (!v36)
  {
    goto LABEL_16;
  }

LABEL_13:
  sub_24AB943C0(0, &qword_27EF95E88, 0x277CC34B0);
  v37 = sub_24ABABFEC();

  [v35 indexSearchableItems:v37 completionHandler:0];

  if (!*(v21 + 16))
  {
    goto LABEL_17;
  }

LABEL_14:
  v38 = sub_24ABABFEC();

  [v35 deleteSearchableItemsWithIdentifiers:v38 completionHandler:0];

  v39 = sub_24ABABC3C();
  [v35 endIndexBatchWithClientState:v39 completionHandler:0];

LABEL_18:
  sub_24AB943C0(0, &unk_27EF95C58, 0x277CCA9A0);
  v41 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27EF95310 != -1)
  {
    swift_once();
  }

  [v41 postNotificationName:qword_27EF96060 object:0];

  return v44(0);
}

id sub_24ABA6380(uint64_t a1, void *a2)
{
  v3 = v2;
  v112 = a1;
  v113 = a2;
  v120 = sub_24ABABCBC();
  v4 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v110 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95410, &qword_24ABAD6C0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v121 = &v110 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v110 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CC34B8]) init];
  v18 = type metadata accessor for FileMetadata(0);
  v19 = v18;
  v111 = *(v2 + *(v18 + 68));
  v119 = v4;
  if (v111 == 1 && (v20 = (v2 + *(v18 + 76)), v20[1]))
  {
    v21 = *v20;
    v124 = 35;
    v125 = 0xE100000000000000;
    MEMORY[0x24C228EB0](v21);
    v22 = sub_24ABABE8C();

    v23 = v22;
    [v17 setLastUsedDate_];
  }

  else
  {
    v24 = *v2;
    v124 = 1029990758;
    v125 = 0xE400000000000000;
    v122 = v24;
    v25 = sub_24ABAC56C();
    MEMORY[0x24C228EB0](v25);

    v26 = sub_24ABABE8C();

    sub_24AB94828(v2 + v19[11], v16, &qword_27EF95428, &qword_24ABAD6D0);
    v27 = *(v4 + 48);
    v28 = v4;
    v29 = v120;
    v30 = v27(v16, 1, v120);
    v23 = v26;
    if (v30 == 1)
    {
      v31 = 0;
    }

    else
    {
      v31 = sub_24ABABC7C();
      (*(v28 + 8))(v16, v29);
    }

    [v17 setLastUsedDate_];
  }

  v117 = v23;
  v32 = objc_opt_self();
  v33 = *MEMORY[0x277CC62F8];
  v34 = [v32 csIdentifierFromFPIdentifier:v23 domainIdentifier:*MEMORY[0x277CC62F8]];

  v35 = v34;
  if (!v34)
  {
    sub_24ABABEBC();
    v35 = sub_24ABABE8C();
  }

  v115 = sub_24ABABEBC();
  v116 = v36;
  [v17 setFileItemID_];

  v110 = &unk_24ABAF7E0;
  v37 = sub_24ABABE8C();
  [v17 setFileProviderID_];

  v114 = v33;
  [v17 setFileProviderDomaindentifier_];
  v38 = sub_24ABABE8C();
  [v17 setBundleID_];

  v112 = v3[2];
  v39 = sub_24ABABE8C();
  [v17 setFilename_];

  v40 = v3[3];
  if (v40)
  {
    v124 = 1029990758;
    v125 = 0xE400000000000000;
    v122 = v40;
    v41 = sub_24ABAC56C();
    MEMORY[0x24C228EB0](v41);

    v42 = sub_24ABABE8C();
  }

  else
  {
    v42 = *MEMORY[0x277CC6348];
  }

  v43 = v42;
  v44 = sub_24ABABE8C();
  [v17 setAttribute:v43 forKey:v44];
  v113 = v43;

  v45 = sub_24ABABE8C();
  [v17 setContentType_];

  v46 = v121;
  sub_24ABABD5C();
  sub_24AB94828(v46, v12, &unk_27EF95410, &qword_24ABAD6C0);
  v47 = sub_24ABABD4C();
  v48 = *(v47 - 8);
  if ((*(v48 + 48))(v12, 1, v47) == 1)
  {
    sub_24AB7C4A4(v12, &unk_27EF95410, &qword_24ABAD6C0);
  }

  else
  {
    v49 = sub_24ABABD3C();
    (*(v48 + 8))(v12, v47);
    sub_24ABA8D48(v49);

    v50 = objc_allocWithZone(MEMORY[0x277CC3440]);
    v51 = sub_24ABABE4C();

    v52 = [v50 initWithLocalizedStrings_];

    [v17 setKind_];
  }

  v53 = sub_24ABABC7C();
  [v17 setContentCreationDate_];

  v54 = sub_24ABABC7C();
  [v17 setContentModificationDate_];

  if (*(v3 + v19[12]))
  {
    v55 = sub_24ABABFEC();
  }

  else
  {
    v55 = 0;
  }

  [v17 setUserTags_];

  if (*(v3 + v19[13] + 8))
  {
    v56 = 0;
  }

  else
  {
    v56 = sub_24ABAC65C();
  }

  [v17 setFavoriteRank_];

  v57 = sub_24ABAC0BC();
  [v17 setFileSize_];

  v58 = sub_24ABAC03C();
  [v17 setTrashed_];

  v59 = sub_24ABAC03C();
  v60 = sub_24ABABE8C();
  [v17 setAttribute:v59 forKey:v60];

  v61 = sub_24ABAC03C();
  v62 = sub_24ABABE8C();
  [v17 setAttribute:v61 forKey:v62];

  v63 = (v3 + v19[19]);
  v64 = *v63;
  v65 = v63[1];
  if (v65)
  {
    v66 = sub_24ABABE8C();
  }

  else
  {
    v66 = 0;
  }

  v67 = sub_24ABABE8C();
  [v17 setAttribute:v66 forKey:v67];
  swift_unknownObjectRelease();

  sub_24AB94828(v3 + v19[21], v8, &qword_27EF95B00, &qword_24ABAED70);
  v68 = sub_24ABABC0C();
  v69 = *(v68 - 8);
  v70 = 0;
  if ((*(v69 + 48))(v8, 1, v68) != 1)
  {
    v70 = sub_24ABABB9C();
    (*(v69 + 8))(v8, v68);
  }

  [v17 setContentURL_];

  v71 = sub_24ABABE8C();
  [v17 setFileProviderID_];

  v72 = sub_24ABAC03C();
  v73 = sub_24ABABE8C();
  [v17 setAttribute:v72 forKey:v73];

  v74 = sub_24ABAC03C();
  v75 = sub_24ABABE8C();
  [v17 setAttribute:v74 forKey:v75];

  v76 = sub_24ABAC03C();
  v77 = sub_24ABABE8C();
  [v17 setAttribute:v76 forKey:v77];

  v78 = sub_24ABAC03C();
  v79 = sub_24ABABE8C();
  [v17 setAttribute:v78 forKey:v79];

  v80 = sub_24ABABE8C();
  v81 = sub_24ABABE8C();
  [v17 setAttribute:v80 forKey:v81];

  v82 = sub_24ABAC03C();
  v83 = sub_24ABABE8C();
  [v17 setAttribute:v82 forKey:v83];

  v84 = sub_24ABAC03C();
  v85 = sub_24ABABE8C();
  [v17 setAttribute:v84 forKey:v85];

  v86 = sub_24ABAC03C();
  v87 = sub_24ABABE8C();
  [v17 setAttribute:v86 forKey:v87];

  v88 = sub_24ABAC03C();
  v89 = sub_24ABABE8C();
  [v17 setAttribute:v88 forKey:v89];

  v90 = sub_24ABABE8C();
  v91 = [v90 stringByDeletingPathExtension];

  if (!v91)
  {
    sub_24ABABEBC();
    v91 = sub_24ABABE8C();
  }

  [v17 setDisplayName_];

  sub_24AB943C0(0, &qword_27EF95E90, 0x277CCABB0);
  v92 = sub_24ABAC1FC();
  [v17 setDownloading_];

  v93 = sub_24ABAC1FC();
  [v17 setShared_];

  v94 = sub_24ABAC1FC();
  [v17 setUploaded_];

  v95 = sub_24ABAC1FC();
  [v17 setUploading_];

  v96 = sub_24ABAC1FC();
  [v17 setUserOwned_];

  sub_24ABA8604();
  v97 = sub_24ABAC23C();
  v98 = sub_24ABABE8C();
  [v17 setAttribute:v97 forKey:v98];

  v124 = sub_24ABABEBC();
  v125 = v99;
  if (v65)
  {
    v122 = 46;
    v123 = 0xE100000000000000;
    MEMORY[0x24C228EB0](v64, v65);
    MEMORY[0x24C228EB0](v122, v123);
  }

  v100 = v120;
  v101 = sub_24ABABE8C();
  [v17 setDomainIdentifier_];

  v102 = objc_allocWithZone(MEMORY[0x277CC34B0]);
  v103 = v17;
  v104 = sub_24ABABE8C();

  v105 = sub_24ABABE8C();

  v106 = [v102 initWithUniqueIdentifier:v104 domainIdentifier:v105 attributeSet:v103];

  v107 = v118;
  sub_24ABABC6C();
  v108 = sub_24ABABC7C();
  (*(v119 + 8))(v107, v100);
  [v106 setExpirationDate_];

  sub_24AB7C4A4(v121, &unk_27EF95410, &qword_24ABAD6C0);
  return v106;
}

uint64_t sub_24ABA7314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v5;
  v11 = sub_24ABABDFC();
  v22 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24ABABE1C();
  v14 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v5[2];
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = v10;
  aBlock[4] = sub_24ABA9CB0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_17;
  v18 = _Block_copy(aBlock);

  sub_24ABABE0C();
  v23 = MEMORY[0x277D84F90];
  sub_24ABA9E34(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABA9B1C(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0, MEMORY[0x277D83970]);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v16, v13, v18);
  _Block_release(v18);
  (*(v22 + 8))(v13, v11);
  (*(v14 + 8))(v16, v21);
}

void sub_24ABA7638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E48, &qword_24ABAF4B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24ABAD4A0;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;

  v13 = sub_24ABABFEC();

  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v16[4] = sub_24ABA9CF8;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_24ABA5B48;
  v16[3] = &block_descriptor_23;
  v15 = _Block_copy(v16);

  [v11 deleteSearchableItemsWithDomainIdentifiers:v13 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_24ABA779C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_24AB943C0(0, &unk_27EF95C58, 0x277CCA9A0);
  v4 = [swift_getObjCClassFromMetadata() defaultCenter];
  if (qword_27EF95310 != -1)
  {
    swift_once();
  }

  [v4 postNotificationName:qword_27EF96060 object:0];

  return a2(a1);
}

uint64_t sub_24ABA785C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95DA0, &unk_24ABAF2B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = type metadata accessor for IndexingState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v3[9];
  v15 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v14);
  (*(v15 + 8))(v3[4], v3[5], a1, a2, v14, v15);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24AB7C4A4(v9, &unk_27EF95DA0, &unk_24ABAF2B0);
    sub_24ABA9BB0();
    v16 = swift_allocError();
    *v17 = 1;
    *a3 = v16;
  }

  else
  {
    sub_24ABA9C04(v9, v13);
    sub_24ABA9C04(v13, a3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24ABA7A88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24ABABDFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24ABABE1C();
  v10 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v3 + 16);
  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_24ABA9AF8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24AB9AA08;
  aBlock[3] = &block_descriptor_2;
  v14 = _Block_copy(aBlock);

  sub_24ABABE0C();
  v18 = MEMORY[0x277D84F90];
  sub_24ABA9E34(&unk_27EF95DB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF95AF0, &unk_24ABAF2C0);
  sub_24ABA9B1C(&qword_27EF95DC0, &unk_27EF95AF0, &unk_24ABAF2C0, MEMORY[0x277D83970]);
  sub_24ABAC28C();
  MEMORY[0x24C229110](0, v12, v9, v14);
  _Block_release(v14);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

void sub_24ABA7D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v9[4] = sub_24ABA9BA4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_24ABA7FD8;
  v9[3] = &block_descriptor_11;
  v8 = _Block_copy(v9);

  [v6 fetchLastClientStateWithCompletionHandler_];
  _Block_release(v8);
}

uint64_t sub_24ABA7E68(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B68, &unk_24ABAEDD0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - v9);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      *v10 = a3;
      swift_storeEnumTagMultiPayload();
      v11 = a3;
    }

    else
    {
      sub_24ABA9BB0();
      v12 = swift_allocError();
      *v13 = 0;
      *v10 = v12;
      swift_storeEnumTagMultiPayload();
    }

    a4(v10);
  }

  else
  {
    sub_24AB7FC5C(a1, a2);
    sub_24ABA785C(a1, a2, v10);
    a4(v10);
    sub_24AB77A88(a1, a2);
  }

  return sub_24AB7C4A4(v10, &qword_27EF95B68, &unk_24ABAEDD0);
}

uint64_t sub_24ABA7FD8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_24ABABC4C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_24AB77A88(v4, v8);
}

void sub_24ABA8084(uint64_t *a1@<X8>)
{
  v2 = sub_24ABAC0DC();
  MEMORY[0x28223BE20](v2);
  v3 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
  v4 = sub_24ABABFEC();
  [v3 setBundleIDs_];

  v5 = sub_24ABABFEC();
  [v3 setFetchAttributes_];

  v6 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v7 = v3;
  v8 = sub_24ABABE8C();
  v9 = [v6 initWithQueryString:v8 queryContext:v7];

  sub_24ABAC0EC();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E68, &qword_24ABAF4A8);
  a1[4] = sub_24ABA9B1C(&qword_27EF95E70, &qword_27EF95E68, &qword_24ABAF4A8, MEMORY[0x277D85990]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for FileLocator(0);
  sub_24ABA9E34(&qword_27EF95E78, MEMORY[0x277CC21F8], MEMORY[0x277CC2200]);
  sub_24ABAC3BC();
}

uint64_t sub_24ABA82B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24ABA8358, 0, 0);
}

uint64_t sub_24ABA8358()
{
  v1 = sub_24ABAC0CC();
  v2 = [v1 attributeSet];

  v3 = [v2 contentURL];
  if (v3)
  {
    v4 = v3;
    sub_24ABABBCC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v0[4];
  v6 = v0[5];
  v8 = sub_24ABABC0C();
  (*(*(v8 - 8) + 56))(v7, v5, 1, v8);
  sub_24AB94340(v7, v6);
  v9 = [v2 fileItemID];
  if (v9)
  {
    v10 = v9;
    v11 = sub_24ABABEBC();
    v13 = v12;

    v14 = sub_24ABA5734(v11, v13);
    v16 = v15;
  }

  else
  {

    v14 = 0;
    v16 = 1;
  }

  v17 = v0[5];
  v18 = v0[2];
  *v18 = v14;
  *(v18 + 8) = v16 & 1;
  v19 = type metadata accessor for FileLocator(0);
  sub_24AB94340(v17, v18 + *(v19 + 20));

  v20 = v0[1];

  return v20();
}

uint64_t sub_24ABA850C()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 48));

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t sub_24ABA8604()
{
  v1 = v0;
  v50[9] = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for FileMetadata(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v48 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24ABABB1C();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_24ABABC0C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 92);
  v47 = v1;
  sub_24AB94828(v1 + v15, v10, &qword_27EF95B00, &qword_24ABAED70);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24AB7C4A4(v10, &qword_27EF95B00, &qword_24ABAED70);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95400, &qword_24ABAD6B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24ABAD4A0;
    v17 = *MEMORY[0x277CBE868];
    *(inited + 32) = *MEMORY[0x277CBE868];
    v18 = v17;
    sub_24AB76854(inited);
    swift_setDeallocating();
    sub_24ABA9DD4(inited + 32, type metadata accessor for URLResourceKey);
    sub_24ABABB7C();

    sub_24ABABAEC();
    (*(v46 + 8))(v7, v5);
    v32 = [objc_opt_self() defaultManager];
    sub_24ABABBDC();
    v33 = sub_24ABABE8C();

    v50[0] = 0;
    v34 = [v32 attributesOfItemAtPath:v33 error:v50];

    v35 = v50[0];
    if (v34)
    {
      type metadata accessor for FileAttributeKey(0);
      sub_24ABA9E34(&qword_27EF95690, type metadata accessor for FileAttributeKey, &unk_24ABAE0B4);
      v36 = sub_24ABABE5C();
      v37 = v35;

      if (*(v36 + 16) && (v38 = sub_24AB7E544(*MEMORY[0x277CCA180]), (v39 & 1) != 0))
      {
        sub_24AB77950(*(v36 + 56) + 32 * v38, v50);

        sub_24AB943C0(0, &qword_27EF95E90, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v40 = v49[0];
          [v49[0] unsignedShortValue];
          v41 = sub_24ABAC1EC();

          (*(v12 + 8))(v14, v11);
          return v41;
        }
      }

      else
      {
      }

      (*(v12 + 8))(v14, v11);
    }

    else
    {
      v43 = v50[0];
      v44 = sub_24ABABB5C();

      swift_willThrow();
      (*(v12 + 8))(v14, v11);
      v19 = v48;
      if (qword_27EF95308 != -1)
      {
        swift_once();
      }

      v20 = sub_24ABABD8C();
      __swift_project_value_buffer(v20, qword_27EF95FD8);
      sub_24ABA9D70(v47, v19);
      v21 = v44;
      v22 = sub_24ABABD6C();
      v23 = sub_24ABAC11C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v50[0] = v26;
        *v24 = 136315394;
        v27 = *(v19 + 8);
        v28 = *(v19 + 16);

        sub_24ABA9DD4(v19, type metadata accessor for FileMetadata);
        v29 = sub_24AB760CC(v27, v28, v50);

        *(v24 + 4) = v29;
        *(v24 + 12) = 2112;
        v30 = v44;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v31;
        *v25 = v31;
        _os_log_impl(&dword_24AB6F000, v22, v23, "Error retrieving capabilities for %s : %@", v24, 0x16u);
        sub_24AB7C4A4(v25, &unk_27EF953F0, &unk_24ABAD6A0);
        MEMORY[0x24C229EC0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x24C229EC0](v26, -1, -1);
        MEMORY[0x24C229EC0](v24, -1, -1);
      }

      else
      {

        sub_24ABA9DD4(v19, type metadata accessor for FileMetadata);
      }
    }
  }

  return 3;
}

uint64_t sub_24ABA8D48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95E98, qword_24ABAF4B8);
    v2 = sub_24ABAC40C();
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
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_24ABA28B4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_24ABA28B4(v29, v30);
    result = sub_24ABAC2AC();
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
    result = sub_24ABA28B4(v30, (*(v2 + 56) + 32 * v10));
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

unsigned __int8 *sub_24ABA9010(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_24ABABFBC();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_24ABA9594(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
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
      result = sub_24ABAC34C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_24ABA9594(uint64_t a1, unint64_t a2)
{
  v2 = sub_24ABABFCC();
  v6 = sub_24ABA9614(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_24ABA9614(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_24ABAC22C();
    if (!v9 || (v10 = v9, v11 = sub_24AB7650C(v9, 0), v12 = sub_24ABA976C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_24ABABEEC();

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
      return sub_24ABABEEC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_24ABAC34C();
LABEL_4:

  return sub_24ABABEEC();
}

unint64_t sub_24ABA976C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_24ABA998C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_24ABABF7C();
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
          result = sub_24ABAC34C();
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

    result = sub_24ABA998C(v12, a6, a7);
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

    result = sub_24ABABF5C();
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

unint64_t sub_24ABA998C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_24ABABF8C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C228EF0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_24ABA9A08(unint64_t result, uint64_t a2, unint64_t a3)
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
  result = sub_24ABABF1C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_24ABABFCC();
}

uint64_t sub_24ABA9AB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24ABA9B1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_24ABA9B64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_24ABA9BB0()
{
  result = qword_27EF95E80;
  if (!qword_27EF95E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95E80);
  }

  return result;
}

uint64_t sub_24ABA9C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABA9C68()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_24ABA9CC0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24ABA9D04()
{

  sub_24AB77A9C(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_24ABA9D70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABA9DD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24ABA9E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_24ABA9E7C(uint64_t a1, uint64_t a2)
{
  sub_24ABAC2FC();
  MEMORY[0x24C228EB0](0xD000000000000017, 0x800000024ABB0600);
  MEMORY[0x24C228EB0](0xD000000000000023, 0x800000024ABAF7E0);
  MEMORY[0x24C228EB0](47, 0xE100000000000000);
  type metadata accessor for NSFileProviderDomainIdentifier(0);
  sub_24ABAC3AC();
  sub_24ABABEBC();
  v2 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v3 = sub_24ABABE8C();

  v4 = sub_24ABABE8C();

  v5 = sub_24ABABE8C();
  v6 = [v2 initWithName:v3 protectionClass:v4 bundleIdentifier:v5];

  return v6;
}

uint64_t sub_24ABAA038(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FIRoot.State(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24ABAA0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FIRoot.State(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for IndexingState(uint64_t a1)
{
  result = qword_27EF95EA0;
  if (!qword_27EF95EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24ABAA174(uint64_t a1)
{
  result = type metadata accessor for FIRoot.State(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24ABAA1E0@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for FIRoot.State(0);
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  (*(v3 + 56))(&v16 - v10, 1, 1, v2);
  sub_24ABAAA1C(v11, v9);
  if ((*(v3 + 48))(v9, 1, v2) == 1)
  {
    sub_24ABAAA8C(v9);
    v12 = v2[5];
    v13 = sub_24ABABD0C();
    (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
    result = sub_24ABAAA8C(v11);
    *a1 = -1;
    v15 = MEMORY[0x277D84F90];
    *&a1[v2[6]] = MEMORY[0x277D84F90];
    *&a1[v2[7]] = v15;
  }

  else
  {
    sub_24ABAAA8C(v11);
    sub_24ABAA970(v9, v5, type metadata accessor for FIRoot.State);
    return sub_24ABAA970(v5, a1, type metadata accessor for FIRoot.State);
  }

  return result;
}

uint64_t sub_24ABAA430@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for FIRoot.State(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95EB0, &qword_24ABAF530);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for IndexingState(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ABAA91C();
  sub_24ABAC66C();
  if (!v2)
  {
    v12 = v16;
    sub_24ABAA9D8(&qword_27EF95EC0, &unk_24ABAECCC);
    v13 = v17;
    sub_24ABAC48C();
    (*(v15 + 8))(v8, v6);
    sub_24ABAA970(v13, v11, type metadata accessor for FIRoot.State);
    sub_24ABAA970(v11, v12, type metadata accessor for IndexingState);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_24ABAA6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1868983913 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24ABAC58C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24ABAA728(uint64_t a1)
{
  v2 = sub_24ABAA91C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ABAA764(uint64_t a1)
{
  v2 = sub_24ABAA91C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24ABAA7B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95EC8, &qword_24ABAF538);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24ABAA91C();
  sub_24ABAC67C();
  type metadata accessor for FIRoot.State(0);
  sub_24ABAA9D8(&qword_27EF95ED0, &unk_24ABAECA4);
  sub_24ABAC52C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24ABAA91C()
{
  result = qword_27EF95EB8;
  if (!qword_27EF95EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95EB8);
  }

  return result;
}

uint64_t sub_24ABAA970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24ABAA9D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FIRoot.State(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ABAAA1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24ABAAA8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B70, &qword_24ABAF540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24ABAAB08()
{
  result = qword_27EF95ED8;
  if (!qword_27EF95ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95ED8);
  }

  return result;
}

unint64_t sub_24ABAAB60()
{
  result = qword_27EF95EE0;
  if (!qword_27EF95EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95EE0);
  }

  return result;
}

unint64_t sub_24ABAABB8()
{
  result = qword_27EF95EE8;
  if (!qword_27EF95EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95EE8);
  }

  return result;
}

uint64_t sub_24ABAAC34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FileMetadata(0);
  v3 = v2[11];
  v4 = sub_24ABABCBC();
  v5 = *(v4 - 8);
  v13 = *(v5 + 56);
  v13(a1 + v3, 1, 1, v4);
  *(a1 + v2[12]) = 0;
  v6 = a1 + v2[13];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (a1 + v2[19]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v2[21];
  v9 = sub_24ABABC0C();
  v14 = *(*(v9 - 8) + 56);
  (v14)((v9 - 8), a1 + v8, 1, 1, v9);
  *a1 = xmmword_24ABAF660;
  *(a1 + 16) = 0xED0000746E617473;
  *(a1 + 24) = xmmword_24ABAF670;
  *(a1 + 40) = 0xE700000000000000;
  *(a1 + 48) = 8;
  v10 = v2[9];
  sub_24ABABCAC();
  v11 = *(v5 + 16);
  v11(a1 + v2[10], a1 + v10, v4);
  sub_24AB7C4A4(a1 + v3, &qword_27EF95428, &qword_24ABAD6D0);
  v11(a1 + v3, a1 + v10, v4);
  v13(a1 + v3, 0, 1, v4);
  *(a1 + v2[14]) = 0xBFF0000000000000;
  *(a1 + v2[15]) = 0;
  *(a1 + v2[16]) = 0;
  *(a1 + v2[17]) = 0;
  *(a1 + v2[18]) = 0;
  *(a1 + v2[20]) = xmmword_24ABAF680;
  sub_24AB7C4A4(a1 + v8, &qword_27EF95B00, &qword_24ABAED70);

  return v14(a1 + v8, 1, 1, v9);
}

unint64_t sub_24ABAAE98@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24ABAAED0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_24ABAAED0(unint64_t result)
{
  if (result >= 0xB)
  {
    return 11;
  }

  return result;
}

uint64_t type metadata accessor for FileMetadata(uint64_t a1)
{
  result = qword_27EF95EF0;
  if (!qword_27EF95EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24ABAAF2C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABAAF60(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24ABABCBC();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[21];

  return v15(v16, a2, v14);
}

uint64_t sub_24ABAB0F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = sub_24ABABCBC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95428, &qword_24ABAD6D0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[21];

  return v15(v16, a2, a2, v14);
}

void sub_24ABAB27C(uint64_t a1)
{
  sub_24ABABCBC();
  if (v1 <= 0x3F)
  {
    sub_24ABAB4C0(319, &qword_27EF95F00, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_24ABAB410(319);
      if (v3 <= 0x3F)
      {
        sub_24ABAB474(319, &qword_27EF95F18, MEMORY[0x277D84D38]);
        if (v4 <= 0x3F)
        {
          sub_24ABAB474(319, &qword_27EF95960, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_24ABAB4C0(319, &qword_27EF95F20, MEMORY[0x277CC9260]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24ABAB410(uint64_t a1)
{
  if (!qword_27EF95F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF95F10, &qword_24ABAF6C8);
    v1 = sub_24ABAC20C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF95F08);
    }
  }
}

void sub_24ABAB474(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_24ABAC20C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24ABAB4C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24ABAC20C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VNodeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VNodeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24ABAB668()
{
  result = qword_27EF95F28;
  if (!qword_27EF95F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF95F28);
  }

  return result;
}

uint64_t sub_24ABAB784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24ABAB81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF95B00, &qword_24ABAED70);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for FileLocator(uint64_t a1)
{
  result = qword_27EF95F30;
  if (!qword_27EF95F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24ABAB8F0(uint64_t a1)
{
  sub_24ABAB974();
  if (v1 <= 0x3F)
  {
    sub_24ABAB9C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24ABAB974()
{
  if (!qword_27EF95F18)
  {
    v0 = sub_24ABAC20C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF95F18);
    }
  }
}

void sub_24ABAB9C4(uint64_t a1)
{
  if (!qword_27EF95F20)
  {
    sub_24ABABC0C();
    v1 = sub_24ABAC20C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EF95F20);
    }
  }
}