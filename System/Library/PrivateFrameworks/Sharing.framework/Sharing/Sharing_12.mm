uint64_t sub_1A987EC58(uint64_t result, int a2, int a3)
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

uint64_t sub_1A987ECBC(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_1A987ED18(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_1A987EEEC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t sub_1A987F15C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = v2;
  sub_1A99770A0();
  result = swift_getTupleTypeMetadata2();
  if (v5 <= 0x3F)
  {
    if (v3 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      result = sub_1A97C0020();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A987F234(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v7 = (v6 + *(v5 + 80)) & ~*(v5 + 80);
  if (*(v5 + 84))
  {
    v8 = v6;
  }

  else
  {
    v8 = v6 + 1;
  }

  v9 = v8 + v7;
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = 16;
  if (v6 > 0x10)
  {
    v10 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v11 = v10 + 1;
  v12 = 8 * (v10 + 1);
  if ((v10 + 1) <= 3)
  {
    v15 = ((a2 + ~(-1 << v12) - 253) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v15 < 2)
    {
LABEL_30:
      v17 = *(a1 + v10);
      if (v17 >= 3)
      {
        return (v17 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_30;
  }

LABEL_19:
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
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
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

  return (v11 | v16) + 254;
}

void sub_1A987F3D4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 64);
  v9 = (v8 + *(v7 + 80)) & ~*(v7 + 80);
  if (*(v7 + 84))
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 + 1;
  }

  v11 = v10 + v9;
  if (v8 <= v11)
  {
    v8 = v11;
  }

  if (v8 <= 0x10)
  {
    v8 = 16;
  }

  v12 = v8 + 1;
  if (a3 < 0xFE)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 253) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFD)
  {
    v14 = a2 - 254;
    if (v12 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v8 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_44:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v8] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_29;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

unint64_t sub_1A987F610()
{
  result = qword_1EB3B3A90;
  if (!qword_1EB3B3A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3A90);
  }

  return result;
}

unint64_t sub_1A987F668()
{
  result = qword_1EB3B3A98;
  if (!qword_1EB3B3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3A98);
  }

  return result;
}

unint64_t sub_1A987F6C0()
{
  result = qword_1EB3B3AA0;
  if (!qword_1EB3B3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AA0);
  }

  return result;
}

uint64_t sub_1A987F714(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A99E5B60 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E5B80 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

unint64_t sub_1A987F88C()
{
  result = qword_1EB3B3AA8;
  if (!qword_1EB3B3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AA8);
  }

  return result;
}

unint64_t sub_1A987F8E0()
{
  result = qword_1EB3B3AB0;
  if (!qword_1EB3B3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AB0);
  }

  return result;
}

uint64_t sub_1A987F934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A987AFF0(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A987FA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A97B2988;

  return sub_1A987A668(a1, v4, v5, v6);
}

uint64_t sub_1A987FB04(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2988;

  return sub_1A97BD438(a1, v4);
}

uint64_t UTType.init(identifier:allowUndeclared:)@<X0>(char *a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1A9976420();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A99767E0();

  v12 = [objc_opt_self() _typeWithIdentifier_allowUndeclared_];

  v13 = *(v8 + 56);
  if (v12 && (v13(v6, 1, 1, v7), sub_1A987FDEC(), sub_1A9977500(), v12, (*(v8 + 48))(v6, 1, v7) != 1))
  {
    v16 = *(v8 + 32);
    v16(v10, v6, v7);
    v16(a3, v10, v7);
    v14 = a3;
    v15 = 0;
  }

  else
  {
    v14 = a3;
    v15 = 1;
  }

  return (v13)(v14, v15, 1, v7);
}

unint64_t sub_1A987FDEC()
{
  result = qword_1EB3B3AD8;
  if (!qword_1EB3B3AD8)
  {
    sub_1A9976420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AD8);
  }

  return result;
}

uint64_t UTType.init(systemIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;

  UTType.init(identifier:allowUndeclared:)(v8);
  v9 = sub_1A9976420();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A987FFF8(v8);
    v12 = 0;
    v13 = 0xE000000000000000;
    sub_1A99772B0();

    v12 = 0xD00000000000002ELL;
    v13 = 0x80000001A99E5C50;
    MEMORY[0x1AC5895B0](a1, a2);
    result = sub_1A9977470();
    __break(1u);
  }

  else
  {

    return (*(v10 + 32))(a3, v8, v9);
  }

  return result;
}

uint64_t sub_1A987FFF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AD0, &unk_1A99A4490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9880060()
{
  v0 = sub_1A9976420();
  __swift_allocate_value_buffer(v0, qword_1EB3B3AB8);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B3AB8);
  return UTType.init(systemIdentifier:)(0xD00000000000001BLL, 0x80000001A99E5C80, v1);
}

uint64_t static UTType.livePhotoBundle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB3B0B40 != -1)
  {
    swift_once();
  }

  v2 = sub_1A9976420();
  v3 = __swift_project_value_buffer(v2, qword_1EB3B3AB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t SFAirDrop.DisplayPriority.description.getter()
{
  if (*v0)
  {
    return 0x6C616D726F6ELL;
  }

  else
  {
    return 1751607656;
  }
}

uint64_t sub_1A98801B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1751607656 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616D726F6ELL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A988028C(uint64_t a1)
{
  v2 = sub_1A98806A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98802C8(uint64_t a1)
{
  v2 = sub_1A98806A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9880304(uint64_t a1)
{
  v2 = sub_1A988074C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9880340(uint64_t a1)
{
  v2 = sub_1A988074C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A988037C(uint64_t a1)
{
  v2 = sub_1A98806F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98803B8(uint64_t a1)
{
  v2 = sub_1A98806F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.DisplayPriority.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AE0, &qword_1A999D6E0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AE8, &qword_1A999D6E8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3AF0, &qword_1A999D6F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98806A4();
  sub_1A9977AA0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A98806F8();
    v14 = v18;
    sub_1A9977640();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A988074C();
    sub_1A9977640();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A98806A4()
{
  result = qword_1EB3B3AF8;
  if (!qword_1EB3B3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3AF8);
  }

  return result;
}

unint64_t sub_1A98806F8()
{
  result = qword_1EB3B3B00;
  if (!qword_1EB3B3B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B00);
  }

  return result;
}

unint64_t sub_1A988074C()
{
  result = qword_1EB3B3B08;
  if (!qword_1EB3B3B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B08);
  }

  return result;
}

uint64_t SFAirDrop.DisplayPriority.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.DisplayPriority.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B10, &qword_1A999D6F8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B18, &qword_1A999D700);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B20, &unk_1A999D708);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98806A4();
  v12 = v31;
  sub_1A9977A70();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1A9977620();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A97B2970();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A9977300();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v22 = &type metadata for SFAirDrop.DisplayPriority;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1A98806F8();
        sub_1A9977530();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A988074C();
        sub_1A9977530();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

unint64_t sub_1A9880CD4()
{
  result = qword_1EB3B3B28;
  if (!qword_1EB3B3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B28);
  }

  return result;
}

unint64_t sub_1A9880D9C()
{
  result = qword_1EB3B3B30;
  if (!qword_1EB3B3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B30);
  }

  return result;
}

unint64_t sub_1A9880DF4()
{
  result = qword_1EB3B3B38;
  if (!qword_1EB3B3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B38);
  }

  return result;
}

unint64_t sub_1A9880E4C()
{
  result = qword_1EB3B3B40;
  if (!qword_1EB3B3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B40);
  }

  return result;
}

unint64_t sub_1A9880EA4()
{
  result = qword_1EB3B3B48;
  if (!qword_1EB3B3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B48);
  }

  return result;
}

unint64_t sub_1A9880EFC()
{
  result = qword_1EB3B3B50;
  if (!qword_1EB3B3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B50);
  }

  return result;
}

unint64_t sub_1A9880F54()
{
  result = qword_1EB3B3B58;
  if (!qword_1EB3B3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B58);
  }

  return result;
}

unint64_t sub_1A9880FAC()
{
  result = qword_1EB3B3B60;
  if (!qword_1EB3B3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B60);
  }

  return result;
}

uint64_t SFAirDropSend.Request.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropSend.Request(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1A9867B38(v4, v5, v6);
}

uint64_t type metadata accessor for SFAirDropSend.Request(uint64_t a1)
{
  result = qword_1EB3AC6C0;
  if (!qword_1EB3AC6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SFAirDropSend.Request.urls.getter()
{
  type metadata accessor for SFAirDropSend.Request(0);
}

uint64_t SFAirDropSend.Request.endpointID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropSend.Request(0) + 28);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropSend.Request.urlsMetadata.getter()
{
  type metadata accessor for SFAirDropSend.Request(0);
}

uint64_t SFAirDropSend.Request.customPayload.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDropSend.Request(0) + 40);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDropSend.Request.itemPreviewData.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDropSend.Request(0) + 44);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDropSend.Request.itemPreviewData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SFAirDropSend.Request(0) + 44);
  result = sub_1A97D8688(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SFAirDropSend.Request.itemDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropSend.Request(0) + 48));

  return v1;
}

uint64_t SFAirDropSend.Request.itemDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDropSend.Request(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDropSend.Request.requestSource.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropSend.Request(0) + 52));

  return v1;
}

uint64_t SFAirDropSend.Request.requestSource.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDropSend.Request(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDropSend.Request.init(id:type:urls:endpointID:itemPreviewData:itemDescription:requestSource:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = *a2;
  v17 = a2[1];
  v18 = *(a2 + 16);
  v19 = type metadata accessor for SFAirDropSend.Request(0);
  v20 = a9 + v19[11];
  *v20 = xmmword_1A999DA90;
  v21 = (a9 + v19[12]);
  v22 = (a9 + v19[13]);
  sub_1A988369C(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v23 = a9 + v19[5];
  *v23 = v16;
  *(v23 + 8) = v17;
  *(v23 + 16) = v18;
  *(a9 + v19[6]) = a3;
  v24 = v19[7];
  v25 = sub_1A99762C0();
  (*(*(v25 - 8) + 32))(a9 + v24, a4, v25);
  v26 = v19[8];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v27 - 8) + 56))(a9 + v26, 1, 1, v27);
  *(a9 + v19[9]) = 0;
  v28 = (a9 + v19[10]);
  *v28 = a12;
  v28[1] = a13;
  result = sub_1A97D8688(*v20, *(v20 + 8));
  *v20 = a5;
  *(v20 + 8) = a6;
  *v21 = a7;
  v21[1] = a8;
  *v22 = a10;
  v22[1] = a11;
  return result;
}

uint64_t SFAirDropSend.Request.init(id:type:urlsPromise:urlsMetadata:endpointID:itemDescription:requestSource:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *a2;
  v19 = a2[1];
  v20 = *(a2 + 16);
  v21 = type metadata accessor for SFAirDropSend.Request(0);
  v51 = a9 + v21[11];
  v52 = a1;
  *v51 = xmmword_1A999DA90;
  sub_1A98838BC(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v22 = a9 + v21[5];
  *v22 = v18;
  *(v22 + 8) = v19;
  *(v22 + 16) = v20;
  *(a9 + v21[6]) = 0;
  v23 = v21[7];
  v24 = sub_1A99762C0();
  v47 = *(v24 - 8);
  v48 = v24;
  v49 = a5;
  (*(v47 + 16))(a9 + v23, a5);
  v25 = v21[8];
  v50 = a3;
  v26 = a3;
  v27 = a8;
  sub_1A97C13A4(v26, a9 + v25, &qword_1EB3B24E0, &qword_1A999FE90);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  (*(*(v28 - 8) + 56))(a9 + v25, 0, 1, v28);
  *(a9 + v21[9]) = a4;
  v29 = (a9 + v21[10]);
  *v29 = a11;
  v29[1] = a12;
  v30 = *(a4 + 16);

  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 136;
LABEL_2:
  v35 = v34 + 120 * v32;
  while (v30 != v32)
  {
    if (v32 >= *(a4 + 16))
    {
      __break(1u);
      return result;
    }

    ++v32;
    v36 = v35 + 120;
    v37 = *(a4 + v35);
    v35 += 120;
    if (v37 >> 60 != 15)
    {
      v55 = v34;
      v38 = *(a4 + v36 - 128);
      sub_1A97B40FC(v38, v37);
      result = swift_isUniquelyReferenced_nonNull_native();
      v46 = v27;
      if ((result & 1) == 0)
      {
        result = sub_1A97AED8C(0, *(v33 + 16) + 1, 1, v33);
        v33 = result;
      }

      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1A97AED8C((v39 > 1), v40 + 1, 1, v33);
        v33 = result;
      }

      *(v33 + 16) = v40 + 1;
      v41 = v33 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
      v27 = v46;
      v34 = v55;
      goto LABEL_2;
    }
  }

  if (*(v33 + 16))
  {
    v42 = *(v33 + 32);
    v43 = *(v33 + 40);
    sub_1A97B40FC(v42, v43);
  }

  else
  {
    v42 = 0;
    v43 = 0xF000000000000000;
  }

  v44 = (a9 + v21[12]);
  v45 = (a9 + v21[13]);
  (*(v47 + 8))(v49, v48);
  sub_1A97B06FC(v50, &qword_1EB3B24E0, &qword_1A999FE90);
  sub_1A9883924(v52, type metadata accessor for SFAirDrop.TransferIdentifier);
  result = sub_1A97D8688(*v51, *(v51 + 8));
  *v51 = v42;
  *(v51 + 8) = v43;
  *v44 = a6;
  v44[1] = a7;
  *v45 = v27;
  v45[1] = a10;
  return result;
}

