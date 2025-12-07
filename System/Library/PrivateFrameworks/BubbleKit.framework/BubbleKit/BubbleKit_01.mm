unint64_t sub_1D45FDF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3D68;
  if (!qword_1EC7D3D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3D68);
  }

  return result;
}

uint64_t sub_1D45FDF8C(uint64_t a1)
{
  result = sub_1D4606990();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 BubbleShape.init(pathConfiguration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = v2;
  return result;
}

__n128 BubbleShape.pathConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

double BubbleShape.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *(v5 + 24);
  *v11 = *v5;
  *&v11[8] = *(v5 + 8);
  v11[24] = v7;
  v8 = sub_1D45EC784(v11, a2, a3, a4, a5);
  sub_1D45F4D34(v8, v11);

  result = *v11;
  v10 = *&v11[16];
  *a1 = *v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

double sub_1D45FE0E0@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v7 = *(v5 + 24);
  *v11 = *v5;
  *&v11[8] = *(v5 + 8);
  v11[24] = v7;
  v8 = sub_1D45EC784(v11, a2, a3, a4, a5);
  sub_1D45F4D34(v8, v11);

  result = *v11;
  v10 = *&v11[16];
  *a1 = *v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_1D45FE170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D45FE5B8(a1, a2, a3);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_1D45FE1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D45FE5B8(a1, a2, a3);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_1D45FE238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D45FE5B8(a1, a2, a3);

  return MEMORY[0x1EEDE4410](a1, v4);
}

__n128 BubbleShape.inset(by:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

__n128 sub_1D45FE2A0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  return result;
}

double BubbleShape.animatableData.getter()
{
  v1 = *(v0 + 8) >> 62;
  result = 0.0;
  if (v1 == 1)
  {
    result = *(v0 + 16);
  }

  if (!v1)
  {
    return *(v0 + 16);
  }

  return result;
}

void BubbleShape.animatableData.setter(double a1, double a2)
{
  v3 = *(v2 + 8);
  if (!(v3 >> 62))
  {
    v4 = *(v2 + 8) & 1;
    goto LABEL_5;
  }

  if (v3 >> 62 == 1)
  {
    v4 = *(v2 + 8) & 1 | 0x4000000000000000;
LABEL_5:
    *(v2 + 8) = v4;
    *(v2 + 16) = a1;
  }

  *v2 = a2;
}

uint64_t *(*BubbleShape.animatableData.modify(void *a1))(uint64_t *result)
{
  a1[2] = v1;
  v2 = *v1;
  v3 = v1[1] >> 62;
  v4 = 0;
  if (v3 == 1)
  {
    v4 = v1[2];
  }

  if (!v3)
  {
    v4 = v1[2];
  }

  *a1 = v4;
  a1[1] = v2;
  return sub_1D45FE364;
}

uint64_t *sub_1D45FE364(uint64_t *result)
{
  v1 = result[2];
  v3 = *result;
  v2 = result[1];
  v4 = v1[1];
  if (!(v4 >> 62))
  {
    v5 = v1[1] & 1;
    goto LABEL_5;
  }

  if (v4 >> 62 == 1)
  {
    v5 = v1[1] & 1 | 0x4000000000000000;
LABEL_5:
    v1[1] = v5;
    v1[2] = v3;
  }

  *v1 = v2;
  return result;
}

void sub_1D45FE3A0(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1] >> 62;
  v4 = 0;
  if (v3 == 1)
  {
    v4 = v1[2];
  }

  if (!v3)
  {
    v4 = v1[2];
  }

  *a1 = v4;
  a1[1] = v2;
}

uint64_t *sub_1D45FE3CC(uint64_t *result)
{
  v3 = *result;
  v2 = result[1];
  v4 = v1[1];
  if (!(v4 >> 62))
  {
    v5 = v1[1] & 1;
    goto LABEL_5;
  }

  if (v4 >> 62 == 1)
  {
    v5 = v1[1] & 1 | 0x4000000000000000;
LABEL_5:
    v1[1] = v5;
    v1[2] = v3;
  }

  *v1 = v2;
  return result;
}

uint64_t (*sub_1D45FE404(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = BubbleShape.animatableData.modify(v2);
  return sub_1D45FE474;
}

void sub_1D45FE474(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_1D45FE4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3D88;
  if (!qword_1EC7D3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3D88);
  }

  return result;
}

unint64_t sub_1D45FE51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3D90;
  if (!qword_1EC7D3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3D90);
  }

  return result;
}

unint64_t sub_1D45FE5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3DA8;
  if (!qword_1EC7D3DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DA8);
  }

  return result;
}

unint64_t sub_1D45FE610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3DB0;
  if (!qword_1EC7D3DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DB0);
  }

  return result;
}

uint64_t BubbleViewConfiguration.ContentInsetBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1D4606FC0();
  MEMORY[0x1DA6DB760](v1);
  return sub_1D4607010();
}

uint64_t BubbleViewConfiguration.ContentInsetBehavior.degbugDisplayName.getter()
{
  if (*v0)
  {
    return 0x656C42206C6C7546;
  }

  else
  {
    return 0x7465736E49;
  }
}

unint64_t sub_1D45FE7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3DC8;
  if (!qword_1EC7D3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DC8);
  }

  return result;
}

unint64_t sub_1D45FE804()
{
  result = qword_1EC7D3DD0;
  if (!qword_1EC7D3DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3DD8, &qword_1D4608B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DD0);
  }

  return result;
}

unint64_t sub_1D45FE86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3DE0;
  if (!qword_1EC7D3DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DE0);
  }

  return result;
}

unint64_t sub_1D45FE97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3DE8;
  if (!qword_1EC7D3DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DE8);
  }

  return result;
}

uint64_t static Material.customBubble(with:onBackgroundWithAverageLuminance:)(uint64_t a1, uint64_t a2, float a3, uint64_t a4)
{
  sub_1D45FEA34(a1, a2, a4);

  return sub_1D4606E70();
}

unint64_t sub_1D45FEA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3DF0;
  if (!qword_1EC7D3DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DF0);
  }

  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D45FEA9C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1D45FEAE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D45FEB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3DF8;
  if (!qword_1EC7D3DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3DF8);
  }

  return result;
}

unint64_t sub_1D45FEC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3E00;
  if (!qword_1EC7D3E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E00);
  }

  return result;
}

void *sub_1D45FEC54(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *&a3;
  v6 = sub_1D4606E60();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s7ContextVMa(0);
  v12 = v11 - 8;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6, v14);
  *v16 = v4;
  *(v16 + 8) = 0;
  (*(v7 + 32))(v16 + *(v12 + 28), v10, v6);
  _s13ContextSourceOMa(0);
  swift_storeEnumTagMultiPayload();
  *&v19[0] = a2;
  sub_1D45F859C(v16, v21);
  v19[12] = v21[12];
  v19[13] = v21[13];
  v20 = v22;
  v19[8] = v21[8];
  v19[9] = v21[9];
  v19[10] = v21[10];
  v19[11] = v21[11];
  v19[4] = v21[4];
  v19[5] = v21[5];
  v19[6] = v21[6];
  v19[7] = v21[7];
  v19[0] = v21[0];
  v19[1] = v21[1];
  v19[2] = v21[2];
  v19[3] = v21[3];
  v17 = sub_1D45F6FC8();
  sub_1D45FF57C(v16);
  sub_1D45FF5D8(v21);
  return v17;
}

uint64_t sub_1D45FEE6C()
{
  sub_1D4606FC0();
  sub_1D4606FE0();
  return sub_1D4607010();
}

uint64_t sub_1D45FEEC8(uint64_t a1)
{
  sub_1D4606FC0();
  sub_1D4606FE0();
  return sub_1D4607010();
}

unint64_t sub_1D45FEF24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3E08;
  if (!qword_1EC7D3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E08);
  }

  return result;
}

void *sub_1D45FEF78(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *&a3;
  v23[1] = a2;
  v5 = sub_1D4606E60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s7ContextVMa(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = (v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1D4606A80();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4606E50();
  sub_1D4606CE0();
  (*(v16 + 8))(v19, v15);
  v20 = sub_1D4606CF0();
  (*(v6 + 16))(v9, a1, v5);
  *v14 = v3;
  *(v14 + 8) = 0;
  (*(v6 + 32))(v14 + *(v11 + 28), v9, v5);
  _s13ContextSourceOMa(0);
  swift_storeEnumTagMultiPayload();
  *&v24 = v20;
  sub_1D45F859C(v14, v39);
  v36 = v39[12];
  v37 = v39[13];
  v38 = v40;
  v32 = v39[8];
  v33 = v39[9];
  v34 = v39[10];
  v35 = v39[11];
  v28 = v39[4];
  v29 = v39[5];
  v30 = v39[6];
  v31 = v39[7];
  v24 = v39[0];
  v25 = v39[1];
  v26 = v39[2];
  v27 = v39[3];
  v21 = sub_1D45F6FC8();

  sub_1D45FF57C(v14);
  sub_1D45FF5D8(v39);
  return v21;
}

uint64_t sub_1D45FF260()
{
  sub_1D4606FC0();
  sub_1D4606CB0();
  sub_1D4606FE0();
  return sub_1D4607010();
}

uint64_t sub_1D45FF318(uint64_t a1)
{
  sub_1D4606FC0();
  sub_1D4606CB0();
  sub_1D4606FE0();
  return sub_1D4607010();
}

uint64_t sub_1D45FF380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D4606CA0() & (v2 == v3);
}

unint64_t sub_1D45FF3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3E10;
  if (!qword_1EC7D3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E10);
  }

  return result;
}

