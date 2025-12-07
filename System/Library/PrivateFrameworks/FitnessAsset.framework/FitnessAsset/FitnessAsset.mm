void sub_20C405B98(uint64_t a1)
{
  sub_20C405C54(319, &qword_28110B4C8, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_20C405C54(319, &qword_28110BEA0, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C405C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C4606D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for Artwork(uint64_t a1)
{
  result = qword_28110B608;
  if (!qword_28110B608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C405CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C405D3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C405EA4(uint64_t a1)
{
  sub_20C405F90(319, qword_28110B6B8, type metadata accessor for DynamicArtworkLayoutEnvironment);
  if (v1 <= 0x3F)
  {
    sub_20C4060C4(319);
    if (v2 <= 0x3F)
    {
      sub_20C405F90(319, qword_28110BC40, type metadata accessor for ImageAsset);
      if (v3 <= 0x3F)
      {
        sub_20C406508(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C405F90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C4606D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for DynamicArtworkLayoutEnvironment(uint64_t a1)
{
  result = qword_28110B6F8;
  if (!qword_28110B6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C406030(uint64_t a1)
{
  result = sub_20C45FDF0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20C4060C4(uint64_t a1)
{
  if (!qword_28110B408)
  {
    type metadata accessor for ImageAsset(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAEF8, &qword_20C461BE0);
    sub_20C4064C0(&qword_28110BC90, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    v1 = sub_20C460450();
    if (!v2)
    {
      atomic_store(v1, &qword_28110B408);
    }
  }
}

uint64_t type metadata accessor for ImageAsset(uint64_t a1)
{
  result = qword_28110BC78;
  if (!qword_28110BC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C4061C8(uint64_t a1)
{
  sub_20C405C54(319, &qword_28110B4C8, MEMORY[0x277D09D68]);
  if (v1 <= 0x3F)
  {
    sub_20C405C54(319, &qword_28110BEA0, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20C406308()
{
  result = qword_28110B858;
  if (!qword_28110B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B858);
  }

  return result;
}

void sub_20C40637C(void *a1)
{
  sub_20C460980();
  sub_20C45FC90();
  swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_20C406420();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_20C406420()
{
  if (!qword_28110BE98)
  {
    v0 = sub_20C45FCC0();
    if (!v1)
    {
      atomic_store(v0, &qword_28110BE98);
    }
  }
}

unint64_t sub_20C40646C()
{
  result = qword_28110B868;
  if (!qword_28110B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B868);
  }

  return result;
}

uint64_t sub_20C4064C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C406508(uint64_t a1)
{
  if (!qword_28110B4C0)
  {
    type metadata accessor for Artwork(255);
    sub_20C4064C0(&qword_28110B638, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v1 = sub_20C45FDA0();
    if (!v2)
    {
      atomic_store(v1, &qword_28110B4C0);
    }
  }
}

uint64_t type metadata accessor for MonogramLoadState(uint64_t a1)
{
  result = qword_28110B778;
  if (!qword_28110B778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C4065E8(uint64_t a1)
{
  if (!qword_28110B3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB268, &qword_20C462D40);
    sub_20C45FC90();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28110B3B0);
    }
  }
}

uint64_t sub_20C406668(uint64_t a1)
{
  sub_20C4065E8(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t type metadata accessor for Monogram(uint64_t a1)
{
  result = qword_28110B568;
  if (!qword_28110B568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C40670C(uint64_t a1)
{
  result = sub_20C45FC10();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for DynamicImageAssetState(uint64_t a1)
{
  result = qword_28110BDD8;
  if (!qword_28110BDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for DynamicImageAssetView(uint64_t a1)
{
  result = qword_28110BE78;
  if (!qword_28110BE78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C406840(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20C4068A4(uint64_t a1)
{
  sub_20C406840(319, &qword_28110B4B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_20C4069C0(319);
    if (v2 <= 0x3F)
    {
      sub_20C406A24(319);
      if (v3 <= 0x3F)
      {
        sub_20C406840(319, &qword_28110B3C0, sub_20C406B94, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_20C4069C0(uint64_t a1)
{
  if (!qword_28110B4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBDD0, &qword_20C466B88);
    v1 = sub_20C460010();
    if (!v2)
    {
      atomic_store(v1, &qword_28110B4B0);
    }
  }
}

void sub_20C406A24(uint64_t a1)
{
  if (!qword_28110B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BBDD8, &qword_20C466B90);
    sub_20C417418(&qword_28110B420, &qword_27C7BBDD8, &qword_20C466B90, MEMORY[0x277D04410]);
    v1 = sub_20C460030();
    if (!v2)
    {
      atomic_store(v1, &qword_28110B4A8);
    }
  }
}

uint64_t sub_20C406AE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C406B20(uint64_t a1)
{
  result = sub_20C45FCC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_20C406B94()
{
  result = qword_28110B3C8;
  if (!qword_28110B3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110B3C8);
  }

  return result;
}

uint64_t sub_20C406BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_20C406CF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_20C406E14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for ImageAsset(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_20C406EC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ImageAsset(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C406F64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C406FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF98, &qword_20C461F70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C407058()
{
  sub_20C414B30(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_20C4070BC()
{
  sub_20C414B30(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20C40712C()
{
  v1 = 0x79654B6568636163;
  if (*v0 != 1)
  {
    v1 = 0x657A695377656976;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_20C40717C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C41EA38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C4071B0()
{
  if (*v0)
  {
    return 1702521203;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_20C4071FC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_20C40722C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4072A4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C407334(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState(0);
  v5 = *(*(State - 8) + 48);

  return v5(a1, a2, State);
}

uint64_t sub_20C4073A0(uint64_t a1, uint64_t a2)
{
  State = type metadata accessor for MonogramLoadState(0);
  v5 = *(*(State - 8) + 56);

  return v5(a1, a2, a2, State);
}

uint64_t sub_20C40741C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C407454()
{
  sub_20C414B30(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20C4074C4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_20C407504(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_20C40769C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB5F8, &unk_20C4640A0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB600, &unk_20C464880);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB608, &qword_20C4640B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_20C407834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_20C407974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_20C407AB8()
{
  v1 = type metadata accessor for ImageAsset(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for DynamicImageAssetFeature(0) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = v0 + v3;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = *(v1 + 28);
  v11 = sub_20C45FC30();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = (((v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5;
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v0 + v13;
  v16 = sub_20C45FCC0();
  (*(*(v16 - 8) + 8))(v15, v16);

  return MEMORY[0x2821FE8E8](v0, v14 + 80, v2 | v5 | 7);
}

uint64_t sub_20C407D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C45FCC0();
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

uint64_t sub_20C407E20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C45FCC0();
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

__n128 sub_20C407EF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20C407F34()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20C407FBC()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_20C40801C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_20C408080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C4080F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB490, &qword_20C463AD8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_20C408264()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_20C4082A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC0, &qword_20C466B58);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC8, &unk_20C466B60);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_20C4083D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC0, &qword_20C466B58);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDC8, &unk_20C466B60);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_20C408538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDF0, &qword_20C466BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C4085A4()
{
  v1 = type metadata accessor for DynamicImageAssetView(0);
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v18 = sub_20C460050();
  v4 = *(v18 - 8);
  v5 = *(v4 + 80);
  v16 = *(v4 + 64);
  v3 = (v2 + 16) & ~v2;
  v6 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_20C460090();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_20C460240();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_20C460240();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v6 + v11, 1, v12))
    {
      (*(v13 + 8))(v6 + v11, v12);
    }
  }

  else
  {
  }

  v14 = (((v2 + 16) & ~v2) + v17 + v5) & ~v5;
  sub_20C414B30(*(v6 + v1[7]), *(v6 + v1[7] + 8));

  (*(v4 + 8))(v0 + v14, v18);

  return MEMORY[0x2821FE8E8](v0, ((v16 + v14 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v5 | 7);
}

uint64_t sub_20C4088FC()
{
  v1 = type metadata accessor for DynamicImageAssetView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB0, &qword_20C466A90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_20C460090();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BBDB8, &qword_20C466AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_20C460240();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[6];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_20C460240();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  sub_20C414B30(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20C408BFC()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_20C408C3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 40))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_20C408C90(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20C408C9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 32))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C408CF4()
{
  v1 = type metadata accessor for ImageAsset(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_20C45FD00();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = *(v1 + 28);
  v9 = sub_20C45FC30();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v5 + v8, 1, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 87) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20C408ED0()
{
  v1 = type metadata accessor for ImageAsset(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v18 = *(*(v1 - 8) + 64);
  v4 = *(type metadata accessor for ImageAssetFeature(0) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = v0 + v3;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v10 = *(v1 + 28);
  v11 = sub_20C45FC30();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v7 + v10, 1, v11))
  {
    (*(v12 + 8))(v7 + v10, v11);
  }

  v13 = (((v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 16) & ~v5;
  v14 = (v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = v0 + v13;
  v16 = sub_20C45FCC0();
  (*(*(v16 - 8) + 8))(v15, v16);

  return MEMORY[0x2821FE8E8](v0, v14 + 80, v2 | v5 | 7);
}

uint64_t sub_20C40917C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C45FCC0();
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

uint64_t sub_20C409238(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C45FCC0();
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

uint64_t sub_20C4092F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_20C45FC10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_20C40939C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_20C45FC10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_20C409440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20C45FDF0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 4)
    {
      return v12 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_20C4094FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_20C45FDF0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 3;
  }

  return result;
}

uint64_t sub_20C4095B8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 64))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 sub_20C40960C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_20C409618()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20C409658@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 56))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

uint64_t sub_20C4096AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 48))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
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

uint64_t sub_20C409B04(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t Artwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_20C409BD0(a1, a3, &qword_27C7BAC10, &qword_20C462070);
  v5 = type metadata accessor for Artwork(0);
  return sub_20C409BD0(a2, a3 + *(v5 + 20), &qword_27C7BAC18, &unk_20C464A00);
}

uint64_t sub_20C409BD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20C409C38()
{
  v1 = *v0;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v1);
  return sub_20C460970();
}

uint64_t sub_20C409C80(uint64_t a1)
{
  v2 = *v1;
  sub_20C460930();
  MEMORY[0x20F2FAEA0](v2);
  return sub_20C460970();
}

uint64_t sub_20C409CC4()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_20C409D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C409E08(uint64_t a1)
{
  v2 = sub_20C40A128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C409E44(uint64_t a1)
{
  v2 = sub_20C40A128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Artwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC20, &qword_20C461178);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40A128();
  sub_20C4609C0();
  v8[15] = 0;
  sub_20C45FD00();
  sub_20C405CF4(qword_28110B4E0, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_20C460880();
  if (!v1)
  {
    type metadata accessor for Artwork(0);
    v8[14] = 1;
    sub_20C45FC30();
    sub_20C405CF4(&qword_28110BEB8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_20C460880();
  }

  return (*(v4 + 8))(v6, v3);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_20C40A128()
{
  result = qword_28110B650;
  if (!qword_28110B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B650);
  }

  return result;
}

uint64_t Artwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC28, &qword_20C461180);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Artwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40A128();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  sub_20C45FD00();
  v26 = 0;
  sub_20C405CF4(&qword_27C7BAC30, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v16 = v23;
  v17 = v24;
  sub_20C460810();
  sub_20C409BD0(v16, v14, &qword_27C7BAC10, &qword_20C462070);
  sub_20C45FC30();
  v25 = 1;
  sub_20C405CF4(&qword_27C7BAC38, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_20C460810();
  (*(v15 + 8))(v10, v17);
  sub_20C409BD0(v6, v14 + *(v20 + 20), &qword_27C7BAC18, &unk_20C464A00);
  sub_20C40A578(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C40A5DC(v14);
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

uint64_t sub_20C40A578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C40A5DC(uint64_t a1)
{
  v2 = type metadata accessor for Artwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Artwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C45FC30();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_20C409B04(v2, &v20 - v13, &qword_27C7BAC10, &qword_20C462070);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_20C460950();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_20C460950();
    sub_20C405CF4(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_20C460460();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for Artwork(0);
  sub_20C409B04(v2 + *(v15 + 20), v7, &qword_27C7BAC18, &unk_20C464A00);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_20C460950();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_20C460950();
  sub_20C405CF4(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_20C460460();
  return (*(v17 + 8))(v19, v16);
}

uint64_t Artwork.hashValue.getter()
{
  sub_20C460930();
  Artwork.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C40AA54()
{
  sub_20C460930();
  Artwork.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C40AA98(uint64_t a1)
{
  sub_20C460930();
  Artwork.hash(into:)(v2);
  return sub_20C460970();
}

BOOL _s12FitnessAsset7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C45FC30();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC48, &qword_20C4613F0);
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - v8;
  v9 = sub_20C45FD00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC50, &qword_20C4613F8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - v17;
  v20 = *(v19 + 56);
  v42 = a1;
  sub_20C409B04(a1, &v38 - v17, &qword_27C7BAC10, &qword_20C462070);
  v43 = a2;
  sub_20C409B04(a2, &v18[v20], &qword_27C7BAC10, &qword_20C462070);
  v21 = *(v10 + 48);
  if (v21(v18, 1, v9) != 1)
  {
    sub_20C409B04(v18, v15, &qword_27C7BAC10, &qword_20C462070);
    if (v21(&v18[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v18[v20], v9);
      sub_20C405CF4(&qword_28110B4D0, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v25 = sub_20C4604B0();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_20C40B440(v18, &qword_27C7BAC10, &qword_20C462070);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_27C7BAC50;
    v23 = &qword_20C4613F8;
    v24 = v18;
LABEL_14:
    sub_20C40B440(v24, v22, v23);
    return 0;
  }

  if (v21(&v18[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20C40B440(v18, &qword_27C7BAC10, &qword_20C462070);
LABEL_8:
  v27 = *(type metadata accessor for Artwork(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_20C409B04(v42 + v27, v41, &qword_27C7BAC18, &unk_20C464A00);
  sub_20C409B04(v43 + v27, v28 + v29, &qword_27C7BAC18, &unk_20C464A00);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_20C40B440(v28, &qword_27C7BAC18, &unk_20C464A00);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_20C409B04(v28, v39, &qword_27C7BAC18, &unk_20C464A00);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_27C7BAC48;
    v23 = &qword_20C4613F0;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_20C405CF4(&qword_28110BEA8, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = sub_20C4604B0();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_20C40B440(v28, &qword_27C7BAC18, &unk_20C464A00);
  return (v36 & 1) != 0;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_20C40B140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C40B160(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_28110B3D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28110B3D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Artwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Artwork.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C40B33C()
{
  result = qword_27C7BAC40;
  if (!qword_27C7BAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC40);
  }

  return result;
}

unint64_t sub_20C40B394()
{
  result = qword_28110B640;
  if (!qword_28110B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B640);
  }

  return result;
}

unint64_t sub_20C40B3EC()
{
  result = qword_28110B648;
  if (!qword_28110B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B648);
  }

  return result;
}

uint64_t sub_20C40B440(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double ImageAssetLocalState.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  return result;
}

uint64_t sub_20C40B4C8()
{
  if (*v0)
  {
    return 0x79654B6568636163;
  }

  else
  {
    return 0x657A695377656976;
  }
}

uint64_t sub_20C40B4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657A695377656976 && a2 == 0xE800000000000000;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C40B5D8(uint64_t a1)
{
  v2 = sub_20C40B8B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C40B614(uint64_t a1)
{
  v2 = sub_20C40B8B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC58, &unk_20C461400);
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *v1;
  v15 = v1[1];
  v7 = *(v1 + 16);
  v8 = *(v1 + 5);
  v9 = *(v1 + 9);
  v26 = *(v1 + 7);
  v27 = v9;
  v28 = *(v1 + 11);
  v24 = *(v1 + 3);
  v25 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40B8B0();
  sub_20C4609C0();
  *&v19 = v6;
  *(&v19 + 1) = v15;
  v10 = v5;
  LOBYTE(v20) = v7;
  LOBYTE(v18[0]) = 0;
  type metadata accessor for CGSize();
  sub_20C40BDA0(&qword_28110B3E0, MEMORY[0x277CBF288]);
  v11 = v16;
  sub_20C460880();
  if (v11)
  {
    return (*(v17 + 8))(v5, v3);
  }

  v21 = v26;
  v22 = v27;
  v23 = v28;
  v19 = v24;
  v20 = v25;
  v29 = 1;
  sub_20C40B904(&v24, v18);
  sub_20C40B974();
  sub_20C460880();
  v13 = (v17 + 8);
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v18[0] = v19;
  v18[1] = v20;
  sub_20C40B440(v18, &qword_27C7BAC68, &unk_20C464890);
  return (*v13)(v10, v3);
}

unint64_t sub_20C40B8B0()
{
  result = qword_27C7BAC60;
  if (!qword_27C7BAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC60);
  }

  return result;
}

uint64_t sub_20C40B904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC68, &unk_20C464890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C40B974()
{
  result = qword_28110B878;
  if (!qword_28110B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B878);
  }

  return result;
}

uint64_t ImageAssetLocalState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC70, &qword_20C461410);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v63 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C40B8B0();
  sub_20C4609B0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v53 = 0;
    v54 = 0;
    v55 = v63;
    *v56 = v62[0];
    *&v56[3] = *(v62 + 3);
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
  }

  else
  {
    v33 = v5;
    v8 = v64;
    type metadata accessor for CGSize();
    LOBYTE(v35) = 0;
    sub_20C40BDA0(&qword_27C7BAC78, MEMORY[0x277CBF2A0]);
    sub_20C460810();
    v11 = v53;
    v10 = v54;
    v63 = v55;
    v42 = 1;
    sub_20C40BDE4();
    sub_20C460810();
    (*(v33 + 8))(v7, v4);
    v13 = v43;
    v12 = v44;
    v27 = v44;
    v28 = v43;
    v14 = v47;
    v26 = v47;
    v23 = v48;
    v24 = v45;
    v32 = v49;
    v33 = v46;
    v30 = v51;
    v31 = v50;
    v29 = v52;
    memset(v34, 0, 80);
    sub_20C40B440(v34, &qword_27C7BAC68, &unk_20C464890);
    *&v35 = v11;
    *(&v35 + 1) = v10;
    v25 = v63;
    LOBYTE(v36) = v63;
    *(&v36 + 1) = v62[0];
    DWORD1(v36) = *(v62 + 3);
    *(&v36 + 1) = v13;
    *&v37 = v12;
    v15 = v24;
    *(&v37 + 1) = v24;
    *&v38 = v33;
    *(&v38 + 1) = v14;
    v16 = v23;
    *&v39 = v23;
    *(&v39 + 1) = v32;
    *&v40 = v31;
    *(&v40 + 1) = v30;
    v17 = v29;
    v41 = v29;
    v18 = v40;
    v19 = v38;
    *(v8 + 64) = v39;
    *(v8 + 80) = v18;
    v20 = v37;
    *(v8 + 96) = v17;
    *(v8 + 32) = v20;
    *(v8 + 48) = v19;
    v21 = v36;
    *v8 = v35;
    *(v8 + 16) = v21;
    sub_20C40BE38(&v35, &v53);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v53 = v11;
    v54 = v10;
    v55 = v25;
    *v56 = v62[0];
    *&v56[3] = *(v62 + 3);
    *&v57 = v28;
    *(&v57 + 1) = v27;
    *&v58 = v15;
    *(&v58 + 1) = v33;
    *&v59 = v26;
    *(&v59 + 1) = v16;
    *&v60 = v32;
    *(&v60 + 1) = v31;
    *&v61 = v30;
    *(&v61 + 1) = v29;
  }

  return sub_20C40BD70(&v53);
}

uint64_t sub_20C40BDA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C40BDE4()
{
  result = qword_27C7BAC80;
  if (!qword_27C7BAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC80);
  }

  return result;
}

uint64_t ImageAssetLocalState.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (*(v1 + 16) == 1)
  {
    sub_20C460950();
    if (v3)
    {
LABEL_3:
      v10 = *(v1 + 24);
      *&v11[8] = *(v1 + 48);
      *&v11[24] = *(v1 + 64);
      *&v11[40] = *(v1 + 80);
      *&v11[56] = *(v1 + 96);
      *v11 = v3;
      sub_20C460950();
      v12 = *(v1 + 24);
      v13 = v3;
      v4 = *(v1 + 64);
      v14 = *(v1 + 48);
      v15 = v4;
      v16 = *(v1 + 80);
      v17 = *(v1 + 96);
      sub_20C40C520(&v12, v18);
      ImageAssetCacheKey.hash(into:)(a1);
      v18[2] = *&v11[16];
      v18[3] = *&v11[32];
      v18[4] = *&v11[48];
      v18[0] = v10;
      v18[1] = *v11;
      return sub_20C40C57C(v18);
    }
  }

  else
  {
    v7 = *v1;
    v6 = *(v1 + 8);
    sub_20C460950();
    if (v7 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v7;
    }

    MEMORY[0x20F2FAEC0](*&v8);
    if (v6 == 0.0)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v6;
    }

    MEMORY[0x20F2FAEC0](*&v9);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  return sub_20C460950();
}

uint64_t ImageAssetLocalState.hashValue.getter()
{
  v1 = v0;
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v1 + 40);
  sub_20C460930();
  if (v4 != 1)
  {
    sub_20C460950();
    if (v3 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v3;
    }

    MEMORY[0x20F2FAEC0](*&v7);
    if (v2 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v2;
    }

    MEMORY[0x20F2FAEC0](*&v8);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_11:
    sub_20C460950();
    return sub_20C460970();
  }

  sub_20C460950();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_3:
  v15 = *(v1 + 24);
  *v16 = v5;
  v6 = *(v1 + 64);
  *&v16[8] = *(v1 + 48);
  *&v16[24] = v6;
  *&v16[40] = *(v1 + 80);
  *&v16[56] = *(v1 + 96);
  v10 = v15;
  v11 = *v16;
  v12 = *&v16[16];
  v13 = *&v16[32];
  v14 = *&v16[48];
  sub_20C460950();
  sub_20C40C520(&v15, v17);
  ImageAssetCacheKey.hash(into:)(v18);
  v17[2] = v12;
  v17[3] = v13;
  v17[4] = v14;
  v17[0] = v10;
  v17[1] = v11;
  sub_20C40C57C(v17);
  return sub_20C460970();
}

uint64_t sub_20C40C120()
{
  sub_20C460930();
  ImageAssetLocalState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C40C164(uint64_t a1)
{
  sub_20C460930();
  ImageAssetLocalState.hash(into:)(v2);
  return sub_20C460970();
}

uint64_t sub_20C40C1A4(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x20F2FAEC0](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x20F2FAEC0](*&v3);
}

BOOL _s12FitnessAsset05ImageB10LocalStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 40);
  v6 = *(a1 + 72);
  v52 = *(a1 + 56);
  v53 = v6;
  v54 = *(a1 + 88);
  v50 = *(a1 + 24);
  v51 = v5;
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 40);
  v12 = *(a2 + 56);
  v59 = *(a2 + 88);
  v13 = *(a2 + 72);
  v57 = v12;
  v58 = v13;
  v55 = v10;
  v56 = v11;
  if (v4)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v15 = v51;
    v16 = v56;
    if (v51)
    {
      v42 = *(a1 + 24);
      v17 = *(a1 + 64);
      *&v43[8] = *(a1 + 48);
      *&v43[24] = v17;
      *&v43[40] = *(a1 + 80);
      v18 = a1;
      v19 = *(a1 + 96);
      *v43 = v51;
      *&v43[56] = v19;
      v37 = v42;
      v38 = *v43;
      v39 = *&v43[16];
      v40 = *&v43[32];
      v41 = *&v43[48];
      if (v56)
      {
        v35 = *(a2 + 24);
        v20 = *(a2 + 64);
        *&v36[8] = *(a2 + 48);
        *&v36[24] = v20;
        *&v36[40] = *(a2 + 80);
        *&v36[56] = *(a2 + 96);
        *v36 = v56;
        v14 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v37, &v35);
        v33[2] = *&v36[16];
        v33[3] = *&v36[32];
        v33[4] = *&v36[48];
        v33[0] = v35;
        v33[1] = *v36;
        sub_20C40B904(&v50, v34);
        sub_20C40B904(&v55, v34);
        sub_20C40B904(&v42, v34);
        sub_20C40C57C(v33);
        v34[2] = v39;
        v34[3] = v40;
        v34[4] = v41;
        v34[0] = v37;
        v34[1] = v38;
        sub_20C40C57C(v34);
        v35 = *(v18 + 24);
        v21 = *(v18 + 64);
        *&v36[8] = *(v18 + 48);
        *&v36[24] = v21;
        *&v36[40] = *(v18 + 80);
        v22 = *(v18 + 96);
        *v36 = v15;
        *&v36[56] = v22;
        sub_20C40B440(&v35, &qword_27C7BAC68, &unk_20C464890);
        return v14;
      }

      v23 = a2;
      *&v36[16] = *&v43[16];
      *&v36[32] = *&v43[32];
      *&v36[48] = *&v43[48];
      v35 = v42;
      *v36 = *v43;
      sub_20C40B904(&v50, v34);
      sub_20C40B904(&v55, v34);
      sub_20C40B904(&v42, v34);
      sub_20C40C57C(&v35);
    }

    else
    {
      if (!v56)
      {
        v42 = *(a1 + 24);
        v30 = *(a1 + 64);
        *&v43[8] = *(a1 + 48);
        *&v43[24] = v30;
        *&v43[40] = *(a1 + 80);
        v31 = *(a1 + 96);
        *v43 = 0;
        *&v43[56] = v31;
        sub_20C40B904(&v50, &v37);
        sub_20C40B904(&v55, &v37);
        sub_20C40B440(&v42, &qword_27C7BAC68, &unk_20C464890);
        return 1;
      }

      v23 = a2;
      v18 = a1;
      sub_20C40B904(&v50, &v42);
      sub_20C40B904(&v55, &v42);
    }

    v42 = *(v18 + 24);
    v24 = *(v18 + 64);
    *&v43[8] = *(v18 + 48);
    *&v43[24] = v24;
    *&v43[40] = *(v18 + 80);
    v25 = *(v18 + 96);
    *v43 = v15;
    *&v43[56] = v25;
    v44 = *(v23 + 24);
    v26 = *(v23 + 48);
    v27 = *(v23 + 64);
    v28 = *(v23 + 80);
    v29 = *(v23 + 96);
    v45 = v16;
    v49 = v29;
    v48 = v28;
    v47 = v27;
    v46 = v26;
    sub_20C40B440(&v42, &qword_27C7BACA0, &qword_20C463AC0);
    return 0;
  }

  v14 = 0;
  if ((v9 & 1) == 0 && v3 == v8 && v2 == v7)
  {
    goto LABEL_7;
  }

  return v14;
}

unint64_t sub_20C40C5D4()
{
  result = qword_28110BBD8;
  if (!qword_28110BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110BBD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FitnessAsset05ImageB8CacheKeyVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20C40C66C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 104))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_20C40C6C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_20C40C758()
{
  result = qword_27C7BAC88;
  if (!qword_27C7BAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC88);
  }

  return result;
}

unint64_t sub_20C40C7B0()
{
  result = qword_27C7BAC90;
  if (!qword_27C7BAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC90);
  }

  return result;
}

unint64_t sub_20C40C808()
{
  result = qword_27C7BAC98;
  if (!qword_27C7BAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAC98);
  }

  return result;
}

uint64_t sub_20C40C85C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656863746566 && a2 == 0xE700000000000000;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701602409 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C40C9AC(unsigned __int8 a1)
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](a1);
  return sub_20C460970();
}

uint64_t sub_20C40C9F4(char a1)
{
  if (!a1)
  {
    return 0x64656863746566;
  }

  if (a1 == 1)
  {
    return 0x676E696863746566;
  }

  return 1701602409;
}

uint64_t sub_20C40CA44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x637465467473616CLL && a2 == 0xE900000000000068)
  {

    return 1;
  }

  else
  {
    v6 = sub_20C4608D0();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_20C40CB48(char a1)
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](a1 & 1);
  return sub_20C460970();
}

uint64_t sub_20C40CB90(char a1)
{
  if (a1)
  {
    return 0x637465467473616CLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_20C40CBC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65636E6174736E69 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_20C4608D0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_20C40CD00(uint64_t a1)
{
  sub_20C460930();
  sub_20C40C984(v3, *v1);
  return sub_20C460970();
}

uint64_t sub_20C40CDCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40CE20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C40CF44(uint64_t a1)
{
  sub_20C460930();
  sub_20C40CB20(v3, *v1);
  return sub_20C460970();
}

uint64_t sub_20C40CFFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void, void, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5], a3[6], a3[7], a3[8], a3[9], a3[10]);
  *a5 = result;
  return result;
}

uint64_t sub_20C40D06C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10]);
  *a3 = result;
  return result;
}

uint64_t sub_20C40D0C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40D114(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C40D170()
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](0);
  return sub_20C460970();
}

uint64_t sub_20C40D1B4(uint64_t a1)
{
  sub_20C460930();
  MEMORY[0x20F2FAEA0](0);
  return sub_20C460970();
}

uint64_t sub_20C40D20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_20C40CBC0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20C40D278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40D2CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_20C40D32C@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_20C40D168();

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_20C40D394@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9], a1[10]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_20C40D3EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_20C40D440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t AssetLoadState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v71 = *(a2 + 56);
  v72 = v6;
  v9 = *(a2 + 72);
  v8 = *(a2 + 80);
  v75 = v4;
  v76 = v5;
  v77 = v6;
  v78 = v7;
  v79 = v71;
  v80 = v9;
  v81 = v8;
  v63 = type metadata accessor for AssetLoadState.IdleCodingKeys(255, &v75);
  WitnessTable = swift_getWitnessTable();
  v61 = sub_20C4608C0();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v43 - v10;
  v75 = v4;
  v76 = v5;
  v77 = v72;
  v78 = v7;
  v79 = v71;
  v80 = v9;
  v81 = v8;
  v11 = type metadata accessor for AssetLoadState.FetchingCodingKeys(255, &v75);
  v12 = swift_getWitnessTable();
  v51 = v11;
  v49 = v12;
  v60 = sub_20C4608C0();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v52 = &v43 - v13;
  v55 = sub_20C45FCC0();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v4;
  v76 = v5;
  v77 = v72;
  v78 = v7;
  v79 = v71;
  v80 = v9;
  v81 = v8;
  v15 = type metadata accessor for AssetLoadState.FetchedCodingKeys(255, &v75);
  v16 = swift_getWitnessTable();
  v48 = v15;
  v47 = v16;
  v57 = sub_20C4608C0();
  v44 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v67 = &v43 - v17;
  v56 = sub_20C45FC90();
  v46 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v66 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C460980();
  v65 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v64 = &v43 - v19;
  v20 = *(a2 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v4;
  v76 = v5;
  v77 = v72;
  v78 = v7;
  v79 = v71;
  v80 = v9;
  v81 = v8;
  type metadata accessor for AssetLoadState.CodingKeys(255, &v75);
  swift_getWitnessTable();
  v24 = sub_20C4608C0();
  v69 = *(v24 - 8);
  v70 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4609C0();
  (*(v20 + 16))(v23, v68, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v34 = v45;
    v35 = v56;
    v36 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v65 + 32))(v64, v23, v34);
    v37 = v46;
    (*(v46 + 32))(v66, &v23[v36], v35);
    LOBYTE(v75) = 0;
    v32 = v70;
    sub_20C460870();
    LOBYTE(v75) = 0;
    v73 = v72;
    v74 = v71;
    swift_getWitnessTable();
    v38 = v57;
    v39 = v82;
    sub_20C4608B0();
    if (!v39)
    {
      LOBYTE(v75) = 1;
      sub_20C40F66C(&qword_27C7BACB0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
      sub_20C4608B0();
    }

    (*(v44 + 8))(v67, v38);
    (*(v37 + 8))(v66, v35);
    (*(v65 + 8))(v64, v34);
    return (*(v69 + 8))(v26, v32);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v28 = v54;
    v29 = v50;
    v30 = v55;
    (*(v54 + 32))(v50, v23, v55);
    LOBYTE(v75) = 1;
    v31 = v52;
    v32 = v70;
    sub_20C460870();
    sub_20C40F66C(&qword_27C7BACA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v33 = v60;
    sub_20C4608B0();
    (*(v58 + 8))(v31, v33);
    (*(v28 + 8))(v29, v30);
    return (*(v69 + 8))(v26, v32);
  }

  LOBYTE(v75) = 2;
  v41 = v53;
  v42 = v70;
  sub_20C460870();
  (*(v59 + 8))(v41, v61);
  return (*(v69 + 8))(v26, v42);
}

uint64_t AssetLoadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v123 = a6;
  v109 = a1;
  v97 = a9;
  v108 = a11;
  *&v116 = a2;
  *(&v116 + 1) = a3;
  *&v117 = a4;
  *(&v117 + 1) = a5;
  v118 = a6;
  v119 = a7;
  v120 = a8;
  v121 = a10;
  v122 = a11;
  v17 = type metadata accessor for AssetLoadState.IdleCodingKeys(255, &v116);
  WitnessTable = swift_getWitnessTable();
  v95 = v17;
  v93 = WitnessTable;
  v84 = sub_20C460860();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v92 = &v79 - v19;
  *&v116 = a2;
  *(&v116 + 1) = a3;
  *&v104 = a2;
  *(&v104 + 1) = a3;
  *&v117 = a4;
  *(&v117 + 1) = a5;
  v105 = a4;
  v118 = v123;
  v119 = a7;
  v106 = a7;
  v107 = a8;
  v120 = a8;
  v121 = a10;
  v103 = a10;
  v122 = a11;
  v20 = type metadata accessor for AssetLoadState.FetchingCodingKeys(255, &v116);
  v21 = swift_getWitnessTable();
  v91 = v20;
  v90 = v21;
  v82 = sub_20C460860();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v96 = &v79 - v22;
  *&v116 = a2;
  *(&v116 + 1) = a3;
  *&v117 = a4;
  *(&v117 + 1) = a5;
  v23 = v123;
  v118 = v123;
  v119 = a7;
  v120 = a8;
  v121 = a10;
  v122 = a11;
  v24 = type metadata accessor for AssetLoadState.FetchedCodingKeys(255, &v116);
  v25 = swift_getWitnessTable();
  v89 = v24;
  v88 = v25;
  v86 = sub_20C460860();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v94 = &v79 - v26;
  v27 = v104;
  v116 = v104;
  v28 = v105;
  *&v117 = v105;
  *(&v117 + 1) = a5;
  v30 = v106;
  v29 = v107;
  v118 = v23;
  v119 = v106;
  v31 = v103;
  v120 = v107;
  v121 = v103;
  v122 = a11;
  type metadata accessor for AssetLoadState.CodingKeys(255, &v116);
  v101 = swift_getWitnessTable();
  v98 = sub_20C460860();
  v99 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v33 = &v79 - v32;
  v116 = v27;
  *&v117 = v28;
  *(&v117 + 1) = a5;
  v87 = a5;
  v118 = v123;
  v119 = v30;
  v120 = v29;
  v121 = v31;
  v122 = v108;
  State = type metadata accessor for AssetLoadState(0, &v116);
  v123 = *(State - 8);
  MEMORY[0x28223BE20](State);
  v36 = &v79 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v79 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v79 - v41;
  __swift_project_boxed_opaque_existential_1(v109, v109[3]);
  v100 = v33;
  v43 = v102;
  sub_20C4609B0();
  if (!v43)
  {
    v80 = v36;
    v102 = v39;
    v101 = v42;
    v108 = State;
    v44 = v98;
    v45 = v100;
    *&v114 = sub_20C460850();
    sub_20C460590();
    swift_getWitnessTable();
    *&v116 = sub_20C4606F0();
    *(&v116 + 1) = v46;
    *&v117 = v47;
    *(&v117 + 1) = v48;
    sub_20C4606E0();
    swift_getWitnessTable();
    sub_20C460640();
    v49 = v114;
    if (v114 == 3 || (v79 = v116, v114 = v116, v115 = v117, (sub_20C460650() & 1) == 0))
    {
      v57 = sub_20C460770();
      swift_allocError();
      v59 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670);
      *v59 = v108;
      sub_20C460800();
      sub_20C460760();
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
      swift_willThrow();
      (*(v99 + 8))(v45, v44);
      swift_unknownObjectRelease();
    }

    else if (v49)
    {
      v50 = v44;
      if (v49 == 1)
      {
        LOBYTE(v114) = 1;
        sub_20C4607F0();
        v51 = v97;
        v52 = v99;
        v53 = v123;
        sub_20C45FCC0();
        sub_20C40F66C(&qword_27C7BACC0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
        v54 = v80;
        v55 = v82;
        v56 = v96;
        sub_20C460840();
        (*(v81 + 8))(v56, v55);
        (*(v52 + 8))(v100, v50);
        swift_unknownObjectRelease();
        v70 = v54;
        v71 = v108;
        swift_storeEnumTagMultiPayload();
        v72 = *(v53 + 32);
        v73 = v101;
        v72(v101, v70, v71);
        v72(v51, v73, v71);
      }

      else
      {
        LOBYTE(v114) = 2;
        v63 = v92;
        sub_20C4607F0();
        v64 = v97;
        v65 = v99;
        v66 = v123;
        (*(v83 + 8))(v63, v84);
        (*(v65 + 8))(v45, v50);
        swift_unknownObjectRelease();
        v68 = v101;
        v69 = v108;
        swift_storeEnumTagMultiPayload();
        (*(v66 + 32))(v64, v68, v69);
      }
    }

    else
    {
      LOBYTE(v114) = 0;
      v60 = v94;
      v61 = v44;
      sub_20C4607F0();
      sub_20C460980();
      LOBYTE(v114) = 0;
      v110 = v105;
      v111 = v87;
      v112 = v106;
      v113 = v107;
      swift_getWitnessTable();
      v62 = v86;
      sub_20C460840();
      sub_20C45FC90();
      swift_getTupleTypeMetadata2();
      LOBYTE(v114) = 1;
      sub_20C40F66C(&qword_27C7BACC8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      v74 = v102;
      sub_20C460840();
      v75 = v99;
      (*(v85 + 8))(v60, v62);
      (*(v75 + 8))(v45, v61);
      swift_unknownObjectRelease();
      v76 = v108;
      swift_storeEnumTagMultiPayload();
      v77 = *(v123 + 32);
      v78 = v101;
      v77(v101, v74, v76);
      v77(v97, v78, v76);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t static AssetLoadState.== infix(_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v78 = a1;
  v79 = a2;
  v17 = sub_20C45FCC0();
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x28223BE20](v17);
  v69 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C45FC90();
  v73 = *(v19 - 8);
  v74 = v19;
  MEMORY[0x28223BE20](v19);
  v63 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v70 = &v62 - v22;
  v23 = sub_20C460980();
  v76 = *(v23 - 8);
  v77 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v66 = a3;
  v80[0] = a3;
  v80[1] = a4;
  v68 = a4;
  v80[2] = a5;
  v80[3] = a6;
  v65 = a7;
  v80[4] = a7;
  v80[5] = a8;
  v80[6] = a9;
  v80[7] = a10;
  v67 = a10;
  v64 = a11;
  v80[8] = a11;
  State = type metadata accessor for AssetLoadState(0, v80);
  v27 = *(State - 8);
  MEMORY[0x28223BE20](State);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v62 - v31;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v34 = *(TupleTypeMetadata2 - 8);
  v35 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v37 = &v62 - v36;
  v39 = &v62 + *(v38 + 48) - v36;
  v75 = v27;
  v40 = *(v27 + 16);
  v40(&v62 - v36, v78, State, v35);
  (v40)(v39, v79, State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (v40)(v29, v37, State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v43 = v71;
        v42 = v72;
        v44 = v69;
        (*(v71 + 32))(v69, v39, v72);
        v45 = sub_20C45FCA0();
        v46 = *(v43 + 8);
        v46(v44, v42);
        v46(v29, v42);
        v34 = v75;
        goto LABEL_11;
      }

      (*(v71 + 8))(v29, v72);
    }

    else if (swift_getEnumCaseMultiPayload() == 2)
    {
      v45 = 1;
      v34 = v75;
      goto LABEL_11;
    }

LABEL_10:
    v45 = 0;
    State = TupleTypeMetadata2;
    goto LABEL_11;
  }

  (v40)(v32, v37, State);
  v47 = v77;
  v48 = v74;
  v49 = *(swift_getTupleTypeMetadata2() + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v73 + 8))(&v32[v49], v48);
    (*(v76 + 8))(v32, v47);
    goto LABEL_10;
  }

  (*(v76 + 32))(v25, v39, v47);
  v51 = v73;
  v52 = *(v73 + 32);
  v52(v70, &v32[v49], v48);
  v53 = &v39[v49];
  v54 = v63;
  v52(v63, v53, v48);
  v79 = v25;
  v56 = v76;
  v55 = v77;
  v57 = sub_20C4609A0();
  v58 = *(v56 + 8);
  v58(v32, v55);
  if (v57)
  {
    v59 = v70;
    v45 = sub_20C45FC70();
    v60 = *(v51 + 8);
    v60(v54, v48);
    v60(v59, v48);
    v58(v79, v77);
  }

  else
  {
    v61 = *(v51 + 8);
    v61(v54, v48);
    v61(v70, v48);
    v58(v79, v55);
    v45 = 0;
  }

  v34 = v75;
LABEL_11:
  (*(v34 + 8))(v37, State);
  return v45 & 1;
}

uint64_t AssetLoadState.hash(into:)(uint64_t a1, void *a2)
{
  v27 = a1;
  v4 = sub_20C45FCC0();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C45FC90();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C460980();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v2, a2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v25;
      (*(v25 + 32))(v6, v17, v4);
      MEMORY[0x20F2FAEA0](1);
      sub_20C40F66C(&qword_28110BE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_20C460460();
      return (*(v20 + 8))(v6, v4);
    }

    else
    {
      return MEMORY[0x20F2FAEA0](2);
    }
  }

  else
  {
    v22 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v11 + 32))(v13, v17, v10);
    v23 = v26;
    (*(v26 + 32))(v9, &v17[v22], v7);
    MEMORY[0x20F2FAEA0](0);
    sub_20C460990();
    sub_20C40F66C(qword_27C7BACD0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_20C460460();
    (*(v23 + 8))(v9, v7);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_20C40F66C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AssetLoadState.hashValue.getter(void *a1)
{
  sub_20C460930();
  AssetLoadState.hash(into:)(v3, a1);
  return sub_20C460970();
}

uint64_t sub_20C40F704(uint64_t a1, void *a2)
{
  sub_20C460930();
  AssetLoadState.hash(into:)(v4, a2);
  return sub_20C460970();
}

uint64_t sub_20C40F7A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 24) - 8) + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v5 = *(*(*(a3 + 24) - 8) + 64);
  }

  v6 = *(sub_20C45FC90() - 8);
  v7 = ((v5 + *(v6 + 80) + 1) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = *(*(sub_20C45FCC0() - 8) + 64);
  if (v8 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_29;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v14 < 2)
    {
LABEL_29:
      v16 = *(a1 + v9);
      if (v16 >= 3)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_29;
  }

LABEL_18:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 254;
}

void sub_20C40F978(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  if (*(*(*(a4 + 24) - 8) + 64) <= *(*(*(a4 + 16) - 8) + 64))
  {
    v7 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v7 = *(*(*(a4 + 24) - 8) + 64);
  }

  v8 = *(sub_20C45FC90() - 8);
  v9 = ((v7 + *(v8 + 80) + 1) & ~*(v8 + 80)) + *(v8 + 64);
  v10 = *(*(sub_20C45FCC0() - 8) + 64);
  if (v10 <= v9)
  {
    v10 = v9;
  }

  v11 = v10 + 1;
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 253) >> (8 * v11)) + 1;
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

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
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
LABEL_42:
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
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v10] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_27;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t getEnumTagSinglePayload for MonogramAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MonogramAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicImageAssetAction.ViewSizeChangedCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicImageAssetAction.ViewSizeChangedCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t DynamicPredicateBooleanValue.makePredicateExpression<A>(using:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C45FE70();
  *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAED8, &qword_20C461BC0);
  result = sub_20C40FF88();
  *(a1 + 32) = result;
  *a1 = v2 & 1;
  return result;
}

unint64_t sub_20C40FF88()
{
  result = qword_27C7BAEE0;
  if (!qword_27C7BAEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAED8, &qword_20C461BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAEE0);
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

uint64_t ImageAssetState.loadStates.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ImageAssetState.init(imageAsset:loadStates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for ImageAssetState(0);
  result = sub_20C410138(a1, a3 + *(v6 + 20));
  *a3 = a2;
  return result;
}

uint64_t type metadata accessor for ImageAssetState(uint64_t a1)
{
  result = qword_28110BBC0;
  if (!qword_28110BBC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C410138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C41019C()
{
  if (*v0)
  {
    return 0x7373416567616D69;
  }

  else
  {
    return 0x7461745364616F6CLL;
  }
}

uint64_t sub_20C4101DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461745364616F6CLL && a2 == 0xEA00000000007365;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C4102BC(uint64_t a1)
{
  v2 = sub_20C410518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4102F8(uint64_t a1)
{
  v2 = sub_20C410518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ImageAssetState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAEE8, &qword_20C461BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C410518();
  sub_20C4609C0();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAEF8, &qword_20C461BE0);
  sub_20C41056C();
  sub_20C4608B0();
  if (!v2)
  {
    type metadata accessor for ImageAssetState(0);
    v10[6] = 1;
    type metadata accessor for ImageAsset(0);
    sub_20C412B1C(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    sub_20C4608B0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_20C410518()
{
  result = qword_27C7BAEF0;
  if (!qword_27C7BAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAEF0);
  }

  return result;
}

unint64_t sub_20C41056C()
{
  result = qword_27C7BAF00;
  if (!qword_27C7BAF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAEF8, &qword_20C461BE0);
    sub_20C40B974();
    sub_20C4109DC(&qword_27C7BAF08, &protocol conformance descriptor for AssetLoadState<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF00);
  }

  return result;
}

uint64_t ImageAssetState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v21);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF18, &qword_20C461BE8);
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = v17 - v6;
  v8 = type metadata accessor for ImageAssetState(0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C410518();
  sub_20C4609B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = a1;
  v11 = v10;
  v12 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAEF8, &qword_20C461BE0);
  v24 = 0;
  sub_20C410934();
  v13 = v22;
  sub_20C460840();
  v17[0] = v11;
  v17[1] = v25;
  *v11 = v25;
  v23 = 1;
  sub_20C412B1C(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
  sub_20C460840();
  (*(v12 + 8))(v7, v13);
  v14 = *(v8 + 20);
  v15 = v17[0];
  sub_20C410138(v5, v17[0] + v14);
  sub_20C412A00(v15, v19, type metadata accessor for ImageAssetState);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_20C412A68(v15, type metadata accessor for ImageAssetState);
}

unint64_t sub_20C410934()
{
  result = qword_27C7BAF20;
  if (!qword_27C7BAF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAEF8, &qword_20C461BE0);
    sub_20C40BDE4();
    sub_20C4109DC(&qword_27C7BAF28, &protocol conformance descriptor for AssetLoadState<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF20);
  }

  return result;
}

uint64_t sub_20C4109DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAF10, &qword_20C4640D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL static ImageAssetState.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_20C410AC4(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for ImageAssetState(0) + 20);

  return _s12FitnessAsset05ImageB0V2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

void sub_20C410AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v62 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF68, &qword_20C461DE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  if (a1 == a2)
  {
    v59 = 1;
  }

  else if (*(a1 + 16) == *(a2 + 16))
  {
    v58 = (&v53 - v13);
    v14 = 0;
    v56 = a1;
    v15 = *(a1 + 64);
    v55 = a1 + 64;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = &qword_27C7BAF70;
    v54 = (v16 + 63) >> 6;
    v20 = &qword_20C461DE8;
    v57 = v6;
    while (v18)
    {
      v60 = (v18 - 1) & v18;
      v21 = __clz(__rbit64(v18)) | (v14 << 6);
      v22 = v58;
LABEL_16:
      v27 = *(v56 + 56);
      v28 = (*(v56 + 48) + 80 * v21);
      v64 = *v28;
      v29 = v28[4];
      v31 = v28[1];
      v30 = v28[2];
      v67 = v28[3];
      v68 = v29;
      v65 = v31;
      v66 = v30;
      v32 = v61;
      sub_20C409B04(v27 + *(v62 + 72) * v21, v61, &qword_27C7BAF10, &qword_20C4640D0);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      v34 = *(v33 + 48);
      v35 = v68;
      v11[3] = v67;
      v11[4] = v35;
      v36 = v66;
      v11[1] = v65;
      v11[2] = v36;
      *v11 = v64;
      sub_20C409BD0(v32, v11 + v34, &qword_27C7BAF10, &qword_20C4640D0);
      (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
      sub_20C40C520(&v64, v63);
LABEL_17:
      sub_20C409BD0(v11, v22, &qword_27C7BAF68, &qword_20C461DE0);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      v38 = (*(*(v37 - 8) + 48))(v22, 1, v37);
      v59 = v38 == 1;
      if (v38 == 1)
      {
        return;
      }

      v39 = v11;
      v40 = v20;
      v41 = v19;
      v42 = *(v37 + 48);
      v43 = v22[3];
      v69[2] = v22[2];
      v69[3] = v43;
      v69[4] = v22[4];
      v44 = v22[1];
      v69[0] = *v22;
      v69[1] = v44;
      v45 = v57;
      sub_20C409BD0(v22 + v42, v57, &qword_27C7BAF10, &qword_20C4640D0);
      v46 = sub_20C457E7C(v69);
      v48 = v47;
      sub_20C40C57C(v69);
      if ((v48 & 1) == 0)
      {
        sub_20C40B440(v45, &qword_27C7BAF10, &qword_20C4640D0);
        goto LABEL_24;
      }

      v49 = *(a2 + 56) + *(v62 + 72) * v46;
      v50 = v61;
      sub_20C409B04(v49, v61, &qword_27C7BAF10, &qword_20C4640D0);
      v51 = sub_20C452F50(v50, v45);
      sub_20C40B440(v50, &qword_27C7BAF10, &qword_20C4640D0);
      sub_20C40B440(v45, &qword_27C7BAF10, &qword_20C4640D0);
      v19 = v41;
      v20 = v40;
      v11 = v39;
      v18 = v60;
      if ((v51 & 1) == 0)
      {
        return;
      }
    }

    if (v54 <= v14 + 1)
    {
      v23 = v14 + 1;
    }

    else
    {
      v23 = v54;
    }

    v24 = v23 - 1;
    v22 = v58;
    while (1)
    {
      v25 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v25 >= v54)
      {
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
        (*(*(v52 - 8) + 56))(v11, 1, 1, v52);
        v60 = 0;
        v14 = v24;
        goto LABEL_17;
      }

      v26 = *(v55 + 8 * v25);
      ++v14;
      if (v26)
      {
        v60 = (v26 - 1) & v26;
        v21 = __clz(__rbit64(v26)) | (v25 << 6);
        v14 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    v59 = 0;
  }
}

void sub_20C411008(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageAsset(0);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF50, &unk_20C464870);
  MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = &v42 - v10;
    v43 = a1;
    v44 = v11;
    v12 = 0;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v49 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
      v21 = v44;
LABEL_16:
      v27 = v43;
      v28 = v45;
      sub_20C412A00(*(v43 + 48) + *(v46 + 72) * v20, v45, type metadata accessor for ImageAsset);
      v29 = *(*(v27 + 56) + 8 * v20);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      v31 = *(v30 + 48);
      sub_20C410138(v28, v21);
      *(v21 + v31) = v29;
      (*(*(v30 - 8) + 56))(v21, 0, 1, v30);

      v24 = v48;
LABEL_17:
      sub_20C409BD0(v21, v24, &qword_27C7BAF50, &unk_20C464870);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      if ((*(*(v32 - 8) + 48))(v24, 1, v32) == 1)
      {
        return;
      }

      v33 = *(v32 + 48);
      v34 = v47;
      sub_20C410138(v24, v47);
      v35 = *(v24 + v33);
      sub_20C457F00(v34);
      v37 = v36;
      sub_20C412A68(v34, type metadata accessor for ImageAsset);
      if ((v37 & 1) == 0)
      {

        return;
      }

      sub_20C410AC4(v38, v35);
      v40 = v39;

      v18 = v49;
      if ((v40 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v19;
    }

    v23 = v22 - 1;
    v21 = v44;
    v24 = v48;
    while (1)
    {
      v25 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v25 >= v19)
      {
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
        (*(*(v41 - 8) + 56))(v21, 1, 1, v41);
        v49 = 0;
        v12 = v23;
        goto LABEL_17;
      }

      v26 = *(v14 + 8 * v25);
      ++v12;
      if (v26)
      {
        v49 = (v26 - 1) & v26;
        v20 = __clz(__rbit64(v26)) | (v25 << 6);
        v12 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t ImageAssetState.hash(into:)(__int128 *a1)
{
  v3 = sub_20C45FC30();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_20C45FD00();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  sub_20C411978(a1, *v1);
  v15 = v1 + *(type metadata accessor for ImageAssetState(0) + 20);
  sub_20C409B04(v15, v14, &qword_27C7BAC10, &qword_20C462070);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_20C460950();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_20C460950();
    sub_20C412B1C(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_20C460460();
    (*(v9 + 8))(v11, v8);
  }

  v16 = type metadata accessor for ImageAsset(0);
  sub_20C4604F0();
  sub_20C4604F0();

  sub_20C409B04(v15 + *(v16 + 28), v7, &qword_27C7BAC18, &unk_20C464A00);
  v18 = v23;
  v17 = v24;
  if ((*(v23 + 48))(v7, 1, v24) == 1)
  {
    return sub_20C460950();
  }

  v20 = v22;
  (*(v18 + 32))(v22, v7, v17);
  sub_20C460950();
  sub_20C412B1C(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_20C460460();
  return (*(v18 + 8))(v20, v17);
}

uint64_t ImageAssetState.hashValue.getter()
{
  sub_20C460930();
  ImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C411888()
{
  sub_20C460930();
  ImageAssetState.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C4118CC(uint64_t a1)
{
  sub_20C460930();
  ImageAssetState.hash(into:)(v2);
  return sub_20C460970();
}

uint64_t sub_20C411908(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_20C410AC4(*a1, *a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return static ImageAsset.== infix(_:_:)(a1 + v7, a2 + v7);
}

uint64_t sub_20C411978(__int128 *a1, uint64_t a2)
{
  v82 = a1;
  v74 = sub_20C45FCC0();
  v3 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_20C45FC90();
  v5 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  MEMORY[0x28223BE20](v70);
  v69 = &v64 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v78 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v83 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v64 - v10;
  MEMORY[0x28223BE20](v11);
  v77 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF68, &qword_20C461DE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v64 - v17);
  v19 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(a2 + 64);
  v75 = (v20 + 63) >> 6;
  v68 = (v3 + 32);
  v67 = (v3 + 8);
  v66 = (v5 + 32);
  v65 = (v5 + 8);
  v79 = a2;

  v24 = 0;
  v25 = 0;
  v76 = v15;
  v80 = v19;
  while (1)
  {
    v84 = v24;
    if (!v22)
    {
      break;
    }

    v32 = v25;
LABEL_16:
    v35 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v36 = v35 | (v32 << 6);
    v37 = *(v79 + 56);
    v38 = (*(v79 + 48) + 80 * v36);
    v88 = *v38;
    v39 = v38[4];
    v41 = v38[1];
    v40 = v38[2];
    v91 = v38[3];
    v92 = v39;
    v89 = v41;
    v90 = v40;
    v42 = v77;
    sub_20C409B04(v37 + *(v78 + 72) * v36, v77, &qword_27C7BAF10, &qword_20C4640D0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF70, &qword_20C461DE8);
    v44 = *(v43 + 48);
    v45 = v92;
    v46 = v76;
    *(v76 + 3) = v91;
    *(v46 + 4) = v45;
    v47 = v90;
    *(v46 + 1) = v89;
    *(v46 + 2) = v47;
    *v46 = v88;
    v15 = v46;
    sub_20C409BD0(v42, &v46[v44], &qword_27C7BAF10, &qword_20C4640D0);
    (*(*(v43 - 8) + 56))(v15, 0, 1, v43);
    sub_20C40C520(&v88, v86);
LABEL_17:
    sub_20C409BD0(v15, v18, &qword_27C7BAF68, &qword_20C461DE0);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF70, &qword_20C461DE8);
    if ((*(*(v48 - 8) + 48))(v18, 1, v48) == 1)
    {

      return MEMORY[0x20F2FAEA0](v84);
    }

    v49 = *(v48 + 48);
    v50 = v18[1];
    v88 = *v18;
    v89 = v50;
    v51 = v18[3];
    v90 = v18[2];
    v91 = v51;
    v92 = v18[4];
    v52 = *&v88;
    sub_20C409BD0(v18 + v49, v85, &qword_27C7BAF10, &qword_20C4640D0);
    v53 = v82[3];
    v86[2] = v82[2];
    v86[3] = v53;
    v87 = *(v82 + 8);
    v54 = *v82;
    v86[1] = v82[1];
    v86[0] = v54;
    if (v52 == 0.0)
    {
      v55 = 0.0;
    }

    else
    {
      v55 = v52;
    }

    v56 = *(&v89 + 1);
    MEMORY[0x20F2FAEC0](*&v55);
    sub_20C4604F0();
    MEMORY[0x20F2FAEA0](*(v56 + 16));
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = v56 + 40;
      do
      {

        sub_20C4604F0();

        v58 += 16;
        --v57;
      }

      while (v57);
    }

    v59 = v92;
    sub_20C4604F0();
    sub_20C4604F0();
    MEMORY[0x20F2FAEA0](v59);
    MEMORY[0x20F2FAEA0](*(&v59 + 1));
    sub_20C40C57C(&v88);
    sub_20C409B04(v85, v83, &qword_27C7BAF10, &qword_20C4640D0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v61 = v73;
        v62 = v74;
        (*v68)(v73, v83, v74);
        MEMORY[0x20F2FAEA0](1);
        sub_20C412B1C(&qword_28110BE90, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_20C460460();
        (*v67)(v61, v62);
      }

      else
      {
        MEMORY[0x20F2FAEA0](2);
      }
    }

    else
    {
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
      v27 = v83;
      v28 = v69;
      sub_20C409BD0(v83, v69, &qword_27C7BAF60, &unk_20C462050);
      v29 = v27 + v26;
      v30 = v71;
      v31 = v72;
      (*v66)(v71, v29, v72);
      MEMORY[0x20F2FAEA0](0);
      sub_20C412B1C(&qword_28110BC90, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
      sub_20C412AC8();
      sub_20C460990();
      sub_20C412B1C(qword_27C7BACD0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      sub_20C460460();
      (*v65)(v30, v31);
      sub_20C40B440(v28, &qword_27C7BAF60, &unk_20C462050);
    }

    v19 = v80;
    sub_20C40B440(v85, &qword_27C7BAF10, &qword_20C4640D0);
    result = sub_20C460970();
    v24 = result ^ v84;
  }

  if (v75 <= v25 + 1)
  {
    v33 = v25 + 1;
  }

  else
  {
    v33 = v75;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v32 >= v75)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF70, &qword_20C461DE8);
      (*(*(v63 - 8) + 56))(v15, 1, 1, v63);
      v22 = 0;
      v25 = v34;
      goto LABEL_17;
    }

    v22 = *(v19 + 8 * v32);
    ++v25;
    if (v22)
    {
      v25 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20C412334(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for ImageAsset(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF50, &unk_20C464870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = a2;
  v41 = &v38 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v43 = v7;
  v45 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v40;
      v23 = v44;
      sub_20C412A00(*(v40 + 48) + *(v39 + 72) * v21, v44, type metadata accessor for ImageAsset);
      v24 = *(*(v22 + 56) + 8 * v21);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      v26 = *(v25 + 48);
      v27 = v23;
      v28 = v43;
      sub_20C410138(v27, v43);
      *(v28 + v26) = v24;
      (*(*(v25 - 8) + 56))(v28, 0, 1, v25);

      v19 = v17;
      v29 = v28;
LABEL_13:
      v30 = v41;
      sub_20C409BD0(v29, v41, &qword_27C7BAF50, &unk_20C464870);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v31 + 48);
      v33 = v44;
      sub_20C410138(v30, v44);
      v34 = *(v30 + v32);
      v35 = *(v42 + 48);
      v46[2] = *(v42 + 32);
      v46[3] = v35;
      v47 = *(v42 + 64);
      v36 = *(v42 + 16);
      v46[0] = *v42;
      v46[1] = v36;
      ImageAsset.hash(into:)(v46);
      sub_20C412A68(v33, type metadata accessor for ImageAsset);
      sub_20C411978(v46, v34);

      result = sub_20C460970();
      v16 = v19;
      v45 ^= result;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x20F2FAEA0](v45);
  }

  else
  {
LABEL_5:
    if (v14 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF58, &qword_20C461DD8);
        v29 = v43;
        (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20C412798(uint64_t a1)
{
  sub_20C41281C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ImageAsset(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20C41281C(uint64_t a1)
{
  if (!qword_28110B400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAF10, &qword_20C4640D0);
    sub_20C412894();
    v1 = sub_20C460450();
    if (!v2)
    {
      atomic_store(v1, &qword_28110B400);
    }
  }
}

unint64_t sub_20C412894()
{
  result = qword_28110B870;
  if (!qword_28110B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B870);
  }

  return result;
}

unint64_t sub_20C4128FC()
{
  result = qword_27C7BAF38;
  if (!qword_27C7BAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF38);
  }

  return result;
}

unint64_t sub_20C412954()
{
  result = qword_27C7BAF40;
  if (!qword_27C7BAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF40);
  }

  return result;
}

unint64_t sub_20C4129AC()
{
  result = qword_27C7BAF48;
  if (!qword_27C7BAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF48);
  }

  return result;
}

uint64_t sub_20C412A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C412A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20C412AC8()
{
  result = qword_27C7BAF80;
  if (!qword_27C7BAF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BAF80);
  }

  return result;
}

uint64_t sub_20C412B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C412B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20C414268;

  return MonogramFetching.fetchAccountMonogram(_:for:)(a1, a2, a3, a4, a5);
}

uint64_t sub_20C412C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_20C45FC10();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C412CF0, 0, 0);
}

uint64_t sub_20C412CF0()
{
  v1 = [*(v0 + 48) aa_altDSID];
  if (v1)
  {
    v2 = *(v0 + 48);
    v3 = v1;
    v4 = sub_20C4604D0();
    v6 = v5;

    *(v0 + 80) = v4;
    *(v0 + 88) = v6;
    v7 = [v2 userFullName];
    if (v7)
    {
      v8 = v7;
      sub_20C4604D0();

      sub_20C45FC20();
      v13 = swift_task_alloc();
      *(v0 + 96) = v13;
      *v13 = v0;
      v13[1] = sub_20C412ED0;
      v15 = *(v0 + 40);
      v14 = *(v0 + 48);

      return MonogramFetcher.fetchAccountProfileImage(_:for:)(v15, v14);
    }

    sub_20C4139F0();
    swift_allocError();
    *v10 = 1;
  }

  else
  {
    sub_20C4139F0();
    swift_allocError();
    *v9 = 0;
  }

  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_20C412ED0(uint64_t a1)
{
  *(*v2 + 104) = a1;

  if (v1)
  {

    v3 = sub_20C412FEC;
  }

  else
  {
    v3 = sub_20C41309C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C412FEC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  v7 = type metadata accessor for Monogram(0);
  (*(v4 + 32))(&v6[*(v7 + 20)], v3, v5);
  *v6 = v2;
  *(v6 + 1) = v1;

  v8 = v0[1];

  return v8();
}

uint64_t sub_20C41309C()
{
  if (qword_27C7BAC00 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[11];
  v3 = qword_27C7C40A0;
  v0[2] = v0[10];
  v0[3] = v2;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF88, &qword_20C461DF8));

  v5 = sub_20C45FE40();
  [v3 setObject:v1 forKey:v5];

  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];
  v11 = v0[4];
  v12 = type metadata accessor for Monogram(0);
  (*(v9 + 32))(&v11[*(v12 + 20)], v8, v10);
  *v11 = v7;
  *(v11 + 1) = v6;

  v13 = v0[1];

  return v13();
}

uint64_t MonogramFetching.fetchAccountMonogram(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[8] = a5;
  v6[9] = v5;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  v7 = sub_20C45FC10();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C4132B4, 0, 0);
}

uint64_t sub_20C4132B4()
{
  v1 = [*(v0 + 48) aa_altDSID];
  if (v1)
  {
    v15 = *(v0 + 64);
    v2 = v1;
    v3 = sub_20C4604D0();
    v5 = v4;

    *(v0 + 104) = v3;
    *(v0 + 112) = v5;
    v14 = (*(v15 + 24) + **(v15 + 24));
    v6 = swift_task_alloc();
    *(v0 + 120) = v6;
    *v6 = v0;
    v6[1] = sub_20C413470;
    v7 = *(v0 + 96);
    v8 = *(v0 + 64);
    v9 = *(v0 + 48);
    v10 = *(v0 + 56);

    return v14(v7, v9, v10, v8);
  }

  else
  {
    sub_20C4139F0();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_20C413470()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_20C4138DC, 0, 0);
  }

  else
  {
    v9 = (*(v2[8] + 16) + **(v2[8] + 16));
    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_20C413670;
    v4 = v2[8];
    v5 = v2[6];
    v6 = v2[7];
    v7 = v2[5];

    return v9(v7, v5, v6, v4);
  }
}

uint64_t sub_20C413670(uint64_t a1)
{
  *(*v2 + 144) = a1;

  if (v1)
  {

    v3 = sub_20C413940;
  }

  else
  {
    v3 = sub_20C41378C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20C41378C()
{
  if (qword_27C7BAC00 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = qword_27C7C40A0;
  v0[2] = v0[13];
  v0[3] = v2;
  v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF88, &qword_20C461DF8));

  v5 = sub_20C45FE40();
  [v3 setObject:v1 forKey:v5];

  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  v11 = v0[4];
  v12 = type metadata accessor for Monogram(0);
  (*(v9 + 32))(&v11[*(v12 + 20)], v8, v10);
  *v11 = v7;
  *(v11 + 1) = v6;

  v13 = v0[1];

  return v13();
}

uint64_t sub_20C4138DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C413940()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[4];
  v7 = type metadata accessor for Monogram(0);
  (*(v4 + 32))(&v6[*(v7 + 20)], v3, v5);
  *v6 = v2;
  *(v6 + 1) = v1;

  v8 = v0[1];

  return v8();
}

unint64_t sub_20C4139F0()
{
  result = qword_28110B7B8;
  if (!qword_28110B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7B8);
  }

  return result;
}

uint64_t sub_20C413A44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20C414268;

  return MonogramFetching.fetchAccountProfileNameComponents(for:)(a1, a2);
}

uint64_t MonogramFetching.fetchAccountProfileNameComponents(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20C413B04, 0, 0);
}

uint64_t sub_20C413B04()
{
  v1 = [*(v0 + 24) userFullName];
  if (v1)
  {
    v2 = v1;
    sub_20C4604D0();

    sub_20C45FC20();
  }

  else
  {
    sub_20C4139F0();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t dispatch thunk of MonogramFetching.fetchAccountMonogram(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_20C413D30;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_20C413D30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of MonogramFetching.fetchAccountProfileImage(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20C413F54;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_20C413F54(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MonogramFetching.fetchAccountProfileNameComponents(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20C414268;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_20C414184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_20C413D30;

  return sub_20C412C2C(a1, a2, a3);
}

uint64_t sub_20C414248(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_20C413B04, 0, 0);
}

uint64_t ArtworkAssetView.init(store:placeholderImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a4 = sub_20C4142D4;
  *(a4 + 8) = result;
  *(a4 + 16) = 0;
  *(a4 + 24) = a3;
  return result;
}

void sub_20C4142FC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_20C4603C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 24);
  if (v13)
  {
    v14 = v13;
    sub_20C4603A0();
    (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
    v15 = sub_20C4603D0();

    (*(v10 + 8))(v12, v9);
    v20 = v15;
    v21 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C41703C();
    sub_20C460220();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
    sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
    sub_20C460020();
    swift_getKeyPath();
    sub_20C460430();

    sub_20C409B04(v5, v8, &qword_27C7BAC10, &qword_20C462070);
    sub_20C417624(v5, type metadata accessor for ImageAsset);
    v16 = sub_20C45FD00();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v8, 1, v16) == 1)
    {
      sub_20C40B440(v8, &qword_27C7BAC10, &qword_20C462070);
      v18 = [objc_opt_self() tertiarySystemFillColor];
    }

    else
    {
      sub_20C45FCF0();
      (*(v17 + 8))(v8, v16);
    }

    v20 = sub_20C460390();
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C41703C();
    sub_20C460220();
  }

  v19 = v23;
  *a1 = v22;
  *(a1 + 8) = v19;
}

id sub_20C414740@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v8 = *(v1 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = v8;
  *a1 = sub_20C417684;
  a1[1] = v6;
  sub_20C414B3C(v3, v4);

  return v8;
}

id ArtworkAssetView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v8 = *(v1 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  *(v6 + 40) = v8;
  *a1 = sub_20C414B38;
  a1[1] = v6;
  sub_20C414B3C(v3, v4);

  return v8;
}

uint64_t sub_20C414888@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X4>, uint64_t a5@<X8>)
{
  v30 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF98, &qword_20C461F70);
  MEMORY[0x28223BE20](v9);
  v11 = (&v28 - v10);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFA0, &qword_20C461F78);
  v12 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v14 = &v28 - v13;
  sub_20C460040();
  sub_20C4606A0();
  v15 = a3 & 1;
  sub_20C414C40(a1, a2, v15, a4, v11, v16, v17);
  sub_20C460040();
  v31 = v18;
  v32 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v15;
  *(v20 + 40) = a4;
  sub_20C414B3C(a1, a2);
  type metadata accessor for CGSize();
  v22 = v21;
  v23 = sub_20C416DC0(&qword_28110B448, &qword_27C7BAF98, &qword_20C461F70, sub_20C416C98);
  v24 = sub_20C4173C0();
  v25 = a4;
  sub_20C460370();

  sub_20C406FE8(v11);
  sub_20C460380();
  v31 = v9;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = v29;
  sub_20C460320();

  return (*(v12 + 8))(v14, v26);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_20C414B78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_20C414BD4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

void *sub_20C414C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v63 = a4;
  v67 = a5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  MEMORY[0x28223BE20](v65);
  v60 = &v55 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB018, &qword_20C461FF8);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v61 = &v55 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB020, &qword_20C462000);
  MEMORY[0x28223BE20](v64);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
  v59 = a3;
  v17 = a3 & 1;
  v18 = a1;
  v58 = v16;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460420();

  v82[2] = v75[1];
  v82[3] = v75[2];
  v82[4] = v75[3];
  v82[0] = v74;
  v82[1] = v75[0];
  if (*&v75[0])
  {
    v76 = v74;
    v78 = *(v75 + 8);
    v79 = *(&v75[1] + 8);
    v80 = *(&v75[2] + 8);
    v77 = *&v75[0];
    v81 = *(&v75[3] + 1);
    v19 = v63;
    sub_20C415438(a1, a2, v17, v63, &v76, v72, a6, a7);
    v69 = v72[0];
    v70 = v72[1];
    v71[0] = *v73;
    *(v71 + 15) = *&v73[15];
    v56 = a1;
    v57 = a2;
    sub_20C460020();
    swift_getKeyPath();
    sub_20C460430();

    v20 = v68;
    if (*(v68 + 16))
    {
      v21 = sub_20C457E7C(&v76);
      v23 = v22;
      sub_20C40B440(v82, &qword_27C7BAC68, &unk_20C464890);
      v24 = v15;
      if (v23)
      {
        v25 = v19;
        v26 = *(v20 + 56);
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
        v28 = *(v27 - 8);
        v29 = v26 + *(v28 + 72) * v21;
        v19 = v25;
        v30 = v60;
        sub_20C409B04(v29, v60, &qword_27C7BAF10, &qword_20C4640D0);

        (*(v28 + 56))(v30, 0, 1, v27);
      }

      else
      {

        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
        v30 = v60;
        (*(*(v45 - 8) + 56))(v60, 1, 1, v45);
      }

      v44 = v56;
      v43 = v57;
      v42 = v24;
    }

    else
    {
      sub_20C40B440(v82, &qword_27C7BAC68, &unk_20C464890);

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
      v41 = v60;
      (*(*(v40 - 8) + 56))(v60, 1, 1, v40);
      v42 = v15;
      v30 = v41;
      v44 = v56;
      v43 = v57;
    }

    v46 = swift_allocObject();
    *(v46 + 16) = v44;
    *(v46 + 24) = v43;
    *(v46 + 32) = v59 & 1;
    *(v46 + 40) = v19;
    *(v46 + 48) = a6;
    *(v46 + 56) = a7;
    sub_20C414B3C(v44, v43);
    v47 = v19;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB0, &unk_20C466BD0);
    v49 = sub_20C416DC0(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    v50 = sub_20C417310();
    v51 = v61;
    v52 = v65;
    sub_20C460370();

    sub_20C40B440(v30, &qword_27C7BAFB8, &unk_20C461F90);
    sub_20C40B440(v72, &qword_27C7BAFC0, &unk_20C466BE0);
    v53 = v62;
    v54 = v66;
    (*(v62 + 16))(v42, v51, v66);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
    *&v69 = v48;
    *(&v69 + 1) = v52;
    *&v70 = v49;
    *(&v70 + 1) = v50;
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    sub_20C460220();
    return (*(v53 + 8))(v51, v54);
  }

  else
  {
    *&v76 = a1;
    *(&v76 + 1) = a2;
    LOBYTE(v77) = v17;
    v31 = v63;
    *&v78 = v63;
    sub_20C4142FC(&v74);
    v32 = v74;
    v33 = BYTE8(v74);
    v34 = swift_allocObject();
    *(v34 + 16) = v18;
    *(v34 + 24) = a2;
    *(v34 + 32) = v17;
    *(v34 + 40) = v31;
    *(v34 + 48) = a6;
    *(v34 + 56) = a7;
    *v15 = v32;
    v15[8] = v33;
    *(v15 + 2) = sub_20C417460;
    *(v15 + 3) = v34;
    *(v15 + 4) = 0;
    *(v15 + 5) = 0;
    swift_storeEnumTagMultiPayload();
    sub_20C414B3C(v18, a2);
    v35 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
    v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    v37 = sub_20C416DC0(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    v38 = sub_20C417310();
    *&v76 = v36;
    *(&v76 + 1) = v65;
    v77 = v37;
    *&v78 = v38;
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    return sub_20C460220();
  }
}

double sub_20C415438@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v93 = a4;
  v94 = a6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF60, &unk_20C462050);
  MEMORY[0x28223BE20](v88);
  v89 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v90 = &v84 - v16;
  v17 = sub_20C4603C0();
  v86 = *(v17 - 8);
  v87 = v17;
  MEMORY[0x28223BE20](v17);
  v85 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  v84 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v96 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  MEMORY[0x28223BE20](v24);
  v95 = &v84 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
  LODWORD(v91) = a3;
  *&v92 = a1;
  *(&v92 + 1) = a2;
  sub_20C460020();
  swift_getKeyPath();
  sub_20C460430();

  v26 = v117[0];
  if (*(v117[0] + 16) && (v27 = sub_20C457E7C(a5), (v28 & 1) != 0))
  {
    sub_20C409B04(*(v26 + 56) + *(v84 + 72) * v27, v23, &qword_27C7BAF10, &qword_20C4640D0);

    v29 = v95;
    sub_20C409BD0(v23, v95, &qword_27C7BAF10, &qword_20C4640D0);
  }

  else
  {

    v29 = v95;
    swift_storeEnumTagMultiPayload();
  }

  sub_20C409B04(v29, v96, &qword_27C7BAF10, &qword_20C4640D0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (v93)
      {
        v31 = v93;
        sub_20C4603A0();
        v33 = v85;
        v32 = v86;
        v34 = v87;
        (*(v86 + 104))(v85, *MEMORY[0x277CE0FE0], v87);
        v35 = sub_20C4603D0();

        (*(v32 + 8))(v33, v34);
        *&v97[0] = v35;
        WORD4(v97[0]) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      else
      {
        v101 = v92;
        LOBYTE(v102) = v91 & 1;
        *(&v102 + 1) = 0;
        sub_20C4142FC(v97);
        BYTE9(v97[0]) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
        sub_20C41700C();
        sub_20C460220();
      }

      v58 = v101;
      v59 = BYTE8(v101);
      v60 = BYTE9(v101);
      v61 = 256;
      if (!BYTE9(v101))
      {
        v61 = 0;
      }

      v93 = v101;
      *&v97[0] = v101;
      *(&v97[0] + 1) = v61 | BYTE8(v101);
      v97[1] = 0u;
      v98 = 0u;
      LOBYTE(v99) = 1;
      DWORD2(v92) = BYTE8(v101);
      LODWORD(v92) = BYTE9(v101);
      sub_20C417508(v101, BYTE8(v101), SBYTE9(v101));
      sub_20C417508(v58, v59, v60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      v62 = *(&v101 + 1);
      v63 = v102;
      v65 = *(&v103[0] + 1);
      v64 = *&v103[0];
      v66 = v103[1];
      LOBYTE(v113) = v103[1];
      LOBYTE(v109) = 0;
      v97[0] = v101;
      v91 = v101;
      v97[1] = v102;
      v98 = v103[0];
      LOBYTE(v99) = v103[1];
      v100 = 0;
      sub_20C417540(v101, *(&v101 + 1), v102, *(&v102 + 1), *&v103[0], *(&v103[0] + 1), v103[1], j__swift_retain, sub_20C41751C, sub_20C417508);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      v67 = v93;
      v68 = DWORD2(v92);
      v69 = v92;
      sub_20C41752C(v93, DWORD2(v92), v92);
      sub_20C417540(v91, v62, v63, *(&v63 + 1), v64, v65, v66, j__swift_release, sub_20C4175F8, sub_20C41752C);
      sub_20C41752C(v67, v68, v69);
      sub_20C40B440(v95, &qword_27C7BAF10, &qword_20C4640D0);
      v104 = v101;
      v105 = v102;
      *v106 = v103[0];
      *&v106[15] = *(v103 + 15);
      v70 = sub_20C45FCC0();
      (*(*(v70 - 8) + 8))(v96, v70);
      v38 = v94;
    }

    else
    {
      v39 = v92;
      v101 = v92;
      v40 = v91 & 1;
      LOBYTE(v102) = v91 & 1;
      v41 = v93;
      *(&v102 + 1) = v93;
      sub_20C4142FC(v97);
      v42 = *&v97[0];
      v43 = BYTE8(v97[0]);
      v44 = swift_allocObject();
      *(v44 + 16) = a7;
      *(v44 + 24) = a8;
      *(v44 + 32) = v39;
      *(v44 + 48) = v40;
      *(v44 + 56) = v41;
      *&v97[0] = v42;
      *(&v97[0] + 1) = v43;
      *&v97[1] = sub_20C417608;
      *(&v97[1] + 1) = v44;
      v98 = 0uLL;
      LOBYTE(v99) = 0;
      sub_20C414B3C(v39, *(&v39 + 1));
      v45 = v41;
      j__swift_retain(v42);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF0, &unk_20C466C10);
      sub_20C416F80();
      sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
      sub_20C460220();
      LOBYTE(v113) = v103[1];
      LOBYTE(v109) = 0;
      v97[0] = v101;
      v97[1] = v102;
      v98 = v103[0];
      LOBYTE(v99) = v103[1];
      v100 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
      sub_20C416EC8();
      sub_20C4171CC();
      sub_20C460220();
      j__swift_release(v42);

      sub_20C40B440(v29, &qword_27C7BAF10, &qword_20C4640D0);
      v104 = v101;
      v105 = v102;
      *v106 = v103[0];
      *&v106[15] = *(v103 + 15);
      v38 = v94;
    }
  }

  else
  {
    v36 = v90;
    sub_20C409BD0(v96, v90, &qword_27C7BAF60, &unk_20C462050);
    v37 = v89;
    sub_20C409B04(v36, v89, &qword_27C7BAF60, &unk_20C462050);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v101 = v92;
      LOBYTE(v102) = v91 & 1;
      *(&v102 + 1) = v93;
      sub_20C4142FC(v97);
      v108 = BYTE8(v97[0]);
      v107 = 1;
      HIBYTE(v99) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v101, v97, &qword_27C7BB028, &qword_20C466CE0);
      v109 = v101;
      v110 = v102;
      v111 = v103[0];
      v112 = v103[1];
      v113 = v101;
      v114 = v102;
      v115 = v103[0];
      v116 = v103[1];
      v38 = v94;
    }

    else
    {
      if (qword_28110B9E8 != -1)
      {
        swift_once();
      }

      v46 = qword_28110E2D8;
      v47 = a5[3];
      v103[0] = a5[2];
      v103[1] = v47;
      v103[2] = a5[4];
      v48 = a5[1];
      v101 = *a5;
      v102 = v48;
      v49 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB030, &qword_20C464A30));
      sub_20C40C520(a5, v97);
      v50 = sub_20C45FE40();
      v51 = [v46 objectForKey_];

      if (v51)
      {
        v52 = sub_20C460130();
        v53 = v51;
        sub_20C4603A0();
        v55 = v85;
        v54 = v86;
        v56 = v87;
        (*(v86 + 104))(v85, *MEMORY[0x277CE0FE0], v87);
        v57 = sub_20C4603D0();

        (*(v54 + 8))(v55, v56);
        *&v97[0] = v52;
        *(v97 + 8) = xmmword_20C461E70;
        v98 = 0uLL;
        *(&v97[1] + 1) = v57;
        LOBYTE(v99) = 0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0, MEMORY[0x277CE1198]);
        sub_20C416F80();
        sub_20C460220();
      }

      else
      {
        v71 = v92;
        v101 = v92;
        v72 = v91 & 1;
        LOBYTE(v102) = v91 & 1;
        v73 = v93;
        *(&v102 + 1) = v93;
        sub_20C4142FC(v97);
        v74 = *&v97[0];
        v75 = BYTE8(v97[0]);
        v76 = swift_allocObject();
        *(v76 + 16) = v71;
        *(v76 + 32) = v72;
        *(v76 + 40) = v73;
        v77 = a5[3];
        *(v76 + 80) = a5[2];
        *(v76 + 96) = v77;
        *(v76 + 112) = a5[4];
        v78 = a5[1];
        *(v76 + 48) = *a5;
        *(v76 + 64) = v78;
        *(v76 + 128) = a7;
        *(v76 + 136) = a8;
        *&v97[0] = v74;
        *(&v97[0] + 1) = v75;
        *&v97[1] = sub_20C4174E8;
        *(&v97[1] + 1) = v76;
        v98 = 0uLL;
        LOBYTE(v99) = 1;
        sub_20C414B3C(v71, *(&v71 + 1));
        v79 = v73;
        sub_20C40C520(a5, &v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB008, &unk_20C461FE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD0, &unk_20C466BF0);
        sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0, MEMORY[0x277CE1198]);
        sub_20C416F80();
        sub_20C460220();
      }

      v38 = v94;
      v108 = v103[1];
      v107 = 0;
      v97[0] = v101;
      v97[1] = v102;
      v98 = v103[0];
      v99 = LOBYTE(v103[1]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB000, &unk_20C466C20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFD8, &unk_20C461FB0);
      sub_20C417258();
      sub_20C41700C();
      sub_20C460220();
      sub_20C409B04(&v101, v97, &qword_27C7BB028, &qword_20C466CE0);
      sub_20C40B440(v37, &qword_27C7BAF60, &unk_20C462050);
      v109 = v101;
      v110 = v102;
      v111 = v103[0];
      v112 = v103[1];
      v113 = v101;
      v114 = v102;
      v115 = v103[0];
      v116 = v103[1];
    }

    v80 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF78, &unk_20C462060) + 48);
    v97[0] = v109;
    v97[1] = v110;
    v98 = v111;
    v99 = v112;
    v108 = 1;
    v100 = 1;
    sub_20C409B04(&v109, &v101, &qword_27C7BB028, &qword_20C466CE0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFC8, &unk_20C461FA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C416EC8();
    sub_20C4171CC();
    sub_20C460220();
    sub_20C40B440(&v113, &qword_27C7BB028, &qword_20C466CE0);
    sub_20C40B440(&v109, &qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C40B440(v90, &qword_27C7BAF60, &unk_20C462050);
    sub_20C40B440(v95, &qword_27C7BAF10, &qword_20C4640D0);
    v104 = v101;
    v105 = v102;
    *v106 = v103[0];
    *&v106[15] = *(v103 + 15);
    v81 = sub_20C45FC90();
    (*(*(v81 - 8) + 8))(v96 + v80, v81);
  }

  v82 = v105;
  *v38 = v104;
  *(v38 + 16) = v82;
  result = *v106;
  *(v38 + 32) = *v106;
  *(v38 + 47) = *&v106[15];
  return result;
}

void sub_20C4164A0(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v7 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4 != 0.0 || a5 != 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
    sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
    sub_20C460020();
    *v9 = a4;
    v9[1] = a5;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    sub_20C417624(v9, type metadata accessor for ImageAssetAction);
  }
}

uint64_t sub_20C4165F8(uint64_t a1, uint64_t a2, char a3, double a4, double a5, uint64_t a6, __int128 *a7)
{
  v10 = a7[3];
  v21 = a7[2];
  v22 = v10;
  v23 = a7[4];
  v11 = a7[1];
  v19 = *a7;
  v20 = v11;
  v12 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
  sub_20C460020();
  v15 = v22;
  *(v14 + 2) = v21;
  *(v14 + 3) = v15;
  *(v14 + 4) = v23;
  v16 = v20;
  *v14 = v19;
  *(v14 + 1) = v16;
  *(v14 + 10) = a4;
  *(v14 + 11) = a5;
  swift_storeEnumTagMultiPayload();
  sub_20C40C520(a7, v18);
  sub_20C460440();

  return sub_20C417624(v14, type metadata accessor for ImageAssetAction);
}

uint64_t sub_20C41678C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAFB8, &unk_20C461F90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - v14;
  sub_20C409B04(a4, &v19 - v14, &qword_27C7BAFB8, &unk_20C461F90);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAF10, &qword_20C4640D0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16) == 1)
  {
    return sub_20C40B440(v15, &qword_27C7BAFB8, &unk_20C461F90);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = sub_20C40B440(v15, &qword_27C7BAF10, &qword_20C4640D0);
  if (EnumCaseMultiPayload == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
    sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
    sub_20C460020();
    *v12 = a1;
    v12[1] = a2;
    swift_storeEnumTagMultiPayload();
    sub_20C460440();

    return sub_20C417624(v12, type metadata accessor for ImageAssetAction);
  }

  return result;
}

