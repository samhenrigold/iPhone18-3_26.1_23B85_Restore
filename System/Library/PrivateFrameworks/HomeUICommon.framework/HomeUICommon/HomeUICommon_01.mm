unint64_t sub_25458C56C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25459A700();

  return sub_25458C5C8(a1, v6, a2, a3);
}

unint64_t sub_25458C5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_25459A720();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_25458C750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605178, &qword_25459D058);
    v3 = sub_25459AB20();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_254588354(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_25458C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25459A840())
  {
    sub_25459AB30();
    v13 = sub_25459AB20();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25459A840();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25459A820())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25459AA20();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25458C56C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t *sub_25458CB30(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  (*(*(v3 - 8) + 16))(v1 + *(*v1 + 96), a1, v3);
  v5 = type metadata accessor for IconStore.IconKind(255, v3, *(v2 + 88), v4);
  swift_getAssociatedTypeWitness();
  v6 = sub_25459A870();
  swift_getTupleTypeMetadata2();
  v7 = sub_25459A810();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25458C844(v7, v5, v6, WitnessTable);

  *(v1 + *(*v1 + 104)) = v9;
  return v1;
}

uint64_t sub_25458CCAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25458CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for IconStore.IconKind(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25458CE48(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0xA3)
  {
    v8 = 163;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v11 = ((v9 + 1) & ~v9) + v10;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((a2 - v8 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *&a1[v11];
      if (!v13)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 > 0xFF)
    {
      v13 = *&a1[v11];
      if (!*&a1[v11])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v15 < 2)
    {
LABEL_26:
      if (v7 > 0xA3)
      {
        v18 = *(v6 + 48);

        return v18(&a1[v9 + 1] & ~v9);
      }

      else
      {
        v17 = *a1;
        if (v17 >= 0x5D)
        {
          return v17 - 92;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v13 = a1[v11];
  if (!a1[v11])
  {
    goto LABEL_26;
  }

LABEL_15:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void sub_25458D01C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0xA3)
  {
    v10 = 163;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 1) & ~v9) + *(v7 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_44:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v8 > 0xA3)
  {
    v18 = *(v7 + 56);

    v18(&a1[v9 + 1] & ~v9, a2);
  }

  else
  {
    *a1 = a2 + 92;
  }
}

uint64_t sub_25458D28C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xA4)
  {
    goto LABEL_17;
  }

  if (a2 + 92 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 92) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 92;
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

      return (*a1 | (v4 << 8)) - 92;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 92;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x5D;
  v8 = v6 - 93;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25458D31C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 92 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 92) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xA4)
  {
    v4 = 0;
  }

  if (a2 > 0xA3)
  {
    v5 = ((a2 - 164) >> 8) + 1;
    *result = a2 + 92;
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
    *result = a2 + 92;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_25458D418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>)
{
  result = _s12HomeUICommon19MicaPackageProviderC4loadySo9CAPackageCSgSSF_0(a1, a3);
  *a2 = result;
  return result;
}

