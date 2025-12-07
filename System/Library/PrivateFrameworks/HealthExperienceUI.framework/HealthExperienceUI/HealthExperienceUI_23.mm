uint64_t sub_1BA171A28(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = (__src - __dst) / 40;
  v11 = a3 - __src;
  v12 = (a3 - __src) / 40;
  if (v10 >= v12)
  {
    if (a4 != __src || &__src[40 * v12] <= a4)
    {
      memmove(a4, __src, 40 * v12);
    }

    v13 = v5 + 40 * v12;
    if (v11 < 40 || v7 <= v8)
    {
LABEL_43:
      v20 = v7;
      goto LABEL_44;
    }

    v21 = -v5;
    v40 = -v5;
    while (1)
    {
      v20 = v7 - 40;
      v22 = v13 - 40;
      v23 = v21 + v13;
      v6 -= 40;
      while (1)
      {
        sub_1B9F0A534(v22, v39);
        sub_1B9F0A534((v7 - 40), v38);
        v26 = sub_1BA16D14C(v39, v38);
        if (v4)
        {
          __swift_destroy_boxed_opaque_existential_1(v38);
          __swift_destroy_boxed_opaque_existential_1(v39);
          v35 = v23 / 40;
          if (v7 >= v5 && v7 < v5 + 40 * v35 && v7 == v5)
          {
            return 1;
          }

          v33 = 40 * v35;
          v34 = v7;
          goto LABEL_48;
        }

        v27 = v26;
        __swift_destroy_boxed_opaque_existential_1(v38);
        __swift_destroy_boxed_opaque_existential_1(v39);
        if (v27)
        {
          break;
        }

        if (v6 + 40 != v22 + 40)
        {
          v28 = *v22;
          v29 = *(v22 + 16);
          *(v6 + 32) = *(v22 + 32);
          *v6 = v28;
          *(v6 + 16) = v29;
        }

        v24 = v22 - 40;
        v23 -= 40;
        v6 -= 40;
        v25 = v22 > v5;
        v22 -= 40;
        if (!v25)
        {
          v13 = v24 + 40;
          goto LABEL_43;
        }
      }

      if ((v6 + 40) != v7)
      {
        v30 = *v20;
        v31 = *(v7 - 24);
        *(v6 + 32) = *(v7 - 1);
        *v6 = v30;
        *(v6 + 16) = v31;
      }

      v13 = v22 + 40;
      if (v22 + 40 > v5)
      {
        v7 -= 40;
        v21 = v40;
        if (v20 > v8)
        {
          continue;
        }
      }

      v13 = v22 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v10] <= a4)
  {
    memmove(a4, __dst, 40 * v10);
  }

  v13 = v5 + 40 * v10;
  if (v9 < 40 || v7 >= v6)
  {
LABEL_16:
    v20 = v8;
LABEL_44:
    v36 = (v13 - v5) / 40;
    if (v20 >= v5 && v20 < v5 + 40 * v36 && v20 == v5)
    {
      return 1;
    }

    v33 = 40 * v36;
    v34 = v20;
LABEL_48:
    memmove(v34, v5, v33);
    return 1;
  }

  while (1)
  {
    sub_1B9F0A534(v7, v39);
    sub_1B9F0A534(v5, v38);
    v14 = sub_1BA16D14C(v39, v38);
    if (v4)
    {
      break;
    }

    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v39);
    if (!v15)
    {
      v16 = v5;
      v17 = v8 == v5;
      v5 += 40;
      if (v17)
      {
        goto LABEL_14;
      }

LABEL_13:
      v18 = *v16;
      v19 = *(v16 + 16);
      *(v8 + 4) = *(v16 + 32);
      *v8 = v18;
      *(v8 + 1) = v19;
      goto LABEL_14;
    }

    v16 = v7;
    v17 = v8 == v7;
    v7 += 40;
    if (!v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    v8 += 40;
    if (v5 >= v13 || v7 >= v6)
    {
      goto LABEL_16;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  v32 = (v13 - v5) / 40;
  if (v8 < v5 || v8 >= v5 + 40 * v32 || v8 != v5)
  {
    v33 = 40 * v32;
    v34 = v8;
    goto LABEL_48;
  }

  return 1;
}

void sub_1BA171DC0(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  v7[2] = a1[2];
  sub_1BA170094(v7, a2, a3, *a4, a5, sub_1BA172B20, a6);
}

void *sub_1BA171E0C()
{
  sub_1BA170230(0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A27B8();
  v4 = MEMORY[0x1BFAED110]();
  sub_1B9F0CA3C(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v5 = sub_1BA4A1C68();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v22 = xmmword_1BA4B5480;
  *(v8 + 16) = xmmword_1BA4B5480;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x1E69A3B90], v5);
  sub_1BA4A21D8();
  v9 = sub_1BA4A0FA8();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = MEMORY[0x1E69E6F90];
  sub_1B9F1C0E4(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = v22;
  *(v11 + 32) = sub_1BA4A1D78();
  v12 = sub_1BA4A25F8();

  sub_1BA172980(v3, sub_1BA170230);
  [v4 setPredicate_];

  sub_1B9F1C0E4(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, v10);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B7510;
  v14 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v15 = sub_1BA4A6758();
  v16 = [v14 initWithKey:v15 ascending:1];

  *(v13 + 32) = v16;
  v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v18 = sub_1BA4A6758();
  v19 = [v17 initWithKey:v18 ascending:1 selector:sel_localizedStandardCompare_];

  *(v13 + 40) = v19;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0, 0x1E696AEB0);
  v20 = sub_1BA4A6AE8();

  [v4 setSortDescriptors_];

  return v4;
}

uint64_t sub_1BA1721C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BA17220C(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v7 = *(type metadata accessor for SummarySharingSelectionFlow(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BA16B5E4(a1, a2, a3, v3 + v8, v9);
}

void sub_1BA1722CC(uint64_t a1)
{
  if (!qword_1EBBECED8)
  {
    sub_1B9F126E0(255);
    v3 = v2;
    v4 = type metadata accessor for SummarySharingSelectionContextDelegate();
    v5 = type metadata accessor for MappedDataSourceWithFeedItemsAndContext(a1, v3, v4, &protocol witness table for FetchedResultsControllerDataSource<A>);
    if (!v6)
    {
      atomic_store(v5, &qword_1EBBECED8);
    }
  }
}

uint64_t sub_1BA17233C(uint64_t a1, uint64_t *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v9 = *a2;
  v6 = *(v5 + 24);

  v7 = v4(a1, &v9, v6);

  return v7;
}

void sub_1BA1723B8(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = a1[1];
  v8[0] = *a1;
  v8[1] = v7;
  v8[2] = a1[2];
  sub_1BA170094(v8, v3, v4, *v5, v6, sub_1BA172B20, a2);
}

double sub_1BA172410@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  *&result = sub_1BA16C490(v8, v3, a2).n128_u64[0];
  return result;
}

void sub_1BA172450(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BA1724E4()
{
  result = qword_1EBBECEE0;
  if (!qword_1EBBECEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECEE0);
  }

  return result;
}

uint64_t sub_1BA172650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BA1726C8(unint64_t result, _BYTE *a2, uint64_t a3, const void *a4)
{
  v5 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = a2;
  v9 = *v4;
  v10 = (v9 + 32 + 80 * result);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v9 + 16);
  v11 = __OFSUB__(v13, v8);
  v14 = v13 - v8;
  if (v11)
  {
    goto LABEL_19;
  }

  result = v10 + 80 * a3;
  a2 = (v9 + 32 + 80 * v8);
  if (result != a2 || result >= &a2[80 * v14])
  {
    result = memmove(result, a2, 80 * v14);
  }

  v16 = *(v9 + 16);
  v11 = __OFADD__(v16, v12);
  v17 = v16 + v12;
  if (v11)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v17;
LABEL_13:
  if (a3 <= 0)
  {
    return result;
  }

  memmove(v10, a4, 0x50uLL);
  a2 = v18;
  result = a4;
  if (a3 != 1)
  {
LABEL_21:
    result = sub_1BA172A98(result, a2);
    __break(1u);
    return result;
  }

  return sub_1BA172A98(a4, v18);
}

void sub_1BA1727D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

void sub_1BA1728EC()
{
  if (!qword_1EBBECEF8)
  {
    v0 = sub_1BA4A6688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECEF8);
    }
  }
}

uint64_t sub_1BA172980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA1729E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1BA172A44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = **(v2 + 32);
  result = v4(a1, &v6);
  *a2 = result;
  return result;
}

uint64_t sub_1BA172A98(uint64_t a1, uint64_t a2)
{
  sub_1B9F1C0E4(0, &qword_1EBBECF08, &type metadata for ConfirmDetailsSection.Row, MEMORY[0x1E69E6BC0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1BA172B38()
{
  v1 = [*v0 sampleType];

  return v1;
}

void sub_1BA172B88(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  sub_1BA4A16F8();
}

uint64_t sub_1BA172BE4()
{
  v1 = [*v0 metadata];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BA4A6628();

  return v3;
}

id sub_1BA172C54()
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result value];
  }

  return result;
}

id sub_1BA172CAC()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id sub_1BA172CD4()
{
  sub_1B9F0ADF8(0, &qword_1EDC5E570, 0x1E696C3D0);
  v0 = [swift_getObjCClassFromMetadata() electrocardiogramType];

  return v0;
}

void sub_1BA172D3C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 dateInterval];
  if (v5)
  {
    v6 = v5;
    [v5 *a3];

    v7 = HKDecodeDateForValue();
    sub_1BA4A16F8();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1BA172DE8()
{
  v1 = [v0 metadataDictionary];
  if (!v1)
  {
    return sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
  }

  v2 = v1;
  v3 = [v1 keyValuePairs];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &qword_1EDC5E270, 0x1E69A41F8);
    sub_1BA4A6AF8();
    v5 = sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = sub_1B9FDB798(MEMORY[0x1E69E7CC0]);
  }

  return v5;
}

id sub_1BA1731DC()
{
  v1 = *v0;
  sub_1B9F0ADF8(0, &qword_1EDC5E570, 0x1E696C3D0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [v1 dataType];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v5 = [ObjCClassFromMetadata dataTypeWithNumber_];

  return v5;
}

void sub_1BA173290(uint64_t a1, uint64_t a2, SEL *a3)
{
  [*v3 *a3];
  v4 = HKDecodeDateForValue();
  sub_1BA4A16F8();
}

uint64_t DataTypeDetailConfiguration.FeatureStatusComponent.init(hkType:container:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t DataTypeDetailConfiguration.FeatureStatusComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  v7 = sub_1BA4A6F38();
  if (v5 == 1 && (v8 = sub_1BA4A1D78(), v9 = sub_1BA4A1D68(), v8, (v9 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v10 = sub_1BA4A1B68();
    sub_1B9F0A534(a1 + 64, v21);
    v20 = v4;
    type metadata accessor for DataTypeDetailFeatureStatusDataSource(0);
    swift_allocObject();
    v11 = v6;
    v12 = v3;
    v14 = DataTypeDetailFeatureStatusDataSource.init(healthStore:pinnedContentManager:managedObjectContext:hkType:container:)(v11, v21, v10, v12, &v20, v13);

    sub_1BA17354C(0);
    v15 = swift_allocObject();
    v16 = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier + 8);
    *(v15 + 16) = *(v14 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_identifier);
    *(v15 + 24) = v16;
    *(v15 + 32) = v14;
    *(v15 + 40) = 0;
  }

  else
  {

    type metadata accessor for EmptyDataSource(0);
    swift_allocObject();
    v17 = EmptyDataSource.init()();
    sub_1BA17354C(0);
    v15 = swift_allocObject();
    v18 = *(v17 + 24);
    *(v15 + 16) = *(v17 + 16);
    *(v15 + 24) = v18;
    *(v15 + 32) = v17;
    *(v15 + 40) = 1;
  }

  return v15;
}

void sub_1BA17354C(uint64_t a1)
{
  if (!qword_1EDC66CE0)
  {
    v4[0] = type metadata accessor for DataTypeDetailFeatureStatusDataSource(255);
    v4[1] = type metadata accessor for EmptyDataSource(255);
    v4[2] = &protocol witness table for CompoundSectionedDataSource;
    v4[3] = &protocol witness table for EmptyDataSource;
    v2 = type metadata accessor for _ConditionalDataSource(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC66CE0);
    }
  }
}

char *LabelWithIndicatorView.__allocating_init(style:title:contentInsets:)(char *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  v16.n128_f64[0] = a4;
  return LabelWithIndicatorView.init(style:title:contentInsets:)(a1, a2, a3, v16, a5, a6, a7);
}

BOOL static LabelWithIndicatorView.Style.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

BOOL sub_1BA1736D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 == 2;
  v5 = v3 == 3;
  v6 = v3 & 0xFE;
  v7 = v3 ^ v2 ^ 1;
  if (v6 == 2)
  {
    v7 = 0;
  }

  if (v2 == 3)
  {
    v7 = v5;
  }

  if (v2 == 2)
  {
    return v4;
  }

  else
  {
    return v7;
  }
}

double sub_1BA173718(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

uint64_t sub_1BA173784()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA1737DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id sub_1BA17389C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel);
  }

  else
  {
    v42 = v4;
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = [objc_opt_self() secondaryLabelColor];
    [v10 setTextColor_];

    v12 = *MEMORY[0x1E69DDD80];
    v13 = objc_opt_self();
    v14 = [v13 preferredFontDescriptorWithTextStyle:v12 compatibleWithTraitCollection:0];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() fontWithDescriptor:v14 size:0.0];
    }

    else
    {
      v41 = v0;
      sub_1BA4A3DD8();
      v17 = v12;
      v18 = sub_1BA4A3E88();
      v19 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v45 = v39;
        *v20 = 136315906;
        v21 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v40 = v17;
        v23 = sub_1B9F0B82C(v21, v22, &v45);

        *(v20 + 4) = v23;
        *(v20 + 12) = 2080;
        v43 = 0;
        v44 = 1;
        sub_1BA1508E8(0);
        v24 = sub_1BA4A6808();
        v26 = sub_1B9F0B82C(v24, v25, &v45);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        LODWORD(v43) = 0;
        type metadata accessor for SymbolicTraits(0);
        v27 = sub_1BA4A6808();
        v29 = sub_1B9F0B82C(v27, v28, &v45);
        v17 = v40;

        *(v20 + 24) = v29;
        *(v20 + 32) = 2112;
        v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
        *(v20 + 34) = v30;
        v31 = v38;
        *v38 = v30;
        _os_log_impl(&dword_1B9F07000, v18, v19, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v20, 0x2Au);
        sub_1B9F8C6C8(v31);
        MEMORY[0x1BFAF43A0](v31, -1, -1);
        v32 = v39;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v32, -1, -1);
        MEMORY[0x1BFAF43A0](v20, -1, -1);
      }

      (*(v2 + 8))(v6, v42);
      v0 = v41;
      v33 = [v13 preferredFontDescriptorWithTextStyle_];
      v16 = [objc_opt_self() fontWithDescriptor:v33 size:0.0];
    }

    [v10 setFont_];

    [v10 setAdjustsFontForContentSizeCategory_];
    [v10 setNumberOfLines_];
    [v10 setLineBreakMode_];
    LODWORD(v34) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v34];
    v35 = *(v0 + v7);
    *(v0 + v7) = v10;
    v9 = v10;

    v8 = 0;
  }

  v36 = v8;
  return v9;
}

id sub_1BA173D1C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *LabelWithIndicatorView.init(style:title:contentInsets:)(char *a1, uint64_t a2, uint64_t a3, __n128 a4, double a5, double a6, double a7)
{
  v8 = *a1;
  v9 = &v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
  *v9 = 0;
  v9[1] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewTrailingConstraint] = 0;
  *&v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor] = 0;
  v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style] = v8;
  v10 = &v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_title];
  *v10 = a2;
  v10[1] = a3;
  v11 = &v7[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets];
  *v11 = a4.n128_f64[0];
  v11[1] = a5;
  v11[2] = a6;
  v11[3] = a7;
  v14.receiver = v7;
  v14.super_class = type metadata accessor for LabelWithIndicatorView();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1BA17404C();

  return v12;
}

void sub_1BA173EE0()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for LabelWithIndicatorView();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = sub_1BA173D1C();
  [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] bounds];
  v2 = CGRectGetWidth(v8) * 0.5;
  v3 = *MEMORY[0x1E69796E8];
  v4 = [v1 layer];
  [v4 setCornerCurve_];

  v5 = [v1 layer];
  [v5 setCornerRadius_];

  v6 = [v1 layer];
  [v6 setMaskedCorners_];

  [v1 setClipsToBounds_];
}

void sub_1BA17404C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA173D1C();
  [v1 addSubview_];

  v8 = sub_1BA17389C();
  [v1 addSubview_];

  v49 = MEMORY[0x1E69E7CC0];
  sub_1BA1746B0();
  sub_1B9F73B50(v9);
  sub_1BA174A38();
  sub_1B9F73B50(v10);
  v11 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v12 = sub_1BA4A6AE8();

  [v11 activateConstraints_];

  sub_1BA174570();
  v13 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v14 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel];
  v15 = sub_1BA4A6758();
  [v14 setText_];

  v16 = v1[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style];
  v17 = *&v1[v13];
  v18 = *MEMORY[0x1E69DDD80];
  v19 = objc_opt_self();
  v20 = v17;
  v21 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v22 = v21;
  v23 = v16 != 3;
  if (v16 != 3)
  {
    v24 = [v21 fontDescriptorWithSymbolicTraits_];

    v22 = v24;
  }

  if (v22)
  {
    v25 = [objc_opt_self() fontWithDescriptor:v22 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v26 = v18;
    v27 = sub_1BA4A3E88();
    v28 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v27, v28))
    {
      v45 = 2 * v23;
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v29 = 136315906;
      v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v32 = sub_1B9F0B82C(v30, v31, &v51);
      v48 = v3;
      v33 = v32;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v49 = 0;
      v50 = 1;
      sub_1BA1508E8(0);
      v34 = sub_1BA4A6808();
      v36 = sub_1B9F0B82C(v34, v35, &v51);

      *(v29 + 14) = v36;
      *(v29 + 22) = 2080;
      LODWORD(v49) = v45;
      type metadata accessor for SymbolicTraits(0);
      v37 = sub_1BA4A6808();
      v39 = sub_1B9F0B82C(v37, v38, &v51);

      *(v29 + 24) = v39;
      *(v29 + 32) = 2112;
      v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v29 + 34) = v40;
      v41 = v46;
      *v46 = v40;
      _os_log_impl(&dword_1B9F07000, v27, v28, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v29, 0x2Au);
      sub_1B9F8C6C8(v41);
      MEMORY[0x1BFAF43A0](v41, -1, -1);
      v42 = v47;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v42, -1, -1);
      MEMORY[0x1BFAF43A0](v29, -1, -1);

      (*(v48 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v43 = [v19 preferredFontDescriptorWithTextStyle_];
    v25 = [objc_opt_self() fontWithDescriptor:v43 size:0.0];
  }

  [v20 setFont_];
}

void sub_1BA174570()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_style);
  if ((v1 & 0xFE) == 2)
  {
    v2 = sub_1BA173D1C();
    [v2 setHidden_];

    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint);
    if (v3)
    {
      [v3 setConstant_];
    }

    v4 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor);
    if (v4)
    {

      [v4 setConstant_];
    }
  }

  else
  {
    sub_1BA174D2C();
    v5 = sub_1BA173D1C();
    v6 = objc_opt_self();
    v7 = &selRef_systemGreenColor;
    if ((v1 & 1) == 0)
    {
      v7 = &selRef_systemGrayColor;
    }

    v8 = [v6 *v7];
    [v5 setBackgroundColor_];
  }
}