unint64_t sub_1D45FF420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3E18;
  if (!qword_1EC7D3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E18);
  }

  return result;
}

unint64_t sub_1D45FF478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3E20;
  if (!qword_1EC7D3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E20);
  }

  return result;
}

unint64_t sub_1D45FF4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3E28;
  if (!qword_1EC7D3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E28);
  }

  return result;
}

unint64_t sub_1D45FF528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3E30;
  if (!qword_1EC7D3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E30);
  }

  return result;
}

uint64_t sub_1D45FF57C(uint64_t a1)
{
  v2 = _s7ContextVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for BubbleClipShape(uint64_t a1)
{
  result = qword_1EC7D3E40;
  if (!qword_1EC7D3E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D45FF6C0(uint64_t a1)
{
  type metadata accessor for BubbleViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1D45FF75C(319);
    if (v2 <= 0x3F)
    {
      sub_1D45FF7B4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D45FF75C(uint64_t a1)
{
  if (!qword_1EC7D3E50)
  {
    sub_1D4606BB0();
    v1 = sub_1D46068D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7D3E50);
    }
  }
}

void sub_1D45FF7B4(uint64_t a1)
{
  if (!qword_1EC7D3E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3E60, &qword_1D4608F98);
    v1 = sub_1D46068D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7D3E58);
    }
  }
}

void *sub_1D45FF834(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E68, &qword_1D4608FF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E70, &qword_1D4608FF8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v21 - v10;
  if (*(v2 + 168) == 1)
  {
    v12 = *v2;
    v13 = v2[1];
    v14 = v2[2];
    v15 = *(v2 + 24);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E78, &qword_1D4609000);
    (*(*(v16 - 8) + 16))(v11, a1, v16);
    v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E90, &qword_1D4609008) + 36)];
    *v17 = v12;
    *(v17 + 1) = v13;
    *(v17 + 2) = v14;
    v17[24] = v15;
    *(v17 + 25) = 256;
    v18 = &v11[*(v8 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EB8, &qword_1D4609018);
    sub_1D4606A00();
    *v18 = v12;
    *(v18 + 1) = v13;
    *(v18 + 2) = v14;
    v18[24] = v15;
    v18[25] = 0;
    sub_1D45FFCC4(v11, v7);
    swift_storeEnumTagMultiPayload();
    sub_1D45FFB28();
    sub_1D45F3E74(&qword_1EC7D3E98, &qword_1EC7D3E78, &qword_1D4609000, MEMORY[0x1E697FDF8]);
    sub_1D4606AD0();
    return sub_1D45FFD34(v11);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E78, &qword_1D4609000);
    (*(*(v20 - 8) + 16))(v7, a1, v20);
    swift_storeEnumTagMultiPayload();
    sub_1D45FFB28();
    sub_1D45F3E74(&qword_1EC7D3E98, &qword_1EC7D3E78, &qword_1D4609000, MEMORY[0x1E697FDF8]);
    return sub_1D4606AD0();
  }
}

unint64_t sub_1D45FFB28()
{
  result = qword_1EC7D3E80;
  if (!qword_1EC7D3E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3E70, &qword_1D4608FF8);
    sub_1D45FFBE0();
    sub_1D45F3E74(&qword_1EC7D3EB0, &qword_1EC7D3EB8, &qword_1D4609018, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E80);
  }

  return result;
}

unint64_t sub_1D45FFBE0()
{
  result = qword_1EC7D3E88;
  if (!qword_1EC7D3E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3E90, &qword_1D4609008);
    sub_1D45F3E74(&qword_1EC7D3E98, &qword_1EC7D3E78, &qword_1D4609000, MEMORY[0x1E697FDF8]);
    sub_1D45F3E74(&qword_1EC7D3EA0, &qword_1EC7D3EA8, &qword_1D4609010, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3E88);
  }

  return result;
}

uint64_t sub_1D45FFCC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E70, &qword_1D4608FF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D45FFD34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3E70, &qword_1D4608FF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D45FFD9C()
{
  result = qword_1EC7D3EC0;
  if (!qword_1EC7D3EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3EC8, &qword_1D4609020);
    sub_1D45FFB28();
    sub_1D45F3E74(&qword_1EC7D3E98, &qword_1EC7D3E78, &qword_1D4609000, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3EC0);
  }

  return result;
}

__n128 __swift_memcpy91_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D45FFE78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 91))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 90);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D45FFEB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 75) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 91) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 91) = 0;
    }

    if (a2)
    {
      *(result + 90) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D45FFF08(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 74) = 0u;
    v2 = a2 - 2;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 90) = a2;
  return result;
}

double BubbleMaterialConfiguration.resolved(traitCollection:onBackgroundWithAverageLuminance:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = _s7ContextVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v3;
  *v10 = a3;
  *(v10 + 8) = 0;
  *(v10 + *(v12 + 28)) = a1;
  _s13ContextSourceOMa(0);
  swift_storeEnumTagMultiPayload();
  v18 = v11;
  v13 = a1;
  sub_1D460007C(v10, v19);
  sub_1D45FF57C(v10);
  v14 = v23;
  *(a2 + 64) = v22;
  *(a2 + 80) = v14;
  *(a2 + 96) = v24;
  *(a2 + 112) = v25;
  v15 = v19[1];
  *a2 = v19[0];
  *(a2 + 16) = v15;
  result = *&v20;
  v17 = v21;
  *(a2 + 32) = v20;
  *(a2 + 48) = v17;
  return result;
}

__n128 sub_1D460007C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v12 = *v2;
  sub_1D45F9444(*v2);
  sub_1D45F9444(v5);
  sub_1D45F859C(a1, &v13);
  sub_1D45F9454(v12);
  v6 = sub_1D45FB664();
  v7 = sub_1D45F8BE4(a1);
  sub_1D45F9454(v5);
  v8 = v14;
  if (!v14)
  {
    if (qword_1EE08A468 != -1)
    {
      swift_once();
    }

    v8 = qword_1EE08A5C8;
  }

  v9 = v8;
  sub_1D45FF5D8(&v13);
  *a2 = 0x3FD0000000000000;
  *(a2 + 8) = v9;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  result = v16;
  v11 = v18;
  *(a2 + 64) = v17;
  *(a2 + 80) = v11;
  *(a2 + 96) = v19;
  *(a2 + 32) = v15;
  *(a2 + 48) = result;
  *(a2 + 112) = 3;
  return result;
}

uint64_t BubbleMaterialConfiguration.hashValue.getter()
{
  v0 = sub_1D4606FC0();
  sub_1D45F8978(v0, v1, v2);
  sub_1D4606EC0();
  return sub_1D4607010();
}

uint64_t sub_1D4600298()
{
  v0 = sub_1D4606FC0();
  sub_1D45F8978(v0, v1, v2);
  sub_1D4606EC0();
  return sub_1D4607010();
}

uint64_t sub_1D4600340(uint64_t a1)
{
  v1 = sub_1D4606FC0();
  sub_1D45F8978(v1, v2, v3);
  sub_1D4606EC0();
  return sub_1D4607010();
}

BOOL _s9BubbleKit0A21MaterialConfigurationV2eeoiySbAC_ACtFZ_0(id *a1, id *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      sub_1D45F9454(0);
      v4 = 0;
      goto LABEL_20;
    }

    v5 = 0;
    goto LABEL_14;
  }

  if (v2 != 1)
  {
    if (v2 != 2)
    {
      if (v3 >= 3)
      {
        type metadata accessor for CGColor(0);
        sub_1D45F9444(v3);
        sub_1D45F9444(v2);
        sub_1D45F8920();
        v6 = sub_1D4606850();
        sub_1D45F9454(v2);
        sub_1D45F9454(v3);
        return (v6 & 1) != 0;
      }

      sub_1D45F9444(*a2);
      v5 = v2;
LABEL_15:
      sub_1D45F9444(v2);
      sub_1D45F9454(v5);
      sub_1D45F9454(v3);
      return 0;
    }

    if (v3 == 2)
    {
      sub_1D45F9454(2);
      v4 = 2;
LABEL_20:
      sub_1D45F9454(v4);
      return 1;
    }

    v5 = 2;
LABEL_14:
    v2 = *a2;
    goto LABEL_15;
  }

  if (v3 != 1)
  {
    v5 = 1;
    goto LABEL_14;
  }

  sub_1D45F9454(1);
  sub_1D45F9454(1);
  return v3;
}

unint64_t sub_1D46004CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3ED0;
  if (!qword_1EC7D3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3ED0);
  }

  return result;
}

unint64_t sub_1D4600534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EC7D3ED8;
  if (!qword_1EC7D3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3ED8);
  }

  return result;
}

uint64_t sub_1D46005B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1D4606B00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1D4606B40();
  sub_1D4606940();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EE0, &qword_1D4609220);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EE8, &qword_1D4609250) + 36);
  *v19 = KeyPath;
  *(v19 + 8) = v11;
  *(v19 + 16) = v13;
  *(v19 + 24) = v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EF0, &qword_1D4609258);
  v21 = (a2 + *(result + 36));
  *v21 = 0xD000000000000019;
  v21[1] = 0x80000001D4609190;
  return result;
}

double sub_1D4600780@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D45F69A0(a1, a2, a3);
  sub_1D4606A90();
  result = *&v6;
  *a4 = v6;
  *(a4 + 16) = v7;
  *(a4 + 32) = v8;
  return result;
}

