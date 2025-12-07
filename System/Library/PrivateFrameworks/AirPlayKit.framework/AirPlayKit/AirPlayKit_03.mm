uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8B7E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E8B7F00()
{
  result = qword_27E35EF30;
  if (!qword_27E35EF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35EF30);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23E8B7F60(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23E8B7FA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E8B8004()
{
  sub_23E900CB4();

  strcpy(v19, "Transaction (");
  HIWORD(v19[1]) = -4864;
  v1 = *(v0 + *(type metadata accessor for RenderTransactionAction(0) + 20));
  *&v16 = *(v1 + 16);
  v2 = sub_23E900DD4();
  MEMORY[0x23EF17600](v2);

  result = MEMORY[0x23EF17600](1528838697, 0xE400000000000000);
  v20 = v19[0];
  v21 = v19[1];
  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v1 + 32;
    while (v5 < *(v1 + 16))
    {
      v19[0] = v5;
      sub_23E8810DC(v6, &v19[1]);
      sub_23E8810DC(&v19[1], &v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF38, &qword_23E9057E0);
      if (swift_dynamicCast())
      {
        v7 = *(&v17 + 1);
        v8 = v18;
        __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
        v9 = (*(v8 + 8))(v7, v8);
        v11 = v10;
        __swift_destroy_boxed_opaque_existential_1(&v16);
      }

      else
      {
        v18 = 0;
        v16 = 0u;
        v17 = 0u;
        sub_23E87E458(&v16, &qword_27E35EF40, &qword_23E9057E8);
        v9 = 0;
        v11 = 0;
      }

      v14 = 2314;
      v15 = 0xE200000000000000;
      *&v16 = v5;
      v12 = sub_23E900DD4();
      MEMORY[0x23EF17600](v12);

      MEMORY[0x23EF17600](2108704, 0xE300000000000000);
      if (!v11)
      {
        sub_23E8810DC(&v19[1], &v16);
        v9 = sub_23E9008D4();
        v11 = v13;
      }

      ++v5;
      MEMORY[0x23EF17600](v9, v11);

      MEMORY[0x23EF17600](v14, v15);

      result = sub_23E87E458(v19, qword_27E35EF48, &unk_23E9057F0);
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    MEMORY[0x23EF17600](23818, 0xE200000000000000);
    return v20;
  }

  return result;
}

uint64_t sub_23E8B82D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23E9006D4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ContainerContent.Child.id.getter(v9);
  sub_23E882004(a3, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = &qword_27E35E438;
      v12 = &unk_23E907E20;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v13 = sub_23E8A25C4();
    }

    else
    {
      v11 = &qword_27E35E430;
      v12 = &unk_23E902C80;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v13 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v11 = &unk_27E35E440;
    v12 = &unk_23E902C90;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v13 = sub_23E8A26F8();
  }

  else
  {
    v11 = &unk_27E35E630;
    v12 = &qword_23E903300;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v13 = sub_23E8A2828();
  }

  v19 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_23E87E3F0(v6, boxed_opaque_existential_1, v11, v12);
  return sub_23E8F7C3C(v17, v9);
}

uint64_t RenderNode.withContentSemantic(_:)@<X0>(char *a1@<X0>, uint64_t x8_0@<X8>)
{
  v4 = *a1;
  KeyPath = swift_getKeyPath();
  v7 = v4;
  sub_23E8CCC04(KeyPath, &v7, x8_0);
}

uint64_t RenderNode.withPosition(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v8[0] = a1;
  v8[1] = a2;
  v9 = a3;
  v10 = WORD2(a3);
  KeyPath = swift_getKeyPath();
  sub_23E8CCC04(KeyPath, v8, x8_0);
}

uint64_t RenderNode.withSize(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v7 = a2 >> 40;
  KeyPath = swift_getKeyPath();
  v10 = a1;
  v12 = BYTE4(a2);
  v11 = a2;
  v13 = v7;
  sub_23E8CCC04(KeyPath, &v10, x8_0);
}

uint64_t RenderNode.withTransform(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t x8_0@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13[0] = a1;
  v13[1] = a2;
  v13[2] = a3;
  v14 = a4;
  sub_23E8CCC04(KeyPath, v13, x8_0);
}

uint64_t sub_23E8B86CC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t x8_0@<X8>)
{
  KeyPath = swift_getKeyPath();
  v10 = a1;
  v11 = a2;
  sub_23E8CCC04(KeyPath, &v10, x8_0);
}

uint64_t RenderNode.withBackgroundColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t x8_0@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11[0] = a1;
  v11[1] = a2;
  v12 = a3;
  sub_23E8CCC04(KeyPath, v11, x8_0);
}

uint64_t RenderNode.withCornerRadius(_:)@<X0>(float a2@<S0>, uint64_t x8_0@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = a2;
  sub_23E8CCC04(KeyPath, &v7, x8_0);
}

uint64_t RenderNode.withInsets(_:)@<X0>(float a2@<S0>, float a3@<S1>, float a4@<S2>, float a5@<S3>, uint64_t x8_0@<X8>)
{
  KeyPath = swift_getKeyPath();
  *v13 = a2;
  *&v13[1] = a3;
  *&v13[2] = a4;
  *&v13[3] = a5;
  sub_23E8CCC04(KeyPath, v13, x8_0);
}

uint64_t sub_23E8B88D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - v4;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_23E900BD4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v26 - v14;
  v16 = *(v5 + 32);
  v27 = v1;
  v16(v6, v5);
  if ((*(v13 + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  else
  {
    (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 32) = 7955819;
    *(inited + 16) = xmmword_23E902EF0;
    *(inited + 40) = 0xE300000000000000;
    v19 = v27;
    v30[0] = sub_23E89CB38(*(v27 + *(a1 + 36)));
    v30[1] = v20;
    sub_23E900C64();
    *(inited + 88) = 0x65756C6176;
    *(inited + 96) = 0xE500000000000000;
    swift_getAssociatedConformanceWitness();
    sub_23E900D94();
    v21 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v22 = sub_23E9006D4();
    v23 = *(v22 - 8);
    v24 = v28;
    (*(v23 + 16))(v28, v19, v22);
    (*(v23 + 56))(v24, 0, 1, v22);
    v29 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
    swift_getWitnessTable();
    v25 = sub_23E8FD840(0x656C797473, 0xE500000000000000, v24, v30);
    sub_23E87E458(v30, &qword_27E35E6C8, &unk_23E9039A0);
    sub_23E87E458(v24, &unk_27E35F820, &qword_23E9064A0);
    (*(v13 + 8))(v15, AssociatedTypeWitness);
    return v25;
  }
}

uint64_t sub_23E8B8D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_23E9006B4() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for RenderStyleAction(0, a3, a4, v8) + 36);
  v10 = *(a2 + v9);
  v11 = sub_23E89CB38(*(a1 + v9));
  v13 = v12;
  if (v11 == sub_23E89CB38(v10) && v13 == v14)
  {
  }

  else
  {
    v16 = sub_23E900E04();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_23E900844() & 1;
}

uint64_t sub_23E8B8E60(uint64_t a1, uint64_t a2)
{
  sub_23E9006D4();
  sub_23E88206C();
  sub_23E900824();
  sub_23E89CB38(*(v2 + *(a2 + 36)));
  sub_23E900904();

  return sub_23E900824();
}

uint64_t sub_23E8B8EF4(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E8B8E60(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8B8F48(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  sub_23E8B8E60(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8B8FB4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8B9010(uint64_t a1)
{
  result = sub_23E9006D4();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23E8B90A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23E9006D4() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0xE7)
  {
    v13 = 231;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = a1 + v10;
        if (v12 > 0xE7)
        {
          v25 = *(v8 + 48);

          return v25(&v23[v11 + 1] & ~v11, v9);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0x19)
          {
            return v24 - 24;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + v10 + 1) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_23E8B9310(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23E9006D4() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0xE7)
  {
    v15 = 231;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + v12 + 1) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12];
    if (v14 > 0xE7)
    {
      v25 = *(v10 + 56);

      v25(&v24[v13 + 1] & ~v13, a2, v11);
    }

    else
    {
      *v24 = a2 + 24;
    }
  }
}

uint64_t AirPlayOverlayAdaptor.__allocating_init(connectionProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xC000000000000000;
  *(v2 + 56) = v3;
  *(v2 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E889AF4(a1, v2 + 16);
  return v2;
}

uint64_t AirPlayOverlayAdaptor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*AirPlayOverlayAdaptor.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_23E8B97C0;
}

uint64_t AirPlayOverlayAdaptor.init(connectionProvider:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E610, &qword_23E905A40);
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xC000000000000000;
  *(v1 + 56) = v3;
  *(v1 + 72) = 0;
  swift_unknownObjectWeakInit();
  sub_23E889AF4(a1, v1 + 16);
  return v1;
}

uint64_t sub_23E8B9858()
{
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = sub_23E900764();
  v0[18] = __swift_project_value_buffer(v1, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0xD00000000000001FLL, 0x800000023E909030);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[20] = v3;
    *v3 = v0;
    v3[1] = sub_23E8B99C4;

    return AirPlayOverlayAdaptor.connect()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_23E8B99C4()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23E8B9B00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23E8B9B00()
{
  v23 = v0;
  v1 = v0[21];

  v2 = v1;
  v3 = sub_23E900744();
  v4 = sub_23E900B04();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[21];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136446210;
    v0[16] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v9 = sub_23E9008D4();
    v11 = sub_23E887B9C(v9, v10, &v22);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23E879000, v3, v4, "Failed to connect: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EF18560](v7, -1, -1);
    MEMORY[0x23EF18560](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    v15 = v0[21];
    if (v14)
    {
      v16 = *(v13 + 72);
      ObjectType = swift_getObjectType();
      v0[5] = type metadata accessor for AirPlayOverlayAdaptor();
      v0[6] = &protocol witness table for AirPlayOverlayAdaptor;
      v0[2] = v13;
      v18 = *(v16 + 16);

      v18(v0 + 2, v15, ObjectType, v16);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_9;
    }

    v19 = v15;
  }

  else
  {
    v19 = v0[21];
  }

LABEL_9:
  v20 = v0[1];

  return v20();
}

uint64_t sub_23E8B9D74()
{
  v11 = v0;
  v1 = *(v0[6] + 56);
  v0[7] = v1;
  os_unfair_lock_lock((v1 + 48));
  sub_23E8BA7A0((v1 + 16), &v10);
  os_unfair_lock_unlock((v1 + 48));
  v2 = v10;
  v0[8] = v10;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v3 = v0[6];
  v4 = sub_23E900764();
  __swift_project_value_buffer(v4, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x287463656E6E6F63, 0xE900000000000029);
  v5 = v3[5];
  v6 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v5);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_23E8BA060;

  return v9(v2, v5, v6);
}

uint64_t sub_23E8BA060(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[10] = a1;
  v5[11] = v2;

  if (v2)
  {
    v6 = sub_23E8BA380;
  }

  else
  {
    v5[12] = a2;
    v6 = sub_23E8BA188;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_23E8BA188()
{
  v1 = v0[12];
  v13 = v0[11];
  v2 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v1 + 16);

  v7(sub_23E8BB5B0, v6, ObjectType, v1);

  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *(v1 + 40);

  v9(sub_23E8BB5B8, v8, ObjectType, v1);

  v10 = swift_task_alloc();
  v10[2] = v2;
  v10[3] = v1;
  v10[4] = v3;
  os_unfair_lock_lock((v4 + 48));
  sub_23E8BB5C0((v4 + 16));
  if (v13)
  {
    v11 = (v0[7] + 48);

    os_unfair_lock_unlock(v11);
  }

  else
  {
    os_unfair_lock_unlock((v0[7] + 48));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v12 = v0[1];

    v12();
  }
}

uint64_t sub_23E8BA380()
{
  v8 = v0;
  swift_unknownObjectRelease();
  v1 = v0[11];
  v2 = v0[7];
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock(v2 + 12);
  sub_23E8BB508(&v2[4]);
  os_unfair_lock_unlock(v2 + 12);

  swift_getErrorValue();
  sub_23E8AD368(v0[3], v7);
  v3 = v7[0];
  if (v7[0] == 7)
  {
    swift_willThrow();
  }

  else
  {
    sub_23E8BB524();
    swift_allocError();
    *v4 = v3;
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

void sub_23E8BA4BC(void *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = a1 + 2;
  v4 = a1[2];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v9 = v8 >> 62;
  if ((v8 >> 62) - 1 < 2)
  {
    v22 = *a2;
    sub_23E8BC6F8(v6, v7, v4, v8);
    swift_unknownObjectRetain();
    v11 = v7;
    if ([v6 isExternalPlaybackActive])
    {
      swift_unknownObjectRelease();

      sub_23E8BB524();
      swift_allocError();
      v13 = 1;
    }

    else
    {
      sub_23E8BB6D8(v6, v7, v4, v8);
      *a1 = v6;
      a1[1] = v7;
      *v5 = 0;
      v5[1] = 0;
      if (v9 == 2)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v16 = a2[9];
          ObjectType = swift_getObjectType();
          v21[3] = v22;
          v21[4] = &protocol witness table for AirPlayOverlayAdaptor;
          v21[0] = a2;
          v18 = *(v16 + 24);

          v18(v21, ObjectType, v16);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v21);
        }
      }

      sub_23E8BB524();
      swift_allocError();
      v13 = 3;
    }

    *v12 = v13;
    swift_willThrow();
LABEL_12:
    sub_23E8BB6D8(v6, v7, v4, v8);
    return;
  }

  if (!v9)
  {
    sub_23E8BC6F8(*a1, v7, v4, v8);
    swift_unknownObjectRetain();
    v15 = v7;
    if ([v6 isExternalPlaybackActive])
    {
      sub_23E8BB6D8(v6, v7, v4, v8);

      swift_unknownObjectRelease();
      *a1 = v6;
      a1[1] = v7;
      *(a1 + 1) = xmmword_23E905A30;
      *a3 = v6;
      swift_unknownObjectRetain();
      return;
    }

    sub_23E8BB524();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  sub_23E8BB524();
  swift_allocError();
  *v19 = 2;
  swift_willThrow();
}

void *sub_23E8BA7BC(void *result, uint64_t *a2)
{
  v3 = result;
  v4 = *result;
  v5 = result[1];
  v6 = result[3] >> 62;
  v7 = *a2;
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  else if (!v6)
  {
    return result;
  }

  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v8 = sub_23E900764();
  __swift_project_value_buffer(v8, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x2865736F6C436E6FLL, 0xE900000000000029);
  *v3 = v4;
  v3[1] = v5;
  v3[2] = 0;
  v3[3] = 0;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = a2[9];
    ObjectType = swift_getObjectType();
    v12[3] = v7;
    v12[4] = &protocol witness table for AirPlayOverlayAdaptor;
    v12[0] = a2;
    v11 = *(v9 + 24);

    v11(v12, ObjectType, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t AirPlayOverlayAdaptor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_23E8BB5E0(v0 + 64);
  return v0;
}

uint64_t AirPlayOverlayAdaptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_23E8BB5E0(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t AirPlayOverlayAdaptor.activate(with:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  v7 = *(v2 + 56);
  v13 = a1;
  v14 = v2;
  os_unfair_lock_lock((v7 + 48));
  sub_23E8BB608((v7 + 16));
  os_unfair_lock_unlock((v7 + 48));
  v8 = sub_23E900A74();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_23E884370(0, 0, v6, &unk_23E905A60, v10);
}

void *sub_23E8BAB2C(void *result, void *a2, uint64_t a3)
{
  v5 = result[3];
  if (v5 >> 62 == 3 && v5 == 0xC000000000000000 && (result[1] | result[2] | *result) == 0)
  {
    v14[12] = v3;
    v14[13] = v4;
    v7 = result;
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v9 = sub_23E900764();
    __swift_project_value_buffer(v9, qword_27E367138);
    sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x6574617669746361, 0xEF293A6874697728);
    v10 = swift_allocObject();
    swift_weakInit();
    v14[4] = sub_23E8BC250;
    v14[5] = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_23E8906D8;
    v14[3] = &block_descriptor_5;
    v11 = _Block_copy(v14);

    v12 = a2;
    v13 = [a2 beginObserveringExternalPlaybackChangeWithChangeHandler_];
    _Block_release(v11);
    *v7 = v12;
    v7[1] = v13;
    v7[2] = 0;
    v7[3] = 0;
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_23E8BACF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = sub_23E900A74();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_weakInit();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v6;
    sub_23E884370(0, 0, v3, &unk_23E905BA8, v7);
  }

  return result;
}

Swift::Void __swiftcall AirPlayOverlayAdaptor.deactivate()()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  sub_23E8BB6D8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x6176697463616564, 0xEC00000029286574);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xC000000000000000;

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_23E8BAF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23E8BC344(a1, a2);
  }

  return result;
}

uint64_t sub_23E8BAFA4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 56);
    os_unfair_lock_lock((v2 + 48));
    sub_23E8BC328((v2 + 16));
    os_unfair_lock_unlock((v2 + 48));
  }

  return result;
}

__int128 *sub_23E8BB020(__int128 *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  if (*(result + 3) >> 62 == 1)
  {
    v31[13] = v4;
    v31[14] = v5;
    v10 = result;
    v11 = v6;
    v29 = *result;
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v12 = sub_23E900764();
    __swift_project_value_buffer(v12, qword_27E367138);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v13 = sub_23E900744();
    v14 = sub_23E900B14();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v28 = a3;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EFE0, &qword_23E904D80);
      v17 = sub_23E9008D4();
      v27 = v11;
      v19 = sub_23E887B9C(v17, v18, v31);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v30[0] = a2;
      v30[1] = v28;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EFE8, qword_23E905BB8);
      v20 = sub_23E9008D4();
      v22 = sub_23E887B9C(v20, v21, v31);

      *(v15 + 14) = v22;
      v11 = v27;
      _os_log_impl(&dword_23E879000, v13, v14, "Updating state to connected to player %{public}s with %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v16, -1, -1);
      v23 = v15;
      a3 = v28;
      MEMORY[0x23EF18560](v23, -1, -1);
    }

    *v10 = v29;
    *(v10 + 16) = a2;
    *(v10 + 24) = a3 | 0x8000000000000000;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = a4[9];
      ObjectType = swift_getObjectType();
      v30[3] = v11;
      v30[4] = &protocol witness table for AirPlayOverlayAdaptor;
      v30[0] = a4;
      v26 = *(v24 + 8);
      swift_unknownObjectRetain();

      v26(v30, ObjectType, v24);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    else
    {
      return swift_unknownObjectRetain();
    }
  }

  return result;
}