void sub_1BA1746B0()
{
  v1 = sub_1BA173D1C();
  v2 = [v1 widthAnchor];

  v3 = sub_1BA17389C();
  v4 = [v3 font];

  if (!v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v4 capHeight];
  v6 = v5;

  v7 = [v2 constraintEqualToConstant_];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint] = v7;

  v10 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v11 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel] font];
  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = v11;
  [v11 ascender];
  v14 = v13;

  v15 = [*&v0[v10] font];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  [v15 descender];
  v18 = v17;

  v19 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView;
  v20 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView] leadingAnchor];
  v21 = [v0 leadingAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  v39[4] = v22;
  v23 = [*&v0[v19] centerYAnchor];
  v24 = [*&v0[v10] firstBaselineAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:(v14 + v18) * -0.5];

  v39[5] = v25;
  v26 = [*&v0[v19] heightAnchor];
  v27 = [*&v0[v10] font];
  if (v27)
  {
    v28 = v27;
    [v27 capHeight];
    v30 = v29;

    v31 = [v26 constraintEqualToConstant_];
    v32 = *&v0[v8];
    v39[6] = v31;
    v39[7] = v32;
    v38 = MEMORY[0x1E69E7CC0];
    v33 = v32;
    v34 = 0;
LABEL_6:
    if (v34 <= 4)
    {
      v35 = 4;
    }

    else
    {
      v35 = v34;
    }

    while (1)
    {
      if (v34 == 4)
      {
        sub_1B9F6A804(0, &qword_1EBBECF58, &qword_1EDC6B570, 0x1E696ACD8);
        swift_arrayDestroy();
        return;
      }

      if (v35 == v34)
      {
        break;
      }

      v36 = v39[v34++ + 4];
      if (v36)
      {
        v37 = v36;
        MEMORY[0x1BFAF1510]();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
}

void sub_1BA174A38()
{
  v1 = sub_1BA17389C();
  v2 = [v1 leadingAnchor];

  v3 = sub_1BA173D1C();
  v4 = [v3 trailingAnchor];

  IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
  v6 = 4.0;
  if (IsUsingAccessibilityContentSizeCategory)
  {
    v6 = 8.0;
  }

  v7 = [v2 constraintEqualToAnchor:v4 constant:v6];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor;
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor];
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor] = v7;

  v29 = *&v0[v8];
  v10 = OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel;
  v11 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel];
  v12 = v29;
  v13 = [v11 trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = &v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets];
  v16 = [v13 constraintEqualToAnchor:v14 constant:-*&v0[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_contentInsets + 24]];

  v30 = v16;
  v17 = [*&v0[v10] topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:*v15];

  v31 = v19;
  v20 = [*&v0[v10] bottomAnchor];
  v21 = [v0 bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:-v15[2]];

  v23 = 0;
  v32 = v22;
  v27 = MEMORY[0x1E69E7CC0];
LABEL_4:
  if (v23 <= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = v23;
  }

  while (1)
  {
    if (v23 == 4)
    {
      sub_1B9F6A804(0, &qword_1EBBECF58, &qword_1EDC6B570, 0x1E696ACD8);
      swift_arrayDestroy();
      return;
    }

    if (v24 == v23)
    {
      break;
    }

    v25 = v28[v23++ + 4];
    if (v25)
    {
      v26 = v25;
      MEMORY[0x1BFAF1510]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      goto LABEL_4;
    }
  }

  __break(1u);
}

void sub_1BA174D2C()
{
  v1 = sub_1BA173D1C();
  [v1 setHidden_];

  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1BA17389C();
    v5 = [v4 font];

    if (!v5)
    {
      __break(1u);
      return;
    }

    [v5 capHeight];
    v7 = v6;

    [v3 setConstant_];
  }

  v8 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor);
  if (v8)
  {
    v11 = v8;
    IsUsingAccessibilityContentSizeCategory = HKUIApplicationIsUsingAccessibilityContentSizeCategory();
    v10 = 4.0;
    if (IsUsingAccessibilityContentSizeCategory)
    {
      v10 = 8.0;
    }

    [v11 setConstant_];
  }
}

void sub_1BA174E60(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  if (a2)
  {
    v6 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v7 = sub_1BA173D1C();

    MEMORY[0x1BFAF1350](0x74616369646E492ELL, 0xEA0000000000726FLL);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];

    v9 = sub_1BA17389C();

    MEMORY[0x1BFAF1350](0x6C6562614C2ELL, 0xE600000000000000);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    v11 = sub_1BA173D1C();
    [v11 setAccessibilityIdentifier_];

    v10 = sub_1BA17389C();
    [v10 setAccessibilityIdentifier_];
  }
}

id LabelWithIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LabelWithIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LabelWithIndicatorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1751D4()
{
  v1 = (*v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1BA175230(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t getEnumTagSinglePayload for LabelWithIndicatorView.Style(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (v4 > 1)
    {
      if (v4 == 2)
      {
        v5 = *(a1 + 1);
        if (!*(a1 + 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v5 = *(a1 + 1);
        if (!v5)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_19;
      }

      v5 = a1[1];
      if (!a1[1])
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 3;
  }

LABEL_19:
  v7 = *a1;
  if (*a1 >= 2u)
  {
    v8 = (v7 & 0xFE) + 2147483646;
    if ((v8 & 0x7FFFFFFE) != 0)
    {
      return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for LabelWithIndicatorView.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFD)
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

void sub_1BA175578()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_baseIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView____lazy_storage___indicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewWidthConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_indicatorViewTrailingConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22LabelWithIndicatorView_titleLabelLeadingAnchor) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA175668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for CategoryTileBackgroundView(uint64_t a1)
{
  result = qword_1EBBECF70;
  if (!qword_1EBBECF70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA17572C(uint64_t a1)
{
  sub_1BA175668(319, &qword_1EBBECF60, sub_1BA175634, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1BA175814(319);
    if (v2 <= 0x3F)
    {
      sub_1BA176824(319, &qword_1EDC5EB98, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BA175814(uint64_t a1)
{
  if (!qword_1EBBECF80)
  {
    type metadata accessor for ObservableCellState(255);
    sub_1BA1767DC(&qword_1EDC67D30, type metadata accessor for ObservableCellState, &protocol conformance descriptor for ObservableCellState);
    v1 = sub_1BA4A5378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBECF80);
    }
  }
}

__n128 sub_1BA1758C4@<Q0>(__n128 *a1@<X8>)
{
  v80 = a1;
  v69 = sub_1BA4A6398();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v2);
  v67 = &v64[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1BA4A59D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v70 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA1763AC(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v76 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v64[-v14];
  sub_1BA175634(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v77 = &v64[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v75 = &v64[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v78 = &v64[-v24];
  MEMORY[0x1EEE9AC00](v25, v26);
  v82 = &v64[-v27];
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v64[-v30];
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v64[-v34];
  v79 = v1;
  sub_1BA176410(&v64[-v34]);
  v36 = v5[13];
  v73 = *MEMORY[0x1E697FF40];
  v72 = v36;
  v36(v31);
  v71 = v5[7];
  v71(v31, 0, 1, v4);
  v74 = v9;
  v37 = *(v9 + 48);
  sub_1BA1765EC(v35, v15);
  sub_1BA1765EC(v31, &v15[v37]);
  v81 = v5;
  v38 = v5[6];
  if (v38(v15, 1, v4) != 1)
  {
    sub_1BA1765EC(v15, v82);
    v66 = v38;
    if (v38(&v15[v37], 1, v4) != 1)
    {
      v41 = v70;
      (v81[4])(v70, &v15[v37], v4);
      sub_1BA1767DC(&qword_1EBBECFA8, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v65 = sub_1BA4A6728();
      v42 = v81[1];
      v42(v41, v4);
      sub_1BA176650(v31, sub_1BA175634);
      sub_1BA176650(v35, sub_1BA175634);
      v42(v82, v4);
      sub_1BA176650(v15, sub_1BA175634);
      v39 = v79;
      v40 = v78;
      v38 = v66;
      if ((v65 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    sub_1BA176650(v31, sub_1BA175634);
    sub_1BA176650(v35, sub_1BA175634);
    (v81[1])(v82, v4);
    v38 = v66;
LABEL_6:
    sub_1BA176650(v15, sub_1BA1763AC);
    v40 = v78;
    goto LABEL_10;
  }

  sub_1BA176650(v31, sub_1BA175634);
  sub_1BA176650(v35, sub_1BA175634);
  if (v38(&v15[v37], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1BA176650(v15, sub_1BA175634);
  v39 = v79;
  v40 = v78;
LABEL_8:
  v43 = *(v39 + *(type metadata accessor for CategoryTileBackgroundView(0) + 24));
  if (v43)
  {
    sub_1BA176824(0, &qword_1EBBECFB0, MEMORY[0x1E69E6F90]);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1BA4B5460;
    *(v44 + 32) = v43;
    swift_retain_n();
    sub_1BA4A60C8();
    v45 = v67;
    sub_1BA4A6388();
    v46 = sub_1BA4A6068();

    (*(v68 + 8))(v45, v69);
    *(v44 + 40) = v46;
    sub_1BA4A6448();
    sub_1BA4A6458();
    MEMORY[0x1BFAF0DE0](v44);
    sub_1BA4A52F8();
    v83 = v91;
    v84 = v92;
    v85 = v93;
    v86 = 0;
    sub_1BA1766B0();
    sub_1BA176708();
    sub_1B9F7F308();
    sub_1BA4A58E8();

    goto LABEL_21;
  }

LABEL_10:
  sub_1BA176410(v40);
  v47 = v75;
  v72(v75, v73, v4);
  v71(v47, 0, 1, v4);
  v48 = *(v74 + 48);
  v49 = v76;
  sub_1BA1765EC(v40, v76);
  sub_1BA1765EC(v47, &v49[v48]);
  if (v38(v49, 1, v4) == 1)
  {
    sub_1BA176650(v47, sub_1BA175634);
    sub_1BA176650(v40, sub_1BA175634);
    v50 = v38(&v49[v48], 1, v4);
    if (v50 == 1)
    {
      v51 = sub_1BA175634;
    }

    else
    {
      v51 = sub_1BA1763AC;
    }

    if (v50 == 1)
    {
      v52 = -1;
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    sub_1BA1765EC(v49, v77);
    if (v38(&v49[v48], 1, v4) == 1)
    {
      sub_1BA176650(v47, sub_1BA175634);
      sub_1BA176650(v40, sub_1BA175634);
      (v81[1])(v77, v4);
      v52 = 0;
      v51 = sub_1BA1763AC;
    }

    else
    {
      v53 = v81;
      v54 = v70;
      (v81[4])(v70, &v49[v48], v4);
      sub_1BA1767DC(&qword_1EBBECFA8, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
      v52 = sub_1BA4A6728();
      v55 = v53[1];
      v55(v54, v4);
      sub_1BA176650(v47, sub_1BA175634);
      sub_1BA176650(v40, sub_1BA175634);
      v55(v77, v4);
      v51 = sub_1BA175634;
    }
  }

  sub_1BA176650(v49, v51);
  type metadata accessor for CategoryTileBackgroundView(0);
  KeyPath = swift_getKeyPath();
  v87.n128_u8[0] = 0;
  LOBYTE(v83) = v52 & 1;
  type metadata accessor for ObservableCellState(0);
  sub_1BA1767DC(&qword_1EDC67D30, type metadata accessor for ObservableCellState, &protocol conformance descriptor for ObservableCellState);

  v57 = sub_1BA4A5348();
  v58 = v83;
  v83 = KeyPath;
  *&v84 = v87.n128_u8[0];
  *(&v84 + 1) = v57;
  *&v85 = v59;
  *(&v85 + 1) = v58;
  v86 = 1;
  sub_1BA1766B0();
  sub_1BA176708();
  sub_1B9F7F308();
  sub_1BA4A58E8();
LABEL_21:
  result = v88;
  v61 = v89;
  v62 = v90;
  v63 = v80;
  *v80 = v87;
  v63[1] = result;
  v63[2].n128_u64[0] = v61;
  v63[2].n128_u8[8] = v62;
  return result;
}

void sub_1BA1763AC(uint64_t a1)
{
  if (!qword_1EBBECF88)
  {
    sub_1BA175634(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBECF88);
    }
  }
}

uint64_t sub_1BA176410@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BA4A5718();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA175668(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v15 - v11;
  sub_1BA176878(v2, &v15 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1BA17690C(v12, a1);
  }

  sub_1BA4A6FB8();
  v14 = sub_1BA4A5B28();
  sub_1BA4A3CA8();

  sub_1BA4A5708();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BA1765EC(uint64_t a1, uint64_t a2)
{
  sub_1BA175634(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA176650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BA1766B0()
{
  if (!qword_1EBBECF90)
  {
    v0 = sub_1BA4A5418();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBECF90);
    }
  }
}

unint64_t sub_1BA176708()
{
  result = qword_1EBBECF98;
  if (!qword_1EBBECF98)
  {
    sub_1BA1766B0();
    sub_1BA176788();
    sub_1B9F8A01C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECF98);
  }

  return result;
}

unint64_t sub_1BA176788()
{
  result = qword_1EBBECFA0;
  if (!qword_1EBBECFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECFA0);
  }

  return result;
}

uint64_t sub_1BA1767DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA176824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69815C0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BA176878(uint64_t a1, uint64_t a2)
{
  sub_1BA175668(0, &qword_1EBBECFB8, sub_1BA175634, MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BA17690C(uint64_t a1, uint64_t a2)
{
  sub_1BA175634(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BA176970()
{
  result = qword_1EBBECFC0;
  if (!qword_1EBBECFC0)
  {
    sub_1BA1769F0(255);
    sub_1BA176708();
    sub_1B9F7F308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBECFC0);
  }

  return result;
}

void sub_1BA1769F0(uint64_t a1)
{
  if (!qword_1EBBECFC8)
  {
    sub_1BA1766B0();
    v1 = sub_1BA4A58F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBECFC8);
    }
  }
}

uint64_t sub_1BA176A6C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1BA176B88(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA176AD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA176B28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1BA176B88(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6F8(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id EmptyHeaderCollectionReusableView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmptyHeaderCollectionReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item];
  v10 = type metadata accessor for EmptyHeaderCollectionReusableView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id EmptyHeaderCollectionReusableView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyHeaderCollectionReusableView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA176E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  return sub_1B9F68124(v3 + v4, a1);
}

uint64_t sub_1BA176EE8(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33EmptyHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1BA176B88(a1, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA177080(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1BA178CF0(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA178154();
  return sub_1B9F43F08(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA177158@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  return sub_1BA178CF0(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t sub_1BA1771DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA178154();
  return sub_1B9F43F08(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

void (*sub_1BA177274(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA1772D8;
}

void sub_1BA1772D8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA178154();
  }
}

void sub_1BA177354(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1BA1773B0(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0BAB9C;
}

void sub_1BA177448()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_1BA177544()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_1BA4A6758();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

id sub_1BA177638()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView);
  }

  else
  {
    sub_1BA177448();
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    v7 = [objc_opt_self() systemYellowColor];
    [v6 setTintColor_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_1BA177704(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  swift_unknownObjectWeakInit();
  v10 = *MEMORY[0x1E69DDCF8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_textStyle] = *MEMORY[0x1E69DDCF8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for DataTypeDetailFavoritesCell();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA177C68();

  return v12;
}

id sub_1BA177824(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  swift_unknownObjectWeakInit();
  v4 = *MEMORY[0x1E69DDCF8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_textStyle] = *MEMORY[0x1E69DDCF8];
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForUnpinnedState] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___imageForPinnedState] = 0;
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell____lazy_storage___accessoryImageView] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for DataTypeDetailFavoritesCell();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_1BA177C68();
  }

  return v7;
}

uint64_t sub_1BA177938()
{
  v1 = v0;
  sub_1BA178C68(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17[-v8];
  v10 = sub_1BA4A40A8();
  v11 = type metadata accessor for DataTypeDetailFavoritesCell();
  v18.receiver = v1;
  v18.super_class = v11;
  objc_msgSendSuper2(&v18, sel__bridgedUpdateConfigurationUsingState_, v10);

  MEMORY[0x1BFAF1F00]();
  v12 = sub_1BA4A4168();
  if ((*(*(v12 - 8) + 48))(v9, 1, v12))
  {
    v13 = MEMORY[0x1E69DC0D8];
    v14 = MEMORY[0x1E69E6720];
    sub_1BA178CF0(v9, v5, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720], sub_1BA178C68);
    MEMORY[0x1BFAF1F10](v5);
    return sub_1B9F43F08(v9, &qword_1EDC6B770, v13, v14, sub_1BA178C68);
  }

  else
  {
    v16 = [v1 traitCollection];
    sub_1B9F3AEE8();
    sub_1BA4A7358();

    v17[14] = v17[15];
    Presentation.cellBackgroundColor(for:)();
    sub_1BA4A4118();
    return MEMORY[0x1BFAF1F10](v9);
  }
}

void sub_1BA177C68()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1BA178C68(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v31 = &v28 - v5;
  v29 = sub_1BA4A3FD8();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1BA4A3F98();
  v10 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA178C68(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v2);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v28 - v16;
  sub_1BA4A4158();
  v18 = [objc_opt_self() tertiarySystemBackgroundColor];
  sub_1BA4A4118();
  v19 = sub_1BA4A4168();
  (*(*(v19 - 8) + 56))(v17, 0, 1, v19);
  MEMORY[0x1BFAF1F10](v17);
  sub_1BA178C68(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  sub_1BA177638();
  sub_1B9FD7EE0(0);
  v21 = &v9[*(v20 + 48)];
  v22 = *MEMORY[0x1E69DBF28];
  v23 = sub_1BA4A3F18();
  (*(*(v23 - 8) + 104))(v9, v22, v23);
  *v21 = sub_1B9FF87F0;
  v21[1] = 0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69DBF60], v29);
  v24 = sub_1BA4A3F48();
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  sub_1BA4A3F88();
  sub_1BA4A3EE8();
  (*(v10 + 8))(v13, v30);
  v25 = v1;
  sub_1BA4A75F8();
  v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v33 = v26;

  MEMORY[0x1BFAF1350](0x7469726F7661462ELL, 0xEF656C67676F5465);

  v27 = sub_1BA4A6758();

  [v25 setAccessibilityIdentifier_];
}

void sub_1BA178154()
{
  v1 = v0;
  v2 = sub_1BA4A4428();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  sub_1B9FEB5F0();
  MEMORY[0x1BFAF2040]();
  sub_1B9F6B774(*&v0[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_textStyle], *MEMORY[0x1E69DB978], 0, 0x8000, 0, 0, 1);
  v7 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v7(&v29, 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1BA178CF0(v1 + v8, v22, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (!v22[3])
  {
    sub_1B9F43F08(v22, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0;
    goto LABEL_12;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    goto LABEL_12;
  }

  if (!*(&v24 + 1))
  {
LABEL_12:
    sub_1BA0D8B74(&v23);
    [v1 setAccessibilityIdentifier_];
LABEL_13:
    *(&v30 + 1) = v2;
    *&v31 = MEMORY[0x1E69DC110];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
    MEMORY[0x1BFAF1EF0](&v29);
    (*(v3 + 8))(v6, v2);
    return;
  }

  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v29 = v23;
  v30 = v24;
  v9 = objc_opt_self();
  v10 = [v9 sharedBehavior];
  if (!v10)
  {
    __break(1u);
    goto LABEL_38;
  }

  v11 = v10;
  v12 = [v10 features];

  if (!v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v13 = [v12 isPinnedInBrowse];

  if (v13)
  {
    v14 = v1;
    if (v32 == 1)
    {
      if (qword_1EDC5E100 == -1)
      {
        goto LABEL_29;
      }
    }

    else if (qword_1EDC5E100 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  v16 = [v9 sharedBehavior];
  if (!v16)
  {
    goto LABEL_39;
  }

  v17 = v16;
  v18 = [v16 features];

  if (v18)
  {
    v19 = [v18 simplifiedLogging];

    if (v19 && (v14 = v1, (sub_1BA4A25A8() & 1) != 0))
    {
      if (v32 == 1)
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_29;
        }
      }

      else if (qword_1EDC5E100 == -1)
      {
LABEL_29:
        sub_1BA4A1318();
        sub_1BA4A43B8();
        if (v34)
        {
          v20 = sub_1BA4A6758();
        }

        else
        {
          v20 = 0;
        }

        [v14 setAccessibilityIdentifier_];

        sub_1BA0D8BF4(&v29);
        goto LABEL_13;
      }
    }

    else
    {
      v14 = v1;
      if (v32 == 1)
      {
        if (qword_1EDC5E100 == -1)
        {
          goto LABEL_29;
        }
      }

      else if (qword_1EDC5E100 == -1)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

LABEL_40:
  __break(1u);
}

id DataTypeDetailFavoritesCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DataTypeDetailFavoritesCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void (*sub_1BA17897C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_parentViewController;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1BA0C36E0;
}

uint64_t sub_1BA178A3C(void *a1)
{
  sub_1BA0272AC();
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeDetailFavoritesCell_item;
  swift_beginAccess();
  sub_1BA178CF0(v1 + v3, v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  if (!v14)
  {
    sub_1B9F43F08(v13, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    return sub_1B9F43F08(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying, sub_1B9F0CDE8);
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    return sub_1B9F43F08(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying, sub_1B9F0CDE8);
  }

  if (!*(&v11 + 1))
  {
    return sub_1B9F43F08(&v10, &qword_1EBBE9BB0, &qword_1EDC6CCD8, &protocol descriptor for FavoritableDisplaying, sub_1B9F0CDE8);
  }

  sub_1B9F1134C(&v10, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if ((*(v5 + 48))(v4, v5))
  {
    v6 = 11;
  }

  else
  {
    v6 = 12;
  }

  type metadata accessor for HealthAppAnalyticsManager();
  v9 = v6;
  v8 = 4;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  static HealthAppAnalyticsManager.submitInteraction(action:viewController:presentation:pinnedContentManager:)(&v9, a1, &v8, &v10);
  sub_1B9F43F08(&v10, &unk_1EDC6ADB0, &qword_1EDC6ADC0, MEMORY[0x1E69A3D48], sub_1B9F0CDE8);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_1BA178C68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA178CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

id sub_1BA178F60()
{
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v13[0] = xmmword_1EDC6D388;
  v13[1] = xmmword_1EDC6D398;
  v13[2] = xmmword_1EDC6D3A8;
  v13[3] = xmmword_1EDC6D3B8;
  v13[4] = xmmword_1EDC6D3C8;
  v13[5] = unk_1EDC6D3D8;
  v13[6] = xmmword_1EDC6D3E8;
  v13[7] = unk_1EDC6D3F8;
  v0 = xmmword_1EDC6D388;
  v1 = xmmword_1EDC6D398;
  v3 = xmmword_1EDC6D3A8;
  v2 = xmmword_1EDC6D3B8;
  v12 = qword_1EDC6D3E0;
  v10 = *(&xmmword_1EDC6D3B8 + 8);
  v11 = *(&xmmword_1EDC6D3C8 + 8);
  sub_1B9F1D9A4(v13, &v18);
  sub_1B9F1DA18(*(&v1 + 1), v3, *(&v3 + 1), v2);
  v4 = [objc_opt_self() estimatedDimension_];

  v5 = *(MEMORY[0x1E69DC5C0] + 8);
  v6 = *(MEMORY[0x1E69DC5C0] + 24);
  *&v14 = v0;
  *(&v14 + 1) = v4;
  *v15 = v1;
  *&v15[40] = v10;
  memset(&v15[8], 0, 32);
  *&v15[56] = v11;
  *&v15[72] = v12;
  *&v16 = 0x4034000000000000;
  *(&v16 + 1) = v5;
  *&v17 = 0x4044000000000000;
  *(&v17 + 1) = v6;
  sub_1BA0117AC();
  *&v19[48] = *&v15[48];
  *&v19[64] = *&v15[64];
  v20 = v16;
  v21 = v17;
  v18 = v14;
  *v19 = *v15;
  *&v19[16] = *&v15[16];
  *&v19[32] = *&v15[32];
  sub_1B9F1D9A4(&v14, &v9);
  v7 = sub_1B9F293A8(&v18);
  *&v18 = v0;
  *(&v18 + 1) = v4;
  *v19 = v1;
  memset(&v19[8], 0, 32);
  *&v19[40] = v10;
  *&v19[56] = v11;
  *&v19[72] = v12;
  *&v20 = 0x4034000000000000;
  *(&v20 + 1) = v5;
  *&v21 = 0x4044000000000000;
  *(&v21 + 1) = v6;
  sub_1B9F1DA58(&v18);
  return v7;
}

double sub_1BA179180()
{

  return result;
}

uint64_t sub_1BA1791C0()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1BA179290()
{
  sub_1BA1791C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HealthDetailsCompoundDataSource(uint64_t a1)
{
  result = qword_1EBBED008;
  if (!qword_1EBBED008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA17933C(void *a1, void *a2)
{
  v3 = v2;
  v5 = a2;
  v6 = [a1 profileIdentifier];
  type metadata accessor for ProfileAvatarDataSource(0);
  swift_allocObject();
  v7 = ProfileAvatarDataSource.init(context:profileIdentifier:layoutConstructor:shouldDisplayName:)(v5, v6, sub_1BA178F60, 0, 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI31HealthDetailsCompoundDataSource_profileAvatarDataSource;
  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI31HealthDetailsCompoundDataSource_profileAvatarDataSource) = v7;
  type metadata accessor for HealthDetailsDemographicsDataSource(0);
  v9 = swift_allocObject();
  v10 = v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_selectedItem;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0;
  v11 = v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_firstNameItem;
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_lastNameItem;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *(v9 + OBJC_IVAR____TtC18HealthExperienceUI35HealthDetailsDemographicsDataSource_healthStore) = a1;
  v13 = a1;
  v14 = sub_1B9F1DAFC(MEMORY[0x1E69E7CC0], 1, sub_1BA2EEB74, 0);

  sub_1BA2EEC58();

  *(v3 + OBJC_IVAR____TtC18HealthExperienceUI31HealthDetailsCompoundDataSource_demographicsDataSource) = v14;
  sub_1B9F1DEA0(0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5460;
  *(v15 + 32) = *(v3 + v8);
  *(v15 + 40) = &protocol witness table for MutableArrayDataSource;
  *(v15 + 48) = v14;
  *(v15 + 56) = &protocol witness table for MutableArrayDataSource;

  return CompoundSectionedDataSource.init(_:)(v15);
}

uint64_t PlatformCellBackgroundView.init(includeCorners:cellState:)@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 32) = a1;
  type metadata accessor for ObservableCellState(0);
  sub_1BA179564();
  result = sub_1BA4A5348();
  *(a3 + 16) = result;
  *(a3 + 24) = v6;
  return result;
}

unint64_t sub_1BA179564()
{
  result = qword_1EDC67D30;
  if (!qword_1EDC67D30)
  {
    type metadata accessor for ObservableCellState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67D30);
  }

  return result;
}

uint64_t sub_1BA1795BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BA179604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *ProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:)(void *a1, void *a2, void *a3)
{
  type metadata accessor for ProfileGradientsProviderFactory();
  swift_initStaticObject();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_1BA4A1B68();
  v7 = sub_1B9FE10EC(a1, v6, MEMORY[0x1E69E7CC0]);

  sub_1B9F0A534(a2, v12);
  sub_1B9F0A534(a3, v11);
  v8 = objc_allocWithZone(type metadata accessor for ProfileOverviewViewController());
  v9 = sub_1BA1803C4(a1, v12, v11, v7);

  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v9;
}

void sub_1BA179754()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v41[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider;
  sub_1B9F0A534(&v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider], v41);
  v9 = v42;
  v10 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v41);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  v12 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  v13 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView + 8];
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v39, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v41);
  v20 = v42;
  v21 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50(0);
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50, MEMORY[0x1E695BFB0]);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v41);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *(v11 + 1);
  v25 = *v11;
  v26 = [v1 view];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v27 = v26;

  v28 = [v27 backgroundColor];

  if (!v28)
  {
    v28 = [objc_opt_self() systemBackgroundColor];
  }

  v29 = swift_getObjectType();
  (*(v24 + 16))(v28, v29, v24);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1BA4B5480;
  v31 = sub_1BA4A4178();
  v32 = MEMORY[0x1E69DC0F8];
  *(v30 + 32) = v31;
  *(v30 + 40) = v32;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for PreviewSharedProfileOverviewViewController();
  v33 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v41);
  v34 = v42;
  v35 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v36 = *((*(v35 + 24))(v34, v35) + 16);

  __swift_destroy_boxed_opaque_existential_1(v41);
  if (v36)
  {
    sub_1B9F0A534(&v1[v8], v41);
    v37 = v42;
    v38 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v38 + 24))(v37, v38);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {
  }
}

void sub_1BA179CE8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v42[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1B9F0A534(&v1[v8], v42);
  v9 = v43;
  v10 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v41, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v42);
  v20 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50(0);
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50, MEMORY[0x1E695BFB0]);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *v11;
  v25 = *(v11 + 1);
  v26 = v24;
  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v28 = v27;

  v29 = [v28 backgroundColor];

  if (!v29)
  {
    v29 = [objc_opt_self() systemBackgroundColor];
  }

  v30 = swift_getObjectType();
  (*(v25 + 16))(v29, v30, v25);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  v32 = sub_1BA4A4178();
  v33 = MEMORY[0x1E69DC0F8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for ProfileOverviewViewController();
  v34 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v42);
  v35 = v43;
  v36 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v37 = *((*(v36 + 24))(v35, v36) + 16);

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v37)
  {
    sub_1B9F0A534(&v1[v8], v42);
    v38 = v43;
    v39 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v39 + 24))(v38, v39);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
  }
}

void sub_1BA17A294()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v42[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1B9F0A534(&v1[v8], v42);
  v9 = v43;
  v10 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientView];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v41, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v42);
  v20 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50(0);
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50, MEMORY[0x1E695BFB0]);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *v11;
  v25 = *(v11 + 1);
  v26 = v24;
  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v28 = v27;

  v29 = [v28 backgroundColor];

  if (!v29)
  {
    v29 = [objc_opt_self() systemBackgroundColor];
  }

  v30 = swift_getObjectType();
  (*(v25 + 16))(v29, v30, v25);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  v32 = sub_1BA4A4178();
  v33 = MEMORY[0x1E69DC0F8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for SharedProfileOverviewViewController();
  v34 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v42);
  v35 = v43;
  v36 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v37 = *((*(v36 + 24))(v35, v36) + 16);

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v37)
  {
    sub_1B9F0A534(&v1[v8], v42);
    v38 = v43;
    v39 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v39 + 24))(v38, v39);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
  }
}

void sub_1BA17A850()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v3 = objc_opt_self();
  v4 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v42[0]) - 4) & 0xF7) != 0)
  {
    v4 = &selRef_systemGroupedBackgroundColor;
  }

  v5 = [v3 *v4];
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 setBackgroundColor_];

  v8 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientColorProvider;
  swift_beginAccess();
  sub_1B9F0A534(&v1[v8], v42);
  v9 = v43;
  v10 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  (*(v10 + 8))(v9, v10);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v11 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientView];
  swift_beginAccess();
  v12 = *v11;
  v13 = *(v11 + 1);
  ObjectType = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = v12;
  v15(v41, ObjectType, v13);

  v17 = [*v11 layer];
  [v17 setZPosition_];

  v18 = [v1 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = v18;
  [v18 insertSubview:*v11 atIndex:0];

  sub_1B9F0A534(&v1[v8], v42);
  v20 = v43;
  v21 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v40 = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B9F10B50(0);
  sub_1BA1808C4(&qword_1EDC5F468, sub_1B9F10B50, MEMORY[0x1E695BFB0]);
  v22 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v42);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewController_gradientSubscriber;
  swift_beginAccess();
  *&v1[v23] = v22;

  v24 = *v11;
  v25 = *(v11 + 1);
  v26 = v24;
  v27 = [v1 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v28 = v27;

  v29 = [v28 backgroundColor];

  if (!v29)
  {
    v29 = [objc_opt_self() systemBackgroundColor];
  }

  v30 = swift_getObjectType();
  (*(v25 + 16))(v29, v30, v25);

  sub_1BA18090C(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BA4B5480;
  v32 = sub_1BA4A4178();
  v33 = MEMORY[0x1E69DC0F8];
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  *(swift_allocObject() + 16) = v5;
  type metadata accessor for CategoryViewController();
  v34 = v5;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  sub_1B9F0A534(&v1[v8], v42);
  v35 = v43;
  v36 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v37 = *((*(v36 + 24))(v35, v36) + 16);

  __swift_destroy_boxed_opaque_existential_1(v42);
  if (v37)
  {
    sub_1B9F0A534(&v1[v8], v42);
    v38 = v43;
    v39 = v44;
    __swift_project_boxed_opaque_existential_1(v42, v43);
    (*(v39 + 24))(v38, v39);
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
  }
}

void sub_1BA17AE0C(char *a1, uint64_t a2, void *a3)
{
  v5 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView + 8];
  v10 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView];
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 backgroundColor];

    if (!v8)
    {
      v8 = a3;
    }

    ObjectType = swift_getObjectType();
    (*(v5 + 16))(v8, ObjectType, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA17AEEC(char *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &a1[*a4];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  v9 = v7;
  v10 = [a1 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 backgroundColor];

    if (!v12)
    {
      v12 = a3;
    }

    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v12, ObjectType, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA17AFCC(void *a1)
{
  sub_1B9F0A534(a1 + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientColorProvider, v5);
  v2 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  v3 = [a1 traitCollection];
  (*(v2 + 16))();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1BA17B084(char *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  swift_beginAccess();
  sub_1B9F0A534(&a1[v4], v8);
  v5 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = [a1 traitCollection];
  (*(v5 + 16))();

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void sub_1BA17B13C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = sub_1BA084234();
  v4 = [v1 presentingViewController];
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v7 = sub_1BA25A190(v3, v5 != 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI47SummarySharingRelationshipDetailsViewController_navigationBarTitleView;
  swift_beginAccess();
  v9 = *&v1[v8];
  *&v1[v8] = v7;
  v10 = v7;

  v11 = [v1 navigationItem];
  [v11 setTitleView_];

  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [v1 navigationItem];
    [v12 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17BF70, &unk_1F380A4D0, sub_1BA1811DC, &block_descriptor_19);
  }
}

void sub_1BA17B2FC()
{
  v1 = v0;
  sub_1BA142B40(0);
  v3 = v2;
  v4 = *(v2 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v2, v5).n128_u64[0];
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 navigationItem];
  [v9 setLargeTitleDisplayMode_];

  v23[0] = *(*(*&v1[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource] + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v10 = MEMORY[0x1E695BF98];
  sub_1BA1807E0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA180880(&qword_1EDC6B730, &qword_1EDC6B720, v10, MEMORY[0x1E695BFB0]);
  v23[0] = sub_1BA4A4F98();
  v11 = MEMORY[0x1E695BED0];
  sub_1BA1807E0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1BA142C28(0);
  sub_1BA180880(&qword_1EDC6B740, &qword_1EDC6B738, v11, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();
  sub_1BA1808C4(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v12 = sub_1BA4A4F98();

  (*(v4 + 8))(v8, v3);
  v13 = [v1 presentingViewController];
  v14 = v13;
  if (v13)
  {
  }

  v15 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v16 = sub_1BA25A190(v12, v14 != 0);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v18 = *&v1[v17];
  *&v1[v17] = v16;
  v19 = v16;

  v20 = [v1 navigationItem];
  [v20 setTitleView_];

  [*&v19[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v21 = [v1 navigationItem];
    [v21 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C19C, &unk_1F380A7A0, sub_1BA1811DC, &block_descriptor_75);
  }
}

void sub_1BA17B6CC()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = sub_1BA1E5C0C();
  v4 = [v1 presentingViewController];
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v7 = sub_1BA25A190(v3, v5 != 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v9 = *&v1[v8];
  *&v1[v8] = v7;
  v10 = v7;

  v11 = [v1 navigationItem];
  [v11 setTitleView_];

  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [v1 navigationItem];
    [v12 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C3C8, &unk_1F380A6B0, sub_1BA1811DC, &block_descriptor_56_0);
  }
}

void sub_1BA17B88C()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode_];

  v3 = sub_1BA388058();
  v4 = [v1 presentingViewController];
  v5 = v4;
  if (v4)
  {
  }

  v6 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v7 = sub_1BA25A190(v3, v5 != 0);
  v8 = OBJC_IVAR____TtC18HealthExperienceUI21ProfileViewController_navigationBarTitleView;
  swift_beginAccess();
  v9 = *&v1[v8];
  *&v1[v8] = v7;
  v10 = v7;

  v11 = [v1 navigationItem];
  [v11 setTitleView_];

  [*&v10[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v12 = [v1 navigationItem];
    [v12 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C5F4, &unk_1F380A5C0, sub_1BA180E10, &block_descriptor_37_0);
  }
}

void sub_1BA17BA4C()
{
  v1 = v0;
  sub_1BA142B40(0);
  v3 = v2;
  v4 = *(v2 - 8);
  *&v6 = MEMORY[0x1EEE9AC00](v2, v5).n128_u64[0];
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 navigationItem];
  [v9 setLargeTitleDisplayMode_];

  v23[0] = *(*(*&v1[OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_categoriesDataSource] + OBJC_IVAR____TtC18HealthExperienceUI27ProfileCategoriesDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v10 = MEMORY[0x1E695BF98];
  sub_1BA1807E0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA180880(&qword_1EDC6B730, &qword_1EDC6B720, v10, MEMORY[0x1E695BFB0]);
  v23[0] = sub_1BA4A4F98();
  v11 = MEMORY[0x1E695BED0];
  sub_1BA1807E0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1BA142C28(0);
  sub_1BA180880(&qword_1EDC6B740, &qword_1EDC6B738, v11, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();
  sub_1BA1808C4(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v12 = sub_1BA4A4F98();

  (*(v4 + 8))(v8, v3);
  v13 = [v1 presentingViewController];
  v14 = v13;
  if (v13)
  {
  }

  v15 = objc_allocWithZone(type metadata accessor for ProfileNavigationBarView());
  v16 = sub_1BA25A190(v12, v14 != 0);
  v17 = OBJC_IVAR____TtC18HealthExperienceUI31ProfileCategoriesViewController_navigationBarTitleView;
  swift_beginAccess();
  v18 = *&v1[v17];
  *&v1[v17] = v16;
  v19 = v16;

  v20 = [v1 navigationItem];
  [v20 setTitleView_];

  [*&v19[OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView] setAlpha_];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v21 = [v1 navigationItem];
    [v21 _setManualScrollEdgeAppearanceEnabled_];

    sub_1BA17F870(0, sub_1BA17C820, &unk_1F380A570, sub_1BA1811DC, &block_descriptor_31_1);
  }
}

id sub_1BA17BE24()
{
  v1 = v0;
  v2 = sub_1BA4A1998();
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v9 = result;
  MEMORY[0x1BFAEC380](1, 0);
  v10 = sub_1BA4A18F8();
  (*(v3 + 8))(v7, v2);
  v11 = [v9 cellForItemAtIndexPath_];

  if (v11)
  {
    type metadata accessor for ProfileNameCell();
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_1BA17BF70()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA17BE24();
  if (v5)
  {
    v6 = v5;
    v7 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v8 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v9 bounds];
    [v9 convertRect:0 toView:?];
    [*&v7[v8] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6F88();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B9F0B82C(0xD00000000000002FLL, 0x80000001BA4EF8B0, &v15);
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s)]: No profile info cell found, defaulting to placeholder value", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1BA17C19C()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA17BE24();
  if (v5)
  {
    v6 = v5;
    v7 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v8 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v9 bounds];
    [v9 convertRect:0 toView:?];
    [*&v7[v8] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6F88();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B9F0B82C(0xD00000000000001DLL, 0x80000001BA4C1F20, &v15);
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s)]: No profile info cell found, defaulting to placeholder value", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1BA17C3C8()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA17BE24();
  if (v5)
  {
    v6 = v5;
    v7 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v8 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v9 bounds];
    [v9 convertRect:0 toView:?];
    [*&v7[v8] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6F88();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B9F0B82C(0xD000000000000023, 0x80000001BA4EF900, &v15);
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s)]: No profile info cell found, defaulting to placeholder value", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1BA17C5F4()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA17BE24();
  if (v5)
  {
    v6 = v5;
    v7 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v8 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v9 bounds];
    [v9 convertRect:0 toView:?];
    [*&v7[v8] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6F88();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B9F0B82C(0xD000000000000015, 0x80000001BA4E13B0, &v15);
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s)]: No profile info cell found, defaulting to placeholder value", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1BA17C820()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA17BE24();
  if (v5)
  {
    v6 = v5;
    v7 = *&v5[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameCell_profileNameView];

    v8 = OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel;
    v9 = *&v7[OBJC_IVAR____TtC18HealthExperienceUI15ProfileNameView_nameLabel];
    [v9 bounds];
    [v9 convertRect:0 toView:?];
    [*&v7[v8] _lastLineBaseline];
  }

  else
  {
    sub_1BA4A3E28();
    v10 = sub_1BA4A3E88();
    v11 = sub_1BA4A6F88();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1B9F0B82C(0xD00000000000001FLL, 0x80000001BA4EF8E0, &v15);
      _os_log_impl(&dword_1B9F07000, v10, v11, "[%s)]: No profile info cell found, defaulting to placeholder value", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
      MEMORY[0x1BFAF43A0](v12, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
  }
}

void sub_1BA17CAAC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_1BA17CB0C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1BA17CB58(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1BA17CC10()
{
  sub_1BA142B40(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(*(v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource) + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + qword_1EDC6A560);
  v7 = MEMORY[0x1E695BF98];
  sub_1BA1807E0(0, &qword_1EDC6B720, MEMORY[0x1E695BF98]);
  sub_1BA180880(&qword_1EDC6B730, &qword_1EDC6B720, v7, MEMORY[0x1E695BFB0]);
  v12 = sub_1BA4A4F98();
  v8 = MEMORY[0x1E695BED0];
  sub_1BA1807E0(0, &qword_1EDC6B738, MEMORY[0x1E695BED0]);
  sub_1BA142C28(0);
  sub_1BA180880(&qword_1EDC6B740, &qword_1EDC6B738, v8, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();
  sub_1BA1808C4(&qword_1EBBEC7C0, sub_1BA142B40, MEMORY[0x1E695BD60]);
  v9 = sub_1BA4A4F98();

  (*(v3 + 8))(v6, v2);
  return v9;
}

uint64_t sub_1BA17CE60@<X0>(uint64_t a1@<X8>)
{
  sub_1BA18090C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(**(*(v1 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource) + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + 760);

  v7(v8);

  v9 = sub_1BA4A2888();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    result = sub_1BA180970(v6, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    v12 = MEMORY[0x1E69A30F0];
    *(a1 + 24) = v9;
    *(a1 + 32) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(v10 + 32))(boxed_opaque_existential_1, v6, v9);
  }

  return result;
}

void sub_1BA17D028(__int128 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = *a1;
  *(v3 + v4) = *a1;
  v7 = v6;
}

id sub_1BA17D090()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1BA17D0E4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

double sub_1BA17D1A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA17D20C()
{
  swift_beginAccess();

  return result;
}

double sub_1BA17D254(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1BA17D30C(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + v4));
  sub_1B9F1134C(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1BA17D378@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  return sub_1B9F0A534(v1 + v3, a1);
}

uint64_t sub_1BA17D3D0(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));
  sub_1B9F1134C(a1, v1 + v3);
  return swift_endAccess();
}

char *ProfileOverviewViewController.__allocating_init(healthStore:healthExperienceStore:pinnedContentManager:profileGradientsProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1BA1803C4(a1, a2, a3, a4);

  return v10;
}

char *ProfileOverviewViewController.init(healthStore:healthExperienceStore:pinnedContentManager:profileGradientsProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v6 = sub_1BA1803C4(a1, a2, a3, a4);

  return v6;
}

id sub_1BA17D618()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ProfileOverviewViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = [v3 systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];

    result = [v0 collectionView];
    if (result)
    {
      v5 = result;
      v6 = [v3 clearColor];
      [v5 setBackgroundColor_];

      sub_1BA179CE8();
      sub_1BA17D74C();
      sub_1BA17B2FC();
      sub_1BA4A2B08();
      return sub_1BA4A2B28();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BA17D74C()
{
  v1 = v0;
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    return;
  }

  v7 = [v1 navigationController];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 viewControllers];

    sub_1B9F0ADF8(0, &qword_1EDC6B5D0, 0x1E69DD258);
    v10 = sub_1BA4A6B08();

    v11 = sub_1B9FEEB54(v1, v10);
    if ((v12 & 1) == 0)
    {
      v13 = v11;
      v14 = v11 < 1;
      v15 = v11 - 1;
      if (!v14)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1BFAF2860](v15, v10);
        }

        else
        {
          if (v13 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_28;
          }

          v16 = *(v10 + 8 * v15 + 32);
        }

        v17 = v16;

        v18 = [v17 title];

        if (v18)
        {
          v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v21 = v20;

LABEL_16:
          v24 = *MEMORY[0x1E69DDD40];
          v25 = objc_opt_self();
          v26 = [v25 preferredFontDescriptorWithTextStyle:v24 compatibleWithTraitCollection:0];
          if (v26)
          {
            v27 = v26;
            v28 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
          }

          else
          {
            v61 = v19;
            sub_1BA4A3DD8();
            v29 = v24;
            v30 = sub_1BA4A3E88();
            v31 = sub_1BA4A6FB8();

            if (os_log_type_enabled(v30, v31))
            {
              v32 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              v64 = v59;
              *v32 = 136315906;
              v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v60 = v29;
              v35 = sub_1B9F0B82C(v33, v34, &v64);
              HIDWORD(v57) = v31;
              v36 = v35;

              *(v32 + 4) = v36;
              *(v32 + 12) = 2080;
              v62 = 0;
              v63 = 1;
              sub_1BA18090C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
              v37 = sub_1BA4A6808();
              v39 = sub_1B9F0B82C(v37, v38, &v64);

              *(v32 + 14) = v39;
              *(v32 + 22) = 2080;
              LODWORD(v62) = 0;
              type metadata accessor for SymbolicTraits(0);
              v40 = sub_1BA4A6808();
              v42 = sub_1B9F0B82C(v40, v41, &v64);
              v29 = v60;

              *(v32 + 24) = v42;
              *(v32 + 32) = 2112;
              v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
              *(v32 + 34) = v43;
              v44 = v58;
              *v58 = v43;
              _os_log_impl(&dword_1B9F07000, v30, BYTE4(v57), "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v32, 0x2Au);
              sub_1B9F8C6C8(v44);
              MEMORY[0x1BFAF43A0](v44, -1, -1);
              v45 = v59;
              swift_arrayDestroy();
              MEMORY[0x1BFAF43A0](v45, -1, -1);
              MEMORY[0x1BFAF43A0](v32, -1, -1);
            }

            (*(v3 + 8))(v6, v2);
            v46 = [v25 preferredFontDescriptorWithTextStyle_];
            v28 = [objc_opt_self() fontWithDescriptor:v46 size:0.0];

            v19 = v61;
          }

          v47 = [objc_opt_self() configurationWithFont_];

          v48 = sub_1BA4A6758();
          v49 = [objc_opt_self() systemImageNamed:v48 withConfiguration:v47];

          v50 = sub_1BA1A386C(v19, v21, v49);

          [v50 addTarget:v1 action:sel_backButtonTapped_ forControlEvents:64];
          v51 = sub_1BA3D3628(v50);
          v52 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

          v53 = [v1 navigationItem];
          [v53 setLeftBarButtonItem_];

          v54 = [v1 navigationController];
          if (v54)
          {
            v55 = v54;
            v56 = [v54 interactivePopGestureRecognizer];

            if (v56)
            {
              [v56 setDelegate_];
            }
          }

          return;
        }

        if (qword_1EBBE8510 == -1)
        {
LABEL_15:
          v19 = sub_1BA4A1318();
          v21 = v23;
          goto LABEL_16;
        }

LABEL_28:
        swift_once();
        goto LABEL_15;
      }
    }
  }

  v61 = [v1 navigationItem];
  [v61 setLeftBarButtonItem_];
  v22 = v61;
}

void sub_1BA17DEB0()
{
  v1 = v0;
  sub_1B9F36938();
  v2 = [v0 collectionView];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  sub_1B9FF57C0();

  v4 = [v1 collectionView];
  if (!v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  sub_1B9FF5688();

  v6 = [v1 collectionView];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  sub_1B9FF578C();

  v8 = [v1 collectionView];
  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v8;
  sub_1B9FF5260();

  v10 = [v1 collectionView];
  if (!v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  sub_1B9FF515C();

  v12 = [v1 collectionView];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  sub_1B9FF5190();

  v14 = [v1 collectionView];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  sub_1B9FF5DD8();

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v16;
  sub_1B9F39D20();

  v18 = [v1 collectionView];
  if (!v18)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1BA162F3C(v20, v21);
}

void sub_1BA17E070(uint64_t a1)
{
  v23.receiver = v1;
  v23.super_class = type metadata accessor for ProfileOverviewViewController();
  objc_msgSendSuper2(&v23, sel_traitCollectionDidChange_, a1);
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F870(1, sub_1BA17C19C, &unk_1F380A7A0, sub_1BA1811DC, &block_descriptor_75);
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (!v4)
  {
    goto LABEL_12;
  }

  type metadata accessor for ProfileNavigationBarView();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = v5;
  v7 = v4;
  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    sub_1BA17C19C();
    v11 = v10;
    [v9 contentOffset];
    v13 = v12;
    [v9 adjustedContentInset];
    v15 = v14;

    if (v11 >= v13 + v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = 1.0;
    }

    [*(v6 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v16 == v17)
    {
    }

    else
    {
      v18 = swift_allocObject();
      *(v18 + 16) = v6;
      *(v18 + 24) = v16;
      v19 = objc_opt_self();
      aBlock[4] = sub_1BA090900;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_38;
      v20 = _Block_copy(aBlock);
      v21 = v7;

      [v19 animateWithDuration:v20 animations:0.2];

      _Block_release(v20);
    }

LABEL_12:
    sub_1BA17D74C();
    return;
  }

  __break(1u);
}

void sub_1BA17E51C()
{
  v21 = sub_1BA4A3678();
  v1 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA18090C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v21 - v7;
  v9 = sub_1BA4A2888();
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9, v11).n128_u64[0];
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore] profileIdentifier];
  v22 = v0;
  v16 = *(**(*&v0[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource] + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + 760);

  v16(v17);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BA180970(v8, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    sub_1BA4A2AB8();
    (*(v10 + 8))(v14, v9);
  }

  v18 = v21;
  (*(v1 + 104))(v4, *MEMORY[0x1E69A2C30], v21);
  v19 = v15;
  v20 = sub_1BA4A35B8();

  (*(v1 + 8))(v4, v18);
  [v22 setUserActivity_];
}

id sub_1BA17E894(void *a1)
{
  v2 = v1;
  v107 = v2;
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v105 = *(v4 - 8);
  v106 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v96[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v103 = &v96[-v10];
  sub_1BA18090C(0, &qword_1EBBED070, MEMORY[0x1E69A2C78], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v96[-v13];
  v15 = sub_1BA4A3678();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v101 = &v96[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19, v20);
  v102 = &v96[-v21];
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v96[-v24];
  *&v28 = MEMORY[0x1EEE9AC00](v26, v27).n128_u64[0];
  v30 = &v96[-v29];
  v108 = a1;
  v31 = [a1 activityType];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A3688();
  v32 = &off_1E7EEF000;
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v30, v14, v15);
    v44 = *(v16 + 16);
    v44(v25, v30, v15);
    v45 = (*(v16 + 88))(v25, v15);
    v46 = *MEMORY[0x1E69A2C20];
    v100 = v16;
    if (v45 == v46 || v45 == *MEMORY[0x1E69A2C60] || v45 == *MEMORY[0x1E69A2C00])
    {
      v48 = v107;
      v62 = *&v107[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore];
      ObjectType = v30;
      v105 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthExperienceStore;
      v63 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager;
      sub_1B9F0A534(&v107[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager], &v116);
      v106 = 0x80000001BA4EF6A0;
      if (qword_1EDC5E100 != -1)
      {
        swift_once();
      }

      v64 = sub_1BA4A1318();
      v66 = v65;
      v67 = sub_1BA4A6758();
      v68 = [objc_opt_self() systemImageNamed_];

      sub_1B9F0A534(v48 + v105, v114);
      sub_1B9F0A534(v48 + v63, v113);
      sub_1B9F0A534(v114, v112);
      sub_1B9F0A534(v113, v111);
      v69 = swift_allocObject();
      *(v69 + 16) = v62;
      sub_1B9F1134C(v114, v69 + 24);
      sub_1B9F1134C(v113, v69 + 64);
      v110[0] = type metadata accessor for ProfileNavigationCollectionViewCell();
      sub_1BA1809F0();
      v70 = v62;
      v71 = sub_1BA4A6808();
      v115 = v70;
      v119 = 0xD000000000000037;
      v120 = v106;
      v121 = v71;
      v122 = v72;
      v123 = v64;
      v124 = v66;
      v125 = v68;
      v126 = sub_1BA1809E0;
      v127 = v69;
      v73 = v70;

      sub_1BA180A38(&v115);
      sub_1B9F0A534(v112, v110);
      sub_1B9F0A534(v111, v109);
      objc_allocWithZone(type metadata accessor for ProfileCategoriesViewController());
      v74 = v73;
      v75 = sub_1BA3F9C88(v74, v110, v109);

      __swift_destroy_boxed_opaque_existential_1(v112);
      __swift_destroy_boxed_opaque_existential_1(v111);
      v76 = [v48 navigationController];
      if (v76)
      {
        v77 = v76;
        [v76 pushViewController:v75 animated:0];
      }

      v32 = &off_1E7EEF000;
      v41 = v108;
      [v75 restoreUserActivityState_];

      (*(v100 + 8))(ObjectType, v15);
    }

    else
    {
      if (v45 != *MEMORY[0x1E69A2C28])
      {
        v78 = v103;
        sub_1BA4A3DD8();
        v79 = v102;
        v44(v102, v30, v15);
        v80 = sub_1BA4A3E88();
        v81 = sub_1BA4A6F98();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = v79;
          v83 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          *&v114[0] = v99;
          *v83 = 136446466;
          v115 = ObjectType;
          swift_getMetatypeMetadata();
          v84 = sub_1BA4A6808();
          v98 = v80;
          v86 = sub_1B9F0B82C(v84, v85, v114);
          v97 = v81;
          v87 = v86;

          *(v83 + 4) = v87;
          *(v83 + 12) = 2080;
          v44(v101, v82, v15);
          v88 = sub_1BA4A6808();
          ObjectType = v30;
          v90 = v89;
          v91 = *(v100 + 8);
          v91(v82, v15);
          v92 = sub_1B9F0B82C(v88, v90, v114);

          *(v83 + 14) = v92;
          v93 = v98;
          _os_log_impl(&dword_1B9F07000, v98, v97, "[%{public}s]: no restoration configured for %s", v83, 0x16u);
          v94 = v99;
          swift_arrayDestroy();
          MEMORY[0x1BFAF43A0](v94, -1, -1);
          MEMORY[0x1BFAF43A0](v83, -1, -1);

          (*(v105 + 8))(v103, v106);
          v91(ObjectType, v15);
        }

        else
        {

          v91 = *(v100 + 8);
          v91(v79, v15);
          (*(v105 + 8))(v78, v106);
          v91(v30, v15);
        }

        v41 = v108;
        v91(v25, v15);
        v42 = type metadata accessor for ProfileOverviewViewController();
        v129 = v107;
        v43 = &v129;
        v32 = &off_1E7EEF000;
        goto LABEL_23;
      }

      v47 = v30;
      v48 = v107;
      v49 = *&v107[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore];
      sub_1B9F0A534(&v107[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager], &v115);
      v50 = objc_allocWithZone(type metadata accessor for ProfileViewController());
      v51 = v117;
      v52 = v118;
      v53 = __swift_mutable_project_boxed_opaque_existential_1(&v115, v117);
      v54 = MEMORY[0x1EEE9AC00](v53, v53);
      v56 = &v96[-((v55 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v57 + 16))(v56, v54);
      v58 = v49;
      v59 = sub_1BA38A128(v58, v56, v50, v51, v52);

      __swift_destroy_boxed_opaque_existential_1(&v115);
      v60 = [v48 navigationController];
      if (v60)
      {
        v61 = v60;
        [v60 pushViewController:v59 animated:0];

        (*(v100 + 8))(v47, v15);
      }

      else
      {
        (*(v100 + 8))(v47, v15);
      }

      v41 = v108;
      v32 = &off_1E7EEF000;
    }

    v42 = type metadata accessor for ProfileOverviewViewController();
    v128 = v48;
    v43 = &v128;
    goto LABEL_23;
  }

  sub_1BA180970(v14, &qword_1EBBED070, MEMORY[0x1E69A2C78]);
  sub_1BA4A3E48();
  v33 = sub_1BA4A3E88();
  v34 = sub_1BA4A6FA8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v114[0] = v36;
    *v35 = 136446210;
    v115 = ObjectType;
    swift_getMetatypeMetadata();
    v37 = sub_1BA4A6808();
    v39 = sub_1B9F0B82C(v37, v38, v114);
    v32 = &off_1E7EEF000;

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1B9F07000, v33, v34, "[%{public}s] user activity passed in does not have a valid activity type", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1BFAF43A0](v36, -1, -1);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
  }

  (*(v105 + 8))(v7, v106);
  v40 = v107;
  v41 = v108;
  v42 = type metadata accessor for ProfileOverviewViewController();
  v130.receiver = v40;
  v43 = &v130;
LABEL_23:
  v43->super_class = v42;
  return objc_msgSendSuper2(v43, v32[354], v41);
}

id ProfileOverviewViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

uint64_t sub_1BA17F554()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthExperienceStore));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager));

  return __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider));
}

id ProfileOverviewViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileOverviewViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BA17F870(uint64_t a1, double (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v10 = [v5 navigationItem];
    [v10 _manualScrollEdgeAppearanceProgress];
    v12 = v11;

    v13 = [v5 collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = a2();
      [v14 contentOffset];
      v17 = v16;
      [v14 adjustedContentInset];
      v19 = v18;

      if (v15 >= v17 + v19)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = 1.0;
      }

      if (v12 != v20)
      {
        if (v9)
        {
          v21 = objc_opt_self();
          v22 = swift_allocObject();
          *(v22 + 16) = v5;
          *(v22 + 24) = v20;
          aBlock[4] = a4;
          aBlock[5] = v22;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1B9F0B040;
          aBlock[3] = a5;
          v23 = _Block_copy(aBlock);
          v24 = v5;

          [v21 animateWithDuration:v23 animations:0.2];
          _Block_release(v23);
        }

        else
        {
          v25 = [v5 navigationItem];
          [v25 _setManualScrollEdgeAppearanceProgress_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BA17FA8C(double (*a1)(void))
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = a1();
      [v4 contentOffset];
      v7 = v6;
      [v4 adjustedContentInset];
      v9 = v8;

      if (v5 >= v7 + v9)
      {
        v11 = [objc_opt_self() effectWithStyle_];
        v23 = [objc_opt_self() effectForBlurEffect:v11 style:4];

        v10 = [v1 navigationController];
      }

      else
      {
        v10 = [v1 navigationController];
      }

      v12 = v10;
      if (v12)
      {
        v13 = v12;
        v14 = [v12 navigationBar];

        v15 = [v14 items];
        if (v15)
        {
          sub_1B9F0ADF8(0, &qword_1EBBED078, 0x1E69DCCE0);
          v16 = sub_1BA4A6B08();

          if (v16 >> 62)
          {
            goto LABEL_20;
          }

          for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
          {
            v18 = 0;
            while (1)
            {
              if ((v16 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x1BFAF2860](v18, v16);
              }

              else
              {
                if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_19;
                }

                v19 = *(v16 + 8 * v18 + 32);
              }

              v20 = v19;
              v21 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              sub_1BA180E78(v19, v22);

              ++v18;
              if (v21 == i)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
LABEL_19:
            __break(1u);
LABEL_20:
            ;
          }

LABEL_21:
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BA17FD14(uint64_t a1)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F870(1, sub_1BA17C19C, &unk_1F380A7A0, sub_1BA1811DC, &block_descriptor_75);
  }

  v2 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    goto LABEL_12;
  }

  type metadata accessor for ProfileNavigationBarView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = v3;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    sub_1BA17C19C();
    v10 = v9;
    [v8 contentOffset];
    v12 = v11;
    [v8 adjustedContentInset];
    v14 = v13;

    if (v10 >= v12 + v14)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v15 == v16)
    {
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      *(v17 + 24) = v15;
      v18 = objc_opt_self();
      aBlock[4] = sub_1BA091E04;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_69;
      v19 = _Block_copy(aBlock);
      v20 = v6;

      [v18 animateWithDuration:v19 animations:0.2];

      _Block_release(v19);
    }

LABEL_12:
    sub_1BA17FA8C(sub_1BA17C19C);
    return;
  }

  __break(1u);
}

void sub_1BA17FF78(uint64_t a1)
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1BA17F870(1, sub_1BA17C3C8, &unk_1F380A6B0, sub_1BA1811DC, &block_descriptor_56_0);
  }

  v2 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_navigationBarTitleView;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    goto LABEL_12;
  }

  type metadata accessor for ProfileNavigationBarView();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = v3;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    sub_1BA17C3C8();
    v10 = v9;
    [v8 contentOffset];
    v12 = v11;
    [v8 adjustedContentInset];
    v14 = v13;

    if (v10 >= v12 + v14)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI24ProfileNavigationBarView_contentView) alpha];
    if (v15 == v16)
    {
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = v5;
      *(v17 + 24) = v15;
      v18 = objc_opt_self();
      aBlock[4] = sub_1BA091E04;
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_50_0;
      v19 = _Block_copy(aBlock);
      v20 = v6;

      [v18 animateWithDuration:v19 animations:0.2];

      _Block_release(v19);
    }

LABEL_12:
    sub_1BA17FA8C(sub_1BA17C3C8);
    return;
  }

  __break(1u);
}

