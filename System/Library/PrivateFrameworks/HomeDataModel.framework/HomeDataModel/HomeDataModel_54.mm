unint64_t sub_1D1BA2178()
{
  result = qword_1EC64BDE0;
  if (!qword_1EC64BDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
    sub_1D1BA2264(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1BA2264(&qword_1EC64BDE8, type metadata accessor for StaticTelevisionProfile, &protocol conformance descriptor for StaticTelevisionProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDE0);
  }

  return result;
}

uint64_t sub_1D1BA2264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1BA22AC()
{
  result = qword_1EC64BDF8;
  if (!qword_1EC64BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BDF0, &qword_1D1E9CBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDF8);
  }

  return result;
}

unint64_t sub_1D1BA2310()
{
  result = qword_1EC64BE20;
  if (!qword_1EC64BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE20);
  }

  return result;
}

unint64_t sub_1D1BA2364()
{
  result = qword_1EC64BE28;
  if (!qword_1EC64BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE28);
  }

  return result;
}

unint64_t sub_1D1BA23B8()
{
  result = qword_1EC64BE30;
  if (!qword_1EC64BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE30);
  }

  return result;
}

unint64_t sub_1D1BA240C()
{
  result = qword_1EC64BE68;
  if (!qword_1EC64BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE68);
  }

  return result;
}

unint64_t sub_1D1BA2460()
{
  result = qword_1EC64BE70;
  if (!qword_1EC64BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE70);
  }

  return result;
}

unint64_t sub_1D1BA24B4()
{
  result = qword_1EC64BE78;
  if (!qword_1EC64BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE78);
  }

  return result;
}

unint64_t sub_1D1BA250C()
{
  result = qword_1EC64BE98;
  if (!qword_1EC64BE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BE98);
  }

  return result;
}

unint64_t sub_1D1BA2564()
{
  result = qword_1EC64BEA0;
  if (!qword_1EC64BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEA0);
  }

  return result;
}

unint64_t sub_1D1BA25BC()
{
  result = qword_1EC64BEA8;
  if (!qword_1EC64BEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticProfileBag.ValueUpdate(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7F)
  {
    goto LABEL_17;
  }

  if (a2 + 129 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 129) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 129;
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

      return (*a1 | (v4 << 8)) - 129;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 129;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v6 >= 0x7E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for StaticProfileBag.ValueUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7F)
  {
    v4 = 0;
  }

  if (a2 > 0x7E)
  {
    v5 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
    *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1BA2830()
{
  result = qword_1EC64BEB0;
  if (!qword_1EC64BEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEB0);
  }

  return result;
}

unint64_t sub_1D1BA2888()
{
  result = qword_1EC64BEB8;
  if (!qword_1EC64BEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEB8);
  }

  return result;
}

unint64_t sub_1D1BA28E0()
{
  result = qword_1EC64BEC0;
  if (!qword_1EC64BEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEC0);
  }

  return result;
}

unint64_t sub_1D1BA2938()
{
  result = qword_1EC64BEC8;
  if (!qword_1EC64BEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEC8);
  }

  return result;
}

unint64_t sub_1D1BA2990()
{
  result = qword_1EC64BED0;
  if (!qword_1EC64BED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BED0);
  }

  return result;
}

unint64_t sub_1D1BA29E8()
{
  result = qword_1EC64BED8;
  if (!qword_1EC64BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BED8);
  }

  return result;
}

unint64_t sub_1D1BA2A40()
{
  result = qword_1EC64BEE0;
  if (!qword_1EC64BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEE0);
  }

  return result;
}

unint64_t sub_1D1BA2A98()
{
  result = qword_1EC64BEE8;
  if (!qword_1EC64BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEE8);
  }

  return result;
}

unint64_t sub_1D1BA2AF0()
{
  result = qword_1EC64BEF0;
  if (!qword_1EC64BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEF0);
  }

  return result;
}

unint64_t sub_1D1BA2B48()
{
  result = qword_1EC64BEF8;
  if (!qword_1EC64BEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BEF8);
  }

  return result;
}

unint64_t sub_1D1BA2BA0()
{
  result = qword_1EC64BF00;
  if (!qword_1EC64BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF00);
  }

  return result;
}

unint64_t sub_1D1BA2BF8()
{
  result = qword_1EC64BF08;
  if (!qword_1EC64BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF08);
  }

  return result;
}

unint64_t sub_1D1BA2C50()
{
  result = qword_1EC64BF10;
  if (!qword_1EC64BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF10);
  }

  return result;
}

unint64_t sub_1D1BA2CA8()
{
  result = qword_1EC64BF18;
  if (!qword_1EC64BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF18);
  }

  return result;
}

unint64_t sub_1D1BA2D00()
{
  result = qword_1EC64BF20;
  if (!qword_1EC64BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF20);
  }

  return result;
}

unint64_t sub_1D1BA2D58()
{
  result = qword_1EC64BF28;
  if (!qword_1EC64BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF28);
  }

  return result;
}

unint64_t sub_1D1BA2DB0()
{
  result = qword_1EC64BF30;
  if (!qword_1EC64BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF30);
  }

  return result;
}

unint64_t sub_1D1BA2E08()
{
  result = qword_1EC64BF38;
  if (!qword_1EC64BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF38);
  }

  return result;
}

unint64_t sub_1D1BA2E60()
{
  result = qword_1EC64BF40;
  if (!qword_1EC64BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF40);
  }

  return result;
}