id _s12HomeUICommon19MicaPackageProviderC4loadySo9CAPackageCSgSSF_0(uint64_t a1, uint64_t a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25459A730();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = objc_allocWithZone(MEMORY[0x277D74210]);
    v5 = v3;
    v6 = sub_25459A730();
    v7 = [v4 initWithName:v6 bundle:v5];

    if (v7)
    {
      v8 = objc_opt_self();
      [v8 begin];
      v9 = [v7 data];
      v10 = sub_25459A160();
      v12 = v11;

      v13 = [v7 typeIdentifier];
      sub_25459A740();

      v14 = sub_25459A150();
      v15 = sub_25459A730();

      v21[0] = 0;
      v16 = [objc_opt_self() packageWithData:v14 type:v15 options:0 error:v21];

      v17 = v21[0];
      if (v16)
      {
        sub_25458D704(v10, v12);
        [v8 commit];

        return v16;
      }

      v19 = v17;
      v20 = sub_25459A140();

      swift_willThrow();
      sub_25458D704(v10, v12);

      [v8 commit];
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_25458D704(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25458D758@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25459A3B0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_254591A0C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25459A2E0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25459A940();
    v13 = sub_25459A520();
    sub_25459A200();

    sub_25459A3A0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25458D940(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_25459175C(v5, v7) & 1;
}

uint64_t MicaIconView.init(package:state:size:color:useAssetMarginSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MicaIconView(0);
  type metadata accessor for MicaIconView.PackageState(0);
  result = sub_25459A6C0();
  if (a4)
  {
    sub_25459A8A0();

    sub_25459A890();
    sub_25459A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_254582148(0, &qword_27F605328, 0x277D75340);
    v18 = sub_25459A970();
  }

  else
  {
    v18 = 0;
  }

  v19 = a6 + *(v16 + 24);
  *v19 = a2;
  *(v19 + 1) = a3;
  *(v19 + 2) = a7;
  *(v19 + 3) = a8;
  *(v19 + 4) = v18;
  v19[40] = a5 & 1;
  *(v19 + 6) = a1;
  return result;
}

uint64_t MicaIconView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for MicaIconView(0);
  v3 = *(v2 - 8);
  v49 = v2 - 8;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605330, &qword_25459D438);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605338, &qword_25459D440);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v43 = v39 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605340, &qword_25459D448);
  MEMORY[0x28223BE20](v45);
  v44 = v39 - v12;
  v41 = sub_25458DFC8();
  v40 = v13;
  v39[1] = v14;
  v42 = v1;
  v15 = sub_25458E180();
  type metadata accessor for CAPackageViewLayer();
  sub_254590DC8(v1, v5);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_254590E2C(v5, v17 + v16);
  *(v17 + ((v16 + v4 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v48 = v15;
  sub_25459A300();
  sub_25459A6B0();
  sub_25459A310();
  v18 = v43;
  (*(v46 + 32))(v43, v8, v47);
  v19 = (v18 + *(v10 + 44));
  v20 = v58;
  *v19 = v57;
  v19[1] = v20;
  v19[2] = v59;
  v21 = v42;
  sub_254590DC8(v42, v5);
  v22 = swift_allocObject();
  sub_254590E2C(v5, v22 + v16);
  v23 = v44;
  sub_254590F70(v18, v44);
  v24 = (v23 + *(v45 + 36));
  *v24 = sub_254590F2C;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  v25 = v21;
  v26 = v21 + *(v49 + 32);
  v27 = *(v26 + 8);
  v28 = *(v26 + 32);
  v29 = *(v26 + 40);
  v30 = *(v26 + 48);
  v51 = *v26;
  v52 = v27;
  v53 = *(v26 + 16);
  v54 = v28;
  v55 = v29;
  v56 = v30;
  sub_254590DC8(v25, v5);
  v31 = swift_allocObject();
  sub_254590E2C(v5, v31 + v16);
  v32 = sub_254591258();
  sub_2545913D4(v32, v33, v34);

  v35 = v28;
  v36 = v30;
  sub_25459A630();

  v37 = v54;

  return sub_254579D40(v23, &qword_27F605340, &qword_25459D448);
}

uint64_t sub_25458DFC8()
{
  v1 = v0 + *(type metadata accessor for MicaIconView(0) + 24);
  if (*(v1 + 40) != 1)
  {
    return *(v1 + 16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  sub_25459A6D0();
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v2 = *(v8 + 72);
  if (!v2)
  {

    return 0;
  }

  v3 = v2;
  v4 = [v3 rootLayer];

  if (!v4)
  {
    return 0;
  }

  sub_25459A8A0();
  v5 = v4;
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v5 frame];
  Width = CGRectGetWidth(v9);
  [v5 frame];
  CGRectGetHeight(v10);

  return *&Width;
}

id sub_25458E180()
{
  v1 = sub_25459A2E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for MicaIconView(0) + 24) + 32);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  sub_25458D758(v4);
  v7 = (*(v2 + 88))(v4, v1);
  v8 = *MEMORY[0x277CDF3C0];
  v9 = objc_opt_self();
  if (v7 == v8)
  {
    v10 = [v9 traitCollectionWithUserInterfaceStyle_];
    v11 = [v6 resolvedColorWithTraitCollection_];
  }

  else
  {
    v12 = [v9 traitCollectionWithUserInterfaceStyle_];
    v11 = [v6 resolvedColorWithTraitCollection_];

    (*(v2 + 8))(v4, v1);
  }

  return v11;
}

void sub_25458E338(char *a1, uint64_t a2, void *a3)
{
  sub_25459A8A0();
  sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MicaIconView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  sub_25459A6D0();
  *&a1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState] = v8;

  sub_25459A6D0();
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v5 = *(v8 + 72);
  v6 = [v5 rootLayer];

  sub_25459054C(v6);
  if (a3)
  {
    v7 = a3;
    sub_25458E4E4(a1, v7);
  }

  else
  {
  }
}