void sub_1BA1801E0(void *a1, double a2)
{
  v3 = [a1 navigationItem];
  [v3 _setManualScrollEdgeAppearanceProgress_];
}

void sub_1BA180244(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView);
    v5 = *(Strong + OBJC_IVAR____TtC18HealthExperienceUI42PreviewSharedProfileOverviewViewController_gradientView + 8);
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 8);
    v9 = v4;
    v8(v2, ObjectType, v5);
  }
}

void sub_1BA1802FC(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong + *a3;
    v7 = Strong;
    swift_beginAccess();
    v8 = *v6;
    v9 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 8);
    v12 = v8;
    v11(v4, ObjectType, v9);
  }
}

char *sub_1BA1803C4(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v35 = a4;
  sub_1BA18090C(0, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v34 - v11;
  v13 = sub_1BA4A2888();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v34 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView) = 0;
  v17 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber) = 0;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthStore) = a1;
  sub_1B9F0A534(a2, v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_providedHealthExperienceStore);
  sub_1B9F0A534(a3, v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_pinnedContentManager);
  sub_1BA4A2B38();
  v19 = a1;
  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_syncHandler) = sub_1BA4A2B18();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v20 = a3;
  v21 = sub_1BA4A1B68();
  v22 = *(v5 + v18);
  sub_1B9F0A534(a2, v37);
  sub_1B9F0A534(a3, v36);
  type metadata accessor for ProfileAllDataDataSource(0);
  swift_allocObject();
  v23 = sub_1BA042DF0(v21, v22, v37, v36);

  *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource) = v23;
  v24 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientColorProvider);
  v24[3] = type metadata accessor for ProfileGradientsProvider();
  v24[4] = &protocol witness table for ProfileGradientsProvider;
  v25 = v35;
  *v24 = v35;

  v26 = v25;
  v27 = CompoundDataSourceCollectionViewController.init(dataSource:)(v23);
  v28 = *(**(*&v27[OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_profileAllDataDataSource] + OBJC_IVAR____TtC18HealthExperienceUI24ProfileAllDataDataSource_profileInformationDataSource) + 760);
  v29 = v27;

  v28(v30);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BA180970(v12, &qword_1EDC6E200, MEMORY[0x1E69A3108]);
    v31 = 0;
  }

  else
  {
    v32 = v34;
    (*(v14 + 32))(v34, v12, v13);
    sub_1BA4A2AB8();
    (*(v14 + 8))(v32, v13);
    v31 = sub_1BA4A6758();
  }

  [v29 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v29;
}