void sub_23E8BB324(uint64_t a1, void *a2)
{
  if (*(a1 + 24) >> 62 == 1)
  {
    v18[9] = v2;
    v18[10] = v3;
    v6 = *a1;
    v7 = *(a1 + 8);
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v8 = sub_23E900764();
    __swift_project_value_buffer(v8, qword_27E367138);
    v9 = a2;
    v10 = sub_23E900744();
    v11 = sub_23E900B04();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136446210;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v15 = sub_23E9008D4();
      v17 = sub_23E887B9C(v15, v16, v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_23E879000, v10, v11, "Unable to broker a connection on external playback changed: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x23EF18560](v13, -1, -1);
      MEMORY[0x23EF18560](v12, -1, -1);
    }

    if ([v6 isExternalPlaybackActive])
    {
      *a1 = v6;
      *(a1 + 8) = v7;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      swift_unknownObjectRelease();

      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0xC000000000000000;
    }
  }
}

unint64_t sub_23E8BB524()
{
  result = qword_27E35EFD8;
  if (!qword_27E35EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EFD8);
  }

  return result;
}

uint64_t sub_23E8BB578()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E8BB624(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E889AD8;

  return sub_23E8B9838(a1, v4, v5, v6);
}

void sub_23E8BB6D8(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if ((a4 >> 62) > 1)
  {
    if (a4 >> 62 == 2)
    {
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_23E8BB7BC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*sub_23E8BB820(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_23E8BC798;
}

void sub_23E8BB8B8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_23E8BB960()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  sub_23E8BB6D8(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000061, 0x800000023E908F60, 0x6176697463616564, 0xEC00000029286574);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xC000000000000000;

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_23E8BBA4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E889AD8;

  return AirPlayOverlayAdaptor.connect()();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AirPlayOverlayAdaptor.assertConnected()()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 40) >> 62 != 2)
  {
    sub_23E8BB524();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
  }

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t AirPlayOverlayAdaptor.sendAction(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23E8BBB74, 0, 0);
}

uint64_t sub_23E8BBB74()
{
  v1 = *(v0[3] + 56);
  os_unfair_lock_lock((v1 + 48));
  v2 = *(v1 + 40);
  if (v2 >> 62 == 2)
  {
    v0[4] = *(v1 + 32);
    v3 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v1 + 48));
    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 64) + **(v3 + 64));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_23E8BBD4C;
    v6 = v0[2];

    return v10(v6, ObjectType, v3);
  }

  else
  {
    sub_23E8BB524();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
    os_unfair_lock_unlock((v1 + 48));
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_23E8BBD4C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_23E8BBEC4;
  }

  else
  {
    v2 = sub_23E8BBE60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E8BBE60()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E8BBEC4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

void sub_23E8BBF28()
{
  v1 = *(*v0 + 56);
  os_unfair_lock_lock((v1 + 48));
  if (*(v1 + 40) >> 62 != 2)
  {
    sub_23E8BB524();
    swift_allocError();
    *v2 = 3;
    swift_willThrow();
  }

  os_unfair_lock_unlock((v1 + 48));
}

uint64_t sub_23E8BBFA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E888F34;

  return AirPlayOverlayAdaptor.sendAction(_:)(a1);
}