uint64_t sub_1D46007D4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EE0, &qword_1D4609220);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - v8;
  (*(v5 + 16))(&v13 - v8, a1, v4, v7);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  result = (*(v5 + 32))(v11 + v10, v9, v4);
  *a2 = sub_1D4600A28;
  a2[1] = v11;
  return result;
}

double sub_1D460090C@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_1D4600920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4601334();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D4600984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D46012DC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

double sub_1D46009E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D45F694C(a1, a2, a3);
  sub_1D4606A90();
  return v4;
}

uint64_t sub_1D4600A28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EE0, &qword_1D4609220) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D46005B4(v4, a1);
}

uint64_t type metadata accessor for BubbleBackgroundGradientPositionTracker(uint64_t a1)
{
  result = qword_1EC7D3EF8;
  if (!qword_1EC7D3EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4600B48(uint64_t a1)
{
  type metadata accessor for BubbleViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1D4600BCC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4600BCC(uint64_t a1)
{
  if (!qword_1EC7D3F08)
  {
    type metadata accessor for CGRect(255);
    v1 = sub_1D4606DB0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7D3F08);
    }
  }
}

double sub_1D4600C40(_OWORD *a1, void (*a2)(_OWORD *__return_ptr))
{
  a2(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

uint64_t sub_1D4600C88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D4606AF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = 0xD000000000000019;
  v16[1] = 0x80000001D4609190;
  sub_1D4606B30();
  sub_1D4606940();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  result = sub_1D4606CC0();
  *a1 = result;
  *(a1 + 8) = round(v8);
  *(a1 + 16) = round(v10);
  *(a1 + 24) = round(v12);
  *(a1 + 32) = round(v14);
  return result;
}

void *sub_1D4600DE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3F38, &qword_1D46093B8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - v6;
  v8 = type metadata accessor for BubbleBackgroundGradientPositionTracker(0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3F40, &qword_1D46093C0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v33 - v13;
  sub_1D45F4F4C(v2 + 32, v39);
  if (v41[50] == 1)
  {
    sub_1D46013B8(v39);
  }

  else
  {
    v34 = v8;
    v15 = v41[49];
    sub_1D45F400C(v41, &qword_1EC7D3AF0, &qword_1D4607B38);
    __swift_destroy_boxed_opaque_existential_1(v39);
    if (v15 == 1)
    {
      v16 = sub_1D4606E90();
      v33 = v17;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3F48, &qword_1D46093C8);
      (*(*(v18 - 8) + 16))(v14, a1, v18);
      v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3F70, &qword_1D46093D8) + 36)];
      *v19 = sub_1D4600C88;
      v19[1] = 0;
      v20 = v33;
      v19[2] = v16;
      v19[3] = v20;
      sub_1D4601660(v2, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = (*(v35 + 80) + 16) & ~*(v35 + 80);
      v22 = swift_allocObject();
      sub_1D46016C4(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3F60, &qword_1D46093D0) + 36)];
      *v23 = sub_1D4601728;
      *(v23 + 1) = v22;
      KeyPath = swift_getKeyPath();
      v25 = v2 + *(v34 + 20);
      v26 = *(v25 + 32);
      v27 = *(v25 + 16);
      v39[0] = *v25;
      v39[1] = v27;
      v40 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3FB0, &qword_1D4609428);
      sub_1D4606D90();
      v28 = v37;
      v29 = v38;
      v30 = &v14[*(v11 + 36)];
      *v30 = KeyPath;
      *(v30 + 8) = v28;
      *(v30 + 24) = v29;
      sub_1D4601798(v14, v7);
      swift_storeEnumTagMultiPayload();
      sub_1D460140C();
      sub_1D45F3E74(&qword_1EC7D3F78, &qword_1EC7D3F48, &qword_1D46093C8, MEMORY[0x1E697FDF8]);
      sub_1D4606AD0();
      return sub_1D45F400C(v14, &qword_1EC7D3F40, &qword_1D46093C0);
    }
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3F48, &qword_1D46093C8);
  (*(*(v32 - 8) + 16))(v7, a1, v32);
  swift_storeEnumTagMultiPayload();
  sub_1D460140C();
  sub_1D45F3E74(&qword_1EC7D3F78, &qword_1EC7D3F48, &qword_1D46093C8, MEMORY[0x1E697FDF8]);
  return sub_1D4606AD0();
}

uint64_t sub_1D4601260(_OWORD *a1, uint64_t a2)
{
  type metadata accessor for BubbleBackgroundGradientPositionTracker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3FB0, &qword_1D4609428);
  return sub_1D4606DA0();
}

unint64_t sub_1D46012DC()
{
  result = qword_1EC7D3F20;
  if (!qword_1EC7D3F20)
  {
    type metadata accessor for CGRect(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3F20);
  }

  return result;
}

unint64_t sub_1D4601334()
{
  result = qword_1EC7D3F28;
  if (!qword_1EC7D3F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3F30, &qword_1D46093B0);
    sub_1D46012DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3F28);
  }

  return result;
}

unint64_t sub_1D460140C()
{
  result = qword_1EC7D3F50;
  if (!qword_1EC7D3F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3F40, &qword_1D46093C0);
    sub_1D46014C4();
    sub_1D45F3E74(&qword_1EC7D3FA0, &qword_1EC7D3FA8, &unk_1D46093F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3F50);
  }

  return result;
}

unint64_t sub_1D46014C4()
{
  result = qword_1EC7D3F58;
  if (!qword_1EC7D3F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3F60, &qword_1D46093D0);
    sub_1D460157C();
    sub_1D45F3E74(&qword_1EC7D3F90, &qword_1EC7D3F98, &qword_1D46093E8, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3F58);
  }

  return result;
}

unint64_t sub_1D460157C()
{
  result = qword_1EC7D3F68;
  if (!qword_1EC7D3F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3F70, &qword_1D46093D8);
    sub_1D45F3E74(&qword_1EC7D3F78, &qword_1EC7D3F48, &qword_1D46093C8, MEMORY[0x1E697FDF8]);
    sub_1D45F3E74(&qword_1EC7D3F80, &qword_1EC7D3F88, &qword_1D46093E0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3F68);
  }

  return result;
}

uint64_t sub_1D4601660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleBackgroundGradientPositionTracker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D46016C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleBackgroundGradientPositionTracker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4601728(_OWORD *a1)
{
  v3 = *(type metadata accessor for BubbleBackgroundGradientPositionTracker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D4601260(a1, v4);
}

uint64_t sub_1D4601798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3F40, &qword_1D46093C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4601818()
{
  result = qword_1EC7D3FB8;
  if (!qword_1EC7D3FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3FC0, qword_1D4609460);
    sub_1D460140C();
    sub_1D45F3E74(&qword_1EC7D3F78, &qword_1EC7D3F48, &qword_1D46093C8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D3FB8);
  }

  return result;
}

uint64_t type metadata accessor for BubbleBackground(uint64_t a1)
{
  result = qword_1EC7D3FC8;
  if (!qword_1EC7D3FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4601954(uint64_t a1)
{
  type metadata accessor for BubbleViewConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1D4601AE4(319, &qword_1EC7D3E50, MEMORY[0x1E6980E88]);
    if (v2 <= 0x3F)
    {
      sub_1D4601A90(319, &qword_1EC7D3E58, &qword_1EC7D3E60, &qword_1D4608F98);
      if (v3 <= 0x3F)
      {
        sub_1D4601A90(319, &qword_1EC7D3FD8, &qword_1EC7D3F30, &qword_1D46093B0);
        if (v4 <= 0x3F)
        {
          sub_1D4601AE4(319, &qword_1EC7D3FE0, type metadata accessor for CGRect);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D4601A90(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D46068D0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D4601AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D46068D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D4601B54@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D4606A80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BE8, &unk_1D4609550);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for BubbleBackground(0);
  sub_1D45F37BC(v1 + *(v12 + 20), v11, &qword_1EC7D3BE8, &unk_1D4609550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1D4606BB0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1D4606F10();
    v15 = sub_1D4606B70();
    sub_1D46068A0();

    sub_1D4606A70();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1D4601D5C()
{
  v1 = sub_1D4606A80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for BubbleBackground(0) + 24);
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1D4606F10();
    v9 = sub_1D4606B70();
    sub_1D46068A0();

    sub_1D4606A70();
    swift_getAtKeyPath();
    j__swift_release(v7);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1D4601EB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D4606A80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for BubbleBackground(0);
  v9 = (v1 + *(result + 28));
  v11 = *v9;
  v10 = v9[1];
  v12 = *(v9 + 32);
  if (*(v9 + 33) != 1)
  {
    v15 = *v9;
    v13 = v15;
    v16 = v10;

    sub_1D4606F10();
    v14 = sub_1D4606B70();
    sub_1D46068A0();

    sub_1D4606A70();
    swift_getAtKeyPath();
    sub_1D46032CC(v13, *(&v15 + 1), v16, *(&v16 + 1), v12, 0);
    result = (*(v4 + 8))(v7, v3);
    v11 = v17;
    v10 = v18;
    LOBYTE(v12) = v19;
  }

  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v12 & 1;
  return result;
}

double sub_1D4602040()
{
  v1 = sub_1D4606A80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for BubbleBackground(0) + 32);
  v8 = *v6;
  v7 = *(v6 + 8);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (*(v6 + 32) == 1)
  {
    return *v6;
  }

  sub_1D4606F10();
  v12 = sub_1D4606B70();
  sub_1D46068A0();

  sub_1D4606A70();
  swift_getAtKeyPath();
  sub_1D46032D8(v8, v7, v10, v9, 0);
  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_1D46021CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(v2 + 1);
  v8 = *(v2 + 2);
  v9 = *(v3 + 24);
  v10 = sub_1D4606E90();
  v12 = v11;
  sub_1D4602400(v3, v7, v8, v9, &v24, v6);
  v47 = v34;
  v48 = v35;
  v43 = v30;
  v44 = v31;
  v45 = v32;
  v46 = v33;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  v42 = v29;
  v37 = v24;
  v38 = v25;
  *&v49 = v36;
  *(&v49 + 1) = v10;
  v50 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3FE8, &qword_1D4609528);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  v14 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3FF0, &qword_1D4609530) + 36);
  v15 = v48;
  *(v14 + 160) = v47;
  *(v14 + 176) = v15;
  *(v14 + 192) = v49;
  *(v14 + 208) = v50;
  v16 = v44;
  *(v14 + 96) = v43;
  *(v14 + 112) = v16;
  v17 = v46;
  *(v14 + 128) = v45;
  *(v14 + 144) = v17;
  v18 = v40;
  *(v14 + 32) = v39;
  *(v14 + 48) = v18;
  v19 = v42;
  *(v14 + 64) = v41;
  *(v14 + 80) = v19;
  v20 = v38;
  *v14 = v37;
  *(v14 + 16) = v20;
  v51[10] = v34;
  v51[11] = v35;
  v51[6] = v30;
  v51[7] = v31;
  v51[8] = v32;
  v51[9] = v33;
  v51[2] = v26;
  v51[3] = v27;
  v51[4] = v28;
  v51[5] = v29;
  v51[0] = v24;
  v51[1] = v25;
  v52 = v36;
  v53 = v10;
  v54 = v12;
  sub_1D45F37BC(&v37, &v23, &qword_1EC7D3FF8, &qword_1D4609538);
  sub_1D45F400C(v51, &qword_1EC7D3FF8, &qword_1D4609538);
  v21 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4000, &unk_1D4609540) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3EB8, &qword_1D4609018);
  result = sub_1D4606A00();
  *v21 = v6;
  *(v21 + 8) = v7;
  *(v21 + 16) = v8;
  *(v21 + 24) = v9;
  *(v21 + 25) = 0;
  return result;
}