void sub_1BA1807E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1BA18090C(255, &qword_1EDC6E200, MEMORY[0x1E69A3108], MEMORY[0x1E69E6720]);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA180880(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA1807E0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BA1808C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BA18090C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA180970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA18090C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1BA1809F0()
{
  result = qword_1EBBE9DD8;
  if (!qword_1EBBE9DD8)
  {
    type metadata accessor for ProfileNavigationCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9DD8);
  }

  return result;
}

double sub_1BA180E78(void *a1, uint64_t a2)
{
  v3 = [a1 leftBarButtonItems];
  if (v3)
  {
    v4 = v3;
    sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
    v5 = sub_1BA4A6B08();

    v26 = a1;
    if (v5 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1BFAF2860](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = [v9 customView];
        if (v12)
        {
          v8 = v12;
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            [v13 setEffect_];
          }
        }

        else
        {
          v8 = v10;
        }

        ++v7;
        if (v11 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }

  v14 = [a1 rightBarButtonItems];
  if (v14)
  {
    v16 = v14;
    sub_1B9F0ADF8(0, &qword_1EDC6B600, 0x1E69DC708);
    v17 = sub_1BA4A6B08();

    if (v17 >> 62)
    {
      goto LABEL_37;
    }

    for (j = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1BA4A7CC8())
    {
      v19 = 0;
      while (1)
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x1BFAF2860](v19, v17);
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v21 = *(v17 + 8 * v19 + 32);
        }

        v22 = v21;
        v23 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v24 = [v21 customView];
        if (v24)
        {
          v20 = v24;
          objc_opt_self();
          v25 = swift_dynamicCastObjCClass();
          if (v25)
          {
            [v25 setEffect_];
          }
        }

        else
        {
          v20 = v22;
        }

        ++v19;
        if (v23 == j)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      ;
    }

LABEL_38:
  }

  return result;
}

double sub_1BA181208@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1B9F89DF8;
  a2[1] = v6;

  return result;
}

double sub_1BA181288(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 16) = sub_1BA1847C4;
  *(v6 + 24) = v5;

  return result;
}

uint64_t sub_1BA181318()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double sub_1BA181364(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double sub_1BA1813B8@<D0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1B9F7B0CC;
  a2[1] = v6;

  return result;
}

double sub_1BA181438(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  swift_beginAccess();
  *(v6 + 32) = sub_1BA1846E4;
  *(v6 + 40) = v5;

  return result;
}

uint64_t sub_1BA1814C8()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

double sub_1BA181514(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  return result;
}

uint64_t HelpTileActionHandler.deinit()
{

  return v0;
}

uint64_t HelpTileActionHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HelpTile.ViewModel.init(image:title:body:actionButtonTitle:isDismissible:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

double sub_1BA1815E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_1BA181650()
{
  swift_beginAccess();

  return result;
}

double sub_1BA181698(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1BA181750@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *&v11[9] = *(v3 + 41);
  v10[1] = v5;
  *v11 = v6;
  v10[0] = v4;
  v7 = v3[1];
  *a2 = *v3;
  a2[1] = v7;
  a2[2] = v3[2];
  *(a2 + 41) = *(v3 + 41);
  return sub_1BA1846EC(v10, v9, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA181810(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v24 = *a1;
  v25 = v2;
  v26[0] = a1[2];
  *(v26 + 9) = *(a1 + 41);
  v3 = *a2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 32);
  *(v28 + 9) = *(v3 + 41);
  v27[1] = v5;
  v28[0] = v6;
  v27[0] = v4;
  v7 = v24;
  v8 = v25;
  v9 = v26[0];
  *(v3 + 41) = *(v26 + 9);
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *v3 = v7;
  v10 = MEMORY[0x1E69E6720];
  sub_1BA1846EC(&v24, &v29, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  result = sub_1BA184228(v27, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, v10, sub_1B9F23348);
  v12 = *v3;
  v13 = *(v3 + 41);
  v14 = *(v3 + 32);
  v30 = *(v3 + 16);
  v31[0] = v14;
  *(v31 + 9) = v13;
  v29 = v12;
  v35 = *v3;
  v15 = *(v3 + 40);
  v32 = *(v3 + 24);
  v33 = v15;
  v34 = *(v3 + 56);
  if (v30)
  {
    v17 = v35;
    v18 = v30;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22[0] = v29;
    v22[1] = v30;
    v23[0] = v31[0];
    *(v23 + 9) = *(v31 + 9);
    sub_1BA183784(v22, &v16);
    sub_1BA1832F0(&v17);
    return sub_1BA184228(&v29, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  return result;
}

uint64_t sub_1BA1819FC@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 41);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_1BA1846EC(v9, v8, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
}

uint64_t sub_1BA181AAC(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  swift_beginAccess();
  v4 = v3[1];
  v17[0] = *v3;
  v17[1] = v4;
  v18[0] = v3[2];
  *(v18 + 9) = *(v3 + 41);
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = a1[2];
  *(v3 + 41) = *(a1 + 41);
  result = sub_1BA184228(v17, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  v7 = v3[1];
  v19 = *v3;
  v20 = v7;
  v21[0] = v3[2];
  *(v21 + 9) = *(v3 + 41);
  if (v7)
  {
    v12 = *(v3 + 24);
    v13 = *(v3 + 40);
    v8 = v3[1];
    v10 = *v3;
    v11 = v20;
    v14 = *(v3 + 56);
    v15[0] = v10;
    v15[1] = v8;
    v16[0] = v3[2];
    *(v16 + 9) = *(v3 + 41);
    sub_1BA183784(v15, &v9);
    sub_1BA1832F0(&v10);
    return sub_1BA184228(&v19, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
  }

  return result;
}

void (*sub_1BA181C1C(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD0uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel;
  *(v3 + 192) = v1;
  *(v3 + 200) = v4;
  swift_beginAccess();
  return sub_1BA181CA8;
}

void sub_1BA181CA8(char **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    swift_endAccess();
  }

  else
  {
    v3 = (*(v2 + 24) + *(v2 + 25));
    swift_endAccess();
    v5 = v3[1];
    v4 = v3[2];
    v6 = *v3;
    *(v2 + 41) = *(v3 + 41);
    *(v2 + 1) = v5;
    *(v2 + 2) = v4;
    *v2 = v6;
    v7 = *(v2 + 2);
    if (v7)
    {
      v8 = (*(v2 + 24) + *(v2 + 25));
      v10 = v8[1];
      v13 = *v8;
      v9 = v13;
      v14 = v7;
      v15 = *(v8 + 24);
      v16 = *(v8 + 40);
      v17 = *(v8 + 56);
      v11 = *(v8 + 41);
      v12 = v8[2];
      *(v2 + 5) = v10;
      *(v2 + 6) = v12;
      *(v2 + 105) = v11;
      *(v2 + 4) = v9;
      sub_1BA183784((v2 + 64), (v2 + 128));
      sub_1BA1832F0(&v13);
      sub_1BA184228(v2, &unk_1EBBED090, &type metadata for HelpTile.ViewModel, MEMORY[0x1E69E6720], sub_1B9F23348);
    }
  }

  free(v2);
}

id sub_1BA181DB8(double a1, double a2, double a3, double a4)
{
  v9 = sub_1BA4A79A8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_accessibilityConstraints] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_nonAccessibilityConstraints] = v11;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  type metadata accessor for HelpTileActionHandler();
  v13 = swift_allocObject();
  v13[2] = nullsub_1;
  v13[3] = 0;
  v13[4] = nullsub_1;
  v13[5] = 0;
  *&v4[v12] = v13;
  v14 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  *(v14 + 2) = 0u;
  *(v14 + 41) = 0u;
  v15 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel] = v17;
  v18 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView] = v18;
  sub_1B9F0ADF8(0, &qword_1EDC5E0A0, 0x1E69DC738);
  sub_1BA4A7968();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton] = sub_1BA4A79B8();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton] = sub_1BA184288();
  v22.receiver = v4;
  v22.super_class = type metadata accessor for HelpTile();
  v19 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA182224();
  sub_1BA182528(v20);
  sub_1BA182808();

  return v19;
}

double sub_1BA182078(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for HelpTile();
  objc_msgSendSuper2(&v14, sel_traitCollectionDidChange_, a1);
  if (!a1)
  {
LABEL_7:
    sub_1BA1837E0();
    return result;
  }

  v3 = a1;
  v4 = [v1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [v3 preferredContentSizeCategory];
  v7 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v9 = v8;
  if (v7 != _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() || v9 != v10)
  {
    v12 = sub_1BA4A8338();

    if (v12)
    {
      return result;
    }

    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1BA182224()
{
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B79E0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];
  *(inited + 72) = v7;
  v8 = inited & 0xC000000000000001;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = v9; ; i = MEMORY[0x1BFAF2860](0, inited))
  {
    v16 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v17 = MEMORY[0x1BFAF2860](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_20;
      }

      v17 = *(inited + 40);
    }

    v18 = v17;
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v19 = MEMORY[0x1BFAF2860](2, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_20;
      }

      v19 = *(inited + 48);
    }

    v20 = v19;
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v21 = MEMORY[0x1BFAF2860](3, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_20;
      }

      v21 = *(inited + 56);
    }

    v22 = v21;
    [v21 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      v23 = MEMORY[0x1BFAF2860](4, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_20;
      }

      v23 = *(inited + 64);
    }

    v24 = v23;
    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addSubview_];

    if (v8)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 6uLL)
    {
      v25 = *(inited + 72);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v25 = MEMORY[0x1BFAF2860](5, inited);
LABEL_19:
  v26 = v25;
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];

  swift_setDeallocating();
  return swift_arrayDestroy();
}

id sub_1BA182528(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView);
  LODWORD(a1) = 1148846080;
  [v2 setContentCompressionResistancePriority:0 forAxis:a1];
  LODWORD(v3) = 1148846080;
  [v2 setContentHuggingPriority:0 forAxis:v3];
  v4 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel);
  v5 = objc_opt_self();
  v6 = [v5 _preferredFontForTextStyle_weight_];
  [v4 setFont_];

  [v4 setAdjustsFontForContentSizeCategory_];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  [v4 setTextColor_];

  [v4 setNumberOfLines_];
  LODWORD(v9) = 1132068864;
  [v4 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1132068864;
  [v4 setContentHuggingPriority:0 forAxis:v10];
  v11 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel);
  v12 = [v5 preferredFontForTextStyle_];
  [v11 setFont_];

  [v11 setAdjustsFontForContentSizeCategory_];
  v13 = [v7 secondaryLabelColor];
  [v11 setTextColor_];

  [v11 setNumberOfLines_];
  v14 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView);
  v15 = [v7 separatorColor];
  [v14 setBackgroundColor_];

  [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton) addTarget:v1 action:sel_actionTapped forControlEvents:64];
  v16 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton);
  [v16 addTarget:v1 action:sel_dismissTapped forControlEvents:64];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];
  LODWORD(v18) = 1148846080;

  return [v16 setContentHuggingPriority:0 forAxis:v18];
}

void sub_1BA182808()
{
  v1 = v0;
  sub_1BA184760(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v89 = &v87 - v4;
  [v0 setDirectionalLayoutMargins_];
  v5 = [v0 layoutMarginsGuide];
  sub_1B9F23348(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v87 = xmmword_1BA4B7510;
  *(v6 + 16) = xmmword_1BA4B7510;
  v7 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel];
  v8 = [v7 topAnchor];
  v9 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor_];

  *(v6 + 32) = v11;
  v12 = [v7 leadingAnchor];
  v13 = [v5 &selRef__totalDistance + 1];
  v14 = [v12 constraintEqualToAnchor_];

  *(v6 + 40) = v14;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_accessibilityConstraints] = v6;

  v15 = swift_allocObject();
  *(v15 + 16) = v87;
  v88 = v7;
  v16 = [v7 topAnchor];
  v17 = [v5 topAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v15 + 32) = v18;
  v19 = [v7 leadingAnchor];
  v20 = [v9 trailingAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:11.0];

  *(v15 + 40) = v21;
  *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_nonAccessibilityConstraints] = v15;

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1BA4C1F70;
  v23 = [v9 topAnchor];
  v90 = v5;
  v24 = [v5 topAnchor];
  v25 = [v23 constraintEqualToAnchor_];

  *(v22 + 32) = v25;
  v26 = [v9 leadingAnchor];
  v27 = [v5 leadingAnchor];
  v28 = [v26 &selRef:v27 numberWithInteger:? + 5];

  *(v22 + 40) = v28;
  v29 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];
  v30 = [v29 topAnchor];
  v31 = [v0 topAnchor];
  v32 = [v30 &selRef:v31 numberWithInteger:? + 5];

  *(v22 + 48) = v32;
  v33 = [v29 trailingAnchor];
  v34 = [v0 trailingAnchor];
  v35 = [v33 &selRef:v34 numberWithInteger:? + 5];

  *(v22 + 56) = v35;
  v36 = v88;
  v37 = [v88 trailingAnchor];
  v38 = [v29 leadingAnchor];
  v39 = [v37 &selRef:v38 numberWithInteger:? + 5];

  *(v22 + 64) = v39;
  v40 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel];
  v41 = [v40 topAnchor];
  v42 = [v36 bottomAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 constant:4.0];

  *(v22 + 72) = v43;
  v44 = [v40 leadingAnchor];
  v45 = [v36 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v22 + 80) = v46;
  v47 = [v40 trailingAnchor];
  v48 = [v90 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v22 + 88) = v49;
  v50 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_separatorView];
  v51 = [v50 heightAnchor];
  v52 = [v1 traitCollection];
  [v52 displayScale];
  v54 = v53;

  v55 = [v51 constraintEqualToConstant_];
  *(v22 + 96) = v55;
  v56 = [v50 topAnchor];
  v57 = [v40 bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:11.0];

  *(v22 + 104) = v58;
  v59 = [v50 leadingAnchor];
  v60 = [v36 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v22 + 112) = v61;
  v62 = [v50 trailingAnchor];
  v63 = [v1 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor_];

  *(v22 + 120) = v64;
  v65 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton];
  v66 = [v65 topAnchor];
  v67 = [v50 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v22 + 128) = v68;
  v69 = [v65 bottomAnchor];
  v70 = [v1 bottomAnchor];
  v71 = v89;
  v72 = [v69 constraintEqualToAnchor_];

  *(v22 + 136) = v72;
  v73 = v90;
  v74 = [v65 heightAnchor];
  v75 = [v74 constraintGreaterThanOrEqualToConstant_];

  *(v22 + 144) = v75;
  v76 = [v73 trailingAnchor];
  v77 = [v65 trailingAnchor];
  v78 = [v76 constraintGreaterThanOrEqualToAnchor_];

  *(v22 + 152) = v78;
  v79 = [v65 leadingAnchor];
  v80 = [v36 leadingAnchor];
  sub_1BA4A79C8();
  v81 = sub_1BA4A79A8();
  v82 = 0.0;
  if (!(*(*(v81 - 8) + 48))(v71, 1, v81))
  {
    sub_1BA4A7868();
    v82 = v83;
  }

  v84 = objc_opt_self();
  sub_1BA184228(v71, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720], sub_1BA184760);
  v85 = [v79 constraintEqualToAnchor:v80 constant:-v82];

  *(v22 + 160) = v85;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v86 = sub_1BA4A6AE8();

  [v84 activateConstraints_];

  sub_1BA1837E0();
}

void sub_1BA1832F0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1BA4A1338();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v6 = MEMORY[0x1E69E6720];
  sub_1BA184760(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v36 - v9;
  sub_1BA184760(0, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], v6);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x1EEE9AC00](v15, v16).n128_u64[0];
  v19 = v36 - v18;
  v20 = *a1;
  v21 = a1[5];
  v36[0] = a1[6];
  v36[1] = v21;
  v37 = *(a1 + 56);
  [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView) setImage_];
  v22 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel);
  v23 = sub_1BA4A6758();
  [v22 setText_];

  v24 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel);
  v25 = sub_1BA4A6758();
  [v24 setText_];

  v26 = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (v26)
  {
    v27 = v26;
    sub_1BA4A79C8();
    v28 = sub_1BA4A79A8();
    if ((*(*(v28 - 8) + 48))(v19, 1, v28))
    {
      v29 = MEMORY[0x1E69DC598];
      v30 = MEMORY[0x1E69E6720];
      sub_1BA1846EC(v19, v14, &qword_1EDC5E0A8, MEMORY[0x1E69DC598], MEMORY[0x1E69E6720], sub_1BA184760);
      sub_1BA4A79D8();
      sub_1BA184228(v19, &qword_1EDC5E0A8, v29, v30, sub_1BA184760);
    }

    else
    {
      sub_1BA184760(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1BA4B5480;
      v32 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      *(inited + 64) = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
      *(inited + 40) = v27;

      v33 = v32;
      v34 = v27;
      sub_1B9FDB1C4(inited);
      swift_setDeallocating();
      sub_1BA026288(inited + 32);
      sub_1BA4A1358();
      sub_1BA4A12D8();
      v35 = sub_1BA4A12C8();
      (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
      sub_1BA4A78D8();
      sub_1BA4A79D8();
    }

    [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton) setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA1837E0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  sub_1BA4A74F8();
  v3 = objc_opt_self();
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);

  v4 = sub_1BA4A6AE8();

  [v3 deactivateConstraints_];

  v5 = sub_1BA4A6AE8();

  [v3 activateConstraints_];
}

void sub_1BA183A44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v4 = sub_1BA4A6758();
    [v3 setAccessibilityIdentifier_];

    v5 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView];

    MEMORY[0x1BFAF1350](0x6567616D492ELL, 0xE600000000000000);
    v6 = sub_1BA4A6758();

    [v5 setAccessibilityIdentifier_];

    v7 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel];

    MEMORY[0x1BFAF1350](0x6554656C7469542ELL, 0xEA00000000007478);
    v8 = sub_1BA4A6758();

    [v7 setAccessibilityIdentifier_];

    v9 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel];

    MEMORY[0x1BFAF1350](0x546C69617465442ELL, 0xEB00000000747865);
    v10 = sub_1BA4A6758();

    [v9 setAccessibilityIdentifier_];

    v11 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton];

    MEMORY[0x1BFAF1350](0x426E6F697463412ELL, 0xED00006E6F747475);
    v12 = sub_1BA4A6758();

    [v11 setAccessibilityIdentifier_];

    v13 = *&v3[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];

    MEMORY[0x1BFAF1350](0x7373696D7369442ELL, 0xE800000000000000);
    v15 = sub_1BA4A6758();

    [v13 setAccessibilityIdentifier_];
  }

  else
  {
    [v2 setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_imageView] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_titleLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_bodyLabel] setAccessibilityIdentifier_];
    [*&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionButton] setAccessibilityIdentifier_];
    v14 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_dismissButton];

    [v14 setAccessibilityIdentifier_];
  }
}

id HelpTile.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HelpTile();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA183EA0()
{
  v0 = [objc_opt_self() quaternaryLabelColor];

  return v0;
}

uint64_t sub_1BA184180(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1BA1841C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BA184228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

id sub_1BA184288()
{
  sub_1BA184760(0, &qword_1EBBED0D8, MEMORY[0x1E69DC1B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v22 - v2;
  v4 = sub_1BA4A79A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v22 - v11;
  result = [objc_opt_self() _preferredFontForTextStyle_weight_];
  if (result)
  {
    v14 = result;
    v15 = [objc_opt_self() configurationWithFont:result scale:2];

    v16 = v15;
    v17 = sub_1BA4A6758();
    v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

    sub_1BA4A7818();
    v19 = v18;
    sub_1BA4A7958();
    sub_1BA4A7878();
    sub_1BA4A46A8();
    v20 = sub_1BA4A4698();
    (*(*(v20 - 8) + 56))(v3, 0, 1, v20);
    sub_1BA4A7908();
    sub_1B9F0ADF8(0, &qword_1EDC5E0A0, 0x1E69DC738);
    (*(v5 + 16))(v8, v12, v4);
    v21 = sub_1BA4A79B8();

    (*(v5 + 8))(v12, v4);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BA1845A0()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_accessibilityConstraints) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_nonAccessibilityConstraints) = v1;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_actionHandler;
  type metadata accessor for HelpTileActionHandler();
  v3 = swift_allocObject();
  v3[2] = nullsub_1;
  v3[3] = 0;
  *(v0 + v2) = v3;
  v3[4] = nullsub_1;
  v3[5] = 0;
  v4 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI8HelpTile_viewModel);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 41) = 0u;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA184680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

uint64_t sub_1BA1846EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1BA184760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA1847C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v10 = *(a3 + 8);
  v10(&v11, a2, a3);
  if (v11 != 2 && (v11 & 1) != 0 || (v8 = sub_1BA4A3118(), result = (*(*(v8 - 8) + 48))(a1, 1, v8), result == 1))
  {

    return (v10)(a2, a3);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

uint64_t SharingTileDisabledState.hashValue.getter()
{
  v1 = *v0;
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](v1);
  return sub_1BA4A84D8();
}

unint64_t sub_1BA184954()
{
  result = qword_1EBBED0E0;
  if (!qword_1EBBED0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED0E0);
  }

  return result;
}