void sub_25458E4E4(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = [a2 CGColor];
    Alpha = CGColorGetAlpha(v6);

    v8 = [v5 fillColor];
    if (v8)
    {
      v9 = v8;
      v10 = CGColorGetAlpha(v8);
    }

    else
    {
      v10 = 0.0;
    }

    if (v10 >= Alpha)
    {
      v17 = Alpha;
    }

    else
    {
      v17 = v10;
    }

    v18 = [a2 colorWithAlphaComponent_];
    v19 = [v18 CGColor];

    [v5 setFillColor_];
  }

  else
  {
    v11 = [a1 backgroundColor];
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = [a2 CGColor];
    v13 = CGColorGetAlpha(v12);

    v14 = [a1 backgroundColor];
    if (v14)
    {
      v15 = v14;
      v16 = CGColorGetAlpha(v14);
    }

    else
    {
      v16 = 0.0;
    }

    if (v16 >= v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = v16;
    }

    v21 = [a2 colorWithAlphaComponent_];
    v19 = [v21 CGColor];

    [a1 setBackgroundColor_];
  }

LABEL_18:
  v22 = [a1 sublayers];
  if (v22)
  {
    v23 = v22;
    sub_254582148(0, &qword_27F605160, 0x277CD9ED0);
    v24 = sub_25459A7E0();

    if (!(v24 >> 62))
    {
      goto LABEL_20;
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_20:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v25)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }
  }

  v25 = sub_25459A9E0();
  if (!v25)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v25 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v25; ++i)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x259C10840](i, v24);
    }

    else
    {
      v27 = *(v24 + 8 * i + 32);
    }

    v28 = v27;
    sub_25458E4E4(v27, a2);
  }

LABEL_29:
}

uint64_t sub_25458E7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  sub_25459A8A0();
  v30 = sub_25459A890();
  sub_25459A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for MicaIconView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);
  sub_25459A6D0();
  v7 = v31;
  v8 = [objc_opt_self() areAnimationsEnabled];
  if (v8 == *(v31 + 64))
  {
    *(v31 + 64) = v8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v27 = &v27;
    MEMORY[0x28223BE20](KeyPath);
    v31 = v7;
    sub_254591874();
    sub_25459A1C0();
  }

  sub_25459A6D0();
  v10 = v31;
  v11 = a1 + *(v6 + 24);
  v13 = *(v11 + 16);
  v12 = *(v11 + 24);
  if (*(v31 + 40) == v13 && *(v31 + 48) == v12)
  {
    *(v31 + 40) = v13;
    *(v10 + 48) = v12;
  }

  else
  {
    v15 = swift_getKeyPath();
    MEMORY[0x28223BE20](v15);
    v31 = v10;
    sub_254591874();
    sub_25459A1C0();
  }

  sub_25459A6D0();
  v16 = v31;
  v17 = *(v11 + 40);
  if (v17 == *(v31 + 32))
  {
    *(v31 + 32) = v17;
  }

  else
  {
    v18 = swift_getKeyPath();
    v28 = &v27;
    MEMORY[0x28223BE20](v18);
    v31 = v16;
    sub_254591874();
    sub_25459A1C0();
  }

  sub_25459A6D0();
  v19 = *(v11 + 48);
  v20 = v19;
  sub_25458F9E4(v19);

  sub_25459A6D0();
  v21 = *v11;
  v22 = *(v11 + 8);

  sub_25458ED00(v21, v22);

  sub_25459A6D0();
  v23 = v31;
  swift_getKeyPath();
  v31 = v23;
  sub_254591874();
  sub_25459A1D0();

  v25 = *(v23 + 16);
  v24 = *(v23 + 24);

  if (v24)
  {
    sub_25459A6D0();
    sub_2545901CC(v25, v24);
  }
}