uint64_t sub_23E8BC03C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 72);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_23E8BC08C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit0aB14OverlayAdaptorC5StateO(uint64_t a1)
{
  v1 = *(a1 + 24) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_23E8BC150(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 32))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 24) >> 57) >> 5) | (4 * ((*(a1 + 24) >> 57) & 0x18 | *(a1 + 24) & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23E8BC1AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    *(result + 8) = 0;
    if (a3 >= 0x7D)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_23E8BC214(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    result[3] = result[3] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0xC000000000000000;
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E8BC274(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E888F34;

  return sub_23E8B9838(a1, v4, v5, v6);
}

void sub_23E8BC344(uint64_t a1, uint64_t a2)
{
  v30[4] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = sub_23E900614();
  v29[0] = 0;
  v4 = [v2 propertyListWithData:v3 options:0 format:0 error:v29];

  v5 = v29[0];
  if (v4)
  {
    sub_23E900C04();
    swift_unknownObjectRelease();
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v6 = sub_23E900764();
    __swift_project_value_buffer(v6, qword_27E367138);
    sub_23E889154(v30, v29);
    v7 = sub_23E900744();
    v8 = sub_23E900B14();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136446210;
      sub_23E889154(v29, v27);
      v11 = sub_23E9008D4();
      v13 = v12;
      __swift_destroy_boxed_opaque_existential_1(v29);
      v14 = sub_23E887B9C(v11, v13, &v28);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_23E879000, v7, v8, "Incoming message: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x23EF18560](v10, -1, -1);
      MEMORY[0x23EF18560](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v29);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v15 = v5;
    v16 = sub_23E900564();

    swift_willThrow();
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v17 = sub_23E900764();
    __swift_project_value_buffer(v17, qword_27E367138);
    v18 = v16;
    v19 = sub_23E900744();
    v20 = sub_23E900B04();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136446210;
      v29[0] = v16;
      v23 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v24 = sub_23E9008D4();
      v26 = sub_23E887B9C(v24, v25, v30);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_23E879000, v19, v20, "Unable to deserialize incoming property list message: %{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x23EF18560](v22, -1, -1);
      MEMORY[0x23EF18560](v21, -1, -1);
    }

    else
    {
    }
  }
}

void sub_23E8BC6F8(id result, void *a2, uint64_t a3, unint64_t a4)
{
  if ((a4 >> 62) > 1)
  {
    if (a4 >> 62 == 2)
    {
      swift_unknownObjectRetain();
      v5 = a2;

      swift_unknownObjectRetain();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    v4 = a2;
  }
}

uint64_t dispatch thunk of AirPlayConnectionProviding.makeAirPlayConnection(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E889970;

  return v9(a1, a2, a3);
}

uint64_t sub_23E8BC8DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v36 = MEMORY[0x277D84F90];
  sub_23E8AF97C(0, v1, 0);
  v2 = v36;
  v29 = a1 + 64;
  result = sub_23E900C24();
  if (result < 0 || (v5 = result, result >= 1 << *(a1 + 32)))
  {
LABEL_23:
    __break(1u);
  }

  else
  {
    v28 = v1;
    v6 = *(a1 + 36);
    v7 = 1;
    while (1)
    {
      v8 = v5 >> 6;
      if ((*(v29 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        break;
      }

      v9 = *(a1 + 56) + 72 * v5;
      v31 = *v9;
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 16);
      v35 = *(v9 + 64);
      v33 = v11;
      v34 = v10;
      v32 = v12;
      result = sub_23E88FEB4(&v31, v30);
      v36 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_23E8AF97C((v13 > 1), v14 + 1, 1);
        v2 = v36;
      }

      *(v2 + 16) = v14 + 1;
      v15 = (v2 + (v14 << 6));
      v16 = v31;
      v17 = v32;
      v18 = v34;
      v15[4] = v33;
      v15[5] = v18;
      v15[2] = v16;
      v15[3] = v17;
      v19 = 1 << *(a1 + 32);
      if (v5 >= v19)
      {
        goto LABEL_25;
      }

      v20 = *(v29 + 8 * v8);
      if ((v20 & (1 << v5)) == 0)
      {
        goto LABEL_26;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v21 = v20 & (-2 << (v5 & 0x3F));
      if (v21)
      {
        v5 = __clz(__rbit64(v21)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v22 = v28;
      }

      else
      {
        v23 = v8 << 6;
        v24 = v8 + 1;
        v22 = v28;
        v25 = (a1 + 72 + 8 * v8);
        while (v24 < (v19 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_23E889730(v5, v6, 0);
            v5 = __clz(__rbit64(v26)) + v23;
            goto LABEL_18;
          }
        }

        result = sub_23E889730(v5, v6, 0);
        v5 = v19;
      }

LABEL_18:
      if (v7 == v22)
      {
        return v2;
      }

      if ((v5 & 0x8000000000000000) == 0)
      {
        v6 = *(a1 + 36);
        ++v7;
        if (v5 < 1 << *(a1 + 32))
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23E8BCB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[31] = a1;
  v4[32] = a2;
  return MEMORY[0x2822009F8](sub_23E8BCB6C, v3, 0);
}

uint64_t sub_23E8BCB6C()
{
  v1 = *(v0 + 272);
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v4 = *(v0 + 256);
  v3 = *(v0 + 264);

  v5 = sub_23E88CA70(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_6:
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v7 = *(v2 + 56) + 72 * v5;
  *(v0 + 16) = *v7;
  v8 = *(v7 + 16);
  v9 = *(v7 + 32);
  v10 = *(v7 + 48);
  *(v0 + 80) = *(v7 + 64);
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  *(v0 + 32) = v8;
  v11 = *(v0 + 16);
  v26 = *(v0 + 24);
  v13 = *(v0 + 32);
  v12 = *(v0 + 40);
  v15 = *(v0 + 48);
  v14 = *(v0 + 56);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 80);
  sub_23E88FEB4(v0 + 16, v0 + 88);

  if (v26)
  {
    v19 = *(v0 + 248);
    *(v0 + 88) = v11;
    *(v0 + 96) = v26;
    *(v0 + 104) = v13;
    *(v0 + 112) = v12;
    *(v0 + 120) = v15;
    *(v0 + 128) = v14;
    *(v0 + 136) = v17;
    *(v0 + 144) = v16;
    *(v0 + 16) = v11;
    *(v0 + 24) = v26;
    *(v0 + 32) = v13;
    *(v0 + 40) = v12;
    *(v0 + 48) = v15;
    *(v0 + 56) = v14;
    *(v0 + 64) = v17;
    *(v0 + 72) = v16;
    *(v0 + 80) = v18;
    sub_23E895FE4(v0 + 88, v0 + 160);
    sub_23E87E458(v0 + 16, &qword_27E35F020, &qword_23E905D48);
    v20 = *(v0 + 104);
    v21 = *(v0 + 136);
    v22 = *(v0 + 88);
    v19[2] = *(v0 + 120);
    v19[3] = v21;
    *v19 = v22;
    v19[1] = v20;
    goto LABEL_8;
  }

LABEL_7:
  v23 = *(v0 + 248);
  *(v0 + 16) = v11;
  *(v0 + 24) = 0;
  *(v0 + 32) = v13;
  *(v0 + 40) = v12;
  *(v0 + 48) = v15;
  *(v0 + 56) = v14;
  *(v0 + 64) = v17;
  *(v0 + 72) = v16;
  *(v0 + 80) = v18;
  sub_23E87E458(v0 + 16, &qword_27E35F020, &qword_23E905D48);
  *v23 = 0u;
  v23[1] = 0u;
  v23[2] = 0u;
  v23[3] = 0u;
LABEL_8:
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_23E8BCD88(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_23E8AF7BC(0, v11, 0);
    v12 = v24;
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      sub_23E8891B4(v13, v10, a2, a3);
      v24 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_23E8AF7BC((v15 > 1), v16 + 1, 1);
        v12 = v24;
      }

      v22 = v7;
      v23 = sub_23E8C4DA0(v20, a2, a3);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_23E8891B4(v10, boxed_opaque_existential_1, a2, a3);
      *(v12 + 16) = v16 + 1;
      sub_23E881028(&v21, v12 + 40 * v16 + 32);
      sub_23E87E458(v10, a2, a3);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_23E8BCFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v15 = MEMORY[0x277D84F90];
    sub_23E8AF95C(0, v1, 0);
    v2 = v15;
    v4 = a1 + 32;
    do
    {
      sub_23E8810DC(v4, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
      swift_dynamicCast();
      v15 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23E8AF95C((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 40 * v6;
      v8 = v12;
      v9 = v13;
      *(v7 + 64) = v14;
      *(v7 + 32) = v8;
      *(v7 + 48) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_23E8BD124(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  v21 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v25 = MEMORY[0x277D84F90];
    sub_23E8AF7BC(0, v12, 0);
    v13 = v25;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_23E8C4DF4(v14, v11, a3);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_23E8AF7BC((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      v23 = v8;
      v24 = sub_23E8C4E5C(a4, a3, v21);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_23E8C4DF4(v11, boxed_opaque_existential_1, a3);
      *(v13 + 16) = v17 + 1;
      sub_23E881028(&v22, v13 + 40 * v17 + 32);
      sub_23E8C4EA4(v11, a3);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_23E8BD2DC(uint64_t a1)
{
  v2 = type metadata accessor for ContainerContent.Child(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_23E8AFA38(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_23E8C4DF4(v8, v5, type metadata accessor for ContainerContent.Child);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_23E8AFA38((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_23E8C4E5C(&qword_27E35F050, type metadata accessor for ContainerContent.Child, &unk_23E908118);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_23E8C4DF4(v5, boxed_opaque_existential_1, type metadata accessor for ContainerContent.Child);
      *(v7 + 16) = v11 + 1;
      sub_23E881028(&v14, v7 + 40 * v11 + 32);
      sub_23E8C4EA4(v5, type metadata accessor for ContainerContent.Child);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_23E8BD4C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_23E900D04();
    v4 = a1 + 32;
    do
    {
      v4 += 4;
      sub_23E900E94();
      sub_23E900CE4();
      sub_23E900D14();
      sub_23E900D24();
      sub_23E900CF4();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_23E8BD568(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 544) = a3;
  *(v3 + 400) = a1;
  *(v3 + 408) = a2;
  v4 = type metadata accessor for RenderAssetAction(0);
  *(v3 + 416) = v4;
  *(v3 + 424) = *(v4 - 8);
  *(v3 + 432) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0);
  *(v3 + 440) = v5;
  *(v3 + 448) = *(v5 - 8);
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F008, &qword_23E905D10);
  *(v3 + 480) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F010, &unk_23E905D18);
  *(v3 + 488) = v6;
  *(v3 + 496) = *(v6 - 8);
  *(v3 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8BD790, 0, 0);
}

uint64_t sub_23E8BD790()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 408);
  v36 = sub_23E88A574(0, *(v2 + 16), 0, MEMORY[0x277D84F90]);
  v3 = v2 + 56;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 56);
  v7 = (63 - v5) >> 6;
  v37 = v1 & 1;
  v40 = v2;

  v13 = 0;
  v38 = v7;
  v39 = v2 + 56;
  while (v6)
  {
LABEL_11:
    v17 = *(v0 + 520);
    v18 = *(v0 + 512);
    v19 = (*(v40 + 48) + ((v13 << 12) | (__clz(__rbit64(v6)) << 6)));
    v20 = v19[3];
    v22 = *v19;
    v21 = v19[1];
    *(v0 + 48) = v19[2];
    *(v0 + 64) = v20;
    *(v0 + 16) = v22;
    *(v0 + 32) = v21;
    v23 = sub_23E900A74();
    v24 = *(v23 - 8);
    (*(v24 + 56))(v17, 1, 1, v23);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v26 = *(v0 + 32);
    *(v25 + 32) = *(v0 + 16);
    *(v25 + 48) = v26;
    v27 = *(v0 + 64);
    *(v25 + 64) = *(v0 + 48);
    *(v25 + 80) = v27;
    *(v25 + 96) = v37;
    sub_23E8891B4(v17, v18, &qword_27E35E5E0, &qword_23E905750);
    v28 = (*(v24 + 48))(v18, 1, v23);
    v29 = *(v0 + 512);
    if (v28 == 1)
    {
      sub_23E895FE4(v0 + 16, v0 + 80);
      sub_23E895FE4(v0 + 16, v0 + 144);
      sub_23E87E458(v29, &qword_27E35E5E0, &qword_23E905750);
    }

    else
    {
      sub_23E895FE4(v0 + 16, v0 + 208);
      sub_23E895FE4(v0 + 16, v0 + 272);
      sub_23E900A64();
      (*(v24 + 8))(v29, v23);
    }

    v7 = v38;
    if (*(v25 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = sub_23E900A34();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = **(v0 + 400);

    if (v32 | v30)
    {
      v14 = v0 + 336;
      *(v0 + 336) = 0;
      *(v0 + 344) = 0;
      *(v0 + 352) = v30;
      *(v0 + 360) = v32;
    }

    else
    {
      v14 = 0;
    }

    v6 &= v6 - 1;
    v15 = *(v0 + 520);
    *(v0 + 368) = 1;
    *(v0 + 376) = v14;
    *(v0 + 384) = v33;
    swift_task_create();

    sub_23E899A78(v0 + 16);
    v8 = sub_23E87E458(v15, &qword_27E35E5E0, &qword_23E905750);
    v3 = v39;
  }

  while (1)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return MEMORY[0x2822004E8](v8, v9, v10, v11, v12);
    }

    if (v16 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v16);
    ++v13;
    if (v6)
    {
      v13 = v16;
      goto LABEL_11;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
  sub_23E900A84();
  *(v0 + 528) = v36;
  v34 = swift_task_alloc();
  *(v0 + 536) = v34;
  *v34 = v0;
  v34[1] = sub_23E8BDBC8;
  v8 = *(v0 + 480);
  v11 = *(v0 + 488);
  v12 = v0 + 392;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x2822004E8](v8, v9, v10, v11, v12);
}

uint64_t sub_23E8BDBC8()
{

  if (v0)
  {

    v1 = sub_23E8BE064;
  }

  else
  {
    v1 = sub_23E8BDCE0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23E8BDCE0()
{
  v1 = v0[60];
  v2 = (*(v0[56] + 48))(v1, 1, v0[55]);
  v3 = v0[66];
  if (v2 == 1)
  {
    (*(v0[62] + 8))(v0[63], v0[61]);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v0[56];
      v6 = v0[66] + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v26 = v0[53];
      v27 = *(v5 + 72);
      v7 = MEMORY[0x277D84F90];
      do
      {
        v9 = v0[57];
        v8 = v0[58];
        v10 = v0[52];
        sub_23E8891B4(v6, v8, &qword_27E35E658, &qword_23E905CE0);
        sub_23E8C4878(v8, v9);
        v11 = (*(v26 + 48))(v9, 1, v10);
        v12 = v0[57];
        if (v11 == 1)
        {
          sub_23E87E458(v12, &qword_27E35E658, &qword_23E905CE0);
        }

        else
        {
          sub_23E8C48E8(v12, v0[54]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_23E88A54C(0, v7[2] + 1, 1, v7);
          }

          v14 = v7[2];
          v13 = v7[3];
          if (v14 >= v13 >> 1)
          {
            v7 = sub_23E88A54C((v13 > 1), v14 + 1, 1, v7);
          }

          v15 = v0[54];
          v7[2] = v14 + 1;
          sub_23E8C48E8(v15, v7 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v14);
        }

        v6 += v27;
        --v4;
      }

      while (v4);
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    v24 = v0[1];

    return v24(v7);
  }

  else
  {
    sub_23E8C4878(v1, v0[59]);
    v17 = *(v3 + 16);
    v16 = *(v3 + 24);
    v18 = v0[66];
    if (v17 >= v16 >> 1)
    {
      v18 = sub_23E88A574((v16 > 1), v17 + 1, 1, v0[66]);
    }

    v19 = v0[59];
    v20 = v0[56];
    v18[2] = v17 + 1;
    sub_23E8C4878(v19, v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17);
    v0[66] = v18;
    v21 = swift_task_alloc();
    v0[67] = v21;
    *v21 = v0;
    v21[1] = sub_23E8BDBC8;
    v22 = v0[60];
    v23 = v0[61];

    return MEMORY[0x2822004E8](v22, 0, 0, v23, v0 + 49);
  }
}

uint64_t sub_23E8BE064()
{
  (*(v0[62] + 8))(v0[63], v0[61]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_23E8BE14C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  sub_23E87E458(v0 + 152, &unk_27E35F5B0, &unk_23E903040);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_23E8BE1EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_23E8BE234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23E8BE298()
{
  v1[127] = v0;
  v1[128] = type metadata accessor for RenderTransactionAction(0);
  v1[129] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8BE32C, v0, 0);
}

uint64_t sub_23E8BE32C()
{
  v67 = v0;
  v1 = *(v0 + 1016);
  v2 = v1[17];
  v3 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v2);
  v4 = 0;
  (*(v3 + 8))(v2, v3);
  v15 = *(v0 + 1016);
  swift_beginAccess();

  v17 = sub_23E8C2D60(v16, 0);

  v18 = sub_23E8BC8DC(v17);

  v19 = sub_23E8C45C8(v18);
  *(v0 + 1040) = v19;

  v20 = v19 + 56;
  v21 = -1;
  v22 = -1 << *(v19 + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(v19 + 56);
  v24 = (63 - v22) >> 6;
  v61 = v19;

  v25 = 0;
  v60 = v15;
  while (v23)
  {
LABEL_14:
    v34 = (*(v61 + 48) + ((v25 << 12) | (__clz(__rbit64(v23)) << 6)));
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[3];
    *(v0 + 192) = v34[2];
    *(v0 + 208) = v37;
    *(v0 + 160) = v35;
    *(v0 + 176) = v36;
    v38 = *(v0 + 160);
    v4 = *(v0 + 168);
    v39 = v34[1];
    v62 = *v34;
    v63 = v39;
    v40 = v34[3];
    v64 = v34[2];
    v65 = v40;
    swift_beginAccess();
    sub_23E895FE4(v0 + 160, v0 + 224);
    sub_23E895FE4(v0 + 160, v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v15 + 192);
    v42 = v66;
    *(v15 + 192) = 0x8000000000000000;
    v43 = sub_23E88CA70(v38, v4);
    v45 = v42[2];
    v46 = (v44 & 1) == 0;
    v47 = __OFADD__(v45, v46);
    v48 = v45 + v46;
    if (v47)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      swift_once();
      v5 = sub_23E900764();
      __swift_project_value_buffer(v5, qword_27E367120);
      v6 = v4;
      v7 = sub_23E900744();
      v8 = sub_23E900B04();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *&v62 = v10;
        *v9 = 136446210;
        *(v0 + 992) = v4;
        v11 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
        v12 = sub_23E9008D4();
        v14 = sub_23E887B9C(v12, v13, &v62);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_23E879000, v7, v8, "Unable to update remote store: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x23EF18560](v10, -1, -1);
        MEMORY[0x23EF18560](v9, -1, -1);
      }

      else
      {
      }

      v58 = *(v0 + 8);

      return v58();
    }

    v49 = v44;
    if (v42[3] < v48)
    {
      sub_23E88D584(v48, isUniquelyReferenced_nonNull_native);
      v43 = sub_23E88CA70(v38, v4);
      if ((v49 & 1) != (v50 & 1))
      {

        return sub_23E900E44();
      }

LABEL_19:
      if (v49)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_19;
    }

    v57 = v43;
    sub_23E8CFE28();
    v43 = v57;
    if (v49)
    {
LABEL_7:
      v26 = v66;
      v27 = v66[7] + 72 * v43;
      *(v0 + 16) = *v27;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 16);
      *(v0 + 80) = *(v27 + 64);
      *(v0 + 48) = v29;
      *(v0 + 64) = v28;
      *(v0 + 32) = v30;
      v31 = v65;
      *(v27 + 32) = v64;
      *(v27 + 48) = v31;
      v32 = v63;
      *v27 = v62;
      *(v27 + 16) = v32;
      *(v27 + 64) = 1;
      sub_23E8C4674(v0 + 16);
      goto LABEL_8;
    }

LABEL_20:
    v26 = v66;
    v66[(v43 >> 6) + 8] |= 1 << v43;
    v51 = (v26[6] + 16 * v43);
    *v51 = v38;
    v51[1] = v4;
    v52 = v26[7] + 72 * v43;
    v53 = v63;
    *v52 = v62;
    *(v52 + 16) = v53;
    v54 = v65;
    *(v52 + 32) = v64;
    *(v52 + 48) = v54;
    *(v52 + 64) = 1;
    v55 = v26[2];
    v47 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v47)
    {
      goto LABEL_36;
    }

    v26[2] = v56;

LABEL_8:
    v23 &= v23 - 1;
    v15 = v60;
    *(v60 + 192) = v26;
    swift_endAccess();
    sub_23E899A78(v0 + 160);
  }

  while (1)
  {
    v33 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v33 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v33);
    ++v25;
    if (v23)
    {
      v25 = v33;
      goto LABEL_14;
    }
  }

  *(v0 + 1000) = v61;

  return MEMORY[0x2822009F8](sub_23E8BE898, 0, 0);
}

uint64_t sub_23E8BE898()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0);
  v2 = swift_task_alloc();
  *(v0 + 1048) = v2;
  *(v2 + 16) = v0 + 1000;
  *(v2 + 24) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EFF0, &unk_23E905CF8);
  v4 = swift_task_alloc();
  *(v0 + 1056) = v4;
  *v4 = v0;
  v4[1] = sub_23E8BE9B8;

  return MEMORY[0x282200740](v0 + 1008, v1, v3, 0, 0, &unk_23E905CF0, v2, v1);
}

uint64_t sub_23E8BE9B8()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_23E8BEDE8;
  }

  else
  {

    v2 = sub_23E8BEAD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E8BEAD4()
{
  v1 = v0[127];
  v0[134] = v0[126];
  return MEMORY[0x2822009F8](sub_23E8BEAF8, v1, 0);
}

uint64_t sub_23E8BEAF8()
{
  v1 = v0[129];
  v2 = v0[128];
  v3 = sub_23E8BD124(v0[134], type metadata accessor for RenderAssetAction, type metadata accessor for RenderAssetAction, &qword_27E35F000, &unk_23E906308);
  _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
  *(v1 + *(v2 + 20)) = v3;
  if (qword_27E35E170 != -1)
  {
    swift_once();
  }

  v4 = sub_23E900764();
  v0[135] = __swift_project_value_buffer(v4, qword_27E367120);

  v5 = sub_23E900744();
  v6 = sub_23E900B14();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[134];
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v8 + 16);

    _os_log_impl(&dword_23E879000, v5, v6, "Attemping to send %ld asset actions", v9, 0xCu);
    MEMORY[0x23EF18560](v9, -1, -1);
  }

  else
  {
  }

  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v12[17];
  v14 = v12[18];
  __swift_project_boxed_opaque_existential_1(v12 + 14, v13);
  v0[103] = v11;
  v0[104] = sub_23E8C4E5C(&qword_27E35EFF8, type metadata accessor for RenderTransactionAction, &unk_23E906480);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 100);
  sub_23E8C4DF4(v10, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
  v18 = (*(v14 + 16) + **(v14 + 16));
  v16 = swift_task_alloc();
  v0[136] = v16;
  *v16 = v0;
  v16[1] = sub_23E8BF038;

  return v18(v0 + 100, v13, v14);
}

uint64_t sub_23E8BEDE8()
{
  v1 = *(v0 + 1016);

  return MEMORY[0x2822009F8](sub_23E8BEE60, v1, 0);
}

uint64_t sub_23E8BEE60()
{
  v15 = v0;
  v1 = v0[133];
  if (qword_27E35E170 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367120);
  v3 = v1;
  v4 = sub_23E900744();
  v5 = sub_23E900B04();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[124] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v9 = sub_23E9008D4();
    v11 = sub_23E887B9C(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23E879000, v4, v5, "Unable to update remote store: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EF18560](v7, -1, -1);
    MEMORY[0x23EF18560](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_23E8BF038()
{
  v2 = *v1;
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v3 = *(v2 + 1016);

    v4 = sub_23E8BF4CC;
  }

  else
  {
    v3 = *(v2 + 1016);
    __swift_destroy_boxed_opaque_existential_1((v2 + 800));
    v4 = sub_23E8BF164;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23E8BF164()
{
  v38 = v0;

  v1 = sub_23E900744();
  v2 = sub_23E900B14();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 1072);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(v4 + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&dword_23E879000, v1, v2, "Successfully sent %ld asset actions", v5, 0xCu);
    MEMORY[0x23EF18560](v5, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_23E8891B4(*(v0 + 1016) + 152, v0 + 840, &unk_27E35F5B0, &unk_23E903040);
  v7 = *(v0 + 864);
  if (v7)
  {
    v8 = *(v0 + 1032);
    v9 = *(v0 + 1024);
    v10 = *(v0 + 872);
    __swift_project_boxed_opaque_existential_1((v0 + 840), *(v0 + 864));
    *(v0 + 904) = v9;
    *(v0 + 912) = &off_28511E6A0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 880));
    sub_23E8C4DF4(v8, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
    (*(v10 + 24))(v0 + 880, v7, v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 880));
    __swift_destroy_boxed_opaque_existential_1((v0 + 840));
  }

  else
  {
    sub_23E87E458(v0 + 840, &unk_27E35F5B0, &unk_23E903040);
  }

  v12 = *(v0 + 1040);
  v13 = -1;
  v14 = -1 << *(v12 + 32);
  if (-v14 < 64)
  {
    v13 = ~(-1 << -v14);
  }

  v15 = v13 & *(v12 + 56);
  v16 = (63 - v14) >> 6;
  v17 = *(v0 + 1096);

  v19 = 0;
  if (v15)
  {
    while (1)
    {
      v20 = *(v0 + 1040);
LABEL_15:
      v22 = *(v0 + 1016);
      v23 = (*(v20 + 48) + ((v19 << 12) | (__clz(__rbit64(v15)) << 6)));
      v24 = v23[3];
      v26 = *v23;
      v25 = v23[1];
      *(v0 + 576) = v23[2];
      *(v0 + 592) = v24;
      *(v0 + 544) = v26;
      *(v0 + 560) = v25;
      v27 = v23[1];
      v34 = *v23;
      v35 = v27;
      v28 = v23[3];
      v36 = v23[2];
      v37 = v28;
      sub_23E895FE4(v0 + 544, v0 + 608);
      sub_23E8BF998(&v34, v22);
      if (v17)
      {
        break;
      }

      v15 &= v15 - 1;
      v29 = v35;
      *(v0 + 736) = v34;
      *(v0 + 752) = v29;
      v30 = v37;
      *(v0 + 768) = v36;
      *(v0 + 784) = v30;
      result = sub_23E899A78(v0 + 736);
      if (!v15)
      {
        goto LABEL_11;
      }
    }

    v32 = v35;
    *(v0 + 672) = v34;
    *(v0 + 688) = v32;
    v33 = v37;
    *(v0 + 704) = v36;
    *(v0 + 720) = v33;

    return sub_23E899A78(v0 + 672);
  }

  else
  {
    while (1)
    {
LABEL_11:
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        return result;
      }

      v20 = *(v0 + 1040);
      if (v21 >= v16)
      {
        break;
      }

      v15 = *(v20 + 8 * v21 + 56);
      ++v19;
      if (v15)
      {
        v19 = v21;
        goto LABEL_15;
      }
    }

    sub_23E8C4EA4(*(v0 + 1032), type metadata accessor for RenderTransactionAction);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_23E8BF4CC()
{
  v60 = v1;
  v2 = *(v1 + 1040);
  __swift_destroy_boxed_opaque_existential_1((v1 + 800));
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 56);
  v6 = (63 - v4) >> 6;

  v7 = 0;
  while (v5)
  {
    v15 = *(v1 + 1040);
LABEL_12:
    v17 = *(v1 + 1016);
    v18 = (*(v15 + 48) + ((v7 << 12) | (__clz(__rbit64(v5)) << 6)));
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[3];
    *(v1 + 384) = v18[2];
    *(v1 + 400) = v21;
    *(v1 + 352) = v19;
    *(v1 + 368) = v20;
    v22 = *(v1 + 352);
    v0 = *(v1 + 360);
    v23 = v18[1];
    v55 = *v18;
    v56 = v23;
    v24 = v18[3];
    v57 = v18[2];
    v58 = v24;
    swift_beginAccess();
    sub_23E895FE4(v1 + 352, v1 + 416);
    sub_23E895FE4(v1 + 352, v1 + 480);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = *(v17 + 192);
    v26 = v59;
    *(v17 + 192) = 0x8000000000000000;
    v27 = sub_23E88CA70(v22, v0);
    v29 = v26[2];
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_23;
    }

    v33 = v28;
    if (v26[3] < v32)
    {
      sub_23E88D584(v32, isUniquelyReferenced_nonNull_native);
      v27 = sub_23E88CA70(v22, v0);
      if ((v33 & 1) != (v34 & 1))
      {

        return sub_23E900E44();
      }

LABEL_17:
      if (v33)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v41 = v27;
    sub_23E8CFE28();
    v27 = v41;
    if (v33)
    {
LABEL_4:
      v8 = v59;
      v9 = v59[7] + 72 * v27;
      *(v1 + 88) = *v9;
      v11 = *(v9 + 32);
      v10 = *(v9 + 48);
      v12 = *(v9 + 64);
      *(v1 + 104) = *(v9 + 16);
      *(v1 + 152) = v12;
      *(v1 + 136) = v10;
      *(v1 + 120) = v11;
      v13 = v58;
      *(v9 + 32) = v57;
      *(v9 + 48) = v13;
      v14 = v56;
      *v9 = v55;
      *(v9 + 16) = v14;
      *(v9 + 64) = 0;
      sub_23E8C4674(v1 + 88);
      goto LABEL_5;
    }

LABEL_18:
    v8 = v59;
    v59[(v27 >> 6) + 8] |= 1 << v27;
    v35 = (v8[6] + 16 * v27);
    *v35 = v22;
    v35[1] = v0;
    v36 = v8[7] + 72 * v27;
    v37 = v56;
    *v36 = v55;
    *(v36 + 16) = v37;
    v38 = v58;
    *(v36 + 32) = v57;
    *(v36 + 48) = v38;
    *(v36 + 64) = 0;
    v39 = v8[2];
    v31 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v31)
    {
      goto LABEL_34;
    }

    v8[2] = v40;

LABEL_5:
    v5 &= v5 - 1;
    *(*(v1 + 1016) + 192) = v8;
    swift_endAccess();
    sub_23E899A78(v1 + 352);
  }

  while (1)
  {
    v16 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v16 >= v6)
    {
      break;
    }

    v15 = *(v1 + 1040);
    v5 = *(v15 + 8 * v16 + 56);
    ++v7;
    if (v5)
    {
      v7 = v16;
      goto LABEL_12;
    }
  }

  v42 = *(v1 + 1032);

  swift_willThrow();
  sub_23E8C4EA4(v42, type metadata accessor for RenderTransactionAction);
  v0 = *(v1 + 1096);
  if (qword_27E35E170 != -1)
  {
    goto LABEL_35;
  }

LABEL_23:
  v43 = sub_23E900764();
  __swift_project_value_buffer(v43, qword_27E367120);
  v44 = v0;
  v45 = sub_23E900744();
  v46 = sub_23E900B04();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v55 = v48;
    *v47 = 136446210;
    *(v1 + 992) = v0;
    v49 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v50 = sub_23E9008D4();
    v52 = sub_23E887B9C(v50, v51, &v55);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_23E879000, v45, v46, "Unable to update remote store: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x23EF18560](v48, -1, -1);
    MEMORY[0x23EF18560](v47, -1, -1);
  }

  else
  {
  }

  v53 = *(v1 + 8);

  return v53();
}

void sub_23E8BF998(__int128 *a1, uint64_t a2)
{
  v3 = a1[1];
  v23 = *a1;
  v24 = v3;
  v4 = a1[3];
  v25 = a1[2];
  v26 = v4;
  v5 = v23;
  v21[0] = v23;
  v21[1] = v3;
  v21[2] = v25;
  v21[3] = v4;
  v22 = 2;
  swift_beginAccess();

  sub_23E895FE4(&v23, v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v20[0] = *(a2 + 192);
  *(a2 + 192) = 0x8000000000000000;
  sub_23E8FC65C(v21, v5, *(&v5 + 1), isUniquelyReferenced_nonNull_native);

  *(a2 + 192) = *&v20[0];
  swift_endAccess();
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_23E900854();
  v9 = [v7 BOOLForKey_];

  if (v9)
  {
    if (qword_27E35E170 != -1)
    {
      swift_once();
    }

    v10 = sub_23E900764();
    __swift_project_value_buffer(v10, qword_27E367120);
    sub_23E895FE4(&v23, v20);
    v11 = sub_23E900744();
    v12 = sub_23E900B14();
    sub_23E899A78(&v23);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      v20[0] = v23;
      v20[1] = v24;
      v20[2] = v25;
      v20[3] = v26;
      sub_23E895FE4(&v23, v18);
      v15 = sub_23E9008D4();
      v17 = sub_23E887B9C(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_23E879000, v11, v12, "Sent %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x23EF18560](v14, -1, -1);
      MEMORY[0x23EF18560](v13, -1, -1);
    }
  }
}

uint64_t sub_23E8BFC24(uint64_t a1)
{
  *(v2 + 328) = a1;
  *(v2 + 336) = v1;
  return MEMORY[0x2822009F8](sub_23E8BFC44, v1, 0);
}

uint64_t sub_23E8BFC44()
{
  v67 = v0;
  v1 = *(v0 + 336);
  swift_beginAccess();

  v3 = sub_23E8BC8DC(v2);

  v4 = sub_23E8C45C8(v3);

  isUniquelyReferenced_nonNull_native = sub_23E8C4B08(v5, v4);

  if (*(isUniquelyReferenced_nonNull_native + 16) <= *(v4 + 16) >> 3)
  {
    *&v62 = v4;
    sub_23E8C324C(isUniquelyReferenced_nonNull_native);
    if (!*(v4 + 16))
    {
LABEL_9:

      goto LABEL_10;
    }
  }

  else if (!*(sub_23E8C3390(isUniquelyReferenced_nonNull_native, v4) + 16))
  {
    goto LABEL_9;
  }

  if (qword_27E35E170 != -1)
  {
LABEL_39:
    swift_once();
  }

  v7 = sub_23E900764();
  __swift_project_value_buffer(v7, qword_27E367120);

  v8 = sub_23E900744();
  v9 = sub_23E900B04();

  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_9;
  }

  v10 = v1;
  v11 = swift_slowAlloc();
  v12 = isUniquelyReferenced_nonNull_native;
  v13 = swift_slowAlloc();
  *&v62 = v13;
  *v11 = 136446210;
  sub_23E8C494C();
  v14 = sub_23E900AB4();
  v16 = v15;

  v17 = sub_23E887B9C(v14, v16, &v62);

  *(v11 + 4) = v17;
  _os_log_impl(&dword_23E879000, v8, v9, "There are already registered asset(s): %{public}s", v11, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v18 = v13;
  isUniquelyReferenced_nonNull_native = v12;
  MEMORY[0x23EF18560](v18, -1, -1);
  v19 = v11;
  v1 = v10;
  MEMORY[0x23EF18560](v19, -1, -1);

LABEL_10:
  v20 = isUniquelyReferenced_nonNull_native + 56;
  v21 = -1;
  v22 = -1 << *(isUniquelyReferenced_nonNull_native + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(isUniquelyReferenced_nonNull_native + 56);
  v24 = (63 - v22) >> 6;

  v25 = 0;
  v60 = isUniquelyReferenced_nonNull_native + 56;
  v61 = v1;
  while (v23)
  {
LABEL_20:
    v34 = isUniquelyReferenced_nonNull_native;
    v35 = (*(isUniquelyReferenced_nonNull_native + 48) + ((v25 << 12) | (__clz(__rbit64(v23)) << 6)));
    v36 = *v35;
    v37 = v35[1];
    v38 = v35[2];
    *(v0 + 136) = v35[3];
    *(v0 + 120) = v38;
    *(v0 + 104) = v37;
    *(v0 + 88) = v36;
    v40 = *(v0 + 88);
    v39 = *(v0 + 96);
    v41 = v35[1];
    v62 = *v35;
    v63 = v41;
    v42 = v35[3];
    v64 = v35[2];
    v65 = v42;
    swift_beginAccess();
    sub_23E895FE4(v0 + 88, v0 + 152);
    sub_23E895FE4(v0 + 88, v0 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v1 + 192);
    v43 = v66;
    *(v1 + 192) = 0x8000000000000000;
    v44 = sub_23E88CA70(v40, v39);
    v46 = v43[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v1 = v45;
    if (v43[3] < v49)
    {
      sub_23E88D584(v49, isUniquelyReferenced_nonNull_native);
      v44 = sub_23E88CA70(v40, v39);
      if ((v1 & 1) != (v50 & 1))
      {

        return sub_23E900E44();
      }

LABEL_25:
      isUniquelyReferenced_nonNull_native = v34;
      if (v1)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v57 = v44;
    sub_23E8CFE28();
    v44 = v57;
    isUniquelyReferenced_nonNull_native = v34;
    if (v1)
    {
LABEL_13:
      v26 = v66;
      v27 = v66[7] + 72 * v44;
      *(v0 + 16) = *v27;
      v29 = *(v27 + 32);
      v28 = *(v27 + 48);
      v30 = *(v27 + 16);
      *(v0 + 80) = *(v27 + 64);
      *(v0 + 48) = v29;
      *(v0 + 64) = v28;
      *(v0 + 32) = v30;
      v31 = v65;
      *(v27 + 32) = v64;
      *(v27 + 48) = v31;
      v32 = v63;
      *v27 = v62;
      *(v27 + 16) = v32;
      *(v27 + 64) = 0;
      sub_23E8C4674(v0 + 16);
      goto LABEL_14;
    }

LABEL_26:
    v26 = v66;
    v66[(v44 >> 6) + 8] |= 1 << v44;
    v51 = (v26[6] + 16 * v44);
    *v51 = v40;
    v51[1] = v39;
    v52 = v26[7] + 72 * v44;
    v53 = v63;
    *v52 = v62;
    *(v52 + 16) = v53;
    v54 = v65;
    *(v52 + 32) = v64;
    *(v52 + 48) = v54;
    *(v52 + 64) = 0;
    v55 = v26[2];
    v48 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (v48)
    {
      goto LABEL_38;
    }

    v26[2] = v56;

LABEL_14:
    v23 &= v23 - 1;
    v1 = v61;
    *(v61 + 192) = v26;
    swift_endAccess();
    sub_23E899A78(v0 + 88);
    v20 = v60;
  }

  while (1)
  {
    v33 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v33 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v33);
    ++v25;
    if (v23)
    {
      v25 = v33;
      goto LABEL_20;
    }
  }

  v58 = swift_task_alloc();
  *(v0 + 344) = v58;
  *v58 = v0;
  v58[1] = sub_23E8C01BC;

  return sub_23E8BE298();
}

uint64_t sub_23E8C01BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23E8C02B0(float32x4_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  v5 = a1[3];
  v32 = a1[2];
  v33 = v5;
  sub_23E900EB4();
  RenderAsset.hash(into:)(v29);
  v6 = sub_23E900F14();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v28 = ~v7;
  v9 = a1->i64[0];
  v10 = a1->i64[1];
  if (a1[2].i8[9])
  {
    v11 = 0x504A2F6F65646976;
  }

  else
  {
    v11 = 0x6E702F6567616D69;
  }

  v26 = v11;
  if (a1[2].i8[9])
  {
    v12 = 0xEA00000000004745;
  }

  else
  {
    v12 = 0xE900000000000067;
  }

  v27 = v12;
  while (1)
  {
    v13 = *(a2 + 48) + (v8 << 6);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    v18 = *(v13 + 41);
    v19 = *v13 == v9 && *(v13 + 8) == v10;
    if (!v19 && (sub_23E900E04() & 1) == 0)
    {
      goto LABEL_10;
    }

    if (v17)
    {
      if ((a1[2].i8[8] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (a1[2].i8[8])
      {
        goto LABEL_10;
      }

      v20.i64[0] = v14;
      v20.i64[1] = v15;
      if ((vminv_u16(vmovn_s32(vceqq_f32(a1[1], v20))) & 1) == 0 || v16 != a1[2].i64[0])
      {
        goto LABEL_10;
      }
    }

    v21 = v18 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v22 = v18 ? 0xEA00000000004745 : 0xE900000000000067;
    if (v21 == v26 && v22 == v27)
    {
      break;
    }

    v24 = sub_23E900E04();

    if (v24)
    {
      return 1;
    }

LABEL_10:
    v8 = (v8 + 1) & v28;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_23E8C04F8(uint64_t a1, uint64_t a2)
{
  v3[63] = a2;
  v3[64] = v2;
  v3[62] = a1;
  v3[65] = type metadata accessor for RenderAssetAction(0);
  v3[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8C0590, v2, 0);
}

uint64_t sub_23E8C0590()
{
  v34 = v0;
  v1 = *(v0 + 512);
  swift_beginAccess();
  v2 = *(v1 + 192);
  if (!*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = *(v0 + 496);
  v3 = *(v0 + 504);

  v5 = sub_23E88CA70(v4, v3);
  if ((v6 & 1) == 0)
  {

LABEL_7:
    sub_23E8896DC();
    v11 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
    if (qword_27E35E170 != -1)
    {
      swift_once();
    }

    v13 = sub_23E900764();
    __swift_project_value_buffer(v13, qword_27E367120);

    v14 = v11;
    v15 = sub_23E900744();
    v16 = sub_23E900B04();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 496);
      v17 = *(v0 + 504);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v32[0] = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_23E887B9C(v18, v17, v32);
      *(v19 + 12) = 2082;
      *(v0 + 488) = v11;
      v21 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v22 = sub_23E9008D4();
      v24 = sub_23E887B9C(v22, v23, v32);

      *(v19 + 14) = v24;
      _os_log_impl(&dword_23E879000, v15, v16, "Unable to unregister %{public}s: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v20, -1, -1);
      MEMORY[0x23EF18560](v19, -1, -1);
    }

    else
    {
    }

    goto LABEL_13;
  }

  v7 = *(v2 + 56) + 72 * v5;
  *(v0 + 16) = *v7;
  v8 = *(v7 + 16);
  v9 = *(v7 + 32);
  v10 = *(v7 + 48);
  *(v0 + 80) = *(v7 + 64);
  *(v0 + 48) = v9;
  *(v0 + 64) = v10;
  *(v0 + 32) = v8;
  sub_23E88FEB4(v0 + 16, v0 + 88);

  if (!*(v0 + 80))
  {
    v26 = *(v0 + 496);
    v25 = *(v0 + 504);
    swift_beginAccess();
    sub_23E8FB7F0(v26, v25, v32);
    swift_endAccess();
    sub_23E8C4674(v0 + 16);
    v27 = v32[3];
    *(v0 + 336) = v32[2];
    *(v0 + 352) = v27;
    *(v0 + 368) = v33;
    v28 = v32[1];
    *(v0 + 304) = v32[0];
    *(v0 + 320) = v28;
    sub_23E87E458(v0 + 304, &qword_27E35F020, &qword_23E905D48);
    goto LABEL_13;
  }

  if (*(v0 + 80) == 1)
  {
    sub_23E8C4674(v0 + 16);
LABEL_13:

    v29 = *(v0 + 8);

    return v29();
  }

  v31 = *(v0 + 24);
  *(v0 + 536) = *(v0 + 16);
  *(v0 + 544) = v31;
  sub_23E88FEB4(v0 + 16, v0 + 160);

  return MEMORY[0x2822009F8](sub_23E8C094C, 0, 0);
}

uint64_t sub_23E8C094C()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[65];
  v5 = v0[64];

  _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
  sub_23E8C4674((v0 + 2));
  v6 = (v3 + *(v4 + 20));
  *v6 = v2;
  v6[1] = v1;
  v6[5] = 0;
  v6[9] = 0;

  return MEMORY[0x2822009F8](sub_23E8C09FC, v5, 0);
}

uint64_t sub_23E8C09FC()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v3[17];
  v5 = v3[18];
  __swift_project_boxed_opaque_existential_1(v3 + 14, v4);
  v0[50] = v2;
  v0[51] = sub_23E8C4E5C(&qword_27E35F000, type metadata accessor for RenderAssetAction, &unk_23E906308);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 47);
  sub_23E8C4DF4(v1, boxed_opaque_existential_1, type metadata accessor for RenderAssetAction);
  v9 = (*(v5 + 16) + **(v5 + 16));
  v7 = swift_task_alloc();
  v0[69] = v7;
  *v7 = v0;
  v7[1] = sub_23E8C0B94;

  return v9(v0 + 47, v4, v5);
}

uint64_t sub_23E8C0B94()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 512);
    v4 = sub_23E8C0DC4;
  }

  else
  {
    v5 = *(v2 + 512);
    __swift_destroy_boxed_opaque_existential_1((v2 + 376));
    v4 = sub_23E8C0CBC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23E8C0CBC()
{
  v10 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 496);
  swift_beginAccess();
  sub_23E8FB7F0(v3, v2, v8);
  swift_endAccess();
  sub_23E8C4674(v0 + 16);
  v4 = v8[0];
  *(v0 + 248) = v8[1];
  v5 = v8[3];
  *(v0 + 264) = v8[2];
  *(v0 + 280) = v5;
  *(v0 + 296) = v9;
  *(v0 + 232) = v4;
  sub_23E87E458(v0 + 232, &qword_27E35F020, &qword_23E905D48);
  sub_23E8C4EA4(v1, type metadata accessor for RenderAssetAction);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23E8C0DC4()
{
  v18 = v0;
  v1 = v0[66];
  sub_23E8C4674((v0 + 2));
  sub_23E8C4EA4(v1, type metadata accessor for RenderAssetAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  v2 = v0[70];
  if (qword_27E35E170 != -1)
  {
    swift_once();
  }

  v3 = sub_23E900764();
  __swift_project_value_buffer(v3, qword_27E367120);

  v4 = v2;
  v5 = sub_23E900744();
  v6 = sub_23E900B04();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[62];
    v7 = v0[63];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_23E887B9C(v8, v7, &v17);
    *(v9 + 12) = 2082;
    v0[61] = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v12 = sub_23E9008D4();
    v14 = sub_23E887B9C(v12, v13, &v17);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_23E879000, v5, v6, "Unable to unregister %{public}s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v10, -1, -1);
    MEMORY[0x23EF18560](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_23E8C100C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E889AD8;

  return sub_23E8BFC24(a1);
}

uint64_t sub_23E8C10A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23E888F34;

  return sub_23E8C04F8(a1, a2);
}

uint64_t sub_23E8C114C(char a1)
{
  *(v2 + 48) = a1;
  v3 = *v1;
  *(v2 + 40) = *v1;
  return MEMORY[0x2822009F8](sub_23E8C1170, v3, 0);
}

uint64_t sub_23E8C1170()
{
  v1 = *(v0 + 48);
  swift_beginAccess();

  v3 = sub_23E8C2D60(v2, v1);

  v4 = sub_23E8BC8DC(v3);

  v5 = sub_23E8C45C8(v4);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_23E8C123C()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](sub_23E8C125C, v2, 0);
}

uint64_t sub_23E8C125C()
{
  swift_beginAccess();

  v2 = sub_23E8BC8DC(v1);

  v3 = sub_23E8C45C8(v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23E8C130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E889AD8;

  return sub_23E8BCB48(a1, a2, a3);
}

uint64_t sub_23E8C13C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E889AD8;

  return sub_23E8BE298();
}

uint64_t sub_23E8C1450()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](sub_23E8C1470, v2, 0);
}

uint64_t sub_23E8C1470()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  *(v1 + 192) = MEMORY[0x277D84F98];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E8C14F4(__int128 *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(a2 + 1);
  v42[0] = *a2;
  v42[1] = v5;
  v6 = *(a2 + 3);
  v42[2] = *(a2 + 2);
  v42[3] = v6;
  sub_23E900EB4();
  RenderAsset.hash(into:)(v41);
  v7 = sub_23E900F14();
  v39 = v4 + 56;
  v40 = v4;
  v8 = -1 << *(v4 + 32);
  v9 = v7 & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = *v37;
    sub_23E895FE4(a2, v41);
    sub_23E8C1F24(a2, v9, isUniquelyReferenced_nonNull_native);
    *v37 = *&v42[0];
    v28 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v28;
    v29 = *(a2 + 3);
    a1[2] = *(a2 + 2);
    a1[3] = v29;
    return 1;
  }

  v10 = ~v8;
  v11 = *a2;
  v12 = a2[1];
  while (1)
  {
    v13 = *(v40 + 48) + (v9 << 6);
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    v18 = *(v13 + 41);
    v19 = *v13 == v11 && *(v13 + 8) == v12;
    if (!v19 && (sub_23E900E04() & 1) == 0)
    {
      goto LABEL_3;
    }

    if (v17)
    {
      if ((a2[5] & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (a2[5])
      {
        goto LABEL_3;
      }

      v20.i64[0] = v14;
      v20.i64[1] = v15;
      if ((vminv_u16(vmovn_s32(vceqq_f32(*(a2 + 1), v20))) & 1) == 0 || v16 != a2[4])
      {
        goto LABEL_3;
      }
    }

    v21 = v18 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v22 = v18 ? 0xEA00000000004745 : 0xE900000000000067;
    v23 = *(a2 + 41) ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v24 = *(a2 + 41) ? 0xEA00000000004745 : 0xE900000000000067;
    if (v21 == v23 && v22 == v24)
    {
      break;
    }

    v26 = sub_23E900E04();

    if (v26)
    {
      goto LABEL_35;
    }

LABEL_3:
    v9 = (v9 + 1) & v10;
    if (((*(v39 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  sub_23E899A78(a2);
  v31 = (*(v40 + 48) + (v9 << 6));
  v32 = *v31;
  v33 = v31[1];
  v34 = v31[3];
  v41[2] = v31[2];
  v41[3] = v34;
  v41[0] = v32;
  v41[1] = v33;
  v35 = v31[1];
  *a1 = *v31;
  a1[1] = v35;
  v36 = v31[3];
  a1[2] = v31[2];
  a1[3] = v36;
  sub_23E895FE4(v41, v42);
  return 0;
}

uint64_t sub_23E8C1788(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_23E900EB4();
  v36[0] = *a2;
  *(v36 + 13) = *(a2 + 13);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  *v34 = *a2;
  *&v34[13] = *(a2 + 13);
  TextAttribute.hash(into:)(v35);
  v31 = v5;
  MEMORY[0x23EF17B90](v5);
  v30 = v6;
  MEMORY[0x23EF17B90](v6);
  v7 = sub_23E900F14();
  v8 = v4 + 56;
  v32 = v4;
  v9 = -1 << *(v4 + 32);
  v10 = v7 & ~v9;
  if ((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v32 + 48) + 40 * v10;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v17 = *(v12 + 24);
      v16 = *(v12 + 32);
      v18 = *(v12 + 20);
      *v34 = *v12;
      v13 = *v34;
      *&v34[8] = v14;
      *&v34[16] = v15;
      v34[20] = v18;
      *v33 = v36[0];
      *&v33[13] = *(v36 + 13);
      sub_23E896040(a2, v35);
      sub_23E88FDE0(v13, v14, v15, v18);
      LOBYTE(v13) = _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(v34, v33);
      sub_23E88FDF8(*v33, *&v33[8], *&v33[16], v33[20]);
      sub_23E88FDF8(*v34, *&v34[8], *&v34[16], v34[20]);
      if ((v13 & 1) != 0 && v17 == v31 && v16 == v30)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    sub_23E895F90(a2);
    v20 = *(v32 + 48) + 40 * v10;
    v21 = *v20;
    v22 = *(v20 + 8);
    v23 = *(v20 + 16);
    *a1 = *v20;
    *(a1 + 8) = v22;
    *(a1 + 16) = v23;
    v24 = *(v20 + 20);
    *(a1 + 20) = v24;
    *(a1 + 24) = *(v20 + 24);
    sub_23E88FDE0(v21, v22, v23, v24);
    return 0;
  }

  else
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v34 = *v28;
    sub_23E896040(a2, v35);
    sub_23E8C21F0(a2, v10, isUniquelyReferenced_nonNull_native);
    *v28 = *v34;
    v27 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v27;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_23E8C19D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E868, &unk_23E905D30);
  result = sub_23E900C84();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v20 = (*(v3 + 48) + ((v17 | (v6 << 6)) << 6));
      v21 = v20[1];
      v39 = *v20;
      v40 = v21;
      v22 = v20[3];
      v24 = *v20;
      v23 = v20[1];
      v41 = v20[2];
      v42 = v22;
      v35 = v24;
      v36 = v23;
      v25 = v20[3];
      v37 = v20[2];
      v38 = v25;
      sub_23E900EB4();
      RenderAsset.hash(into:)(v34);
      result = sub_23E900F14();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + (v13 << 6));
      v15 = v40;
      *v14 = v39;
      v14[1] = v15;
      v16 = v42;
      v14[2] = v41;
      v14[3] = v16;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero((v3 + 56), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v33;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8C1C58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
  v4 = sub_23E900C84();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v33 = v1;
    v34 = (v3 + 56);
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    v35 = v3;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v14 | (v6 << 6));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 20);
      v24 = *(v18 + 24);
      v23 = *(v18 + 32);
      sub_23E900EB4();
      TextAttribute.hash(into:)(v37);
      MEMORY[0x23EF17B90](v24);
      MEMORY[0x23EF17B90](v23);
      result = sub_23E900F14();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v9 = v36;
      *v13 = v20;
      *(v13 + 8) = v19;
      *(v13 + 16) = v21;
      *(v13 + 20) = v22;
      *(v13 + 24) = v24;
      *(v13 + 32) = v23;
      ++*(v5 + 16);
      v3 = v35;
    }

    v15 = v6;
    result = v34;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v34[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_23E8C1F24(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_23E8C19D4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_23E8C241C();
        goto LABEL_40;
      }

      sub_23E8C2718(v6 + 1);
    }

    v8 = *v3;
    v9 = *(v5 + 16);
    v42 = *v5;
    v43 = v9;
    v10 = *(v5 + 48);
    v44 = *(v5 + 32);
    v45 = v10;
    sub_23E900EB4();
    RenderAsset.hash(into:)(v41);
    result = sub_23E900F14();
    v39 = v8 + 56;
    v40 = v8;
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *v5;
      v14 = *(v5 + 8);
      if (*(v5 + 41))
      {
        v15 = 0x504A2F6F65646976;
      }

      else
      {
        v15 = 0x6E702F6567616D69;
      }

      v37 = v15;
      if (*(v5 + 41))
      {
        v16 = 0xEA00000000004745;
      }

      else
      {
        v16 = 0xE900000000000067;
      }

      v38 = v16;
      do
      {
        v17 = *(v40 + 48) + (a2 << 6);
        result = *v17;
        v19 = *(v17 + 16);
        v18 = *(v17 + 24);
        v20 = *(v17 + 32);
        v21 = *(v17 + 40);
        v22 = *(v17 + 41);
        if (*v17 != v13 || *(v17 + 8) != v14)
        {
          result = sub_23E900E04();
          if ((result & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        if (v21)
        {
          if ((*(v5 + 40) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (*(v5 + 40))
          {
            goto LABEL_16;
          }

          v24.i64[0] = v19;
          v24.i64[1] = v18;
          if ((vminv_u16(vmovn_s32(vceqq_f32(*(v5 + 16), v24))) & 1) == 0 || v20 != *(v5 + 32))
          {
            goto LABEL_16;
          }
        }

        if (v22)
        {
          v25 = 0x504A2F6F65646976;
        }

        else
        {
          v25 = 0x6E702F6567616D69;
        }

        if (v22)
        {
          v26 = 0xEA00000000004745;
        }

        else
        {
          v26 = 0xE900000000000067;
        }

        if (v25 == v37 && v26 == v38)
        {
          goto LABEL_43;
        }

        v28 = sub_23E900E04();

        if (v28)
        {
          goto LABEL_44;
        }

LABEL_16:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v39 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_40:
  v29 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = (*(v29 + 48) + (a2 << 6));
  v31 = *(v5 + 16);
  *v30 = *v5;
  v30[1] = v31;
  v32 = *(v5 + 48);
  v30[2] = *(v5 + 32);
  v30[3] = v32;
  v33 = *(v29 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_43:

LABEL_44:
    result = sub_23E900E34();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v35;
  }

  return result;
}

uint64_t sub_23E8C21F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a3)
  {
    sub_23E8C1C58(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_23E8C25A0();
      goto LABEL_18;
    }

    sub_23E8C2978(v6 + 1);
  }

  v8 = *v3;
  sub_23E900EB4();
  v32[0] = *v5;
  *(v32 + 13) = *(v5 + 13);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  *v30 = *v5;
  *&v30[13] = *(v5 + 13);
  TextAttribute.hash(into:)(v31);
  MEMORY[0x23EF17B90](v9);
  MEMORY[0x23EF17B90](v10);
  result = sub_23E900F14();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (1)
    {
      v13 = *(v8 + 48) + 40 * a2;
      v14 = *(v13 + 8);
      v15 = *(v13 + 16);
      v17 = *(v13 + 24);
      v16 = *(v13 + 32);
      v18 = *(v13 + 20);
      *v30 = *v13;
      *&v30[8] = v14;
      *&v30[16] = v15;
      v30[20] = v18;
      *v29 = v32[0];
      *&v29[13] = *(v32 + 13);
      sub_23E88FDE0(*v30, v14, v15, v18);
      sub_23E896040(v5, v31);
      v19 = _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(v30, v29);
      sub_23E88FDF8(*v29, *&v29[8], *&v29[16], v29[20]);
      result = sub_23E88FDF8(*v30, *&v30[8], *&v30[16], v30[20]);
      if (v19 && v17 == v9 && v16 == v10)
      {
        break;
      }

      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = sub_23E900E34();
    __break(1u);
  }

LABEL_18:
  v21 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v22 = *(v21 + 48) + 40 * a2;
  v23 = *v5;
  v24 = *(v5 + 16);
  *(v22 + 32) = *(v5 + 32);
  *v22 = v23;
  *(v22 + 16) = v24;
  v25 = *(v21 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v27;
  }

  return result;
}

void *sub_23E8C241C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E868, &unk_23E905D30);
  v2 = *v0;
  v3 = sub_23E900C74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = (v14 | (v8 << 6)) << 6;
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[3];
        v27[2] = v18[2];
        v27[3] = v21;
        v27[0] = v20;
        v27[1] = v19;
        v22 = (*(v4 + 48) + v17);
        v23 = *v18;
        v24 = v18[1];
        v25 = v18[3];
        v22[2] = v18[2];
        v22[3] = v25;
        *v22 = v23;
        v22[1] = v24;
        result = sub_23E895FE4(v27, &v26);
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_23E8C25A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
  v2 = *v0;
  v3 = sub_23E900C74();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        v24 = *(v18 + 20);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 20) = v24;
        *(v22 + 24) = v23;
        result = sub_23E88FDE0(v19, v20, v21, v24);
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_23E8C2718(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E868, &unk_23E905D30);
  result = sub_23E900C84();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v20 = (*(v3 + 48) + ((v17 | (v6 << 6)) << 6));
      v22 = *v20;
      v21 = v20[1];
      v23 = v20[3];
      v41 = v20[2];
      v42 = v23;
      v39 = v22;
      v40 = v21;
      v24 = v20[1];
      v35 = *v20;
      v36 = v24;
      v25 = v20[3];
      v37 = v20[2];
      v38 = v25;
      sub_23E900EB4();
      sub_23E895FE4(&v39, v33);
      RenderAsset.hash(into:)(v34);
      result = sub_23E900F14();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + (v12 << 6));
      v14 = v39;
      v15 = v40;
      v16 = v42;
      v13[2] = v41;
      v13[3] = v16;
      *v13 = v14;
      v13[1] = v15;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23E8C2978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E870, &unk_23E905D90);
  result = sub_23E900C84();
  v35 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v5 = 0;
    v6 = v3 + 56;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v31 = (v7 + 63) >> 6;
    v32 = v3;
    v10 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v34 = (v9 - 1) & v9;
LABEL_15:
      v16 = *(v3 + 48) + 40 * (v13 | (v5 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 20);
      v21 = *(v16 + 24);
      v22 = *(v16 + 32);
      sub_23E900EB4();
      sub_23E88FDE0(v17, v18, v19, v20);
      TextAttribute.hash(into:)(v36);
      v33 = v21;
      MEMORY[0x23EF17B90](v21);
      MEMORY[0x23EF17B90](v22);
      result = sub_23E900F14();
      v23 = -1 << *(v35 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v10 + 8 * v25);
          if (v29 != -1)
          {
            v11 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v35 + 48) + 40 * v11;
      *v12 = v17;
      v3 = v32;
      *(v12 + 8) = v18;
      *(v12 + 16) = v19;
      *(v12 + 20) = v20;
      *(v12 + 24) = v33;
      *(v12 + 32) = v22;
      ++*(v35 + 16);
      v9 = v34;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v31)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v15 = *(v6 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v35;
  }

  return result;
}

unint64_t *sub_23E8C2C3C(unint64_t *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_23E8C2ECC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_23E8C2CC4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_23E8C49A0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_23E8C2D60(uint64_t a1, unsigned __int8 a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_23E8C2ECC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_23E8C2C3C(v10, v6, v4, a2);
  result = MEMORY[0x23EF18560](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_23E8C2ECC(unint64_t *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  while (v9)
  {
    v10 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v11 = v10 | (v6 << 6);
LABEL_12:
    if (*(*(a3 + 56) + 72 * v11 + 64) == a4)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_23E8C2FC8(result, a2, v5, a3);
      }
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= ((v7 + 63) >> 6))
    {
      return sub_23E8C2FC8(result, a2, v5, a3);
    }

    v13 = *(a3 + 64 + 8 * v6);
    ++v12;
    if (v13)
    {
      v9 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v6 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8C2FC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E710, &qword_23E903468);
  result = sub_23E900D64();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v39 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 72 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v45 = *(v21 + 64);
    v43 = v23;
    v44 = v24;
    v41 = *v21;
    v42 = v22;
    sub_23E900EB4();

    sub_23E88FEB4(&v41, v40);
    sub_23E900904();
    result = sub_23E900F14();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 16 * v28);
    *v33 = v19;
    v33[1] = v20;
    v34 = *(v9 + 56) + 72 * v28;
    *v34 = v41;
    v35 = v42;
    v36 = v43;
    v37 = v44;
    *(v34 + 64) = v45;
    *(v34 + 32) = v36;
    *(v34 + 48) = v37;
    *(v34 + 16) = v35;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v39;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23E8C324C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = sub_23E87E458(v16, &qword_27E35E620, &qword_23E9032F0))
    {
      v9 = i;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(v2 + 48) + ((v9 << 12) | (v10 << 6)));
      v12 = v11[3];
      v14 = *v11;
      v13 = v11[1];
      v17[2] = v11[2];
      v17[3] = v12;
      v17[0] = v14;
      v17[1] = v13;
      sub_23E895FE4(v17, v16);
      sub_23E8C3C00(v17, v15);
      sub_23E899A78(v17);
      v16[0] = v15[0];
      v16[1] = v15[1];
      v16[2] = v15[2];
      v16[3] = v15[3];
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
      }

      v6 = *(v3 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8C3390(uint64_t a1, uint64_t a2)
{
  v129 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v2 = a1;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = -1 << *(a1 + 32);
  v103 = ~v5;
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (63 - v5) >> 6;
  v111 = a2;
  v112 = (a2 + 56);

  v10 = 0;
  v101 = 0;
  v105 = v9;
  v106 = v8;
  v104 = v4;
  while (1)
  {
LABEL_6:
    if (!v7)
    {
      v12 = v10;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          sub_23E8A237C(v2);
          return v111;
        }

        v7 = *(v4 + 8 * v11);
        ++v12;
        if (v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v11 = v10;
LABEL_12:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = (*(v2 + 48) + ((v11 << 12) | (v13 << 6)));
    v15 = v14[3];
    v17 = *v14;
    v16 = v14[1];
    v122 = v14[2];
    v123 = v15;
    v120 = v17;
    v121 = v16;
    v116 = *v14;
    v117 = v14[1];
    v118 = v14[2];
    v119 = v14[3];
    sub_23E900EB4();
    sub_23E895FE4(&v120, v115);
    RenderAsset.hash(into:)(v113);
    v18 = sub_23E900F14();
    v19 = -1 << *(v111 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if (((1 << v20) & v112[v20 >> 6]) != 0)
    {
      break;
    }

    sub_23E899A78(&v120);
    v10 = v11;
    v8 = v106;
  }

  v23 = v111;
  v107 = v7;
  v108 = v11;
  v25 = *(&v120 + 1);
  v24 = v120;
  v109 = v120;
  v110 = ~v19;
  while (1)
  {
    v26 = *(v23 + 48) + (v20 << 6);
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    v29 = *(v26 + 32);
    v30 = *(v26 + 40);
    v31 = *(v26 + 41);
    if (*v26 != v24 || *(v26 + 8) != v25)
    {
      v33 = sub_23E900E04();
      v24 = v109;
      v23 = v111;
      if ((v33 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (v30)
    {
      if ((BYTE8(v122) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (BYTE8(v122))
      {
        goto LABEL_14;
      }

      v34 = *&v27 == *&v121 && *(&v27 + 1) == *(&v121 + 1);
      v35 = v34 && *&v28 == *(&v121 + 2);
      v36 = v35 && *(&v28 + 1) == *(&v121 + 3);
      if (!v36 || v29 != v122)
      {
        goto LABEL_14;
      }
    }

    v38 = v31 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v39 = v31 ? 0xEA00000000004745 : 0xE900000000000067;
    v40 = BYTE9(v122) ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v41 = BYTE9(v122) ? 0xEA00000000004745 : 0xE900000000000067;
    if (v38 == v40 && v39 == v41)
    {
      break;
    }

    v43 = sub_23E900E04();

    v24 = v109;
    v23 = v111;
    if (v43)
    {
      v45 = v104;
      v47 = v107;
      v46 = v108;
      v126 = v103;
      v127 = v108;
      v128 = v107;
      v11 = v105;
      v124 = v105;
      v125 = v104;
      goto LABEL_61;
    }

LABEL_14:
    v20 = (v20 + 1) & v110;
    v21 = v20 >> 6;
    v22 = 1 << v20;
    if ((v112[v20 >> 6] & (1 << v20)) == 0)
    {
      sub_23E899A78(&v120);
      v7 = v107;
      v10 = v108;
      v4 = v104;
      v2 = v105;
      v8 = v106;
      goto LABEL_6;
    }
  }

  v45 = v104;
  v126 = v103;
  v127 = v108;
  v128 = v107;
  v11 = v105;
  v124 = v105;
  v125 = v104;

  v47 = v107;
  v46 = v108;

LABEL_61:
  v48 = sub_23E899A78(&v120);
  v49 = v111;
  v50 = *(v111 + 32);
  v51 = v50 & 0x3F;
  v52 = ((1 << v50) + 63) >> 6;
  v98 = v52;
  if (v51 > 0xD)
  {
    v95 = 8 * v52;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v96 = swift_slowAlloc();
      memcpy(v96, v112, v95);
      v94 = sub_23E8C3E98(v96, v98, v111, v20, &v124);

      MEMORY[0x23EF18560](v96, -1, -1);
      v11 = v124;
      v103 = v126;
      goto LABEL_123;
    }

    v46 = v108;
  }

  v99 = &v97;
  MEMORY[0x28223BE20](v48);
  v54 = &v97 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
  memcpy(v54, v112, v53);
  v55 = *&v54[8 * v21] & ~v22;
  v56 = *(v49 + 16);
  v102 = v54;
  *&v54[8 * v21] = v55;
  v100 = v56 - 1;
  v57 = v106;
  while (2)
  {
    v58 = v46;
    while (2)
    {
      while (2)
      {
        while (2)
        {
          if (!v47)
          {
            v60 = v58;
            while (1)
            {
              v59 = v60 + 1;
              if (__OFADD__(v60, 1))
              {
                goto LABEL_125;
              }

              if (v59 >= v57)
              {
                v94 = sub_23E894BE0(v102, v98, v100, v111);
                goto LABEL_123;
              }

              v47 = *(v45 + 8 * v59);
              ++v60;
              if (v47)
              {
                goto LABEL_71;
              }
            }
          }

          v59 = v58;
LABEL_71:
          v61 = __clz(__rbit64(v47));
          v47 &= v47 - 1;
          v62 = (*(v11 + 48) + ((v59 << 12) | (v61 << 6)));
          v63 = v62[3];
          v65 = *v62;
          v64 = v62[1];
          v118 = v62[2];
          v119 = v63;
          v116 = v65;
          v117 = v64;
          v115[0] = *v62;
          v115[1] = v62[1];
          v115[2] = v62[2];
          v115[3] = v62[3];
          sub_23E900EB4();
          sub_23E895FE4(&v116, &v114);
          RenderAsset.hash(into:)(v113);
          v66 = sub_23E900F14();
          v67 = v111;
          v68 = -1 << *(v111 + 32);
          v69 = v59;
          v70 = v66 & ~v68;
          v71 = v70 >> 6;
          v72 = 1 << v70;
          if (((1 << v70) & v112[v70 >> 6]) == 0)
          {
            sub_23E899A78(&v116);
            v58 = v69;
            v57 = v106;
            continue;
          }

          break;
        }

        v107 = v47;
        v108 = v69;
        v74 = *(&v116 + 1);
        v73 = v116;
        v109 = v116;
        v110 = ~v68;
LABEL_74:
        v75 = *(v67 + 48) + (v70 << 6);
        v76 = *(v75 + 16);
        v77 = *(v75 + 24);
        v78 = *(v75 + 32);
        v79 = *(v75 + 40);
        v80 = *(v75 + 41);
        if (*v75 != v73 || *(v75 + 8) != v74)
        {
          v82 = sub_23E900E04();
          v73 = v109;
          v67 = v111;
          if ((v82 & 1) == 0)
          {
            goto LABEL_73;
          }
        }

        if (v79)
        {
          if (BYTE8(v118))
          {
            goto LABEL_97;
          }

LABEL_73:
          v70 = (v70 + 1) & v110;
          v71 = v70 >> 6;
          v72 = 1 << v70;
          if ((v112[v70 >> 6] & (1 << v70)) == 0)
          {
            sub_23E899A78(&v116);
            v47 = v107;
            v58 = v108;
            v45 = v104;
            v11 = v105;
            v57 = v106;
            continue;
          }

          goto LABEL_74;
        }

        break;
      }

      if (BYTE8(v118))
      {
        goto LABEL_73;
      }

      v83 = *&v76 == *&v117 && *(&v76 + 1) == *(&v117 + 1);
      v84 = v83 && *&v77 == *(&v117 + 2);
      v85 = v84 && *(&v77 + 1) == *(&v117 + 3);
      if (!v85 || v78 != v118)
      {
        goto LABEL_73;
      }

LABEL_97:
      if (v80)
      {
        v87 = 0x504A2F6F65646976;
      }

      else
      {
        v87 = 0x6E702F6567616D69;
      }

      if (v80)
      {
        v88 = 0xEA00000000004745;
      }

      else
      {
        v88 = 0xE900000000000067;
      }

      if (BYTE9(v118))
      {
        v89 = 0x504A2F6F65646976;
      }

      else
      {
        v89 = 0x6E702F6567616D69;
      }

      if (BYTE9(v118))
      {
        v90 = 0xEA00000000004745;
      }

      else
      {
        v90 = 0xE900000000000067;
      }

      if (v87 != v89 || v88 != v90)
      {
        v92 = sub_23E900E04();

        v73 = v109;
        v67 = v111;
        if (v92)
        {
          goto LABEL_117;
        }

        goto LABEL_73;
      }

LABEL_117:
      sub_23E899A78(&v116);
      v93 = v102[v71];
      v102[v71] = v93 & ~v72;
      v45 = v104;
      v47 = v107;
      if ((v93 & v72) == 0)
      {
        v58 = v108;
        v11 = v105;
        v57 = v106;
        continue;
      }

      break;
    }

    v11 = v105;
    v57 = v106;
    v46 = v108;
    if (__OFSUB__(v100, 1))
    {
      __break(1u);
    }

    if (v100 != 1)
    {
      --v100;
      continue;
    }

    break;
  }

LABEL_126:

  v94 = MEMORY[0x277D84FA0];
LABEL_123:
  sub_23E8A237C(v11);
  return v94;
}

uint64_t sub_23E8C3C00@<X0>(float32x4_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[1];
  v39 = *a1;
  v40 = v5;
  v6 = a1[3];
  v41 = a1[2];
  v42 = v6;
  sub_23E900EB4();
  RenderAsset.hash(into:)(v38);
  result = sub_23E900F14();
  v36 = v4 + 56;
  v37 = v4;
  v8 = -1 << *(v4 + 32);
  v9 = result & ~v8;
  if (((*(v4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_33:
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    return result;
  }

  v10 = ~v8;
  v11 = a1->i64[0];
  v12 = a1->i64[1];
  if (a1[2].i8[9])
  {
    v13 = 0x504A2F6F65646976;
  }

  else
  {
    v13 = 0x6E702F6567616D69;
  }

  v34 = v13;
  if (a1[2].i8[9])
  {
    v14 = 0xEA00000000004745;
  }

  else
  {
    v14 = 0xE900000000000067;
  }

  v35 = v14;
  while (1)
  {
    v15 = *(v37 + 48) + (v9 << 6);
    result = *v15;
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *(v15 + 40);
    v20 = *(v15 + 41);
    if (*v15 != v11 || *(v15 + 8) != v12)
    {
      result = sub_23E900E04();
      if ((result & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v19)
    {
      if ((a1[2].i8[8] & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (a1[2].i8[8])
      {
        goto LABEL_9;
      }

      v22.i64[0] = v17;
      v22.i64[1] = v16;
      if ((vminv_u16(vmovn_s32(vceqq_f32(a1[1], v22))) & 1) == 0 || v18 != a1[2].i64[0])
      {
        goto LABEL_9;
      }
    }

    v23 = v20 ? 0x504A2F6F65646976 : 0x6E702F6567616D69;
    v24 = v20 ? 0xEA00000000004745 : 0xE900000000000067;
    if (v23 == v34 && v24 == v35)
    {
      break;
    }

    v26 = sub_23E900E04();

    if (v26)
    {
      goto LABEL_35;
    }

LABEL_9:
    v9 = (v9 + 1) & v10;
    if (((*(v36 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v32;
  v38[0] = *v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23E8C241C();
    v28 = v38[0];
  }

  v29 = (*(v28 + 48) + (v9 << 6));
  v30 = v29[1];
  *a2 = *v29;
  a2[1] = v30;
  v31 = v29[3];
  a2[2] = v29[2];
  a2[3] = v31;
  result = sub_23E8C4210(v9);
  *v32 = v38[0];
  return result;
}

unint64_t *sub_23E8C3E98(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v6 = *(a3 + 16);
  v49 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v64 = a3;
  v53 = a3 + 56;
LABEL_2:
  v48 = v7;
LABEL_4:
  while (1)
  {
    v8 = v5[3];
    v9 = v5[4];
    if (!v9)
    {
      break;
    }

    v10 = v5[3];
LABEL_10:
    v13 = (*(*v5 + 48) + ((v10 << 12) | (__clz(__rbit64(v9)) << 6)));
    v15 = v13[2];
    v14 = v13[3];
    v16 = v13[1];
    v60 = *v13;
    v17 = v60;
    v61 = v16;
    v62 = v15;
    v63 = v14;
    v5[3] = v10;
    v5[4] = (v9 - 1) & v9;
    v18 = v64;
    v56 = v17;
    v57 = v16;
    v58 = v15;
    v59 = v14;
    sub_23E900EB4();
    sub_23E895FE4(&v60, v54);
    RenderAsset.hash(into:)(v55);
    v19 = sub_23E900F14();
    v20 = -1 << *(v18 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v53 + 8 * (v21 >> 6))) != 0)
    {
      v25 = *(&v60 + 1);
      v24 = v60;
      v51 = v60;
      v52 = ~v20;
      while (1)
      {
        v26 = *(v64 + 48) + (v21 << 6);
        v28 = *(v26 + 16);
        v27 = *(v26 + 24);
        v29 = *(v26 + 32);
        v30 = *(v26 + 40);
        v31 = *(v26 + 41);
        if (*v26 != v24 || *(v26 + 8) != v25)
        {
          v33 = sub_23E900E04();
          v24 = v51;
          if ((v33 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        if (v30)
        {
          if ((BYTE8(v62) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          if (BYTE8(v62))
          {
            goto LABEL_12;
          }

          v34 = *&v28 == *&v61 && *(&v28 + 1) == *(&v61 + 1);
          v35 = v34 && *&v27 == *(&v61 + 2);
          v36 = v35 && *(&v27 + 1) == *(&v61 + 3);
          if (!v36 || v29 != v62)
          {
            goto LABEL_12;
          }
        }

        if (v31)
        {
          v38 = 0x504A2F6F65646976;
        }

        else
        {
          v38 = 0x6E702F6567616D69;
        }

        if (v31)
        {
          v39 = 0xEA00000000004745;
        }

        else
        {
          v39 = 0xE900000000000067;
        }

        if (BYTE9(v62))
        {
          v40 = 0x504A2F6F65646976;
        }

        else
        {
          v40 = 0x6E702F6567616D69;
        }

        if (BYTE9(v62))
        {
          v41 = 0xEA00000000004745;
        }

        else
        {
          v41 = 0xE900000000000067;
        }

        if (v38 == v40 && v39 == v41)
        {

LABEL_56:
          result = sub_23E899A78(&v60);
          v44 = v49[v22];
          v49[v22] = v44 & ~v23;
          if ((v44 & v23) == 0)
          {
LABEL_57:
            v5 = a5;
            goto LABEL_4;
          }

          v7 = v48 - 1;
          v5 = a5;
          if (__OFSUB__(v48, 1))
          {
LABEL_66:
            __break(1u);
            return result;
          }

          if (v48 == 1)
          {
            return MEMORY[0x277D84FA0];
          }

          goto LABEL_2;
        }

        v43 = sub_23E900E04();

        v24 = v51;
        if (v43)
        {
          goto LABEL_56;
        }

LABEL_12:
        v21 = (v21 + 1) & v52;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v53 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          result = sub_23E899A78(&v60);
          goto LABEL_57;
        }
      }
    }

    result = sub_23E899A78(&v60);
  }

  v11 = (v5[2] + 64) >> 6;
  v12 = v5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_66;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(v5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v45 = v8 + 1;
  }

  else
  {
    v45 = (v5[2] + 64) >> 6;
  }

  v5[3] = v45 - 1;
  v5[4] = 0;
  v46 = v64;

  return sub_23E894BE0(v49, a2, v48, v46);
}

unint64_t sub_23E8C4210(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23E900C34();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v13 = (*(v3 + 48) + (v6 << 6));
        v15 = *v13;
        v14 = v13[1];
        v16 = v13[3];
        v33[2] = v13[2];
        v33[3] = v16;
        v33[0] = v15;
        v33[1] = v14;
        v17 = v13[1];
        v29 = *v13;
        v30 = v17;
        v18 = v13[3];
        v31 = v13[2];
        v32 = v18;
        sub_23E900EB4();
        sub_23E895FE4(v33, v27);
        RenderAsset.hash(into:)(v28);
        v19 = sub_23E900F14();
        sub_23E899A78(v33);
        v20 = v19 & v7;
        if (v2 >= v9)
        {
          if (v20 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v20)
        {
LABEL_11:
          v21 = *(v3 + 48);
          v22 = (v21 + (v2 << 6));
          v23 = (v21 + (v6 << 6));
          if (v2 != v6 || v22 >= v23 + 4)
          {
            v10 = *v23;
            v11 = v23[1];
            v12 = v23[3];
            v22[2] = v23[2];
            v22[3] = v12;
            *v22 = v10;
            v22[1] = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_23E8C4408(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  *(v4 + 16) = a1;
  v7 = *a3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_23E8C44B8;

  return sub_23E8BD568(a2, v7, a4 & 1);
}

uint64_t sub_23E8C44B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_23E8C45C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_23E8C494C();
  result = MEMORY[0x23EF17790](v2, &type metadata for RenderAsset, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v11[0] = *v5;
      v11[1] = v6;
      v7 = v5[3];
      v11[2] = v5[2];
      v11[3] = v7;
      sub_23E895FE4(v11, v9);
      sub_23E8C14F4(v8, v11);
      v9[0] = v8[0];
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      sub_23E899A78(v9);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_23E8C46A4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23E888F34;

  return sub_23E8C4408(a1, a2, v6, v7);
}

uint64_t sub_23E8C4770()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_23E8C47B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 96);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E889AD8;

  return sub_23E899388(a1, v4, v5, (v1 + 32), v6);
}

uint64_t sub_23E8C4878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E658, &qword_23E905CE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C48E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RenderAssetAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E8C494C()
{
  result = qword_27E35F018;
  if (!qword_27E35F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F018);
  }

  return result;
}

unint64_t *sub_23E8C49A0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = (*(a3 + 48) + (v16 << 6));
    v18 = v17[3];
    v20 = *v17;
    v19 = v17[1];
    v25[2] = v17[2];
    v25[3] = v18;
    v25[0] = v20;
    v25[1] = v19;
    sub_23E895FE4(v25, v24);
    v21 = sub_23E8C02B0(v25, a4);
    result = sub_23E899A78(v25);
    if ((v21 & 1) == 0)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_23E894BE0(v26, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_15;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8C4B08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = v8;
    v29 = v3;
    v27 = &v27;
    MEMORY[0x28223BE20](v10);
    v11 = &v27 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v9);
    v30 = 0;
    v3 = 0;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v8 = v13 & *(a1 + 56);
    v14 = (v12 + 63) >> 6;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_12:
      v9 = v15 | (v3 << 6);
      v18 = (*(a1 + 48) + (v9 << 6));
      v19 = v18[3];
      v21 = *v18;
      v20 = v18[1];
      v32[2] = v18[2];
      v32[3] = v19;
      v32[0] = v21;
      v32[1] = v20;
      sub_23E895FE4(v32, v31);
      v22 = sub_23E8C02B0(v32, a2);
      sub_23E899A78(v32);
      if ((v22 & 1) == 0)
      {
        *&v11[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_23E894BE0(v11, v28, v30, a1);

          return v24;
        }
      }
    }

    v16 = v3;
    while (1)
    {
      v3 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v3 >= v14)
      {
        goto LABEL_16;
      }

      v17 = *(a1 + 56 + 8 * v3);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();

  v24 = sub_23E8C2CC4(v26, v8, a1, a2);

  MEMORY[0x23EF18560](v26, -1, -1);

  return v24;
}

uint64_t sub_23E8C4DA0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23E8C4DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8C4E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E8C4EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t TextAttribute.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 20);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_18;
    }

    v9 = 0;
  }

  else
  {
    if (v7 <= 4)
    {
      if (v7 != 3)
      {
        MEMORY[0x23EF17B90](4);
        if (v5)
        {
          MEMORY[0x23EF17B90](1);
          sub_23E900904();
        }

        else
        {
          MEMORY[0x23EF17B90](0);
        }

        return sub_23E900EE4();
      }

      v8 = 3;
LABEL_18:
      MEMORY[0x23EF17B90](v8);
      return sub_23E900EE4();
    }

    if (v7 != 5)
    {
      v8 = 6;
      goto LABEL_18;
    }

    v9 = 5;
  }

  MEMORY[0x23EF17B90](v9);

  return Color.hash(into:)(a1, v4, v5, v6);
}

uint64_t TextAttribute.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_23E900EB4();
  TextAttribute.hash(into:)(v4);
  return sub_23E900F14();
}

uint64_t sub_23E8C5078()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 20);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_23E900EB4();
  TextAttribute.hash(into:)(v4);
  return sub_23E900F14();
}

uint64_t sub_23E8C50D8(uint64_t a1)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 20);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_23E900EB4();
  TextAttribute.hash(into:)(v5);
  return sub_23E900F14();
}

uint64_t TextAttributeRegion.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  TextAttribute.hash(into:)(a1);
  MEMORY[0x23EF17B90](v2);
  return MEMORY[0x23EF17B90](v3);
}

uint64_t TextAttributeRegion.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_23E900EB4();
  TextAttribute.hash(into:)(v4);
  MEMORY[0x23EF17B90](v1);
  MEMORY[0x23EF17B90](v2);
  return sub_23E900F14();
}

uint64_t sub_23E8C5230()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_23E900EB4();
  TextAttribute.hash(into:)(v4);
  MEMORY[0x23EF17B90](v1);
  MEMORY[0x23EF17B90](v2);
  return sub_23E900F14();
}

uint64_t sub_23E8C52C0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  TextAttribute.hash(into:)(a1);
  MEMORY[0x23EF17B90](v2);
  return MEMORY[0x23EF17B90](v3);
}

uint64_t sub_23E8C5328(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_23E900EB4();
  TextAttribute.hash(into:)(v5);
  MEMORY[0x23EF17B90](v2);
  MEMORY[0x23EF17B90](v3);
  return sub_23E900F14();
}

BOOL _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v37[0] = v3;
  v37[1] = v4;
  v38 = v5;
  v39 = v6;
  v40 = v7;
  v41 = v8;
  v42 = v9;
  v43 = v10;
  if (v6 <= 2)
  {
    if (!v6)
    {
      if (!v10)
      {
        v11 = v9;
        v12 = v5;
        if (!v5)
        {
          v28 = v8;
          v29 = v7;
          sub_23E89609C(v37);
          if (v11)
          {
            return 0;
          }

          v30 = *&v3 == *&v29 && *(&v3 + 1) == *(&v29 + 1);
          v31 = v30 && *&v4 == *&v28;
          return v31 && *(&v4 + 1) == *(&v28 + 1);
        }

LABEL_21:
        if (v12 == 1)
        {
          if (v11 != 1)
          {
LABEL_34:
            sub_23E89609C(v37);
            return 0;
          }

          v15 = sub_23E899FD8(v3, v7);
          sub_23E89609C(v37);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v26 = v8;
          v27 = v7;
          sub_23E89609C(v37);
          if (v11 != 2 || v26 | v27)
          {
            return 0;
          }
        }

        return 1;
      }

LABEL_33:
      sub_23E88FDE0(v7, v8, v9, v10);
      goto LABEL_34;
    }

    if (v6 == 1)
    {
      if (v10 != 1)
      {
        goto LABEL_33;
      }
    }

    else if (v10 != 2)
    {
      goto LABEL_33;
    }

LABEL_30:
    v20 = *&v7;
    sub_23E89609C(v37);
    return *&v3 == v20;
  }

  if (v6 > 4)
  {
    if (v6 == 5)
    {
      if (v10 == 5)
      {
        v11 = v9;
        v12 = v5;
        if (!v5)
        {
          v13 = v8;
          v14 = v7;
          sub_23E89609C(v37);
          return !v11 && *&v3 == *&v14 && *(&v3 + 1) == *(&v14 + 1) && *&v4 == *&v13 && *(&v4 + 1) == *(&v13 + 1);
        }

        goto LABEL_21;
      }

      goto LABEL_33;
    }

    if (v10 != 6)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v6 == 3)
  {
    if (v10 != 3)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (v10 != 4)
  {
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = v10;

    LOBYTE(v10) = v24;
    v9 = v23;
    v8 = v22;
    v7 = v21;
    goto LABEL_33;
  }

  v35[0] = v3;
  v35[1] = v4;
  v36 = v5;
  v33[0] = v7;
  v33[1] = v8;
  v34 = v9;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  sub_23E88FDE0(v7, v8, v9, 4);
  sub_23E88FDE0(v3, v4, v5, 4);
  sub_23E88FDE0(v16, v17, v18, 4);
  sub_23E88FDE0(v3, v4, v5, 4);
  v19 = _s10AirPlayKit4FontV2eeoiySbAC_ACtFZ_0(v35, v33);
  sub_23E89609C(v37);
  sub_23E88FDF8(v16, v17, v18, 4);
  sub_23E88FDF8(v3, v4, v5, 4);
  return v19;
}

BOOL _s10AirPlayKit19TextAttributeRegionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a1 + 20);
  v12 = *(a2 + 20);
  v21 = *a1;
  v22 = v2;
  v23 = v3;
  v24 = v11;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v12;
  sub_23E88FDE0(v21, v2, v3, v11);
  sub_23E88FDE0(v6, v7, v8, v12);
  v13 = _s10AirPlayKit13TextAttributeO2eeoiySbAC_ACtFZ_0(&v21, &v17);
  sub_23E88FDF8(v17, v18, v19, v20);
  sub_23E88FDF8(v21, v22, v23, v24);
  v15 = v4 == v9 && v5 == v10;
  return v13 && v15;
}

unint64_t sub_23E8C57A4()
{
  result = qword_27E35F058;
  if (!qword_27E35F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F058);
  }

  return result;
}

unint64_t sub_23E8C57FC()
{
  result = qword_27E35F060;
  if (!qword_27E35F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F060);
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_23E8C5870(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 21))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 20);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E8C58B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
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

uint64_t sub_23E8C592C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 40))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 20);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_23E8C5974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t RenderNodeError.hashValue.getter()
{
  sub_23E900EB4();
  MEMORY[0x23EF17B90](0);
  return sub_23E900F14();
}

unint64_t sub_23E8C5A48()
{
  result = qword_27E35F068;
  if (!qword_27E35F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F068);
  }

  return result;
}

unint64_t sub_23E8C5AAC(uint64_t a1)
{
  result = sub_23E8AC838();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8C5AD4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_23E900964() != a1 || v9 != a2)
  {
    v10 = sub_23E900E04();

    if (v10)
    {
      return v8;
    }

    v8 = sub_23E900924();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_23E8C5BC4(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  MEMORY[0x28223BE20](v9 - 8);
  v43 = &v43 - v10;
  v50 = type metadata accessor for ContainerContent.Child(0);
  v11 = MEMORY[0x28223BE20](v50);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = &v43 - v18;
  v48 = *(a2 + 16);
  v20 = 0;
  if (v48)
  {
    v21 = a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    while (1)
    {
      sub_23E8C8998(v21, v19, type metadata accessor for ContainerContent.Child);
      sub_23E900F24();
      sub_23E8C8998(v19, v16, type metadata accessor for ContainerContent.Child);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v27 = v45;
          v28 = &qword_27E35E438;
          v29 = &unk_23E907E20;
          sub_23E87E3F0(v16, v45, &qword_27E35E438, &unk_23E907E20);
          MEMORY[0x23EF17B90](2);
          sub_23E8AA7BC(v53);
        }

        else
        {
          v27 = v46;
          v28 = &qword_27E35E430;
          v29 = &unk_23E902C80;
          sub_23E87E3F0(v16, v46, &qword_27E35E430, &unk_23E902C80);
          MEMORY[0x23EF17B90](3);
          sub_23E8AA52C(v53);
        }

        v24 = v27;
        v25 = v28;
        v26 = v29;
      }

      else if (EnumCaseMultiPayload)
      {
        v30 = v44;
        sub_23E87E3F0(v16, v44, &unk_27E35E440, &unk_23E902C90);
        MEMORY[0x23EF17B90](1);
        sub_23E8AAA3C(v53);
        v24 = v30;
        v25 = &unk_27E35E440;
        v26 = &unk_23E902C90;
      }

      else
      {
        v23 = v43;
        sub_23E87E3F0(v16, v43, &unk_27E35E630, &qword_23E903300);
        MEMORY[0x23EF17B90](0);
        sub_23E8AACF8(v53);
        v24 = v23;
        v25 = &unk_27E35E630;
        v26 = &qword_23E903300;
      }

      sub_23E87E458(v24, v25, v26);
      sub_23E900F24();
      sub_23E8C8998(v49, v13, type metadata accessor for ContainerContent.Child);
      v31 = swift_getEnumCaseMultiPayload();
      if (v31 > 1)
      {
        if (v31 == 2)
        {
          v36 = v45;
          v37 = &qword_27E35E438;
          v38 = &unk_23E907E20;
          sub_23E87E3F0(v13, v45, &qword_27E35E438, &unk_23E907E20);
          MEMORY[0x23EF17B90](2);
          sub_23E8AA7BC(v51);
        }

        else
        {
          v36 = v46;
          v37 = &qword_27E35E430;
          v38 = &unk_23E902C80;
          sub_23E87E3F0(v13, v46, &qword_27E35E430, &unk_23E902C80);
          MEMORY[0x23EF17B90](3);
          sub_23E8AA52C(v51);
        }

        v33 = v36;
        v34 = v37;
        v35 = v38;
      }

      else if (v31)
      {
        v39 = v44;
        sub_23E87E3F0(v13, v44, &unk_27E35E440, &unk_23E902C90);
        MEMORY[0x23EF17B90](1);
        sub_23E8AAA3C(v51);
        v33 = v39;
        v34 = &unk_27E35E440;
        v35 = &unk_23E902C90;
      }

      else
      {
        v32 = v43;
        sub_23E87E3F0(v13, v43, &unk_27E35E630, &qword_23E903300);
        MEMORY[0x23EF17B90](0);
        sub_23E8AACF8(v51);
        v33 = v32;
        v34 = &unk_27E35E630;
        v35 = &qword_23E903300;
      }

      sub_23E87E458(v33, v34, v35);
      v62 = v53[2];
      v63 = v53[3];
      v64 = v54;
      v60 = v53[0];
      v61 = v53[1];
      v40 = sub_23E900F04();
      v57 = v51[2];
      v58 = v51[3];
      v59 = v52;
      v55 = v51[0];
      v56 = v51[1];
      v41 = sub_23E900F04();
      sub_23E8C87D4(v19, type metadata accessor for ContainerContent.Child);
      if (v40 == v41)
      {
        break;
      }

      ++v20;
      v21 += v47;
      if (v48 == v20)
      {
        return 0;
      }
    }
  }

  return v20;
}

void *sub_23E8C61DC(uint64_t *a1, uint64_t a2)
{
  v167 = a2;
  v4 = type metadata accessor for RenderLayerType(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v160 = (&v157 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F070, &qword_23E906130);
  MEMORY[0x28223BE20](v9 - 8);
  v171 = &v157 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  MEMORY[0x28223BE20](v11 - 8);
  v177 = &v157 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  MEMORY[0x28223BE20](v13 - 8);
  v176 = &v157 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  MEMORY[0x28223BE20](v15 - 8);
  v175 = &v157 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  MEMORY[0x28223BE20](v17 - 8);
  v174 = &v157 - v18;
  v192 = sub_23E9006D4();
  v19 = *(v192 - 8);
  v20 = MEMORY[0x28223BE20](v192);
  v166 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v168 = &v157 - v23;
  MEMORY[0x28223BE20](v22);
  v189 = &v157 - v24;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F078, &qword_23E906138);
  v164 = *(v163 - 8);
  v25 = MEMORY[0x28223BE20](v163);
  v161 = &v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v162 = &v157 - v27;
  v28 = type metadata accessor for ContainerContent.Child(0);
  v186 = *(v28 - 8);
  v187 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v170 = &v157 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v165 = &v157 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v179 = &v157 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v169 = &v157 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v180 = &v157 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v190 = &v157 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v191 = (&v157 - v42);
  MEMORY[0x28223BE20](v41);
  v44 = &v157 - v43;
  v45 = *a1;
  v46 = *v2;
  v47 = v2[1];
  if (!*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F080, &qword_23E906140);
    v79 = (type metadata accessor for RenderLayerAction(0) - 8);
    v80 = (*(*v79 + 80) + 32) & ~*(*v79 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_23E903380;
    v82 = v81 + v80;
    v83 = v167;
    (*(v19 + 16))(v82, v167, v192);
    *(v82 + v79[7]) = v47;
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RenderLayerActionType(0);
    v84 = swift_storeEnumTagMultiPayload();
    MEMORY[0x28223BE20](v84);
    *(&v157 - 4) = v46;
    *(&v157 - 3) = v47;
    *(&v157 - 2) = v83;
    v85 = v184;
    v86 = sub_23E8C7E1C(MEMORY[0x277D84F90], sub_23E8C8798, (&v157 - 6), v46);
    if (v85)
    {
      swift_setDeallocating();
      sub_23E8C87D4(v82, type metadata accessor for RenderLayerAction);
      swift_deallocClassInstance();
    }

    else
    {
      v132 = v86;
      v133 = sub_23E8BD0DC(v81);
      swift_setDeallocating();
      sub_23E8C87D4(v82, type metadata accessor for RenderLayerAction);
      swift_deallocClassInstance();
      v193 = v133;
      sub_23E8EBFB4(v132);
      return v193;
    }

    return v81;
  }

  v173 = *v2;
  v172 = v47;
  v178 = v19;
  v158 = v7;
  v159 = v4;
  v157 = a1[1];
  v185 = v45;
  v48 = sub_23E88EFD8(MEMORY[0x277D84F90]);
  v49 = v185;
  v50 = v48;
  v183 = *(v185 + 16);
  if (!v183)
  {
    v53 = v184;
LABEL_28:
    v87 = v173;
    v193 = v173;
    v196 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F088, &qword_23E906148);
    sub_23E8C88E0(&qword_27E35F090, &qword_27E35F088, &qword_23E906148, MEMORY[0x277D83958]);
    v88 = v162;
    sub_23E900834();

    sub_23E8C8834(&qword_27E35F098, type metadata accessor for ContainerContent.Child, &protocol conformance descriptor for ContainerContent.Child);
    v89 = v161;
    v90 = v163;
    v91 = sub_23E900D74();
    MEMORY[0x28223BE20](v91);
    v92 = v167;
    *(&v157 - 2) = v185;
    *(&v157 - 1) = v92;
    v93 = MEMORY[0x277D84F90];
    v94 = sub_23E8C7AE4(MEMORY[0x277D84F90], sub_23E8C87B8, (&v157 - 4));
    if (v53)
    {

      v81 = *(v164 + 8);
      (v81)(v89, v90);
      (v81)(v88, v90);
      return v81;
    }

    v188 = 0;
    v184 = v94;
    v95 = *(v164 + 8);
    v164 += 8;
    v183 = v95;
    v95(v89, v90);
    v193 = v93;
    v190 = *(v87 + 16);
    if (!v190)
    {

      v99 = v172;
LABEL_57:
      v134 = v193;
      v193 = v184;
      sub_23E8EBFB4(v134);
      v135 = v193;
      v136 = v193[2];
      if (v136)
      {
        v81 = sub_23E889F50(0, 1, 1, MEMORY[0x277D84F90]);
        v137 = (v135 + 4);
        do
        {
          sub_23E8810DC(v137, &v193);
          v196 = v81;
          v139 = *(v81 + 16);
          v138 = *(v81 + 24);
          if (v139 >= v138 >> 1)
          {
            v81 = sub_23E889F50((v138 > 1), v139 + 1, 1, v81);
            v196 = v81;
          }

          v140 = v194;
          v141 = v195;
          v142 = __swift_mutable_project_boxed_opaque_existential_1(&v193, v194);
          MEMORY[0x28223BE20](v142);
          v144 = &v157 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v145 + 16))(v144);
          sub_23E8F2C70(v139, v144, &v196, v140, v141);
          __swift_destroy_boxed_opaque_existential_1(&v193);
          v137 += 40;
          --v136;
        }

        while (v136);

        v99 = v172;
      }

      else
      {

        v81 = MEMORY[0x277D84F90];
      }

      v146 = v160;
      *v160 = v157;
      swift_storeEnumTagMultiPayload();
      v147 = v158;
      *v158 = v99;
      swift_storeEnumTagMultiPayload();
      v148 = sub_23E88EB14(v146, v147);
      v149 = v99;
      sub_23E8C87D4(v147, type metadata accessor for RenderLayerType);
      sub_23E8C87D4(v146, type metadata accessor for RenderLayerType);
      v150 = v167;
      v151 = v163;
      v152 = v162;
      if (v148)
      {
        v183(v162, v163);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_23E903380;
        v154 = type metadata accessor for RenderLayerAction(0);
        *(v153 + 56) = v154;
        *(v153 + 64) = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction, &unk_23E903978);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v153 + 32));
        (*(v178 + 16))(boxed_opaque_existential_1, v150, v192);
        *(boxed_opaque_existential_1 + *(v154 + 20)) = v149;
        swift_storeEnumTagMultiPayload();
        type metadata accessor for RenderLayerActionType(0);
        swift_storeEnumTagMultiPayload();
        v193 = v153;
        sub_23E8EBFB4(v81);
        v183(v152, v151);
        return v193;
      }

      return v81;
    }

    v96 = 0;
    v189 = v87 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
    v97 = (v178 + 16);
    v191 = (v178 + 8);
    v185 = v186 + 56;
    v98 = v168;
    while (1)
    {
      if (v96 >= *(v173 + 16))
      {
        goto LABEL_72;
      }

      v100 = *(v186 + 72);
      v101 = v180;
      sub_23E8C8998(v189 + v100 * v96, v180, type metadata accessor for ContainerContent.Child);
      sub_23E8C8998(v101, v179, type metadata accessor for ContainerContent.Child);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (!EnumCaseMultiPayload)
      {
        v103 = v179;
        v104 = v176;
        v105 = v176;
        v106 = &unk_27E35E630;
        v107 = &unk_27E35E630;
        v108 = &qword_23E903300;
LABEL_42:
        sub_23E87E3F0(v103, v105, v107, v108);
        v110 = *v97;
        (*v97)(v98, v104, v192);
        v111 = v104;
        v112 = v106;
        v113 = v108;
        goto LABEL_43;
      }

      v109 = v175;
      sub_23E87E3F0(v179, v175, &unk_27E35E440, &unk_23E902C90);
      v110 = *v97;
      (*v97)(v98, v109, v192);
      v111 = v109;
      v112 = &unk_27E35E440;
      v113 = &unk_23E902C90;
LABEL_43:
      sub_23E87E458(v111, v112, v113);
      if (v50[2] && (v114 = sub_23E88C9D8(v98), (v115 & 1) != 0))
      {
        v116 = v165;
        sub_23E8C8998(v50[7] + v114 * v100, v165, type metadata accessor for ContainerContent.Child);
        v117 = *v191;
        (*v191)(v98, v192);
        v118 = v169;
        sub_23E88A940(v116, v169);
        v119 = v171;
        sub_23E8C8998(v118, v171, type metadata accessor for ContainerContent.Child);
        (*v185)(v119, 0, 1, v187);
        sub_23E8C8998(v180, v170, type metadata accessor for ContainerContent.Child);
        v120 = swift_getEnumCaseMultiPayload();
        if (v120 > 1)
        {
          v121 = v166;
          if (v120 == 2)
          {
            v122 = v170;
            v123 = v177;
            v124 = v177;
            v125 = &qword_27E35E438;
            v126 = &qword_27E35E438;
            v127 = &unk_23E907E20;
          }

          else
          {
            v122 = v170;
            v123 = v174;
            v124 = v174;
            v125 = &qword_27E35E430;
            v126 = &qword_27E35E430;
            v127 = &unk_23E902C80;
          }
        }

        else
        {
          v121 = v166;
          if (v120)
          {
            v122 = v170;
            v123 = v175;
            v124 = v175;
            v125 = &unk_27E35E440;
            v126 = &unk_27E35E440;
            v127 = &unk_23E902C90;
          }

          else
          {
            v122 = v170;
            v123 = v176;
            v124 = v176;
            v125 = &unk_27E35E630;
            v126 = &unk_27E35E630;
            v127 = &qword_23E903300;
          }
        }

        sub_23E87E3F0(v122, v124, v126, v127);
        v110(v121, v123, v192);
        sub_23E87E458(v123, v125, v127);
        v128 = v171;
        v129 = v188;
        v130 = sub_23E8F6C48(v171, v121);
        v188 = v129;
        if (v129)
        {

          v117(v121, v192);
          sub_23E87E458(v128, &qword_27E35F070, &qword_23E906130);
          v81 = type metadata accessor for ContainerContent.Child;
          sub_23E8C87D4(v169, type metadata accessor for ContainerContent.Child);
          sub_23E8C87D4(v180, type metadata accessor for ContainerContent.Child);

          v183(v162, v163);
          return v81;
        }

        v131 = v130;
        v117(v121, v192);
        sub_23E87E458(v128, &qword_27E35F070, &qword_23E906130);
        sub_23E8EBFB4(v131);
        sub_23E8C87D4(v169, type metadata accessor for ContainerContent.Child);
        v98 = v168;
      }

      else
      {
        (*v191)(v98, v192);
      }

      ++v96;
      sub_23E8C87D4(v180, type metadata accessor for ContainerContent.Child);
      v99 = v172;
      if (v190 == v96)
      {

        goto LABEL_57;
      }
    }

    if (EnumCaseMultiPayload == 2)
    {
      v103 = v179;
      v104 = v177;
      v105 = v177;
      v106 = &qword_27E35E438;
      v107 = &qword_27E35E438;
      v108 = &unk_23E907E20;
    }

    else
    {
      v103 = v179;
      v104 = v174;
      v105 = v174;
      v106 = &qword_27E35E430;
      v107 = &qword_27E35E430;
      v108 = &unk_23E902C80;
    }

    goto LABEL_42;
  }

  v51 = 0;
  v182 = v185 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
  v188 = (v178 + 16);
  v181 = (v178 + 8);
  v52 = v189;
  while (v51 < *(v49 + 16))
  {
    v54 = *(v186 + 72);
    sub_23E8C8998(v182 + v54 * v51, v44, type metadata accessor for ContainerContent.Child);
    sub_23E8C8998(v44, v191, type metadata accessor for ContainerContent.Child);
    v55 = swift_getEnumCaseMultiPayload();
    if (v55 > 1)
    {
      if (v55 == 2)
      {
        v56 = v191;
        v57 = v177;
        v58 = v177;
        v59 = &qword_27E35E438;
        v60 = &qword_27E35E438;
        v61 = &unk_23E907E20;
      }

      else
      {
        v56 = v191;
        v57 = v174;
        v58 = v174;
        v59 = &qword_27E35E430;
        v60 = &qword_27E35E430;
        v61 = &unk_23E902C80;
      }
    }

    else if (v55)
    {
      v56 = v191;
      v57 = v175;
      v58 = v175;
      v59 = &unk_27E35E440;
      v60 = &unk_27E35E440;
      v61 = &unk_23E902C90;
    }

    else
    {
      v56 = v191;
      v57 = v176;
      v58 = v176;
      v59 = &unk_27E35E630;
      v60 = &unk_27E35E630;
      v61 = &qword_23E903300;
    }

    sub_23E87E3F0(v56, v58, v60, v61);
    v62 = *v188;
    (*v188)(v52, v57, v192);
    sub_23E87E458(v57, v59, v61);
    sub_23E8C8998(v44, v190, type metadata accessor for ContainerContent.Child);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v193 = v50;
    v65 = sub_23E88C9D8(v52);
    v66 = v50[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_70;
    }

    v69 = v64;
    if (v50[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v50 = v193;
        if (v64)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_23E8CF95C();
        v50 = v193;
        if (v69)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_23E88CE14(v68, isUniquelyReferenced_nonNull_native);
      v70 = sub_23E88C9D8(v189);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_73;
      }

      v65 = v70;
      v50 = v193;
      if (v69)
      {
LABEL_4:
        sub_23E8C887C(v190, v50[7] + v65 * v54);
        v52 = v189;
        (*v181)(v189, v192);
        sub_23E8C87D4(v44, type metadata accessor for ContainerContent.Child);
        goto LABEL_5;
      }
    }

    v50[(v65 >> 6) + 8] |= 1 << v65;
    v72 = v178;
    v73 = v189;
    v74 = v192;
    v62(v50[6] + *(v178 + 72) * v65, v189, v192);
    v75 = v50[7] + v65 * v54;
    v52 = v73;
    sub_23E88A940(v190, v75);
    (*(v72 + 8))(v73, v74);
    sub_23E8C87D4(v44, type metadata accessor for ContainerContent.Child);
    v76 = v50[2];
    v77 = __OFADD__(v76, 1);
    v78 = v76 + 1;
    if (v77)
    {
      goto LABEL_71;
    }

    v50[2] = v78;
LABEL_5:
    ++v51;
    v53 = v184;
    v49 = v185;
    if (v183 == v51)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_23E900E44();
  __break(1u);
  return result;
}

uint64_t sub_23E8C773C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a5;
  v39 = a1;
  v7 = type metadata accessor for RenderLayerAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F070, &qword_23E906130);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v33 - v11;
  v13 = sub_23E9006D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  ContainerContent.Child.id.getter(v16);
  v17 = type metadata accessor for ContainerContent.Child(0);
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = sub_23E8F6C48(v12, v16);
  if (v5)
  {
    sub_23E87E458(v12, &qword_27E35F070, &qword_23E906130);
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v20 = v18;
    sub_23E87E458(v12, &qword_27E35F070, &qword_23E906130);
    (*(v14 + 8))(v16, v13);
    v21 = v39;
    sub_23E8EBFB4(v20);
    v22 = sub_23E8C5BC4(a2, v34);
    v24 = v9;
    if (v23)
    {
      v25 = 0;
    }

    else
    {
      v25 = v22;
    }

    (*(v14 + 16))(v24, v35, v13);
    v26 = v24;
    v27 = &v24[*(v7 + 20)];
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48);
    ContainerContent.Child.id.getter(v27);
    *(v27 + v28) = v25;
    type metadata accessor for RenderLayerActionType(0);
    swift_storeEnumTagMultiPayload();
    v29 = *v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_23E889F50(0, v29[2] + 1, 1, v29);
    }

    v31 = v29[2];
    v30 = v29[3];
    if (v31 >= v30 >> 1)
    {
      v29 = sub_23E889F50((v30 > 1), v31 + 1, 1, v29);
    }

    v37 = v7;
    v38 = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction, &unk_23E903978);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    sub_23E8C8998(v26, boxed_opaque_existential_1, type metadata accessor for RenderLayerAction);
    v29[2] = v31 + 1;
    sub_23E881028(&v36, &v29[5 * v31 + 4]);
    result = sub_23E8C87D4(v26, type metadata accessor for RenderLayerAction);
    *v21 = v29;
  }

  return result;
}