uint64_t SFAirDropSend.Request.init(id:type:urlsMetadata:endpointID:itemDescription:requestSource:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = *a2;
  v15 = a2[1];
  v16 = *(a2 + 16);
  v17 = type metadata accessor for SFAirDropSend.Request(0);
  *(a9 + v17[11]) = xmmword_1A999DA90;
  v18 = (a9 + v17[12]);
  v19 = (a9 + v17[13]);
  sub_1A988369C(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v20 = a9 + v17[5];
  *v20 = v14;
  *(v20 + 8) = v15;
  *(v20 + 16) = v16;
  *(a9 + v17[6]) = 0;
  v21 = v17[7];
  v22 = sub_1A99762C0();
  (*(*(v22 - 8) + 32))(a9 + v21, a4, v22);
  v23 = v17[8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  result = (*(*(v24 - 8) + 56))(a9 + v23, 1, 1, v24);
  *(a9 + v17[9]) = a3;
  v26 = (a9 + v17[10]);
  *v26 = a10;
  v26[1] = a11;
  *v18 = a5;
  v18[1] = a6;
  *v19 = a7;
  v19[1] = a8;
  return result;
}

uint64_t SFAirDropSend.Request.requestWithType(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SFAirDropSend.Request(0);
  MEMORY[0x1EEE9AC00](v6);
  v144 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_1A99762C0();
  v8 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v10 = (&v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B68, &qword_1A999DAA0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v126 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v126 - v21;
  v24 = *a1;
  v23 = *(a1 + 8);
  v25 = *(a1 + 16);
  v26 = *(v3 + v6[6]);
  LODWORD(v145) = v25;
  if (v26)
  {
    v27 = v24;
    v28 = v23;
    sub_1A98838BC(v3, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
    (*(v8 + 16))(a2 + v6[7], v3 + v6[7], v146);
    v30 = v6[10];
    v29 = v6[11];
    v31 = *(v3 + v29);
    v139 = *(v3 + v29 + 8);
    v140 = v31;
    v32 = v6[13];
    v33 = (v3 + v6[12]);
    v35 = *v33;
    v34 = v33[1];
    v146 = v35;
    v141 = v34;
    v36 = *(v3 + v32 + 8);
    v144 = *(v3 + v32);
    v138 = v36;
    v37 = (v3 + v30);
    v38 = v37[1];
    v137 = *v37;
    v39 = (a2 + v29);
    *(a2 + v29) = xmmword_1A999DA90;
    v40 = v6[13];
    v142 = (a2 + v6[12]);
    v143 = (a2 + v40);
    v41 = a2 + v6[5];
    v42 = v27;
    *v41 = v27;
    *(v41 + 8) = v28;
    LOBYTE(v27) = v145;
    *(v41 + 16) = v145;
    *(a2 + v6[6]) = v26;
    (*(v18 + 56))(a2 + v6[8], 1, 1, v17);
    *(a2 + v6[9]) = 0;
    v43 = (a2 + v6[10]);
    v44 = v137;
    *v43 = v137;
    v43[1] = v38;
    v45 = *v39;
    v46 = v39[1];

    sub_1A9867B38(v42, v28, v27);
    v48 = v139;
    v47 = v140;
    sub_1A97C1554(v140, v139);
    v49 = v138;

    v50 = v141;

    sub_1A97C1554(v44, v38);
    result = sub_1A97D8688(v45, v46);
    *v39 = v47;
    v39[1] = v48;
    v53 = v142;
    v52 = v143;
    *v142 = v146;
    v53[1] = v50;
    *v52 = v144;
    v52[1] = v49;
    return result;
  }

  v139 = v22;
  v140 = v20;
  v141 = a2;
  v142 = v24;
  v136 = v23;
  v143 = v8;
  sub_1A97C13A4(v3 + v6[8], v16, &qword_1EB3B3B68, &qword_1A999DAA0);
  v54 = (*(v18 + 48))(v16, 1, v17);
  v134 = v18;
  v135 = v17;
  if (v54 == 1)
  {
    v55 = &qword_1EB3B3B68;
    v56 = &qword_1A999DAA0;
    v57 = v16;
LABEL_19:
    sub_1A97B06FC(v57, v55, v56);
    v97 = (v3 + v6[10]);
    v144 = v97[1];
    v98 = v143;
    v99 = v141;
    v100 = v146;
    if (v144 >> 60 == 15 || !*(v3 + v6[9]))
    {
LABEL_25:
      v125 = 0;
      result = sub_1A9977470();
      __break(1u);
    }

    else
    {
      v101 = *(v3 + v6[9]);
      v140 = *v97;
      sub_1A98838BC(v3, v141, type metadata accessor for SFAirDrop.TransferIdentifier);
      (v98[2])(v99 + v6[7], v3 + v6[7], v100);
      v102 = v6[11];
      v103 = (v3 + v6[12]);
      v104 = v103[1];
      v146 = *v103;
      v105 = (v3 + v6[13]);
      v106 = v105[1];
      v143 = *v105;
      *(v99 + v102) = xmmword_1A999DA90;
      v107 = (v99 + v6[12]);
      v108 = (v99 + v6[13]);
      v109 = v99 + v6[5];
      v110 = v142;
      v111 = v135;
      v112 = v136;
      *v109 = v142;
      *(v109 + 8) = v112;
      v113 = v145;
      *(v109 + 16) = v145;
      *(v99 + v6[6]) = 0;
      (*(v134 + 56))(v99 + v6[8], 1, 1, v111);
      *(v99 + v6[9]) = v101;
      v114 = (v99 + v6[10]);
      v115 = v140;
      v116 = v144;
      *v114 = v140;
      v114[1] = v116;
      *v107 = v146;
      v107[1] = v104;
      *v108 = v143;
      v108[1] = v106;
      sub_1A9867B38(v110, v112, v113);
      sub_1A97C1554(v115, v116);
    }

    return result;
  }

  v58 = v139;
  sub_1A97D8380(v16, v139, &qword_1EB3B24E0, &qword_1A999FE90);
  v59 = *(v3 + v6[9]);
  v60 = v136;
  if (!v59)
  {
    v55 = &qword_1EB3B24E0;
    v56 = &qword_1A999FE90;
    v57 = v58;
    goto LABEL_19;
  }

  v133 = type metadata accessor for SFAirDrop.TransferIdentifier;
  sub_1A98838BC(v3, v13, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A97C13A4(v58, v140, &qword_1EB3B24E0, &qword_1A999FE90);
  v61 = v6[7];
  v62 = v13;
  v131 = v143[2];
  v63 = v146;
  v131(v10, v3 + v61, v146);
  v64 = (v3 + v6[12]);
  v65 = *v64;
  v66 = v64[1];
  v67 = (v3 + v6[13]);
  v69 = *v67;
  v68 = v67[1];
  v128 = v69;
  v129 = v65;
  v137 = v66;
  v138 = v68;
  v70 = v6[11];
  v71 = (v3 + v6[10]);
  v72 = *v71;
  v132 = v71[1];
  v73 = v144;
  v127 = (v144 + v70);
  *v127 = xmmword_1A999DA90;
  v130 = v62;
  sub_1A98838BC(v62, v73, v133);
  v74 = v73 + v6[5];
  v75 = v142;
  *v74 = v142;
  *(v74 + 8) = v60;
  v76 = v145;
  *(v74 + 16) = v145;
  *(v73 + v6[6]) = 0;
  v77 = v73 + v6[7];
  v133 = v10;
  v131(v77, v10, v63);
  v78 = v6[8];
  sub_1A97C13A4(v140, v73 + v78, &qword_1EB3B24E0, &qword_1A999FE90);
  (*(v134 + 56))(v73 + v78, 0, 1, v135);
  *(v73 + v6[9]) = v59;
  v79 = (v73 + v6[10]);
  v80 = v132;
  *v79 = v72;
  v79[1] = v80;
  v81 = *(v59 + 16);
  sub_1A9867B38(v75, v136, v76);

  v82 = v137;

  sub_1A97C1554(v72, v80);

  v83 = 0;
  v84 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v85 = (v59 + 136 + 120 * v83);
  while (v81 != v83)
  {
    if (v83 >= *(v59 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    ++v83;
    v86 = v85 + 15;
    v87 = *v85;
    v88 = *v85 >> 60;
    v85 += 15;
    if (v88 <= 0xE)
    {
      v89 = *(v86 - 16);
      sub_1A97B40FC(v89, v87);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_1A97AED8C(0, *(v84 + 2) + 1, 1, v84);
      }

      v91 = *(v84 + 2);
      v90 = *(v84 + 3);
      v92 = v91 + 1;
      if (v91 >= v90 >> 1)
      {
        v145 = v91 + 1;
        v94 = sub_1A97AED8C((v90 > 1), v91 + 1, 1, v84);
        v92 = v145;
        v84 = v94;
      }

      *(v84 + 2) = v92;
      v93 = &v84[16 * v91];
      *(v93 + 4) = v89;
      *(v93 + 5) = v87;
      goto LABEL_7;
    }
  }

  if (*(v84 + 2))
  {
    v95 = *(v84 + 4);
    v96 = *(v84 + 5);
    sub_1A97B40FC(v95, v96);
  }

  else
  {
    v95 = 0;
    v96 = 0xF000000000000000;
  }

  v117 = v143;
  v118 = v129;
  v119 = v82;

  v120 = v144;
  v121 = (v144 + v6[12]);
  v122 = (v144 + v6[13]);
  (v117[1])(v133, v146);
  sub_1A97B06FC(v140, &qword_1EB3B24E0, &qword_1A999FE90);
  sub_1A9883924(v130, type metadata accessor for SFAirDrop.TransferIdentifier);
  sub_1A97B06FC(v139, &qword_1EB3B24E0, &qword_1A999FE90);
  v123 = v127;
  sub_1A97D8688(*v127, *(v127 + 1));
  *v123 = v95;
  v123[1] = v96;
  *v121 = v118;
  *(v121 + 1) = v119;
  v124 = v138;
  *v122 = v128;
  *(v122 + 1) = v124;
  return sub_1A988369C(v120, v141, type metadata accessor for SFAirDropSend.Request);
}

uint64_t sub_1A9882500(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x766572506D657469;
    v6 = 0x637365446D657469;
    if (a1 != 8)
    {
      v6 = 0x5374736575716572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6174654D736C7275;
    if (a1 != 5)
    {
      v7 = 0x61506D6F74737563;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1936487029;
    v3 = 0x746E696F70646E65;
    if (a1 != 3)
    {
      v3 = 0x6D6F7250736C7275;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A988266C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9883E54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9882694(uint64_t a1)
{
  v2 = sub_1A9883704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98826D0(uint64_t a1)
{
  v2 = sub_1A9883704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Request.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B70, &qword_1A999DAA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9883704();
  sub_1A9977AA0();
  LOBYTE(v19) = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  sub_1A98839CC(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v2)
  {
    v9 = type metadata accessor for SFAirDropSend.Request(0);
    v10 = v3 + v9[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v19 = *v10;
    v20 = v11;
    v21 = v12;
    HIBYTE(v18) = 1;
    sub_1A9867B38(v19, v11, v12);
    sub_1A986DAF8();
    sub_1A99776E0();
    sub_1A984D578(v19, v20, v21);
    v19 = *(v3 + v9[6]);
    HIBYTE(v18) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B80, &qword_1A999DAB0);
    sub_1A98837D0(&qword_1EB3B3B88, &qword_1EB3B24B8, &protocol conformance descriptor for SFSecurityScopedURL, MEMORY[0x1E69E6300]);
    sub_1A9977680();
    LOBYTE(v19) = 3;
    sub_1A99762C0();
    sub_1A98839CC(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1A99776E0();
    LOBYTE(v19) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
    sub_1A988386C(&qword_1EB3B3B90, &protocol conformance descriptor for SFXPCBlock<A, B>);
    sub_1A9977680();
    v19 = *(v3 + v9[9]);
    HIBYTE(v18) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B98, &qword_1A999DAB8);
    sub_1A9883758(&qword_1EB3B3BA0, sub_1A980B980, MEMORY[0x1E69E6300]);
    sub_1A9977680();
    v13 = (v3 + v9[10]);
    v14 = v13[1];
    v19 = *v13;
    v20 = v14;
    HIBYTE(v18) = 6;
    sub_1A97C1554(v19, v14);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v19, v20);
    v15 = (v3 + v9[11]);
    v16 = v15[1];
    v19 = *v15;
    v20 = v16;
    HIBYTE(v18) = 7;
    sub_1A97C1554(v19, v16);
    sub_1A9977680();
    sub_1A97D8688(v19, v20);
    LOBYTE(v19) = 8;
    sub_1A9977650();
    LOBYTE(v19) = 9;
    sub_1A9977650();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDropSend.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B68, &qword_1A999DAA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v37 - v4;
  v5 = sub_1A99762C0();
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BA8, &qword_1A999DAC0);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v11 = &v37 - v10;
  v12 = type metadata accessor for SFAirDropSend.Request(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = &v15[*(v13 + 44)];
  *v48 = xmmword_1A999DA90;
  v16 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A9883704();
  v45 = v11;
  v17 = v47;
  sub_1A9977A70();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    sub_1A97D8688(*v48, *(v48 + 1));
  }

  else
  {
    v18 = v7;
    v19 = v42;
    v37 = v5;
    v38 = v12;
    v47 = v15;
    LOBYTE(v49) = 0;
    sub_1A98839CC(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v20 = v43;
    sub_1A99775F0();
    v21 = v47;
    sub_1A988369C(v20, v47, type metadata accessor for SFAirDrop.TransferIdentifier);
    v51 = 1;
    sub_1A986DC5C();
    sub_1A99775F0();
    v22 = v50;
    v23 = v21 + v38[5];
    *v23 = v49;
    *(v23 + 16) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B80, &qword_1A999DAB0);
    v51 = 2;
    sub_1A98837D0(&qword_1EB3B3BB0, &qword_1EB3B24D0, &protocol conformance descriptor for SFSecurityScopedURL, MEMORY[0x1E69E6330]);
    sub_1A9977590();
    *(v21 + v38[6]) = v49;
    LOBYTE(v49) = 3;
    sub_1A98839CC(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v24 = v37;
    sub_1A99775F0();
    v43 = 0;
    (*(v41 + 32))(v21 + v38[7], v18, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B24E0, &qword_1A999FE90);
    LOBYTE(v49) = 4;
    sub_1A988386C(&qword_1EB3B3BB8, &protocol conformance descriptor for SFXPCBlock<A, B>);
    v25 = v40;
    sub_1A9977590();
    sub_1A97D8380(v25, v21 + v38[8], &qword_1EB3B3B68, &qword_1A999DAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3B98, &qword_1A999DAB8);
    v51 = 5;
    sub_1A9883758(&qword_1EB3B3BC0, sub_1A980B9D4, MEMORY[0x1E69E6330]);
    sub_1A9977590();
    *(v21 + v38[9]) = v49;
    v51 = 6;
    sub_1A97B446C();
    sub_1A9977590();
    *(v21 + v38[10]) = v49;
    v51 = 7;
    sub_1A9977590();
    v26 = v49;
    v27 = v48;
    sub_1A97D8688(*v48, *(v48 + 1));
    *v27 = v26;
    LOBYTE(v49) = 8;
    v28 = sub_1A9977550();
    v29 = &v47[v38[12]];
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v49) = 9;
    v31 = sub_1A9977550();
    v33 = v32;
    v34 = v47;
    v35 = &v47[v38[13]];
    (*(v19 + 8))(v45, v44);
    *v35 = v31;
    v35[1] = v33;
    sub_1A98838BC(v34, v39, type metadata accessor for SFAirDropSend.Request);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    return sub_1A9883924(v34, type metadata accessor for SFAirDropSend.Request);
  }
}

BOOL SFAirDropSend.Request.supportsPipelining.getter()
{
  v1 = (v0 + *(type metadata accessor for SFAirDropSend.Request(0) + 20));
  v2 = *(v1 + 16);
  result = 1;
  if (v2 != 1)
  {
    if (v2 != 3)
    {
      return 0;
    }

    v4 = *v1;
    v3 = v1[1];
    if (v4 == 2 && v3 == 0)
    {
      return 0;
    }

    if (v4 != 1 || v3 != 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A988369C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9883704()
{
  result = qword_1EB3B3B78;
  if (!qword_1EB3B3B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3B78);
  }

  return result;
}

uint64_t sub_1A9883758(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3B98, &qword_1A999DAB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98837D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3B80, &qword_1A999DAB0);
    sub_1A98839CC(a2, type metadata accessor for SFSecurityScopedURL, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A988386C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B24E0, &qword_1A999FE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98838BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9883924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A98839CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A9883A3C(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1A9883BA8(319, &qword_1EB3AB6F8, &qword_1EB3B3B80, &qword_1A999DAB0);
    if (v2 <= 0x3F)
    {
      sub_1A99762C0();
      if (v3 <= 0x3F)
      {
        sub_1A9883BA8(319, qword_1EB3AC7A0, &qword_1EB3B24E0, &qword_1A999FE90);
        if (v4 <= 0x3F)
        {
          sub_1A9883BA8(319, &qword_1EB3AB700, &qword_1EB3B3B98, &qword_1A999DAB8);
          if (v5 <= 0x3F)
          {
            sub_1A97D8914(319, &qword_1EB3AC8A8, MEMORY[0x1E6969080]);
            if (v6 <= 0x3F)
            {
              sub_1A97D8914(319, &qword_1EB3AB718, MEMORY[0x1E69E6158]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A9883BA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1A99770A0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _s7RequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7RequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A9883D50()
{
  result = qword_1EB3B3BC8;
  if (!qword_1EB3B3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3BC8);
  }

  return result;
}

unint64_t sub_1A9883DA8()
{
  result = qword_1EB3B3BD0;
  if (!qword_1EB3B3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3BD0);
  }

  return result;
}

unint64_t sub_1A9883E00()
{
  result = qword_1EB3B3BD8;
  if (!qword_1EB3B3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3BD8);
  }

  return result;
}

uint64_t sub_1A9883E54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1936487029 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xEA00000000004449 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6F7250736C7275 && a2 == 0xEB00000000657369 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6174654D736C7275 && a2 == 0xEC00000061746164 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x61506D6F74737563 && a2 == 0xED000064616F6C79 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x766572506D657469 && a2 == 0xEF61746144776569 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x637365446D657469 && a2 == 0xEF6E6F6974706972 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x5374736575716572 && a2 == 0xED0000656372756FLL)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

BOOL SFAirDrop.TransferType.isFiles.getter()
{
  v1 = *(v0 + 16);
  result = 1;
  if (v1 != 1)
  {
    if (v1 != 3)
    {
      return 0;
    }

    if (*(v0 + 8) || *v0 != 1)
    {
      return 0;
    }
  }

  return result;
}

unint64_t SFAirDrop.TransferType.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 16) <= 1u)
  {
    sub_1A99772B0();

    v3 = 0xD000000000000019;
LABEL_5:
    v6 = v3;
    MEMORY[0x1AC5895B0](v2, v1);
    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    return v6;
  }

  if (*(v0 + 16) == 2)
  {
    sub_1A99772B0();

    v3 = 0xD000000000000010;
    goto LABEL_5;
  }

  if (v2 ^ 1 | v1)
  {
    v5 = 0x796150726565702ELL;
  }

  else
  {
    v5 = 0x73656C69662ELL;
  }

  if (v2 | v1)
  {
    return v5;
  }

  else
  {
    return 0x736B6E696C2ELL;
  }
}

uint64_t SFAirDrop.TransferType.exchangeType.getter()
{
  v1 = *(v0 + 16);
  if (v1 > 2)
  {
    return 0;
  }

  v3 = v0;
  v2 = *v0;
  sub_1A9867B38(v2, *(v3 + 8), v1);
  return v2;
}

double static SFAirDrop.TransferType.transferType(for:shouldExchangeContacts:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropSend.Request(0);
  v5 = (a1 + *(v4 + 20));
  v6 = *(v5 + 16);
  if (v6 == 3 && ((v7 = *v5, !*(a1 + *(v4 + 20) + 8)) ? (v8 = v7 == 2) : (v8 = 0), v8))
  {
    *&result = 2;
    *a2 = xmmword_1A999DCC0;
    *(a2 + 16) = 3;
  }

  else
  {
    v9 = *(a1 + *(v4 + 24));

    static SFAirDrop.TransferType.transferType(for:onlyExchange:)(v9, v6 == 2, a2);
  }

  return result;
}

uint64_t static SFAirDrop.TransferType.transferType(for:onlyExchange:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFSecurityScopedURL(0) - 8;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v13 = &v28 - v12;
  if (a2)
  {
    v14 = 2;
    v15 = 0xE300000000000000;
    v16 = 6710134;
    goto LABEL_21;
  }

  if (!a1)
  {
    v15 = 0;
    v14 = 3;
    v16 = 1;
    goto LABEL_21;
  }

  v17 = *(a1 + 16);
  v29 = v17;
  v30 = a3;
  if (v17)
  {
    v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v19 = *(v11 + 72);
    v20 = a1 + v18;
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1A9886678(v20, v13);
      if ((sub_1A9975F70() & 1) == 0)
      {
        goto LABEL_13;
      }

      if (sub_1A9975F90() == 0x636F6C626577 && v22 == 0xE600000000000000)
      {
        break;
      }

      v23 = sub_1A99777E0();

      if (v23)
      {
        goto LABEL_13;
      }

      sub_1A9886740(v13);
LABEL_7:
      v20 += v19;
      if (!--v17)
      {
        goto LABEL_20;
      }
    }

LABEL_13:
    sub_1A98866DC(v13, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1A97BDBC0(0, *(v21 + 16) + 1, 1);
      v21 = v31;
    }

    v26 = *(v21 + 16);
    v25 = *(v21 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1A97BDBC0((v25 > 1), v26 + 1, 1);
      v21 = v31;
    }

    *(v21 + 16) = v26 + 1;
    sub_1A98866DC(v9, v21 + v18 + v26 * v19);
    goto LABEL_7;
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v27 = *(v21 + 16);

  v15 = 0;
  v16 = v27 != v29;
  v14 = 3;
  a3 = v30;
LABEL_21:
  *a3 = v16;
  *(a3 + 8) = v15;
  *(a3 + 16) = v14;
  return result;
}

uint64_t static SFAirDrop.TransferType.transferType(for:onlyExchange:shouldExchangeContacts:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, __int128 *a3@<X8>)
{
  HIDWORD(v32) = a2;
  v33 = a3;
  v35 = sub_1A9976420();
  result = MEMORY[0x1EEE9AC00](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    v34 = (v5 + 8);
    for (i = v8 - 1; ; --i)
    {
      v11 = v9[7];
      v42 = v9[6];
      v43[0] = v11;
      *(v43 + 9) = *(v9 + 121);
      v12 = v9[3];
      v38 = v9[2];
      v39 = v12;
      v13 = v9[5];
      v40 = v9[4];
      v41 = v13;
      v14 = v9[1];
      v37[0] = *v9;
      v37[1] = v14;
      if (v12)
      {
        v15 = *(&v38 + 1);
      }

      else
      {
        v15 = 0;
      }

      if (v12)
      {
        v16 = v39;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      sub_1A980C124(v37, &v36);

      v17 = sub_1A99767E0();
      v18 = [v17 pathExtension];

      v19 = sub_1A9976820();
      v21 = v20;

      if (qword_1EB3B0B70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v35, qword_1EB3EAFB8);
      if (v15 == sub_1A99763D0() && v16 == v22)
      {

LABEL_29:

LABEL_30:

        result = sub_1A980C15C(v37);
LABEL_31:
        v31 = xmmword_1A999DCC0;
LABEL_32:
        v29 = v33;
        *v33 = v31;
        v30 = 3;
        goto LABEL_33;
      }

      v23 = sub_1A99777E0();

      if (v23)
      {
        goto LABEL_29;
      }

      sub_1A99763F0();
      v24 = sub_1A99763D0();
      v26 = v25;
      (*v34)(v7, v35);
      if (v15 == v24 && v16 == v26)
      {
      }

      else
      {
        v27 = sub_1A99777E0();

        if ((v27 & 1) == 0)
        {

          result = sub_1A980C15C(v37);
          if (!i)
          {
            break;
          }

          goto LABEL_24;
        }
      }

      if (v19 == 0x6170726565706B70 && v21 == 0xED0000746E656D79)
      {
        goto LABEL_30;
      }

      v28 = sub_1A99777E0();

      result = sub_1A980C15C(v37);
      if (v28)
      {
        goto LABEL_31;
      }

      if (!i)
      {
        break;
      }

LABEL_24:
      v9 += 9;
    }
  }

  if ((v32 & 0x100000000) == 0)
  {
    v31 = xmmword_1A999DCD0;
    goto LABEL_32;
  }

  v29 = v33;
  *v33 = xmmword_1A999DCE0;
  v30 = 2;
LABEL_33:
  *(v29 + 16) = v30;
  return result;
}

unint64_t sub_1A9884A98()
{
  v1 = *v0;
  v2 = 0x736B6E696CLL;
  v3 = 0xD000000000000011;
  v4 = 0x65676E6168637865;
  if (v1 != 4)
  {
    v4 = 0x6D79615072656570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x73656C6966;
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

uint64_t sub_1A9884B5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98871B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9884B84(uint64_t a1)
{
  v2 = sub_1A988679C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884BC0(uint64_t a1)
{
  v2 = sub_1A988679C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884C0C(uint64_t a1)
{
  v2 = sub_1A9886844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884C48(uint64_t a1)
{
  v2 = sub_1A9886844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884C84(uint64_t a1)
{
  v2 = sub_1A98868EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884CC0(uint64_t a1)
{
  v2 = sub_1A98868EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884CFC(uint64_t a1)
{
  v2 = sub_1A9886898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884D38(uint64_t a1)
{
  v2 = sub_1A9886898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884D74(uint64_t a1)
{
  v2 = sub_1A9886994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884DB0(uint64_t a1)
{
  v2 = sub_1A9886994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A9884E74(uint64_t a1)
{
  v2 = sub_1A9886940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884EB0(uint64_t a1)
{
  v2 = sub_1A9886940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9884EEC(uint64_t a1)
{
  v2 = sub_1A98867F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9884F28(uint64_t a1)
{
  v2 = sub_1A98867F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.TransferType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BE0, &qword_1A999DCF0);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BE8, &qword_1A999DCF8);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BF0, &qword_1A999DD00);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3BF8, &qword_1A999DD08);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C00, &qword_1A999DD10);
  v41 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C08, &qword_1A999DD18);
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C10, &qword_1A999DD20);
  v49 = *(v17 - 8);
  v50 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = *(v1 + 8);
  *&v48 = *v1;
  *(&v48 + 1) = v20;
  v21 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988679C();
  sub_1A9977AA0();
  if (v21 <= 1)
  {
    if (!v21)
    {
      v52 = 1;
      sub_1A9886940();
      v22 = v50;
      sub_1A9977640();
      sub_1A9977690();
      (*(v41 + 8))(v13, v11);
      return (*(v49 + 8))(v19, v22);
    }

    v54 = 3;
    sub_1A9886898();
    v23 = v42;
    v22 = v50;
    sub_1A9977640();
    v24 = v44;
    sub_1A9977690();
    v25 = v43;
LABEL_7:
    (*(v25 + 8))(v23, v24);
    return (*(v49 + 8))(v19, v22);
  }

  if (v21 == 2)
  {
    v55 = 4;
    sub_1A9886844();
    v23 = v45;
    v22 = v50;
    sub_1A9977640();
    v24 = v47;
    sub_1A9977690();
    v25 = v46;
    goto LABEL_7;
  }

  if (v48 == 0)
  {
    v51 = 0;
    sub_1A9886994();
    v31 = v50;
    sub_1A9977640();
    (*(v33 + 8))(v16, v34);
    return (*(v49 + 8))(v19, v31);
  }

  else
  {
    if (v48 ^ 1 | *(&v48 + 1))
    {
      v56 = 5;
      sub_1A98867F0();
      v27 = v38;
      v28 = v50;
      sub_1A9977640();
      v30 = v39;
      v29 = v40;
    }

    else
    {
      v53 = 2;
      sub_1A98868EC();
      v27 = v35;
      v28 = v50;
      sub_1A9977640();
      v30 = v36;
      v29 = v37;
    }

    (*(v30 + 8))(v27, v29);
    return (*(v49 + 8))(v19, v28);
  }
}

uint64_t SFAirDrop.TransferType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (*(v1 + 16) <= 1u)
  {
    if (*(v1 + 16))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

LABEL_7:
    MEMORY[0x1AC58A630](v4);

    return sub_1A99768D0();
  }

  if (*(v1 + 16) == 2)
  {
    v4 = 4;
    goto LABEL_7;
  }

  if (v3 | v2)
  {
    if (v3 ^ 1 | v2)
    {
      v6 = 5;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1AC58A630](v6);
}

uint64_t SFAirDrop.TransferType.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1A9977980();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_7;
  }

  if (v3 == 2)
  {
    v4 = 4;
LABEL_7:
    MEMORY[0x1AC58A630](v4);
    sub_1A99768D0();
    return sub_1A99779B0();
  }

  if (v2 | v1)
  {
    if (v2 ^ 1 | v1)
    {
      v5 = 5;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1AC58A630](v5);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.TransferType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C50, &qword_1A999DD28);
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v50 - v3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C58, &qword_1A999DD30);
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v66 = &v50 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C60, &qword_1A999DD38);
  v59 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v65 = &v50 - v5;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C68, &qword_1A999DD40);
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v64 = &v50 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C70, &qword_1A999DD48);
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C78, &qword_1A999DD50);
  v53 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3C80, &unk_1A999DD58);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v16 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1A988679C();
  v17 = v69;
  sub_1A9977A70();
  if (!v17)
  {
    v18 = v11;
    v50 = v9;
    v51 = v8;
    v20 = v65;
    v19 = v66;
    v21 = v67;
    v52 = v13;
    v22 = v68;
    v69 = v15;
    v23 = sub_1A9977620();
    v24 = (2 * *(v23 + 16)) | 1;
    v71 = v23;
    v72 = v23 + 32;
    v73 = 0;
    v74 = v24;
    v25 = sub_1A97B2984();
    if (v25 == 6 || v73 != v74 >> 1)
    {
      v28 = sub_1A9977300();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v30 = &type metadata for SFAirDrop.TransferType;
      v31 = v69;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v52 + 8))(v31, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v25 > 2u)
      {
        v33 = v52;
        if (v25 == 3)
        {
          v75 = 3;
          sub_1A9886898();
          v38 = v20;
          v39 = v69;
          sub_1A9977530();
          v40 = v54;
          v45 = sub_1A99775A0();
          v41 = v38;
          v47 = v44;
          (*(v59 + 8))(v41, v40);
          (*(v33 + 8))(v39, v12);
          swift_unknownObjectRelease();
          v48 = 1;
        }

        else
        {
          v34 = v69;
          if (v25 == 4)
          {
            v75 = 4;
            sub_1A9886844();
            v35 = v19;
            sub_1A9977530();
            v36 = v60;
            v45 = sub_1A99775A0();
            v47 = v49;
            (*(v62 + 8))(v35, v36);
            (*(v33 + 8))(v34, v12);
            swift_unknownObjectRelease();
            v48 = 2;
          }

          else
          {
            v75 = 5;
            sub_1A98867F0();
            sub_1A9977530();
            (*(v61 + 8))(v21, v63);
            (*(v33 + 8))(v34, v12);
            swift_unknownObjectRelease();
            v47 = 0;
            v48 = 3;
            v45 = 2;
          }
        }
      }

      else if (v25)
      {
        if (v25 == 1)
        {
          v75 = 1;
          sub_1A9886940();
          v26 = v51;
          sub_1A9977530();
          v27 = v57;
          v45 = sub_1A99775A0();
          v47 = v46;
          (*(v55 + 8))(v26, v27);
          (*(v52 + 8))(v69, v12);
          swift_unknownObjectRelease();
          v48 = 0;
        }

        else
        {
          v75 = 2;
          sub_1A98868EC();
          v42 = v64;
          v43 = v69;
          sub_1A9977530();
          (*(v56 + 8))(v42, v58);
          (*(v52 + 8))(v43, v12);
          swift_unknownObjectRelease();
          v47 = 0;
          v48 = 3;
          v45 = 1;
        }
      }

      else
      {
        v75 = 0;
        sub_1A9886994();
        v37 = v69;
        sub_1A9977530();
        (*(v53 + 8))(v18, v50);
        (*(v52 + 8))(v37, v12);
        swift_unknownObjectRelease();
        v45 = 0;
        v47 = 0;
        v48 = 3;
      }

      *v22 = v45;
      *(v22 + 8) = v47;
      *(v22 + 16) = v48;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v70);
}

uint64_t sub_1A988619C(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (*(v1 + 16) <= 1u)
  {
    if (*(v1 + 16))
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }

LABEL_7:
    MEMORY[0x1AC58A630](v4);

    return sub_1A99768D0();
  }

  if (*(v1 + 16) == 2)
  {
    v4 = 4;
    goto LABEL_7;
  }

  if (v3 | v2)
  {
    if (v3 ^ 1 | v2)
    {
      v6 = 5;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1AC58A630](v6);
}

uint64_t sub_1A9886258(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  sub_1A9977980();
  if (v4 <= 1)
  {
    if (v4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 4;
LABEL_7:
    MEMORY[0x1AC58A630](v5);
    sub_1A99768D0();
    return sub_1A99779B0();
  }

  if (v3 | v2)
  {
    if (v3 ^ 1 | v2)
    {
      v6 = 5;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x1AC58A630](v6);
  return sub_1A99779B0();
}

uint64_t _s7Sharing9SFAirDropO12TransferTypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v7 == 2)
      {
        v14 = *a1;
        if (v3 != v6 || v2 != v5)
        {
          v10 = sub_1A99777E0();
          sub_1A9867B38(v6, v5, 2u);
          sub_1A9867B38(v3, v2, 2u);
          sub_1A984D578(v3, v2, 2u);
          v11 = v6;
          v12 = v5;
          v13 = 2;
          goto LABEL_22;
        }

        sub_1A9867B38(v14, v2, 2u);
        sub_1A9867B38(v3, v2, 2u);
        sub_1A984D578(v3, v2, 2u);
        v20 = v3;
        v21 = v2;
        v22 = 2;
        goto LABEL_44;
      }

      goto LABEL_40;
    }

    if (v3 | v2)
    {
      if (!(v3 ^ 1 | v2))
      {
        if (v7 == 3 && v6 == 1 && !v5)
        {
          sub_1A984D578(*a1, v2, 3u);
          v18 = 1;
          sub_1A984D578(1, 0, 3u);
          return v18;
        }

LABEL_40:
        sub_1A9867B38(*a2, *(a2 + 8), v7);
        sub_1A9867B38(v3, v2, v4);
        sub_1A984D578(v3, v2, v4);
        sub_1A984D578(v6, v5, v7);
        return 0;
      }

      if (v7 != 3 || v6 != 2 || v5)
      {
        goto LABEL_40;
      }

      sub_1A984D578(*a1, v2, 3u);
      v20 = 2;
    }

    else
    {
      if (v7 != 3 || (v5 | v6) != 0)
      {
        goto LABEL_40;
      }

      sub_1A984D578(*a1, v2, 3u);
      v20 = 0;
    }

    v21 = 0;
    v22 = 3;
LABEL_44:
    sub_1A984D578(v20, v21, v22);
    return 1;
  }

  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v8 = *a1;
      if (v3 != v6 || v2 != v5)
      {
        v10 = sub_1A99777E0();
        sub_1A9867B38(v6, v5, 0);
        sub_1A9867B38(v3, v2, 0);
        sub_1A984D578(v3, v2, 0);
        v11 = v6;
        v12 = v5;
        v13 = 0;
LABEL_22:
        sub_1A984D578(v11, v12, v13);
        return v10 & 1;
      }

      sub_1A9867B38(v8, v2, 0);
      sub_1A9867B38(v3, v2, 0);
      sub_1A984D578(v3, v2, 0);
      v20 = v3;
      v21 = v2;
      v22 = 0;
      goto LABEL_44;
    }

    goto LABEL_40;
  }

  if (v7 != 1)
  {
    goto LABEL_40;
  }

  if (v3 != v6 || v2 != v5)
  {
    v10 = sub_1A99777E0();
    sub_1A9867B38(v6, v5, 1u);
    sub_1A9867B38(v3, v2, 1u);
    sub_1A984D578(v3, v2, 1u);
    v11 = v6;
    v12 = v5;
    v13 = 1;
    goto LABEL_22;
  }

  v18 = 1;
  sub_1A9867B38(*a1, v2, 1u);
  sub_1A9867B38(v3, v2, 1u);
  sub_1A984D578(v3, v2, 1u);
  sub_1A984D578(v3, v2, 1u);
  return v18;
}

uint64_t sub_1A9886678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98866DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFSecurityScopedURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9886740(uint64_t a1)
{
  v2 = type metadata accessor for SFSecurityScopedURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A988679C()
{
  result = qword_1EB3B3C18;
  if (!qword_1EB3B3C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C18);
  }

  return result;
}

unint64_t sub_1A98867F0()
{
  result = qword_1EB3B3C20;
  if (!qword_1EB3B3C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C20);
  }

  return result;
}

unint64_t sub_1A9886844()
{
  result = qword_1EB3B3C28;
  if (!qword_1EB3B3C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C28);
  }

  return result;
}

unint64_t sub_1A9886898()
{
  result = qword_1EB3B3C30;
  if (!qword_1EB3B3C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C30);
  }

  return result;
}

unint64_t sub_1A98868EC()
{
  result = qword_1EB3B3C38;
  if (!qword_1EB3B3C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C38);
  }

  return result;
}

unint64_t sub_1A9886940()
{
  result = qword_1EB3B3C40;
  if (!qword_1EB3B3C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C40);
  }

  return result;
}

unint64_t sub_1A9886994()
{
  result = qword_1EB3B3C48;
  if (!qword_1EB3B3C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C48);
  }

  return result;
}

unint64_t sub_1A98869EC()
{
  result = qword_1EB3B3C88;
  if (!qword_1EB3B3C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Sharing9SFAirDropO12TransferTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A9886A5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A9886AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A9886AE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1A9886B84()
{
  result = qword_1EB3B3C90;
  if (!qword_1EB3B3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C90);
  }

  return result;
}

unint64_t sub_1A9886BDC()
{
  result = qword_1EB3B3C98;
  if (!qword_1EB3B3C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3C98);
  }

  return result;
}

unint64_t sub_1A9886C34()
{
  result = qword_1EB3B3CA0;
  if (!qword_1EB3B3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CA0);
  }

  return result;
}

unint64_t sub_1A9886C8C()
{
  result = qword_1EB3B3CA8;
  if (!qword_1EB3B3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CA8);
  }

  return result;
}

unint64_t sub_1A9886CE4()
{
  result = qword_1EB3B3CB0;
  if (!qword_1EB3B3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CB0);
  }

  return result;
}