uint64_t sub_1D1BA2EB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BA2F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticLightProfile(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1BA2FA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BA3008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticTelevisionProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double StaticTelevisionProfile.mediaSourceDisplayOrder.getter()
{
  type metadata accessor for StaticTelevisionProfile(0);

  return result;
}

uint64_t type metadata accessor for StaticTelevisionProfile(uint64_t a1)
{
  result = qword_1EE07A4C0;
  if (!qword_1EE07A4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticTelevisionProfile.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTelevisionProfile(0) + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static StaticTelevisionProfile.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticTelevisionProfile(0);
  if ((sub_1D177A0E4(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D1BA3258()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0x726F737365636361;
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

uint64_t sub_1D1BA32B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1BA41F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1BA32DC(uint64_t a1)
{
  v2 = sub_1D1BA35A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA3318(uint64_t a1)
{
  v2 = sub_1D1BA35A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticTelevisionProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF48, &unk_1D1E9D630);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA35A0();
  sub_1D1E6930C();
  v13 = 0;
  sub_1D1E66A7C();
  sub_1D1BA3F20(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v10[1] = *(v3 + *(type metadata accessor for StaticTelevisionProfile(0) + 20));
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    sub_1D1BA3DAC(&qword_1EC64BF60, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    v11 = 2;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1D1BA35A0()
{
  result = qword_1EC64BF50;
  if (!qword_1EC64BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF50);
  }

  return result;
}

uint64_t StaticTelevisionProfile.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1BA3F20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = *(v1 + *(type metadata accessor for StaticTelevisionProfile(0) + 20));
  MEMORY[0x1D3892850](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  return sub_1D1E676EC();
}

uint64_t StaticTelevisionProfile.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1BA3F20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = *(v0 + *(type metadata accessor for StaticTelevisionProfile(0) + 20));
  MEMORY[0x1D3892850](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1D3892850](v4);
      --v2;
    }

    while (v2);
  }

  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t StaticTelevisionProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1D1E66A7C();
  v27 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v28 = v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF68, &qword_1D1E9D640);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = type metadata accessor for StaticTelevisionProfile(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA35A0();
  v31 = v10;
  v14 = v32;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = v6;
  v25 = v11;
  v32 = a1;
  v15 = v13;
  v16 = v27;
  v36 = 0;
  v17 = sub_1D1BA3F20(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v18 = v28;
  sub_1D1E68D7C();
  v23[1] = v17;
  v19 = *(v16 + 32);
  v19(v13, v18, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
  v35 = 1;
  sub_1D1BA3DAC(&qword_1EC64BF70, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
  sub_1D1E68D7C();
  v28 = v19;
  *&v13[*(v25 + 20)] = v33;
  v34 = 2;
  v20 = v24;
  sub_1D1E68D7C();
  v21 = v32;
  (*(v29 + 8))(v31, v30);
  (v28)(v15 + *(v25 + 24), v20, v3);
  sub_1D1BA3E18(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return sub_1D1BA3E7C(v15);
}

uint64_t sub_1D1BA3C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D177A0E4(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1BA3CB8(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1BA3F20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v4 = *(v2 + *(a2 + 20));
  MEMORY[0x1D3892850](*(v4 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      MEMORY[0x1D3892850](v7);
      --v5;
    }

    while (v5);
  }

  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA3DAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BF58, &qword_1D1EA4AA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1BA3E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTelevisionProfile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1BA3E7C(uint64_t a1)
{
  v2 = type metadata accessor for StaticTelevisionProfile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1BA3F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1BA4008(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1BA4090();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1BA4090()
{
  if (!qword_1EC64BF80)
  {
    v0 = sub_1D1E67D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC64BF80);
    }
  }
}

unint64_t sub_1D1BA40F4()
{
  result = qword_1EC64BF88;
  if (!qword_1EC64BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF88);
  }

  return result;
}

unint64_t sub_1D1BA414C()
{
  result = qword_1EC64BF90;
  if (!qword_1EC64BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF90);
  }

  return result;
}

unint64_t sub_1D1BA41A4()
{
  result = qword_1EC64BF98;
  if (!qword_1EC64BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BF98);
  }

  return result;
}

uint64_t sub_1D1BA41F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC5F10 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1BA4314(uint64_t a1)
{
  v35 = sub_1D1E66A7C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1D1E6869C();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1D1E66A1C();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1D178CD24((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1D18A2E20(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1D18A2E20(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t _s13HomeDataModel17AnyTileInfoBearerV11StorageBaseCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1D1BA4680(void *a1, int a2)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1D0, &qword_1D1E9DD50);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1D8, &qword_1D1E9DD58);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1E0, &qword_1D1E9DD60);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1E8, &qword_1D1E9DD68);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1F0, &qword_1D1E9DD70);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v31 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C1F8, &qword_1D1E9DD78);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C200, &qword_1D1E9DD80);
  v32 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C208, &qword_1D1E9DD88);
  v31 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C210, &qword_1D1E9DD90);
  v21 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v23 = &v31 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BAC4C4();
  sub_1D1E6930C();
  v24 = (v21 + 8);
  if (v51 > 3u)
  {
    if (v51 > 5u)
    {
      if (v51 == 6)
      {
        v59 = 6;
        sub_1D1BAC56C();
        v27 = v45;
        v28 = v52;
        sub_1D1E68DFC();
        v30 = v46;
        v29 = v47;
      }

      else
      {
        v60 = 7;
        sub_1D1BAC518();
        v27 = v48;
        v28 = v52;
        sub_1D1E68DFC();
        v30 = v49;
        v29 = v50;
      }
    }

    else if (v51 == 4)
    {
      v57 = 4;
      sub_1D1BAC614();
      v27 = v39;
      v28 = v52;
      sub_1D1E68DFC();
      v30 = v40;
      v29 = v41;
    }

    else
    {
      v58 = 5;
      sub_1D1BAC5C0();
      v27 = v42;
      v28 = v52;
      sub_1D1E68DFC();
      v30 = v43;
      v29 = v44;
    }

    goto LABEL_16;
  }

  if (v51 > 1u)
  {
    if (v51 == 2)
    {
      v55 = 2;
      sub_1D1BAC6BC();
      v28 = v52;
      sub_1D1E68DFC();
      (*(v34 + 8))(v15, v35);
      return (*v24)(v23, v28);
    }

    v56 = 3;
    sub_1D1BAC668();
    v27 = v36;
    v28 = v52;
    sub_1D1E68DFC();
    v30 = v37;
    v29 = v38;
LABEL_16:
    (*(v30 + 8))(v27, v29);
    return (*v24)(v23, v28);
  }

  if (!v51)
  {
    v53 = 0;
    sub_1D1BAC764();
    v25 = v52;
    sub_1D1E68DFC();
    (*(v31 + 8))(v20, v18);
    return (*v24)(v23, v25);
  }

  v54 = 1;
  sub_1D1BAC710();
  v28 = v52;
  sub_1D1E68DFC();
  (*(v32 + 8))(v17, v33);
  return (*v24)(v23, v28);
}

uint64_t sub_1D1BA4E1C(uint64_t a1)
{
  v2 = sub_1D1BAC764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA4E58(uint64_t a1)
{
  v2 = sub_1D1BAC764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA4E94(uint64_t a1)
{
  v2 = sub_1D1BAC614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA4ED0(uint64_t a1)
{
  v2 = sub_1D1BAC614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA4F0C(uint64_t a1)
{
  v2 = sub_1D1BAC668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA4F48(uint64_t a1)
{
  v2 = sub_1D1BAC668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA4F84()
{
  v1 = *v0;
  v2 = 0x726F737365636361;
  v3 = 0x6F7250616964656DLL;
  if (v1 != 6)
  {
    v3 = 0x634172657474616DLL;
  }

  v4 = 0x65536E6F69746361;
  if (v1 != 4)
  {
    v4 = 0x737953616964656DLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4765636976726573;
  if (v1 != 2)
  {
    v5 = 0x72506172656D6163;
  }

  if (*v0)
  {
    v2 = 0x65636976726573;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1BA50B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1BAB80C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1BA50DC(uint64_t a1)
{
  v2 = sub_1D1BAC4C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5118(uint64_t a1)
{
  v2 = sub_1D1BAC4C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA5154(uint64_t a1)
{
  v2 = sub_1D1BAC518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5190(uint64_t a1)
{
  v2 = sub_1D1BAC518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA51CC(uint64_t a1)
{
  v2 = sub_1D1BAC56C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5208(uint64_t a1)
{
  v2 = sub_1D1BAC56C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA5244(uint64_t a1)
{
  v2 = sub_1D1BAC5C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5280(uint64_t a1)
{
  v2 = sub_1D1BAC5C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA52BC(uint64_t a1)
{
  v2 = sub_1D1BAC710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA52F8(uint64_t a1)
{
  v2 = sub_1D1BAC710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA5334(uint64_t a1)
{
  v2 = sub_1D1BAC6BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5370(uint64_t a1)
{
  v2 = sub_1D1BAC6BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA53AC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1BABACC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D1BA5424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x6F666E49656C6974 && a2 == 0xE800000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F666E49656C6974 && a2 == 0xEC00000065707954)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1BA54FC(uint64_t a1)
{
  v2 = sub_1D1BAB044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA5538(uint64_t a1)
{
  v2 = sub_1D1BAB044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double AnyTileInfoBearer.init<A>(erasing:)@<D0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  Description = a2[-1].Description;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Description[2](v10, a1, a2);
  AnyTileInfoBearer.init<A>(_:)(v10, a2, a3, &v12);
  (Description[1])(a1, a2);
  result = *&v12;
  *a4 = v12;
  return result;
}

uint64_t AnyTileInfoBearer.init<A>(_:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X8>)
{
  Description = a2[-1].Description;
  MEMORY[0x1EEE9AC00](a1);
  Description[2](&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = &type metadata for AnyTileInfoBearer;
  }

  else
  {
    type metadata accessor for AnyTileInfoBearer.TileStorage(0, a2, a3, v10);
    swift_allocObject();
    v11 = sub_1D1BAAF38(a1);
    v12 = a2;
  }

  result = (Description[1])(a1, a2);
  *a4 = v11;
  a4[1] = &v12->Kind;
  return result;
}

uint64_t AnyTileInfoBearer.init(from:)@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  v90 = a2;
  v88 = type metadata accessor for StaticMatterDevice(0);
  v3 = MEMORY[0x1EEE9AC00](v88);
  v79 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v94 = &v71 - v5;
  v89 = type metadata accessor for StaticMediaProfile(0);
  v6 = MEMORY[0x1EEE9AC00](v89);
  v78 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v71 - v8;
  v86 = type metadata accessor for StaticMediaSystem(0);
  v9 = MEMORY[0x1EEE9AC00](v86);
  v77 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v80 = &v71 - v11;
  v87 = type metadata accessor for StaticActionSet(0);
  v12 = MEMORY[0x1EEE9AC00](v87);
  v76 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v71 - v14;
  v85 = type metadata accessor for StaticCameraProfile(0);
  v15 = MEMORY[0x1EEE9AC00](v85);
  v75 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v84 = &v71 - v17;
  v83 = type metadata accessor for StaticServiceGroup(0);
  v18 = MEMORY[0x1EEE9AC00](v83);
  v74 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v71 - v20;
  v81 = type metadata accessor for StaticService(0);
  v21 = MEMORY[0x1EEE9AC00](v81);
  v73 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v71 - v23;
  v25 = type metadata accessor for StaticAccessory(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v71 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFA0, &qword_1D1E9D890);
  v93 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v71 - v32;
  v34 = a1[3];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_1D1BAB044();
  v35 = v95;
  sub_1D1E692FC();
  if (v35)
  {
    return __swift_destroy_boxed_opaque_existential_1(v96);
  }

  v72 = v28;
  v36 = v30;
  v37 = v24;
  v95 = v25;
  v39 = v91;
  v38 = v92;
  v40 = v94;
  v105 = 1;
  sub_1D1BAB098();
  sub_1D1E68D7C();
  if (v106 > 3u)
  {
    if (v106 > 5u)
    {
      if (v106 != 6)
      {
        v104 = 0;
        sub_1D1BAB568(&qword_1EC649240, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
        v63 = v88;
        sub_1D1E68D7C();
        v71 = v33;
        v69 = v79;
        sub_1D1BAB0EC(v40, v79, type metadata accessor for StaticMatterDevice);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFB8, &qword_1D1E9D898);
        v45 = swift_allocObject();
        v45[5] = v63;
        v45[6] = sub_1D1BAB568(&qword_1EC649258, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
        sub_1D1BAB154(v69, boxed_opaque_existential_1, type metadata accessor for StaticMatterDevice);
        sub_1D1BAB278(v40, type metadata accessor for StaticMatterDevice);
        v43 = v63;
LABEL_22:
        v50 = v90;
        v49 = v93;
        goto LABEL_23;
      }

      v103 = 0;
      sub_1D1BAB568(&qword_1EC64BFC0, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
      v56 = v38;
      v43 = v89;
      sub_1D1E68D7C();
      v71 = v33;
      v57 = v38;
      v58 = v78;
      sub_1D1BAB0EC(v57, v78, type metadata accessor for StaticMediaProfile);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFC8, &qword_1D1E9D8A0);
      v45 = swift_allocObject();
      v45[5] = v43;
      v45[6] = sub_1D1BAB568(&qword_1EC64BFD0, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
      v59 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
      sub_1D1BAB154(v58, v59, type metadata accessor for StaticMediaProfile);
      v60 = type metadata accessor for StaticMediaProfile;
      goto LABEL_19;
    }

    v49 = v93;
    if (v106 == 4)
    {
      v101 = 0;
      sub_1D1BAB568(&qword_1EC64BFF0, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
      v43 = v87;
      sub_1D1E68D7C();
      v50 = v90;
      v71 = v33;
      v51 = v76;
      sub_1D1BAB0EC(v39, v76, type metadata accessor for StaticActionSet);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFF8, &qword_1D1E9D8B0);
      v45 = swift_allocObject();
      v45[5] = v43;
      v45[6] = sub_1D1BAB568(&qword_1EC64C000, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
      v52 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
      sub_1D1BAB154(v51, v52, type metadata accessor for StaticActionSet);
      v53 = type metadata accessor for StaticActionSet;
    }

    else
    {
      v102 = 0;
      sub_1D1BAB568(&qword_1EC64BFD8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
      v39 = v80;
      v43 = v86;
      sub_1D1E68D7C();
      v50 = v90;
      v71 = v33;
      v61 = v77;
      sub_1D1BAB0EC(v39, v77, type metadata accessor for StaticMediaSystem);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BFE0, &qword_1D1E9D8A8);
      v45 = swift_allocObject();
      v45[5] = v43;
      v45[6] = sub_1D1BAB568(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
      v62 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
      sub_1D1BAB154(v61, v62, type metadata accessor for StaticMediaSystem);
      v53 = type metadata accessor for StaticMediaSystem;
    }
  }

  else
  {
    if (v106 <= 1u)
    {
      v71 = v33;
      if (!v106)
      {
        v97 = 0;
        sub_1D1BAB568(&qword_1EC644758, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
        v42 = v36;
        v43 = v95;
        sub_1D1E68D7C();
        v44 = v72;
        sub_1D1BAB0EC(v42, v72, type metadata accessor for StaticAccessory);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C028, &qword_1D1E9D8D0);
        v45 = swift_allocObject();
        v45[5] = v43;
        v45[6] = sub_1D1BAB568(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
        v46 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
        sub_1D1BAB154(v44, v46, type metadata accessor for StaticAccessory);
        v47 = type metadata accessor for StaticAccessory;
        v48 = v42;
LABEL_20:
        sub_1D1BAB278(v48, v47);
        goto LABEL_22;
      }

      v98[0] = 0;
      sub_1D1BAB568(&qword_1EC644750, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v56 = v37;
      v43 = v81;
      sub_1D1E68D7C();
      v64 = v37;
      v65 = v73;
      sub_1D1BAB0EC(v64, v73, type metadata accessor for StaticService);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C020, &qword_1D1E9D8C8);
      v45 = swift_allocObject();
      v45[5] = v43;
      v45[6] = sub_1D1BAB568(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v66 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
      sub_1D1BAB154(v65, v66, type metadata accessor for StaticService);
      v60 = type metadata accessor for StaticService;
LABEL_19:
      v47 = v60;
      v48 = v56;
      goto LABEL_20;
    }

    if (v106 == 2)
    {
      v99 = 0;
      sub_1D1BAB568(&qword_1EC644748, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v39 = v82;
      v43 = v83;
      sub_1D1E68D7C();
      v50 = v90;
      v49 = v93;
      v71 = v33;
      v54 = v74;
      sub_1D1BAB0EC(v39, v74, type metadata accessor for StaticServiceGroup);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C018, &qword_1D1E9D8C0);
      v45 = swift_allocObject();
      v45[5] = v43;
      v45[6] = sub_1D1BAB568(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v55 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
      sub_1D1BAB154(v54, v55, type metadata accessor for StaticServiceGroup);
      v53 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v100 = 0;
      sub_1D1BAB568(&qword_1EC64B9C0, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
      v39 = v84;
      v43 = v85;
      sub_1D1E68D7C();
      v50 = v90;
      v49 = v93;
      v71 = v33;
      v67 = v75;
      sub_1D1BAB0EC(v39, v75, type metadata accessor for StaticCameraProfile);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C008, &qword_1D1E9D8B8);
      v45 = swift_allocObject();
      v45[5] = v43;
      v45[6] = sub_1D1BAB568(&qword_1EC64C010, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
      v68 = __swift_allocate_boxed_opaque_existential_1(v45 + 2);
      sub_1D1BAB154(v67, v68, type metadata accessor for StaticCameraProfile);
      v53 = type metadata accessor for StaticCameraProfile;
    }
  }

  sub_1D1BAB278(v39, v53);
LABEL_23:
  (*(v49 + 8))(v71, v31);
  *v50 = v45;
  v50[1] = v43;
  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t AnyTileInfoBearer.encode(to:)(void *a1)
{
  v2 = v1;
  v72 = type metadata accessor for StaticMatterDevice(0);
  v4 = MEMORY[0x1EEE9AC00](v72);
  v69 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v68 - v6;
  v75 = type metadata accessor for StaticMediaProfile(0);
  v7 = MEMORY[0x1EEE9AC00](v75);
  v71 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v68 - v9;
  v78 = type metadata accessor for StaticMediaSystem(0);
  v10 = MEMORY[0x1EEE9AC00](v78);
  v74 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v76 = &v68 - v12;
  v81 = type metadata accessor for StaticActionSet(0);
  v13 = MEMORY[0x1EEE9AC00](v81);
  v77 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v68 - v15;
  v84 = type metadata accessor for StaticCameraProfile(0);
  v16 = MEMORY[0x1EEE9AC00](v84);
  v80 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v68 - v18;
  v87 = type metadata accessor for StaticServiceGroup(0);
  v19 = MEMORY[0x1EEE9AC00](v87);
  v83 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v68 - v21;
  v22 = type metadata accessor for StaticService(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v86 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v88 = &v68 - v25;
  v26 = type metadata accessor for StaticAccessory(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v89 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v68 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C030, &unk_1D1E9D8D8);
  v91 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v68 - v32;
  v34 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v68 = sub_1D1BAB044();
  sub_1D1E6930C();
  v35 = v34;
  sub_1D17419CC(v34 + 16, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (!swift_dynamicCast())
  {
    v38 = v90;
    v89 = v33;
    v39 = v31;
    v40 = v88;
    if (swift_dynamicCast())
    {
      v41 = v40;
      v42 = v86;
      sub_1D1BAB154(v41, v86, type metadata accessor for StaticService);
      LOBYTE(v92) = 1;
      v95 = 1;
      sub_1D1BAB1BC();
      v43 = v89;
      sub_1D1E68F1C();
      if (!v38)
      {
        LOBYTE(v92) = 0;
        sub_1D1BAB568(&qword_1EC6446F8, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
        sub_1D1E68F1C();
      }

      v44 = type metadata accessor for StaticService;
    }

    else
    {
      v45 = v85;
      if (swift_dynamicCast())
      {
        v46 = v45;
        v42 = v83;
        sub_1D1BAB154(v46, v83, type metadata accessor for StaticServiceGroup);
        LOBYTE(v92) = 2;
        v95 = 1;
        sub_1D1BAB1BC();
        v43 = v89;
        sub_1D1E68F1C();
        if (!v38)
        {
          LOBYTE(v92) = 0;
          sub_1D1BAB568(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
          sub_1D1E68F1C();
        }

        v44 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v47 = v82;
        if (swift_dynamicCast())
        {
          v48 = v47;
          v42 = v80;
          sub_1D1BAB154(v48, v80, type metadata accessor for StaticCameraProfile);
          LOBYTE(v92) = 3;
          v95 = 1;
          sub_1D1BAB1BC();
          v43 = v89;
          sub_1D1E68F1C();
          if (!v38)
          {
            LOBYTE(v92) = 0;
            sub_1D1BAB568(&qword_1EC64B9C8, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
            sub_1D1E68F1C();
          }

          v44 = type metadata accessor for StaticCameraProfile;
        }

        else
        {
          v49 = v79;
          if (swift_dynamicCast())
          {
            v50 = v49;
            v42 = v77;
            sub_1D1BAB154(v50, v77, type metadata accessor for StaticActionSet);
            LOBYTE(v92) = 4;
            v95 = 1;
            sub_1D1BAB1BC();
            v43 = v89;
            sub_1D1E68F1C();
            if (!v38)
            {
              LOBYTE(v92) = 0;
              sub_1D1BAB568(&qword_1EC64C060, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
              sub_1D1E68F1C();
            }

            v44 = type metadata accessor for StaticActionSet;
          }

          else
          {
            v51 = v76;
            if (swift_dynamicCast())
            {
              v52 = v51;
              v42 = v74;
              sub_1D1BAB154(v52, v74, type metadata accessor for StaticMediaSystem);
              LOBYTE(v92) = 5;
              v95 = 1;
              sub_1D1BAB1BC();
              v43 = v89;
              sub_1D1E68F1C();
              if (!v38)
              {
                LOBYTE(v92) = 0;
                sub_1D1BAB568(&qword_1EC64C058, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
                sub_1D1E68F1C();
              }

              v44 = type metadata accessor for StaticMediaSystem;
            }

            else
            {
              v53 = v73;
              if (swift_dynamicCast())
              {
                v54 = v53;
                v42 = v71;
                sub_1D1BAB154(v54, v71, type metadata accessor for StaticMediaProfile);
                LOBYTE(v92) = 6;
                v95 = 1;
                sub_1D1BAB1BC();
                v43 = v89;
                sub_1D1E68F1C();
                if (!v38)
                {
                  LOBYTE(v92) = 0;
                  sub_1D1BAB568(&qword_1EC64C050, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
                  sub_1D1E68F1C();
                }

                v44 = type metadata accessor for StaticMediaProfile;
              }

              else
              {
                v55 = v70;
                if (!swift_dynamicCast())
                {
                  v60 = sub_1D1E6890C();
                  swift_allocError();
                  v62 = v61;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C038, &qword_1D1E9D8E8);
                  v63 = *(v35 + 40);
                  v64 = __swift_project_boxed_opaque_existential_1((v35 + 16), v63);
                  v62[3] = v63;
                  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v62);
                  (*(*(v63 - 8) + 16))(boxed_opaque_existential_1, v64, v63);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C040, &qword_1D1E9D8F0);
                  v66 = swift_allocObject();
                  *(v66 + 16) = xmmword_1D1E739C0;
                  v67 = v68;
                  *(v66 + 56) = &type metadata for AnyTileInfoBearer.TileKeys;
                  *(v66 + 64) = v67;
                  *(v66 + 32) = 0;
                  v92 = 0;
                  v93 = 0xE000000000000000;
                  sub_1D1E6884C();
                  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC5F30);
                  __swift_project_boxed_opaque_existential_1((v35 + 16), *(v35 + 40));
                  sub_1D1E6901C();
                  sub_1D1E688DC();
                  (*(*(v60 - 8) + 104))(v62, *MEMORY[0x1E69E6B30], v60);
                  swift_willThrow();
                  v57 = *(v91 + 8);
                  v58 = v89;
                  goto LABEL_34;
                }

                v56 = v55;
                v42 = v69;
                sub_1D1BAB154(v56, v69, type metadata accessor for StaticMatterDevice);
                LOBYTE(v92) = 7;
                v95 = 1;
                sub_1D1BAB1BC();
                v43 = v89;
                sub_1D1E68F1C();
                if (!v38)
                {
                  LOBYTE(v92) = 0;
                  sub_1D1BAB568(&qword_1EC649210, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
                  sub_1D1E68F1C();
                }

                v44 = type metadata accessor for StaticMatterDevice;
              }
            }
          }
        }
      }
    }

    sub_1D1BAB278(v42, v44);
    v57 = *(v91 + 8);
    v58 = v43;
LABEL_34:
    v57(v58, v39);
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  v36 = v89;
  sub_1D1BAB154(v30, v89, type metadata accessor for StaticAccessory);
  LOBYTE(v92) = 0;
  v95 = 1;
  sub_1D1BAB1BC();
  v37 = v90;
  sub_1D1E68F1C();
  if (!v37)
  {
    LOBYTE(v92) = 0;
    sub_1D1BAB568(&qword_1EC644708, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    sub_1D1E68F1C();
  }

  sub_1D1BAB278(v36, type metadata accessor for StaticAccessory);
  (*(v91 + 8))(v33, v31);
  return __swift_destroy_boxed_opaque_existential_1(v94);
}

uint64_t AnyTileInfoBearer.unwrap<A>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D17419CC(*v2 + 16, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v5 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v5 ^ 1u, 1, a1);
}

uint64_t AnyTileInfoBearer.id.getter()
{
  sub_1D17419CC(*v0 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D1E6886C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t AnyTileInfoBearer.name.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.dateAdded.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.tileIcon.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 72))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.foregroundColor.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.isDoubleHigh.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.primaryServiceKind.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.displayAsServiceKind.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t AnyTileInfoBearer.isFavorite.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 120))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.shouldShowInDashboard.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.roomIds.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 136))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.roomName.getter()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 144))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t AnyTileInfoBearer.isActivated.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 152))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.isTransitioning.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 160))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.canBeToggled.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 168))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.isReachable.getter()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 176))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t AnyTileInfoBearer.toggle()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA7EBC, 0, 0);
}

uint64_t sub_1D1BA7EBC()
{
  sub_1D17419CC(v0[8] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 200) + **(v2 + 200));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D1BA7FF8;
  v4 = v0[7];

  return v6(v4, v1, v2);
}

uint64_t sub_1D1BA7FF8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BA80F4, 0, 0);
}

uint64_t sub_1D1BA80F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnyTileInfoBearer.set(showInDashboard:)(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA817C, 0, 0);
}

uint64_t sub_1D1BA817C()
{
  sub_1D17419CC(*(v0 + 56) + 16, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v6 = (*(v2 + 208) + **(v2 + 208));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1D1BA82B8;
  v4 = *(v0 + 80);

  return v6(v4, v1, v2);
}

uint64_t sub_1D1BA82B8()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D1BACED0;
  }

  else
  {
    v2 = sub_1D1BACEE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t AnyTileInfoBearer.set(includeInStatus:)(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA83F4, 0, 0);
}

uint64_t sub_1D1BA83F4()
{
  sub_1D17419CC(*(v0 + 56) + 16, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v6 = (*(v2 + 216) + **(v2 + 216));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1D1BA8530;
  v4 = *(v0 + 80);

  return v6(v4, v1, v2);
}

uint64_t sub_1D1BA8530()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D1BA86A8;
  }

  else
  {
    v2 = sub_1D1BA8644;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BA8644()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BA86A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnyTileInfoBearer.analyticsElementType.getter@<X0>(void *a1@<X8>)
{
  sub_1D17419CC(*v1 + 16, v5);
  v3 = v6;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  TileInfoBearer.analyticsElementType.getter(v3, a1);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t AnyTileInfoBearer.statusString(with:)(uint64_t a1)
{
  sub_1D17419CC(*v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 184))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t AnyTileInfoBearer.statusString(with:associatedMatterDevice:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4 - 8];
  v6 = *v1;
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v7);
  sub_1D17419CC(v6 + 16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v9 = type metadata accessor for StaticMatterDevice(0);
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v5, v10 ^ 1u, 1, v9);
  v11 = (*(v8 + 192))(a1, v5, v7, v8);
  sub_1D1BAB210(v5);
  return v11;
}

uint64_t AnyTileInfoBearer.hash(into:)(uint64_t a1)
{
  sub_1D17419CC(*v1 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D1E676EC();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1D1BA89F0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticAccessory(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15[-1] - v11;
  sub_1D17419CC(*v1 + 16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    sub_1D1BAB154(v12, v10, type metadata accessor for StaticAccessory);
    StaticAccessory.primaryStaticService.getter(a1);
    sub_1D1BAB278(v10, type metadata accessor for StaticAccessory);
  }

  else if (swift_dynamicCast())
  {
    sub_1D1BAB154(v6, a1, type metadata accessor for StaticService);
    (*(v4 + 56))(a1, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(a1, 1, 1, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t AnyTileInfoBearer.itemClassName.getter()
{
  sub_1D17419CC(*v0 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return sub_1D1E6940C();
}

uint64_t AnyTileInfoBearer.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D17419CC(v1 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D1E676EC();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA8D04()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA8D88()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA8E04()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 72))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA8E80()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 80))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA8EFC()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA8F78()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA8FF4()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D1BA9070()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 120))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA90EC()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 128))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA9168()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 136))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA91E4()
{
  sub_1D17419CC(*v0 + 16, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 144))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D1BA9268()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 152))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA92E4()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 160))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA9360()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 168))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA93DC()
{
  sub_1D17419CC(*v0 + 16, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 176))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v1 & 1;
}

uint64_t sub_1D1BA9458(uint64_t a1)
{
  sub_1D17419CC(*v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 184))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_1D1BA94E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4 - 8];
  v6 = *v1;
  v7 = *(*v1 + 40);
  v8 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v7);
  sub_1D17419CC(v6 + 16, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v9 = type metadata accessor for StaticMatterDevice(0);
  v10 = swift_dynamicCast();
  (*(*(v9 - 8) + 56))(v5, v10 ^ 1u, 1, v9);
  v11 = (*(v8 + 192))(a1, v5, v7, v8);
  sub_1D1BAB210(v5);
  return v11;
}

uint64_t sub_1D1BA9644(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA9668, 0, 0);
}

uint64_t sub_1D1BA9668()
{
  sub_1D17419CC(v0[8] + 16, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v6 = (*(v2 + 200) + **(v2 + 200));
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1D1BA97A4;
  v4 = v0[7];

  return v6(v4, v1, v2);
}

uint64_t sub_1D1BA97A4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1BACEE8, 0, 0);
}

uint64_t sub_1D1BA98A0(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA817C, 0, 0);
}

uint64_t sub_1D1BA98C8(char a1)
{
  *(v2 + 80) = a1;
  *(v2 + 56) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA98F0, 0, 0);
}

uint64_t sub_1D1BA98F0()
{
  sub_1D17419CC(*(v0 + 56) + 16, v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v6 = (*(v2 + 216) + **(v2 + 216));
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1D1BA82B8;
  v4 = *(v0 + 80);

  return v6(v4, v1, v2);
}

uint64_t sub_1D1BA9A2C()
{
  sub_1D17419CC(*v0 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D1E6886C();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_1D1BA9A9C()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D17419CC(v1 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D1E676EC();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA9B18(uint64_t a1)
{
  sub_1D17419CC(*v1 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D1E676EC();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1D1BA9B84(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D17419CC(v2 + 16, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1D1E676EC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return sub_1D1E6926C();
}

unint64_t AnyTileInfoBearer.description.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v24[0] = 0;
  v24[1] = 0xE000000000000000;
  sub_1D1E6884C();

  v27 = 0xD000000000000018;
  v28 = 0x80000001D1EC5F50;
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_1D1E6886C();
  sub_1D1BAB568(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v6 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v6);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  sub_1D17419CC(v5 + 16, v24);
  v7 = v25;
  v8 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v9 = (*(v8 + 56))(v7, v8);
  v11 = v10;
  __swift_destroy_boxed_opaque_existential_1(v24);
  v12 = sub_1D17C966C(16, v9, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = MEMORY[0x1D3890F10](v12, v14, v16, v18);
  v21 = v20;

  MEMORY[0x1D3890F70](v19, v21);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return v27;
}

uint64_t AnyTileInfoBearer.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v96 = &v93 - v2;
  v3 = type metadata accessor for StatusStrings.Options(0);
  v4 = (v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v107 = 0;
  *(&v107 + 1) = 0xE000000000000000;
  sub_1D1E6884C();
  v112 = v107;
  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC5F70);
  v93 = "AnyTileInfoBearer: room: ";
  v94 = ",\n    statusString: ";
  v95 = *v0;
  v11 = v95;
  sub_1D17419CC(v95 + 16, &v107);
  v12 = *(&v108 + 1);
  v13 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v14 = (*(v13 + 144))(v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0x6E776F6E6B6E75;
  }

  if (!v16)
  {
    v16 = 0xE700000000000000;
  }

  MEMORY[0x1D3890F70](v17, v16);

  MEMORY[0x1D3890F70](0x203A6469202CLL, 0xE600000000000000);
  __swift_project_boxed_opaque_existential_1(v11 + 2, v11[5]);
  sub_1D1E6886C();
  sub_1D1BAB568(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v18 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v18);

  (*(v8 + 8))(v10, v7);
  MEMORY[0x1D3890F70](0x203A656D616E202CLL, 0xE800000000000000);
  sub_1D17419CC((v11 + 2), &v107);
  v19 = *(&v108 + 1);
  v20 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  v21 = (*(v20 + 56))(v19, v20);
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(&v107);
  MEMORY[0x1D3890F70](v21, v23);

  MEMORY[0x1D3890F70](0xD000000000000014, v93 | 0x8000000000000000);
  v24 = v4[13];
  v25 = sub_1D1E669FC();
  (*(*(v25 - 8) + 56))(&v6[v24], 1, 1, v25);
  *v6 = 65793;
  *(v6 + 2) = 1;
  v6[6] = 0;
  v6[v4[14]] = 2;
  v26 = &v6[v4[15]];
  v26[4] = 0;
  *v26 = 2;
  v27 = v11[5];
  v28 = v11[6];
  __swift_project_boxed_opaque_existential_1(v11 + 2, v27);
  sub_1D17419CC((v11 + 2), &v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v29 = type metadata accessor for StaticMatterDevice(0);
  v30 = v96;
  v31 = swift_dynamicCast();
  (*(*(v29 - 8) + 56))(v30, v31 ^ 1u, 1, v29);
  v32 = (*(v28 + 192))(v6, v30, v27, v28);
  v34 = v33;
  sub_1D1BAB278(v6, type metadata accessor for StatusStrings.Options);
  sub_1D1BAB210(v30);
  if (v34)
  {
    v35 = v32;
  }

  else
  {
    v35 = 7104878;
  }

  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v35, v36);

  MEMORY[0x1D3890F70](0xD000000000000016, v94 | 0x8000000000000000);
  v107 = v95;
  v37 = AnyTileInfoBearer.description.getter();
  MEMORY[0x1D3890F70](v37);

  v96 = 0xD000000000000010;
  MEMORY[0x1D3890F70]();
  sub_1D17419CC((v11 + 2), &v107);
  v38 = *(&v108 + 1);
  v39 = v109;
  __swift_project_boxed_opaque_existential_1(&v107, *(&v108 + 1));
  (*(v39 + 72))(&v102, v38, v39);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v109 = v104;
  v110 = v105;
  v111[0] = v106[0];
  *(v111 + 9) = *(v106 + 9);
  v107 = v102;
  v108 = v103;
  v99 = v104;
  v100 = v105;
  v101[0] = v106[0];
  *(v101 + 9) = *(v106 + 9);
  v97 = v102;
  v98 = v103;
  sub_1D1E68ABC();
  sub_1D18A98A0(&v107);
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC5FF0);
  sub_1D17419CC((v11 + 2), &v102);
  v40 = *(&v103 + 1);
  v41 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v42 = (*(v41 + 88))(v40, v41);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (v42)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v42)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v43, v44);

  MEMORY[0x1D3890F70](0x636165527369202CLL, 0xEF203A656C626168);
  sub_1D17419CC((v11 + 2), &v102);
  v45 = *(&v103 + 1);
  v46 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v47 = (*(v46 + 176))(v45, v46);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (v47)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v48, v49);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC6010);
  sub_1D17419CC((v11 + 2), &v102);
  v50 = *(&v103 + 1);
  v51 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v52 = (*(v51 + 96))(v50, v51);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  v53 = *(v52 + 16);
  if (v53)
  {
    *&v102 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v53, 0);
    v54 = 32;
    v55 = v102;
    do
    {
      LOBYTE(v97) = *(v52 + v54);
      v56 = ServiceKind.localizedDescription.getter();
      *&v102 = v55;
      v59 = *(v55 + 16);
      v58 = *(v55 + 24);
      if (v59 >= v58 >> 1)
      {
        *&v95 = v56;
        v61 = v57;
        sub_1D178CD24((v58 > 1), v59 + 1, 1);
        v57 = v61;
        v56 = v95;
        v55 = v102;
      }

      *(v55 + 16) = v59 + 1;
      v60 = v55 + 16 * v59;
      *(v60 + 32) = v56;
      *(v60 + 40) = v57;
      ++v54;
      --v53;
    }

    while (v53);
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
  }

  *&v102 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v62 = sub_1D1E6770C();
  v64 = v63;

  MEMORY[0x1D3890F70](v62, v64);

  MEMORY[0x1D3890F70](0x6F72202020200A2CLL, 0xEF203A7364496D6FLL);
  sub_1D17419CC((v11 + 2), &v102);
  v65 = *(&v103 + 1);
  v66 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v67 = (*(v66 + 136))(v65, v66);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  v68 = sub_1D1BA4314(v67);

  *&v102 = v68;
  v69 = sub_1D1E6770C();
  v71 = v70;

  MEMORY[0x1D3890F70](v69, v71);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EC6030);
  sub_1D17419CC((v11 + 2), &v102);
  v72 = *(&v103 + 1);
  v73 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v74 = (*(v73 + 120))(v72, v73);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (v74)
  {
    v75 = 1702195828;
  }

  else
  {
    v75 = 0x65736C6166;
  }

  if (v74)
  {
    v76 = 0xE400000000000000;
  }

  else
  {
    v76 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v75, v76);

  MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC6050);
  sub_1D17419CC((v11 + 2), &v102);
  v77 = *(&v103 + 1);
  v78 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v79 = (*(v78 + 128))(v77, v78);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (v79)
  {
    v80 = 1702195828;
  }

  else
  {
    v80 = 0x65736C6166;
  }

  if (v79)
  {
    v81 = 0xE400000000000000;
  }

  else
  {
    v81 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v80, v81);

  MEMORY[0x1D3890F70](v96, 0x80000001D1EC6070);
  sub_1D17419CC((v11 + 2), &v102);
  v82 = *(&v103 + 1);
  v83 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v84 = (*(v83 + 168))(v82, v83);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (v84)
  {
    v85 = 1702195828;
  }

  else
  {
    v85 = 0x65736C6166;
  }

  if (v84)
  {
    v86 = 0xE400000000000000;
  }

  else
  {
    v86 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v85, v86);

  MEMORY[0x1D3890F70](0x697463417369202CLL, 0xEF203A6465746176);
  sub_1D17419CC((v11 + 2), &v102);
  v87 = *(&v103 + 1);
  v88 = v104;
  __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
  v89 = (*(v88 + 152))(v87, v88);
  __swift_destroy_boxed_opaque_existential_1(&v102);
  if (v89)
  {
    v90 = 1702195828;
  }

  else
  {
    v90 = 0x65736C6166;
  }

  if (v89)
  {
    v91 = 0xE400000000000000;
  }

  else
  {
    v91 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v90, v91);

  return v112;
}

uint64_t sub_1D1BAAAD4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  sub_1D17419CC(*v2 + 16, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v5 = a1(0);
  v6 = swift_dynamicCast();
  return (*(*(v5 - 8) + 56))(a2, v6 ^ 1u, 1, v5);
}

uint64_t AnyTileInfoBearer.deepLinkURL(with:isForWidget:requiresHomeMembership:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), *(*v1 + 40));
  sub_1D1E6886C();
  v7 = sub_1D1E66A1C();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v17 = 0;
  v18 = 0xE000000000000000;
  MEMORY[0x1D3890F70](47, 0xE100000000000000);
  v21 = 1;
  sub_1D1E68ABC();
  v10 = v17;
  v11 = v18;
  v17 = v7;
  v18 = v9;

  MEMORY[0x1D3890F70](v10, v11);

  v12 = v17;
  v13 = v18;
  v17 = 0x726F737365636361;
  v18 = 0xE900000000000079;
  v19 = v12;
  v20 = v13;
  DeepLinkURLGenerator.generateDeepLink()(a1);

  v14 = sub_1D1E6680C();
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