uint64_t sub_23E8C7AE4(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3)
{
  v24 = a2;
  v25 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A0, &qword_23E906150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F078, &qword_23E906138);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A8, &qword_23E906158);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v23 = a1;
  v27 = a1;
  (*(v10 + 16))(v12, v3, v9);
  sub_23E8C88E0(&qword_27E35F0B0, &qword_27E35F078, &qword_23E906138, MEMORY[0x277D84488]);
  sub_23E900984();
  v17 = *(v14 + 44);
  sub_23E8C88E0(&qword_27E35F0B8, &qword_27E35F078, &qword_23E906138, MEMORY[0x277D84490]);
  sub_23E900AD4();
  if (*&v16[v17] == v26[0])
  {
    v18 = v23;
LABEL_6:
    sub_23E87E458(v16, &qword_27E35F0A8, &qword_23E906158);
  }

  else
  {
    while (1)
    {
      v19 = sub_23E900AF4();
      sub_23E8C8928(v20, v8);
      v19(v26, 0);
      sub_23E900AE4();
      v18 = v25;
      v24(&v27, v8);
      sub_23E87E458(v8, &qword_27E35F0A0, &qword_23E906150);
      if (v4)
      {
        break;
      }

      sub_23E900AD4();
      if (*&v16[v17] == v26[0])
      {
        v18 = v27;
        goto LABEL_6;
      }
    }

    sub_23E87E458(v16, &qword_27E35F0A8, &qword_23E906158);
  }

  return v18;
}