unint64_t sub_1A9886D3C()
{
  result = qword_1EB3B3CB8;
  if (!qword_1EB3B3CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CB8);
  }

  return result;
}

unint64_t sub_1A9886D94()
{
  result = qword_1EB3B3CC0;
  if (!qword_1EB3B3CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CC0);
  }

  return result;
}

unint64_t sub_1A9886DEC()
{
  result = qword_1EB3B3CC8;
  if (!qword_1EB3B3CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CC8);
  }

  return result;
}

unint64_t sub_1A9886E44()
{
  result = qword_1EB3B3CD0;
  if (!qword_1EB3B3CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CD0);
  }

  return result;
}

unint64_t sub_1A9886E9C()
{
  result = qword_1EB3B3CD8;
  if (!qword_1EB3B3CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CD8);
  }

  return result;
}

unint64_t sub_1A9886EF4()
{
  result = qword_1EB3B3CE0;
  if (!qword_1EB3B3CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CE0);
  }

  return result;
}

unint64_t sub_1A9886F4C()
{
  result = qword_1EB3B3CE8;
  if (!qword_1EB3B3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CE8);
  }

  return result;
}

unint64_t sub_1A9886FA4()
{
  result = qword_1EB3B3CF0;
  if (!qword_1EB3B3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CF0);
  }

  return result;
}