uint64_t sub_20C4169E8(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v7 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
  sub_20C460020();
  *v9 = a4;
  v9[1] = a5;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  return sub_20C417624(v9, type metadata accessor for ImageAssetAction);
}

uint64_t sub_20C416B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = type metadata accessor for ImageAssetAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB010, &qword_20C461FF0);
  sub_20C417418(&qword_28110B418, &qword_27C7BB010, &qword_20C461FF0, MEMORY[0x277D04410]);
  sub_20C460020();
  sub_20C4606A0();
  *v7 = v8;
  v7[1] = v9;
  swift_storeEnumTagMultiPayload();
  sub_20C460440();

  return sub_20C417624(v7, type metadata accessor for ImageAssetAction);
}

unint64_t sub_20C416C98()
{
  result = qword_28110B480;
  if (!qword_28110B480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFA8, &unk_20C461F80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB0, &unk_20C466BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB8, &unk_20C461F90);
    sub_20C416DC0(&qword_28110B440, &qword_27C7BAFB0, &unk_20C466BD0, sub_20C416E3C);
    sub_20C417310();
    swift_getOpaqueTypeConformance2();
    sub_20C416F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B480);
  }

  return result;
}

uint64_t sub_20C416DC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C416E3C()
{
  result = qword_28110B460;
  if (!qword_28110B460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFC0, &unk_20C466BE0);
    sub_20C416EC8();
    sub_20C4171CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B460);
  }

  return result;
}