uint64_t sub_23E8C7E1C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for ContainerContent.Child(0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_23E8C7F00()
{
  v0 = sub_23E9006D4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  ContainerContent.Child.id.getter(&v10 - v5);
  ContainerContent.Child.id.getter(v4);
  v7 = sub_23E9006B4();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  return v7 & 1;
}

uint64_t sub_23E8C8024(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a2;
  v50 = a4;
  v54 = a3;
  v63 = a1;
  v4 = sub_23E9006D4();
  v56 = *(v4 - 8);
  v57 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F070, &qword_23E906130);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v52 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = (&v49 - v11);
  v13 = type metadata accessor for RenderLayerAction(0);
  v14 = MEMORY[0x28223BE20](v13);
  v51 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - v16;
  v18 = type metadata accessor for ContainerContent.Child(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A0, &qword_23E906150);
  MEMORY[0x28223BE20](v25);
  v27 = (&v49 - v26);
  sub_23E8C8928(v59, &v49 - v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = v63;
    v59 = *v27;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0C0, &unk_23E906160);
    v33 = v27 + *(v32 + 64);
    v34 = *v33;
    v35 = v33[8];
    sub_23E88A940(v27 + *(v32 + 48), v22);
    v36 = v22;
    if (v35 == 1)
    {
      (*(v19 + 7))(v12, 1, 1, v18);
      v37 = v55;
      goto LABEL_12;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v34 < *(v54 + 16))
    {
      v12 = v52;
      sub_23E8C8998(v54 + ((v19[80] + 32) & ~v19[80]) + *(v19 + 9) * v34, v52, type metadata accessor for ContainerContent.Child);
      (*(v19 + 7))(v12, 0, 1, v18);
      v37 = v53;
LABEL_12:
      ContainerContent.Child.id.getter(v37);
      v38 = v58;
      v39 = sub_23E8F6C48(v12, v37);
      if (v38)
      {
        (*(v56 + 8))(v37, v57);
        sub_23E87E458(v12, &qword_27E35F070, &qword_23E906130);
        return sub_23E8C87D4(v36, type metadata accessor for ContainerContent.Child);
      }

      v41 = v39;
      v42 = v56;
      v43 = v37;
      v44 = v57;
      (*(v56 + 8))(v43, v57);
      sub_23E87E458(v12, &qword_27E35F070, &qword_23E906130);
      v19 = v17;
      sub_23E8EBFB4(v41);
      v17 = v51;
      (*(v42 + 16))(v51, v50, v44);
      v45 = &v17[*(v13 + 20)];
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48);
      ContainerContent.Child.id.getter(v45);
      *(v45 + v46) = v59;
      type metadata accessor for RenderLayerActionType(0);
      swift_storeEnumTagMultiPayload();
      v12 = *v19;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }

    __break(1u);
