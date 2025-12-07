uint64_t sub_22FE9AA10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttestationBundle(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9AA7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttestationBundle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9AAEC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = _s11CertificateV20AttestationExtensionVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9AB98(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = _s11CertificateV20AttestationExtensionVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9AC3C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_22FE9AC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AttestedTLS.Configurator(0, v5, *(v4 + 32), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 48) & ~*(*(v6 - 1) + 80));
  v8 = sub_22FFB12F8();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(*(v5 - 8) + 8))(v7 + v6[9], v5);
  v9 = *(v7 + v6[10]);
  if (v9 >= 4)
  {
  }

  if (*(v7 + v6[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9ADAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = type metadata accessor for AttestedTLS.Configurator(0, v5, *(v4 + 4), a4);
  v11 = (v8 + v9 + *(*(v10 - 1) + 80)) & ~*(*(v10 - 1) + 80);
  (*(v7 + 8))(&v4[v8], v6);
  v12 = sub_22FFB12F8();
  (*(*(v12 - 8) + 8))(&v4[v11], v12);
  (*(*(v5 - 8) + 8))(&v4[v11 + v10[9]], v5);
  v13 = *&v4[v11 + v10[10]];
  if (v13 >= 4)
  {
  }

  if (*&v4[v11 + v10[13]])
  {
  }

  return swift_deallocObject();
}

__n128 sub_22FE9AF98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22FE9AFA4()
{

  return swift_deallocObject();
}

uint64_t sub_22FE9AFDC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22FE9B014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 2);
  v6 = *(v4 + 3);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = type metadata accessor for AttestedTLS.Configurator(0, v5, *(v4 + 4), a4);
  v11 = (v8 + v9 + *(*(v10 - 1) + 80)) & ~*(*(v10 - 1) + 80);
  swift_unknownObjectRelease();

  (*(v7 + 8))(&v4[v8], v6);
  v12 = sub_22FFB12F8();
  (*(*(v12 - 8) + 8))(&v4[v11], v12);
  (*(*(v5 - 8) + 8))(&v4[v11 + v10[9]], v5);
  v13 = *&v4[v11 + v10[10]];
  if (v13 >= 4)
  {
  }

  if (*&v4[v11 + v10[13]])
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9B200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for AttestedTLS.Configurator(0, v5, *(v4 + 32), a4);
  v7 = (*(*(v6 - 1) + 80) + 48) & ~*(*(v6 - 1) + 80);
  v8 = sub_22FFB12F8();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  (*(*(v5 - 8) + 8))(v4 + v7 + v6[9], v5);
  v9 = *(v4 + v7 + v6[10]);
  if (v9 >= 4)
  {
  }

  if (*(v4 + v7 + v6[13]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9B384()
{
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v1 = v8;
  v9 = *(v0 + 24);
  v7 = v9;
  v10 = v2;
  v3 = (type metadata accessor for AttestedTLS.OptionsFactory(0, &v8) - 8);
  v4 = v0 + ((*(*v3 + 80) + 48) & ~*(*v3 + 80));
  v5 = sub_22FFB12F8();
  (*(*(v5 - 8) + 8))(v4, v5);
  (*(*(v1 - 8) + 8))(v4 + v3[15], v1);
  (*(*(v7 - 8) + 8))(v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_22FE9B4F0()
{
  v2 = *(v0 + 40);
  v11 = *(v0 + 16);
  v1 = v11;
  v12 = *(v0 + 24);
  v10 = v12;
  v13 = v2;
  v3 = (type metadata accessor for AttestedTLS.OptionsFactory(0, &v11) - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = sub_22FFB12F8();
  (*(*(v7 - 8) + 8))(v6, v7);
  (*(*(v1 - 8) + 8))(v6 + v3[15], v1);
  (*(*(v10 - 8) + 8))(v6 + v3[16]);
  v8 = *(v0 + v5);
  if (v8 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9B688()
{
  v2 = *(v0 + 40);
  v8 = *(v0 + 16);
  v1 = v8;
  v9 = *(v0 + 24);
  v7 = v9;
  v10 = v2;
  v3 = (type metadata accessor for AttestedTLS.OptionsFactory(0, &v8) - 8);
  v4 = (*(*v3 + 80) + 72) & ~*(*v3 + 80);
  swift_unknownObjectRelease();

  v5 = sub_22FFB12F8();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  (*(*(v1 - 8) + 8))(v0 + v4 + v3[15], v1);
  (*(*(v7 - 8) + 8))(v0 + v4 + v3[16]);
  return swift_deallocObject();
}

uint64_t sub_22FE9B808()
{

  return swift_deallocObject();
}

uint64_t sub_22FE9B84C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_22FE9B914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9B980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9BA20()
{
  v1 = (type metadata accessor for EnsembleValidator(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_22FFB0C28();
  (*(*(v3 - 8) + 8))(v2, v3);
  type metadata accessor for Release(0);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[14]));

  v4 = v1[21];
  v5 = sub_22FFB0908();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9BBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Release(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 76);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_22FE9BD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Release(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 76);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_22FE9BE4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1B80, &unk_22FFB3BA0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_22FE9BEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0D78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9BFA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0D78();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9C05C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0D78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = _s8PropertyV5ValueOMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9C14C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0D78();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = _s8PropertyV5ValueOMa(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9C270()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB12F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9C36C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB12F8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9C438()
{

  return swift_deallocObject();
}

uint64_t sub_22FE9C488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for X509Policy(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = v3[1];
  }

  else
  {
    v6 = 0;
  }

  *a2 = v4;
  a2[1] = v6;

  return sub_22FE9AC3C(v4, v5);
}

uint64_t sub_22FE9C4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9C59C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9C64C()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return swift_deallocObject();
}

double sub_22FE9C68C@<D0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v9 = *a1;
  v6 = *a2;
  v7 = v3;
  v8 = v4;
  return AttestationPolicyContext.subscript.getter(&v6, a3);
}

uint64_t sub_22FE9C6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for KeyOptionsPolicy.Assertion(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for KeyOptionsPolicy.OptionsLoader(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9C7E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for KeyOptionsPolicy.Assertion(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for KeyOptionsPolicy.OptionsLoader(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9C8E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FE9C960(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A28, &unk_22FFB3830);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FE9C9EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_22FE9CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x28223BE20](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_22FE9CC74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9CCEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2068, &qword_22FFB5470);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9CD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureConfigPolicy.SealedHashLoader(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9CDDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureConfigPolicy.SealedHashLoader(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9CE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SEP.SealedHash(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FE9CEB8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SEP.SealedHash(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FE9CF38()
{
  sub_22FEA55AC(*(v0 + 16), *(v0 + 24));
  sub_22FEA55AC(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_22FE9CF78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v3)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return sub_22FE9AC3C(v3, v2);
}

uint64_t sub_22FE9CF90(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_22FE9AC3C(*a1, a1[1]);
  result = sub_22FEA5C80(v5, v6);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_22FE9D020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Release(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9D08C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Release(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9D0FC()
{
  v1 = type metadata accessor for NodeValidator(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for PCC.ProxyNodeValidator(0) - 8);
  v13 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v5 = v0 + v2;
  __swift_destroy_boxed_opaque_existential_1((v0 + v2 + 8));

  v6 = *(v1 + 32);
  v7 = sub_22FFB0908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v10 = v0 + v13;
  __swift_destroy_boxed_opaque_existential_1((v0 + v13 + 8));

  v11 = *(v1 + 32);
  if (!v9(v0 + v13 + v11, 1, v7))
  {
    (*(v8 + 8))(v10 + v11, v7);
  }

  return swift_deallocObject();
}

uint64_t sub_22FE9D318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NodeValidator(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AttestationBundle(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9D408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for NodeValidator(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AttestationBundle(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9D5C4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for PCC.ProxyNodeValidator(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t sub_22FE9D5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NodeValidator(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22FE9D6D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for NodeValidator(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateCloudCompute_Environment(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PrivateCloudCompute_Environment(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_22FE9D974(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FE9D990(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_22FE9D9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 64) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9DA68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 56) = 0;
    *(result + 64) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9DB14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_22FFB0F88();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FE9DB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_22FFB0F88();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FE9DC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9DCB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9DD58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FE9DE94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FE9DFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_22FE9E124(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0F88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2150, &qword_22FFB5CA0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2140, &qword_22FFB5C90);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_22FE9E288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9E344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0F88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9E3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E4A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9E54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E5F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9E69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E748(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9E7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9E8AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9EB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FE9EC50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0F88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FE9ED08(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FE9EE38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FE9EF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9F020(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F0CC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9F178(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F21C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9F2C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F36C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_22FFB0F88();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_22FE9F4A0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2130, &unk_22FFB5C80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v13 = sub_22FFB0F88();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_22FE9F5D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FE9F68C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F738(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_22FE9F7A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FFB0F88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_22FE9F814(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FE9F8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FE9F964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0F88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_22FE9FA60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_22FFB0F88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF37C0, &unk_22FFB5C60);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_22FE9FBE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for PrivateCloudCompute_ReleaseMetadata.Asset(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (v5 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *v3;
  }

  v7 = 0xC000000000000000;
  if (v5 >> 60 != 15)
  {
    v7 = v5;
  }

  *a2 = v6;
  a2[1] = v7;

  return sub_22FEBF8F0(v4, v5);
}

uint64_t sub_22FE9FC4C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_22FFB0F88();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[12];

  return v16(v17, a2, v15);
}

uint64_t sub_22FE9FE24(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
    return result;
  }

  v8 = sub_22FFB0F88();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D38, &qword_22FFBA2F0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D40, &qword_22FFBA2F8);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[12];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_22FE9FFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA00B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FEA0290(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2D48, &qword_22FFBA300);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA046C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA05BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0660(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FEA070C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA07B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA08EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2118, &unk_22FFB5C70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA0BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA0CB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_22FEA0E18(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA0EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA1000(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2A48, &qword_22FFB9178);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA1138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 24) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA11F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *(result + 16) = 0;
    *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA129C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22FEA13CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA14FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 80);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_22FFB0F88();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 48);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 52);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t sub_22FEA162C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 80) = a2 + 1;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 48);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31A8, &qword_22FFBB630);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA1758(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA1888(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF2338, &unk_22FFBB620);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA19C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_22FEA1A78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22FFB0F88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22FEA1B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_22FEA1C6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v8 = sub_22FFB0F88();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF31E8, &qword_22FFBB648);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_22FEA1DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_22FFB0F88();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FEA1E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_22FFB0F88();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FEA1ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for SEP.SealedHash.Value(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_22FEA1F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for SEP.SealedHash.Value(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_22FEA1FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22FFB0C28();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_22FEA207C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22FFB0C28();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_22FEA216C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8) >> 60;
      v15 = ((4 * v14) & 0xC) == 0;
      v16 = ((4 * v14) & 0xC | (v14 >> 2)) ^ 0xF;
      if (v15)
      {
        return 0;
      }

      else
      {
        return v16;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_22FEA2290(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for PrivateCloudCompute_TransparencyLog_ATLogProofs(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 24));
      *v15 = 0;
      v15[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_22FEA2458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AttestationBundle(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_22FEA2524(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AttestationBundle(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_22FEA25E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 8)
  {
    return v5 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEA2658(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 7);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_22FEA26EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22FEA275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22FEA2818(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_22FEA2910(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

_OWORD *sub_22FEA2968(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22FEA2978(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation3SEPO0B0VAA0B6Policy_ps5Error_pIeghnrzo_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_22FEA29F4@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_22FEA2A0C()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_22FEA2A28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_22FEA2A44(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

BOOL sub_22FEA2A64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t getEnumTagSinglePayload for AttestedTLS(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AttestedTLS(_WORD *result, int a2, int a3)
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

uint64_t sub_22FEA2CBC(uint64_t a1, uint64_t a2)
{
  sub_22FFB1CA8();
  swift_getWitnessTable();
  sub_22FFB0A28();
  return sub_22FFB1CF8();
}

uint64_t sub_22FEA2D24(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_22FFB0A18();
}

void sub_22FEA2DF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22FEA2EA8(unint64_t *a1, uint64_t a2)
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

uint64_t sub_22FEA2EEC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB05960);
  __swift_project_value_buffer(v0, qword_27DB05960);
  return sub_22FFB12E8();
}

void sub_22FEA2F6C(__SecCertificate *a1@<X0>, __SecCertificate **a2@<X8>)
{
  v5 = _s11CertificateV20AttestationExtensionVMa(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = SecCertificateCopyKey(a1);
  if (v8)
  {
    v9 = v8;
    *a2 = a1;
    a2[1] = v8;
    v10 = qword_27DAF1238;
    a1 = a1;
    if (v10 != -1)
    {
      swift_once();
    }

    v11 = sub_22FFB0C98();
    __swift_project_value_buffer(v11, qword_27DB05978);
    sub_22FFB0C78();
    v12 = sub_22FFB1488();

    v13 = SecCertificateCopyExtensionValue();

    if (v13)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v17 = xmmword_22FFB2D00;
        sub_22FFB07D8();

        if (*(&v17 + 1) >> 60 != 15)
        {
          sub_22FEA3190(v17, *(&v17 + 1), v7);
          if (!v2)
          {
            v14 = _s11CertificateVMa(0);
            sub_22FEA5764(v7, a2 + *(v14 + 24), _s11CertificateV20AttestationExtensionVMa);
            return;
          }

          goto LABEL_12;
        }
      }

      else
      {
      }
    }

    sub_22FEA5550();
    swift_allocError();
    *v16 = 4;
    swift_willThrow();
LABEL_12:

    goto LABEL_13;
  }

  sub_22FEA5550();
  swift_allocError();
  *v15 = 0;
  swift_willThrow();
LABEL_13:
}

uint64_t sub_22FEA3190@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v6 - 8);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22FFB0BE8();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_22FFB0C28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FF6C960(a1, a2);
  sub_22FFB0DB8();
  result = sub_22FFB0DD8();
  if (!v3)
  {
    v14 = v23;
    v15 = sub_22FFB0C18();
    sub_22FF960FC(v15, v16, v17, v18);
    v19 = v24;
    AttestationBundle.init(data:)(v20, v21, v24);
    (*(v10 + 8))(v12, v9);
    return sub_22FEA5764(v19, v14, type metadata accessor for AttestationBundle);
  }

  return result;
}

uint64_t sub_22FEA33D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[43] = a6;
  v7[44] = a7;
  v7[41] = a4;
  v7[42] = a5;
  v7[39] = a2;
  v7[40] = a3;
  v7[38] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  v7[45] = swift_task_alloc();
  v8 = sub_22FFB0EE8();
  v7[46] = v8;
  v7[47] = *(v8 - 8);
  v7[48] = swift_task_alloc();
  _s11CertificateV20AttestationExtensionVMa(0);
  v7[49] = swift_task_alloc();
  v9 = sub_22FFB0908();
  v7[50] = v9;
  v7[51] = *(v9 - 8);
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  type metadata accessor for AttestationBundle(0);
  v7[54] = swift_task_alloc();
  v10 = sub_22FFB13F8();
  v7[55] = v10;
  v7[56] = *(v10 - 8);
  v7[57] = swift_task_alloc();
  v11 = sub_22FFB13B8();
  v7[58] = v11;
  v7[59] = *(v11 - 8);
  v7[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEA3678, 0, 0);
}

uint64_t sub_22FEA3678()
{
  v1 = SecKeyCopyPublicKey(*(v0 + 312));
  *(v0 + 488) = v1;
  if (v1)
  {
    v2 = v1;
    *(v0 + 296) = 0;
    v3 = SecKeyCopyExternalRepresentation(v1, (v0 + 296));
    *(v0 + 496) = v3;
    if (v3)
    {
      v4 = *(v0 + 456);
      v38 = *(v0 + 472);
      v39 = *(v0 + 464);
      v5 = *(v0 + 440);
      v36 = *(v0 + 480);
      v37 = *(v0 + 448);
      v41 = *(v0 + 408);
      v42 = *(v0 + 400);
      v40 = *(v0 + 416);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1528, &qword_22FFB2D60);
      v35 = swift_allocObject();
      *(v0 + 504) = v35;
      *(v35 + 16) = xmmword_22FFB2D10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1530, &qword_22FFB2D68);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_22FFB2D10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1538, &qword_22FFB2D70);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_22FFB2D20;
      *(v7 + 32) = sub_22FFB1498();
      *(v7 + 40) = v8;
      v9 = sub_22FFB07E8();
      v11 = v10;
      sub_22FEA5834(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
      sub_22FFB1388();
      sub_22FEA5608(v9, v11);
      sub_22FED5478(v9, v11, v4);
      sub_22FEA55AC(v9, v11);
      sub_22FFB1368();
      sub_22FEA55AC(v9, v11);
      (*(v37 + 8))(v4, v5);
      v12 = sub_22FF95E04();
      v14 = v13;
      (*(v38 + 8))(v36, v39);
      *(v7 + 48) = v12;
      *(v7 + 56) = v14;
      *(v6 + 32) = v7;
      *(v35 + 32) = v6;
      v15 = MEMORY[0x277D84F90];
      *(v0 + 512) = sub_22FFA6C20(MEMORY[0x277D84F90]);
      *(v0 + 520) = sub_22FFA6D50(v15);
      sub_22FFB08E8();
      sub_22FFB1D28();
      sub_22FFB1D28();
      sub_22FFB0858();
      v16 = *(v41 + 8);
      *(v0 + 528) = v16;
      *(v0 + 536) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v40, v42);
      v17 = swift_task_alloc();
      *(v0 + 544) = v17;
      *v17 = v0;
      v17[1] = sub_22FEA3BEC;
      v19 = *(v0 + 424);
      v18 = *(v0 + 432);
      v20 = *(v0 + 344);
      v21 = *(v0 + 352);
      v22 = *(v0 + 312);

      return Attestor.attest(key:expiration:)(v18, v22, v19, v20, v21);
    }

    v28 = *(v0 + 296);
    v29 = *(v0 + 344);
    v31 = *(v0 + 312);
    v30 = *(v0 + 320);
    if (v28)
    {
      type metadata accessor for CFError(0);
      sub_22FEA5834(&qword_27DAF1518, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      swift_allocError();
      *v32 = v28;
    }

    else
    {
      sub_22FEA5550();
      swift_allocError();
      *v33 = 1;
    }

    swift_willThrow();

    (*(*(v29 - 8) + 8))(v30, v29);
  }

  else
  {
    v24 = *(v0 + 344);
    v26 = *(v0 + 312);
    v25 = *(v0 + 320);
    sub_22FEA5550();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();

    (*(*(v24 - 8) + 8))(v25, v24);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_22FEA3BEC()
{
  v2 = *v1;
  *(v2 + 552) = v0;

  (*(v2 + 528))(*(v2 + 424), *(v2 + 400));
  if (v0)
  {

    v3 = sub_22FEA45B0;
  }

  else
  {
    v3 = sub_22FEA3D9C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEA3D9C()
{
  sub_22FEA57CC(*(v0 + 432), *(v0 + 392), type metadata accessor for AttestationBundle);
  if (qword_27DAF1238 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = sub_22FFB0C98();
  __swift_project_value_buffer(v2, qword_27DB05978);
  v3 = sub_22FFB0C78();
  v5 = v4;
  v6 = type metadata accessor for Proto_AttestationBundle(0);
  sub_22FEA5834(&qword_2814910C0, type metadata accessor for Proto_AttestationBundle, &protocol conformance descriptor for Proto_AttestationBundle);
  v7 = sub_22FFB1178();
  v9 = *(v0 + 520);
  if (v1)
  {
    v10 = *(v0 + 496);
    v11 = *(v0 + 488);
    v12 = *(v0 + 432);
    v13 = *(v0 + 392);
    v14 = *(v0 + 344);
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);

    (*(*(v14 - 8) + 8))(v16, v14);
    sub_22FEA54F0(v13, _s11CertificateV20AttestationExtensionVMa);
    sub_22FEA54F0(v12, type metadata accessor for AttestationBundle);

LABEL_5:

    v17 = *(v0 + 8);
    goto LABEL_15;
  }

  v18 = *(v0 + 376);
  v72 = *(v0 + 368);
  v70 = *(v0 + 432);
  v71 = *(v0 + 360);
  v19 = v7;
  v20 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CDE4(v19, v20, v3, v5, isUniquelyReferenced_nonNull_native);

  v22 = sub_22FFB1498();
  v24 = v23;
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1540, &qword_22FFB2D78);
  *(v0 + 16) = v9;
  sub_22FEA2968((v0 + 16), (v0 + 48));
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 48), v22, v24, v25);

  v69 = sub_22FFB1498();
  v27 = v26;
  v28 = *(v70 + *(v6 + 20));
  v29 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__keyExpiration;
  swift_beginAccess();
  sub_22FEA587C(v28 + v29, v71);
  v30 = *(v18 + 48);
  if (v30(v71, 1, v72) == 1)
  {
    v32 = *(v0 + 360);
    v31 = *(v0 + 368);
    sub_22FFB0ED8();
    if (v30(v32, 1, v31) != 1)
    {
      sub_22FEA58EC(*(v0 + 360));
    }
  }

  else
  {
    (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 360), *(v0 + 368));
  }

  v33 = *(v0 + 528);
  v34 = *(v0 + 416);
  v35 = *(v0 + 400);
  v37 = *(v0 + 376);
  v36 = *(v0 + 384);
  v38 = *(v0 + 368);
  sub_22FFB0EB8();
  (*(v37 + 8))(v36, v38);
  sub_22FFB08A8();
  v40 = v39;
  v41 = v39;
  v33(v34, v35);
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  if (v40 >= 9.22337204e18)
  {
    goto LABEL_21;
  }

  *(v0 + 104) = MEMORY[0x277D84A28];
  *(v0 + 80) = v40;
  sub_22FEA2968((v0 + 80), (v0 + 112));
  v42 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 112), v69, v27, v42);

  v43 = sub_22FFB1498();
  v45 = v44;
  v46 = MEMORY[0x277D83B88];
  *(v0 + 168) = MEMORY[0x277D83B88];
  *(v0 + 144) = 0;
  sub_22FEA2968((v0 + 144), (v0 + 176));
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 176), v43, v45, v47);

  v48 = sub_22FFB1498();
  v50 = v49;
  *(v0 + 232) = v46;
  *(v0 + 208) = 1;
  sub_22FEA2968((v0 + 208), (v0 + 240));
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_22FF8CC94((v0 + 240), v48, v50, v51);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1548, &unk_22FFB2D80);
  v52 = sub_22FFB16C8();

  v53 = sub_22FFB1408();

  SelfSignedCertificate = SecGenerateSelfSignedCertificate();

  v55 = *(v0 + 488);
  v56 = *(v0 + 496);
  if (!SelfSignedCertificate)
  {
    v63 = *(v0 + 432);
    v64 = *(v0 + 392);
    v65 = *(v0 + 344);
    v66 = *(v0 + 312);
    v67 = *(v0 + 320);
    sub_22FEA5550();
    swift_allocError();
    *v68 = 1;
    swift_willThrow();

    (*(*(v65 - 8) + 8))(v67, v65);
    sub_22FEA54F0(v64, _s11CertificateV20AttestationExtensionVMa);
    sub_22FEA54F0(v63, type metadata accessor for AttestationBundle);
    goto LABEL_5;
  }

  v57 = *(v0 + 432);
  v58 = *(v0 + 392);
  v59 = *(v0 + 312);
  v60 = *(v0 + 304);
  (*(*(*(v0 + 344) - 8) + 8))(*(v0 + 320));

  sub_22FEA54F0(v57, type metadata accessor for AttestationBundle);
  *v60 = SelfSignedCertificate;
  v60[1] = v55;
  v61 = _s11CertificateVMa(0);
  sub_22FEA5764(v58, v60 + *(v61 + 24), _s11CertificateV20AttestationExtensionVMa);

  v17 = *(v0 + 8);
LABEL_15:

  return v17();
}

uint64_t sub_22FEA45B0()
{
  v2 = *(v0 + 488);
  v1 = *(v0 + 496);
  v3 = *(v0 + 344);
  v4 = *(v0 + 320);

  (*(*(v3 - 8) + 8))(v4, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_22FEA46F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v4[9] = swift_task_alloc();
  _s11CertificateV20AttestationExtensionVMa(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for Validated.AttestationBundle(0);
  v4[11] = swift_task_alloc();
  v5 = sub_22FFB0908();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEA48A4, 0, 0);
}

uint64_t sub_22FEA48A4()
{
  v1 = v0[10];
  v2 = v0[8];
  v12 = v0[7];
  v3 = _s11CertificateVMa(0);
  sub_22FEA57CC(v2 + *(v3 + 24), v1, _s11CertificateV20AttestationExtensionVMa);
  v11 = (*(v12 + 72) + **(v12 + 72));
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_22FEA4A24;
  v5 = v0[17];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[6];
  v9 = v0[7];

  return v11(v0 + 2, v5, v6, v7, v8, v9);
}

uint64_t sub_22FEA4A24()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    sub_22FEA54F0(*(v2 + 80), type metadata accessor for AttestationBundle);
    v3 = sub_22FEA5338;
  }

  else
  {
    v4 = *(v2 + 80);
    sub_22FEA54F0(*(v2 + 88), type metadata accessor for Validated.AttestationBundle);
    sub_22FEA54F0(v4, type metadata accessor for AttestationBundle);
    v3 = sub_22FEA4BC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEA4BC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(*(v0 + 104) + 32);
  v3(*(v0 + 144), *(v0 + 136), *(v0 + 96));
  v4 = SecCertificateCopyNotValidAfterDate();
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_7;
  }

  v6 = *(v0 + 96);
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);
  (*(v7 + 56))(v8, 1, 1, v6);
  sub_22FEA5834(qword_27DAF1580, MEMORY[0x277CC9578], MEMORY[0x277CC95B0]);
  sub_22FFB1B18();

  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
LABEL_7:
    v19 = *(v0 + 144);
    v20 = *(v0 + 96);
    v21 = *(v0 + 104);
    sub_22FEA5550();
    swift_allocError();
    *v22 = 6;
    swift_willThrow();
    sub_22FEA55A4(v2, v1);
    (*(v21 + 8))(v19, v20);
    goto LABEL_8;
  }

  v10 = *(v0 + 120);
  v9 = *(v0 + 128);
  v11 = *(v0 + 96);
  v3(v10, *(v0 + 72), v11);
  v3(v9, v10, v11);
  sub_22FFB08F8();
  v12 = *(v0 + 144);
  if (v13 > 60.0)
  {
    v14 = *(v0 + 128);
    v15 = *(v0 + 96);
    v16 = *(v0 + 104);
    sub_22FEA5550();
    swift_allocError();
    *v17 = 7;
    swift_willThrow();
    sub_22FEA55A4(v2, v1);
    v18 = *(v16 + 8);
    v18(v14, v15);
    v18(v12, v15);
    goto LABEL_8;
  }

  v26 = *(v0 + 104);
  v25 = *(v0 + 112);
  v27 = *(v0 + 96);
  sub_22FFB08E8();
  v28 = sub_22FFB0888();
  v29 = *(v26 + 8);
  v29(v25, v27);
  if (v28)
  {
    v30 = *(v0 + 64);
    *(v0 + 32) = 0;
    v31 = *(v30 + 8);
    sub_22FEA5600(v2, v1);
    v32 = SecKeyCopyExternalRepresentation(v31, (v0 + 32));
    if (v32)
    {
      v33 = v32;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        sub_22FFB07D8();
      }
    }

    v38 = *(v0 + 32);
    if (v38)
    {
      v48 = *(v0 + 144);
      v39 = *(v0 + 128);
      v40 = *(v0 + 96);
      type metadata accessor for CFError(0);
      sub_22FEA5834(&qword_27DAF1518, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
      swift_allocError();
      *v41 = v38;
      swift_willThrow();
      v42 = v38;
      sub_22FEA55A4(v2, v1);
      sub_22FEA55A4(v2, v1);

      v29(v39, v40);
      v29(v48, v40);
      goto LABEL_8;
    }

    if (qword_27DAF1230 != -1)
    {
      swift_once();
    }

    v43 = sub_22FFB12F8();
    __swift_project_value_buffer(v43, qword_27DB05960);
    v44 = sub_22FFB12D8();
    v45 = sub_22FFB1838();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22FE99000, v44, v45, "SecKeyCopyExternalRepresentation failed but did not return an error object", v46, 2u);
      MEMORY[0x23190EFF0](v46, -1, -1);
    }

    v34 = *(v0 + 144);
    v35 = *(v0 + 128);
    v36 = *(v0 + 96);

    sub_22FEA5550();
    swift_allocError();
    *v47 = 0;
    swift_willThrow();
    sub_22FEA55A4(v2, v1);
  }

  else
  {
    v34 = *(v0 + 144);
    v35 = *(v0 + 128);
    v36 = *(v0 + 96);
    sub_22FEA5550();
    swift_allocError();
    *v37 = 9;
    swift_willThrow();
  }

  sub_22FEA55A4(v2, v1);
  v29(v35, v36);
  v29(v34, v36);
LABEL_8:

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_22FEA5338()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22FEA54B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FEA54F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FEA5550()
{
  result = qword_27DAF1570;
  if (!qword_27DAF1570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1570);
  }

  return result;
}

uint64_t sub_22FEA55AC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22FEA5608(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22FEA5694()
{
  v0 = sub_22FFB0C98();
  __swift_allocate_value_buffer(v0, qword_27DB05978);
  __swift_project_value_buffer(v0, qword_27DB05978);
  return sub_22FFB0C88();
}

uint64_t sub_22FEA56EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22FEA55AC(result, a2);
  }

  return result;
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

uint64_t sub_22FEA5764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEA57CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEA5834(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FEA587C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEA58EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1520, &qword_22FFB3A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEA597C(uint64_t a1)
{
  result = type metadata accessor for AttestationBundle(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22FEA5A10(uint64_t a1)
{
  type metadata accessor for SecCertificate(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SecKey(319);
    if (v2 <= 0x3F)
    {
      _s11CertificateV20AttestationExtensionVMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FEA5AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>, uint64_t a5@<X3>)
{
  v6 = (a1 + *(type metadata accessor for AttestedTLS.Configurator(0, *(a2 + a3 - 16), *(a2 + a3 - 8), a5) + 52));
  v7 = *v6;
  v8 = v6[1];
  if (*v6)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_22FEA9E44;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *a4 = v10;
  a4[1] = v9;

  return sub_22FE9AC3C(v7, v8);
}

uint64_t sub_22FEA5B48(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = *a1;
  v8 = a1[1];
  if (*a1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_22FEA9E0C;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = (a2 + *(type metadata accessor for AttestedTLS.Configurator(0, v5, v6, a4) + 52));
  v12 = *v11;
  v13 = v11[1];
  sub_22FE9AC3C(v7, v8);
  result = sub_22FEA5C80(v12, v13);
  *v11 = v10;
  v11[1] = v9;
  return result;
}

uint64_t AttestedTLS.Configurator.errorHandler.getter(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = *v2;
  sub_22FE9AC3C(*v2, v2[1]);
  return v3;
}

uint64_t AttestedTLS.Configurator.errorHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 52));
  result = sub_22FEA5C80(*v6, v6[1]);
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_22FEA5C80(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t AttestedTLS.Configurator.init(using:with:lifetime:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a1;
  v7[4] = a3;
  v7[9] = *a2;
  return MEMORY[0x2822009F8](sub_22FEA5CE4, 0, 0);
}

uint64_t sub_22FEA5CE4()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  sub_22FFB12E8();
  v6 = type metadata accessor for AttestedTLS.Configurator(0, v3, v1, v5);
  v0[10] = v6;
  v7 = (v4 + *(v6 + 52));
  *v7 = 0;
  v7[1] = 0;
  if (v2 == 3)
  {
    v8 = sub_22FFB12D8();
    v9 = sub_22FFB1838();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22FE99000, v8, v9, "Curve25519 keys not yet supported", v10, 2u);
      MEMORY[0x23190EFF0](v10, -1, -1);
    }

    v11 = v0[7];
    v12 = v0[4];

    sub_22FEA5550();
    swift_allocError();
    *v13 = 2;
    swift_willThrow();
    v14 = *(v11 - 8);
    (*(v14 + 8))(v12, v11);
    v15 = v0[9];
    v16 = v0[3];
    v17 = sub_22FFB12F8();
    (*(*(v17 - 8) + 8))(v16, v17);
    if (v15 != 3)
    {
      v18 = v0[10];
      v19 = v0[3];
      (*(v14 + 8))(v19 + *(v18 + 36));
      sub_22FEA6864(*(v19 + *(v18 + 40)));
    }

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[9];
    v23 = v0[6];
    v24 = v0[4];
    v25 = v0[5];
    v26 = v0[3];
    v27 = *(v6 + 36);
    v28 = *(v0[7] - 8);
    v0[11] = v28;
    v0[12] = v28;
    v29 = v6;
    (*(v28 + 16))(v26 + v27, v24);
    *(v26 + *(v29 + 40)) = v22;
    v30 = (v26 + *(v29 + 44));
    *v30 = v25;
    v30[1] = v23;
    v0[2] = v22;
    sub_22FEA6854(v22);
    v31 = swift_task_alloc();
    v0[13] = v31;
    *v31 = v0;
    v31[1] = sub_22FEA6038;
    v32 = v0[7];
    v33 = v0[8];
    v34 = v0[5];
    v35 = v0[6];
    v36 = v0[4];

    return sub_22FEA6368(v0 + 2, v36, v34, v35, v32, v33);
  }
}

uint64_t sub_22FEA6038(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_22FEA6230;
  }

  else
  {
    v6 = *(v4 + 72);
    *(v4 + 120) = a1;
    sub_22FEA6864(v6);
    v5 = sub_22FEA6168;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEA6168()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v6 = v0[3];
  v5 = v0[4];
  _s15IdentityStorageCMa();
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  (*(v2 + 8))(v5, v4);
  *(v7 + 112) = v1;
  *(v6 + *(v3 + 48)) = v7;
  v8 = v0[1];

  return v8();
}

uint64_t sub_22FEA6230()
{
  v1 = v0[9];
  (*(v0[12] + 8))(v0[4], v0[7]);
  sub_22FEA6864(v1);
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[3];
  v5 = sub_22FFB12F8();
  (*(*(v5 - 8) + 8))(v4, v5);
  if (v3 != 3)
  {
    v6 = v0[10];
    v7 = v0[3];
    (*(v2 + 8))(v7 + *(v6 + 36));
    sub_22FEA6864(*(v7 + *(v6 + 40)));
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_22FEA6368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  v6[7] = *(a5 - 8);
  v6[8] = swift_task_alloc();
  _s11CertificateVMa(0);
  v8 = swift_task_alloc();
  v9 = *a1;
  v6[9] = v8;
  v6[10] = v9;

  return MEMORY[0x2822009F8](sub_22FEA6458, 0, 0);
}

uint64_t sub_22FEA6458()
{
  sub_22FEAA8F0();
  v0[11] = v1;
  v2 = v1;
  (*(v0[7] + 16))(v0[8], v0[2], v0[5]);
  v3 = v2;
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_22FEA6590;
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  return sub_22FEA33D0(v5, v3, v6, v9, v10, v7, v8);
}

uint64_t sub_22FEA6590()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22FEA67E0;
  }

  else
  {
    v2 = sub_22FEA66A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEA66A4()
{
  v1 = SecIdentityCreate();
  v2 = v0[11];
  v3 = v0[9];
  if (v1)
  {
    v4 = v1;

    sub_22FEAA230(v3);

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_22FEA5550();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    sub_22FEAA230(v3);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22FEA67E0()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_22FEA6854(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

void sub_22FEA6864(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t AttestedTLS.Configurator.createTLSOptions<A>(with:queue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[14] = a1;
  v6[15] = a2;
  v8 = *(a4 - 8);
  v6[20] = v8;
  v6[21] = *(v8 + 64);
  v6[22] = swift_task_alloc();
  v9 = *(a3 - 8);
  v6[23] = v9;
  v6[24] = *(v9 + 64);
  v6[25] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[26] = v10;
  *v10 = v6;
  v10[1] = sub_22FEA69C0;

  return AttestedTLS.Configurator.expired.getter(a3);
}

uint64_t sub_22FEA69C0(char a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_22FEA6AC0, 0, 0);
}

uint64_t sub_22FEA6AC0(__n128 a1)
{
  if (*(v1 + 224) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 216) = v2;
    *v2 = v1;
    v2[1] = sub_22FEA6EE4;
    v3 = *(v1 + 128);

    return AttestedTLS.Configurator.refresh()(v3);
  }

  else
  {
    v5 = *(v1 + 200);
    v6 = *(v1 + 184);
    v23 = *(v1 + 176);
    v7 = *(v1 + 160);
    v24 = *(v1 + 168);
    v8 = *(v1 + 152);
    v27 = *(v1 + 136);
    v9 = *(v1 + 128);
    v29 = *(v1 + 120);
    v22 = *(v1 + 112);
    sub_22FFB1328();
    swift_allocObject();
    v25 = sub_22FFB1318();
    v28 = sub_22FFB1308();
    v19 = *(v6 + 16);
    v19(v5, v8, v9);
    v10 = *(v6 + 80);
    v11 = swift_allocObject();
    v20 = *(v9 + 16);
    v11[2] = v20;
    v11[3] = v27.f64[0];
    v18 = *(v9 + 24);
    v11[4] = v18;
    v11[5] = v27.f64[1];
    v21 = *(v6 + 32);
    v21(v11 + ((v10 + 48) & ~v10), v5, v9, a1);
    *(v1 + 48) = sub_22FEA9548;
    *(v1 + 56) = v11;
    *(v1 + 16) = MEMORY[0x277D85DD0];
    *(v1 + 24) = 1107296256;
    *(v1 + 32) = sub_22FEA87AC;
    *(v1 + 40) = &block_descriptor;
    v12 = _Block_copy((v1 + 16));

    sec_protocol_options_set_challenge_block(v28, v12, v29);
    _Block_release(v12);
    (*(v7 + 16))(v23, v22, *&v27.f64[0]);
    v19(v5, v8, v9);
    v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
    v14 = swift_allocObject();
    v15 = (v14 + 16);
    v31.val[1] = v27;
    v31.val[0].f64[0] = v20;
    v31.val[0].f64[1] = v18;
    vst2q_f64(v15, v31);
    (*(v7 + 32))(v14 + v13, v23, *&v27.f64[0]);
    (v21)(v14 + ((v24 + v10 + v13) & ~v10), v5, v9);
    *(v1 + 96) = sub_22FEA9618;
    *(v1 + 104) = v14;
    *(v1 + 64) = MEMORY[0x277D85DD0];
    *(v1 + 72) = 1107296256;
    *(v1 + 80) = sub_22FEA901C;
    *(v1 + 88) = &block_descriptor_8;
    v16 = _Block_copy((v1 + 64));

    sec_protocol_options_set_verify_block(v28, v16, v29);
    _Block_release(v16);
    sec_protocol_options_set_min_tls_protocol_version(v28, tls_protocol_version_TLSv13);
    sec_protocol_options_set_peer_authentication_required(v28, 1);
    swift_unknownObjectRelease();

    v17 = *(v1 + 8);

    return v17(v25);
  }
}

uint64_t sub_22FEA6EE4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FEA703C, 0, 0);
  }
}

uint64_t sub_22FEA703C(__n128 a1)
{
  v2 = v1[25];
  v3 = v1[23];
  v21 = v1[22];
  v4 = v1[20];
  v22 = v1[21];
  v5 = v1[19];
  v25 = *(v1 + 17);
  v6 = v1[16];
  v27 = v1[15];
  v20 = v1[14];
  sub_22FFB1328();
  swift_allocObject();
  v23 = sub_22FFB1318();
  v26 = sub_22FFB1308();
  v17 = *(v3 + 16);
  v17(v2, v5, v6);
  v7 = *(v3 + 80);
  v8 = swift_allocObject();
  v18 = *(v6 + 16);
  v8[2] = v18;
  v8[3] = v25.f64[0];
  v16 = *(v6 + 24);
  v8[4] = v16;
  v8[5] = v25.f64[1];
  v19 = *(v3 + 32);
  v19(v8 + ((v7 + 48) & ~v7), v2, v6, a1);
  v1[6] = sub_22FEA9548;
  v1[7] = v8;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_22FEA87AC;
  v1[5] = &block_descriptor;
  v9 = _Block_copy(v1 + 2);

  sec_protocol_options_set_challenge_block(v26, v9, v27);
  _Block_release(v9);
  (*(v4 + 16))(v21, v20, *&v25.f64[0]);
  v17(v2, v5, v6);
  v10 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v11 = swift_allocObject();
  v12 = (v11 + 16);
  v29.val[1] = v25;
  v29.val[0].f64[0] = v18;
  v29.val[0].f64[1] = v16;
  vst2q_f64(v12, v29);
  (*(v4 + 32))(v11 + v10, v21, *&v25.f64[0]);
  (v19)(v11 + ((v22 + v7 + v10) & ~v7), v2, v6);
  v1[12] = sub_22FEA9618;
  v1[13] = v11;
  v1[8] = MEMORY[0x277D85DD0];
  v1[9] = 1107296256;
  v1[10] = sub_22FEA901C;
  v1[11] = &block_descriptor_8;
  v13 = _Block_copy(v1 + 8);

  sec_protocol_options_set_verify_block(v26, v13, v27);
  _Block_release(v13);
  sec_protocol_options_set_min_tls_protocol_version(v26, tls_protocol_version_TLSv13);
  sec_protocol_options_set_peer_authentication_required(v26, 1);
  swift_unknownObjectRelease();

  v14 = v1[1];

  return v14(v23);
}

uint64_t AttestedTLS.Configurator.expired.getter(uint64_t a1)
{
  v3 = sub_22FFB0908();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[5] = v4;
  v5 = swift_task_alloc();
  v1[6] = v5;
  *v5 = v1;
  v5[1] = sub_22FEA74E0;

  return AttestedTLS.Configurator.expiration.getter(v4, a1);
}

uint64_t sub_22FEA74E0()
{

  return MEMORY[0x2822009F8](sub_22FEA75DC, 0, 0);
}

uint64_t sub_22FEA75DC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  sub_22FFB08E8();
  v5 = sub_22FFB0888();
  v6 = *(v4 + 8);
  v6(v1, v3);
  v6(v2, v3);

  v7 = v0[1];

  return v7(v5 & 1);
}

uint64_t AttestedTLS.Configurator.refresh()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22FEA76C4, 0, 0);
}

uint64_t sub_22FEA76C4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v1 + *(v2 + 40));
  v0[2] = v3;
  v4 = *(v2 + 36);
  v5 = (v1 + *(v2 + 44));
  v6 = *v5;
  v7 = v5[1];
  sub_22FEA6854(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  *v8 = v0;
  v8[1] = sub_22FEA779C;

  return sub_22FEA6368(v0 + 2, v1 + v4, v6, v7, v9, v10);
}

uint64_t sub_22FEA779C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    sub_22FEA6864(*(v4 + 16));
    v5 = sub_22FEA79D0;
  }

  else
  {
    *(v4 + 56) = a1;
    sub_22FEA6864(*(v4 + 16));
    v5 = sub_22FEA78D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEA78D0()
{
  v1 = *(v0[4] + *(v0[3] + 48));
  v0[8] = v1;
  return MEMORY[0x2822009F8](sub_22FEA78F8, v1, 0);
}

uint64_t sub_22FEA78F8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;

  return MEMORY[0x2822009F8](sub_22FEA796C, 0, 0);
}

uint64_t sub_22FEA796C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEA79E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  _s11CertificateVMa(0);
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEA7A84, 0, 0);
}

uint64_t sub_22FEA7A84()
{
  v1 = SecTrustCopyCertificateChain(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_22FFB16D8();
    }
  }

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_22FEA7DF8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_22FEA8010;
  }

  else
  {
    v2 = sub_22FEA7F0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEA7F0C(uint64_t a1)
{
  v2 = sub_22FFB12D8();
  v3 = sub_22FFB1828();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[9];
  v6 = v1[10];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FE99000, v2, v3, "SecTrust verification completedly successfully", v7, 2u);
    MEMORY[0x23190EFF0](v7, -1, -1);
    v8 = v2;
  }

  else
  {
    v8 = v1[10];
    v6 = v2;
  }

  sub_22FEAA230(v5);

  v9 = v1[1];

  return v9(1);
}

uint64_t sub_22FEA8010()
{
  v1 = *(v0 + 72);

  sub_22FEAA230(v1);
  v2 = *(v0 + 96);
  v3 = *(v0 + 32);
  v5 = (v3 + *(type metadata accessor for AttestedTLS.Configurator(0, *(v0 + 40), *(v0 + 56), v4) + 52));
  if (*v5)
  {
    (*v5)(v2);
  }

  v6 = v2;
  v7 = sub_22FFB12D8();
  v8 = sub_22FFB1838();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_22FE99000, v7, v8, "SecTrust verification failed: %@", v9, 0xCu);
    sub_22FEAA1C8(v10);
    MEMORY[0x23190EFF0](v10, -1, -1);
    MEMORY[0x23190EFF0](v9, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t sub_22FEA81A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a6;
  v31 = a8;
  v32 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v29 - v13;
  v16 = type metadata accessor for AttestedTLS.Configurator(0, a5, a7, v15);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  (*(v17 + 16))(&v29 - v19, a4, v16);
  v21 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v22 = swift_allocObject();
  v24 = v30;
  v23 = v31;
  *(v22 + 2) = a5;
  *(v22 + 3) = v24;
  *(v22 + 4) = a7;
  *(v22 + 5) = v23;
  (*(v17 + 32))(&v22[v21], v20, v16);
  v25 = &v22[(v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v25 = v32;
  v25[1] = a3;
  v26 = sub_22FFB17B8();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = &unk_22FFB2E58;
  v27[5] = v22;

  sub_22FEAB58C(0, 0, v14, &unk_22FFB2E68, v27);
}

uint64_t sub_22FEA83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a6;
  v8[6] = a8;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a3;
  return MEMORY[0x2822009F8](sub_22FEA8424, 0, 0);
}

uint64_t sub_22FEA8424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[2];
  v6 = *(v5 + *(type metadata accessor for AttestedTLS.Configurator(0, v4[5], v4[6], a4) + 48));
  v4[7] = v6;

  return MEMORY[0x2822009F8](sub_22FEA849C, v6, 0);
}

uint64_t sub_22FEA849C()
{
  v1 = *(*(v0 + 56) + 112);
  *(v0 + 64) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_22FEA8510, 0, 0);
}

uint64_t sub_22FEA8510()
{
  v1 = v0[8];
  v2 = v0[3];
  sec_identity_create(v1);
  v2();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FEA859C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22FEA8698;

  return v8(a1, v4 + 16);
}

uint64_t sub_22FEA8698()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_22FEAA534;
  }

  else
  {
    v2 = sub_22FEAA540;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEA87AC(uint64_t a1, uint64_t a2, void *aBlock)
{
  v3 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = swift_unknownObjectRetain();
  v3(v6, sub_22FEAA28C, v5);

  return swift_unknownObjectRelease();
}

uint64_t sub_22FEA885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v37 = a2;
  v38 = a7;
  v42 = a3;
  v43 = a4;
  v40 = a6;
  v41 = a10;
  v39 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  MEMORY[0x28223BE20](v14 - 8);
  v44 = &v35 - v15;
  v17 = type metadata accessor for AttestedTLS.Configurator(0, a7, a9, v16);
  v36 = v17;
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = *(a8 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v24, a5, a8);
  (*(v18 + 16))(v21, v40, v17);
  v25 = (*(v22 + 80) + 72) & ~*(v22 + 80);
  v26 = (v23 + v25 + *(v18 + 80)) & ~*(v18 + 80);
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 2) = v38;
  *(v27 + 3) = a8;
  v30 = v41;
  v29 = v42;
  *(v27 + 4) = v28;
  *(v27 + 5) = v30;
  *(v27 + 6) = a2;
  *(v27 + 7) = v29;
  *(v27 + 8) = v43;
  (*(v22 + 32))(&v27[v25], v24, a8);
  (*(v18 + 32))(&v27[v26], v21, v36);
  v31 = sub_22FFB17B8();
  v32 = v44;
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = &unk_22FFB2E28;
  v33[5] = v27;
  swift_unknownObjectRetain();

  sub_22FEAB58C(0, 0, v32, &unk_22FFB2E38, v33);
}

uint64_t sub_22FEA8B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v11;
  *(v8 + 64) = v10;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  return MEMORY[0x2822009F8](sub_22FEA8BBC, 0, 0);
}

uint64_t sub_22FEA8BBC()
{
  v1 = sec_trust_copy_ref(*(v0 + 16));
  *(v0 + 88) = v1;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_22FEA8C68;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  return sub_22FEA79E8(v1, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_22FEA8C68(char a1)
{
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22FEA8D68, 0, 0);
}

uint64_t sub_22FEA8D68()
{
  v1 = *(v0 + 88);
  (*(v0 + 24))(*(v0 + 104));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FEA8DDC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_22FEA8ED8;

  return v8(a1, v4 + 16);
}

uint64_t sub_22FEA8ED8()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_22FEA9004;
  }

  else
  {
    v2 = sub_22FEA8FEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEA901C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6(a2, a3, sub_22FEA9E70, v8);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t AttestedTLS.Configurator.expiration.getter(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v3[6] = swift_task_alloc();
  v4 = sub_22FFB0908();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEA9210, 0, 0);
}

uint64_t sub_22FEA9210()
{
  v1 = *(v0[5] + *(v0[4] + 48));
  v0[10] = v1;

  return MEMORY[0x2822009F8](sub_22FEA92A8, v1, 0);
}

uint64_t sub_22FEA92A8()
{
  v1 = *(*(v0 + 80) + 112);
  *(v0 + 88) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_22FEA9348, 0, 0);
}

uint64_t sub_22FEA9348()
{
  *(v0 + 16) = 0;
  v1 = SecIdentityCopyCertificate(*(v0 + 88), (v0 + 16));
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 == 0;
  }

  if (v3)
  {
    v4 = *(v0 + 88);
    sub_22FFB0838();

    goto LABEL_13;
  }

  v5 = v2;
  v6 = SecCertificateCopyNotValidAfterDate();
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = *(v0 + 56);
      v9 = *(v0 + 64);
      v10 = *(v0 + 48);
      (*(v9 + 56))(v10, 1, 1, v8);
      sub_22FEA972C();
      sub_22FFB1B18();

      if ((*(v9 + 48))(v10, 1, v8) != 1)
      {
        v11 = *(v0 + 88);
        v13 = *(v0 + 64);
        v12 = *(v0 + 72);
        v15 = *(v0 + 48);
        v14 = *(v0 + 56);
        v16 = *(v0 + 24);

        v17 = *(v13 + 32);
        v17(v12, v15, v14);
        v17(v16, v12, v14);
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v18 = *(v0 + 88);
  sub_22FFB0838();

LABEL_13:

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22FEA9548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(type metadata accessor for AttestedTLS.Configurator(0, v8, v10, a4) - 8);
  v13 = v4 + ((*(v12 + 80) + 48) & ~*(v12 + 80));

  return sub_22FEA81A8(a1, a2, a3, v13, v8, v9, v10, v11);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22FEA9618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[2];
  v9 = v4[3];
  v10 = v4[4];
  v11 = v4[5];
  v12 = *(*(v9 - 8) + 64);
  v13 = (*(*(v9 - 8) + 80) + 48) & ~*(*(v9 - 8) + 80);
  v14 = *(type metadata accessor for AttestedTLS.Configurator(0, v8, v10, a4) - 8);
  return sub_22FEA885C(a1, a2, a3, a4, v4 + v13, v4 + ((v13 + v12 + *(v14 + 80)) & ~*(v14 + 80)), v8, v9, v10, v11);
}

unint64_t sub_22FEA972C()
{
  result = qword_27DAF1580[0];
  if (!qword_27DAF1580[0])
  {
    sub_22FFB0908();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DAF1580);
  }

  return result;
}

void sub_22FEA978C(uint64_t a1)
{
  sub_22FFB12F8();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      _s15IdentityStorageCMa();
      if (v3 <= 0x3F)
      {
        sub_22FEA9D60(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22FEA985C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_22FFB12F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((((((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_22FEA9AB8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_22FFB12F8() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = v12 + v13;
  v17 = (v12 + v13) & ~v13;
  v18 = v14 + 7;
  v19 = ((((((((v14 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v15 >= a3)
  {
    v22 = 0;
    v23 = a2 - v15;
    if (a2 <= v15)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((v14 + 7 + v17) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v20 = a3 - v15 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = a2 - v15;
    if (a2 <= v15)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *(a1 + v19) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v19) = 0;
      }

      else if (v22)
      {
        *(a1 + v19) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v15)
      {
        v26 = *(v8 + 56);

        v26(a1, a2);
      }

      else
      {
        v27 = (a1 + v16) & ~v13;
        if (v11 == v15)
        {
          v28 = *(v10 + 56);

          v28(v27, a2, v11);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v29 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v29 = (a2 - 1);
          }

          *((((((v18 + v27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) = v29;
        }
      }

      return;
    }
  }

  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23;
  }

  if (v19)
  {
    v25 = ~v15 + a2;
    bzero(a1, v19);
    *a1 = v25;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      *(a1 + v19) = v24;
    }

    else
    {
      *(a1 + v19) = v24;
    }
  }

  else if (v22)
  {
    *(a1 + v19) = v24;
  }
}

void sub_22FEA9D60(uint64_t a1)
{
  if (!qword_28148F088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1610, &qword_22FFB4800);
    v1 = sub_22FFB1888();
    if (!v2)
    {
      atomic_store(v1, &qword_28148F088);
    }
  }
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

uint64_t sub_22FEA9E0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_22FEA9E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4[2];
  v8 = v4[3];
  v9 = *(*(v8 - 8) + 64);
  v10 = (*(*(v8 - 8) + 80) + 72) & ~*(*(v8 - 8) + 80);
  v11 = *(type metadata accessor for AttestedTLS.Configurator(0, v7, v4[4], a4) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v4[6];
  v14 = v4[7];
  v15 = v4[8];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_22FEAA538;

  return sub_22FEA8B80(a1, a2, v13, v14, v15, v4 + v10, v4 + v12, v7);
}

uint64_t sub_22FEAA014(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FEAA0D4;

  return sub_22FEA8DDC(a1, v4, v5, v6);
}

uint64_t sub_22FEAA0D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FEAA1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1680, &unk_22FFB4B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEAA230(uint64_t a1)
{
  v2 = _s11CertificateVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEAA2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v5;
  v9 = v4[2];
  v19 = v4[3];
  v10 = v4[4];
  v11 = *(type metadata accessor for AttestedTLS.Configurator(0, v9, v10, a4) - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = (v4 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_22FEAA538;

  return sub_22FEA83F8(a1, a2, v4 + v12, v14, v15, v9, v19, v10);
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_22FEAA440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FEAA538;

  return sub_22FEA859C(a1, v4, v5, v6);
}

uint64_t AttestedTLS.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t _s16CloudAttestation3SEPO0B0V5ErrorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FEAA614()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FEAA65C()
{
  result = qword_27DAF1750;
  if (!qword_27DAF1750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1750);
  }

  return result;
}

uint64_t _s5ErrorOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s5ErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_16CloudAttestation11AttestedTLSO7KeyTypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22FEAA830(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22FEAA884(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void sub_22FEAA8F0()
{
  v145 = *MEMORY[0x277D85DE8];
  if (!*MEMORY[0x277CDBF00])
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v1 = *v0;
  v2 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, 0);
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  if (v1 <= 1)
  {
    if (!v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_22FFB2F70;
      v67 = *MEMORY[0x277CDC028];
      *(v66 + 32) = *MEMORY[0x277CDC028];
      v68 = *MEMORY[0x277CDC040];
      type metadata accessor for CFString(0);
      v70 = v69;
      *(v66 + 40) = v68;
      v71 = *MEMORY[0x277CDC018];
      *(v66 + 64) = v69;
      *(v66 + 72) = v71;
      v72 = v67;
      v73 = v68;
      v74 = v71;
      v75 = sub_22FFB17F8();
      type metadata accessor for CFNumber(0);
      *(v66 + 80) = v75;
      v141 = *MEMORY[0x277CDC158];
      v76 = *MEMORY[0x277CDC158];
      *(v66 + 104) = v77;
      *(v66 + 112) = v76;
      v78 = *MEMORY[0x277CDC170];
      *(v66 + 120) = *MEMORY[0x277CDC170];
      v79 = *MEMORY[0x277CDC4F0];
      *(v66 + 144) = v70;
      *(v66 + 152) = v79;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_22FFB2F60;
      v81 = *MEMORY[0x277CDC408];
      *(v80 + 32) = *MEMORY[0x277CDC408];
      v82 = MEMORY[0x277D839B0];
      *(v80 + 40) = 1;
      v83 = v3;
      v84 = *MEMORY[0x277CDC418];
      *(v80 + 64) = v82;
      *(v80 + 72) = v84;
      *(v80 + 80) = 1;
      v85 = *MEMORY[0x277CDBEC0];
      *(v80 + 104) = v82;
      *(v80 + 112) = v85;
      type metadata accessor for SecAccessControl(0);
      *(v80 + 144) = v86;
      *(v80 + 120) = v83;
      v87 = v84;
      v26 = v83;
      v88 = v85;
      v89 = v83;
      v90 = v141;
      v91 = v78;
      v92 = v79;
      v93 = v81;
      sub_22FFA7650(v80);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
      sub_22FEAB490();
      v94 = sub_22FFB1408();

      type metadata accessor for CFDictionary(0);
      v95 = MEMORY[0x277CDBFD0];
      *(v66 + 160) = v94;
      v96 = *v95;
      *(v66 + 184) = v97;
      *(v66 + 192) = v96;
      *(v66 + 224) = MEMORY[0x277D839B0];
      *(v66 + 200) = 0;
      v98 = v96;
      sub_22FFA7778(v66);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
      swift_arrayDestroy();
      swift_deallocClassInstance();
LABEL_16:
      error = 0;
      type metadata accessor for CFString(0);
      sub_22FEAB544(&qword_27DAF1500, type metadata accessor for CFString, &unk_22FFB2CB4);
      v132 = sub_22FFB1408();

      v133 = SecKeyCreateRandomKey(v132, &error);

      v134 = error;
      if (error)
      {
        type metadata accessor for CFError(0);
        sub_22FEAB544(&qword_27DAF1518, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
        swift_allocError();
        *v135 = v134;
        swift_willThrow();

        return;
      }

      if (v133)
      {

        return;
      }

      __break(1u);
      goto LABEL_23;
    }

    if (v1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FFB2F70;
      v5 = *MEMORY[0x277CDC028];
      *(inited + 32) = *MEMORY[0x277CDC028];
      v6 = *MEMORY[0x277CDC040];
      type metadata accessor for CFString(0);
      v8 = v7;
      *(inited + 40) = v6;
      v9 = *MEMORY[0x277CDC018];
      *(inited + 64) = v7;
      *(inited + 72) = v9;
      v10 = v5;
      v11 = v6;
      v12 = v9;
      v13 = sub_22FFB17F8();
      type metadata accessor for CFNumber(0);
      *(inited + 80) = v13;
      v140 = *MEMORY[0x277CDC158];
      v14 = *MEMORY[0x277CDC158];
      *(inited + 104) = v15;
      *(inited + 112) = v14;
      v16 = *MEMORY[0x277CDC170];
      *(inited + 120) = *MEMORY[0x277CDC170];
      v17 = *MEMORY[0x277CDC4F0];
      *(inited + 144) = v8;
      *(inited + 152) = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_22FFB2F60;
      v19 = *MEMORY[0x277CDC408];
      *(v18 + 32) = *MEMORY[0x277CDC408];
      v20 = MEMORY[0x277D839B0];
      *(v18 + 40) = 1;
      v21 = v3;
      v22 = *MEMORY[0x277CDC418];
      *(v18 + 64) = v20;
      *(v18 + 72) = v22;
      *(v18 + 80) = 1;
      v23 = *MEMORY[0x277CDBEC0];
      *(v18 + 104) = v20;
      *(v18 + 112) = v23;
      type metadata accessor for SecAccessControl(0);
      *(v18 + 144) = v24;
      *(v18 + 120) = v21;
      v25 = v22;
      v26 = v21;
      v27 = v23;
      v28 = v21;
      v29 = v140;
      v30 = v16;
      v31 = v17;
      v32 = v19;
      sub_22FFA7650(v18);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
      sub_22FEAB490();
      v33 = sub_22FFB1408();

      type metadata accessor for CFDictionary(0);
      v34 = MEMORY[0x277CDBFD0];
      *(inited + 160) = v33;
      v35 = *v34;
      *(inited + 184) = v36;
      *(inited + 192) = v35;
      *(inited + 224) = MEMORY[0x277D839B0];
      *(inited + 200) = 0;
      v37 = v35;
      sub_22FFA7778(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
LABEL_15:
      swift_arrayDestroy();
      goto LABEL_16;
    }

LABEL_11:

    v65 = v1;
    return;
  }

  if (v1 != 2)
  {
    if (v1 == 3)
    {
      v142 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
      v38 = swift_initStackObject();
      *(v38 + 16) = xmmword_22FFB2F50;
      v39 = *MEMORY[0x277CDC028];
      *(v38 + 32) = *MEMORY[0x277CDC028];
      v138 = v39;
      v40 = *MEMORY[0x277CDC078];
      if (!*MEMORY[0x277CDC078])
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v41 = v38;
      type metadata accessor for CFString(0);
      *(v41 + 40) = v40;
      v137 = *MEMORY[0x277CDC158];
      v42 = *MEMORY[0x277CDC158];
      *(v41 + 64) = v43;
      *(v41 + 72) = v42;
      v136 = *MEMORY[0x277CDC170];
      *(v41 + 80) = *MEMORY[0x277CDC170];
      v44 = *MEMORY[0x277CDC4F0];
      *(v41 + 104) = v43;
      *(v41 + 112) = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
      v45 = swift_initStackObject();
      *(v45 + 16) = xmmword_22FFB2F60;
      v46 = *MEMORY[0x277CDC408];
      *(v45 + 32) = *MEMORY[0x277CDC408];
      v47 = MEMORY[0x277D839B0];
      *(v45 + 40) = 1;
      v48 = *MEMORY[0x277CDC418];
      *(v45 + 64) = v47;
      *(v45 + 72) = v48;
      *(v45 + 80) = 1;
      v49 = *MEMORY[0x277CDBEC0];
      *(v45 + 104) = v47;
      *(v45 + 112) = v49;
      type metadata accessor for SecAccessControl(0);
      *(v45 + 144) = v50;
      v26 = v142;
      *(v45 + 120) = v142;
      v51 = v48;
      v52 = v49;
      v53 = v142;
      v54 = v138;
      v55 = v40;
      v56 = v137;
      v57 = v136;
      v58 = v44;
      v59 = v46;
      sub_22FFA7650(v45);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
      sub_22FEAB490();
      v60 = sub_22FFB1408();

      type metadata accessor for CFDictionary(0);
      v61 = MEMORY[0x277CDBFD0];
      *(v41 + 120) = v60;
      v62 = *v61;
      *(v41 + 144) = v63;
      *(v41 + 152) = v62;
      *(v41 + 184) = MEMORY[0x277D839B0];
      *(v41 + 160) = 0;
      v64 = v62;
      sub_22FFA7778(v41);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v143 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1758, &qword_22FFB2FE0);
  v99 = swift_initStackObject();
  *(v99 + 16) = xmmword_22FFB2F70;
  v100 = *MEMORY[0x277CDC028];
  *(v99 + 32) = *MEMORY[0x277CDC028];
  v101 = *MEMORY[0x277CDC048];
  if (*MEMORY[0x277CDC048])
  {
    v102 = v99;
    type metadata accessor for CFString(0);
    v104 = v103;
    *(v102 + 40) = v101;
    v105 = *MEMORY[0x277CDC018];
    *(v102 + 64) = v103;
    *(v102 + 72) = v105;
    v106 = v100;
    v107 = v101;
    v108 = v105;
    v109 = sub_22FFB17F8();
    type metadata accessor for CFNumber(0);
    *(v102 + 80) = v109;
    v139 = *MEMORY[0x277CDC158];
    v110 = *MEMORY[0x277CDC158];
    *(v102 + 104) = v111;
    *(v102 + 112) = v110;
    v112 = *MEMORY[0x277CDC170];
    *(v102 + 120) = *MEMORY[0x277CDC170];
    v113 = *MEMORY[0x277CDC4F0];
    *(v102 + 144) = v104;
    *(v102 + 152) = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1760, &qword_22FFB2FE8);
    v114 = swift_initStackObject();
    *(v114 + 16) = xmmword_22FFB2F60;
    v115 = *MEMORY[0x277CDC408];
    *(v114 + 32) = *MEMORY[0x277CDC408];
    v116 = MEMORY[0x277D839B0];
    *(v114 + 40) = 1;
    v117 = *MEMORY[0x277CDC418];
    *(v114 + 64) = v116;
    *(v114 + 72) = v117;
    *(v114 + 80) = 1;
    v118 = *MEMORY[0x277CDBEC0];
    *(v114 + 104) = v116;
    *(v114 + 112) = v118;
    type metadata accessor for SecAccessControl(0);
    *(v114 + 144) = v119;
    v26 = v143;
    *(v114 + 120) = v143;
    v120 = v117;
    v121 = v118;
    v122 = v143;
    v123 = v139;
    v124 = v112;
    v125 = v113;
    v126 = v115;
    sub_22FFA7650(v114);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1768, &unk_22FFC0340);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1770, &unk_22FFB2FF0);
    sub_22FEAB490();
    v127 = sub_22FFB1408();

    type metadata accessor for CFDictionary(0);
    v128 = MEMORY[0x277CDBFD0];
    *(v102 + 160) = v127;
    v129 = *v128;
    *(v102 + 184) = v130;
    *(v102 + 192) = v129;
    *(v102 + 224) = MEMORY[0x277D839B0];
    *(v102 + 200) = 0;
    v131 = v129;
    sub_22FFA7778(v102);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1780, &qword_22FFC0330);
    goto LABEL_15;
  }

LABEL_24:
  __break(1u);
}

unint64_t sub_22FEAB490()
{
  result = qword_27DAF1778;
  if (!qword_27DAF1778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1770, &unk_22FFB2FF0);
    sub_22FEAB544(&qword_27DAF1500, type metadata accessor for CFString, &unk_22FFB2CB4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1778);
  }

  return result;
}

uint64_t sub_22FEAB544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FEAB58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_22FEAE9C4(a3, v22 - v9);
  v11 = sub_22FFB17B8();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_22FEAEA34(v10, &qword_27DAF1618, &qword_22FFB30A0);
  }

  else
  {
    sub_22FFB17A8();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_22FFB1768();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_22FFB1518() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_22FEAEA34(a3, &qword_27DAF1618, &qword_22FFB30A0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22FEAEA34(a3, &qword_27DAF1618, &qword_22FFB30A0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t AttestedTLS.OptionsFactory.init(attestor:validator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_22FFB12E8();
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v14 = type metadata accessor for AttestedTLS.OptionsFactory(0, v16);
  (*(*(a3 - 8) + 32))(a7 + *(v14 + 52), a1, a3);
  return (*(*(a4 - 8) + 32))(a7 + *(v14 + 56), a2, a4);
}

uint64_t AttestedTLS.OptionsFactory.createTLSOptions(using:queue:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22FEABA24;

  return sub_22FEADB3C((v3 + 16), a2, a3);
}

uint64_t sub_22FEABA24(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FEABB60, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t AttestedTLS.OptionsFactory.createTLSOptions(using:lifetime:queue:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_22FEABC3C;

  return sub_22FEADB3C(a1, a4, a5);
}

uint64_t sub_22FEABC3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:queue:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22FEABE00;

  return AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:lifetime:queue:)((v3 + 16), 0x28093E61EE400000, 195, a2, a3);
}

uint64_t sub_22FEABE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(v8 + 32) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_22FEABB60, 0, 0);
  }

  else
  {
    v9 = *(v8 + 8);

    return v9(a1, a2, a3);
  }
}

uint64_t AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:lifetime:queue:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[18] = a5;
  v6[19] = v5;
  v6[16] = a3;
  v6[17] = a4;
  v6[15] = a2;
  v8 = *(a5 - 8);
  v6[20] = v8;
  v6[21] = *(v8 + 64);
  v9 = swift_task_alloc();
  v10 = *a1;
  v6[22] = v9;
  v6[23] = v10;

  return MEMORY[0x2822009F8](sub_22FEAC020, 0, 0);
}

uint64_t sub_22FEAC020(uint64_t a1)
{
  v2 = v1[23];
  if (v2 == 3)
  {
    v3 = sub_22FFB12D8();
    v4 = sub_22FFB1838();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22FE99000, v3, v4, "Curve25519 keys not yet supported", v5, 2u);
      MEMORY[0x23190EFF0](v5, -1, -1);
    }

    v2 = v1[23];
  }

  sub_22FFB1328();
  swift_allocObject();
  v1[24] = sub_22FFB1318();
  v1[25] = sub_22FFB1308();
  v1[14] = v2;
  v6 = swift_task_alloc();
  v1[26] = v6;
  *v6 = v1;
  v6[1] = sub_22FEAC174;
  v7 = v1[18];
  v8 = v1[15];
  v9 = v1[16];

  return sub_22FEAC6BC(v1 + 14, v8, v9, v7);
}

uint64_t sub_22FEAC174(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_22FEAC644;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_22FEAC29C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22FEAC29C(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[25];
  v23 = v3;
  v4 = v1[22];
  v35 = v1[23];
  v5 = v1[20];
  v30 = v1[21];
  v6 = v1[18];
  v36 = v1[19];
  v7 = v1[17];
  v34 = v1[16];
  v33 = v1[15];
  _s15IdentityStorageCMa();
  v8 = swift_allocObject();
  v32 = v2;
  swift_defaultActor_initialize();
  *(v8 + 112) = v32;
  v1[6] = sub_22FEADD68;
  v1[7] = v8;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_22FEA87AC;
  v1[5] = &block_descriptor_0;
  v9 = _Block_copy(v1 + 2);

  sec_protocol_options_set_challenge_block(v3, v9, v7);
  _Block_release(v9);
  v28 = *(v5 + 16);
  v22 = v4;
  v28(v4, v36, v6);
  v10 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v11 = swift_allocObject();
  v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = v6[2];
  *(v11 + 2) = v27;
  v26 = v6[3];
  *(v11 + 3) = v26;
  v25 = v6[4];
  *(v11 + 4) = v25;
  v24 = v6[5];
  *(v11 + 5) = v24;
  v12 = *(v5 + 32);
  v12(&v11[v10], v4, v6);
  v13 = v12;
  v1[12] = sub_22FEADD88;
  v1[13] = v11;
  v1[8] = MEMORY[0x277D85DD0];
  v1[9] = 1107296256;
  v1[10] = sub_22FEA901C;
  v1[11] = &block_descriptor_10;
  v14 = _Block_copy(v1 + 8);

  sec_protocol_options_set_verify_block(v23, v14, v7);
  _Block_release(v14);
  sec_protocol_options_set_min_tls_protocol_version(v23, tls_protocol_version_TLSv13);
  sec_protocol_options_set_peer_authentication_required(v23, 1);

  swift_unknownObjectRelease();
  v28(v22, v36, v6);
  v15 = swift_allocObject();
  *&v16 = v27;
  *(&v16 + 1) = v26;
  *&v17 = v25;
  *(&v17 + 1) = v24;
  *(v15 + 16) = v16;
  *(v15 + 32) = v17;
  v13(v15 + v10, v22, v6);
  *(v15 + v31) = v35;
  v18 = (v15 + v29);
  *v18 = v33;
  v18[1] = v34;
  *(v15 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = v8;
  sub_22FEA6854(v35);

  v19 = v1[1];
  v20 = v1[24];

  return v19(v20, &unk_22FFB3038, v15);
}

uint64_t sub_22FEAC644()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEAC6BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a2;
  v5[3] = a3;
  v7 = *(a4 + 16);
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v5[8] = swift_task_alloc();
  _s11CertificateVMa(0);
  v8 = swift_task_alloc();
  v9 = *a1;
  v5[9] = v8;
  v5[10] = v9;

  return MEMORY[0x2822009F8](sub_22FEAC7B0, 0, 0);
}

uint64_t sub_22FEAC7B0()
{
  sub_22FEAA8F0();
  v0[11] = v1;
  v2 = v1;
  v3 = v0[4];
  (*(v0[7] + 16))(v0[8], v0[5] + *(v3 + 52), v0[6]);
  v4 = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = *(v3 + 32);
  *v5 = v0;
  v5[1] = sub_22FEA6590;
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v10 = v0[2];
  v11 = v0[3];

  return sub_22FEA33D0(v7, v4, v8, v10, v11, v9, v6);
}

uint64_t sub_22FEAC8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a2;
  v10[4] = a3;
  v11 = sub_22FFB17B8();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22FFB30F0;
  v12[5] = v10;

  sub_22FEAB58C(0, 0, v9, &unk_22FFB3100, v12);
}

uint64_t sub_22FEACA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  return MEMORY[0x2822009F8](sub_22FEACA6C, a3, 0);
}

uint64_t sub_22FEACA6C()
{
  v1 = *(*(v0 + 16) + 112);
  *(v0 + 40) = v1;
  v2 = v1;

  return MEMORY[0x2822009F8](sub_22FEACAE0, 0, 0);
}

uint64_t sub_22FEACAE0()
{
  v1 = v0[5];
  v2 = v0[3];
  sec_identity_create(v1);
  v2();
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_22FEACB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a3;
  v30 = a4;
  v27 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  MEMORY[0x28223BE20](v13 - 8);
  v28 = &v27 - v14;
  v31[0] = a6;
  v31[1] = a7;
  v31[2] = a8;
  v31[3] = a9;
  v15 = type metadata accessor for AttestedTLS.OptionsFactory(0, v31);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  (*(v16 + 16))(&v27 - v17, a5, v15);
  v19 = (*(v16 + 80) + 72) & ~*(v16 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = a6;
  *(v20 + 3) = a7;
  *(v20 + 4) = a8;
  *(v20 + 5) = a9;
  v21 = v29;
  v22 = v30;
  *(v20 + 6) = v27;
  *(v20 + 7) = v21;
  *(v20 + 8) = v22;
  (*(v16 + 32))(&v20[v19], v18, v15);
  v23 = sub_22FFB17B8();
  v24 = v28;
  (*(*(v23 - 8) + 56))(v28, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_22FFB30B8;
  v25[5] = v20;
  swift_unknownObjectRetain();

  sub_22FEAB58C(0, 0, v24, &unk_22FFB30C8, v25);
}

uint64_t sub_22FEACDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v10;
  v8[13] = v11;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  return MEMORY[0x2822009F8](sub_22FEACDFC, 0, 0);
}

uint64_t sub_22FEACDFC()
{
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);
  v1 = sec_trust_copy_ref(*(v0 + 48));
  *(v0 + 112) = v1;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *(v0 + 16) = v6;
  *(v0 + 32) = v5;
  v3 = type metadata accessor for AttestedTLS.OptionsFactory(0, v0 + 16);
  *v2 = v0;
  v2[1] = sub_22FEACED0;

  return sub_22FEAD044(v1, v3);
}

uint64_t sub_22FEACED0(char a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_22FEACFD0, 0, 0);
}

uint64_t sub_22FEACFD0()
{
  v1 = *(v0 + 112);
  (*(v0 + 56))(*(v0 + 128));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22FEAD044(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  _s11CertificateVMa(0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEAD0D8, 0, 0);
}

uint64_t sub_22FEAD0D8()
{
  v1 = SecTrustCopyCertificateChain(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for SecCertificate(0);
      sub_22FFB16D8();
    }
  }

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_22FEAD438()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22FEAD650;
  }

  else
  {
    v2 = sub_22FEAD54C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEAD54C(uint64_t a1)
{
  v2 = sub_22FFB12D8();
  v3 = sub_22FFB1828();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[5];
  v6 = v1[6];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22FE99000, v2, v3, "SecTrust verification completedly successfully", v7, 2u);
    MEMORY[0x23190EFF0](v7, -1, -1);
    v8 = v2;
  }

  else
  {
    v8 = v1[6];
    v6 = v2;
  }

  sub_22FEAA230(v5);

  v9 = v1[1];

  return v9(1);
}

uint64_t sub_22FEAD650()
{
  v1 = *(v0 + 40);

  sub_22FEAA230(v1);
  v2 = *(v0 + 64);
  v3 = v2;
  v4 = sub_22FFB12D8();
  v5 = sub_22FFB1838();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22FE99000, v4, v5, "SecTrust verification failed: %@", v6, 0xCu);
    sub_22FEAEA34(v7, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v7, -1, -1);
    MEMORY[0x23190EFF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10(0);
}

uint64_t sub_22FEAD7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a5;
  v8[6] = a2;
  v14 = swift_task_alloc();
  v8[8] = v14;
  v8[2] = a6;
  v8[3] = a7;
  v8[4] = a8;
  v8[5] = v18;
  v15 = type metadata accessor for AttestedTLS.OptionsFactory(0, (v8 + 2));
  *v14 = v8;
  v14[1] = sub_22FEAD8D0;

  return sub_22FEAC6BC(v8 + 6, a3, a4, v15);
}

uint64_t sub_22FEAD8D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_22FEADAE0;
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 56);
    *(v4 + 80) = a1;
    v5 = sub_22FEADA04;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22FEADA04()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v2 + 112);
  *(v2 + 112) = v1;
  v4 = v1;

  return MEMORY[0x2822009F8](sub_22FEADA7C, 0, 0);
}

uint64_t sub_22FEADA7C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEADAF8()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FEADB3C(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_22FEADBF0;

  return AttestedTLS.OptionsFactory.createRefreshableTLSOptions(using:queue:)((v3 + 16), a2, a3);
}

uint64_t sub_22FEADBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  *(v6 + 32) = v3;

  if (v3)
  {

    return MEMORY[0x2822009F8](sub_22FEAEC1C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22FEADD88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[3];
  v11 = v4[4];
  v12 = v4[5];
  v15[0] = v4[2];
  v9 = v15[0];
  v15[1] = v10;
  v15[2] = v11;
  v15[3] = v12;
  v13 = *(type metadata accessor for AttestedTLS.OptionsFactory(0, v15) - 8);
  return sub_22FEACB6C(a1, a2, a3, a4, v4 + ((*(v13 + 80) + 48) & ~*(v13 + 80)), v9, v10, v11, v12);
}

uint64_t sub_22FEADE50()
{
  v2 = v0[2];
  v16 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v1[2] = v2;
  v1[3] = v16;
  v1[4] = v3;
  v1[5] = v4;
  v5 = *(type metadata accessor for AttestedTLS.OptionsFactory(0, (v1 + 2)) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v7);
  v10 = *(v0 + v8);
  v11 = *(v0 + v8 + 8);
  v12 = *(v0 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  v1[6] = v13;
  *v13 = v1;
  v13[1] = sub_22FEAEC20;

  return sub_22FEAD7C8(v0 + v6, v9, v10, v11, v12, v2, v16, v3);
}

uint64_t sub_22FEADFCC(uint64_t a1)
{
  result = sub_22FFB12F8();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22FEAE070(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_22FFB12F8() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(a3 + 24);
  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = *(v6 + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v9 - 8);
  v14 = *(v13 + 84);
  v15 = *(v6 + 64);
  v16 = *(v10 + 80);
  v17 = *(*(*(a3 + 16) - 8) + 64);
  v18 = *(v13 + 80);
  if (v14 <= v12)
  {
    v19 = v12;
  }

  else
  {
    v19 = *(v13 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + v16;
  if (a2 <= v19)
  {
    goto LABEL_31;
  }

  v21 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v19 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v24 < 2)
    {
LABEL_30:
      if (v19)
      {
LABEL_31:
        if (v8 == v19)
        {
          v28 = *(v7 + 48);

          return v28(a1);
        }

        else
        {
          v30 = (a1 + v20) & ~v16;
          if (v11 == v19)
          {
            v31 = *(v10 + 48);

            return v31(v30, v11);
          }

          else
          {
            v32 = *(v13 + 48);
            v33 = (v30 + v17 + v18) & ~v18;

            return v32(v33, v14, v9);
          }
        }
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_30;
  }

LABEL_17:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = ((v17 + v18 + (v20 & ~v16)) & ~v18) + *(*(v9 - 8) + 64);
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 2)
    {
      if (v26 == 3)
      {
        v27 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v27 = *a1;
      }
    }

    else if (v26 == 1)
    {
      v27 = *a1;
    }

    else
    {
      v27 = *a1;
    }
  }

  else
  {
    v27 = 0;
  }

  return v19 + (v27 | v25) + 1;
}

void sub_22FEAE35C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_22FFB12F8() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = *(a4 + 24);
  v12 = *(*(a4 + 16) - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  if (v14 <= v10)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 - 8);
  v17 = *(v16 + 84);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  v21 = *(v16 + 80);
  if (v17 <= v15)
  {
    v22 = v15;
  }

  else
  {
    v22 = *(v16 + 84);
  }

  v23 = v18 + v19;
  v24 = ((v20 + v21 + ((v18 + v19) & ~v19)) & ~v21) + *(*(v11 - 8) + 64);
  if (a3 <= v22)
  {
    v25 = 0;
  }

  else if (v24 <= 3)
  {
    v28 = ((a3 - v22 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
    if (HIWORD(v28))
    {
      v25 = 4;
    }

    else
    {
      if (v28 < 0x100)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      if (v28 >= 2)
      {
        v25 = v29;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 1;
  }

  if (v22 < a2)
  {
    v26 = ~v22 + a2;
    if (v24 < 4)
    {
      v27 = (v26 >> (8 * v24)) + 1;
      if (v24)
      {
        v30 = v26 & ~(-1 << (8 * v24));
        bzero(a1, v24);
        if (v24 != 3)
        {
          if (v24 == 2)
          {
            *a1 = v30;
            if (v25 > 1)
            {
LABEL_53:
              if (v25 == 2)
              {
                *&a1[v24] = v27;
              }

              else
              {
                *&a1[v24] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v25 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v24);
      *a1 = v26;
      v27 = 1;
      if (v25 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v25)
    {
      a1[v24] = v27;
    }

    return;
  }

  if (v25 > 1)
  {
    if (v25 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v24] = 0;
  }

  else if (v25)
  {
    a1[v24] = 0;
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
  if (v10 == v22)
  {
    v31 = *(v9 + 56);

    v31(a1, a2);
  }

  else
  {
    v32 = &a1[v23] & ~v19;
    if (v14 == v22)
    {
      v33 = *(v13 + 56);

      v33(v32, a2, v14);
    }

    else
    {
      v34 = *(v16 + 56);
      v35 = (v32 + v20 + v21) & ~v21;

      v34(v35, a2, v17, v11);
    }
  }
}

uint64_t sub_22FEAE6DC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[2];
  v5 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v3[2] = v6;
  v3[3] = v5;
  v3[4] = v8;
  v3[5] = v7;
  v9 = *(type metadata accessor for AttestedTLS.OptionsFactory(0, (v3 + 2)) - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = v2[6];
  v12 = v2[7];
  v13 = v2[8];
  v14 = swift_task_alloc();
  v4[6] = v14;
  *v14 = v4;
  v14[1] = sub_22FEAE810;

  return sub_22FEACDC8(a1, a2, v11, v12, v13, v2 + v10, v6, v5);
}

uint64_t sub_22FEAE810()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22FEAE904(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FEAA0D4;

  return sub_22FEA8DDC(a1, v4, v5, v6);
}

uint64_t sub_22FEAE9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1618, &qword_22FFB30A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEAEA34(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22FEAEA94(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_22FEAA538;

  return sub_22FEACA48(a1, a2, v6, v7, v8);
}

uint64_t sub_22FEAEB58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22FEAA538;

  return sub_22FEA859C(a1, v4, v5, v6);
}

uint64_t CeremonyAttestor.attestingKey.getter()
{
  if (qword_27DAF14C8 != -1)
  {
    swift_once();
  }

  if (qword_27DB05B28)
  {
    v1 = qword_27DB05B28;
    Duplicate = SecKeyCreateDuplicate();
    if (Duplicate)
    {
      v0 = Duplicate;
    }

    else
    {
      type metadata accessor for NodeAttestor.Error(0);
      sub_22FEAF398();
      swift_allocError();
      v0 = v6;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
      (*(*(v7 - 8) + 56))(v0, 1, 7, v7);
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for NodeAttestor.Error(0);
    sub_22FEAF398();
    swift_allocError();
    v4 = v3;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1818, &qword_22FFB3130);
    (*(*(v5 - 8) + 56))(v4, 1, 7, v5);
    swift_willThrow();
  }

  return v0;
}

uint64_t CeremonyAttestor.assetProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));

  return sub_22FE9B84C(a1, v1 + 24);
}

void (*CeremonyAttestor.assetProvider.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 24, v3);
  return sub_22FEAEF7C;
}

void sub_22FEAEF7C(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 24));
  sub_22FE9B84C(v1, v2 + 24);

  free(v1);
}

uint64_t CeremonyAttestor.transparencyProver.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 104));

  return sub_22FE9B84C(a1, v1 + 104);
}

void (*CeremonyAttestor.transparencyProver.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 104, v3);
  return sub_22FEAF0A4;
}

void sub_22FEAF0A4(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 104));
  sub_22FE9B84C(v1, v2 + 104);

  free(v1);
}

uint64_t CeremonyAttestor.init()@<X0>(uint64_t a1@<X8>)
{
  NodeAttestor.init()(a1);
  *(a1 + 144) = 0;
  v4 = &type metadata for CeremonyAttestor.AssetProvider;
  v5 = &off_2844D9650;
  __swift_destroy_boxed_opaque_existential_1((a1 + 24));
  return sub_22FE9B84C(&v3, a1 + 24);
}

uint64_t CeremonyAttestor.attest(key:using:expiration:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEAF29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return NodeAttestor.attest(key:using:expiration:nonce:)(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_22FEAF398()
{
  result = qword_27DAF1810;
  if (!qword_27DAF1810)
  {
    type metadata accessor for NodeAttestor.Error(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1810);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_22FEAF43C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy149_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 141) = *(a2 + 141);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_22FEAF4D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 149))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22FEAF51C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 148) = 0;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 149) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 149) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t sub_22FEAF7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEAF83C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NodeValidator(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t CeremonyValidator.transparencyVerifier.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_22FE9B84C(a1, v1 + 8);
}

void (*CeremonyValidator.transparencyVerifier.modify(uint64_t *a1))(__int128 **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  sub_22FEAF43C(v1 + 8, v3);
  return sub_22FEAF988;
}

void sub_22FEAF988(__int128 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  __swift_destroy_boxed_opaque_existential_1((v2 + 8));
  sub_22FE9B84C(v1, v2 + 8);

  free(v1);
}

uint64_t CeremonyValidator.init()@<X0>(uint64_t a1@<X8>)
{
  NodeValidator.init()(a1);
  result = type metadata accessor for NodeValidator(0);
  *(a1 + *(result + 40)) = 0;
  *(a1 + *(result + 68)) = 0;
  return result;
}

uint64_t CeremonyValidator.validate(bundle:nonce:signedBy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[10] = type metadata accessor for NodeValidator(0);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FEAFAB0, 0, 0);
}

uint64_t sub_22FEAFAB0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  sub_22FEAF7D0(v0[9], v2);
  v4 = *(v1 + 84);
  v5 = *(v2 + v4);
  v6 = v3;

  *(v2 + v4) = v3;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_22FEAFB80;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  return NodeValidator.validate(bundle:nonce:)(v12, v13, v10, v11, v8, v9);
}

uint64_t sub_22FEAFB80()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22FEAFD04;
  }

  else
  {
    v2 = sub_22FEAFC94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FEAFC94()
{
  sub_22FEAFE50(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FEAFD04()
{
  sub_22FEAFE50(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CeremonyValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FEAFE50(uint64_t a1)
{
  v2 = type metadata accessor for NodeValidator(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEAFEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA538;

  return NodeValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for CeremonyValidator(uint64_t a1)
{
  result = qword_27DAF1820;
  if (!qword_27DAF1820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FEB0038(uint64_t a1)
{
  result = type metadata accessor for NodeValidator(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22FEB00FC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FEB0168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22FEB01BC(uint64_t *a1, int a2)
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

uint64_t sub_22FEB0204(uint64_t result, int a2, int a3)
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

uint64_t sub_22FEB0260(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_22FFB0908();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22FEB02E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_22FFB0908();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_22FEB054C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_22FFB0908() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
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
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_22FEB0854()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19B0, &qword_22FFB3358);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_22FFB0958();
  __swift_allocate_value_buffer(v3, qword_2814913A0);
  v4 = __swift_project_value_buffer(v3, qword_2814913A0);
  sub_22FFB0918();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEB0984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19B0, &qword_22FFB3358);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_22FFB0958();
  __swift_allocate_value_buffer(v3, qword_281491418);
  v4 = __swift_project_value_buffer(v3, qword_281491418);
  sub_22FFB0918();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEB0AB4()
{
  result = sub_22FFB0728();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_27DB05990 = result;
    *algn_27DB05998 = v1;
  }

  return result;
}

uint64_t sub_22FEB0B04()
{
  result = sub_22FFB0728();
  if (v1 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_281491378 = result;
    qword_281491380 = v1;
  }

  return result;
}

uint64_t sub_22FEB0B54(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FFB0818();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEA5608(a1, a2);
  sub_22FFB0828();
  sub_22FEB0EA8();
  sub_22FFB18A8();
  if (v25)
  {
    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v22 = xmmword_22FFB2D10;
    v10 = MEMORY[0x277D84B78];
    v11 = MEMORY[0x277D84BC0];
    do
    {
      v12 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
      v13 = swift_allocObject();
      *(v13 + 16) = v22;
      *(v13 + 56) = v10;
      *(v13 + 64) = v11;
      *(v13 + 32) = v12;
      v14 = sub_22FFB14D8();
      v16 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22FEC2E8C(0, *(v7 + 2) + 1, 1, v7);
      }

      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_22FEC2E8C((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      v19 = &v7[16 * v18];
      *(v19 + 4) = v14;
      *(v19 + 5) = v16;
      sub_22FFB18A8();
    }

    while (v25 != 1);
  }

  (*(v21 + 8))(v6, v4);
  v23 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
  sub_22FEB0F00();
  v8 = sub_22FFB1458();

  return v8;
}

unint64_t sub_22FEB0E54()
{
  result = qword_281491348;
  if (!qword_281491348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281491348);
  }

  return result;
}

unint64_t sub_22FEB0EA8()
{
  result = qword_281491358;
  if (!qword_281491358)
  {
    sub_22FFB0818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281491358);
  }

  return result;
}

unint64_t sub_22FEB0F00()
{
  result = qword_28148F130;
  if (!qword_28148F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DAF3740, &unk_22FFB4290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F130);
  }

  return result;
}

double Duration.timeInterval.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_22FFB1D28();
  sub_22FFB1D28();
  return v3 * 1.0e-18 + v2;
}

uint64_t IORegistryEntry.__deallocating_deinit()
{
  IOObjectRelease(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t IORegistryEntry.property<A>(key:)@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = sub_22FFB1488();
  CFProperty = IORegistryEntryCreateCFProperty(v6, v7, *MEMORY[0x277CBECE8], 0);

  if (CFProperty)
  {
    v9 = MEMORY[0x277CC9318];
    result = swift_dynamicCast();
    if (!result)
    {
      return (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
    }

    if (a2 == v9)
    {
      v14 = swift_dynamicCast();
      return (*(*(v9 - 8) + 56))(a3, v14 ^ 1u, 1, v9);
    }

    v11 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      if (!v11)
      {
        v12 = BYTE6(v20);
        goto LABEL_19;
      }

LABEL_16:
      if (__OFSUB__(HIDWORD(v19), v19))
      {
        __break(1u);
        return result;
      }

      v12 = HIDWORD(v19) - v19;
      goto LABEL_19;
    }

    if (v11 == 2)
    {
      v16 = *(v19 + 16);
      v15 = *(v19 + 24);
      v17 = __OFSUB__(v15, v16);
      v12 = v15 - v16;
      if (v17)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_19:
    v18 = *(a2 - 8);
    if (v12 == *(v18 + 72))
    {
      MEMORY[0x28223BE20](result);
      sub_22FFB07A8();
      sub_22FEA55AC(v19, v20);
      return (*(v18 + 56))(a3, 0, 1, a2);
    }

    else
    {
      (*(v18 + 56))(a3, 1, 1, a2);
      return sub_22FEA55AC(v19, v20);
    }
  }

  v13 = *(*(a2 - 8) + 56);

  return v13(a3, 1, 1, a2);
}

SecTrustRef sub_22FEB1380(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  trust[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D84F90];
  trust[0] = MEMORY[0x277D84F90];
  v4 = *(a1 + 16);
  v5 = a1 + 40;
LABEL_2:
  v6 = (v5 + 16 * v2);
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      if (sub_22FFB1AB8() != v4)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_15;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    sub_22FEA5608(v9, *v6);
    v10 = sub_22FFB07B8();
    v11 = SecCertificateCreateWithData(0, v10);

    v12 = sub_22FEA55AC(v9, v8);
    ++v2;
    v6 += 2;
    if (v11)
    {
      MEMORY[0x23190DE60](v12);
      if (*((trust[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((trust[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22FFB1708();
      }

      sub_22FFB1728();
      v3 = trust[0];
      v2 = v7;
      goto LABEL_2;
    }
  }

  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != v4)
  {
LABEL_17:

    return 0;
  }

LABEL_12:
  trust[0] = 0;
  type metadata accessor for SecCertificate(0);
  v13 = sub_22FFB16C8();

  type metadata accessor for SecPolicy(0);
  v14 = sub_22FFB16C8();
  v15 = SecTrustCreateWithCertificates(v13, v14, trust);

  result = trust[0];
  if (!v15)
  {
    return result;
  }

  return 0;
}

uint64_t sub_22FEB157C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 == 2 && *(a1 + 16) != *(a1 + 24))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (!v2)
  {
    if ((a2 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v3 = 0;
    v4 = 1;
    return v3 | (v4 << 8);
  }

  if (a1 == a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_7:
  v3 = sub_22FFB0798();
  v4 = 0;
  return v3 | (v4 << 8);
}

uint64_t sub_22FEB1604@<X0>(char *a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  result = sysctlbyname(a1, 0, &v7, 0, 0);
  if (!result)
  {
    *&v8 = sub_22FF55750(v7);
    *(&v8 + 1) = v5;
    sub_22FF55368(&v8, 0);
    *v9 = v8;
    v6 = sub_22FEB1798(v9, a1, &v7);
    result = v9[0];
    if (v6)
    {
      *a2 = *v9;
      return result;
    }

    result = sub_22FEA55AC(v9[0], v9[1]);
  }

  *a2 = xmmword_22FFB2D00;
  return result;
}

uint64_t sub_22FEB16E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5[0] = a1;
    v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = v5;
    return sub_22FEB1604(v3, a3);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF19B8, &unk_22FFB33C0);
    return sub_22FFB19A8();
  }

  v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_22FEB1604(v3, a3);
}

uint64_t sub_22FEB1798(uint64_t *a1, char *a2, size_t *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 != 2)
    {
      *(&v27 + 7) = 0;
      *&v27 = 0;
      v8 = sysctlbyname(a2, &v27, a3, 0, 0);
      return v8 == 0;
    }

    sub_22FEA55AC(v6, v5);
    *&v27 = v6;
    *(&v27 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22FFB33B0;
    sub_22FEA55AC(0, 0xC000000000000000);
    sub_22FFB06C8();
    v11 = *(v27 + 16);
    result = sub_22FFB0588();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    v13 = result;
    v14 = sub_22FFB05B8();
    v15 = __OFSUB__(v11, v14);
    v16 = v11 - v14;
    if (!v15)
    {
      sub_22FFB05A8();
      v8 = sysctlbyname(a2, (v13 + v16), a3, 0, 0);
      v17 = *(&v27 + 1) | 0x8000000000000000;
      *a1 = v27;
LABEL_19:
      a1[1] = v17;
      return v8 == 0;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v7)
  {
    sub_22FEA55AC(v6, v5);
    *&v27 = v6;
    WORD4(v27) = v5;
    BYTE10(v27) = BYTE2(v5);
    BYTE11(v27) = BYTE3(v5);
    BYTE12(v27) = BYTE4(v5);
    BYTE13(v27) = BYTE5(v5);
    BYTE14(v27) = BYTE6(v5);
    v8 = sysctlbyname(a2, &v27, a3, 0, 0);
    v9 = DWORD2(v27) | ((WORD6(v27) | (BYTE14(v27) << 16)) << 32);
    *a1 = v27;
    a1[1] = v9;
    return v8 == 0;
  }

  v18 = v5 & 0x3FFFFFFFFFFFFFFFLL;

  sub_22FEA55AC(v6, v5);
  *a1 = xmmword_22FFB33B0;
  sub_22FEA55AC(0, 0xC000000000000000);
  v19 = v6 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v19 < v6)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_22FFB0588() && __OFSUB__(v6, sub_22FFB05B8()))
    {
LABEL_25:
      __break(1u);
    }

    sub_22FFB05D8();
    swift_allocObject();
    v20 = sub_22FFB0568();

    v18 = v20;
  }

  if (v19 < v6)
  {
    goto LABEL_22;
  }

  result = sub_22FFB0588();
  if (result)
  {
    v21 = result;
    v22 = sub_22FFB05B8();
    v23 = v6 - v22;
    if (!__OFSUB__(v6, v22))
    {
      sub_22FFB05A8();
      v24 = sysctlbyname(a2, (v21 + v23), a3, 0, 0);

      v8 = v24;
      v17 = v18 | 0x4000000000000000;
      *a1 = v6;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22FEB1B20(uint64_t a1, uint64_t a2)
{
  sub_22FEB16E4(a1, a2, &v6);
  v2 = *(&v6 + 1);
  if (*(&v6 + 1) >> 60 == 15)
  {
    return 2;
  }

  v4 = v6;
  v5 = sub_22FEB157C(v6, *(&v6 + 1));
  sub_22FEA56EC(v4, v2);
  if ((v5 & 0x100) != 0)
  {
    return 2;
  }

  else
  {
    return v5 == 1;
  }
}

uint64_t sub_22FEB1BA8(uint64_t result, unint64_t a2, int a3)
{
  if (result <= -9 || result > 8)
  {
LABEL_3:
    LOBYTE(v3) = 0;
    v4 = 0;
    if (a2 >= 8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (result < 0)
  {
    if (result == -8)
    {
      goto LABEL_3;
    }

    v4 = a3 << -result;
    if (a2 >= 8)
    {
LABEL_8:
      LOBYTE(v3) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (result == 8)
    {
      goto LABEL_3;
    }

    v4 = a3 >> result;
    if (a2 >= 8)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  v3 = 1 << a2;
LABEL_12:
  v5 = v3 - 1;
  if ((v5 & 0xFFFFFF00) == 0)
  {
    return v5 & v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22FEB1C2C()
{
  qword_281491490 = 0xD00000000000001BLL;
  *algn_281491498 = 0x800000022FFC9900;
  qword_2814914A0 = 0xD00000000000001ALL;
  unk_2814914A8 = 0x800000022FFC90A0;
  qword_2814914B0 = 0xD00000000000001BLL;
  unk_2814914B8 = 0x800000022FFC9920;
  qword_2814914C0 = 0xD00000000000001ALL;
  unk_2814914C8 = 0x800000022FFC90A0;
  qword_2814914D0 = 0xD000000000000017;
  unk_2814914D8 = 0x800000022FFC9940;
  qword_2814914E0 = 0xD00000000000001ALL;
  unk_2814914E8 = 0x800000022FFC90A0;
  qword_2814914F0 = 0xD00000000000001ELL;
  unk_2814914F8 = 0x800000022FFC9960;
  qword_281491500 = 0xD00000000000001ALL;
  unk_281491508 = 0x800000022FFC90A0;
  qword_281491510 = 0xD000000000000018;
  unk_281491518 = 0x800000022FFC9980;
  qword_281491520 = 0xD00000000000001ALL;
  unk_281491528 = 0x800000022FFC90A0;
  qword_281491530 = 0xD000000000000015;
  unk_281491538 = 0x800000022FFC99A0;
  qword_281491540 = 0xD00000000000001ALL;
  unk_281491548 = 0x800000022FFC90A0;
  qword_281491550 = 0xD000000000000011;
  unk_281491558 = 0x800000022FFC99C0;
  qword_281491560 = 0xD00000000000001ALL;
  unk_281491568 = 0x800000022FFC90A0;
  qword_281491570 = 0xD000000000000016;
  unk_281491578 = 0x800000022FFC99E0;
  qword_281491580 = 0xD00000000000001ALL;
  unk_281491588 = 0x800000022FFC90A0;
  strcpy(&qword_281491590, "allowExpired");
  unk_28149159D = 0;
  unk_28149159E = -5120;
  qword_2814915A0 = 0xD00000000000001ALL;
  unk_2814915A8 = 0x800000022FFC90A0;
  result = 0xEB0000000073666FLL;
  qword_2814915B0 = 0x6F72506568636163;
  unk_2814915B8 = 0xEB0000000073666FLL;
  qword_2814915C0 = 0xD00000000000001ALL;
  unk_2814915C8 = 0x800000022FFC90A0;
  qword_2814915D0 = 0xD000000000000013;
  unk_2814915D8 = 0x800000022FFC9A00;
  qword_2814915E0 = 0xD00000000000001ALL;
  unk_2814915E8 = 0x800000022FFC90A0;
  qword_2814915F0 = 0xD000000000000017;
  unk_2814915F8 = 0x800000022FFC9A20;
  qword_281491600 = 0xD00000000000001ALL;
  unk_281491608 = 0x800000022FFC90A0;
  qword_281491610 = 0x4365726975716572;
  unk_281491618 = 0xEF31786574707972;
  qword_281491620 = 0xD00000000000001ALL;
  unk_281491628 = 0x800000022FFC90A0;
  qword_281491630 = 0xD000000000000018;
  unk_281491638 = 0x800000022FFC9A40;
  qword_281491640 = 0xD00000000000001ALL;
  unk_281491648 = 0x800000022FFC90A0;
  qword_281491650 = 0xD00000000000001ALL;
  unk_281491658 = 0x800000022FFC9A60;
  qword_281491660 = 0xD00000000000001ALL;
  unk_281491668 = 0x800000022FFC90A0;
  return result;
}

char static Environment.default.getter@<W0>(char *a1@<X8>)
{
  if (os_variant_is_darwinos())
  {
    LOBYTE(v2) = sub_22FEB1F20();
    v3 = v7[0];
    if (LOBYTE(v7[0]) == 12)
    {
      v3 = 0;
    }

    *a1 = v3;
  }

  else
  {
    if (os_variant_has_internal_content())
    {
      v4 = 7;
    }

    else
    {
      v4 = 9;
    }

    v2 = os_variant_allows_internal_security_policies();
    if (v2)
    {
      v7[3] = &type metadata for PrivateCloudComputeFeatures;
      v7[4] = sub_22FEB1ECC();
      v5 = sub_22FFB09A8();
      LOBYTE(v2) = __swift_destroy_boxed_opaque_existential_1(v7);
      if ((v5 & 1) == 0)
      {
        LOBYTE(v2) = sub_22FEB1F20();
        if (LOBYTE(v7[0]) != 12)
        {
          v4 = v7[0];
        }
      }
    }

    *a1 = v4;
  }

  return v2;
}