unint64_t sub_1A9886FFC()
{
  result = qword_1EB3B3CF8;
  if (!qword_1EB3B3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3CF8);
  }

  return result;
}

unint64_t sub_1A9887054()
{
  result = qword_1EB3B3D00;
  if (!qword_1EB3B3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D00);
  }

  return result;
}

unint64_t sub_1A98870AC()
{
  result = qword_1EB3B3D08;
  if (!qword_1EB3B3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D08);
  }

  return result;
}

unint64_t sub_1A9887104()
{
  result = qword_1EB3B3D10;
  if (!qword_1EB3B3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D10);
  }

  return result;
}

unint64_t sub_1A988715C()
{
  result = qword_1EB3B3D18;
  if (!qword_1EB3B3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D18);
  }

  return result;
}

uint64_t sub_1A98871B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736B6E696CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5D90 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656C6966 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5DB0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E6168637865 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D79615072656570 && a2 == 0xEB00000000746E65)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

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

void SFAirDropSend.Failure.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropSend.Failure(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = a1;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (swift_dynamicCast())
  {

    sub_1A9887528(v6, a2);
  }

  else
  {

    CodableError.init(_:)(a1, v12);
    v8 = v12[1];
    v9 = v15;
    *a2 = v12[0];
    *(a2 + 8) = v8;
    v10 = v14;
    *(a2 + 16) = v13;
    *(a2 + 32) = v10;
    *(a2 + 48) = v9;
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t type metadata accessor for SFAirDropSend.Failure(uint64_t a1)
{
  result = qword_1EB3AC6D0;
  if (!qword_1EB3AC6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A9887528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Failure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDropSend.Failure.errorDescription.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Failure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98878C8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x656C6C65636E6163;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      if (*v3)
      {
        v7 = 0x72756F6A6E6F622DLL;
      }

      else
      {
        v7 = 0;
      }

      if (*v3)
      {
        v8 = 0xE800000000000000;
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      strcpy(v14, "resolveFailure");
      HIBYTE(v14[1]) = -18;
      MEMORY[0x1AC5895B0](v7, v8);
      goto LABEL_16;
    case 2:
      v10 = *v3;
      v9 = *(v3 + 1);
      v11 = *(v3 + 2);
      v14[0] = 0;
      v14[1] = 0xE000000000000000;
      sub_1A99772B0();

      strcpy(v14, "unexpected-");
      HIDWORD(v14[1]) = -352321536;

      MEMORY[0x1AC5895B0](v10, v9);

      MEMORY[0x1AC5895B0](45, 0xE100000000000000);
      v13[1] = v11;
      v12 = sub_1A9977730();
      MEMORY[0x1AC5895B0](v12);

LABEL_16:

      return v14[0];
    case 3:
      return 0xD000000000000010;
    case 4:
      return result;
    case 5:
      return 0xD000000000000015;
    case 6:
      return 0x6575716552646162;
    case 7:
      return 0x6F70736552646162;
    case 8:
      return 0xD000000000000018;
    case 9:
      v6 = 0x6D6165727473;
      goto LABEL_7;
    case 10:
      return 0xD000000000000011;
    case 11:
      return 0xD000000000000011;
    case 12:
      v6 = 0x726576726573;
LABEL_7:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x7245000000000000;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      sub_1A988792C(v3);
      result = 0x45676E697373696DLL;
      break;
  }

  return result;
}

uint64_t sub_1A98878C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Failure(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A988792C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropSend.Failure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A988798C(char a1)
{
  result = 0x656C6C65636E6163;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0x45676E697373696DLL;
      break;
    case 4:
      result = 0x4665766C6F736572;
      break;
    case 5:
      result = 0x6575716552646162;
      break;
    case 6:
      result = 0x6F70736552646162;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      v3 = 0x6D6165727473;
      goto LABEL_16;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      v3 = 0x726576726573;
LABEL_16:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7245000000000000;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7463657078656E75;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1A9887B4C(uint64_t a1)
{
  v2 = sub_1A988B0DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887B88(uint64_t a1)
{
  v2 = sub_1A988B0DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887BC4(uint64_t a1)
{
  v2 = sub_1A988B088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887C00(uint64_t a1)
{
  v2 = sub_1A988B088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887C3C(uint64_t a1)
{
  v2 = sub_1A988B22C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887C78(uint64_t a1)
{
  v2 = sub_1A988B22C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887CBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A988C1B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9887CF0(uint64_t a1)
{
  v2 = sub_1A988AD94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887D2C(uint64_t a1)
{
  v2 = sub_1A988AD94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887D68(uint64_t a1)
{
  v2 = sub_1A988AE90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887DA4(uint64_t a1)
{
  v2 = sub_1A988AE90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887DE0(uint64_t a1)
{
  v2 = sub_1A988B034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887E1C(uint64_t a1)
{
  v2 = sub_1A988B034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887E58(uint64_t a1)
{
  v2 = sub_1A988B184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887E94(uint64_t a1)
{
  v2 = sub_1A988B184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887ED0(uint64_t a1)
{
  v2 = sub_1A988AF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887F0C(uint64_t a1)
{
  v2 = sub_1A988AF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887F48(uint64_t a1)
{
  v2 = sub_1A988AF38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887F84(uint64_t a1)
{
  v2 = sub_1A988AF38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9887FC0(uint64_t a1)
{
  v2 = sub_1A988B280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9887FFC(uint64_t a1)
{
  v2 = sub_1A988B280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9888050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756F6A6E6F62 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98880D8(uint64_t a1)
{
  v2 = sub_1A988B130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9888114(uint64_t a1)
{
  v2 = sub_1A988B130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9888150(uint64_t a1)
{
  v2 = sub_1A988AEE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988818C(uint64_t a1)
{
  v2 = sub_1A988AEE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98881C8(uint64_t a1)
{
  v2 = sub_1A988AFE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9888204(uint64_t a1)
{
  v2 = sub_1A988AFE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9888240(uint64_t a1)
{
  v2 = sub_1A988ADE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988827C(uint64_t a1)
{
  v2 = sub_1A988ADE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98882B8(uint64_t a1)
{
  v2 = sub_1A988B1D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98882F4(uint64_t a1)
{
  v2 = sub_1A988B1D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Failure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D20, &qword_1A999E5A8);
  v105 = *(v2 - 8);
  v106 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v104 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D28, &qword_1A999E5B0);
  v102 = *(v4 - 8);
  *&v103 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v101 = &v65 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D30, &qword_1A999E5B8);
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v65 - v7;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D38, &qword_1A999E5C0);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v65 - v8;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D40, &qword_1A999E5C8);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v65 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D48, &qword_1A999E5D0);
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v65 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D50, &qword_1A999E5D8);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v65 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D58, &qword_1A999E5E0);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v65 - v12;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D60, &qword_1A999E5E8);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v78 = &v65 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D68, &qword_1A999E5F0);
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v73 = &v65 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D70, &qword_1A999E5F8);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v72 = &v65 - v15;
  v75 = sub_1A99762C0();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v71 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D78, &qword_1A999E600);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v65 - v17;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D80, &qword_1A999E608);
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v19 = &v65 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D88, &qword_1A999E610);
  v65 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = type metadata accessor for SFAirDropSend.Failure(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3D90, &qword_1A999E618);
  v27 = *(v26 - 8);
  v108 = v26;
  v109 = v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v65 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988AD94();
  v107 = v29;
  sub_1A9977AA0();
  sub_1A98878C8(v110, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v111) = 4;
      sub_1A988B130();
      v59 = v73;
      v35 = v107;
      v34 = v108;
      sub_1A9977640();
      v60 = v80;
      sub_1A99776A0();
      (*(v76 + 8))(v59, v60);
      goto LABEL_11;
    case 2u:
      v48 = *v25;
      v47 = *(v25 + 1);
      v49 = *(v25 + 6);
      LOBYTE(v111) = 13;
      sub_1A988ADE8();
      v50 = *(v25 + 2);
      v103 = *(v25 + 1);
      v110 = v50;
      v51 = v104;
      v53 = v107;
      v52 = v108;
      sub_1A9977640();
      v111 = v48;
      v112 = v47;
      v113 = v103;
      v114 = v110;
      v115 = v49;
      sub_1A988AE3C();
      v54 = v106;
      sub_1A99776E0();
      (*(v105 + 8))(v51, v54);
      (*(v109 + 8))(v53, v52);

    case 3u:
      LOBYTE(v111) = 0;
      sub_1A988B280();
      v56 = v107;
      v57 = v108;
      sub_1A9977640();
      (*(v65 + 8))(v22, v20);
      return (*(v109 + 8))(v56, v57);
    case 4u:
      LOBYTE(v111) = 1;
      sub_1A988B22C();
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v66 + 8);
      v41 = v19;
      v42 = &v99;
      goto LABEL_18;
    case 5u:
      LOBYTE(v111) = 2;
      sub_1A988B1D8();
      v61 = v68;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v69 + 8);
      v41 = v61;
      v42 = &v102;
      goto LABEL_18;
    case 6u:
      LOBYTE(v111) = 5;
      sub_1A988B0DC();
      v62 = v78;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v81 + 8);
      v41 = v62;
      v42 = &v112;
      goto LABEL_18;
    case 7u:
      LOBYTE(v111) = 6;
      sub_1A988B088();
      v58 = v83;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v84 + 8);
      v41 = v58;
      v42 = &v114;
      goto LABEL_18;
    case 8u:
      LOBYTE(v111) = 7;
      sub_1A988B034();
      v64 = v86;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v87 + 8);
      v41 = v64;
      v42 = &v116;
      goto LABEL_18;
    case 9u:
      LOBYTE(v111) = 8;
      sub_1A988AFE0();
      v46 = v89;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v90 + 8);
      v41 = v46;
      v42 = &v117;
      goto LABEL_18;
    case 0xAu:
      LOBYTE(v111) = 9;
      sub_1A988AF8C();
      v63 = v92;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v93 + 8);
      v41 = v63;
      v42 = &v118;
      goto LABEL_18;
    case 0xBu:
      LOBYTE(v111) = 10;
      sub_1A988AF38();
      v37 = v95;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v40 = *(v96 + 8);
      v41 = v37;
      v42 = &v119;
LABEL_18:
      v40(v41, *(v42 - 32));
      goto LABEL_19;
    case 0xCu:
      LOBYTE(v111) = 11;
      sub_1A988AEE4();
      v43 = v98;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v45 = v99;
      v44 = v100;
      goto LABEL_14;
    case 0xDu:
      LOBYTE(v111) = 12;
      sub_1A988AE90();
      v43 = v101;
      v39 = v107;
      v38 = v108;
      sub_1A9977640();
      v45 = v102;
      v44 = v103;
LABEL_14:
      (*(v45 + 8))(v43, v44);
LABEL_19:
      result = (*(v109 + 8))(v39, v38);
      break;
    default:
      v30 = v74;
      v31 = v71;
      v32 = v75;
      (*(v74 + 32))(v71, v25, v75);
      LOBYTE(v111) = 3;
      sub_1A988B184();
      v33 = v72;
      v35 = v107;
      v34 = v108;
      sub_1A9977640();
      sub_1A97C10E0(&unk_1EB3ACFC0, MEMORY[0x1E69695B0]);
      v36 = v79;
      sub_1A99776E0();
      (*(v77 + 8))(v33, v36);
      (*(v30 + 8))(v31, v32);
LABEL_11:
      result = (*(v109 + 8))(v35, v34);
      break;
  }

  return result;
}

uint64_t SFAirDropSend.Failure.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E18, &qword_1A999E620);
  v142 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v134 = &v95 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E20, &qword_1A999E628);
  v137 = *(v4 - 8);
  v138 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v133 = &v95 - v5;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E28, &qword_1A999E630);
  v121 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v95 - v6;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E30, &qword_1A999E638);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v131 = &v95 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E38, &qword_1A999E640);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v130 = &v95 - v8;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E40, &qword_1A999E648);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v129 = &v95 - v9;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E48, &qword_1A999E650);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v128 = &v95 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E50, &qword_1A999E658);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v127 = &v95 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E58, &qword_1A999E660);
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v126 = &v95 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E60, &qword_1A999E668);
  v108 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v125 = &v95 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E68, &qword_1A999E670);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v124 = &v95 - v14;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E70, &qword_1A999E678);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v141 = &v95 - v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E78, &qword_1A999E680);
  v102 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v139 = &v95 - v16;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E80, &qword_1A999E688);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v123 = &v95 - v17;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3E88, &unk_1A999E690);
  v143 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v19 = &v95 - v18;
  v20 = type metadata accessor for SFAirDropSend.Failure(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v95 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v95 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v95 - v30;
  v32 = a1[3];
  v154 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1A988AD94();
  v33 = v144;
  sub_1A9977A70();
  if (v33)
  {
LABEL_8:
    v50 = v154;
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v95 = v26;
  v97 = v29;
  v96 = v23;
  v34 = v139;
  v144 = 0;
  v35 = v141;
  v36 = v142;
  v98 = v31;
  v37 = v140;
  v38 = sub_1A9977620();
  v39 = (2 * *(v38 + 16)) | 1;
  v150 = v38;
  v151 = v38 + 32;
  v152 = 0;
  v153 = v39;
  v40 = sub_1A97B2980();
  v41 = v19;
  if (v152 != v153 >> 1)
  {
LABEL_6:
    v47 = sub_1A9977300();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v49 = v20;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
LABEL_7:
    (*(v143 + 8))(v41, v37);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v20 = v137;
  v42 = v138;
  v43 = v136;
  switch(v40)
  {
    case 0:
      LOBYTE(v145) = 0;
      sub_1A988B280();
      v44 = v123;
      v45 = v144;
      sub_1A9977530();
      if (v45)
      {
        goto LABEL_7;
      }

      (*(v99 + 8))(v44, v100);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 1:
      LOBYTE(v145) = 1;
      sub_1A988B22C();
      v71 = v144;
      sub_1A9977530();
      if (v71)
      {
        goto LABEL_7;
      }

      (*(v102 + 8))(v34, v101);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 2:
      LOBYTE(v145) = 2;
      sub_1A988B1D8();
      v64 = v144;
      sub_1A9977530();
      if (v64)
      {
        goto LABEL_7;
      }

      (*(v103 + 8))(v35, v104);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 3:
      LOBYTE(v145) = 3;
      sub_1A988B184();
      v65 = v124;
      v66 = v144;
      sub_1A9977530();
      if (v66)
      {
        goto LABEL_7;
      }

      sub_1A99762C0();
      sub_1A97C10E0(&qword_1EB3AD060, MEMORY[0x1E69695D0]);
      v67 = v97;
      v68 = v107;
      sub_1A99775F0();
      (*(v106 + 8))(v65, v68);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v89 = v67;
      goto LABEL_40;
    case 4:
      LOBYTE(v145) = 4;
      sub_1A988B130();
      v54 = v125;
      v55 = v144;
      sub_1A9977530();
      if (v55)
      {
        goto LABEL_7;
      }

      v56 = v41;
      v57 = v105;
      v58 = sub_1A99775B0();
      v59 = v143;
      v86 = v58;
      (*(v108 + 8))(v54, v57);
      (*(v59 + 8))(v56, v37);
      swift_unknownObjectRelease();
      v87 = v86 & 1;
      v88 = v95;
      *v95 = v87;
      swift_storeEnumTagMultiPayload();
      v89 = v88;
LABEL_40:
      v46 = v98;
      sub_1A9887528(v89, v98);
      goto LABEL_37;
    case 5:
      LOBYTE(v145) = 5;
      sub_1A988B0DC();
      v72 = v126;
      v73 = v144;
      sub_1A9977530();
      if (v73)
      {
        goto LABEL_7;
      }

      (*(v110 + 8))(v72, v109);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 6:
      LOBYTE(v145) = 6;
      sub_1A988B088();
      v76 = v127;
      v77 = v144;
      sub_1A9977530();
      if (v77)
      {
        goto LABEL_7;
      }

      (*(v111 + 8))(v76, v112);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 7:
      LOBYTE(v145) = 7;
      sub_1A988B034();
      v69 = v128;
      v70 = v144;
      sub_1A9977530();
      if (v70)
      {
        goto LABEL_7;
      }

      (*(v113 + 8))(v69, v114);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 8:
      LOBYTE(v145) = 8;
      sub_1A988AFE0();
      v80 = v129;
      v81 = v144;
      sub_1A9977530();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v115 + 8))(v80, v116);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 9:
      LOBYTE(v145) = 9;
      sub_1A988AF8C();
      v62 = v130;
      v63 = v144;
      sub_1A9977530();
      if (v63)
      {
        goto LABEL_7;
      }

      (*(v117 + 8))(v62, v118);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 10:
      LOBYTE(v145) = 10;
      sub_1A988AF38();
      v78 = v131;
      v79 = v144;
      sub_1A9977530();
      if (v79)
      {
        goto LABEL_7;
      }

      (*(v119 + 8))(v78, v120);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 11:
      LOBYTE(v145) = 11;
      sub_1A988AEE4();
      v52 = v132;
      v53 = v144;
      sub_1A9977530();
      if (v53)
      {
        goto LABEL_7;
      }

      (*(v121 + 8))(v52, v43);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
      goto LABEL_36;
    case 12:
      LOBYTE(v145) = 12;
      sub_1A988AE90();
      v60 = v133;
      v61 = v144;
      sub_1A9977530();
      if (v61)
      {
        goto LABEL_7;
      }

      (*(v20 + 8))(v60, v42);
      (*(v143 + 8))(v41, v37);
      swift_unknownObjectRelease();
      v46 = v98;
LABEL_36:
      swift_storeEnumTagMultiPayload();
LABEL_37:
      v82 = v154;
      goto LABEL_38;
    case 13:
      LOBYTE(v145) = 13;
      sub_1A988ADE8();
      v74 = v134;
      v75 = v144;
      sub_1A9977530();
      if (v75)
      {
        (*(v143 + 8))(v41, v37);
        swift_unknownObjectRelease();
        v50 = v154;
      }

      else
      {
        v83 = v41;
        sub_1A988B2D4();
        v84 = v122;
        sub_1A99775F0();
        v82 = v154;
        v85 = v143;
        v144 = 0;
        (*(v36 + 8))(v74, v84);
        (*(v85 + 8))(v83, v37);
        swift_unknownObjectRelease();
        v90 = v146;
        v91 = v149;
        v92 = v96;
        *v96 = v145;
        v92[1] = v90;
        v93 = v148;
        *(v92 + 1) = v147;
        *(v92 + 2) = v93;
        v92[6] = v91;
        swift_storeEnumTagMultiPayload();
        v94 = v92;
        v46 = v98;
        sub_1A9887528(v94, v98);
LABEL_38:
        sub_1A9887528(v46, v135);
        v50 = v82;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v50);
}

uint64_t _s7Sharing13SFAirDropSendO7FailureO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A99762C0();
  *&v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropSend.Failure(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v35[-2] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v35[-2] - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35[-2] - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FA8, &qword_1A999F478);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35[-2] - v18;
  v20 = &v35[-2] + *(v17 + 56) - v18;
  sub_1A98878C8(a1, &v35[-2] - v18);
  sub_1A98878C8(a2, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A98878C8(v19, v13);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_31;
      }

      v30 = *v13 ^ *v20;
      sub_1A988792C(v19);
      v29 = v30 ^ 1;
      return v29 & 1;
    case 2u:
      sub_1A98878C8(v19, v10);
      v21 = *(v10 + 1);
      v22 = *(v10 + 4);
      v23 = *(v10 + 6);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v24 = *(v10 + 5);
        v25 = *v20;
        v26 = *(v20 + 1);
        v27 = *(v20 + 6);
        v39[0] = *v10;
        v39[1] = v21;
        v40 = *(v10 + 1);
        v41 = v22;
        v42 = v24;
        v43 = v23;
        v35[0] = v25;
        v35[1] = v26;
        v28 = *(v20 + 1);
        v34 = *(v20 + 2);
        v36 = v28;
        v37 = v34;
        v38 = v27;
        v29 = _s7Sharing12CodableErrorV2eeoiySbAC_ACtFZ_0(v39, v35);

        goto LABEL_34;
      }

      goto LABEL_31;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_31;
      }