LABEL_21:
    v12 = sub_23E889F50(0, v12[2] + 1, 1, v12);
LABEL_15:
    v30 = v12[2];
    v47 = v12[3];
    if (v30 >= v47 >> 1)
    {
      v12 = sub_23E889F50((v47 > 1), v30 + 1, 1, v12);
    }

    sub_23E8C87D4(v36, type metadata accessor for ContainerContent.Child);
    v61 = v13;
    v62 = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction, &unk_23E903978);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v60);
    sub_23E8C8998(v17, boxed_opaque_existential_1, type metadata accessor for RenderLayerAction);
    v12[2] = v30 + 1;
    goto LABEL_18;
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0C0, &unk_23E906160);
  sub_23E88A940(v27 + *(v28 + 48), v24);
  ContainerContent.Child.id.getter(v17);
  type metadata accessor for RenderLayerActionType(0);
  swift_storeEnumTagMultiPayload();
  v19 = v63;
  v12 = *v63;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = sub_23E889F50(0, v12[2] + 1, 1, v12);
  }

  v30 = v12[2];
  v29 = v12[3];
  if (v30 >= v29 >> 1)
  {
    v12 = sub_23E889F50((v29 > 1), v30 + 1, 1, v12);
  }

  sub_23E8C87D4(v24, type metadata accessor for ContainerContent.Child);
  v61 = v13;
  v62 = sub_23E8C8834(&qword_27E35E848, type metadata accessor for RenderLayerAction, &unk_23E903978);
  v31 = __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_23E8C8998(v17, v31, type metadata accessor for RenderLayerAction);
  v12[2] = v30 + 1;