uint64_t sub_25458EC04()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_25458EC84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_25458ED00(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 16) == a1 && v5 == a2;
      if (v6 || (sub_25459AB70() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_25458EE40()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  return *(v0 + 32);
}

uint64_t sub_25458EEB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_25458EF28(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }

  return result;
}

double sub_25458F008()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  return *(v0 + 40);
}

__n128 sub_25458F078@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_25458F0F0(double a1, double a2)
{
  if (*(v2 + 40) == a1 && *(v2 + 48) == a2)
  {
    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }
}

void *sub_25458F1E0()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_25458F258@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 56);
  *a2 = v4;

  return v4;
}

void sub_25458F2E0(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 56);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F605188, 0x277CD9FB8);
  v5 = v4;
  v6 = a1;
  v7 = sub_25459A980();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 56);
LABEL_8:
  *(v2 + 56) = a1;
}

uint64_t sub_25458F440()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  return *(v0 + 64);
}

uint64_t sub_25458F4B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  *a2 = *(v3 + 64);
  return result;
}

uint64_t sub_25458F528(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();
  }

  return result;
}

void sub_25458F608(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = v1[9];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    swift_getKeyPath();
    sub_25459A1D0();

    v8 = v2[9];
    if (!v8 || (v9 = [v8 rootLayer]) == 0)
    {
      if (v2[7])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_25459A1C0();
      }

      return;
    }

    v10 = v9;
    sub_25458F2E0([objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_]);
    swift_getKeyPath();
    sub_25459A1D0();

    v11 = v2[3];
    if (v11)
    {
      v12 = v2[2];

      sub_2545901CC(v12, v11);

LABEL_21:

      return;
    }

    v14 = sub_25458FB6C();
    if (v14 >> 62)
    {
      v17 = v14;
      v18 = sub_25459A9E0();
      v14 = v17;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x259C10840](0);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;

      goto LABEL_20;
    }

    v16 = 0;
LABEL_20:
    sub_254590044(v16);
    goto LABEL_21;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F6053D8, 0x277CD9F28);
  v5 = v4;
  v6 = a1;
  v7 = sub_25459A980();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void *sub_25458F8E4()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_25458F95C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_25458F9E4(void *a1)
{
  v3 = *(v1 + 72);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F6053D8, 0x277CD9F28);
  v4 = v3;
  v5 = a1;
  v6 = sub_25459A980();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 72);
LABEL_8:
  *(v1 + 72) = a1;
  v8 = v5;
  sub_25458F608(v9);
}