uint64_t sub_1BA1849B8(uint64_t a1, uint64_t *a2)
{
  sub_1B9F68124(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v6, v3 + v4);
  swift_endAccess();
  sub_1BA184A28();
  return sub_1B9F7B644(v6);
}

void sub_1BA184A28()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v7, v22);
  if (v22[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      sub_1BA185DD8(&v21);

      return;
    }
  }

  else
  {
    sub_1B9F7B644(v22);
  }

  sub_1BA4A3DD8();
  v8 = v1;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v2;
    v13 = v12;
    v22[0] = v12;
    *v11 = 136315394;
    v14 = sub_1BA4A85D8();
    v16 = sub_1B9F0B82C(v14, v15, v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_1B9F68124(v1 + v7, &v21);
    sub_1B9F0D20C(0, &qword_1EDC6E1A0, sub_1B9FCD918);
    v17 = sub_1BA4A6808();
    v19 = sub_1B9F0B82C(v17, v18, v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1B9F07000, v9, v10, "%s Expected PlaceholderTextItem, found unexpected item %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    MEMORY[0x1BFAF43A0](v11, -1, -1);

    (*(v3 + 8))(v6, v20);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1BA184D18@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  return sub_1B9F68124(v1 + v3, a1);
}

uint64_t sub_1BA184D70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA184A28();
  return sub_1B9F7B644(a1);
}

void (*sub_1BA184DDC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA184E40;
}

void sub_1BA184E40(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1BA184A28();
  }
}

id sub_1BA184E74()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label);
  }

  else
  {
    v4 = sub_1BA184ED4();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA184ED4()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v6 = *MEMORY[0x1E69DDDC0];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:0];
  v9 = [v8 fontDescriptorWithSymbolicTraits_];

  if (v9)
  {
    v10 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = v6;
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v14 = 136315906;
      v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v17 = sub_1B9F0B82C(v15, v16, &v37);
      v34 = v11;
      v18 = v17;

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v35 = 0;
      v36 = 1;
      sub_1B9F0D20C(0, &qword_1EBBECB00, type metadata accessor for Weight);
      v19 = sub_1BA4A6808();
      v21 = sub_1B9F0B82C(v19, v20, &v37);

      *(v14 + 14) = v21;
      *(v14 + 22) = 2080;
      LODWORD(v35) = 2;
      type metadata accessor for SymbolicTraits(0);
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v37);

      *(v14 + 24) = v24;
      v11 = v34;
      *(v14 + 32) = 2112;
      v25 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v14 + 34) = v25;
      v26 = v13;
      v27 = v32;
      *v32 = v25;
      _os_log_impl(&dword_1B9F07000, v12, v26, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v14, 0x2Au);
      sub_1B9F8C6C8(v27);
      MEMORY[0x1BFAF43A0](v27, -1, -1);
      v28 = v33;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v28, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    v29 = [v7 preferredFontDescriptorWithTextStyle_];
    v10 = [objc_opt_self() fontWithDescriptor:v29 size:0.0];
  }

  [v5 setFont_];

  v30 = [objc_opt_self() secondaryLabelColor];
  [v5 setTextColor_];

  [v5 setNumberOfLines_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];

  [v5 setTextAlignment_];
  [v5 setAdjustsFontForContentSizeCategory_];
  return v5;
}

id sub_1BA18535C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint);
  }

  else
  {
    v4 = sub_1BA1854D8();
    v5 = [v4 widthAnchor];

    v6 = [v5 constraintEqualToConstant_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA185400()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint);
  }

  else
  {
    v4 = sub_1BA184E74();
    v5 = [v4 leadingAnchor];

    v6 = sub_1BA1854D8();
    v7 = [v6 trailingAnchor];

    v8 = [v5 constraintEqualToAnchor:v7 constant:14.0];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1BA1854D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1BA185564(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerZeroWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinnerToLabelWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner] = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_subview] = v10;
  v13.receiver = v4;
  v13.super_class = type metadata accessor for PlaceholderTextCollectionViewCell();
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1BA185728();

  return v11;
}

void sub_1BA185728()
{
  v1 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell_subview];
  v2 = sub_1BA184E74();
  [v1 addSubview_];

  v3 = sub_1BA1854D8();
  [v1 addSubview_];

  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = [v0 contentView];
  [v4 addSubview_];

  v52 = objc_opt_self();
  sub_1B9F109F8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4BF880;
  v6 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner;
  v7 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___spinner] leadingAnchor];
  v8 = [v1 &selRef__totalDistance + 1];
  v9 = [v7 constraintEqualToAnchor_];

  *(v5 + 32) = v9;
  v10 = [*&v0[v6] topAnchor];
  v11 = [v1 topAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v5 + 40) = v12;
  v13 = [v1 bottomAnchor];
  v14 = [*&v0[v6] bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v5 + 48) = v15;
  *(v5 + 56) = sub_1BA185400();
  v16 = [v1 trailingAnchor];
  v17 = OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label;
  v18 = [*&v0[OBJC_IVAR____TtC18HealthExperienceUI33PlaceholderTextCollectionViewCell____lazy_storage___label] trailingAnchor];
  v19 = [v16 constraintEqualToAnchor_];

  *(v5 + 64) = v19;
  v20 = [*&v0[v17] topAnchor];
  v21 = [v1 topAnchor];
  v22 = [v20 constraintEqualToAnchor_];

  *(v5 + 72) = v22;
  v23 = [*&v0[v17] heightAnchor];
  v24 = [v23 constraintGreaterThanOrEqualToConstant_];

  *(v5 + 80) = v24;
  v25 = [v1 bottomAnchor];
  v26 = [*&v0[v17] bottomAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v5 + 88) = v27;
  v28 = [v1 centerYAnchor];
  v29 = [v0 contentView];
  v30 = [v29 centerYAnchor];

  v31 = [v28 constraintEqualToAnchor_];
  *(v5 + 96) = v31;
  v32 = [v1 centerXAnchor];
  v33 = [v0 contentView];
  v34 = [v33 centerXAnchor];

  v35 = [v32 constraintEqualToAnchor_];
  *(v5 + 104) = v35;
  v36 = [v1 leadingAnchor];
  v37 = [v0 contentView];
  v38 = [v37 leadingAnchor];

  v39 = [v36 constraintGreaterThanOrEqualToAnchor:v38 constant:8.0];
  *(v5 + 112) = v39;
  v40 = [v0 contentView];
  v41 = [v40 trailingAnchor];

  v42 = [v1 trailingAnchor];
  v43 = [v41 constraintGreaterThanOrEqualToAnchor:v42 constant:8.0];

  *(v5 + 120) = v43;
  v44 = [v1 topAnchor];
  v45 = [v0 contentView];
  v46 = [v45 topAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:16.0];
  *(v5 + 128) = v47;
  v48 = [v0 contentView];
  v49 = [v48 bottomAnchor];

  v50 = [v1 bottomAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];

  *(v5 + 136) = v51;
  sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
  v53 = sub_1BA4A6AE8();

  [v52 activateConstraints_];
}

void sub_1BA185DD8(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = sub_1BA184E74();
  v3 = sub_1BA4A6758();
  [v2 setText_];

  v4 = sub_1BA1854D8();
  v5 = v4;
  if (v1)
  {
    v6 = 14.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = &selRef_startAnimating;
  if (!v1)
  {
    v7 = &selRef_stopAnimating;
  }

  [v4 *v7];

  v8 = sub_1BA18535C();
  [v8 setActive_];

  v9 = sub_1BA185400();
  [v9 setConstant_];
}

id PlaceholderTextCollectionViewCell.__deallocating_deinit(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PlaceholderTextCollectionViewCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *HideableHearingArticlesFRCDataSource.__allocating_init(managedObjectContext:sourceProfiles:predicate:header:healthStore:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v34 = a1;
  v35 = a5;
  sub_1BA1863C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = *a4;
  v32 = a4[1];
  v33 = v17;
  v18 = [objc_allocWithZone(MEMORY[0x1E696C178]) initWithFeatureIdentifier:*MEMORY[0x1E696B898] healthStore:a5];
  v36[0] = v18;
  sub_1B9F0ADF8(0, &qword_1EBBF15E0, 0x1E696C178);
  v36[0] = sub_1BA4A39A8();
  sub_1BA0B9D44(0);
  sub_1BA1864BC(&qword_1EDC5F500, sub_1BA0B9D44, MEMORY[0x1E695BED8]);
  sub_1BA4A4FE8();

  sub_1BA1864BC(&qword_1EBBED118, sub_1BA1863C8, MEMORY[0x1E695BD60]);
  v19 = sub_1BA4A4F98();
  (*(v11 + 8))(v14, v10);
  v20 = objc_allocWithZone(type metadata accessor for HideableHearingArticlesFRCDataSource(0));
  *&v20[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
  v21 = &v20[qword_1EBBED128];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v20[qword_1EBBED130];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v20[qword_1EBBED138];
  *v23 = v15;
  v23[8] = v16;
  *&v20[qword_1EBBED140] = a2;
  v37 = v15;
  v38 = v16;
  v36[0] = v33;
  v36[1] = v32;
  v24 = v15;

  v25 = v34;
  v26 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v25, a2, &v37, v36);
  v27 = sub_1BA186BA8(0);
  v28 = qword_1EDC84AD8;
  swift_beginAccess();
  v29 = [*&v26[v28] fetchRequest];
  [v29 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C(v19);

  return v26;
}

void sub_1BA1863C8(uint64_t a1)
{
  if (!qword_1EDC5F680)
  {
    sub_1BA0B9D44(255);
    sub_1BA1864BC(&qword_1EDC5F500, sub_1BA0B9D44, MEMORY[0x1E695BED8]);
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F680);
    }
  }
}

void sub_1BA186464(unsigned __int8 *a1@<X8>)
{
  v2 = sub_1BA4A3948();
  v3 = [v2 areAllRequirementsSatisfied];

  *a1 = v3;
}

uint64_t sub_1BA1864BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *HideableHearingArticlesFRCDataSource.__allocating_init(managedObjectContext:sourceProfiles:predicate:header:hearingAidAvailabilityPublisher:)(void *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = *a3;
  *&v11[qword_1EBBED120] = MEMORY[0x1E69E7CD0];
  v13 = *(a3 + 8);
  v14 = &v11[qword_1EBBED128];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[qword_1EBBED130];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v11[qword_1EBBED138];
  *v16 = v12;
  v16[8] = v13;
  *&v11[qword_1EBBED140] = a2;
  v25 = v12;
  v26 = v13;
  v24 = *a4;
  v17 = v12;

  v18 = a1;
  v19 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v18, a2, &v25, &v24);
  v20 = sub_1BA186BA8(0);
  v21 = qword_1EDC84AD8;
  swift_beginAccess();
  v22 = [*&v19[v21] fetchRequest];
  [v22 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C(a5);

  return v19;
}

uint64_t type metadata accessor for HideableHearingArticlesFRCDataSource(uint64_t a1)
{
  result = qword_1EBBED148;
  if (!qword_1EBBED148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *HideableHearingArticlesFRCDataSource.init(managedObjectContext:sourceProfiles:predicate:header:hearingAidAvailabilityPublisher:)(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v9 = *a3;
  *(v5 + qword_1EBBED120) = MEMORY[0x1E69E7CD0];
  v10 = *(a3 + 8);
  v11 = (v5 + qword_1EBBED128);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + qword_1EBBED130);
  *v12 = 0;
  v12[1] = 0;
  v13 = v5 + qword_1EBBED138;
  *v13 = v9;
  *(v13 + 8) = v10;
  *(v5 + qword_1EBBED140) = a2;
  v22 = v9;
  v23 = v10;
  *v21 = *a4;
  v14 = v9;

  v15 = a1;
  v16 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v15, a2, &v22, v21);
  v17 = sub_1BA186BA8(0);
  v18 = qword_1EDC84AD8;
  swift_beginAccess();
  v19 = [*&v16[v18] fetchRequest];
  [v19 setPredicate_];

  sub_1B9F128B4();
  sub_1BA047948();

  sub_1BA18682C(a5);

  return v16;
}

double sub_1BA18682C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  sub_1BA18779C();
  sub_1BA1864BC(&qword_1EDC5F4A8, sub_1BA18779C, MEMORY[0x1E695BED8]);
  sub_1BA4A5148();

  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();

  return result;
}

void sub_1BA186958(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1BA4A3E38();
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v24 = v4;
      v15 = v14;
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136446466;
      v17 = sub_1BA4A85D8();
      v19 = sub_1B9F0B82C(v17, v18, &v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 1024;
      *(v15 + 14) = v9;
      _os_log_impl(&dword_1B9F07000, v12, v13, "[%{public}s] Updating availability of Hearing Aid to %{BOOL}d.", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);

      (*(v5 + 8))(v8, v24);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v20 = *&v11[qword_1EBBED130];
    if (v20)
    {
      v21 = *&v11[qword_1EBBED130 + 8];

      v20(v9);
      sub_1B9F0E310(v20, v21);
    }

    v22 = sub_1BA186BA8(v9);
    sub_1BA187030(v22);
  }
}

id sub_1BA186BA8(char a1)
{
  sub_1B9F0A7B0(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v35 - v5;
  v7 = *(v1 + qword_1EBBED138);
  v8 = *(v1 + qword_1EBBED138 + 8);
  sub_1BA4A27B8();
  sub_1B9F0A7B0(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v9 = sub_1BA4A1C68();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x1E69A3BD0], v9);
  if (v8)
  {
    v13 = sub_1BA4A0FA8();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = *(v1 + qword_1EBBED140);
    v15 = v7;
    v16 = MEMORY[0x1BFAED020](v12, 0, v6, v14);

    sub_1B9F1C1B0(v6);
    sub_1B9F109F8();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BA4B7510;
    *(v17 + 32) = v16;
    *(v17 + 40) = v15;
    sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
    v18 = v15;
    v19 = v16;
    v20 = sub_1BA4A6AE8();

    v21 = [objc_opt_self() andPredicateWithSubpredicates_];

    if ((a1 & 1) == 0)
    {
LABEL_3:
      sub_1BA4A27B8();
      v22 = sub_1BA4A2698();
      v23 = objc_opt_self();
      v24 = [v23 notPredicateWithSubpredicate_];
      sub_1B9F109F8();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1BA4B7510;
      *(v25 + 32) = v21;
      *(v25 + 40) = v24;
      sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18);
      v26 = v21;
      v27 = v24;
      v28 = sub_1BA4A6AE8();

      v29 = [v23 andPredicateWithSubpredicates_];

      return v29;
    }
  }

  else
  {
    sub_1B9F109F8();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1BA4B5470;
    *(v31 + 32) = v7;
    v32 = sub_1BA4A0FA8();
    (*(*(v32 - 8) + 56))(v6, 1, 1, v32);
    v33 = *(v1 + qword_1EBBED140);
    v34 = v7;
    v21 = MEMORY[0x1BFAED020](v12, v31, v6, v33);

    sub_1B9F1C1B0(v6);
    if ((a1 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v21;
}

void sub_1BA187030(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A64C8();
  v9 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EDC84AD8;
  swift_beginAccess();
  v14 = [*&v2[v13] fetchRequest];
  v15 = [v14 predicate];

  if (!v15 || (sub_1B9F0ADF8(0, &qword_1EDC6B630, 0x1E696AE18), v16 = a1, v17 = sub_1BA4A7798(), v15, v16, (v17 & 1) == 0))
  {
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v18 = sub_1BA4A7308();
    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = a1;
    aBlock[4] = sub_1BA18778C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_39;
    v20 = _Block_copy(aBlock);
    v21 = a1;
    v22 = v2;

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BA1864BC(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F0A7B0(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1B9F31534();
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v12, v8, v20);
    _Block_release(v20);

    (*(v5 + 8))(v8, v4);
    (*(v9 + 8))(v12, v23);
  }
}

uint64_t sub_1BA1873BC(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EDC84AD8;
  swift_beginAccess();
  v5 = [*(a1 + v4) fetchRequest];
  [v5 setPredicate_];

  sub_1B9F128B4();
  result = sub_1BA047948();
  v7 = *(a1 + qword_1EBBED128);
  if (v7)
  {
    v8 = *(a1 + qword_1EBBED128 + 8);

    v7(v9);
    return sub_1B9F0E310(v7, v8);
  }

  return result;
}

uint64_t sub_1BA1874BC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = (v4 + *a3);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  return a4(v6, v7);
}

uint64_t sub_1BA18754C()
{

  sub_1B9F0E310(*(v0 + qword_1EBBED128), *(v0 + qword_1EBBED128 + 8));
  v1 = *(v0 + qword_1EBBED130);
  v2 = *(v0 + qword_1EBBED130 + 8);

  return sub_1B9F0E310(v1, v2);
}

id HideableHearingArticlesFRCDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HideableHearingArticlesFRCDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA1875FC(uint64_t a1)
{

  sub_1B9F0E310(*(a1 + qword_1EBBED128), *(a1 + qword_1EBBED128 + 8));
  v2 = *(a1 + qword_1EBBED130);
  v3 = *(a1 + qword_1EBBED130 + 8);

  return sub_1B9F0E310(v2, v3);
}

void sub_1BA18779C()
{
  if (!qword_1EDC5F4A0)
  {
    v0 = sub_1BA4A4D18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F4A0);
    }
  }
}

__n128 DataTypeDetailConfiguration.ArticlesComponent.init(predicate:maximumNumberOfArticles:header:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  *a4 = *a1;
  *(a4 + 8) = v4;
  *(a4 + 16) = a2;
  result = *a3;
  *(a4 + 24) = *a3;
  return result;
}

uint64_t DataTypeDetailConfiguration.ArticlesComponent.init(measureIdentifier:maximumNumberOfArticles:header:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = a3[1];
  sub_1BA4A27B8();
  sub_1BA187974(0);
  v9 = sub_1BA4A1A48();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B5480;
  (*(v10 + 16))(v12 + v11, a1, v9);
  v13 = sub_1BA4A2618();

  result = (*(v10 + 8))(a1, v9);
  *a4 = v13;
  *(a4 + 8) = 1;
  *(a4 + 16) = a2;
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  return result;
}

void sub_1BA187974(uint64_t a1)
{
  if (!qword_1EBBEB208)
  {
    sub_1BA4A1A48();
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBEB208);
    }
  }
}

id DataTypeDetailConfiguration.ArticlesComponent.predicate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t DataTypeDetailConfiguration.ArticlesComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v7 = sub_1BA4A1B68();
  sub_1BA15E094();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = 0;
  if (*(a1 + 48) == 2)
  {
  }

  else
  {
    v9 = sub_1BA4A8338();

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 40) profileIdentifier];
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        v19 = v10;
        v8 = sub_1BA27EFDC((v11 > 1), v12 + 1, 1, v8);
        v10 = v19;
      }

      *(v8 + 16) = v12 + 1;
      *(v8 + 8 * v12 + 32) = v10;
    }
  }

  v20[1] = v6;
  v21 = v3;
  v22 = v4;
  v20[0] = v5;
  objc_allocWithZone(type metadata accessor for ArticlesFetchedResultsControllerDataSource(0));
  v13 = v3;
  v14 = v7;
  sub_1BA048494(v5, v6);
  v15 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v14, v8, &v21, v20);
  sub_1BA187C68(0, v16);
  swift_allocObject();
  v17 = sub_1BA0488BC();

  return v17;
}

void sub_1BA187C68(uint64_t a1, __n128 a2)
{
  if (!qword_1EDC63988)
  {
    v3 = type metadata accessor for ArticlesFetchedResultsControllerDataSource(255);
    v5 = type metadata accessor for DataSourceWithSectionItemLimit(a1, v3, &protocol witness table for FetchedResultsControllerDataSource<A>, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EDC63988);
    }
  }
}