unint64_t sub_20C416EC8()
{
  result = qword_28110B488;
  if (!qword_28110B488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFC8, &unk_20C461FA0);
    sub_20C416F80();
    sub_20C417148(&qword_28110B470, &qword_27C7BAFF0, &unk_20C466C10, sub_20C41700C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B488);
  }

  return result;
}

unint64_t sub_20C416F80()
{
  result = qword_28110B498;
  if (!qword_28110B498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFD0, &unk_20C466BF0);
    sub_20C41700C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B498);
  }

  return result;
}

unint64_t sub_20C41703C()
{
  result = qword_28110B490;
  if (!qword_28110B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFE0, &unk_20C466C00);
    sub_20C4170F4();
    sub_20C417418(&qword_28110B450, &qword_27C7BAFE8, &unk_20C461FC0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B490);
  }

  return result;
}

unint64_t sub_20C4170F4()
{
  result = qword_28110B430;
  if (!qword_28110B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B430);
  }

  return result;
}

uint64_t sub_20C417148(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C4171CC()
{
  result = qword_28110B458;
  if (!qword_28110B458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFF8, &unk_20C461FD0);
    sub_20C417258();
    sub_20C41700C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B458);
  }

  return result;
}

unint64_t sub_20C417258()
{
  result = qword_28110B468;
  if (!qword_28110B468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BB000, &unk_20C466C20);
    sub_20C417418(&qword_28110B438, &qword_27C7BB008, &unk_20C461FE0, MEMORY[0x277CE1198]);
    sub_20C416F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B468);
  }

  return result;
}