LABEL_29:
      sub_1A988792C(v19);
      v29 = 1;
      break;
    default:
      sub_1A98878C8(v19, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v34 + 8))(v15, v4);
LABEL_31:
        sub_1A988C658(v19);
        v29 = 0;
      }

      else
      {
        v32 = v34;
        (*(v34 + 32))(v6, v20, v4);
        v29 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
        v33 = *(v32 + 8);
        v33(v6, v4);
        v33(v15, v4);
LABEL_34:
        sub_1A988792C(v19);
      }

      break;
  }

  return v29 & 1;
}

unint64_t sub_1A988AD94()
{
  result = qword_1EB3B3D98;
  if (!qword_1EB3B3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3D98);
  }

  return result;
}

unint64_t sub_1A988ADE8()
{
  result = qword_1EB3B3DA0;
  if (!qword_1EB3B3DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DA0);
  }

  return result;
}

unint64_t sub_1A988AE3C()
{
  result = qword_1EB3B3DA8;
  if (!qword_1EB3B3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DA8);
  }

  return result;
}

unint64_t sub_1A988AE90()
{
  result = qword_1EB3B3DB0;
  if (!qword_1EB3B3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DB0);
  }

  return result;
}

unint64_t sub_1A988AEE4()
{
  result = qword_1EB3B3DB8;
  if (!qword_1EB3B3DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DB8);
  }

  return result;
}