id EmergencyAccessFollowUpStartViewController.init(healthStore:flow:emergencyStatus:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_animationView;
  if (qword_1EBBE8430 != -1)
  {
    swift_once();
  }

  v24[4] = xmmword_1EBC09600;
  v25[0] = *&qword_1EBC09610;
  *(v25 + 9) = unk_1EBC09619;
  v24[0] = xmmword_1EBC095C0;
  v24[1] = *&qword_1EBC095D0;
  v24[2] = xmmword_1EBC095E0;
  v24[3] = unk_1EBC095F0;
  v22[4] = xmmword_1EBC09600;
  v23[0] = *&qword_1EBC09610;
  *(v23 + 9) = unk_1EBC09619;
  v22[0] = xmmword_1EBC095C0;
  v22[1] = *&qword_1EBC095D0;
  v22[2] = xmmword_1EBC095E0;
  v22[3] = unk_1EBC095F0;
  v21 = 1;
  v10 = objc_allocWithZone(type metadata accessor for MicaAnimationView());
  sub_1BA189034(v24, v20);
  *&v3[v9] = MicaAnimationView.init(animation:inset:scaleMode:)(v22, 0, &v21);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_healthStore] = a1;
  v11 = &v3[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_flow];
  *v11 = v7;
  v11[8] = v8;
  sub_1BA020470(a3, &v3[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_emergencyStatus]);
  v12 = a1;
  sub_1BA02040C(v7, v8);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A1318();
  v13 = sub_1BA4A6758();

  v14 = sub_1BA4A6758();

  v19.receiver = v4;
  v19.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController(0);
  v15 = objc_msgSendSuper2(&v19, sel_initWithTitle_detailText_icon_contentLayout_, v13, v14, 0, 1, 0xE000000000000000);

  v16 = v15;
  sub_1BA0204D4(v7, v8);
  if (v8 > 1)
  {
    sub_1BA0204E8(a3);
  }

  else
  {
    sub_1BA4A2998();
    v17 = sub_1BA4A2988();
    sub_1BA4A2938();

    sub_1BA0204E8(a3);
  }

  return v16;
}

void sub_1BA188268(void *a1)
{
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 setNavigationBarHidden_];
  }

  v5 = [v1 contentView];
  [v5 addSubview_];

  v6 = [v1 contentView];
  [v6 setClipsToBounds_];

  [a1 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  sub_1B9F109F8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5890;
  v9 = [a1 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v12;
  v13 = [a1 leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor_];
  *(v8 + 40) = v16;
  v17 = [a1 bottomAnchor];
  v18 = [v1 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v8 + 48) = v20;
  v21 = [a1 trailingAnchor];
  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v8 + 56) = v24;
  sub_1B9F740B0();
  v25 = sub_1BA4A6AE8();

  [v7 activateConstraints_];
}

void sub_1BA1885A4()
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  v1 = [objc_opt_self() boldButton];
  v2 = sub_1BA4A6758();

  [v1 setTitle:v2 forState:0];

  [v1 addTarget:v0 action:sel_didTapNext_ forControlEvents:64];
  v3 = [v0 buttonTray];
  [v3 addButton_];
}

void sub_1BA188700()
{
  v1 = type metadata accessor for EmergencyAccessUserStatus(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v6 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_healthStore];
  v7 = qword_1EDC5E100;
  v8 = v0;
  if (v7 != -1)
  {
    swift_once();
  }

  v29[1] = sub_1BA4A1318();
  v29[2] = v9;
  v10 = *&v8[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_flow];
  v11 = v8[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_flow + 8];
  sub_1BA020470(&v8[OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_emergencyStatus], v4);
  v12 = v4;
  v13 = type metadata accessor for EmergencyAccessBuddyStewieViewController(0);
  v14 = objc_allocWithZone(v13);
  v29[0] = "eview_medical_id_later_button";
  v15 = v14;
  *&v14[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore] = v6;
  v16 = &v14[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  *v16 = v10;
  v16[8] = v11;
  v30 = v12;
  sub_1BA020470(v12, &v14[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_emergencyStatus]);
  v17 = &v15[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_nextVCHandler];
  *v17 = sub_1BA1891BC;
  *(v17 + 1) = v5;
  type metadata accessor for EmergencyAccessBuddyStartViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = objc_opt_self();
  swift_retain_n();
  v20 = v6;
  sub_1BA02040C(v10, v11);
  v21 = [v19 bundleForClass_];
  v22 = sub_1BA4A6758();
  v23 = [objc_opt_self() imageNamed:v22 inBundle:v21];

  if (v23)
  {
    sub_1BA4A1318();
    v24 = sub_1BA4A6758();

    v25 = sub_1BA4A6758();

    v31.receiver = v15;
    v31.super_class = v13;
    v26 = objc_msgSendSuper2(&v31, sel_initWithTitle_detailText_icon_contentLayout_, v24, v25, v23, 2);

    v27 = v26;
    v28 = [v27 headerView];
    [v28 setAllowFullWidthIcon_];

    sub_1BA0204E8(v30);
    [v8 showViewController:v27 sender:v8];
  }

  else
  {
    __break(1u);
  }
}

void sub_1BA188AC4(_BYTE *a1, uint64_t a2)
{
  v4 = type metadata accessor for EmergencyAccessUserStatus(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_healthStore];
  v10 = a1[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow + 8];
  v14 = *&a1[OBJC_IVAR____TtC18HealthExperienceUI40EmergencyAccessBuddyStewieViewController_flow];
  v9 = v14;
  v15 = v10;
  sub_1BA020470(a2 + OBJC_IVAR____TtC18HealthExperienceUI42EmergencyAccessFollowUpStartViewController_emergencyStatus, v7);
  objc_allocWithZone(type metadata accessor for EmergencyAccessBuddyStartViewController(0));
  v11 = v8;
  sub_1BA02040C(v9, v10);
  sub_1BA01FEB8(v11, &v14, v7);
  v13 = v12;

  [a1 showViewController:v13 sender:a2];
}

id EmergencyAccessFollowUpStartViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_1BA4A6758();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_1BA4A6758();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1BA4A6758();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id EmergencyAccessFollowUpStartViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1BA4A6758();

  if (a4)
  {
    v12 = sub_1BA4A6758();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id EmergencyAccessFollowUpStartViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmergencyAccessFollowUpStartViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA188F50()
{
  IsRightToLeft = HKUILocaleIsRightToLeft();
  if (qword_1EDC5E100 != -1)
  {
    v10 = IsRightToLeft;
    swift_once();
    IsRightToLeft = v10;
  }

  v1 = qword_1EDC84A30;
  v2 = "eed_onboarding_stewie_title";
  if (IsRightToLeft)
  {
    v2 = "boarding-animation";
  }

  v3 = 0xD000000000000022;
  if (IsRightToLeft)
  {
    v3 = 0xD000000000000026;
  }

  *&xmmword_1EBC095C0 = v3;
  *(&xmmword_1EBC095C0 + 1) = v2 | 0x8000000000000000;
  qword_1EBC095D0 = qword_1EDC84A30;
  *&xmmword_1EBC095E0 = 0;
  dword_1EBC095D8 = 0;
  __asm { FMOV            V0.2D, #1.5 }

  *(&xmmword_1EBC095E0 + 8) = _Q0;
  unk_1EBC095F8 = _Q0;
  BYTE8(xmmword_1EBC09600) = 3;
  qword_1EBC09610 = 0;
  unk_1EBC09618 = 0;
  qword_1EBC09620 = 0x3FF0000000000000;
  byte_1EBC09628 = 0;

  return v1;
}

uint64_t type metadata accessor for EmergencyAccessFollowUpStartViewController(uint64_t a1)
{
  result = qword_1EBBED178;
  if (!qword_1EBBED178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BA1890E4(uint64_t a1)
{
  result = type metadata accessor for EmergencyAccessUserStatus(319);
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

uint64_t sub_1BA18921C(void *a1)
{
  sub_1BA4A57F8();
  LOWORD(v7) = 256;
  sub_1BA4A5DF8();
  v2 = [a1 version];
  v3 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v5 = v4;

  MEMORY[0x1BFAF1350](v3, v5);

  sub_1B9F252FC();
  sub_1BA4A5E18();
  sub_1BA189B0C(0, &qword_1EBBED188, MEMORY[0x1E697F960]);
  sub_1BA189A40();
  return sub_1BA4A6348();
}

uint64_t sub_1BA1893A4@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  sub_1BA189970(0);
  v50 = v1;
  v46 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v2);
  v45 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA189B0C(0, &qword_1EBBED1B0, MEMORY[0x1E697F948]);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v48 = (&v44 - v6);
  v7 = sub_1BA4A7468();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v44 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v44 - v18);
  sub_1BA4A7478();
  v20 = *(v8 + 88);
  v21 = v20(v19, v7);
  v22 = v21;
  v23 = *MEMORY[0x1E69A39A0];
  if (v21 == *MEMORY[0x1E69A39A0])
  {
    (*(v8 + 96))(v19, v7);
    v24 = *v19;
    sub_1BA4A7478();
    v25 = v20(v11, v7);
    if (v25 == v22)
    {
      v26 = 0x756F6320656D6F53;
      v27 = 0xEE0073656972746ELL;
    }

    else
    {
      if (v25 == *MEMORY[0x1E69A39A8])
      {
        v26 = 0x656B636568636E55;
        v27 = 0xE900000000000064;
        goto LABEL_19;
      }

      if (v25 == *MEMORY[0x1E69A3998])
      {
        v26 = 0x6E756F63206C6C41;
        v27 = 0xED00007365697274;
        goto LABEL_19;
      }

      v27 = 0xE700000000000000;
      v26 = 0x6E776F6E6B6E55;
    }

    (*(v8 + 8))(v11, v7);
LABEL_19:
    v52 = v26;
    v53 = v27;
    v51 = v24;
    sub_1BA1899EC();
    sub_1B9F252FC();
    v34 = v24;
    v35 = v45;
    sub_1BA4A5328();
    v36 = v46;
    v37 = v50;
    (*(v46 + 16))(v48, v35, v50);
    swift_storeEnumTagMultiPayload();
    sub_1BA18AEE8(&qword_1EBBED1A8, sub_1BA189970, MEMORY[0x1E697C090]);
    sub_1BA4A58E8();

    return (*(v36 + 8))(v35, v37);
  }

  v28 = *MEMORY[0x1E69A39A8];
  v29 = v21 == *MEMORY[0x1E69A39A8] || v21 == *MEMORY[0x1E69A3998];
  v30 = *MEMORY[0x1E69A3998];
  if (!v29)
  {
    (*(v8 + 8))(v19, v7);
  }

  sub_1BA4A7478();
  v31 = v20(v15, v7);
  if (v31 == v23)
  {
    v32 = 0x756F6320656D6F53;
    v33 = 0xEE0073656972746ELL;
  }

  else
  {
    if (v31 == v28)
    {
      v32 = 0x656B636568636E55;
      v33 = 0xE900000000000064;
      goto LABEL_22;
    }

    if (v31 == v30)
    {
      v32 = 0x6E756F63206C6C41;
      v33 = 0xED00007365697274;
      goto LABEL_22;
    }

    v33 = 0xE700000000000000;
    v32 = 0x6E776F6E6B6E55;
  }

  (*(v8 + 8))(v15, v7);
LABEL_22:
  v52 = v32;
  v53 = v33;
  sub_1B9F252FC();
  v39 = sub_1BA4A5E18();
  v40 = v48;
  *v48 = v39;
  v40[1] = v41;
  *(v40 + 16) = v42 & 1;
  v40[3] = v43;
  swift_storeEnumTagMultiPayload();
  sub_1BA18AEE8(&qword_1EBBED1A8, sub_1BA189970, MEMORY[0x1E697C090]);
  return sub_1BA4A58E8();
}

void sub_1BA189970(uint64_t a1)
{
  if (!qword_1EBBED190)
  {
    sub_1BA1899EC();
    v1 = sub_1BA4A5338();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED190);
    }
  }
}

unint64_t sub_1BA1899EC()
{
  result = qword_1EBBED198;
  if (!qword_1EBBED198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED198);
  }

  return result;
}

unint64_t sub_1BA189A40()
{
  result = qword_1EBBED1A0;
  if (!qword_1EBBED1A0)
  {
    sub_1BA189B0C(255, &qword_1EBBED188, MEMORY[0x1E697F960]);
    sub_1BA18AEE8(&qword_1EBBED1A8, sub_1BA189970, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED1A0);
  }

  return result;
}

void sub_1BA189B0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1BA189970(255);
    v7 = a3(a1, v6, MEMORY[0x1E6981148]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1BA189B84(uint64_t a1)
{
  if (!qword_1EBBED1C0)
  {
    sub_1BA189B0C(255, &qword_1EBBED188, MEMORY[0x1E697F960]);
    v1 = sub_1BA4A6378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED1C0);
    }
  }
}

uint64_t sub_1BA189C20@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v78 = a2;
  v3 = MEMORY[0x1E6981148];
  v4 = MEMORY[0x1E6981E70];
  sub_1BA18A73C(0, &qword_1EBBED1F0, MEMORY[0x1E6981148], MEMORY[0x1E6981E70]);
  v74 = v5;
  v71 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v70 = &v65 - v7;
  sub_1BA18A794(0, &qword_1EBBED200, MEMORY[0x1E697F948]);
  v72 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v65 - v10);
  sub_1BA18A794(0, &qword_1EBBED1E8, MEMORY[0x1E697F960]);
  v75 = *(v12 - 8);
  v76 = v12;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v73 = &v65 - v15;
  sub_1BA18A6C8(0, v14);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v65 - v21;
  sub_1BA18A73C(0, &qword_1EBBED1D8, v4, v3);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = MEMORY[0x1EEE9AC00](v29, v30).n128_u64[0];
  v33 = &v65 - v32;
  v79 = a1;
  v80 = 0x206E6F6973726556;
  v81 = 0xE800000000000000;
  v34 = [a1 version];
  v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v37 = v36;

  MEMORY[0x1BFAF1350](v35, v37);

  sub_1B9F252FC();
  v80 = sub_1BA4A5E18();
  v81 = v38;
  v82 = v39 & 1;
  v83 = v40;
  sub_1BA4A6368();
  v41 = [a1 localCountrySet];
  v42 = sub_1BA0B78B8();
  if (v43 == 0xFF)
  {
    v52 = 1;
  }

  else
  {
    v69 = v41;
    if (v43)
    {
      v44 = v42;
      v66 = v42;
      v67 = v43;
      v45 = sub_1BA4A57F8();
      MEMORY[0x1EEE9AC00](v45, v46);
      *(&v65 - 16) = v44;
      v68 = v28;
      v47 = v70;
      sub_1BA4A6328();
      v48 = v71;
      v49 = v74;
      (*(v71 + 16))(v11, v47, v74);
      swift_storeEnumTagMultiPayload();
      sub_1BA18A8E4();
      sub_1BA18A938();
      v50 = v73;
      sub_1BA4A58E8();
      sub_1BA18A9CC(v66, v67);
      v51 = v47;
      v28 = v68;
      (*(v48 + 8))(v51, v49);
    }

    else
    {
      *v11 = 0x532065746F6D6552;
      v11[1] = 0xEA00000000007465;
      v11[2] = v42;
      swift_storeEnumTagMultiPayload();
      sub_1BA18A8E4();
      sub_1BA18A938();
      v50 = v73;
      sub_1BA4A58E8();
    }

    sub_1BA18A9F0(v50, v22);
    v52 = 0;
    v41 = v69;
  }

  (*(v75 + 56))(v22, v52, 1, v76);
  v53 = *(v25 + 16);
  v54.n128_f64[0] = v53(v28, v33, v24);
  v55 = v77;
  sub_1BA18A81C(v22, v77, v54);
  v56 = v78;
  v53(v78, v28, v24);
  sub_1BA18A638(0);
  v58 = &v56[*(v57 + 48)];
  *v58 = 0x6553206C61636F4CLL;
  *(v58 + 1) = 0xE900000000000074;
  *(v58 + 2) = v41;
  sub_1BA18A81C(v55, &v56[*(v57 + 64)], v59);

  v60 = v41;
  sub_1BA18A880(v22, v61);
  v62 = *(v25 + 8);
  v63.n128_f64[0] = v62(v33, v24);
  sub_1BA18A880(v55, v63);

  return (v62)(v28, v24);
}

uint64_t sub_1BA18A2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A7388();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A7398();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E69A3988])
  {
    (*(v3 + 96))(v6, v2);
    v8 = 0x80000001BA4EFF40;
    v9 = sub_1BA4A7378();
    (*(*(v9 - 8) + 8))(v6, v9);
    v10 = 0xD00000000000005ALL;
  }

  else if (v7 == *MEMORY[0x1E69A3990])
  {
    v10 = 0xD000000000000034;
    v8 = 0x80000001BA4EFFA0;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v8 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E55;
  }

  v15[0] = v10;
  v15[1] = v8;
  sub_1B9F252FC();
  result = sub_1BA4A5E18();
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v14;
  return result;
}

uint64_t sub_1BA18A484@<X0>(uint64_t a2@<X8>)
{
  sub_1B9F252FC();
  result = sub_1BA4A5E18();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1BA18A540()
{
  sub_1BA18A5E0(0);
  sub_1BA18AEE8(&qword_1EBBED1F8, sub_1BA18A5E0, MEMORY[0x1E6981F48]);
  return sub_1BA4A5D88();
}

void sub_1BA18A5E0(uint64_t a1)
{
  if (!qword_1EBBED1C8)
  {
    sub_1BA18A638(255);
    v1 = sub_1BA4A6428();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED1C8);
    }
  }
}

void sub_1BA18A638(uint64_t a1)
{
  if (!qword_1EBBED1D0)
  {
    sub_1BA18A73C(255, &qword_1EBBED1D8, MEMORY[0x1E6981E70], MEMORY[0x1E6981148]);
    sub_1BA18A6C8(255, v1);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBBED1D0);
    }
  }
}

void sub_1BA18A6C8(uint64_t a1, __n128 a2)
{
  if (!qword_1EBBED1E0)
  {
    sub_1BA18A794(255, &qword_1EBBED1E8, MEMORY[0x1E697F960]);
    v2 = sub_1BA4A7AA8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EBBED1E0);
    }
  }
}

void sub_1BA18A73C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1BA4A6378();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BA18A794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1BA18A73C(255, &qword_1EBBED1F0, MEMORY[0x1E6981148], MEMORY[0x1E6981E70]);
    v7 = a3(a1, &type metadata for InternalSettingsAllowedCountrySetSection, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1BA18A81C(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_1BA18A6C8(0, a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BA18A880(uint64_t a1, __n128 a2)
{
  sub_1BA18A6C8(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BA18A8E4()
{
  result = qword_1EBBED208;
  if (!qword_1EBBED208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED208);
  }

  return result;
}

unint64_t sub_1BA18A938()
{
  result = qword_1EBBED210;
  if (!qword_1EBBED210)
  {
    sub_1BA18A73C(255, &qword_1EBBED1F0, MEMORY[0x1E6981148], MEMORY[0x1E6981E70]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED210);
  }

  return result;
}

void sub_1BA18A9CC(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1BA18A9E4(result, a2 & 1);
  }
}

void sub_1BA18A9E4(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

uint64_t sub_1BA18A9F0(uint64_t a1, uint64_t a2)
{
  sub_1BA18A794(0, &qword_1EBBED1E8, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1BA18AA80(uint64_t a1)
{
  if (!qword_1EBBED220)
  {
    sub_1BA18A5E0(255);
    sub_1BA18AEE8(&qword_1EBBED1F8, sub_1BA18A5E0, MEMORY[0x1E6981F48]);
    v1 = sub_1BA4A5D98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED220);
    }
  }
}

uint64_t sub_1BA18AB4C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1B9F252FC();

  sub_1BA4A5E18();
  sub_1BA0B7DE8(a3);
  sub_1BA4A5E18();
  sub_1BA18AE2C(0);
  sub_1BA18AF30();
  return sub_1BA4A6348();
}

uint64_t sub_1BA18AC48(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = sub_1BA0B7C38(a3);
  KeyPath = swift_getKeyPath();
  sub_1B9F1D718();
  v5 = v4;
  v6 = sub_1BA18AEE8(&qword_1EBBED230, sub_1B9F1D718, MEMORY[0x1E69E6338]);
  return sub_1BA4A62F8(&v8, KeyPath, sub_1BA18AD20, 0, v5, MEMORY[0x1E6981148], v6, MEMORY[0x1E69E6168], MEMORY[0x1E6981138]);
}

void sub_1BA18AD20(uint64_t a2@<X8>)
{
  sub_1B9F252FC();

  v3 = sub_1BA4A5E18();
  v5 = v4;
  v7 = v6;
  sub_1BA4A5C18();
  sub_1BA4A5BF8();

  v8 = sub_1BA4A5DE8();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_1BA102AF4(v3, v5, v7 & 1);

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
}

void sub_1BA18AE2C(uint64_t a1)
{
  if (!qword_1EBBED228)
  {
    sub_1B9F1D718();
    sub_1BA18AEE8(&qword_1EBBED230, sub_1B9F1D718, MEMORY[0x1E69E6338]);
    v1 = sub_1BA4A6318();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED228);
    }
  }
}

uint64_t sub_1BA18AEE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BA18AF30()
{
  result = qword_1EBBED238;
  if (!qword_1EBBED238)
  {
    sub_1BA18AE2C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBED238);
  }

  return result;
}

uint64_t sub_1BA18AFA0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BA18B028(uint64_t a1)
{
  if (!qword_1EBBED248)
  {
    sub_1BA18AE2C(255);
    v1 = sub_1BA4A6378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBBED248);
    }
  }
}