unint64_t sub_20C417310()
{
  result = qword_28110B7C0;
  if (!qword_28110B7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7BAFB8, &unk_20C461F90);
    sub_20C417418(qword_28110B7C8, &qword_27C7BAF10, &qword_20C4640D0, &protocol conformance descriptor for AssetLoadState<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B7C0);
  }

  return result;
}

unint64_t sub_20C4173C0()
{
  result = qword_28110B3D8;
  if (!qword_28110B3D8)
  {
    type metadata accessor for CGSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110B3D8);
  }

  return result;
}

uint64_t sub_20C417418(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_2Tm(uint64_t a1)
{
  sub_20C414B30(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_20C417508(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return j__swift_retain(a1);
  }

  else
  {
  }
}

uint64_t sub_20C41751C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C41752C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return j__swift_release(a1);
  }

  else
  {
  }
}

uint64_t sub_20C417540(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void (*a8)(uint64_t, unint64_t), uint64_t (*a9)(uint64_t, uint64_t), uint64_t (*a10)(uint64_t, unint64_t, uint64_t))
{
  if (a7)
  {

    return a10(a1, a2, (a2 >> 8) & 1);
  }

  else
  {
    a8(a1, a2 & 1);
    a9(a3, a4);

    return a9(a5, a6);
  }
}