double sub_1D4602400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v45 = a3;
  v44 = a2;
  v10 = type metadata accessor for BubbleBackground(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v13);
  v14 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1D4606BB0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_1D4601D5C();
  sub_1D4601B54(v19);
  sub_1D45FDCDC(v20, v19);

  (*(v16 + 8))(v19, v15);
  sub_1D4603264(a1, v14);
  v21 = *(v11 + 80);
  v22 = swift_allocObject();
  sub_1D46032E4(v14, v22 + ((v21 + 16) & ~v21));
  v23 = sub_1D4606E90();
  v25 = v24;
  sub_1D45F4F4C(a1 + 32, v50);
  v43 = a4;
  if (v51[58])
  {
    sub_1D46013B8(v50);
    v26 = 0;
    v27 = 0;
  }

  else
  {
    v28 = v25;
    v29 = v23;
    v46 = *&v51[8];
    v47 = *&v51[24];
    v48 = *&v51[40];
    v49 = v51[56];
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_1D4603264(a1, &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v30 = (v21 + 41) & ~v21;
    v31 = (v12 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    v32 = v45;
    *(v27 + 24) = v44;
    *(v27 + 32) = v32;
    *(v27 + 40) = a4 & 1;
    v33 = v27 + v30;
    v23 = v29;
    v25 = v28;
    sub_1D46032E4(v14, v33);
    v34 = v27 + v31;
    v35 = v47;
    *v34 = v46;
    *(v34 + 16) = v35;
    *(v34 + 32) = v48;
    *(v34 + 48) = v49;
    v26 = sub_1D46033C8;
  }

  sub_1D4606E90();
  v36 = v43 & 1;
  sub_1D46069F0();
  *(a5 + 24) = a6;
  v37 = *v51;
  *(a5 + 136) = *&v51[16];
  v38 = *&v51[48];
  *(a5 + 152) = *&v51[32];
  *(a5 + 168) = v38;
  *(a5 + 184) = v52;
  result = *v50;
  v40 = v50[1];
  *(a5 + 88) = v50[0];
  *(a5 + 104) = v40;
  *a5 = sub_1D4603348;
  *(a5 + 8) = v22;
  *(a5 + 16) = 0;
  v41 = v45;
  *(a5 + 32) = v44;
  *(a5 + 40) = v41;
  *(a5 + 48) = v36;
  *(a5 + 49) = 256;
  *(a5 + 56) = v26;
  *(a5 + 64) = v27;
  *(a5 + 72) = v23;
  *(a5 + 80) = v25;
  *(a5 + 120) = v37;
  return result;
}

void *sub_1D4602890@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D45F4F4C(a1 + 32, v43);
  if (v45)
  {
    LOBYTE(v39[0]) = 0;
    *&v32[0] = *&v43[0];
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4038, &qword_1D4609578);
    sub_1D4603618();
    result = sub_1D4606AD0();
    v5 = v35[0];
    v6 = v35[1];
    v7 = v35[2];
    v8 = v35[3];
    v9 = v36;
    v10 = v37;
  }

  else
  {
    sub_1D46013B8(v43);
    sub_1D45F4F4C(a1 + 32, v43);
    if (v45)
    {
      result = sub_1D46013B8(v43);
      v5 = 0uLL;
      v10 = -256;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v9 = 0uLL;
    }

    else
    {
      v11 = v44[49];
      sub_1D45F406C(v43, v41);
      sub_1D45F400C(v44, &qword_1EC7D3AF0, &qword_1D4607B38);
      if (v11 == 1 && (sub_1D4601EB0(v46), (v46[32] & 1) == 0))
      {
        v18 = __swift_project_boxed_opaque_existential_1(v41, v42);
        v20 = MEMORY[0x1EEE9AC00](v18, v19);
        (*(v22 + 16))(&v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
        v23 = sub_1D4606930();
        sub_1D4606E90();
        sub_1D4606920();
        *&v31[6] = v47[0];
        *&v31[22] = v47[1];
        *&v31[38] = v47[2];
        v48.origin.x = sub_1D4602040();
        v24 = -CGRectGetMinX(v48);
        v49.origin.x = sub_1D4602040();
        MinY = CGRectGetMinY(v49);
        *(v35 + 10) = *v31;
        LOBYTE(v32[0]) = 0;
        *&v35[0] = v23;
        WORD4(v35[0]) = 256;
        *(&v35[1] + 10) = *&v31[16];
        *(&v35[2] + 10) = *&v31[32];
        *(&v35[3] + 1) = *&v31[46];
        *&v36 = v24;
        *(&v36 + 1) = -MinY;
        LOBYTE(v37) = 0;
      }

      else
      {
        v12 = __swift_project_boxed_opaque_existential_1(v41, v42);
        v14 = MEMORY[0x1EEE9AC00](v12, v13);
        (*(v16 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
        v17 = sub_1D4606930();
        LOBYTE(v32[0]) = 1;
        *&v35[0] = v17;
        WORD4(v35[0]) = 256;
        LOBYTE(v37) = 1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4008, &qword_1D4609560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4010, &qword_1D4609568);
      sub_1D46034D4();
      sub_1D45F3E74(&qword_1EC7D4030, &qword_1EC7D4010, &qword_1D4609568, MEMORY[0x1E697DB78]);
      sub_1D4606AD0();
      v32[2] = v39[2];
      v32[3] = v39[3];
      v32[4] = v39[4];
      v33 = v40;
      v32[0] = v39[0];
      v32[1] = v39[1];
      v38 = 1;
      v34 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4038, &qword_1D4609578);
      sub_1D4603618();
      sub_1D4606AD0();
      v29 = v35[1];
      v30 = v35[0];
      v27 = v35[3];
      v28 = v35[2];
      v26 = v36;
      v10 = v37;
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v9 = v26;
      v8 = v27;
      v7 = v28;
      v6 = v29;
      v5 = v30;
    }
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v10;
  return result;
}

uint64_t sub_1D4602D28@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D0>)
{
  v40 = a4;
  v13 = sub_1D4606AE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v41[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4606B20();
  sub_1D4606940();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  (*(v14 + 8))(v17, v13);
  v26 = a3 & 1;
  *&v50 = a7;
  *(&v50 + 1) = a1;
  *&v51 = a2;
  BYTE8(v51) = a3 & 1;
  v27 = sub_1D45EC784(&v50, v19, v21, v23, v25);
  *&v50 = v19;
  *(&v50 + 1) = v21;
  *&v51 = v23;
  *(&v51 + 1) = v25;
  *&v52 = a7;
  *(&v52 + 1) = a1;
  *&v53 = a2;
  BYTE8(v53) = a3 & 1;
  v54 = v27;
  v46 = v53;
  v47 = v27;
  v44 = v51;
  v45 = v52;
  v43 = v50;
  sub_1D4603090(&v43, v48);
  *(v42 + 7) = v48[0];
  *(&v42[1] + 7) = v48[1];
  *(&v42[2] + 7) = v49;

  v28 = sub_1D4606E90();
  v29 = v28;
  v31 = v30;
  if (!*(a5 + 24))
  {
    sub_1D45F3FB8(&v50);
    sub_1D4603480(v48);
    *&v43 = sub_1D4606CC0();
    result = sub_1D4606930();
    v38 = result;
    goto LABEL_5;
  }

  v40 = v28;
  result = sub_1D45F37BC(a5, &v43, &qword_1EC7D3AF0, &qword_1D4607B38);
  if (*(&v44 + 1))
  {
    sub_1D45F3FB8(&v50);
    sub_1D4603480(v48);
    sub_1D45F4AA0(&v43, v41);
    sub_1D45F3EBC(&v43);
    v33 = __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    v35 = MEMORY[0x1EEE9AC00](v33, v34);
    (*(v37 + 16))(&v41[-1] - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
    v38 = sub_1D4606930();
    result = __swift_destroy_boxed_opaque_existential_1(v41);
    v29 = v40;
LABEL_5:
    *a6 = a7;
    *(a6 + 32) = a7;
    v39 = v42[1];
    *(a6 + 57) = v42[0];
    *(a6 + 8) = a1;
    *(a6 + 16) = a2;
    *(a6 + 24) = v26;
    *(a6 + 40) = a1;
    *(a6 + 48) = a2;
    *(a6 + 56) = v26;
    *(a6 + 73) = v39;
    *(a6 + 88) = *(&v42[1] + 15);
    *(a6 + 104) = 256;
    *(a6 + 112) = v29;
    *(a6 + 120) = v31;
    *(a6 + 128) = v38;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_1D4603090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D45F4F4C(v2 + 32, v22);
  if (v27)
  {
    sub_1D46013B8(v22);
    result = sub_1D46068E0();
    v7 = *(&v13 + 1);
    v6 = v13;
    v8 = *(&v14 + 1);
    v9 = v14;
    v10 = v15;
  }

  else
  {
    v20[0] = v23;
    v20[1] = v24;
    v20[2] = v25;
    v21 = v26;
    sub_1D45F37BC(v20, &v13, &qword_1EC7D3AF0, &qword_1D4607B38);
    if (*(&v14 + 1))
    {
      v18[0] = v13;
      v18[1] = v14;
      v18[2] = v15;
      v19 = v16;
      v11 = *(a1 + 48);
      v15 = *(a1 + 32);
      v16 = v11;
      v17 = *(a1 + 64);
      v12 = *(a1 + 16);
      v13 = *a1;
      v14 = v12;
      sub_1D45F4924(&v13, v28);
      v6 = v28[0];
      v7 = v28[1];
      v9 = v28[2];
      v8 = v28[3];
      v10 = v28[4];
      sub_1D45F3EBC(v18);
    }

    else
    {
      sub_1D45F400C(&v13, &qword_1EC7D3AF0, &qword_1D4607B38);
      sub_1D46068E0();
      v7 = *(&v13 + 1);
      v6 = v13;
      v8 = *(&v14 + 1);
      v9 = v14;
      v10 = v15;
    }

    sub_1D45F400C(v20, &qword_1EC7D3AF0, &qword_1D4607B38);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
  }

  *a2 = v6;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v8;
  a2[4] = v10;
  return result;
}

uint64_t sub_1D4603264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleBackground(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D46032CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return v6;
}

uint64_t sub_1D46032D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_1D46032E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BubbleBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D4603348@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BubbleBackground(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D4602890(v4, a1);
}

uint64_t sub_1D46033C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BubbleBackground(0) - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1D4602D28(v6, v7, v8, v1 + v4, v9, a1, v5);
}

unint64_t sub_1D46034D4()
{
  result = qword_1EC7D4018;
  if (!qword_1EC7D4018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D4008, &qword_1D4609560);
    sub_1D4603560();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D4018);
  }

  return result;
}

unint64_t sub_1D4603560()
{
  result = qword_1EC7D4020;
  if (!qword_1EC7D4020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D4028, &qword_1D4609570);
    sub_1D45F3E74(&qword_1EC7D4030, &qword_1EC7D4010, &qword_1D4609568, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D4020);
  }

  return result;
}