unint64_t sub_1A988AF38()
{
  result = qword_1EB3B3DC0;
  if (!qword_1EB3B3DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DC0);
  }

  return result;
}

unint64_t sub_1A988AF8C()
{
  result = qword_1EB3B3DC8;
  if (!qword_1EB3B3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DC8);
  }

  return result;
}

unint64_t sub_1A988AFE0()
{
  result = qword_1EB3B3DD0;
  if (!qword_1EB3B3DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DD0);
  }

  return result;
}

unint64_t sub_1A988B034()
{
  result = qword_1EB3B3DD8;
  if (!qword_1EB3B3DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DD8);
  }

  return result;
}

unint64_t sub_1A988B088()
{
  result = qword_1EB3B3DE0;
  if (!qword_1EB3B3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DE0);
  }

  return result;
}

unint64_t sub_1A988B0DC()
{
  result = qword_1EB3B3DE8;
  if (!qword_1EB3B3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DE8);
  }

  return result;
}

unint64_t sub_1A988B130()
{
  result = qword_1EB3B3DF0;
  if (!qword_1EB3B3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DF0);
  }

  return result;
}

unint64_t sub_1A988B184()
{
  result = qword_1EB3B3DF8;
  if (!qword_1EB3B3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3DF8);
  }

  return result;
}

unint64_t sub_1A988B1D8()
{
  result = qword_1EB3B3E00;
  if (!qword_1EB3B3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E00);
  }

  return result;
}

unint64_t sub_1A988B22C()
{
  result = qword_1EB3B3E08;
  if (!qword_1EB3B3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E08);
  }

  return result;
}

unint64_t sub_1A988B280()
{
  result = qword_1EB3B3E10;
  if (!qword_1EB3B3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E10);
  }

  return result;
}

unint64_t sub_1A988B2D4()
{
  result = qword_1EB3B3E90;
  if (!qword_1EB3B3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E90);
  }

  return result;
}

uint64_t sub_1A988B328(uint64_t a1)
{
  result = sub_1A99762C0();
  if (v2 <= 0x3F)
  {
    result = sub_1A988B3A4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A988B3A4()
{
  result = qword_1EB3AB6A0;
  if (!qword_1EB3AB6A0)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EB3AB6A0);
  }

  return result;
}

uint64_t _s7FailureO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7FailureO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A988B608()
{
  result = qword_1EB3B3E98;
  if (!qword_1EB3B3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3E98);
  }

  return result;
}

unint64_t sub_1A988B660()
{
  result = qword_1EB3B3EA0;
  if (!qword_1EB3B3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EA0);
  }

  return result;
}

unint64_t sub_1A988B6B8()
{
  result = qword_1EB3B3EA8;
  if (!qword_1EB3B3EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EA8);
  }

  return result;
}

unint64_t sub_1A988B710()
{
  result = qword_1EB3B3EB0;
  if (!qword_1EB3B3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EB0);
  }

  return result;
}

unint64_t sub_1A988B768()
{
  result = qword_1EB3B3EB8;
  if (!qword_1EB3B3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EB8);
  }

  return result;
}

unint64_t sub_1A988B7C0()
{
  result = qword_1EB3B3EC0;
  if (!qword_1EB3B3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EC0);
  }

  return result;
}

unint64_t sub_1A988B818()
{
  result = qword_1EB3B3EC8;
  if (!qword_1EB3B3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EC8);
  }

  return result;
}

unint64_t sub_1A988B870()
{
  result = qword_1EB3B3ED0;
  if (!qword_1EB3B3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3ED0);
  }

  return result;
}

unint64_t sub_1A988B8C8()
{
  result = qword_1EB3B3ED8;
  if (!qword_1EB3B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3ED8);
  }

  return result;
}

unint64_t sub_1A988B920()
{
  result = qword_1EB3B3EE0;
  if (!qword_1EB3B3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EE0);
  }

  return result;
}

unint64_t sub_1A988B978()
{
  result = qword_1EB3B3EE8;
  if (!qword_1EB3B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EE8);
  }

  return result;
}

unint64_t sub_1A988B9D0()
{
  result = qword_1EB3B3EF0;
  if (!qword_1EB3B3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EF0);
  }

  return result;
}

unint64_t sub_1A988BA28()
{
  result = qword_1EB3B3EF8;
  if (!qword_1EB3B3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3EF8);
  }

  return result;
}

unint64_t sub_1A988BA80()
{
  result = qword_1EB3B3F00;
  if (!qword_1EB3B3F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F00);
  }

  return result;
}

unint64_t sub_1A988BAD8()
{
  result = qword_1EB3B3F08;
  if (!qword_1EB3B3F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F08);
  }

  return result;
}

unint64_t sub_1A988BB30()
{
  result = qword_1EB3B3F10;
  if (!qword_1EB3B3F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F10);
  }

  return result;
}

unint64_t sub_1A988BB88()
{
  result = qword_1EB3B3F18;
  if (!qword_1EB3B3F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F18);
  }

  return result;
}

unint64_t sub_1A988BBE0()
{
  result = qword_1EB3B3F20;
  if (!qword_1EB3B3F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F20);
  }

  return result;
}

unint64_t sub_1A988BC38()
{
  result = qword_1EB3B3F28;
  if (!qword_1EB3B3F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F28);
  }

  return result;
}

unint64_t sub_1A988BC90()
{
  result = qword_1EB3B3F30;
  if (!qword_1EB3B3F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F30);
  }

  return result;
}

unint64_t sub_1A988BCE8()
{
  result = qword_1EB3B3F38;
  if (!qword_1EB3B3F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F38);
  }

  return result;
}

unint64_t sub_1A988BD40()
{
  result = qword_1EB3B3F40;
  if (!qword_1EB3B3F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F40);
  }

  return result;
}

unint64_t sub_1A988BD98()
{
  result = qword_1EB3B3F48;
  if (!qword_1EB3B3F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F48);
  }

  return result;
}

unint64_t sub_1A988BDF0()
{
  result = qword_1EB3B3F50;
  if (!qword_1EB3B3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F50);
  }

  return result;
}

unint64_t sub_1A988BE48()
{
  result = qword_1EB3B3F58;
  if (!qword_1EB3B3F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F58);
  }

  return result;
}

unint64_t sub_1A988BEA0()
{
  result = qword_1EB3B3F60;
  if (!qword_1EB3B3F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F60);
  }

  return result;
}

unint64_t sub_1A988BEF8()
{
  result = qword_1EB3B3F68;
  if (!qword_1EB3B3F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F68);
  }

  return result;
}

unint64_t sub_1A988BF50()
{
  result = qword_1EB3B3F70;
  if (!qword_1EB3B3F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F70);
  }

  return result;
}

unint64_t sub_1A988BFA8()
{
  result = qword_1EB3B3F78;
  if (!qword_1EB3B3F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F78);
  }

  return result;
}

unint64_t sub_1A988C000()
{
  result = qword_1EB3B3F80;
  if (!qword_1EB3B3F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F80);
  }

  return result;
}

unint64_t sub_1A988C058()
{
  result = qword_1EB3B3F88;
  if (!qword_1EB3B3F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F88);
  }

  return result;
}

unint64_t sub_1A988C0B0()
{
  result = qword_1EB3B3F90;
  if (!qword_1EB3B3F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F90);
  }

  return result;
}

unint64_t sub_1A988C108()
{
  result = qword_1EB3B3F98;
  if (!qword_1EB3B3F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3F98);
  }

  return result;
}

unint64_t sub_1A988C160()
{
  result = qword_1EB3B3FA0;
  if (!qword_1EB3B3FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FA0);
  }

  return result;
}

uint64_t sub_1A988C1B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001A99E5E70 == a2;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E5E50 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x45676E697373696DLL && a2 == 0xEF746E696F70646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4665766C6F736572 && a2 == 0xEE006572756C6961 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575716552646162 && a2 == 0xEA00000000007473 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F70736552646162 && a2 == 0xEB0000000065736ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E5E30 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72456D6165727473 && a2 == 0xEB00000000726F72 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5E10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E5DF0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7245726576726573 && a2 == 0xEB00000000726F72 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E5DD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7463657078656E75 && a2 == 0xEA00000000006465)
  {

    return 13;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1A988C658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FA8, &qword_1A999F478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A988C6EC()
{
  if (*v0)
  {
    return 0x654B63696C627570;
  }

  else
  {
    return 7041641;
  }
}

uint64_t sub_1A988C724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7041641 && a2 == 0xE300000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654B63696C627570 && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A988C808(uint64_t a1)
{
  v2 = sub_1A988CC20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988C844(uint64_t a1)
{
  v2 = sub_1A988CC20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A988C880(uint64_t a1)
{
  v2 = sub_1A988CCC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988C8BC(uint64_t a1)
{
  v2 = sub_1A988CCC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A988C8F8(uint64_t a1)
{
  v2 = sub_1A988CC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988C934(uint64_t a1)
{
  v2 = sub_1A988CC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KeyDataFormatStyle.Style.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FB0, &qword_1A999F480);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FB8, &qword_1A999F488);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FC0, &qword_1A999F490);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988CC20();
  sub_1A9977AA0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A988CC74();
    v14 = v18;
    sub_1A9977640();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A988CCC8();
    sub_1A9977640();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A988CC20()
{
  result = qword_1EB3B3FC8;
  if (!qword_1EB3B3FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FC8);
  }

  return result;
}

unint64_t sub_1A988CC74()
{
  result = qword_1EB3B3FD0;
  if (!qword_1EB3B3FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FD0);
  }

  return result;
}

unint64_t sub_1A988CCC8()
{
  result = qword_1EB3B3FD8;
  if (!qword_1EB3B3FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3FD8);
  }

  return result;
}

uint64_t KeyDataFormatStyle.Style.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FE0, &qword_1A999F498);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FE8, &qword_1A999F4A0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FF0, &unk_1A999F4A8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988CC20();
  v12 = v31;
  sub_1A9977A70();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1A9977620();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A97B2970();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A9977300();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v22 = &type metadata for KeyDataFormatStyle.Style;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1A988CC74();
        sub_1A9977530();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A988CCC8();
        sub_1A9977530();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t KeyDataFormatStyle.format(_:)(uint64_t a1, unint64_t a2)
{
  if ((*v2 & 1) == 0)
  {
    v22 = 60;
    v23 = 0xE100000000000000;
    sub_1A97B40FC(a1, a2);
    sub_1A9874500(3, a1, a2, &v20);
    v11 = v20;
    v12 = v21;
    v13 = sub_1A9976040();
    MEMORY[0x1AC5895B0](v13);

    sub_1A97B43C4(v11, v12);
    v14 = 62;
    v15 = 0xE100000000000000;
LABEL_14:
    MEMORY[0x1AC5895B0](v14, v15);
    return v22;
  }

  v22 = 60;
  v23 = 0xE100000000000000;
  sub_1A97B40FC(a1, a2);
  sub_1A9874500(3, a1, a2, &v20);
  v5 = v20;
  v6 = v21;
  v7 = sub_1A9976040();
  MEMORY[0x1AC5895B0](v7);

  sub_1A97B43C4(v5, v6);
  result = MEMORY[0x1AC5895B0](8254, 0xE200000000000000);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v17 = *(a1 + 16);
    v16 = *(a1 + 24);
    v18 = __OFSUB__(v16, v17);
    v10 = v16 - v17;
    if (!v18)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a2);