uint64_t sub_20C4175F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_20C417624(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicArtworkLayoutEnvironment.description.getter()
{
  BYTE8(v3) = 0;
  sub_20C460740();
  MEMORY[0x20F2FAA60](0xD00000000000002FLL, 0x800000020C467560);
  sub_20C460790();
  MEMORY[0x20F2FAA60](0xD000000000000017, 0x800000020C467590);
  v1 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  sub_20C45FDF0();
  sub_20C460790();
  MEMORY[0x20F2FAA60](0x6F6674616C70202CLL, 0xEC000000203A6D72);
  *&v3 = *(v0 + *(v1 + 28));
  sub_20C460790();
  MEMORY[0x20F2FAA60](0xD000000000000015, 0x800000020C4675B0);
  sub_20C460790();
  MEMORY[0x20F2FAA60](41, 0xE100000000000000);
  return *(&v3 + 1);
}

uint64_t sub_20C417824()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C417858()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C41788C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20C4178C0(uint64_t a1)
{
  v2 = sub_20C419C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C4178FC(uint64_t a1)
{
  v2 = sub_20C419C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417938()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6570704177656976;
    if (v1 != 6)
    {
      v5 = 0x657A695377656976;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 2)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD00000000000001BLL;
    if (!*v0)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_20C417A5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C41E790(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C417A90(uint64_t a1)
{
  v2 = sub_20C4198CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417ACC(uint64_t a1)
{
  v2 = sub_20C4198CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417B08(uint64_t a1)
{
  v2 = sub_20C419BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417B44(uint64_t a1)
{
  v2 = sub_20C419BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417B80()
{
  v1 = 0x726F727265;
  if (*v0 != 1)
  {
    v1 = 0x79654B6568636163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373416567616D69;
  }
}

uint64_t sub_20C417BDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C41EB48(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C417C04(uint64_t a1)
{
  v2 = sub_20C419B28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417C40(uint64_t a1)
{
  v2 = sub_20C419B28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417C7C()
{
  if (*v0)
  {
    return 0x79654B6568636163;
  }

  else
  {
    return 0x7373416567616D69;
  }
}

uint64_t sub_20C417CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465;
  if (v6 || (sub_20C4608D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C4608D0();

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

uint64_t sub_20C417DA0(uint64_t a1)
{
  v2 = sub_20C419A80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417DDC(uint64_t a1)
{
  v2 = sub_20C419A80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417E18(uint64_t a1)
{
  v2 = sub_20C419AD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417E54(uint64_t a1)
{
  v2 = sub_20C419AD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417E90(uint64_t a1)
{
  v2 = sub_20C419A2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C417ECC(uint64_t a1)
{
  v2 = sub_20C419A2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C417F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000020C467710 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_20C4608D0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20C417FF0(uint64_t a1)
{
  v2 = sub_20C4199D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41802C(uint64_t a1)
{
  v2 = sub_20C4199D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C418078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702521203 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C4608D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C418100(uint64_t a1)
{
  v2 = sub_20C419984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41813C(uint64_t a1)
{
  v2 = sub_20C419984();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicImageAssetAction.encode(to:)(void *a1)
{
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB038, &qword_20C4620D0);
  v124 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = &v103 - v2;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB040, &qword_20C4620D8);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v103 - v3;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB048, &qword_20C4620E0);
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v123 = &v103 - v4;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB050, &qword_20C4620E8);
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v122 = &v103 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB058, &qword_20C4620F0);
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v113 = &v103 - v6;
  v133 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  MEMORY[0x28223BE20](v133);
  v116 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v112 = &v103 - v9;
  MEMORY[0x28223BE20](v10);
  v110 = &v103 - v11;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB060, &qword_20C4620F8);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v111 = &v103 - v12;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB068, &qword_20C462100);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v109 = &v103 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB070, &qword_20C462108);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v105 = &v103 - v14;
  v134 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v134);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v104 = &v103 - v18;
  MEMORY[0x28223BE20](v19);
  v106 = &v103 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v103 - v22;
  v24 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v103 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB078, &unk_20C462110);
  v151 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v28 = &v103 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C4198CC();
  sub_20C4609C0();
  sub_20C419920(v135, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v99 = *v26;
        v100 = v26[1];
        LOBYTE(v144) = 7;
        sub_20C419984();
        v101 = v121;
        v39 = v137;
        sub_20C460870();
        *&v144 = v99;
        *(&v144 + 1) = v100;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
        v102 = v126;
        sub_20C4608B0();
        (*(v124 + 8))(v101, v102);
        goto LABEL_32;
      }

      v66 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v67 = *v66;
      v68 = v66[1];
      v69 = v116;
      sub_20C41B8D4(v26, v116, type metadata accessor for DynamicArtworkLayoutEnvironment);
      LOBYTE(v144) = 6;
      sub_20C4199D8();
      v70 = v130;
      v39 = v137;
      sub_20C460870();
      LOBYTE(v144) = 0;
      sub_20C41D910(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
      v71 = v132;
      v72 = v136;
      sub_20C4608B0();
      if (!v72)
      {
        *&v144 = v67;
        *(&v144 + 1) = v68;
        LOBYTE(v139) = 1;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
        sub_20C4608B0();
      }

      v73 = &v150;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v44 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
        v45 = v44[4];
        v46 = v44[2];
        v147 = v44[3];
        v148 = v45;
        v47 = *v44;
        v145 = v44[1];
        v146 = v46;
        v144 = v47;
        sub_20C41B8D4(v26, v16, type metadata accessor for ImageAsset);
        LOBYTE(v139) = 4;
        sub_20C419A80();
        v48 = v122;
        v49 = v137;
        sub_20C460870();
        LOBYTE(v139) = 0;
        sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
        v50 = v127;
        v51 = v136;
        sub_20C4608B0();
        if (v51)
        {
          sub_20C40C57C(&v144);
          (*(v125 + 8))(v48, v50);
          sub_20C41ECCC(v16, type metadata accessor for ImageAsset);
          return (*(v151 + 8))(v28, v49);
        }

        v141 = v146;
        v142 = v147;
        v143 = v148;
        v140 = v145;
        v139 = v144;
        v138 = 1;
        sub_20C40B974();
        sub_20C4608B0();
        (*(v125 + 8))(v48, v50);
        sub_20C41ECCC(v16, type metadata accessor for ImageAsset);
        (*(v151 + 8))(v28, v49);
        return sub_20C40C57C(&v144);
      }

      v86 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v87 = *v86;
      v88 = v86[1];
      v69 = v112;
      sub_20C41B8D4(v26, v112, type metadata accessor for DynamicArtworkLayoutEnvironment);
      LOBYTE(v144) = 5;
      sub_20C419A2C();
      v70 = v123;
      v39 = v137;
      sub_20C460870();
      LOBYTE(v144) = 0;
      sub_20C41D910(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
      v71 = v129;
      v89 = v136;
      sub_20C4608B0();
      if (!v89)
      {
        *&v144 = v87;
        *(&v144 + 1) = v88;
        LOBYTE(v139) = 1;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
        sub_20C4608B0();
      }

      v73 = &v149;
    }

    (*(*(v73 - 32) + 8))(v70, v71);
    v42 = type metadata accessor for DynamicArtworkLayoutEnvironment;
    v43 = v69;
LABEL_26:
    sub_20C41ECCC(v43, v42);
LABEL_32:
    v97 = *(v151 + 8);
    v98 = v28;
    return v97(v98, v39);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v75 = (v26 + *(v74 + 48));
      v76 = v75[4];
      v77 = v75[2];
      v147 = v75[3];
      v148 = v76;
      v78 = *v75;
      v145 = v75[1];
      v146 = v77;
      v144 = v78;
      v79 = (v26 + *(v74 + 64));
      v80 = *v79;
      v81 = v79[1];
      v82 = v106;
      sub_20C41B8D4(v26, v106, type metadata accessor for ImageAsset);
      LOBYTE(v139) = 1;
      sub_20C419BD0();
      v83 = v109;
      v39 = v137;
      sub_20C460870();
      LOBYTE(v139) = 0;
      sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
      v84 = v115;
      v85 = v136;
      sub_20C4608B0();
      if (v85)
      {
        sub_20C40C57C(&v144);
      }

      else
      {
        v141 = v146;
        v142 = v147;
        v143 = v148;
        v140 = v145;
        v139 = v144;
        v138 = 1;
        sub_20C40B974();
        sub_20C4608B0();
        sub_20C40C57C(&v144);
        *&v139 = v80;
        *(&v139 + 1) = v81;
        v138 = 2;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
        sub_20C4608B0();
      }

      (*(v114 + 8))(v83, v84);
      v42 = type metadata accessor for ImageAsset;
      v43 = v82;
    }

    else
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
      v31 = (v26 + *(v30 + 48));
      v32 = v31[4];
      v33 = v31[2];
      v147 = v31[3];
      v148 = v32;
      v34 = *v31;
      v145 = v31[1];
      v146 = v33;
      v144 = v34;
      v35 = (v26 + *(v30 + 64));
      v36 = *v35;
      v37 = v35[1];
      sub_20C41B8D4(v26, v23, type metadata accessor for ImageAsset);
      LOBYTE(v139) = 0;
      sub_20C419C24();
      v38 = v105;
      v39 = v137;
      sub_20C460870();
      LOBYTE(v139) = 0;
      sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
      v40 = v108;
      v41 = v136;
      sub_20C4608B0();
      if (v41)
      {
        sub_20C40C57C(&v144);
      }

      else
      {
        v141 = v146;
        v142 = v147;
        v143 = v148;
        v140 = v145;
        v139 = v144;
        v138 = 1;
        sub_20C40B974();
        sub_20C4608B0();
        sub_20C40C57C(&v144);
        *&v139 = v36;
        *(&v139 + 1) = v37;
        v138 = 2;
        type metadata accessor for CGSize();
        sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
        sub_20C4608B0();
      }

      (*(v107 + 8))(v38, v40);
      v42 = type metadata accessor for ImageAsset;
      v43 = v23;
    }

    goto LABEL_26;
  }

  v53 = v28;
  if (EnumCaseMultiPayload != 2)
  {
    v90 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v91 = *v90;
    v92 = v90[1];
    v93 = v110;
    sub_20C41B8D4(v26, v110, type metadata accessor for DynamicArtworkLayoutEnvironment);
    LOBYTE(v144) = 3;
    sub_20C419AD4();
    v94 = v113;
    v39 = v137;
    sub_20C460870();
    LOBYTE(v144) = 0;
    sub_20C41D910(&qword_27C7BB0A0, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
    v95 = v120;
    v96 = v136;
    sub_20C4608B0();
    if (!v96)
    {
      *&v144 = v91;
      *(&v144 + 1) = v92;
      LOBYTE(v139) = 1;
      type metadata accessor for CGSize();
      sub_20C41D910(&qword_28110B3E0, type metadata accessor for CGSize, MEMORY[0x277CBF288]);
      sub_20C4608B0();
    }

    (*(v119 + 8))(v94, v95);
    v64 = type metadata accessor for DynamicArtworkLayoutEnvironment;
    v65 = v93;
    goto LABEL_30;
  }

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
  v55 = *(v26 + *(v54 + 48));
  v56 = (v26 + *(v54 + 64));
  v57 = v56[4];
  v58 = v56[2];
  v147 = v56[3];
  v148 = v57;
  v59 = *v56;
  v145 = v56[1];
  v146 = v58;
  v144 = v59;
  v60 = v104;
  sub_20C41B8D4(v26, v104, type metadata accessor for ImageAsset);
  LOBYTE(v139) = 2;
  sub_20C419B28();
  v61 = v111;
  v39 = v137;
  sub_20C460870();
  LOBYTE(v139) = 0;
  sub_20C41D910(&qword_28110BC98, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
  v62 = v118;
  v63 = v136;
  sub_20C4608B0();
  if (v63)
  {
    sub_20C40C57C(&v144);
    (*(v117 + 8))(v61, v62);
    v64 = type metadata accessor for ImageAsset;
    v65 = v60;
LABEL_30:
    sub_20C41ECCC(v65, v64);
    v97 = *(v151 + 8);
    v98 = v53;
    return v97(v98, v39);
  }

  LOBYTE(v139) = v55;
  v138 = 1;
  sub_20C419B7C();
  sub_20C4608B0();
  v141 = v146;
  v142 = v147;
  v143 = v148;
  v140 = v145;
  v139 = v144;
  v138 = 2;
  sub_20C40B974();
  sub_20C4608B0();
  (*(v117 + 8))(v61, v62);
  sub_20C41ECCC(v60, type metadata accessor for ImageAsset);
  (*(v151 + 8))(v28, v39);
  return sub_20C40C57C(&v144);
}

uint64_t type metadata accessor for DynamicImageAssetAction(uint64_t a1)
{
  result = qword_27C7BB158;
  if (!qword_27C7BB158)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_20C4198CC()
{
  result = qword_27C7BB080;
  if (!qword_27C7BB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB080);
  }

  return result;
}

uint64_t sub_20C419920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicImageAssetAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20C419984()
{
  result = qword_27C7BB088;
  if (!qword_27C7BB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB088);
  }

  return result;
}

unint64_t sub_20C4199D8()
{
  result = qword_27C7BB098;
  if (!qword_27C7BB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB098);
  }

  return result;
}

unint64_t sub_20C419A2C()
{
  result = qword_27C7BB0A8;
  if (!qword_27C7BB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0A8);
  }

  return result;
}

unint64_t sub_20C419A80()
{
  result = qword_27C7BB0B8;
  if (!qword_27C7BB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0B8);
  }

  return result;
}

unint64_t sub_20C419AD4()
{
  result = qword_27C7BB0C0;
  if (!qword_27C7BB0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0C0);
  }

  return result;
}

unint64_t sub_20C419B28()
{
  result = qword_27C7BB0D0;
  if (!qword_27C7BB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0D0);
  }

  return result;
}

unint64_t sub_20C419B7C()
{
  result = qword_27C7BB0D8;
  if (!qword_27C7BB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0D8);
  }

  return result;
}

unint64_t sub_20C419BD0()
{
  result = qword_27C7BB0E8;
  if (!qword_27C7BB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0E8);
  }

  return result;
}

unint64_t sub_20C419C24()
{
  result = qword_27C7BB0F0;
  if (!qword_27C7BB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB0F0);
  }

  return result;
}

uint64_t DynamicImageAssetAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0F8, &qword_20C462138);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v111 = &v85 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB100, &qword_20C462140);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v120 = &v85 - v4;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB108, &qword_20C462148);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v114 = &v85 - v5;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB110, &qword_20C462150);
  v101 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v113 = &v85 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB118, &qword_20C462158);
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v112 = &v85 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB120, &qword_20C462160);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v119 = &v85 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB128, &qword_20C462168);
  v109 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v118 = &v85 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB130, &qword_20C462170);
  v108 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v117 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB138, &unk_20C462178);
  v121 = *(v11 - 8);
  v122 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - v12;
  v116 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v116);
  v91 = (&v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v110 = &v85 - v16;
  MEMORY[0x28223BE20](v17);
  v93 = &v85 - v18;
  MEMORY[0x28223BE20](v19);
  v92 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v85 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v85 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v85 - v34;
  v36 = a1[3];
  v124 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_20C4198CC();
  v37 = v123;
  sub_20C4609B0();
  if (v37)
  {
    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  v86 = v23;
  v90 = v26;
  v88 = v32;
  v89 = v29;
  v39 = v117;
  v38 = v118;
  v40 = v119;
  v41 = v120;
  v87 = v35;
  v42 = v122;
  v123 = v13;
  v43 = sub_20C460850();
  if (*(v43 + 16) != 1 || (v44 = *(v43 + 32), v44 == 8))
  {
    v48 = sub_20C460770();
    swift_allocError();
    v50 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BACB8, &qword_20C461670);
    *v50 = v116;
    v51 = v123;
    sub_20C460800();
    sub_20C460760();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    (*(v121 + 8))(v51, v42);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v124);
  }

  if (*(v43 + 32) <= 3u)
  {
    if (*(v43 + 32) <= 1u)
    {
      v45 = v123;
      if (*(v43 + 32))
      {
        LOBYTE(v125) = 1;
        sub_20C419BD0();
        v64 = v38;
        sub_20C4607F0();
        type metadata accessor for ImageAsset(0);
        LOBYTE(v125) = 0;
        sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
        v65 = v89;
        v66 = v96;
        sub_20C460840();
        v79 = &v65[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130) + 48)];
        LOBYTE(v125) = 1;
        sub_20C40BDE4();
        sub_20C460840();
        v120 = v79;
        type metadata accessor for CGSize();
        v126 = 2;
        sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
        v83 = v89;
        sub_20C460840();
        v120 = 0;
        (*(v109 + 8))(v64, v66);
      }

      else
      {
        LOBYTE(v125) = 0;
        sub_20C419C24();
        sub_20C4607F0();
        type metadata accessor for ImageAsset(0);
        LOBYTE(v125) = 0;
        sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
        v46 = v88;
        v47 = v95;
        sub_20C460840();
        v77 = &v46[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130) + 48)];
        LOBYTE(v125) = 1;
        sub_20C40BDE4();
        sub_20C460840();
        v120 = v77;
        type metadata accessor for CGSize();
        v126 = 2;
        sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
        v83 = v88;
        sub_20C460840();
        v120 = 0;
        (*(v108 + 8))(v39, v47);
      }

      (*(v121 + 8))(v45, v122);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v84 = v83;
      goto LABEL_24;
    }

    v57 = v115;
    v58 = v123;
    if (v44 != 2)
    {
      LOBYTE(v125) = 3;
      sub_20C419AD4();
      v67 = v112;
      sub_20C4607F0();
      type metadata accessor for DynamicArtworkLayoutEnvironment(0);
      LOBYTE(v125) = 0;
      sub_20C41D910(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
      v68 = v86;
      v69 = v100;
      sub_20C460840();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
      type metadata accessor for CGSize();
      LOBYTE(v125) = 1;
      sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
      sub_20C460840();
      v120 = 0;
      (*(v99 + 8))(v67, v69);
      (*(v121 + 8))(v58, v122);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v84 = v68;
LABEL_24:
      v82 = v87;
      sub_20C41B8D4(v84, v87, type metadata accessor for DynamicImageAssetAction);
      v57 = v115;
      goto LABEL_25;
    }

    LOBYTE(v125) = 2;
    sub_20C419B28();
    sub_20C4607F0();
    type metadata accessor for ImageAsset(0);
    LOBYTE(v125) = 0;
    sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
    v59 = v98;
    v60 = v40;
    sub_20C460840();
    v61 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
    LOBYTE(v125) = 1;
    sub_20C41B93C();
    v78 = v90;
    sub_20C460840();
    LOBYTE(v125) = 2;
    sub_20C40BDE4();
    sub_20C460840();
    (*(v97 + 8))(v60, v59);
    (*(v61 + 8))(v58, v122);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  if (*(v43 + 32) <= 5u)
  {
    v119 = v43;
    if (v44 == 4)
    {
      LOBYTE(v125) = 4;
      sub_20C419A80();
      v53 = v113;
      v54 = v123;
      sub_20C4607F0();
      type metadata accessor for ImageAsset(0);
      LOBYTE(v125) = 0;
      sub_20C41D910(&qword_27C7BAF30, type metadata accessor for ImageAsset, &protocol conformance descriptor for ImageAsset);
      v55 = v92;
      v56 = v94;
      sub_20C460840();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120);
      LOBYTE(v125) = 1;
      sub_20C40BDE4();
      sub_20C460840();
      v120 = 0;
      (*(v101 + 8))(v53, v56);
    }

    else
    {
      LOBYTE(v125) = 5;
      sub_20C419A2C();
      v54 = v123;
      sub_20C4607F0();
      type metadata accessor for DynamicArtworkLayoutEnvironment(0);
      LOBYTE(v125) = 0;
      sub_20C41D910(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
      v55 = v93;
      v73 = v105;
      sub_20C460840();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
      type metadata accessor for CGSize();
      LOBYTE(v125) = 1;
      sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
      v80 = v114;
      sub_20C460840();
      v120 = 0;
      (*(v104 + 8))(v80, v73);
    }

    (*(v121 + 8))(v54, v42);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v84 = v55;
    goto LABEL_24;
  }

  if (v44 == 6)
  {
    v119 = v43;
    LOBYTE(v125) = 6;
    sub_20C4199D8();
    v62 = v42;
    v63 = v123;
    sub_20C4607F0();
    v57 = v115;
    type metadata accessor for DynamicArtworkLayoutEnvironment(0);
    LOBYTE(v125) = 0;
    sub_20C41D910(&qword_27C7BB140, type metadata accessor for DynamicArtworkLayoutEnvironment, &protocol conformance descriptor for DynamicArtworkLayoutEnvironment);
    v71 = v107;
    sub_20C460840();
    v72 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60);
    type metadata accessor for CGSize();
    LOBYTE(v125) = 1;
    sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
    v78 = v110;
    sub_20C460840();
    (*(v106 + 8))(v41, v71);
    (*(v72 + 8))(v63, v62);
    swift_unknownObjectRelease();
LABEL_22:
    swift_storeEnumTagMultiPayload();
    v82 = v87;
    sub_20C41B8D4(v78, v87, type metadata accessor for DynamicImageAssetAction);
    v120 = 0;
    goto LABEL_25;
  }

  LOBYTE(v125) = 7;
  sub_20C419984();
  v70 = v111;
  sub_20C4607F0();
  v74 = v115;
  type metadata accessor for CGSize();
  sub_20C41D910(&qword_27C7BAC78, type metadata accessor for CGSize, MEMORY[0x277CBF2A0]);
  v75 = v103;
  sub_20C460840();
  v76 = v121;
  v120 = 0;
  (*(v102 + 8))(v70, v75);
  (*(v76 + 8))(v123, v42);
  swift_unknownObjectRelease();
  v81 = v91;
  *v91 = v125;
  swift_storeEnumTagMultiPayload();
  v82 = v87;
  sub_20C41B8D4(v81, v87, type metadata accessor for DynamicImageAssetAction);
  v57 = v74;