unint64_t sub_1D4603618()
{
  result = qword_1EC7D4040;
  if (!qword_1EC7D4040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D4038, &qword_1D4609578);
    sub_1D46034D4();
    sub_1D45F3E74(&qword_1EC7D4030, &qword_1EC7D4010, &qword_1D4609568, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D4040);
  }

  return result;
}

unint64_t sub_1D46036D0()
{
  result = qword_1EC7D4048;
  if (!qword_1EC7D4048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D4000, &unk_1D4609540);
    sub_1D4603788();
    sub_1D45F3E74(&qword_1EC7D3EB0, &qword_1EC7D3EB8, &qword_1D4609018, MEMORY[0x1E69805E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D4048);
  }

  return result;
}

unint64_t sub_1D4603788()
{
  result = qword_1EC7D4050;
  if (!qword_1EC7D4050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D3FF0, &qword_1D4609530);
    sub_1D45F3E74(&qword_1EC7D4058, &qword_1EC7D3FE8, &qword_1D4609528, MEMORY[0x1E697FDF8]);
    sub_1D45F3E74(&qword_1EC7D4060, &qword_1EC7D3FF8, &qword_1D4609538, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D4050);
  }

  return result;
}

uint64_t sub_1D46038A0()
{
  sub_1D4606FC0();
  BubblePath.Configuration.hash(into:)();
  v1 = sub_1D4607010();
  v2 = *(v0 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame);
  v3 = *(v0 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 8);
  v4 = *(v0 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 16);
  v5 = *(v0 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 24);
  sub_1D4607020();
  sub_1D45F562C(v2, v3, v4, v5);
  return sub_1D4607000() ^ v1;
}

BOOL sub_1D4603968(uint64_t a1)
{
  swift_getObjectType();
  sub_1D4604590(a1, &v18);
  if (!v19)
  {
    sub_1D4604528(&v18);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v17;
  v4 = v17 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_configuration;
  v5 = v1 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_configuration;
  if (*(v1 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_configuration) != *(v17 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_configuration) || (v6 = *(v4 + 24), v7 = *(v5 + 24), v18 = *(v5 + 8), v17 = *(v4 + 8), !_s9BubbleKit0A4PathV9TailStyleO2eeoiySbAE_AEtFZ_0(&v18, &v17)) || v6 != v7)
  {

    return 0;
  }

  v10 = *&v3[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame];
  v9 = *&v3[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 8];
  v12 = *&v3[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 16];
  v11 = *&v3[OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 24];
  v14 = *(v1 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame);
  v13 = *(v1 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 8);
  v16 = *(v1 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 16);
  v15 = *(v1 + OBJC_IVAR____TtCV9BubbleKit10BubblePathP33_5FD490854F6BA68D6285276740D9BC3D20BubblePathNSCacheKey_frame + 24);

  return vabdd_f64(v10, v14) < 0.001 && vabdd_f64(v9, v13) < 0.001 && vabdd_f64(v12, v16) < 0.001 && vabdd_f64(v11, v15) < 0.001;
}

id sub_1D4603BC4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1D4603C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1D4603C94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D4603D1C()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EE08A5B8 = result;
  return result;
}

double sub_1D4603E70()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 16))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 16))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D4603F1C()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 24))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 24))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D4603FC8()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 32))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 32))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D4604074()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 40))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 40))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D4604120()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 48))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 48))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D46041CC()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 56))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 56))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D4604278()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 64))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 64))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D4604324()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 72))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 72))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D46043D0()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 80))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 80))(v5, v6) * (1.0 - v1[1]);
}

double sub_1D460447C()
{
  v1 = v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = (*(v3 + 88))(v2, v3);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, *(v1 + 10));
  return v4 * v1[1] + (*(v6 + 88))(v5, v6) * (1.0 - v1[1]);
}