LABEL_18:
  sub_23E881028(&v60, &v12[5 * v30 + 4]);
  result = sub_23E8C87D4(v17, type metadata accessor for RenderLayerAction);
  *v19 = v12;
  return result;
}

void *sub_23E8C8758(__int128 *a1, uint64_t a2)
{
  v5 = *v2;
  v4 = *a1;
  return sub_23E8C61DC(&v4, a2);
}

uint64_t sub_23E8C87D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E8C8834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E8C887C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContainerContent.Child(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C88E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_23E8C8928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F0A0, &qword_23E906150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8C8998(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t sub_23E8C8A1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E8C8A64(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

id sub_23E8C8AC0()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = *v0;
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 48))(v4, v5);
  v6 = sub_23E900854();

  v7 = sub_23E900854();
  v8 = 1;
  v9 = [v2 nodeWithIdentifier:v3 name:v6 type:1 value:v7];

  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v10);
  v12 = (*(v11 + 72))(v10, v11);
  sub_23E8C8C60(v12);

  v13 = sub_23E9009A4();

  [v9 setAttributes_];

  if (*(v1 + 8) == 1)
  {
    v14 = v1[5];
    v15 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v14);
    v8 = (*(v15 + 56))(v14, v15);
  }

  [v9 setChildNodeCount_];
  return v9;
}