uint64_t sub_25458FB6C()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 states];

      if (v4)
      {
        v5 = sub_25459A7E0();

        v6 = sub_25458FC68(v5);

        if (v6)
        {
          return v6;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25458FC68(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25459AA80();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_254581EF8(i, v5);
    sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25459AA60();
    sub_25459AA90();
    sub_25459AAA0();
    sub_25459AA70();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_25458FD74(void *a1)
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v3 = *(v1 + 80);
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v5 = [v4 name];
  if (v5)
  {
    v6 = v5;
    v7 = sub_25459A740();
    v9 = v8;

    if (a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    v12 = 0;
    if (!v9)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v7 = 0;
  v9 = 0;
  if (!a1)
  {
    goto LABEL_8;
  }

LABEL_4:
  v10 = [a1 name];
  if (v10)
  {
    v11 = v10;
    v12 = sub_25459A740();
    a1 = v13;

    if (!v9)
    {
LABEL_14:
      if (a1)
      {
        goto LABEL_15;
      }

LABEL_20:

      return;
    }
  }

  else
  {
    v12 = 0;
    a1 = 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

LABEL_9:
  if (a1)
  {
    if (v7 == v12 && v9 == a1)
    {

LABEL_18:

      return;
    }

    v19 = sub_25459AB70();

    if ((v19 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_15:

LABEL_16:
  v14 = [v4 name];
  if (v14)
  {
    v15 = v14;
    v16 = sub_25459A740();
    v18 = v17;

    sub_2545901CC(v16, v18);
    goto LABEL_18;
  }

  __break(1u);
}

void *sub_25458FF44()
{
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

id sub_25458FFBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v3 + 80);
  *a2 = v4;

  return v4;
}

void sub_254590044(void *a1)
{
  v3 = *(v1 + 80);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_254591874();
    sub_25459A1C0();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
  v4 = v3;
  v5 = a1;
  v6 = sub_25459A980();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 80);
LABEL_8:
  *(v1 + 80) = a1;
  v8 = v5;
  sub_25458FD74(v9);
}

void sub_2545901CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  sub_254591874();
  sub_25459A1D0();

  v4 = *(v2 + 56);
  if (v4)
  {
    swift_getKeyPath();
    v5 = v4;
    sub_25459A1D0();

    v6 = *(v2 + 72);
    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = [v6 rootLayer];
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = v7;
    v9 = sub_25459A730();
    v10 = [v8 stateWithName_];

    if (!v10)
    {
      v11 = v5;
LABEL_14:

      v5 = v8;
LABEL_15:

      return;
    }

    v11 = v8;
    v12 = [v5 stateOfLayer_];
    if (v12)
    {
      v13 = v12;
      sub_254582148(0, &qword_27F605180, 0x277CD9FA8);
      v14 = v10;
      v15 = sub_25459A980();

      if (v15)
      {

        v16 = v11;
        v10 = v5;
LABEL_13:

        v8 = v10;
        goto LABEL_14;
      }
    }

    else
    {
      v17 = v10;
    }

    swift_getKeyPath();
    sub_25459A1D0();

    v18 = 0.0;
    if (*(v3 + 64))
    {
      *&v18 = 1.0;
    }

    [v5 setState:v10 ofLayer:v11 transitionSpeed:v18];

    [v5 cancelTimers];
    v16 = v5;
    goto LABEL_13;
  }
}

id *MicaIconView.PackageState.deinit()
{

  v1 = OBJC_IVAR____TtCV12HomeUICommon12MicaIconView12PackageState___observationRegistrar;
  v2 = sub_25459A1F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MicaIconView.PackageState.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCV12HomeUICommon12MicaIconView12PackageState___observationRegistrar;
  v2 = sub_25459A1F0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_25459054C(void *a1)
{
  v2 = OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

id sub_2545905E4()
{
  v1 = v0;
  v31.receiver = v0;
  v31.super_class = type metadata accessor for CAPackageViewLayer();
  result = objc_msgSendSuper2(&v31, sel_layoutSublayers);
  v3 = *&v0[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageLayer];
  if (!v3)
  {
    return result;
  }

  v4 = *&v1[OBJC_IVAR____TtC12HomeUICommonP33_8DF7C963BAAA969BCA457807AB0A8DB818CAPackageViewLayer_packageState];
  if (v4 == 0.0)
  {
    return result;
  }

  v5 = objc_opt_self();
  v6 = v3;

  [v5 begin];
  [v5 setDisableActions_];
  swift_getKeyPath();
  v30.m11 = v4;
  sub_254591874();
  sub_25459A1D0();

  if (*(*&v4 + 32) == 1)
  {
    swift_getKeyPath();
    v28[0] = *&v4;
    sub_25459A1D0();

    v7 = *(*&v4 + 72);
    if (v7)
    {
      v8 = v7;
      v9 = sub_25459A730();
      v10 = [v8 publishedObjectWithName_];

      if (v10)
      {
        sub_25459A9B0();
        swift_unknownObjectRelease();
      }

      else
      {
        *v28 = 0u;
        v29 = 0u;
      }

      *&v30.m11 = *v28;
      *&v30.m13 = v29;
      if (*(&v29 + 1))
      {
        sub_254582148(0, &qword_27F605160, 0x277CD9ED0);
        if (swift_dynamicCast())
        {
          v11 = v28[0];
          [v28[0] bounds];
          Height = CGRectGetHeight(v32);
          [v28[0] bounds];
          Width = CGRectGetWidth(v33);
          [v6 bounds];
          v15 = v14;
          v17 = v16;
          [v28[0] bounds];
          v20 = v15 - v19;
          if (Width < Height)
          {
            v20 = v17 - v18;
          }

          v21 = v20 * 0.5;
          [v6 bounds];
          v35 = CGRectInset(v34, v21, v21);
          [v6 setBounds_];
        }

        goto LABEL_15;
      }
    }

    else
    {
      memset(&v30, 0, 32);
    }

    sub_254579D40(&v30, &qword_27F605158, &qword_25459CFF8);
  }

LABEL_15:
  [v6 bounds];
  v23 = v22;
  v25 = v24;
  swift_getKeyPath();
  v30.m11 = v4;
  sub_25459A1D0();

  v26 = *(*&v4 + 40) / v23;
  swift_getKeyPath();
  v30.m11 = v4;
  sub_25459A1D0();

  if (*(*&v4 + 48) / v25 < v26)
  {
    v26 = *(*&v4 + 48) / v25;
  }

  [v1 bounds];
  MidX = CGRectGetMidX(v36);
  [v1 bounds];
  [v6 setPosition_];
  CATransform3DMakeScale(&v30, v26, v26, 1.0);
  [v6 setTransform_];
  [v6 setGeometryFlipped_];
  [v5 commit];
}

id sub_254590BCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_254590C50(uint64_t a1)
{
  v2 = sub_25459A2E0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25459A360();
}

uint64_t sub_254590D38@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MicaIconView.PackageState(0);
  swift_allocObject();
  result = sub_254591A7C(0, 0, 0);
  *a1 = result;
  return result;
}

uint64_t sub_254590DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MicaIconView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254590E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MicaIconView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_254590E90(char *a1)
{
  v3 = *(type metadata accessor for MicaIconView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_25458E338(a1, v1 + v4, v5);
}

uint64_t sub_254590F70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605338, &qword_25459D440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = type metadata accessor for MicaIconView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_25459A2E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + *(v1 + 20);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605348, &qword_25459D450);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605350, &qword_25459D458);

  v9 = v5 + *(v1 + 24);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_254591258()
{
  result = qword_27F605358;
  if (!qword_27F605358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605340, &qword_25459D448);
    sub_2545912E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605358);
  }

  return result;
}

unint64_t sub_2545912E4()
{
  result = qword_27F605360;
  if (!qword_27F605360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605338, &qword_25459D440);
    sub_254591370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605360);
  }

  return result;
}

unint64_t sub_254591370()
{
  result = qword_27F605368;
  if (!qword_27F605368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F605330, &qword_25459D438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605368);
  }

  return result;
}