LABEL_25:
  sub_20C41B8D4(v82, v57, type metadata accessor for DynamicImageAssetAction);
  return __swift_destroy_boxed_opaque_existential_1(v124);
}

uint64_t sub_20C41B8D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20C41B93C()
{
  result = qword_27C7BB148;
  if (!qword_27C7BB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB148);
  }

  return result;
}

uint64_t DynamicImageAssetAction.hash(into:)(uint64_t a1)
{
  v125 = a1;
  v1 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  MEMORY[0x28223BE20](v1 - 8);
  v118 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_20C45FC30();
  v123 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v117 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC18, &unk_20C464A00);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v114 = &v112 - v7;
  MEMORY[0x28223BE20](v8);
  v113 = &v112 - v9;
  MEMORY[0x28223BE20](v10);
  v112 = &v112 - v11;
  v122 = sub_20C45FD00();
  v119 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v116 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BAC10, &qword_20C462070);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v112 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v112 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v112 - v23;
  v120 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v120);
  v26 = &v112 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v112 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v112 - v34;
  v36 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v36);
  v38 = (&v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20C419920(v124, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v53 = v125;
      if (EnumCaseMultiPayload != 6)
      {
        v86 = *v38;
        v87 = v38[1];
        MEMORY[0x20F2FAEA0](7);
        return sub_20C40C1A4(v86, v87);
      }

      v67 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v68 = *v67;
      v69 = v67[1];
      v70 = v118;
      sub_20C41B8D4(v38, v118, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v71 = 6;
    }

    else
    {
      v53 = v125;
      if (EnumCaseMultiPayload == 4)
      {
        v54 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48));
        v55 = v54[4];
        v134 = v54[3];
        v135 = v55;
        v56 = v54[2];
        v132 = v54[1];
        v133 = v56;
        v131 = *v54;
        sub_20C41B8D4(v38, v26, type metadata accessor for ImageAsset);
        MEMORY[0x20F2FAEA0](4);
        sub_20C409B04(v26, v15, &qword_27C7BAC10, &qword_20C462070);
        v57 = v119;
        v58 = v122;
        if ((*(v119 + 48))(v15, 1, v122) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v93 = v116;
          (*(v57 + 32))(v116, v15, v58);
          sub_20C460950();
          sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
          sub_20C460460();
          (*(v57 + 8))(v93, v58);
        }

        v94 = v121;
        v95 = v123;
        v96 = v120;
        sub_20C4604F0();
        sub_20C4604F0();

        v97 = &v26[*(v96 + 28)];
        v98 = v115;
        sub_20C409B04(v97, v115, &qword_27C7BAC18, &unk_20C464A00);
        if ((*(v95 + 48))(v98, 1, v94) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v109 = v117;
          (*(v95 + 32))(v117, v98, v94);
          sub_20C460950();
          sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
          sub_20C460460();
          (*(v95 + 8))(v109, v94);
        }

        v128 = v133;
        v129 = v134;
        v130 = v135;
        v127 = v132;
        v126 = v131;
        ImageAssetCacheKey.hash(into:)(v53);
        sub_20C40C57C(&v131);
        v85 = type metadata accessor for ImageAsset;
        v84 = v26;
        return sub_20C41ECCC(v84, v85);
      }

      v82 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
      v68 = *v82;
      v69 = v82[1];
      v70 = v118;
      sub_20C41B8D4(v38, v118, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v71 = 5;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v40 = v125;
      v41 = v123;
      v42 = v122;
      if (EnumCaseMultiPayload)
      {
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v73 = (v38 + *(v72 + 48));
        v74 = v73[4];
        v134 = v73[3];
        v135 = v74;
        v75 = v73[2];
        v132 = v73[1];
        v133 = v75;
        v131 = *v73;
        v76 = (v38 + *(v72 + 64));
        v77 = *v76;
        v78 = v76[1];
        sub_20C41B8D4(v38, v32, type metadata accessor for ImageAsset);
        MEMORY[0x20F2FAEA0](1);
        sub_20C409B04(v32, v21, &qword_27C7BAC10, &qword_20C462070);
        v79 = v119;
        v80 = (*(v119 + 48))(v21, 1, v42);
        v81 = v121;
        if (v80 == 1)
        {
          sub_20C460950();
        }

        else
        {
          v104 = v116;
          (*(v79 + 32))(v116, v21, v42);
          sub_20C460950();
          sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
          sub_20C460460();
          (*(v79 + 8))(v104, v42);
        }

        v105 = v120;
        sub_20C4604F0();
        sub_20C4604F0();

        v106 = &v32[*(v105 + 28)];
        v107 = v113;
        sub_20C409B04(v106, v113, &qword_27C7BAC18, &unk_20C464A00);
        if ((*(v41 + 48))(v107, 1, v81) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v111 = v117;
          (*(v41 + 32))(v117, v107, v81);
          sub_20C460950();
          sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
          sub_20C460460();
          (*(v41 + 8))(v111, v81);
        }

        v128 = v133;
        v129 = v134;
        v130 = v135;
        v127 = v132;
        v126 = v131;
        ImageAssetCacheKey.hash(into:)(v40);
        sub_20C40C57C(&v131);
        sub_20C40C1A4(v77, v78);
        v85 = type metadata accessor for ImageAsset;
        v84 = v32;
      }

      else
      {
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v44 = (v38 + *(v43 + 48));
        v45 = v44[4];
        v134 = v44[3];
        v135 = v45;
        v46 = v44[2];
        v132 = v44[1];
        v133 = v46;
        v131 = *v44;
        v47 = (v38 + *(v43 + 64));
        v48 = *v47;
        v49 = v47[1];
        sub_20C41B8D4(v38, v35, type metadata accessor for ImageAsset);
        MEMORY[0x20F2FAEA0](0);
        sub_20C409B04(v35, v24, &qword_27C7BAC10, &qword_20C462070);
        v50 = v119;
        v51 = (*(v119 + 48))(v24, 1, v42);
        v52 = v121;
        if (v51 == 1)
        {
          sub_20C460950();
        }

        else
        {
          v89 = v116;
          (*(v50 + 32))(v116, v24, v42);
          sub_20C460950();
          sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
          sub_20C460460();
          (*(v50 + 8))(v89, v42);
        }

        v90 = v120;
        sub_20C4604F0();
        sub_20C4604F0();

        v91 = &v35[*(v90 + 28)];
        v92 = v112;
        sub_20C409B04(v91, v112, &qword_27C7BAC18, &unk_20C464A00);
        if ((*(v41 + 48))(v92, 1, v52) == 1)
        {
          sub_20C460950();
        }

        else
        {
          v108 = v117;
          (*(v41 + 32))(v117, v92, v52);
          sub_20C460950();
          sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
          sub_20C460460();
          (*(v41 + 8))(v108, v52);
        }

        v128 = v133;
        v129 = v134;
        v130 = v135;
        v127 = v132;
        v126 = v131;
        ImageAssetCacheKey.hash(into:)(v40);
        sub_20C40C57C(&v131);
        sub_20C40C1A4(v48, v49);
        v85 = type metadata accessor for ImageAsset;
        v84 = v35;
      }

      return sub_20C41ECCC(v84, v85);
    }

    v53 = v125;
    v59 = v123;
    v60 = v122;
    if (EnumCaseMultiPayload == 2)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v62 = *(v38 + *(v61 + 48));
      v63 = (v38 + *(v61 + 64));
      v64 = v63[4];
      v134 = v63[3];
      v135 = v64;
      v65 = v63[2];
      v132 = v63[1];
      v133 = v65;
      v131 = *v63;
      sub_20C41B8D4(v38, v29, type metadata accessor for ImageAsset);
      MEMORY[0x20F2FAEA0](2);
      sub_20C409B04(v29, v18, &qword_27C7BAC10, &qword_20C462070);
      v66 = v119;
      if ((*(v119 + 48))(v18, 1, v60) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v99 = v116;
        (*(v66 + 32))(v116, v18, v60);
        sub_20C460950();
        sub_20C41D910(&qword_28110B4D8, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
        sub_20C460460();
        (*(v66 + 8))(v99, v60);
      }

      v100 = v120;
      sub_20C4604F0();
      sub_20C4604F0();

      v101 = &v29[*(v100 + 28)];
      v102 = v114;
      sub_20C409B04(v101, v114, &qword_27C7BAC18, &unk_20C464A00);
      v103 = v121;
      if ((*(v59 + 48))(v102, 1, v121) == 1)
      {
        sub_20C460950();
      }

      else
      {
        v110 = v117;
        (*(v59 + 32))(v117, v102, v103);
        sub_20C460950();
        sub_20C41D910(&qword_28110BEB0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        sub_20C460460();
        (*(v59 + 8))(v110, v103);
      }

      MEMORY[0x20F2FAEA0](v62);
      v128 = v133;
      v129 = v134;
      v130 = v135;
      v127 = v132;
      v126 = v131;
      ImageAssetCacheKey.hash(into:)(v53);
      sub_20C40C57C(&v131);
      v85 = type metadata accessor for ImageAsset;
      v84 = v29;
      return sub_20C41ECCC(v84, v85);
    }

    v83 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48));
    v68 = *v83;
    v69 = v83[1];
    v70 = v118;
    sub_20C41B8D4(v38, v118, type metadata accessor for DynamicArtworkLayoutEnvironment);
    v71 = 3;
  }

  MEMORY[0x20F2FAEA0](v71);
  DynamicArtworkLayoutEnvironment.hash(into:)(v53);
  sub_20C40C1A4(v68, v69);
  v84 = v70;
  v85 = type metadata accessor for DynamicArtworkLayoutEnvironment;
  return sub_20C41ECCC(v84, v85);
}