char *sub_23E8C8C60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_23E8CA0B4(*(a1 + 16), 0);
    v4 = sub_23E8CADD0(&v25, (v3 + 4), v1, a1);
    v5 = v25;

    sub_23E8A237C(v5);
    if (v4 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v25 = v3;
  sub_23E8C8FE8(&v25);
  v6 = v25[2];
  if (v6)
  {
    v7 = (v25 + 4);
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_23E8C9CA4(v7, &v25);
      sub_23E8C9CA4(&v25, v23);
      v9 = v23[0];
      v10 = v23[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_23E88A9A4(0, *(v8 + 2) + 1, 1, v8);
      }

      v12 = *(v8 + 2);
      v11 = *(v8 + 3);
      if (v12 >= v11 >> 1)
      {
        v8 = sub_23E88A9A4((v11 > 1), v12 + 1, 1, v8);
      }

      *(v8 + 2) = v12 + 1;
      v13 = &v8[16 * v12];
      *(v13 + 4) = v9;
      *(v13 + 5) = v10;
      sub_23E8A2384(&v24);
      sub_23E8C9CA4(&v25, v23);

      if (swift_dynamicCast())
      {
        v14 = v21;
        v15 = v22;
      }

      else
      {
        sub_23E8C9CA4(&v25, v23);

        v14 = sub_23E9008D4();
        v15 = v16;
      }

      v18 = *(v8 + 2);
      v17 = *(v8 + 3);
      if (v18 >= v17 >> 1)
      {
        v8 = sub_23E88A9A4((v17 > 1), v18 + 1, 1, v8);
      }

      sub_23E8C9D14(&v25);
      *(v8 + 2) = v18 + 1;
      v19 = &v8[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v15;
      v7 += 56;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v8;
}

id sub_23E8C8ECC()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *(v0 + 4);
  v3 = objc_opt_self();
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  (*(v5 + 48))(v4, v5);
  v6 = sub_23E900854();

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  (*(v8 + 40))(v7, v8);
  v9 = sub_23E900854();

  v10 = [v3 nodeWithIdentifier:v2 name:v6 type:3 value:v9];

  return v10;
}

uint64_t sub_23E8C8FE8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E8F2C5C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_23E8C9054(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_23E8C9054(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E900DC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED60, &qword_23E905168);
        v5 = sub_23E9009E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E8C9290(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23E8C915C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23E8C915C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
LABEL_6:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      sub_23E8C9CA4(v10, v21);
      v11 = v10 - 56;
      sub_23E8C9CA4(v10 - 56, v20);
      if (v21[0] == v20[0] && v21[1] == v20[1])
      {
        sub_23E8C9D14(v20);
        result = sub_23E8C9D14(v21);
LABEL_5:
        ++v4;
        v7 += 56;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v13 = sub_23E900E04();
      sub_23E8C9D14(v20);
      result = sub_23E8C9D14(v21);
      if ((v13 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 48);
      v16 = *(v10 + 16);
      v15 = *(v10 + 32);
      v17 = *v10;
      v18 = *(v10 - 40);
      *v10 = *v11;
      *(v10 + 16) = v18;
      *(v10 + 32) = *(v10 - 24);
      *(v10 + 48) = *(v10 - 8);
      *v11 = v17;
      *(v10 - 40) = v16;
      *(v10 - 24) = v15;
      v10 -= 56;
      *(v11 + 48) = v14;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8C9290(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v7 = *v104;
    if (!*v104)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v112 = v8;
      v95 = *(v8 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v96 = *&v8[16 * v95];
          v97 = *&v8[16 * v95 + 24];
          sub_23E8C997C((*a3 + 56 * v96), (*a3 + 56 * *&v8[16 * v95 + 16]), *a3 + 56 * v97, v7);
          if (v5)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_23E8F2A84(v8);
          }

          if (v95 - 2 >= *(v8 + 2))
          {
            goto LABEL_130;
          }

          v98 = &v8[16 * v95];
          *v98 = v96;
          *(v98 + 1) = v97;
          v112 = v8;
          result = sub_23E8F29F8(v95 - 1);
          v8 = v112;
          v95 = *(v112 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_23E8F2A84(v8);
    v8 = result;
    goto LABEL_106;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *a3;
      sub_23E8C9CA4(*a3 + 56 * v7, &v110);
      sub_23E8C9CA4(v10 + 56 * v9, &v108);
      v11 = v110 == v108 && v111 == v109;
      v100 = v5;
      if (v11)
      {
        v105 = 0;
      }

      else
      {
        v105 = sub_23E900E04();
      }

      sub_23E8C9D14(&v108);
      result = sub_23E8C9D14(&v110);
      v12 = v9 + 2;
      v102 = v9;
      v5 = 56 * v9;
      v13 = v10 + 56 * v9 + 112;
      v14 = v5 + 56;
      do
      {
        v16 = v12;
        v17 = v7;
        v18 = v14;
        if (v12 >= v6)
        {
          break;
        }

        sub_23E8C9CA4(v13, &v110);
        sub_23E8C9CA4(v13 - 56, &v108);
        v19 = v110 == v108 && v111 == v109;
        v15 = v19 ? 0 : sub_23E900E04();
        sub_23E8C9D14(&v108);
        result = sub_23E8C9D14(&v110);
        v12 = (v16 + 1);
        v13 += 56;
        ++v7;
        v14 = v18 + 56;
      }

      while (((v105 ^ v15) & 1) == 0);
      if (v105)
      {
        v9 = v102;
        if (v16 < v102)
        {
          goto LABEL_133;
        }

        if (v102 < v16)
        {
          v20 = v102;
          do
          {
            if (v20 != v17)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v23 = (v22 + v5);
              v24 = *(v22 + v5 + 48);
              v25 = (v22 + v18);
              v27 = v23[1];
              v26 = v23[2];
              v28 = *v23;
              v30 = v25[1];
              v29 = v25[2];
              v31 = *v25;
              *(v23 + 6) = *(v25 + 6);
              v23[1] = v30;
              v23[2] = v29;
              *v23 = v31;
              *v25 = v28;
              v25[1] = v27;
              v25[2] = v26;
              *(v25 + 6) = v24;
            }

            ++v20;
            v18 -= 56;
            v5 += 56;
          }

          while (v20 < v17--);
        }

        v7 = v16;
        v5 = v100;
      }

      else
      {
        v7 = v16;
        v5 = v100;
        v9 = v102;
      }
    }

    v32 = a3[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_132;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_53:
    if (v7 < v9)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E88A1E0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_23E88A1E0((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_141;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_73:
          if (v57)
          {
            goto LABEL_120;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_123;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_127;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_87:
        if (v75)
        {
          goto LABEL_122;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_94:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v92 = *&v8[16 * v91 + 32];
        v93 = *&v8[16 * v53 + 40];
        sub_23E8C997C((*a3 + 56 * v92), (*a3 + 56 * *&v8[16 * v53 + 32]), *a3 + 56 * v93, v52);
        if (v5)
        {
        }

        if (v93 < v92)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23E8F2A84(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v94 = &v8[16 * v91];
        *(v94 + 4) = v92;
        *(v94 + 5) = v93;
        v112 = v8;
        result = sub_23E8F29F8(v53);
        v8 = v112;
        v50 = *(v112 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_118;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_121;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_124;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_128;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v33 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_134;
  }

  if (v33 >= v32)
  {
    v33 = a3[1];
  }

  if (v33 < v9)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v7 == v33)
  {
    goto LABEL_53;
  }

  v101 = v5;
  v103 = v9;
  v34 = *a3;
  v35 = *a3 + 56 * v7;
  v36 = v9 - v7;
  v106 = v33;
LABEL_42:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_23E8C9CA4(v38, &v110);
    v39 = v38 - 56;
    sub_23E8C9CA4(v38 - 56, &v108);
    if (v110 == v108 && v111 == v109)
    {
      sub_23E8C9D14(&v108);
      sub_23E8C9D14(&v110);
LABEL_41:
      ++v7;
      v35 += 56;
      --v36;
      if (v7 == v106)
      {
        v7 = v106;
        v5 = v101;
        v9 = v103;
        goto LABEL_53;
      }

      goto LABEL_42;
    }

    v41 = sub_23E900E04();
    sub_23E8C9D14(&v108);
    result = sub_23E8C9D14(&v110);
    if ((v41 & 1) == 0)
    {
      goto LABEL_41;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 48);
    v44 = *(v38 + 16);
    v43 = *(v38 + 32);
    v45 = *v38;
    v46 = *(v38 - 40);
    *v38 = *v39;
    *(v38 + 16) = v46;
    *(v38 + 32) = *(v38 - 24);
    *(v38 + 48) = *(v38 - 8);
    *v39 = v45;
    *(v38 - 40) = v44;
    *(v38 - 24) = v43;
    v38 -= 56;
    *(v39 + 48) = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}