unint64_t sub_2545913D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F605370;
  if (!qword_27F605370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F605370);
  }

  return result;
}

void sub_25459146C(uint64_t a1)
{
  sub_254591558(319, &qword_27F605398, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_254591558(319, &qword_27F6053A0, type metadata accessor for MicaIconView.PackageState, MEMORY[0x277CE1438]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254591558(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2545915C4(uint64_t a1)
{
  result = sub_25459A1F0();
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2545916B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_254591700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25459175C(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_25459AB70() & 1) == 0 || a1[2] != *(a2 + 16) || a1[3] != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 4);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    sub_254582148(0, &qword_27F605328, 0x277D75340);
    v7 = v6;
    v8 = v5;
    v9 = sub_25459A980();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((*(a1 + 40) ^ *(a2 + 40)))
  {
    return 0;
  }

  sub_254582148(0, &qword_27F6053C8, 0x277D82BB8);
  return sub_25459A980() & 1;
}

unint64_t sub_254591874()
{
  result = qword_27F6053D0;
  if (!qword_27F6053D0)
  {
    type metadata accessor for MicaIconView.PackageState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F6053D0);
  }

  return result;
}

void sub_2545918CC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 80);
  *(v2 + 80) = v1;
  v4 = v1;
  sub_25458FD74(v3);
}