uint64_t sub_1D4604528(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4080, &qword_1D46098B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4604590(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4080, &qword_1D46098B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1D4604600(void *a1, unint64_t a2, void *a3, CGFloat a4, CGFloat MaxX, float64x2_t a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v16 = a3;
  v20 = *a1 >> 62;
  if (v20)
  {
    if (v20 != 1)
    {
      v95 = a3[3];
      v96 = a3[4];
      __swift_project_boxed_opaque_existential_1(a3, v95);
      v21 = a8 - (*(v96 + 40))(v95, v96);
      v97 = *(v16 + 24);
      v98 = *(v16 + 32);
      __swift_project_boxed_opaque_existential_1(v16, v97);
      v22 = a9 - (*(v98 + 64))(v97, v98);
      v99 = *(v16 + 24);
      v100 = *(v16 + 32);
      __swift_project_boxed_opaque_existential_1(v16, v99);
      v23 = a8 - (*(v100 + 24))(v99, v100);
      v101 = *(v16 + 24);
      v102 = *(v16 + 32);
      __swift_project_boxed_opaque_existential_1(v16, v101);
      v24 = a9 - (*(v102 + 80))(v101, v102);
      v103 = *(v16 + 24);
      v104 = *(v16 + 32);
      __swift_project_boxed_opaque_existential_1(v16, v103);
      v25 = a8 - (*(v104 + 32))(v103, v104);
      v105 = *(v16 + 24);
      v106 = *(v16 + 32);
      __swift_project_boxed_opaque_existential_1(v16, v105);
      v26 = a9 - (*(v106 + 72))(v105, v106);
      v61 = sub_1D45EEF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v29 = *(v61 + 2);
      v62 = *(v61 + 3);
      v13 = v29 + 1;
      if (v29 < v62 >> 1)
      {
        goto LABEL_33;
      }

      goto LABEL_41;
    }

    v21 = a8 + a6.f64[0] * -0.201395;
    v22 = a9 + a6.f64[0] * -0.40379087;
    v23 = a6.f64[0] * 0.0 + a8;
    v24 = a9 + a6.f64[0] * -0.78469087;
    v25 = a8 + a6.f64[0] * -0.070745;
    v152 = a6;
    v26 = a9 + a6.f64[0] * -0.57509087;
    v27 = sub_1D45EEF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    v30 = v28 >> 1;
    a2 = v29 + 1;
    if (v28 >> 1 <= v29)
    {
      v27 = sub_1D45EEF94((v28 > 1), v29 + 1, 1, v27);
      v28 = *(v27 + 3);
      v30 = v28 >> 1;
    }

    *(v27 + 2) = a2;
    v31 = &v27[72 * v29];
    *(v31 + 4) = a4;
    *(v31 + 5) = MaxX;
    *(v31 + 6) = v21;
    *(v31 + 7) = v22;
    *(v31 + 8) = v23;
    *(v31 + 9) = v24;
    *(v31 + 10) = v25;
    *(v31 + 11) = v26;
    v31[96] = 9;
    v33 = a8;
    v32 = a9;
    v34.f64[0] = a8;
    v34.f64[1] = a9;
    v35 = v152.f64[0];
    v36 = vaddq_f64(v34, vmulq_n_f64(xmmword_1D4609720, v152.f64[0]));
    v37 = vaddq_f64(v34, vmulq_n_f64(xmmword_1D4609730, v152.f64[0]));
    v38 = vaddq_f64(v34, vmulq_n_f64(xmmword_1D4609740, v152.f64[0]));
    v16 = v29 + 2;
    if (v30 < (v29 + 2))
    {
      v144 = v36;
      v147 = v34;
      v141 = v38;
      v142 = v37;
      v134 = sub_1D45EEF94((v28 > 1), v29 + 2, 1, v27);
      v38 = v141;
      v37 = v142;
      v36 = v144;
      v34 = v147;
      v35 = v152.f64[0];
      v33 = a8;
      v32 = a9;
      v27 = v134;
    }

    *(v27 + 2) = v16;
    v39 = (v27 + 32);
    v40 = &v27[72 * a2 + 32];
    *v40 = v21;
    *(v40 + 8) = v22;
    *(v40 + 16) = v36;
    *(v40 + 32) = v37;
    *(v40 + 48) = v38;
    *(v40 + 64) = 10;
    v41 = v29 + 1;
    if (!__OFSUB__(v16, 1))
    {
      if (v41 < v16)
      {
        v42 = *(v39 + 72 * v41 + 16);
        MaxX = v35 * 0.02017913 + v32;
        v43 = vaddq_f64(v34, vmulq_n_f64(xmmword_1D4609760, v35));
        v44 = vaddq_f64(v34, vmulq_n_f64(xmmword_1D4609750, v35));
        v45 = *(v27 + 3);
        v13 = v29 + 3;
        if ((v29 + 3) <= (v45 >> 1))
        {
          goto LABEL_10;
        }

        goto LABEL_47;
      }

      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_39;
  }

  v21 = a11;
  v22 = a10;
  v26 = a7;
  v24 = a12;
  v23 = a13;
  v152 = a6;
  v25 = a9 + a6.f64[0] * -0.5394;
  v27 = sub_1D45EEF94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = *(v27 + 2);
  v39 = *(v27 + 3);
  v13 = v29 + 1;
  if (v29 >= v39 >> 1)
  {
LABEL_39:
    v27 = sub_1D45EEF94((v39 > 1), v13, 1, v27);
  }

  *(v27 + 2) = v13;
  v59 = &v27[72 * v29];
  *(v59 + 4) = a4;
  *(v59 + 5) = MaxX;
  *(v59 + 6) = a8;
  *(v59 + 7) = v25;
  *(v59 + 8) = a8;
  *(v59 + 9) = v25;
  *(v59 + 10) = a8;
  *(v59 + 11) = v25;
  v59[96] = 9;
  v156 = v27;
  v29 = sub_1D45EF384(&unk_1F4FD7FC8);

  sub_1D45EFB68(v60);
  v158.origin.x = v22;
  v158.origin.y = v21;
  v158.size.width = v24;
  v158.size.height = v23;
  MaxX = CGRectGetMaxX(v158);
  v159.origin.x = v22;
  v159.origin.y = v21;
  v159.size.width = v24;
  v159.size.height = v23;
  a4 = CGRectGetMaxX(v159);
  v160.origin.x = v22;
  v160.origin.y = v21;
  v160.size.width = v24;
  v160.size.height = v23;
  v63 = CGRectGetMaxX(v160);
  v14 = v156;
  v13 = *(v156 + 2);
  if (v13)
  {
    v64.f64[0] = v63;
    v23 = v152.f64[0] * -0.6826;
    v24 = v152.f64[0] * -0.2282;
    v25 = v152.f64[0] * -0.31;
    v26 = v152.f64[0] * 0.04404;
    v64.f64[1] = a9;
    v147 = vmulq_n_f64(xmmword_1D4609780, v152.f64[0]);
    v152 = v64;
    v65 = &v156[72 * v13];
    v21 = *(v65 - 3);
    v22 = *(v65 - 2);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_26:
      v66 = MaxX + v23;
      v23 = a9 + v24;
      v67 = a4 + v25;
      v24 = v26 + a9;
      v68 = vaddq_f64(v152, v147);
      v70 = *(v14 + 2);
      v69 = *(v14 + 3);
      if (v70 >= v69 >> 1)
      {
        v152 = v68;
        v135 = sub_1D45EEF94((v69 > 1), v70 + 1, 1, v14);
        v68 = v152;
        v14 = v135;
      }

      *(v14 + 2) = v70 + 1;
      v71 = &v14[72 * v70 + 32];
      *v71 = v21;
      *(v71 + 8) = v22;
      *(v71 + 16) = v66;
      *(v71 + 24) = v23;
      *(v71 + 32) = v67;
      *(v71 + 40) = v24;
      *(v71 + 48) = v68;
      *(v71 + 64) = 12;
      v72 = *(a2 + 24);
      v73 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_1(a2, v72);
      MaxX = (*(v73 + 64))(v72, v73);
      v74 = *(a2 + 24);
      v75 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_1(a2, v74);
      a4 = (*(v75 + 40))(v74, v75);
      v76 = *(a2 + 24);
      v77 = *(a2 + 32);
      __swift_project_boxed_opaque_existential_1(a2, v76);
      v21 = (*(v77 + 56))(v76, v77);
      v15 = *(v16 + 24);
      v78 = *(v16 + 32);
      v13 = __swift_project_boxed_opaque_existential_1(v16, v15);
      (*(v78 + 48))(v15, v78);
      v16 = *(v14 + 2);
      if (v16)
      {
        MaxX = a8 - MaxX;
        a4 = a9 - a4;
        v21 = MaxX + (a8 - v21 - MaxX) * 0.6;
        v22 = a4 + (a9 - v79 - a4) * 0.6;
        v15 = 72 * v16;
        v80 = &v14[72 * v16 + 32];
        v23 = *(v80 - 56);
        v24 = *(v80 - 48);
        v46 = *(v14 + 3);
        v13 = v16 + 1;
        if (v16 < v46 >> 1)
        {
LABEL_30:
          *(v14 + 2) = v13;
          v81 = &v14[v15];
          *(v81 + 4) = v23;
          *(v81 + 5) = v24;
          v13 = &v14[v15 + 32];
          *(v13 + 16) = MaxX;
          *(v13 + 24) = a4;
          *(v13 + 32) = v23;
          *(v13 + 40) = v24;
          *(v13 + 48) = v21;
          *(v13 + 56) = v22;
          *(v13 + 64) = 13;

          v157 = v14;
          v46 = *(v14 + 2);
          if (v16 >= v46)
          {
            __break(1u);
            goto LABEL_51;
          }

          v82 = *(a2 + 24);
          v83 = *(a2 + 32);
          __swift_project_boxed_opaque_existential_1(a2, v82);
          (*(v83 + 88))(v82, v83);
          v84 = *(a2 + 24);
          v85 = *(a2 + 32);
          __swift_project_boxed_opaque_existential_1(a2, v84);
          (*(v85 + 16))(v84, v85);
          v86 = *(a2 + 24);
          v87 = *(a2 + 32);
          __swift_project_boxed_opaque_existential_1(a2, v86);
          (*(v87 + 72))(v86, v87);
          v88 = *(a2 + 24);
          v89 = *(a2 + 32);
          __swift_project_boxed_opaque_existential_1(a2, v88);
          (*(v89 + 32))(v88, v89);
          v90 = *(a2 + 24);
          v91 = *(a2 + 32);
          __swift_project_boxed_opaque_existential_1(a2, v90);
          (*(v91 + 80))(v90, v91);
          v92 = *(a2 + 24);
          v93 = *(a2 + 32);
          __swift_project_boxed_opaque_existential_1(a2, v92);
          (*(v93 + 24))(v92, v93);
          v94 = &unk_1F4FD7FF0;
LABEL_36:
          v132 = sub_1D45EF384(v94);
          sub_1D45EFB68(v132);
          return v157;
        }

LABEL_49:
        v14 = sub_1D45EEF94((v46 > 1), v13, 1, v14);
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_46;
    }

LABEL_44:
    v14 = sub_1D45EEF94(0, v13 + 1, 1, v14);
    goto LABEL_26;
  }

  __break(1u);
LABEL_41:
  v61 = sub_1D45EEF94((v62 > 1), v13, 1, v61);
LABEL_33:
  *(v61 + 2) = v13;
  v107 = &v61[72 * v29];
  *(v107 + 4) = a4;
  *(v107 + 5) = MaxX;
  *(v107 + 6) = v21;
  *(v107 + 7) = v22;
  *(v107 + 8) = v23;
  *(v107 + 9) = v24;
  *(v107 + 10) = v25;
  *(v107 + 11) = v26;
  v107[96] = 9;
  v157 = v61;
  v108 = *(a2 + 24);
  v109 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v108);
  MaxX = a8 - (*(v109 + 64))(v108, v109);
  v110 = *(a2 + 24);
  v111 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v110);
  a4 = a9 - (*(v111 + 40))(v110, v111);
  v112 = *(a2 + 24);
  v113 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v112);
  v23 = a8 - (*(v113 + 48))(v112, v113);
  v114 = *(v16 + 24);
  v115 = *(v16 + 32);
  __swift_project_boxed_opaque_existential_1(v16, v114);
  v24 = a9 - (*(v115 + 56))(v114, v115);
  v116 = *(a2 + 24);
  v117 = *(a2 + 32);
  __swift_project_boxed_opaque_existential_1(a2, v116);
  v25 = a8 - (*(v117 + 56))(v116, v117);
  v118 = *(v16 + 24);
  v14 = *(v16 + 32);
  __swift_project_boxed_opaque_existential_1(v16, v118);
  (*(v14 + 6))(v118, v14);
  v16 = sub_1D45EF384(&unk_1F4FD8018);

  sub_1D45EFB68(v119);
  v13 = v157;
  v29 = *(v157 + 2);

  if (!v29)
  {
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v45 = *(v157 + 2);
  if (v29 <= v45)
  {
    v120 = *(a2 + 24);
    v121 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v120);
    (*(v121 + 88))(v120, v121);
    v122 = *(a2 + 24);
    v123 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v122);
    (*(v123 + 16))(v122, v123);
    v124 = *(a2 + 24);
    v125 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v124);
    (*(v125 + 72))(v124, v125);
    v126 = *(a2 + 24);
    v127 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v126);
    (*(v127 + 32))(v126, v127);
    v128 = *(a2 + 24);
    v129 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v128);
    (*(v129 + 80))(v128, v129);
    v130 = *(a2 + 24);
    v131 = *(a2 + 32);
    __swift_project_boxed_opaque_existential_1(a2, v130);
    (*(v131 + 24))(v130, v131);
    v94 = &unk_1F4FD8040;
    goto LABEL_36;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  v145 = v42;
  v148 = v44;
  v143 = v43;
  v136 = sub_1D45EEF94((v45 > 1), v13, 1, v27);
  v43 = v143;
  v42 = v145;
  v44 = v148;
  v35 = v152.f64[0];
  v33 = a8;
  v32 = a9;
  v27 = v136;