LABEL_13:
    v20 = v10;
    v19 = sub_1A9977730();
    MEMORY[0x1AC5895B0](v19);

    v14 = 16928;
    v15 = 0xE200000000000000;
    goto LABEL_14;
  }

  LODWORD(v10) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v10 = v10;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A988D3F0(uint64_t a1)
{
  v2 = sub_1A988D5B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A988D42C(uint64_t a1)
{
  v2 = sub_1A988D5B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t KeyDataFormatStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3FF8, &qword_1A999F4B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988D5B4();
  sub_1A9977AA0();
  v10 = v7;
  sub_1A988D608();
  sub_1A99776E0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A988D5B4()
{
  result = qword_1EB3B4000;
  if (!qword_1EB3B4000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4000);
  }

  return result;
}

unint64_t sub_1A988D608()
{
  result = qword_1EB3B4008;
  if (!qword_1EB3B4008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4008);
  }

  return result;
}

uint64_t KeyDataFormatStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B4010, &qword_1A999F4C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A988D5B4();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A988D828();
    sub_1A99775F0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A988D7C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = KeyDataFormatStyle.format(_:)(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1A988D828()
{
  result = qword_1EB3B4018;
  if (!qword_1EB3B4018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4018);
  }

  return result;
}

unint64_t sub_1A988D880()
{
  result = qword_1EB3B4020;
  if (!qword_1EB3B4020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4020);
  }

  return result;
}

unint64_t sub_1A988D8D8()
{
  result = qword_1EB3B4028;
  if (!qword_1EB3B4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4028);
  }

  return result;
}

unint64_t sub_1A988D930()
{
  result = qword_1EB3B4030;
  if (!qword_1EB3B4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4030);
  }

  return result;
}

unint64_t sub_1A988D988()
{
  result = qword_1EB3B4038;
  if (!qword_1EB3B4038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4038);
  }

  return result;
}

unint64_t sub_1A988D9E0()
{
  result = qword_1EB3B4040;
  if (!qword_1EB3B4040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4040);
  }

  return result;
}

unint64_t sub_1A988DA98()
{
  result = qword_1EB3B4048;
  if (!qword_1EB3B4048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4048);
  }

  return result;
}

unint64_t sub_1A988DAF0()
{
  result = qword_1EB3B4050;
  if (!qword_1EB3B4050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4050);
  }

  return result;
}

unint64_t sub_1A988DB48()
{
  result = qword_1EB3B4058;
  if (!qword_1EB3B4058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4058);
  }

  return result;
}

unint64_t sub_1A988DBA0()
{
  result = qword_1EB3B4060;
  if (!qword_1EB3B4060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4060);
  }

  return result;
}

unint64_t sub_1A988DBF8()
{
  result = qword_1EB3B4068;
  if (!qword_1EB3B4068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4068);
  }

  return result;
}

unint64_t sub_1A988DC50()
{
  result = qword_1EB3B4070;
  if (!qword_1EB3B4070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4070);
  }

  return result;
}

unint64_t sub_1A988DCA8()
{
  result = qword_1EB3B4078;
  if (!qword_1EB3B4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4078);
  }

  return result;
}

unint64_t sub_1A988DD00()
{
  result = qword_1EB3B4080;
  if (!qword_1EB3B4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4080);
  }

  return result;
}

unint64_t sub_1A988DD58()
{
  result = qword_1EB3B4088;
  if (!qword_1EB3B4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4088);
  }

  return result;
}

unint64_t sub_1A988DDB0()
{
  result = qword_1EB3B4090;
  if (!qword_1EB3B4090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B4090);
  }

  return result;
}

uint64_t sub_1A988DE10(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - v8;
  v9 = sub_1A9977460();
  v60 = *(v9 - 8);
  v61 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v53 - v14;
  v15 = sub_1A99762C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v53 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v53 - v19;
  v64 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v21 = objc_allocWithZone(v64);

  sub_1A99762B0();
  v22 = *(v16 + 16);
  v22(&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v20, v15);
  v23 = &v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v23 = v69;
  *(v23 + 1) = a2;
  v58 = a2;

  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a3;
  v63 = a3;
  if (a3)
  {
    v24 = sub_1A9976C00();
    (*(*(v24 - 8) + 56))(v62, 1, 1, v24);
    v25 = v53;
    v22(v53, v20, v15);
    v26 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    v29 = v63;
    *(v28 + 4) = v63;
    (*(v16 + 32))(&v28[v26], v25, v15);
    v30 = &v28[v27];
    v31 = v69;
    v32 = v58;
    *v30 = v69;
    *(v30 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v62, &unk_1A9999B40, v28);

    (*(v16 + 8))(v20, v15);
    v33 = v31;
  }

  else
  {
    (*(v16 + 8))(v20, v15);
    v32 = v58;

    v29 = v63;
    v33 = v69;
  }

  v68.receiver = v21;
  v68.super_class = v64;
  v34 = [(objc_class *)&v68 init];

  v69 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v69);

  v62 = sub_1A97BE9E8(v33, v32, v29);

  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v35 = v59;
  sub_1A9977450();
  v36 = v60;
  v37 = v61;
  v38 = *(v60 + 48);
  result = v38(v35, 1, v61);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = *(v36 + 32);
  v41 = v56;
  v40(v56, v35, v37);
  v67 = v64;
  v66[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v66, v41);
  v42(v65, 0);
  v43 = v57;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v54;
  v40(v54, v43, v37);
  v67 = v69;
  v66[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v66, v44);
  v46(v65, 0);
  sub_1A984B090();
  v47 = v55;
  v48 = sub_1A9975E50();

  if (v47)
  {
  }

  else
  {

    v49 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v50 = v64;
    swift_beginAccess();
    if (!*(*(v50 + v49) + 16))
    {
    }

    v51 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v51] + 16))
    {
      v52 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v52] + 16))
      {
      }
    }
  }

  return v48;
}

uint64_t sub_1A988E588(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FDE0, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters(0);
  sub_1A98A8780(&qword_1EB3B2E50, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters, &protocol conformance descriptor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFProximityHandoffInvocations.NearbySharingInteractionViewUpdate.Parameters);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A988ED64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FDD8, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters(0);
  sub_1A98A8780(&qword_1EB3B2E60, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters, &protocol conformance descriptor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFProximityHandoffInvocations.PerformHandoffContentAction.Parameters);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A988F540(objc_class *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v75 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v57 - v12;
  v13 = sub_1A9977460();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v57 - v18;
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v57 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v73 = a3;
  v74 = a4;
  v68 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v68);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v75;
  *(v27 + 1) = a2;
  v62 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a5;
  v67 = a5;
  if (a5)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v66, 1, 1, v28);
    v29 = v57;
    v26(v57, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v67;
    *(v32 + 4) = v67;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v75;
    v36 = v62;
    *v34 = v75;
    *(v34 + 1) = v36;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FDD0, v32);

    (*(v20 + 8))(v24, v19);
    v37 = v35;
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v36 = v62;

    v33 = v67;
    v37 = v75;
  }

  v72.receiver = v25;
  v72.super_class = v68;
  v38 = [(objc_class *)&v72 init];

  v75 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v75);

  v66 = sub_1A97BE9E8(v37, v36, v33);

  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v39 = v63;
  sub_1A9977450();
  v40 = v64;
  v41 = v65;
  v42 = *(v64 + 48);
  result = v42(v39, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v44 = *(v40 + 32);
  v45 = v60;
  v44(v60, v39, v41);
  v71 = v68;
  v70[0] = v38;
  v68 = v38;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v45);
  v46(v69, 0);
  v47 = v61;
  sub_1A9977450();
  result = v42(v47, 1, v41);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v48 = v58;
  v44(v58, v47, v41);
  v71 = v75;
  v70[0] = v66;
  v49 = v66;
  v50 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v48);
  v50(v69, 0);
  sub_1A97B4370();
  v51 = v59;
  v52 = sub_1A9975E50();
  sub_1A97B43C4(v73, v74);

  if (v51)
  {
  }

  else
  {

    v53 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v54 = v68;
    swift_beginAccess();
    if (!*(*(v54 + v53) + 16))
    {
    }

    v55 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v49[v55] + 16))
    {
      v56 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v49[v56] + 16))
      {
      }
    }
  }

  return v52;
}

uint64_t sub_1A988FCE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD78, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDropSend.Request(0);
  sub_1A98A8780(&qword_1EB3B41C8, type metadata accessor for SFAirDropSend.Request, &protocol conformance descriptor for SFAirDropSend.Request);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDropSend.Request);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A98904C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD68, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  sub_1A98A8780(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDrop.TransferIdentifier);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A9890C9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD60, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters(0);
  sub_1A98A8780(&qword_1EB3B41B8, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters, &protocol conformance descriptor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDropInvocations.BecomeTransferPresenter.Parameters);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A9891478(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD50, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  sub_1A98A8780(&qword_1EB3ABB68, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request, &protocol conformance descriptor for SFAirDrop.NearbySharingDiscovery.Request);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A9891C54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v75 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v61 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v55 - v12;
  v13 = sub_1A9977460();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = (&v55 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v56 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v55 - v23;
  v73 = a3;
  v74 = a4;
  v59 = a4;
  v68 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v68);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v75;
  *(v27 + 1) = a2;
  v62 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a5;
  v67 = a5;
  if (a5)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v66, 1, 1, v28);
    v29 = v56;
    v26(v56, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v67;
    *(v32 + 4) = v67;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v62;
    *v34 = v75;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD48, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);
    v35 = v62;

    v33 = v67;
  }

  v72.receiver = v25;
  v72.super_class = v68;
  v36 = objc_msgSendSuper2(&v72, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v75 = sub_1A97BE9E8(v75, v35, v33);

  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v37 = v63;
  sub_1A9977450();
  v38 = v64;
  v39 = v65;
  v40 = *(v64 + 48);
  result = v40(v37, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = *(v38 + 32);
  v43 = v60;
  v42(v60, v37, v39);
  v71 = v68;
  v70[0] = v36;
  v68 = v36;
  v44 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v43);
  v44(v69, 0);
  v45 = v61;
  sub_1A9977450();
  result = v40(v45, 1, v39);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v46 = v57;
  v42(v57, v45, v39);
  v71 = v66;
  v70[0] = v75;
  v47 = v75;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v46);
  v48(v69, 0);
  v49 = v58;
  v50 = sub_1A9975E50();

  if (v49)
  {
  }

  else
  {

    v51 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v52 = v68;
    swift_beginAccess();
    if (!*(*(v52 + v51) + 16))
    {
    }

    v53 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v47[v53] + 16))
    {
      v54 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v47[v54] + 16))
      {
      }
    }
  }

  return v50;
}

uint64_t sub_1A9892408(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD40, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  sub_1A98A8780(&qword_1EB3B41A8, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest, &protocol conformance descriptor for SFAirDrop.NearbySharingAssertionRequest);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A9892BE4(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v71 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v62 = v54 - v9;
  v66 = sub_1A9977460();
  v63 = *(v66 - 8);
  v10 = MEMORY[0x1EEE9AC00](v66);
  v55 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v59 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v64 = (v54 - v14);
  v15 = sub_1A99762C0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v54[0] = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v54 - v19;
  v65 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v21 = objc_allocWithZone(v65);

  sub_1A99762B0();
  v22 = *(v16 + 16);
  v22(&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v20, v15);
  v23 = &v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v23 = v71;
  *(v23 + 1) = a2;
  v61 = a2;

  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v21[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v56 = v15;
  if (a4)
  {
    v24 = sub_1A9976C00();
    (*(*(v24 - 8) + 56))(v64, 1, 1, v24);
    v25 = v54[0];
    v22(v54[0], v20, v15);
    v26 = (*(v16 + 80) + 40) & ~*(v16 + 80);
    v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    *(v28 + 2) = 0;
    *(v28 + 3) = 0;
    *(v28 + 4) = a4;
    (*(v16 + 32))(&v28[v26], v25, v15);
    v29 = &v28[v27];
    v30 = v61;
    *v29 = v71;
    *(v29 + 1) = v30;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v64, &unk_1A999FD08, v28);

    v64 = *(v16 + 8);
    (v64)(v20, v15);
  }

  else
  {
    v64 = *(v16 + 8);
    (v64)(v20, v15);
    v30 = v61;
  }

  v54[1] = v16;
  v70.receiver = v21;
  v70.super_class = v65;
  v31 = objc_msgSendSuper2(&v70, sel_init);

  v61 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v61);

  v54[0] = sub_1A97BE9E8(v71, v30, a4);
  v71 = a4;

  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v32 = v62;
  sub_1A9977450();
  v33 = v63;
  v34 = *(v63 + 48);
  v35 = v66;
  result = v34(v32, 1, v66);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v37 = *(v33 + 32);
  v38 = v59;
  v37(v59, v32, v35);
  v69 = v65;
  v68[0] = v31;
  v65 = v31;
  v39 = sub_1A9975E60();
  sub_1A97DCC4C(v68, v38);
  v39(v67, 0);
  v40 = v66;
  v41 = v60;
  sub_1A9977450();
  result = v34(v41, 1, v40);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v42 = v55;
  v37(v55, v41, v40);
  v69 = v61;
  v68[0] = v54[0];
  v43 = v54[0];
  v44 = sub_1A9975E60();
  sub_1A97DCC4C(v68, v42);
  v44(v67, 0);
  sub_1A98A8780(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  v45 = v58;
  v46 = v56;
  v47 = v57;
  v48 = sub_1A9975E50();
  if (v47)
  {
    (v64)(v45, v46);
  }

  else
  {
    v49 = v48;
    (v64)(v45, v46);

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v65;
    swift_beginAccess();
    if (!*(*(v51 + v50) + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v43[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v43[v53] + 16))
      {
      }
    }

    return v49;
  }
}

uint64_t sub_1A9893418(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD38, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  sub_1A98A8780(&qword_1EB3B4198, type metadata accessor for SFAirDrop.NearbySharingInteraction, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDrop.NearbySharingInteraction);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A9893BF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD28, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0);
  sub_1A98A8780(&qword_1EB3B4180, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction, &protocol conformance descriptor for SFAirDropClient.BoopAtADistance.Transaction);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A98943D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD30, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters(0);
  sub_1A98A8780(&qword_1EB3B4188, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters, &protocol conformance descriptor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A98A87C8(v47, type metadata accessor for SFAirDropInvocations.BoopAtADistanceUpdate.Parameters);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A9894BAC(objc_class *a1, uint64_t a2, char a3, uint64_t a4)
{
  v68 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - v10;
  v11 = sub_1A9977460();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v55 - v16;
  v17 = sub_1A99762C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v73 = a3;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v23 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v24 = *(v18 + 16);
  v24(&v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v22, v17);
  v25 = &v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v25 = v68;
  *(v25 + 1) = a2;
  v61 = a2;

  *&v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v66 = a4;
  if (a4)
  {
    v26 = sub_1A9976C00();
    (*(*(v26 - 8) + 56))(v65, 1, 1, v26);
    v27 = v56;
    v24(v56, v22, v17);
    v28 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v29 = (v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    v31 = v66;
    *(v30 + 4) = v66;
    (*(v18 + 32))(&v30[v28], v27, v17);
    v32 = &v30[v29];
    v33 = v68;
    v34 = v61;
    *v32 = v68;
    *(v32 + 1) = v34;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v65, &unk_1A999FD20, v30);

    (*(v18 + 8))(v22, v17);
    v35 = v33;
  }

  else
  {
    (*(v18 + 8))(v22, v17);
    v34 = v61;

    v31 = v66;
    v35 = v68;
  }

  v72.receiver = v23;
  v72.super_class = v67;
  v36 = [(objc_class *)&v72 init];

  v68 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v68);

  v65 = sub_1A97BE9E8(v35, v34, v31);

  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v37 = v62;
  sub_1A9977450();
  v38 = v63;
  v39 = v64;
  v40 = *(v63 + 48);
  result = v40(v37, 1, v64);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = *(v38 + 32);
  v43 = v59;
  v42(v59, v37, v39);
  v71 = v67;
  v70[0] = v36;
  v67 = v36;
  v44 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v43);
  v44(v69, 0);
  v45 = v60;
  sub_1A9977450();
  result = v40(v45, 1, v39);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v46 = v57;
  v42(v57, v45, v39);
  v71 = v68;
  v70[0] = v65;
  v47 = v65;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v46);
  v48(v69, 0);
  sub_1A98A7E54();
  v49 = v58;
  v50 = sub_1A9975E50();

  if (v49)
  {
  }

  else
  {

    v51 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v52 = v67;
    swift_beginAccess();
    if (!*(*(v52 + v51) + 16))
    {
    }

    v53 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v47[v53] + 16))
    {
      v54 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v47[v54] + 16))
      {
      }
    }
  }

  return v50;
}