uint64_t _s13HomeDataModel17AnyTileInfoBearerV2eeoiySbAC_ACtFZ_0(void *a1, uint64_t *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  if (a1[1] == a2[1])
  {
    v12 = *a2;
    __swift_project_boxed_opaque_existential_1((*a1 + 16), *(*a1 + 40));
    sub_1D1E6886C();
    __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
    sub_1D1E6886C();
    v11 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v13 = *(v5 + 8);
    v13(v8, v4);
    v13(v10, v4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t *sub_1D1BAAF38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - v5;
  (*(v4 + 16))(&v10 - v5);
  v7 = *(v2 + 104);
  v1[5] = v3;
  v1[6] = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v4 + 32))(boxed_opaque_existential_1, v6, v3);
  return v1;
}

unint64_t sub_1D1BAB044()
{
  result = qword_1EC64BFA8;
  if (!qword_1EC64BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BFA8);
  }

  return result;
}

unint64_t sub_1D1BAB098()
{
  result = qword_1EC64BFB0;
  if (!qword_1EC64BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BFB0);
  }

  return result;
}

uint64_t sub_1D1BAB0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1BAB154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1BAB1BC()
{
  result = qword_1EC64C048;
  if (!qword_1EC64C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C048);
  }

  return result;
}

uint64_t sub_1D1BAB210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1BAB278(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1BAB2D8(void *a1)
{
  a1[1] = sub_1D1BAB328();
  a1[2] = sub_1D1BAB37C();
  a1[3] = sub_1D1BAB3D0();
  a1[4] = sub_1D1BAB424();
  a1[5] = sub_1D1BAB478();
  result = sub_1D1BAB4CC();
  a1[6] = result;
  return result;
}

unint64_t sub_1D1BAB328()
{
  result = qword_1EC64C068;
  if (!qword_1EC64C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C068);
  }

  return result;
}

unint64_t sub_1D1BAB37C()
{
  result = qword_1EC64C070;
  if (!qword_1EC64C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C070);
  }

  return result;
}

unint64_t sub_1D1BAB3D0()
{
  result = qword_1EC64C078;
  if (!qword_1EC64C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C078);
  }

  return result;
}

unint64_t sub_1D1BAB424()
{
  result = qword_1EC64C080;
  if (!qword_1EC64C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C080);
  }

  return result;
}

unint64_t sub_1D1BAB478()
{
  result = qword_1EC64C088;
  if (!qword_1EC64C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C088);
  }

  return result;
}

unint64_t sub_1D1BAB4CC()
{
  result = qword_1EC64C090;
  if (!qword_1EC64C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C090);
  }

  return result;
}

uint64_t sub_1D1BAB568(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1BAB5B4()
{
  result = qword_1EC64C098[0];
  if (!qword_1EC64C098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64C098);
  }

  return result;
}

unint64_t sub_1D1BAB6B0()
{
  result = qword_1EC64C120;
  if (!qword_1EC64C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C120);
  }

  return result;
}

unint64_t sub_1D1BAB708()
{
  result = qword_1EC64C128;
  if (!qword_1EC64C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C128);
  }

  return result;
}

unint64_t sub_1D1BAB760()
{
  result = qword_1EC64C130;
  if (!qword_1EC64C130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C130);
  }

  return result;
}

unint64_t sub_1D1BAB7B8()
{
  result = qword_1EC64C138;
  if (!qword_1EC64C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C138);
  }

  return result;
}

uint64_t sub_1D1BAB80C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4765636976726573 && a2 == 0xEC00000070756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72506172656D6163 && a2 == 0xED0000656C69666FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65536E6F69746361 && a2 == 0xE900000000000074 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x737953616964656DLL && a2 == 0xEB000000006D6574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F7250616964656DLL && a2 == 0xEC000000656C6966 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x634172657474616DLL && a2 == 0xEF79726F73736563)
  {

    return 7;
  }

  else
  {
    v5 = sub_1D1E6904C();

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

uint64_t sub_1D1BABACC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C140, &qword_1D1E9DD00);
  v63 = *(v2 - 8);
  v64 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C148, &qword_1D1E9DD08);
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C150, &qword_1D1E9DD10);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v69 = v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C158, &qword_1D1E9DD18);
  v9 = *(v8 - 8);
  v57 = v8;
  v58 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v68 = v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C160, &qword_1D1E9DD20);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v67 = v47 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C168, &qword_1D1E9DD28);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v65 = v47 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C170, &qword_1D1E9DD30);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v14 = v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C178, &qword_1D1E9DD38);
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C180, &unk_1D1E9DD40);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v47 - v20;
  v22 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D1BAC4C4();
  v23 = v71;
  sub_1D1E692FC();
  if (!v23)
  {
    v48 = v17;
    v47[1] = v15;
    v49 = v14;
    v25 = v67;
    v24 = v68;
    v26 = v69;
    v27 = v70;
    v71 = v19;
    v28 = sub_1D1E68DDC();
    v29 = (2 * *(v28 + 16)) | 1;
    v73 = v28;
    v74 = v28 + 32;
    v75 = 0;
    v76 = v29;
    v30 = sub_1D18085D4();
    v31 = v21;
    if (v30 != 8 && v75 == v76 >> 1)
    {
      v19 = v30;
      if (v30 > 3u)
      {
        if (v30 > 5u)
        {
          v43 = v71;
          if (v30 == 6)
          {
            v78 = 6;
            sub_1D1BAC56C();
            sub_1D1E68C4C();
            (*(v61 + 8))(v27, v62);
          }

          else
          {
            v78 = 7;
            sub_1D1BAC518();
            v46 = v66;
            sub_1D1E68C4C();
            (*(v63 + 8))(v46, v64);
          }

          (*(v43 + 8))(v31, v18);
          goto LABEL_27;
        }

        v32 = v71;
        if (v30 == 4)
        {
          v78 = 4;
          sub_1D1BAC614();
          sub_1D1E68C4C();
          (*(v58 + 8))(v24, v57);
LABEL_25:
          (*(v32 + 8))(v31, v18);
LABEL_27:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v72);
          return v19;
        }

        v78 = 5;
        sub_1D1BAC5C0();
        sub_1D1E68C4C();
        v45 = v60;
        v34 = *(v59 + 8);
        v35 = v26;
      }

      else
      {
        if (v30 > 1u)
        {
          if (v30 == 2)
          {
            v78 = 2;
            sub_1D1BAC6BC();
            v42 = v65;
            sub_1D1E68C4C();
            (*(v53 + 8))(v42, v54);
          }

          else
          {
            v78 = 3;
            sub_1D1BAC668();
            sub_1D1E68C4C();
            (*(v55 + 8))(v25, v56);
          }

          v32 = v71;
          goto LABEL_25;
        }

        v32 = v71;
        if (v30)
        {
          v78 = 1;
          sub_1D1BAC710();
          v44 = v49;
          sub_1D1E68C4C();
          v34 = *(v51 + 8);
          v35 = v44;
          v36 = &v79;
        }

        else
        {
          v78 = 0;
          sub_1D1BAC764();
          v33 = v48;
          sub_1D1E68C4C();
          v34 = *(v50 + 8);
          v35 = v33;
          v36 = &v77;
        }

        v45 = *(v36 - 32);
      }

      v34(v35, v45);
      goto LABEL_25;
    }

    v37 = v18;
    v38 = sub_1D1E688EC();
    swift_allocError();
    v40 = v39;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0) + 48);
    *v40 = &type metadata for AnyTileInfoBearer.TileInfoTypes;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v71 + 8))(v31, v37);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v72);
  return v19;
}

unint64_t sub_1D1BAC4C4()
{
  result = qword_1EC64C188;
  if (!qword_1EC64C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C188);
  }

  return result;
}

unint64_t sub_1D1BAC518()
{
  result = qword_1EC64C190;
  if (!qword_1EC64C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C190);
  }

  return result;
}

unint64_t sub_1D1BAC56C()
{
  result = qword_1EC64C198;
  if (!qword_1EC64C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C198);
  }

  return result;
}

unint64_t sub_1D1BAC5C0()
{
  result = qword_1EC64C1A0;
  if (!qword_1EC64C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1A0);
  }

  return result;
}

unint64_t sub_1D1BAC614()
{
  result = qword_1EC64C1A8;
  if (!qword_1EC64C1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1A8);
  }

  return result;
}

unint64_t sub_1D1BAC668()
{
  result = qword_1EC64C1B0;
  if (!qword_1EC64C1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1B0);
  }

  return result;
}

unint64_t sub_1D1BAC6BC()
{
  result = qword_1EC64C1B8;
  if (!qword_1EC64C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1B8);
  }

  return result;
}

unint64_t sub_1D1BAC710()
{
  result = qword_1EC64C1C0;
  if (!qword_1EC64C1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1C0);
  }

  return result;
}

unint64_t sub_1D1BAC764()
{
  result = qword_1EC64C1C8;
  if (!qword_1EC64C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C1C8);
  }

  return result;
}

unint64_t sub_1D1BAC84C()
{
  result = qword_1EC64C218;
  if (!qword_1EC64C218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C218);
  }

  return result;
}

unint64_t sub_1D1BAC8A4()
{
  result = qword_1EC64C220;
  if (!qword_1EC64C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C220);
  }

  return result;
}

unint64_t sub_1D1BAC8FC()
{
  result = qword_1EC64C228;
  if (!qword_1EC64C228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C228);
  }

  return result;
}

unint64_t sub_1D1BAC954()
{
  result = qword_1EC64C230;
  if (!qword_1EC64C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C230);
  }

  return result;
}

unint64_t sub_1D1BAC9AC()
{
  result = qword_1EC64C238;
  if (!qword_1EC64C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C238);
  }

  return result;
}

unint64_t sub_1D1BACA04()
{
  result = qword_1EC64C240;
  if (!qword_1EC64C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C240);
  }

  return result;
}

unint64_t sub_1D1BACA5C()
{
  result = qword_1EC64C248;
  if (!qword_1EC64C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C248);
  }

  return result;
}

unint64_t sub_1D1BACAB4()
{
  result = qword_1EC64C250;
  if (!qword_1EC64C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C250);
  }

  return result;
}

unint64_t sub_1D1BACB0C()
{
  result = qword_1EC64C258;
  if (!qword_1EC64C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C258);
  }

  return result;
}

unint64_t sub_1D1BACB64()
{
  result = qword_1EC64C260;
  if (!qword_1EC64C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C260);
  }

  return result;
}

unint64_t sub_1D1BACBBC()
{
  result = qword_1EC64C268;
  if (!qword_1EC64C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C268);
  }

  return result;
}

unint64_t sub_1D1BACC14()
{
  result = qword_1EC64C270;
  if (!qword_1EC64C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C270);
  }

  return result;
}

unint64_t sub_1D1BACC6C()
{
  result = qword_1EC64C278;
  if (!qword_1EC64C278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C278);
  }

  return result;
}

unint64_t sub_1D1BACCC4()
{
  result = qword_1EC64C280;
  if (!qword_1EC64C280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C280);
  }

  return result;
}

unint64_t sub_1D1BACD1C()
{
  result = qword_1EC64C288;
  if (!qword_1EC64C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C288);
  }

  return result;
}

unint64_t sub_1D1BACD74()
{
  result = qword_1EC64C290;
  if (!qword_1EC64C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C290);
  }

  return result;
}

unint64_t sub_1D1BACDCC()
{
  result = qword_1EC64C298;
  if (!qword_1EC64C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C298);
  }

  return result;
}

unint64_t sub_1D1BACE24()
{
  result = qword_1EC64C2A0;
  if (!qword_1EC64C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C2A0);
  }

  return result;
}

unint64_t sub_1D1BACE7C()
{
  result = qword_1EC64C2A8;
  if (!qword_1EC64C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C2A8);
  }

  return result;
}

void sub_1D1BACEEC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78);
    sub_1D1BCBD88();
    sub_1D1E681BC();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1D1E6877C() || (sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78), swift_dynamicCast(), v13 = v23, v4 = v9, v5 = v10, !v23))
      {
LABEL_24:
        sub_1D1716918(v1);
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    SymptomError.init(from:)([v13 type], &v23);

    v14 = v23;
    v9 = v4;
    v10 = v5;
    if (v23 != 24)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D177F964(0, *(v17 + 2) + 1, 1, v17);
      }

      v16 = *(v17 + 2);
      v15 = *(v17 + 3);
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1D177F964((v15 > 1), v16 + 1, 1, v17);
      }

      *(v17 + 2) = v16 + 1;
      v17[v16 + 32] = v14;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t StaticAccessory.accessory.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9A43C, 0, 0);
}

uint64_t StaticAccessory.primaryStaticService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v10 + 88), v5, &qword_1EC642590, qword_1D1E71260);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = *(v1 + *(v10 + 80));
    if (*(v11 + 16))
    {

      v12 = sub_1D1742188();
      if (v13)
      {
        v14 = v12;
        v15 = *(v11 + 56);
        v16 = type metadata accessor for StaticService(0);
        v17 = *(v16 - 8);
        sub_1D1BC8E68(v15 + *(v17 + 72) * v14, a1, type metadata accessor for StaticService);
        (*(v7 + 8))(v9, v6);

        return (*(v17 + 56))(a1, 0, 1, v16);
      }
    }

    (*(v7 + 8))(v9, v6);
  }

  v19 = type metadata accessor for StaticService(0);
  return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
}

uint64_t StaticAccessory.set(displayName:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = swift_task_alloc();
  v2[20] = v3;
  *v3 = v2;
  v3[1] = sub_1D1BAD5AC;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAD5AC(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAD6AC, 0, 0);
}

uint64_t sub_1D1BAD6AC()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = sub_1D1E677EC();
    v0[22] = v2;
    v0[2] = v0;
    v0[3] = sub_1D1BAD83C;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_48;
    v0[14] = v3;
    [v1 updateName:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D1BAD83C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1D1BADB48;
  }

  else
  {
    v2 = sub_1D1BAD94C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BAD94C()
{
  sub_1D1E67E1C();
  *(v0 + 192) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BAD9E8, v2, v1);
}

uint64_t sub_1D1BAD9E8()
{
  v1 = *(v0 + 168);

  sub_1D18B4A8C(v1);
  *(v0 + 200) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BADA80, 0, 0);
}

uint64_t sub_1D1BADA80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BADAE4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BADB48(uint64_t a1)
{
  v2 = v1[22];
  v3 = v1[21];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t StaticAccessory.set(staticRoom:)()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BADC64;

  return StaticRoom.room.getter();
}

uint64_t sub_1D1BADC64(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BADD64, 0, 0);
}

uint64_t sub_1D1BADD64()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1D1BADE64;

    return StaticAccessory.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D1BADE64()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1D1BADFDC;
  }

  else
  {
    v2 = sub_1D1BADF78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BADF78()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BADFDC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticAccessory.set(room:)(uint64_t a1)
{
  *(v1 + 144) = a1;
  v2 = swift_task_alloc();
  *(v1 + 152) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BAE0D0;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAE0D0(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE1D0, 0, 0);
}

uint64_t sub_1D1BAE1D0()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = [*(v0 + 160) home];
    *(v0 + 168) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 144);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1BAE38C;
      v5 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_10_0;
      *(v0 + 112) = v5;
      [v3 assignAccessory:v1 toRoom:v4 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }
  }

  sub_1D1820D0C();
  swift_allocError();
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1BAE38C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D1BAE6A0;
  }

  else
  {
    v2 = sub_1D1BAE49C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1BAE49C()
{
  sub_1D1E67E1C();
  *(v0 + 184) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE530, v2, v1);
}

uint64_t sub_1D1BAE530()
{
  v1 = v0[20];
  v2 = v0[18];

  sub_1D18B4DB8(v1, v2);
  v0[24] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE5D0, 0, 0);
}

uint64_t sub_1D1BAE5D0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BAE638()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1BAE6A0(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t StaticAccessory.set(showInDashboard:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BAE7A8;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAE7A8(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAE8A8, 0, 0);
}

uint64_t sub_1D1BAE8A8()
{
  if (*(v0 + 24))
  {
    HMAccessory.shouldShowInDashboard.setter(*(v0 + 48));
    sub_1D1E67E1C();
    *(v0 + 32) = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BAE9B0, v2, v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1BAE9B0()
{
  v1 = *(v0 + 24);

  sub_1D18B50F8(v1);
  *(v0 + 40) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BCBE60, 0, 0);
}

uint64_t StaticAccessory.set(favorite:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BAEAD4;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BAEAD4(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAEBD4, 0, 0);
}

uint64_t sub_1D1BAEBD4()
{
  if (*(v0 + 24))
  {
    HMAccessory.isFavorite.setter(*(v0 + 48));
    sub_1D1E67E1C();
    *(v0 + 32) = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BAE9B0, v2, v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

void *StaticAccessory.staticServices.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 84));
  v4 = v0;
  return sub_1D17868B8(sub_1D1820ECC, &v3, v1);
}

uint64_t StaticAccessory.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3[5] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BAEE68, 0, 0);
}

uint64_t sub_1D1BAEE68()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v4 + *(v5 + 88), v3, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[9];
    sub_1D1741A30(v0[5], &qword_1EC642590, qword_1D1E71260);
    v7 = type metadata accessor for StaticService(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[9];
LABEL_10:
    sub_1D1741A30(v8, &qword_1EC6436F0, &qword_1D1E99BC0);

    v20 = v0[1];

    return v20();
  }

  v9 = v0[4];
  (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
  v10 = *(v9 + *(v5 + 80));
  if (*(v10 + 16))
  {

    v11 = sub_1D1742188();
    v13 = v0[8];
    v12 = v0[9];
    v14 = v0[6];
    v15 = v0[7];
    if (v16)
    {
      v17 = v11;
      v23 = *(v10 + 56);
      v18 = type metadata accessor for StaticService(0);
      v19 = *(v18 - 8);
      sub_1D1BC8E68(v23 + *(v19 + 72) * v17, v12, type metadata accessor for StaticService);
      (*(v15 + 8))(v13, v14);

      (*(v19 + 56))(v12, 0, 1, v18);
      goto LABEL_9;
    }

    (*(v15 + 8))(v13, v14);
  }

  else
  {
    v12 = v0[9];
    (*(v0[7] + 8))(v0[8], v0[6]);
  }

  v18 = type metadata accessor for StaticService(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
LABEL_9:
  v8 = v0[9];
  type metadata accessor for StaticService(0);
  if ((*(*(v18 - 8) + 48))(v8, 1, v18) == 1)
  {
    goto LABEL_10;
  }

  v22 = swift_task_alloc();
  v0[10] = v22;
  *v22 = v0;
  v22[1] = sub_1D1BAF224;

  return StaticService.service.getter();
}

uint64_t sub_1D1BAF224(uint64_t a1)
{
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BAF324, 0, 0);
}

uint64_t sub_1D1BAF324()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = v0[2];
    v3 = v0[3];

    v4 = v1;
    HMService.customIconSFSymbol.setter(v2, v3);
  }

  sub_1D1BC9194(v0[9], type metadata accessor for StaticService);

  v5 = v0[1];

  return v5();
}

BOOL StaticAccessory.SpecialMediaCategory.isAppleTVOrHomePod.getter()
{
  v1 = *(v0 + 8);
  v3 = v1 == 3 && *v0 == 1;
  if (v1 == 2)
  {
    v3 = (*v0 >> 8) & 1;
  }

  return v1 == 1 || v3;
}

uint64_t StaticAccessory.SpecialMediaCategory.includeInSpeakersAndTelevisions.getter()
{
  if (!*(v0 + 8))
  {
    return 0;
  }

  if (*(v0 + 8) == 2)
  {
    return *(v0 + 1) & 1;
  }

  return 1;
}