uint64_t DynamicImageAssetAction.hashValue.getter()
{
  sub_20C460930();
  DynamicImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C41CC10()
{
  sub_20C460930();
  DynamicImageAssetAction.hash(into:)(v1);
  return sub_20C460970();
}

uint64_t sub_20C41CC54(uint64_t a1)
{
  sub_20C460930();
  DynamicImageAssetAction.hash(into:)(v2);
  return sub_20C460970();
}

BOOL _s12FitnessAsset012DynamicImageB6ActionO2eeoiySbAC_ACtFZ_0(char *a1, uint64_t a2)
{
  v116 = a1;
  v3 = type metadata accessor for DynamicArtworkLayoutEnvironment(0);
  MEMORY[0x28223BE20](v3 - 8);
  v109 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v108 = &v105 - v6;
  MEMORY[0x28223BE20](v7);
  v107 = &v105 - v8;
  v9 = type metadata accessor for ImageAsset(0);
  MEMORY[0x28223BE20](v9 - 8);
  v111 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v112 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v110 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v106 = &v105 - v16;
  v17 = type metadata accessor for DynamicImageAssetAction(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v114 = &v105 - v21;
  MEMORY[0x28223BE20](v22);
  v113 = &v105 - v23;
  MEMORY[0x28223BE20](v24);
  v115 = &v105 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v105 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v105 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v105 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB250, &qword_20C462D28);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = &v105 - v39;
  v42 = (&v105 + *(v41 + 56) - v39);
  sub_20C419920(v116, &v105 - v39);
  sub_20C419920(a2, v42);
  v116 = v40;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v44 = v116;
      if (EnumCaseMultiPayload)
      {
        sub_20C419920(v116, v34);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v81 = *(v80 + 48);
        v82 = *&v34[v81 + 64];
        v135 = *&v34[v81 + 48];
        v136 = v82;
        v83 = *&v34[v81 + 32];
        v133 = *&v34[v81 + 16];
        v134 = v83;
        v132 = *&v34[v81];
        v84 = *(v80 + 64);
        v51 = *&v34[v84];
        v50 = *&v34[v84 + 8];
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_20C40C57C(&v132);
          v52 = type metadata accessor for ImageAsset;
          v53 = v34;
          goto LABEL_36;
        }

        v85 = *(v42 + v81 + 48);
        v129 = *(v42 + v81 + 32);
        v130 = v85;
        v131 = *(v42 + v81 + 64);
        v86 = *(v42 + v81 + 16);
        v127 = *(v42 + v81);
        v128 = v86;
        v77 = *(v42 + v84);
        v76 = *(v42 + v84 + 8);
        v87 = v110;
        sub_20C41B8D4(v42, v110, type metadata accessor for ImageAsset);
        v88 = static ImageAsset.== infix(_:_:)(v34, v87);
        sub_20C41ECCC(v34, type metadata accessor for ImageAsset);
        if (v88)
        {
          v124 = v134;
          v125 = v135;
          v126 = v136;
          v122 = v132;
          v123 = v133;
          v119 = v129;
          v120 = v130;
          v121 = v131;
          v117 = v127;
          v118 = v128;
          v89 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v122, &v117);
          v90 = v87;
          goto LABEL_40;
        }

        v74 = v87;
      }

      else
      {
        sub_20C419920(v116, v37);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0E0, &qword_20C462130);
        v46 = *(v45 + 48);
        v47 = *&v37[v46 + 64];
        v135 = *&v37[v46 + 48];
        v136 = v47;
        v48 = *&v37[v46 + 32];
        v133 = *&v37[v46 + 16];
        v134 = v48;
        v132 = *&v37[v46];
        v49 = *(v45 + 64);
        v51 = *&v37[v49];
        v50 = *&v37[v49 + 8];
        if (swift_getEnumCaseMultiPayload())
        {
          sub_20C40C57C(&v132);
          v52 = type metadata accessor for ImageAsset;
          v53 = v37;
LABEL_36:
          sub_20C41ECCC(v53, v52);
          goto LABEL_37;
        }

        v99 = *(v42 + v46 + 48);
        v129 = *(v42 + v46 + 32);
        v130 = v99;
        v131 = *(v42 + v46 + 64);
        v100 = *(v42 + v46 + 16);
        v127 = *(v42 + v46);
        v128 = v100;
        v77 = *(v42 + v49);
        v76 = *(v42 + v49 + 8);
        v101 = v106;
        sub_20C41B8D4(v42, v106, type metadata accessor for ImageAsset);
        v102 = static ImageAsset.== infix(_:_:)(v37, v101);
        sub_20C41ECCC(v37, type metadata accessor for ImageAsset);
        if (v102)
        {
          v124 = v134;
          v125 = v135;
          v126 = v136;
          v122 = v132;
          v123 = v133;
          v119 = v129;
          v120 = v130;
          v121 = v131;
          v117 = v127;
          v118 = v128;
          v89 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v122, &v117);
          v90 = v101;