unint64_t sub_1BA18B0F0(double *a1, double a2)
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v5 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v6 = objc_opt_self();
  v7 = *a1;
  v8 = v5;
  v9 = [v6 systemFontOfSize:a2 weight:v7];
  v10 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 darkTextColor];
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v14;
  v15 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v15;
}

void *static NSMutableParagraphStyle.pdfTextStyle(lineHeight:lineSpacing:paragraphSpacing:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x1E69DB7C8]) init];
  v13 = v12;
  if (a2)
  {
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v13 setParagraphSpacing_];
    if (a4)
    {
      return v13;
    }

    goto LABEL_4;
  }

  [v12 setMinimumLineHeight_];
  [v13 setMaximumLineHeight_];
  if ((a6 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((a4 & 1) == 0)
  {
LABEL_4:
    [v13 setLineSpacing_];
  }

  return v13;
}

unint64_t static PDFDefaults.Text.bodyHeavyTextAttributes.getter()
{
  v0 = sub_1BA18C230(7.0);
  v1 = *MEMORY[0x1E69DB648];
  v2 = [objc_opt_self() systemFontOfSize:10.0 weight:*MEMORY[0x1E69DB960]];
  v7 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *&v6 = v2;
  sub_1B9F46920(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v5, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

unint64_t static PDFDefaults.Text.bodyGrayTextAttributes.getter()
{
  v0 = sub_1BA18C230(7.0);
  v1 = *MEMORY[0x1E69DB650];
  v2 = [objc_opt_self() grayColor];
  v7 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *&v6 = v2;
  sub_1B9F46920(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v5, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

unint64_t static PDFDefaults.Text.largeSemiboldBodyTextAttributes.getter()
{
  v0 = MEMORY[0x1E69DB980];
  v1 = sub_1BA18C4FC(MEMORY[0x1E69DB980]);
  v2 = *MEMORY[0x1E69DB648];
  v3 = [objc_opt_self() systemFontOfSize:14.0 weight:*v0];
  v8 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *&v7 = v3;
  sub_1B9F46920(&v7, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v6, v2, isUniquelyReferenced_nonNull_native);
  return v1;
}

unint64_t static PDFDefaults.Text.calloutTextAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  v5 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 blackColor];
  v10 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v9;
  v11 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v10;
  *(inited + 112) = v11;
  v12 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v13 = v11;
  v14 = [v12 init];
  [v14 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *(inited + 120) = v14;
  v15 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v15;
}

unint64_t static PDFDefaults.Text.calloutEmphTextAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = *MEMORY[0x1E69DB980];
  v4 = v1;
  v5 = [v2 systemFontOfSize:12.0 weight:v3];
  v6 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v5;
  v7 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 blackColor];
  v11 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v14 = v12;
  v15 = [v13 init];
  [v15 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *(inited + 120) = v15;
  v16 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v16;
}

unint64_t static PDFDefaults.Text.largeCaptionAttributes.getter()
{
  v0 = _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0();
  v1 = *MEMORY[0x1E69DB648];
  v2 = [objc_opt_self() systemFontOfSize_];
  v7 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *&v6 = v2;
  sub_1B9F46920(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v5, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

uint64_t static PDFDefaults.Text.captionBlackAttributesDefaultParagraphSpacing.getter()
{
  v2 = sub_1BA18C8EC(_s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0, &selRef_blackColor);
  sub_1BA0F66B8(*MEMORY[0x1E69DB688], v1);
  sub_1B9F0DC80(v1, sub_1BA01E3E8);
  return v2;
}

uint64_t static PDFDefaults.Text.captionBoldBlackAttributesDefaultParagraphSpacing.getter()
{
  v2 = sub_1BA18C9A4(MEMORY[0x1E69DB958]);
  sub_1BA0F66B8(*MEMORY[0x1E69DB688], v1);
  sub_1B9F0DC80(v1, sub_1BA01E3E8);
  return v2;
}

id sub_1BA18BC24()
{
  result = [objc_opt_self() systemFontOfSize_];
  qword_1EBBED250 = result;
  return result;
}

id sub_1BA18BCC0()
{
  result = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.24 green:0.24 blue:0.26 alpha:0.6];
  qword_1EBBED260 = result;
  return result;
}

id sub_1BA18BDBC(uint64_t a1, double *a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:10.0 weight:*a2];
  *a3 = result;
  return result;
}

id sub_1BA18BE30(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

unint64_t static PDFDefaults.Text.semiboldTableHeaderAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5480;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = qword_1EBBE8460;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_1EBBED278;
  *(inited + 64) = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v4;
  v5 = v4;
  v6 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9F0DC80(inited + 32, sub_1B9FE9628);
  return v6;
}

uint64_t sub_1BA18BFB4()
{
  sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  result = sub_1BA4A7738();
  qword_1EBBED280 = result;
  return result;
}

unint64_t static PDFDefaults.Header.headerDOBAttributes.getter()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B5460;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  v5 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  v6 = MEMORY[0x1E69DB650];
  *(inited + 40) = v4;
  v7 = *v6;
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v8 = qword_1EBBE8448;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBBED260;
  *(inited + 104) = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v10;
  v11 = v10;
  v12 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v12;
}

void static PDFDefaults.Footer.default()(uint64_t a1@<X8>)
{
  _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0();
  *(a1 + 24) = &type metadata for PDFBody;
  *(a1 + 32) = &protocol witness table for PDFBody;
  *(a1 + 8) = 256;
  *a1 = v2;
}

unint64_t sub_1BA18C230(double a1)
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 systemFontOfSize_];
  v7 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 darkTextColor];
  v12 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v11;
  v13 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v12;
  *(inited + 112) = v13;
  v14 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v15 = v13;
  v16 = [v14 init];
  [v16 setParagraphSpacing_];
  [v16 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *(inited + 120) = v16;
  v17 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v17;
}

unint64_t _s18HealthExperienceUI11PDFDefaultsO4TextO18bodyEmphAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  v0 = sub_1BA18C230(7.0);
  v1 = *MEMORY[0x1E69DB648];
  if (qword_1EBBE8440 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBBED258;
  v8 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *&v7 = v2;
  sub_1B9F46920(&v7, v6);
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v6, v1, isUniquelyReferenced_nonNull_native);
  return v0;
}

unint64_t sub_1BA18C4FC(double *a1)
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v3 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v4 = objc_opt_self();
  v5 = *a1;
  v6 = v3;
  v7 = [v4 systemFontOfSize:10.0 weight:v5];
  v8 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *(inited + 40) = v7;
  v9 = *MEMORY[0x1E69DB650];
  *(inited + 64) = v8;
  *(inited + 72) = v9;
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 darkTextColor];
  v13 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v12;
  v14 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v13;
  *(inited + 112) = v14;
  v15 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v16 = v14;
  v17 = [v15 init];
  [v17 setParagraphSpacing_];
  [v17 setLineSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *(inited + 120) = v17;
  v18 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v18;
}

unint64_t _s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0()
{
  sub_1BA18D024(0, &qword_1EDC5DBB0, sub_1B9FE9628, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v1 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 systemFontOfSize_];
  v5 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  v6 = MEMORY[0x1E69DB650];
  *(inited + 40) = v4;
  v7 = *v6;
  *(inited + 64) = v5;
  *(inited + 72) = v7;
  v8 = qword_1EBBE8448;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EBBED260;
  v11 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *(inited + 80) = v10;
  v12 = *MEMORY[0x1E69DB688];
  *(inited + 104) = v11;
  *(inited + 112) = v12;
  v13 = objc_allocWithZone(MEMORY[0x1E69DB7C8]);
  v14 = v10;
  v15 = v12;
  v16 = [v13 init];
  [v16 setParagraphSpacing_];
  *(inited + 144) = sub_1B9F0ADF8(0, &qword_1EDC5E340, 0x1E69DB7C8);
  *(inited + 120) = v16;
  v17 = sub_1B9FDB1C4(inited);
  swift_setDeallocating();
  sub_1B9FE9628(0);
  swift_arrayDestroy();
  return v17;
}

uint64_t sub_1BA18C8EC(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1();
  v4 = *MEMORY[0x1E69DB650];
  v5 = [objc_opt_self() *a2];
  v10 = sub_1B9F0ADF8(0, &qword_1EDC6E380, 0x1E69DC888);
  *&v9 = v5;
  sub_1B9F46920(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v8, v4, isUniquelyReferenced_nonNull_native);
  return v3;
}

uint64_t sub_1BA18C9A4(double *a1)
{
  v2 = sub_1BA18C8EC(_s18HealthExperienceUI11PDFDefaultsO4TextO17captionAttributesSDySo21NSAttributedStringKeyaypGvgZ_0, &selRef_blackColor);
  v3 = *MEMORY[0x1E69DB648];
  v4 = [objc_opt_self() systemFontOfSize:8.0 weight:*a1];
  v9 = sub_1B9F0ADF8(0, &unk_1EDC5E210, 0x1E69DB878);
  *&v8 = v4;
  sub_1B9F46920(&v8, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1B9FF1D74(v7, v3, isUniquelyReferenced_nonNull_native);
  return v2;
}

void _s18HealthExperienceUI11PDFDefaultsO6FooterO05appleA6StringSo012NSAttributedG0CvgZ_0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
  if (qword_1EBBE8450 != -1)
  {
    swift_once();
  }

  v1 = [objc_opt_self() configurationWithFont_];
  v2 = sub_1BA4A6758();
  v3 = [objc_opt_self() systemImageNamed:v2 withConfiguration:v1];

  [v0 setImage_];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
  sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
  v5 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
  [v4 appendAttributedString_];

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v6 = sub_1BA4A1318();
  MEMORY[0x1BFAF1350](v6);

  v7 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v8 = sub_1BA4A6758();

  v9 = [v7 initWithString_];

  [v4 appendAttributedString_];
  sub_1BA18C4FC(MEMORY[0x1E69DB980]);
  type metadata accessor for Key(0);
  sub_1BA0262E4();
  v10 = sub_1BA4A6618();

  v11 = v4;
  v12 = [v11 string];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  v13 = sub_1BA4A68D8();

  if (v13 < 0)
  {
    __break(1u);
  }

  else
  {
    [v11 addAttributes:v10 range:{0, v13}];
  }
}

uint64_t _s18HealthExperienceUI11PDFDefaultsO6FooterO19pageIndicatorString0F6Number0F5CountSSSi_SitFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1BA18D024(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A17B8();
  v8 = sub_1BA4A17C8();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1BA18D024(0, &qword_1EDC6B410, sub_1BA06FAE4, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5460;
  v10 = MEMORY[0x1E69E6530];
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = MEMORY[0x1E69E6530];
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = a2;
  v12 = sub_1BA4A67C8();

  sub_1BA18D088(v7);
  return v12;
}

void sub_1BA18D024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BA18D088(uint64_t a1)
{
  sub_1BA18D024(0, &qword_1EDC6AE40, MEMORY[0x1E6969770], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BA18D1D0(char a1, void *a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EDC6CBB0 != -1)
    {
      v13 = v6;
      swift_once();
      v6 = v13;
    }

    v9 = qword_1EDC6CBB8;
  }

  else
  {
    if (qword_1EDC6CB88 != -1)
    {
      v14 = v6;
      swift_once();
      v6 = v14;
    }

    v9 = qword_1EDC6CB90;
  }

  v10 = __swift_project_value_buffer(v6, v9);
  sub_1BA18F050(v10, v8, type metadata accessor for ListLayoutConfiguration);
  *(v8 + 19) = 0x3F847AE147AE147BLL;
  *(v8 + 8) = 0x4028000000000000;
  v11 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5AC84(v8, type metadata accessor for ListLayoutConfiguration);
  return v11;
}

void sub_1BA18D358(void *a1)
{
  v2 = type metadata accessor for HealthChecklistViewController();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___mainStore];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController____lazy_storage___dataSources] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_analyticsSource] = xmmword_1BA4C2560;
  v3[OBJC_IVAR____TtC18HealthExperienceUI29HealthChecklistViewController_isDoneButtonVisible] = 1;
  v8.receiver = v3;
  v8.super_class = v2;
  v5 = objc_msgSendSuper2(&v8, sel_initWithCollectionViewLayout_, 0);
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v5 animated:1];
  }
}

uint64_t sub_1BA18D464()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_1BA18D4A4()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1BA18D574()
{
  sub_1BA18D4A4();

  return swift_deallocClassInstance();
}

void sub_1BA18D728(uint64_t *a1@<X8>)
{
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v2 = sub_1BA4A1318();
  v4 = v3;
  a1[3] = &type metadata for CollectionViewHeaderItem;
  a1[4] = sub_1BA0473B0();
  v5 = swift_allocObject();
  *a1 = v5;
  type metadata accessor for CollectionViewHeaderCell();
  sub_1BA18F004(0, &qword_1EDC664A8, type metadata accessor for CollectionViewHeaderCell);
  *(v5 + 16) = sub_1BA4A6808();
  *(v5 + 24) = v6;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  *(v5 + 48) = sub_1BA18F698;
  *(v5 + 56) = 0;
  *(v5 + 64) = 1;
  *(v5 + 72) = 1;
  *(v5 + 144) = 0;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 121) = 0u;
  sub_1B9F252FC();
  v7 = MEMORY[0x1E69E6158];
  v8 = sub_1BA4A7B58();
  v10 = v9;
  sub_1B9F1C048(0, &qword_1EDC6E330, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  *(v11 + 32) = v8;
  *(v11 + 40) = v10;

  v12 = sub_1BA4A6AE8();

  v13 = HKUIJoinStringsForAutomationIdentifier();

  if (v13)
  {

    v14 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v16 = v15;

    *(v5 + 152) = v14;
    *(v5 + 160) = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BA18D984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A534(a1, v26);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v9 = v24;
    v10 = sub_1BA18DC20(v24);

    return v10;
  }

  else
  {
    sub_1BA4A3E28();
    sub_1B9F0A534(a1, v26);
    v12 = sub_1BA4A3E88();
    v13 = sub_1BA4A6FB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25 = v15;
      *v14 = 136446466;
      v16 = sub_1BA4A85D8();
      v18 = sub_1B9F0B82C(v16, v17, &v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      sub_1B9F0A534(v26, &v24);
      v19 = sub_1BA4A6808();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v26);
      v22 = sub_1B9F0B82C(v19, v21, &v25);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1B9F07000, v12, v13, "%{public}s: Incorrect view model; expected FeedItem, got: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    (*(v5 + 8))(v8, v4);
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BA18DC20(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 userData];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BA4A1608();
    v13 = v12;

    sub_1BA4A0EB8();
    swift_allocObject();
    sub_1B9F206D4(v11, v13);
    sub_1BA4A0EA8();
    sub_1BA18F124();
    sub_1BA4A0E98();

    sub_1B9F2BB4C(v11, v13);
    v31[1] = v33;
    sub_1BA18F178(&v32, a1);
    v29 = v28;
    sub_1B9F2BB4C(v11, v13);

    return v29;
  }

  else
  {
    sub_1BA4A3E28();
    v14 = a1;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v32 = v18;
      *v17 = 136446466;
      v19 = sub_1BA4A85D8();
      v20 = v2;
      v22 = sub_1B9F0B82C(v19, v21, &v32);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      v23 = [v14 uniqueIdentifier];
      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;

      v27 = sub_1B9F0B82C(v24, v26, &v32);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v15, v16, "%{public}s Could not access feed item user data: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v18, -1, -1);
      MEMORY[0x1BFAF43A0](v17, -1, -1);

      (*(v3 + 8))(v6, v20);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1BA18E140(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for ListLayoutConfiguration(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC6CB88 != -1)
  {
    v11 = v5;
    swift_once();
    v5 = v11;
  }

  v8 = __swift_project_value_buffer(v5, qword_1EDC6CB90);
  sub_1BA18F050(v8, v7, type metadata accessor for ListLayoutConfiguration);
  *(v7 + 19) = 0x3F847AE147AE147BLL;
  *(v7 + 8) = 0x4028000000000000;
  v9 = ListLayoutConfiguration.layout(for:)(a2);
  sub_1B9F5AC84(v7, type metadata accessor for ListLayoutConfiguration);
  return v9;
}

uint64_t sub_1BA18E254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = *v3;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v28 - v6;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v8 = sub_1BA4A1C68();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BA4B5480;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69A3BF0], v8);
  v12 = sub_1BA4A0FA8();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_1B9F1C048(0, &qword_1EDC6B450, MEMORY[0x1E69A3C58]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BA4B5460;
  *(v13 + 32) = sub_1BA4A1D78();
  *(v13 + 40) = 0;
  v14 = sub_1BA4A25F8();

  sub_1B9F1C1B0(v7);
  sub_1B9F1C048(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5470;
  v16 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v17 = sub_1BA4A6758();
  v18 = [v16 initWithKey:v17 ascending:0];

  *(v15 + 32) = v18;
  v19 = v14;
  v20 = sub_1BA4A7558();

  sub_1B9F126E0(0);
  v22 = objc_allocWithZone(v21);
  v23 = v20;
  v24 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v29;
  v26 = sub_1B9F17A68(v24, sub_1BA18F11C, v25, 0);

  return v26;
}

uint64_t sub_1BA18E630()
{
  v0 = sub_1BA4A1798();
  v39 = *(v0 - 8);
  v40 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v38 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CollectionViewGroupedFooterItem(0);
  MEMORY[0x1EEE9AC00](v41, v3);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContentConfigurationItem(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A4428();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A4418();
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();
  sub_1BA4A43B8();
  v14 = [objc_opt_self() systemBlueColor];
  v15 = sub_1BA4A4238();
  sub_1BA4A41F8();
  v15(&v44, 0);
  v16 = MEMORY[0x1E69DC110];
  v17 = v43;
  *(v9 + 12) = v43;
  *(v9 + 13) = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9 + 9);
  (*(v42 + 16))(boxed_opaque_existential_1, v13, v17);
  v19 = v6[10];
  v20 = sub_1BA4A4168();
  (*(*(v20 - 8) + 56))(&v9[v19], 1, 1, v20);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1B9F2F610(&v44);
  *(&v45 + 1) = &type metadata for BasicCellSelectionHandler;
  v46 = &off_1F381BCC8;
  *&v44 = sub_1BA18D358;
  *(&v44 + 1) = 0;
  LOBYTE(v45) = 2;
  sub_1B9F2F698(&v44, (v9 + 16));
  *&v9[v6[12]] = 0;
  *&v9[v6[13]] = 0;
  *v9 = 0xD00000000000002DLL;
  *(v9 + 1) = 0x80000001BA4F0240;
  v9[112] = 0;
  *(v9 + 15) = MEMORY[0x1E69E7CC0];
  *(v9 + 7) = 0xD000000000000019;
  *(v9 + 8) = 0x80000001BA4F0270;
  v21 = &v9[v6[11]];
  *v21 = 0;
  *(v21 + 1) = 0;
  sub_1B9F2F610(&v44);
  v22 = sub_1BA4A1318();
  v24 = v23;
  *&v44 = 0x74497265746F6F46;
  *(&v44 + 1) = 0xEB000000005F6D65;
  v25 = v38;
  sub_1BA4A1788();
  v26 = sub_1BA4A1748();
  v28 = v27;
  (*(v39 + 8))(v25, v40);
  MEMORY[0x1BFAF1350](v26, v28);

  v29 = v44;
  *&v44 = type metadata accessor for CollectionViewGroupedFooterCell();
  sub_1BA18F004(0, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);
  *v5 = sub_1BA4A6808();
  *(v5 + 1) = v30;
  v31 = v41;
  v32 = &v5[*(v41 + 32)];
  *v32 = 0u;
  *(v32 + 1) = 0u;
  v32[32] = 1;
  v33 = &v5[*(v31 + 28)];
  *v33 = v22;
  v33[1] = v24;
  type metadata accessor for CollectionViewGroupedFooterItem.Content(0);
  swift_storeEnumTagMultiPayload();
  *(v5 + 1) = v29;
  sub_1BA18EF9C(0, &qword_1EDC6B448, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], MEMORY[0x1E69E6F90]);
  *(v5 + 4) = 0;
  *(v5 + 5) = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BA4B5460;
  *(v34 + 56) = v6;
  *(v34 + 64) = sub_1B9F2F820(&qword_1EDC66498, type metadata accessor for ContentConfigurationItem, &protocol conformance descriptor for ContentConfigurationItem);
  v35 = __swift_allocate_boxed_opaque_existential_1((v34 + 32));
  sub_1BA18F050(v9, v35, type metadata accessor for ContentConfigurationItem);
  *(v34 + 96) = v31;
  *(v34 + 104) = sub_1B9F2F820(&qword_1EDC63270, type metadata accessor for CollectionViewGroupedFooterItem, &protocol conformance descriptor for CollectionViewGroupedFooterItem);
  v36 = __swift_allocate_boxed_opaque_existential_1((v34 + 72));
  sub_1BA18F0B8(v5, v36);
  (*(v42 + 8))(v13, v43);
  sub_1B9F5AC84(v9, type metadata accessor for ContentConfigurationItem);
  return v34;
}