uint64_t StaticAccessory.primaryServiceKind.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v13 + 88), v5, &qword_1EC642590, qword_1D1E71260);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    v14 = type metadata accessor for StaticService(0);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    goto LABEL_9;
  }

  (*(v7 + 32))(v9, v5, v6);
  v15 = *(v1 + *(v13 + 80));
  if (*(v15 + 16))
  {

    v16 = sub_1D1742188();
    if (v17)
    {
      v18 = v16;
      v19 = *(v15 + 56);
      v20 = type metadata accessor for StaticService(0);
      v21 = *(v20 - 8);
      v26 = a1;
      v22 = v21;
      sub_1D1BC8E68(v19 + *(v21 + 72) * v18, v12, type metadata accessor for StaticService);
      (*(v7 + 8))(v9, v6);

      (*(v22 + 56))(v12, 0, 1, v20);
      a1 = v26;
      goto LABEL_8;
    }
  }

  (*(v7 + 8))(v9, v6);
  v20 = type metadata accessor for StaticService(0);
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
LABEL_8:
  type metadata accessor for StaticService(0);
  if ((*(*(v20 - 8) + 48))(v12, 1, v20) != 1)
  {
    v24 = v12[*(v20 + 104)];
    result = sub_1D1BC9194(v12, type metadata accessor for StaticService);
    goto LABEL_11;
  }

LABEL_9:
  result = sub_1D1741A30(v12, &qword_1EC6436F0, &qword_1D1E99BC0);
  v24 = 0;
LABEL_11:
  *a1 = v24;
  return result;
}

uint64_t StaticAccessory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticAccessory.lastSeenBatteryStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticAccessory(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t StaticAccessory.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 28));

  return v1;
}

uint64_t StaticAccessory.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticAccessory(0) + 48);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double StaticAccessory.roomIds.getter()
{
  type metadata accessor for StaticAccessory(0);

  return result;
}

uint64_t StaticAccessory.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 56));

  return v1;
}

double StaticAccessory.staticServicesDictionary.getter()
{
  type metadata accessor for StaticAccessory(0);

  return result;
}

double StaticAccessory.staticServiceIDs.getter()
{
  type metadata accessor for StaticAccessory(0);

  return result;
}

uint64_t StaticAccessory.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticAccessory(0) + 92);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D18EB144(v4, v5);
}

uint64_t StaticAccessory.accessoryCategory.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 96));

  return v1;
}

double StaticAccessory.bridgedAccessoryIds.getter()
{
  type metadata accessor for StaticAccessory(0);

  return result;
}

uint64_t StaticAccessory.homeNonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticAccessory(0);
  *a1 = *(v1 + *(result + 128));
  return result;
}

double StaticAccessory.symptoms.getter()
{
  type metadata accessor for StaticAccessory(0);

  return result;
}

uint64_t StaticAccessory.matterDevice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StaticAccessory(0) + 152);

  return sub_1D1BC8EF0(a1, v3);
}

unint64_t sub_1D1BB0070(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6565537473616CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
    case 17:
    case 18:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x654D656369766564;
      break;
    case 6:
      result = 0x6564644165746164;
      break;
    case 7:
      result = 0x656C62756F447369;
      break;
    case 8:
      result = 0x6449656D6F68;
      break;
    case 9:
      result = 0x7364496D6F6F72;
      break;
    case 10:
      result = 0x656D614E6D6F6F72;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x69726F7661467369;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
    case 33:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000018;
      break;
    case 19:
    case 31:
      result = 0xD000000000000014;
      break;
    case 20:
    case 23:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
      result = 0x72427341776F6873;
      break;
    case 24:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0x537265776F507369;
      break;
    case 26:
      result = 0x6572617774666F73;
      break;
    case 27:
      result = 0x6168636165527369;
      break;
    case 28:
      result = 0xD000000000000015;
      break;
    case 29:
      result = 0x736D6F74706D7973;
      break;
    case 30:
      result = 0x7374726F70707573;
      break;
    case 32:
      result = 0x6F4E72657474616DLL;
      break;
    case 34:
      result = 0x654472657474616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1BB041C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1BCAFC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1BB0450(uint64_t a1)
{
  v2 = sub_1D1BC8F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB048C(uint64_t a1)
{
  v2 = sub_1D1BC8F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAccessory.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C310, &unk_1D1E9E540);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BC8F60();
  sub_1D1E6930C();
  LOBYTE(v18) = 0;
  sub_1D1E66A7C();
  sub_1D1BC8FB4(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v17 = v6;
  v15 = type metadata accessor for StaticAccessory(0);
  LOBYTE(v18) = 1;
  sub_1D1E669FC();
  sub_1D1BC8FB4(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v16 = v3;
  sub_1D1E68E5C();
  v10 = v15;
  LOBYTE(v18) = *(v16 + v15[6]);
  v20 = 2;
  sub_1D1BC8FFC();
  sub_1D1E68E5C();
  LOBYTE(v18) = 3;
  sub_1D1E68ECC();
  v14 = v10[8];
  LOBYTE(v18) = 4;
  type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  sub_1D1BC8FB4(&qword_1EC64C328, type metadata accessor for StaticAccessory.DeviceIdentifier, &protocol conformance descriptor for StaticAccessory.DeviceIdentifier);
  sub_1D1E68F1C();
  v14 = v10[9];
  LOBYTE(v18) = 5;
  type metadata accessor for StaticDeviceMetadata(0);
  sub_1D1BC8FB4(&qword_1EC644648, type metadata accessor for StaticDeviceMetadata, &protocol conformance descriptor for StaticDeviceMetadata);
  sub_1D1E68E5C();
  LOBYTE(v18) = 6;
  sub_1D1E68E5C();
  v11 = v16;
  LOBYTE(v18) = 7;
  sub_1D1E68EDC();
  LOBYTE(v18) = 8;
  sub_1D1E68F1C();
  v18 = *(v11 + v10[13]);
  v20 = 9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  sub_1D1BC92B0(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
  sub_1D1E68F1C();
  LOBYTE(v18) = 10;
  sub_1D1E68E0C();
  LOBYTE(v18) = 11;
  sub_1D1E68EDC();
  LOBYTE(v18) = 12;
  sub_1D1E68EDC();
  LOBYTE(v18) = 13;
  sub_1D1E68EDC();
  LOBYTE(v18) = 14;
  sub_1D1E68EDC();
  LOBYTE(v18) = 15;
  sub_1D1E68EDC();
  v18 = *(v16 + v15[20]);
  v20 = 16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  sub_1D1B43D98();
  sub_1D1E68F1C();
  v18 = *(v16 + v15[21]);
  v20 = 17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  sub_1D1BC9050(&qword_1EC644D58, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
  sub_1D1E68F1C();
  LOBYTE(v18) = 18;
  sub_1D1E68E5C();
  v12 = v16 + v15[23];
  v13 = *(v12 + 8);
  v18 = *v12;
  v19 = v13;
  v20 = 19;
  sub_1D18EB144(v18, v13);
  sub_1D18F1630();
  sub_1D1E68E5C();
  sub_1D18EB2D8(v18, v19);
  LOBYTE(v18) = 20;
  sub_1D1E68E0C();
  v18 = *(v16 + v15[25]);
  v20 = 21;
  sub_1D1E68E5C();
  LOBYTE(v18) = 22;
  sub_1D1E68EDC();
  LOBYTE(v18) = 23;
  sub_1D1E68EDC();
  LOBYTE(v18) = 24;
  sub_1D1E68EDC();
  LOBYTE(v18) = 25;
  sub_1D1E68EDC();
  LOBYTE(v18) = 26;
  type metadata accessor for StaticSoftwareUpdate(0);
  sub_1D1BC8FB4(&qword_1EC64C330, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate);
  sub_1D1E68E5C();
  LOBYTE(v18) = 27;
  sub_1D1E68EDC();
  LOBYTE(v18) = *(v16 + v15[32]);
  v20 = 28;
  sub_1D1BC90EC();
  sub_1D1E68F1C();
  v18 = *(v16 + v15[33]);
  v20 = 29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550);
  sub_1D1BC93A0(&qword_1EC64C348, sub_1D1BC9140, MEMORY[0x1E69E64F0]);
  sub_1D1E68E5C();
  LOBYTE(v18) = 30;
  sub_1D1E68EDC();
  LOBYTE(v18) = 31;
  sub_1D1E68EDC();
  LOBYTE(v18) = 32;
  sub_1D1E68EBC();
  LOBYTE(v18) = 33;
  sub_1D1E68EDC();
  LOBYTE(v18) = 34;
  type metadata accessor for StaticMatterDevice(0);
  sub_1D1BC8FB4(&qword_1EC649210, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
  sub_1D1E68E5C();
  return (*(v17 + 8))(v8, v5);
}

uint64_t StaticAccessory.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMatterDevice(0);
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = &v85 - v7;
  v8 = type metadata accessor for StaticSoftwareUpdate(0);
  v101 = *(v8 - 8);
  v102 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v85 - v13;
  v14 = type metadata accessor for StaticDeviceMetadata(0);
  v96 = *(v14 - 8);
  v97 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v85 - v17;
  v18 = sub_1D1E66A7C();
  v108 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v111 = &v85 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v106 = &v85 - v24;
  v90 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v90);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D1E669FC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v93 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v85 - v34;
  v109 = sub_1D1BC8FB4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v110 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + v110[5], v35, &qword_1EC642570, &qword_1D1E6C6A0);
  v36 = *(v28 + 48);
  v92 = v28 + 48;
  v91 = v36;
  v37 = v36(v35, 1, v27);
  v89 = v21;
  v98 = v27;
  v95 = v30;
  if (v37 == 1)
  {
    v38 = v28;
    sub_1D1E6922C();
  }

  else
  {
    (*(v28 + 32))(v30, v35, v27);
    sub_1D1E6922C();
    sub_1D1BC8FB4(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    v38 = v28;
    (*(v28 + 8))(v30, v27);
  }

  v39 = v110;
  v40 = v106;
  if (*(v1 + v110[6]) == 2)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  v41 = v38;
  sub_1D1E678EC();
  sub_1D1BC8E68(v1 + v39[8], v26, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = v108;
    (*(v108 + 32))(v40, v26, v18);
    MEMORY[0x1D3892850](1);
    sub_1D1E676EC();
    (*(v42 + 8))(v40, v18);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    v39 = v110;
    sub_1D1E678EC();
  }

  v44 = v96;
  v43 = v97;
  v46 = v94;
  v45 = v95;
  sub_1D1741C08(v2 + v39[9], v94, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v44 + 48))(v46, 1, v43) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v47 = v86;
    sub_1D1BC91F4(v46, v86, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)(a1);
    sub_1D1BC9194(v47, type metadata accessor for StaticDeviceMetadata);
  }

  v48 = v98;
  v49 = v93;
  sub_1D1741C08(v2 + v39[10], v93, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v91(v49, 1, v48) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v41 + 32))(v45, v49, v48);
    sub_1D1E6922C();
    sub_1D1BC8FB4(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v41 + 8))(v45, v48);
  }

  sub_1D1E6922C();
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v2 + v39[13]));
  if (*(v2 + v39[14] + 8))
  {
    sub_1D1E6922C();
    v39 = v110;
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D18599F4(a1, *(v2 + v39[20]));
  v50 = v39[21];
  v107 = v2;
  v51 = *(v2 + v50);
  MEMORY[0x1D3892850](*(v51 + 16));
  v52 = *(v51 + 16);
  v53 = v111;
  if (v52)
  {
    v54 = *(v108 + 16);
    v55 = v51 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v56 = *(v108 + 72);
    v57 = (v108 + 8);
    do
    {
      v54(v53, v55, v18);
      sub_1D1E676EC();
      v53 = v111;
      (*v57)(v111, v18);
      v55 += v56;
      --v52;
    }

    while (v52);
  }

  v58 = v110;
  v59 = v107;
  v60 = v99;
  sub_1D1741C08(v107 + v110[22], v99, &qword_1EC642590, qword_1D1E71260);
  v61 = v108;
  if ((*(v108 + 48))(v60, 1, v18) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v62 = v106;
    (*(v61 + 32))(v106, v60, v18);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v61 + 8))(v62, v18);
  }

  v63 = v59 + v58[23];
  v64 = *(v63 + 8);
  if (v64 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    v112 = *v63;
    v65 = v112;
    v113 = v64;
    sub_1D1E6922C();
    sub_1D1771B4C(v65, v64);
    StaticAccessory.SpecialMediaCategory.hash(into:)(a1);
    v58 = v110;
    sub_1D1771B5C(v65, v64);
  }

  if (*(v59 + v58[24] + 8))
  {
    sub_1D1E6922C();
    v58 = v110;
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v66 = *(v59 + v58[25]);
  if (v66)
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*(v66 + 16));
    v67 = *(v66 + 16);
    v68 = v89;
    v69 = a1;
    if (v67)
    {
      v70 = *(v108 + 16);
      v71 = v66 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
      v72 = *(v108 + 72);
      v73 = (v108 + 8);
      do
      {
        v70(v68, v71, v18);
        sub_1D1E676EC();
        (*v73)(v68, v18);
        v71 += v72;
        --v67;
      }

      while (v67);
    }
  }

  else
  {
    sub_1D1E6922C();
    v69 = a1;
  }

  v74 = v110;
  v75 = v107;
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  v76 = v100;
  sub_1D1741C08(v75 + v74[30], v100, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v101 + 48))(v76, 1, v102) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v77 = v87;
    sub_1D1BC91F4(v76, v87, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1E6922C();
    sub_1D1E676EC();
    StaticSoftwareUpdate.Kind.hash(into:)(v69);
    sub_1D1BC9194(v77, type metadata accessor for StaticSoftwareUpdate);
  }

  v79 = v103;
  v78 = v104;
  sub_1D1E6922C();
  MEMORY[0x1D3892850](*(v75 + v74[32]));
  if (*(v75 + v74[33]))
  {
    sub_1D1E6922C();
    sub_1D1771CBC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  v80 = (v75 + v74[36]);
  if (*(v80 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v81 = *v80;
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v81);
  }

  v82 = v105;
  sub_1D1E6922C();
  sub_1D1741C08(v75 + v74[38], v79, &qword_1EC643650, &qword_1D1E71D40);
  if ((*(v78 + 48))(v79, 1, v82) == 1)
  {
    return sub_1D1E6922C();
  }

  v84 = v88;
  sub_1D1BC91F4(v79, v88, type metadata accessor for StaticMatterDevice);
  sub_1D1E6922C();
  StaticMatterDevice.hash(into:)(v69);
  return sub_1D1BC9194(v84, type metadata accessor for StaticMatterDevice);
}