LABEL_10:
  *(v27 + 2) = v13;
  v46 = (v27 + 32);
  v47 = &v27[72 * v16 + 32];
  *v47 = v42;
  *(v47 + 16) = v44.f64[0];
  *(v47 + 24) = MaxX;
  *(v47 + 32) = v43;
  *(v47 + 48) = v44;
  *(v47 + 64) = 11;
  v48 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v48 < v13)
  {
    v34 = *(v46 + 72 * v48 + 16);
    MaxX = v33 + v35 * -0.4255;
    a4 = v35 * 0.24937913 + v32;
    v21 = v35 * 0.07932913 + v32;
    v22 = v33 + v35 * -0.51045;
    v23 = v35 * 0.13777913 + v32;
    v46 = *(v27 + 3);
    a2 = v29 + 4;
    if ((v29 + 4) <= (v46 >> 1))
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  v146 = v34;
  v149 = v44;
  v137 = sub_1D45EEF94((v46 > 1), a2, 1, v27);
  v34 = v146;
  v44 = v149;
  v35 = v152.f64[0];
  v33 = a8;
  v32 = a9;
  v27 = v137;
LABEL_13:
  *(v27 + 2) = a2;
  v49 = (v27 + 32);
  v50 = &v27[72 * v13 + 32];
  *v50 = v34;
  *(v50 + 16) = MaxX;
  *(v50 + 24) = a4;
  *(v50 + 32) = v44.f64[0];
  *(v50 + 40) = v21;
  *(v50 + 48) = v22;
  *(v50 + 56) = v23;
  *(v50 + 64) = 12;
  v51 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else if (v51 < a2)
  {
    v44 = *(v49 + 72 * v51 + 16);
    MaxX = v33 + v35 * -0.48935;
    a4 = v35 * 0.33327913 + v32;
    v21 = v33 + v35 * -0.38475;
    v22 = v35 * 0.30287913 + v32;
    v23 = v33 + v35 * -0.42565;
    v24 = v35 * 0.35747913 + v32;
    v49 = *(v27 + 3);
    v13 = v29 + 5;
    if ((v29 + 5) <= (v49 >> 1))
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

  __break(1u);
LABEL_55:
  v150 = v44;
  v138 = sub_1D45EEF94((v49 > 1), v13, 1, v27);
  v44 = v150;
  v35 = v152.f64[0];
  v33 = a8;
  v32 = a9;
  v27 = v138;
LABEL_16:
  *(v27 + 2) = v13;
  v52 = (v27 + 32);
  v53 = &v27[72 * a2 + 32];
  *v53 = v44;
  *(v53 + 16) = MaxX;
  *(v53 + 24) = a4;
  *(v53 + 32) = v21;
  *(v53 + 40) = v22;
  *(v53 + 48) = v23;
  *(v53 + 56) = v24;
  *(v53 + 64) = 13;
  v54 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
    __break(1u);
  }

  else if (v54 < v13)
  {
    v44 = *(v52 + 72 * v54 + 16);
    MaxX = v33 + v35 * -0.90025;
    a4 = v35 * 0.09632913 + v32;
    v21 = v33 + v35 * -0.62035;
    v22 = v35 * 0.28352913 + v32;
    v23 = v33 + v35 * -0.76955;
    v24 = v35 * 0.19297913 + v32;
    v52 = *(v27 + 3);
    a2 = v29 + 6;
    if ((v29 + 6) <= (v52 >> 1))
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

  __break(1u);
LABEL_58:
  v151 = v44;
  v139 = sub_1D45EEF94((v52 > 1), a2, 1, v27);
  v44 = v151;
  v35 = v152.f64[0];
  v33 = a8;
  v32 = a9;
  v27 = v139;
LABEL_19:
  *(v27 + 2) = a2;
  v55 = (v27 + 32);
  v56 = &v27[72 * v13 + 32];
  *v56 = v44;
  *(v56 + 16) = MaxX;
  *(v56 + 24) = a4;
  *(v56 + 32) = v21;
  *(v56 + 40) = v22;
  *(v56 + 48) = v23;
  *(v56 + 56) = v24;
  *(v56 + 64) = 14;
  v57 = a2 - 1;
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v57 >= a2)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v44 = *(v55 + 72 * v57 + 16);
  MaxX = v33 + v35 * -1.1035;
  a4 = v35 * 0.00062913 + v32;
  v21 = v33 + v35 * -1.01735;
  v22 = v35 * 0.00972913 + v32;
  v23 = v33 + v35 * -1.04855;
  v24 = v35 * 0.00097913 + v32;
  v55 = *(v27 + 3);
  v13 = v29 + 7;
  if ((v29 + 7) > (v55 >> 1))
  {
LABEL_61:
    v155 = v44;
    v140 = sub_1D45EEF94((v55 > 1), v13, 1, v27);
    v44 = v155;
    v27 = v140;
  }

  *(v27 + 2) = v13;
  v58 = &v27[72 * a2];
  *(v58 + 2) = v44;
  *(v58 + 6) = MaxX;
  *(v58 + 7) = a4;
  *(v58 + 8) = v21;
  *(v58 + 9) = v22;
  *(v58 + 10) = v23;
  *(v58 + 11) = v24;
  v58[96] = 15;
  return v27;
}