void sub_254591918()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 72);
  *(v2 + 72) = v1;
  v4 = v1;
  sub_25458F608(v3);
}

void sub_254591964()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 56);
  *(v1 + 56) = v2;
  v4 = v2;
}

__n128 sub_2545919AC()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

uint64_t sub_2545919CC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_254591A0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F605320, &qword_25459D430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_254591A7C(void *a1, void *a2, void *a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 40) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  sub_25459A1E0();
  v7 = a1;
  sub_25458F2E0(a1);
  v8 = a2;
  sub_25458F9E4(a2);
  sub_254590044(a3);
  return v3;
}

unint64_t sub_254591B5C()
{
  result = sub_254591B80();
  qword_27F6053E0 = result;
  *algn_27F6053E8 = v1;
  return result;
}

unint64_t sub_254591B80()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() redColor];
  v6 = 0;
  v7[0] = 0;
  v5 = 0;
  [v0 getRed:v7 green:&v6 blue:&v5 alpha:0];
  sub_25459AA10();

  v1 = sub_25459A8F0();
  MEMORY[0x259C10580](v1);

  MEMORY[0x259C10580](0x206E6565726720, 0xE700000000000000);
  v2 = sub_25459A8F0();
  MEMORY[0x259C10580](v2);

  MEMORY[0x259C10580](0x2065756C6220, 0xE600000000000000);
  v3 = sub_25459A8F0();
  MEMORY[0x259C10580](v3);

  return 0xD000000000000017;
}

uint64_t static PlatformCanary.tweet.getter()
{
  if (qword_27F604BA8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F6053E0;

  return v0;
}

id PlatformCanary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlatformCanary.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformCanary();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlatformCanary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlatformCanary();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_254591E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25459A4C0();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_25459A4D0();
}

uint64_t sub_254591F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_25459A4C0();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_25459A4D0();
}

uint64_t View.modify<A>(if:then:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v40 = a7;
  v41 = a6;
  v34 = a3;
  v35 = a2;
  v37 = a1;
  v36 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v34 - v15;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v34 - v22;
  v39 = sub_25459A4E0();
  v24 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v26 = &v34 - v25;
  if (v37)
  {
    v35(v38);
    v27 = *(v18 + 16);
    v27(v23, v21, a5);
    v38 = a8;
    v28 = *(v18 + 8);
    v28(v21, a5);
    v27(v21, v23, a5);
    sub_254591E5C(v21, a5, a4, v40, v41);
    v28(v21, a5);
    v28(v23, a5);
    a8 = v38;
  }

  else
  {
    v29 = v36;
    v30 = *(v36 + 16);
    v30(v16, v38, a4);
    v30(v13, v16, a4);
    sub_254591F54(v13, a5, a4, v40, v41);
    v31 = *(v29 + 8);
    v31(v13, a4);
    v31(v16, a4);
  }

  v42 = v40;
  v43 = v41;
  v32 = v39;
  swift_getWitnessTable();
  (*(v24 + 16))(a8, v26, v32);
  return (*(v24 + 8))(v26, v32);
}

uint64_t View.modify<A, B>(if:then:else:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v40 = a5;
  v41 = a4;
  v38 = a3;
  v39 = a2;
  v13 = a1;
  v46 = a8;
  v42 = *(a7 - 8);
  v45 = a11;
  v47 = a10;
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v38 - v18;
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v17);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - v25;
  v44 = sub_25459A4E0();
  v27 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v29 = &v38 - v28;
  if (v13)
  {
    v39(v43);
    v30 = *(v21 + 16);
    v30(v26, v24, a6);
    v31 = *(v21 + 8);
    v31(v24, a6);
    v30(v24, v26, a6);
    v32 = v45;
    sub_254591E5C(v24, a6, a7, v47, v45);
    v31(v24, a6);
    v31(v26, a6);
  }

  else
  {
    v41(v43);
    v33 = v42;
    v34 = *(v42 + 16);
    v34(v19, v16, a7);
    v35 = *(v33 + 8);
    v35(v16, a7);
    v34(v16, v19, a7);
    v32 = v45;
    sub_254591F54(v16, a6, a7, v47, v45);
    v35(v16, a7);
    v35(v19, a7);
  }

  v48 = v47;
  v49 = v32;
  v36 = v44;
  swift_getWitnessTable();
  (*(v27 + 16))(v46, v29, v36);
  return (*(v27 + 8))(v29, v36);
}