uint64_t StaticAccessory.hashValue.getter()
{
  sub_1D1E6920C();
  StaticAccessory.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticAccessory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v113 = v105 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v112 = v105 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v111 = v105 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v116 = v105 - v10;
  v118 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v115 = v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v120 = v105 - v15;
  v16 = sub_1D1E66A7C();
  v119 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v121 = v105 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C358, &qword_1D1E9E558);
  v122 = *(v21 - 8);
  v123 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v105 - v22;
  v24 = type metadata accessor for StaticAccessory(0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 152);
  v29 = type metadata accessor for StaticMatterDevice(0);
  v30 = *(*(v29 - 8) + 56);
  v127 = v28;
  v128 = v27;
  v30(&v27[v28], 1, 1, v29);
  v31 = a1[3];
  v126 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1D1BC8F60();
  v124 = v23;
  v32 = v125;
  sub_1D1E692FC();
  if (v32)
  {
    __swift_destroy_boxed_opaque_existential_1(v126);
    v36 = v128;
    return sub_1D1741A30(&v36[v127], &qword_1EC643650, &qword_1D1E71D40);
  }

  v33 = v120;
  v110 = v19;
  v109 = v29;
  v125 = v24;
  LOBYTE(v129) = 0;
  v34 = sub_1D1BC8FB4(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v35 = v121;
  sub_1D1E68D7C();
  v108 = v34;
  v38 = v119 + 32;
  v39 = *(v119 + 32);
  v39(v128, v35, v16);
  sub_1D1E669FC();
  LOBYTE(v129) = 1;
  v40 = sub_1D1BC8FB4(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  v121 = v16;
  v107 = v40;
  v105[1] = v38;
  v106 = v39;
  v41 = v125;
  v42 = v128;
  sub_1D1741A90(v33, &v128[v125[5]], &qword_1EC642570, &qword_1D1E6C6A0);
  v131 = 2;
  sub_1D1BC925C();
  sub_1D1E68CBC();
  v105[0] = 0;
  v42[v41[6]] = v129;
  LOBYTE(v129) = 3;
  v43 = sub_1D1E68D2C();
  v44 = &v42[v41[7]];
  *v44 = v43;
  v44[1] = v45;
  LOBYTE(v129) = 4;
  sub_1D1BC8FB4(&qword_1EC64C368, type metadata accessor for StaticAccessory.DeviceIdentifier, &protocol conformance descriptor for StaticAccessory.DeviceIdentifier);
  v46 = v117;
  sub_1D1E68D7C();
  sub_1D1BC91F4(v46, &v42[v41[8]], type metadata accessor for StaticAccessory.DeviceIdentifier);
  type metadata accessor for StaticDeviceMetadata(0);
  LOBYTE(v129) = 5;
  sub_1D1BC8FB4(&qword_1EC644670, type metadata accessor for StaticDeviceMetadata, &protocol conformance descriptor for StaticDeviceMetadata);
  v47 = v116;
  sub_1D1E68CBC();
  sub_1D1741A90(v47, &v42[v41[9]], &qword_1EC644620, &unk_1D1E75A00);
  LOBYTE(v129) = 6;
  v48 = v115;
  sub_1D1E68CBC();
  sub_1D1741A90(v48, &v42[v41[10]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v129) = 7;
  v128[v125[11]] = sub_1D1E68D3C() & 1;
  LOBYTE(v129) = 8;
  v49 = v110;
  sub_1D1E68D7C();
  v120 = 0;
  v106(&v128[v125[12]], v49, v121);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v131 = 9;
  sub_1D1BC92B0(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  v54 = v120;
  sub_1D1E68D7C();
  v120 = v54;
  if (v54)
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v112) = 0;
    LODWORD(v111) = 0;
    LODWORD(v122) = 0;
    LODWORD(v118) = 0;
    LODWORD(v114) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    goto LABEL_5;
  }

  *&v128[v125[13]] = v129;
  LOBYTE(v129) = 10;
  v55 = v120;
  v56 = sub_1D1E68C6C();
  v120 = v55;
  if (v55)
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v111) = 0;
    LODWORD(v122) = 0;
    LODWORD(v118) = 0;
    LODWORD(v114) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    goto LABEL_5;
  }

  v58 = &v128[v125[14]];
  *v58 = v56;
  v58[1] = v57;
  LOBYTE(v129) = 11;
  v59 = v120;
  v60 = sub_1D1E68D3C();
  v120 = v59;
  if (v59 || (v128[v125[15]] = v60 & 1, LOBYTE(v129) = 12, v61 = v120, v62 = sub_1D1E68D3C(), (v120 = v61) != 0) || (v128[v125[16]] = v62 & 1, LOBYTE(v129) = 13, v63 = v120, v64 = sub_1D1E68D3C(), (v120 = v63) != 0) || (v128[v125[17]] = v64 & 1, LOBYTE(v129) = 14, v65 = v120, v66 = sub_1D1E68D3C(), (v120 = v65) != 0) || (v128[v125[18]] = v66 & 1, LOBYTE(v129) = 15, v67 = v120, v68 = sub_1D1E68D3C(), (v120 = v67) != 0) || (v128[v125[19]] = v68 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0), v131 = 16, sub_1D1B43CAC(), v69 = v120, sub_1D1E68D7C(), (v120 = v69) != 0))
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v122) = 0;
    LODWORD(v118) = 0;
    LODWORD(v114) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    goto LABEL_5;
  }

  *&v128[v125[20]] = v129;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  v131 = 17;
  sub_1D1BC9050(&qword_1EC644DA0, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
  v70 = v120;
  sub_1D1E68D7C();
  v120 = v70;
  if (v70)
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v118) = 0;
    LODWORD(v114) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    goto LABEL_5;
  }

  *&v128[v125[21]] = v129;
  LOBYTE(v129) = 18;
  v71 = v120;
  sub_1D1E68CBC();
  v120 = v71;
  if (v71)
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v114) = 0;
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    LODWORD(v118) = 1;
    goto LABEL_5;
  }

  sub_1D1741A90(v111, &v128[v125[22]], &qword_1EC642590, qword_1D1E71260);
  v131 = 19;
  sub_1D18F18D0();
  v72 = v120;
  sub_1D1E68CBC();
  v120 = v72;
  if (v72)
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v116) = 0;
    LODWORD(v117) = 0;
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    LODWORD(v118) = 1;
    LODWORD(v114) = 1;
    goto LABEL_5;
  }

  v73 = v130;
  v74 = &v128[v125[23]];
  *v74 = v129;
  v74[8] = v73;
  LOBYTE(v129) = 20;
  v75 = v120;
  v76 = sub_1D1E68C6C();
  v120 = v75;
  if (v75)
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v117) = 0;
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    LODWORD(v118) = 1;
    LODWORD(v114) = 1;
    LODWORD(v116) = 1;
    goto LABEL_5;
  }

  v78 = &v128[v125[24]];
  *v78 = v76;
  v78[1] = v77;
  v131 = 21;
  v79 = v120;
  sub_1D1E68CBC();
  v120 = v79;
  if (v79)
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v115) = 0;
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    LODWORD(v118) = 1;
    LODWORD(v114) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    goto LABEL_5;
  }

  *&v128[v125[25]] = v129;
  LOBYTE(v129) = 22;
  v80 = v120;
  v81 = sub_1D1E68D3C();
  v120 = v80;
  if (v80 || (v128[v125[26]] = v81 & 1, LOBYTE(v129) = 23, v82 = v120, v83 = sub_1D1E68D3C(), (v120 = v82) != 0) || (v128[v125[27]] = v83 & 1, LOBYTE(v129) = 24, v84 = v120, v85 = sub_1D1E68D3C(), (v120 = v84) != 0) || (v128[v125[28]] = v85 & 1, LOBYTE(v129) = 25, v86 = v120, v87 = sub_1D1E68D3C(), (v120 = v86) != 0) || (v128[v125[29]] = v87 & 1, type metadata accessor for StaticSoftwareUpdate(0), LOBYTE(v129) = 26, sub_1D1BC8FB4(&qword_1EC64C370, type metadata accessor for StaticSoftwareUpdate, &protocol conformance descriptor for StaticSoftwareUpdate), v88 = v120, sub_1D1E68CBC(), (v120 = v88) != 0))
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v123) = 0;
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    LODWORD(v118) = 1;
    LODWORD(v114) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v115) = 1;
    goto LABEL_5;
  }

  sub_1D1741A90(v112, &v128[v125[30]], &qword_1EC644760, &unk_1D1E9E530);
  LOBYTE(v129) = 27;
  v89 = v120;
  v90 = sub_1D1E68D3C();
  v120 = v89;
  if (v89 || (v128[v125[31]] = v90 & 1, v131 = 28, sub_1D1BC934C(), v91 = v120, sub_1D1E68D7C(), (v120 = v91) != 0) || (v128[v125[32]] = v129, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C340, &qword_1D1E9E550), v131 = 29, sub_1D1BC93A0(&qword_1EC64C380, sub_1D1BC9418, MEMORY[0x1E69E6510]), v92 = v120, sub_1D1E68CBC(), (v120 = v92) != 0))
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v124) = 0;
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    LODWORD(v118) = 1;
    LODWORD(v114) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v115) = 1;
    LODWORD(v123) = 1;
    goto LABEL_5;
  }

  *&v128[v125[33]] = v129;
  LOBYTE(v129) = 30;
  v93 = v120;
  v94 = sub_1D1E68D3C();
  v120 = v93;
  if (v93 || (v128[v125[34]] = v94 & 1, LOBYTE(v129) = 31, v95 = v120, v96 = sub_1D1E68D3C(), (v120 = v95) != 0) || (v128[v125[35]] = v96 & 1, LOBYTE(v129) = 32, v97 = v120, v98 = sub_1D1E68D1C(), (v120 = v97) != 0) || (v100 = &v128[v125[36]], *v100 = v98, v100[8] = v99 & 1, LOBYTE(v129) = 33, v101 = v120, v102 = sub_1D1E68D3C(), (v120 = v101) != 0) || (v128[v125[37]] = v102 & 1, LOBYTE(v129) = 34, sub_1D1BC8FB4(&qword_1EC649240, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice), v103 = v120, sub_1D1E68CBC(), (v120 = v103) != 0))
  {
    (*(v122 + 8))(v124, v123);
    LODWORD(v113) = 1;
    LODWORD(v112) = 1;
    LODWORD(v111) = 1;
    LODWORD(v122) = 1;
    LODWORD(v118) = 1;
    LODWORD(v114) = 1;
    LODWORD(v116) = 1;
    LODWORD(v117) = 1;
    LODWORD(v115) = 1;
    LODWORD(v123) = 1;
    LODWORD(v124) = 1;
LABEL_5:
    v50 = v105[0];
    __swift_destroy_boxed_opaque_existential_1(v126);
    v51 = *(v119 + 8);
    v52 = v128;
    v51(v128, v121);
    if (!v50)
    {
      sub_1D1741A30(&v52[v125[5]], &qword_1EC642570, &qword_1D1E6C6A0);
    }

    v53 = v125;
    v36 = v128;

    sub_1D1BC9194(&v36[v53[8]], type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1741A30(&v36[v53[9]], &qword_1EC644620, &unk_1D1E75A00);
    sub_1D1741A30(&v36[v53[10]], &qword_1EC642570, &qword_1D1E6C6A0);
    if (v113)
    {
      v51(&v36[v53[12]], v121);
      if (v112)
      {
        goto LABEL_21;
      }
    }

    else if (v112)
    {
LABEL_21:

      if ((v111 & 1) == 0)
      {
LABEL_22:
        if (v122)
        {
LABEL_23:

          if ((v118 & 1) == 0)
          {
LABEL_24:
            if (v114)
            {
LABEL_25:
              sub_1D1741A30(&v36[v53[22]], &qword_1EC642590, qword_1D1E71260);
              if ((v116 & 1) == 0)
              {
LABEL_26:
                if (v117)
                {
LABEL_27:

                  if ((v115 & 1) == 0)
                  {
LABEL_28:
                    if (v123)
                    {
LABEL_29:
                      sub_1D1741A30(&v36[v53[30]], &qword_1EC644760, &unk_1D1E9E530);
                      if (v124)
                      {
LABEL_30:
                      }

                      return sub_1D1741A30(&v36[v127], &qword_1EC643650, &qword_1D1E71D40);
                    }

LABEL_17:
                    if (v124)
                    {
                      goto LABEL_30;
                    }

                    return sub_1D1741A30(&v36[v127], &qword_1EC643650, &qword_1D1E71D40);
                  }

LABEL_16:

                  if (v123)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_17;
                }

LABEL_15:
                if (!v115)
                {
                  goto LABEL_28;
                }

                goto LABEL_16;
              }

LABEL_14:
              sub_1D18EB2D8(*&v36[v53[23]], v36[v53[23] + 8]);
              if (v117)
              {
                goto LABEL_27;
              }

              goto LABEL_15;
            }

LABEL_13:
            if (!v116)
            {
              goto LABEL_26;
            }

            goto LABEL_14;
          }

LABEL_12:

          if (v114)
          {
            goto LABEL_25;
          }

          goto LABEL_13;
        }

LABEL_11:
        if (!v118)
        {
          goto LABEL_24;
        }

        goto LABEL_12;
      }

LABEL_10:

      if (v122)
      {
        goto LABEL_23;
      }

      goto LABEL_11;
    }

    if (!v111)
    {
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  (*(v122 + 8))(v124, v123);
  v104 = v128;
  sub_1D1BC8EF0(v113, &v128[v127]);
  sub_1D1BC8E68(v104, v114, type metadata accessor for StaticAccessory);
  __swift_destroy_boxed_opaque_existential_1(v126);
  return sub_1D1BC9194(v104, type metadata accessor for StaticAccessory);
}

uint64_t sub_1D1BB39B8()
{
  sub_1D1E6920C();
  StaticAccessory.hash(into:)(v1);
  return sub_1D1E6926C();
}

double StaticAccessory.tileIcon.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  sub_1D1BB3C88(&v26);
  v5 = v27;
  if (v27)
  {
    *a1 = v26;
    *(a1 + 8) = v5;
    v6 = v31[0];
    *(a1 + 48) = v30;
    *(a1 + 64) = v6;
    *(a1 + 73) = *(v31 + 9);
    v7 = v29;
    *(a1 + 16) = v28;
    *(a1 + 32) = v7;
  }

  else
  {
    StaticAccessory.primaryStaticService.getter(v4);
    v8 = type metadata accessor for StaticService(0);
    if ((*(*(v8 - 1) + 48))(v4, 1, v8) == 1)
    {
      sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
      if (qword_1EC642238 != -1)
      {
        swift_once();
      }

      v9 = *&qword_1EC646788;
      v24[2] = *&qword_1EC646788;
      v24[3] = xmmword_1EC646798;
      v10 = xmmword_1EC6467A8;
      v25[0] = xmmword_1EC6467A8;
      v11 = *(&xmmword_1EC6467A8 + 9);
      *(v25 + 9) = *(&xmmword_1EC6467A8 + 9);
      v12 = xmmword_1EC646768;
      v13 = xmmword_1EC646778;
      v24[0] = xmmword_1EC646768;
      v24[1] = xmmword_1EC646778;
      *(a1 + 48) = xmmword_1EC646798;
      *(a1 + 64) = v10;
      *(a1 + 16) = v13;
      *(a1 + 32) = v9;
      *(a1 + 73) = v11;
      *a1 = v12;
      sub_1D18A9844(v24, v23);
    }

    else
    {
      v14 = &v4[v8[25]];
      v15 = v14[1];
      if (v15)
      {
        v16 = *v14;

        v17._countAndFlagsBits = v16;
        v17._object = v15;
        Icon.init(customIconName:)(&v22, v17);
      }

      else
      {
        v18 = v4[v8[28]];
        if (v18 == 53)
        {
          LOBYTE(v18) = v4[v8[26]];
        }

        LOBYTE(v24[0]) = v18;
        v23[0] = v4[v8[27]];
        Icon.init(serviceKind:serviceSubKind:)(&v22, v24, v23);
      }

      sub_1D1BC9194(v4, type metadata accessor for StaticService);
      name = v22.accessoryControlOnStateIconInfo.name;
      *(a1 + 32) = *&v22.tileOffStateIconInfo.name._object;
      *(a1 + 48) = name;
      *(a1 + 64) = *&v22.accessoryControlOnStateIconInfo.renderingMode;
      *(a1 + 73) = *(&v22.accessoryControlOffStateIconInfo.name + 1);
      *&v7 = v22.tileOnStateIconInfo.name._countAndFlagsBits;
      v20 = *&v22.tileOnStateIconInfo.renderingMode;
      *a1 = v22.tileOnStateIconInfo.name;
      *(a1 + 16) = v20;
    }
  }

  return *&v7;
}

double sub_1D1BB3C88@<D0>(uint64_t a1@<X8>)
{
  if (!StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    goto LABEL_10;
  }

  v3 = type metadata accessor for StaticAccessory(0);
  if (*(v1 + *(v3 + 112)) != 1)
  {
    if (*(v1 + *(v3 + 116)) == 1)
    {
      StaticAccessory.isActivated.getter();
      v4 = 0x80000001D1EB6020;
      v7 = (StaticAccessory.isActivated.getter() & 1) == 0;
      v6 = 0xD000000000000016;
      *a1 = 0xD000000000000016;
      *(a1 + 8) = 0x80000001D1EB6020;
      goto LABEL_6;
    }

LABEL_10:
    result = 0.0;
    *(a1 + 73) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  StaticAccessory.isActivated.getter();
  v4 = 0x80000001D1EB5BB0;
  v5 = StaticAccessory.isActivated.getter();
  v6 = 0xD00000000000001ALL;
  *a1 = 0xD00000000000001ALL;
  *(a1 + 8) = 0x80000001D1EB5BB0;
  v7 = (v5 & 1) == 0;
LABEL_6:
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 2;
  }

  *(a1 + 16) = v8;
  *(a1 + 24) = v6;
  *(a1 + 32) = v4;
  *(a1 + 40) = v8;
  *(a1 + 48) = v6;
  *(a1 + 56) = v4;
  *(a1 + 64) = v8;
  *(a1 + 72) = v6;
  *(a1 + 80) = v4;
  *(a1 + 88) = v8;
  swift_bridgeObjectRetain_n();
  return result;
}

uint64_t StaticAccessory.isActivated.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27[-v10];
  StaticAccessory.primaryStaticService.getter(&v27[-v10]);
  v12 = *(v3 + 48);
  if (v12(v11, 1, v2) == 1)
  {
    sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
    v13 = 0;
  }

  else
  {
    v13 = v11[*(v2 + 104)];
    sub_1D1BC9194(v11, type metadata accessor for StaticService);
  }

  v27[15] = v13;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB31F0 == v14)
  {
  }

  else
  {
    v15 = sub_1D1E6904C();

    if ((v15 & 1) == 0)
    {
LABEL_16:
      StaticAccessory.primaryStaticService.getter(v9);
      if (v12(v9, 1, v2) != 1)
      {
        v21 = StaticService.isActivated.getter();
        sub_1D1BC9194(v9, type metadata accessor for StaticService);
        return v21 & 1;
      }

      sub_1D1741A30(v9, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_20:
      v21 = 0;
      return v21 & 1;
    }
  }

  if (!StaticAccessory.allServicesAreTheSameKind.getter())
  {
    goto LABEL_16;
  }

  v16 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v16);
  *&v27[-16] = v1;
  v18 = sub_1D17868B8(sub_1D1823318, &v27[-32], v17);
  v19 = v18;
  v20 = v18[2];
  if (!v20)
  {

    goto LABEL_20;
  }

  v21 = 0;
  v22 = 0;
  v23 = v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v24 = *(v3 + 72);
  v25 = v20 - 1;
  do
  {
    sub_1D1BC8E68(v23, v5, type metadata accessor for StaticService);
    if (v21)
    {
      result = sub_1D1BC9194(v5, type metadata accessor for StaticService);
      if (v25 == v22)
      {

        v21 = 1;
        return v21 & 1;
      }

      v21 = 1;
    }

    else
    {
      v21 = StaticService.isActivated.getter();
      result = sub_1D1BC9194(v5, type metadata accessor for StaticService);
      if (v25 == v22)
      {

        return v21 & 1;
      }
    }

    ++v22;
    v23 += v24;
  }

  while (v22 < v19[2]);
  __break(1u);
  return result;
}

uint64_t StaticAccessory.toggle()(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1BB4200, 0, 0);
}

uint64_t sub_1D1BB4200()
{
  if (StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    goto LABEL_7;
  }

  v1 = *(v0 + 80);
  StaticAccessory.primaryStaticService.getter(v1);
  v2 = type metadata accessor for StaticService(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 80);
  if (v4 == 1)
  {
    sub_1D1741A30(*(v0 + 80), &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_7:
    v8 = *(v0 + 56);
    goto LABEL_8;
  }

  v6 = StaticService.canBeToggled.getter();
  sub_1D1BC9194(v5, type metadata accessor for StaticService);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v0 + 72);
  StaticAccessory.primaryStaticService.getter(v7);
  if (v3(v7, 1, v2) == 1)
  {
    v8 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 72), &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_8:
    v9 = type metadata accessor for StateSnapshot(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = *(v0 + 8);

    return v10();
  }

  *(v0 + 48) = 2;
  *(v0 + 16) = xmmword_1D1E88490;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1D1BB445C;
  v13 = *(v0 + 56);

  return StaticService.toggle(options:context:)(v13, (v0 + 48), (v0 + 16));
}

uint64_t sub_1D1BB445C()
{
  v1 = *(*v0 + 72);
  v2 = *v0;

  sub_1D1BC9194(v1, type metadata accessor for StaticService);

  v3 = *(v2 + 8);

  return v3();
}

BOOL StaticAccessory.canBeToggled.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  if (!StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    StaticAccessory.primaryStaticService.getter(v2);
    v3 = type metadata accessor for StaticService(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      v4 = StaticService.canBeToggled.getter();
      sub_1D1BC9194(v2, type metadata accessor for StaticService);
      return v4;
    }

    sub_1D1741A30(v2, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  return 0;
}

uint64_t StaticAccessory.foregroundColor.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-v5];
  if (*(v0 + *(type metadata accessor for StaticAccessory(0) + 92) + 8) != 255)
  {
    return sub_1D1E673CC();
  }

  StaticAccessory.primaryStaticService.getter(v6);
  v8 = type metadata accessor for StaticService(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_6;
  }

  v10 = v6[*(v8 + 112)];
  sub_1D1BC9194(v6, type metadata accessor for StaticService);
  if (v10 == 53)
  {
LABEL_6:
    StaticAccessory.primaryStaticService.getter(v4);
    if (v9(v4, 1, v8) == 1)
    {
      sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
      LOBYTE(v10) = 0;
    }

    else
    {
      LOBYTE(v10) = v4[*(v8 + 104)];
      sub_1D1BC9194(v4, type metadata accessor for StaticService);
    }
  }

  v11[15] = v10;
  return ServiceKind.foregroundColor.getter();
}

uint64_t sub_1D1BB48A4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  StaticAccessory.primaryStaticService.getter(&v8 - v3);
  v5 = type metadata accessor for StaticService(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    result = sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    v7 = 0;
  }

  else
  {
    v7 = v4[*(v5 + 104)];
    result = sub_1D1BC9194(v4, type metadata accessor for StaticService);
  }

  *a1 = v7;
  return result;
}

uint64_t StaticAccessory.displayAsServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v15 + 88), v4, &qword_1EC642590, qword_1D1E71260);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    v16 = type metadata accessor for StaticService(0);
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v17 = *(v1 + *(v15 + 80));
    if (*(v17 + 16))
    {
      v28 = v1;

      v18 = sub_1D1742188();
      if (v19)
      {
        v20 = v18;
        v27 = *(v17 + 56);
        v21 = type metadata accessor for StaticService(0);
        v22 = *(v21 - 8);
        sub_1D1BC8E68(v27 + *(v22 + 72) * v20, v14, type metadata accessor for StaticService);
        (*(v6 + 8))(v8, v5);

        (*(v22 + 56))(v14, 0, 1, v21);
      }

      else
      {

        (*(v6 + 8))(v8, v5);
        v21 = type metadata accessor for StaticService(0);
        (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
      }
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v21 = type metadata accessor for StaticService(0);
      (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    }

    type metadata accessor for StaticService(0);
    if ((*(*(v21 - 8) + 48))(v14, 1, v21) != 1)
    {
      v25 = v14[*(v21 + 112)];
      result = sub_1D1BC9194(v14, type metadata accessor for StaticService);
      if (v25 != 53)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  sub_1D1741A30(v14, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_10:
  StaticAccessory.primaryStaticService.getter(v12);
  v23 = type metadata accessor for StaticService(0);
  if ((*(*(v23 - 8) + 48))(v12, 1, v23) == 1)
  {
    result = sub_1D1741A30(v12, &qword_1EC6436F0, &qword_1D1E99BC0);
    LOBYTE(v25) = 0;
  }

  else
  {
    LOBYTE(v25) = v12[*(v23 + 104)];
    result = sub_1D1BC9194(v12, type metadata accessor for StaticService);
  }

LABEL_14:
  *v29 = v25;
  return result;
}

uint64_t sub_1D1BB4EF0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

uint64_t sub_1D1BB4F28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  StaticAccessory.primaryStaticService.getter(&v6 - v1);
  v3 = type metadata accessor for StaticService(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_1D1741A30(v2, &qword_1EC6436F0, &qword_1D1E99BC0);
    v4 = 0;
  }

  else
  {
    v4 = StaticService.isTransitioning.getter();
    sub_1D1BC9194(v2, type metadata accessor for StaticService);
  }

  return v4 & 1;
}

uint64_t StaticAccessory.isTransitioning.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v0 + *(v11 + 88), v3, &qword_1EC642590, qword_1D1E71260);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);
    v12 = type metadata accessor for StaticService(0);
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, v3, v4);
  v13 = *(v0 + *(v11 + 80));
  if (*(v13 + 16))
  {

    v14 = sub_1D1742188();
    if (v15)
    {
      v16 = v14;
      v17 = *(v13 + 56);
      v18 = type metadata accessor for StaticService(0);
      v19 = *(v18 - 8);
      sub_1D1BC8E68(v17 + *(v19 + 72) * v16, v10, type metadata accessor for StaticService);
      (*(v5 + 8))(v7, v4);

      (*(v19 + 56))(v10, 0, 1, v18);
      goto LABEL_8;
    }
  }

  (*(v5 + 8))(v7, v4);
  v18 = type metadata accessor for StaticService(0);
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
LABEL_8:
  type metadata accessor for StaticService(0);
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) != 1)
  {
    v20 = StaticService.isTransitioning.getter();
    sub_1D1BC9194(v10, type metadata accessor for StaticService);
    return v20 & 1;
  }

LABEL_9:
  sub_1D1741A30(v10, &qword_1EC6436F0, &qword_1D1E99BC0);
  v20 = 0;
  return v20 & 1;
}

BOOL sub_1D1BB5420()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  if (!StaticAccessory.hasVisibleServices(minCount:)(2))
  {
    StaticAccessory.primaryStaticService.getter(v2);
    v3 = type metadata accessor for StaticService(0);
    if ((*(*(v3 - 8) + 48))(v2, 1, v3) != 1)
    {
      v4 = StaticService.canBeToggled.getter();
      sub_1D1BC9194(v2, type metadata accessor for StaticService);
      return v4;
    }

    sub_1D1741A30(v2, &qword_1EC6436F0, &qword_1D1E99BC0);
  }

  return 0;
}

uint64_t sub_1D1BB5530(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticAccessory.toggle()(a1);
}

uint64_t sub_1D1BB55C8(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4CF0;

  return StaticAccessory.set(showInDashboard:)(a1);
}

uint64_t sub_1D1BB565C(uint64_t a1)
{
  v2 = a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticAccessory.set(includeInStatus:)(v2);
}

uint64_t StaticAccessory.set(includeInStatus:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1BB5780;

  return StaticAccessory.accessory.getter();
}

uint64_t sub_1D1BB5780(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1BB5880, 0, 0);
}

uint64_t sub_1D1BB5880()
{
  if (*(v0 + 24))
  {
    HMAccessory.contributesToHomeStatus.setter(*(v0 + 48));
    sub_1D1E67E1C();
    *(v0 + 32) = sub_1D1E67E0C();
    v2 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1BB5988, v2, v1);
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1BB5988()
{
  v1 = *(v0 + 24);

  sub_1D18B50F8(v1);
  *(v0 + 40) = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D1BB5A1C, 0, 0);
}

uint64_t sub_1D1BB5A1C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1BB5A80()
{
  v1 = *(v0 + 8);

  return v1();
}