char *sub_1D46056B0(uint64_t a1, uint64_t a2, void *(*a3)(_OWORD *__return_ptr, __int128 *, __int128 *), uint64_t a4)
{
  v72 = a4;
  v4 = a2;
  v5 = a1;
  v46 = *(a2 + 16);
  v47 = *(a1 + 16);
  if (v46 >= v47)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v63 = MEMORY[0x1E69E7CC0];
  result = sub_1D45F00C0(0, v6, 0);
  v8 = v63;
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v44 = v5 + 32;
    v45 = 0;
    v43 = v4 + 32;
    v48 = v5;
    while ((v10 & 1) == 0)
    {
      v13 = v47;
      if (v9 == v47)
      {
        goto LABEL_12;
      }

      if (v9 >= v47)
      {
        goto LABEL_39;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_40;
      }

      if (v45 == v46)
      {
LABEL_12:
        sub_1D4605B40(&v50);
        *&v62[32] = v56;
        *&v62[48] = v57[0];
        *&v62[57] = *(v57 + 9);
        v60 = v52;
        v61 = v53;
        *v62 = v54;
        *&v62[16] = v55;
        v12 = v50;
        v11 = v51;
        v10 = 1;
        v9 = v13;
        goto LABEL_13;
      }

      if (v45 >= v46)
      {
        goto LABEL_41;
      }

      if (__OFADD__(v45, 1))
      {
        goto LABEL_42;
      }

      v21 = v44 + 72 * v9;
      v22 = *(v21 + 48);
      v60 = *(v21 + 32);
      v61 = v22;
      v23 = v43 + 72 * v45;
      v24 = *(v21 + 16);
      v58 = *v21;
      v59 = v24;
      v25 = *v23;
      *&v62[24] = *(v23 + 16);
      v26 = *(v23 + 48);
      *&v62[40] = *(v23 + 32);
      *&v62[56] = v26;
      v62[0] = *(v21 + 64);
      v62[72] = *(v23 + 64);
      *&v62[8] = v25;
      nullsub_1();
      v10 = 0;
      ++v45;
      ++v9;
LABEL_14:
      v14 = v4;
      v56 = *&v62[32];
      v57[0] = *&v62[48];
      *(v57 + 9) = *&v62[57];
      v52 = v60;
      v53 = v61;
      v54 = *v62;
      v55 = *&v62[16];
      v50 = v58;
      v51 = v59;
      result = sub_1D4605B2C(&v50);
      if (result == 1)
      {
        goto LABEL_43;
      }

      v68[2] = v60;
      v68[3] = v61;
      v69 = v62[0];
      v68[0] = v58;
      v68[1] = v59;
      v70[2] = *&v62[40];
      v70[3] = *&v62[56];
      v71 = v62[72];
      v70[0] = *&v62[8];
      v70[1] = *&v62[24];
      result = a3(v66, v68, v70);
      v63 = v8;
      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_1D45F00C0((v15 > 1), v16 + 1, 1);
        v8 = v63;
      }

      *(v8 + 16) = v16 + 1;
      v17 = v8 + 72 * v16;
      *(v17 + 32) = v66[0];
      v18 = v66[1];
      v19 = v66[2];
      v20 = v66[3];
      *(v17 + 96) = v67;
      *(v17 + 64) = v19;
      *(v17 + 80) = v20;
      *(v17 + 48) = v18;
      --v6;
      v4 = v14;
      v5 = v48;
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    sub_1D4605B40(&v50);
    *&v62[32] = v56;
    *&v62[48] = v57[0];
    *&v62[57] = *(v57 + 9);
    v60 = v52;
    v61 = v53;
    *v62 = v54;
    *&v62[16] = v55;
    v12 = v50;
    v11 = v51;
    v10 = 1;
LABEL_13:
    v58 = v12;
    v59 = v11;
    goto LABEL_14;
  }

  v10 = 0;
  v45 = 0;
  v9 = 0;
LABEL_23:
  if (v10)
  {
    return v8;
  }

  v27 = v47;
  if (v9 == v47)
  {
    return v8;
  }

  v28 = v5 + 72 * v9 + 32;
  v29 = v45;
  v30 = v4 + 72 * v45 + 32;
  while (v9 < v27)
  {
    v31 = *(v28 + 48);
    v52 = *(v28 + 32);
    v53 = v31;
    LOBYTE(v54) = *(v28 + 64);
    v32 = *(v28 + 16);
    v50 = *v28;
    v51 = v32;
    v33 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_36;
    }

    if (v46 == v29)
    {
      return v8;
    }

    if (v29 >= v46)
    {
      goto LABEL_37;
    }

    v34 = *(v30 + 48);
    v60 = *(v30 + 32);
    v61 = v34;
    v62[0] = *(v30 + 64);
    v35 = *(v30 + 16);
    v58 = *v30;
    v59 = v35;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_38;
    }

    v36 = v29;
    result = a3(v64, &v50, &v58);
    v63 = v8;
    v38 = *(v8 + 16);
    v37 = *(v8 + 24);
    if (v38 >= v37 >> 1)
    {
      result = sub_1D45F00C0((v37 > 1), v38 + 1, 1);
      v8 = v63;
    }

    *(v8 + 16) = v38 + 1;
    v39 = v8 + 72 * v38;
    *(v39 + 32) = v64[0];
    v40 = v64[1];
    v41 = v64[2];
    v42 = v64[3];
    *(v39 + 96) = v65;
    *(v39 + 64) = v41;
    *(v39 + 80) = v42;
    ++v9;
    *(v39 + 48) = v40;
    v28 += 72;
    v29 = v36 + 1;
    v30 += 72;
    v27 = v47;
    if (v33 == v47)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

__n128 sub_1D4605ACC@<Q0>(float64x2_t *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D45F76B0(a1, v6, *(v2 + 16));
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v7;
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D4605B2C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0x15)
  {
    return v1 - 20;
  }

  else
  {
    return 0;
  }
}

double sub_1D4605B40(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 21;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  return result;
}

uint64_t type metadata accessor for BubbleContentPadding(uint64_t a1)
{
  result = qword_1EC7D4088;
  if (!qword_1EC7D4088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4605C04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D4606A80();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BE8, &unk_1D4609550);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for BubbleContentPadding(0);
  sub_1D4606278(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1D4606BB0();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_1D4606F10();
    v15 = sub_1D4606B70();
    sub_1D46068A0();

    sub_1D4606A70();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1D4605DF4()
{
  v1 = sub_1D4606A80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for BubbleContentPadding(0) + 24);
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1D4606F10();
    v9 = sub_1D4606B70();
    sub_1D46068A0();

    sub_1D4606A70();
    swift_getAtKeyPath();
    j__swift_release(v7);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_1D4605F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D4606BB0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4605DF4();
  sub_1D4605C04(v9);
  sub_1D45FDCDC(v10, v9);
  v12 = v11;

  (*(v6 + 8))(v9, v5);
  v13 = v12 * 0.5;
  v14 = 0.0;
  if (*(v2 + 168) == 1)
  {
    v15 = *(v2 + 8);
    v16 = v13 + v13;
    if (v15 >> 62)
    {
      if (v15 >> 62 == 1)
      {
        v17 = 0;
        v18 = v16 * 0.169625;
        v19 = 0.0;
      }

      else
      {
        v17 = *MEMORY[0x1E69DDCE0];
        v14 = *(MEMORY[0x1E69DDCE0] + 8);
        v18 = *(MEMORY[0x1E69DDCE0] + 16);
        v19 = *(MEMORY[0x1E69DDCE0] + 24);
      }
    }

    else
    {
      v17 = 0;
      v20 = v16 * 0.15922;
      v18 = 0.0;
      if (v15)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v20;
      }

      if (v15)
      {
        v19 = v20;
      }

      else
      {
        v19 = 0.0;
      }
    }
  }

  else
  {
    v17 = 0;
    v18 = 0.0;
    v19 = 0.0;
  }

  v21 = sub_1D46061C4(v13);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_1D4606B80();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D4098, &qword_1D4609940);
  (*(*(v29 - 8) + 16))(a2, a1, v29);
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D40A0, &qword_1D4609948) + 36);
  *v30 = v28;
  *(v30 + 8) = v21;
  *(v30 + 16) = v23;
  *(v30 + 24) = v25;
  *(v30 + 32) = v27;
  *(v30 + 40) = 0;
  sub_1D4606B80();
  v32[1] = v17;
  *&v32[2] = v14;
  *&v32[3] = v18;
  *&v32[4] = v19;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D40A8, &unk_1D4609950);
  return sub_1D4606B50();
}

double sub_1D46061C4(double a1)
{
  result = 0.0;
  if ((*(v1 + 168) & 1) == 0)
  {
    v4 = *(v1 + 8) >> 62;
    if (v4)
    {
      if (v4 == 1)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = *MEMORY[0x1E69DDCE0];
      }
    }

    else
    {
      v5 = 0.0;
    }

    return (a1 + a1) * 0.15714286 + v5;
  }

  return result;
}

uint64_t sub_1D4606278(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7D3BE8, &unk_1D4609550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D46062E8()
{
  result = qword_1EC7D40B0;
  if (!qword_1EC7D40B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D40A8, &unk_1D4609950);
    sub_1D4606374();
    sub_1D4606464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D40B0);
  }

  return result;
}

unint64_t sub_1D4606374()
{
  result = qword_1EC7D40B8;
  if (!qword_1EC7D40B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D40A0, &qword_1D4609948);
    sub_1D4606400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D40B8);
  }

  return result;
}

unint64_t sub_1D4606400()
{
  result = qword_1EC7D40C0;
  if (!qword_1EC7D40C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7D4098, &qword_1D4609940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D40C0);
  }

  return result;
}

unint64_t sub_1D4606464()
{
  result = qword_1EC7D40C8;
  if (!qword_1EC7D40C8)
  {
    sub_1D4606B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7D40C8);
  }

  return result;
}

id sub_1D46064F0()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EC7D40D0 = result;
  return result;
}

uint64_t sub_1D4606598()
{
  v0 = sub_1D4606890();
  __swift_allocate_value_buffer(v0, qword_1EC7D6050);
  __swift_project_value_buffer(v0, qword_1EC7D6050);
  if (qword_1EC7D3A48 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7D40D0;
  return sub_1D4606880();
}

uint64_t sub_1D4606640()
{
  v0 = sub_1D4606890();
  __swift_allocate_value_buffer(v0, qword_1EC7D6068);
  __swift_project_value_buffer(v0, qword_1EC7D6068);
  if (qword_1EC7D3A48 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC7D40D0;
  return sub_1D4606880();
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

uint64_t sub_1D460679C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D4606890();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  if (qword_1EC7D3A48 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC7D40D0;
  return sub_1D4606880();
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}