LABEL_40:
          sub_20C41ECCC(v90, type metadata accessor for ImageAsset);
          sub_20C40C57C(&v127);
          sub_20C40C57C(&v132);
          if (v89)
          {
            goto LABEL_41;
          }

          goto LABEL_50;
        }

        v74 = v101;
      }

      goto LABEL_49;
    }

    v44 = v116;
    if (EnumCaseMultiPayload == 2)
    {
      sub_20C419920(v116, v31);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0C8, &unk_20C4648E0);
      v64 = *(v63 + 48);
      v65 = v31[v64];
      v66 = *(v63 + 64);
      v67 = *&v31[v66 + 64];
      v135 = *&v31[v66 + 48];
      v136 = v67;
      v68 = *&v31[v66 + 32];
      v133 = *&v31[v66 + 16];
      v134 = v68;
      v132 = *&v31[v66];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_20C40C57C(&v132);
        v52 = type metadata accessor for ImageAsset;
        v53 = v31;
        goto LABEL_36;
      }

      v69 = *(v42 + v64);
      v70 = *(v42 + v66 + 48);
      v129 = *(v42 + v66 + 32);
      v130 = v70;
      v131 = *(v42 + v66 + 64);
      v71 = *(v42 + v66 + 16);
      v127 = *(v42 + v66);
      v128 = v71;
      v72 = v112;
      sub_20C41B8D4(v42, v112, type metadata accessor for ImageAsset);
      v73 = static ImageAsset.== infix(_:_:)(v31, v72);
      sub_20C41ECCC(v31, type metadata accessor for ImageAsset);
      if ((v73 & 1) != 0 && v65 == v69)
      {
        v124 = v134;
        v125 = v135;
        v126 = v136;
        v122 = v132;
        v123 = v133;
        v119 = v129;
        v120 = v130;
        v121 = v131;
        v117 = v127;
        v118 = v128;
        v62 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v122, &v117);
        sub_20C41ECCC(v72, type metadata accessor for ImageAsset);
        sub_20C40C57C(&v127);
        sub_20C40C57C(&v132);
LABEL_45:
        sub_20C41ECCC(v44, type metadata accessor for DynamicImageAssetAction);
        return v62;
      }

      v74 = v72;
LABEL_49:
      sub_20C41ECCC(v74, type metadata accessor for ImageAsset);
      sub_20C40C57C(&v132);
      sub_20C40C57C(&v127);
LABEL_50:
      v103 = v44;
      goto LABEL_51;
    }

    sub_20C419920(v116, v28);
    v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
    v51 = *&v28[v94];
    v50 = *&v28[v94 + 8];
    v95 = swift_getEnumCaseMultiPayload();
    if (v95 == 3)
    {
      v77 = *(v42 + v94);
      v76 = *(v42 + v94 + 8);
      v78 = v42;
      v79 = v107;
LABEL_28:
      sub_20C41B8D4(v78, v79, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v96 = _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(v28, v79);
      sub_20C41ECCC(v79, type metadata accessor for DynamicArtworkLayoutEnvironment);
      sub_20C41ECCC(v28, type metadata accessor for DynamicArtworkLayoutEnvironment);
      if ((v96 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v44 = v116;
      v28 = v114;
      sub_20C419920(v116, v114);
      v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
      v51 = *&v28[v75];
      v50 = *&v28[v75 + 8];
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v77 = *(v42 + v75);
        v76 = *(v42 + v75 + 8);
        v78 = v42;
        v79 = v109;
        goto LABEL_28;
      }

LABEL_30:
      v52 = type metadata accessor for DynamicArtworkLayoutEnvironment;
      v53 = v28;
      goto LABEL_36;
    }

    v44 = v116;
    sub_20C419920(v116, v19);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v97 = *v19 == *v42;
      v98 = v19[1] == v42[1];
      goto LABEL_42;
    }

LABEL_37:
    sub_20C41EC64(v44);
    return 0;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v44 = v116;
    v28 = v113;
    sub_20C419920(v116, v113);
    v91 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB090, &unk_20C466C60) + 48);
    v51 = *&v28[v91];
    v50 = *&v28[v91 + 8];
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v77 = *(v42 + v91);
      v76 = *(v42 + v91 + 8);
      v92 = v108;
      sub_20C41B8D4(v42, v108, type metadata accessor for DynamicArtworkLayoutEnvironment);
      v93 = _s12FitnessAsset31DynamicArtworkLayoutEnvironmentV2eeoiySbAC_ACtFZ_0(v28, v92);
      sub_20C41ECCC(v92, type metadata accessor for DynamicArtworkLayoutEnvironment);
      sub_20C41ECCC(v28, type metadata accessor for DynamicArtworkLayoutEnvironment);
      if ((v93 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_41:
      v97 = v51 == v77;
      v98 = v50 == v76;
LABEL_42:
      v62 = v98 && v97;
      goto LABEL_45;
    }

    goto LABEL_30;
  }

  v54 = v115;
  sub_20C419920(v116, v115);
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB0B0, &unk_20C462120) + 48);
  v56 = *(v54 + v55 + 64);
  v135 = *(v54 + v55 + 48);
  v136 = v56;
  v57 = *(v54 + v55 + 32);
  v133 = *(v54 + v55 + 16);
  v134 = v57;
  v132 = *(v54 + v55);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_20C40C57C(&v132);
    sub_20C41ECCC(v54, type metadata accessor for ImageAsset);
    v44 = v116;
    goto LABEL_37;
  }

  v58 = *(v42 + v55 + 48);
  v129 = *(v42 + v55 + 32);
  v130 = v58;
  v131 = *(v42 + v55 + 64);
  v59 = *(v42 + v55 + 16);
  v127 = *(v42 + v55);
  v128 = v59;
  v60 = v111;
  sub_20C41B8D4(v42, v111, type metadata accessor for ImageAsset);
  v61 = static ImageAsset.== infix(_:_:)(v54, v60);
  sub_20C41ECCC(v54, type metadata accessor for ImageAsset);
  if ((v61 & 1) == 0)
  {
    sub_20C41ECCC(v60, type metadata accessor for ImageAsset);
    sub_20C40C57C(&v132);
    sub_20C40C57C(&v127);
    v103 = v116;
LABEL_51:
    sub_20C41ECCC(v103, type metadata accessor for DynamicImageAssetAction);
    return 0;
  }

  v124 = v134;
  v125 = v135;
  v126 = v136;
  v122 = v132;
  v123 = v133;
  v119 = v129;
  v120 = v130;
  v121 = v131;
  v117 = v127;
  v118 = v128;
  v62 = _s12FitnessAsset05ImageB8CacheKeyV2eeoiySbAC_ACtFZ_0(&v122, &v117);
  sub_20C41ECCC(v60, type metadata accessor for ImageAsset);
  sub_20C40C57C(&v127);
  sub_20C40C57C(&v132);
  sub_20C41ECCC(v116, type metadata accessor for DynamicImageAssetAction);
  return v62;
}

uint64_t sub_20C41D910(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20C41D9A8(uint64_t a1)
{
  sub_20C41DA60(319);
  if (v1 <= 0x3F)
  {
    sub_20C41DADC(319);
    if (v2 <= 0x3F)
    {
      sub_20C41DB50(319);
      if (v3 <= 0x3F)
      {
        sub_20C41DBC4(319);
        if (v4 <= 0x3F)
        {
          sub_20C41DC30();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_20C41DA60(uint64_t a1)
{
  if (!qword_28110BBE0[0])
  {
    type metadata accessor for ImageAsset(255);
    type metadata accessor for CGSize();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_28110BBE0);
    }
  }
}

void sub_20C41DADC(uint64_t a1)
{
  if (!qword_27C7BB168)
  {
    type metadata accessor for ImageAsset(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C7BB168);
    }
  }
}

void sub_20C41DB50(uint64_t a1)
{
  if (!qword_27C7BB170)
  {
    type metadata accessor for DynamicArtworkLayoutEnvironment(255);
    type metadata accessor for CGSize();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C7BB170);
    }
  }
}

void sub_20C41DBC4(uint64_t a1)
{
  if (!qword_28110BCB8[0])
  {
    type metadata accessor for ImageAsset(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_28110BCB8);
    }
  }
}

void sub_20C41DC30()
{
  if (!qword_28110B3E8)
  {
    type metadata accessor for CGSize();
    if (!v1)
    {
      atomic_store(v0, &qword_28110B3E8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DynamicImageAssetAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DynamicImageAssetAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C41DE4C()
{
  result = qword_27C7BB178;
  if (!qword_27C7BB178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB178);
  }

  return result;
}

unint64_t sub_20C41DEA4()
{
  result = qword_27C7BB180;
  if (!qword_27C7BB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB180);
  }

  return result;
}

unint64_t sub_20C41DEFC()
{
  result = qword_27C7BB188;
  if (!qword_27C7BB188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB188);
  }

  return result;
}

unint64_t sub_20C41DF54()
{
  result = qword_27C7BB190;
  if (!qword_27C7BB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB190);
  }

  return result;
}

unint64_t sub_20C41DFAC()
{
  result = qword_27C7BB198;
  if (!qword_27C7BB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB198);
  }

  return result;
}

unint64_t sub_20C41E004()
{
  result = qword_27C7BB1A0;
  if (!qword_27C7BB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1A0);
  }

  return result;
}

unint64_t sub_20C41E05C()
{
  result = qword_27C7BB1A8;
  if (!qword_27C7BB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1A8);
  }

  return result;
}

unint64_t sub_20C41E0B4()
{
  result = qword_27C7BB1B0;
  if (!qword_27C7BB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1B0);
  }

  return result;
}

unint64_t sub_20C41E10C()
{
  result = qword_27C7BB1B8;
  if (!qword_27C7BB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1B8);
  }

  return result;
}

unint64_t sub_20C41E164()
{
  result = qword_27C7BB1C0;
  if (!qword_27C7BB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1C0);
  }

  return result;
}

unint64_t sub_20C41E1BC()
{
  result = qword_27C7BB1C8;
  if (!qword_27C7BB1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1C8);
  }

  return result;
}

unint64_t sub_20C41E214()
{
  result = qword_27C7BB1D0;
  if (!qword_27C7BB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1D0);
  }

  return result;
}

unint64_t sub_20C41E26C()
{
  result = qword_27C7BB1D8;
  if (!qword_27C7BB1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1D8);
  }

  return result;
}

unint64_t sub_20C41E2C4()
{
  result = qword_27C7BB1E0;
  if (!qword_27C7BB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1E0);
  }

  return result;
}

unint64_t sub_20C41E31C()
{
  result = qword_27C7BB1E8;
  if (!qword_27C7BB1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1E8);
  }

  return result;
}

unint64_t sub_20C41E374()
{
  result = qword_27C7BB1F0;
  if (!qword_27C7BB1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1F0);
  }

  return result;
}

unint64_t sub_20C41E3CC()
{
  result = qword_27C7BB1F8;
  if (!qword_27C7BB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB1F8);
  }

  return result;
}

unint64_t sub_20C41E424()
{
  result = qword_27C7BB200;
  if (!qword_27C7BB200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB200);
  }

  return result;
}

unint64_t sub_20C41E47C()
{
  result = qword_27C7BB208;
  if (!qword_27C7BB208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB208);
  }

  return result;
}

unint64_t sub_20C41E4D4()
{
  result = qword_27C7BB210;
  if (!qword_27C7BB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB210);
  }

  return result;
}

unint64_t sub_20C41E52C()
{
  result = qword_27C7BB218;
  if (!qword_27C7BB218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB218);
  }

  return result;
}

unint64_t sub_20C41E584()
{
  result = qword_27C7BB220;
  if (!qword_27C7BB220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB220);
  }

  return result;
}

unint64_t sub_20C41E5DC()
{
  result = qword_27C7BB228;
  if (!qword_27C7BB228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB228);
  }

  return result;
}

unint64_t sub_20C41E634()
{
  result = qword_27C7BB230;
  if (!qword_27C7BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB230);
  }

  return result;
}

unint64_t sub_20C41E68C()
{
  result = qword_27C7BB238;
  if (!qword_27C7BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB238);
  }

  return result;
}

unint64_t sub_20C41E6E4()
{
  result = qword_27C7BB240;
  if (!qword_27C7BB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB240);
  }

  return result;
}

unint64_t sub_20C41E73C()
{
  result = qword_27C7BB248;
  if (!qword_27C7BB248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7BB248);
  }

  return result;
}

uint64_t sub_20C41E790(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x800000020C467650 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000020C467670 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000020C467690 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000020C4676B0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C4676D0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x800000020C4676F0 == a2 || (sub_20C4608D0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_20C4608D0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xEF6465676E616843)
  {

    return 7;
  }

  else
  {
    v5 = sub_20C4608D0();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_20C41EA38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657A695377656976 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C41EB48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373416567616D69 && a2 == 0xEA00000000007465;
  if (v4 || (sub_20C4608D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000 || (sub_20C4608D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79654B6568636163 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C4608D0();

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

uint64_t sub_20C41EC64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB250, &qword_20C462D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C41ECCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C41ED84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C4608D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C41EE04(uint64_t a1)
{
  v2 = sub_20C41F768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41EE40(uint64_t a1)
{
  v2 = sub_20C41F768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C41EE7C()
{
  v1 = 0x6546726174617661;
  if (*v0 != 1)
  {
    v1 = 0x6176416863746566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_20C41EEF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C4206DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C41EF1C(uint64_t a1)
{
  v2 = sub_20C41F5EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41EF58(uint64_t a1)
{
  v2 = sub_20C41F5EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C41EF94(uint64_t a1)
{
  v2 = sub_20C41F6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41EFD0(uint64_t a1)
{
  v2 = sub_20C41F6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C41F00C(uint64_t a1)
{
  v2 = sub_20C41F910();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C41F048(uint64_t a1)
{
  v2 = sub_20C41F910();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MonogramAction.encode(to:)(void *a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB258, &qword_20C462D30);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v29 = &v25 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB260, &qword_20C462D38);
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v28 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB268, &qword_20C462D40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB270, &qword_20C462D48);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for MonogramAction(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7BB278, &qword_20C462D50);
  v13 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C41F5EC();
  sub_20C4609C0();
  sub_20C41F640(v35, v12);
  v16 = (*(v5 + 48))(v12, 2, v4);
  if (v16)
  {
    if (v16 == 1)
    {
      v36 = 0;
      sub_20C41F910();
      v17 = v34;
      sub_20C460870();
      (*(v25 + 8))(v9, v26);
      return (*(v13 + 8))(v15, v17);
    }

    else
    {
      v38 = 2;
      sub_20C41F6A4();
      v23 = v29;
      v24 = v34;
      sub_20C460870();
      (*(v31 + 8))(v23, v33);
      return (*(v13 + 8))(v15, v24);
    }
  }

  else
  {
    v19 = v27;
    sub_20C41F6F8(v12, v27);
    v37 = 1;
    sub_20C41F768();
    v20 = v28;
    v21 = v34;
    sub_20C460870();
    sub_20C420144(&qword_27C7BB298, MEMORY[0x277D0A928]);
    v22 = v32;
    sub_20C4608B0();
    (*(v30 + 8))(v20, v22);
    sub_20C41F8A8(v19);
    return (*(v13 + 8))(v15, v21);
  }
}