id HUIconImageNamed(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __HUIconImageNamed_block_invoke;
  v18[3] = &__block_descriptor_40_e15___NSString_8__0l;
  v18[4] = a2;
  v6 = __HUIconImageNamed_block_invoke(v18);
  v7 = @"-vibrant";
  if (a3 == 1)
  {
    v7 = &stru_286674A20;
  }

  v8 = v7;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, v8, v6];
  v10 = HUCommonNullableImageNamed(v9);
  if (v10)
  {
    goto LABEL_4;
  }

  v12 = [v5 stringByAppendingString:v6];
  v11 = HUCommonNullableImageNamed(v12);

  if (!v11)
  {
    v13 = [v5 stringByAppendingString:v8];
    v11 = HUCommonNullableImageNamed(v13);

    if (!v11)
    {
      v10 = HUCommonNullableImageNamed(v5);
      if (!v10)
      {
        v15 = *MEMORY[0x277D13A38];
        if ([v5 isEqualToString:*MEMORY[0x277D13A38]])
        {
          v16 = [MEMORY[0x277CCA890] currentHandler];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIImage * _Nonnull HUIconImageNamed(NSString *__strong _Nonnull, HUIconSize, HUIconDisplayStyle)"}];
          [v16 handleFailureInFunction:v17 file:@"HUIconDefines.m" lineNumber:42 description:@"No generic fallback icon found"];
        }

        v10 = HUIconImageNamed(v15, a2, a3);
      }

LABEL_4:
      v11 = v10;
    }
  }

  return v11;
}

double HUDefaultSizeForIconSize(uint64_t a1)
{
  result = 16.0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 32.0;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return *MEMORY[0x277D77268];
      }

      return result;
    }

    return 48.0;
  }

  if (!a1 || a1 == 2)
  {
    return 24.0;
  }

  return result;
}

void sub_254595CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_254596484(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id HUCommonBundle()
{
  if (qword_281122560 != -1)
  {
    dispatch_once(&qword_281122560, &__block_literal_global_0);
  }

  v1 = qword_281122558;

  return v1;
}

uint64_t __HUCommonBundle_block_invoke()
{
  qword_281122558 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id HUCommonImageNamed(void *a1)
{
  v1 = a1;
  v2 = HUCommonNullableImageNamed(v1);
  if (!v2)
  {
    NSLog(&cfstr_MissingImage.isa, v1);
  }

  return v2;
}

id HUCommonNullableImageNamed(void *a1)
{
  v1 = a1;
  if (([v1 isEqualToString:*MEMORY[0x277D13A50]] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", *MEMORY[0x277D13A40]))
  {
    v2 = MEMORY[0x277D755B0];
    v3 = HFHomeAppBundleID();
    v4 = [v2 _applicationIconImageForBundleIdentifier:v3 format:2];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v11 = __HUCommonNullableImageNamed_block_invoke;
    v12 = &unk_27977D718;
    v13 = v1;
    v5 = v13;
    v6 = v10;
    if (qword_281122568 != -1)
    {
      dispatch_once(&qword_281122568, &__block_literal_global_13);
    }

    if (_MergedGlobals_7 == 1)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"HomeUICommon_%@", v5];
      v8 = [MEMORY[0x277D65ED0] systemAppPersistenteCache];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = ___HUCommonLoadCachedImageWithGenerationBlock_block_invoke;
      v14[3] = &unk_27977D740;
      v15 = v6;
      v4 = [v8 imageForKey:v7 generatingIfNecessaryWithBlock:v14];
    }

    else
    {
      v4 = v11(v6);
    }
  }

  return v4;
}

id __HUCommonNullableImageNamed_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D755B0];
  v2 = *(a1 + 32);
  v3 = HUCommonBundle();
  v4 = [v1 imageNamed:v2 inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}