uint64_t sub_1A9895338(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v72 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v54 - v9;
  v10 = sub_1A9977460();
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = &v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = (&v54 - v15);
  v16 = sub_1A99762C0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v61 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v22 = objc_allocWithZone(v61);

  sub_1A99762B0();
  v23 = *(v17 + 16);
  v23(&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v21, v16);
  v24 = &v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v24 = v72;
  *(v24 + 1) = a2;
  v62 = a2;

  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v22[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v67 = a4;
  if (a4)
  {
    v25 = sub_1A9976C00();
    (*(*(v25 - 8) + 56))(v66, 1, 1, v25);
    v26 = v55;
    v23(v55, v21, v16);
    v27 = (*(v17 + 80) + 40) & ~*(v17 + 80);
    v28 = (v18 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v67;
    *(v29 + 4) = v67;
    (*(v17 + 32))(&v29[v27], v26, v16);
    v31 = &v29[v28];
    v32 = v62;
    *v31 = v72;
    *(v31 + 1) = v32;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v66, &unk_1A999FD18, v29);

    (*(v17 + 8))(v21, v16);
  }

  else
  {
    (*(v17 + 8))(v21, v16);
    v32 = v62;

    v30 = v67;
  }

  v33 = v61;
  v71.receiver = v22;
  v71.super_class = v61;
  v34 = objc_msgSendSuper2(&v71, sel_init);

  v66 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v66);

  v62 = sub_1A97BE9E8(v72, v32, v30);

  sub_1A9975E80();
  swift_allocObject();
  v72 = sub_1A9975E70();
  v35 = v63;
  sub_1A9977450();
  v36 = v64;
  v37 = v65;
  v38 = v64[6];
  result = v38(v35, 1, v65);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v40 = v36[4];
  v41 = v59;
  v40(v59, v35, v37);
  v70 = v33;
  v69[0] = v34;
  v64 = v34;
  v42 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v41);
  v42(v68, 0);
  v43 = v60;
  sub_1A9977450();
  result = v38(v43, 1, v37);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v44 = v56;
  v40(v56, v43, v37);
  v70 = v66;
  v69[0] = v62;
  v45 = v62;
  v46 = sub_1A9975E60();
  sub_1A97DCC4C(v69, v44);
  v46(v68, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470);
  sub_1A97AF974(&qword_1EB3B1950, &qword_1EB3B17A8, &unk_1A9999470, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
  v47 = v58;
  v48 = v57;
  v49 = sub_1A9975E50();
  sub_1A97B06FC(v47, &qword_1EB3B17A8, &unk_1A9999470);

  if (v48)
  {
  }

  else
  {

    v50 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v51 = v64;
    swift_beginAccess();
    if (!*(*&v51[v50] + 16))
    {
    }

    v52 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v45[v52] + 16))
    {
      v53 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v45[v53] + 16))
      {
      }
    }
  }

  return v49;
}

uint64_t sub_1A9895B10(objc_class *a1, uint64_t a2, char a3, uint64_t a4)
{
  v68 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - v10;
  v11 = sub_1A9977460();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v57 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v55 - v16;
  v17 = sub_1A99762C0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v56 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v73 = a3;
  v67 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v23 = objc_allocWithZone(v67);

  sub_1A99762B0();
  v24 = *(v18 + 16);
  v24(&v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v22, v17);
  v25 = &v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v25 = v68;
  *(v25 + 1) = a2;
  v61 = a2;

  *&v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v23[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v66 = a4;
  if (a4)
  {
    v26 = sub_1A9976C00();
    (*(*(v26 - 8) + 56))(v65, 1, 1, v26);
    v27 = v56;
    v24(v56, v22, v17);
    v28 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v29 = (v19 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    v31 = v66;
    *(v30 + 4) = v66;
    (*(v18 + 32))(&v30[v28], v27, v17);
    v32 = &v30[v29];
    v33 = v68;
    v34 = v61;
    *v32 = v68;
    *(v32 + 1) = v34;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v65, &unk_1A999FCF8, v30);

    (*(v18 + 8))(v22, v17);
    v35 = v33;
  }

  else
  {
    (*(v18 + 8))(v22, v17);
    v34 = v61;

    v31 = v66;
    v35 = v68;
  }

  v72.receiver = v23;
  v72.super_class = v67;
  v36 = [(objc_class *)&v72 init];

  v68 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v68);

  v65 = sub_1A97BE9E8(v35, v34, v31);

  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v37 = v62;
  sub_1A9977450();
  v38 = v63;
  v39 = v64;
  v40 = *(v63 + 48);
  result = v40(v37, 1, v64);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = *(v38 + 32);
  v43 = v59;
  v42(v59, v37, v39);
  v71 = v67;
  v70[0] = v36;
  v67 = v36;
  v44 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v43);
  v44(v69, 0);
  v45 = v60;
  sub_1A9977450();
  result = v40(v45, 1, v39);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v46 = v57;
  v42(v57, v45, v39);
  v71 = v68;
  v70[0] = v65;
  v47 = v65;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v70, v46);
  v48(v69, 0);
  sub_1A98A7C80();
  v49 = v58;
  v50 = sub_1A9975E50();

  if (v49)
  {
  }

  else
  {

    v51 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v52 = v67;
    swift_beginAccess();
    if (!*(*(v52 + v51) + 16))
    {
    }

    v53 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v47[v53] + 16))
    {
      v54 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v47[v54] + 16))
      {
      }
    }
  }

  return v50;
}

uint64_t sub_1A989629C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {

    v10 = v8;
    v8 = sub_1A9976070();
    v12 = v11;
  }

  else
  {

    v12 = 0xF000000000000000;
  }

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = a5;
  v9(v8, v12, a3, a4, a5);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_1A97D8688(v8, v12);
}

char *sub_1A9896380(uint64_t a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v80 = a4;
  v81 = a3;
  v98 = *MEMORY[0x1E69E9840];
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v84 = &v78 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v85 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v78 - v17;
  v88[1] = "syncXPC";
  v88[2] = 7;
  v89 = 2;
  v90 = 2;
  v91.opaque[0] = 0;
  v91.opaque[1] = 0;
  LODWORD(v97[0]) = 2;
  SF_os_activity.init(_:dso:options:)(aBlock, &dword_1A9662000, "syncXPC", 2, v97);
  if (aBlock[0])
  {
    os_activity_scope_enter(aBlock[0], &v91);
    swift_unknownObjectRelease();
  }

  v79 = v12;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v19 = sub_1A99764A0();
  __swift_project_value_buffer(v19, qword_1EB3AD0F0);

  v20 = sub_1A9976480();
  v21 = sub_1A9976F90();

  v22 = os_log_type_enabled(v20, v21);
  v87 = v8;
  v86 = v18;
  v83 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_1A97AF148(a1, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v20, v21, "syncXPC [%{public}s] START -- Client", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x1AC58D2C0](v24, -1, -1);
    MEMORY[0x1AC58D2C0](v23, -1, -1);
  }

  v25 = swift_allocObject();
  v25[2].isa = 0;
  p_isa = &v25[2].isa;
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_1A98A88F4;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989D634;
    aBlock[3] = &block_descriptor_338;
    v27 = _Block_copy(aBlock);
    swift_retain_n();
    v28 = [v5 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v27);
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v97, 0, sizeof(v97));
  }

  swift_beginAccess();
  v29 = *p_isa;
  if (*p_isa)
  {
    v94 = *p_isa;
    v30 = v29;
    v31 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v32 = sub_1A99777A0();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = swift_allocError();
      *v38 = v29;
    }

    v37 = v87;
    swift_willThrow();

    sub_1A97B06FC(v97, &qword_1EB3B0BA0, &unk_1A99923D0);
LABEL_18:

    goto LABEL_19;
  }

  v34 = v82;
  v35 = sub_1A97B67BC(v97, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 194);
  v33 = v34;
  if (v34)
  {
LABEL_15:
    sub_1A97B06FC(v97, &qword_1EB3B0BA0, &unk_1A99923D0);

    v37 = v87;
LABEL_19:
    v39 = v85;
    v40 = v86;
    (*(v9 + 16))(v85, v86, v37);

    v41 = v33;
    disableAirDropTLS();
    disableAirDropTLS();
    v42 = sub_1A9976480();
    v43 = sub_1A9976F70();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v39;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v81 = v46;
      v82 = swift_slowAlloc();
      *&v97[0] = v82;
      *v45 = 136446978;
      *(v45 + 4) = sub_1A97AF148(v83, a2, v97);
      *(v45 + 12) = 2114;
      v47 = sub_1A9975F10();
      *(v45 + 14) = v47;
      *v46 = v47;
      *(v45 + 22) = 1040;
      *(v45 + 24) = 3;
      *(v45 + 28) = 2048;
      v48 = v43;
      v43 = v84;
      sub_1A9976220();
      sub_1A99760D0();
      v50 = v49;
      v51 = *(v9 + 8);
      v51(v43, v87);
      v51(v44, v87);
      *(v45 + 30) = v50;
      _os_log_impl(&dword_1A9662000, v42, v48, "syncXPC [%{public}s] FAIL -- Client {error: %{public}@, duration: %.*f}", v45, 0x26u);
      v52 = v81;
      sub_1A97B06FC(v81, &unk_1EB3B2A50, &unk_1A9999420);
      MEMORY[0x1AC58D2C0](v52, -1, -1);
      v53 = v82;
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      v37 = v87;
      MEMORY[0x1AC58D2C0](v53, -1, -1);
      v40 = v86;
      MEMORY[0x1AC58D2C0](v45, -1, -1);
    }

    else
    {

      v51 = *(v9 + 8);
      v51(v39, v37);
    }

    swift_willThrow();
    v51(v40, v37);
    os_activity_scope_leave(&v91);
    return v43;
  }

  v88[0] = v35;
  v36 = v35;
  v81(&v94, v88);
  v82 = v36;
  v55 = *p_isa;
  if (*p_isa)
  {
    v93 = *p_isa;
    v56 = v55;
    v57 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v58 = sub_1A99777A0();
    if (v58)
    {
      v33 = v58;
    }

    else
    {
      v33 = swift_allocError();
      *v76 = v55;
    }

    v37 = v87;
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1A97B06FC(v97, &qword_1EB3B0BA0, &unk_1A99923D0);
    sub_1A98A86C8(v94, v95, v96);
    goto LABEL_18;
  }

  v59 = v96;
  if (v96 == 255)
  {
    sub_1A97BCDE0();
    v33 = swift_allocError();
    *v77 = xmmword_1A999FA70;
    *(v77 + 16) = 0xD000000000000051;
    *(v77 + 24) = 0x80000001A99E51F0;
    *(v77 + 32) = 197;
    *(v77 + 80) = 0x2000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v61 = v94;
  v60 = v95;
  v62 = v87;
  (*(v9 + 16))(v79, v86, v87);

  v81 = v61;
  LODWORD(v85) = v59;
  sub_1A98A86A0(v61, v60, v59);
  disableAirDropTLS();
  disableAirDropTLS();
  v63 = sub_1A9976480();
  v64 = sub_1A9976F90();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v93 = v80;
    *v65 = 136446722;
    *(v65 + 4) = sub_1A97AF148(v83, a2, &v93);
    *(v65 + 12) = 1040;
    *(v65 + 14) = 3;
    *(v65 + 18) = 2048;
    v66 = v84;
    sub_1A9976220();
    v67 = v79;
    LODWORD(v83) = v64;
    sub_1A99760D0();
    v69 = v68;
    v70 = *(v9 + 8);
    v71 = v66;
    v72 = v87;
    v70(v71, v87);
    v70(v67, v72);
    *(v65 + 20) = v69;
    _os_log_impl(&dword_1A9662000, v63, v83, "syncXPC [%{public}s] END -- Client {duration: %.*f}", v65, 0x1Cu);
    v73 = v80;
    __swift_destroy_boxed_opaque_existential_0Tm(v80);
    MEMORY[0x1AC58D2C0](v73, -1, -1);
    MEMORY[0x1AC58D2C0](v65, -1, -1);
    swift_unknownObjectRelease();

    sub_1A97B06FC(v97, &qword_1EB3B0BA0, &unk_1A99923D0);
    v74 = v86;
    v75 = v72;
  }

  else
  {

    v70 = *(v9 + 8);
    v70(v79, v62);
    swift_unknownObjectRelease();
    sub_1A97B06FC(v97, &qword_1EB3B0BA0, &unk_1A99923D0);
    v74 = v86;
    v75 = v62;
  }

  v70(v74, v75);
  v43 = v81;
  sub_1A98A86C8(v81, v60, v85);

  os_activity_scope_leave(&v91);
  return v43;
}