void StaticAccessory.tileStatusStringIconSymbolSuffix.getter()
{
  v33 = type metadata accessor for StaticService(0);
  v1 = *(v33 - 8);
  v2 = MEMORY[0x1EEE9AC00](v33);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for StaticSoftwareUpdate(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticAccessory(0);
  if (*(v0 + v16[31]) & 1) != 0 || (StaticAccessory.isUpdating.getter())
  {
    sub_1D1741C08(v0 + v16[30], v11, &qword_1EC644760, &unk_1D1E9E530);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1D1741A30(v11, &qword_1EC644760, &unk_1D1E9E530);
      v17 = v1;
    }

    else
    {
      sub_1D1BC91F4(v11, v15, type metadata accessor for StaticSoftwareUpdate);
      sub_1D1D2F0C0(&v35);
      v17 = v1;
      if (v35 != 8 && (v35 == 3 || v35 == 5))
      {
        sub_1D1BC9194(v15, type metadata accessor for StaticSoftwareUpdate);
        return;
      }

      sub_1D1BC9194(v15, type metadata accessor for StaticSoftwareUpdate);
    }

    _s13HomeDataModel12SymptomErrorO14tileIconSymbol3forSSSgShyACGSg_tFZ_0(*(v0 + v16[33]));
    if (!v18)
    {
      v19 = *(v0 + v16[20]);
      v20 = 1 << *(v19 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & *(v19 + 64);
      v23 = (v20 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v24 = 0;
      if (v22)
      {
        while (1)
        {
          v25 = v24;
LABEL_18:
          sub_1D1BC8E68(*(v19 + 56) + *(v17 + 72) * (__clz(__rbit64(v22)) | (v25 << 6)), v6, type metadata accessor for StaticService);
          sub_1D1BC91F4(v6, v4, type metadata accessor for StaticService);
          StaticService.tileStatusStringIconSymbolSuffix.getter();
          if (v26)
          {
            break;
          }

          v22 &= v22 - 1;
          sub_1D1BC9194(v4, type metadata accessor for StaticService);
          v24 = v25;
          if (!v22)
          {
            goto LABEL_15;
          }
        }

        v28 = v34;
        sub_1D1BC91F4(v4, v34, type metadata accessor for StaticService);
        v27 = 0;
LABEL_22:
        v29 = *(v17 + 56);
        v30 = v17;
        v31 = v33;
        v29(v28, v27, 1, v33);

        if ((*(v30 + 48))(v28, 1, v31) == 1)
        {
          sub_1D1741A30(v28, &qword_1EC6436F0, &qword_1D1E99BC0);
        }

        else
        {
          StaticService.tileStatusStringIconSymbolSuffix.getter();
          sub_1D1BC9194(v28, type metadata accessor for StaticService);
        }
      }

      else
      {
LABEL_15:
        while (1)
        {
          v25 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v25 >= v23)
          {

            v27 = 1;
            v28 = v34;
            goto LABEL_22;
          }

          v22 = *(v19 + 64 + 8 * v25);
          ++v24;
          if (v22)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t StaticAccessory.isUpdating.getter()
{
  v1 = type metadata accessor for StaticService(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 84));
  v15 = v0;
  result = sub_1D17868B8(sub_1D1823318, v14, v5);
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  while (1)
  {
    v10 = v8;
    if (v9 == v8)
    {
LABEL_5:

      return v9 != v10;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    sub_1D1BC8E68(v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8++, v4, type metadata accessor for StaticService);
    v17 = *&v4[*(v1 + 128)];
    v16 = v4[*(v1 + 104)];

    v11 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    StaticCharacteristicsBag.isUpdating(for:)(v11);
    v13 = v12;

    result = sub_1D1BC9194(v4, type metadata accessor for StaticService);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

BOOL StaticAccessory.hasDetailAttentionMessages.getter()
{
  v1 = type metadata accessor for MatterStateSnapshot(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v33 - v12;
  v14 = v0 + *(type metadata accessor for StaticAccessory(0) + 144);
  if ((*(v14 + 8) & 1) == 0)
  {
    v33[0] = *v14;
    v33[1] = v0;
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE07DC60;
    swift_getKeyPath();
    v33[2] = v15;
    sub_1D1BC8FB4(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    sub_1D1E66CAC();

    v16 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
    swift_beginAccess();
    v17 = *(v15 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1D1742188();
      if (v19)
      {
        sub_1D1BC8E68(*(v17 + 56) + *(v2 + 72) * v18, v7, type metadata accessor for MatterStateSnapshot);
        v20 = 0;
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }

    (*(v2 + 56))(v7, v20, 1, v1);
    if (!(*(v2 + 48))(v7, 1, v1))
    {
      sub_1D1BC8E68(v7, v4, type metadata accessor for MatterStateSnapshot);
      sub_1D1741A30(v7, &unk_1EC64F390, &qword_1D1E92B10);
      v25 = *&v4[*(v1 + 24)];

      sub_1D1BC9194(v4, type metadata accessor for MatterStateSnapshot);
      if (*(v25 + 16) && (v26 = sub_1D17420B0(v33[0]), (v27 & 1) != 0))
      {
        v28 = v26;
        v29 = *(v25 + 56);
        v30 = type metadata accessor for StaticMatterDevice(0);
        v31 = *(v30 - 8);
        sub_1D1BC8E68(v29 + *(v31 + 72) * v28, v11, type metadata accessor for StaticMatterDevice);

        (*(v31 + 56))(v11, 0, 1, v30);
      }

      else
      {

        v32 = type metadata accessor for StaticMatterDevice(0);
        (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
      }

      goto LABEL_13;
    }

    sub_1D1741A30(v7, &unk_1EC64F390, &qword_1D1E92B10);
  }

  v21 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
LABEL_13:
  sub_1D1741A90(v11, v13, &qword_1EC643650, &qword_1D1E71D40);
  v34 = 2;
  sub_1D1BCFA04(&v34, v13);
  v23 = v22;
  sub_1D1741A30(v13, &qword_1EC643650, &qword_1D1E71D40);
  if (v23)
  {
  }

  return v23 != 0;
}

uint64_t sub_1D1BB674C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StaticAccessory(0) + 80));
  if (*(v3 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for StaticService(0);
    v9 = *(v8 - 8);
    sub_1D1BC8E68(v7 + *(v9 + 72) * v6, a2, type metadata accessor for StaticService);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v11 = type metadata accessor for StaticService(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

void StaticAccessory.visibleStaticServices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v35 - v2;
  v39 = type metadata accessor for StaticService(0);
  v42 = *(v39 - 8);
  v3 = MEMORY[0x1EEE9AC00](v39);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v35 - v5;
  v6 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 80));
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v43 = v6;

  v12 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v40 = v11;
  v41 = v7;
  if (v10)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      do
      {
LABEL_9:
        v14 = *(v43 + 56);
        v38 = *(v42 + 72);
        sub_1D1BC8E68(v14 + v38 * (__clz(__rbit64(v10)) | (v12 << 6)), v44, type metadata accessor for StaticService);
        if (qword_1EC642398 != -1)
        {
          swift_once();
        }

        v10 &= v10 - 1;
        v15 = qword_1EC6BE1B0;
        if (!*(qword_1EC6BE1B0 + 16))
        {
          goto LABEL_23;
        }

        v16 = *(v44 + *(v39 + 104));
        sub_1D1E6920C();
        v45 = v16;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v17 = sub_1D1E6926C();
        v18 = -1 << *(v15 + 32);
        v19 = v17 & ~v18;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_23;
        }

        v20 = ~v18;
        while (1)
        {
          LOBYTE(v46[0]) = *(*(v15 + 48) + v19);
          v45 = v16;
          v21 = ServiceKind.rawValue.getter();
          v23 = v22;
          if (v21 == ServiceKind.rawValue.getter() && v23 == v24)
          {
            break;
          }

          v26 = sub_1D1E6904C();

          if (v26)
          {
            goto LABEL_22;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_22:
        v27 = v37;
        sub_1D1741C08(v44 + *(v39 + 116), v37, &qword_1EC642590, qword_1D1E71260);
        v28 = sub_1D1E66A7C();
        v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
        sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
        if (v29 == 1)
        {
          sub_1D1BC91F4(v44, v35, type metadata accessor for StaticService);
          v30 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v47 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D17915E0(0, *(v30 + 16) + 1, 1);
            v30 = v47;
          }

          v33 = *(v30 + 16);
          v32 = *(v30 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_1D17915E0(v32 > 1, v33 + 1, 1);
            v30 = v47;
          }

          *(v30 + 16) = v33 + 1;
          v34 = *(v42 + 80);
          v36 = v30;
          sub_1D1BC91F4(v35, v30 + ((v34 + 32) & ~v34) + v33 * v38, type metadata accessor for StaticService);
        }

        else
        {
LABEL_23:
          sub_1D1BC9194(v44, type metadata accessor for StaticService);
        }

        v11 = v40;
        v7 = v41;
      }

      while (v10);
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall StaticAccessory.hasVisibleServices(minCount:)(Swift::Int minCount)
{
  v27 = minCount;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v28 = &v26 - v3;
  v30 = type metadata accessor for StaticService(0);
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + *(type metadata accessor for StaticAccessory(0) + 84));
  v37 = v1;
  v7 = sub_1D17868B8(sub_1D1823318, v36, v6);
  v34 = v7[2];
  if (!v34)
  {
LABEL_129:

    LOBYTE(v7) = 0;
    return v7;
  }

  v29 = 0;
  v8 = 0;
  v31 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v32 = v7;
  v33 = v4;
  while (v8 < v7[2])
  {
    sub_1D1BC8E68(&v31[*(v4 + 72) * v8], v35, type metadata accessor for StaticService);
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v9 = qword_1EC6BE1B0;
    if (!*(qword_1EC6BE1B0 + 16) || (v10 = *(v35 + *(v30 + 104)), sub_1D1E6920C(), v38 = v10, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v11 = sub_1D1E6926C(), v12 = -1 << *(v9 + 32), v13 = v11 & ~v12, ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0))
    {
LABEL_3:
      sub_1D1BC9194(v35, type metadata accessor for StaticService);
LABEL_4:
      v7 = v32;
      v4 = v33;
      goto LABEL_5;
    }

    v14 = ~v12;
    while (1)
    {
      v15 = "takeSnaphotsWhenBusy";
      switch(*(*(v9 + 48) + v13))
      {
        case 1:
          v16 = "0000003E-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 2:
          v16 = "00000270-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 3:
          v16 = "000000BB-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 4:
          v16 = "0000008D-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 5:
          v16 = "00000096-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 6:
          v16 = "00000042-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 7:
          v16 = "00000110-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 8:
          v16 = "00000204-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 9:
          v16 = "00000097-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xA:
          v16 = "0000007F-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xB:
          v16 = "00000080-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xC:
          v16 = "00000129-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xD:
          v16 = "00000237-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xE:
          v16 = "00000081-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0xF:
          v16 = "00000121-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x10:
          v16 = "00000040-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x11:
          v16 = "000000D7-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x12:
          v16 = "000000BA-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x13:
          v16 = "00000041-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x14:
          v16 = "000000BC-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x15:
          v16 = "000000BD-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x16:
          v16 = "00000082-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x17:
          v16 = "000000D9-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x18:
          v16 = "000000CF-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x19:
          v16 = "000000CC-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1A:
          v16 = "00000083-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1B:
          v16 = "00000084-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1C:
          v16 = "00000043-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1D:
          v16 = "00000044-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1E:
          v16 = "00000045-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x1F:
          v16 = "00000112-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x20:
          v16 = "00000085-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x21:
          v16 = "00000086-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x22:
          v16 = "00000047-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x23:
          v16 = "0000007E-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x24:
          v16 = "000000B9-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x25:
          v16 = "00000087-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x26:
          v16 = "00000113-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x27:
          v16 = "00000088-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x28:
          v16 = "00000089-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x29:
          v16 = "00000049-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2A:
          v16 = "00000125-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2B:
          v16 = "00000122-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2C:
          v16 = "000000D8-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2D:
          v16 = "0000008A-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2E:
          v16 = "0000004A-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x2F:
          v16 = "000000D0-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x30:
          v16 = "000000B7-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x31:
          v16 = "0000020A-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x32:
          v16 = "0000020F-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x33:
          v16 = "0000008B-0000-1000-8000-0026BB765291";
          goto LABEL_65;
        case 0x34:
          v16 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_65:
          v15 = v16 - 32;
          break;
        default:
          break;
      }

      v17 = v15 | 0x8000000000000000;
      v18 = "takeSnaphotsWhenBusy";
      switch(v10)
      {
        case 1:
          v19 = "0000003E-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 2:
          v19 = "00000270-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 3:
          v19 = "000000BB-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 4:
          v19 = "0000008D-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 5:
          v19 = "00000096-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 6:
          v19 = "00000042-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 7:
          v19 = "00000110-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 8:
          v19 = "00000204-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 9:
          v19 = "00000097-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 10:
          v19 = "0000007F-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 11:
          v19 = "00000080-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 12:
          v19 = "00000129-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 13:
          v19 = "00000237-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 14:
          v19 = "00000081-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 15:
          v19 = "00000121-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 16:
          v19 = "00000040-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 17:
          v19 = "000000D7-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 18:
          v19 = "000000BA-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 19:
          v19 = "00000041-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 20:
          v19 = "000000BC-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 21:
          v19 = "000000BD-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 22:
          v19 = "00000082-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 23:
          v19 = "000000D9-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 24:
          v19 = "000000CF-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 25:
          v19 = "000000CC-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 26:
          v19 = "00000083-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 27:
          v19 = "00000084-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 28:
          v19 = "00000043-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 29:
          v19 = "00000044-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 30:
          v19 = "00000045-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 31:
          v19 = "00000112-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 32:
          v19 = "00000085-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 33:
          v19 = "00000086-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 34:
          v19 = "00000047-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 35:
          v19 = "0000007E-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 36:
          v19 = "000000B9-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 37:
          v19 = "00000087-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 38:
          v19 = "00000113-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 39:
          v19 = "00000088-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 40:
          v19 = "00000089-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 41:
          v19 = "00000049-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 42:
          v19 = "00000125-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 43:
          v19 = "00000122-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 44:
          v19 = "000000D8-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 45:
          v19 = "0000008A-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 46:
          v19 = "0000004A-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 47:
          v19 = "000000D0-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 48:
          v19 = "000000B7-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 49:
          v19 = "0000020A-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 50:
          v19 = "0000020F-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 51:
          v19 = "0000008B-0000-1000-8000-0026BB765291";
          goto LABEL_119;
        case 52:
          v19 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_119:
          v18 = v19 - 32;
          break;
        default:
          break;
      }

      if (v17 == (v18 | 0x8000000000000000))
      {
        break;
      }

      v20 = sub_1D1E6904C();

      if (v20)
      {
        goto LABEL_125;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

LABEL_125:
    v21 = v35;
    v22 = v28;
    sub_1D1741C08(v35 + *(v30 + 116), v28, &qword_1EC642590, qword_1D1E71260);
    sub_1D1BC9194(v21, type metadata accessor for StaticService);
    v23 = sub_1D1E66A7C();
    v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
    sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
    if (v24 != 1)
    {
      goto LABEL_4;
    }

    v7 = v32;
    v4 = v33;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_131;
    }

    if (++v29 >= v27)
    {

      LOBYTE(v7) = 1;
      return v7;
    }

LABEL_5:
    if (++v8 == v34)
    {
      goto LABEL_129;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
  return v7;
}

void StaticAccessory.staticServicesExcludingComponents.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v61 = &v51 - v2;
  v3 = &qword_1EC642DB0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4 = MEMORY[0x1EEE9AC00](v64);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v60 = &v51 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = *(v0 + *(type metadata accessor for StaticAccessory(0) + 80));
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v53 = 0x80000001D1EB2DA0;
  v62 = v12;

  v18 = 0;
  v52 = MEMORY[0x1E69E7CC0];
  v56 = v13;
  v57 = v17;
  v58 = v11;
  if (v16)
  {
    while (1)
    {
LABEL_11:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v62;
      v24 = *(v62 + 48);
      v25 = sub_1D1E66A7C();
      v65 = *(v25 - 8);
      (*(v65 + 16))(v11, v24 + *(v65 + 72) * v22, v25);
      v26 = *(v23 + 56);
      v27 = type metadata accessor for StaticService(0);
      v54 = *(v27 - 8);
      v55 = *(v54 + 72);
      v28 = v26 + v55 * v22;
      v29 = v64;
      sub_1D1BC8E68(v28, &v11[*(v64 + 48)], type metadata accessor for StaticService);
      v30 = v11;
      v31 = v59;
      sub_1D1741C08(v30, v59, v3, &unk_1D1E6F360);
      v32 = v31 + *(v29 + 48);
      v63 = v27;
      v33 = v3;
      v34 = v61;
      sub_1D1741C08(v32 + *(v27 + 116), v61, &qword_1EC642590, qword_1D1E71260);
      sub_1D1BC9194(v32, type metadata accessor for StaticService);
      v35 = v65;
      LODWORD(v32) = (*(v65 + 48))(v34, 1, v25);
      v36 = v34;
      v3 = v33;
      sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
      v39 = *(v35 + 8);
      v37 = v35 + 8;
      v38 = v39;
      v40 = v31;
      v11 = v58;
      v39(v40, v25);
      v17 = v57;
      if (v32 != 1)
      {
        goto LABEL_6;
      }

      v65 = v37;
      v41 = v60;
      sub_1D1741C08(v11, v60, v33, &unk_1D1E6F360);
      v42 = v41 + *(v64 + 48);
      v43 = *(v42 + *(v63 + 104));
      sub_1D1BC9194(v42, type metadata accessor for StaticService);
      v66 = v43;
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v53 == v44)
      {

        v38(v60, v25);
        goto LABEL_6;
      }

      v19 = sub_1D1E6904C();

      v38(v60, v25);
      if ((v19 & 1) == 0)
      {
        sub_1D1741C08(v11, v51, v33, &unk_1D1E6F360);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_1D177D048(0, v52[2] + 1, 1, v52);
        }

        v46 = v52[2];
        v45 = v52[3];
        v63 = v46 + 1;
        if (v46 >= v45 >> 1)
        {
          v52 = sub_1D177D048((v45 > 1), v46 + 1, 1, v52);
        }

        v47 = *(v64 + 48);
        sub_1D1741A30(v11, v33, &unk_1D1E6F360);
        v48 = v52;
        v52[2] = v63;
        v49 = v48 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + v46 * v55;
        v50 = v51;
        sub_1D1BC91F4(v51 + v47, v49, type metadata accessor for StaticService);
        v38(v50, v25);
        v13 = v56;
        if (!v16)
        {
          break;
        }
      }

      else
      {
LABEL_6:
        sub_1D1741A30(v11, v33, &unk_1D1E6F360);
        v13 = v56;
        if (!v16)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t StaticAccessory.temperatureStringStatusIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v15 + 88), v7, &qword_1EC642590, qword_1D1E71260);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    (*(v3 + 56))(v14, 1, 1, v2);
LABEL_9:
    result = sub_1D1741A30(v14, &qword_1EC6436F0, &qword_1D1E99BC0);
    v21 = v25;
    v25[1] = 0;
    v21[2] = 0;
    *v21 = 0;
    return result;
  }

  (*(v9 + 32))(v11, v7, v8);
  v16 = *(v1 + *(v15 + 80));
  if (*(v16 + 16))
  {

    v17 = sub_1D1742188();
    if (v18)
    {
      sub_1D1BC8E68(*(v16 + 56) + *(v3 + 72) * v17, v14, type metadata accessor for StaticService);
      (*(v9 + 8))(v11, v8);

      v19 = 0;
      goto LABEL_8;
    }
  }

  (*(v9 + 8))(v11, v8);
  v19 = 1;
LABEL_8:
  (*(v3 + 56))(v14, v19, 1, v2);
  if ((*(v3 + 48))(v14, 1, v2) == 1)
  {
    goto LABEL_9;
  }

  v22 = v24;
  sub_1D1BC8E68(v14, v24, type metadata accessor for StaticService);
  v26 = 1;
  sub_1D18F211C(v22, &v26, v25);
  return sub_1D1BC9194(v14, type metadata accessor for StaticService);
}

uint64_t StaticAccessory.statusIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v31 - v11;
  v13 = type metadata accessor for StaticAccessory(0);
  sub_1D1741C08(v1 + *(v13 + 88), v5, &qword_1EC642590, qword_1D1E71260);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    v14 = type metadata accessor for StaticService(0);
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
LABEL_9:
    result = sub_1D1741A30(v12, &qword_1EC6436F0, &qword_1D1E99BC0);
    v22 = 0;
    v23 = 92;
    v24 = 0x80;
    goto LABEL_16;
  }

  (*(v7 + 32))(v9, v5, v6);
  v15 = *(v1 + *(v13 + 80));
  if (*(v15 + 16))
  {

    v16 = sub_1D1742188();
    if (v17)
    {
      v18 = v16;
      v31 = *(v15 + 56);
      v19 = type metadata accessor for StaticService(0);
      v20 = *(v19 - 1);
      sub_1D1BC8E68(v31 + *(v20 + 72) * v18, v12, type metadata accessor for StaticService);
      (*(v7 + 8))(v9, v6);

      (*(v20 + 56))(v12, 0, 1, v19);
      goto LABEL_8;
    }
  }

  (*(v7 + 8))(v9, v6);
  v19 = type metadata accessor for StaticService(0);
  (*(*(v19 - 1) + 56))(v12, 1, 1, v19);
LABEL_8:
  type metadata accessor for StaticService(0);
  if ((*(*(v19 - 1) + 48))(v12, 1, v19) == 1)
  {
    goto LABEL_9;
  }

  v25 = v12[v19[28]];
  if (v25 == 53)
  {
    v25 = v12[v19[26]];
  }

  v26 = v12[v19[27]];
  v27 = &v12[v19[25]];
  v28 = v27[1];
  v22 = v25 | (v26 << 8);
  if (v28)
  {
    v29 = *v27;

    v30._countAndFlagsBits = v29;
    v30._object = v28;
    IconSymbol.init(rawValue:)(v30);
    v23 = v32;
  }

  else
  {
    v23 = 92;
  }

  result = sub_1D1BC9194(v12, type metadata accessor for StaticService);
  v24 = 0;
LABEL_16:
  *a1 = v22;
  *(a1 + 8) = v24;
  *(a1 + 9) = v23;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t StaticAccessory.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for StaticAccessory(0);
  sub_1D17721A0(*(v1 + *(v6 + 52)), v5);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v5, 1, v7);
  if (result != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1BB8600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1D17721A0(*(v2 + *(a1 + 52)), &v11 - v6);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v7, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a2, v7, v8);
  }

  __break(1u);
  return result;
}

uint64_t StaticAccessory.staticDevice.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1BB872C, 0, 0);
}

uint64_t sub_1D1BB872C()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for StaticAccessory(0) + 144);
  if (*(v2 + 8))
  {
    v3 = v0[2];
    v4 = type metadata accessor for StaticMatterDevice(0);
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *v2;
    v8 = swift_task_alloc();
    v0[4] = v8;
    *v8 = v0;
    v8[1] = sub_1D17D0740;
    v9 = v0[2];

    return static StaticMatterDevice.find(nodeId:)(v9, v7);
  }
}

HomeDataModel::StaticAccessory::HomePodTypes_optional __swiftcall StaticAccessory.HomePodTypes.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StaticAccessory.SpecialMediaCategory.supportsAlarmsAndTimers.getter()
{
  v1 = *(v0 + 8);
  if (v1 != 1)
  {
    if (v1 == 2)
    {
      return *v0 & 1;
    }

    LOBYTE(v1) = 0;
  }

  return v1 & 1;
}

BOOL StaticAccessory.SpecialMediaCategory.supportsMediaPlayer.getter()
{
  v1 = *(v0 + 8);
  if (v1 <= 1)
  {
    return v1 != 0;
  }

  if (v1 == 2)
  {
    return (*v0 >> 8) & 1 | *v0 & 1;
  }

  return 1;
}

BOOL StaticAccessory.SpecialMediaCategory.isTileRepresentable.getter()
{
  if (*(v0 + 8) != 2)
  {
    return 0;
  }

  if (*v0)
  {
    return (*v0 & 0x100) == 0;
  }

  return 0;
}

uint64_t sub_1D1BB89D4(uint64_t a1)
{
  v2 = sub_1D1BC970C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8A10(uint64_t a1)
{
  v2 = sub_1D1BC970C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8A4C(uint64_t a1)
{
  v2 = sub_1D1BC96B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8A88(uint64_t a1)
{
  v2 = sub_1D1BC96B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8AC4(uint64_t a1)
{
  v2 = sub_1D1BC9664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8B00(uint64_t a1)
{
  v2 = sub_1D1BC9664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8B3C(uint64_t a1)
{
  v2 = sub_1D1BC9610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8B78(uint64_t a1)
{
  v2 = sub_1D1BC9610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8BB4()
{
  v1 = *v0;
  v2 = 0x74726F50726961;
  v3 = 0x70646E4569726973;
  if (v1 != 5)
  {
    v3 = 0x72656B61657073;
  }

  v4 = 0x6172656D6163;
  if (v1 != 3)
  {
    v4 = 0x646F50656D6F68;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x5654656C707061;
  if (v1 != 1)
  {
    v5 = 0x6365526F69647561;
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

uint64_t sub_1D1BB8CA0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1BCBA90(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1BB8CC8(uint64_t a1)
{
  v2 = sub_1D1BC946C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8D04(uint64_t a1)
{
  v2 = sub_1D1BC946C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8D40(uint64_t a1)
{
  v2 = sub_1D1BC9568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8D7C(uint64_t a1)
{
  v2 = sub_1D1BC9568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D1BB8DB8()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1D1BB8DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000015 && 0x80000001D1EC62D0 == a2;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC62F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1BB8ED8(uint64_t a1)
{
  v2 = sub_1D1BC9514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8F14(uint64_t a1)
{
  v2 = sub_1D1BC9514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BB8F50(uint64_t a1)
{
  v2 = sub_1D1BC94C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BB8F8C(uint64_t a1)
{
  v2 = sub_1D1BC94C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAccessory.SpecialMediaCategory.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C390, &qword_1D1E9E5B0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C398, &qword_1D1E9E5B8);
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3A0, &qword_1D1E9E5C0);
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3A8, &qword_1D1E9E5C8);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3B0, &qword_1D1E9E5D0);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3B8, &qword_1D1E9E5D8);
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3C0, &qword_1D1E9E5E0);
  v37 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C3C8, &qword_1D1E9E5E8);
  v21 = *(v20 - 8);
  v55 = v20;
  v56 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v37 - v22;
  v24 = *v2;
  v25 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BC946C();
  sub_1D1E6930C();
  if (v25 <= 1)
  {
    if (v25)
    {
      LOBYTE(v58) = 4;
      sub_1D1BC9568();
      v26 = v47;
      v27 = v55;
      sub_1D1E68DFC();
      LOBYTE(v58) = v24;
      sub_1D1BC95BC();
      v28 = v51;
      sub_1D1E68F1C();
      v29 = v50;
    }

    else
    {
      LOBYTE(v58) = 3;
      sub_1D1BC9610();
      v26 = v46;
      v27 = v55;
      sub_1D1E68DFC();
      v58 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
      sub_1D1BC92B0(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
      v28 = v49;
      sub_1D1E68E5C();
      v29 = v48;
    }

    goto LABEL_14;
  }

  if (v25 == 2)
  {
    LOBYTE(v58) = 5;
    sub_1D1BC9514();
    v26 = v52;
    v27 = v55;
    sub_1D1E68DFC();
    LOBYTE(v58) = 0;
    v28 = v54;
    v30 = v57;
    sub_1D1E68EDC();
    if (v30)
    {
      (*(v53 + 8))(v26, v28);
      return (*(v56 + 8))(v23, v27);
    }

    LOBYTE(v58) = 1;
    sub_1D1E68EDC();
    v29 = v53;
LABEL_14:
    (*(v29 + 8))(v26, v28);
    return (*(v56 + 8))(v23, v27);
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      LOBYTE(v58) = 2;
      sub_1D1BC9664();
      v32 = v40;
      v31 = v55;
      sub_1D1E68DFC();
      v34 = v41;
      v33 = v42;
    }

    else
    {
      LOBYTE(v58) = 6;
      sub_1D1BC94C0();
      v32 = v43;
      v31 = v55;
      sub_1D1E68DFC();
      v34 = v44;
      v33 = v45;
    }

    (*(v34 + 8))(v32, v33);
  }

  else
  {
    if (v24)
    {
      LOBYTE(v58) = 1;
      sub_1D1BC96B8();
      v36 = v55;
      sub_1D1E68DFC();
      (*(v38 + 8))(v16, v39);
      return (*(v56 + 8))(v23, v36);
    }

    LOBYTE(v58) = 0;
    sub_1D1BC970C();
    v31 = v55;
    sub_1D1E68DFC();
    (*(v37 + 8))(v19, v17);
  }

  return (*(v56 + 8))(v23, v31);
}

uint64_t StaticAccessory.SpecialMediaCategory.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      MEMORY[0x1D3892850](5);
      sub_1D1E6922C();
      return sub_1D1E6922C();
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v7 = 2;
      }

      else
      {
        v7 = 6;
      }
    }

    else
    {
      v7 = v4 != 0;
    }

    return MEMORY[0x1D3892850](v7);
  }

  if (v5)
  {
    MEMORY[0x1D3892850](4);
    v7 = v4;
    return MEMORY[0x1D3892850](v7);
  }

  MEMORY[0x1D3892850](3);
  if (!v4)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D176D4E8(a1, v4);
}

uint64_t StaticAccessory.SpecialMediaCategory.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StaticAccessory.SpecialMediaCategory.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t StaticAccessory.SpecialMediaCategory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C418, &qword_1D1E9E5F0);
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C420, &qword_1D1E9E5F8);
  v6 = *(v5 - 8);
  v64 = v5;
  v65 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C428, &qword_1D1E9E600);
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C430, &qword_1D1E9E608);
  v11 = *(v10 - 8);
  v58 = v10;
  v59 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v51 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C438, &qword_1D1E9E610);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v69 = &v51 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C440, &qword_1D1E9E618);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C448, &qword_1D1E9E620);
  v53 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C450, &unk_1D1E9E628);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1D1BC946C();
  v24 = v73;
  sub_1D1E692FC();
  if (!v24)
  {
    v25 = v18;
    v52 = v16;
    v73 = v15;
    v27 = v69;
    v26 = v70;
    v28 = v71;
    v29 = sub_1D1E68DDC();
    v30 = (2 * *(v29 + 16)) | 1;
    v74 = v29;
    v75 = v29 + 32;
    v76 = 0;
    v77 = v30;
    v31 = sub_1D18085C4();
    if (v31 != 7 && v76 == v77 >> 1)
    {
      if (v31 <= 2u)
      {
        if (v31)
        {
          if (v31 == 1)
          {
            LOBYTE(v78) = 1;
            sub_1D1BC96B8();
            v39 = v73;
            sub_1D1E68C4C();
            (*(v54 + 8))(v39, v55);
            (*(v20 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v46 = 3;
            v47 = 1;
          }

          else
          {
            LOBYTE(v78) = 2;
            sub_1D1BC9664();
            sub_1D1E68C4C();
            (*(v56 + 8))(v27, v57);
            (*(v20 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v46 = 3;
            v47 = 2;
          }
        }

        else
        {
          LOBYTE(v78) = 0;
          sub_1D1BC970C();
          sub_1D1E68C4C();
          (*(v53 + 8))(v25, v52);
          (*(v20 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v47 = 0;
          v46 = 3;
        }
      }

      else
      {
        if (v31 > 4u)
        {
          v40 = v68;
          if (v31 == 5)
          {
            LOBYTE(v78) = 5;
            sub_1D1BC9514();
            v41 = v28;
            sub_1D1E68C4C();
            LOBYTE(v78) = 0;
            v42 = v64;
            v48 = sub_1D1E68D3C();
            LOBYTE(v78) = 1;
            v49 = sub_1D1E68D3C();
            (*(v65 + 8))(v41, v42);
            (*(v20 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v50 = 256;
            if ((v49 & 1) == 0)
            {
              v50 = 0;
            }

            v47 = v50 & 0xFFFFFFFFFFFFFFFELL | v48 & 1;
            v46 = 2;
          }

          else
          {
            LOBYTE(v78) = 6;
            sub_1D1BC94C0();
            v45 = v67;
            sub_1D1E68C4C();
            (*(v62 + 8))(v45, v63);
            (*(v20 + 8))(v22, v19);
            swift_unknownObjectRelease();
            v47 = 3;
            v46 = 3;
          }

          v37 = v72;
          goto LABEL_22;
        }

        if (v31 == 3)
        {
          LOBYTE(v78) = 3;
          sub_1D1BC9610();
          v32 = v66;
          sub_1D1E68C4C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
          sub_1D1BC92B0(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
          v33 = v58;
          sub_1D1E68CBC();
          (*(v59 + 8))(v32, v33);
          (*(v20 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v46 = 0;
          v47 = v78;
        }

        else
        {
          LOBYTE(v78) = 4;
          sub_1D1BC9568();
          v43 = v26;
          sub_1D1E68C4C();
          sub_1D1BC9760();
          v44 = v61;
          sub_1D1E68D7C();
          (*(v60 + 8))(v43, v44);
          (*(v20 + 8))(v22, v19);
          swift_unknownObjectRelease();
          v47 = v78;
          v46 = 1;
        }
      }

      v37 = v72;
      v40 = v68;
LABEL_22:
      *v40 = v47;
      *(v40 + 8) = v46;
      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    v34 = sub_1D1E688EC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v36 = &type metadata for StaticAccessory.SpecialMediaCategory;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v20 + 8))(v22, v19);
    swift_unknownObjectRelease();
  }

  v37 = v72;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1D1BBA458()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StaticAccessory.SpecialMediaCategory.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BBA4B0(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_1D1E6920C();
  StaticAccessory.SpecialMediaCategory.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D1BBA530@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v219 = a8;
  v199 = a7;
  v224 = a6;
  v213 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v217 = &v192 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v192 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v201 = &v192 - v20;
  v202 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  MEMORY[0x1EEE9AC00](v202);
  v22 = &v192 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v214 = &v192 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v212 = &v192 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v200 = &v192 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v222 = &v192 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v216 = &v192 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v211 = &v192 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v203 = &v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v197 = &v192 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v220 = &v192 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v232 = *(v41 - 8);
  v233 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v198 = &v192 - v42;
  v208 = type metadata accessor for StaticService(0);
  v229 = *(v208 - 8);
  v43 = MEMORY[0x1EEE9AC00](v208);
  v223 = &v192 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v228 = &v192 - v45;
  v46 = sub_1D1E66A7C();
  v234 = *(v46 - 8);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v210 = &v192 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v196 = &v192 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v209 = &v192 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v225 = &v192 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v192 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v192 - v58;
  v204 = *a5;
  v221 = a1;
  v60 = [a1 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v61 = sub_1D1E67C1C();

  v62 = v61;
  if (v61 >> 62)
  {
    v63 = sub_1D1E6873C();
    v62 = v61;
  }

  else
  {
    v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = MEMORY[0x1E69E7CC0];
  v218 = v19;
  v215 = v22;
  v65 = v225;
  v207 = a9;
  v206 = a3;
  v205 = a4;
  if (v63)
  {
    v236 = v62;
    v237 = v63;
    v238 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v63 & ~(v63 >> 63), 0);
    if (v237 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v66 = 0;
    v67 = v238;
    v68 = v236;
    v69 = v236 & 0xC000000000000001;
    do
    {
      if (v69)
      {
        v70 = MEMORY[0x1D3891EF0](v66);
      }

      else
      {
        v70 = *(v68 + 8 * v66 + 32);
      }

      v71 = v70;
      v72 = [v70 uniqueIdentifier];
      sub_1D1E66A5C();

      v238 = v67;
      v74 = *(v67 + 16);
      v73 = *(v67 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_1D178CEFC((v73 > 1), v74 + 1, 1);
        v67 = v238;
      }

      ++v66;
      *(v67 + 16) = v74 + 1;
      (*(v234 + 32))(v67 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v74, v57, v46);
      v68 = v236;
    }

    while (v237 != v66);

    v65 = v225;
    v64 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
  }

  v238 = v64;
  v75 = v234;
  v231 = *(v67 + 16);
  if (v231)
  {
    v76 = 0;
    v77 = *(v234 + 16);
    v227 = *(v234 + 80);
    v235 = (v227 + 32) & ~v227;
    v236 = v77;
    v230 = v67 + v235;
    v78 = *(v234 + 72);
    v237 = v234 + 16;
    v79 = (v234 + 8);
    v226 = xmmword_1D1E739C0;
    v77(v59, v67 + v235, v46);
    while (1)
    {
      v82 = v238 + v235;
      v83 = *(v238 + 16) + 1;
      while (--v83)
      {
        sub_1D1BC8FB4(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v82 += v78;
        if (sub_1D1E6775C())
        {
          goto LABEL_17;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v80 = v235;
      v81 = swift_allocObject();
      *(v81 + 16) = v226;
      (v236)(v81 + v80, v59, v46);
      sub_1D17A3840(v81);
LABEL_17:
      ++v76;
      (*v79)(v59, v46);
      if (v76 == v231)
      {
        break;
      }

      (v236)(v59, v230 + v78 * v76, v46);
    }

    v75 = v234;
    v65 = v225;
  }

  else
  {
  }

  v84 = *(v238 + 16);
  v85 = v224;
  v236 = v238;
  if (v84)
  {
    v86 = *(v75 + 16);
    v87 = v238 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v88 = *(v75 + 72);
    v89 = (v75 + 8);
    v90 = MEMORY[0x1E69E7CC0];
    v237 = v86;
    v86(v65, v87, v46);
    while (1)
    {
      if (*(v85 + 16) && (v91 = sub_1D1742188(), (v92 & 1) != 0))
      {
        v93 = *(v229 + 72);
        v94 = *(v85 + 56) + v93 * v91;
        v95 = v223;
        sub_1D1BC8E68(v94, v223, type metadata accessor for StaticService);
        (*v89)(v65, v46);
        sub_1D1BC91F4(v95, v228, type metadata accessor for StaticService);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v96 = v90;
        }

        else
        {
          v96 = sub_1D177D048(0, v90[2] + 1, 1, v90);
        }

        v98 = v96[2];
        v97 = v96[3];
        if (v98 >= v97 >> 1)
        {
          v96 = sub_1D177D048((v97 > 1), v98 + 1, 1, v96);
        }

        v96[2] = v98 + 1;
        v90 = v96;
        sub_1D1BC91F4(v228, v96 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + v98 * v93, type metadata accessor for StaticService);
        v85 = v224;
        v65 = v225;
        v86 = v237;
      }

      else
      {
        (*v89)(v65, v46);
      }

      v87 += v88;
      if (!--v84)
      {
        break;
      }

      v86(v65, v87, v46);
    }

    v75 = v234;
    v99 = v90;
  }

  else
  {

    v99 = MEMORY[0x1E69E7CC0];
  }

  v100 = *(v99 + 16);
  v101 = MEMORY[0x1E69E7CC0];
  v224 = v99;
  if (v100)
  {
    v238 = MEMORY[0x1E69E7CC0];
    sub_1D178D2D8(0, v100, 0);
    v101 = v238;
    v102 = v99 + ((*(v229 + 80) + 32) & ~*(v229 + 80));
    v103 = *(v229 + 72);
    v104 = v198;
    do
    {
      v105 = *(v233 + 48);
      sub_1D1BC8E68(v102, v104 + v105, type metadata accessor for StaticService);
      (*(v75 + 16))(v104, v104 + v105, v46);
      v238 = v101;
      v107 = *(v101 + 16);
      v106 = *(v101 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_1D178D2D8((v106 > 1), v107 + 1, 1);
        v101 = v238;
      }

      *(v101 + 16) = v107 + 1;
      sub_1D1741A90(v104, v101 + ((*(v232 + 80) + 32) & ~*(v232 + 80)) + *(v232 + 72) * v107, &qword_1EC6436E8, &unk_1D1E71E40);
      v102 += v103;
      --v100;
    }

    while (v100);
  }

  v108 = v221;
  v109 = v200;
  if (*(v101 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
    v110 = sub_1D1E68BCC();
  }

  else
  {
    v110 = MEMORY[0x1E69E7CC8];
  }

  v238 = v110;
  sub_1D1BC6510(v101, 1, &v238);
  v192 = 0;

  v111 = v238;
  sub_1D1BBBE58(v108, v238, v220);
  sub_1D1BBD6A8(v108, v199, v211);

  v112 = sub_1D1BBDC8C(v108);
  v225 = v113;
  v114 = sub_1D1E682DC();
  v116 = v115;
  v117 = [v108 supportsNativeMatter];
  v237 = v114;
  LODWORD(v235) = v116;
  v232 = v111;
  *&v226 = v112;
  if ((v117 & 1) != 0 && (sub_1D1E682DC(), (v118 & 1) == 0))
  {
    v120 = sub_1D1E682DC() != 0;
    v119 = v121 | v120;
  }

  else
  {
    v119 = 0;
  }

  LODWORD(v233) = v119;
  LODWORD(v231) = sub_1D1BBDD50(v108, v119 & 1);
  LODWORD(v230) = sub_1D1BBDFD8(v108, v231 & 1);
  v122 = v224;
  LODWORD(v228) = sub_1D1BBEFB4(v108, v224);
  LODWORD(v227) = sub_1D1BBF91C(v108, v122);

  v123 = sub_1D1E669FC();
  v124 = *(*(v123 - 8) + 56);
  v125 = 1;
  v124(v222, 1, 1, v123);
  v126 = [v108 lastSeenStatus];
  if (v126)
  {
    v127 = v126;
    v128 = [v126 lastSeenDate];

    sub_1D1E669BC();
    v125 = 0;
  }

  v129 = v222;
  sub_1D1741A30(v222, &qword_1EC642570, &qword_1D1E6C6A0);
  v124(v109, v125, 1, v123);
  sub_1D1741A90(v109, v129, &qword_1EC642570, &qword_1D1E6C6A0);
  v130 = [v221 lastSeenStatus];
  if (v130)
  {
    v131 = v130;
    v132 = [v130 lowBatteryStatus];

    v133 = 2 * (v132 != 1);
    if (v132 == 2)
    {
      v133 = 1;
    }
  }

  else
  {
    v133 = 2;
  }

  LODWORD(v200) = v133;
  v134 = v218;
  v135 = v215;
  v136 = v206;
  v137 = v234;
  v138 = v221;
  v139 = [v221 supportsCHIP];
  v140 = [v138 requiresThreadRouter];
  v141 = [v138 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1741C08(v222, v212, &qword_1EC642570, &qword_1D1E6C6A0);
  v142 = [v138 deviceIdentifier];
  v143 = sub_1D1E6781C();
  v145 = v144;

  v146 = v201;
  sub_1D1E66A0C();
  v147 = (*(v137 + 48))(v146, 1, v46);
  LODWORD(v224) = v139;
  LODWORD(v223) = v140;
  if (v147 == 1)
  {
    sub_1D1741A30(v146, &qword_1EC642590, qword_1D1E71260);
    *v135 = v143;
    v135[1] = v145;
  }

  else
  {

    v148 = *(v137 + 32);
    v149 = v196;
    v148(v196, v146, v46);
    v148(v135, v149, v46);
  }

  swift_storeEnumTagMultiPayload();
  v150 = v221;
  v151 = v217;
  sub_1D1CE96D0(v150, v217);
  v152 = type metadata accessor for StaticDeviceMetadata(0);
  (*(*(v152 - 8) + 56))(v151, 0, 1, v152);
  HMAccessory.dateAdded.getter(v214);
  v153 = sub_1D1A11844();
  if (v153 == 2)
  {
    v154 = v197;
    sub_1D1741C08(v220, v197, &qword_1EC6436F0, &qword_1D1E99BC0);
    v155 = v208;
    if ((*(v229 + 48))(v154, 1, v208) == 1)
    {
      sub_1D1741A30(v154, &qword_1EC6436F0, &qword_1D1E99BC0);
      LODWORD(v221) = 0;
    }

    else
    {
      LODWORD(v221) = *(v154 + *(v155 + 28));
      sub_1D1BC9194(v154, type metadata accessor for StaticService);
    }
  }

  else
  {
    LODWORD(v221) = v153;
  }

  v156 = [v213 uniqueIdentifier];
  sub_1D1E66A5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v157 = (*(v137 + 80) + 32) & ~*(v137 + 80);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_1D1E739C0;
  v159 = [v136 uniqueIdentifier];
  sub_1D1E66A5C();

  v160 = sub_1D179BE14(v158);
  swift_setDeallocating();
  (*(v137 + 8))(v158 + v157, v46);
  swift_deallocClassInstance();
  v161 = [v136 name];
  v162 = sub_1D1E6781C();
  v199 = v163;

  LODWORD(v161) = [v150 isCurrentAccessory];
  LODWORD(v197) = HMAccessory.isFavorite.getter();
  LODWORD(v196) = HMAccessory.shouldShowInDashboard.getter();
  v195 = HMAccessory.contributesToHomeStatus.getter();
  v194 = HMAccessory.showAsIndividualTiles.getter();
  v164 = v203;
  sub_1D1741C08(v220, v203, &qword_1EC6436F0, &qword_1D1E99BC0);
  v165 = (*(v229 + 48))(v164, 1, v208);
  v202 = v160;
  v201 = v162;
  LODWORD(v198) = v161;
  if (v165 == 1)
  {
    sub_1D1741A30(v164, &qword_1EC6436F0, &qword_1D1E99BC0);
    v166 = 1;
  }

  else
  {
    (*(v137 + 16))(v134, v164, v46);
    sub_1D1BC9194(v164, type metadata accessor for StaticService);
    v166 = 0;
  }

  v167 = v211;
  (*(v137 + 56))(v134, v166, 1, v46);
  HMAccessory.specialMediaCategory.getter(&v238);
  v229 = v238;
  LODWORD(v211) = v239;
  v168 = [v150 category];
  v169 = [v168 categoryType];

  v208 = sub_1D1E6781C();
  v203 = v170;

  v171 = [v150 uniqueIdentifiersForBridgedAccessories];
  if (v171)
  {
    v172 = v171;
    v193 = sub_1D1E67C1C();
  }

  else
  {
    v193 = 0;
  }

  sub_1D1741C08(v167, v216, &qword_1EC644760, &unk_1D1E9E530);
  v205 = sub_1D1BBFC34(v150, v219, v205);
  v173 = [v150 symptomsHandler];
  if (v173)
  {
    v174 = v173;
    v175 = [v173 symptoms];

    sub_1D1741B10(0, &unk_1EE079BC0, 0x1E696CC78);
    sub_1D1BCBD88();
    v176 = sub_1D1E6816C();

    sub_1D1BACEEC(v176);
    v178 = v177;

    v179 = sub_1D1784578(v178);
  }

  else
  {

    v179 = 0;
  }

  sub_1D1741A30(v222, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v167, &qword_1EC644760, &unk_1D1E9E530);
  sub_1D1741A30(v220, &qword_1EC6436F0, &qword_1D1E99BC0);
  v180 = *(v234 + 32);
  v181 = v207;
  v180(v207, v209, v46);
  v182 = type metadata accessor for StaticAccessory(0);
  sub_1D1741A90(v212, v181 + v182[5], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v181 + v182[6]) = v200;
  v183 = (v181 + v182[7]);
  v184 = v225;
  *v183 = v226;
  v183[1] = v184;
  sub_1D1BC91F4(v215, v181 + v182[8], type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1741A90(v217, v181 + v182[9], &qword_1EC644620, &unk_1D1E75A00);
  sub_1D1741A90(v214, v181 + v182[10], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v181 + v182[11]) = v221 & 1;
  v180(v181 + v182[12], v210, v46);
  *(v181 + v182[13]) = v202;
  v185 = (v181 + v182[14]);
  v186 = v199;
  *v185 = v201;
  v185[1] = v186;
  *(v181 + v182[15]) = v198;
  *(v181 + v182[16]) = v197 & 1;
  *(v181 + v182[17]) = v196 & 1;
  *(v181 + v182[18]) = v195 & 1;
  *(v181 + v182[19]) = v194 & 1;
  *(v181 + v182[20]) = v232;
  *(v181 + v182[21]) = v236;
  sub_1D1741A90(v218, v181 + v182[22], &qword_1EC642590, qword_1D1E71260);
  v187 = v181 + v182[23];
  *v187 = v229;
  *(v187 + 8) = v211;
  v188 = (v181 + v182[24]);
  v189 = v203;
  *v188 = v208;
  v188[1] = v189;
  *(v181 + v182[25]) = v193;
  *(v181 + v182[26]) = v230 & 1;
  *(v181 + v182[27]) = v231 & 1;
  *(v181 + v182[28]) = v228 & 1;
  *(v181 + v182[29]) = v227 & 1;
  sub_1D1741A90(v216, v181 + v182[30], &qword_1EC644760, &unk_1D1E9E530);
  *(v181 + v182[31]) = v205 & 1;
  *(v181 + v182[32]) = v204;
  *(v181 + v182[33]) = v179;
  *(v181 + v182[34]) = v224;
  *(v181 + v182[35]) = v223;
  v190 = v181 + v182[36];
  *v190 = v237;
  *(v190 + 8) = v235 & 1;
  *(v181 + v182[37]) = v233 & 1;
  return sub_1D1741A90(v219, v181 + v182[38], &qword_1EC643650, &qword_1D1E71D40);
}

uint64_t sub_1D1BBBE58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v129 = a3;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v127 = v4;
  v128 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1D1E66A7C();
  v125 = *(v124 - 8);
  v7 = MEMORY[0x1EEE9AC00](v124);
  v9 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v120 = &v118 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v118 - v12;
  v130 = a1;
  v14 = [a1 services];
  v123 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v15 = sub_1D1E67C1C();

  v16 = v15;
  v138 = MEMORY[0x1E69E7CC0];
  if (v15 >> 62)
  {
    goto LABEL_157;
  }

  v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v122 = v13;
    v118 = v9;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = "00000000-0000-0000-0000-000000000000";
    if (v17)
    {
      v13 = v17;
      v20 = 0;
      v133 = v16 & 0xFFFFFFFFFFFFFF8;
      v134 = v16 & 0xC000000000000001;
      v121 = v16;
      v131 = v17;
      v132 = v16 + 32;
      while (1)
      {
        if (v134)
        {
          v16 = MEMORY[0x1D3891EF0](v20, v121);
        }

        else
        {
          if (v20 >= *(v133 + 16))
          {
            goto LABEL_154;
          }

          v16 = *(v132 + 8 * v20);
        }

        v9 = v16;
        v21 = __OFADD__(v20++, 1);
        if (v21)
        {
          break;
        }

        if (qword_1EC642398 != -1)
        {
          swift_once();
        }

        v22 = qword_1EC6BE1B0;
        v23 = [v9 serviceType];
        v24 = sub_1D1E6781C();
        v26 = v25;

        v27._countAndFlagsBits = v24;
        v27._object = v26;
        ServiceKind.init(rawValue:)(v27);
        if (v137 == 53)
        {
          v28 = 0;
        }

        else
        {
          v28 = v137;
        }

        if (*(v22 + 16))
        {
          v135 = v9;
          sub_1D1E6920C();
          v136 = v28;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v29 = sub_1D1E6926C();
          v9 = (v22 + 56);
          v30 = -1 << *(v22 + 32);
          v31 = v29 & ~v30;
          if ((*(v22 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
          {
            v32 = ~v30;
            while (1)
            {
              v33 = "takeSnaphotsWhenBusy";
              switch(*(*(v22 + 48) + v31))
              {
                case 1:
                  v34 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 2:
                  v34 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 3:
                  v34 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 4:
                  v34 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 5:
                  v34 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 6:
                  v34 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 7:
                  v34 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 8:
                  v34 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 9:
                  v34 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xA:
                  v34 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xB:
                  v34 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xC:
                  v34 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xD:
                  v34 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xE:
                  v34 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0xF:
                  v34 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x10:
                  v34 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x11:
                  v34 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x12:
                  v34 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x13:
                  v34 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x14:
                  v34 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x15:
                  v34 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x16:
                  v34 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x17:
                  v34 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x18:
                  v34 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x19:
                  v34 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1A:
                  v34 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1B:
                  v34 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1C:
                  v34 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1D:
                  v34 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1E:
                  v34 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x1F:
                  v34 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x20:
                  v34 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x21:
                  v34 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x22:
                  v34 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x23:
                  v34 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x24:
                  v34 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x25:
                  v34 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x26:
                  v34 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x27:
                  v34 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x28:
                  v34 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x29:
                  v34 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2A:
                  v34 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2B:
                  v34 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2C:
                  v34 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2D:
                  v34 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2E:
                  v34 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x2F:
                  v34 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x30:
                  v34 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x31:
                  v34 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x32:
                  v34 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x33:
                  v34 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_72;
                case 0x34:
                  v34 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_72:
                  v33 = v34 - 32;
                  break;
                default:
                  break;
              }

              v35 = v33 | 0x8000000000000000;
              v36 = "takeSnaphotsWhenBusy";
              switch(v28)
              {
                case 1:
                  v37 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 2:
                  v37 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 3:
                  v37 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 4:
                  v37 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 5:
                  v37 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 6:
                  v37 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 7:
                  v37 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 8:
                  v37 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 9:
                  v37 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 10:
                  v37 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 11:
                  v37 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 12:
                  v37 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 13:
                  v37 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 14:
                  v37 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 15:
                  v37 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 16:
                  v37 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 17:
                  v37 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 18:
                  v37 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 19:
                  v37 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 20:
                  v37 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 21:
                  v37 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 22:
                  v37 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 23:
                  v37 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 24:
                  v37 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 25:
                  v37 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 26:
                  v37 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 27:
                  v37 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 28:
                  v37 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 29:
                  v37 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 30:
                  v37 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 31:
                  v37 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 32:
                  v37 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 33:
                  v37 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 34:
                  v37 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 35:
                  v37 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 36:
                  v37 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 37:
                  v37 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 38:
                  v37 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 39:
                  v37 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 40:
                  v37 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 41:
                  v37 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 42:
                  v37 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 43:
                  v37 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 44:
                  v37 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 45:
                  v37 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 46:
                  v37 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 47:
                  v37 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 48:
                  v37 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 49:
                  v37 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 50:
                  v37 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 51:
                  v37 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_126;
                case 52:
                  v37 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_126:
                  v36 = v37 - 32;
                  break;
                default:
                  break;
              }

              if (v35 == (v36 | 0x8000000000000000))
              {
                break;
              }

              v38 = sub_1D1E6904C();

              if (v38)
              {
                goto LABEL_133;
              }

              v31 = (v31 + 1) & v32;
              if (((*&v9[(v31 >> 3) & 0xFFFFFFFFFFFFFF8] >> v31) & 1) == 0)
              {

                goto LABEL_134;
              }
            }

LABEL_133:
            sub_1D1E6896C();
            sub_1D1E689AC();
            sub_1D1E689BC();
            v16 = sub_1D1E6897C();
LABEL_134:
            v13 = v131;
          }

          else
          {
          }
        }

        else
        {
        }

        if (v20 == v13)
        {
          v18 = v138;
          v19 = "00000000-0000-0000-0000-000000000000";
          goto LABEL_137;
        }
      }

      __break(1u);
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

LABEL_137:

    if ((v18 & 0x8000000000000000) == 0 && (v18 & 0x4000000000000000) == 0)
    {
      v39 = *(v18 + 16);
      if (!v39)
      {
        break;
      }

      goto LABEL_140;
    }

    v16 = sub_1D1E6873C();
    v39 = v16;
    if (!v16)
    {
      break;
    }

LABEL_140:
    v40 = 0;
    v9 = (v18 & 0xC000000000000001);
    while (1)
    {
      if (v9)
      {
        v16 = MEMORY[0x1D3891EF0](v40, v18);
      }

      else
      {
        if (v40 >= *(v18 + 16))
        {
          goto LABEL_156;
        }

        v16 = *(v18 + 8 * v40 + 32);
      }

      v13 = v16;
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if ([v16 isPrimaryService])
      {

        v42 = [v13 uniqueIdentifier];
        v43 = v122;
        sub_1D1E66A5C();

        if (*(v126 + 16))
        {
          v44 = sub_1D1742188();
          if (v45)
          {
            v46 = v119;
            sub_1D1BC8E68(*(v126 + 56) + *(v128 + 72) * v44, v119, type metadata accessor for StaticService);

            (*(v125 + 8))(v43, v124);
            sub_1D1BC91F4(v46, v129, type metadata accessor for StaticService);
            v47 = 0;
            return (*(v128 + 56))(v129, v47, 1, v127);
          }
        }

        (*(v125 + 8))(v43, v124);

        goto LABEL_160;
      }

      ++v40;
      if (v41 == v39)
      {
        goto LABEL_159;
      }
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    v48 = v16;
    v17 = sub_1D1E6873C();
    v16 = v48;
  }

LABEL_159:

LABEL_160:
  v49 = sub_1D18DEE18();
  v50 = [v130 category];
  v51 = [v50 categoryType];

  v52 = sub_1D1E6781C();
  v54 = v53;

  if (!*(v49 + 16))
  {

    goto LABEL_295;
  }

  v55 = sub_1D171D2F0(v52, v54);
  v57 = v56;

  if ((v57 & 1) == 0)
  {
LABEL_295:

    goto LABEL_296;
  }

  v58 = *(*(v49 + 56) + 8 * v55);

  v59 = [v130 services];
  v60 = sub_1D1E67C1C();

  v61 = v60;
  v138 = MEMORY[0x1E69E7CC0];
  if (v60 >> 62)
  {
    goto LABEL_301;
  }

  for (i = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v61 = v83)
  {
    v63 = 0;
    v133 = v61 & 0xFFFFFFFFFFFFFF8;
    v134 = v61 & 0xC000000000000001;
    v122 = v61;
    v131 = i;
    v132 = v61 + 32;
    v64 = v58 + 56;
    v65 = v19 - 32;
    while (1)
    {
      if (v134)
      {
        v61 = MEMORY[0x1D3891EF0](v63, v122);
      }

      else
      {
        if (v63 >= *(v133 + 16))
        {
          goto LABEL_300;
        }

        v61 = *(v132 + 8 * v63);
      }

      v66 = v61;
      v21 = __OFADD__(v63++, 1);
      if (v21)
      {
        break;
      }

      v67 = [v61 serviceType];
      v68 = sub_1D1E6781C();
      v19 = v69;

      v70._countAndFlagsBits = v68;
      v70._object = v19;
      ServiceKind.init(rawValue:)(v70);
      if (v137 == 53)
      {
        v71 = 0;
      }

      else
      {
        v71 = v137;
      }

      if (*(v58 + 16))
      {
        v135 = v66;
        sub_1D1E6920C();
        v136 = v71;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v72 = sub_1D1E6926C();
        v73 = -1 << *(v58 + 32);
        v74 = v72 & ~v73;
        if ((*(v64 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
        {
          v75 = ~v73;
          while (1)
          {
            v76 = v65;
            switch(*(*(v58 + 48) + v74))
            {
              case 1:
                v77 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 2:
                v77 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 3:
                v77 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 4:
                v77 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 5:
                v77 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 6:
                v77 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 7:
                v77 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 8:
                v77 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 9:
                v77 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xA:
                v77 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xB:
                v77 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xC:
                v77 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xD:
                v77 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xE:
                v77 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0xF:
                v77 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x10:
                v77 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x11:
                v77 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x12:
                v77 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x13:
                v77 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x14:
                v77 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x15:
                v77 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x16:
                v77 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x17:
                v77 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x18:
                v77 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x19:
                v77 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1A:
                v77 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1B:
                v77 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1C:
                v77 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1D:
                v77 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1E:
                v77 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x1F:
                v77 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x20:
                v77 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x21:
                v77 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x22:
                v77 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x23:
                v77 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x24:
                v77 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x25:
                v77 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x26:
                v77 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x27:
                v77 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x28:
                v77 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x29:
                v77 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2A:
                v77 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2B:
                v77 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2C:
                v77 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2D:
                v77 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2E:
                v77 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x2F:
                v77 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x30:
                v77 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x31:
                v77 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x32:
                v77 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x33:
                v77 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_230;
              case 0x34:
                v77 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_230:
                v76 = (v77 - 32);
                break;
              default:
                break;
            }

            v78 = v76 | 0x8000000000000000;
            v79 = v65;
            switch(v71)
            {
              case 1:
                v80 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 2:
                v80 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 3:
                v80 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 4:
                v80 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 5:
                v80 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 6:
                v80 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 7:
                v80 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 8:
                v80 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 9:
                v80 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 10:
                v80 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 11:
                v80 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 12:
                v80 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 13:
                v80 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 14:
                v80 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 15:
                v80 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 16:
                v80 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 17:
                v80 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 18:
                v80 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 19:
                v80 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 20:
                v80 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 21:
                v80 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 22:
                v80 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 23:
                v80 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 24:
                v80 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 25:
                v80 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 26:
                v80 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 27:
                v80 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 28:
                v80 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 29:
                v80 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 30:
                v80 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 31:
                v80 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 32:
                v80 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 33:
                v80 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 34:
                v80 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 35:
                v80 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 36:
                v80 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 37:
                v80 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 38:
                v80 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 39:
                v80 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 40:
                v80 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 41:
                v80 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 42:
                v80 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 43:
                v80 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 44:
                v80 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 45:
                v80 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 46:
                v80 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 47:
                v80 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 48:
                v80 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 49:
                v80 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 50:
                v80 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 51:
                v80 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_284;
              case 52:
                v80 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_284:
                v79 = (v80 - 32);
                break;
              default:
                break;
            }

            if (v78 == (v79 | 0x8000000000000000))
            {
              break;
            }

            v19 = sub_1D1E6904C();

            if (v19)
            {
              goto LABEL_291;
            }

            v74 = (v74 + 1) & v75;
            if (((*(v64 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
            {

              goto LABEL_292;
            }
          }

LABEL_291:
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          v61 = sub_1D1E6897C();
LABEL_292:
          i = v131;
        }

        else
        {
        }
      }

      else
      {
      }

      if (v63 == i)
      {
        v82 = v138;
        goto LABEL_303;
      }
    }

    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    v83 = v61;
    i = sub_1D1E6873C();
  }

  v82 = MEMORY[0x1E69E7CC0];
LABEL_303:

  if ((v82 & 0x8000000000000000) == 0 && (v82 & 0x4000000000000000) == 0)
  {
    if (*(v82 + 16))
    {
      goto LABEL_306;
    }

LABEL_314:

    v82 = [v130 services];
    v91 = sub_1D1E67C1C();

    v132 = v91;
    if (!(v91 >> 62))
    {
      v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v92)
      {
LABEL_316:
        v93 = 0;
        v134 = v132 & 0xFFFFFFFFFFFFFF8;
        v135 = (v132 & 0xC000000000000001);
        v133 = v132 + 32;
        v131 = v92;
        while (1)
        {
          if (v135)
          {
            v94 = MEMORY[0x1D3891EF0](v93, v132);
          }

          else
          {
            if (v93 >= *(v134 + 16))
            {
              goto LABEL_345;
            }

            v94 = *(v133 + 8 * v93);
          }

          v95 = v94;
          v21 = __OFADD__(v93++, 1);
          if (v21)
          {
            __break(1u);
LABEL_345:
            __break(1u);
            goto LABEL_346;
          }

          if (qword_1EC642398 != -1)
          {
            swift_once();
          }

          v96 = qword_1EC6BE1B0;
          v82 = [v95 serviceType];
          v97 = sub_1D1E6781C();
          v99 = v98;

          v100._countAndFlagsBits = v97;
          v100._object = v99;
          ServiceKind.init(rawValue:)(v100);
          v101 = v137 == 53 ? 0 : v137;
          if (*(v96 + 16))
          {
            sub_1D1E6920C();
            LOBYTE(v138) = v101;
            ServiceKind.rawValue.getter();
            sub_1D1E678EC();

            v82 = &v137;
            v102 = sub_1D1E6926C();
            v103 = -1 << *(v96 + 32);
            v104 = v102 & ~v103;
            if ((*(v96 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104))
            {
              break;
            }
          }

LABEL_317:

          if (v93 == v131)
          {
            goto LABEL_295;
          }
        }

        v105 = ~v103;
        while (1)
        {
          v137 = *(*(v96 + 48) + v104);
          LOBYTE(v138) = v101;
          v106 = ServiceKind.rawValue.getter();
          v108 = v107;
          v109 = ServiceKind.rawValue.getter();
          v82 = v110;
          if (v106 == v109 && v108 == v110)
          {
            break;
          }

          v112 = sub_1D1E6904C();

          if (v112)
          {
            goto LABEL_339;
          }

          v104 = (v104 + 1) & v105;
          if (((*(v96 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
          {
            goto LABEL_317;
          }
        }

LABEL_339:

        v113 = [v95 uniqueIdentifier];
        v114 = v118;
        sub_1D1E66A5C();

        v115 = v126;
        if (*(v126 + 16))
        {
          v116 = sub_1D1742188();
          if (v117)
          {
            sub_1D1BC8E68(*(v115 + 56) + *(v128 + 72) * v116, v129, type metadata accessor for StaticService);

            (*(v125 + 8))(v114, v124);
            goto LABEL_342;
          }
        }

        (*(v125 + 8))(v114, v124);

LABEL_296:
        v47 = 1;
        return (*(v128 + 56))(v129, v47, 1, v127);
      }

      goto LABEL_295;
    }

LABEL_348:
    v92 = sub_1D1E6873C();
    if (v92)
    {
      goto LABEL_316;
    }

    goto LABEL_295;
  }

  if (!sub_1D1E6873C())
  {
    goto LABEL_314;
  }

LABEL_306:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_346:
    v84 = MEMORY[0x1D3891EF0](0, v82);
  }

  else
  {
    if (!*(v82 + 16))
    {
      __break(1u);
      goto LABEL_348;
    }

    v84 = *(v82 + 32);
  }

  v85 = v84;

  v86 = [v85 uniqueIdentifier];

  v87 = v120;
  sub_1D1E66A5C();

  v88 = v126;
  if (!*(v126 + 16) || (v89 = sub_1D1742188(), (v90 & 1) == 0))
  {
    (*(v125 + 8))(v87, v124);
    goto LABEL_296;
  }

  sub_1D1BC8E68(*(v88 + 56) + *(v128 + 72) * v89, v129, type metadata accessor for StaticService);
  (*(v125 + 8))(v87, v124);
LABEL_342:
  v47 = 0;
  return (*(v128 + 56))(v129, v47, 1, v127);
}